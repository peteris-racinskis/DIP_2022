    .text
# Due to how the system is set up right now there's always an empty instruction
# at address 0. This only matters when making absolute jumps. Need to think about
# what the best way to proceed is. In principle it's no big deal and could be
# handled by the compiler, but maybe a hardware solution is required?
main:
    addi x1, zero, -15
    addi x2, zero, 99
    addi x3, zero, 35
    addi x4, zero, 44
    addi x5, zero, 78
    jalr x7, 32(x0)	# Skip the next 2 instructions - what's in x7?
    add x0, zero, zero
    add x0, zero, zero
    add x6, x1, x2
    jal x7, main	# Return to main - what's in x7?
