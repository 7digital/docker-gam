image_tag = contentdev/gam

build:
	@docker build -t $(image_tag) .
.PHONY: build

push: build
	@docker login -u $(DOCKER_HUB_USER) -p $(DOCKER_HUB_PASSWORD)
	@docker push $(image_tag)
.PHONY: build
