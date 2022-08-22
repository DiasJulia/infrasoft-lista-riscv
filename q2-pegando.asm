addi x10, x0, 45 # x10 recebe o valor ascii para o sinal negativo
addi x9, x0, 1 # x9 recebe o valor 1 inicialmente e troca para 0 caso algo esteja errado
# recebe 3 números naturais de 2 algarismos separados por espaços
# ele lê 2 algarismos de numeros naturais
lb x11, 1025(x0) # Lê o primeiro agarismo
sb x11, 1024(x0) # Printa o primeiro agarismo
bne x11, x10, pass # comparar para ver se a tem sinal negativo
add x9, x0, x0 # se tiver o sinal negativo, dá falso e lẽ novamente o proximo algarismo
lb x11, 1025(x0) # Se for um sinal de menos, ele lê de novo
sb x11, 1024(x0) # Printa o algarismo

pass:
addi x11, x11, -48 # Transforma de caracter pra inteiro
addi x23, x0, 10 # Variável de controle com o valor 10 (pro loop de multiplicação)

# Início do loop de multiplicação
multi:
   addi x23, x23, -1
   add x13, x13, x11
   bne x23, x0, multi
# Fim do loop de multiplicação

lb x12, 1025(x0) # LÊ o segundo algarismo
sb x12, 1024(x0) # Printa o segundo algarismo
addi x12,x12, -48 # Transforma de caracter pra inteiro

add x12, x12, x13 # Soma

add x20, x0, x12 # Coloca o valor da leitura em x20

# Le um espaço
lb x11, 1025(x0) # Lê o primeiro agarismo
sb x11, 1024(x0) # Printa o primeiro agarismo

# Leitura de b
add x21, x0, x0
lb x11, 1025(x0) # Lê o primeiro agarismo
sb x11, 1024(x0) # Printa o primeiro agarismo
bne x11, x10, pass2
addi x21, x0, -99 # se tiver o sinal negativo, é necessariamente menor que 64, então atribui um valor sempre menor que 64
lb x11, 1025(x0) # Se for um sinal de menos, ele lê de novo
sb x11, 1024(x0) # Printa o algarismo

pass2:
addi x11, x11, -48 # Transforma de caracter pra inteiro
addi x23, x0, 10 # Variável de controle com o valor 10 (pro loop de multiplicação)

# Início do loop de multiplicação
add x13, x0, x0
multi2:
   addi x23, x23, -1
   add x13, x13, x11
   bne x23, x0, multi2
# Fim do loop de multiplicação

lb x12, 1025(x0) # LÊ o segundo algarismo
sb x12, 1024(x0) # Printa o segundo algarismo
addi x12,x12, -48 # Transforma de caracter pra inteiro

add x12, x12, x13 # Soma

add x21, x21, x12 # Coloca o valor da leitura em x21

# Le um espaço
lb x11, 1025(x0) # Lê o primeiro agarismo
sb x11, 1024(x0) # Printa o primeiro agarismo

# Leitura de c
lb x11, 1025(x0) # Lê o primeiro agarismo
sb x11, 1024(x0) # Printa o primeiro agarismo
bne x11, x10, pass3
add x9, x0, x0 # se tiver o sinal negativo, dá falso e lẽ novamente o proximo algarismo
lb x11, 1025(x0) # Se for um sinal de menos, ele lê de novo
sb x11, 1024(x0) # Printa o algarismo

pass3:
addi x11, x11, -48 # Transforma de caracter pra inteiro
addi x23, x0, 10 # Variável de controle com o valor 10 (pro loop de multiplicação)

# Início do loop de multiplicação
add x13, x0, x0
multi3:
   addi x23, x23, -1
   add x13, x13, x11
   bne x23, x0, multi3
# Fim do loop de multiplicação

lb x12, 1025(x0) # LÊ o segundo algarismo
sb x12, 1024(x0) # Printa o segundo algarismo
addi x12,x12, -48 # Transforma de caracter pra inteiro

add x12, x12, x13 # Soma

add x22, x0, x12 # Coloca o valor da leitura em x22

lw x26, c64
lw x25, c23

jump: 
bge x26, x21, jump_2 # comparar para ver se b <= 64
add x9, x0, x0 

jump_2: 
blt x25, x22, end # comparar para ver se c > 23
add x9, x0, x0

end:
addi x9, x9, 48 
sb x9, 1024(x0) # printa a resposta
halt 

c64: .word 64
c23: .word 23


