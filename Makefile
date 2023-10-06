GOBASE := $(shell pwd)
GOBIN := $(GOBASE)/dist
GOENVVARS := GOBIN=$(GOBIN) CGO_ENABLED=0 GOOS=linux GOARCH=$(ARCH)
GOBINARY := zkevm-node
GOCMD := $(GOBASE)/cmd


# Check for Protoc
.PHONY: check-protoc
check-protoc:
	@which protoc > /dev/null || (echo "Error: Protoc is not installed" && exit 1)

install-protoc: check-protoc

.PHONY: install-protoc
install-protoc: ## Installs the protoc
	go install google.golang.org/protobuf/cmd/protoc-gen-go@v1.28
	go install google.golang.org/grpc/cmd/protoc-gen-go-grpc@v1.2

.PHONY: install-protoc
verify-proto-syntax: ## Verify proto syntax
	protoc  -I proto/v1/ proto/v1/statedb_read.proto  --python_out=/tmp --experimental_allow_proto3_optional



generate-code-from-proto: 
	protoc  -I proto/v1/ proto/v1/statedb_read.proto  --python_out=/tmp/ --experimental_allow_proto3_optional

generate-code-from-proto-to-go: 
	protoc  -I proto/v1/ proto/v1/statedb_read.proto  --python_out=/tmp/ --experimental_allow_proto3_optional


## Help display.
## Pulls comments from beside commands and prints a nicely formatted
## display with the commands and their usage information.
.DEFAULT_GOAL := help

.PHONY: help
help: ## Prints this help
	@grep -h -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) \
	| sort \
	| awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'