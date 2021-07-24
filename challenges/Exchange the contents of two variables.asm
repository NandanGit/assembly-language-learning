;       The Challenge is to
;       -> Create two variables
;       -> Assign values to them
;       -> Exchange the contents of them


%include "io64.inc"

section .data
varA dq 0     ; Step 1
varB dq 0     ; Step 1

section .text
global CMAIN
CMAIN:
    mov rbp, rsp; for correct debugging
    
    mov qword[varA], 100    ; Step 2
    mov qword[varB], 200    ; Step 2
    
    mov rax, [varA]         ; Step 3
    xchg rax, [varB]        ; Step 3
    xchg [varA], rax        ; Step 3
    
    xor rax, rax
    ret