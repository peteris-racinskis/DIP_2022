    .text
main:
    li x1, 64		# load immediate
    li x6, 255		# load immediate (8 1's)
    sb x6, 0(x1)	# store byte
    lb x2, 0(x1)	# load byte (should be sign extended)
    lb x3, 0(x1)	# load byte (should be cached)
    lbu x4, 0(x1)	# load byte (should be cached! writes are unsigned. shouldn't be sign extended)
    li x6, 65535	# load immediate (16 1's)
    sh x6, 0(x1)	# store half
    lh x2, 0(x1)	# load hex (should be sign extended)
    lh x3, 0(x1)	# load hex (should be cached)
    lhu x4, 0(x1)	# load hex (shouldn't be sign extended; should be cached)
    lw x2, 0(x1)	# load word (shouldn't be cached)
    lw x3, 0(x1)	# load word (should be cached)
    lbu x4, 1(x1)	# load byte (shouldn't be cached or se)
    lhu x5, 1(x1)	# load half (shouldn't be cached or se)
