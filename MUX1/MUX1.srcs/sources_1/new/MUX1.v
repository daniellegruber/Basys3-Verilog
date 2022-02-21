module MUX1( a, s, Y );

    input wire [1:0] a;
    input s;
    output Y;
    
    assign Y = s & a[1] | ~s & a[0];

endmodule