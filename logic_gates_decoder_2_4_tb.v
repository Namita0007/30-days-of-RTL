module logic_gates_decoder_2_4_tb();
reg A,B;
wire and_out, or_out, not_out, xor_out, xnor_out, nand_out, nor_out;
integer i;

logic_gates_decoder_2_4 DUT(A,B,and_out,or_out,not_out, xor_out, xnor_out, nand_out, nor_out);

initial
begin
    for(i=0;i<30;i=i+1)
    begin
        A={$random}%2;
        B={$random}%2;
        #20;
    end

end


endmodule