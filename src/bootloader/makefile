all: clean build

build: initialize bootloader

initialize:
	mkdir -p out

bootloader:
	nasm -o out/bootloader.bin bootloader.asm

clean:
	rm -rf out/
