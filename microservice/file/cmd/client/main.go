package main

import (
    "context"
    "log"
    "net/http"

    filev1 "github.com/tappoy/jns/proto/gen/file/v1"
    "github.com/tappoy/jns/proto/gen/file/v1/filev1connect"

    "connectrpc.com/connect"
)

func main() {
    client := filev1connect.NewPrivateFileServiceClient(
        http.DefaultClient,
        "http://localhost:8080/private",
    )
    res, err := client.PostFile(
        context.Background(),
        connect.NewRequest(&filev1.PostFileRequest{DirPath: "Jane"}),
    )
    if err != nil {
        log.Println(err)
        return
    }
    log.Println(res.Msg.FileId)
}
