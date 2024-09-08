package main

import (
	"context"
	"errors"
	"fmt"
	"github.com/tappoy/env"
	"github.com/tappoy/version"
	"net/http"

	"connectrpc.com/connect"

	"github.com/tappoy/jns/go/_buf/file/v1/filev1connect"
	"golang.org/x/net/http2"
	"golang.org/x/net/http2/h2c"
)

func setHeader(h *http.Header) {
	h.Set("Jns-File-Server-Version", "v1")
	h.Set("Jns-File-Server-Revision", revision)
	h.Set("Jns-File-Server-Name", name)
}

const ENV_PRIVATE_TOKEN = "PRIVATE_TOKEN"
const ENV_PUBLIC_TOKEN = "PUBLIC_TOKEN"
const ENV_NAME = "NAME"
const ENV_HOST = "HOST"
const ENV_PORT = "PORT"
const ENV_LOGDIR = "LOGDIR"

const HTTP_HEADER_JNS_TOKEN = "Jns-Token"

func NewLogInterceptor() connect.UnaryInterceptorFunc {
	interceptor := func(next connect.UnaryFunc) connect.UnaryFunc {
		return connect.UnaryFunc(func(
			ctx context.Context,
			req connect.AnyRequest,
		) (connect.AnyResponse, error) {
			env.Info("Request headers: %v", req.Header())
			return next(ctx, req)
		})
	}
	return connect.UnaryInterceptorFunc(interceptor)
}

func NewAuthInterceptor(header, token string) connect.UnaryInterceptorFunc {
	interceptor := func(next connect.UnaryFunc) connect.UnaryFunc {
		return connect.UnaryFunc(func(
			ctx context.Context,
			req connect.AnyRequest,
		) (connect.AnyResponse, error) {
			if req.Header().Get(header) != token {
				return nil, connect.NewError(
					connect.CodeUnauthenticated,
					errors.New("bad token"),
				)
			}
			return next(ctx, req)
		})
	}
	return connect.UnaryInterceptorFunc(interceptor)
}

var revision string
var name string

func main() {
	// Revision
	revision = version.Version()

	// Name
	name = env.Getenv(ENV_NAME, "(dev)")

	// Public Service
	pub := http.NewServeMux()
	pubs := &FileServer{}
	pubi := connect.WithInterceptors(
		NewLogInterceptor(),
		NewAuthInterceptor(HTTP_HEADER_JNS_TOKEN, env.Getenv(ENV_PUBLIC_TOKEN, "PUBLIC-TEST")),
	)
	pub.Handle(filev1connect.NewFileServiceHandler(pubs, pubi))

	// Private Service
	pri := http.NewServeMux()
	pris := &PrivateFileServer{}
	prii := connect.WithInterceptors(
		NewLogInterceptor(),
		NewAuthInterceptor(HTTP_HEADER_JNS_TOKEN, env.Getenv(ENV_PRIVATE_TOKEN, "PRIVATE-TEST")),
	)
	pri.Handle(filev1connect.NewPrivateFileServiceHandler(pris, prii))

	// URL
	mux := http.NewServeMux()
	mux.Handle("/", pub)
	mux.Handle("/private/", http.StripPrefix("/private", pri))

	// Logger
	logDir := env.Getenv(ENV_LOGDIR, "/tmp/log/jns/file")
	err := env.SetLogger(logDir)
	if err != nil {
		panic(fmt.Sprintf("log dir error: %v:%v", err, logDir))
	}
	env.EInfo("logDir: %v", logDir)

	// Addr
	host := env.Getenv(ENV_HOST, "")
	port := env.Getenv(ENV_PORT, "8080")
	addr := fmt.Sprintf("%s:%s", host, port)
	env.EInfo("%v, %v: start jns-file-server. listen: [%v]", name, revision, addr)

	// Check Token
	if env.Getenv(ENV_PRIVATE_TOKEN, "") == "" || env.Getenv(ENV_PUBLIC_TOKEN, "") == "" {
		env.ENotice("CAUTION! Running in test mode.")
	}

	// Listen
	http.ListenAndServe(
		addr,
		// Use h2c so we can serve HTTP/2 without TLS.
		h2c.NewHandler(mux, &http2.Server{}),
	)
}
