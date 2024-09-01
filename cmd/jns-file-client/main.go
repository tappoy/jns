package main

import (
	"context"
	"log"
	"net/http"

	filev1 "github.com/tappoy/jns/proto/_buf/go/file/v1"
	"github.com/tappoy/jns/proto/_buf/go/file/v1/filev1connect"

	"connectrpc.com/connect"
)

func main() {
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
