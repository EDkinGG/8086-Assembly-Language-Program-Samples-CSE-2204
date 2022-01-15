org 100h
.data
str db 'aassgHHGGKK'
len equ ($-str)

.code

lea si,str
mov cx,len 

outer:
    mov bl,[si]
    jmp ChkSmall
    
    mid:
    jmp ChkCap
    
    back_to_outer:
    mov [si],bl
    inc si
    
        loop outer


ret


ChkSmall:
cmp bl,'a'
jb xx
cmp bl,'z'
jg xx

yy:
sub bl,'a'
add bl,'A'
jmp back_to_outer 
xx:
jmp mid


ChkCap:
sub bl,'A'
add bl,'a'
jmp back_to_outer 