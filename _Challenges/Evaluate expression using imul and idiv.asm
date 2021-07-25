%include "io64.inc"

section .data
varA dq 2
varB dq 20
varC dq 10
result dq 0
divByZero db 0

section .text
global CMAIN
CMAIN:
    ;write your code here
    ;Expression: result = (varA * -100) / (varB - varC)
    
    mov rax, -100
    imul qword[varA]    ;(varA * -100) is in rdx:rax
    
    mov rbx, [varB]
    sub rbx, [varC]     ;(varB - varC) is in rbx
    jz  divisionByZero
    
    idiv rbx
    mov qword[result], rax
    PRINT_DEC 8, rax
    
    
    jmp end
    
divisionByZero:
    mov byte[divByZero], 1
    ret
    
end:
    ret