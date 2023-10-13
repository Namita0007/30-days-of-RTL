module mux_2_1_tb();
reg in_0, in_1;
reg sel;
wire out;
integer i;

mux_2_1 DUT(in,sel,out);
initial begin
        for (i=0;i<50;i=i+1)
        begin
            {in_0,in_1}={$random}%4;
            sel={$random}%2;
    end
end

endmodule