module carry_select_adder (a,b,c_in,sum,carry_out);
input [7:0] a,b;
input c_in;
output [7:0] sum;
output carry_out;
wire [3:0] sum_1, sum_2;
wire c0,c1,c2;

ripple_carry_adder FA1(.a(a[3:0]),.b(b[3:0]),.c_in(c_in),.sum(sum[3:0]),.carry_out(c0));
ripple_carry_adder FA2(.a(a[7:4]),.b(b[7:4]),.c_in(1'b0),.sum(sum_1),.carry_out(c1));
ripple_carry_adder FA3(.a(a[7:4]),.b(b[7:4]),.c_in(1'b1),.sum(sum_2),.carry_out(c2));
mux_2_1 M1 (sum_1,sum_2,c0,sum[7:4]);
mux_2_1 M2 (c1,c2,c0,carry_out);

endmodule