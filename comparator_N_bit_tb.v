module comparator_N_bit_tb();
parameter N=4;
reg [N-1:0] num_A, num_B;
wire greater, lesser, equal;
integer i;

comparator_N_bit DUT(num_A,num_B,greater,lesser,equal);

initial
begin
    for(i=0;i<30;i=i+1)
    begin
        num_A={$random}%16;
        num_B={$random}%16;
        #20;
    end
end
endmodule