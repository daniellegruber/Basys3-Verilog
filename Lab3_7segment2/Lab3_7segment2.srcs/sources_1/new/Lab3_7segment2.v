module Adder_Full( a, b, ci, s, cout );
    input wire a, b, ci;
    output wire s, cout;
    
    assign s = ci ^ (a ^ b);
    assign cout = (ci & (a ^ b)) | (a & b);
    
endmodule

module Adder_4bit( a, b,s);
    input wire [3:0] a, b;
    output wire [4:0] s;
    
    wire c1, c2, c3;
    
    Adder_Full fa0( a[0], b[0], 0, s[0], c1);
    Adder_Full fa1( a[1], b[1], c1, s[1], c2);
    Adder_Full fa2( a[2], b[2], c2, s[2], c3);
    Adder_Full fa3( a[3], b[3], c3, s[3], s[4]);
    
endmodule

module Lab3_7segment2(a, b, D, Y);

input [3:0] a, b;
wire [4:0] s;
output wire [6:0] D;
output Y;

wire [3:0] AN;
assign AN[3:0] = 0;

 Adder_4bit f0( a, b, s);
 Decoder f1( s[3:0], D );
 assign Y = s[4];

endmodule

module Decoder( s, D );

    input wire [3:0] s;
    output reg [6:0] D;
    
//    Adder_4bit fa0( a, b, s ); 
    
//    assign D[0] = (s[3] & s[0] & (s[2] ^ s[1])) | (~s[3] & ~s[1] & (s[2] ^ s[0]));
//    assign D[1] = (~s[3] & s[2] & ~s[1] & s[0]) | (s[1] & s[0] & s[3]) | (s[1] & ~s[0] & s[2]);
//    assign D[2] = (s[3] & s[2] & (~s[0] | s[1])) | (~s[3] & ~s[2] & s[1] & ~s[0]);
//    assign D[3] = (~s[3] & ~s[1] & ~(s[0] ^ s[2])) | (s[3] & ~s[2] & s[1] & ~s[0]) | (s[1] & s[0] & s[2]);
//    assign D[4] = (~s[3] & s[2] & ~s[1]) | s[0] & (~s[3] | (~s[2] & ~s[1]));
//    assign D[5] = (~s[3] & ~s[2] & (s[1] | s[0])) | (s[0] & s[1] & ~s[3]) | (s[3] & s[2] & ~s[1] & s[0]);
//    assign D[6] = (~s[3] & s[0] & ~(s[2] ^ s[1])) | (s[3] & s[2] & ~s[1] & ~s[0]);

    always @ ( * )                  // * is short for all signals
        case (s)                   // case statement 
        //4'd0: D = 7'b000_0001;
        4'd0: D = 7'b100_0000;  // when data is 0
        4'd1: D = 7'b111_1001;  // when data is 1 
        4'd2: D = 7'b010_0100;
        4'd3: D = 7'b011_0000;
        4'd4: D = 7'b001_1001;
        4'd5: D = 7'b001_0010;
        4'd6: D = 7'b000_0010;
        4'd7: D = 7'b111_1000;
        4'd8: D = 7'b000_0000;
        4'd9: D = 7'b001_0000;
        4'd10: D = 7'b000_1000;
        4'd11: D = 7'b000_0011;
        4'd12: D = 7'b100_0110;
        4'd13: D = 7'b010_0001;
        4'd14: D = 7'b000_0110;
        4'd15: D = 7'b000_1110;
        // etc etc
        default: D = 7'b000_0000; // required
    endcase

endmodule