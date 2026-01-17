package models

import (
	"strconv"
	"strings"
	"time"
)

type RecomListVM struct {
	RecomList []RecomVM
	UserName  string
}

type RecomVM struct {
	Id, UserId     int
	Text, UserName string
	DateCreated    time.Time
}

type RecomOp struct {
	Id, Op, UserNameId, Text string
}

func ValidateRecomOpVM(op *RecomOp) bool {
	if op.Op != "add" && op.Op != "edit" && op.Op != "delete" || op.UserNameId == "" {
		return false
	}
	op.Text = strings.TrimSpace(op.Text)
	if (op.Op == "add" || op.Op == "edit") && op.Text == "" {
		return false
	}
	if (op.Op == "edit" || op.Op == "delete") && op.Id == "" {
		return false
	}
	if len(op.Text) > 1000 {
		return false
	}
	_, ok := strconv.Atoi(op.Id)
	if ok != nil {
		return false
	}
	return true
}
