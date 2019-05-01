module ALU(OP, A, B, Result);

	parameter n = 2;
	input [2:0] OP;
	input [4:0] A, B;
	
	output reg [5:0] Result;
	
	always @(*)
		begin
			case(OP)
				3'b100: Result = A + B;
				3'b101: Result = A - B;
				3'b110: Result = A * B;
				3'b111: Result = n ** B;
				default: Result = A + B;
			endcase
		end
	
endmodule