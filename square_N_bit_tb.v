module square_N_bit_tb();
parameter n=4;
reg [n-1:0] num_in;
wire [((2*n)-1):0]num_out;
integer i;

square_N_bit DUT(num_in,num_out);

initial begin
for(i=0;i<50;i=i+1)
begin
num_in={$random}%16;
#20;
end
end 

endmodule

