module demux1_4(in,sel,out);
input in;
input [1:0] sel;
output reg [3:0] out;



//using case statement
always@(*)
begin
    case({in,sel})
    3'b100 : out=4'b0001;
    3'b101 : out=4'b0010;
    3'b110 : out=4'b0100;
    3'b111 : out=4'b1000;
    default : out=4'b0000;
    endcase
end

endmodule

/*
//using continuous assignment
assign out[3]=sel[1]&sel[0]&in;
assign out[2]=sel[1]&(~sel[0])&in;
assign out[1]=~sel[1]&sel[0]&in;
assign out[0]=~sel[1]&(~sel[0])&in;

//using ternary operator
assign out[0] = (sel==0)?in:1'b0;
assign out[1] = (sel==1)?in:1'b0;
assign out[2] = (sel==2)?in:1'b0;
assign out[3] = (sel==3)?in:1'b0;
*/