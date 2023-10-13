module full_adder_mux2_1_tb();
reg a,b,c_in;
wire sum, carry_out;
integer i;

full_adder_mux2_1 DUT(a,b,c_in,sum,carry_out);

//using random function
initial 
    begin
        for (i=0;i<20;i=i+1)
        begin
            {a,b,c_in}={$random}%8;
            #5;
        end
    end
endmodule