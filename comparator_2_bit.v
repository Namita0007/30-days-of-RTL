module comparator_2_bit(num_A,num_B,greater,lesser,equal);
input [1:0] num_A, num_B;
output greater, lesser, equal;
wire temp1, temp2, temp3, temp4, temp5, temp6, temp7, temp8, temp9;

xnor xnor1(temp1, num_A[0], num_B[0]);
xnor xnor2(temp2, num_A[1], num_B[1]);
and and1(equal, temp1, temp2);

not not1(temp3, num_A[1]);
and and2(temp4, temp3, num_B[1]);

not not2(temp5, num_A[0]);
and and3(temp6, temp5, temp3, num_B[0]);

and and4(temp7, num_A[1], temp5, num_B[0], num_B[1]);
or or1(lesser, temp4, temp6, temp7);

not not3(temp8, num_B[1]);
not not4(temp9, num_B[0]);

and and5(temp10, num_A[1], temp8);
and and6(temp11, num_A[1], num_A[0], temp9);
and and7(temp12, temp3, num_A[0], temp8, num_B[0]);
or or2(greater, temp10, temp11, temp12);

endmodule