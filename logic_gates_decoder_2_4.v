module logic_gates_decoder_2_4(A,B,and_out,or_out,not_out, xor_out, xnor_out, nand_out, nor_out);
input A,B;
output and_out, or_out, not_out, xor_out, xnor_out, nand_out, nor_out;
wire [3:0]w;
wire [3:0]temp;

decoder_2_4 D1(.in_1(A),.in_0(B),.out(w));
decoder_2_4 D2(.in_1(A),.in_0(1'b0),.out(temp));

assign nor_out=w[0];
assign or_out=~w[0];
assign and_out=w[3];
assign nand_out=~w[3];
assign xor_out=w[1]|w[2];
assign xnor_out=w[0]|w[3];
assign not_out=temp[0];

endmodule

/*module decoder_2_4(in_1,in_0,out);
input in_1,in_0;
output reg [3:0]out;

always@(*)
begin
    case({in_1,in_0})
    2'b00: out=4'b0001;
    2'b01: out=4'b0010;
    2'b10: out=4'b0100;
    2'b11: out=4'b1000;
    default: out=4'bz;
    endcase
end

endmodule
*/