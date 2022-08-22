lw x10, valx10 # configura o valor inicial de x10
lw x11, valx11 # configura o valor inicial de x11

# cada caracter em hexadecimal representa 8 bits, logo, o i-ésimo bit em hex representa 8i em binario.
lw x17, t1
lw x18, t2

and x12, x10, x17 # x12 vai receber apenas os caracteres nos bits de 15 a 8 de x10
slli x12, x12, 16 # joga os caracteres de 15 a 8 nas posições de 31 a 24

and x11, x11, x18 # mantem apenas os caracteres de x11 que não estão nos bits de 31 a 24

or x11, x11, x12 # faz um or

valx10: .word 0x321aaaaa
valx11: .word 0x123abcde

t1: .word 0x0000ff00
t2: .word 0x00ffffff