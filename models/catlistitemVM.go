package models

import "database/sql"

type CategoryListVM struct {
	Categories []*CategoryListItemVM
}

type CategoryListItemVM struct {
	Id       int
	ParentId sql.NullInt64
	Name     string
	Code     string
	HasLink  bool
	Children []*CategoryListItemVM
}
