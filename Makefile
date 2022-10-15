all: clean build
clean:
	make -C core clean

build:
	make -C core build
