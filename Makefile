.PHONY: all
all: clean build

.PHONY: build
build:
	go build -o dave

.PHONY: clean
clean:
	rm -f ./dave

.PHONY: vet
vet:
	go vet

.PHONY: test
test: vet
	go test -v ./...