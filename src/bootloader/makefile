NAME = bootloader
ASM = nasm
OUT = out
TAR = $(NAME).bin
SRC = $(NAME).asm

all: clean $(OUT) $(TAR)

clean:
	rm -rf $(OUT)

$(TAR): $(SRC)
	$(ASM) -o $(OUT)/$@ $^

$(OUT):
	mkdir -p $(OUT)


