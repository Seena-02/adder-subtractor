`timescale 1ns / 1ps

module add_sub_tb(
    );
    reg [3:0]A;
    reg [3:0]B;
    reg Select;
    wire [3:0]Sum;
    wire Cout;
    
  add_sub dut(
  .A(A), 
  .B(B), 
  .Select(Select), 
  .Sum(Sum), 
  .Cout(Cout)
  );
  
  initial
  begin
  
    A = 4'b0000; B = 4'b0000; Select = 0; #100;
    A = 4'b1010; B = 4'b0101; Select = 1; #100;
    A = 4'b0101; B = 4'b1010; Select = 1; #100;
    A = 4'b1010; B = 4'b0101; Select = 0; #100;
    A = 4'b0101; B = 4'b1010; Select = 0; #100;
    A = 4'b1111; B = 4'b0001; Select = 1; #100;
    A = 4'b1110; B = 4'b0001; Select = 0; #100;
    A = 4'b0000; B = 4'b0001; Select = 1; #100;
    
  end
  
  
endmodule
