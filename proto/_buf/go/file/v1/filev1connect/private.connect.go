// Code generated by protoc-gen-connect-go. DO NOT EDIT.
//
// Source: file/v1/private.proto

package filev1connect

import (
	connect "connectrpc.com/connect"
	context "context"
	errors "errors"
	v1 "github.com/tappoy/jns/proto/_buf/go/file/v1"
	http "net/http"
	strings "strings"
)

// This is a compile-time assertion to ensure that this generated file and the connect package are
// compatible. If you get a compiler error that this constant is not defined, this code was
// generated with a version of connect newer than the one compiled into your binary. You can fix the
// problem by either regenerating this code with an older version of connect or updating the connect
// version compiled into your binary.
const _ = connect.IsAtLeastVersion1_13_0

const (
	// PrivateFileServiceName is the fully-qualified name of the PrivateFileService service.
	PrivateFileServiceName = "file.v1.PrivateFileService"
)

// These constants are the fully-qualified names of the RPCs defined in this package. They're
// exposed at runtime as Spec.Procedure and as the final two segments of the HTTP route.
//
// Note that these are different from the fully-qualified method names used by
// google.golang.org/protobuf/reflect/protoreflect. To convert from these constants to
// reflection-formatted method names, remove the leading slash and convert the remaining slash to a
// period.
const (
	// PrivateFileServicePostFileProcedure is the fully-qualified name of the PrivateFileService's
	// PostFile RPC.
	PrivateFileServicePostFileProcedure = "/file.v1.PrivateFileService/PostFile"
	// PrivateFileServiceGCFileProcedure is the fully-qualified name of the PrivateFileService's GCFile
	// RPC.
	PrivateFileServiceGCFileProcedure = "/file.v1.PrivateFileService/GCFile"
	// PrivateFileServiceGCDirProcedure is the fully-qualified name of the PrivateFileService's GCDir
	// RPC.
	PrivateFileServiceGCDirProcedure = "/file.v1.PrivateFileService/GCDir"
	// PrivateFileServiceVacuumProcedure is the fully-qualified name of the PrivateFileService's Vacuum
	// RPC.
	PrivateFileServiceVacuumProcedure = "/file.v1.PrivateFileService/Vacuum"
)

// These variables are the protoreflect.Descriptor objects for the RPCs defined in this package.
var (
	privateFileServiceServiceDescriptor        = v1.File_file_v1_private_proto.Services().ByName("PrivateFileService")
	privateFileServicePostFileMethodDescriptor = privateFileServiceServiceDescriptor.Methods().ByName("PostFile")
	privateFileServiceGCFileMethodDescriptor   = privateFileServiceServiceDescriptor.Methods().ByName("GCFile")
	privateFileServiceGCDirMethodDescriptor    = privateFileServiceServiceDescriptor.Methods().ByName("GCDir")
	privateFileServiceVacuumMethodDescriptor   = privateFileServiceServiceDescriptor.Methods().ByName("Vacuum")
)

// PrivateFileServiceClient is a client for the file.v1.PrivateFileService service.
type PrivateFileServiceClient interface {
	PostFile(context.Context, *connect.Request[v1.PostFileRequest]) (*connect.Response[v1.PostFileResponse], error)
	GCFile(context.Context, *connect.Request[v1.GCFileRequest]) (*connect.Response[v1.GCFileResponse], error)
	GCDir(context.Context, *connect.Request[v1.GCDirRequest]) (*connect.Response[v1.GCDirResponse], error)
	Vacuum(context.Context, *connect.Request[v1.VacuumRequest]) (*connect.Response[v1.VacuumResponse], error)
}

// NewPrivateFileServiceClient constructs a client for the file.v1.PrivateFileService service. By
// default, it uses the Connect protocol with the binary Protobuf Codec, asks for gzipped responses,
// and sends uncompressed requests. To use the gRPC or gRPC-Web protocols, supply the
// connect.WithGRPC() or connect.WithGRPCWeb() options.
//
// The URL supplied here should be the base URL for the Connect or gRPC server (for example,
// http://api.acme.com or https://acme.com/grpc).
func NewPrivateFileServiceClient(httpClient connect.HTTPClient, baseURL string, opts ...connect.ClientOption) PrivateFileServiceClient {
	baseURL = strings.TrimRight(baseURL, "/")
	return &privateFileServiceClient{
		postFile: connect.NewClient[v1.PostFileRequest, v1.PostFileResponse](
			httpClient,
			baseURL+PrivateFileServicePostFileProcedure,
			connect.WithSchema(privateFileServicePostFileMethodDescriptor),
			connect.WithClientOptions(opts...),
		),
		gCFile: connect.NewClient[v1.GCFileRequest, v1.GCFileResponse](
			httpClient,
			baseURL+PrivateFileServiceGCFileProcedure,
			connect.WithSchema(privateFileServiceGCFileMethodDescriptor),
			connect.WithClientOptions(opts...),
		),
		gCDir: connect.NewClient[v1.GCDirRequest, v1.GCDirResponse](
			httpClient,
			baseURL+PrivateFileServiceGCDirProcedure,
			connect.WithSchema(privateFileServiceGCDirMethodDescriptor),
			connect.WithClientOptions(opts...),
		),
		vacuum: connect.NewClient[v1.VacuumRequest, v1.VacuumResponse](
			httpClient,
			baseURL+PrivateFileServiceVacuumProcedure,
			connect.WithSchema(privateFileServiceVacuumMethodDescriptor),
			connect.WithClientOptions(opts...),
		),
	}
}

// privateFileServiceClient implements PrivateFileServiceClient.
type privateFileServiceClient struct {
	postFile *connect.Client[v1.PostFileRequest, v1.PostFileResponse]
	gCFile   *connect.Client[v1.GCFileRequest, v1.GCFileResponse]
	gCDir    *connect.Client[v1.GCDirRequest, v1.GCDirResponse]
	vacuum   *connect.Client[v1.VacuumRequest, v1.VacuumResponse]
}

// PostFile calls file.v1.PrivateFileService.PostFile.
func (c *privateFileServiceClient) PostFile(ctx context.Context, req *connect.Request[v1.PostFileRequest]) (*connect.Response[v1.PostFileResponse], error) {
	return c.postFile.CallUnary(ctx, req)
}

// GCFile calls file.v1.PrivateFileService.GCFile.
func (c *privateFileServiceClient) GCFile(ctx context.Context, req *connect.Request[v1.GCFileRequest]) (*connect.Response[v1.GCFileResponse], error) {
	return c.gCFile.CallUnary(ctx, req)
}

// GCDir calls file.v1.PrivateFileService.GCDir.
func (c *privateFileServiceClient) GCDir(ctx context.Context, req *connect.Request[v1.GCDirRequest]) (*connect.Response[v1.GCDirResponse], error) {
	return c.gCDir.CallUnary(ctx, req)
}

// Vacuum calls file.v1.PrivateFileService.Vacuum.
func (c *privateFileServiceClient) Vacuum(ctx context.Context, req *connect.Request[v1.VacuumRequest]) (*connect.Response[v1.VacuumResponse], error) {
	return c.vacuum.CallUnary(ctx, req)
}

// PrivateFileServiceHandler is an implementation of the file.v1.PrivateFileService service.
type PrivateFileServiceHandler interface {
	PostFile(context.Context, *connect.Request[v1.PostFileRequest]) (*connect.Response[v1.PostFileResponse], error)
	GCFile(context.Context, *connect.Request[v1.GCFileRequest]) (*connect.Response[v1.GCFileResponse], error)
	GCDir(context.Context, *connect.Request[v1.GCDirRequest]) (*connect.Response[v1.GCDirResponse], error)
	Vacuum(context.Context, *connect.Request[v1.VacuumRequest]) (*connect.Response[v1.VacuumResponse], error)
}

// NewPrivateFileServiceHandler builds an HTTP handler from the service implementation. It returns
// the path on which to mount the handler and the handler itself.
//
// By default, handlers support the Connect, gRPC, and gRPC-Web protocols with the binary Protobuf
// and JSON codecs. They also support gzip compression.
func NewPrivateFileServiceHandler(svc PrivateFileServiceHandler, opts ...connect.HandlerOption) (string, http.Handler) {
	privateFileServicePostFileHandler := connect.NewUnaryHandler(
		PrivateFileServicePostFileProcedure,
		svc.PostFile,
		connect.WithSchema(privateFileServicePostFileMethodDescriptor),
		connect.WithHandlerOptions(opts...),
	)
	privateFileServiceGCFileHandler := connect.NewUnaryHandler(
		PrivateFileServiceGCFileProcedure,
		svc.GCFile,
		connect.WithSchema(privateFileServiceGCFileMethodDescriptor),
		connect.WithHandlerOptions(opts...),
	)
	privateFileServiceGCDirHandler := connect.NewUnaryHandler(
		PrivateFileServiceGCDirProcedure,
		svc.GCDir,
		connect.WithSchema(privateFileServiceGCDirMethodDescriptor),
		connect.WithHandlerOptions(opts...),
	)
	privateFileServiceVacuumHandler := connect.NewUnaryHandler(
		PrivateFileServiceVacuumProcedure,
		svc.Vacuum,
		connect.WithSchema(privateFileServiceVacuumMethodDescriptor),
		connect.WithHandlerOptions(opts...),
	)
	return "/file.v1.PrivateFileService/", http.HandlerFunc(func(w http.ResponseWriter, r *http.Request) {
		switch r.URL.Path {
		case PrivateFileServicePostFileProcedure:
			privateFileServicePostFileHandler.ServeHTTP(w, r)
		case PrivateFileServiceGCFileProcedure:
			privateFileServiceGCFileHandler.ServeHTTP(w, r)
		case PrivateFileServiceGCDirProcedure:
			privateFileServiceGCDirHandler.ServeHTTP(w, r)
		case PrivateFileServiceVacuumProcedure:
			privateFileServiceVacuumHandler.ServeHTTP(w, r)
		default:
			http.NotFound(w, r)
		}
	})
}

// UnimplementedPrivateFileServiceHandler returns CodeUnimplemented from all methods.
type UnimplementedPrivateFileServiceHandler struct{}

func (UnimplementedPrivateFileServiceHandler) PostFile(context.Context, *connect.Request[v1.PostFileRequest]) (*connect.Response[v1.PostFileResponse], error) {
	return nil, connect.NewError(connect.CodeUnimplemented, errors.New("file.v1.PrivateFileService.PostFile is not implemented"))
}

func (UnimplementedPrivateFileServiceHandler) GCFile(context.Context, *connect.Request[v1.GCFileRequest]) (*connect.Response[v1.GCFileResponse], error) {
	return nil, connect.NewError(connect.CodeUnimplemented, errors.New("file.v1.PrivateFileService.GCFile is not implemented"))
}

func (UnimplementedPrivateFileServiceHandler) GCDir(context.Context, *connect.Request[v1.GCDirRequest]) (*connect.Response[v1.GCDirResponse], error) {
	return nil, connect.NewError(connect.CodeUnimplemented, errors.New("file.v1.PrivateFileService.GCDir is not implemented"))
}

func (UnimplementedPrivateFileServiceHandler) Vacuum(context.Context, *connect.Request[v1.VacuumRequest]) (*connect.Response[v1.VacuumResponse], error) {
	return nil, connect.NewError(connect.CodeUnimplemented, errors.New("file.v1.PrivateFileService.Vacuum is not implemented"))
}
