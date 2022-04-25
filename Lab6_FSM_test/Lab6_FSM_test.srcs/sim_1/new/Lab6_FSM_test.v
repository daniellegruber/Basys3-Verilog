`timescale 1ns / 1ps

module FSM_test;

    // Inputs
    reg [2:0] sw;
    reg [7:0] led;
    
    // Outputs
    wire [7:0] next_led;
    
    // Test clock 
    reg			clk ; // in this version we do not really need the clock
    
    // Expected outputs
    reg [7:0]	exp_next_led;
    
    // Vector and Error counts
    reg [40:0]	vec_cnt, err_cnt;

    // Define an array called 'testvec' to hold:
    // sw, led, next_led
    // for each testcase.
   
    reg[18:0] testvec [40:0];  // 19 bits (3 + 8 + 8) x 40 test vectors
    
    // The test clock generation
    always				// process always triggers
    begin
        clk=1; #50;		// clk is 1 for 50 ns 
        clk=0; #50;		// clk is 0 for 50 ns
    end					// generate a 100 ns clock

   // Initialization
	initial
	begin

		// Read the content of the file testvectors_bin.txt into the 
		// array testvec.

		$readmemb("testvectors_bin.txt", testvec);

		err_cnt=0; // number of errors
		vec_cnt=0; // number of vectors
	end
   
   // Tests
	always @ (posedge clk)		// trigger with the test clock
	begin
		// Wait 20 ns, so that we can safely apply the inputs
		#20; 

		// Assign the signals from the testvec array
		{sw, led, exp_next_led} = testvec[vec_cnt]; 

		// Wait another 60ns after which we will be at 80ns
		#60; 

		// Check if output is not what we expect to see
		if (next_led !== exp_next_led)
		begin                                         
			// Display message
			$display("Error at %5d ns: sw=%b led=%b", $time, sw, led);	// %h displays hex
			$display("       %b (%b expected)", next_led, exp_next_led);
			err_cnt = err_cnt + 1;																// increment error count
		end

		vec_cnt = vec_cnt + 1;																	// next vector
	
		// We use === so that we can also test for X
		if ((testvec[vec_cnt][18:15] === 4'bxxxx))
		begin
			// End of test, no more entries...
			$display ("%d tests completed with %d errors", vec_cnt, err_cnt);
			
			// Wait so that we can see the last result
			#20; 
			
			// Terminate simulation
			$finish;
		end
	end

   // Instantiate the Unit Under Test (UUT)
   
   Lab4_FSM UUT ( .clk (clk), 
                .sw (sw), 
                .led (led), 
                .next_led (next_led) );
   
                
endmodule
