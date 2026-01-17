package utils

import (
	"database/sql"
	"database/sql/driver"
	"errors"
	"time"
)

type DbTime time.Time
type NullDbTime sql.NullTime

func (t DbTime) Time() time.Time {
	return time.Time(t)
}

func (t DbTime) Value() (driver.Value, error) {
	s := time.Time(t).Format("2006-01-02 15:04:05")
	return driver.Value(string(s)), nil
}

func (dbt *DbTime) Scan(src interface{}) error {
	var s string
	switch src := src.(type) {
	case string:
		s = src
	default:
		return errors.New("Incompatible type for DbTime")
	}
	t, err := time.Parse("2006-01-02 15:04:05", s)
	if err != nil {
		return errors.New("Wrong DbTime format")
	}
	*dbt = DbTime(t)
	return nil
}

func (t NullDbTime) Value() (driver.Value, error) {
	if t.Valid {
		s := time.Time(t.Time).Format("2006-01-02 15:04:05")
		return driver.Value(string(s)), nil
	}
	return driver.Value(nil), nil
}

func (dbt *NullDbTime) Scan(src interface{}) error {
	var s string
	if src == nil {
		*dbt = NullDbTime{Valid: false}
		return nil
	}
	switch src := src.(type) {
	case string:
		s = src
	default:
		return errors.New("Incompatible type for DbTime")
	}
	t, err := time.Parse("2006-01-02 15:04:05", s)
	if err != nil {
		return errors.New("Wrong DbTime format")
	}
	*dbt = NullDbTime{Time: t, Valid: true}
	return nil
}
