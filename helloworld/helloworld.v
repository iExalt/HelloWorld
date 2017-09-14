module helloworld (clk,
						led);
input clk;
output reg led;

reg [31:0] counter;

always @ (posedge clk)
begin
	if (counter <= 25000000)
	begin
		counter <= counter + 1;
	end

	else
	begin
		counter <= 0;
		led <= ~led;
	end
end


endmodule
