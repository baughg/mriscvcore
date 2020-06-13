riscv64-linux-gnu-gcc-7 -g -o test64 test.c
riscv64-linux-gnu-readelf -a test64 | less
riscv64-linux-gnu-readelf -a test64 > test64.lst
riscv64-linux-gnu-objdump -d test64 > test64.asm
