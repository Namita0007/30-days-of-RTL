module demux1to8_1to4_tb ();
reg in;
reg [2:0] sel;
wire [7:0] out;
integer i;

demux1to8_1to4 DUT(in,sel,out);

initial
begin
    for (i=0;i<50;i=i+1)
    begin
        in={$random}%2;
        sel={$random}%8;
        #10;
end
end

endmodule
