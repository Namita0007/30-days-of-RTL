module half_subtractor_tb ();
reg a, b;
wire diff, borrow;
integer i;

half_subtractor DUT(a, b, diff, borrow);

initial begin
    for(i=0; i<20; i=i+1)
    begin
    a={$random}%2;
    b={$random}%2;
    #10;
end
end

endmodule