loop:
	lh x10, 1031(x0) 
	addi x13, x0, 204
	blt x10, x13, vermelhoEsq
	addi x13, x0, 306
	blt x10, x13, amareloEsq
	addi x13, x0, 408
	blt x10, x13, amareloDir
	addi x13, x0, 510
	blt x10, x13, verdeEsq
	addi x13, x0, 612
	blt x10, x13, verdeDir
	beq x0, x0, vermelhoDir

vermelhoEsq:
		addi x11, x0, 3
		sb x11, 1033(x0)
		addi x12, x0, 1000
		sb x12, 1034(x0)
		beq x0, x0, loop	

vermelhoDir:
		addi x11, x0, 5
		sb x11, 1033(x0) 
		addi x12, x0, 1000
		sb x12, 1034(x0) 
		beq x0, x0, loop	
	
amareloEsq:
		addi x11, x0, 6
		sb x11, 1033(x0) 
		addi x12, x0, 1000
		sb x12, 1034(x0) 
		beq x0, x0, loop	

amareloDir:
		addi x11, x0, 9
		sb x11, 1033(x0) 
		addi x12, x0, 1000
		sb x12, 1034(x0) 
		beq x0, x0, loop	

verdeEsq:
		addi x11, x0, 10
		sb x11, 1033(x0) 
		addi x12, x0, 1000
		sb x12, 1034(x0) 
		beq x0, x0, loop	

verdeDir:
		addi x11, x0, 11
		sb x11, 1033(x0) 
		addi x12, x0, 1000
		sb x12, 1034(x0) 
		beq x0, x0, loop	




