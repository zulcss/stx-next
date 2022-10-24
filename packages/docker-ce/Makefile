TAG := docker-ce:latest
VERSION := 20.10.19+dfsg1-1
DEBIAN_VERSION := debian:bullseye

image: container
	rm -f docker-ce_$(VERSION).raw
	docker run --rm -v $(PWD):/out $(TAG)
	mv docker-ce.raw docker-ce_$(VERSION).raw

container:
	docker build -t $(TAG) --build-arg DEBIAN_VERSION=$(DEBIAN_VERSION) .

clean:
	rm -f *.raw
