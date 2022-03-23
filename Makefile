VERIOG = iverilog
TARGET = decoder.vcd

$(TARGET) : simple.vvp
	vvp simple.vvp

simple.vvp: decode_3_8_tb.v decode_3_8.v
	$(VERIOG) -o simple.vvp decode_3_8_tb.v decode_3_8.v

clean:
	rm $(TARGET)
