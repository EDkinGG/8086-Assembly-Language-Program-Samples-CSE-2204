org 100h

.data

str db 'abdkghkdjsdhadbckjhkj'
len equ ($-str)

st db 'abc'
lenm equ ($-st)

ans db 'N'


.code

lea si,str
lea di,st

mov cx,len
sub cx,lenm
inc cx

outer:
    push cx
    push si
    
    mov cx,lenm
    lea di,st
    inner:
        mov bl,[di]
        mov bh,[si]
        cmp bl,bh
        jne back_to_outer
        
        back_to_inner:
            inc di
            inc si
            loop inner
        
    jmp found
    back_to_outer:
        pop si
        pop cx
        inc si
        
        loop outer

z:
ret 


found:
pop si
pop cx
mov ans,'Y'
ret