%include "io64.inc"

section .data
data dq 10

section .text
global CMAIN
CMAIN:
    ;rcr --> Rotate Carry Right
    
    ;LSB is transfered to carry, carry is transferred to MSB and Everything shifts right
    
    ;clc --> clear carry
    ;stc --> set carry
    
    clc
    ;rcr reg, imm
    mov al, 11001011b
    rcr al, 2
    
    ;rcr reg, cl
    mov cl, 3
    mov al, 11001011b
    rcr al, cl
    
    ;rcr mem, imm
    mov  byte[data], 11001011b
    rcr byte[data], 2
    
    ;rcr mem, cl
    mov byte[data], 11001011b
    mov cl, 3
    rcr byte[data], cl
    
    
    jmp end
    
end:
    ret