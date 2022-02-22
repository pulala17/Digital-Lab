module WANG(
		rst,CLK,O,G,C4_OUT,OUT);

input [2:0] G,O;
output [5:0] OUT;
output reg [1:0] C4_OUT;
input rst;
input CLK;

parameter S0 = 3'b000;
parameter S1 = 3'b001;
parameter S2 = 3'b010;
parameter S3 = 3'b011;
parameter S4 = 3'b100;
parameter S5 = 3'b101;
parameter S6 = 3'b110;
parameter S7 = 3'b111;

reg [1:0] board [7:0][7:0];


always @(posedge CLK) begin
if (rst == 1)
begin
C4_OUT = 0;
board[0][0] = 0;board[0][1] = 0;board[0][2] = 0;board[0][3] = 0;board[0][4] = 0;board[0][5] = 0;board[0][6] = 0;board[0][7] = 0;
board[1][0] = 0;board[1][1] = 0;board[1][2] = 0;board[1][3] = 0;board[1][4] = 0;board[1][5] = 0;board[1][6] = 0;board[1][7] = 0;
board[2][0] = 0;board[2][1] = 0;board[2][2] = 0;board[2][3] = 0;board[2][4] = 0;board[2][5] = 0;board[2][6] = 0;board[2][7] = 0;
board[3][0] = 0;board[3][1] = 0;board[3][2] = 0;board[3][3] = 0;board[3][4] = 0;board[3][5] = 0;board[3][6] = 0;board[3][7] = 0;
board[4][0] = 0;board[4][1] = 0;board[4][2] = 0;board[4][3] = 0;board[4][4] = 0;board[4][5] = 0;board[4][6] = 0;board[4][7] = 0;
board[5][0] = 0;board[5][1] = 0;board[5][2] = 0;board[5][3] = 0;board[5][4] = 0;board[5][5] = 0;board[5][6] = 0;board[5][7] = 0;
board[6][0] = 0;board[6][1] = 0;board[6][2] = 0;board[6][3] = 0;board[6][4] = 0;board[6][5] = 0;board[6][6] = 0;board[6][7] = 0;
board[7][0] = 0;board[7][1] = 0;board[7][2] = 0;board[7][3] = 0;board[7][4] = 0;board[7][5] = 0;board[7][6] = 0;board[7][7] = 0;
end
else
begin
case(G)
 S0:begin
  if (board[0][0] == 0)
    board[0][0] = 1;
  else if (board[1][0] == 0)
       board[1][0] = 1;
       else 
   	 if (board[2][0] == 0)
         board[2][0] = 1;
         else 
	   if (board[3][0] == 0)
           board[3][0] = 1;
           else 
             if (board[4][0] == 0)
             board[4][0] = 1;
             else 
    	       if (board[5][0] == 0)
               board[5][0] = 1;
               else 
		 if (board[6][0] == 0)
                 board[6][0] = 1;
                 else 
                   if (board[7][0] == 0)
                   board[7][0] = 1;
                   else 
                   	C4_OUT = 3;

end

 S1:begin
  if (board[0][1] == 0)
    board[0][1] = 1;
  else 
     if (board[1][1] == 0)
       board[1][1] = 1;
       else 
   	 if (board[2][1] == 0)
         board[2][1] = 1;
         else 
	   if (board[3][1] == 0)
           board[3][1] = 1;
           else 
             if (board[4][1] == 0)
             board[4][1] = 1;
             else 
    	       if (board[5][1] == 0)
               board[5][1] = 1;
               else 
		 if (board[6][1] == 0)
                 board[6][1] = 1;
                 else 
                   if (board[7][1] == 0)
                   board[7][1] = 1;
                   else 
                   	C4_OUT = 3;
                   end


 S2:begin
  if (board[0][2] == 0)
    board[0][2] = 1;
  else 
     if (board[1][2] == 0)
       board[1][2] = 1;
       else 
   	 if (board[2][2] == 0)
         board[2][2] = 1;
         else 
	   if (board[3][2] == 0)
           board[3][2] = 1;
           else 
             if (board[4][2] == 0)
             board[4][2] = 1;
             else 
    	       if (board[5][2] == 0)
               board[5][2] = 1;
               else 
		 if (board[6][2] == 0)
                 board[6][2] = 1;
                 else 
                   if (board[7][2] == 0)
                   board[7][2] = 1;
                   else 
                   	C4_OUT = 3;
                   end

 S3:begin
  if (board[0][3] == 0)
    board[0][3] = 1;
  else 
     if (board[1][3] == 0)
       board[1][3] = 1;
       else 
   	 if (board[2][3] == 0)
         board[2][3] = 1;
         else 
	   if (board[3][3] == 0)
           board[3][3] = 1;
           else 
             if (board[4][3] == 0)
             board[4][3] = 1;
             else 
    	       if (board[5][3] == 0)
               board[5][3] = 1;
               else 
		 if (board[6][3] == 0)
                 board[6][3] = 1;
                 else 
                   if (board[7][3] == 0)
                   board[7][3] = 1;
                   else 
                   	C4_OUT = 3;
                   end

 S4:begin
  if (board[0][4] == 0)
    board[0][4] = 1;
  else 
     if (board[1][4] == 0)
       board[1][4] = 1;
       else 
   	 if (board[2][4] == 0)
         board[2][4] = 1;
         else 
	   if (board[3][4] == 0)
           board[3][4] = 1;
           else 
             if (board[4][4] == 0)
             board[4][4] = 1;
             else 
    	       if (board[5][4] == 0)
               board[5][4] = 1;
               else 
		 if (board[6][4] == 0)
                 board[6][4] = 1;
                 else 
                   if (board[7][4] == 0)
                   board[7][4] = 1;
                   else 
                   	C4_OUT = 3;
                   end

 S5:begin
  if (board[0][5] == 0)
    board[0][5] = 1;
  else 
     if (board[1][5] == 0)
       board[1][5] = 1;
       else 
   	 if (board[2][5] == 0)
         board[2][5] = 1;
         else 
	   if (board[3][5] == 0)
           board[3][5] = 1;
           else 
             if (board[4][5] == 0)
             board[4][5] = 1;
             else 
    	       if (board[5][5] == 0)
               board[5][5] = 1;
               else 
		 if (board[6][5] == 0)
                 board[6][5] = 1;
                 else 
                   if (board[7][5] == 0)
                   board[7][5] = 1;
                   else 
                   	C4_OUT = 3;

end

 S6:begin
  if (board[0][6] == 0)
    board[0][6] = 1;
  else 
     if (board[1][6] == 0)
       board[1][6] = 1;
       else 
   	 if (board[2][6] == 0)
         board[2][6] = 1;
         else 
	   if (board[3][6] == 0)
           board[3][6] = 1;
           else 
             if (board[4][6] == 0)
             board[4][6] = 1;
             else 
    	       if (board[5][6] == 0)
               board[5][6] = 1;
               else 
		 if (board[6][6] == 0)
                 board[6][6] = 1;
                 else 
                   if (board[7][6] == 0)
                   board[7][6] = 1;
                   else 
                   	C4_OUT = 3;
                   end


 S7:begin
  if (board[0][7] == 0)
    board[0][7] = 1;
  else 
     if (board[1][7] == 0)
       board[1][7] = 1;
       else 
   	 if (board[2][7] == 0)
         board[2][7] = 1;
         else 
	   if (board[3][7] == 0)
           board[3][7] = 1;
           else 
             if (board[4][7] == 0)
             board[4][7] = 1;
             else 
    	       if (board[5][7] == 0)
               board[5][7] = 1;
               else 
		 if (board[6][7] == 0)
                 board[6][7] = 1;
                 else 
                   if (board[7][7] == 0)
                   board[7][7] = 1;
                   else 
                   	C4_OUT = 3;
             
end
endcase
end
end

always @(negedge CLK) begin
if (rst == 1)
begin
board[0][0] = 0;board[0][1] = 0;board[0][2] = 0;board[0][3] = 0;board[0][4] = 0;board[0][5] = 0;board[0][6] = 0;board[0][7] = 0;
board[1][0] = 0;board[1][1] = 0;board[1][2] = 0;board[1][3] = 0;board[1][4] = 0;board[1][5] = 0;board[1][6] = 0;board[1][7] = 0;
board[2][0] = 0;board[2][1] = 0;board[2][2] = 0;board[2][3] = 0;board[2][4] = 0;board[2][5] = 0;board[2][6] = 0;board[2][7] = 0;
board[3][0] = 0;board[3][1] = 0;board[3][2] = 0;board[3][3] = 0;board[3][4] = 0;board[3][5] = 0;board[3][6] = 0;board[3][7] = 0;
board[4][0] = 0;board[4][1] = 0;board[4][2] = 0;board[4][3] = 0;board[4][4] = 0;board[4][5] = 0;board[4][6] = 0;board[4][7] = 0;
board[5][0] = 0;board[5][1] = 0;board[5][2] = 0;board[5][3] = 0;board[5][4] = 0;board[5][5] = 0;board[5][6] = 0;board[5][7] = 0;
board[6][0] = 0;board[6][1] = 0;board[6][2] = 0;board[6][3] = 0;board[6][4] = 0;board[6][5] = 0;board[6][6] = 0;board[6][7] = 0;
board[7][0] = 0;board[7][1] = 0;board[7][2] = 0;board[7][3] = 0;board[7][4] = 0;board[7][5] = 0;board[7][6] = 0;board[7][7] = 0;
  C4_OUT = 0;
end
else
begin
case(O)
 S0:begin
  if (board[0][0] == 0)
    board[0][0] = 2;
  else 
     if (board[1][0] == 0)
       board[1][0] = 2;
       else 
   	 if (board[2][0] == 0)
         board[2][0] = 2;
         else 
	   if (board[3][0] == 0)
           board[3][0] = 2;
           else 
             if (board[4][0] == 0)
             board[4][0] = 2;
             else 
    	       if (board[5][0] == 0)
               board[5][0] = 2;
               else 
		 if (board[6][0] == 0)
                 board[6][0] = 2;
                 else 
                   if (board[7][0] == 0)
                   board[7][0] = 2;
                   else 
                   	C4_OUT = 3;

end

 S1:begin
  if (board[0][1] == 0)
    board[0][1] = 2;
  else 
     if (board[1][1] == 0)
       board[1][1] = 2;
       else 
   	 if (board[2][1] == 0)
         board[2][1] = 2;
         else 
	   if (board[3][1] == 0)
           board[3][1] = 2;
           else 
             if (board[4][1] == 0)
             board[4][1] = 2;
             else 
    	       if (board[5][1] == 0)
               board[5][1] = 2;
               else 
		 if (board[6][1] == 0)
                 board[6][1] = 2;
                 else 
                   if (board[7][1] == 0)
                   board[7][1] = 2;
                   else 
                   	C4_OUT = 3;
                   end


 S2:begin
  if (board[0][2] == 0)
    board[0][2] = 2;
  else 
     if (board[1][2] == 0)
       board[1][2] = 2;
       else 
   	 if (board[2][2] == 0)
         board[2][2] = 2;
         else 
	   if (board[3][2] == 0)
           board[3][2] = 2;
           else 
             if (board[4][2] == 0)
             board[4][2] = 2;
             else 
    	       if (board[5][2] == 0)
               board[5][2] = 2;
               else 
		 if (board[6][2] == 0)
                 board[6][2] = 2;
                 else 
                   if (board[7][2] == 0)
                   board[7][2] = 2;
                   else 
                   	C4_OUT = 3;
                   end


 S3:begin
  if (board[0][3] == 0)
    board[0][3] = 2;
  else 
     if (board[1][3] == 0)
       board[1][3] = 2;
       else 
   	 if (board[2][3] == 0)
         board[2][3] = 2;
         else 
	   if (board[3][3] == 0)
           board[3][3] = 2;
           else 
             if (board[4][3] == 0)
             board[4][3] = 2;
             else 
    	       if (board[5][3] == 0)
               board[5][3] = 2;
               else 
		 if (board[6][3] == 0)
                 board[6][3] = 2;
                 else 
                   if (board[7][3] == 0)
                   board[7][3] = 2;
                   else 
                   	C4_OUT = 3;
                   end


 S4:begin
  if (board[0][4] == 0)
    board[0][4] = 2;
  else 
     if (board[1][4] == 0)
       board[1][4] = 2;
       else 
   	 if (board[2][4] == 0)
         board[2][4] = 2;
         else 
	   if (board[3][4] == 0)
           board[3][4] = 2;
           else 
             if (board[4][4] == 0)
             board[4][4] = 2;
             else 
    	       if (board[5][4] == 0)
               board[5][4] = 2;
               else 
		 if (board[6][4] == 0)
                 board[6][4] = 2;
                 else 
                   if (board[7][4] == 0)
                   board[7][4] = 2;
                   else 
                   	C4_OUT = 3;
                   end


 S5:begin
  if (board[0][5] == 0)
    board[0][5] = 2;
  else 
     if (board[1][5] == 0)
       board[1][5] = 2;
       else 
   	 if (board[2][5] == 0)
         board[2][5] = 2;
         else 
	   if (board[3][5] == 0)
           board[3][5] = 2;
           else 
             if (board[4][5] == 0)
             board[4][5] = 2;
             else 
    	       if (board[5][5] == 0)
               board[5][5] = 2;
               else 
		 if (board[6][5] == 0)
                 board[6][5] = 2;
                 else 
                   if (board[7][5] == 0)
                   board[7][5] = 2;
                   else 
                   	C4_OUT = 3;
                   end
 
 S6:begin
  if (board[0][6] == 0)
    board[0][6] = 2;
  else 
     if (board[1][6] == 0)
       board[1][6] = 2;
       else 
   	 if (board[2][6] == 0)
         board[2][6] = 2;
         else 
	   if (board[3][6] == 0)
           board[3][6] = 2;
           else 
             if (board[4][6] == 0)
             board[4][6] = 2;
             else 
    	       if (board[5][6] == 0)
               board[5][6] = 2;
               else 
		 if (board[6][6] == 0)
                 board[6][6] = 2;
                 else 
                   if (board[7][6] == 0)
                   board[7][6] = 2;
                   else 
                   	C4_OUT = 3;
                   end

 S7:begin
  if (board[0][7] == 0)
    board[0][7] = 2;
  else 
     if (board[1][7] == 0)
       board[1][7] = 2;
       else 
   	 if (board[2][7] == 0)
         board[2][7] = 2;
         else 
	   if (board[3][7] == 0)
           board[3][7] = 2;
           else 
             if (board[4][7] == 0)
             board[4][7] = 2;
             else 
    	       if (board[5][7] == 0)
               board[5][7] = 2;
               else 
		 if (board[6][7] == 0)
                 board[6][7] = 2;
                 else 
                   if (board[7][7] == 0)
                   board[7][7] = 2;
                   else 
                   	C4_OUT = 3;
 
end
endcase
end
end

always @(posedge CLK)begin
if(board[4][0] ==1 && board[5][1] ==1 && board[6][2] ==1 && board[7][3] == 1)
C4_OUT = 1;
else if(board[4][7] ==1 && board[5][7] ==1 && board[6][7] ==1 && board[7][7] == 1)
C4_OUT =1;
else if(board[2][7] ==1 && board[3][7] ==1 && board[4][7] ==1 && board[5][7] == 1)
C4_OUT = 1;
else if(board[3][7] ==1 && board[4][7] ==1 && board[5][7] ==1 && board[6][7] == 1)
C4_OUT =1;
else if(board[0][7] ==1 && board[1][7] ==1 && board[2][7] ==1 && board[3][7] == 1)
C4_OUT = 1;
else if(board[1][7] ==1 && board[2][7] ==1 && board[3][7] ==1 && board[4][7] == 1)
C4_OUT =1;
else if(board[4][6] ==1 && board[5][6] ==1 && board[6][6] ==1 && board[7][6] == 1)
C4_OUT =1;
else if(board[2][6] ==1 && board[3][6] ==1 && board[4][6] ==1 && board[5][6] == 1)
C4_OUT = 1;
else if(board[3][6] ==1 && board[4][6] ==1 && board[5][6] ==1 && board[6][6] == 1)
C4_OUT =1;
else if(board[0][6] ==1 && board[1][6] ==1 && board[2][6] ==1 && board[3][6] == 1)
C4_OUT = 1;
else if(board[1][6] ==1 && board[2][6] ==1 && board[3][6] ==1 && board[4][6] == 1)
C4_OUT =1;
else if(board[4][5] ==1 && board[5][5] ==1 && board[6][5] ==1 && board[7][5] == 1)
C4_OUT =1;
else if(board[2][5] ==1 && board[3][5] ==1 && board[4][5] ==1 && board[5][5] == 1)
C4_OUT = 1;
else if(board[3][5] ==1 && board[4][5] ==1 && board[5][5] ==1 && board[6][5] == 1)
C4_OUT =1;
else if(board[0][5] ==1 && board[1][5] ==1 && board[2][5] ==1 && board[3][5] == 1)
C4_OUT = 1;
else if(board[1][5] ==1 && board[2][5] ==1 && board[3][5] ==1 && board[4][5] == 1)
C4_OUT =1;
else if(board[4][4] ==1 && board[5][4] ==1 && board[6][4] ==1 && board[7][4] == 1)
C4_OUT =1;
else if(board[2][4] ==1 && board[3][4] ==1 && board[4][4] ==1 && board[5][4] == 1)
C4_OUT = 1;
else if(board[3][4] ==1 && board[4][4] ==1 && board[5][4] ==1 && board[6][4] == 1)
C4_OUT =1;
else if(board[1][4] ==1 && board[2][4] ==1 && board[3][4] ==1 && board[4][4] == 1)
C4_OUT =1;
else if(board[0][4] ==1 && board[1][4] ==1 && board[2][4] ==1 && board[3][4] == 1)
C4_OUT = 1;
else if(board[4][3] ==1 && board[5][3] ==1 && board[6][3] ==1 && board[7][3] == 1)
C4_OUT =1;
else if(board[2][3] ==1 && board[3][3] ==1 && board[4][3] ==1 && board[5][3] == 1)
C4_OUT = 1;
else if(board[3][3] ==1 && board[4][3] ==1 && board[5][3] ==1 && board[6][3] == 1)
C4_OUT =1;
else if(board[0][3] ==1 && board[1][3] ==1 && board[2][3] ==1 && board[3][3] == 1)
C4_OUT = 1;
else if(board[1][3] ==1 && board[2][3] ==1 && board[3][3] ==1 && board[4][3] == 1)
C4_OUT =1;
else if(board[4][2] ==1 && board[5][2] ==1 && board[6][2] ==1 && board[7][2] == 1)
C4_OUT =1;
else if(board[2][2] ==1 && board[3][2] ==1 && board[4][2] ==1 && board[5][2] == 1)
C4_OUT = 1;
else if(board[3][2] ==1 && board[4][2] ==1 && board[5][2] ==1 && board[6][2] == 1)
C4_OUT =1;
else if(board[0][2] ==1 && board[1][2] ==1 && board[2][2] ==1 && board[3][2] == 1)
C4_OUT = 1;
else if(board[1][2] ==1 && board[2][2] ==1 && board[3][2] ==1 && board[4][2] == 1)
C4_OUT =1;
else if(board[2][1] ==1 && board[3][1] ==1 && board[4][1] ==1 && board[5][1] == 1)
C4_OUT = 1;
else if(board[3][1] ==1 && board[4][1] ==1 && board[5][1] ==1 && board[6][1] == 1)
C4_OUT =1;
else if(board[0][1] ==1 && board[1][1] ==1 && board[2][1] ==1 && board[3][1] == 1)
C4_OUT = 1;
else if(board[1][1] ==1 && board[2][1] ==1 && board[3][1] ==1 && board[4][1] == 1)
C4_OUT = 1;
else if(board[4][0] ==1 && board[5][0] ==1 && board[6][0] ==1 && board[7][0] == 1)
C4_OUT =1;
else if(board[2][0] ==1 && board[3][0] ==1 && board[4][0] ==1 && board[5][0] == 1)
C4_OUT = 1;
else if(board[3][0] ==1 && board[4][0] ==1 && board[5][0] ==1 && board[6][0] == 1)
C4_OUT =1;
else if(board[4][1] ==1 && board[5][1] ==1 && board[6][1] ==1 && board[7][1] == 1)
C4_OUT =1;
else if(board[0][0] ==1 && board[1][0] ==1 && board[2][0] ==1 && board[3][0] == 1)
C4_OUT = 1;
else if(board[1][0] ==1 && board[2][0] ==1 && board[3][0] ==1 && board[4][0] == 1)
C4_OUT =1;
else if(board[7][4] ==1 && board[7][5] ==1 && board[7][6] ==1 && board[7][7] == 1)
C4_OUT =1;
else if(board[7][2] ==1 && board[7][3] ==1 && board[7][4] ==1 && board[7][5] == 1)
C4_OUT = 1;
else if(board[7][3] ==1 && board[7][4] ==1 && board[7][5] ==1 && board[7][6] == 1)
C4_OUT =1;
else if(board[7][0] ==1 && board[7][1] ==1 && board[7][2] ==1 && board[7][3] == 1)
C4_OUT = 1;
else if(board[7][1] ==1 && board[7][2] ==1 && board[7][3] ==1 && board[7][4] == 1)
C4_OUT =1;
else if(board[6][4] ==1 && board[6][5] ==1 && board[6][6] ==1 && board[6][7] == 1)
C4_OUT =1;
else if(board[6][2] ==1 && board[6][3] ==1 && board[6][4] ==1 && board[6][5] == 1)
C4_OUT = 1;
else if(board[6][3] ==1 && board[6][4] ==1 && board[6][5] ==1 && board[6][6] == 1)
C4_OUT =1;
else if(board[6][0] ==1 && board[6][1] ==1 && board[6][2] ==1 && board[6][3] == 1)
C4_OUT = 1;
else if(board[6][1] ==1 && board[6][2] ==1 && board[6][3] ==1 && board[6][4] == 1)
C4_OUT =1;
else if(board[5][4] ==1 && board[5][5] ==1 && board[5][6] ==1 && board[5][7] == 1)
C4_OUT =1;
else if(board[5][2] ==1 && board[5][3] ==1 && board[5][4] ==1 && board[5][5] == 1)
C4_OUT = 1;
else if(board[5][3] ==1 && board[5][4] ==1 && board[5][5] ==1 && board[5][6] == 1)
C4_OUT =1;
else if(board[5][0] ==1 && board[5][1] ==1 && board[5][2] ==1 && board[5][3] == 1)
C4_OUT = 1;
else if(board[5][1] ==1 && board[5][2] ==1 && board[5][3] ==1 && board[5][4] == 1)
C4_OUT =1;
else if(board[4][4] ==1 && board[4][5] ==1 && board[4][6] ==1 && board[4][7] == 1)
C4_OUT =1;
else if(board[4][2] ==1 && board[4][3] ==1 && board[4][4] ==1 && board[4][5] == 1)
C4_OUT = 1;
else if(board[4][3] ==1 && board[4][4] ==1 && board[4][5] ==1 && board[4][6] == 1)
C4_OUT =1;
else if(board[4][0] ==1 && board[4][1] ==1 && board[4][2] ==1 && board[4][3] == 1)
C4_OUT = 1;
else if(board[4][1] ==1 && board[4][2] ==1 && board[4][3] ==1 && board[4][4] == 1)
C4_OUT =1;
else if(board[3][4] ==1 && board[3][5] ==1 && board[3][6] ==1 && board[3][7] == 1)
C4_OUT =1;
else if(board[3][2] ==1 && board[3][3] ==1 && board[3][4] ==1 && board[3][5] == 1)
C4_OUT = 1;
else if(board[3][3] ==1 && board[3][4] ==1 && board[3][5] ==1 && board[3][6] == 1)
C4_OUT =1;
else if(board[3][0] ==1 && board[3][1] ==1 && board[3][2] ==1 && board[3][3] == 1)
C4_OUT = 1;
else if(board[3][1] ==1 && board[3][2] ==1 && board[3][3] ==1 && board[3][4] == 1)
C4_OUT =1;
else if(board[2][4] ==1 && board[2][5] ==1 && board[2][6] ==1 && board[2][7] == 1)
C4_OUT =1;
else if(board[2][2] ==1 && board[2][3] ==1 && board[2][4] ==1 && board[2][5] == 1)
C4_OUT = 1;
else if(board[2][3] ==1 && board[2][4] ==1 && board[2][5] ==1 && board[2][6] == 1)
C4_OUT =1;
else if(board[2][0] ==1 && board[2][1] ==1 && board[2][2] ==1 && board[2][3] == 1)
C4_OUT = 1;
else if(board[2][1] ==1 && board[2][2] ==1 && board[2][3] ==1 && board[2][4] == 1)
C4_OUT =1;
else if(board[1][4] ==1 && board[1][5] ==1 && board[1][6] ==1 && board[1][7] == 1)
C4_OUT =1;
else if(board[1][2] ==1 && board[1][3] ==1 && board[1][4] ==1 && board[1][5] == 1)
C4_OUT = 1;
else if(board[1][3] ==1 && board[1][4] ==1 && board[1][5] ==1 && board[1][6] == 1)
C4_OUT =1;
else if(board[1][0] ==1 && board[1][1] ==1 && board[1][2] ==1 && board[1][3] == 1)
C4_OUT = 1;
else if(board[1][1] ==1 && board[1][2] ==1 && board[1][3] ==1 && board[1][4] == 1)
C4_OUT =1;
else if(board[0][4] ==1 && board[0][5] ==1 && board[0][6] ==1 && board[0][7] == 1)
C4_OUT =1;
else if(board[0][2] ==1 && board[0][3] ==1 && board[0][4] ==1 && board[0][5] == 1)
C4_OUT = 1;
else if(board[0][3] ==1 && board[0][4] ==1 && board[0][5] ==1 && board[0][6] == 1)
C4_OUT =1;
else if(board[0][0] ==1 && board[0][1] ==1 && board[0][2] ==1 && board[0][3] == 1)
C4_OUT = 1;
else if(board[0][1] ==1 && board[0][2] ==1 && board[0][3] ==1 && board[0][4] == 1)
C4_OUT =1;
else if(board[3][0] ==1 && board[4][1] ==1 && board[5][2] ==1 && board[6][3] == 1)
C4_OUT =1;
else if(board[2][0] ==1 && board[3][1] ==1 && board[4][2] ==1 && board[5][3] == 1)
C4_OUT =1;
else if(board[1][0] ==1 && board[2][1] ==1 && board[3][2] ==1 && board[4][3] == 1)
C4_OUT =1;
else if(board[0][0] ==1 && board[1][1] ==1 && board[2][2] ==1 && board[3][3] == 1)
C4_OUT =1;
else if(board[4][1] ==1 && board[5][2] ==1 && board[6][3] ==1 && board[7][4] == 1)
C4_OUT =1;
else if(board[3][1] ==1 && board[4][2] ==1 && board[5][3] ==1 && board[6][4] == 1)
C4_OUT =1;
else if(board[2][1] ==1 && board[3][2] ==1 && board[4][3] ==1 && board[5][4] == 1)
C4_OUT =1;
else if(board[1][1] ==1 && board[2][2] ==1 && board[3][3] ==1 && board[4][4] == 1)
C4_OUT =1;
else if(board[4][2] ==1 && board[5][3] ==1 && board[6][4] ==1 && board[7][5] == 1)
C4_OUT =1;
else if(board[3][2] ==1 && board[4][3] ==1 && board[5][4] ==1 && board[6][5] == 1)
C4_OUT =1;
else if(board[2][2] ==1 && board[3][3] ==1 && board[4][4] ==1 && board[5][5] == 1)
C4_OUT =1;
else if(board[4][3] ==1 && board[5][4] ==1 && board[6][5] ==1 && board[7][6] == 1)
C4_OUT =1;
else if(board[3][3] ==1 && board[4][4] ==1 && board[5][5] ==1 && board[6][6] == 1)
C4_OUT =1;
else if(board[4][4] ==1 && board[5][5] ==1 && board[6][6] ==1 && board[7][7] == 1)
C4_OUT =1;
else if(board[0][4] ==1 && board[1][5] ==1 && board[2][6] ==1 && board[3][7] == 1)
C4_OUT =1;
else if(board[0][3] ==1 && board[1][4] ==1 && board[2][5] ==1 && board[3][6] == 1)
C4_OUT =1;
else if(board[0][2] ==1 && board[1][3] ==1 && board[2][4] ==1 && board[3][5] == 1)
C4_OUT =1;
else if(board[0][1] ==1 && board[1][2] ==1 && board[2][3] ==1 && board[3][4] == 1)
C4_OUT =1;
else if(board[1][4] ==1 && board[2][5] ==1 && board[3][6] ==1 && board[4][7] == 1)
C4_OUT =1;
else if(board[1][3] ==1 && board[2][4] ==1 && board[3][5] ==1 && board[4][6] == 1)
C4_OUT =1;
else if(board[1][2] ==1 && board[2][3] ==1 && board[3][4] ==1 && board[4][5] == 1)
C4_OUT =1;
else if(board[2][4] ==1 && board[3][5] ==1 && board[4][6] ==1 && board[5][7] == 1)
C4_OUT =1;
else if(board[2][3] ==1 && board[3][4] ==1 && board[4][5] ==1 && board[5][6] == 1)
C4_OUT =1;
else if(board[3][4] ==1 && board[4][5] ==1 && board[5][6] ==1 && board[6][7] == 1)
C4_OUT =1;
else if(board[7][4] ==1 && board[6][5] ==1 && board[5][6] ==1 && board[4][7] == 1)
C4_OUT =1;
else if(board[7][3] ==1 && board[6][4] ==1 && board[5][5] ==1 && board[4][6] == 1)
C4_OUT =1;
else if(board[7][2] ==1 && board[6][3] ==1 && board[5][4] ==1 && board[4][5] == 1)
C4_OUT =1;
else if(board[7][1] ==1 && board[6][2] ==1 && board[5][3] ==1 && board[4][4] == 1)
C4_OUT =1;
else if(board[7][0] ==1 && board[6][1] ==1 && board[5][2] ==1 && board[4][3] == 1)
C4_OUT =1;
else if(board[6][4] ==1 && board[5][5] ==1 && board[4][6] ==1 && board[3][7] == 1)
C4_OUT =1;
else if(board[6][3] ==1 && board[5][4] ==1 && board[4][5] ==1 && board[3][6] == 1)
C4_OUT =1;
else if(board[6][2] ==1 && board[5][3] ==1 && board[4][4] ==1 && board[3][5] == 1)
C4_OUT =1;
else if(board[6][1] ==1 && board[5][2] ==1 && board[4][3] ==1 && board[3][4] == 1)
C4_OUT =1;
else if(board[5][4] ==1 && board[4][5] ==1 && board[3][6] ==1 && board[2][7] == 1)
C4_OUT =1;
else if(board[5][3] ==1 && board[4][4] ==1 && board[3][5] ==1 && board[2][6] == 1)
C4_OUT =1;
else if(board[5][2] ==1 && board[4][3] ==1 && board[3][4] ==1 && board[2][5] == 1)
C4_OUT =1;
else if(board[4][4] ==1 && board[3][5] ==1 && board[2][6] ==1 && board[1][7] == 1)
C4_OUT =1;
else if(board[4][3] ==1 && board[3][4] ==1 && board[2][5] ==1 && board[1][6] == 1)
C4_OUT =1;
else if(board[3][4] ==1 && board[2][5] ==1 && board[1][6] ==1 && board[0][7] == 1)
C4_OUT =1;
else if(board[6][0] ==1 && board[5][1] ==1 && board[4][2] ==1 && board[3][3] == 1)
C4_OUT =1;
else if(board[5][0] ==1 && board[4][1] ==1 && board[3][2] ==1 && board[2][3] == 1)
C4_OUT =1;
else if(board[4][0] ==1 && board[3][1] ==1 && board[2][2] ==1 && board[1][3] == 1)
C4_OUT =1;
else if(board[3][0] ==1 && board[2][1] ==1 && board[1][2] ==1 && board[0][3] == 1)
C4_OUT =1;
else if(board[5][1] ==1 && board[4][2] ==1 && board[3][3] ==1 && board[2][4] == 1)
C4_OUT =1;
else if(board[4][1] ==1 && board[3][2] ==1 && board[2][3] ==1 && board[1][4] == 1)
C4_OUT =1;
else if(board[3][1] ==1 && board[2][2] ==1 && board[1][3] ==1 && board[0][4] == 1)
C4_OUT =1;
else if(board[4][2] ==1 && board[3][3] ==1 && board[2][4] ==1 && board[1][5] == 1)
C4_OUT =1;
else if(board[3][2] ==1 && board[2][3] ==1 && board[1][4] ==1 && board[0][5] == 1)
C4_OUT =1;
end

always @(negedge CLK)begin
if(board[4][0] ==2 && board[5][1] ==2 && board[6][2] ==2 && board[7][3] == 2)
C4_OUT = 2;
else if(board[0][0] ==2 && board[0][1] ==2 && board[0][2] ==2 && board[0][3] == 2)
C4_OUT = 2;
else if(board[0][1] ==2 && board[0][2] ==2 && board[0][3] ==2 && board[0][4] == 2)
C4_OUT =2;

else if(board[0][2] ==2 && board[0][3] ==2 && board[0][4] ==2 && board[0][5] == 2)
C4_OUT = 2;
else if(board[0][3] ==2 && board[0][4] ==2 && board[0][5] ==2 && board[0][6] == 2)
C4_OUT =2;

else if(board[0][4] ==2 && board[0][5] ==2 && board[0][6] ==2 && board[0][7] == 2)
C4_OUT = 2;

else if(board[1][0] ==2 && board[1][1] ==2 && board[1][2] ==2 && board[1][3] == 2)
C4_OUT = 2;
else if(board[1][1] ==2 && board[1][2] ==2 && board[1][3] ==2 && board[1][4] == 2)
C4_OUT =2;

else if(board[1][2] ==2 && board[1][3] ==2 && board[1][4] ==2 && board[1][5] == 2)
C4_OUT = 2;
else if(board[1][3] ==2 && board[1][4] ==2 && board[1][5] ==2 && board[1][6] == 2)
C4_OUT =2;

else if(board[1][4] ==2 && board[1][5] ==2 && board[1][6] ==2 && board[1][7] == 2)
C4_OUT = 2;

else if(board[2][0] ==2 && board[2][1] ==2 && board[2][2] ==2 && board[2][3] == 2)
C4_OUT = 2;
else if(board[2][1] ==2 && board[2][2] ==2 && board[2][3] ==2 && board[2][4] == 2)
C4_OUT =2;

else if(board[2][2] ==2 && board[2][3] ==2 && board[2][4] ==2 && board[2][5] == 2)
C4_OUT = 2;
else if(board[2][3] ==2 && board[2][4] ==2 && board[2][5] ==2 && board[2][6] == 2)
C4_OUT =2;

else if(board[2][4] ==2 && board[2][5] ==2 && board[2][6] ==2 && board[2][7] == 2)
C4_OUT = 2;

else if(board[3][0] ==2 && board[3][1] ==2 && board[3][2] ==2 && board[3][3] == 2)
C4_OUT = 2;
else if(board[3][1] ==2 && board[3][2] ==2 && board[3][3] ==2 && board[3][4] == 2)
C4_OUT =2;

else if(board[3][2] ==2 && board[3][3] ==2 && board[3][4] ==2 && board[3][5] == 2)
C4_OUT = 2;
else if(board[3][3] ==2 && board[3][4] ==2 && board[3][5] ==2 && board[3][6] == 2)
C4_OUT =2;

else if(board[3][4] ==2 && board[3][5] ==2 && board[3][6] ==2 && board[3][7] == 2)
C4_OUT = 2;

else if(board[4][0] ==2 && board[4][1] ==2 && board[4][2] ==2 && board[4][3] == 2)
C4_OUT = 2;
else if(board[4][1] ==2 && board[4][2] ==2 && board[4][3] ==2 && board[4][4] == 2)
C4_OUT =2;

else if(board[4][2] ==2 && board[4][3] ==2 && board[4][4] ==2 && board[4][5] == 2)
C4_OUT = 2;
else if(board[4][3] ==2 && board[4][4] ==2 && board[4][5] ==2 && board[4][6] == 2)
C4_OUT =2;

else if(board[4][4] ==2 && board[4][5] ==2 && board[4][6] ==2 && board[4][7] == 2)
C4_OUT = 2;

else if(board[5][0] ==2 && board[5][1] ==2 && board[5][2] ==2 && board[5][3] == 2)
C4_OUT = 2;
else if(board[5][1] ==2 && board[5][2] ==2 && board[5][3] ==2 && board[5][4] == 2)
C4_OUT =2;

else if(board[5][2] ==2 && board[5][3] ==2 && board[5][4] ==2 && board[5][5] == 2)
C4_OUT = 2;
else if(board[5][3] ==2 && board[5][4] ==2 && board[5][5] ==2 && board[5][6] == 2)
C4_OUT =2;

else if(board[5][4] ==2 && board[5][5] ==2 && board[5][6] ==2 && board[5][7] == 2)
C4_OUT = 2;

else if(board[6][0] ==2 && board[6][1] ==2 && board[6][2] ==2 && board[6][3] == 2)
C4_OUT = 2;
else if(board[6][1] ==2 && board[6][2] ==2 && board[6][3] ==2 && board[6][4] == 2)
C4_OUT =2;

else if(board[6][2] ==2 && board[6][3] ==2 && board[6][4] ==2 && board[6][5] == 2)
C4_OUT = 2;
else if(board[6][3] ==2 && board[6][4] ==2 && board[6][5] ==2 && board[6][6] == 2)
C4_OUT =2;

else if(board[6][4] ==2 && board[6][5] ==2 && board[6][6] ==2 && board[6][7] == 2)
C4_OUT = 2;

else if(board[7][0] ==2 && board[7][1] ==2 && board[7][2] ==2 && board[7][3] == 2)
C4_OUT = 2;
else if(board[7][1] ==2 && board[7][2] ==2 && board[7][3] ==2 && board[7][4] == 2)
C4_OUT =2;

else if(board[7][2] ==2 && board[7][3] ==2 && board[7][4] ==2 && board[7][5] == 2)
C4_OUT = 2;
else if(board[7][3] ==2 && board[7][4] ==2 && board[7][5] ==2 && board[7][6] == 2)
C4_OUT =2;

else if(board[7][4] ==2 && board[7][5] ==2 && board[7][6] ==2 && board[7][7] == 2)
C4_OUT = 2;
else if(board[0][0] ==2 && board[1][0] ==2 && board[2][0] ==2 && board[3][0] == 2)
C4_OUT = 2;
else if(board[1][0] ==2 && board[2][0] ==2 && board[3][0] ==2 && board[4][0] == 2)
C4_OUT =2;

else if(board[2][0] ==2 && board[3][0] ==2 && board[4][0] ==2 && board[5][0] == 2)
C4_OUT = 2;
else if(board[3][0] ==2 && board[4][0] ==2 && board[5][0] ==2 && board[6][0] == 2)
C4_OUT =2;

else if(board[4][0] ==2 && board[5][0] ==2 && board[6][0] ==2 && board[7][0] == 2)
C4_OUT = 2;

else if(board[0][1] ==2 && board[1][1] ==2 && board[2][1] ==2 && board[3][1] == 2)
C4_OUT = 2;
else if(board[1][1] ==2 && board[2][1] ==2 && board[3][1] ==2 && board[4][1] == 2)
C4_OUT =2;

else if(board[2][1] ==2 && board[3][1] ==2 && board[4][1] ==2 && board[5][1] == 2)
C4_OUT = 2;
else if(board[3][1] ==2 && board[4][1] ==2 && board[5][1] ==2 && board[6][1] == 2)
C4_OUT =2;

else if(board[4][1] ==2 && board[5][1] ==2 && board[6][1] ==2 && board[7][1] == 2)
C4_OUT = 2;

else if(board[0][2] ==2 && board[1][2] ==2 && board[2][2] ==2 && board[3][2] == 2)
C4_OUT = 2;
else if(board[1][2] ==2 && board[2][2] ==2 && board[3][2] ==2 && board[4][2] == 2)
C4_OUT =2;

else if(board[2][2] ==2 && board[3][2] ==2 && board[4][2] ==2 && board[5][2] == 2)
C4_OUT = 2;
else if(board[3][2] ==2 && board[4][2] ==2 && board[5][2] ==2 && board[6][2] == 2)
C4_OUT =2;

else if(board[4][2] ==2 && board[5][2] ==2 && board[6][2] ==2 && board[7][2] == 2)
C4_OUT = 2;

else if(board[0][3] ==2 && board[1][3] ==2 && board[2][3] ==2 && board[3][3] == 2)
C4_OUT = 2;
else if(board[1][3] ==2 && board[2][3] ==2 && board[3][3] ==2 && board[4][3] == 2)
C4_OUT =2;

else if(board[2][3] ==2 && board[3][3] ==2 && board[4][3] ==2 && board[5][3] == 2)
C4_OUT = 2;
else if(board[3][3] ==2 && board[4][3] ==2 && board[5][3] ==2 && board[6][3] == 2)
C4_OUT =2;

else if(board[4][3] ==2 && board[5][3] ==2 && board[6][3] ==2 && board[7][3] == 2)
C4_OUT = 2;


else if(board[0][4] ==2 && board[1][4] ==2 && board[2][4] ==2 && board[3][4] == 2)
C4_OUT = 2;
else if(board[1][4] ==2 && board[2][4] ==2 && board[3][4] ==2 && board[4][4] == 2)
C4_OUT =2;

else if(board[2][4] ==2 && board[3][4] ==2 && board[4][4] ==2 && board[5][4] == 2)
C4_OUT = 2;
else if(board[3][4] ==2 && board[4][4] ==2 && board[5][4] ==2 && board[6][4] == 2)
C4_OUT =2;

else if(board[4][4] ==2 && board[5][4] ==2 && board[6][4] ==2 && board[7][4] == 2)
C4_OUT = 2;

else if(board[0][5] ==2 && board[1][5] ==2 && board[2][5] ==2 && board[3][5] == 2)
C4_OUT = 2;
else if(board[1][5] ==2 && board[2][5] ==2 && board[3][5] ==2 && board[4][5] == 2)
C4_OUT =2;

else if(board[2][5] ==2 && board[3][5] ==2 && board[4][5] ==2 && board[5][5] == 2)
C4_OUT = 2;
else if(board[3][5] ==2 && board[4][5] ==2 && board[5][5] ==2 && board[6][5] == 2)
C4_OUT =2;

else if(board[4][5] ==2 && board[5][5] ==2 && board[6][5] ==2 && board[7][5] == 2)
C4_OUT = 2;

else if(board[0][6] ==2 && board[1][6] ==2 && board[2][6] ==2 && board[3][6] == 2)
C4_OUT = 2;
else if(board[1][6] ==2 && board[2][6] ==2 && board[3][6] ==2 && board[4][6] == 2)
C4_OUT =2;

else if(board[2][6] ==2 && board[3][6] ==2 && board[4][6] ==2 && board[5][6] == 2)
C4_OUT = 2;
else if(board[3][6] ==2 && board[4][6] ==2 && board[5][6] ==2 && board[6][6] == 2)
C4_OUT =2;

else if(board[4][6] ==2 && board[5][6] ==2 && board[6][6] ==2 && board[7][6] == 2)
C4_OUT = 2;

else if(board[0][7] ==2 && board[1][7] ==2 && board[2][7] ==2 && board[3][7] == 2)
C4_OUT = 2;
else if(board[1][7] ==2 && board[2][7] ==2 && board[3][7] ==2 && board[4][7] == 2)
C4_OUT =2;

else if(board[2][7] ==2 && board[3][7] ==2 && board[4][7] ==2 && board[5][7] == 2)
C4_OUT = 2;
else if(board[3][7] ==2 && board[4][7] ==2 && board[5][7] ==2 && board[6][7] == 2)
C4_OUT =2;

else if(board[4][7] ==2 && board[5][7] ==2 && board[6][7] ==2 && board[7][7] == 2)
C4_OUT = 2;
else if(board[3][0] ==2 && board[4][1] ==2 && board[5][2] ==2 && board[6][3] == 2)
C4_OUT =2;
else if(board[2][0] ==2 && board[3][1] ==2 && board[4][2] ==2 && board[5][3] == 2)
C4_OUT =2;
else if(board[1][0] ==2 && board[2][1] ==2 && board[3][2] ==2 && board[4][3] == 2)
C4_OUT =2;
else if(board[0][0] ==2 && board[1][1] ==2 && board[2][2] ==2 && board[3][3] == 2)
C4_OUT =2;
else if(board[4][1] ==2 && board[5][2] ==2 && board[6][3] ==2 && board[7][4] == 2)
C4_OUT =2;
else if(board[3][1] ==2 && board[4][2] ==2 && board[5][3] ==2 && board[6][4] == 2)
C4_OUT =2;
else if(board[2][1] ==2 && board[3][2] ==2 && board[4][3] ==2 && board[5][4] == 2)
C4_OUT =2;
else if(board[1][1] ==2 && board[2][2] ==2 && board[3][3] ==2 && board[4][4] == 2)
C4_OUT =2;
else if(board[4][2] ==2 && board[5][3] ==2 && board[6][4] ==2 && board[7][5] == 2)
C4_OUT =2;
else if(board[3][2] ==2 && board[4][3] ==2 && board[5][4] ==2 && board[6][5] == 2)
C4_OUT =2;
else if(board[2][2] ==2 && board[3][3] ==2 && board[4][4] ==2 && board[5][5] == 2)
C4_OUT =2;
else if(board[4][3] ==2 && board[5][4] ==2 && board[6][5] ==2 && board[7][6] == 2)
C4_OUT =2;
else if(board[3][3] ==2 && board[4][4] ==2 && board[5][5] ==2 && board[6][6] == 2)
C4_OUT =2;
else if(board[4][4] ==2 && board[5][5] ==2 && board[6][6] ==2 && board[7][7] == 2)
C4_OUT =2;
else if(board[0][4] ==2 && board[1][5] ==2 && board[2][6] ==2 && board[3][7] == 2)
C4_OUT =2;
else if(board[0][3] ==2 && board[1][4] ==2 && board[2][5] ==2 && board[3][6] == 2)
C4_OUT =2;
else if(board[0][2] ==2 && board[1][3] ==2 && board[2][4] ==2 && board[3][5] == 2)
C4_OUT =2;
else if(board[0][1] ==2 && board[1][2] ==2 && board[2][3] ==2 && board[3][4] == 2)
C4_OUT =2;
else if(board[1][4] ==2 && board[2][5] ==2 && board[3][6] ==2 && board[4][7] == 2)
C4_OUT =2;
else if(board[1][3] ==2 && board[2][4] ==2 && board[3][5] ==2 && board[4][6] == 2)
C4_OUT =2;
else if(board[1][2] ==2 && board[2][3] ==2 && board[3][4] ==2 && board[4][5] == 2)
C4_OUT =2;
else if(board[2][4] ==2 && board[3][5] ==2 && board[4][6] ==2 && board[5][7] == 2)
C4_OUT =2;
else if(board[2][3] ==2 && board[3][4] ==2 && board[4][5] ==2 && board[5][6] == 2)
C4_OUT =2;
else if(board[3][4] ==2 && board[4][5] ==2 && board[5][6] ==2 && board[6][7] == 2)
C4_OUT =2;
else if(board[7][4] ==2 && board[6][5] ==2 && board[5][6] ==2 && board[4][7] == 2)
C4_OUT =2;
else if(board[7][3] ==2 && board[6][4] ==2 && board[5][5] ==2 && board[4][6] == 2)
C4_OUT =2;
else if(board[7][2] ==2 && board[6][3] ==2 && board[5][4] ==2 && board[4][5] == 2)
C4_OUT =2;
else if(board[7][1] ==2 && board[6][2] ==2 && board[5][3] ==2 && board[4][4] == 2)
C4_OUT =2;
else if(board[7][0] ==2 && board[6][1] ==2 && board[5][2] ==2 && board[4][3] == 2)
C4_OUT =2;
else if(board[6][4] ==2 && board[5][5] ==2 && board[4][6] ==2 && board[3][7] == 2)
C4_OUT =2;
else if(board[6][3] ==2 && board[5][4] ==2 && board[4][5] ==2 && board[3][6] == 2)
C4_OUT =2;
else if(board[6][2] ==2 && board[5][3] ==2 && board[4][4] ==2 && board[3][5] == 2)
C4_OUT =2;
else if(board[6][1] ==2 && board[5][2] ==2 && board[4][3] ==2 && board[3][4] == 2)
C4_OUT =2;
else if(board[5][4] ==2 && board[4][5] ==2 && board[3][6] ==2 && board[2][7] == 2)
C4_OUT =2;
else if(board[5][3] ==2 && board[4][4] ==2 && board[3][5] ==2 && board[2][6] == 2)
C4_OUT =2;
else if(board[5][2] ==2 && board[4][3] ==2 && board[3][4] ==2 && board[2][5] == 2)
C4_OUT =2;
else if(board[4][4] ==2 && board[3][5] ==2 && board[2][6] ==2 && board[1][7] == 2)
C4_OUT =2;
else if(board[4][3] ==2 && board[3][4] ==2 && board[2][5] ==2 && board[1][6] == 2)
C4_OUT =2;
else if(board[3][4] ==2 && board[2][5] ==2 && board[1][6] ==2 && board[0][7] == 2)
C4_OUT =2;
else if(board[6][0] ==2 && board[5][1] ==2 && board[4][2] ==2 && board[3][3] == 2)
C4_OUT =2;
else if(board[5][0] ==2 && board[4][1] ==2 && board[3][2] ==2 && board[2][3] == 2)
C4_OUT =2;
else if(board[4][0] ==2 && board[3][1] ==2 && board[2][2] ==2 && board[1][3] == 2)
C4_OUT =2;
else if(board[3][0] ==2 && board[2][1] ==2 && board[1][2] ==2 && board[0][3] == 2)
C4_OUT =2;
else if(board[5][1] ==2 && board[4][2] ==2 && board[3][3] ==2 && board[2][4] == 2)
C4_OUT =2;
else if(board[4][1] ==2 && board[3][2] ==2 && board[2][3] ==2 && board[1][4] == 2)
C4_OUT =2;
else if(board[3][1] ==2 && board[2][2] ==2 && board[1][3] ==2 && board[0][4] == 2)
C4_OUT =2;
else if(board[4][2] ==2 && board[3][3] ==2 && board[2][4] ==2 && board[1][5] == 2)
C4_OUT =2;
else if(board[3][2] ==2 && board[2][3] ==2 && board[1][4] ==2 && board[0][5] == 2)
C4_OUT =2;
end
endmodule
