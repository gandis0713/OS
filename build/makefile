all: clean build 

build: bootloader out

bootloader:
	make -C ../src/bootloader

out:
	# create out directory
	mkdir -p ../out

	# copy binary file
	cp ../src/bootloader/out/bootloader.bin  ../out/
	
	# create install image
	#	 flopy type
	dd if=../out/bootloader.bin of=../out/OS.flp
	
	#	 ISO
	mkisofs -no-emul-boot -boot-load-size 4 -o ../out/OS.iso -b bootloader.bin ../out/

clean:
	make -C ../src/bootloader clean
	rm -rf ../out/
