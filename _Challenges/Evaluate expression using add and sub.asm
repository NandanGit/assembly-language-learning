%include "io64.inc"

section .data
varA dq 10
varB dq 20
varC dq 30
varD dq 40
result dq 0


section .text
global CMAIN
CMAIN:
    mov rbp, rsp; for correct debugging
    ;Evaluate -varA+varB-(varC-varD)
    mov rax, [varA]
    neg rax
    add rax, [varB]
    mov [result], rax
    mov rax, [varC]
    sub rax, [varD]
    sub [result], rax
    
    
    
    xor rax, rax
    ret