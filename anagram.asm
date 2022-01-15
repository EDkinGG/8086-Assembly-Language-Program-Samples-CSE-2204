org 100h

.data
str db 'aabbcc'
n equ ($-str)

st db 'ababcd'
m equ ($-st)

a db 26 dup(0)
b db 26 dup(0)

ans db ?

.code

mov al,n
mov bl,m
mov cl,n

cmp al,bl
jne not_anagram

lea si,str
lea di,a
call freq

mov cl,n
lea si,st
lea di,b
call freq
    
lea si,a
lea di,b
mov cl,26d    
check:
    mov bl,[si]
    mov bh,[di]
    cmp bl,bh
    jne not_anagram
    inc si
    inc di
    loop check
    




anagram:
mov ans,'Y'
jmp z

not_anagram:
mov ans,'N'

z:
ret



freq proc near
    outer:
    mov bl,[si]
    sub bl,'a'
    inc [di+bx]
    inc si
    loop outer
    ret
    freq endp

