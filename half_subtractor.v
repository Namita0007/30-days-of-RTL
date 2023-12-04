module half_subtractor (a, b, diff, borrow);
input a, b;
output diff, borrow;
wire temp;

not A1(temp, a);
xor A2(diff, a, b);
and A3(borrow, temp, b);

endmodule