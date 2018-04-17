.model large
.386
.stack 100h
.data

;       >>>>>Password<<<<<

CTF1 db "ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ$"
CTF2 db "Û     ÛÛ    ÛÛ ÛÛÛÛÛÛ     Û ÛÛÛÛ Û ÛÛÛÛÛÛÛ    ÛÛ       ÛÛÛÛÛÛÛÛÛÛÛÛÛ      Û$"  
CTF3 db "Û ÛÛÛÛÛ ÛÛÛÛ Û ÛÛÛÛÛÛ ÛÛÛÛÛ ÛÛÛÛ Û ÛÛÛÛÛÛ ÛÛÛÛ ÛÛÛÛ ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ ÛÛÛÛÛÛ$"
CTF4 db "Û ÛÛÛÛÛ ÛÛÛÛ Û ÛÛÛÛÛÛ ÛÛÛÛÛ ÛÛÛÛ Û ÛÛÛÛÛÛ ÛÛÛÛ ÛÛÛÛ ÛÛÛÛÛ   ÛÛ Û  ÛÛ ÛÛÛÛÛÛ$"
CTF5 db "Û ÛÛÛÛÛ      Û ÛÛÛÛÛÛ ÛÛÛÛÛ ÛÛÛÛ Û ÛÛÛÛÛÛ      ÛÛÛÛ ÛÛÛÛ ÛÛÛ Û  ÛÛ Û    ÛÛÛ$"
CTF6 db "Û ÛÛÛÛÛ ÛÛÛÛ Û ÛÛÛÛÛÛ ÛÛÛÛÛ ÛÛÛÛ Û ÛÛÛÛÛÛ ÛÛÛÛ ÛÛÛÛ ÛÛÛÛ ÛÛÛ Û ÛÛÛÛÛ ÛÛÛÛÛÛ$"
CTF7 db "Û     Û ÛÛÛÛ Û      Û     Û      Û      Û ÛÛÛÛ ÛÛÛÛ ÛÛÛÛÛ   ÛÛ ÛÛÛÛÛ ÛÛÛÛÛÛ$"
CTF8 db "ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ$"

LOG1 db " ________________________________________$"

Aaaa DB "ENTER PASSWORD:$"
Bbb DB "!!!!!!WRONG PASSWORD!!!!!!$"


;       >>>>>Main Menu<<<<<<<

E80 DB 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 10, 13, "$"
EE30 DB 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 10, 13, "$"
EE2 DB 219, 219, 10, 13, "$"
EE4 DB 219, 219, 219, 219, 10, 13, "$"
E12 DB 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 10, 13, "$"
EE26 DB 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 10, 13, "$"
EE6 DB 219, 219, 219, 219,219, 219, 10, 13, "$"
EE10 DB 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 10, 13, "$"
EE8 DB 219, 219, 219,219,219, 219,219, 219, 10, 13, "$"
E16 DB 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 10, 13, "$"
EE14 DB  219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 10, 13, "$"

text1 db " C$"
text1a db "ALCULATOR $"
text2 db " G$"
text2a db "AME $"
text3 db "      MAIN MENU$"
text3a db "ßßßßßßßßßßßßßßßßßßßßßßß$"


;       >>>>>>Calculator<<<<<<<

    tw db 10,13,"Wrong input! $"
    t21 db 10,13,"Select: $"
    t3 db 10,10,13,"Enter first 4-digit integer (0000): $"
    t4 db 10,13,"Enter second 4-digit integer (0000): $"  
    t5 db 10,13,"Sum is $"
    t6 db 10,13,"Product is $"
    t7 db 10,13,"Difference is $"
    t8 db 10,13,"Quotient is $"
    t9 db 10,13,"Select again?(Y/N): $"
    negsign db  "-$"
    num1 dw ?
    num2 dw ?
    aa dw 1000
    bb db 100
    cc db 10

calcu1a db "  ÜÛÛÛÛÛÛÛÛÛÛÛÛÛÛÜ  ",13,10, "$"
calcu1b db " Û²²²²²²²²²²²²²²²²Û ",13,10, "$" 
calcu1c db " Û²²²²²²°°°°²²²²²²Û ",13,10, "$"
calcu1d db " Û²²²²²²°°°°²²²²²²Û ",13,10, "$"
calcu1e db " Û²²°°°°°°°°°°°°²²Û ",13,10, "$"
calcu1f db " Û²²°°°°°°°°°°°°²²Û ",13,10, "$"
calcu1g db " Û²²²²²²°°°°²²²²²²Û ",13,10, "$"
calcu1h db " Û²²²²²²°°°°²²²²²²Û ",13,10, "$"
calcu1i db " Û²²²²²²²²²²²²²²²²Û ",13,10, "$" 
calcu1j db "  ßÛÛÛÛÛÛÛÛÛÛÛÛÛÛß  ",13,10, "$"
calcu1k db "      ADDITION      ", 13,10, "$"

calcu2a db "  ÜÛÛÛÛÛÛÛÛÛÛÛÛÛÛÜ  ",13,10, "$"
calcu2b db " Û²²²²²²²²²²²²²²²²Û ",13,10, "$"
calcu2c db " Û²²²²²²²²²²²²²²²²Û ",13,10, "$"
calcu2d db " Û²²²²²²²²²²²²²²²²Û ",13,10, "$"
calcu2e db " Û²²°°°°°°°°°°°°²²Û ",13,10, "$"
calcu2f db " Û²²°°°°°°°°°°°°²²Û ",13,10, "$"
calcu2g db " Û²²²²²²²²²²²²²²²²Û ",13,10, "$"
calcu2h db " Û²²²²²²²²²²²²²²²²Û ",13,10, "$"
calcu2i db " Û²²²²²²²²²²²²²²²²Û ",13,10, "$"
calcu2j db "  ßÛÛÛÛÛÛÛÛÛÛÛÛÛÛß  ",13,10, "$"                                                                                                                                                                                            
calcu2k db "    SUBTRACTION     ",13,10, "$"

calcu3a db "  ÜÛÛÛÛÛÛÛÛÛÛÛÛÛÛÜ  ",13,10, "$"
calcu3b db " Û²²²²²²²²²²²²²²²²Û ",13,10, "$"
calcu3c db " Û²²°°°°²²²²°°°°²²Û ",13,10, "$"
calcu3d db " Û²²²°°°°²²°°°°²²²Û ",13,10, "$"
calcu3e db " Û²²²²²²°°°°²²²²²²Û ",13,10, "$"
calcu3f db " Û²²²²²²°°°°²²²²²²Û ",13,10, "$"
calcu3g db " Û²²²°°°°²²°°°°²²²Û ",13,10, "$"
calcu3h db " Û²²°°°°²²²²°°°°²²Û ",13,10, "$"
calcu3i db " Û²²²²²²²²²²²²²²²²Û ",13,10, "$" 
calcu3j db "  ßÛÛÛÛÛÛÛÛÛÛÛÛÛÛß  ",13,10, "$"
calcu3k db "   MULTIPLICATION   ",13,10, "$"

calcu4a db "  ÜÛÛÛÛÛÛÛÛÛÛÛÛÛÛÜ  ",13,10, "$"
calcu4b db " Û²²²²²²²²²²²²²²²²Û ",13,10, "$"
calcu4c db " Û²²²²²²°°°°²²²²²²Û ",13,10, "$"
calcu4d db " Û²²²²²²²²²²²²²²²²Û ",13,10, "$"
calcu4e db " Û²²°°°°°°°°°°°°²²Û ",13,10, "$"
calcu4f db " Û²²°°°°°°°°°°°°²²Û ",13,10, "$"
calcu4g db " Û²²²²²²²²²²²²²²²²Û ",13,10, "$"
calcu4h db " Û²²²²²²°°°°²²²²²²Û ",13,10, "$"
calcu4i db " Û²²²²²²²²²²²²²²²²Û ",13,10, "$" 
calcu4j db "  ßÛÛÛÛÛÛÛÛÛÛÛÛÛÛß  ",13,10, "$"                                                                                                                                                                                               
calcu4k db "      DIVISION      ",13,10, "$"

add1 db " ____ ____ ____ ____ ____ ____ ____ ____ ",13,10, "$"
add2 db "||A |||d |||d |||i |||t |||i |||o |||n ||",13,10, "$"
add3 db "||__|||__|||__|||__|||__|||__|||__|||__||",13,10, "$"
add4 db "|/__\|/__\|/__\|/__\|/__\|/__\|/__\|/__\|",13,10, "$"
                                          
sub1 db " ____ ____ ____ ____ ____ ____ ____ ____ ____ ____ ____ ",13,10, "$"
sub2 db "||s |||u |||b |||t |||r |||a |||c |||t |||i |||o |||n ||",13,10, "$"
sub3 db "||__|||__|||__|||__|||__|||__|||__|||__|||__|||__|||__||",13,10, "$"
sub4 db "|/__\|/__\|/__\|/__\|/__\|/__\|/__\|/__\|/__\|/__\|/__\|",13,10, "$" 

mul1 db " ____ ____ ____ ____ ____ ____ ____ ____ ____ ____ ____ ____ ____ ____ ",13,10, "$"
mul2 db "||M |||u |||l |||t |||i |||p |||l |||i |||c |||a |||t |||i |||o |||n ||",13,10, "$"
mul3 db "||__|||__|||__|||__|||__|||__|||__|||__|||__|||__|||__|||__|||__|||__||",13,10, "$"
mul4 db "|/__\|/__\|/__\|/__\|/__\|/__\|/__\|/__\|/__\|/__\|/__\|/__\|/__\|/__\|",13,10, "$",13,10, "$"

div1 db " ____ ____ ____ ____ ____ ____ ____ ____ ",13,10, "$"
div2 db "||D |||i |||v |||i |||s |||i |||o |||n ||",13,10, "$"
div3 db "||__|||__|||__|||__|||__|||__|||__|||__||",13,10, "$"
div4 db "|/__\|/__\|/__\|/__\|/__\|/__\|/__\|/__\|",13,10, "$"


;       >>>>>>>Game<<<<<<<

a db 219,10,13,"$"
b db 219,219,10,13, "$"
c db 219,219,219,10,13, "$"
d db 219,219,219,219,10,13, "$"
e db 219,219,219,219,219,10,13, "$"
f db 219,219,219,219,219,219,10,13, "$"
g db 219,219,219,219,219,219,219,10,13, "$"
h db 219,219,219,219,219,219,219,219,10,13, "$"
i db 219,219,219,219,219,219,219,219,219,10,13, "$"
j db 219,219,219,219,219,219,219,219,219,219,10,13, "$"
k db 219,219,219,219,219,219,219,219,219,219,219,10,13, "$"
l db 219,219,219,219,219,219,219,219,219,219,219,219,10,13, "$"
m db 219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,10,13, "$"
n db "ÜÜÜÜÜÜÜÜÜ $"                
o db "Û PLAY! Û $"
p db "ßßßßßßßßß $"
q db ">>Press P to play<<$"
r db "$"
s db 219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219, "$"
t db 219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219, "$"
u db 219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219, "$"
v db 219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219, "$"
w db 219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219, "$"
x db 219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219, "$"
y db 219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219, "$"
z db 219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219, "$"
z1 db 219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219, "$"
z2 db 219,219,219,219,219,219,219,219,219,219,219,219,219,219,219, "$"
z3 db 219,219,219,219,219,219,219,219,219,219,219,219,219, "$"
z4 db 219,219,219,219,219,219,219,219,219,219,219,219,219,219, "$"
z5 db 219,219,219,219,219,219,219,219,219,219,219,219,219,219,219, "$"


E2 DB 219, 219, 10, 13, "$"
E4 DB 219, 219, 219, 219, 10, 13, "$"
E6 DB  219, 219, 219, 219, 219, 219, 10, 13, "$"
E8 DB 219, 219, 219, 219, 219, 219, 219, 219, 10, 13, "$"
E10 DB 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 10, 13, "$"
E14 DB 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 10, 13, "$"
E18 DB 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 10, 13, "$"
E22 DB 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 10, 13, "$"
E26 DB 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 10, 13, "$"
E30 DB 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 10, 13, "$"


right db " Correct!$"                                                                                                                                                                      
wrong db " Wrong!$"


;   ------Questions-----

q11 db 'There is a breed of cats "Van cat"$'
q12 db 'that have all white fur, blue or amber eyes$'
q13 db '   or mismatched eyes and love to swim.$'
q14 db "Van cat is a distinctive landrace of domestic cat,$"
q14a db "found in the Lake Vanregion of eastern Turkey$"
q14b db 'and has been referred to as "the swimming cat".$'
q21 db "A moment technically means 90 seconds.$"
q31 db '"Cute oppression" refers to the almost-$'
q32 db "overwhelming urge to do violence to an object$"
q33 db "that we find incredibly adorable.$"
q34 db '"Cute aggression" is a term used to describe the$'
q34a db "feeling you get when you see something so cute you$"
q34b db "just want to squeeze it. The term was coined in 2013 by$"
q34c db "a research team from the Yale University.$"
q41 db "Pronoia is a neologism that is defined$"
q42 db "as the opposite state of mind to paranoia.$"
q43 db 'The opposite of "paranoia" is called "pronoia" which is$'
q43a db "the suspicion that everyone is conspiring to help you.$"
q51 db "A duck's quack doesn't echo.$"
q52 db "A duck's quack doesn't echo is a myth.$"
q52a db "               It does.$"
q61 db "Dragonfly were originally called flutterflies.$"
q62 db "Butterfly were originally called flutterflies.$"
q71 db "Kampuchea is now Malaysia.$"
q72 db "Kampuchea is now Cambodia.$"
q81 db "192 countries are UN members.$"
q82 db "192 countries are UN members.$"
qu11 db 'If you cut an earthworm in half,$'
qu12 db 'both halves can regrow their body.$'
mes11 db 'Only one half of an earthworm can$'
mes12 db "regenerate when it's cut in half,$"
mes13 db 'not both halves.$'

qu21 db 'Human can distinguish between$'
qu22 db 'over a trillion different smells.$'
mes21 db "It's not as good as a dog's, but the$"
mes22 db 'human nose is still pretty incredible.$'

qu31 db 'Adults have fewer bones$'
qu32 db 'than babies do.$'
mes31 db 'Lots of bone (like cranium) start out as$'
mes32 db 'several fragments at birth, then fuse together$'
mes33 db 'into a single bone later in life.$'

qu41 db 'There are more cells of bacteria$'
qu42  db 'in your body than there are human cells$'
mes41 db 'Your body has around ten times as many bacterial cells$'
mes42 db 'in it than your own cells.$'

qu51 db 'Your fingernails and hair$'
qu52 db 'keep growing after you die.$'
mes51 db "They really don't$"

qu61 db "Humans can't breath and$"
qu62 db 'swallow at the same time.$'
mes61 db "It's because our voice box is lower in the$"
mes62 db 'throat than other primates.$'

qu71 db 'Drinking alchohol kills brain cells.$'
mes71 db "Drinking alcohol won't add to your blood stream$"
mes72 db 'to destroy your neurons$'

t1 db "__ÜÜÜ_____$"
ta db "   Û RUE$"
t2 db "ßßßßßßßßßß$"
f1 db "__ÜÜÜ_____$"
fa db "  Û- ALSE$"
f2 db "ßßßßßßßßßß$"
b1 db "ÜÜÜÜÜÜÜÜÜÜ $"                
ba db "Û  BACK  Û $"
b2 db "ßßßßßßßßßß $"
ex1 db "ÜÜÜÜÜÜÜÜÜÜ $"                
exa db "Û  EXIT  Û $"
ex2 db "ßßßßßßßßßß $"


en db " AWESOME! $"
en1 db " THANK YOU FOR PLAYING $"
en2 db " OR $"  

.code


start:


pass PROC NEAR
        mov ax, 3
        int 10h

        mov ax, @data
        mov ds, ax

        mov ah, 2
        mov dl, 3                    
        mov dh, 1		
        int 10h

        mov ah, 9
        mov dx, offset ctf1
        mov bl, 00eh
        mov cx, 48
        int 10h
        int 21h

        mov ah, 2
        mov dl, 3
        mov dh, 2
        int 10h

        mov ah, 9
        mov dx, offset ctf2
        mov bl, 00eh
        mov cx, 48
        int 10h
        int 21h

        mov ah, 2
        mov dl, 3
        mov dh, 3
        int 10h

        mov ah, 9
        mov dx, offset ctf3
        mov bl, 00eh
        mov cx, 48
        int 10h
        int 21h

	mov ah, 2
        mov dl, 3
        mov dh, 4
        int 10h

        mov ah, 9
        mov dx, offset ctf4
        mov bl, 00eh
        mov cx, 48
        int 10h
        int 21h
	
	mov ah, 2
        mov dl, 3
        mov dh, 5
        int 10h

        mov ah, 9
        mov dx, offset ctf5
        mov bl, 00eh
        mov cx, 48
        int 10h
        int 21h

	mov ah, 2
        mov dl, 3
        mov dh, 6
        int 10h

        mov ah, 9
        mov dx, offset ctf6
        mov bl, 00eh
        mov cx, 48
        int 10h
        int 21h

	mov ah, 2
        mov dl, 3
        mov dh, 7
        int 10h

        mov ah, 9
        mov dx, offset ctf7
        mov bl, 00eh
        mov cx, 48
        int 10h
        int 21h

	mov ah, 2
        mov dl, 3
        mov dh, 8
        int 10h

        mov ah, 9
        mov dx, offset ctf8
        mov bl, 00eh
        mov cx, 48
        int 10h
        int 21h

	mov ah, 2
        mov dl, 20
        mov dh, 12
        int 10h

        mov ah, 9
        mov dx, offset log1
        mov bl, 00eh
        mov cx, 41
        int 10h
        int 21h

	mov ah, 2
        mov dl, 21
        mov dh, 13
        int 10h

        MOV AH,9
        LEA DX,Aaaa
        INT 21H

        MOV AH,8
        INT 21H
        MOV BL,AL
        MOV DL, '*'
        MOV AH, 2
        INT 21H

        MOV AH,8
        INT 21H
        MOV CL,AL
        MOV DL, '*'
        MOV AH, 2
        INT 21H

        MOV AH,8
        INT 21H
        MOV DH,AL
        MOV DL, '*'
        MOV AH, 2
        INT 21H

        MOV AH,8
        INT 21H
        MOV BL,AL
        MOV DL, '*'
        MOV AH, 2
        INT 21H

        MOV AH,8
        INT 21H
        MOV CL,AL
        MOV DL, '*'
        MOV AH, 2
        INT 21H

        MOV AH,8
        INT 21H
        MOV DH,AL
        MOV DL, '*'
        MOV AH, 2
        INT 21H

        MOV AH,8
        INT 21H
        MOV BL,AL
        MOV DL, '*'
        MOV AH, 2
        INT 21H

        MOV AH, 8
        INT 21H
        MOV CL,AL
        MOV DL, '*'
        MOV AH, 2
        INT 21H

        CMP BL,'c'
        CMP CL,'o'
        CMP DH,'e'
        CMP BL,'n'
        CMP CL,'3'
        CMP DH,'1'
        CMP BL,'1'
        CMP CL,'4'
        JNE INV
jmp menu 

INV:
        mov ah, 2
        mov dl, 28
        mov dh, 15
        int 10h
        mov ah, 9
        mov bl,004
        mov cx, 26 
        int 10h
        mov ah, 9
        lea dx, Bbb
        int 21h

        mov ah, 4ch
        int 21h

pass ENDP


menu    proc near
	mov ax, 3
	int 10h

	mov ax, @data
	mov ds, ax


	mov ah, 2
       mov dl, 0
       mov dh, 3
       int 10h

       mov ah, 9
       mov dx, OFFSET E80
       mov bl, 007h
       mov cx, 80
       int 10h
       int 21h


	mov ah, 2
       mov dl, 0
       mov dh, 19
       int 10h

       mov ah, 9
       mov dx, OFFSET E80
       mov bl, 007h
       mov cx, 80
       int 10h
       int 21h



	mov ah, 2
       mov dl, 0
       mov dh, 4
       int 10h

       mov ah, 9
       mov dx, OFFSET E80
       mov bl, 007h
       mov cx, 80
       int 10h
       int 21h

	mov ah, 2
       mov dl, 5
       mov dh, 4
       int 10h

       mov ah, 9
       mov dx, OFFSET EE30
       mov bl, 00h
       mov cx, 30
       int 10h
       int 21h


	mov ah, 2
       mov dl, 45
       mov dh, 4
       int 10h

       mov ah, 9
       mov dx, OFFSET EE30
       mov bl, 00h
       mov cx, 30
       int 10h
       int 21h



	mov ah, 2
       mov dl, 0
       mov dh, 5
       int 10h

       mov ah, 9
       mov dx, OFFSET E80
       mov bl, 007h
       mov cx, 80
       int 10h
       int 21h

	mov ah, 2
       mov dl, 5
       mov dh, 5
       int 10h

       mov ah, 9
       mov dx, OFFSET EE2
       mov bl, 00h
       mov cx, 2
       int 10h
       int 21h

	mov ah, 2
       mov dl, 45
       mov dh, 4
       int 10h

       mov ah, 9
       mov dx, OFFSET EE30
       mov bl, 00h
       mov cx, 30
       int 10h
       int 21h

	mov ah, 2
       mov dl, 45
       mov dh, 5
       int 10h

       mov ah, 9
       mov dx, OFFSET EE2
       mov bl, 00h
       mov cx, 2
       int 10h
       int 21h
	mov ah, 2
       mov dl, 47
       mov dh, 5
       int 10h

       mov ah, 9
       mov dx, OFFSET EE26
       mov bl, 001h
       mov cx, 26
       int 10h
       int 21h

	mov ah, 2
       mov dl, 73
       mov dh, 5
       int 10h

       mov ah, 9
       mov dx, OFFSET EE2
       mov bl, 00h
       mov cx, 2
       int 10h
       int 21h

	mov ah, 2
       mov dl, 11
       mov dh, 5
       int 10h

       mov ah, 9
       mov dx, OFFSET EE4
       mov bl, 004h
       mov cx, 4
       int 10h
       int 21h


	mov ah, 2
       mov dl, 19
       mov dh, 5
       int 10h

       mov ah, 9
       mov dx, OFFSET EE2
       mov bl, 00h
       mov cx, 2
       int 10h
       int 21h


	mov ah, 2
       mov dl, 33
       mov dh, 5
       int 10h

       mov ah, 9
       mov dx, OFFSET EE2
       mov bl, 00h
       mov cx, 2
       int 10h
       int 21h

       mov ah, 2
       mov dl, 0
       mov dh, 6
       int 10h

       mov ah, 9
       mov dx, OFFSET E80
       mov bl, 007h
       mov cx, 80
       int 10h
       int 21h

	mov ah, 2
       mov dl, 5
       mov dh, 6
       int 10h

       mov ah, 9
       mov dx, OFFSET EE2
       mov bl, 00h
       mov cx, 2
       int 10h
       int 21h


	mov ah, 2
       mov dl, 11
       mov dh, 6
       int 10h

       mov ah, 9
       mov dx, OFFSET EE4
       mov bl, 004h
       mov cx, 4
       int 10h
       int 21h


	mov ah, 2
       mov dl, 19
       mov dh, 6
       int 10h

       mov ah, 9
       mov dx, OFFSET EE2
       mov bl, 00h
       mov cx, 2
       int 10h
       int 21h


	mov ah, 2
       mov dl, 33
       mov dh, 6
       int 10h

       mov ah, 9
       mov dx, OFFSET EE2
       mov bl, 00h
       mov cx, 2
       int 10h
       int 21h


	mov ah, 2
       mov dl, 45
       mov dh, 6
       int 10h

       mov ah, 9
       mov dx, OFFSET EE2
       mov bl, 00h
       mov cx, 2
       int 10h
       int 21h
	mov ah, 2
       mov dl, 47
       mov dh, 6
       int 10h

       mov ah, 9
       mov dx, OFFSET EE2
       mov bl, 001h
       mov cx, 2
       int 10h
       int 21h

	mov ah, 2
       mov dl, 49
       mov dh, 6
       int 10h

       mov ah, 9
       mov dx, OFFSET E12
       mov bl, 002h
       mov cx, 12
       int 10h
       int 21h


	mov ah, 2
       mov dl, 61
       mov dh, 6
       int 10h

       mov ah, 9
       mov dx, OFFSET E12
       mov bl, 001h
       mov cx, 12
       int 10h
       int 21h

       

	mov ah, 2
       mov dl, 73
       mov dh, 6
       int 10h

       mov ah, 9
       mov dx, OFFSET EE2
       mov bl, 000h
       mov cx, 2
       int 10h
       int 21h



	mov ah, 2
       mov dl, 0
       mov dh, 7
       int 10h

       mov ah, 9
       mov dx, OFFSET E80
       mov bl, 007h
       mov cx, 80
       int 10h
       int 21h

	mov ah, 2
       mov dl, 5
       mov dh, 7
       int 10h

       mov ah, 9
       mov dx, OFFSET EE2
       mov bl, 00h
       mov cx, 2
       int 10h
       int 21h


	mov ah, 2
       mov dl, 7
       mov dh, 7
       int 10h

       mov ah, 9
       mov dx, OFFSET E12
       mov bl, 004h
       mov cx, 12
       int 10h
       int 21h


	mov ah, 2
       mov dl, 19
       mov dh, 7
       int 10h

       mov ah, 9
       mov dx, OFFSET EE2
       mov bl, 00h
       mov cx, 2
       int 10h
       int 21h


	mov ah, 2
       mov dl, 21
       mov dh, 7
       int 10h

       mov ah, 9
       mov dx, OFFSET E12
       mov bl, 004h
       mov cx, 12
       int 10h
       int 21h

       mov ah, 2
       mov dl, 33
       mov dh, 7
       int 10h

       mov ah, 9
       mov dx, offset EE2
       mov bl, 00
       mov cx, 2
       int 10h
       int 21h



	mov ah, 2
       mov dl, 45
       mov dh, 7
       int 10h

       mov ah, 9
       mov dx, OFFSET EE2
       mov bl, 00h
       mov cx, 2
       int 10h
       int 21h
	mov ah, 2
       mov dl, 47
       mov dh, 7
       int 10h

       mov ah, 9
       mov dx, OFFSET EE2
       mov bl, 001h
       mov cx, 2
       int 10h
       int 21h

	mov ah, 2
       mov dl, 49
       mov dh, 7
       int 10h

       mov ah, 9
       mov dx, OFFSET E12
       mov bl, 002h
       mov cx, 12
       int 10h
       int 21h


	mov ah, 2
       mov dl, 61
       mov dh, 7
       int 10h

       mov ah, 9
       mov dx, OFFSET E12
       mov bl, 001h
       mov cx, 12
       int 10h
       int 21h


	mov ah, 2
       mov dl, 73
       mov dh, 7
       int 10h

       mov ah, 9
       mov dx, OFFSET EE2
       mov bl, 000h
       mov cx, 2
       int 10h
       int 21h
       

	mov ah, 2
       mov dl, 0
       mov dh,8
       int 10h

       mov ah, 9
       mov dx, OFFSET E80
       mov bl, 007h
       mov cx, 80
       int 10h
       int 21h

	mov ah, 2
       mov dl, 5
       mov dh, 8
       int 10h

       mov ah, 9
       mov dx, OFFSET EE2
       mov bl, 00h
       mov cx, 2
       int 10h
       int 21h


	mov ah, 2
       mov dl, 7
       mov dh, 8
       int 10h

       mov ah, 9
       mov dx, OFFSET E12
       mov bl, 004h
       mov cx, 12
       int 10h
       int 21h


	mov ah, 2
       mov dl, 19
       mov dh, 8
       int 10h

       mov ah, 9
       mov dx, OFFSET EE2
       mov bl, 00h
       mov cx, 2
       int 10h
       int 21h


	mov ah, 2
       mov dl, 21
       mov dh, 8
       int 10h

       mov ah, 9
       mov dx, OFFSET E12
       mov bl, 004h
       mov cx, 12
       int 10h
       int 21h

       mov ah, 2
       mov dl, 33
       mov dh, 8
       int 10h

       mov ah, 9
       mov dx, offset EE2
       mov bl, 00
       mov cx, 2
       int 10h
       int 21h


	mov ah, 2
       mov dl, 0
       mov dh, 11
       int 10h

       mov ah, 9
       mov dx, OFFSET E80
       mov bl, 007h
       mov cx, 80
       int 10h
       int 21h

	mov ah, 2
       mov dl, 5
       mov dh, 11
       int 10h

       mov ah, 9
       mov dx, OFFSET EE30
       mov bl, 00h
       mov cx, 30
       int 10h
       int 21h

	mov ah, 2
       mov dl, 0
       mov dh, 9
       int 10h

       mov ah, 9
       mov dx, OFFSET E80
       mov bl, 007h
       mov cx, 80
       int 10h
       int 21h

	mov ah, 2
       mov dl, 5
       mov dh, 9
       int 10h

       mov ah, 9
       mov dx, OFFSET EE2
       mov bl, 00h
       mov cx, 2
       int 10h
       int 21h


	mov ah, 2
       mov dl, 11
       mov dh,9
       int 10h

       mov ah, 9
       mov dx, OFFSET EE4
       mov bl, 004h
       mov cx, 4
       int 10h
       int 21h


	mov ah, 2
       mov dl, 19
       mov dh, 9
       int 10h

       mov ah, 9
       mov dx, OFFSET EE2
       mov bl, 00h
       mov cx, 2
       int 10h
       int 21h


	mov ah, 2
       mov dl, 33
       mov dh, 9
       int 10h

       mov ah, 9
       mov dx, OFFSET EE2
       mov bl, 00h
       mov cx, 2
       int 10h
       int 21h

       mov ah, 2
       mov dl, 0
       mov dh, 10
       int 10h

       mov ah, 9
       mov dx, OFFSET E80
       mov bl, 007h
       mov cx, 80
       int 10h
       int 21h

	mov ah, 2
       mov dl, 5
       mov dh, 10
       int 10h

       mov ah, 9
       mov dx, OFFSET EE2
       mov bl, 00h
       mov cx, 2
       int 10h
       int 21h


	mov ah, 2
       mov dl, 11
       mov dh, 10
       int 10h

       mov ah, 9
       mov dx, OFFSET EE4
       mov bl, 004h
       mov cx, 4
       int 10h
       int 21h


	mov ah, 2
       mov dl, 19
       mov dh, 10
       int 10h

       mov ah, 9
       mov dx, OFFSET EE2
       mov bl, 00h
       mov cx, 2
       int 10h
       int 21h


	mov ah, 2
       mov dl, 33
       mov dh, 10
       int 10h

       mov ah, 9
       mov dx, OFFSET EE2
       mov bl, 00h
       mov cx, 2
       int 10h
       int 21h


       mov ah, 2
       mov dl, 0
       mov dh, 12
       int 10h

       mov ah, 9
       mov dx, OFFSET E80
       mov bl, 007h
       mov cx, 80
       int 10h
       int 21h

	mov ah, 2
       mov dl, 5
       mov dh, 12
       int 10h

       mov ah, 9
       mov dx, OFFSET EE2
       mov bl, 00h
       mov cx, 2
       int 10h
       int 21h


	mov ah, 2
       mov dl, 7
       mov dh, 12
       int 10h

       mov ah, 9
       mov dx, OFFSET EE2
       mov bl, 004h
       mov cx, 2
       int 10h
       int 21h


	mov ah, 2
       mov dl, 17
       mov dh, 12
       int 10h

       mov ah, 9
       mov dx, OFFSET EE2
       mov bl, 004h
       mov cx, 2
       int 10h
       int 21h


	mov ah, 2
       mov dl, 19
       mov dh, 12
       int 10h

       mov ah, 9
       mov dx, OFFSET EE2
       mov bl, 00h
       mov cx, 2
       int 10h
       int 21h

	mov ah, 2
       mov dl, 25
       mov dh, 12
       int 10h

       mov ah, 9
       mov dx, OFFSET EE4
       mov bl, 004h
       mov cx, 4
       int 10h
       int 21h


	mov ah, 2
       mov dl, 33
       mov dh, 12
       int 10h

       mov ah, 9
       mov dx, OFFSET EE2
       mov bl, 00h
       mov cx, 2
       int 10h
       int 21h

       mov ah, 2
       mov dl, 0
       mov dh, 13
       int 10h

       mov ah, 9
       mov dx, OFFSET E80
       mov bl, 007h
       mov cx, 80
       int 10h
       int 21h

	mov ah, 2
       mov dl, 5
       mov dh, 13
       int 10h

       mov ah, 9
       mov dx, OFFSET EE2
       mov bl, 00h
       mov cx, 2
       int 10h
       int 21h


	mov ah, 2
       mov dl, 9
       mov dh, 13
       int 10h

       mov ah, 9
       mov dx, OFFSET EE2
       mov bl, 004h
       mov cx, 2
       int 10h
       int 21h


	mov ah, 2
       mov dl, 15
       mov dh, 13
       int 10h

       mov ah, 9
       mov dx, OFFSET EE2
       mov bl, 004h
       mov cx, 2
       int 10h
       int 21h


	mov ah, 2
       mov dl, 19
       mov dh, 13
       int 10h

       mov ah, 9
       mov dx, OFFSET EE2
       mov bl, 00h
       mov cx, 2
       int 10h
       int 21h

	mov ah, 2
       mov dl, 33
       mov dh, 13
       int 10h

       mov ah, 9
       mov dx, OFFSET EE2
       mov bl, 00h
       mov cx, 2
       int 10h
       int 21h

       mov ah, 2
       mov dl, 0
       mov dh, 14
       int 10h

       mov ah, 9
       mov dx, OFFSET E80
       mov bl, 007h
       mov cx, 80
       int 10h
       int 21h

	mov ah, 2
       mov dl, 5
       mov dh, 14
       int 10h

       mov ah, 9
       mov dx, OFFSET EE2
       mov bl, 00h
       mov cx, 2
       int 10h
       int 21h


	mov ah, 2
       mov dl, 11
       mov dh, 14
       int 10h

       mov ah, 9
       mov dx, OFFSET EE4
       mov bl, 004h
       mov cx, 4
       int 10h
       int 21h


	mov ah, 2
       mov dl, 19
       mov dh, 14
       int 10h

       mov ah, 9
       mov dx, OFFSET EE2
       mov bl, 00h
       mov cx, 2
       int 10h
       int 21h

	mov ah, 2
       mov dl, 21
       mov dh, 14
       int 10h

       mov ah, 9
       mov dx, OFFSET E12
       mov bl, 004h
       mov cx, 12
       int 10h
       int 21h


	mov ah, 2
       mov dl, 33
       mov dh, 14
       int 10h

       mov ah, 9
       mov dx, OFFSET EE2
       mov bl, 00h                   
       mov cx, 2
       int 10h
       int 21h

       mov ah, 2
       mov dl, 0
       mov dh, 17
       int 10h

       mov ah, 9
       mov dx, OFFSET E80
       mov bl, 007h
       mov cx, 80
       int 10h
       int 21h

	mov ah, 2
       mov dl, 5
       mov dh, 17
       int 10h

       mov ah, 9
       mov dx, OFFSET EE2
       mov bl, 00h
       mov cx, 2
       int 10h
       int 21h


	mov ah, 2
       mov dl, 7
       mov dh, 17
       int 10h

       mov ah, 9
       mov dx, OFFSET EE2
       mov bl, 004h
       mov cx, 2
       int 10h
       int 21h


	mov ah, 2
       mov dl, 17
       mov dh, 17
       int 10h

       mov ah, 9
       mov dx, OFFSET EE2
       mov bl, 004h
       mov cx, 2
       int 10h
       int 21h


	mov ah, 2
       mov dl, 19
       mov dh, 17
       int 10h

       mov ah, 9
       mov dx, OFFSET EE2
       mov bl, 00h
       mov cx, 2
       int 10h
       int 21h

	mov ah, 2
       mov dl, 25
       mov dh, 17
       int 10h

       mov ah, 9
       mov dx, OFFSET EE4
       mov bl, 004h
       mov cx, 4
       int 10h
       int 21h


	mov ah, 2
       mov dl, 33
       mov dh, 17
       int 10h

       mov ah, 9
       mov dx, OFFSET EE2
       mov bl, 00h
       mov cx, 2
       int 10h
       int 21h

       mov ah, 2
       mov dl, 0
       mov dh, 16
       int 10h

       mov ah, 9
       mov dx, OFFSET E80
       mov bl, 007h
       mov cx, 80
       int 10h
       int 21h

	mov ah, 2
       mov dl, 5
       mov dh, 16
       int 10h

       mov ah, 9
       mov dx, OFFSET EE2
       mov bl, 00h
       mov cx, 2
       int 10h
       int 21h


	mov ah, 2
       mov dl, 9
       mov dh, 16
       int 10h

       mov ah, 9
       mov dx, OFFSET EE2
       mov bl, 004h
       mov cx, 2
       int 10h
       int 21h


	mov ah, 2
       mov dl, 15
       mov dh, 16
       int 10h

       mov ah, 9
       mov dx, OFFSET EE2
       mov bl, 004h
       mov cx, 2
       int 10h
       int 21h


	mov ah, 2
       mov dl, 19
       mov dh, 16
       int 10h

       mov ah, 9
       mov dx, OFFSET EE2
       mov bl, 00h
       mov cx, 2
       int 10h
       int 21h

	mov ah, 2
       mov dl, 33
       mov dh, 16
       int 10h

       mov ah, 9
       mov dx, OFFSET EE2
       mov bl, 00h
       mov cx, 2
       int 10h
       int 21h

       mov ah, 2
       mov dl, 0
       mov dh, 15
       int 10h

       mov ah, 9
       mov dx, OFFSET E80
       mov bl, 007h
       mov cx, 80
       int 10h
       int 21h

	mov ah, 2
       mov dl, 5
       mov dh, 15
       int 10h

       mov ah, 9
       mov dx, OFFSET EE2
       mov bl, 00h
       mov cx, 2
       int 10h
       int 21h


	mov ah, 2
       mov dl, 11
       mov dh, 15
       int 10h

       mov ah, 9
       mov dx, OFFSET EE4
       mov bl, 004h
       mov cx, 4
       int 10h
       int 21h



	mov ah, 2
       mov dl, 19
       mov dh, 15
       int 10h

       mov ah, 9
       mov dx, OFFSET EE2
       mov bl, 00h
       mov cx, 2
       int 10h
       int 21h

	mov ah, 2
       mov dl, 21
       mov dh, 15
       int 10h

       mov ah, 9
       mov dx, OFFSET E12
       mov bl, 004h
       mov cx, 12
       int 10h
       int 21h


	mov ah, 2
       mov dl, 33
       mov dh, 15
       int 10h

       mov ah, 9
       mov dx, OFFSET EE2
       mov bl, 00h
       mov cx, 2
       int 10h
       int 21h


	mov ah, 2
       mov dl, 0
       mov dh, 18
       int 10h

       mov ah, 9
       mov dx, OFFSET E80
       mov bl, 007h
       mov cx, 80
       int 10h
       int 21h

	mov ah, 2
       mov dl, 5
       mov dh, 18
       int 10h

       mov ah, 9
       mov dx, OFFSET EE30
       mov bl, 00h
       mov cx, 30
       int 10h
       int 21h



	mov ah, 2
       mov dl, 45
       mov dh, 8
       int 10h

       mov ah, 9
       mov dx, OFFSET EE2
       mov bl, 00h
       mov cx, 2
       int 10h
       int 21h
	mov ah, 2
       mov dl, 47
       mov dh, 8
       int 10h

       mov ah, 9
       mov dx, OFFSET EE6
       mov bl, 001h
       mov cx, 6
       int 10h
       int 21h

	mov ah, 2
       mov dl, 53
       mov dh, 8
       int 10h

       mov ah, 9
       mov dx, OFFSET EE4
       mov bl, 002h
       mov cx, 4
       int 10h
       int 21h

	mov ah, 2
       mov dl, 57
       mov dh, 8
       int 10h

       mov ah, 9
       mov dx, OFFSET E16
       mov bl, 001h
       mov cx, 16
       int 10h
       int 21h


	mov ah, 2
       mov dl, 61
       mov dh, 8
       int 10h

       mov ah, 9
       mov dx, OFFSET E12
       mov bl, 001h
       mov cx, 12
       int 10h
       int 21h


	mov ah, 2
       mov dl, 73
       mov dh, 8
       int 10h

       mov ah, 9
       mov dx, OFFSET EE2
       mov bl, 00h
       mov cx, 2
       int 10h
       int 21h


	mov ah, 2
       mov dl, 45
       mov dh, 9
       int 10h

       mov ah, 9
       mov dx, OFFSET EE2
       mov bl, 00h
       mov cx, 2
       int 10h
       int 21h
	mov ah, 2
       mov dl, 47
       mov dh, 9
       int 10h

       mov ah, 9
       mov dx, OFFSET EE6
       mov bl, 001h
       mov cx, 6
       int 10h
       int 21h

	mov ah, 2
       mov dl, 53
       mov dh, 9
       int 10h

       mov ah, 9
       mov dx, OFFSET EE4
       mov bl, 002h
       mov cx, 4
       int 10h
       int 21h

	mov ah, 2
       mov dl, 57
       mov dh, 9
       int 10h

       mov ah, 9
       mov dx, OFFSET EE6
       mov bl, 008h
       mov cx, 6
       int 10h
       int 21h

	mov ah, 2
       mov dl, 63
       mov dh, 9
       int 10h

       mov ah, 9
       mov dx, OFFSET EE10
       mov bl, 001h
       mov cx, 10
       int 10h
       int 21h


	mov ah, 2
       mov dl, 73
       mov dh, 9
       int 10h

       mov ah, 9
       mov dx, OFFSET EE2
       mov bl, 00h
       mov cx, 2
       int 10h
       int 21h


	mov ah, 2
       mov dl, 45
       mov dh, 10
       int 10h

       mov ah, 9
       mov dx, OFFSET EE2
       mov bl, 00h
       mov cx, 2
       int 10h
       int 21h
	mov ah, 2
       mov dl, 47
       mov dh, 10
       int 10h

       mov ah, 9
       mov dx, OFFSET EE6
       mov bl, 001h
       mov cx, 6
       int 10h
       int 21h

	mov ah, 2
       mov dl, 53
       mov dh, 10
       int 10h

       mov ah, 9
       mov dx, OFFSET EE4
       mov bl, 002h
       mov cx, 4
       int 10h
       int 21h

	mov ah, 2
       mov dl, 57
       mov dh, 10
       int 10h

       mov ah, 9
       mov dx, OFFSET EE8
       mov bl, 008h
       mov cx, 8
       int 10h
       int 21h

	mov ah, 2
       mov dl, 65
       mov dh, 10
       int 10h

       mov ah, 9
       mov dx, OFFSET EE8
       mov bl, 001h
       mov cx, 8
       int 10h
       int 21h


	mov ah, 2
       mov dl, 73
       mov dh, 10
       int 10h

       mov ah, 9
       mov dx, OFFSET EE2
       mov bl, 00h
       mov cx, 2
       int 10h
       int 21h


	mov ah, 2
       mov dl, 45
       mov dh, 11
       int 10h

       mov ah, 9
       mov dx, OFFSET EE2
       mov bl, 00h
       mov cx, 2
       int 10h
       int 21h
	mov ah, 2
       mov dl, 47
       mov dh, 11
       int 10h

       mov ah, 9
       mov dx, OFFSET EE6
       mov bl, 001h
       mov cx, 6
       int 10h
       int 21h

	mov ah, 2
       mov dl, 53
       mov dh, 11
       int 10h

       mov ah, 9
       mov dx, OFFSET EE4
       mov bl, 008h
       mov cx, 4
       int 10h
       int 21h

	mov ah, 2
       mov dl, 61
       mov dh, 11
       int 10h

       mov ah, 9
       mov dx, OFFSET EE4
       mov bl, 008h
       mov cx, 4
       int 10h
       int 21h

	mov ah, 2
       mov dl, 65
       mov dh, 11
       int 10h

       mov ah, 9
       mov dx, OFFSET EE8
       mov bl, 001h
       mov cx, 8
       int 10h
       int 21h



	mov ah, 2
       mov dl, 73
       mov dh, 11
       int 10h

       mov ah, 9
       mov dx, OFFSET EE2
       mov bl, 00h
       mov cx, 2
       int 10h
       int 21h


	mov ah, 2
       mov dl, 45
       mov dh, 12
       int 10h

       mov ah, 9
       mov dx, OFFSET EE2
       mov bl, 00h
       mov cx, 2
       int 10h
       int 21h
	mov ah, 2
       mov dl, 47
       mov dh, 12
       int 10h

       mov ah, 9
       mov dx, OFFSET EE6
       mov bl, 001h
       mov cx, 6
       int 10h
       int 21h

	mov ah, 2
       mov dl, 53
       mov dh, 12
       int 10h

       mov ah, 9
       mov dx, OFFSET EE4
       mov bl, 008h
       mov cx, 4
       int 10h
       int 21h

	mov ah, 2
       mov dl, 61
       mov dh, 12
       int 10h

       mov ah, 9
       mov dx, OFFSET EE10
       mov bl, 004h
       mov cx, 10
       int 10h
       int 21h

	mov ah, 2
       mov dl, 71
       mov dh, 12
       int 10h

       mov ah, 9
       mov dx, OFFSET EE2
       mov bl, 001h
       mov cx, 2
       int 10h
       int 21h



	mov ah, 2
       mov dl, 73
       mov dh, 12
       int 10h

       mov ah, 9
       mov dx, OFFSET EE2
       mov bl, 00h
       mov cx, 2
       int 10h
       int 21h


	mov ah, 2
       mov dl, 45
       mov dh, 13
       int 10h

       mov ah, 9
       mov dx, OFFSET EE2
       mov bl, 00h
       mov cx, 2
       int 10h
       int 21h
	mov ah, 2
       mov dl, 47
       mov dh, 13
       int 10h

       mov ah, 9
       mov dx, OFFSET EE6
       mov bl, 001h
       mov cx, 6
       int 10h
       int 21h

	mov ah, 2
       mov dl, 53
       mov dh, 13
       int 10h

       mov ah, 9
       mov dx, OFFSET EE8
       mov bl, 008h
       mov cx, 8
       int 10h
       int 21h

	mov ah, 2
       mov dl, 61
       mov dh, 13
       int 10h

       mov ah, 9
       mov dx, OFFSET EE4
       mov bl, 004h
       mov cx, 4
       int 10h
       int 21h

	mov ah, 2
       mov dl, 69
       mov dh, 13
       int 10h

       mov ah, 9
       mov dx, OFFSET EE2
       mov bl, 004h
       mov cx, 2
       int 10h
       int 21h




	mov ah, 2
       mov dl, 71
       mov dh, 13
       int 10h

       mov ah, 9
       mov dx, OFFSET EE2
       mov bl, 001h
       mov cx, 2
       int 10h
       int 21h




	mov ah, 2
       mov dl, 73
       mov dh, 13
       int 10h

       mov ah, 9
       mov dx, OFFSET EE2
       mov bl, 00h
       mov cx, 2
       int 10h
       int 21h


	mov ah, 2
       mov dl, 45
       mov dh, 14
       int 10h

       mov ah, 9
       mov dx, OFFSET EE2
       mov bl, 00h
       mov cx, 2
       int 10h
       int 21h
	mov ah, 2
       mov dl, 47
       mov dh, 14
       int 10h

       mov ah, 9
       mov dx, OFFSET EE8
       mov bl, 001h
       mov cx, 8
       int 10h
       int 21h

	mov ah, 2
       mov dl, 55
       mov dh, 14
       int 10h

       mov ah, 9
       mov dx, OFFSET EE6
       mov bl, 008h
       mov cx, 6
       int 10h
       int 21h

	mov ah, 2
       mov dl, 61
       mov dh, 14
       int 10h

       mov ah, 9
       mov dx, OFFSET EE10
       mov bl, 004h
       mov cx, 10
       int 10h
       int 21h

	mov ah, 2
       mov dl, 71
       mov dh, 14
       int 10h

       mov ah, 9
       mov dx, OFFSET EE2
       mov bl, 001h
       mov cx, 2
       int 10h
       int 21h



       mov ah, 2
       mov dl, 73
       mov dh, 14
       int 10h

       mov ah, 9
       mov dx, OFFSET EE2
       mov bl, 00h
       mov cx, 2
       int 10h
       int 21h


	mov ah, 2
       mov dl, 45
       mov dh, 15
       int 10h

       mov ah, 9
       mov dx, OFFSET EE2
       mov bl, 00h
       mov cx, 2
       int 10h
       int 21h
	mov ah, 2
       mov dl, 47
       mov dh, 15
       int 10h

       mov ah, 9
       mov dx, OFFSET EE14
       mov bl, 001h
       mov cx, 14
       int 10h
       int 21h

	mov ah, 2
       mov dl, 61
       mov dh, 15
       int 10h

       mov ah, 9
       mov dx, OFFSET EE4
       mov bl, 004h
       mov cx, 4
       int 10h
       int 21h

	mov ah, 2
       mov dl, 65
       mov dh, 15
       int 10h

       mov ah, 9
       mov dx, OFFSET EE2
       mov bl, 001h
       mov cx, 2
       int 10h
       int 21h

	mov ah, 2
       mov dl, 67
       mov dh, 15
       int 10h

       mov ah, 9
       mov dx, OFFSET EE2
       mov bl, 004h
       mov cx, 2
       int 10h
       int 21h




	mov ah, 2
       mov dl, 69
       mov dh, 15
       int 10h

       mov ah, 9
       mov dx, OFFSET EE4
       mov bl, 001h
       mov cx, 4
       int 10h
       int 21h




	mov ah, 2
       mov dl, 73
       mov dh, 15
       int 10h

       mov ah, 9
       mov dx, OFFSET EE2
       mov bl, 00h
       mov cx, 2
       int 10h
       int 21h


	mov ah, 2
       mov dl, 45
       mov dh, 16
       int 10h

       mov ah, 9
       mov dx, OFFSET EE2
       mov bl, 00h
       mov cx, 2
       int 10h
       int 21h
	mov ah, 2
       mov dl, 47
       mov dh, 16
       int 10h

       mov ah, 9
       mov dx, OFFSET EE14
       mov bl, 001h
       mov cx, 14
       int 10h
       int 21h

	mov ah, 2
       mov dl, 61
       mov dh, 16
       int 10h

       mov ah, 9
       mov dx, OFFSET EE4
       mov bl, 004h
       mov cx, 4
       int 10h
       int 21h

	mov ah, 2
       mov dl, 65
       mov dh, 16
       int 10h

       mov ah, 9
       mov dx, OFFSET EE2
       mov bl, 001h
       mov cx, 2
       int 10h
       int 21h

	mov ah, 2
       mov dl, 67
       mov dh, 16
       int 10h

       mov ah, 9
       mov dx, OFFSET EE4
       mov bl, 004h
       mov cx, 4
       int 10h
       int 21h




	mov ah, 2
       mov dl, 71
       mov dh, 16
       int 10h

       mov ah, 9
       mov dx, OFFSET EE2
       mov bl, 001h
       mov cx, 2
       int 10h
       int 21h




	mov ah, 2
       mov dl, 73
       mov dh, 16
       int 10h

       mov ah, 9
       mov dx, OFFSET EE2
       mov bl, 00h
       mov cx, 2
       int 10h
       int 21h


	mov ah, 2
       mov dl, 45
       mov dh, 18
       int 10h

       mov ah, 9
       mov dx, OFFSET EE30
       mov bl, 00h
       mov cx, 30
       int 10h
       int 21h



	mov ah, 2
       mov dl, 5
       mov dh, 17
       int 10h

       mov ah, 9
       mov dx, OFFSET EE2
       mov bl, 00h
       mov cx, 2
       int 10h
       int 21h

	mov ah, 2
       mov dl, 45
       mov dh, 17
       int 10h

       mov ah, 9
       mov dx, OFFSET EE30
       mov bl, 00h
       mov cx, 30
       int 10h
       int 21h

	mov ah, 2
       mov dl, 45
       mov dh, 17
       int 10h

       mov ah, 9
       mov dx, OFFSET EE2
       mov bl, 00h
       mov cx, 2
       int 10h
       int 21h
	mov ah, 2
       mov dl, 47
       mov dh, 17
       int 10h

       mov ah, 9
       mov dx, OFFSET EE26
       mov bl, 001h
       mov cx, 26
       int 10h
       int 21h

	mov ah, 2
       mov dl, 73
       mov dh, 17
       int 10h

       mov ah, 9
       mov dx, OFFSET EE2
       mov bl, 00h
       mov cx, 2
       int 10h
       int 21h

	mov ah, 2
       mov dl, 14
       mov dh, 20
       int 10h

       mov ah, 9
       mov dx, OFFSET text1
       mov bl, 034h
       mov cx, 2
       int 10h
       int 21h

	mov ah, 2
       mov dl, 16
       mov dh, 20
       int 10h

       mov ah, 9
       mov dx, OFFSET text1a
       mov bl, 030h
       mov cx, 10
       int 10h
       int 21h

	mov ah, 2
       mov dl, 57
       mov dh, 20
       int 10h

       mov ah, 9
       mov dx, OFFSET text2
       mov bl, 034h
       mov cx, 2
       int 10h
       int 21h

	mov ah, 2
       mov dl, 59
       mov dh, 20
       int 10h

       mov ah, 9
       mov dx, OFFSET text2a
       mov bl, 030h
       mov cx, 4
       int 10h
       int 21h

	mov ah, 2
       mov dl, 29
       mov dh, 1
       int 10h

       mov ah, 9
       mov dx, OFFSET text3
       mov bl, 003h
       mov cx, 15
       int 10h
       int 21h

	mov ah, 2
       mov dl, 28
       mov dh, 2
       int 10h

       mov ah, 9
       mov dx, OFFSET text3a
       mov bl, 008h
       mov cx, 23
       int 10h
       int 21h

        mov ah,2
        mov dl,60
        mov dh,22
        int 10h

        mov ah,9
        mov dx, OFFSET ex1
        mov bl,008h
        mov cx,11
        int 10h
        int 21h

        mov ah,2
        mov dl,60
        mov dh,23
        int 10h

        mov ah,9
        mov dx, OFFSET exa
        mov bl,008h
        mov cx,11
        int 10h
        int 21h

        mov ah,2
        mov dl,60
        mov dh,24
        int 10h

        mov ah,9
        mov dx, OFFSET ex2
        mov bl,008h
        mov cx,11
        int 10h
        int 21h

me:     mov ah,7
        int 21h
        cmp al,'c'
        je calcu
        cmp al,'g'
        je game
        cmp al, 'e'
        je exitt
        jne me


exitt: mov ah, 4ch
        int 21h

menu endp


calcu proc near
     mov ax,@data
    mov ds,ax
    
    mov ax, 03
    int 10h

     ;addition
        mov ah, 2
        mov dl, 4
        mov dh, 1
        int 10h

        mov ah, 9
        lea dx, calcu1a
        mov bl, 02h
        mov cx, 18
        int 10h
        int 21h

        mov ah, 2
        mov dl, 4
        mov dh, 2
        int 10h

        mov ah, 9
        lea dx, calcu1b
        mov bl, 02h
        mov cx, 20
        int 10h
        int 21h

        mov ah, 2
        mov dl, 4
        mov dh, 3
        int 10h

        mov ah, 9
        lea dx, calcu1c
        mov bl, 02h
        mov cx, 20
        int 10h
        int 21h

        mov ah, 2
        mov dl, 4
        mov dh, 4
        int 10h

        mov ah, 9
        lea dx, calcu1d
        mov bl, 02h
        mov cx, 20
        int 10h
        int 21h

        mov ah, 2
        mov dl, 4
        mov dh, 5
        int 10h

        mov ah, 9
        lea dx, calcu1e
        mov bl, 02h
        mov cx, 20
        int 10h
        int 21h

        mov ah, 2
        mov dl, 4
        mov dh, 6
        int 10h

        mov ah, 9
        lea dx, calcu1f
        mov bl, 02h
        mov cx, 20
        int 10h
        int 21h

        mov ah, 2
        mov dl, 4
        mov dh, 7
        int 10h

        mov ah, 9
        lea dx, calcu1g
        mov bl, 02h
        mov cx, 20
        int 10h
        int 21h

        mov ah, 2
        mov dl, 4
        mov dh, 8
        int 10h

        mov ah, 9
        lea dx, calcu1h
        mov bl, 02h
        mov cx, 20
        int 10h
        int 21h

        mov ah, 2
        mov dl, 4
        mov dh, 9
        int 10h

        mov ah, 9
        lea dx, calcu1i
        mov bl, 02h
        mov cx, 20
        int 10h
        int 21h

        mov ah, 2
        mov dl, 4
        mov dh, 10
        int 10h

        mov ah, 9
        lea dx, calcu1j
        mov bl, 02h
        mov cx, 18
        int 10h
        int 21h

        mov ah, 2
        mov dl, 4
        mov dh, 11
        int 10h

        mov ah, 9
        lea dx, calcu1k
        mov bl, 02h
        mov cx, 7
        int 10h
        int 21h


      ;subtraction
        mov ah, 2
        mov dl, 24
        mov dh, 1
        int 10h

        mov ah, 9
        lea dx, calcu2a
        mov bl, 01h
        mov cx, 18
        int 10h
        int 21h

        mov ah, 2
        mov dl, 24
        mov dh, 2
        int 10h

        mov ah, 9
        lea dx, calcu2b
        mov bl, 01h
        mov cx, 20
        int 10h
        int 21h

        mov ah, 2
        mov dl, 24
        mov dh, 3
        int 10h

        mov ah, 9
        lea dx, calcu2c
        mov bl, 01h
        mov cx, 20
        int 10h
        int 21h

        mov ah, 2
        mov dl, 24
        mov dh, 4
        int 10h

        mov ah, 9
        lea dx, calcu2d
        mov bl, 01h
        mov cx, 20
        int 10h
        int 21h

        mov ah, 2
        mov dl, 24
        mov dh, 5
        int 10h

        mov ah, 9
        lea dx, calcu2e
        mov bl, 01h
        mov cx, 20
        int 10h
        int 21h

        mov ah, 2
        mov dl, 24
        mov dh, 6
        int 10h

        mov ah, 9
        lea dx, calcu2f
        mov bl, 01h
        mov cx, 20
        int 10h
        int 21h

        mov ah, 2
        mov dl, 24
        mov dh, 7
        int 10h

        mov ah, 9
        lea dx, calcu2g
        mov bl, 01h
        mov cx, 20
        int 10h
        int 21h

        mov ah, 2
        mov dl, 24
        mov dh, 8
        int 10h

        mov ah, 9
        lea dx, calcu2h
        mov bl, 01h
        mov cx, 20
        int 10h
        int 21h

        mov ah, 2
        mov dl, 24
        mov dh, 9                                                                                                                               
        int 10h

        mov ah, 9
        lea dx, calcu2i
        mov bl, 01h
        mov cx, 20
        int 10h
        int 21h

        mov ah, 2
        mov dl, 24
        mov dh, 10
        int 10h

        mov ah, 9
        lea dx, calcu2j
        mov bl, 01h
        mov cx, 18
        int 10h
        int 21h

        mov ah, 2
        mov dl, 24
        mov dh, 11
        int 10h

        mov ah, 9
        lea dx, calcu2k
        mov bl, 01h
        mov cx, 5
        int 10h
        int 21h


     ;multiplication
        mov ah, 2
        mov dl, 4
        mov dh, 13
        int 10h

        mov ah, 9
        lea dx, calcu3a
        mov bl, 05h
        mov cx, 18
        int 10h
        int 21h

        mov ah, 2
        mov dl, 4
        mov dh, 14
        int 10h

        mov ah, 9
        lea dx, calcu3b
        mov bl, 05h
        mov cx, 20
        int 10h
        int 21h

        mov ah, 2
        mov dl, 4
        mov dh, 15
        int 10h

        mov ah, 9
        lea dx, calcu3c
        mov bl, 05h
        mov cx, 20
        int 10h
        int 21h

        mov ah, 2
        mov dl, 4
        mov dh, 16
        int 10h

        mov ah, 9
        lea dx, calcu3d
        mov bl, 05h
        mov cx, 20
        int 10h
        int 21h

        mov ah, 2
        mov dl, 4
        mov dh, 17
        int 10h

        mov ah, 9
        lea dx, calcu3e
        mov bl, 05h
        mov cx, 20
        int 10h
        int 21h

        mov ah, 2
        mov dl, 4
        mov dh, 18
        int 10h

        mov ah, 9
        lea dx, calcu3f
        mov bl, 05h
        mov cx, 20
        int 10h
        int 21h

        mov ah, 2
        mov dl, 4
        mov dh, 19
        int 10h

        mov ah, 9
        lea dx, calcu3g
        mov bl, 05h
        mov cx, 20
        int 10h
        int 21h

        mov ah, 2
        mov dl, 4
        mov dh, 20
        int 10h

        mov ah, 9
        lea dx, calcu3h
        mov bl, 05h
        mov cx, 20
        int 10h
        int 21h

        mov ah, 2
        mov dl, 4
        mov dh, 21
        int 10h

        mov ah, 9
        lea dx, calcu3i
        mov bl, 05h
        mov cx, 20
        int 10h
        int 21h

        mov ah, 2
        mov dl, 4
        mov dh, 22
        int 10h

        mov ah, 9
        lea dx, calcu3j
        mov bl, 05h
        mov cx, 18
        int 10h
        int 21h

        mov ah, 2
        mov dl, 4
        mov dh, 23
        int 10h

        mov ah, 9
        lea dx, calcu3k
        mov bl, 05h
        mov cx, 4
        int 10h
        int 21h
                       
      ;division
        mov ah, 2
        mov dl, 24
        mov dh, 13
        int 10h

        mov ah, 9
        lea dx, calcu4a
        mov bl, 04h
        mov cx, 18
        int 10h
        int 21h

        mov ah, 2
        mov dl, 24
        mov dh, 14
        int 10h

        mov ah, 9
        lea dx, calcu4b
        mov bl, 04h
        mov cx, 20
        int 10h
        int 21h

        mov ah, 2
        mov dl, 24
        mov dh, 15
        int 10h

        mov ah, 9
        lea dx, calcu4c
        mov bl, 04h
        mov cx, 20
        int 10h
        int 21h

        mov ah, 2
        mov dl, 24
        mov dh, 16
        int 10h

        mov ah, 9
        lea dx, calcu4d
        mov bl, 04h
        mov cx, 20
        int 10h
        int 21h

        mov ah, 2
        mov dl, 24
        mov dh, 17
        int 10h

        mov ah, 9
        lea dx, calcu4e
        mov bl, 04h
        mov cx, 20
        int 10h
        int 21h

        mov ah, 2
        mov dl, 24
        mov dh, 18
        int 10h

        mov ah, 9
        lea dx, calcu4f
        mov bl, 04h
        mov cx, 20
        int 10h
        int 21h

        mov ah, 2
        mov dl, 24
        mov dh, 19
        int 10h

        mov ah, 9
        lea dx, calcu4g
        mov bl, 04h
        mov cx, 20
        int 10h
        int 21h

        mov ah, 2
        mov dl, 24
        mov dh, 20
        int 10h

        mov ah, 9
        lea dx, calcu4h
        mov bl, 04h
        mov cx, 20
        int 10h
        int 21h

        mov ah, 2
        mov dl, 24
        mov dh, 21
        int 10h

        mov ah, 9
        lea dx, calcu4i
        mov bl, 04h
        mov cx, 20
        int 10h
        int 21h

        mov ah, 2
        mov dl, 24
        mov dh, 22
        int 10h

        mov ah, 9
        lea dx, calcu4j
        mov bl, 04h
        mov cx, 18
        int 10h
        int 21h

        mov ah, 2
        mov dl, 24
        mov dh, 23
        int 10h

        mov ah, 9
        lea dx, calcu4k
        mov bl, 04h
        mov cx, 7
        int 10h
        int 21h          

        jmp choice

wrongg:
    lea dx,tw
    mov ah,9
    int 21h

choice:
    lea dx,t21
    mov ah,9
    int 21h
    
    mov ah,1
    int 21h
    
    cmp al,61h
    jl wrongg
    cmp al,7Ah
    jg wrongg

    cmp al, 61h
    je summ
    cmp al, 6Dh
    je prod
    cmp al, 73h
    je diff
    cmp al, 64h
    call quot

    cmp al, 'b'
    call menu

again:
    lea dx,t9           ;AGAIN
    mov ah,9
    int 21h
    
    mov ah,1
    int 21h
    
    cmp al, 59H
    je calcu
    cmp al, 79H
    je calcu
    call exit
    
    
summ:                ;++++++ SUM ++++++
    mov ax, 03
    int 10h

        mov ah, 2
        mov dl, 3
        mov dh, 2
        int 10h

        mov ah, 9
        lea dx, add1
        mov bl, 0Ah
        mov cx, 41
        int 10h
        int 21h

        mov ah, 2
        mov dl, 3
        mov dh, 3
        int 10h

        mov ah, 9
        lea dx, add2
        mov bl, 0Ah
        mov cx, 41
        int 10h
        int 21h

        mov ah, 2
        mov dl, 3
        mov dh, 4
        int 10h

        mov ah, 9
        lea dx, add3
        mov bl, 0Ah
        mov cx, 41
        int 10h
        int 21h

        mov ah, 2
        mov dl, 3
        mov dh, 5
        int 10h

        mov ah, 9
        lea dx, add4
        mov bl, 0Ah
        mov cx, 41
        int 10h
        int 21h
          
    call getnum
    
    lea dx,t5
    mov ah,9
    int 21h

    mov  ax,num2
    add  ax,num1
    
    xor  cx,cx   ;counts the digits
    mov  bx,10   ;fixed divider
    
    add_more:
        xor  dx,dx   ;word division needs to zero dx!
        div  bx
        push dx      ;remainder [0,9]
        inc  cx      ;one digit more
        test ax,ax
    jnz  add_more    ;continue until ax is empty

    disp_sum:
        pop  dx
        add  dl,48   ;turn into a character, from [0,9] to ["0","9"]
        mov  ah,02h  ;dos displaycharacter function
        int  21h
    loop disp_sum    ;continue for all digits   
    jmp again
    
prod:               ;xxxxxxx PROD xxxxxxxx
    mov ax, 03
    int 10h

        mov ah, 2
        mov dl, 3
        mov dh, 2
        int 10h

        mov ah, 9
        lea dx, mul1
        mov bl, 0Dh
        mov cx, 71
        int 10h
        int 21h

        mov ah, 2
        mov dl, 3
        mov dh, 3
        int 10h

        mov ah, 9
        lea dx, mul2
        mov bl, 0Dh
        mov cx, 71
        int 10h
        int 21h

        mov ah, 2
        mov dl, 3
        mov dh, 4
        int 10h

        mov ah, 9
        lea dx, mul3
        mov bl, 0Dh
        mov cx, 71
        int 10h
        int 21h

        mov ah, 2
        mov dl, 3
        mov dh, 5
        int 10h

        mov ah, 9
        lea dx, mul4
        mov bl, 0Dh
        mov cx, 71
        int 10h
        int 21h


    call getnum
    
    lea dx,t6
    mov ah,9
    int 21h
    
    mov  ax,num1
    mul num2
    
    xor  cx,cx   ;counts the digits
    mov  bx,10   ;fixed divider
    
    mult_more:
        xor  dx,dx   ;word division needs to zero dx!
        div  bx
        push dx      ;remainder [0,9]
        inc  cx      ;one digit more
        test ax,ax
    jnz  mult_more    ;continue until ax is empty

    disp_mult:
        pop  dx
        add  dl,48   ;turn into a character, from [0,9] to ["0","9"]
        mov  ah,02h  ;dos displaycharacter function
        int  21h
    loop disp_mult    ;continue for all digits   
    
    jmp again

diff:                 ;-------- DIFFERENCE ---------
     mov ax, 03
     int 10h
     
        mov ah, 2
        mov dl, 3
        mov dh, 2
        int 10h

        mov ah, 9
        lea dx, sub1
        mov bl, 09h
        mov cx, 56      
        int 10h
        int 21h

        mov ah, 2
        mov dl, 3
        mov dh, 3
        int 10h

        mov ah, 9
        lea dx, sub2
        mov bl, 09h
        mov cx, 56
        int 10h
        int 21h

        mov ah, 2
        mov dl, 3
        mov dh, 4
        int 10h

        mov ah, 9
        lea dx, sub3
        mov bl, 09h
        mov cx, 56
        int 10h
        int 21h

        mov ah, 2
        mov dl, 3
        mov dh, 5
        int 10h

        mov ah, 9
        lea dx, sub4
        mov bl, 09h
        mov cx, 56
        int 10h
        int 21h


    call getnum
    
    lea dx,t7
    mov ah,9
    int 21h
    
    mov ax, num1
    cmp num2, ax
    jl not_nega
    jge nega
    
    nega:
    mov ax, 0
    lea dx, negsign
    mov ah, 9h
    int 21h
    mov ax, num2
    sub ax, num1
    jmp cont
    
    not_nega:
    mov ax, 0
    mov  ax,num1
    sub  ax,num2
    jmp cont
    
    cont:
    xor  cx,cx   ;counts the digits
    mov  bx,10   ;fixed divider
    
    sub_more:
        xor  dx,dx   ;word division needs to zero dx!
        div  bx
        push dx      ;remainder [0,9]
        inc  cx      ;one digit more
        test ax,ax
    jnz  sub_more    ;continue until ax is empty

    disp_sub:
        pop  dx
        add  dl,48   ;turn into a character, from [0,9] to ["0","9"]
        mov  ah,02h  ;dos displaycharacter function
        int  21h
    loop disp_sub    ;continue for all digits 
    
    jmp again
    
quot:                   ;//////////QUOTIENT///////////
     mov ax, 03
     int 10h
     
        mov ah, 2
        mov dl, 3
        mov dh, 2
        int 10h

        mov ah, 9
        lea dx, div1
        mov bl, 0Ch
        mov cx, 41      
        int 10h
        int 21h

        mov ah, 2
        mov dl, 3
        mov dh, 3
        int 10h

        mov ah, 9
        lea dx, div2
        mov bl, 0Ch
        mov cx, 41
        int 10h
        int 21h

        mov ah, 2
        mov dl, 3
        mov dh, 4
        int 10h

        mov ah, 9
        lea dx, div3
        mov bl, 0Ch
        mov cx, 41
        int 10h
        int 21h

        mov ah, 2
        mov dl, 3
        mov dh, 5
        int 10h

        mov ah, 9
        lea dx, div4
        mov bl, 0Ch
        mov cx, 41
        int 10h
        int 21h


    call getnum
    
    lea dx,t8
    mov ah,9
    int 21h
    
    mov dx, 0
    mov  ax,num1
    div num2
    
    xor  cx,cx   ;counts the digits
    mov  bx,10   ;fixed divider
    
    divi_more:
        xor  dx,dx   ;word division needs to zero dx!
        div  bx
        push dx      ;remainder [0,9]
        inc  cx      ;one digit more
        test ax,ax
    jnz  divi_more    ;continue until ax is empty

    disp_divi:
        pop  dx
        add  dl,48   ;turn into a character, from [0,9] to ["0","9"]
        mov  ah,02h  ;dos displaycharacter function
        int  21h
    loop disp_divi    ;continue for all digits   
    
    jmp again
    ret
    
getnum:
    lea dx,t3           ;=======GET NUMBERS=======
    mov ah,9
    int 21h

    mov ah,1
    int 21h  
    sub al,30h
    mov ah,0          
    mul aa             ;num1's 1st digit
    mov num1,ax

    mov ah,1
    int 21h  
    sub al,30h
    mul bb             ;num1's 2nd digit
    add num1,ax

    mov ah,1
    int 21h  
    sub al,30h
    mul cc             ;num1's 3rd digit
    add num1,ax

    mov ah,1
    int 21h           ;num1's 4th digit
    sub al,30h
    mov ah,0          
    add num1,ax

    lea dx, t4
    mov ah,9h
    int 21h

    mov ah,1
    int 21h  
    sub al,30h
    mov ah,0          
    mul aa             ;num2's 1st digit
    mov num2,ax

    mov ah,1
    int 21h  
    sub al,30h
    mul bb             ;num2's 2nd digit
    add num2,ax

    mov ah,1
    int 21h  
    sub al,30h
    mul cc             ;num2's 3rd digit
    add num2,ax

    mov ah,1
    int 21h           ;num2's 4th digit
    sub al,30h
    mov ah,0           
    add num2,ax
    ret

exit: call menu

calcu endp


game    proc near
        mov ax,3
        int 10h

        mov ax,@data
        mov ds,ax

        mov ah,2
        mov dl,60
        mov dh,22
        int 10h

        mov ah,9
        mov dx, OFFSET b1
        mov bl,008h
        mov cx,10
        int 10h
        int 21h

        mov ah,2
        mov dl,60
        mov dh,23
        int 10h

        mov ah,9
        mov dx, OFFSET ba
        mov bl,008h
        mov cx,10
        int 10h
        int 21h

        mov ah,2
        mov dl,60
        mov dh,24
        int 10h

        mov ah,9
        mov dx, OFFSET b2
        mov bl,008h
        mov cx,10
        int 10h
        int 21h


        mov ah,2
        mov dl,4
        mov dh,1
        int 10h

        mov ah,9
        mov dx, OFFSET m
        mov bl,009h
        mov cx,33
        int 10h
        int 21h

        mov ah,2
        mov dl,4
        mov dh,2
        int 10h

        mov ah,9
        mov dx, OFFSET m
        mov bl,009h
        mov cx,31
        int 10h
        int 21h

        mov ah,2
        mov dl,9
        mov dh,2
        int 10h

        mov ah,9
        mov dx, OFFSET b
        mov bl,00h
        mov cx,2
        int 10h
        int 21h

        mov ah,2
        mov dl,4
        mov dh,3
        int 10h

        mov ah,9
        mov dx, OFFSET m
        mov bl,009h
        mov cx,29
        int 10h
        int 21h

        mov ah,2
        mov dl,4
        mov dh,3
        int 10h

        mov ah,9
        mov dx, OFFSET e
        mov bl,00h
        mov cx,9
        int 10h
        int 21h

        mov ah,2
        mov dl,4
        mov dh,4
        int 10h

        mov ah,9
        mov dx, OFFSET m
        mov bl,009h
        mov cx,27
        int 10h
        int 21h

        mov ah,2
        mov dl,9
        mov dh,4
        int 10h

        mov ah,9
        mov dx, OFFSET b
        mov bl,00h
        mov cx,2
        int 10h
        int 21h

        mov ah,2
        mov dl,4
        mov dh,5
        int 10h

        mov ah,9
        mov dx, OFFSET m
        mov bl,009h
        mov cx,25
        int 10h
        int 21h

        mov ah,2
        mov dl,4
        mov dh,6
        int 10h

        mov ah,9
        mov dx, OFFSET m
        mov bl,009h
        mov cx,23
        int 10h
        int 21h

        mov ah,2
        mov dl,9
        mov dh,6
        int 10h

        mov ah,9
        mov dx, OFFSET b
        mov bl,00h
        mov cx,2
        int 10h
        int 21h

        mov ah,2
        mov dl,4
        mov dh,7
        int 10h

        mov ah,9
        mov dx, OFFSET m
        mov bl,009h
        mov cx,21
        int 10h
        int 21h

        mov ah,2
        mov dl,4
        mov dh,7
        int 10h

        mov ah,9
        mov dx, OFFSET e
        mov bl,00h
        mov cx,9
        int 10h
        int 21h

        mov ah,2
        mov dl,4
        mov dh,8
        int 10h

        mov ah,9
        mov dx, OFFSET m
        mov bl,009h
        mov cx,19
        int 10h
        int 21h

        mov ah,2
        mov dl,9
        mov dh,8
        int 10h

        mov ah,9
        mov dx, OFFSET b
        mov bl,00h
        mov cx,2
        int 10h
        int 21h

        mov ah,2
        mov dl,4
        mov dh,9
        int 10h

        mov ah,9
        mov dx, OFFSET m
        mov bl,009h
        mov cx,17
        int 10h
        int 21h

        mov ah,2
        mov dl,4
        mov dh,10
        int 10h

        mov ah,9
        mov dx, OFFSET m
        mov bl,009h
        mov cx,15
        int 10h
        int 21h

        mov ah,2
        mov dl,9
        mov dh,10
        int 10h

        mov ah,9
        mov dx, OFFSET b
        mov bl,00h
        mov cx,2
        int 10h
        int 21h

        mov ah,2
        mov dl,4
        mov dh,11
        int 10h

        mov ah,9
        mov dx, OFFSET m
        mov bl,009h
        mov cx,13
        int 10h
        int 21h

        mov ah,2
        mov dl,4
        mov dh,11
        int 10h

        mov ah,9
        mov dx, OFFSET e
        mov bl,00h
        mov cx,9
        int 10h
        int 21h

        mov ah,2
        mov dl,4
        mov dh,12
        int 10h

        mov ah,9
        mov dx, OFFSET m
        mov bl,009h
        mov cx,12
        int 10h
        int 21h

        mov ah,2
        mov dl,9
        mov dh,12
        int 10h

        mov ah,9
        mov dx, OFFSET b
        mov bl,00h
        mov cx,2
        int 10h
        int 21h

        mov ah,2
        mov dl,4
        mov dh,13
        int 10h

        mov ah,9
        mov dx, OFFSET m
        mov bl,009h
        mov cx,12
        int 10h
        int 21h

        mov ah,2
        mov dl,4
        mov dh,14
        int 10h

        mov ah,9
        mov dx, OFFSET m
        mov bl,009h
        mov cx,11
        int 10h
        int 21h

        mov ah,2
        mov dl,9
        mov dh,14
        int 10h

        mov ah,9
        mov dx, OFFSET b
        mov bl,00h
        mov cx,2
        int 10h
        int 21h

        mov ah,2
        mov dl,4
        mov dh,15
        int 10h

        mov ah,9
        mov dx, OFFSET m
        mov bl,009h
        mov cx,11
        int 10h
        int 21h

        mov ah,2
        mov dl,4
        mov dh,15
        int 10h

        mov ah,9
        mov dx, OFFSET e
        mov bl,00h
        mov cx,9
        int 10h
        int 21h

        mov ah,2
        mov dl,4
        mov dh,16
        int 10h

        mov ah,9
        mov dx, OFFSET m
        mov bl,009h
        mov cx,12
        int 10h
        int 21h

        mov ah,2
        mov dl,9
        mov dh,16
        int 10h

        mov ah,9
        mov dx, OFFSET b
        mov bl,00h
        mov cx,2
        int 10h
        int 21h

        mov ah,2
        mov dl,4
        mov dh,17
        int 10h

        mov ah,9
        mov dx, OFFSET m
        mov bl,009h
        mov cx,12
        int 10h
        int 21h

        mov ah,2
        mov dl,4
        mov dh,18
        int 10h

        mov ah,9
        mov dx, OFFSET m
        mov bl,009h
        mov cx,13
        int 10h
        int 21h

        mov ah,2
        mov dl,9
        mov dh,18
        int 10h

        mov ah,9
        mov dx, OFFSET b
        mov bl,00h
        mov cx,2
        int 10h
        int 21h

        mov ah,2
        mov dl,4
        mov dh,19
        int 10h

        mov ah,9
        mov dx, OFFSET m
        mov bl,009h
        mov cx,13
        int 10h
        int 21h

        mov ah,2
        mov dl,4
        mov dh,19
        int 10h

        mov ah,9
        mov dx, OFFSET e
        mov bl,00h
        mov cx,9
        int 10h
        int 21h

        mov ah,2
        mov dl,4
        mov dh,20
        int 10h

        mov ah,9
        mov dx, OFFSET m
        mov bl,009h
        mov cx,14
        int 10h
        int 21h

        mov ah,2
        mov dl,9
        mov dh,20
        int 10h

        mov ah,9
        mov dx, OFFSET b
        mov bl,00h
        mov cx,2
        int 10h
        int 21h

        mov ah,2
        mov dl,4
        mov dh,21
        int 10h

        mov ah,9
        mov dx, OFFSET m
        mov bl,009h
        mov cx,15
        int 10h
        int 21h

        mov ah,2                           ;T
        mov dl,34
        mov dh,4
        int 10h

        mov ah,9
        mov dx, OFFSET h
        mov bl,0f2h
        mov cx,8
        int 10h
        int 21h

        mov ah,2
        mov dl,37
        mov dh,5
        int 10h

        mov ah,9
        mov dx, OFFSET b
        mov bl,0f2h
        mov cx,2
        int 10h
        int 21h

        mov ah,2
        mov dl,37
        mov dh,6
        int 10h

        mov ah,9
        mov dx, OFFSET b
        mov bl,0f2h
        mov cx,2
        int 10h
        int 21h

        mov ah,2
        mov dl,37
        mov dh,7
        int 10h

        mov ah,9
        mov dx, OFFSET b
        mov bl,0f2h
        mov cx,2
        int 10h
        int 21h

        mov ah,2
        mov dl,37
        mov dh,8
        int 10h

        mov ah,9
        mov dx, OFFSET b
        mov bl,0f2h
        mov cx,2
        int 10h
        int 21h

        mov ah,2                         ;R
        mov dl,43
        mov dh,4
        int 10h

        mov ah,9
        mov dx, OFFSET g
        mov bl,0f2h
        mov cx,7
        int 10h
        int 21h

        mov ah,2
        mov dl,43
        mov dh,5
        int 10h

        mov ah,9
        mov dx, OFFSET b
        mov bl,0f2h
        mov cx,2
        int 10h
        int 21h

        mov ah,2
        mov dl,48
        mov dh,5
        int 10h

        mov ah,9
        mov dx, OFFSET b
        mov bl,0f2h
        mov cx,2
        int 10h
        int 21h

        mov ah,2
        mov dl,43
        mov dh,6
        int 10h

        mov ah,9
        mov dx, OFFSET g
        mov bl,0f2h
        mov cx,7
        int 10h
        int 21h

        mov ah,2
        mov dl,43
        mov dh,7
        int 10h

        mov ah,9
        mov dx, OFFSET b
        mov bl,0f2h
        mov cx,2
        int 10h
        int 21h

        mov ah,2
        mov dl,46
        mov dh,7
        int 10h

        mov ah,9
        mov dx, OFFSET b
        mov bl,0f2h
        mov cx,2
        int 10h
        int 21h

        mov ah,2
        mov dl,43
        mov dh,8
        int 10h

        mov ah,9
        mov dx, OFFSET b
        mov bl,0f2h
        mov cx,2
        int 10h
        int 21h

        mov ah,2
        mov dl,47
        mov dh,8
        int 10h

        mov ah,9
        mov dx, OFFSET c
        mov bl,0f2h
        mov cx,3
        int 10h
        int 21h

        mov ah,2                           ;U
        mov dl,51
        mov dh,4
        int 10h

        mov ah,9
        mov dx, OFFSET b
        mov bl,0f2h
        mov cx,2
        int 10h
        int 21h

        mov ah,2
        mov dl,51
        mov dh,5
        int 10h

        mov ah,9
        mov dx, OFFSET b
        mov bl,0f2h
        mov cx,2
        int 10h
        int 21h

        mov ah,2
        mov dl,51
        mov dh,6
        int 10h

        mov ah,9
        mov dx, OFFSET b
        mov bl,0f2h
        mov cx,2
        int 10h
        int 21h

        mov ah,2
        mov dl,51
        mov dh,7
        int 10h

        mov ah,9
        mov dx, OFFSET b
        mov bl,0f2h
        mov cx,2
        int 10h
        int 21h

        mov ah,2
        mov dl,52
        mov dh,8
        int 10h

        mov ah,9
        mov dx, OFFSET e
        mov bl,0f2h
        mov cx,5
        int 10h
        int 21h

        mov ah,2                          
        mov dl,56
        mov dh,4
        int 10h

        mov ah,9
        mov dx, OFFSET b
        mov bl,0f2h
        mov cx,2
        int 10h
        int 21h

        mov ah,2
        mov dl,56
        mov dh,5
        int 10h

        mov ah,9
        mov dx, OFFSET b
        mov bl,0f2h
        mov cx,2
        int 10h
        int 21h

        mov ah,2
        mov dl,56
        mov dh,6
        int 10h

        mov ah,9
        mov dx, OFFSET b
        mov bl,0f2h
        mov cx,2
        int 10h
        int 21h

        mov ah,2
        mov dl,56
        mov dh,7
        int 10h

        mov ah,9
        mov dx, OFFSET b
        mov bl,0f2h
        mov cx,2
        int 10h
        int 21h

        mov ah,2                           ;E
        mov dl,59
        mov dh,4
        int 10h

        mov ah,9
        mov dx, OFFSET g
        mov bl,0f2h
        mov cx,7
        int 10h
        int 21h

        mov ah,2
        mov dl,59
        mov dh,5
        int 10h

        mov ah,9
        mov dx, OFFSET b
        mov bl,0f2h
        mov cx,2
        int 10h
        int 21h

        mov ah,2
        mov dl,59
        mov dh,6
        int 10h

        mov ah,9
        mov dx, OFFSET e
        mov bl,0f2h
        mov cx,5
        int 10h
        int 21h

        mov ah,2
        mov dl,59
        mov dh,7
        int 10h

        mov ah,9
        mov dx, OFFSET b
        mov bl,0f2h
        mov cx,2
        int 10h
        int 21h

        mov ah,2
        mov dl,59
        mov dh,8
        int 10h

        mov ah,9
        mov dx, OFFSET g
        mov bl,0f2h
        mov cx,7
        int 10h
        int 21h

        mov ah,2                           ;F
        mov dl,25
        mov dh,14
        int 10h

        mov ah,9
        mov dx, OFFSET g
        mov bl,0f4h
        mov cx,7
        int 10h
        int 21h

        mov ah,2
        mov dl,25
        mov dh,15
        int 10h

        mov ah,9
        mov dx, OFFSET b
        mov bl,0f4h
        mov cx,2
        int 10h
        int 21h

        mov ah,2
        mov dl,25
        mov dh,16
        int 10h

        mov ah,9
        mov dx, OFFSET e
        mov bl,0f4h
        mov cx,5
        int 10h
        int 21h

        mov ah,2
        mov dl,25
        mov dh,17
        int 10h

        mov ah,9
        mov dx, OFFSET b
        mov bl,0f4h
        mov cx,2
        int 10h
        int 21h

        mov ah,2
        mov dl,25
        mov dh,18
        int 10h

        mov ah,9
        mov dx, OFFSET b
        mov bl,0f4h
        mov cx,2
        int 10h
        int 21h

        mov ah,2                         ;A
        mov dl,36
        mov dh,14
        int 10h

        mov ah,9
        mov dx, OFFSET c
        mov bl,0f4h
        mov cx,3
        int 10h
        int 21h

        mov ah,2
        mov dl,35
        mov dh,15
        int 10h

        mov ah,9
        mov dx, OFFSET e
        mov bl,0f4h
        mov cx,5
        int 10h
        int 21h

        mov ah,2
        mov dl,34
        mov dh,16
        int 10h

        mov ah,9
        mov dx, OFFSET b
        mov bl,0f4h
        mov cx,2
        int 10h
        int 21h

        mov ah,2
        mov dl,39
        mov dh,16
        int 10h

        mov ah,9
        mov dx, OFFSET b
        mov bl,0f4h
        mov cx,2
        int 10h
        int 21h

        mov ah,2
        mov dl,34
        mov dh,17
        int 10h

        mov ah,9
        mov dx, OFFSET g
        mov bl,0f4h
        mov cx,7
        int 10h
        int 21h

        mov ah,2
        mov dl,34
        mov dh,18
        int 10h

        mov ah,9
        mov dx, OFFSET b
        mov bl,0f4h
        mov cx,2
        int 10h
        int 21h

        mov ah,2
        mov dl,39
        mov dh,18
        int 10h

        mov ah,9
        mov dx, OFFSET b
        mov bl,0f4h
        mov cx,2
        int 10h
        int 21h

        mov ah,2                            ;L
        mov dl,43
        mov dh,14
        int 10h

        mov ah,9
        mov dx, OFFSET b
        mov bl,0f4h
        mov cx,2
        int 10h
        int 21h

        mov ah,2
        mov dl,43
        mov dh,15
        int 10h

        mov ah,9
        mov dx, OFFSET b
        mov bl,0f4h
        mov cx,2
        int 10h
        int 21h

        mov ah,2
        mov dl,43
        mov dh,16
        int 10h

        mov ah,9
        mov dx, OFFSET b
        mov bl,0f4h
        mov cx,2
        int 10h
        int 21h

        mov ah,2
        mov dl,43
        mov dh,17
        int 10h

        mov ah,9
        mov dx, OFFSET b
        mov bl,0f4h
        mov cx,2
        int 10h
        int 21h

        mov ah,2
        mov dl,43
        mov dh,18
        int 10h

        mov ah,9
        mov dx, OFFSET g
        mov bl,0f4h
        mov cx,7
        int 10h
        int 21h

        mov ah,2                            ;S
        mov dl,52
        mov dh,14
        int 10h

        mov ah,9
        mov dx, OFFSET f
        mov bl,0f4h
        mov cx,6
        int 10h
        int 21h

        mov ah,2
        mov dl,51
        mov dh,15
        int 10h

        mov ah,9
        mov dx, OFFSET b
        mov bl,0f4h
        mov cx,2
        int 10h
        int 21h

        mov ah,2
        mov dl,52
        mov dh,16
        int 10h

        mov ah,9
        mov dx, OFFSET e
        mov bl,0f4h
        mov cx,5
        int 10h
        int 21h

        mov ah,2
        mov dl,56
        mov dh,17
        int 10h

        mov ah,9
        mov dx, OFFSET b
        mov bl,0f4h
        mov cx,2
        int 10h
        int 21h

        mov ah,2
        mov dl,51
        mov dh,18
        int 10h

        mov ah,9
        mov dx, OFFSET f
        mov bl,0f4h
        mov cx,6
        int 10h
        int 21h

        mov ah,2                              ;E
        mov dl,59
        mov dh,14
        int 10h

        mov ah,9
        mov dx, OFFSET g
        mov bl,0f4h
        mov cx,7
        int 10h
        int 21h

        mov ah,2
        mov dl,59
        mov dh,15
        int 10h

        mov ah,9
        mov dx, OFFSET b
        mov bl,0f4h
        mov cx,2
        int 10h
        int 21h

        mov ah,2
        mov dl,59
        mov dh,16
        int 10h

        mov ah,9
        mov dx, OFFSET e
        mov bl,0f4h
        mov cx,5
        int 10h
        int 21h

        mov ah,2
        mov dl,59
        mov dh,17
        int 10h

        mov ah,9
        mov dx, OFFSET b
        mov bl,0f4h
        mov cx,2
        int 10h
        int 21h

        mov ah,2
        mov dl,59
        mov dh,18
        int 10h

        mov ah,9
        mov dx, OFFSET g
        mov bl,0f4h
        mov cx,7
        int 10h
        int 21h

        mov ah,2                           ;O
        mov dl,42
        mov dh,10
        int 10h

        mov ah,9
        mov dx, OFFSET d
        mov bl,00h
        mov cx,4
        int 10h
        int 21h

        mov ah,2
        mov dl,42
        mov dh,11
        int 10h

        mov ah,9
        mov dx, OFFSET a
        mov bl,00h
        mov cx,1
        int 10h
        int 21h

        mov ah,2
        mov dl,45
        mov dh,11
        int 10h

        mov ah,9
        mov dx, OFFSET a
        mov bl,00h
        mov cx,1
        int 10h
        int 21h

        mov ah,2
        mov dl,42
        mov dh,12
        int 10h

        mov ah,9
        mov dx, OFFSET d
        mov bl,00h
        mov cx,4
        int 10h
        int 21h

        mov ah,2                            ;r
        mov dl,47
        mov dh,10
        int 10h

        mov ah,9
        mov dx, OFFSET d
        mov bl,00h
        mov cx,4
        int 10h
        int 21h

        mov ah,2
        mov dl,47
        mov dh,11
        int 10h

        mov ah,9
        mov dx, OFFSET a
        mov bl,00h
        mov cx,1
        int 10h
        int 21h

        mov ah,2
        mov dl,47
        mov dh,12
        int 10h

        mov ah,9
        mov dx, OFFSET a
        mov bl,00h
        mov cx,1
        int 10h
        int 21h
        
        mov ah,2
        mov dl,38
        mov dh,19
        int 10h

        mov ah,9
        mov dx, OFFSET n
        mov bl,076h
        mov cx,10
        int 10h
        int 21h
        
        mov ah,2
        mov dl,38
        mov dh,20
        int 10h

        mov ah,9
        mov dx, OFFSET o
        mov bl,076h
        mov cx,10
        int 10h
        int 21h
        
        mov ah,2
        mov dl,38
        mov dh,21
        int 10h

        mov ah,9
        mov dx, OFFSET p
        mov bl,076h
        mov cx,10
        int 10h
        int 21h

        mov ah,2
        mov dl,32
        mov dh,24
        int 10h

        mov ah,9
        mov dx, OFFSET q
        mov bl,007h
        mov cx,10
        int 10h
        int 21h


play:   MOV AH, 7
        INT 21H
        cmp al, 'b'
        je menu
        cmp al, 'p'
        je ques1
        jne play

ques1   proc near
        mov ax,3
        int 10h

        mov ax,@data
        mov ds,ax

        call trufal
        call bg

        mov ah,2
        mov dl,28
        mov dh,6
        int 10h

        mov ah,9
        mov dx, OFFSET q11
        mov bl,007h
        mov cx,25
        int 10h
        int 21h

        mov ah,2
        mov dl,25
        mov dh,7
        int 10h

        mov ah,9
        mov dx, OFFSET q12
        mov bl,007h
        mov cx,25
        int 10h
        int 21h

        mov ah,2
        mov dl,25
        mov dh,8
        int 10h

        mov ah,9
        mov dx, OFFSET q13
        mov bl,007h
        mov cx,25
        int 10h
        int 21h

a1:     mov ah, 7
        int 21h
        cmp al, 'b'
        je menu
        cmp al, 't'
        je right1
        cmp al, 'f'
        je wrong1
        jne a1


wrong1: call sad

        mov ah,2
        mov dl, 16
        mov dh, 20
        int 10h

        mov ah,9
        mov dx, offset q14
        mov bl, 003h
        mov cx, 50
        int 10h
        int 21h

        mov ah,2
        mov dl, 18
        mov dh, 21
        int 10h

        mov ah,9
        mov dx, offset q14a
        mov bl, 003h
        mov cx, 45
        int 10h
        int 21h

        mov ah,2
        mov dl, 17
        mov dh, 22
        int 10h

        mov ah,9
        mov dx, offset q14b
        mov bl, 003h
        mov cx, 47
        int 10h
        int 21h

        mov ah,8
        int 21h
        jmp ques2



right1: call happy

        mov ah,2
        mov dl, 16
        mov dh, 20
        int 10h

        mov ah,9
        mov dx, offset q14
        mov bl, 003h
        mov cx, 50
        int 10h
        int 21h

        mov ah,2
        mov dl, 18
        mov dh, 21
        int 10h

        mov ah,9
        mov dx, offset q14a
        mov bl, 003h
        mov cx, 45
        int 10h
        int 21h

        mov ah,2
        mov dl, 17
        mov dh, 22
        int 10h

        mov ah,9
        mov dx, offset q14b
        mov bl, 003h
        mov cx, 47
        int 10h
        int 21h

        mov ah,8
        int 21h
        jmp ques2
        

ques1   endp

ques2   proc near
        mov ax, 3
        int 10h
       
        mov ax,@data
        mov ds,ax

        call trufal
        call bg

        mov ah,2
        mov dl,25
        mov dh,9
        int 10h

        mov ah,9
        mov dx, OFFSET q21
        mov bl,007h
        mov cx,25
        int 10h
        int 21h

a2:     mov ah, 7
        int 21h
        cmp al, 'b'
        je menu
        cmp al, 't'
        je right2
        cmp al, 'f'
        je wrong2
        jne a2


wrong2: call sad
        mov ah,2
        mov dl, 23
        mov dh, 20
        int 10h

        mov ah,9
        mov dx, offset q21
        mov bl, 003h
        mov cx, 38
        int 10h
        int 21h
        mov ah,8
        int 21h
        jmp ques3      

right2: call happy

        mov ah,2
        mov dl, 23
        mov dh, 20
        int 10h

        mov ah,9
        mov dx, offset q21
        mov bl, 003h
        mov cx, 38
        int 10h
        int 21h

        mov ah,8
        int 21h
        jmp ques3

ques2   endp


ques3   proc near
        mov ax, 3
        int 10h
       
        mov ax,@data
        mov ds,ax

        call trufal
        call bg

        mov ah,2
        mov dl,26
        mov dh,8
        int 10h

        mov ah,9
        mov dx, OFFSET q31
        mov bl,007h
        mov cx,25
        int 10h
        int 21h

        mov ah,2
        mov dl,24
        mov dh,9
        int 10h

        mov ah,9
        mov dx, OFFSET q32
        mov bl,007h
        mov cx,25
        int 10h
        int 21h

        mov ah,2
        mov dl,28
        mov dh,10
        int 10h

        mov ah,9
        mov dx, OFFSET q33
        mov bl,007h
        mov cx,25
        int 10h
        int 21h

a3:     mov ah, 7
        int 21h
        cmp al, 'b'
        je menu
        cmp al, 't'
        je wrong3
        cmp al, 'f'
        je right3
        jne a3

wrong3: call sad
        mov ah,2
        mov dl, 18
        mov dh, 20
        int 10h

        mov ah,9
        mov dx, offset q34
        mov bl, 003h
        mov cx, 48
        int 10h
        int 21h

        mov ah,2
        mov dl, 17
        mov dh, 21
        int 10h

        mov ah,9
        mov dx, offset q34a
        mov bl, 003h
        mov cx, 50
        int 10h
        int 21h

        mov ah,2
        mov dl, 15
        mov dh, 22
        int 10h

        mov ah,9
        mov dx, offset q34b
        mov bl, 003h
        mov cx, 55
        int 10h
        int 21h

        mov ah,2
        mov dl, 21
        mov dh, 23
        int 10h

        mov ah,9
        mov dx, offset q34c
        mov bl, 003h
        mov cx, 41
        int 10h
        int 21h

        mov ah,8
        int 21h
        jmp ques4

right3: call happy
        mov ah,2
        mov dl, 18
        mov dh, 20
        int 10h

        mov ah,9
        mov dx, offset q34
        mov bl, 003h
        mov cx, 48
        int 10h
        int 21h

        mov ah,2
        mov dl, 17
        mov dh, 21
        int 10h

        mov ah,9
        mov dx, offset q34a
        mov bl, 003h
        mov cx, 50
        int 10h
        int 21h

        mov ah,2
        mov dl, 15
        mov dh, 22
        int 10h

        mov ah,9
        mov dx, offset q34b
        mov bl, 003h
        mov cx, 55
        int 10h
        int 21h

        mov ah,2
        mov dl, 21
        mov dh, 23
        int 10h

        mov ah,9
        mov dx, offset q34c
        mov bl, 003h
        mov cx, 41
        int 10h
        int 21h

        mov ah,8
        int 21h
        jmp ques4

ques3   endp

ques4   proc near
        mov ax, 3
        int 10h
       
        mov ax,@data
        mov ds,ax

        call trufal
        call bg

        mov ah,2
        mov dl,27
        mov dh,9
        int 10h

        mov ah,9
        mov dx, OFFSET q41
        mov bl,007h
        mov cx,25
        int 10h
        int 21h

        mov ah,2
        mov dl,25
        mov dh,10
        int 10h

        mov ah,9
        mov dx, OFFSET q42
        mov bl,007h
        mov cx,25
        int 10h
        int 21h

a4:     mov ah, 7
        int 21h
        cmp al, 'b'
        je menu
        cmp al, 't'
        je right4
        cmp al, 'f'
        je wrong4
        jne a4


wrong4: call sad
        mov ah,2
        mov dl, 14
        mov dh, 20
        int 10h

        mov ah,9
        mov dx, offset q43
        mov bl, 003h
        mov cx, 55
        int 10h
        int 21h

        mov ah,2
        mov dl, 15
        mov dh, 21
        int 10h

        mov ah,9
        mov dx, offset q43a
        mov bl, 003h
        mov cx, 54
        int 10h
        int 21h

        mov ah,8
        int 21h
        jmp ques5

right4: call happy
        mov ah,2
        mov dl, 14
        mov dh, 20
        int 10h

        mov ah,9
        mov dx, offset q43
        mov bl, 003h
        mov cx, 55
        int 10h
        int 21h

        mov ah,2
        mov dl, 15
        mov dh, 21
        int 10h

        mov ah,9
        mov dx, offset q43a
        mov bl, 003h
        mov cx, 54
        int 10h
        int 21h

        mov ah,8
        int 21h
        jmp ques5

        
ques4   endp

ques5   proc near
        mov ax, 3
        int 10h
       
        mov ax,@data
        mov ds,ax

        call trufal
        call bg

        mov ah,2
        mov dl,30
        mov dh,9
        int 10h

        mov ah,9
        mov dx, OFFSET q51
        mov bl,007h
        mov cx,25
        int 10h
        int 21h

a5:     mov ah, 7
        int 21h
        cmp al, 'b'
        je menu
        cmp al, 't'
        je wrong5
        cmp al, 'f'
        je right5
        jne a5


right5: call happy
        mov ah,2
        mov dl, 23
        mov dh, 20
        int 10h

        mov ah,9
        mov dx, offset q52
        mov bl, 003h
        mov cx, 38
        int 10h
        int 21h

        mov ah,2
        mov dl, 23
        mov dh, 21
        int 10h

        mov ah,9
        mov dx, offset q52a
        mov bl, 003h
        mov cx, 23
        int 10h
        int 21h

        mov ah,8
        int 21h
        jmp ques6

wrong5: call sad
        mov ah,2
        mov dl, 23
        mov dh, 20
        int 10h

        mov ah,9
        mov dx, offset q52
        mov bl, 003h
        mov cx, 38
        int 10h
        int 21h

        mov ah,2
        mov dl, 23
        mov dh, 21
        int 10h

        mov ah,9
        mov dx, offset q52a
        mov bl, 003h
        mov cx, 23
        int 10h
        int 21h

        mov ah,8
        int 21h
        jmp ques6

ques5   endp

ques6   proc near
        mov ax, 3
        int 10h
       
        mov ax,@data
        mov ds,ax

        call trufal
        call bg

        mov ah,2
        mov dl,25
        mov dh,9
        int 10h

        mov ah,9
        mov dx, OFFSET q61
        mov bl,007h
        mov cx,46
        int 10h
        int 21h

a6:     mov ah, 7
        int 21h
        cmp al, 'b'
        je menu
        cmp al, 't'
        je wrong6
        cmp al, 'f'
        je right6
        jne a6


right6: call happy
        mov ah,2
        mov dl, 18
        mov dh, 20
        int 10h

        mov ah,9
        mov dx, offset q62
        mov bl, 003h
        mov cx, 46
        int 10h
        int 21h
        mov ah,8
        int 21h
        jmp ques7

wrong6: call sad
        mov ah,2
        mov dl, 18
        mov dh, 20
        int 10h

        mov ah,9
        mov dx, offset q62
        mov bl, 003h
        mov cx, 46
        int 10h
        int 21h

        mov ah,8
        int 21h
        jmp ques7

ques6   endp

ques7   proc near
        mov ax, 3
        int 10h
       
        mov ax,@data
        mov ds,ax

        call trufal
        call bg

        mov ah,2
        mov dl,31
        mov dh,9
        int 10h

        mov ah,9
        mov dx, OFFSET q71
        mov bl,007h
        mov cx,26
        int 10h
        int 21h

a7:     mov ah, 7
        int 21h
        cmp al, 'b'
        je menu
        cmp al, 't'
        je wrong7
        cmp al, 'f'
        je right7
        jne a7


right7: call happy
        mov ah,2
        mov dl, 28
        mov dh, 20
        int 10h

        mov ah,9
        mov dx, offset q72
        mov bl, 003h
        mov cx, 26
        int 10h
        int 21h
        mov ah,8
        int 21h
        jmp ques8

wrong7: call sad
        mov ah,2
        mov dl, 28
        mov dh, 20
        int 10h

        mov ah,9
        mov dx, offset q72
        mov bl, 003h
        mov cx, 26
        int 10h
        int 21h

        mov ah,8
        int 21h
        jmp ques8

ques7   endp

ques8   proc near
        mov ax, 3
        int 10h
       
        mov ax,@data
        mov ds,ax

        call trufal
        call bg

        mov ah,2
        mov dl,31
        mov dh,9
        int 10h

        mov ah,9
        mov dx, OFFSET q81
        mov bl,007h
        mov cx,29
        int 10h
        int 21h

a8:     mov ah, 7
        int 21h
        cmp al, 'b'
        je menu
        cmp al, 't'
        je right8
        cmp al, 'f'
        je wrong8
        jne a8


right8: call happy
        mov ah,2
        mov dl, 28
        mov dh, 20
        int 10h

        mov ah,9
        mov dx, offset q82
        mov bl, 003h
        mov cx, 29
        int 10h
        int 21h
        mov ah,8
        int 21h
        jmp ques9

wrong8: call sad
        mov ah,2
        mov dl, 28
        mov dh, 20
        int 10h

        mov ah,9
        mov dx, offset q82
        mov bl, 003h
        mov cx, 29
        int 10h
        int 21h

        mov ah,8
        int 21h
        jmp ques9

ques8   endp

ques9   proc near
        mov ax,3
        int 10h

        mov ax,@data
        mov ds,ax

        call trufal
        call bg

        mov ah,2
        mov dl,32
        mov dh,6
        int 10h

        mov ah,9
        mov dx, OFFSET qu11
        mov bl,007h
        mov cx,32
        int 10h
        int 21h

        mov ah,2
        mov dl,31
        mov dh,7
        int 10h

        mov ah,9
        mov dx, OFFSET qu12
        mov bl,007h
        mov cx,25
        int 10h
        int 21h
        
a9:     mov ah, 7
        int 21h
        cmp al, 'b'
        je menu
        cmp al, 'f'
        je right9
        cmp al, 't'
        je wrong9
        jne a9
        


right9:
        call happy

        mov ah, 2
        mov dl, 23
        mov dh, 20
        int 10h

        mov ah, 9
        mov dx, offset mes11
        mov bl, 003h
        mov cx, 33
        int 10h
        int 21h

        mov ah, 2
        mov dl, 24
        mov dh, 21
        int 10h

        mov ah, 9
        mov dx, offset mes12
        mov bl, 003h
        mov cx, 33
        int 10h
        int 21h

        mov ah, 2
        mov dl, 32
        mov dh, 22
        int 10h

        mov ah, 9
        mov dx, offset mes13
        mov bl, 003h
        mov cx, 16
        int 10h
        int 21h




        mov ah, 8
        int 21h
        jmp ques10

wrong9:
        call sad

        mov ah, 2
        mov dl, 23
        mov dh, 20
        int 10h

        mov ah, 9
        mov dx, offset mes11
        mov bl, 003h
        mov cx, 33
        int 10h
        int 21h

        mov ah, 2
        mov dl, 24
        mov dh, 21
        int 10h   

        mov ah, 9
        mov dx, offset mes12
        mov bl, 003h
        mov cx, 33
        int 10h
        int 21h

        mov ah, 2
        mov dl, 32
        mov dh, 22
        int 10h

        mov ah, 9
        mov dx, offset mes13
        mov bl, 003h
        mov cx, 16
        int 10h
        int 21h


        mov ah, 8
        int 21h
        jmp ques10
ques9   endp


ques10   proc near
        mov ax,3
        int 10h

        mov ax,@data
        mov ds,ax

        call trufal
        call bg

        mov ah,2
        mov dl,32
        mov dh,6
        int 10h

        mov ah,9
        mov dx, OFFSET qu21
        mov bl,007h
        mov cx,25
        int 10h
        int 21h

        mov ah,2
        mov dl,30
        mov dh,7
        int 10h

        mov ah,9
        mov dx, OFFSET qu22
        mov bl,007h
        mov cx, 25
        int 10h
        int 21h
        
a10:     mov ah, 7
        int 21h
        cmp al, 'b'
        je menu
        cmp al, 't'
        je right10
        cmp al, 'f'
        je wrong10
        jne a10

right10:
        call happy

        mov ah, 2
        mov dl, 24
        mov dh, 20
        int 10h

        mov ah, 9
        mov dx, offset mes21
        mov bl, 003h
        mov cx, 36
        int 10h
        int 21h

        mov ah, 2
        mov dl, 24
        mov dh, 21
        int 10h

        mov ah, 9
        mov dx, offset mes22
        mov bl, 003h
        mov cx, 38
        int 10h
        int 21h
                

        mov ah, 8
        int 21h
        jmp ques11

wrong10:
        call sad

        mov ah, 2
        mov dl, 24
        mov dh, 20
        int 10h

        mov ah, 9
        mov dx, offset mes21
        mov bl, 003h
        mov cx, 36
        int 10h
        int 21h

        mov ah, 2
        mov dl, 24
        mov dh, 21
        int 10h

        mov ah, 9
        mov dx, offset mes22
        mov bl, 003h
        mov cx, 38
        int 10h
        int 21h
                


        mov ah, 8
        int 21h
        jmp ques11
ques10   endp


ques11   proc near
        mov ax,3
        int 10h

        mov ax,@data
        mov ds,ax

        call trufal
        call bg

        mov ah,2
        mov dl,35
        mov dh,6
        int 10h

        mov ah,9
        mov dx, OFFSET qu31
        mov bl,007h
        mov cx,20
        int 10h
        int 21h

        mov ah,2
        mov dl,40
        mov dh,7
        int 10h

        mov ah,9
        mov dx, OFFSET qu32
        mov bl,007h
        mov cx, 15
        int 10h
        int 21h
        
a11:     mov ah, 7
        int 21h
        cmp al, 'b'
        je menu
        cmp al, 't'
        je right11
        cmp al, 'f'
        je wrong11
        jne a11

right11:
        call happy

        mov ah, 2
        mov dl, 20
        mov dh, 20
        int 10h

        mov ah, 9
        mov dx, offset mes31
        mov bl, 003h
        mov cx, 40
        int 10h
        int 21h

        mov ah, 2
        mov dl, 18
        mov dh, 21
        int 10h

        mov ah, 9
        mov dx, offset mes32
        mov bl, 003h
        mov cx, 46
        int 10h
        int 21h

        mov ah, 2
        mov dl, 24
        mov dh, 22
        int 10h

        mov ah, 9
        mov dx, offset mes33
        mov bl, 003h
        mov cx, 33
        int 10h
        int 21h

               


        mov ah, 8
        int 21h
        jmp ques12

wrong11:
        call sad
               
        mov ah, 2
        mov dl, 20
        mov dh, 20
        int 10h

        mov ah, 9
        mov dx, offset mes31
        mov bl, 003h
        mov cx, 40
        int 10h
        int 21h


        mov ah, 2
        mov dl, 18
        mov dh, 21
        int 10h

        mov ah, 9
        mov dx, offset mes32
        mov bl, 003h
        mov cx, 46
        int 10h
        int 21h

        mov ah, 2
        mov dl, 24
        mov dh, 22
        int 10h

        mov ah, 9
        mov dx, offset mes33
        mov bl, 003h
        mov cx, 33
        int 10h
        int 21h

              
        mov ah, 8
        int 21h
        jmp ques12
ques11   endp


ques12   proc near
        mov ax,3
        int 10h

        mov ax,@data
        mov ds,ax

        call trufal
        call bg

        mov ah,2
        mov dl,28
        mov dh,6
        int 10h

        mov ah,9
        mov dx, OFFSET qu41
        mov bl,007h
        mov cx,25
        int 10h
        int 21h

        mov ah,2
        mov dl,26
        mov dh,7
        int 10h

        mov ah,9
        mov dx, OFFSET  qu42
        mov bl,007h
        mov cx, 25
        int 10h
        int 21h
        
a12:     mov ah, 7
        int 21h
        cmp al, 'b'
        je menu
        cmp al, 't'
        je right12
        cmp al, 'f'
        je wrong12
        jne a12

right12:
        call happy


        mov ah, 2
        mov dl, 12
        mov dh, 20
        int 10h

        mov ah, 9
        mov dx, offset mes41
        mov bl, 003h
        mov cx, 54
        int 10h
        int 21h

        mov ah, 2
        mov dl, 28
        mov dh, 21
        int 10h

        mov ah, 9
        mov dx, offset mes42
        mov bl, 003h
        mov cx, 26
        int 10h
        int 21h


        mov ah, 8
        int 21h
        jmp ques13

wrong12:
        call sad

        mov ah, 2
        mov dl, 12
        mov dh, 20
        int 10h

        mov ah, 9
        mov dx, offset mes41
        mov bl, 003h
        mov cx, 54
        int 10h
        int 21h

        mov ah, 2
        mov dl, 28
        mov dh, 21
        int 10h

        mov ah, 9
        mov dx, offset mes42
        mov bl, 003h
        mov cx, 26
        int 10h
        int 21h

        mov ah, 8
        int 21h
        jmp ques13
ques12  endp


ques13   proc near
        mov ax,3
        int 10h

        mov ax,@data
        mov ds,ax

        call trufal
        call bg

        mov ah,2
        mov dl,34
        mov dh,6
        int 10h

        mov ah,9
        mov dx, OFFSET qu51
        mov bl,007h
        mov cx,25
        int 10h
        int 21h

        mov ah,2
        mov dl,33
        mov dh,7
        int 10h

        mov ah,9
        mov dx, OFFSET qu52
        mov bl,007h
        mov cx, 25
        int 10h
        int 21h
        
a13:     mov ah, 7
        int 21h
        cmp al, 'b'
        je menu
        cmp al, 'f'
        je right13
        cmp al, 't'
        je wrong13
        jne a13

right13:
        call happy

        mov ah, 2
        mov dl, 34
        mov dh, 20
        int 10h

        mov ah, 9
        mov dx, offset mes51
        mov bl, 003h
        mov cx, 17
        int 10h
        int 21h
        


        mov ah, 8
        int 21h
        jmp ques14

wrong13:
        call sad

        mov ah, 2
        mov dl, 34
        mov dh, 20
        int 10h

        mov ah, 9
        mov dx, offset mes51
        mov bl, 003h
        mov cx, 17
        int 10h
        int 21h


        mov ah, 8
        int 21h
        jmp ques14
ques13   endp


ques14   proc near
        mov ax,3
        int 10h

        mov ax,@data
        mov ds,ax

        call trufal
        call bg

        mov ah,2
        mov dl,36
        mov dh,6
        int 10h

        mov ah,9
        mov dx, OFFSET qu61
        mov bl,007h
        mov cx,23
        int 10h
        int 21h

        mov ah,2
        mov dl,35
        mov dh,7
        int 10h

        mov ah,9
        mov dx, OFFSET qu62
        mov bl,007h
        mov cx, 25
        int 10h
        int 21h
        
a14:     mov ah, 7
        int 21h
        cmp al, 'b'
        je menu
        cmp al, 't'
        je right14
        cmp al, 'f'
        je wrong14
        jne a14

right14:
        call happy

        mov ah, 2
        mov dl, 20
        mov dh, 20
        int 10h

        mov ah, 9
        mov dx, offset mes61
        mov bl, 003h
        mov cx, 42
        int 10h
        int 21h

        mov ah, 2
        mov dl, 26
        mov dh, 21
        int 10h

        mov ah, 9
        mov dx, offset mes62
        mov bl, 003h
        mov cx, 26
        int 10h
        int 21h
              


        mov ah, 8
        int 21h
        jmp ques15

wrong14:
        call sad


        mov ah, 2
        mov dl, 20
        mov dh, 20
        int 10h

        mov ah, 9
        mov dx, offset mes61
        mov bl, 003h
        mov cx, 42
        int 10h
        int 21h

        mov ah, 2
        mov dl, 26
        mov dh, 21
        int 10h

        mov ah, 9
        mov dx, offset mes62
        mov bl, 003h
        mov cx, 26
        int 10h
        int 21h

        mov ah, 8
        int 21h
        jmp ques15
ques14   endp


ques15   proc near
        mov ax,3
        int 10h

        mov ax,@data
        mov ds,ax

        call trufal
        call bg

        mov ah,2
        mov dl,26
        mov dh,7
        int 10h

        mov ah,9
        mov dx, OFFSET qu71
        mov bl,007h
        mov cx,25
        int 10h
        int 21h
          
a15:     mov ah, 7
        int 21h
        cmp al, 'b'
        je menu
        cmp al, 'f'
        je right15
        cmp al, 't'
        je wrong15
        jne a15

right15:
        call happy

        mov ah, 2
        mov dl, 20
        mov dh, 20
        int 10h

        mov ah, 9
        mov dx, offset mes71
        mov bl, 003h
        mov cx, 47
        int 10h
        int 21h

        mov ah, 2
        mov dl, 28
        mov dh, 21
        int 10h

        mov ah, 9
        mov dx, offset mes72
        mov bl, 003h
        mov cx, 23
        int 10h
        int 21h

       
        mov ah, 8
        int 21h
        jmp ending

wrong15:
        call sad

	 mov ah, 2
        mov dl, 20
        mov dh, 20
        int 10h

        mov ah, 9
        mov dx, offset mes71
        mov bl, 003h
        mov cx, 47
        int 10h
        int 21h

        mov ah, 2
        mov dl, 28
        mov dh, 21
        int 10h

        mov ah, 9
        mov dx, offset mes72
        mov bl, 003h
        mov cx, 23
        int 10h
        int 21h


        mov ah, 8
        int 21h
        jmp ending

ques15   endp

ending  proc near
        mov ax,3
        int 10h

        mov ax,@data
        mov ds,ax

        call trufal
        call bg

        mov ah,2
        mov dl,39
        mov dh,9
        int 10h

        mov ah,9
        mov dx, OFFSET en
        mov bl,071h
        mov cx,10
        int 10h
        int 21h

        mov ah,2
        mov dl,33
        mov dh,10
        int 10h

        mov ah,9
        mov dx, OFFSET en1
        mov bl,071h
        mov cx,23
        int 10h
        int 21h

        mov ah,2
        mov dl,42
        mov dh,13
        int 10h

        mov ah,9
        mov dx, OFFSET en2
        mov bl,006h
        mov cx,4
        int 10h
        int 21h


        mov ah,7
        int 21h
        cmp al, 'b'
        je menu
        cmp al, 'e'
        je exit2

ending  endp

exit2:   mov ah,4ch
        int 21h


trufal  proc near

        mov ah,2
        mov dl,60
        mov dh,1
        int 10h

        mov ah,9
        mov dx, OFFSET b1
        mov bl,008h
        mov cx,10
        int 10h
        int 21h

        mov ah,2
        mov dl,60
        mov dh,2
        int 10h

        mov ah,9
        mov dx, OFFSET ba
        mov bl,008h
        mov cx,10
        int 10h
        int 21h

        mov ah,2
        mov dl,60
        mov dh,3
        int 10h

        mov ah,9
        mov dx, OFFSET b2
        mov bl,008h
        mov cx,10
        int 10h
        int 21h

        mov ah,2
        mov dl,30
        mov dh,12
        int 10h

        mov ah,9
        mov dx, OFFSET t1
        mov bl,002h
        mov cx,10
        int 10h
        int 21h

        mov ah,2
        mov dl,30
        mov dh,13
        int 10h

        mov ah,9
        mov dx, OFFSET ta
        mov bl,002h
        mov cx,8
        int 10h
        int 21h

        mov ah,2
        mov dl,30
        mov dh,14
        int 10h

        mov ah,9
        mov dx, OFFSET t2
        mov bl,002h
        mov cx,10
        int 10h
        int 21h

        mov ah,2
        mov dl,30
        mov dh,12
        int 10h

        mov ah,2
        mov dl,48
        mov dh,12
        int 10h

        mov ah,9
        mov dx, OFFSET f1
        mov bl,004h
        mov cx,10
        int 10h
        int 21h

        mov ah,2
        mov dl,48
        mov dh,13
        int 10h

        mov ah,9
        mov dx, OFFSET fa
        mov bl,004h
        mov cx,9
        int 10h
        int 21h

        mov ah,2
        mov dl,48
        mov dh,14
        int 10h

        mov ah,9
        mov dx, OFFSET f2
        mov bl,004h
        mov cx,10
        int 10h
        int 21h

        ret
trufal  endp

bg      proc near
        
        mov ah,2
        mov dl,4
        mov dh,1
        int 10h

        mov ah,9
        mov dx, OFFSET s
        mov bl,009h
        mov cx,33
        int 10h
        int 21h

        mov ah,2
        mov dl,4
        mov dh,2
        int 10h

        mov ah,9
        mov dx, OFFSET t
        mov bl,009h
        mov cx,31
        int 10h
        int 21h

        mov ah,2
        mov dl,9
        mov dh,2
        int 10h

        mov ah,9
        mov dx, OFFSET b
        mov bl,00h
        mov cx,2
        int 10h
        int 21h

        mov ah,2
        mov dl,4
        mov dh,3
        int 10h

        mov ah,9
        mov dx, OFFSET u
        mov bl,009h
        mov cx,29
        int 10h
        int 21h

        mov ah,2
        mov dl,4
        mov dh,3
        int 10h

        mov ah,9
        mov dx, OFFSET e
        mov bl,00h
        mov cx,9
        int 10h
        int 21h

        mov ah,2
        mov dl,4
        mov dh,4
        int 10h

        mov ah,9
        mov dx, OFFSET v
        mov bl,009h
        mov cx,27
        int 10h
        int 21h

        mov ah,2
        mov dl,9
        mov dh,4
        int 10h

        mov ah,9
        mov dx, OFFSET b
        mov bl,00h
        mov cx,2
        int 10h
        int 21h

        mov ah,2
        mov dl,4
        mov dh,5
        int 10h

        mov ah,9
        mov dx, OFFSET w
        mov bl,009h
        mov cx,25
        int 10h
        int 21h

        mov ah,2
        mov dl,4
        mov dh,6
        int 10h

        mov ah,9
        mov dx, OFFSET x
        mov bl,009h
        mov cx,23
        int 10h
        int 21h

        mov ah,2
        mov dl,9
        mov dh,6
        int 10h

        mov ah,9
        mov dx, OFFSET b
        mov bl,00h
        mov cx,2
        int 10h
        int 21h

        mov ah,2
        mov dl,4
        mov dh,7
        int 10h

        mov ah,9
        mov dx, OFFSET y
        mov bl,009h
        mov cx,21
        int 10h
        int 21h

        mov ah,2
        mov dl,4
        mov dh,7
        int 10h

        mov ah,9
        mov dx, OFFSET e
        mov bl,00h
        mov cx,9
        int 10h
        int 21h

        mov ah,2
        mov dl,4
        mov dh,8
        int 10h

        mov ah,9
        mov dx, OFFSET z
        mov bl,009h
        mov cx,19
        int 10h
        int 21h

        mov ah,2
        mov dl,9
        mov dh,8
        int 10h

        mov ah,9
        mov dx, OFFSET b
        mov bl,00h
        mov cx,2
        int 10h
        int 21h

        mov ah,2
        mov dl,4
        mov dh,9
        int 10h

        mov ah,9
        mov dx, OFFSET z1
        mov bl,009h
        mov cx,17
        int 10h
        int 21h

        mov ah,2
        mov dl,4
        mov dh,10
        int 10h

        mov ah,9
        mov dx, OFFSET z2
        mov bl,009h
        mov cx,15
        int 10h
        int 21h

        mov ah,2
        mov dl,9
        mov dh,10
        int 10h

        mov ah,9
        mov dx, OFFSET b
        mov bl,00h
        mov cx,2
        int 10h
        int 21h

        mov ah,2
        mov dl,4
        mov dh,11
        int 10h

        mov ah,9
        mov dx, OFFSET z3
        mov bl,009h
        mov cx,13
        int 10h
        int 21h

        mov ah,2
        mov dl,4
        mov dh,11
        int 10h

        mov ah,9
        mov dx, OFFSET e
        mov bl,00h
        mov cx,9
        int 10h
        int 21h

        mov ah,2
        mov dl,4
        mov dh,12
        int 10h

        mov ah,9
        mov dx, OFFSET l
        mov bl,009h
        mov cx,12
        int 10h
        int 21h

        mov ah,2
        mov dl,9
        mov dh,12
        int 10h

        mov ah,9
        mov dx, OFFSET b
        mov bl,00h
        mov cx,2
        int 10h
        int 21h

        mov ah,2
        mov dl,4
        mov dh,13
        int 10h

        mov ah,9
        mov dx, OFFSET l
        mov bl,009h
        mov cx,12
        int 10h
        int 21h

        mov ah,2
        mov dl,4
        mov dh,14
        int 10h

        mov ah,9
        mov dx, OFFSET k
        mov bl,009h
        mov cx,11
        int 10h
        int 21h

        mov ah,2
        mov dl,9
        mov dh,14
        int 10h

        mov ah,9
        mov dx, OFFSET b
        mov bl,00h
        mov cx,2
        int 10h
        int 21h

        mov ah,2
        mov dl,4
        mov dh,15
        int 10h

        mov ah,9
        mov dx, OFFSET k
        mov bl,009h
        mov cx,11
        int 10h
        int 21h

        mov ah,2
        mov dl,4
        mov dh,15
        int 10h

        mov ah,9
        mov dx, OFFSET e
        mov bl,00h
        mov cx,9
        int 10h
        int 21h

        mov ah,2
        mov dl,4
        mov dh,16
        int 10h

        mov ah,9
        mov dx, OFFSET l
        mov bl,009h
        mov cx,12
        int 10h
        int 21h

        mov ah,2
        mov dl,9
        mov dh,16
        int 10h

        mov ah,9
        mov dx, OFFSET b
        mov bl,00h
        mov cx,2
        int 10h
        int 21h

        mov ah,2
        mov dl,4
        mov dh,17
        int 10h

        mov ah,9
        mov dx, OFFSET l
        mov bl,009h
        mov cx,12
        int 10h
        int 21h

        mov ah,2
        mov dl,4
        mov dh,18
        int 10h

        mov ah,9
        mov dx, OFFSET z3
        mov bl,009h
        mov cx,13
        int 10h
        int 21h

        mov ah,2
        mov dl,9
        mov dh,18
        int 10h

        mov ah,9
        mov dx, OFFSET b
        mov bl,00h
        mov cx,2
        int 10h
        int 21h

        mov ah,2
        mov dl,4
        mov dh,19
        int 10h

        mov ah,9
        mov dx, OFFSET z3
        mov bl,009h
        mov cx,13
        int 10h
        int 21h

        mov ah,2
        mov dl,4
        mov dh,19
        int 10h

        mov ah,9
        mov dx, OFFSET e
        mov bl,00h
        mov cx,9
        int 10h
        int 21h

        mov ah,2
        mov dl,4
        mov dh,20
        int 10h

        mov ah,9
        mov dx, OFFSET z4
        mov bl,009h
        mov cx,14
        int 10h
        int 21h

        mov ah,2
        mov dl,9
        mov dh,20
        int 10h

        mov ah,9
        mov dx, OFFSET b
        mov bl,00h
        mov cx,2
        int 10h
        int 21h

        mov ah,2
        mov dl,4
        mov dh,21
        int 10h

        mov ah,9
        mov dx, OFFSET z5
        mov bl,009h
        mov cx,15
        int 10h
        int 21h
        ret
bg      endp

happy   proc near
        mov ax, 3
        int 10h

        mov ax, @data                                                                                                                                                                                                                                           
        mov ds, ax
                                                                        
        ;happy face
        ;row 1
        mov ah, 2
        mov dl, 36
        mov dh, 3
        int 10h

        mov ah, 9
        mov dx, offset E10
        mov bl, 6Eh
        mov cx, 10
        int 10h
        int 21h

        ;row 4
        mov ah, 2
        mov dl, 32
        mov dh, 4
        int 10h

        mov ah, 9
        mov dx, offset E18
        mov bl, 6Eh
        mov cx, 18
        int 10h
        int 21h

        ;row 5
        mov ah, 2
        mov dl, 30
        mov dh, 5
        int 10h

        mov ah, 9
        mov dx, offset E22
        mov bl, 6Eh
        mov cx, 22
        int 10h
        int 21h

        ;row 6
        mov ah, 2
        mov dl, 28
        mov dh, 6
        int 10h

        mov ah, 9
        mov dx, offset E26
        mov bl, 6Eh
        mov cx, 26
        int 10h
        int 21h

        ;row 7
        mov ah, 2
        mov dl, 28
        mov dh, 7
        int 10h

        mov ah, 9
        mov dx, offset E26
        mov bl, 6Eh
        mov cx, 26
        int 10h
        int 21h

        ;row 8
        mov ah, 2
        mov dl, 26
        mov dh, 8
        int 10h

        mov ah, 9
        mov dx, offset E8
        mov bl, 6Eh
        mov cx, 8
        int 10h
        int 21h

        mov ah, 2
        mov dl, 34
        mov dh, 8
        int 10h

        mov ah, 9
        mov dx, offset E4
        mov bl, 00h
        mov cx, 4
        int 10h
        int 21h

        mov ah, 2
        mov dl, 38
        mov dh, 8
        int 10h

        mov ah, 9
        mov dx, offset E18
        mov bl, 6Eh
        mov cx, 18
        int 10h
        int 21h

        mov ah, 2
        mov dl, 44
        mov dh, 8
        int 10h

        mov ah, 9
        mov dx, offset E4
        mov bl, 06Eh
        mov cx, 4
        int 10h
        int 21h

       

        ;row 9
        mov ah, 2
        mov dl, 26
        mov dh, 9
        int 10h

        mov ah, 9
        mov dx, offset E8
        mov bl, 6Eh
        mov cx, 8
        int 10h
        int 21h

        mov ah, 2
        mov dl, 34
        mov dh, 9
        int 10h

        mov ah, 9
        mov dx, offset E4
        mov bl, 00h
        mov cx, 4
        int 10h
        int 21h

        mov ah, 2
        mov dl, 38
        mov dh, 9
        int 10h

        mov ah, 9
        mov dx, offset E6
        mov bl, 6Eh
        mov cx, 6
        int 10h
        int 21h

        mov ah, 2
        mov dl, 44
        mov dh, 9
        int 10h

        mov ah, 9
        mov dx, offset E4
        mov bl, 00h
        mov cx, 4
        int 10h
        int 21h

        mov ah, 2
        mov dl, 48
        mov dh, 9
        int 10h

        mov ah, 9
        mov dx, offset E8
        mov bl, 6Eh
        mov cx, 8
        int 10h
        int 21h

        ;row 10
        mov ah, 2
        mov dl, 26
        mov dh, 10
        int 10h

        mov ah, 9
        mov dx, offset E30
        mov bl, 6Eh
        mov cx, 30
        int 10h
        int 21h

        ;row 11
        mov ah, 2
        mov dl, 26
        mov dh, 11
        int 10h

        mov ah, 9
        mov dx, offset E30
        mov bl, 6Eh
        mov cx, 30
        int 10h
        int 21h

        ;row 12
        mov ah, 2
        mov dl, 26
        mov dh, 12
        int 10h

        mov ah, 9
        mov dx, offset E8
        mov bl, 6Eh
        mov cx, 8
        int 10h
        int 21h

        mov ah, 2
        mov dl, 34
        mov dh, 12
        int 10h

        mov ah, 9
        mov dx, offset E2
        mov bl, 00h
        mov cx, 2
        int 10h
        int 21h

        mov ah, 2
        mov dl, 36
        mov dh, 12
        int 10h

        mov ah, 9
        mov dx, offset E10
        mov bl, 6Eh
        mov cx, 10
        int 10h
        int 21h

        mov ah, 2
        mov dl, 46
        mov dh, 12
        int 10h

        mov ah, 9
        mov dx, offset E2
        mov bl, 00h
        mov cx, 2
        int 10h
        int 21h

        mov ah, 2
        mov dl, 48
        mov dh, 12
        int 10h

        mov ah, 9
        mov dx, offset E8
        mov bl, 6Eh
        mov cx, 8
        int 10h
        int 21h

        ;row 13

        mov ah, 2
        mov dl, 28
        mov dh, 13
        int 10h

        mov ah, 9
        mov dx, offset E8
        mov bl, 6Eh
        mov cx, 8
        int 10h
        int 21h

        mov ah, 2
        mov dl, 36
        mov dh, 13
        int 10h

        mov ah, 9
        mov dx, offset E10
        mov bl, 00h
        mov cx, 10
        int 10h
        int 21h


        mov ah, 2
        mov dl, 46
        mov dh, 13
        int 10h

        mov ah, 9
        mov dx, offset E8
        mov bl, 6Eh
        mov cx, 8
        int 10h
        int 21h

        ;row 14

        mov ah, 2
        mov dl, 28
        mov dh, 14
        int 10h

        mov ah, 9
        mov dx, offset E26
        mov bl, 6Eh
        mov cx, 26
        int 10h
        int 21h

        ;row 15

        mov ah, 2
        mov dl, 30
        mov dh, 15
        int 10h

        mov ah, 9
        mov dx, offset E22
        mov bl, 6Eh
        mov cx, 22
        int 10h
        int 21h

        ;row 16

        mov ah, 2
        mov dl, 32
        mov dh, 16
        int 10h

        mov ah, 9
        mov dx, offset E18
        mov bl, 6Eh
        mov cx, 18
        int 10h
        int 21h

        ;row 17

        mov ah, 2
        mov dl, 36
        mov dh, 17
        int 10h

        mov ah, 9
        mov dx, offset E10
        mov bl, 6Eh
        mov cx, 10
        int 10h
        int 21h

        mov ah, 2
        mov dl, 35
        mov dh, 19
        int 10h

        mov ah, 9
        mov dx, offset right
        mov bl, 002h
        mov cx, 9
        int 10h
        int 21h

        ret

happy endp                

sad     PROC NEAR
        call trufal
        call bg
        mov ax, 3
        int 10h

        mov ax, @data                                                                                                                                                                                                                                           
        mov ds, ax
                                                                        
        ;happy face
        ;row 1
        mov ah, 2
        mov dl, 36
        mov dh, 2
        int 10h

        mov ah, 9
        mov dx, offset E10
        mov bl, 6Eh
        mov cx, 10
        int 10h
        int 21h

        ;row 3
        mov ah, 2
        mov dl, 32
        mov dh, 3
        int 10h

        mov ah, 9
        mov dx, offset E18
        mov bl, 6Eh
        mov cx, 18
        int 10h
        int 21h

        ;row 4
        mov ah, 2
        mov dl, 30
        mov dh, 4
        int 10h

        mov ah, 9
        mov dx, offset E22
        mov bl, 6Eh
        mov cx, 22
        int 10h
        int 21h

        ;row 5
        mov ah, 2
        mov dl, 28
        mov dh, 5
        int 10h

        mov ah, 9
        mov dx, offset E26
        mov bl, 6Eh
        mov cx, 26
        int 10h
        int 21h

        ;row 6
        mov ah, 2
        mov dl, 28
        mov dh, 6
        int 10h

        mov ah, 9
        mov dx, offset E26
        mov bl, 6Eh
        mov cx, 26
        int 10h
        int 21h

        ;row 7
        mov ah, 2
        mov dl, 26
        mov dh, 7
        int 10h

        mov ah, 9
        mov dx, offset E8
        mov bl, 6Eh
        mov cx, 8
        int 10h
        int 21h

        mov ah, 2
        mov dl, 34
        mov dh, 7
        int 10h

        mov ah, 9
        mov dx, offset E4
        mov bl, 6Eh
        mov cx, 4
        int 10h
        int 21h

        mov ah, 2
        mov dl, 38
        mov dh, 7
        int 10h

        mov ah, 9
        mov dx, offset E18
        mov bl, 6Eh
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        mov cx, 18
        int 10h
        int 21h

        mov ah, 2
        mov dl, 44
        mov dh, 7
        int 10h

        mov ah, 9
        mov dx, offset E4
        mov bl, 6Eh
        mov cx, 4
        int 10h
        int 21h

       

        ;row 8
        mov ah, 2
        mov dl, 26
        mov dh, 8
        int 10h

        mov ah, 9
        mov dx, offset E8
        mov bl, 6Eh
        mov cx, 8
        int 10h
        int 21h

        mov ah, 2
        mov dl, 34
        mov dh, 8
        int 10h

        mov ah, 9
        mov dx, offset E4
        mov bl, 00h
        mov cx, 4
        int 10h
        int 21h

        mov ah, 2
        mov dl, 38
        mov dh, 8
        int 10h

        mov ah, 9
        mov dx, offset E6
        mov bl, 6Eh
        mov cx, 6
        int 10h
        int 21h

        mov ah, 2
        mov dl, 44
        mov dh, 8
        int 10h

        mov ah, 9
        mov dx, offset E4
        mov bl, 00h
        mov cx, 4
        int 10h
        int 21h

        mov ah, 2
        mov dl, 48
        mov dh, 8
        int 10h

        mov ah, 9
        mov dx, offset E8
        mov bl, 6Eh
        mov cx, 8
        int 10h
        int 21h

        ;row 9
        mov ah, 2
        mov dl, 26
        mov dh, 9
        int 10h

        mov ah, 9
        mov dx, offset E30
        mov bl, 6Eh
        mov cx, 30
        int 10h
        int 21h

        ;row 10
        mov ah, 2
        mov dl, 26
        mov dh, 10
        int 10h

        mov ah, 9
        mov dx, offset E30
        mov bl, 6Eh
        mov cx, 30
        int 10h
        int 21h

        ;row 11

        mov ah, 2
        mov dl, 26
        mov dh, 11
        int 10h

        mov ah, 9
        mov dx, offset E8
        mov bl, 6Eh
        mov cx, 8
        int 10h
        int 21h


        mov ah, 2
        mov dl, 34
        mov dh, 11
        int 10h

        mov ah, 9
        mov dx, offset E14
        mov bl, 00h
        mov cx, 14
        int 10h
        int 21h


        mov ah, 2
        mov dl, 48
        mov dh, 11
        int 10h

        mov ah, 9
        mov dx, offset E8
        mov bl, 6Eh
        mov cx, 8
        int 10h
        int 21h

        ;row 12
        mov ah, 2
        mov dl, 28
        mov dh, 12
        int 10h

        mov ah, 9
        mov dx, offset E4
        mov bl, 6Eh
        mov cx, 4
        int 10h
        int 21h

        mov ah, 2
        mov dl, 32
        mov dh, 12
        int 10h

        mov ah, 9
        mov dx, offset E2
        mov bl, 00h
        mov cx, 2
        int 10h
        int 21h

        mov ah, 2
        mov dl, 34
        mov dh, 12
        int 10h

        mov ah, 9
        mov dx, offset E14
        mov bl, 6Eh
        mov cx, 14
        int 10h
        int 21h

        mov ah, 2
        mov dl, 48
        mov dh, 12
        int 10h

        mov ah, 9
        mov dx, offset E2
        mov bl, 00h
        mov cx, 2
        int 10h
        int 21h

        mov ah, 2
        mov dl, 50
        mov dh, 12
        int 10h

        mov ah, 9
        mov dx, offset E4
        mov bl, 6Eh
        mov cx, 4
        int 10h
        int 21h
        
        ;row 13

        mov ah, 2
        mov dl, 28
        mov dh, 13
        int 10h

        mov ah, 9
        mov dx, offset E26
        mov bl, 6Eh
        mov cx, 26
        int 10h
        int 21h

        ;row 14

        mov ah, 2
        mov dl, 30
        mov dh, 14
        int 10h

        mov ah, 9
        mov dx, offset E22
        mov bl, 6Eh
        mov cx, 22
        int 10h
        int 21h

        ;row 15

        mov ah, 2
        mov dl, 32
        mov dh, 15
        int 10h

        mov ah, 9
        mov dx, offset E18
        mov bl, 6Eh
        mov cx, 18
        int 10h
        int 21h

        ;row 16

        mov ah, 2
        mov dl, 36
        mov dh, 16
        int 10h

        mov ah, 9
        mov dx, offset E10
        mov bl, 6Eh
        mov cx, 10
        int 10h
        int 21h

        mov ah, 2
        mov dl, 38
        mov dh, 19
        int 10h

        mov ah, 9
        mov dx, offset wrong
        mov bl, 004h
        mov cx, 7
        int 10h
        int 21h

        ret
SAD     ENDP

game endp


        mov ah, 4ch
        int 21h


end start       
