%include "io64.inc"

section .data
data dq 10

section .text
global CMAIN
CMAIN:
    ;rcl --> Rotate Carry Left
    
    ;MSB is transfered to carry, carry is transferred to LSB and Everything shifts left
    
    ;clc --> clear carry
    ;stc --> set carry
    
    clc
    ;rcl reg, imm
    mov al, 11001011b
    rcl al, 2
    
    ;rcl reg, cl
    mov cl, 3
    mov al, 11001011b
    rcl al, cl
    
    ;rcl mem, imm
    mov  byte[data], 11001011b
    rcl byte[data], 2
    
    ;rcl mem, cl
    mov byte[data], 11001011b
    mov cl, 3
    rcl byte[data], cl
    
    
    jmp end
    
end:
    ret