org 100h

mov al,a
mov bl,b


calc:
     div bl
     cmp ah,0h
     je foundGCD
     mov al,bl
     mov bl,ah
     mov ah,0h
     jmp calc



foundGCD:
mov gcd,bl

; gcd (a,b) = gcd ( b , a % b) 


z:
ret

a db 12d
b db 05d
gcd db 00h
