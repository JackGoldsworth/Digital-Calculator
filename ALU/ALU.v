module ALU(A, B, OP, Out);

	input [4:0] A, B;
	input [1:0] OP;
	output reg [4:0] Out;
	
	always @(A or B or Out)
		begin
			case(OP)
				2'b00: Out = A + B;
				2'b01: Out = A - B;
				2'b10: Out = A * B;
				2'b11: Out = 2'b00010 ** B;
			endcase
		end
		
endmodule