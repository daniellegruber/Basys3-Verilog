module Adder_Full( a, b, ci, s, cout );
    input wire a, b, ci;
    output wire s, cout;
    
    assign s = ci ^ (a ^ b);
    assign cout = (ci & (a ^ b)) | (a & b);
    
endmodule

module Adder_4bit( a, b, s);
    input wire [3:0] a, b;
    output wire [4:0] s;
    
    wire c1, c2, c3;
    
    Adder_Full fa0( a[0], b[0], 0, s[0], c1);
    Adder_Full fa1( a[1], b[1], c1, s[1], c2);
    Adder_Full fa2( a[2], b[2], c2, s[2], c3);
    Adder_Full fa3( a[3], b[3], c3, s[3], s[4]);
    
endmodule

module Decoder( a, b, s, D );
    input wire [3:0] a, b;
    input wire [4:0] s;
    output [6:0] D;
    
    Adder_4bit fa0( a, b, s ); 
    
    assign D[0] = (s[3] & s[0] & (s[2] ^ s[1])) + (!s[3] & !s[1] & (s[2] ^ s[0]));
    assign D[1] = (!s[3] & s[2] & !s[1] & s[0]) + (s[1] & s[0] & s[3]) + (s[1] & !s[0] & s[2]);
    assign D[2] = (s[3] & s[2] & (!s[0] + s[1])) + (!s[3] & !s[2] & s[1] & !s[0]);
    assign D[3] = (!s[3] & !s[1] & !(s[0] ^ s[2])) + (s[3] & !s[2] & s[1] & !s[0]) + (s[1] & s[0] & s[2]);
    assign D[4] = (!s[3] & s[2] & !s[1]) + s[0] & (!s[3] + (!s[2] & !s[1]));
    assign D[5] = (!s[3] & !s[2] & (s[1] + s[0])) + (s[0] & s[1] & !s[3]) + (s[3] & s[2] & !s[1] & s[0]);
    assign D[6] = (!s[3] & s[0] & !(s[2] ^ s[1])) + (s[3] & s[2] & !s[1] & !s[0]);

    
endmodule