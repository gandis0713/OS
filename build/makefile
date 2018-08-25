REBUILD: CLEAN BUILD

BUILD: BOOTLOADER OUT

BOOTLOADER:
	make -C ../src/bootloader

OUT:
	# create out directory
	../src/common/create_directory.sh ../out
	# copy binary file
	cp ../src/bootloader/out/bootloader.bin  ../out/
	# create install image
	#	 flopy type 
	dd if=../out/bootloader.bin of=../out/OS.flp
	#	 ISO
	mkisofs -no-emul-boot -boot-load-size 4 -o ../out/OS.iso -b bootloader.bin ../out/

CLEAN:
	make -C ../src/bootloader CLEAN
	rm -rf ../out/
