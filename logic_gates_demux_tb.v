module logic_gates_demux_tb();
reg a,b;
wire [3:0] out_and, out_or, out_not, out_nand, out_nor, out_xnor;
integer i;


logic_gates_demux DUT(a,b,, out_xorout_and, out_or, out_not, out_nand, out_xor, out_xnor);

initial begin
        for (i=0;i<50;i=i+1)
        begin
            {a,b}={$random}%4;
            #10;
    end
end
endmodule