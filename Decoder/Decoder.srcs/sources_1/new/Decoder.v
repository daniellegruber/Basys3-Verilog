module Decoder( a, b, s );
    input a, b;
    output [3:0] s;
    
    assign s[0] = !a & !b;
    assign s[1] = !a & b;
    assign s[2] = a & !b;
    assign s[3] = a & b;
    
endmodule

