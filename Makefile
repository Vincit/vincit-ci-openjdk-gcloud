NAME = vincit/circleci-openjdk-gcloud
VERSION = 9-jdk

.PHONY: all build push

build:
	docker build --no-cache -t $(NAME):$(VERSION) .

push:
	docker push $(NAME):$(VERSION)

all: build
