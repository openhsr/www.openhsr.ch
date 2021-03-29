DOCKER=docker
FLAGS=
MOUNT_OPTION=
# uncomment the following lines to use podman instead of docker
#DOCKER=podman
#FLAGS=--userns=keep-id
#MOUNT_OPTION=:Z

.PHONY: serve build default build-image deploy

default: buildimage serve

buildimage:
	$(DOCKER) build -t openhsr/www.openhsr.ch docker/
	$(DOCKER) run -i -t --rm --name www.openhsr.ch -v $(shell pwd):/src/$(MOUNT_OPTION) -p 4000:4000 $(FLAGS) openhsr/www.openhsr.ch bundle install --clean

build:
	$(DOCKER) run -i -t --rm --name www.openhsr.ch -v $(shell pwd):/src/$(MOUNT_OPTION) -p 4000:4000 $(FLAGS) openhsr/www.openhsr.ch bundle exec jekyll build

enter:
	$(DOCKER) run -i -t --rm --name www.openhsr.ch -v $(shell pwd):/src/$(MOUNT_OPTION) -p 4000:4000 $(FLAGS) openhsr/www.openhsr.ch bash

serve:
	$(DOCKER) run -i -t --rm --name www.openhsr.ch -v $(shell pwd):/src/$(MOUNT_OPTION) -p 4000:4000 $(FLAGS) openhsr/www.openhsr.ch bundle exec jekyll serve

updatedeps:
	$(DOCKER) run -i --rm --name www.openhsr.ch -v $(shell pwd):/src/$(MOUNT_OPTION) -p 4000:4000 $(FLAGS) openhsr/www.openhsr.ch bundle update
