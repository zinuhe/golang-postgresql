package main

import (
	"context"
	"fmt"
	"os"

	"github.com/jackc/pgx/v4" // PostgreSQL Driver
)

func main() {
	// dataBaseURL := "postgres://username:password@localhost:5432/database_name"
	dataBaseURL := "postgres://postgres:docker@localhost:5432/usershop"
	// conn, err := pgx.Connect(context.Background(), os.Getenv("DATABASE_URL"))
	conn, err := pgx.Connect(context.Background(), dataBaseURL)

	if err != nil {
		fmt.Fprintf(os.Stderr, "Unable to connect to database: %v\n", err)
		os.Exit(1)
	}
	defer conn.Close(context.Background())

	// var id int64
	var firstName string
	var lastName string

	err = conn.QueryRow(context.Background(),
		"select firstname, lastname from users where id=$1",
		3).
		Scan(&firstName, &lastName)

	if err != nil {
		fmt.Fprintf(os.Stderr, "QueryRow failed: %v\n", err)
		os.Exit(1)
	}

	fmt.Println("First name:", firstName, "\nLast name:", lastName)
}
