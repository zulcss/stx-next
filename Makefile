all: clean build
clean:
	make -C core clean
	make -C os clean

build:
	make -C core build
	make -C os build
