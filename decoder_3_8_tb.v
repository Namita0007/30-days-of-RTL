module decoder_3_8_tb();
reg [2:0]in;
wire [7:0]out;
integer i;

decoder_3_8 DUT(in,out);
initial
begin
    for(i=0;i<30;i=i+1)
    begin
in={$random}%8;
#20;
    end
end

endmodule
