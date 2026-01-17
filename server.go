package main

import (
	"encoding/hex"
	"log"
	"main/services"
	"main/votesdb"

	"github.com/gin-contrib/sessions"
	"github.com/gin-contrib/sessions/cookie"
	"github.com/gin-gonic/gin"
	"github.com/markbates/goth"
	"github.com/markbates/goth/gothic"
	"github.com/markbates/goth/providers/google"
)

var opsctx services.OpsContext

func CreateServer(opts ...gin.OptionFunc) *gin.Engine {
	engine := gin.New()
	engine.Use(gin.ErrorLogger(), gin.Recovery())
	return engine.With(opts...)
}

func Run() error {
	db := votesdb.DbContext{}
	err := db.Open()
	if err != nil {
		log.Fatal("no db")
	}
	defer db.Close()
	config := services.ReadConfig()
	opsctx = services.OpsContext{Db: &db}
	b1, _ := hex.DecodeString(config.CsrfSecret)
	CSRF := initCsrf(b1, config.HostAddress)
	b1, _ = hex.DecodeString(config.CookiefSecret)
	store := cookie.NewStore([]byte(b1))
	store.Options(sessions.Options{
		Path:     "/",
		MaxAge:   3600 * 24 * 30, // 1 Hour
		HttpOnly: true,           // Javascript can't access the cookie (XSS protection)
		Secure:   false,          // Set to true if using HTTPS
	})
	gothcallbackurl := config.RealHostAddress + "/glogin/callback"
	goth.UseProviders(
		google.New(config.GoogleClientId, config.GoogleClientSecret, gothcallbackurl, "profile", "email"),
	)
	gothic.Store = store
	if !config.DebugMode {
		gin.SetMode(gin.ReleaseMode)
	}

	//gin.conf LoggerConfig.Skip = func(c *gin.Context) bool{
	//		return true
	//}

	router := CreateServer()
	router.Use(CSRF)
	router.Use(sessions.Sessions("mysession", store))
	router.Use(initsessionMW(config.AdminRegName))
	router.Static("/assets", "./assets")
	router.GET("/category/:catid/:stmid", category2)
	router.GET("/category/:catid", category)
	router.POST("/category/:catid/:stmid", categoryvotepost)
	router.POST("/category/:catid", categoryvotepost)
	router.GET("/mlogin", mlogin)
	router.GET("/login", login)
	router.POST("/login", loginpost)
	router.POST("/logout", logout)
	router.GET("/register", register)
	router.POST("/register", registerpost)
	router.GET("/glogin/callback", glogincallback)
	router.GET("/glogin", glogin)
	router.GET("/user", user)
	router.POST("/user", userwipe)
	router.GET("/recom", recom)
	router.POST("/recom", recompost)
	router.GET("/recomadmin", recomadmin)
	router.POST("/recomadmin", recomadminpost)
	router.GET("/about", about)
	router.GET("/privacy", privacy)
	router.GET("/", index)
	serverurl := config.HostAddress
	return router.Run(serverurl)
}
