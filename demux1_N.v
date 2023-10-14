module demux1_N(in,sel,out);
parameter N=16;

input in;
input [$clog2(N)-1:0] sel;
output [N-1:0] out;



genvar i;
generate for(i=0; i<N; i=i+1)
    begin
    assign out[i]= (sel==i)?in:1'b0;
end 
endgenerate

endmodule

