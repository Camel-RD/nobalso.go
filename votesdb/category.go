package votesdb

import (
	"database/sql"
)

type ECategoryViewType int

const (
	ECategoryViewType_NoView ECategoryViewType = iota
	ECategoryViewType_StatementView
	ECategoryViewType_Redirect
)

type Category struct {
	Id       int
	ParentId sql.NullInt64
	Name     string
	Code     string
	ViewType ECategoryViewType
}

type Category2 struct {
	Category
	Parent     *Category2
	Children   []*Category2
	Statements []Statement
}

func (cat *Category2) Level() int {
	ret := 0
	p := cat.Parent
	for p != nil {
		ret++
		p = p.Parent
	}
	return ret
}

func (cat *Category2) IsLastSubCategory() bool {
	return len(cat.Children) == 0
}

func (cat *Category2) GetFieldPointers() []any {
	ret := []any{&cat.Id, &cat.ParentId, &cat.Name, &cat.Code, &cat.ViewType}
	return ret
}
