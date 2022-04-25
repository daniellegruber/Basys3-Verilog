//// Idea: don't change FSM, just delay transitions

//module FSM( clk, sw, led );
//    input clk;
//    input [3:0] sw;
//    output wire [15:0] led;

//    // FSM states
//    parameter S0 = 4'b0000;
//    parameter S1 = 4'b0001;
//    parameter S2 = 4'b0011;
//    parameter S3 = 4'b0111;
//    parameter S4 = 4'b1111;
    
//    parameter MAX_BITS = 28; // to make slower (more gradual increase in intensity), make MAX_BITS higher
//                            // to make faster (more rapid increase in intensity), make MAX_BITS lower

    
//    reg [3:0] state_l, nextstate_l, state_r, nextstate_r;
//    reg [4:0] PWM;             
//    reg [MAX_BITS-1:0] cnt;                                                            
//    wire [3:0] intensity = cnt[MAX_BITS-1:MAX_BITS-4];    // ramp the intensity up and down   
//    reg transition = 0; 
//    integer led_idx;
//    reg [2:0] signal; // HLR
    
//    assign led[3:0] = state_r;
//    assign led[7:4] = state_l;
//    assign led[8] = PWM[4];
    
//    // instantiate clkgen module
//    clkgen clkgen_0( .clk( clk ), .clk_tail( clk_tail) );

//    always @(posedge clk) begin 
//    if ( intensity != 4'b1111) begin // if statement makes intensity variation stop when max intensity reached
//        cnt <= cnt+1;
//        transition <= 0;
//    end else begin
//        transition = 1; 
//        cnt = 0; 
//    end
        
//    PWM <= PWM[3:0] + intensity;
    
////    case (signal)
//////    3'b100: begin 
//////        state_l <= nextstate_l; 
//////        state_r <= nextstate_r;
//////    end
        
////    3'b010: begin 
////        state_l <= nextstate_l; 
////        state_l[led_idx] <= PWM[4];
////    end
    
////    3'b001: begin 
////        state_r <= nextstate_r; 
////        state_r[led_idx] <= PWM[4];
////    end
    
////    default: begin
//////        state_l <= S0; 
//////        state_r <= S0;
////        state_l <= nextstate_l; 
////        state_r <= nextstate_r;
////    end
    
////    endcase
    
//    state_l = nextstate_l; 
//    state_r = nextstate_r;
//    if (led_idx == 5)
//        state_l = S0; 
//    else
//        state_l[led_idx] = PWM[4];
//    end

//    always @ (posedge transition) // only latch data at posedge of "transition"
//    if (sw[2]) begin  
//        signal <= 3'b100; // hazard signal
//        nextstate_l = S0;
//        nextstate_r = S0;
//        case (state_l)
//            S0:      nextstate_l <= S4;
//            S4:      nextstate_l <= S0;
//        default: nextstate_l <= S0;
//        endcase
//        case (state_r)
//            S0:      nextstate_r <= S4;
//            S4:      nextstate_r <= S0;
//        default: nextstate_r <= S0;
//        endcase
//    end else if (sw[1]) begin
//        signal <= 3'b010; // left signal
//        nextstate_r <= S0;
//        case (state_l)
//        S0:     begin 

//                nextstate_l <= S1; 
//                led_idx <= 0;
                
//                end
                
//        S1:     begin 
                
//                nextstate_l <= S2; 
//                led_idx <= 1;
                
//                end
                
//        S2:     begin 

//                nextstate_l <= S3;
//                led_idx <= 2;
                
//                end
                
//        S3:     begin 
                
//                nextstate_l <= S4; 
//                led_idx <= 3;
                
//                end
//        S4:     begin 
                                
//                nextstate_l <= S0;
//                led_idx <= 5;
                
//                end
                            
//        default: nextstate_l <= S0;
//        endcase
//    end else if (sw[0]) begin 
//        signal <= 3'b001; // right signal
//        nextstate_l <= S0;
//        case (state_r)
//        S0:     begin 
        
//                nextstate_r <= S1; 
//                led_idx <= 0;
                
//                end
                
//        S1:     begin 
                
//                nextstate_r <= S2; 
//                led_idx <= 1;
                
//                end
                
//        S2:     begin 
        
//                nextstate_r <= S3;
//                led_idx <= 2;
                
//                end
                
//        S3:     begin 
                
//                nextstate_r <= S4; 
//                led_idx <= 3;
                
//                end
//        S4:     begin 
                                
//                nextstate_r <= S0;
                
//                end
                            
//        default: nextstate_r <= S0;
//        endcase
//        end else if (~sw[0] && ~sw[1] && ~sw[2]) begin   // hazard signal
//        signal <= 3'b001; // no signal
//        nextstate_l <= 0;
//        nextstate_r <= 0;
//        end

//endmodule