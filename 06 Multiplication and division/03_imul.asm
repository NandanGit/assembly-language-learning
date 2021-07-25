%include "io64.inc"

section .data
data dq 10

section .text
global CMAIN
CMAIN:
    mov rbp, rsp; for correct debugging
    ;write your code here
    
    ;Used for signed multiplication
    
    ;imul reg
    ;imul mem
    mov rax, -10
    mov rbx, 3
    imul rbx
    
    
    ;imul <dest>, <source>   (product of source and dest is stored in dest)
    ;imul reg, imm
    mov rax, 10
    imul rax, -5
    
    ;imul reg, reg
    mov rax, 46
    mov rbx, 65
    imul rax, rbx
    
    ;imul reg, mem
    mov qword[data], 100
    mov rax, 27
    imul rax, [data]
    
    ;Note: in two operand format, there is a chance of overflow
    
    ;imul <dest>, <operand1>, <operand2> (product of operand1 and operand2 is stored in  dest)
    
    ;imul reg, reg, imm
    mov rax, 25
    imul rbx, rax, 5
    
    ;imul reg, mem, imm
    mov qword[data], 12
    imul rax, [data], 3
    
    jmp end
    
end:
    ret