package models

type EVoteOpType int
type EVoteClick int
type EVoteType int

const (
	EVoteOpType_UserVoted EVoteOpType = iota
	EVoteOpType_WipeData
)
const (
	EVoteType_None EVoteType = iota
	EVoteType_Yes
	EVoteType_No
)
const (
	EVoteClick_Yes EVoteClick = iota
	EVoteClick_No
)

type IVoteOp interface {
}

type VoteOpClick struct {
	IVoteOp
	UserId      string
	StatementId int
	Click       EVoteClick
	Result      *VotingResult
}

type VoteOpWipe struct {
	IVoteOp
	UserId string
	Result bool
}

type VotingResult struct {
	StatementId int
	UserId      int
	UserName    string
	Votes1      int
	Votes2      int
	VoteType    EVoteType
}

type VoteClick struct {
	Id int
	Tp int
}

type PostClickResult struct {
	CountYes, CountNo int
	MarkYes, MarkNo   bool
}
