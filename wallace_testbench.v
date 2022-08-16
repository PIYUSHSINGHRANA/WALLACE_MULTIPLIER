module wallace_testbench;
reg [7:0]a;
reg [7:0]b;
wire [15:0]product;

wallace_8 DUT (.a(a),.b(b),.product(product));
initial
begin

 
 a = 8'd10; b = 8'd10; #50;
 a = 8'd25; b = 8'd100; #50;
 a = 8'd5; b = 8'd5; #50;
 a = 8'd64; b = 8'd69; #100;
 a = 8'd15; b = 8'd5; #100;
 a = 8'd99; b = 8'd10; #100;
 a = 8'd78; b = 8'd90; #100;
 a = 8'd110; b = 8'd0; #100;
 a = 8'b11111110; b = 8'b10000000; #100;
 #5 $finish;
end
endmodule
