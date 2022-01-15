org 100h

lea si,array1
lea di,array2
mov cx,len

add si,cx
dec si

for:
    mov dl,[si]
    mov [di],dl
    inc di
    dec si

    loop for 

ret

array1 db 01h,02h,03h
len equ ($-array1)

array2 db len dup(0)