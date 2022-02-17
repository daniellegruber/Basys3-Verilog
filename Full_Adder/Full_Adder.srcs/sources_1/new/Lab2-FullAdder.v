module Adder_Full( a, b, ci, s, cout );
    input a, b, ci;
    output s, cout;
    
    assign s = ci ^ (a ^ b);
    assign cout = (ci & (a ^ b)) | (a & b);
    
endmodule