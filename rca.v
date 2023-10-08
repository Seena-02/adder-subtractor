module rca(A,B,Cin,Sum,Cout);
    input [3:0] A, B;
    input Cin;
    output [3:0] Sum;
    output Cout;
    wire wire1, wire2, wire3;
    
    fa g1(A[0], B[0], Cin, Sum[0], wire1);
    fa g2(A[1], B[1], wire1, Sum[1], wire2);
    fa g3(A[2], B[2], wire2, Sum[2], wire3);
    fa g4(A[1], B[1], wire1, Sum[3], Cout);

endmodule
