addi x10, x0, 80
sb x10, 1024(x0)
addi x10, x0, 76
sb x10, 1024(x0)
addi x10, x0, 65
sb x10, 1024(x0)
addi x10,x0,  89
sb x10, 1024(x0)
addi x10,x0,  32
sb x10, 1024(x0)
addi x10,x0,  49
sb x10, 1024(x0)
addi x10,x0,  58
sb x10, 1024(x0)

# A LEITURA DA PALAVRA SÓ É INTERROMPIDA QUANDO ACHA UM ESPAÇO, ENTÃO FINALIZE AS PALAVRAS COM UM ESPAÇO
addi x12, x0, -1
soma:
addi x12, x12, 1
jal x1, end

soma2:
addi x12, x12, 2
jal x1, end

soma3:
addi x12, x12, 3
jal x1, end

soma4:
addi x12, x12, 4
jal x1, end

soma5:
addi x12, x12, 5
jal x1, end

soma8:
addi x12, x12, 8
jal x1, end

soma10:
addi x12, x12, 10
jal x1, end

loop:
lb x13, 1025(x0) 
sb x13, 1024(x0)
# letras maiusculas
addi x14, x0, 65 # muda a variavel de controle para o valor de 'A'
bne x13, x14, pass # confere se é volgal
jal x1, soma
pass:
addi x14, x0, 69 # muda a variavel de controle para o valor de 'E'
bne x13, x14, pass2 # confere se é volgal
jal x1, soma
pass2:
addi x14, x0, 73 # muda a variavel de controle para o valor de 'I'
bne x13, x14, pass3 # confere se é volgal
jal x1, soma
pass3:
addi x14, x0, 79 # muda a variavel de controle para o valor de 'O'
bne x13, x14, pass4 # confere se é volgal
jal x1, soma
pass4:
addi x14, x0, 85 # muda a variavel de controle para o valor de 'U'
bne x13, x14, pass5 # confere se é volgal
jal x1, soma

# somas para 2
pass5:
addi x14, x0, 68 # muda a variavel de controle para o valor de 'd'
bne x13, x14, pass6 # confere se é 
jal x1, soma2
pass6:
addi x14, x0, 71 # muda a variavel de controle para o valor de 'G'
bne x13, x14, pass7 # confere se é 
jal x1, soma2
pass7:
addi x14, x0, 84 # muda a variavel de controle para o valor de 'G'
bne x13, x14, pass8 # confere se é 
jal x1, soma2

# somas para 3
pass8:
addi x14, x0, 66 # muda a variavel de controle para o valor de 'd'
bne x13, x14, pass9 # confere se é 
jal x1, soma3
pass9:
addi x14, x0, 67 # muda a variavel de controle para o valor de 'G'
bne x13, x14, pass10 # confere se é 
jal x1, soma3
pass10:
addi x14, x0, 77 # muda a variavel de controle para o valor de 'G'
bne x13, x14, pass11 # confere se é 
jal x1, soma3
pass11:
addi x14, x0, 78 # muda a variavel de controle para o valor de 'G'
bne x13, x14, pass12 # confere se é 
jal x1, soma3
pass12:
addi x14, x0, 80 # muda a variavel de controle para o valor de 'G'
bne x13, x14, pass13 # confere se é 
jal x1, soma3

# somas para 4
pass13:
addi x14, x0, 70 # muda a variavel de controle para o valor de 'd'
bne x13, x14, pass14 # confere se é 
jal x1, soma4
pass14:
addi x14, x0, 72 # muda a variavel de controle para o valor de 'G'
bne x13, x14, pass15 # confere se é 
jal x1, soma4
pass15:
addi x14, x0, 86 # muda a variavel de controle para o valor de 'G'
bne x13, x14, pass16 # confere se é 
jal x1, soma4
pass16:
addi x14, x0, 87 # muda a variavel de controle para o valor de 'G'
bne x13, x14, pass17 # confere se é 
jal x1, soma4
pass17:
addi x14, x0, 89 # muda a variavel de controle para o valor de 'G'
bne x13, x14, pass18 # confere se é 
jal x1, soma4

# somas para 5
pass18:
addi x14, x0, 75 # muda a variavel de controle para o valor de 'd'
bne x13, x14, pass19 # confere se é 
jal x1, soma5
pass19:
addi x14, x0, 82 # muda a variavel de controle para o valor de 'G'
bne x13, x14, pass20 # confere se é 
jal x1, soma5
pass20:
addi x14, x0, 83 # muda a variavel de controle para o valor de 'G'
bne x13, x14, pass21 # confere se é 
jal x1, soma5

# somas para 8
pass21:
addi x14, x0, 74 # muda a variavel de controle para o valor de 'd'
bne x13, x14, pass22 # confere se é 
jal x1, soma8
pass22:
addi x14, x0, 76 # muda a variavel de controle para o valor de 'G'
bne x13, x14, pass23 # confere se é 
jal x1, soma8
pass23:
addi x14, x0, 88 # muda a variavel de controle para o valor de 'G'
bne x13, x14, pass24 # confere se é 
jal x1, soma8

# somas para 10
pass24:
addi x14, x0, 81 # muda a variavel de controle para o valor de 'd'
bne x13, x14, pass25 # confere se é 
jal x1, soma10
pass25:
addi x14, x0, 90 # muda a variavel de controle para o valor de 'G'
bne x13, x14, end # confere se é 
jal x1, soma10

end:
addi x14, x0, 32 # muda a variavel de controle para o valor de ' ' para saber se a palavra acabou
bne x13, x14, loop

addi x28, x0, 10
sb x13, 1024(x0)

add x25, x0, x12
blt x25, x28, prt # checa se é maior que 10
addi x10,x0,  193
sb x10, 1024(x0)
div:
   addi x29, x29, 1
   addi x25, x25, -10
   bge x25, x28, div
addi x29, x29, 48 # printa a casa dos decimos
sb x29, 1024(x0)
prt:
addi x25, x25, 48
sb x25, 1024(x0) # printa as unidades

addi x10,x0,  32
sb x10, 1024(x0)
addi x10,x0,  47
sb x10, 1024(x0)
addi x10,x0,  32
sb x10, 1024(x0)

addi x10, x0, 80
sb x10, 1024(x0)
addi x10, x0, 76
sb x10, 1024(x0)
addi x10, x0, 65
sb x10, 1024(x0)
addi x10,x0,  89
sb x10, 1024(x0)
addi x10,x0,  32
sb x10, 1024(x0)
addi x10,x0,  50
sb x10, 1024(x0)
addi x10,x0,  58
sb x10, 1024(x0)


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

loop2:
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
bne x16, x14, loop2

addi x28, x0, 10
sb x16, 1024(x0)

add x25, x0, x15
blt x25, x28, dprt # checa se é maior que 10
addi x10,x0,  193
sb x10, 1024(x0)
divi:
   addi x27, x27, 1
   addi x25, x25, -10
   bge x25, x28, divi
addi x27, x27, 48 # printa a casa dos decimos
sb x27, 1024(x0)
dprt:
addi x25, x25, 48
sb x25, 1024(x0) # printa as unidades

bne x15, x12, notEmpate
# printa a string empate
addi x10, x0, 32
sb x10, 1024(x0)
addi x10, x0, 69
sb x10, 1024(x0)
addi x10, x0, 77
sb x10, 1024(x0)
addi x10, x0, 80
sb x10, 1024(x0)
addi x10,x0,  65
sb x10, 1024(x0)
addi x10,x0,  84
sb x10, 1024(x0)
addi x10,x0,  89
halt

# printa o vencedor (play 1)
notEmpate:
blt x12, x15, winPlay2
addi x10, x0, 32
sb x10, 1024(x0)
addi x10, x0, 80
sb x10, 1024(x0)
addi x10, x0, 76
sb x10, 1024(x0)
addi x10, x0, 65
sb x10, 1024(x0)
addi x10,x0,  89
sb x10, 1024(x0)
addi x10,x0,  32
sb x10, 1024(x0)
addi x10,x0,  49
sb x10, 1024(x0)
halt

# printa o vencedor (play 2)
winPlay2:
addi x10, x0, 32
sb x10, 1024(x0)
addi x10, x0, 80
sb x10, 1024(x0)
addi x10, x0, 76
sb x10, 1024(x0)
addi x10, x0, 65
sb x10, 1024(x0)
addi x10,x0,  89
sb x10, 1024(x0)
addi x10,x0,  32
sb x10, 1024(x0)
addi x10,x0,  50
sb x10, 1024(x0)