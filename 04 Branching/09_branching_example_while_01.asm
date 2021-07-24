%include "io64.inc"

section .data
x db 0
y db 5

section .text
global CMAIN
CMAIN:
    mov rbp, rsp; for correct debugging
    ;write your code here
    
    ;   Task
    ;while x < y
    ;   x += 1
    ;endwhile
    
    jmp while
    
while:
    mov al, [x]
    mov bl, [y]

    cmp al, bl
    jge endwhile
    inc byte[x]
    jmp while
    
endwhile:
    ret
    