module square_N_bit(num_in,num_out);
parameter n=4;
input [n-1:0] num_in;
output reg [((2*n)-1):0]num_out;
reg [((2*n)-1):0]temp;

always@(*)
begin
temp=num_in*num_in;
num_out=temp;
end

endmodule

