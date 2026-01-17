package services

import (
	"main/models"
	"main/votesdb"
)

func MapCategoryList(cats []votesdb.Category2) *models.CategoryListVM {
	ret := models.CategoryListVM{}
	ret.Categories = make([]*models.CategoryListItemVM, 0)
	for k := range cats {
		cat := &cats[k]
		if cat.Parent != nil {
			continue
		}
		catvm := MapCategoryListItem(cat)
		ret.Categories = append(ret.Categories, catvm)
	}
	return &ret
}

func MapCategoryListItem(cat *votesdb.Category2) *models.CategoryListItemVM {
	ret := models.CategoryListItemVM{}
	ret.Id = cat.Id
	ret.Name = cat.Name
	ret.Code = cat.Code
	ret.ParentId = cat.ParentId
	ret.HasLink = cat.ViewType == votesdb.ECategoryViewType_StatementView
	ret.Children = make([]*models.CategoryListItemVM, 0)
	if !ret.HasLink {
		for _, cat2 := range cat.Children {
			catvm := MapCategoryListItem(cat2)
			ret.Children = append(ret.Children, catvm)
		}
	}
	return &ret
}
