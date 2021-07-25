%include "io64.inc"

section .data
value dq 25

section .text
global CMAIN
CMAIN:
    mov rbp, rsp; for correct debugging
    ;write your code here
    mov rax, [value]
    mov rbx, [rel value]
    
    jmp end
    
end:
    ret