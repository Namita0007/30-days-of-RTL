module demux1_4_tb();
reg in;
reg [1:0] sel;
wire [3:0] out;
integer i;


demux1_4 DUT(in, sel, out);
initial begin
        for (i=0;i<50;i=i+1)
        begin
            in={$random}%2;
            sel={$random}%4;
            #10;
    end
end
endmodule