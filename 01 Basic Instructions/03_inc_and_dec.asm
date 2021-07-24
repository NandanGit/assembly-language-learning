%include "io64.inc"

section .data
counter db 0

section .text
global CMAIN
CMAIN:
    mov rbp, rsp; for correct debugging
    
    ;Incrementing registers
    mov ax, 100
    inc ax
    
    mov bx, -24
    inc bx
    
    ;Decrimenting registers
    mov ax, 10
    dec ax
    
    mov bx, -20
    dec bx
    
    ;Incrementing variables
    inc byte[counter]
    inc byte[counter]
    
    ;Decrementing variables
    dec byte[counter]
    dec byte[counter]
    dec byte[counter]
    
    
    
    xor rax, rax
    ret