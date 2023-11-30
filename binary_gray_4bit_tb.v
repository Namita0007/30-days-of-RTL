module binary_gray_4bit_tb ();
reg [3:0]b;
wire [3:0]g;
integer i;

binary_gray_4bit DUT (b,g);
initial
begin
   for (i=0; i<20; i=i+1)
   begin
   b={$random}%16;
   #20;
   end
    end

endmodule