module mux_4to1_2to1 (in, sel, out);
input [3:0] in;
input [1:0] sel;
output out;
wire w1,w2;

mux_2_1 M1(.in_0(in[2]),.in_1(in[3]),.sel(sel[0]),.out(w1));
mux_2_1 M2(.in_0(in[0]),.in_1(in[1]),.sel(sel[0]),.out(w2));
mux_2_1 M3(.in_0(w2),.in_1(w1),.sel(sel[1]),.out(out));

endmodule