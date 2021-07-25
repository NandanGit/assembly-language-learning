%include "io64.inc"

section .data
data dq 10

section .text
global CMAIN
CMAIN:
    ;rol --> Rotate left
    
    ;MSB is transfered to LSB and carry, Everything shifts left
    
    ;shr reg, imm
    mov al, 11001011b
    shr al, 2
    
    ;rol reg, cl
    mov cl, 3
    mov al, 11001011b
    rol al, cl
    
    ;rol mem, imm
    mov  byte[data], 11001011b
    rol byte[data], 2
    
    ;rol mem, cl
    mov byte[data], 11001011b
    mov cl, 3
    rol byte[data], cl
     
    
    jmp end
    
end:
    ret