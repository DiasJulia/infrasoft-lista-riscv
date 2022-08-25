# A LEITURA DA PALAVRA SÓ É INTERROMPIDA QUANDO ACHA UM ESPAÇO, ENTÃO FINALIZE AS PALAVRAS COM UM ESPAÇO
addi x12, x0, -1
soma:
addi x12, x12, 1
loop:
lb x10, 1025(x0) 
sb x10, 1024(x0)
# letras maiusculas
addi x11, x0, 65 # muda a variavel de controle para o valor de 'A'
beq x10, x11, soma # confere se é volgal
addi x11, x0, 69 # muda a variavel de controle para o valor de 'E'
beq x10, x11, soma # confere se é volgal
addi x11, x0, 73 # muda a variavel de controle para o valor de 'I'
beq x10, x11, soma # confere se é volgal
addi x11, x0, 79 # muda a variavel de controle para o valor de 'O'
beq x10, x11, soma # confere se é volgal
addi x11, x0, 85 # muda a variavel de controle para o valor de 'U'
beq x10, x11, soma # confere se é volgal
# letras minusculas
addi x11, x0, 97 # muda a variavel de controle para o valor de 'a'
beq x10, x11, soma # confere se é volgal
addi x11, x0, 101 # muda a variavel de controle para o valor de 'e'
beq x10, x11, soma # confere se é volgal
addi x11, x0, 105 # muda a variavel de controle para o valor de 'i'
beq x10, x11, soma # confere se é volgal
addi x11, x0, 111 # muda a variavel de controle para o valor de 'o'
beq x10, x11, soma # confere se é volgal
addi x11, x0, 117 # muda a variavel de controle para o valor de 'u'
beq x10, x11, soma # confere se é volgal
# confere se acabou
addi x11, x0, 32 # muda a variavel de controle para o valor de ' ' para saber se a palavra acabou
bne x10, x11, loop

sb x10, 1024(x0)
addi x12, x12, 48
sb x12, 1024(x0)



