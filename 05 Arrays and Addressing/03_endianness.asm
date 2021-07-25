%include "io64.inc"

section .data
value dd 0x12345678

section .text
global CMAIN
CMAIN:
    mov rbp, rsp; for correct debugging
    ;write your code here
    
    ;Data is stored in Little endian order
    mov al, [value+0]   ;First byte
    mov bl, [value+1]   ;Second byte
    mov cl, [value+2]   ;Third byte
    mov dl, [value+3]   ;Fourth byte
    
    jmp end
    
end:
    ret