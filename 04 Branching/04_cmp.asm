%include "io64.inc"

section .data
tempNum db 10110100b

section .text
global CMAIN
CMAIN:
    mov rbp, rsp; for correct debugging
    ;write your code here
    
    ;cmp updates all the flags by doing a subtraction operation on the operands
    ;The result will not be stored anywhere
    
    ;cmp <left operand>, <right operand>
    ;cmp reg, imm
    ;cmp reg, reg
    ;cmp mem, imm
    ;cmp reg, mem
    ;cmp mem, reg
    
    xor rax, rax
    ret