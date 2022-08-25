addi x4, x4, 7
addi x5, x5, 1
addi x22, x0, 48

loop:
addi x3, x3, 1
beq x3, x4, end
lb x10, 1025(x0) #Lê um digito do teclado
sb x10, 1024(x0) # Printa o digito
beq x10, x0, end # Compara com o caracter vazio (fim)
beq x0, x0, charToInt 
jal x11, loop

conf0:
addi x13, x13, 1 # impede que seja 0
jal x29, loop

charToInt:
beq x10, x22, conf0
add x18, x0, x10 # copia o numero 
addi x18, x18, -48 
add x14, x0, x18
addi x18, x18, -1
add x12, x14, x0
jal x29, fact

fact:
addi x17, x17, 10 #debug
addi x6, x0, 1 #contador do loop de multiplicacao
bge x5, x18, fatorial 

mult:
addi x17, x17, 1 #debug
addi x6, x6, 1 
add x12, x12, x14 #iguala x14 a x12 inicialmente
bne x6, x18, mult #x18 eh o multiplicador
addi x18, x18, -1

add x14, x12, x0
jal x29, fact
		
	
fatorial:
add x13, x13, x12 #resposta em x13
jal x29, loop 

end: 
lw x19, num1000000

bge x13, x19, fun1m
lw x19, num100000

bge x13, x19, fun100k
lw x19, num10000

bge x13, x19, fun10k
lw x19, num1000

bge x13, x19, fun1k
lw x19, num100

bge x13, x19, fun100
lw x19, num10

bge x13, x19, fun10
addi x19, x19, -9

bge x13, x19, fun1

fun1m:
xor x6, x6, x6
loop1m:
addi x6, x6, 1
sub x13, x13, x19 #x13-1000000
bge x13, x19, loop1m
addi x6, x6, 48
sb x6, 1024(x0) #printa o caracter
lw x19, num100000
beq x0, x0, fun100k

fun100k:
xor x6, x6, x6
blt x13, x19, printa100k
loop100k:
addi x6, x6, 1
sub x13, x13, x19
bge x13, x19, loop100k
printa100k:
addi x6, x6, 48
sb x6, 1024(x0)
lw x19, num10000
beq x0, x0, fun10k

fun10k:
xor x6, x6, x6
blt x13, x19, printa10k
loop10k:
addi x6, x6, 1
sub x13, x13, x19
bge x13, x19, loop10k
printa10k:
addi x6, x6, 48
sb x6, 1024(x0)
lw x19, num1000
beq x0, x0, fun1k

fun1k:
xor x6, x6, x6
blt x13, x19, printa1k
loop1k:
addi x6, x6, 1
sub x13, x13, x19
bge x13, x19, loop1k
printa1k:
addi x6, x6, 48
sb x6, 1024(x0)
lw x19, num100
beq x0, x0, fun100

fun100:
xor x6, x6, x6
blt x13, x19, printa100
loop100:
addi x6, x6, 1
sub x13, x13, x19
bge x13, x19, loop100
printa100:
addi x6, x6, 48
sb x6, 1024(x0)
lw x19, num10
beq x0, x0, fun10

fun10:
xor x6, x6, x6
blt x13, x19, printa10
loop10:
addi x6, x6, 1
sub x13, x13, x19
bge x13, x19, loop10
printa10:
addi x6, x6, 48
sb x6, 1024(x0)
addi x19, x0, 1
beq x0, x0, fun1

fun1:
xor x6, x6, x6
blt x13, x19, printar
loop1:
addi x6, x6, 1
sub x13, x13, x19
bge x13, x19, loop1
printar:
addi x6, x6, 48
sb x6, 1024(x0)

num1000000: .word 1000000 
num100000: .word 100000
num10000: .word 10000
num1000: .word 1000
num100: .word 100
num10: .word 10
