module adder_sub_32bit_tb();
reg [31:0] a,b;
reg c_in;
reg mode;
wire [31:0] sum_diff;
wire carry_borrow;
integer i;

adder_sub_32bit DUT(a,b,c_in,mode,sum_diff,carry_borrow);

//using random function
    initial 
    begin
        for (i=0;i<50;i=i+1)
        begin
            a={$random}%1024;
            b={$random}%1024;
            c_in={$random}%2;
            mode={$random}%2;

            #10;
        end
    end    

endmodule