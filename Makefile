all: container
container:
	sudo mkosi -C core/container clean
	sudo mkosi -C core/container build
