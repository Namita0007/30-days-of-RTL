module priority_encoder_8_3_tb();
reg [7:0] in;
wire [2:0] out;
integer i;

priority_encoder_8_3 DUT (in, out);
initial begin
    for (i=0;i<50;i=i+1)
    begin
        in={$random}%256;
        #10;
end
end

endmodule

