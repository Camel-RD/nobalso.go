package utils

import (
	"crypto/rand"
	"database/sql"
	"encoding/hex"
	"io"
	"strings"
)

func NullString(s string) sql.NullString {
	return sql.NullString{String: s, Valid: true}
}

func IsWhiteSpace(s string) bool {
	return strings.TrimSpace(s) == ""
}

func StrIf(cond bool, s1, s2 string) string {
	if cond {
		return s1
	}
	return s2
}

func GenerateRandomKey(length int) string {
	b := make([]byte, length)
	if _, err := io.ReadFull(rand.Reader, b); err != nil {
		return ""
	}
	s := hex.EncodeToString(b)
	return s
}
