package pages

type SessionData struct {
	Title           string
	UserId          string
	UserName        string
	IsAuthenticated bool
	IsAdmin         bool
	ViewData        map[string]any
}
