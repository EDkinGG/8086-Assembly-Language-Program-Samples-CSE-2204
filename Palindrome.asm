org 100h


lea si,str
mov di,last
dec di
mov al,len
mov bl,02h;
div bl
mov cl,al

mov ans,'N'

for:
    mov bl,[si]
    mov dl,[di]
    cmp bl,dl
    jne z
    inc si
    dec di 
    loop for
    
mov ans,'Y'    
z:
ret 

str db 'RasXGsaR'
last equ $
len equ ($-str)
ans db ?