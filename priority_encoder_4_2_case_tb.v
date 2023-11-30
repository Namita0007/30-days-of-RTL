module priority_encoder_4_2_case_tb ();
reg [3:0] in;
wire [1:0] out;
integer i;

priority_encoder_4_2_case DUT (in,out);

initial begin
    for (i=0;i<50;i=i+1)
    begin
        in={$random}%16;
        #10;
end
end
endmodule