package main

import (
	"fmt"
	"os"
)

var (
	version string
	commit  string
	date    string
)

func main() {
	if len(os.Args) == 2 && os.Args[1] == "version" {
		fmt.Printf("Version %s\nBuild from %s on %s\n", version, commit, date)
	}
	fmt.Println("Good evening, Universe!")
}
