module adder_sub_32bit(a,b,c_in,mode,sum_diff,carry_borrow);
input [31:0] a,b;
input c_in;
input mode;
output [31:0] sum_diff;
output carry_borrow;
wire [29:0] w;
wire [31:0] b1;


genvar j;
generate for (j=0; j<32; j=j+1)
begin: xor_gate
    xor x1 (b1[j],b[j],mode);
end
endgenerate


genvar i;
full_adder_dataflow FA1(a[0],b1[0],c_in,sum_diff[0],w[0]);
generate for (i=1; i<31; i=i+1)
begin: adder
    full_adder_dataflow FA2 (a[i],b1[i],w[i-1],sum_diff[i],w[i]);
end
endgenerate

full_adder_dataflow FA3(a[31],b1[31],w[29],sum_diff[31],carry_borrow);

endmodule