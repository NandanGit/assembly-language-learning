%include "io64.inc"

section .data
tempNum db 10110100b

section .text
global CMAIN
CMAIN:
    mov rbp, rsp; for correct debugging
    ;write your code here
    
    ;or <destination>, <source>
    mov rax, 10010011b
    or  rax, 11001001b  ;reg, imm
    
    mov rbx, 10001010b
    or  rbx, rax        ;reg, reg
    
    or  byte[tempNum], 11000010b    ;mem, imm
    
    or  rax, [tempNum]  ;reg, mem
    
    mov rax, 0
    or  qword[tempNum], rax  ;mem, reg
    
    
    xor rax, rax
    ret