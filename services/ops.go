package services

import (
	"crypto/sha256"
	"encoding/hex"
	"log"
	"main/models"
	U "main/utils"
	"main/votesdb"
	"slices"
	"strconv"
	"strings"
	"sync"
	"time"

	"github.com/gorilla/securecookie"
)

type OpsContext struct {
	Db          *votesdb.DbContext
	Config      Config
	VoteOpMutex sync.Mutex
}

func (ctx *OpsContext) GetCategoryListVM() *models.CategoryListVM {
	cats, err := ctx.Db.GetCategories()
	if err != nil {
		return nil
	}
	catlistvm := MapCategoryList(cats)
	return catlistvm
}

func (ctx *OpsContext) GetCategoryPageVM(catid int, username string) *models.CatPageVM {
	username = strings.ToLower(username)
	user, _ := ctx.Db.GetUserByName(username)
	catlist, err := ctx.Db.GetCategories2(catid)
	if err != nil {
		panic(err)
	}
	k := slices.IndexFunc(catlist, func(el votesdb.Category2) bool {
		return el.Id == catid
	})
	var cat *votesdb.Category2 = nil
	if k > -1 {
		cat = &catlist[k]
	}
	parentcats, err := ctx.Db.GetParentCategories((cat))
	if cat != nil {
		parentcats = append(parentcats, *cat)
	}
	votesbyid := make(map[int]votesdb.EVoteValue)
	if user != nil && cat != nil {
		votesbyid, err = ctx.Db.GetUsersCatVotes(user.Id, cat.Id)
		if err != nil {
			log.Fatalln("GetUsersCatVotes err: ", err)
		}
	}
	ret := MapCatPageVM(cat, user, parentcats, votesbyid)
	return ret
}

func (ctx *OpsContext) GetCategoryPageStatementVM(stmid int, username string) *models.CatPageVM {
	username = strings.ToLower(username)
	user, err := ctx.Db.GetUserByName(username)
	if err != nil {
		log.Panicln("Err:", err)
	}
	stm, err := ctx.Db.GetStatemantById(stmid)
	if err != nil {
		log.Panicln("Err:", err)
	}
	var cat *votesdb.Category2 = nil
	if stm != nil {
		cat, err = ctx.Db.GetCategoryById(stm.CategoryId)
		if err != nil {
			log.Panicln("Err:", err)
		}
	}
	parentcats, err := ctx.Db.GetParentCategories((cat))
	if cat != nil {
		parentcats = append(parentcats, *cat)
		cat.Statements = append(cat.Statements, *stm)
	}
	var vote votesdb.EVoteValue = votesdb.EVoteValue_None
	if user != nil {
		vote, err = ctx.Db.GetUsersStatementVote(stmid, user.Id)
		if err != nil {
			log.Panicln("Err:", err)
		}
	}

	votesbyid := make(map[int]votesdb.EVoteValue)
	if cat != nil && user != nil {
		votesbyid[stmid] = vote
	}

	ret := MapCatPageVM(cat, user, parentcats, votesbyid)
	return ret
}

func (ctx *OpsContext) GetRecomListVM(username string) *models.RecomListVM {
	if username == "" {
		return MapEmptyRecomList()
	}
	username = strings.ToLower(username)
	user, err := ctx.Db.GetUserByName(username)
	if err != nil || user == nil {
		return MapEmptyRecomList()
	}
	recomlist, err := ctx.Db.GetRecomList(user.Id)
	if err != nil {
		log.Panicln("Err:", err)
	}
	if recomlist == nil {
		return MapEmptyRecomList()
	}
	recomlistvm := MapRecomList(recomlist)
	recomlistvm.UserName = username
	return recomlistvm
}

func (ctx *OpsContext) GetRecomListAllVM() []models.RecomListVM {
	recomlist, err := ctx.Db.GetRecomListAll()
	if err != nil {
		log.Panicln("Err:", err)
	}
	if recomlist == nil {
		return []models.RecomListVM{}
	}
	recomlistvm := MapRecomListByUser(recomlist)
	return recomlistvm
}

func (ctx *OpsContext) PerformRecomListOpVM(op models.RecomOp) *models.RecomListVM {
	if op.UserNameId == "" {
		return MapEmptyRecomList()
	}
	op.UserNameId = strings.ToLower(op.UserNameId)
	user, err := ctx.Db.GetUserByName(op.UserNameId)
	if err != nil {
		return MapEmptyRecomList()
	}
	recomlist, err := ctx.Db.GetRecomList(user.Id)
	if err != nil {
		return MapEmptyRecomList()
	}
	recomlist = ctx.PerformRecomListOp(op, user.Id, recomlist)
	recomlistvm := MapRecomList(recomlist)
	return recomlistvm
}

func (ctx *OpsContext) PerformRecomListOpByUserVM(op models.RecomOp) []models.RecomListVM {
	if op.UserNameId == "" {
		return []models.RecomListVM{}
	}
	op.UserNameId = strings.ToLower(op.UserNameId)
	user, err := ctx.Db.GetUserByName(op.UserNameId)
	if err != nil {
		return []models.RecomListVM{}
	}
	recomlist, err := ctx.Db.GetRecomListAll()
	if err != nil {
		return []models.RecomListVM{}
	}
	recomlist = ctx.PerformRecomListOp(op, user.Id, recomlist)
	recomlistvm := MapRecomListByUser(recomlist)
	return recomlistvm
}

func (ctx *OpsContext) PerformRecomListOp(op models.RecomOp, userid int, recomlist []votesdb.Recom) []votesdb.Recom {
	opid := -1
	if op.Id != "" {
		opid, _ = strconv.Atoi(op.Id)
	}

	switch op.Op {
	case "add":
		if len(recomlist) <= 20 {
			newrecom := votesdb.Recom{
				UserId:      userid,
				Text:        U.NullString(op.Text),
				DateCreated: U.DbTime(time.Now()),
			}
			ctx.Db.AddRecom(&newrecom)
			recomlist = append(recomlist, newrecom)
		}
	case "edit":
		k := slices.IndexFunc(recomlist, func(el votesdb.Recom) bool {
			return el.Id == opid
		})
		if k > -1 {
			cur_recom := &recomlist[k]
			cur_recom.Text = U.NullString(op.Text)
			ctx.Db.UpdateRecom(cur_recom)
		}
	case "delete":
		k := slices.IndexFunc(recomlist, func(el votesdb.Recom) bool {
			return el.Id == opid
		})
		if k > -1 {
			ctx.Db.DeleteRow("Recommendations", opid)
			recomlist = slices.Delete(recomlist, k, k+1)
		}
	}
	return recomlist
}

type ERegisterUserResult int
type ETestUserResult int

const (
	ERegisterUserResult_Ok ERegisterUserResult = iota
	ERegisterUserResult_NameInUse
	ERegisterUserResult_CantStartWithGoogle
	ERegisterUserResult_Error
)

const (
	ETestUserResult_Ok ETestUserResult = iota
	ETestUserResult_NameNotFound
	ETestUserResult_WrongPsw
	ETestUserResult_Error
)

func (ctx *OpsContext) RegisterUser(name, psw string) (*votesdb.User, ERegisterUserResult) {
	if strings.HasPrefix(name, "google_") {
		return nil, ERegisterUserResult_CantStartWithGoogle
	}
	user, err := ctx.Db.GetUserByName(name)
	if err != nil {
		return nil, ERegisterUserResult_Error
	}
	if user != nil {
		return user, ERegisterUserResult_NameInUse
	}
	salt := GenerateSalt(64)
	hash := HashStringWithSalt(psw, salt)
	user = &votesdb.User{
		NameId:    name,
		Name:      name,
		Psw:       U.NullString(hash),
		PswSalt:   U.NullString(salt),
		LoginType: votesdb.ELoginType_Password,
	}
	err = ctx.Db.AddUser(user)
	if err != nil {
		return nil, ERegisterUserResult_Error
	}
	return user, ERegisterUserResult_Ok
}

func (ctx *OpsContext) TestUser(name, psw string) (*votesdb.User, ETestUserResult) {
	user, err := ctx.Db.GetUserByName(name)
	if err != nil {
		return nil, ETestUserResult_Error
	}
	if user == nil {
		return nil, ETestUserResult_NameNotFound
	}
	if !user.Psw.Valid {
		return user, ETestUserResult_Ok
	}
	if user.PswSalt.Valid {
		hash := HashStringWithSalt(psw, user.PswSalt.String)
		if user.Psw.String != hash {
			return nil, ETestUserResult_WrongPsw
		}
		return user, ETestUserResult_Ok
	}
	if user.Psw.String != psw {
		return nil, ETestUserResult_WrongPsw
	}
	return user, ETestUserResult_Ok
}

const GoogleUserNamePrefix = "google_"

func (ctx *OpsContext) FormatGoogleUserName(userid string) string {
	return GoogleUserNamePrefix + HashStringWithSalt(userid, ctx.Config.UserIdSalt)
}

func (ctx *OpsContext) TestGoogleUserSignin(nameid, name string) *votesdb.User {
	if !strings.HasPrefix(nameid, GoogleUserNamePrefix) {
		return nil
	}
	if len(nameid) == len(GoogleUserNamePrefix) {
		return nil
	}
	user, err := ctx.Db.GetUserByName(nameid)
	if err != nil {
		return nil
	}
	if user != nil {
		return user
	}
	user = &votesdb.User{
		NameId:    nameid,
		Name:      name,
		LoginType: votesdb.ELoginType_Google,
	}
	err = ctx.Db.AddUser(user)
	if err != nil {
		return nil
	}
	return user
}

func GenerateSalt(len int) string {
	b := securecookie.GenerateRandomKey(len)
	ret := hex.EncodeToString(b)
	return ret
}

func HashStringWithSalt(str, salt string) string {
	data := str + salt
	hash := sha256.Sum256([]byte(data))
	ret := hex.EncodeToString(hash[:])
	return ret
}
