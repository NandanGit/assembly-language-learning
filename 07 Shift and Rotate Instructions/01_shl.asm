%include "io64.inc"

section .data
data dq 0

section .text
global CMAIN
CMAIN:
    mov rbp, rsp; for correct debugging
    ;write your code here
    
    ;shl stands for shift left
    
    ;shl <target>, <shift>
    ;shl reg, imm
    mov al, 10110101b
    shl al, 2
    
    ;shl reg, cl    (cl is a register)
    mov al, 10110101b
    mov cl, 8
    shl al, cl
    
    ;shl mem, imm
    mov byte[data], 10001100b
    shl byte[data], 4
    
    ;shl mem, cl    (cl is a register)
    
    jmp end
    
end:
    ret