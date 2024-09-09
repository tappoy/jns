package main

import (
	"context"
	"log"
	"net/http"

	filev1 "github.com/tappoy/jns/go/_buf/file/v1"
	"github.com/tappoy/jns/go/_buf/file/v1/filev1connect"

	"connectrpc.com/connect"
)

func version() {
	client := filev1connect.NewFileServiceClient(
		http.DefaultClient,
		"http://localhost:8080",
	)
	req := connect.NewRequest(&filev1.VersionRequest{})
	req.Header().Set("Jns-Token", "PUBLIC-TEST")
	res, err := client.Version(context.Background(), req)
	if err != nil {
		log.Println(err)
		return
	}
	log.Println(res.Msg.Version)
}

func postFile() {
	client := filev1connect.NewPrivateFileServiceClient(
		http.DefaultClient,
		"http://localhost:8080/private",
	)
	req := connect.NewRequest(&filev1.PostFileRequest{DirPath: "Jane"})
	req.Header().Set("Jns-Token", "PRIVATE-TEST")
	res, err := client.PostFile(context.Background(), req)
	if err != nil {
		log.Println(err)
		return
	}
	log.Println(res.Msg.FileId)
}

func main() {
	version()
	postFile()
}
