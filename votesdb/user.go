package votesdb

import (
	"database/sql"
)

type EUserType int
type ELoginType int

const (
	EUserType_Regular EUserType = iota
	EUserType_Admin
	EUserType_Banned
)

const (
	ELoginType_Password ELoginType = 1
	ELoginType_Google   ELoginType = 2
)

type User struct {
	Id        int
	NameId    string
	Name      string
	LoginType ELoginType
	UserType  EUserType
	Psw       sql.NullString
	PswSalt   sql.NullString
}
