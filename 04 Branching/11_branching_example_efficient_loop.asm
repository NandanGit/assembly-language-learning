%include "io64.inc"

section .data
x db 0
y db 5

section .text
global CMAIN
CMAIN:
    mov rbp, rsp; for correct debugging
    ;write your code here
    
    ;As the number of iterations increase, the time taken to retrieve data from the
    ;memory increases.
    ;To avoid such problem, we have to read the data once, work with it, update the
    ;new data in the memory at the end
    
    ;   Task
    ;while x < y
    ;   x += 1
    ;endwhile
    
    mov al, [x] ;Read values before the loop
    mov bl, [y] ;Read values before the loop
    
    jmp while
    
while:
    cmp al, bl
    jge  endwhile
    inc al
    jmp while
    
endwhile:
    mov byte[x], al ;Update the memory after the loop
    
    ret