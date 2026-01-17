package main

import (
	"fmt"
)

var dbfilename string = "file:votes.db?_fk=true"

func main() {
	err := Run()
	fmt.Println("server closed: ", err)
}
