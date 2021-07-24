%include "io64.inc"

section .data
temp dq 0

section .text
global CMAIN
CMAIN:
    mov rbp, rsp; for correct debugging
    ;; Adding
    ; add reg, imm
    mov rax, 50
    add rax, 100
    
    ; add reg, reg
    mov rbx, 20
    add rbx, rax
    
    ; add mem, imm
    mov qword[temp], 100
    add qword[temp], 120
    
    ; add reg, mem
    add rax, [temp]
    
    ; add mem, reg
    add [temp], rax
    
    
    ;; Subtracting
    ; sub reg, imm
    mov rax, 50
    sub rax, 100
    
    ; sub reg, reg
    mov rbx, 20
    sub rbx, rax
    
    ; sub mem, imm
    mov qword[temp], 100
    sub qword[temp], 120
    
    ; sub reg, mem
    sub rax, [temp]
    
    ; sub mem, reg
    sub [temp], rax
    
    
    xor rax, rax
    ret