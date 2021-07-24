%include "io64.inc"

section .text
global CMAIN
CMAIN:
    mov rbp, rsp; for correct debugging
    ;write your code here
    mov rax, 10
    add rax, 20     ;Sign flag is not set because sign is +ve
    sub rax, 31    ;Sign flag is set because sign is -ve
    
    xor rax, rax
    ret