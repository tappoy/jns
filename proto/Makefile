DART_DIR=../dart/jns_api/lib/src/gen
.PHONY: gen
gen: lint
	buf generate -o ../go/_buf
	mkdir -p $(DART_DIR)
	protoc --dart_out=grpc:$(DART_DIR) -I file/v1 file.proto
	protoc --dart_out=grpc:$(DART_DIR) -I user/v1 user.proto

.PHONY: lint
lint:
	buf lint
