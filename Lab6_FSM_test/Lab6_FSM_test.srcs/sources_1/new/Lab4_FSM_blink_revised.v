`timescale 1ns / 1ps

module Lab4_FSM( clk, sw, led, next_led );
    input clk;
    input [2:0] sw;
    input wire [7:0] led;
    output reg [7:0] next_led;

    // FSM states
    parameter S0 = 8'b00000000;
    parameter S1 = 8'b00000001;
    parameter S2 = 8'b00000011;
    parameter S3 = 8'b00000111;
    parameter S4 = 8'b00001111;
    parameter S5 = 8'b00010000;
    parameter S6 = 8'b00110000;
    parameter S7 = 8'b01110000;
    parameter S8 = 8'b11110000;
    parameter S9 = 8'b11111111;
    
    // instantiate clkgen module
    clkgen clkgen_0( .clk( clk ), .clk_tail( clk_tail) );
    
    // counter
    reg [32:0] count1;
    reg [32:0] count2;

//    always @ (posedge clk_tail)
//    begin
//        led <= next_led;          
//    end

//  always @ (*) // next state logic
    always @ (led) // next state logic
    if (sw[2]) begin            // hazard signal
        next_led <= S0;
        case (led)
            S0:      next_led <= S9;
            S9:      next_led <= S0;
            default: next_led <= S0;
        endcase
    end else if (sw[1]) begin   // left signal
        next_led = S0;
        case (led)
            S0:      next_led = S5;
            S5:      next_led = S6;
            S6:      next_led = S7;
            S7:      next_led = S8;
            S8:      next_led = S0;
            default: next_led = S0;
        endcase
    end else if (sw[0]) begin   // hazard signal
        next_led = S0;
        case (led)
            S0:      next_led = S1;
            S1:      next_led = S2;
            S2:      next_led = S3;
            S3:      next_led = S4;
            S4:      next_led = S0;
            default: next_led = S0;
        endcase
    end else begin
        next_led = S0;
    end

endmodule