# Go parameters
GOCMD=go
GOBUILD=$(GOCMD) build
GOCLEAN=$(GOCMD) clean
GOTEST=$(GOCMD) test
GOGET=$(GOCMD) get
GOINSTALL=$(GOCMD) install
BINARY_NAME=main
    
all: install test build
build: 
	$(GOBUILD) ./cmd/invasion/main.go
test: 
	$(GOTEST) -v ./pkg/util
	$(GOTEST) -v ./pkg/destroy
clean: 
	$(GOCLEAN)
	rm -f $(BINARY_NAME)
run:
	./$(BINARY_NAME)
install:
	$(GOINSTALL) ./pkg/struct
	$(GOINSTALL) ./pkg/util
	$(GOINSTALL) ./pkg/destroy
	$(GOINSTALL) ./pkg/aliens
	$(GOINSTALL) ./pkg/move
