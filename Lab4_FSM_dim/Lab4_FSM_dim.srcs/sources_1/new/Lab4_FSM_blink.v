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
    
    parameter PWM_input = 4'b0001;
    reg [3:0] PWM; // internal accumulator
    
    reg [3:0] state_l, state_l, nextstate_l, state_r, state_r, nextstate_r;
    reg high_or_low = 1'b1;
        
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
    end else if (sw[0]) begin   // left signal
        case (state_l)
            S0:     begin 
                    count1 <= 0;
                    
                    if (count1 < 2500000) begin
                        {state_l[0], PWM} <= PWM + PWM_input;
                        count1 <= count1 + 1; 
                    end
                        
                    nextstate_l <= S1;
                    end
                    
            S1:     begin 
                    count1 <= 0;
                                
                    if (count1 < 2500000) begin
                        {state_l[1], PWM} <= PWM + PWM_input;
                        count1 <= count1 + 1; 
                    end
                        
                    nextstate_l <= S2;
                    end
                    
            S2:     begin 
                    count1 <= 0;
                                
                    if (count1 < 2500000) begin
                        {state_l[2], PWM} <= PWM + PWM_input;
                        count1 <= count1 + 1; 
                    end
                        
                    nextstate_l <= S3;
                    end
                    
            S3:     begin 
                    count1 <= 0;
                                
                    if (count1 < 2500000) begin
                        {state_l[3], PWM} <= PWM + PWM_input;
                        count1 <= count1 + 1; 
                    end
                        
                    nextstate_l <= S0;
                    end
                                
            //default: nextstate_l = S0;
        endcase
    end else if (sw[1]) begin   // hazard signal
        case (state_r)
            S0:     begin 
                    count1 <= 0;
                    
                    if (count1 < 2500000) begin
                        {state_r[0], PWM} <= PWM + PWM_input;
                        count1 <= count1 + 1; 
                    end
                        
                    nextstate_r <= S1;
                    end
                    
            S1:     begin 
                    count1 <= 0;
                                
                    if (count1 < 2500000) begin
                        {state_r[1], PWM} <= PWM + PWM_input;
                        count1 <= count1 + 1; 
                    end
                        
                    nextstate_r <= S2;
                    end
                    
            S2:     begin 
                    count1 <= 0;
                                
                    if (count1 < 2500000) begin
                        {state_r[2], PWM} <= PWM + PWM_input;
                        count1 <= count1 + 1; 
                    end
                        
                    nextstate_l <= S3;
                    end
                    
            S3:     begin 
                    count1 <= 0;
                                
                    if (count1 < 2500000) begin
                        {state_r[3], PWM} <= PWM + PWM_input;
                        count1 <= count1 + 1; 
                    end
                        
                    nextstate_r <= S0;
                    end
                                        
                    //default: nextstate_l = S0;
        endcase
    end

endmodule