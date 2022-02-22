// -----------------------------------------------------------------------------------------
// Version | Programmer                       | Date       | Remark   
// -----------------------------------------------------------------------------------------
// V1      | xaria(xli071@e.ntu.edu.sg)       | 09/10/2020 | final version
// -----------------------------------------------------------------------------------------  
// The code is a test benchmark for checking a full adder
// The code is from the NTU-TUM class, NM6008.  


module Connectfour_tb;

parameter delay=50;


reg [7:0] player_input;
reg player;
reg start;
reg clk;
reg reset;
wire [63:0] data;
//wire [63:0] data_2;
wire [63:0] null;
wire [1:0] winner;
reg[1:0]input_data;


Connectfour0 U1(
		.player_input(player_input),
		.player(player),
		.start(start),
		.clk(clk),
		.reset(reset),
		.data(data),
	//	.data_2(data_2),
		.null(null),
		.winner(winner),
		.error(error)           

);

always #10 clk=~clk;

initial	begin 
	player_input = 0;
	player=0;
	start = 0;
	clk = 0;
	reset = 0;

	#10;

	#10 reset = 1;
	#10 reset = 0;

	#10 player = 1;
	#10 player = ~player;
	#10 start = 1;
	#10 player_input = 8'b10000000;

	#10 player = 0;
	#10 player = ~player;
	#10 start = 1;
	#10 player_input = 8'b00000001;

	#15 player = 1;
	#15 player = ~player;
	#15 start = 1;
	#15 player_input = 8'b01000000;

	#15 player = 0;
	#15 player = ~player;
	#15 start = 1;
	#15 player_input = 8'b00000001;

	#20 player = 1;
	#20 player = ~player;
	#20 start = 1;
	#20 player_input = 8'b00100000;

	#20 player = 0;
	#20 player = ~player;
	#20 start = 1;
	#20 player_input = 8'b00000001;

	#25 player = 1;
	#25 player = ~player;
	#25 start = 1;
	#25 player_input = 8'b00010000;

	#25 player = 0;
	#25 player = ~player;
	#25 start = 1;
	#25 player_input = 8'b00000001;

 end

initial	begin
#(100*delay);
$finish;
end

endmodule
