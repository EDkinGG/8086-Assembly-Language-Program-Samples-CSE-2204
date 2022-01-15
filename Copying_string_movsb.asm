org 100h

lea si,str
lea di,st
mov cx,len

cld
repe movsb


ret

str db 'Rashed'
len equ ($-str)
st db len dup (?)





