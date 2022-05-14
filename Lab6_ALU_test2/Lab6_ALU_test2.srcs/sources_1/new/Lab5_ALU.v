// Multiplexers
module mux41(i0, i1, i2, i3, S, y);
    input [31:0] i0, i1, i2, i3;
    input [1:0] S;
    output [31:0] y;
    
    // This shows that if s1 is high, the (s0 ? d : c) block will be executed, 
    // else (s0 ? b : a) will be executed. 
    // If s0 is high, d OR b will get passed to the out variable, depending on the s1 select line, 
    // else c OR a will be the output.
    assign y = S[1]? ( S[0]? i3:i2 ) : ( S[0]? i1:i0 );
    
endmodule

module mux21( i0, i1, S, y );

    input[31:0] i0, i1;
    input S;
    output [31:0] y;
    assign y = S? i1:i0;
    
endmodule


// 32-bit adder
module adder32( a, b, cin, y);
input [31:0] a, b;
input cin;
//output overflow;
output [31:0] y;
assign y = a + b + cin;
//assign overflow = ~(a[31]^b[31])^y[31];
endmodule
//module adder32( a, b, y );
//input [31:0] a, b;
//output [31:0] y;
//assign y = a + b;
//endmodule

// 32-bit and
module and32( a, b, y );

    input [31:0] a;
    input [31:0] b;
    output [31:0] y;
    assign y = a & b;
    
endmodule

// 32-bit or
module or32( a, b, y );

    input [31:0] a, b;
    output [31:0] y;
    assign y = a | b;

endmodule

// 32 bit xor
module xor32( a, b, y );

    input [31:0] a;
    input [31:0] b;
    output [31:0] y;
    assign y = a ^ b;
    
endmodule

// 32-bit nor
module nor32( a, b, y );

    input [31:0] a, b;
    output [31:0] y;
    assign y = ~(a | b);
    
endmodule

module SignExtend( a, y );

//input [31:0] a;
//output [31:0] y; 

//assign y = { 31'd0, a[31] };
input a;
output [31:0] y; 

assign y = { 31'd0, a };

endmodule

// Arithmetic unit
module arith(a, b, S, MUX_out2);
    input [31:0] a, b;
    input [1:0] S;
    output [31:0] MUX_out2;
    wire [31:0] MUX_out1, AddOut, ext;
    
    mux21 f1( b, ~b, S[0], MUX_out1 );
    adder32 f2( a, MUX_out1, S[0], AddOut); // if subtraction, let cin = 1 for 2's complement
//    adder32 f2( a, MUX_out1, AddOut ); 
    SignExtend f3( AddOut[31], ext );

//    SignExtend f3( overflow? (~AddOut[31]):(AddOut[31]), ext );
    mux21 f4( AddOut, ext, S[1], MUX_out2 );
    
endmodule


// Logic unit
module logic(a, b, S, MUX_out);
    input [31:0] a, b;
    input [1:0] S;
    output [31:0] MUX_out;
    wire [31:0] w1, w2, w3, w4;
    
    and32 f0 (a, b, w1);
    or32 f1 (a, b, w2);
    xor32 f2 (a, b, w3);
    nor32 f3 (a, b, w4);
    
    mux41 f4 (w1, w2, w3, w4, S, MUX_out);
    
endmodule

module Lab5_ALU(a, b, AluOp, Y, zero);

    input [31:0] a, b;
    input [3:0] AluOp;
    output [31:0] Y;
    output zero;
    wire [31:0] MUX_out1, MUX_out2;
    
    arith f0(a, b, {AluOp[3], AluOp[1]}, MUX_out1);
    logic f1(a, b, AluOp[1:0], MUX_out2);
    mux21 f2(MUX_out1, MUX_out2, AluOp[2], Y);
    
    assign zero = ~ ( & Y ) ;
    
endmodule