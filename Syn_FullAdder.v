// -----------------------------------------------------------------------------------------
// Version | Programmer                        | Date       | Remark   
// -----------------------------------------------------------------------------------------
// V1      | Xaria (xli071@e.ntu.edu.sg)       | 31/07/2020 | finial version
// -----------------------------------------------------------------------------------------  
//
// The code is synothesis for checking a full adder
// The code is from Module3 in the NTU-TUM class, NM6008. 

module FullAdder ( CIN, A, B, S, COUT );
  input CIN, A, B;
  output S, COUT;
  wire   n5, n6, n7;

  XNR20 U6 ( .A(n5), .B(CIN), .Q(S) );
  CLKIN0 U7 ( .A(n6), .Q(COUT) );
  AOI220 U8 ( .A(B), .B(A), .C(n7), .D(CIN), .Q(n6) );
  CLKIN0 U9 ( .A(n5), .Q(n7) );
  XNR20 U10 ( .A(B), .B(A), .Q(n5) );
endmodule
