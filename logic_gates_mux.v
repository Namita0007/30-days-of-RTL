module logic_gates_mux2_1(a,b,sel,out_and,out_or,out_nand,out_nor,out_not,out_xor,out_xnor);
input a,b,sel;
output out_and,out_or,out_nand,out_nor,out_not,out_xor, out_xnor;
wire w1;


//generating complement of b
mux_2_1 M8(.in_0(1'b1),.in_1(1'b0),.sel(b),.out(w1));

//output of all basic logic gates
mux_2_1 M1(.in_0(1'b1),.in_1(1'b0),.sel(a),.out(out_not));
mux_2_1 M2(.in_0(b),.in_1(1'b1),.sel(a),.out(out_or));
mux_2_1 M3(.in_0(1'b0),.in_1(b),.sel(a),.out(out_and));
mux_2_1 M4(.in_0(w1),.in_1(1'b0),.sel(a),.out(out_nor));
mux_2_1 M5(.in_0(1'b1),.in_1(w1),.sel(a),.out(out_nand));
mux_2_1 M6(.in_0(b),.in_1(w1),.sel(a),.out(out_xor));
mux_2_1 M7(.in_0(w1),.in_1(b),.sel(a),.out(out_xnor));

endmodule