package utils

import (
	"database/sql"
)

type IEntityBase interface {
	GetFieldPointers() []any
}

func ScanRow(ent *IEntityBase, row *sql.Row) error {
	fields := (*ent).GetFieldPointers()
	err := row.Scan(fields...)
	return err
}

func fdsfsa[T *struct{ IEntityBase }]() {

}

func ScanRows[T any, PT interface {
	*T
	IEntityBase
}](list *[]PT, rows *sql.Rows) error {
	for rows.Next() {
		item := PT(new(T))
		fields := item.GetFieldPointers()
		err := rows.Scan(fields...)
		if err != nil {
			return err
		}
		*list = append(*list, item)
	}
	return nil
}
