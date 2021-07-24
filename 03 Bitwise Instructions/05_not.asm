%include "io64.inc"

section .data
temp db 10100101b

section .text
global CMAIN
CMAIN:
    mov rbp, rsp; for correct debugging
    ;write your code here
    
    ;not inverts all the bits
    
    mov al, 00110110b
    not al          ;not reg
    not byte[temp]  ;not mem
    
    xor rax, rax
    ret