module binary_one_hot_tb ();
reg [1:0] in;
wire [3:0] out;
integer i;

binary_one_hot DUT(in,out);
initial
begin
    for(i=0; i<20; i=i+1)
    begin
        in={$random}%4;
        #20;
end
end
endmodule