.PHONY: gen
gen: lint
	buf generate -o _buf
	protoc --dart_out=grpc:_dart/gen -I file/v1 file.proto
	protoc --dart_out=grpc:_dart/gen -I user/v1 user.proto

.PHONY: lint
lint:
	buf lint
