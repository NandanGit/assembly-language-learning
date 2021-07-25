%include "io64.inc"

section .data
data db 10

section .text
global CMAIN
CMAIN:
    mov rbp, rsp; for correct debugging
    ;write your code here
    ;Logical Shift Right
    
    ;shr (MSB is replaced with 0, others move right, LSB goes to carry)
    
    ;shr reg, imm
    mov al, 11001011b
    shr al, 2
    
    ;shr reg, cl
    mov cl, 3
    mov al, 11001011b
    shr al, cl
    
    ;shr mem, imm
    mov  byte[data], 11001011b
    shr byte[data], 2
    
    ;shr mem, cl
    mov byte[data], 11001011b
    mov cl, 3
    shr byte[data], cl
    
    jmp end
    
end:
    ret