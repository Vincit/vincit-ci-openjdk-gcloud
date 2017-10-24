NAME = vincit/circleci-openjdk-gcloud
VERSION = 8-jdk

.PHONY: all build push

build:
	docker build --no-cache -t $(NAME):$(VERSION) .

push: build
	docker push $(NAME):$(VERSION)

all: build
