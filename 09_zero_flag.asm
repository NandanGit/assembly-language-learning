%include "io64.inc"

section .text
global CMAIN
CMAIN:
    mov rbp, rsp; for correct debugging
    ;write your code here
    mov rax, 100
    sub rax, 50 ;Zero Flag is not set since the result is non zero
    sub rax, 50 ;Zero Flag set because the result is zero
    sub rax, 50 ;Zero Flag is unset since the result is non zero
    
    xor rax, rax
    ret