module mux(n, a, b, c, d, w, x, y, z, sel);
	
	input [1:0] sel;
	input [4:0] a, b, c, d, n;
	output reg [4:0] w, x, y ,z;
	
	always @(*)
		begin
			w = a;
			x = b;
			y = c;
			z = d;
			case(sel)
				2'b00: begin
					w = n;
				end
				2'b01: begin
					x = n;
				end
				2'b10: begin
					y = n;
				end
				2'b11: begin
					z = n;
				end
			endcase
		end
endmodule
	