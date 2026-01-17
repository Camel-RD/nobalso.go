package main

import (
	"main/models"
	"main/pages"
	"main/services"
	"net/http"
	"strconv"

	"github.com/a-h/templ"
	"github.com/gin-gonic/gin"
	"github.com/markbates/goth/gothic"
)

func RenderTempl(c *gin.Context, status int, component templ.Component) error {
	c.Status(status)
	return component.Render(c.Request.Context(), c.Writer)
}

func index(c *gin.Context) {
	model := opsctx.GetCategoryListVM()
	index := pages.Index(model)
	ses := GetSessionData(c)
	page := pages.Layout(ses, index)
	err := RenderTempl(c, http.StatusOK, page)
	if err != nil {
		c.String(http.StatusInternalServerError, "Error rendering template")
	}
}

func category(c *gin.Context) {
	scatid := c.Param("catid")
	catid, err := strconv.Atoi(scatid)
	if err != nil {
		c.String(http.StatusBadRequest, "Error: category id not found")
	}
	ses := GetSessionData(c)
	model := opsctx.GetCategoryPageVM(catid, ses.UserId)
	catpage := pages.Category(model)
	page := pages.Layout(ses, catpage, pages.Category_script())
	err = RenderTempl(c, http.StatusOK, page)
	if err != nil {
		c.String(http.StatusInternalServerError, "Error rendering template")
	}
}
func category2(c *gin.Context) {
	scatid := c.Param("catid")
	sstmid := c.Param("stmid")
	_, err := strconv.Atoi(scatid)
	if err != nil {
		c.String(http.StatusBadRequest, "Error: category id not found")
	}
	stmid, err := strconv.Atoi(sstmid)
	if err != nil {
		c.String(http.StatusBadRequest, "Error: category id not found")
	}
	ses := GetSessionData(c)
	model := opsctx.GetCategoryPageStatementVM(stmid, ses.UserId)
	catpage := pages.Category(model)
	page := pages.Layout(ses, catpage, pages.Category_script())
	err = RenderTempl(c, http.StatusOK, page)
	if err != nil {
		c.String(http.StatusInternalServerError, "Error rendering template")
	}
}

func categoryvotepost(c *gin.Context) {
	ses := GetSessionData(c)
	resutlt := models.PostClickResult{CountYes: -1}
	if !ses.IsAuthenticated || ses.UserId == "" {
		c.JSON(http.StatusOK, resutlt)
		return
	}
	model := models.VoteClick{}
	err := c.ShouldBind(&model)
	if err != nil {
		c.JSON(http.StatusOK, resutlt)
		return
	}
	vc := models.EVoteClick_No
	if model.Tp == 1 {
		vc = models.EVoteClick_Yes
	}
	vresult := opsctx.ProcessVoteClickReq(ses.UserId, model.Id, vc)
	if vresult == nil {
		c.JSON(http.StatusOK, resutlt)
		return
	}
	resutlt.CountYes = vresult.Votes1
	resutlt.CountNo = vresult.Votes2
	resutlt.MarkYes = vresult.VoteType == models.EVoteType_Yes
	resutlt.MarkNo = vresult.VoteType == models.EVoteType_No

	c.JSON(http.StatusOK, resutlt)
}

func mlogin(c *gin.Context) {
	ses := GetSessionData(c)
	catpage := pages.MLogin(ses)
	page := pages.Layout(ses, catpage)
	err := RenderTempl(c, http.StatusOK, page)
	if err != nil {
		c.String(http.StatusInternalServerError, "Error rendering template")
	}
}

func login(c *gin.Context) {
	ses := GetSessionData(c)
	model := models.LoginPageVM{}
	catpage := pages.Login(&model, ses)
	page := pages.Layout(ses, catpage)
	err := RenderTempl(c, http.StatusOK, page)
	if err != nil {
		c.String(http.StatusInternalServerError, "Error rendering template")
	}
}

func loginpost(c *gin.Context) {
	ses := GetSessionData(c)
	if ses.IsAuthenticated {
		c.Redirect(http.StatusFound, "/")
		return
	}
	model := models.LoginPageVM{}
	err := c.Bind(&model)
	if err != nil {
		c.String(http.StatusBadRequest, "Login data not faund")
		return
	}
	verr := model.Validate()
	if verr == "" {
		user, ret := opsctx.TestUser(model.Name, model.Psw)
		if ret == services.ETestUserResult_Ok && user != nil {
			signin(c, user.Name, user.Name)
		} else if ret == services.ETestUserResult_NameNotFound {
			verr = "Lietotājs nav atrasts."
		} else if ret == services.ETestUserResult_WrongPsw {
			verr = "Nepareiza parole."
		} else {
			verr = "Kļūda pārbaudot lietotāja datus."
		}
	}
	ses = GetSessionData(c)
	if ses.IsAuthenticated {
		c.Redirect(http.StatusFound, "/")
		return
	}
	model.Msg = verr
	catpage := pages.Login(&model, ses)
	page := pages.Layout(ses, catpage)
	err = RenderTempl(c, http.StatusOK, page)
	if err != nil {
		c.String(http.StatusInternalServerError, "Error rendering template")
	}
}

func logout(c *gin.Context) {
	ses := GetSessionData(c)
	if ses.IsAuthenticated {
		signout(c)
	}
	c.Redirect(http.StatusFound, "/")
}

func glogin(c *gin.Context) {
	ses := GetSessionData(c)
	if ses.IsAuthenticated {
		c.Redirect(http.StatusFound, "/")
		return
	}
	// Injection of the provider name into the context so gothic knows which one to use
	q := c.Request.URL.Query()
	q.Add("provider", "google")
	c.Request.URL.RawQuery = q.Encode()
	gothic.BeginAuthHandler(c.Writer, c.Request)
}

func glogincallback(c *gin.Context) {
	// Injection of the provider name into the context
	q := c.Request.URL.Query()
	q.Add("provider", "google")
	c.Request.URL.RawQuery = q.Encode()
	// Retrieve the user from the authentication process
	guser, err := gothic.CompleteUserAuth(c.Writer, c.Request)
	if err != nil {
		c.JSON(http.StatusInternalServerError, gin.H{"error": err.Error()})
		return
	}
	userid := opsctx.FormatGoogleUserName(guser.UserID)
	user := opsctx.TestGoogleUserSignin(userid, guser.Name)
	if user == nil {
		c.String(http.StatusInternalServerError, "Error processing google signin.")
	}
	signin(c, userid, guser.Name)
	ses := GetSessionData(c)
	if ses.IsAuthenticated {
		c.Redirect(http.StatusFound, "/")
		return
	}
	c.String(http.StatusInternalServerError, "Error processing google signin.")
}

func register(c *gin.Context) {
	ses := GetSessionData(c)
	model := models.RegisterPageVM{}
	catpage := pages.Register(&model, ses)
	page := pages.Layout(ses, catpage)
	err := RenderTempl(c, http.StatusOK, page)
	if err != nil {
		c.String(http.StatusInternalServerError, "Error rendering template")
	}
}

func registerpost(c *gin.Context) {
	ses := GetSessionData(c)
	if ses.IsAuthenticated {
		c.Redirect(http.StatusFound, "/")
		return
	}
	model := models.RegisterPageVM{}
	err := c.Bind(&model)
	if err != nil {
		c.String(http.StatusBadRequest, "Registration data not faund")
		return
	}
	verr := model.Validate()
	if verr == "" {
		user, ret := opsctx.RegisterUser(model.Name, model.Psw)
		if ret == services.ERegisterUserResult_Ok && user != nil {
			signin(c, user.Name, user.Name)
		} else if ret == services.ERegisterUserResult_NameInUse {
			verr = "Lietotājs ar šādu vārdu jau ir reģistrējies."
		} else if ret == services.ERegisterUserResult_CantStartWithGoogle {
			verr = "Lietotāja vārds nevar sākties ar 'google_'."
		} else {
			verr = "Kļūda pārbaudot lietotāja datus."
		}
	}
	ses = GetSessionData(c)
	if ses.IsAuthenticated {
		c.Redirect(http.StatusFound, "/")
		return
	}
	model.Msg = verr
	catpage := pages.Register(&model, ses)
	page := pages.Layout(ses, catpage)
	err = RenderTempl(c, http.StatusOK, page)
	if err != nil {
		c.String(http.StatusInternalServerError, "Error rendering template")
	}
}

func user(c *gin.Context) {
	ses := GetSessionData(c)
	ses.ViewData["UserView"] = "wipe"
	userpage := pages.User()
	userlayout := pages.Layout_user(ses, userpage)
	page := pages.Layout(ses, userlayout)
	err := RenderTempl(c, http.StatusOK, page)
	if err != nil {
		c.String(http.StatusInternalServerError, "Error rendering template")
	}
}

func userwipe(c *gin.Context) {
	ses := GetSessionData(c)
	if !ses.IsAuthenticated {
		c.String(http.StatusBadRequest, "user not legged in")
		return
	}
	opsctx.ProcessWipeReq(ses.UserId)
	signout(c)
	c.Redirect(http.StatusFound, "/")
}

func recom(c *gin.Context) {
	ses := GetSessionData(c)
	ses.ViewData["UserView"] = "recom"
	recomlistvm := opsctx.GetRecomListVM(ses.UserId)
	recompage := pages.Recom(recomlistvm, ses)
	userlayout := pages.Layout_user(ses, recompage)
	script := pages.Recom_script()
	page := pages.Layout(ses, userlayout, script)
	err := RenderTempl(c, http.StatusOK, page)
	if err != nil {
		c.String(http.StatusInternalServerError, "Error rendering template")
	}
}

func recompost(c *gin.Context) {
	ses := GetSessionData(c)
	ses.ViewData["UserView"] = "recom"
	if !ses.IsAuthenticated || ses.UserId == "" {
		c.String(http.StatusBadRequest, "user not legged in")
		return
	}
	model := models.RecomOp{}
	err := c.ShouldBind(&model)
	if err != nil || !models.ValidateRecomOpVM(&model) {
		c.String(http.StatusBadRequest, "bad post form")
		return
	}
	recomlistvm := opsctx.PerformRecomListOpVM(model)
	recompage := pages.Recom(recomlistvm, ses)
	userlayout := pages.Layout_user(ses, recompage)
	script := pages.Recom_script()
	page := pages.Layout(ses, userlayout, script)
	err = RenderTempl(c, http.StatusOK, page)
	if err != nil {
		c.String(http.StatusInternalServerError, "Error rendering template")
	}
}

func recomadmin(c *gin.Context) {
	ses := GetSessionData(c)
	ses.ViewData["UserView"] = "recomadmin"
	if !ses.IsAuthenticated || ses.UserId == "" {
		c.String(http.StatusBadRequest, "user not legged in")
		return
	}
	if !ses.IsAdmin {
		c.String(http.StatusUnauthorized, "admin user expected")
		return
	}
	recomlistvm := opsctx.GetRecomListAllVM()
	recompage := pages.RecomAdmin(recomlistvm, ses)
	userlayout := pages.Layout_user(ses, recompage)
	script := pages.Recom_script()
	page := pages.Layout(ses, userlayout, script)
	err := RenderTempl(c, http.StatusOK, page)
	if err != nil {
		c.String(http.StatusInternalServerError, "Error rendering template")
	}
}

func recomadminpost(c *gin.Context) {
	ses := GetSessionData(c)
	ses.ViewData["UserView"] = "recomadmin"
	if !ses.IsAuthenticated || ses.UserId == "" {
		c.String(http.StatusBadRequest, "user not legged in")
		return
	}
	if !ses.IsAdmin {
		c.String(http.StatusUnauthorized, "admin user expected")
		return
	}
	model := models.RecomOp{}
	err := c.ShouldBind(&model)
	if err != nil || !models.ValidateRecomOpVM(&model) {
		c.String(http.StatusBadRequest, "bad post form")
		return
	}
	recomlistvm := opsctx.PerformRecomListOpByUserVM(model)
	recompage := pages.RecomAdmin(recomlistvm, ses)
	userlayout := pages.Layout_user(ses, recompage)
	script := pages.Recom_script()
	page := pages.Layout(ses, userlayout, script)
	err = RenderTempl(c, http.StatusOK, page)
	if err != nil {
		c.String(http.StatusInternalServerError, "Error rendering template")
	}
}

func about(c *gin.Context) {
	about := pages.About()
	ses := GetSessionData(c)
	page := pages.Layout(ses, about)
	err := RenderTempl(c, http.StatusOK, page)
	if err != nil {
		c.String(http.StatusInternalServerError, "Error rendering template")
	}
}

func privacy(c *gin.Context) {
	privacy := pages.Privacy()
	ses := GetSessionData(c)
	page := pages.Layout(ses, privacy)
	err := RenderTempl(c, http.StatusOK, page)
	if err != nil {
		c.String(http.StatusInternalServerError, "Error rendering template")
	}
}
