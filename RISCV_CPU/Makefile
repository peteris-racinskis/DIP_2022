# It appears the order of these statements matters? 
# Looks like only the dependencies of the first output
# get traversed.
code.mem: code-short.bin
	python3 code_pad.py
	rm code.out
	rm code-short.bin

code-short.bin: code.out
	riscv64-linux-gnu-objcopy -O binary --only-section=.text code.out code-short.bin

code.out: code.s
	riscv64-linux-gnu-as -march=rv32e -o code.out code.s

clean:
	rm code.mem

rebuild:
	make clean
	make
