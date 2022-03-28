# It appears the order of these statements matters? 
# Looks like only the dependencies of the first output
# get traversed.
filename=code.s

code.mem: code-short.bin
	python3 code_pad.py

code-short.bin: code.out
	riscv64-linux-gnu-objcopy -O binary --only-section=.text code.out code-short.bin

code.out: $(filename)
	riscv64-linux-gnu-as -march=rv32e -o code.out $(filename)

dump: code.out
	riscv64-linux-gnu-objdump -d code.out

clean:
	rm -f code.mem
	rm -f code-short.mem
	rm -f code.out

rebuild:
	make clean
	make
