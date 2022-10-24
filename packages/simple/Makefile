TAG := simple:latest
VERSION := 1.0
DEBIAN_VERSION := debian:bullseye

image: container
	rm -f simple-test_$(VERSION).raw
	docker run --rm -v $(PWD):/out $(TAG)
	mv simple-test.raw simple-test_$(VERSION).raw

container:
	docker build -t $(TAG) --build-arg DEBIAN_VERSION=$(DEBIAN_VERSION) .

clean:
	rm -f *.raw
