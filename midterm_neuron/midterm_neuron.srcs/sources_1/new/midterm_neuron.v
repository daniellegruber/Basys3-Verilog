`timescale 1ns / 1ps

//You can re-use modules from your previous labs for the mid-term practical.
//We have given a template for reference. You need to fill in the correct input, output,wire initializations and ...(contd.)
//(contd.)... write the function for each module, and accordingly instantiate the top module with the correct variables.
//clk_neuron_w denotes a wire from your clock generator module.
// reset_w denotes a wire from your Digital Comparator module.


module Decoder( clk_neuron_w, acc, D );

    input clk_neuron_w;
    input wire [2:0] acc;
    output reg [6:0] D;

    always @ ( posedge clk_neuron_w )                  // * is short for all signals
        case (acc)                   // case statement 

        4'd0: D = 7'b100_0000;  // when data is 0
        4'd1: D = 7'b111_1001;  // when data is 1 
        4'd2: D = 7'b010_0100;
        4'd3: D = 7'b011_0000;
        4'd4: D = 7'b001_1001;
        4'd5: D = 7'b001_0010;
        4'd6: D = 7'b000_0010;
        4'd7: D = 7'b111_1000;
//        4'd8: D = 7'b000_0000;
//        4'd9: D = 7'b001_0000;
//        4'd10: D = 7'b000_1000;
//        4'd11: D = 7'b000_0011;
//        4'd12: D = 7'b100_0110;
//        4'd13: D = 7'b010_0001;
//        4'd14: D = 7'b000_0110;
//        4'd15: D = 7'b000_1110;
        // etc etc
        default: D = 7'b000_0000; // required
    endcase

endmodule

module Midterm_CLK( clk, clk_neuron_w );

input wire clk;                 // Input system clock (100MHz)
output wire clk_neuron_w;           // System clock slowed for tail light    
reg[25:0] count = 0;            // Counter used for slowing system clock
reg tmp_clk = 0;                // Registered clock inside always block
assign clk_neuron_w = tmp_clk;      // Wired clk_neuron_w assigned to registered tmp_clk

always @ ( posedge clk )  // Trigger on the positive edge of derived 100MHz buffered clock from 
begin
    if( count < 50000000 ) // The 100MHz clock is divided by 50MHz
    //if( count < 25000000 ) // The 100MHz clock is divided by 25MHz
        count <= count + 1;
    else
    begin
        tmp_clk <= ~tmp_clk; // tmp_clk is inverted every 500mS producing a 1S period or 1Hz
        count <= 0;
    end
end
    
endmodule    

module Midterm_Accumulator( sw, prev, clk_neuron_w, reset_w, acc );


//input [1:0] sw;
input [15:0] sw;
input [2:0] prev;
input clk_neuron_w;
input reset_w;
output reg [2:0] acc;
wire [2:0] I;

assign I = sw[2:0];

//clk_neuron_w denotes a wire from your clock generator module.
// reset_w denotes a wire from your Digital Comparator module.

//This is your accumulator that accumulates the input "I" with previous value
//write code here
    
    always @ (posedge clk_neuron_w or posedge reset_w)
    begin
        if (reset_w)
//            acc[2:0] = 0;
            acc[2:0] = 3'b000;
        else
            acc[2:0] = I + prev[2:0];
	   
 
    end 
       
endmodule

module Midterm_Reg( acc, prev, clk_neuron_w, reset_w );

input [2:0] acc;
//wire [2:0] acc;
output reg [2:0] prev;
input clk_neuron_w;
input reset_w;

//This is your register that stores the previous value of the accumulator
//write code here
     
    always @ ( negedge clk_neuron_w or posedge reset_w )
    begin
    
    if (reset_w)
        prev[2:0] = 3'b000; 
//        prev[2:0] = 0;
    else
        prev[2:0] = acc[2:0];

    end
    
endmodule


module Midterm_Threshold( acc, sw, T, clk_neuron_w, reset_w);

input [2:0] acc;
//input [15:13] sw;
input [15:0] sw;
input clk_neuron_w;
output reg T;
output reg reset_w;
wire [2:0] K;

assign K = sw[15:13];

//This is your digital comparator 
//write code here

always @ ( negedge clk_neuron_w )
begin
    
if (acc[2:0] > K) begin
    T = 1;
    reset_w = 1;
end else begin
    T = 0;
    reset_w = 0;
end

end


endmodule


module Midterm_Top( clk, sw, T, D );

    input [15:0] sw;
    wire [2:0] acc;
    wire [2:0] prev;
    input clk;
    wire clk_neuron_w;
    wire reset_w;
    output wire T;
    output wire [6:0] D;
   
  
    Midterm_Accumulator MTA( sw, prev, clk_neuron_w, reset_w, acc );
    Midterm_Reg MTR( acc, prev, clk_neuron_w, reset_w );
    Midterm_Threshold MTT( acc, sw, T, clk_neuron_w, reset_w);
    Midterm_CLK MTC( clk, clk_neuron_w );
    Decoder( clk_neuron_w, acc, D );
  
endmodule