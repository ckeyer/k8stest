package main

import (
	"log"
	"net/http"
	"os"
)

func main() {
	mux := http.NewServeMux()

	mux.HandleFunc("/", func(rw http.ResponseWriter, req *http.Request) {
		log.Printf("%s %s, Remote: %s", req.Method, req.URL.String(), req.RemoteAddr)
		rw.WriteHeader(201)
		rw.Write([]byte(os.Getenv("CK") + ": hello " + req.RemoteAddr))
	})

	log.Println("http listening...")

	err := http.ListenAndServe(":80", mux)
	if err != nil {
		log.Fatal(err)
	}
}
