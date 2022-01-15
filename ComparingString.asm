org 100h

mov ax,len1
mov bx,len2

mov cx,bx
cmp ax,bx
jbe x
mov cx,ax

x:

mov si,offset str
mov di,offset st

mov ans,'N'
cld
repe cmpsb
jne y
mov ans,'Y'

y:
ret

str db 'Rashed'
len1 equ ($-str)

st db 'Rashed'
len2 equ ($-st)

ans db ?



