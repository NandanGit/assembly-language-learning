%include "io64.inc"

section .data
data dq 10

section .text
global CMAIN
CMAIN:
    mov rbp, rsp; for correct debugging
    ;write your code here
    ;!!!!!!!!!THIS FILE IS NOT 100% CORRECT!!!!!!!!!!!!
    
    ;idiv supports signed division
    
    ;div reg
    ;div mem
    
    ;      divisor   upperhalf   lowerhalf     reminder   quotient
    ;div    8-bit        ah         al   -->     ah          al
    mov al, -6
    cbw
    mov bl, 3
    idiv bl
    PRINT_DEC 2, al
    NEWLINE
    ;div   16-bit        dx         ax   -->     dx          ax
    mov dx, 0x40
    cwd
    mov ax, 0
    mov bx,0x100
    idiv bx
    PRINT_DEC 4, ax
    NEWLINE
    ;div   32-bit       edx        eax   -->    edx         eax
    ;mov edx, -1     ;sign extension  
    mov eax, -24
    cdq ;convert dword(4 bytes) to qword(8 bytes) {sign extension}| cbw, cwd, cdq, cqo are similar
    mov dword[data], 2
    idiv dword[data]
    PRINT_DEC 4, eax
    ;div   64-bit       rdx        rax   -->    rdx         rax
    mov rdx,0
    mov rax, 1000
    mov rbx, 5
    idiv rbx
    
    jmp end
    
end:
    ret