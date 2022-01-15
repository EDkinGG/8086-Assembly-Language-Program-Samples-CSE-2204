
; fibonnacci 1 1 2 3 5 8 13.....

org 100h
mov cl,n
mov si,offset output
mov ax,01h
mov bx,01h
mov [si],ax
inc si
mov [si],bx
inc si

for:
    mov dx,00h
    add dx,ax
    add dx,bx
    mov [si],dx
    inc si
    mov ax,bx
    mov bx,dx

    loop for

ret

output db 10 dup (?)
n db 08d


