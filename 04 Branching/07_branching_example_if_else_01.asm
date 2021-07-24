%include "io64.inc"

section .data
x dq 10
y dq 10

section .text
global CMAIN
CMAIN:
    mov rbp, rsp; for correct debugging
    
    ;   Task
    ;if (x > y)
    ;   x = 100
    ;else
    ;   y = 200
    
    
if:
    mov rax, [x]
    cmp rax, [y]
    jng else
    
    mov qword[x], 100
    
    ret
else:
    mov qword[y], 200
    
    ret
    
    
    