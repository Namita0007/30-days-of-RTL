module demux1_N_tb ();
parameter N=16;

reg in;
reg [$clog2(N)-1:0] sel;
wire [N-1:0] out;
integer i;



demux1_N DUT(in, sel, out);
initial begin
        for (i=0;i<50;i=i+1)
        begin
            in={$random}%2;
            sel={$random}%N;
            #10;
    end
end
endmodule