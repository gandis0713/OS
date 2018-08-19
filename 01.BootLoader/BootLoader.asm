[ORG 0x00]
[BITS 16]

SECTION .text
;To initialize the segment register

jmp 0x07C0:START ;Set 'CS' segment register to 0x07C0 and move to START label

START:
    mov ax, cs
    mov ds, ax
    mov ax, 0xB800
    mov es, ax

    mov si, 0

SCREEN_CLEAR_LOOP:

    mov byte [es: si], 0
    mov byte [es: si + 1 ], 0x0A

    add si, 2

    cmp si, 80 * 25 * 2

    jl SCREEN_CLEAR_LOOP

    mov si, 0
    mov di, 0

MESSAGE_LOOP:
    mov cl, byte [ si + MESSAGE ]

    cmp cl, 0
    je MESSAGE_END

    mov byte[es : di], cl

    add si, 1
    add di, 2

    jmp MESSAGE_LOOP

MESSAGE_END:
    jmp $

MESSAGE:
    db "gandis's OS is started", 0

times 510 - ( $ - $$ ) db 0x00
db 0x55
db 0xAA
