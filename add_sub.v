`timescale 1ns / 1ps

module add_sub(
    input [3:0]A,
    input [3:0]B,
    input Select,
    output [3:0]Sum,
    output Cout
    );
    
    wire wire1,wire2,wire3;
    wire B0,B1,B2,B3;
    
    assign B0=B[0] ^ Select;
    assign B1=B[1] ^ Select;
    assign B2=B[2] ^ Select;
    assign B3=B[3] ^ Select;
    
    fa g1(A[0], B0, Select, Sum[0], wire1);
    fa g2(A[1], B1, wire1, Sum[1], wire2);
    fa g3(A[2], B2, wire2, Sum[2], wire3);
    fa g4(A[3], B3, wire3, Sum[3], Cout);
    
endmodule
