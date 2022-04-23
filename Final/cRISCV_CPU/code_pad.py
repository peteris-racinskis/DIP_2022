#!/usr/bin/env python3
CODE_LENGTH=256
INSTRUCTION_LENGTH=4

with open("code-short.bin", 'rb') as f:
    code = list(f.read())
padding = [0 for i in range(CODE_LENGTH*INSTRUCTION_LENGTH-len(code))]
padded = code + padding
instructions = []
for i in range(CODE_LENGTH):
    base = i * INSTRUCTION_LENGTH
    instructions.append("".join(["{0:08b}".format(x) for x in padded[base:base+INSTRUCTION_LENGTH]][::-1])+"\n")
with open("code.mem", 'w') as f:
    f.writelines(instructions)