module full_subtractor_tb();
reg a,b,b_in;
wire diff, borrow_out;
integer i;

full_subtractor DUT(a,b,b_in,diff,borrow_out);

//using random function
initial 
    begin
        for (i=0;i<20;i=i+1)
        begin
            {a,b,b_in}={$random}%8;
            $display($time, "a=%b,b=%b,b_in=%b,diff=%b, borrow_out=%b", a, b, b_in, diff, borrow_out);
            #5;
            
        end
    end
endmodule
