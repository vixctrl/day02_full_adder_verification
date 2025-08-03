iverilog -o full_adder.vvp full_adder.v tb_full_adder.v
vvp full_adder.vvp
gtkwave output.vcd
