module gray_binary_4bit (g,b);
input [3:0]g;
output [3:0]b;

buf buf1(b[3], g[3]);
xor xor1(b[2], b[3], g[2]);
xor xor2(b[1], b[2], g[1]);
xor xor3(b[0], b[1], g[0]);

endmodule