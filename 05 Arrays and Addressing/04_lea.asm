%include "io64.inc"

section .data
value dq 0

section .text
global CMAIN
CMAIN:
    mov rbp, rsp; for correct debugging
    ;write your code here
    
    ;lea instruction reads the memory location of a variable, and stores it in a register
    
    ;lea reg, [variable]
    mov rax, [value]
    lea rbx, [value]
    mov rcx, [rbx]
    
    lea rdx, [rax+10]   ;To do arithemetic operations
    
    
    jmp end
    
end:
    ret