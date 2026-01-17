package models

import U "main/utils"

type RegisterPageVM struct {
	Name string
	Psw  string
	Msg  string
}

func (m *RegisterPageVM) Validate() string {
	if U.IsWhiteSpace(m.Name) || U.IsWhiteSpace(m.Psw) {
		return "Jānorāda lietotāja vārds un parole"
	}
	if len(m.Name) > 20 || len(m.Psw) > 20 {
		return "Lietotāja vārds vai parole ir par garu"
	}
	if len(m.Name) < 4 || len(m.Psw) < 4 {
		return "Lietotāja vārds vai parole ir par īsu"
	}
	return ""
}
