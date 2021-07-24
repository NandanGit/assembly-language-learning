%include "io64.inc"

section .data
temp dq 18

section .text
global CMAIN
CMAIN:
    mov rbp, rsp; for correct debugging
    ;Negating register contents
    mov rax, 0
    neg rax
    
    mov rax, 24
    neg rax
    
    ;Negating a value in memory
    neg qword[temp]

    xor rax, rax
    ret