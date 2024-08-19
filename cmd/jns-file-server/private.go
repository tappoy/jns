package main

import (
	"context"
	"fmt"
	"github.com/tappoy/env"

	"connectrpc.com/connect"
	filev1 "github.com/tappoy/jns/proto/gen/file/v1"
)

type PrivateFileServer struct{}

func (s *PrivateFileServer) PostFile(
	ctx context.Context,
	req *connect.Request[filev1.PostFileRequest],
) (*connect.Response[filev1.PostFileResponse], error) {

	env.EDebug("DirPath: %v, File: %v", req.Msg.DirPath, req.Msg.File)

	res := connect.NewResponse(&filev1.PostFileResponse{
		FileId: fmt.Sprintf("DirPath, %s!, %v", req.Msg.DirPath, req.Peer().Addr),
	})

	h := res.Header()
	setHeader(&h)
	return res, nil
}

func (s *PrivateFileServer) GCFile(
	ctx context.Context,
	req *connect.Request[filev1.GCFileRequest],
) (*connect.Response[filev1.GCFileResponse], error) {

	res := connect.NewResponse(&filev1.GCFileResponse{ })

	h := res.Header()
	setHeader(&h)
	return res, nil
}

func (s *PrivateFileServer) GCDir(
	ctx context.Context,
	req *connect.Request[filev1.GCDirRequest],
) (*connect.Response[filev1.GCDirResponse], error) {

	res := connect.NewResponse(&filev1.GCDirResponse{ })

	h := res.Header()
	setHeader(&h)
	return res, nil
}

func (s *PrivateFileServer) Vacuum(
	ctx context.Context,
	req *connect.Request[filev1.VacuumRequest],
) (*connect.Response[filev1.VacuumResponse], error) {

	res := connect.NewResponse(&filev1.VacuumResponse{ })

	h := res.Header()
	setHeader(&h)
	return res, nil
}
