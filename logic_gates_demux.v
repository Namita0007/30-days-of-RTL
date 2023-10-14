module logic_gates_demux (a,b,out_and, out_or, out_not, out_nand, out_nor, out_xor, out_xnor);
input a,b;
output out_and, out_or, out_not, out_nand, out_nor, out_xor, out_xnor;
wire [3:0] w1,w2,w3,w4,w5,w6,w7,w8,w9,w10;


assign out_and=w1[3];
assign out_not=w2[0];
assign out_or=w4[0];
assign out_nand=w5[0];
assign out_nor=w6[0];
assign out_xor=w8[0];
assign out_xnor=w10[0];


//AND gate
demux1_4 D1(.in(1'b1),.sel({a,b}),.out(w1));

//NOT gate
demux1_4 D2(.in(1'b1),.sel({a,1'b0}),.out(w2));

//abar*bbar gate
demux1_4 D3(.in(1'b1),.sel({a,b}),.out(w3));

//OR gate
demux1_4 D4(.in(1'b1),.sel({w3[0],1'b0}),.out(w4));

//NAND gate
demux1_4 D5(.in(1'b1),.sel({w1[3],1'b0}),.out(w5));

//NOR gate
demux1_4 D6(.in(1'b1),.sel({w4[0],1'b0}),.out(w6));

//XOR gate
demux1_4 D7(.in(1'b1),.sel({w1[1],w1[2]}),.out(w7));
demux1_4 D8(.in(1'b1),.sel({w7[0],1'b0}),.out(w8));

//XNOR gate
demux1_4 D9(.in(1'b1),.sel({w1[0],w1[3]}),.out(w9));
demux1_4 D10(.in(1'b1),.sel({w9[0],1'b0}),.out(w10));

endmodule

