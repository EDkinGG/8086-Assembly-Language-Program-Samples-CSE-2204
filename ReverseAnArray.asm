org 100h

lea si,array
mov di,last
dec di

mov al,len
mov bl,02h
div bl
mov cl,al


for:
    mov dl,[si]
    mov dh,[di]
    mov [si],dh
    mov [di],dl
    
    inc si
    dec di

    loop for


ret

array db 01h,05h,06h,08h,09h
last equ $
len equ ($-array)