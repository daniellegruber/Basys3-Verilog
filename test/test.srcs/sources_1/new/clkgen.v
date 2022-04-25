`timescale 1ns / 1ps
module clkgen( clk, clk_tail );
    input wire clk;                 // Input system clock (100MHz)
    output wire clk_tail;           // System clock slowed for tail light    
    reg[25:0] count = 0;            // Counter used for slowing system clock
    reg tmp_clk = 0;                // Registered clock inside always block
    assign clk_tail = tmp_clk;      // Wired clk_tail assigned to registered tmp_clk
    
    always @ ( posedge clk )  // Trigger on the positive edge of derived 100MHz buffered clock from 
    begin
        if( count < 25000000 ) // The 100MHz clock is divided by 25MHz
            count <= count + 1;
        else
        begin
            tmp_clk <= ~tmp_clk; // tmp_clk is inverted every 250mS producing a 500mS period or 2Hz
            count <= 0;
        end
    end
endmodule