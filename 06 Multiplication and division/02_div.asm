%include "io64.inc"

section .data
data dq 10

section .text
global CMAIN
CMAIN:
    mov rbp, rsp; for correct debugging
    ;write your code here
    
    ;div reg
    ;div mem
    
    ;      divisor   upperhalf   lowerhalf     reminder   quotient
    ;div    8-bit        ah         al   -->     ah          al
    mov ax, 25
    mov bl, 12
    div bl
    ;div   16-bit        dx         ax   -->     dx          ax
    mov dx, 0x40
    mov ax, 0
    mov bx,0x100
    div bx
    ;div   32-bit       edx        eax   -->    edx         eax
    mov edx,0
    mov eax, 203
    mov dword[data], 5
    div dword[data]
    ;div   64-bit       rdx        rax   -->    rdx         rax
    mov rdx,0
    mov rax, 1000
    mov rbx, 5
    div rbx
    
    jmp end
    
end:
    ret