lb x15, 1025(x0)
addi x16, x0, 48
addi x28, x0, 1

beq x15, x16, l0
l1:
lb x15, 1025(x0)
beq x15, x16, l10
l11:
lb x15, 1025(x0)
lb x15, 1025(x0)
sb x0, 1029(x0)
sb x0, 1027(x0)
halt

l10:
lb x15, 1025(x0)
lb x15, 1025(x0)
beq x15, x16, l1000
l1001:
lw x12, num9
sb x12, 1029(x0)
sb x28, 1027(x0)
halt			
l1000:
lw x12, num8
sb x12, 1029(x0)
sb x28, 1027(x0)
halt	
l0:
lb x15, 1025(x0)
beq x15, x16, l00
l01:
lb x15, 1025(x0)
beq x15, x16, l010
l011:
lb x15, 1025(x0)
beq x15, x16, l0110
l0111:
lw x12, num7
sb x12, 1029(x0)
sb x0, 1027(x0)
halt
l0110:
lw x12, num6
sb x12, 1029(x0)
sb x28, 1027(x0)
halt
l010:
lb x15, 1025(x0)
beq x15, x16, l0100
l0101:
lw x12, num5
sb x12, 1029(x0)
sb x28, 1027(x0)
halt			
l0100:
lw x12, num4
sb x12, 1029(x0)
sb x28, 1027(x0)
halt

l00:
lb x15, 1025(x0)
beq x15, x16, l000
l001:
lb x15, 1025(x0)
beq x15, x16, l0010
l0011:
lw x12, num3 #3
sb x12, 1029(x0)
sb x28, 1027(x0)
halt
l0010:
lw x12, num2 #2
sb x12, 1029(x0)
sb x28, 1027(x0)
halt
l000:
lb x15, 1025(x0)
beq x15, x16, l0000
l0001:
lw x12, num1
sb x12, 1029(x0)
sb x0, 1027(x0)
halt
l0000:
lw x12, num0
sb x12, 1029(x0)
sb x0, 1027(x0)
halt

num0: .word 0b111111
num1: .word 0b110
num2: .word 0b11011
num3: .word 0b1111
num4: .word 0b100110
num5: .word 0b101101
num6: .word 0b111101
num7: .word 0b111
num8: .word 0b111111
num9: .word 0b100111