// -----------------------------------------------------------------------------------------
// Version | Programmer                        | Date       | Remark   
// -----------------------------------------------------------------------------------------
// V1      | Xaria (xli071@e.ntu.edu.sg)       | 01/08/2020 | final version
// -----------------------------------------------------------------------------------------  
//  The code is a test benchmark for checking a synchronous-logic full adder
// The code is from Module4 in the NTU-TUM class, NM6008. 

`timescale 1ns/1ps

module StateMachine_tb;

parameter N=8;
parameter DELAY=50;
parameter CLK_T=50;//ns

reg CIN;
reg A;
reg B;
reg CLK;
reg NRST;
reg start;
reg rst;

wire S;
wire COUT;

reg[2:0]REG_DATA[N-1:0];

integer i,file1;

initial $sdf_annotate("Syn_StateMachine.sdf",U1);

StateMachine U1(
.CIN(CIN),
.A(A),
.CLK(CLK),
.NRST(NRST),
.start(start),
.rst(rst),
.B(B),
.S(S),
.COUT(COUT)
);

initial
begin
   file1=$fopen("./Check.txt");
   if(!file1) $finish;
  $readmemh("./InputVector.txt",REG_DATA);
end

initial begin
  CIN=0;A=0;B=0;
  $vcdpluson(U1);
  
  $fdisplay(file1,"No\tB\tA\tCIN\tS\tCOUT");

  for(i=0;i<N;i=i+1)
   begin
    {B,A,CIN}=REG_DATA[i];
    $fdisplay(file1,"%d\t%d\t%d\t%d\t%d\t%d",i,CIN,A,B,S,COUT);
    #(DELAY);
   end
  $fclose(file1);
  $vcdplusoff(U1);
  $finish;
end


//clock generator
initial begin
  CLK=0;
  forever #CLK_T CLK=!CLK;
end

//NRST
initial begin
  //NRST=1;
  NRST=0; rst=1; start=0;
  #3 NRST=1;
  #40 rst=0; start=1;
end

initial begin
  #(100*DELAY);
  $finish;
end

endmodule
