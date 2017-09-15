module helloworld (clk, led, key0, key1);	
		input clk;
		input key0;
		input key1;
		output reg [7:0] led; 
	


reg [31:0] counter;
reg [7:0] i;
//assign i = 0;
//assign led[0] = 1;



always @ (posedge clk)
begin
	if (counter <= 25000000)
	begin
		counter <= counter + 1;
	end

	else
	begin
	counter <= 0;	
	if (i == 0 & led[0] == 0)
	begin
		led[0] <= 1;
	end
	
		if (key0 | key1)
		begin
			if (i < 7)
			begin
				led[i] = 0;
				i = i + 1;
				led[i] = 1;
			end
			
			else
			begin
				i <= 0;
				led[7] = 0;
				led[0] = 1;
			end
		end
		else 
		begin
			led[i] = ~led[i];	
		end
	end
	
	
end


endmodule
