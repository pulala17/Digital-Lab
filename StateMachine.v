// -----------------------------------------------------------------------------------------
// Version | Programmer                                     | Date       | Remark   
// -----------------------------------------------------------------------------------------
// V1      | Xaria (xli071@e.ntu.edu.sg)       | 02/08/2022 | final version
// -----------------------------------------------------------------------------------------  
//
// The code is a behavioural code for a state machine
// The code is from Module4 in the NTU-TUM class, NM6008. 


module StateMachine(//define your inputs and outputs
       CLK,NRST,start,rst,CIN,A,B,S,COUT );

input CLK;
input NRST;
input start;
input rst;
input CIN;
input A;
input B;

output reg S;
output reg COUT;

reg[1:0] state;
reg[1:0] next_state;

parameter S0=2'b00;
parameter S1=2'b01;
parameter S2=2'b10;
parameter S3=2'b11;

//synchronous-logic CLK and asynchronous-logic NRST
//Sequential Logic for the current state logic
always @ (posedge CLK or negedge NRST) begin
  if(!NRST) state <= S0 ;//what is your default state?
  else state <= next_state;
end

//state machine coding
always @ (*) begin
  case(state)
    S0:begin
       if(start) next_state = S1;
       else  next_state = S0;
       end
    S1:begin
       if(rst)  next_state = S0;
       else  next_state = S2;
       end
    S2:begin
       if(rst)  next_state = S0;
       else next_state = S3;
       end
    S3:begin
       if(rst) next_state = S0;
       else  next_state = S1;
       end
    default:next_state = S0;
  endcase
end

//output logic
always @ (posedge CLK) begin
  case(state)
     S0:{S,COUT}={1'b0,1'b0};
     S1:{S,COUT}={((A ^ B) ^ CIN),1'b0};
     S2:{S,COUT}={1'b0,((A & B) | (CIN & (A ^ B)))};
     S3:{S,COUT}={((A ^ B) ^ CIN),((A & B) | (CIN & (A ^ B)))};
  endcase
end

endmodule
