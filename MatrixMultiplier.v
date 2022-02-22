// -----------------------------------------------------------------------------------------
// Version | Programmer                        | Date       | Remark   
// -----------------------------------------------------------------------------------------
// V1      | Xaria (xli071@e.ntu.edu.sg)       | 06/10/2020 | final version
// -----------------------------------------------------------------------------------------  
// The code is a behavioural code for a synchronous-logic matrix multiplier
// The code is from the NTU-TUM class, NM6008. 

module MatrixMultiplier( CLK,NRST,start,A,B,OUT,OUT_STROBE );

input CLK, NRST, start;
input signed[7:0] A, B;

output reg signed[16:0] OUT;
output reg OUT_STROBE;
reg[2:0] state;
reg[2:0] next_state;

reg signed[15:0] MUL;
reg signed[16:0] ADD;

parameter S0=3'b000, S1=3'b001, S2=3'b010, S3=3'b011,S4=3'b100,S5=3'b101;

always @ (posedge CLK or negedge NRST) begin
  if(!NRST) state <= S0;
  else state <= next_state;
end

always @ (*) begin
  case(state)
    S0:begin
       if(start) next_state = S1;
       else  next_state = S0; end
    S1:begin
       if(start)  next_state = S2;
       else  next_state = S0; end
    S2:begin
       if(start)  next_state = S3;
       else next_state = S0; end
    S3:begin
       if(start)  next_state = S4;
       else  next_state = S0; end
    S4:begin
       if(start)  next_state = S5;
       else  next_state = S0; end
    S5:begin
       if(start)  next_state = S1;
       else  next_state = S0; end
    default:next_state = S0;
  endcase
end

always @ (posedge CLK or negedge NRST) begin
  if(!NRST) begin 
            OUT <=  0; 
            OUT_STROBE <= 0; 
	    ADD <= 0;
	    MUL <= 0;	
            end
  else begin 
       case(state)
         S0: begin
             OUT <=  0;  
             OUT_STROBE <= 0; 
             end
         S1: MUL <= $signed(A)*$signed(B); 
         S4: begin 
	     ADD <= MUL;
             MUL <= $signed(A) * $signed(B);
             end
         S5: begin
             OUT <= $signed({MUL[15],MUL}) + $signed(ADD);
             OUT_STROBE <= 1;
             ADD <=0;
             end  
    default: begin 
             OUT <=0;
             OUT_STROBE<=0;
             end   
       endcase
   end
end

endmodule
