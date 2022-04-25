module LEDglow(clk, led);
input clk;
output led;
parameter MAX_BITS = 28; // to make slower (more gradual increase in intensity), make MAX_BITS higher
                        // to make faster (more rapid increase in intensity), make MAX_BITS lower

// instantiate clkgen module
clkgen clkgen_0( .clk( clk ), .clk_tail( clk_tail) );

reg [MAX_BITS-1:0] cnt;
always @(posedge clk) begin 
    if ( cnt[MAX_BITS-1:MAX_BITS-4] != 4'b1111) // if statement makes intensity variation stop when max intensity reached
        cnt <= cnt+1; 
end

reg [4:0] PWM;
wire [3:0] intensity = cnt[MAX_BITS-1:MAX_BITS-4];    // ramp the intensity up and down
always @(posedge clk) PWM <= PWM[3:0] + intensity;

assign led = PWM[4];
endmodule