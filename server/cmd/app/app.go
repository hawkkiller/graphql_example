package main

import (
	"log"
	"net/http"
	"os"
	"time"

	"github.com/99designs/gqlgen/graphql/handler"
	"github.com/99designs/gqlgen/graphql/playground"
	"github.com/hawkkiller/graphql_example/server/internal/graph"
	"github.com/hawkkiller/graphql_example/server/pkg/db"
)

func main() {
	port := os.Getenv("PORT")
	if port == "" {
		log.Fatalf("%s must be set", "PORT")
	}

	srv := handler.NewDefaultServer(graph.NewExecutableSchema(graph.Config{
		Resolvers: &graph.Resolver{
			DB: db.Open(),
		},
	}))

	mux := http.NewServeMux()

	mux.Handle("/", playground.Handler("GraphQL playground", "/graphql"))
	mux.Handle("/graphql", srv)

	server := http.Server{
		Handler:     mux,
		ReadTimeout: time.Duration(10) * time.Second,
		Addr:        ":" + port,
	}
	log.Printf("connect to http://localhost:%s/ for GraphQL playground", port)

	log.Fatal(server.ListenAndServe())
}
