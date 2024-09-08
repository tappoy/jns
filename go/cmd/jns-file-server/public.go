package main

import (
	"context"
	"fmt"
	"log"

	"connectrpc.com/connect"

	filev1 "github.com/tappoy/jns/go/_buf/file/v1"
)

type FileServer struct{}

func (s *FileServer) GetFile(
	ctx context.Context,
	req *connect.Request[filev1.GetFileRequest],
) (*connect.Response[filev1.GetFileResponse], error) {
	log.Println("Request headers: ", req.Header())
	res := connect.NewResponse(&filev1.GetFileResponse{
		File: []byte(fmt.Sprintf("Path, %s!", req.Msg.Path)),
	})
	res.Header().Set("JNSFileServer-Version", "v1")
	return res, nil
}

func (s *FileServer) GetDir(
	ctx context.Context,
	req *connect.Request[filev1.GetDirRequest],
) (*connect.Response[filev1.GetDirResponse], error) {
	log.Println("Request headers: ", req.Header())
	res := connect.NewResponse(&filev1.GetDirResponse{
		Tar: []byte(fmt.Sprintf("DirPath, %s!", req.Msg.DirPath)),
	})
	res.Header().Set("JNSDirServer-Version", "v1")
	return res, nil
}
