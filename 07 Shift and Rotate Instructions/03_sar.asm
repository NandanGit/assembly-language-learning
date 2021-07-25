%include "io64.inc"

section .data
data db 10

section .text
global CMAIN
CMAIN:
    mov rbp, rsp; for correct debugging
    ;write your code here
    ;Arithmatic Shift Right
    
    ;sar (MSB is replaced with itself, others move right, LSB goes to carry)
    
    ;sar reg, imm
    mov al, 11001011b
    sar al, 2
    
    ;sar reg, cl
    mov cl, 3
    mov al, 00111011b
    sar al, cl
    
    ;sar mem, imm
    mov  byte[data], 11001011b
    sar byte[data], 2
    
    ;sar mem, cl
    mov byte[data], 01001011b
    mov cl, 3
    sar byte[data], cl
    
    jmp end
    
end:
    ret