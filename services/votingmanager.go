package services

import (
	m "main/models"
	db "main/votesdb"
)

func (ctx *OpsContext) ProcessVoteOpReq(voteop m.IVoteOp) {
	if voteop == nil {
		return
	}
	ctx.VoteOpMutex.Lock()
	switch vop := voteop.(type) {
	case *m.VoteOpClick:
		vop.Result = ctx.ProcessVote(*vop)
	case *m.VoteOpWipe:
		vop.Result = ctx.ProcessWipe(*vop)
	}
	ctx.VoteOpMutex.Unlock()
}

func (ctx *OpsContext) ProcessVoteClickReq(username string, stmid int, click m.EVoteClick) *m.VotingResult {
	if username == "" {
		return nil
	}
	vc := m.VoteOpClick{
		UserId:      username,
		StatementId: stmid,
		Click:       click,
	}
	ctx.ProcessVoteOpReq(&vc)
	return vc.Result
}

func (ctx *OpsContext) ProcessWipeReq(username string) bool {
	if username == "" {
		return false
	}
	vc := m.VoteOpWipe{
		UserId: username,
	}
	ctx.ProcessVoteOpReq(&vc)
	return vc.Result
}

func (ctx *OpsContext) ProcessVote(voteclick m.VoteOpClick) *m.VotingResult {
	username := voteclick.UserId
	stmid := voteclick.StatementId
	click := voteclick.Click
	if username == "" {
		return nil
	}
	user, _ := ctx.Db.GetUserByName(username)
	if user == nil {
		return nil
	}
	stm, _ := ctx.Db.GetStatemantById(stmid)
	if stm == nil {
		return nil
	}
	vote, _ := ctx.Db.GetVoteById(user.Id, stmid)
	clickvotevalue := db.EVoteValue_No
	if click == m.EVoteClick_Yes {
		clickvotevalue = db.EVoteValue_Yes
	}
	var diffyes, diffno int
	if vote == nil {
		vote = &db.Vote{
			UserId:      user.Id,
			StatementId: stmid,
			Value:       clickvotevalue,
		}
		err := ctx.Db.AddVote(vote)
		if err != nil {
			return nil
		}
		if clickvotevalue == db.EVoteValue_Yes {
			diffyes, diffno = 1, 0
		} else {
			diffyes, diffno = 0, 1
		}
	} else {
		votevalue := clickvotevalue
		for _, vm := range clickvote {
			if click == vm.click && vote.Value == vm.curvote {
				votevalue = vm.newvote
				break
			}
		}
		for _, vm := range votemap {
			if votevalue == vm.newvote && vote.Value == vm.curvote {
				diffyes, diffno = vm.diffyes, vm.diffno
				break
			}
		}
		vote.Value = votevalue
		err := ctx.Db.UpdateVote(vote)
		if err != nil {
			return nil
		}
	}
	stm.Votes1 += diffyes
	stm.Votes2 += diffno
	err := ctx.Db.UpdateStatemantVotes(stm)
	if err != nil {
		return nil
	}
	resultvotevalue := MapVoteType(vote.Value)
	ret := m.VotingResult{
		UserId:      user.Id,
		UserName:    user.Name,
		StatementId: stmid,
		Votes1:      stm.Votes1,
		Votes2:      stm.Votes2,
		VoteType:    resultvotevalue,
	}
	return &ret
}

func (ctx *OpsContext) ProcessWipe(wipeop m.VoteOpWipe) bool {
	username := wipeop.UserId
	if username == "" {
		return false
	}
	user, _ := ctx.Db.GetUserByName(username)
	if user == nil {
		return false
	}
	err := ctx.Db.WipeUser(user.Id)
	return err == nil
}

type tvotemap struct {
	newvote, curvote db.EVoteValue
	diffyes, diffno  int
}
type tclickvote struct {
	click            m.EVoteClick
	curvote, newvote db.EVoteValue
}

var clickvote []tclickvote = []tclickvote{
	{m.EVoteClick_Yes, db.EVoteValue_Yes, db.EVoteValue_None},
	{m.EVoteClick_No, db.EVoteValue_No, db.EVoteValue_None},
	{m.EVoteClick_Yes, db.EVoteValue_No, db.EVoteValue_Yes},
	{m.EVoteClick_No, db.EVoteValue_Yes, db.EVoteValue_No},
}
var votemap []tvotemap = []tvotemap{
	{db.EVoteValue_None, db.EVoteValue_None, 0, 0},
	{db.EVoteValue_None, db.EVoteValue_Yes, -1, 0},
	{db.EVoteValue_None, db.EVoteValue_No, 0, -1},
	{db.EVoteValue_Yes, db.EVoteValue_None, 1, 0},
	{db.EVoteValue_Yes, db.EVoteValue_Yes, -1, 0},
	{db.EVoteValue_Yes, db.EVoteValue_No, 1, -1},
	{db.EVoteValue_No, db.EVoteValue_None, 0, 1},
	{db.EVoteValue_No, db.EVoteValue_Yes, -1, 1},
	{db.EVoteValue_No, db.EVoteValue_No, 0, -1},
}

func MapVoteType(v db.EVoteValue) m.EVoteType {
	switch v {
	case db.EVoteValue_No:
		return m.EVoteType_No
	case db.EVoteValue_Yes:
		return m.EVoteType_Yes
	}
	return m.EVoteType_None
}
