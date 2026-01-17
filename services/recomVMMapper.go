package services

import (
	"main/models"
	"main/votesdb"
)

func MapEmptyRecomList() *models.RecomListVM {
	ret := models.RecomListVM{
		RecomList: []models.RecomVM{},
	}
	return &ret
}

func MapRecomList(recomlist []votesdb.Recom) *models.RecomListVM {
	ret := models.RecomListVM{}
	ret.RecomList = make([]models.RecomVM, len(recomlist))
	for i, recom := range recomlist {
		ret.RecomList[i].Id = recom.Id
		ret.RecomList[i].UserId = recom.UserId
		ret.RecomList[i].Text = recom.Text.String
		ret.RecomList[i].DateCreated = recom.DateCreated.Time()
		ret.RecomList[i].UserName = recom.UserName
	}
	return &ret
}

func MapRecomListByUser(recomlist []votesdb.Recom) []models.RecomListVM {
	ret := []models.RecomListVM{}
	if len(recomlist) == 0 {
		return ret
	}
	cid := recomlist[0].UserId
	crecom := models.RecomListVM{
		RecomList: make([]models.RecomVM, 0),
		UserName:  recomlist[0].UserName,
	}
	nrecom := models.RecomVM{}
	for i := range recomlist {
		recom := &recomlist[i]
		nrecom.Id = recom.Id
		nrecom.UserId = recom.UserId
		nrecom.Text = recom.Text.String
		nrecom.DateCreated = recom.DateCreated.Time()
		nrecom.UserName = recom.UserName
		if recom.UserId != cid {
			ret = append(ret, crecom)
			cid = recom.UserId
			crecom = models.RecomListVM{
				RecomList: make([]models.RecomVM, 0),
				UserName:  recom.UserName,
			}
		}
		crecom.RecomList = append(crecom.RecomList, nrecom)
	}
	ret = append(ret, crecom)
	return ret
}
