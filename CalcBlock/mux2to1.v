module mux2to1(in1, in2, s, out);

	input [4:0] in1, in2;
	input s;
	
	output reg [4:0] out;
	
	always @(in1 or in2 or s)
		begin
			if(s == 0)
				out = in1;
			else
				out = in2;
		end
endmodule
		