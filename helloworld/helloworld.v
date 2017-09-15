module helloworld (clk, led);	
		input clk;
		output reg [7:0] led; 
	


reg [31:0] counter;
reg [7:0] i;

always @ (posedge clk)
begin
	if (counter <= 25000000)
	begin
		counter <= counter + 1;
	end

	else
	begin
	counter <= 0;
		for (i = 0; i <= 7; i = i + 1)
		begin
			
			led[i] <= ~led[i];
		end
	end
	
	
end


endmodule
