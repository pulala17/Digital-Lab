// -----------------------------------------------------------------------------------------
// Version | Programmer                        | Date       | Remark   
// -----------------------------------------------------------------------------------------
// V1      | Xaria (xli071@e.ntu.edu.sg)       | 06/10/2020 | final version
// -----------------------------------------------------------------------------------------  
//  The code is a test benchmark for checking a synchronous-logic matrix multiplier
// The code is from the NTU-TUM class, NM6008. 

`timescale 1ns/1ps;

module MatrixMultiplier_tb;

parameter N=8;
parameter DELAY=50;
parameter CLK_T=50;//ns

reg[7:0] A;
reg[7:0] B;
reg CLK;
reg NRST;
reg start;
reg rst;

wire [16:0] OUT;
wire OUT_STROBE;

reg[2:0]REG_DATA[N-1:0];
reg[2:0]REG_DATA2[N-1:0];
 
integer n,file1;

MatrixMultiplier U1(
                .A(A),
                .B(B),
                .CLK(CLK),
                .NRST(NRST),
                .start(start),                 
                .OUT_STROBE(OUT_STROBE),
                .OUT(OUT));

/*initial
begin
 file1=$fopen("./Check.txt");
 if(!file1) $finish;
$readmemh("./InputVector1.txt",REG_DATA);
$readmemh("./InputVector2.txt",REG_DATA2);
end*/

initial
begin
  A=0;B=0;n=0;
  $readmemh("./InputVector1.txt",REG_DATA);
  $readmemh("./InputVector2.txt",REG_DATA2);
  $fdisplay(file1,"No\tB\tA\tCIN\tS\tCOUT");
  #100000;
  $finish;
end

initial
begin
	for(n = 0; n < N; n = n +1)
	begin
    		A=REG_DATA[n];
    		B=REG_DATA2[n];
		#(6*DELAY);
	end
end
/*always@(posedge CLK)
begin
  if(m<N)
	n <= n+1;
  else if(
	$finish;
end

always@(posedge CLK)
begin
    A=REG_DATA[n];
    B=REG_DATA2[n];
end*/

//clock generator
initial begin
CLK=1;
forever #CLK_T CLK=!CLK;
end

initial begin
NRST=0; rst=1; start=0;
#3 NRST=1;
#40 rst=0; start=1;
end

initial
begin
#(100*DELAY);
$finish;
end

endmodule
