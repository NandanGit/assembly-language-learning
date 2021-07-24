%include "io64.inc"

section .text
global CMAIN
CMAIN:
    mov rbp, rsp; for correct debugging
    ;write your code here
    
    ;       Use these instructions along with cmp instruction
    ;jg/jnle --> jump if left > right / jump if left is not <= right
    ;jge/jnl --> jump if left >= right / jump if left is not < right
    ;jl/jnge --> jump if left < right / jump if left is not >= right
    ;jle/jng --> jump if left <= right / jump if left is not > right
    ;Note: These comparisions are also valid for signed numbers
    
    mov al, 20
    cmp al, 15
    jg  greater
    
    ret
    
greater:
    mov rbx, 100
    
    
    xor rax, rax
    ret