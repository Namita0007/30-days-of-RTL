module bcd_adder_tb ();
reg [3:0] a,b;
wire [3:0] bcd_sum;
wire carry_out;

bcd_adder DUT (a,b,bcd_sum,carry_out);

initial 
begin
    a=4'b0000; b=4'b0001;
    a=4'b1000; b=4'b0001; #10;
    a=4'b1010; b=4'b0101; #10;
    a=4'b0011; b=4'b0101; #10;
    a=4'b1000; b=4'b0011; #10;
    a=4'b0100; b=4'b0101; #10;
    a=4'b1001; b=4'b0101; #10;
    a=4'b0100; b=4'b0100; #10;
end


endmodule