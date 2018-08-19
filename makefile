all: clean BootLoader Disk.img Hexdump

build: BootLoader Disk.img Hexdump

BootLoader:
	make -C 01.BootLoader

Disk.img:
	cp 01.BootLoader/BootLoader.bin Disk.img

Hexdump:
	hexdump -C Disk.img

clean:
	make -C 01.BootLoader clean
	rm -f Disk.img
