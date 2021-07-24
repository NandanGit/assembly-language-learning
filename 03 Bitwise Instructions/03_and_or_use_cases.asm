%include "io64.inc"

section .text
global CMAIN
CMAIN:
    mov rbp, rsp; for correct debugging
    ;write your code here
    
    ;Masking is a technique use to erase some specific bits of a sequence,
    ;to do that we need to use a masking sequence of same length with 0s at the
    ;positions that needed to be erased and 1s in the remaining positions
    mov al, 10110110b
    and al, 11101100b   ;Erasing 0, 1, 4 bits (from LSB)
    and al, 11110000b   ;Erasing the first 4 bits (from LSB)
    
    ;Instead of erasing specific positions, if we want to set them as 1,
    ;we can use or instruction
    mov bl, 10010100b
    or  bl, 00100001b   ;Changing 0, 5 positions to 1 (from LSB)
    or  bl, 11110000b   ;Changing the last 4 bits to 1 (from LSB)
    
    
    
    xor rax, rax
    ret