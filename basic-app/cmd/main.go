package main

import (
	"fmt"
	"net/http"

	handler "github.com/hadrienmarquez/go-templ-dev-server/basic-app/api/handlers"
)

func main()  {

	address :=  "localhost:8080"
	mux :=  http.NewServeMux()

	mux.HandleFunc("/", handler.DefaultHandler)

	fmt.Printf("Listening at %s", address)
	http.ListenAndServe(address, mux)
}
