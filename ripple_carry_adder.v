//Dataflow modelling
module ripple_carry_adder(a,b,c_in,sum,carry_out);
input [3:0] a,b;
input c_in;
output [3:0] sum;
output carry_out;
wire w0, w1, w2;

full_adder_dataflow FA1 (.a(a[0]), .b(b[0]), .c_in(c_in), .sum(sum[0]), .carry_out(w0));
full_adder_dataflow FA2 (.a(a[1]), .b(b[1]), .c_in(w0), .sum(sum[1]), .carry_out(w1));
full_adder_dataflow FA3 (.a(a[2]), .b(b[2]), .c_in(w1), .sum(sum[2]), .carry_out(w2));
full_adder_dataflow FA4 (.a(a[3]), .b(b[3]), .c_in(w2), .sum(sum[3]), .carry_out(carry_out));

endmodule