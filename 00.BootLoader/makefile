all: clean BootLoader.bin MasterBootRecord.bin

build: BootLoader.bin MasterBootRecord.bin

BootLoader.bin: BootLoader.asm
	nasm -o BootLoader.bin BootLoader.asm
	
MasterBootRecord.bin: MasterBootRecord.asm
	nasm -o MasterBootRecord.bin MasterBootRecord.asm
clean:
	rm -f BootLoader.bin
	rm -f MasterBootRecord.bin
