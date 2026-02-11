PROTO_SRC=api/proto
GEN_GO_OUT=gen/go

.PHONY: gen-order
gen-order:
	mkdir -p $(GEN_GO_OUT)
	protoc \
		-I $(PROTO_SRC) \
		--go_out=$(GEN_GO_OUT) --go_opt=paths=source_relative \
		--go-grpc_out=$(GEN_GO_OUT) --go-grpc_opt=paths=source_relative \
		order/v1/order.proto
