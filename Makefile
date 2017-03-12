PKG := github.com/ckeyer/k8stest
PWD := $(shell pwd)
IMAGE_NAME := ckeyer/yy:k8s

default: localbuild buildimage

localbuild:
	GOOS="linux" GOARCH="amd64"  go build -o bundles/hello .

buildimage:
	docker build -t $(IMAGE_NAME) .

build:
	docker run --rm \
	 -v $(PWD):/opt/gopath/src/$(PKG) \
	 -w /opt/gopath/src/$(PKG) \
	 -e CGO_ENABLED=0 \
	 -e GOPATH=/opt/gopath \
	 golang:1.7 go build -o bundles/hello .
