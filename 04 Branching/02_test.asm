%include "io64.inc"

section .data
tempNum db 10110100b

section .text
global CMAIN
CMAIN:
    mov rbp, rsp; for correct debugging
    ;write your code here
    
    ;test instruction is used to perform and operation between the two operands
    ;and set the flags accordingly
    
    ;The only difference between test and and is that and instruction updates the
    ;value in the first operand after the calculation, where as the test instruction
    ;simply updates the flags 
    
    ;test <operand1>, <operand2>
    mov rax, 10010011b
    test rax, 11001001b  ;reg, imm
    
    mov rbx, 10001010b
    test rbx, rax        ;reg, reg
    
    test byte[tempNum], 11000010b    ;mem, imm
    
    test rax, [tempNum]  ;reg, mem
    
    mov rax, 0
    test qword[tempNum], rax  ;mem, reg
    
    
    xor rax, rax
    ret