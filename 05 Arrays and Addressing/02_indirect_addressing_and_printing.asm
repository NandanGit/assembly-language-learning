%include "io64.inc"

section .data
arr dq 4,8,3,6,2,7
arrSize equ $-arr
arrElemSize equ 8
arrElemCount equ arrSize/arrElemSize

section .text
global CMAIN
CMAIN:
    mov rbp, rsp; for correct debugging
    ;write your code here
    
    ;   base + index * sizeOfEachElement(in bites) + displacement
    mov rsi, arr
    mov rax, [rsi+0*4]   ;Move the first item of arr into eax
    mov rbx, [rsi+3*4]   ;Move the fourth item of arr into ebx
    
    ;To print all the elements in the arr
    mov rsi, arr            ;To store arr address
    mov rdx, arrElemCount   ;To store number of elements in the arr
    xor rcx, rcx            ;To store offset (starts from 0)
    
    
    jmp printArr
    
printArr:
    mov rax, [rsi+rcx*arrElemSize]  ;Current element
    PRINT_DEC arrElemSize, rax
    NEWLINE
    inc rcx
    
    cmp rcx, rdx
    jl  printArr
    
    ret