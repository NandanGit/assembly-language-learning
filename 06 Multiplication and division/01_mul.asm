%include "io64.inc"

section .data
data dq 10

section .text
global CMAIN
CMAIN:
    mov rbp, rsp; for correct debugging
    ;write your code here
    
    ;mul reg
    ;mul mem
    
    ;    multiplier     multiplicand   (upperhalf , lowerhalf of the product)
    ;mul    8-bit            al     -->     ah          al
    mov al, 25
    mov bl, 12
    mul bl
    ;mul   16-bit            ax     -->     dx          ax
    mov ax, 275
    mov bx, 100
    mul bx
    ;mul   32-bit           eax     -->    edx         eax
    mov eax, 42949672
    mov dword[data], 4294967
    mul dword[data]
    ;mul   64-bit           rax     -->    rdx         rax
    mov rax, 55687675
    mov rbx, 456875
    mul rbx
    
    jmp end
    
end:
    ret