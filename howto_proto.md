# How to make proto

[reference](https://connectrpc.com/docs/go/getting-started)

1. make dir & edit .proto
```
mkdir -p service/v1
vi service/v1/service.proto
```

```proto
syntax = "proto3";

package greet.v1;

option go_package = "example/gen/greet/v1;greetv1";

message GreetRequest {
	  string name = 1;
}

message GreetResponse {
	  string greeting = 1;
}

service GreetService {
	  rpc Greet(GreetRequest) returns (GreetResponse) {}
}
```

2. generate code
```
buf config init
vi buf.gen.yaml
```

```yaml
version: v2
plugins:
	- local: protoc-gen-connect-go
		out: gen
		opt: paths=source_relative
```

```
buf lint
buf generate
```
