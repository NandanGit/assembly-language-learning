%include "io64.inc"

section .data
data dq 10

section .text
global CMAIN
CMAIN:
    ;ror --> Rotate right
    
    ;LSB is transfered to MSB and carry, Everything shifts right
    
    ;ror reg, imm
    mov al, 11001011b
    ror al, 2
    
    ;ror reg, cl
    mov cl, 3
    mov al, 11001011b
    ror al, cl
    
    ;ror mem, imm
    mov  byte[data], 11001011b
    ror byte[data], 2
    
    ;ror mem, cl
    mov byte[data], 11001011b
    mov cl, 3
    ror byte[data], cl
     
    
    jmp end
    
end:
    ret