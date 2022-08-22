lb x11, 1025(x0)
sb x11, 1024(x0)
addi x11, x11, -48
addi x23, x0, 10

multi:
   addi x23, x23, -1
   add x13, x13, x11
   bne x23, x0, multi

lb x12, 1025(x0)
sb x12, 1024(x0)
addi x12,x12, -48

add x12, x12, x13

