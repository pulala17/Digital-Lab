module StateMachine ( CLK, NRST, start, rst, CIN, A, B, S, COUT );
  input CLK, NRST, start, rst, CIN, A, B;
  output S, COUT;
  wire   N27, N28, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11;
  wire   [1:0] state;
  wire   [1:0] next_state;

  DFC1 \state_reg[0]  ( .D(next_state[0]), .C(CLK), .RN(NRST), .Q(state[0]), 
        .QN(n2) );
  DFC1 \state_reg[1]  ( .D(next_state[1]), .C(CLK), .RN(NRST), .Q(state[1]), 
        .QN(n1) );
  DF1 COUT_reg ( .D(N28), .C(CLK), .Q(COUT) );
  DF1 S_reg ( .D(N27), .C(CLK), .Q(S) );
  NOR23 U12 ( .A(rst), .B(n3), .Q(next_state[1]) );
  XNR20 U13 ( .A(state[1]), .B(state[0]), .Q(n3) );
  CLKIN0 U14 ( .A(n2), .Q(n8) );
  INV3 U15 ( .A(n8), .Q(n9) );
  BUF2 U16 ( .A(n11), .Q(n10) );
  OAI210 U17 ( .A(rst), .B(n10), .C(n4), .Q(next_state[0]) );
  CLKBU2 U18 ( .A(n1), .Q(n11) );
  XOR21 U19 ( .A(B), .B(A), .Q(n6) );
  NOR21 U20 ( .A(n5), .B(n10), .Q(N28) );
  AOI221 U21 ( .A(CIN), .B(n6), .C(A), .D(B), .Q(n5) );
  NOR21 U22 ( .A(n7), .B(n9), .Q(N27) );
  XNR21 U23 ( .A(CIN), .B(n6), .Q(n7) );
  NAND31 U24 ( .A(n9), .B(n11), .C(start), .Q(n4) );
endmodule
