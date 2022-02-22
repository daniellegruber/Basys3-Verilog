module MUX( a, s, Y );

<<<<<<< HEAD
    input wire [1:0] a;
    input s;
    output y1;
    
    assign y1 = s & a[1] | ~s & a[0];

endmodule


module MUX2( a, s, Y);

    input wire [1:0] s;
    input wire[3:0] a;
    output Y;
    
    wire y1;
    wire y2;
    MUX1 f1( a[1:0], s[1], y1);
    MUX1 f2( a[3:2], s[1], y2);
    MUX1 f3( {y2, y1}, s[0], Y);
    
=======
    // input wire [3:0] a;
    // input wire [1:0] s;
    input [3:0] a;
    input [1:0] s;
    output Y;
    
    assign Y = (!s[0] & !s[1] & a[0]) + (!s[0] & s[1] & a[1]) + (s[0] & !s[1] & a[2]) + (s[0] & s[1] & a[3]);
>>>>>>> 9cdb202b445d71ce2b90bcb1afc18a481d5d0d5c

endmodule
