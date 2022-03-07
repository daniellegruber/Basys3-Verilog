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
    
//    parameter PWM_input = 4'b1111;
//    reg [3:0] PWM; // internal accumulator

//    wire [7:0] x_in; //control value that defines pulse width
    parameter x_in = 8'b0000_1111; //control value that defines pulse width
    reg PWM_out = 1;
    reg [7:0] counter = 0;
    
    reg [3:0] state_l, nextstate_l, state_r, nextstate_r;
        
    assign led[3:0] = state_r;
    assign led[7:4] = state_l;
    
    // instantiate clkgen module
    clkgen clkgen_0( .clk( clk ), .clk_tail( clk_tail) );

    always @ (posedge clk_tail)
    begin
        state_l <= nextstate_l;   
        state_r <= nextstate_r;  
        
        if ( counter < x_in )
        PWM_out <= 1;
        else
        PWM_out <= 0;
        counter <= counter+1;      
    end

//  always @ (*) // next state logic
    always @ (state_l or state_r) // next state logic
    if (sw[2]) begin            // hazard signal
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
    end else if (sw[1]) begin   // left signal
        nextstate_r <= S0;
        case (state_l)
        S0:     begin 
                
                nextstate_l[0] = PWM_out; 
                nextstate_l <= S1;
                end
                
        S1:     begin 
                
                nextstate_l[1] = PWM_out; 
                nextstate_l <= S2;
                end
                
        S2:     begin 
                            
                nextstate_l[2] = PWM_out; 
                nextstate_l <= S3;
                end
                
        S3:     begin 
        
                nextstate_l[3] = PWM_out; 
                nextstate_l <= S0;
                end
                            
        default: nextstate_l <= S0;
        endcase
    end else if (sw[0]) begin   // hazard signal
        nextstate_l <= S0;
        case (state_r)
        S0:     begin 
                
                nextstate_r[0] = PWM_out;  
                nextstate_r <= S1;
                end
                
        S1:     begin 
                
                nextstate_r[1] = PWM_out;  
                nextstate_r <= S2;
                end
                
        S2:     begin 
                
                nextstate_r[2] = PWM_out;  
                nextstate_r <= S3;
                end
                
        S3:     begin 
                
                nextstate_r[3] = PWM_out;  
                nextstate_r <= S0;
                end
                                    
        default: nextstate_r <= S0;
        endcase
        end else if (~sw[0] && ~sw[1] && ~sw[2]) begin   // hazard signal
        nextstate_l <= 0;
        nextstate_r <= 0;
        end

endmodule