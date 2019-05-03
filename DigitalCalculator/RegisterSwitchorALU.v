module RegisterSwitchorALU(Perform, OP, K, Clr, a, b, c, d, R0, R1, R2, R3);

	// a, b, c, d stand for their respective registers
	input [4:0] a, b, c, d;
	input [2:0] OP;
	input [1:0] K;
	input Perform, Clr;

	output [4:0] R0, R1, R2, R3;
	reg [4:0] R0, R1, R2, R3;
	// Might need to add a carryout bit
	
	
	always @(posedge Perform)
		begin
			case(OP)
				3'b000: begin
					R0 = 3'b000;
					R1 = 3'b001;
					R2 = 3'b010;
					R3 = 3'b011;
				end
				3'b001: begin
					case(K)
					2'b00: R0 = 5'b00000;
					2'b01: R0 = 5'b00001;
					2'b10: R0 = 5'b00010;
					2'b11: R0 = 5'b00011;
					endcase
				end
				3'b010: begin
					case(K)
					2'b00: R0 = a;
					2'b01: R0 = b;
					2'b10: R0 = c;
					2'b11: R0 = d;
					endcase
				end
				3'b011: begin
					case(K)
					2'b00: R0 = a;
					2'b01: R1 = a;
					2'b10: R2 = a;
					2'b11: R3 = a;
					endcase
				end
				3'b100: begin
					case(K)
					2'b00: R0 = a + a;
					2'b01: R0 = a + b;
					2'b10: R0 = a + c;
					2'b11: R0 = a + d;
					endcase
				end
				3'b101: begin
					case(K)
					2'b00: R0 = a - a;
					2'b01: R0 = a - b;
					2'b10: R0 = a - c;
					2'b11: R0 = a - d;
					endcase
				end
				3'b110: begin
					case(K)
					2'b00: R0 = a * a;
					2'b01: R0 = a * b;
					2'b10: R0 = a * c;
					2'b11: R0 = a * d;
					endcase
				end
				3'b111: begin
					case(K)
					2'b00: R0 = 5'b00010 ** a;
					2'b01: R0 = 5'b00010 ** b;
					2'b10: R0 = 5'b00010 ** c;
					2'b11: R0 = 5'b00010 ** d;
					endcase
				end
			endcase
			if(Clr == 1)
			begin
				R0 = 5'b00000;
				R1 = 5'b00000;
				R2 = 5'b00000;
				R3 = 5'b00000;
			end
		end
		
endmodule
				
				

					