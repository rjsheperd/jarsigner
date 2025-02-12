
.PHONY: build

build:
	docker build . -t "rjsheperd/jarsigner:latest"

push: build
	docker push "rjsheperd/jarsigner:latest"
