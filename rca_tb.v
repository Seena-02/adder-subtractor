`timescale 1ns / 1ps

module rca_tb();
 //INPUTS
 reg [3:0] A;
 reg [3:0] B;
 reg Cin;
 //OUTPUTS
 wire [3:0]Sum;
 wire Cout;
 
  rca uut(
  .A(A), 
  .B(B), 
  .Cin(Cin), 
  .Sum(Sum), 
  .Cout(Cout)
  );
  
  initial 
  begin
    A = 4'b0000; B = 4'b0000; Cin = 0; #100;
    A = 4'b1010; B = 4'b0101; Cin = 1; #100;
    A = 4'b0101; B = 4'b1010; Cin = 1; #100;
    A = 4'b1010; B = 4'b0101; Cin = 0; #100;
    A = 4'b0101; B = 4'b1010; Cin = 0; #100;
    A = 4'b1111; B = 4'b0001; Cin = 1; #100;
    A = 4'b1110; B = 4'b0001; Cin = 0; #100;
    A = 4'b0000; B = 4'b0001; Cin = 1; #100;
  end
endmodule
