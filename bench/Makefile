TARGET=mriscvcore
.PHONY: $(TARGET)
RTLSRC=../rtl
all: $(TARGET)

LDFLAGS=
CFLAGS=-g -O3

$(TARGET):
	verilator -Wno-fatal -I$(RTLSRC)/ --cc $(@).v --trace --exe ../memory_model.cpp ../$(@).cpp  -Mdir $(@) -CFLAGS "$(CFLAGS)"
	make -C $(@) -f V$(@).mk
clean:: 
	rm -rf *.o $(TARGET)
distclean:: clean
	rm -rf *~ *.txt *.vcd *.mif *.orig