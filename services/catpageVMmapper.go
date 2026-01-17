package services

import (
	"database/sql"
	"main/models"
	"main/votesdb"
	"slices"
)

func MapCatPageVM(cat *votesdb.Category2,
	usr *votesdb.User,
	parents []votesdb.Category2,
	votesbyid map[int]votesdb.EVoteValue) *models.CatPageVM {

	ret := models.CatPageVM{}
	if usr == nil {
		ret.UserId = sql.Null[int]{Valid: false}
	} else {
		ret.UserName = usr.Name
		ret.UserId = sql.Null[int]{V: usr.Id, Valid: true}
	}
	ret.ParentNames = MapCatPageVMParentName(parents)
	ret.Category = MapCatPageVMCat(cat, nil, votesbyid)
	return &ret
}

func MapCatPageVMParentName(parents []votesdb.Category2) []*models.CatPageParentName {
	ret := make([]*models.CatPageParentName, 0)
	for _, cat := range parents {
		nm := models.CatPageParentName{Name: cat.Name, CategoryId: cat.Id}
		ret = append(ret, &nm)
	}
	k := slices.IndexFunc(parents, func(el votesdb.Category2) bool {
		return el.ViewType == votesdb.ECategoryViewType_StatementView
	})
	if k > -1 {
		for i := k; i < len(parents); i++ {
			ret[i].HasLink = true
		}
	}
	return ret
}

func MapCatPageVMCat(cat *votesdb.Category2,
	parentcat *models.CatPageCatVM,
	votesbyid map[int]votesdb.EVoteValue) *models.CatPageCatVM {

	if cat == nil {
		return nil
	}
	ret := models.CatPageCatVM{
		Id:       cat.Id,
		Name:     cat.Name,
		Code:     cat.Code,
		ParentId: cat.ParentId,
		Parent:   parentcat,
	}
	ret.Statements = make([]*models.CatPageStmVM, 0)
	ret.Children = make([]*models.CatPageCatVM, 0)
	for _, stm := range cat.Statements {
		stmvm := MapCatPageVMStm(&stm, &ret, votesbyid)
		ret.Statements = append(ret.Statements, stmvm)
	}
	for _, cld := range cat.Children {
		cldvm := MapCatPageVMCat(cld, &ret, votesbyid)
		ret.Children = append(ret.Children, cldvm)
	}
	return &ret
}

func MapCatPageVMStm(stm *votesdb.Statement,
	parentcat *models.CatPageCatVM,
	votesbyid map[int]votesdb.EVoteValue) *models.CatPageStmVM {

	ret := models.CatPageStmVM{
		Id:            stm.Id,
		Name:          stm.Name,
		Code:          stm.Code,
		Category:      parentcat,
		CategoryId:    stm.CategoryId,
		DateCreated:   stm.DateCreated.Time(),
		VotesCountYes: stm.Votes1,
		VotesCountNo:  stm.Votes2,
	}
	vote, ok := votesbyid[stm.Id]
	ret.UserVotedYes = ok && vote == votesdb.EVoteValue_Yes
	ret.UserVotedNo = ok && vote == votesdb.EVoteValue_No
	return &ret
}
