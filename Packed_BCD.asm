org 100h

lea si,num1
mov al,[si]
inc si
mov bl,[si]
 
call packed_bcd  
  
mov num2,al
jmp z

packed_bcd proc near
    pushf
    
    and al,0Fh
    and bl,0Fh
    
    ror al,04h
    or al,bl
    
    
    popf
    ret
    packed_bcd endp
z:
ret

num1 db '59'
num2 db  00h