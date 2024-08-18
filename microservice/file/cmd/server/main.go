package main

import (
	"fmt"
	"context"
	"errors"
	"net/http"
	"github.com/tappoy/env"

	"connectrpc.com/connect"

	"golang.org/x/net/http2"
	"golang.org/x/net/http2/h2c"
	"github.com/tappoy/jns/proto/gen/file/v1/filev1connect"
)

func setHeader(h *http.Header) {
	h.Set("Jns-File-Server-Version", "v1")
}

const privateTokenHeader = "Jns-Private-Token"
const privateTokenEnv = "JNS_PRIVATE_TOKEN"
const publicTokenHeader = "Jns-Public-Token"
const publicTokenEnv = "JNS_PUBLIC_TOKEN"

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

func main() {
	// Public Service
	pub := http.NewServeMux()
	pubs := &FileServer{}
	pubi := connect.WithInterceptors(
		NewLogInterceptor(),
		)
	pub.Handle(filev1connect.NewFileServiceHandler(pubs, pubi))

	// Private Service
	pri := http.NewServeMux()
	pris := &PrivateFileServer{}
	prii := connect.WithInterceptors(
		NewLogInterceptor(),
		NewAuthInterceptor(privateTokenHeader, env.Getenv(privateTokenEnv, "PRIVATE-TEST")),
		)
	pri.Handle(filev1connect.NewPrivateFileServiceHandler(pris, prii))

	// URL
	mux := http.NewServeMux()
	mux.Handle("/", pub)
	mux.Handle("/private/", http.StripPrefix("/private", pri))

	// Logger
	logDir := env.Getenv("JNS_MICROSERVICE_FILE_LOGDIR", "/tmp/log/jns/file")
	err := env.SetLogger(logDir)
	if err != nil {
		panic(fmt.Sprintf("log dir error: %v:%v", err, logDir))
	}
	env.EInfo("logDir: %v", logDir)

	// Addr
	host := env.Getenv("JNS_MICROSERVICE_FILE_HOST", "localhost")
	port := env.Getenv("JNS_MICROSERVICE_FILE_PORT", "8080")
	addr := fmt.Sprintf("%s:%s", host, port)
	env.EInfo("start file server. listen: %v", addr)

	// Check Token
	if env.Getenv(privateTokenEnv, "") == "" || env.Getenv(publicTokenEnv, "") == "" {
		env.ENotice("CAUTION! Running in test mode.")
	}

	// Listen
	http.ListenAndServe(
		addr,
		// Use h2c so we can serve HTTP/2 without TLS.
		h2c.NewHandler(mux, &http2.Server{}),
	)
}
