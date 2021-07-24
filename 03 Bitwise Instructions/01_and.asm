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
    and rax, 11001001b  ;reg, imm
    
    mov rbx, 10001010b
    and rbx, rax        ;reg, reg
    
    and byte[tempNum], 11000010b    ;mem, imm
    
    and rax, [tempNum]  ;reg, mem
    
    mov rax, 0
    and qword[tempNum], rax  ;mem, reg
    
    
    xor rax, rax
    ret