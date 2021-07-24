%include "io64.inc"

section .data
tempNum db 10110100b

section .text
global CMAIN
CMAIN:
    mov rbp, rsp; for correct debugging
    ;write your code here
    
    ;and <destination>, <source>
    mov rax, 10010011b
    xor rax, 11001001b  ;reg, imm
    
    mov rbx, 10001010b
    xor rbx, rax        ;reg, reg
    
    xor byte[tempNum], 11000010b    ;mem, imm
    
    xor rax, [tempNum]  ;reg, mem
    
    mov rax, 0
    xor qword[tempNum], rax  ;mem, reg
    
    
    xor rax, rax
    ret