module binary_gray_4bit (b,g);
input [3:0]b;
output [3:0]g;

buf buf1(g[3], b[3]);
xor xor1(g[2], b[3], b[2]);
xor xor2(g[1], b[2], b[1]);
xor xor3(g[0], b[1], b[0]);

endmodule