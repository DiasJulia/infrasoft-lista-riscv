lw x10, a
lw x11, b
sub x12, x10, x11
# como no caso de a ser igual a b a subtração b - a daria sempre 0, a - b supre todos os casos do codigo descrito
halt
a: .word 15
b: .word 7

