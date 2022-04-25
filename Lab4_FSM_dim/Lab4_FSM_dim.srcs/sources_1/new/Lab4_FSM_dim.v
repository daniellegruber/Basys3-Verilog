// Idea: don't change FSM, just delay transitions

module FSM( clk, sw, led );
    input clk;
    input [3:0] sw;
    output wire [15:0] led;

    // FSM states
//    parameter S0 = 4'b0000;
//    parameter S1 = 4'b0001;
//    parameter S2 = 4'b0011;
//    parameter S3 = 4'b0111;
//    parameter S4 = 4'b1111;

    parameter S0 = 4'b0000;
    parameter S4 = 4'b1111;
    
    parameter L1 = 4'b0001;
    parameter L2 = 4'b0011;
    parameter L3 = 4'b0111;
    
    parameter R1 = 4'b1000;
    parameter R2 = 4'b1100;
    parameter R3 = 4'b1110;
    
    parameter MAX_BITS = 26; // to make slower (more gradual increase in intensity), make MAX_BITS higher
                            // to make faster (more rapid increase in intensity), make MAX_BITS lower

    
    reg [3:0] state_l, nextstate_l, state_r, nextstate_r;
    reg [4:0] PWM;             
    reg [MAX_BITS-1:0] cnt;                                                            
    wire [3:0] intensity = cnt[MAX_BITS-1:MAX_BITS-4];    // ramp the intensity up and down   
    reg transition = 0; 
    integer led_idx;
    
    assign led[3:0] = state_r;
    assign led[7:4] = state_l;
    assign led[8] = PWM[4];
    
    // instantiate clkgen module
    clkgen clkgen_0( .clk( clk ), .clk_tail( clk_tail) );

    always @(posedge clk) begin 
    if ( intensity != 4'b1111) begin // if statement makes intensity variation stop when max intensity reached
        cnt <= cnt+1;
        transition <= 0;
    end else begin
        transition = 1; 
        cnt = 0; 
    end
        
    PWM <= PWM[3:0] + intensity;
    
    state_l <= nextstate_l; 
    state_r <= nextstate_r;

    if (sw[1]) 
        state_l[led_idx] <= PWM[4];
    else if (sw[0]) 
        state_r[led_idx] <= PWM[4];
        
    end
    

    always @ (posedge transition) begin // only latch data at posedge of "transition"
    if (sw[2]) begin  // hazard signal
        nextstate_l = S0;
        nextstate_r = S0;
        
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
        
    end else if (sw[1]) begin // left signal
        nextstate_r <= S0;
        case (state_l)
        S0:     begin 
                led_idx <= 0;
                nextstate_l <= S0; 
                end
                
        L1:     begin 
                led_idx <= 1;
                nextstate_l <= L1;
                end
                
        L2:     begin 
                led_idx <= 2;
                nextstate_l <= L2;
                end
                
        L3:     begin 
                led_idx <= 3;
                nextstate_l <= L3; 
                end
                
        S4:     begin
                nextstate_l <= S0;
                led_idx <= 0;
                end
                            
        default: begin 
        nextstate_l <= S0;
        led_idx <= 0;
        end
        
        endcase
    end else if (sw[0]) begin // right signal
        nextstate_l <= S0;
        case (state_r)
        S0:     begin 
                nextstate_r <= S0; 
                led_idx <= 3;
                end
                
        R1:     begin 
                nextstate_r <= R1; 
                led_idx <= 2;
                end
                
        R2:     begin 
                nextstate_r <= R2;
                led_idx <= 1;
                end
                
        R3:     begin 
                nextstate_r <= R3; 
                led_idx <= 0;
                end
                
        S4:     begin 
                nextstate_r <= S0;
                led_idx <= 3;
                end
                            
        default: begin 
        nextstate_r <= S0;
        led_idx <= 3;
        end
        
        endcase
        end else if (~sw[0] && ~sw[1] && ~sw[2]) begin  // no signal
            nextstate_l <= S0;
            nextstate_r <= S0;
        end
    end
endmodule