package votesdb

import (
	"database/sql"
	"main/utils"
)

type ERecomState int

const (
	ERecomState_Created ERecomState = iota
	ERecomState_Reviewed
	ERecomState_Accepted
	ERecomState_Rejected
)

type Recom struct {
	Id          int
	UserId      int
	Text        sql.NullString
	DateCreated utils.DbTime
	State       ERecomState
	UserName    string
}
