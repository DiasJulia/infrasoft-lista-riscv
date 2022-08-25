lw x10, a
lw x11, b
add x12, x10, x11
bne x10, x11, notEqual
sub x13, x11, x10
notEqual:
sub x13, x10, x11
halt
a: .word 0x5
b: .word 0x9
