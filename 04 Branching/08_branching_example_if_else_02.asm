%include "io64.inc"

section .data
x db 60
y db 50
z db 10

section .text
global CMAIN
CMAIN:
    mov rbp, rsp; for correct debugging
    ;write your code here
    
    ;   Task
    ;if (x > y and y > z)
    ;   x = 100
    ;endif
    mov al, [x]
    mov bl, [y]
    mov cl, [z]
    jmp if
    
if:
    cmp al, bl
    jng  endif
    cmp bl, cl
    jng endif
    mov byte[x], 100
    
endif:
    ret