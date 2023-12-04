module input_majority_ckt (a,b,c,out);
input a,b,c;
output out;
wire w1, w2, w3;

and A1 (w1,a,b);
and A2 (w2,b,c);
and A3 (w3,a,c);
or A4 (out, w1, w2, w3);

endmodule