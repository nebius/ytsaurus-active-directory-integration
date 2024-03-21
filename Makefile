.PHONY: lint
lint:
	golangci-lint run

.PHONY: lint-fix
lint-fix:
	golangci-lint run --fix

.PHONY: test
test:
	go test ./...

.PHONY: test-fast
test-fast:
	REUSE_YT_CONTAINER=yes go test ./...

.PHONY: format
format:
	go fmt
