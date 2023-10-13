module mux_4to1_2to1_tb();
reg [3:0] in;
reg [1:0] sel;
wire out;
integer i;

mux_4to1_2to1 DUT(in, sel, out);
initial begin
        for (i=0;i<50;i=i+1)
        begin
            in={$random}%16;
            sel={$random}%4;
            #10;
    end
end

endmodule