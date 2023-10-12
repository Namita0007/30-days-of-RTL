module mux_2_1(in_0,in_1,sel,out);
input [3:0] in_0,in_1;
input sel;
output [3:0] out;

assign out=sel?in_1:in_0;

endmodule