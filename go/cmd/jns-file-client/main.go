package main

import (
	"context"
	"log"
	"net/http"
	"os"

	filev1 "github.com/tappoy/jns/go/_buf/file/v1"
	"github.com/tappoy/jns/go/_buf/file/v1/filev1connect"

	"connectrpc.com/connect"
)

func version(host string) {
	client := filev1connect.NewFileServiceClient(
		http.DefaultClient,
		host,
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

func postFile(host string) {
	client := filev1connect.NewPrivateFileServiceClient(
		http.DefaultClient,
		host+"/private",
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
	var host string
	if len(os.Args) == 1 {
		host = "http://localhost:8080"
	} else {
		host = os.Args[1]
	}
	version(host)
	postFile(host)
}
