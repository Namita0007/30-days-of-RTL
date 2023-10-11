module ripple_carry_adder_tb();
reg [3:0] a,b;
reg c_in;
wire [3:0] sum;
wire carry_out;
integer i;

ripple_carry_adder DUT(a,b,c_in,sum,carry_out);

//using random function
initial 
    begin
        for (i=0;i<50;i=i+1)
        begin
            {a,b,c_in}={$random}%512;
            #10;
        end
    end
endmodule
