%include "io64.inc"

section .data
label3Address dq 0

section .text
global CMAIN
CMAIN:
    mov rbp, rsp; for correct debugging
    ;write your code here
    
    mov al, 10
    add al, 20
    jmp label1  ;jmp label
    add al, 10  ;This will not execute because of the jmp instruction in the previous line
    
    
    
label1:
    add al, 5   ;This will execute after the jmp instruction
    
    mov rbx, label2 ;Store the label2 address in rax for future use
    jmp rbx
    sub al, 10  ;Will not be executed


label2:
    sub al, 20  ;Will be executed
    
    mov qword[label3Address], label3
    jmp qword[label3Address]
    add al,3    ;Will not be executed
        
        
        
label3:
    add al, 2   ;Will be executed

    ;Rules
    ;   Only 64-bit registers should be used to store label address
    ;   Only qword size variables should be used to store label address
    
    xor rax, rax
    ret