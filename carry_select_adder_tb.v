module carry_select_adder_tb ();
reg [7:0] a,b;
reg c_in;
wire [7:0] sum;
wire carry_out;
integer i;

carry_select_adder DUT (a,b,c_in,sum,carry_out);
initial begin
    for (i=0;i<50;i=i+1)
    begin
        {a,b}={$random}%65536;
        c_in={$random}%2;
        #10;
end
end

endmodule