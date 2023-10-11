module bcd_adder (a,b,bcd_sum,carry_out);
input [3:0] a,b;
output [3:0] bcd_sum;
output carry_out;
wire [3:0] w0;
wire w1;
wire w2, w3; 
wire w4;
wire [3:0] w5;

ripple_carry_adder FA1(.a(a),.b(b),.c_in(1'b0),.sum(w0),.carry_out(w1));
and A1(w2,w0[3],w0[2]);
and A2(w3,w0[3],w0[1]);
or A3(w4,w1,w2,w3);

assign w5={1'b0,w4,w4,1'b0};

ripple_carry_adder FA2(.a(w0),.b(w5),.c_in(1'b0),.sum(bcd_sum),.carry_out(carry_out));


endmodule