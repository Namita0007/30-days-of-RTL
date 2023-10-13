module demux1to8_1to4 (in,sel,out);
input in;
input [2:0] sel;
output [7:0] out;
wire [3:0] w1;

demux1_4 D1(.in(in),.sel({1'b0,sel[2]}),.out(w1));
demux1_4 D2(.in(w1[0]),.sel({sel[1],sel[0]}),.out(out[3:0]));
demux1_4 D3(.in(w1[1]),.sel({sel[1],sel[0]}),.out(out[7:4]));


endmodule

