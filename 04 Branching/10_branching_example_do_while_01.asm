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
    ;do
    ;   x += 1
    ;while x <= y
    
    jmp dowhile
    
dowhile:
    ;do-while block
    inc byte[x]
    
    ;Checking
    mov al, [x]
    mov bl, [y]
    cmp al, bl
    jg  endDowhile
    jmp dowhile
    
endDowhile:
    ret
    