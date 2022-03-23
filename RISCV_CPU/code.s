    .text
main:
    addi x1, zero, -15
    addi x2, zero, 99
    addi x3, zero, 35
    addi x4, zero, 44
    addi x5, zero, 78
    add x6, x1, x2
    add x7, x2, x3
    add x8, x3, x4
    sub x9, x1, x2
    sub x10, x2, x3
    li x1, 64
    lw x2, 32(x1)	# load value of x1 + 32 into x2
    lw x4, 32(x1)	# load value of x1 + 32 into x4
    lw x3, 0(x1)	# load value of x2 + 0  into x3
    sw x3, 32(x1)	# store value of x3 into x1 + 32
    li x5, -756		# load immediate
    sw x5, 0(x1)	# store value of x5 into x1 + 0
    #lw x5, 0(x1)	# does duplicating the instruction do anything?
    lw x5, 0(x1)	# load value of x1 + 0  into x5
    addi x1, zero, 0
