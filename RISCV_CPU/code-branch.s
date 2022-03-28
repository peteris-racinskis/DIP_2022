    .text
# Need to test the less-than and equality loops because they use different
# functionality. Unsigned comparison needs a separate test too. 
main:
    addi x1, zero, -15
    addi x2, zero, 99
loop_lt:
    addi x2, x2, -10
    blt x1, x2, loop_lt	# return to loop_lt if x1 < x2
    addi x3, zero, 0 # initialize x3 as 0
    addi x4, zero, 42	# intiialize x4 as 42
loop_eq:
    add x3, x3, x4	# put x3 + x4 into x3
    beq x3, x4, loop_eq # return to loop_eq if x3 == x4
    addi x3, zero, -1
    bltu x4, x3, ltu_works
ltu_doesnt_work:
    addi x5, zero, -1
    addi x5, zero, -1
    addi x5, zero, -1
ltu_works:
    addi x5, zero, 999
	
