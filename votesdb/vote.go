package votesdb

type EVoteValue int

const (
	EVoteValue_None EVoteValue = iota
	EVoteValue_Yes
	EVoteValue_No
)

type Vote struct {
	Id          int
	StatementId int
	UserId      int
	Value       EVoteValue
}
