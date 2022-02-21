module MUX( a, s, Y );

    // input wire [3:0] a;
    // input wire [1:0] s;
    input [3:0] a;
    input [1:0] s;
    output Y;
    
    assign Y = (!s[0] & !s[1] & a[0]) + (!s[0] & s[1] & a[1]) + (s[0] & !s[1] & a[2]) + (s[0] & s[1] & a[3]);

endmodule
