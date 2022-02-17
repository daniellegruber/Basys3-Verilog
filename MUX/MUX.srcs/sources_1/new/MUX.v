module MUX( a, b, s );

    input a, b;
    output s;
    
    assign s = (!s & a) | (s & b);

endmodule
