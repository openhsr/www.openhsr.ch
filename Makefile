.PHONY: serve build default build-image

default: buildimage serve

buildimage:
	docker build -t altcomphsr/altcomphsr.vshsr.ch docker/

build:
	docker run --rm --name altcomphsr.vshsr.ch -u jekyll -v $(shell pwd):/src/ -p 4000:4000 altcomphsr/altcomphsr.vshsr.ch jekyll build

serve:
	docker run --rm --name altcomphsr.vshsr.ch -u jekyll -v $(shell pwd):/src/ -p 4000:4000 altcomphsr/altcomphsr.vshsr.ch jekyll serve
