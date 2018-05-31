.PHONY: serve build default build-image deploy

default: buildimage serve

buildimage:
	docker build -t openhsr/www.openhsr.ch docker/
	docker run -i -t --rm --name www.openhsr.ch -v $(shell pwd):/src/ -p 4000:4000 openhsr/www.openhsr.ch bundle install --clean

build:
	docker run -i -t --rm --name www.openhsr.ch -v $(shell pwd):/src/ -p 4000:4000 openhsr/www.openhsr.ch bundle exec jekyll build

serve:
	docker run -i -t --rm --name www.openhsr.ch -v $(shell pwd):/src/ -p 4000:4000 openhsr/www.openhsr.ch bundle exec jekyll serve

deploy:
	docker run --rm --name www.openhsr.ch -v $(shell pwd):/src/ -p 4000:4000 -e "HOST=$(HOST)" -e "USER=$(USER)" -e "PASSWORD=$(PASSWORD)" -e "DIRECTORY=$(DIRECTORY)" openhsr/www.openhsr.ch /src/deploy.sh

updatedeps:
	docker run -i --rm --name www.openhsr.ch -v $(shell pwd):/src/ -p 4000:4000 openhsr/www.openhsr.ch bundle update
