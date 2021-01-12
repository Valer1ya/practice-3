org 7C00h

start:

MOV AH, 13h
MOV AL, 1
INT 10h
 MOV    CX,     29
 MOV    BL,     00111110b
 MOV    DL,     46
 MOV    DH,     12
 MOV    BP,     string
 INT    10h

 MOV    CX,  11
 MOV    BL,  00001110b
 MOV    DL,  1

  MOV    DH,  10
  MOV    BP,  a
  INT    10h

  MOV    DH,  11
  MOV    BP,  b
  INT    10h

  MOV    DH,  12
  MOV    BP,  c
  INT    10h

  MOV    DH,  13
  MOV    BP,  d
  INT    10h

  MOV    DH,  14
  MOV    BP,  e
  INT    10h

  MOV    DH,  15
  MOV    BP,  f
  INT    10h

string  DB      'Valeria Grigorieva NMT-383907'
a   DB   '     *     '
b   DB   '    ***    '
c   DB   '   *****   '
d   DB   '  *******  '
e   DB   ' ********* '
f   DB   '***********'

exit:


db 510-($-$$) dup 0
dw 0AA55h