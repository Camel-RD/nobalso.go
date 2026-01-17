package main

import (
	"fmt"
	"main/pages"
	"net/http"

	"github.com/gin-contrib/sessions"
	"github.com/gin-gonic/gin"
	"github.com/gorilla/csrf"
	adapter "github.com/gwatts/gin-adapter"
)

func initCsrf(key []byte, host string) gin.HandlerFunc {
	csrfMd := csrf.Protect(key,
		csrf.MaxAge(0),
		csrf.Secure(false),
		csrf.TrustedOrigins([]string{host}),
		csrf.ErrorHandler(http.HandlerFunc(func(w http.ResponseWriter, r *http.Request) {
			w.WriteHeader(http.StatusForbidden)
			err := csrf.FailureReason(r)
			s := fmt.Sprint(err)
			s = `{"err": "` + s + `"}`
			w.Write([]byte(`{"message": "Forbidden - CSRF token invalid"}`))
			w.Write([]byte(s))
		})),
	)
	return adapter.Wrap(csrfMd)
}

func authorizeMW() gin.HandlerFunc {
	return func(c *gin.Context) {
		session := sessions.Default(c)
		user := session.Get("user")
		if user == nil {
			// Abort the request and redirect to login
			c.Redirect(http.StatusFound, "/login")
			c.Abort()
			return
		}
		c.Next()
	}
}

func initsessionMW(adminname string) gin.HandlerFunc {
	return func(c *gin.Context) {
		var ses = NewSessionData()
		session := sessions.Default(c)
		cusername := session.Get("username")
		cuserid := session.Get("userid")
		if cusername != nil && cuserid != nil {
			nm, ok1 := cusername.(string)
			nameid, ok2 := cuserid.(string)
			if ok1 && ok2 && nm != "" && nameid != "" {
				ses.UserName = nm
				ses.UserId = nameid
				ses.IsAuthenticated = true
				ses.IsAdmin = adminname == ses.UserId
			}
		}
		c.Set("ses", ses)
		c.Next()
	}
}

func NewSessionData() pages.SessionData {
	return pages.SessionData{
		ViewData: map[string]any{},
	}
}

func GetSessionData(c *gin.Context) pages.SessionData {
	var ses = NewSessionData()
	v, ok := c.Get("ses")
	if !ok {
		return ses
	}
	vses, ok := v.(pages.SessionData)
	if !ok {
		return ses
	}
	return vses
}

func SetSessionData(c *gin.Context, ses pages.SessionData) {
	c.Set("ses", ses)
}

func signin(c *gin.Context, userid, username string) bool {
	session := sessions.Default(c)
	/*cusername := session.Get("username")
	cuserid := session.Get("userid")
	if cusername != nil || cuserid != nil {
		return false
	}*/
	var ses = pages.SessionData{
		UserName:        username,
		UserId:          userid,
		IsAuthenticated: true,
		ViewData:        map[string]any{},
	}
	session.Set("username", username)
	session.Set("userid", userid)
	session.Save()
	SetSessionData(c, ses)
	return true
}

func signout(c *gin.Context) bool {
	session := sessions.Default(c)
	cusername := session.Get("username")
	cuserid := session.Get("userid")
	if cusername == nil && cuserid == nil {
		return false
	}
	session.Delete("username")
	session.Delete("userid")
	session.Save()
	var ses = NewSessionData()
	SetSessionData(c, ses)
	return true
}
