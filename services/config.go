package services

import (
	"encoding/json"
	"io"
	"log"
	"os"
)

type Config struct {
	DebugMode          bool
	HostAddress        string
	RealHostAddress    string
	CsrfSecret         string
	CookiefSecret      string
	GoogleClientId     string
	GoogleClientSecret string
	AdminGoogleId      string
	AdminRegName       string
	UserIdSalt         string
}

func ReadConfig() Config {
	file, err := os.Open("config.json")
	if err != nil {
		log.Fatal(err)
	}
	defer file.Close()
	data, err := io.ReadAll(file)
	if err != nil {
		log.Fatal(err)
	}
	var config Config
	err = json.Unmarshal(data, &config)
	if err != nil {
		log.Fatal(err)
	}
	return config
}
