package votesdb

import (
	"database/sql"
	"fmt"
	"log"
	"slices"
	"strings"
	"sync"

	"github.com/jmoiron/sqlx"
	_ "github.com/mattn/go-sqlite3"
)

type DbContext struct {
	Db *sqlx.DB
	mu sync.Mutex
}

func (ctx *DbContext) Open() error {
	if ctx.Db != nil {
		return fmt.Errorf("db already open")
	}
	dbfileName := "./db/votes.db"
	connstr := fmt.Sprintf("file:%s?_fk=true&_mutex=full", dbfileName)
	db, err := sqlx.Open("sqlite3", connstr)
	db.MapperFunc(func(s string) string {
		return s
	})
	if err != nil {
		return fmt.Errorf("Error connecting: %s", err)
	}
	ctx.Db = db
	return nil
}

func (ctx *DbContext) Close() error {
	ctx.mu.Lock()
	defer ctx.mu.Unlock()
	if ctx.Db == nil {
		return fmt.Errorf("db already closed")
	}
	err := ctx.Db.Close()
	ctx.Db = nil
	return err
}

func (ctx *DbContext) UpdateRow(sq string, row any) error {
	if ctx.Db == nil {
		return fmt.Errorf("db not opened")
	}
	res, err := ctx.Db.NamedExec(sq, row)
	if err != nil {
		return err
	}
	k, err := res.RowsAffected()
	if err != nil {
		return err
	}
	if k != 1 {
		return fmt.Errorf("UpdateRow failed, row not found")
	}
	return nil
}

func (ctx *DbContext) DeleteRow(tablename string, id int) error {
	if ctx.Db == nil {
		return fmt.Errorf("db not opened")
	}
	sq := fmt.Sprintf("delete from %s where Id=%d", tablename, id)
	_, err := ctx.Db.Exec(sq)
	return err
}

func (ctx *DbContext) GetUserByName(name string) (*User, error) {
	if ctx.Db == nil {
		return nil, fmt.Errorf("db not opened")
	}
	if name == "" {
		return nil, nil
	}
	name = strings.ToLower(name)
	var usr User
	sq := `select Id, Name, LoginType, UserType, Psw, PswSalt 
from Users 
where lower(NameId)=$1`
	err := ctx.Db.Get(&usr, sq, name)
	if err == sql.ErrNoRows {
		return nil, nil
	}
	if err != nil {
		return nil, err
	}
	return &usr, nil
}

func (ctx *DbContext) AddUser(user *User) error {
	if ctx.Db == nil {
		return fmt.Errorf("db not opened")
	}
	sq := `insert into Users (NameId, Name, LoginType, UserType, Psw, PswSalt) 
values (:NameId, :Name, :LoginType, :UserType, :Psw, :PswSalt)`
	res, err := ctx.Db.NamedExec(sq, user)
	if err != nil {
		return err
	}
	id, err := res.LastInsertId()
	if err != nil {
		return err
	}
	user.Id = int(id)
	return nil
}

func (ctx *DbContext) GetCategories() ([]Category2, error) {
	if ctx.Db == nil {
		return nil, fmt.Errorf("db not opened")
	}
	cats := []Category2{}
	sq := `select Id, ParentId, Name, Code, ViewType
from Categories
order by Code`
	err := ctx.Db.Select(&cats, sq)
	if err != nil {
		return nil, err
	}
	catmap := map[int]*Category2{}
	for k := range cats {
		cat := &cats[k]
		catmap[cat.Id] = cat
	}
	for k := range cats {
		cat := &cats[k]
		if !cat.ParentId.Valid {
			continue
		}
		var parentid int = int(cat.ParentId.Int64)
		parent := catmap[parentid]
		cat.Parent = parent
		parent.Children = append(parent.Children, cat)
	}
	return cats, nil
}

func (ctx *DbContext) GetCategories2(catid int) ([]Category2, error) {
	if ctx.Db == nil {
		return nil, fmt.Errorf("db not opened")
	}
	cats := []Category2{}
	sq := `select Id, ParentId, Name, Code, ViewType
from Categories
where Id = $1 or ParentId = $1
order by Code`

	err := ctx.Db.Select(&cats, sq, catid)
	if err != nil {
		return nil, err
	}
	catmap := map[int]*Category2{}
	for k := range cats {
		cat := &cats[k]
		catmap[cat.Id] = cat
	}
	for k := range cats {
		cat := &cats[k]
		if !cat.ParentId.Valid {
			continue
		}
		var parentid int = int(cat.ParentId.Int64)
		parent, ok := catmap[parentid]
		if !ok {
			continue
		}
		cat.Parent = parent
		parent.Children = append(parent.Children, cat)
	}

	sq = `select T1.Id, T1.CategoryId, T1.Name, T1.DateCreated, T1.Code,
T1.Votes1, T1.Votes2, T1.Votes3
from 
	Statements as T1
join (
	select Id
	from Categories
	where Id = $1 or ParentId = $1
) as T2
on T1.CategoryId = T2.Id`

	rows, err := ctx.Db.Queryx(sq, catid)
	if err != nil {
		return nil, err
	}
	stm := Statement{}
	for rows.Next() {
		err := rows.StructScan(&stm)
		if err != nil {
			return nil, err
		}
		cat, ok := catmap[stm.CategoryId]
		if !ok {
			log.Panicln("Cat not found, id: ", stm.CategoryId)
		}
		cat.Statements = append(cat.Statements, stm)
	}
	return cats, nil
}

func (ctx *DbContext) GetCategoryById(id int) (*Category2, error) {
	if ctx.Db == nil {
		return nil, fmt.Errorf("db not opened")
	}
	cat := Category2{}
	sq := `select Id, ParentId, Name, Code, ViewType
from Categories 
where Id=$1`
	err := ctx.Db.Get(&cat, sq, id)
	if err == sql.ErrNoRows {
		return nil, nil
	}
	if err != nil {
		return nil, err
	}
	return &cat, nil
}

func (ctx *DbContext) GetStatemantById(id int) (*Statement, error) {
	if ctx.Db == nil {
		return nil, fmt.Errorf("db not opened")
	}
	stm := Statement{}
	sq := `select Id, CategoryId, Name, DateCreated, Code,
	Votes1, Votes2, Votes3
from Statements
where id=$1`
	err := ctx.Db.Get(&stm, sq, id)
	if err == sql.ErrNoRows {
		return nil, nil
	}
	if err != nil {
		return nil, err
	}
	return &stm, nil
}

func (ctx *DbContext) GetParentCategories(cat *Category2) ([]Category2, error) {
	if ctx.Db == nil {
		return nil, fmt.Errorf("db not opened")
	}
	ret := []Category2{}
	if cat == nil {
		return ret, nil
	}
	catp := cat
	pidv := catp.ParentId
	var err error
	for pidv.Valid {
		pid := int(pidv.Int64)
		catp, err = ctx.GetCategoryById(pid)
		if err != nil {
			return nil, err
		}
		if catp == nil {
			break
		}
		pidv = catp.ParentId
		ret = append(ret, *catp)
	}
	slices.Reverse(ret)
	return ret, nil
}

func (ctx *DbContext) GetUsersCatVotes(userid, catid int) (map[int]EVoteValue, error) {
	if ctx.Db == nil {
		return nil, fmt.Errorf("db not opened")
	}
	ret := map[int]EVoteValue{}
	sql := `select Statements.id as sid, Votes.value as vvalue
from Votes 
join Statements on (Votes.UserId = $1 and Statements.Id = Votes.StatementId)
join Categories on ((Categories.Id = Statements.CategoryId) and 
	(Categories.Id = $2 or Categories.ParentId = $2))`
	rows, err := ctx.Db.Query(sql, userid, catid)
	if err != nil {
		return nil, err
	}
	var stmid int
	var vote EVoteValue
	for rows.Next() {
		err = rows.Scan(&stmid, &vote)
		if err != nil {
			return nil, err
		}
		ret[stmid] = vote
	}
	return ret, nil
}

func (ctx *DbContext) GetUsersStatementVote(userid, stmid int) (EVoteValue, error) {
	if ctx.Db == nil {
		return EVoteValue_None, fmt.Errorf("db not opened")
	}
	sq := `select value
from Votes 
where UserId = $1 and StatementId = $2`
	var vote EVoteValue
	row := ctx.Db.QueryRow(sq, userid, stmid)
	err := row.Scan(&vote)
	if err == sql.ErrNoRows {
		return EVoteValue_None, nil
	}
	if err != nil {
		return EVoteValue_None, err
	}
	return vote, nil
}

func (ctx *DbContext) GetVoteById(userid, stmid int) (*Vote, error) {
	if ctx.Db == nil {
		return nil, fmt.Errorf("db not opened")
	}
	vote := Vote{}
	sq := `select Id, StatementId, UserId, Value
from Votes
where UserId=$1 and StatementId=$2`
	err := ctx.Db.Get(&vote, sq, userid, stmid)
	if err == sql.ErrNoRows {
		return nil, nil
	}
	if err != nil {
		return nil, err
	}
	return &vote, nil
}

func (ctx *DbContext) AddVote(vote *Vote) error {
	if ctx.Db == nil {
		return fmt.Errorf("db not opened")
	}
	sq := `insert into Votes (StatementId, UserId, Value) 
values (:StatementId, :UserId, :Value)`
	res, err := ctx.Db.NamedExec(sq, vote)
	if err != nil {
		return err
	}
	id, err := res.LastInsertId()
	if err != nil {
		return err
	}
	vote.Id = int(id)
	return nil
}

func (ctx *DbContext) UpdateVote(vote *Vote) error {
	sq := `update Votes 
set StatementId = :StatementId, UserId = :UserId, Value = :Value
where Id = :Id`
	return ctx.UpdateRow(sq, vote)
}

func (ctx *DbContext) UpdateStatemantVotes(stm *Statement) error {
	sq := `update Statements 
set Votes1=:Votes1, Votes2=:Votes2, Votes3=:Votes3
where Id=:Id`
	return ctx.UpdateRow(sq, stm)
}

func (ctx *DbContext) WipeUser(userid int) error {
	if ctx.Db == nil {
		return fmt.Errorf("db not opened")
	}
	sq1 := `update Statements as T1
set Votes1=Votes1-1
where exists(
	select id 
	from Votes 
	where Votes.StatementId = T1.Id and 
		Votes.UserId = $1 and
		Votes.Value = 1
)`
	sq2 := `update Statements as T1
set Votes2=Votes2-1
where exists(
	select id 
	from Votes 
	where Votes.StatementId = T1.Id and 
		Votes.UserId = $1 and
		Votes.Value = 2
)`
	sq3 := `delete from Users where Id=:Id`
	tx := ctx.Db.MustBegin()
	tx.MustExec(sq1, userid)
	tx.MustExec(sq2, userid)
	tx.MustExec(sq3, userid)
	err := tx.Commit()
	if err != nil {
		return err
	}
	return nil
}

func (ctx *DbContext) GetRecomList(userid int) ([]Recom, error) {
	if ctx.Db == nil {
		return nil, fmt.Errorf("db not opened")
	}
	recomlist := []Recom{}
	sq := `select T1.Id as Id, T1.UserId as UserId, 
	T1.Text as Text, T1.DateCreated as DateCreated, T1.State as State, User.Name as UserName
from Recommendations as T1 join Users as User on User.Id = T1.UserId and User.Id = $1
order by T1.DateCreated, T1.Id`
	err := ctx.Db.Select(&recomlist, sq, userid)
	if err != nil {
		return nil, err
	}
	return recomlist, nil
}

func (ctx *DbContext) GetRecomListAll() ([]Recom, error) {
	if ctx.Db == nil {
		return nil, fmt.Errorf("db not opened")
	}
	recomlist := []Recom{}
	sq := `select T1.Id as Id, T1.UserId as UserId, 
	T1.Text as Text, T1.DateCreated as DateCreated, T1.State as State, User.Name as UserName
from Recommendations as T1 join Users as User on User.Id = T1.UserId
order by T1.UserId, T1.DateCreated, T1.Id`
	err := ctx.Db.Select(&recomlist, sq)
	if err != nil {
		return nil, err
	}
	return recomlist, nil
}

func (ctx *DbContext) AddRecom(recom *Recom) error {
	if ctx.Db == nil {
		return fmt.Errorf("db not opened")
	}
	sq := `insert into Recommendations (UserId, Text, DateCreated, State) 
values (:UserId, :Text, :DateCreated, :State)`
	res, err := ctx.Db.NamedExec(sq, recom)
	if err != nil {
		return err
	}
	id, err := res.LastInsertId()
	if err != nil {
		return err
	}
	recom.Id = int(id)
	return nil
}

func (ctx *DbContext) UpdateRecom(recom *Recom) error {
	sq := `update Recommendations 
set UserId=:UserId, Text=:Text, DateCreated=:DateCreated, State=:State 
where Id=:Id`
	return ctx.UpdateRow(sq, recom)
}
