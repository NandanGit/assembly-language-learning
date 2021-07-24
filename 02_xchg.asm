%include "io64.inc"

section .data
temp dq 100

section .text
global CMAIN
CMAIN:
    mov rbp, rsp; for correct debugging
    ;write your code here

    ; xchg reg, reg
    mov rax, 10
    mov rbx, 20
    xchg rax, rbx
    
    ; xchg reg, mem
    mov ax, 200
    xchg ax,[temp]
    
    ; xchg mem, reg
    mov bx, 500
    xchg [temp], bx
    
;   # Rules
;   
;   ## We cannot exchange a register with a number
;   Example: xchg rax, 10 is not allowed
;   ## Both the operands must be of same size
;   Example: xchg rax, dword[temp] is not allowed
;   
    
    mov rax, 2021
    xor rax, rax
    ret