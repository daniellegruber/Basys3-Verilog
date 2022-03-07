// Idea: don't change FSM, just delay transitions

module FSM( clk, sw, led );
    input clk;
    input [3:0] sw;
    output wire [15:0] led;

    // FSM states
    parameter S0 = 4'b0000;
    parameter S1 = 4'b0001;
    parameter S2 = 4'b0011;
    parameter S3 = 4'b0111;
    parameter S4 = 4'b1111;
    
    reg [3:0] state_l, nextstate_l, state_r, nextstate_r;
        
    assign led[3:0] = state_r;
    assign led[7:4] = state_l;
    
    // instantiate clkgen module
    clkgen clkgen_0( .clk( clk ), .clk_tail( clk_tail) );
    
    // counter
    reg [32:0] count1;
    reg [32:0] count2;

    always @ (posedge clk_tail)
    begin
        state_l <= nextstate_l;   
        state_r <= nextstate_r;        
    end

//  always @ (*) // next state logic
    always @ (state_l or state_r) // next state logic
    if (sw[2]) begin            // hazard signal
        nextstate_l <= S0;
        nextstate_r <= S0;
        case (state_l)
            S0:      nextstate_l <= S4;
            S4:      nextstate_l <= S0;
            default: nextstate_l <= S0;
        endcase
        case (state_r)
            S0:      nextstate_r <= S4;
            S4:      nextstate_r <= S0;
            default: nextstate_r <= S0;
        endcase
    end else if (sw[1]) begin   // left signal
    nextstate_r = S0;
    case (state_l)
        S0:      nextstate_l = S1;
        S1:      nextstate_l = S2;
        S2:      nextstate_l = S3;
        S3:      nextstate_l = S4;
        S4:      nextstate_l = S0;
        default: nextstate_l = S0;
    endcase
    end else if (sw[0]) begin   // hazard signal
    nextstate_l = S0;
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