DART_DIR=../dart/jns_api/lib/src/gen

all: lint gen \
	$(DART_DIR)/file.pb.dart \
	$(DART_DIR)/user.pb.dart

$(DART_DIR)/file.pb.dart: file/v1/file.proto
	protoc --dart_out=grpc:$(DART_DIR) -I file/v1 file.proto

$(DART_DIR)/user.pb.dart: user/v1/user.proto
	protoc --dart_out=grpc:$(DART_DIR) -I user/v1 user.proto

.PHONY: gen
gen:
	buf generate -o ../go/_buf

.PHONY: lint
lint:
	buf lint
