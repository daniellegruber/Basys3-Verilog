//module LED_PWM(clk, led);
//   input clk;
//   //input [3:0] PWM_input;     // 16 intensity levels
//   output led;

//parameter PWM_input = 4'b0001;
//reg [4:0] PWM;
//always @(posedge clk) PWM <= PWM[3:0]+PWM_input;

//assign led= PWM[4];
//endmodule