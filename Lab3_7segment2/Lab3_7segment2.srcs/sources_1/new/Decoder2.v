module Decoder2( s, D);
    input[3:0] s;
    output reg [6:0] D;
//    output Y;
    
//    assign Y = s[4];
 
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