org 100h


lea si,input
mov cx,len
mov ah,00h

max:
    cmp [si],00h
    je x
    cmp [si],ah
    jbe x
    mov ah,[si]
    x:
    inc si 
    loop max


lea si,input
mov cx,len
mov al,0Ah
min:
    cmp [si],00h
    je y
    cmp [si],al
    jge y
    mov al,[si]

    y:
    inc si
    loop min



mov maxn,ah
mov minn,al

ret

input db 03h,08h,00h,06h,00h,07h,03h
len equ ($-input)
maxn db 00h
minn db 00h
