module fa(
   input A, 
   input B, 
   input Cin,
   output Sum, 
   output Cout
   );
    
   assign Sum = A ^ B ^ Cin; // sum declaration
   assign Cout = (A & B) | (B & Cin) | (A & Cin); // Carry 
    
endmodule