module logic_gates_mux2_1_tb();
reg a,b,sel;
wire out_and,out_or,out_nand,out_nor,out_not,out_xor, out_xnor;
integer i;


logic_gates_mux2_1 DUT(a,b,sel,out_and,out_or,out_nand,out_nor,out_not,out_xor,out_xnor);

initial
begin
    for (i=0;i<50;i=i+1)
    begin
        {a,b}={$random}%4;
        sel={$random}%2;
        #10;
end
end
endmodule