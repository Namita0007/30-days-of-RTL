module comparator_2_bit_tb();
reg [1:0] num_A, num_B;
wire greater, lesser, equal;
integer i;

comparator_2_bit DUT(num_A,num_B,greater,lesser,equal);

initial
begin
    for(i=0;i<30;i=i+1)
    begin
        num_A={$random}%4;
        num_B={$random}%4;
        #20;
    end
end
endmodule