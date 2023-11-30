module gray_binary_4bit_tb ();
reg [3:0]g;
wire [3:0]b;
integer i;

gray_binary_4bit DUT (g,b);
initial
begin
   for (i=0; i<20; i=i+1)
   begin
   g={$random}%16;
   #20;
   end
    end

endmodule