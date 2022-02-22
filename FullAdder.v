// -----------------------------------------------------------------
// Version | Programmer                       | Date       | Remark   
// -----------------------------------------------------------------
// V1      | Xaria  (xli071@e.ntu.edu.sg)     | 31/07/2020 | 
// ----------------------------------------------------------------- 
// The code is a behavioural code for a full adder
// The code is from digital lab module3 in the NTU-TUM class, NM6008. 

module FullAdder(//inputs
                CIN,
                A,
                B,
                 //outputs
                 S,COUT);

input CIN;
input A;
input B;

output S;
output COUT;

assign S=A^B^CIN;
assign COUT=(A&B)|(CIN&(A^B));

endmodule
