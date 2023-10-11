//Dataflow modelling
module full_adder_dataflow(a,b,c_in,sum,carry_out);
input a,b,c_in;
output sum, carry_out;

assign sum=a^b^c_in;
assign carry_out=((a^b)&c_in)|(a&b);

endmodule