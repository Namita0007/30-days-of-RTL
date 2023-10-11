//using full adder
module full_subtractor(a,b,b_in,diff,borrow_out);
input a,b,b_in;
output diff, borrow_out;
wire w0, w1;

full_adder_dataflow FA1 (.a(w0), .b(b), .c_in(b_in), .sum(w1), .carry_out(borrow_out));
not N1 (w0, a);
not N2 (diff, w1);

endmodule