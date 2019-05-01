module RegisterSwitch(OP, K, Perform, Reset, Clock, R0, R1, R2, R3);

	input [2:0] OP;
	input [1:0] K;
	input Perform;
	
	output reg [4:0] R0, R1, R2, R3;
	
	always @(*)
		begin
			case(OP)
				3'b000: begin
					R0 = 5'b00000;
					R1 = 5'b00001;
					R2 = 5'b00010;
					R3 = 5'b00011;
				end
				3'b001: R0 = 5'b00000;
				3'b010: begin
						begin
							case(K)
								2'b00: R0 = R0;
								2'b01: R0 = R1;
								2'b10: R0 = R2;
								2'b11: R0 = R3;
							endcase
						end
				end
				3'b011: begin
					begin
						case(K)
							2'b00: R0 = R0;
							2'b01: R1 = R0;
							2'b10: R2 = R0;
							2'b11: R3 = R0;
						endcase
					end
				end
				3'b100: begin
					begin
						case(K)
							2'b00: R1 = R0;
							2'b01: R1 = R0;
							2'b10: R2 = R0;
							2'b11: R3 = R0;
						endcase
					end
				end
			endcase
		end
		
endmodule
					
				
				
				

					