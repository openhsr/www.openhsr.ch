.PHONY: serve build default build-image deploy

default: buildimage serve

buildimage:
	docker build -t openhsr/www.openhsr.ch docker/

build:
	docker run -i -t --rm --name www.openhsr.ch -u jekyll -v $(shell pwd):/src/ -p 4000:4000 openhsr/www.openhsr.ch jekyll build

serve:
	docker run -i -t --rm --name www.openhsr.ch -u jekyll -v $(shell pwd):/src/ -p 4000:4000 openhsr/www.openhsr.ch jekyll serve

deploy:
	docker run --rm --name www.openhsr.ch -u jekyll -v $(shell pwd):/src/ -p 4000:4000 -e "HOST=$(HOST)" -e "USER=$(USER)" -e "PASSWORD=$(PASSWORD)" -e "DIRECTORY=$(DIRECTORY)" openhsr/www.openhsr.ch /src/deploy.sh
