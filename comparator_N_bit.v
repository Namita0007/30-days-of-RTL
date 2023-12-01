module comparator_N_bit(num_A,num_B,greater,lesser,equal);
parameter N=4;
input [N-1:0] num_A, num_B;
output reg greater, lesser, equal;

always@(*)
if (num_A>num_B)
begin
    greater=1'b1;
    lesser=1'b0;
    equal=1'b0;
end

else if (num_A==num_B)
begin
    greater=1'b0;
    lesser=1'b0;
    equal=1'b1;
end

else
begin
    greater=1'b0;
    lesser=1'b1;
    equal=1'b0;
end

endmodule