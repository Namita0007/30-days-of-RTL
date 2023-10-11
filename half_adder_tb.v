module half_adder_tb();
reg a,b;
wire sum, carry;
integer i;

half_adder DUT(a,b,sum,carry);

/*
initial 
begin
    a=1'b1; b=1'b0;
    #5 a=1'b0; b=1'b0;
    #5 a=1'b0; b=1'b1;
    #5 a=1'b1; b=1'b1;
end

endmodule 
*/


//using random function
initial 
    begin
        for (i=0;i<10;i=i+1)
        begin
            a={$random}%2;
            b={$random}%2;
            #5;
        end
    end
endmodule
