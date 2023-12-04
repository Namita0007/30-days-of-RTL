module input_majority_ckt_tb();
reg a,b,c;
wire out;
integer i;

input_majority_ckt DUT(a,b,c,out);

initial
begin
   for (i=0; i<30; i=i+1)
   begin
    {a,b,c}={$random}%8;
    #10;
   end
end

endmodule