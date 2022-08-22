lb x10, 1025(x0)
sb x10, 1024(x0)
lb x11, 1025(x0)
sb x11, 1024(x0)
lb x12, 1025(x0)
sb x12, 1024(x0)
lb x13, 1025(x0)
sb x13, 1024(x0)

addi x14, x0, 31
bge x10, x0, R1
addi x15, x0, 64
blt x11, x15, R1
addi x15, x0, 23
beq x12, x15, R1
blt x13, x15, R1
add x14, x0, 30

R1: 
sb x14, 1024(x0)
halt

val: .word 0x1
val2: .word 0
