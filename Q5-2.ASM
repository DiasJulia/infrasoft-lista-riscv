# A LEITURA DA PALAVRA SÓ É INTERROMPIDA QUANDO ACHA UM ESPAÇO, ENTÃO FINALIZE AS PALAVRAS COM UM ESPAÇO
addi x15, x0, -1
dsoma:
addi x15, x15, 1
jal x1, dend

dsoma2:
addi x15, x15, 2
jal x1, dend

dsoma3:
addi x15, x15, 3
jal x1, dend

dsoma4:
addi x15, x15, 4
jal x1, dend

dsoma5:
addi x15, x15, 5
jal x1, dend

dsoma8:
addi x15, x15, 8
jal x1, dend

dsoma10:
addi x15, x15, 10
jal x1, dend

loop:
lb x16, 1025(x0) 
sb x16, 1024(x0)
# letras maiusculas
addi x14, x0, 65 # muda a variavel de controle para o valor de 'A'
bne x16, x14, dpass # confere se é volgal
jal x1, dsoma
dpass:
addi x14, x0, 69 # muda a variavel de controle para o valor de 'E'
bne x16, x14, dpass2 # confere se é volgal
jal x1, dsoma
dpass2:
addi x14, x0, 73 # muda a variavel de controle para o valor de 'I'
bne x16, x14, dpass3 # confere se é volgal
jal x1, dsoma
dpass3:
addi x14, x0, 79 # muda a variavel de controle para o valor de 'O'
bne x16, x14, dpass4 # confere se é volgal
jal x1, dsoma
dpass4:
addi x14, x0, 85 # muda a variavel de controle para o valor de 'U'
bne x16, x14, dpass5 # confere se é volgal
jal x1, dsoma

# dsomas para 2
dpass5:
addi x14, x0, 68 # muda a variavel de controle para o valor de 'd'
bne x16, x14, dpass6 # confere se é 
jal x1, dsoma2
dpass6:
addi x14, x0, 71 # muda a variavel de controle para o valor de 'G'
bne x16, x14, dpass7 # confere se é 
jal x1, dsoma2
dpass7:
addi x14, x0, 84 # muda a variavel de controle para o valor de 'G'
bne x16, x14, dpass8 # confere se é 
jal x1, dsoma2

# dsomas para 3
dpass8:
addi x14, x0, 66 # muda a variavel de controle para o valor de 'd'
bne x16, x14, dpass9 # confere se é 
jal x1, dsoma3
dpass9:
addi x14, x0, 67 # muda a variavel de controle para o valor de 'G'
bne x16, x14, dpass10 # confere se é 
jal x1, dsoma3
dpass10:
addi x14, x0, 77 # muda a variavel de controle para o valor de 'G'
bne x16, x14, dpass11 # confere se é 
jal x1, dsoma3
dpass11:
addi x14, x0, 78 # muda a variavel de controle para o valor de 'G'
bne x16, x14, dpass12 # confere se é 
jal x1, dsoma3
dpass12:
addi x14, x0, 80 # muda a variavel de controle para o valor de 'G'
bne x16, x14, dpass13 # confere se é 
jal x1, dsoma3

# dsomas para 4
dpass13:
addi x14, x0, 70 # muda a variavel de controle para o valor de 'd'
bne x16, x14, dpass14 # confere se é 
jal x1, dsoma4
dpass14:
addi x14, x0, 72 # muda a variavel de controle para o valor de 'G'
bne x16, x14, dpass15 # confere se é 
jal x1, dsoma4
dpass15:
addi x14, x0, 86 # muda a variavel de controle para o valor de 'G'
bne x16, x14, dpass16 # confere se é 
jal x1, dsoma4
dpass16:
addi x14, x0, 87 # muda a variavel de controle para o valor de 'G'
bne x16, x14, dpass17 # confere se é 
jal x1, dsoma4
dpass17:
addi x14, x0, 89 # muda a variavel de controle para o valor de 'G'
bne x16, x14, dpass18 # confere se é 
jal x1, dsoma4

# dsomas para 5
dpass18:
addi x14, x0, 75 # muda a variavel de controle para o valor de 'd'
bne x16, x14, dpass19 # confere se é 
jal x1, dsoma5
dpass19:
addi x14, x0, 82 # muda a variavel de controle para o valor de 'G'
bne x16, x14, dpass20 # confere se é 
jal x1, dsoma5
dpass20:
addi x14, x0, 83 # muda a variavel de controle para o valor de 'G'
bne x16, x14, dpass21 # confere se é 
jal x1, dsoma5

# dsomas para 8
dpass21:
addi x14, x0, 74 # muda a variavel de controle para o valor de 'd'
bne x16, x14, dpass22 # confere se é 
jal x1, dsoma8
dpass22:
addi x14, x0, 76 # muda a variavel de controle para o valor de 'G'
bne x16, x14, dpass23 # confere se é 
jal x1, dsoma8
dpass23:
addi x14, x0, 88 # muda a variavel de controle para o valor de 'G'
bne x16, x14, dpass24 # confere se é 
jal x1, dsoma8

# dsomas para 10
dpass24:
addi x14, x0, 81 # muda a variavel de controle para o valor de 'd'
bne x16, x14, dpass25 # confere se é 
jal x1, dsoma10
dpass25:
addi x14, x0, 90 # muda a variavel de controle para o valor de 'G'
bne x16, x14, dend # confere se é 
jal x1, dsoma10

dend:
addi x14, x0, 32 # muda a variavel de controle para o valor de ' ' para saber se a palavra acabou
bne x16, x14, loop

addi x28, x0, 10
sb x16, 1024(x0)

blt x15, x28, prt # checa se é maior que 10
div:
   addi x27, x27, 1
   addi x15, x15, -10
   bge x15, x28, div
addi x27, x27, 48 # printa a casa dos decimos
sb x27, 1024(x0)
prt:
addi x15, x15, 48
sb x15, 1024(x0) # printa as unidades