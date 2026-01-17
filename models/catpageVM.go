package models

import (
	"database/sql"
	"time"
)

type CatPageVM struct {
	UserId      sql.Null[int]
	UserName    string
	Category    *CatPageCatVM
	ParentNames []*CatPageParentName
}

type CatPageCatVM struct {
	Id         int
	ParentId   sql.NullInt64
	Name       string
	Code       string
	Parent     *CatPageCatVM
	Children   []*CatPageCatVM
	Statements []*CatPageStmVM
}

type CatPageStmVM struct {
	Id            int
	CategoryId    int
	Name          string
	Code          string
	DateCreated   time.Time
	Category      *CatPageCatVM
	VotesCountYes int
	VotesCountNo  int
	UserVotedYes  bool
	UserVotedNo   bool
}

type CatPageParentName struct {
	Name       string
	CategoryId int
	HasLink    bool
}
