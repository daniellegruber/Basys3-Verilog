module FSM( clk, sw, led );
    input clk;
    input [3:0] sw;
    output wire [15:0] led;
//    output [7:0] led;
//    output reg [15:0] led;

    parameter S0 = 4'b0000;
    parameter S1 = 4'b0001;
    parameter S2 = 4'b0011;
    parameter S3 = 4'b0111;
    parameter S4 = 4'b1111;
    
    reg [3:0] state_l, nextstate_l, state_r, nextstate_r;
    
//    reg [3:0] right = 4'b0000;
//    reg [3:0] left = 4'b0000;
        
//    assign led[3:0] = right;
//    assign led[7:4] = left;
        
    assign led[3:0] = state_l;
    assign led[7:4] = state_r;
    
    // instantiate clkgen module
    clkgen clkgen_0( .clk( clk ), .clk_tail( clk_tail) );

    always @ (posedge clk_tail)
    begin
        state_l <= nextstate_l;   
        state_r <= nextstate_r;        
    end

  always @ (*) // next state logic
    if (sw[2]) begin            // hazard signal
        nextstate_l = S0;
        nextstate_r = S0;
        case (state_l)
            S0:      nextstate_l = S4;
            S4:      nextstate_l = S0;
            default: nextstate_l = S0;
        endcase
        case (state_r)
            S0:      nextstate_r = S4;
            S4:      nextstate_r = S0;
            default: nextstate_r = S0;
        endcase
    end else if (sw[0]) begin   // left signal
        case (state_l)
            S0:      nextstate_l = S1;
            S1:      nextstate_l = S2;
            S2:      nextstate_l = S3;
            S3:      nextstate_l = S4;
            S4:      nextstate_l = S0;
            default: nextstate_l = S0;
        endcase
    end else if (sw[1]) begin   // hazard signal
        case (state_r)
            S0:      nextstate_r = S1;
            S1:      nextstate_r = S2;
            S2:      nextstate_r = S3;
            S3:      nextstate_r = S4;
            S4:      nextstate_r = S0;
            default: nextstate_r = S0;
        endcase
    end

endmodule