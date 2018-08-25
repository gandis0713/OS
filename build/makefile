REBUILD: CLEAN BUILD

BUILD: BOOTLOADER OUT

BOOTLOADER:
	make -C ../src/bootloader

OUT:
	../src/common/create_directory.sh ../out
	cp ../src/bootloader/out/bootloader.bin ../out/OS.img

CLEAN:
	make -C ../src/bootloader CLEAN
	rm -rf ../out/
