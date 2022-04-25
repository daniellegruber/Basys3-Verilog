// Q 4.3
module xor4 (   input [3:0] a,
                output y );
            
    assign y = ^a;
endmodule

// Q 4.8
module mux8 (   input [2:0] s,
                input d0, d1, d2, d3, d4, d5, d6, d7,
                output y );
            
    assign y = s[2] ? ( s[1] ? ( s[0] ? d7:d6 ) : ( s[0] ? d5:d4 ) ) : 
                        ( s[1] ? ( s[0] ? d3:d2 ) : ( s[0] ? d1:d0 ) );
endmodule

// Q 4.13
module decoder24 ( input [1:0] a,
                    output [3:0] d );
                    
    assign d[0] = ~ a[1] & ~ a[0];
    assign d[1] = ~ a[1] & a[0];
    assign d[2] = a[1] & ~ a[0];
    assign d[3] = a[1] & a[0];

endmodule