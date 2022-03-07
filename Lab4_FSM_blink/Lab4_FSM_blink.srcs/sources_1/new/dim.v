module LED_PWM( input clk,
                input [3:0] PWM_input, // 16 intensity levels
                output reg LED);

  reg [3:0] PWM; // internal accumulator

  always @(posedge clk) {LED, PWM} <= PWM + PWM_input;

endmodule