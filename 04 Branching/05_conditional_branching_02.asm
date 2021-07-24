%include "io64.inc"

section .text
global CMAIN
CMAIN:
    mov rbp, rsp; for correct debugging
    ;write your code here
    
    ;       Use these instructions along with cmp instruction
    ;ja/jnbe --> jump if left > right / jump if left is not <= right
    ;jae/jnb --> jump if left >= right / jump if left is not < right
    ;jb/jnae --> jump if left < right / jump if left is not >= right
    ;jbe/jna --> jump if left <= right / jump if left is not > right
    ;Note: These comparisions are only valid for unsigned numbers
    
    mov al, 10
    cmp al, 9
    ja  greater
    
greater:
    mov al, 100
    
    
    xor rax, rax
    ret