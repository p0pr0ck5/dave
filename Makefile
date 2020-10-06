.PHONY: all
all: clean build

.PHONY: build
build:
	go build -o dave

.PHONY: clean
clean:
	rm -f ./dave

.PHONY: test
test:
	go vet
	go test -v ./...