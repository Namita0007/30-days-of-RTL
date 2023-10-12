module mux_2_1();
reg [1:0] in;
reg sel;
wire out;

mux_2_1 DUT(in,sel,out);
initial
begin
    in=2'b00; sel=1'b0;
    in=2'b00; sel=1'b1;
    in=2'b01; sel=1'b0;
    in=2'b01; sel=1'b1;
    in=2'b10; sel=1'b0;
    in=2'b10; sel=1'b1;
    in=2'b11; sel=1'b0;
    in=2'b11; sel=1'b1;
end

endmodule