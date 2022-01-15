org 100h

lea si,str
mov cx,len

for:
    cmp [si],'a'
    je x
    cmp [si],'e'
    je x 
    cmp [si],'i'
    je x 
    cmp [si],'o'
    je x 
    cmp [si],'u'
    je x 
    cmp [si],'A'
    je x
    cmp [si],'E'
    je x 
    cmp [si],'I'
    je x 
    cmp [si],'O'
    je x 
    cmp [si],'U'
    je x  
    jmp y
    x:
    inc vowel
    y:
    inc si
    loop for


ret

str db 'Osman Ghani'
len equ ($-str)

vowel db dup (0)



