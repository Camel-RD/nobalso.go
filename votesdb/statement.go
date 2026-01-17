package votesdb

import (
	"main/utils"
)

type Statement struct {
	Id          int
	CategoryId  int
	Name        string
	Code        string
	DateCreated utils.DbTime
	Votes1      int
	Votes2      int
	Votes3      int
}
