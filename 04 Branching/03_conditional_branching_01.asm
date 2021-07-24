%include "io64.inc"

section .text
global CMAIN
CMAIN:
    mov rbp, rsp; for correct debugging
    ;write your code here
    
    ;jz  --> jump if zero flag is set
    mov rax, 100
    sub rax, 100    ;ZF is set to 0
    jz  isZero
    

isZero:
    ;jnz --> jump if zero flag is cleared
    mov rax, 100
    sub rax, 100
    jnz isNotZero
    
    ;jc  --> jump if carry flag is set
    ;jnc --> jump if carry flag is cleared
    ;jo  --> jump if overflow flag is set
    ;jno --> jump if overflow flag is cleared
    ;js  --> jump if sign flag is set
    ;jns --> jump if sign flag is cleared
    
    
    xor rax, rax
    ret
    
isNotZero:
    ret