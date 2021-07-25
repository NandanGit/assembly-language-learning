%include "io64.inc"

section .data
arr db 1,2,3,4,5,6

section .text
global CMAIN
CMAIN:
    mov rbp, rsp; for correct debugging
    ;write your code here
    
    mov al, 1       ;Immediate addressing
    mov bl, [arr+3] ;Direct addressing (element at index 3) [arr+(ind*eactElemSize)]
    
    
    jmp end
    
end:
    ret