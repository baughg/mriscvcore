riscv32-unknown-elf-gcc -g -o test test.c
riscv32-unknown-elf-readelf -a test | less
riscv32-unknown-elf-readelf -a test > test.lst
riscv32-unknown-elf-objdump -d test > test.asm
