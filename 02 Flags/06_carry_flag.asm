%include "io64.inc"

section .text
global CMAIN
CMAIN:
    mov rbp, rsp; for correct debugging
    ;write your code here
    
    
    mov al, 10
    add al, 100 ;Since al can store upto 255, carry flag is not set
    add al, 150 ;Carry flag is set as the result exceeds 255
    
    mov bl, 10
    sub bl, 20  ;Since carry flag only works for unsigned ints, carry is set if the value is negative
    
    xor rax, rax
    ret