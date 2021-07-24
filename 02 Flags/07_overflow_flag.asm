%include "io64.inc"

section .text
global CMAIN
CMAIN:
    mov rbp, rsp; for correct debugging
    ;write your code here
    
    
    ;Overflow flag shows us what carry flag can't show, It can also be used for signed ints
    mov al, 100
    add al, 1   ;Overflow is not set because the value does not exceed 127
    add al, 27  ;Overflow is set because the value is 128 and al can only store form -128 to 127
    sub al, 1   ;Overflow is unset because the value is less than 128
    
    mov bl, -127;Overflow is not set
    sub bl, 1   ;Overflow is not set (Still in range)
    sub bl, 1   ;Overflow is set (Out of range)
    
    xor rax, rax
    ret