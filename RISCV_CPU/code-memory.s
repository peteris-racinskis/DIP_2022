    .text
main:
    li x1, 64
    lw x2, 32(x1)	# load value of x1 + 32 into x2
    add x7, zero, 15
    add x8, x7, x1	# show that loads don't mess with arithmetic
    lw x4, 32(x1)	# load value of x1 + 32 into x4
    add x0, zero, zero
    lw x3, 0(x1)	# load value of x2 + 0  into x3
    sw x3, 32(x1)	# store value of x3 into x1 + 32
    li x5, -756		# load immediate
    sw x5, 0(x1)	# store value of x5 into x1 + 0
    lw x5, 0(x1)	# load value of x1 + 0  into x5
    lw x6, 0(x1)	# show that loads that follow each other work
