REBUILD: CLEAN BUILD

BUILD: INITIALIZE BOOTLOADER

INITIALIZE:
	../common/./create_directory.sh out

BOOTLOADER:
	nasm -o out/bootloader.bin bootloader.asm

CLEAN:
	rm -rf out/
