module MUX1( a, s, y1 );

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
    

endmodule