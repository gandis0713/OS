REBUILD: CLEAN BUILD

BUILD: INITIALIZE BOOTLOADER

INITIALIZE:
	mkdir -p out

BOOTLOADER:
	nasm -o out/bootloader.bin bootloader.asm

CLEAN:
	rm -rf out/
