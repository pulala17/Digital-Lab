
module MatrixMultiplier ( CLK, NRST, start, A, B, OUT, OUT_STROBE );
  input [7:0] A;
  input [7:0] B;
  output [16:0] OUT;
  input CLK, NRST, start;
  output OUT_STROBE;
  wire   N75, N76, N77, N78, N79, N80, N81, N82, N83, N84, N85, N86, N87, N88,
         N89, N90, N91, N111, N112, N113, N114, N115, N116, N117, N118, N119,
         N120, N121, N122, N123, N124, N125, N126, n24, n25, n26, n27, n28,
         n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42,
         n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56,
         n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70,
         n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84,
         n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98,
         n99, n100, n101, n102, n103, n104, n105, n106, n107, \add_73/CI ,
         n108, n109, n110, n111, n112, n113, n114, n115, n116, n117, n118,
         n119, n120, n121, n122, n123, n124, n125, n126, n127, n128, n129,
         n130, n131, n132, n133, n134, n135, n136, n137, n138, n139, n140,
         n141, n142, n143, n144, n145, n146, n147, n148, n149, n150, n151,
         n152, n153, n154, n155, n156, n157, n158, n159, n160, n161, n162,
         n163, n164, n165, n166, n167, n168, n169, n170, n171;
  wire   [2:0] state;
  wire   [2:0] next_state;
  wire   [15:0] MUL;
  wire   [16:0] ADD;
  wire   [16:1] \add_73/carry ;

  DFC3 \ADD_reg[16]  ( .D(n141), .C(CLK), .RN(n149), .Q(ADD[16]), .QN(n27) );
  DFC3 \ADD_reg[15]  ( .D(n139), .C(CLK), .RN(n149), .Q(ADD[15]), .QN(n28) );
  DFC3 \ADD_reg[14]  ( .D(n137), .C(CLK), .RN(n149), .Q(ADD[14]), .QN(n29) );
  DFC3 \ADD_reg[13]  ( .D(n135), .C(CLK), .RN(n149), .Q(ADD[13]), .QN(n30) );
  DFC3 \ADD_reg[12]  ( .D(n133), .C(CLK), .RN(n149), .Q(ADD[12]), .QN(n31) );
  DFC3 \ADD_reg[11]  ( .D(n131), .C(CLK), .RN(n149), .Q(ADD[11]), .QN(n32) );
  DFC3 \ADD_reg[10]  ( .D(n129), .C(CLK), .RN(n149), .Q(ADD[10]), .QN(n33) );
  DFC3 \ADD_reg[9]  ( .D(n127), .C(CLK), .RN(n149), .Q(ADD[9]), .QN(n34) );
  DFC3 \ADD_reg[8]  ( .D(n125), .C(CLK), .RN(n149), .Q(ADD[8]), .QN(n35) );
  DFC3 \ADD_reg[7]  ( .D(n123), .C(CLK), .RN(n150), .Q(ADD[7]), .QN(n36) );
  DFC3 \ADD_reg[6]  ( .D(n121), .C(CLK), .RN(n150), .Q(ADD[6]), .QN(n37) );
  DFC3 \ADD_reg[5]  ( .D(n119), .C(CLK), .RN(n150), .Q(ADD[5]), .QN(n38) );
  DFC3 \ADD_reg[4]  ( .D(n117), .C(CLK), .RN(n150), .Q(ADD[4]), .QN(n39) );
  DFC3 \ADD_reg[3]  ( .D(n115), .C(CLK), .RN(n150), .Q(ADD[3]), .QN(n40) );
  DFC3 \ADD_reg[2]  ( .D(n113), .C(CLK), .RN(n150), .Q(ADD[2]), .QN(n41) );
  DFC3 \ADD_reg[1]  ( .D(n111), .C(CLK), .RN(n150), .Q(ADD[1]), .QN(n42) );
  DFC3 \ADD_reg[0]  ( .D(n109), .C(CLK), .RN(n150), .Q(ADD[0]), .QN(n43) );
  OAI212 U49 ( .A(state[1]), .B(n86), .C(n63), .Q(n87) );
  ADD32 \add_73/U1_0  ( .A(MUL[0]), .B(ADD[0]), .CI(\add_73/CI ), .CO(
        \add_73/carry [1]), .S(N75) );
  ADD32 \add_73/U1_1  ( .A(MUL[1]), .B(ADD[1]), .CI(\add_73/carry [1]), .CO(
        \add_73/carry [2]), .S(N76) );
  ADD32 \add_73/U1_2  ( .A(MUL[2]), .B(ADD[2]), .CI(\add_73/carry [2]), .CO(
        \add_73/carry [3]), .S(N77) );
  ADD32 \add_73/U1_3  ( .A(MUL[3]), .B(ADD[3]), .CI(\add_73/carry [3]), .CO(
        \add_73/carry [4]), .S(N78) );
  ADD32 \add_73/U1_4  ( .A(MUL[4]), .B(ADD[4]), .CI(\add_73/carry [4]), .CO(
        \add_73/carry [5]), .S(N79) );
  ADD32 \add_73/U1_5  ( .A(MUL[5]), .B(ADD[5]), .CI(\add_73/carry [5]), .CO(
        \add_73/carry [6]), .S(N80) );
  ADD32 \add_73/U1_6  ( .A(MUL[6]), .B(ADD[6]), .CI(\add_73/carry [6]), .CO(
        \add_73/carry [7]), .S(N81) );
  ADD32 \add_73/U1_7  ( .A(MUL[7]), .B(ADD[7]), .CI(\add_73/carry [7]), .CO(
        \add_73/carry [8]), .S(N82) );
  ADD32 \add_73/U1_8  ( .A(MUL[8]), .B(ADD[8]), .CI(\add_73/carry [8]), .CO(
        \add_73/carry [9]), .S(N83) );
  ADD32 \add_73/U1_9  ( .A(MUL[9]), .B(ADD[9]), .CI(\add_73/carry [9]), .CO(
        \add_73/carry [10]), .S(N84) );
  ADD32 \add_73/U1_10  ( .A(MUL[10]), .B(ADD[10]), .CI(\add_73/carry [10]), 
        .CO(\add_73/carry [11]), .S(N85) );
  ADD32 \add_73/U1_11  ( .A(MUL[11]), .B(ADD[11]), .CI(\add_73/carry [11]), 
        .CO(\add_73/carry [12]), .S(N86) );
  ADD32 \add_73/U1_12  ( .A(MUL[12]), .B(ADD[12]), .CI(\add_73/carry [12]), 
        .CO(\add_73/carry [13]), .S(N87) );
  ADD32 \add_73/U1_13  ( .A(MUL[13]), .B(ADD[13]), .CI(\add_73/carry [13]), 
        .CO(\add_73/carry [14]), .S(N88) );
  ADD32 \add_73/U1_14  ( .A(MUL[14]), .B(ADD[14]), .CI(\add_73/carry [14]), 
        .CO(\add_73/carry [15]), .S(N89) );
  ADD32 \add_73/U1_15  ( .A(MUL[15]), .B(ADD[15]), .CI(\add_73/carry [15]), 
        .CO(\add_73/carry [16]), .S(N90) );
  DFC3 \state_reg[0]  ( .D(n143), .C(CLK), .RN(n149), .Q(state[0]), .QN(n26)
         );
  DFC3 \state_reg[2]  ( .D(n151), .C(CLK), .RN(NRST), .Q(state[2]), .QN(n24)
         );
  DFC3 \state_reg[1]  ( .D(next_state[1]), .C(CLK), .RN(NRST), .Q(state[1]), 
        .QN(n25) );
  DFC3 \OUT_reg[0]  ( .D(n152), .C(CLK), .RN(NRST), .Q(OUT[0]) );
  DFC3 \OUT_reg[1]  ( .D(n153), .C(CLK), .RN(NRST), .Q(OUT[1]) );
  DFC3 \OUT_reg[2]  ( .D(n154), .C(CLK), .RN(NRST), .Q(OUT[2]) );
  DFC3 \OUT_reg[3]  ( .D(n155), .C(CLK), .RN(n150), .Q(OUT[3]) );
  DFC3 \OUT_reg[4]  ( .D(n156), .C(CLK), .RN(n149), .Q(OUT[4]) );
  DFC3 \OUT_reg[5]  ( .D(n157), .C(CLK), .RN(n150), .Q(OUT[5]) );
  DFC3 \OUT_reg[6]  ( .D(n158), .C(CLK), .RN(n149), .Q(OUT[6]) );
  DFC3 \OUT_reg[7]  ( .D(n159), .C(CLK), .RN(n150), .Q(OUT[7]) );
  DFC3 \OUT_reg[8]  ( .D(n160), .C(CLK), .RN(NRST), .Q(OUT[8]) );
  DFC3 \OUT_reg[9]  ( .D(n161), .C(CLK), .RN(NRST), .Q(OUT[9]) );
  DFC3 \OUT_reg[10]  ( .D(n162), .C(CLK), .RN(n150), .Q(OUT[10]) );
  DFC3 \OUT_reg[11]  ( .D(n163), .C(CLK), .RN(n149), .Q(OUT[11]) );
  DFC3 \OUT_reg[12]  ( .D(n164), .C(CLK), .RN(NRST), .Q(OUT[12]) );
  DFC3 \OUT_reg[13]  ( .D(n165), .C(CLK), .RN(NRST), .Q(OUT[13]) );
  DFC3 \OUT_reg[14]  ( .D(n166), .C(CLK), .RN(NRST), .Q(OUT[14]) );
  DFC3 \OUT_reg[15]  ( .D(n167), .C(CLK), .RN(NRST), .Q(OUT[15]) );
  DFC3 \OUT_reg[16]  ( .D(n168), .C(CLK), .RN(NRST), .Q(OUT[16]) );
  DFC3 OUT_STROBE_reg ( .D(n169), .C(CLK), .RN(n150), .Q(OUT_STROBE) );
  MatrixMultiplier_DW_mult_tc_0 r306 ( .a(A), .b(B), .product({N126, N125, 
        N124, N123, N122, N121, N120, N119, N118, N117, N116, N115, N114, N113, 
        N112, N111}) );
  DFEC1 \MUL_reg[15]  ( .D(N126), .E(n145), .C(CLK), .RN(NRST), .Q(MUL[15]), 
        .QN(n44) );
  DFEC1 \MUL_reg[14]  ( .D(N125), .E(n145), .C(CLK), .RN(NRST), .Q(MUL[14]), 
        .QN(n45) );
  DFEC1 \MUL_reg[13]  ( .D(N124), .E(n145), .C(CLK), .RN(NRST), .Q(MUL[13]), 
        .QN(n46) );
  DFEC1 \MUL_reg[12]  ( .D(N123), .E(n145), .C(CLK), .RN(NRST), .Q(MUL[12]), 
        .QN(n47) );
  DFEC1 \MUL_reg[11]  ( .D(N122), .E(n145), .C(CLK), .RN(NRST), .Q(MUL[11]), 
        .QN(n48) );
  DFEC1 \MUL_reg[10]  ( .D(N121), .E(n145), .C(CLK), .RN(NRST), .Q(MUL[10]), 
        .QN(n49) );
  DFEC1 \MUL_reg[9]  ( .D(N120), .E(n145), .C(CLK), .RN(NRST), .Q(MUL[9]), 
        .QN(n50) );
  DFEC1 \MUL_reg[8]  ( .D(N119), .E(n145), .C(CLK), .RN(NRST), .Q(MUL[8]), 
        .QN(n51) );
  DFEC1 \MUL_reg[7]  ( .D(N118), .E(n145), .C(CLK), .RN(NRST), .Q(MUL[7]), 
        .QN(n52) );
  DFEC1 \MUL_reg[6]  ( .D(N117), .E(n145), .C(CLK), .RN(NRST), .Q(MUL[6]), 
        .QN(n53) );
  DFEC1 \MUL_reg[5]  ( .D(N116), .E(n145), .C(CLK), .RN(NRST), .Q(MUL[5]), 
        .QN(n54) );
  DFEC1 \MUL_reg[4]  ( .D(N115), .E(n145), .C(CLK), .RN(NRST), .Q(MUL[4]), 
        .QN(n55) );
  DFEC1 \MUL_reg[3]  ( .D(N114), .E(n145), .C(CLK), .RN(NRST), .Q(MUL[3]), 
        .QN(n56) );
  DFEC1 \MUL_reg[2]  ( .D(N113), .E(n145), .C(CLK), .RN(NRST), .Q(MUL[2]), 
        .QN(n57) );
  DFEC1 \MUL_reg[1]  ( .D(N112), .E(n145), .C(CLK), .RN(NRST), .Q(MUL[1]), 
        .QN(n58) );
  DFEC1 \MUL_reg[0]  ( .D(N111), .E(n145), .C(CLK), .RN(NRST), .Q(MUL[0]), 
        .QN(n59) );
  XOR31 \add_73/U1_16  ( .A(MUL[15]), .B(ADD[16]), .C(\add_73/carry [16]), .Q(
        N91) );
  NAND22 U75 ( .A(n89), .B(n87), .Q(n88) );
  INV0 U76 ( .A(n140), .Q(n141) );
  CLKIN0 U77 ( .A(n107), .Q(n108) );
  INV3 U78 ( .A(n108), .Q(n109) );
  OAI220 U79 ( .A(n87), .B(n43), .C(n88), .D(n59), .Q(n107) );
  CLKIN0 U80 ( .A(n106), .Q(n110) );
  INV3 U81 ( .A(n110), .Q(n111) );
  OAI220 U82 ( .A(n87), .B(n42), .C(n88), .D(n58), .Q(n106) );
  CLKIN0 U83 ( .A(n105), .Q(n112) );
  INV3 U84 ( .A(n112), .Q(n113) );
  OAI220 U85 ( .A(n87), .B(n41), .C(n88), .D(n57), .Q(n105) );
  CLKIN0 U86 ( .A(n104), .Q(n114) );
  INV3 U87 ( .A(n114), .Q(n115) );
  OAI220 U88 ( .A(n87), .B(n40), .C(n88), .D(n56), .Q(n104) );
  CLKIN0 U89 ( .A(n103), .Q(n116) );
  INV3 U90 ( .A(n116), .Q(n117) );
  OAI220 U91 ( .A(n87), .B(n39), .C(n88), .D(n55), .Q(n103) );
  CLKIN0 U92 ( .A(n102), .Q(n118) );
  INV3 U93 ( .A(n118), .Q(n119) );
  OAI220 U94 ( .A(n87), .B(n38), .C(n88), .D(n54), .Q(n102) );
  CLKIN0 U95 ( .A(n101), .Q(n120) );
  INV3 U96 ( .A(n120), .Q(n121) );
  OAI220 U97 ( .A(n87), .B(n37), .C(n88), .D(n53), .Q(n101) );
  CLKIN0 U98 ( .A(n100), .Q(n122) );
  INV3 U99 ( .A(n122), .Q(n123) );
  OAI220 U100 ( .A(n87), .B(n36), .C(n88), .D(n52), .Q(n100) );
  CLKIN0 U101 ( .A(n99), .Q(n124) );
  INV3 U102 ( .A(n124), .Q(n125) );
  OAI220 U103 ( .A(n87), .B(n35), .C(n88), .D(n51), .Q(n99) );
  CLKIN0 U104 ( .A(n98), .Q(n126) );
  INV3 U105 ( .A(n126), .Q(n127) );
  OAI220 U106 ( .A(n87), .B(n34), .C(n88), .D(n50), .Q(n98) );
  CLKIN0 U107 ( .A(n97), .Q(n128) );
  INV3 U108 ( .A(n128), .Q(n129) );
  OAI220 U109 ( .A(n87), .B(n33), .C(n88), .D(n49), .Q(n97) );
  CLKIN0 U110 ( .A(n96), .Q(n130) );
  INV3 U111 ( .A(n130), .Q(n131) );
  OAI220 U112 ( .A(n87), .B(n32), .C(n88), .D(n48), .Q(n96) );
  CLKIN0 U113 ( .A(n95), .Q(n132) );
  INV3 U114 ( .A(n132), .Q(n133) );
  OAI220 U115 ( .A(n87), .B(n31), .C(n88), .D(n47), .Q(n95) );
  CLKIN0 U116 ( .A(n94), .Q(n134) );
  INV3 U117 ( .A(n134), .Q(n135) );
  OAI220 U118 ( .A(n87), .B(n30), .C(n88), .D(n46), .Q(n94) );
  CLKIN0 U119 ( .A(n93), .Q(n136) );
  INV3 U120 ( .A(n136), .Q(n137) );
  OAI220 U121 ( .A(n87), .B(n29), .C(n88), .D(n45), .Q(n93) );
  CLKIN0 U122 ( .A(n92), .Q(n138) );
  INV3 U123 ( .A(n138), .Q(n139) );
  OAI220 U124 ( .A(n87), .B(n28), .C(n88), .D(n44), .Q(n92) );
  CLKIN0 U125 ( .A(n91), .Q(n140) );
  OAI222 U126 ( .A(n87), .B(n27), .C(n88), .D(n44), .Q(n91) );
  CLKIN8 U127 ( .A(n66), .Q(n169) );
  AOI210 U128 ( .A(n148), .B(OUT_STROBE), .C(n68), .Q(n66) );
  INV8 U129 ( .A(n69), .Q(n168) );
  AOI220 U130 ( .A(N91), .B(n146), .C(OUT[16]), .D(n148), .Q(n69) );
  INV8 U131 ( .A(n70), .Q(n167) );
  AOI220 U132 ( .A(N90), .B(n146), .C(OUT[15]), .D(n67), .Q(n70) );
  INV8 U133 ( .A(n71), .Q(n166) );
  AOI220 U134 ( .A(N89), .B(n146), .C(OUT[14]), .D(n148), .Q(n71) );
  INV8 U135 ( .A(n72), .Q(n165) );
  AOI220 U136 ( .A(N88), .B(n146), .C(OUT[13]), .D(n67), .Q(n72) );
  INV8 U137 ( .A(n73), .Q(n164) );
  AOI220 U138 ( .A(N87), .B(n146), .C(OUT[12]), .D(n148), .Q(n73) );
  INV8 U139 ( .A(n74), .Q(n163) );
  AOI220 U140 ( .A(N86), .B(n68), .C(OUT[11]), .D(n148), .Q(n74) );
  INV8 U141 ( .A(n75), .Q(n162) );
  AOI220 U142 ( .A(N85), .B(n146), .C(OUT[10]), .D(n148), .Q(n75) );
  INV8 U143 ( .A(n76), .Q(n161) );
  AOI220 U144 ( .A(N84), .B(n68), .C(OUT[9]), .D(n67), .Q(n76) );
  INV8 U145 ( .A(n77), .Q(n160) );
  AOI220 U146 ( .A(N83), .B(n146), .C(OUT[8]), .D(n148), .Q(n77) );
  INV8 U147 ( .A(n78), .Q(n159) );
  AOI220 U148 ( .A(N82), .B(n68), .C(OUT[7]), .D(n67), .Q(n78) );
  INV8 U149 ( .A(n79), .Q(n158) );
  AOI220 U150 ( .A(N81), .B(n146), .C(OUT[6]), .D(n148), .Q(n79) );
  INV8 U151 ( .A(n80), .Q(n157) );
  AOI220 U152 ( .A(N80), .B(n68), .C(OUT[5]), .D(n67), .Q(n80) );
  INV8 U153 ( .A(n81), .Q(n156) );
  AOI220 U154 ( .A(N79), .B(n146), .C(OUT[4]), .D(n148), .Q(n81) );
  INV8 U155 ( .A(n82), .Q(n155) );
  AOI220 U156 ( .A(N78), .B(n68), .C(OUT[3]), .D(n67), .Q(n82) );
  INV8 U157 ( .A(n83), .Q(n154) );
  AOI220 U158 ( .A(N77), .B(n146), .C(OUT[2]), .D(n148), .Q(n83) );
  INV8 U159 ( .A(n84), .Q(n153) );
  AOI220 U160 ( .A(N76), .B(n68), .C(OUT[1]), .D(n67), .Q(n84) );
  INV8 U161 ( .A(n85), .Q(n152) );
  AOI220 U162 ( .A(N75), .B(n146), .C(OUT[0]), .D(n148), .Q(n85) );
  XNR20 U163 ( .A(n25), .B(n26), .Q(n64) );
  NAND21 U164 ( .A(start), .B(n24), .Q(n62) );
  CLKIN0 U165 ( .A(n144), .Q(n142) );
  INV3 U166 ( .A(n142), .Q(n143) );
  CLKBU2 U167 ( .A(next_state[0]), .Q(n144) );
  OAI212 U168 ( .A(state[0]), .B(n62), .C(n65), .Q(next_state[0]) );
  INV3 U169 ( .A(n147), .Q(n148) );
  BUF2 U170 ( .A(n68), .Q(n146) );
  NAND31 U171 ( .A(start), .B(n25), .C(state[2]), .Q(n65) );
  NOR21 U172 ( .A(n64), .B(n62), .Q(next_state[1]) );
  INV3 U173 ( .A(n60), .Q(n151) );
  AOI211 U174 ( .A(start), .B(n170), .C(n61), .Q(n60) );
  INV3 U175 ( .A(n63), .Q(n170) );
  NOR31 U176 ( .A(n26), .B(n62), .C(n25), .Q(n61) );
  NAND22 U177 ( .A(n89), .B(n25), .Q(n63) );
  NOR21 U178 ( .A(n24), .B(state[0]), .Q(n89) );
  NAND22 U179 ( .A(state[2]), .B(state[0]), .Q(n86) );
  NOR21 U180 ( .A(n86), .B(state[1]), .Q(n68) );
  BUF2 U181 ( .A(n90), .Q(n145) );
  OAI311 U182 ( .A(n26), .B(state[2]), .C(state[1]), .D(n63), .Q(n90) );
  INV3 U183 ( .A(n67), .Q(n147) );
  AOI2111 U184 ( .A(n24), .B(n26), .C(n171), .D(state[1]), .Q(n67) );
  INV3 U185 ( .A(n86), .Q(n171) );
  BUF2 U186 ( .A(NRST), .Q(n150) );
  BUF2 U187 ( .A(NRST), .Q(n149) );
  LOGIC0 U188 ( .Q(\add_73/CI ) );
endmodule


module MatrixMultiplier_DW_mult_tc_0 ( a, b, product );
  input [7:0] a;
  input [7:0] b;
  output [15:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n17,
         n18, n19, n20, n21, n23, n24, n25, n26, n27, n28, n29, n30, n31, n33,
         n34, n35, n36, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49,
         n50, n51, n52, n53, n54, n55, n56, n57, n78, n79, n80, n81, n83, n84,
         n85, n86, n88, n89, n91, n92, n93, n94, n95, n96, n97, n100, n101,
         n102, n103, n104, n105, n107, n108, n109, n110, n111, n112, n113,
         n216, n217, n218, n219, n220, n221, n222, n223, n224, n225, n226,
         n227, n228, n229, n230, n231, n232, n233, n234, n235, n236, n237,
         n238, n239, n240, n241, n242, n243, n244, n245, n246, n247, n248,
         n249, n250, n251, n252, n253, n254, n255, n256, n257, n258, n259,
         n260, n261, n262, n263, n264, n265, n266, n267, n268, n269, n270,
         n271, n272, n273, n274, n275, n276, n277, n278, n279, n280, n281,
         n282, n283;

  ADD32 U2 ( .A(n218), .B(n15), .CI(n2), .CO(n1), .S(product[14]) );
  ADD32 U3 ( .A(n17), .B(n217), .CI(n3), .CO(n2), .S(product[13]) );
  ADD32 U4 ( .A(n19), .B(n18), .CI(n4), .CO(n3), .S(product[12]) );
  ADD32 U5 ( .A(n20), .B(n23), .CI(n5), .CO(n4), .S(product[11]) );
  ADD32 U6 ( .A(n24), .B(n27), .CI(n6), .CO(n5), .S(product[10]) );
  ADD32 U7 ( .A(n28), .B(n33), .CI(n7), .CO(n6), .S(product[9]) );
  ADD32 U8 ( .A(n34), .B(n40), .CI(n8), .CO(n7), .S(product[8]) );
  ADD32 U9 ( .A(n41), .B(n46), .CI(n9), .CO(n8), .S(product[7]) );
  ADD32 U10 ( .A(n47), .B(n50), .CI(n10), .CO(n9), .S(product[6]) );
  ADD32 U11 ( .A(n51), .B(n53), .CI(n11), .CO(n10), .S(product[5]) );
  ADD32 U12 ( .A(n55), .B(n56), .CI(n12), .CO(n11), .S(product[4]) );
  ADD32 U13 ( .A(n57), .B(n80), .CI(n13), .CO(n12), .S(product[3]) );
  ADD32 U14 ( .A(n105), .B(n112), .CI(n14), .CO(n13), .S(product[2]) );
  ADD22 U15 ( .A(n113), .B(n81), .CO(n14), .S(product[1]) );
  ADD32 U17 ( .A(n83), .B(n21), .CI(n222), .CO(n17), .S(n18) );
  ADD32 U18 ( .A(n221), .B(n84), .CI(n25), .CO(n19), .S(n20) );
  ADD32 U20 ( .A(n29), .B(n226), .CI(n26), .CO(n23), .S(n24) );
  ADD32 U21 ( .A(n91), .B(n31), .CI(n85), .CO(n25), .S(n26) );
  ADD32 U22 ( .A(n35), .B(n216), .CI(n30), .CO(n27), .S(n28) );
  ADD32 U23 ( .A(n86), .B(n92), .CI(n225), .CO(n29), .S(n30) );
  ADD32 U25 ( .A(n39), .B(n42), .CI(n36), .CO(n33), .S(n34) );
  ADD32 U26 ( .A(n229), .B(n93), .CI(n44), .CO(n35), .S(n36) );
  ADD32 U30 ( .A(n45), .B(n48), .CI(n43), .CO(n40), .S(n41) );
  ADD32 U31 ( .A(n88), .B(n100), .CI(n94), .CO(n42), .S(n43) );
  ADD22 U32 ( .A(n78), .B(n107), .CO(n44), .S(n45) );
  ADD32 U33 ( .A(n52), .B(n101), .CI(n49), .CO(n46), .S(n47) );
  ADD32 U34 ( .A(n89), .B(n108), .CI(n95), .CO(n48), .S(n49) );
  ADD32 U35 ( .A(n96), .B(n102), .CI(n54), .CO(n50), .S(n51) );
  ADD22 U36 ( .A(n79), .B(n109), .CO(n52), .S(n53) );
  ADD32 U37 ( .A(n97), .B(n110), .CI(n103), .CO(n54), .S(n55) );
  ADD22 U38 ( .A(n104), .B(n111), .CO(n56), .S(n57) );
  INV1 U166 ( .A(n15), .Q(n217) );
  INV3 U167 ( .A(n1), .Q(product[15]) );
  INV3 U168 ( .A(n265), .Q(n216) );
  INV3 U169 ( .A(n258), .Q(n228) );
  INV3 U170 ( .A(n260), .Q(n224) );
  INV3 U171 ( .A(n254), .Q(n218) );
  INV3 U172 ( .A(a[1]), .Q(n230) );
  INV3 U173 ( .A(n262), .Q(n220) );
  INV3 U174 ( .A(n277), .Q(n229) );
  INV3 U175 ( .A(n233), .Q(n226) );
  INV1 U176 ( .A(n31), .Q(n225) );
  NAND22 U177 ( .A(a[1]), .B(n231), .Q(n256) );
  INV1 U178 ( .A(n21), .Q(n221) );
  INV3 U179 ( .A(n244), .Q(n222) );
  INV3 U180 ( .A(a[3]), .Q(n227) );
  INV3 U181 ( .A(a[5]), .Q(n223) );
  INV3 U182 ( .A(a[0]), .Q(n231) );
  INV3 U183 ( .A(b[0]), .Q(n232) );
  INV3 U184 ( .A(a[7]), .Q(n219) );
  NAND22 U185 ( .A(n224), .B(n268), .Q(n237) );
  NAND22 U186 ( .A(n220), .B(n269), .Q(n247) );
  NAND22 U187 ( .A(n228), .B(n283), .Q(n235) );
  NOR20 U188 ( .A(n231), .B(n232), .Q(product[0]) );
  OAI220 U189 ( .A(n234), .B(n228), .C(n235), .D(n234), .Q(n233) );
  NOR20 U190 ( .A(n224), .B(n232), .Q(n97) );
  OAI220 U191 ( .A(n236), .B(n237), .C(n224), .D(n238), .Q(n96) );
  XNR20 U192 ( .A(n232), .B(n223), .Q(n236) );
  OAI220 U193 ( .A(n238), .B(n237), .C(n224), .D(n239), .Q(n95) );
  XNR20 U194 ( .A(b[1]), .B(a[5]), .Q(n238) );
  OAI220 U195 ( .A(n239), .B(n237), .C(n224), .D(n240), .Q(n94) );
  XNR20 U196 ( .A(b[2]), .B(a[5]), .Q(n239) );
  OAI220 U197 ( .A(n240), .B(n237), .C(n224), .D(n241), .Q(n93) );
  XNR20 U198 ( .A(b[3]), .B(a[5]), .Q(n240) );
  OAI220 U199 ( .A(n241), .B(n237), .C(n224), .D(n242), .Q(n92) );
  XNR20 U200 ( .A(b[4]), .B(a[5]), .Q(n241) );
  OAI220 U201 ( .A(n242), .B(n237), .C(n224), .D(n243), .Q(n91) );
  XNR20 U202 ( .A(b[5]), .B(a[5]), .Q(n242) );
  OAI220 U203 ( .A(n245), .B(n224), .C(n237), .D(n245), .Q(n244) );
  NOR20 U204 ( .A(n220), .B(n232), .Q(n89) );
  OAI220 U205 ( .A(n246), .B(n247), .C(n220), .D(n248), .Q(n88) );
  XNR20 U206 ( .A(n232), .B(n219), .Q(n246) );
  OAI220 U207 ( .A(n249), .B(n247), .C(n220), .D(n250), .Q(n86) );
  OAI220 U208 ( .A(n250), .B(n247), .C(n220), .D(n251), .Q(n85) );
  XNR20 U209 ( .A(b[3]), .B(a[7]), .Q(n250) );
  OAI220 U210 ( .A(n251), .B(n247), .C(n220), .D(n252), .Q(n84) );
  XNR20 U211 ( .A(b[4]), .B(a[7]), .Q(n251) );
  OAI220 U212 ( .A(n252), .B(n247), .C(n220), .D(n253), .Q(n83) );
  XNR20 U213 ( .A(b[5]), .B(a[7]), .Q(n252) );
  OAI220 U214 ( .A(n255), .B(n220), .C(n247), .D(n255), .Q(n254) );
  OAI210 U215 ( .A(b[0]), .B(n230), .C(n256), .Q(n81) );
  OAI210 U216 ( .A(n227), .B(n235), .C(n257), .Q(n80) );
  NAND30 U217 ( .A(n258), .B(n232), .C(a[3]), .Q(n257) );
  OAI210 U218 ( .A(n223), .B(n237), .C(n259), .Q(n79) );
  NAND30 U219 ( .A(n260), .B(n232), .C(a[5]), .Q(n259) );
  OAI210 U220 ( .A(n219), .B(n247), .C(n261), .Q(n78) );
  NAND30 U221 ( .A(n262), .B(n232), .C(a[7]), .Q(n261) );
  XNR20 U222 ( .A(n263), .B(n264), .Q(n39) );
  NOR20 U223 ( .A(n264), .B(n263), .Q(n265) );
  OAI220 U224 ( .A(n248), .B(n247), .C(n220), .D(n249), .Q(n263) );
  XNR20 U225 ( .A(b[2]), .B(a[7]), .Q(n249) );
  XNR20 U226 ( .A(b[1]), .B(a[7]), .Q(n248) );
  OAI220 U227 ( .A(n266), .B(n235), .C(n228), .D(n267), .Q(n264) );
  OAI220 U228 ( .A(n267), .B(n235), .C(n228), .D(n234), .Q(n31) );
  XNR20 U229 ( .A(b[7]), .B(a[3]), .Q(n234) );
  XNR20 U230 ( .A(b[6]), .B(a[3]), .Q(n267) );
  OAI220 U231 ( .A(n243), .B(n237), .C(n224), .D(n245), .Q(n21) );
  XNR20 U232 ( .A(b[7]), .B(a[5]), .Q(n245) );
  XNR20 U233 ( .A(a[4]), .B(n223), .Q(n268) );
  XNR20 U234 ( .A(a[4]), .B(n227), .Q(n260) );
  XNR20 U235 ( .A(b[6]), .B(a[5]), .Q(n243) );
  OAI220 U236 ( .A(n253), .B(n247), .C(n220), .D(n255), .Q(n15) );
  XNR20 U237 ( .A(b[7]), .B(a[7]), .Q(n255) );
  XNR20 U238 ( .A(a[6]), .B(n219), .Q(n269) );
  XNR20 U239 ( .A(a[6]), .B(n223), .Q(n262) );
  XNR20 U240 ( .A(b[6]), .B(a[7]), .Q(n253) );
  OAI220 U241 ( .A(b[0]), .B(n256), .C(n270), .D(n231), .Q(n113) );
  OAI220 U242 ( .A(n270), .B(n256), .C(n271), .D(n231), .Q(n112) );
  XNR20 U243 ( .A(b[1]), .B(a[1]), .Q(n270) );
  OAI220 U244 ( .A(n271), .B(n256), .C(n272), .D(n231), .Q(n111) );
  XNR20 U245 ( .A(b[2]), .B(a[1]), .Q(n271) );
  OAI220 U246 ( .A(n272), .B(n256), .C(n273), .D(n231), .Q(n110) );
  XNR20 U247 ( .A(b[3]), .B(a[1]), .Q(n272) );
  OAI220 U248 ( .A(n273), .B(n256), .C(n274), .D(n231), .Q(n109) );
  XNR20 U249 ( .A(b[4]), .B(a[1]), .Q(n273) );
  OAI220 U250 ( .A(n274), .B(n256), .C(n275), .D(n231), .Q(n108) );
  XNR20 U251 ( .A(b[5]), .B(a[1]), .Q(n274) );
  OAI220 U252 ( .A(n275), .B(n256), .C(n276), .D(n231), .Q(n107) );
  XNR20 U253 ( .A(b[6]), .B(a[1]), .Q(n275) );
  OAI220 U254 ( .A(n231), .B(n276), .C(n256), .D(n276), .Q(n277) );
  XNR20 U255 ( .A(b[7]), .B(a[1]), .Q(n276) );
  NOR20 U256 ( .A(n228), .B(n232), .Q(n105) );
  OAI220 U257 ( .A(n278), .B(n235), .C(n228), .D(n279), .Q(n104) );
  XNR20 U258 ( .A(n232), .B(n227), .Q(n278) );
  OAI220 U259 ( .A(n279), .B(n235), .C(n228), .D(n280), .Q(n103) );
  XNR20 U260 ( .A(b[1]), .B(a[3]), .Q(n279) );
  OAI220 U261 ( .A(n280), .B(n235), .C(n228), .D(n281), .Q(n102) );
  XNR20 U262 ( .A(b[2]), .B(a[3]), .Q(n280) );
  OAI220 U263 ( .A(n281), .B(n235), .C(n228), .D(n282), .Q(n101) );
  XNR20 U264 ( .A(b[3]), .B(a[3]), .Q(n281) );
  OAI220 U265 ( .A(n282), .B(n235), .C(n228), .D(n266), .Q(n100) );
  XNR20 U266 ( .A(b[5]), .B(a[3]), .Q(n266) );
  XNR20 U267 ( .A(a[2]), .B(n227), .Q(n283) );
  XNR20 U268 ( .A(a[2]), .B(n230), .Q(n258) );
  XNR20 U269 ( .A(b[4]), .B(a[3]), .Q(n282) );
endmodule

