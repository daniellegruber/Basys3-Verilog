// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Sat Apr  9 19:45:13 2022
// Host        : DESKTOP-B8HCSQT running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/Users/danie/OneDrive/Documents/Basys3-Verilog/Lab5_ALU/Lab5_ALU.sim/sim_1/impl/timing/xsim/alu32_time_impl.v
// Design      : alu32
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module adder32
   (O,
    a,
    S,
    \AluOp[1] ,
    \AluOp[1]_0 ,
    \AluOp[1]_1 ,
    \AluOp[1]_2 ,
    \AluOp[1]_3 ,
    \AluOp[1]_4 ,
    \AluOp[1]_5 );
  output [0:0]O;
  input [30:0]a;
  input [3:0]S;
  input [3:0]\AluOp[1] ;
  input [3:0]\AluOp[1]_0 ;
  input [3:0]\AluOp[1]_1 ;
  input [3:0]\AluOp[1]_2 ;
  input [3:0]\AluOp[1]_3 ;
  input [3:0]\AluOp[1]_4 ;
  input [3:0]\AluOp[1]_5 ;

  wire [3:0]\AluOp[1] ;
  wire [3:0]\AluOp[1]_0 ;
  wire [3:0]\AluOp[1]_1 ;
  wire [3:0]\AluOp[1]_2 ;
  wire [3:0]\AluOp[1]_3 ;
  wire [3:0]\AluOp[1]_4 ;
  wire [3:0]\AluOp[1]_5 ;
  wire [0:0]O;
  wire [3:0]S;
  wire [30:0]a;
  wire y_carry__0_n_0;
  wire y_carry__1_n_0;
  wire y_carry__2_n_0;
  wire y_carry__3_n_0;
  wire y_carry__4_n_0;
  wire y_carry__5_n_0;
  wire y_carry_n_0;
  wire [2:0]NLW_y_carry_CO_UNCONNECTED;
  wire [3:0]NLW_y_carry_O_UNCONNECTED;
  wire [2:0]NLW_y_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_y_carry__0_O_UNCONNECTED;
  wire [2:0]NLW_y_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_y_carry__1_O_UNCONNECTED;
  wire [2:0]NLW_y_carry__2_CO_UNCONNECTED;
  wire [3:0]NLW_y_carry__2_O_UNCONNECTED;
  wire [2:0]NLW_y_carry__3_CO_UNCONNECTED;
  wire [3:0]NLW_y_carry__3_O_UNCONNECTED;
  wire [2:0]NLW_y_carry__4_CO_UNCONNECTED;
  wire [3:0]NLW_y_carry__4_O_UNCONNECTED;
  wire [2:0]NLW_y_carry__5_CO_UNCONNECTED;
  wire [3:0]NLW_y_carry__5_O_UNCONNECTED;
  wire [3:0]NLW_y_carry__6_CO_UNCONNECTED;
  wire [2:0]NLW_y_carry__6_O_UNCONNECTED;

  CARRY4 y_carry
       (.CI(1'b0),
        .CO({y_carry_n_0,NLW_y_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(a[3:0]),
        .O(NLW_y_carry_O_UNCONNECTED[3:0]),
        .S(S));
  CARRY4 y_carry__0
       (.CI(y_carry_n_0),
        .CO({y_carry__0_n_0,NLW_y_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(a[7:4]),
        .O(NLW_y_carry__0_O_UNCONNECTED[3:0]),
        .S(\AluOp[1] ));
  CARRY4 y_carry__1
       (.CI(y_carry__0_n_0),
        .CO({y_carry__1_n_0,NLW_y_carry__1_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(a[11:8]),
        .O(NLW_y_carry__1_O_UNCONNECTED[3:0]),
        .S(\AluOp[1]_0 ));
  CARRY4 y_carry__2
       (.CI(y_carry__1_n_0),
        .CO({y_carry__2_n_0,NLW_y_carry__2_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(a[15:12]),
        .O(NLW_y_carry__2_O_UNCONNECTED[3:0]),
        .S(\AluOp[1]_1 ));
  CARRY4 y_carry__3
       (.CI(y_carry__2_n_0),
        .CO({y_carry__3_n_0,NLW_y_carry__3_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(a[19:16]),
        .O(NLW_y_carry__3_O_UNCONNECTED[3:0]),
        .S(\AluOp[1]_2 ));
  CARRY4 y_carry__4
       (.CI(y_carry__3_n_0),
        .CO({y_carry__4_n_0,NLW_y_carry__4_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(a[23:20]),
        .O(NLW_y_carry__4_O_UNCONNECTED[3:0]),
        .S(\AluOp[1]_3 ));
  CARRY4 y_carry__5
       (.CI(y_carry__4_n_0),
        .CO({y_carry__5_n_0,NLW_y_carry__5_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(a[27:24]),
        .O(NLW_y_carry__5_O_UNCONNECTED[3:0]),
        .S(\AluOp[1]_4 ));
  CARRY4 y_carry__6
       (.CI(y_carry__5_n_0),
        .CO(NLW_y_carry__6_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,a[30:28]}),
        .O({O,NLW_y_carry__6_O_UNCONNECTED[2:0]}),
        .S(\AluOp[1]_5 ));
endmodule

(* ECO_CHECKSUM = "4c22e0d" *) 
(* NotValidForBitStream *)
module alu32
   (a,
    b,
    AluOp,
    Y);
  input [31:0]a;
  input [31:0]b;
  input [2:0]AluOp;
  output [31:0]Y;

  wire [2:0]AluOp;
  wire [2:0]AluOp_IBUF;
  wire [31:0]Y;
  wire [31:0]Y_OBUF;
  wire [31:0]a;
  wire [31:0]a_IBUF;
  wire [31:0]b;
  wire [31:0]b_IBUF;
  wire f2_n_0;
  wire f2_n_1;
  wire f2_n_10;
  wire f2_n_11;
  wire f2_n_12;
  wire f2_n_13;
  wire f2_n_14;
  wire f2_n_15;
  wire f2_n_16;
  wire f2_n_17;
  wire f2_n_18;
  wire f2_n_19;
  wire f2_n_2;
  wire f2_n_20;
  wire f2_n_21;
  wire f2_n_22;
  wire f2_n_23;
  wire f2_n_24;
  wire f2_n_25;
  wire f2_n_26;
  wire f2_n_27;
  wire f2_n_28;
  wire f2_n_29;
  wire f2_n_3;
  wire f2_n_30;
  wire f2_n_31;
  wire f2_n_4;
  wire f2_n_5;
  wire f2_n_6;
  wire f2_n_7;
  wire f2_n_8;
  wire f2_n_9;
  wire [31:31]i1;

initial begin
 $sdf_annotate("alu32_time_impl.sdf",,,,"tool_control");
end
  IBUF \AluOp_IBUF[0]_inst 
       (.I(AluOp[0]),
        .O(AluOp_IBUF[0]));
  IBUF \AluOp_IBUF[1]_inst 
       (.I(AluOp[1]),
        .O(AluOp_IBUF[1]));
  IBUF \AluOp_IBUF[2]_inst 
       (.I(AluOp[2]),
        .O(AluOp_IBUF[2]));
  OBUF \Y_OBUF[0]_inst 
       (.I(Y_OBUF[0]),
        .O(Y[0]));
  OBUF \Y_OBUF[10]_inst 
       (.I(Y_OBUF[10]),
        .O(Y[10]));
  OBUF \Y_OBUF[11]_inst 
       (.I(Y_OBUF[11]),
        .O(Y[11]));
  OBUF \Y_OBUF[12]_inst 
       (.I(Y_OBUF[12]),
        .O(Y[12]));
  OBUF \Y_OBUF[13]_inst 
       (.I(Y_OBUF[13]),
        .O(Y[13]));
  OBUF \Y_OBUF[14]_inst 
       (.I(Y_OBUF[14]),
        .O(Y[14]));
  OBUF \Y_OBUF[15]_inst 
       (.I(Y_OBUF[15]),
        .O(Y[15]));
  OBUF \Y_OBUF[16]_inst 
       (.I(Y_OBUF[16]),
        .O(Y[16]));
  OBUF \Y_OBUF[17]_inst 
       (.I(Y_OBUF[17]),
        .O(Y[17]));
  OBUF \Y_OBUF[18]_inst 
       (.I(Y_OBUF[18]),
        .O(Y[18]));
  OBUF \Y_OBUF[19]_inst 
       (.I(Y_OBUF[19]),
        .O(Y[19]));
  OBUF \Y_OBUF[1]_inst 
       (.I(Y_OBUF[1]),
        .O(Y[1]));
  OBUF \Y_OBUF[20]_inst 
       (.I(Y_OBUF[20]),
        .O(Y[20]));
  OBUF \Y_OBUF[21]_inst 
       (.I(Y_OBUF[21]),
        .O(Y[21]));
  OBUF \Y_OBUF[22]_inst 
       (.I(Y_OBUF[22]),
        .O(Y[22]));
  OBUF \Y_OBUF[23]_inst 
       (.I(Y_OBUF[23]),
        .O(Y[23]));
  OBUF \Y_OBUF[24]_inst 
       (.I(Y_OBUF[24]),
        .O(Y[24]));
  OBUF \Y_OBUF[25]_inst 
       (.I(Y_OBUF[25]),
        .O(Y[25]));
  OBUF \Y_OBUF[26]_inst 
       (.I(Y_OBUF[26]),
        .O(Y[26]));
  OBUF \Y_OBUF[27]_inst 
       (.I(Y_OBUF[27]),
        .O(Y[27]));
  OBUF \Y_OBUF[28]_inst 
       (.I(Y_OBUF[28]),
        .O(Y[28]));
  OBUF \Y_OBUF[29]_inst 
       (.I(Y_OBUF[29]),
        .O(Y[29]));
  OBUF \Y_OBUF[2]_inst 
       (.I(Y_OBUF[2]),
        .O(Y[2]));
  OBUF \Y_OBUF[30]_inst 
       (.I(Y_OBUF[30]),
        .O(Y[30]));
  OBUF \Y_OBUF[31]_inst 
       (.I(Y_OBUF[31]),
        .O(Y[31]));
  OBUF \Y_OBUF[3]_inst 
       (.I(Y_OBUF[3]),
        .O(Y[3]));
  OBUF \Y_OBUF[4]_inst 
       (.I(Y_OBUF[4]),
        .O(Y[4]));
  OBUF \Y_OBUF[5]_inst 
       (.I(Y_OBUF[5]),
        .O(Y[5]));
  OBUF \Y_OBUF[6]_inst 
       (.I(Y_OBUF[6]),
        .O(Y[6]));
  OBUF \Y_OBUF[7]_inst 
       (.I(Y_OBUF[7]),
        .O(Y[7]));
  OBUF \Y_OBUF[8]_inst 
       (.I(Y_OBUF[8]),
        .O(Y[8]));
  OBUF \Y_OBUF[9]_inst 
       (.I(Y_OBUF[9]),
        .O(Y[9]));
  IBUF \a_IBUF[0]_inst 
       (.I(a[0]),
        .O(a_IBUF[0]));
  IBUF \a_IBUF[10]_inst 
       (.I(a[10]),
        .O(a_IBUF[10]));
  IBUF \a_IBUF[11]_inst 
       (.I(a[11]),
        .O(a_IBUF[11]));
  IBUF \a_IBUF[12]_inst 
       (.I(a[12]),
        .O(a_IBUF[12]));
  IBUF \a_IBUF[13]_inst 
       (.I(a[13]),
        .O(a_IBUF[13]));
  IBUF \a_IBUF[14]_inst 
       (.I(a[14]),
        .O(a_IBUF[14]));
  IBUF \a_IBUF[15]_inst 
       (.I(a[15]),
        .O(a_IBUF[15]));
  IBUF \a_IBUF[16]_inst 
       (.I(a[16]),
        .O(a_IBUF[16]));
  IBUF \a_IBUF[17]_inst 
       (.I(a[17]),
        .O(a_IBUF[17]));
  IBUF \a_IBUF[18]_inst 
       (.I(a[18]),
        .O(a_IBUF[18]));
  IBUF \a_IBUF[19]_inst 
       (.I(a[19]),
        .O(a_IBUF[19]));
  IBUF \a_IBUF[1]_inst 
       (.I(a[1]),
        .O(a_IBUF[1]));
  IBUF \a_IBUF[20]_inst 
       (.I(a[20]),
        .O(a_IBUF[20]));
  IBUF \a_IBUF[21]_inst 
       (.I(a[21]),
        .O(a_IBUF[21]));
  IBUF \a_IBUF[22]_inst 
       (.I(a[22]),
        .O(a_IBUF[22]));
  IBUF \a_IBUF[23]_inst 
       (.I(a[23]),
        .O(a_IBUF[23]));
  IBUF \a_IBUF[24]_inst 
       (.I(a[24]),
        .O(a_IBUF[24]));
  IBUF \a_IBUF[25]_inst 
       (.I(a[25]),
        .O(a_IBUF[25]));
  IBUF \a_IBUF[26]_inst 
       (.I(a[26]),
        .O(a_IBUF[26]));
  IBUF \a_IBUF[27]_inst 
       (.I(a[27]),
        .O(a_IBUF[27]));
  IBUF \a_IBUF[28]_inst 
       (.I(a[28]),
        .O(a_IBUF[28]));
  IBUF \a_IBUF[29]_inst 
       (.I(a[29]),
        .O(a_IBUF[29]));
  IBUF \a_IBUF[2]_inst 
       (.I(a[2]),
        .O(a_IBUF[2]));
  IBUF \a_IBUF[30]_inst 
       (.I(a[30]),
        .O(a_IBUF[30]));
  IBUF \a_IBUF[31]_inst 
       (.I(a[31]),
        .O(a_IBUF[31]));
  IBUF \a_IBUF[3]_inst 
       (.I(a[3]),
        .O(a_IBUF[3]));
  IBUF \a_IBUF[4]_inst 
       (.I(a[4]),
        .O(a_IBUF[4]));
  IBUF \a_IBUF[5]_inst 
       (.I(a[5]),
        .O(a_IBUF[5]));
  IBUF \a_IBUF[6]_inst 
       (.I(a[6]),
        .O(a_IBUF[6]));
  IBUF \a_IBUF[7]_inst 
       (.I(a[7]),
        .O(a_IBUF[7]));
  IBUF \a_IBUF[8]_inst 
       (.I(a[8]),
        .O(a_IBUF[8]));
  IBUF \a_IBUF[9]_inst 
       (.I(a[9]),
        .O(a_IBUF[9]));
  IBUF \b_IBUF[0]_inst 
       (.I(b[0]),
        .O(b_IBUF[0]));
  IBUF \b_IBUF[10]_inst 
       (.I(b[10]),
        .O(b_IBUF[10]));
  IBUF \b_IBUF[11]_inst 
       (.I(b[11]),
        .O(b_IBUF[11]));
  IBUF \b_IBUF[12]_inst 
       (.I(b[12]),
        .O(b_IBUF[12]));
  IBUF \b_IBUF[13]_inst 
       (.I(b[13]),
        .O(b_IBUF[13]));
  IBUF \b_IBUF[14]_inst 
       (.I(b[14]),
        .O(b_IBUF[14]));
  IBUF \b_IBUF[15]_inst 
       (.I(b[15]),
        .O(b_IBUF[15]));
  IBUF \b_IBUF[16]_inst 
       (.I(b[16]),
        .O(b_IBUF[16]));
  IBUF \b_IBUF[17]_inst 
       (.I(b[17]),
        .O(b_IBUF[17]));
  IBUF \b_IBUF[18]_inst 
       (.I(b[18]),
        .O(b_IBUF[18]));
  IBUF \b_IBUF[19]_inst 
       (.I(b[19]),
        .O(b_IBUF[19]));
  IBUF \b_IBUF[1]_inst 
       (.I(b[1]),
        .O(b_IBUF[1]));
  IBUF \b_IBUF[20]_inst 
       (.I(b[20]),
        .O(b_IBUF[20]));
  IBUF \b_IBUF[21]_inst 
       (.I(b[21]),
        .O(b_IBUF[21]));
  IBUF \b_IBUF[22]_inst 
       (.I(b[22]),
        .O(b_IBUF[22]));
  IBUF \b_IBUF[23]_inst 
       (.I(b[23]),
        .O(b_IBUF[23]));
  IBUF \b_IBUF[24]_inst 
       (.I(b[24]),
        .O(b_IBUF[24]));
  IBUF \b_IBUF[25]_inst 
       (.I(b[25]),
        .O(b_IBUF[25]));
  IBUF \b_IBUF[26]_inst 
       (.I(b[26]),
        .O(b_IBUF[26]));
  IBUF \b_IBUF[27]_inst 
       (.I(b[27]),
        .O(b_IBUF[27]));
  IBUF \b_IBUF[28]_inst 
       (.I(b[28]),
        .O(b_IBUF[28]));
  IBUF \b_IBUF[29]_inst 
       (.I(b[29]),
        .O(b_IBUF[29]));
  IBUF \b_IBUF[2]_inst 
       (.I(b[2]),
        .O(b_IBUF[2]));
  IBUF \b_IBUF[30]_inst 
       (.I(b[30]),
        .O(b_IBUF[30]));
  IBUF \b_IBUF[31]_inst 
       (.I(b[31]),
        .O(b_IBUF[31]));
  IBUF \b_IBUF[3]_inst 
       (.I(b[3]),
        .O(b_IBUF[3]));
  IBUF \b_IBUF[4]_inst 
       (.I(b[4]),
        .O(b_IBUF[4]));
  IBUF \b_IBUF[5]_inst 
       (.I(b[5]),
        .O(b_IBUF[5]));
  IBUF \b_IBUF[6]_inst 
       (.I(b[6]),
        .O(b_IBUF[6]));
  IBUF \b_IBUF[7]_inst 
       (.I(b[7]),
        .O(b_IBUF[7]));
  IBUF \b_IBUF[8]_inst 
       (.I(b[8]),
        .O(b_IBUF[8]));
  IBUF \b_IBUF[9]_inst 
       (.I(b[9]),
        .O(b_IBUF[9]));
  arith f0
       (.\AluOp[1] ({f2_n_4,f2_n_5,f2_n_6,f2_n_7}),
        .\AluOp[1]_0 ({f2_n_8,f2_n_9,f2_n_10,f2_n_11}),
        .\AluOp[1]_1 ({f2_n_12,f2_n_13,f2_n_14,f2_n_15}),
        .\AluOp[1]_2 ({f2_n_16,f2_n_17,f2_n_18,f2_n_19}),
        .\AluOp[1]_3 ({f2_n_20,f2_n_21,f2_n_22,f2_n_23}),
        .\AluOp[1]_4 ({f2_n_24,f2_n_25,f2_n_26,f2_n_27}),
        .\AluOp[1]_5 ({f2_n_28,f2_n_29,f2_n_30,f2_n_31}),
        .O(i1),
        .S({f2_n_0,f2_n_1,f2_n_2,f2_n_3}),
        .a(a_IBUF[30:0]));
  mux21 f2
       (.AluOp_IBUF(AluOp_IBUF),
        .O(i1),
        .S({f2_n_0,f2_n_1,f2_n_2,f2_n_3}),
        .\Y[0] ({f2_n_4,f2_n_5,f2_n_6,f2_n_7}),
        .\Y[0]_0 ({f2_n_8,f2_n_9,f2_n_10,f2_n_11}),
        .\Y[0]_1 ({f2_n_12,f2_n_13,f2_n_14,f2_n_15}),
        .\Y[0]_2 ({f2_n_16,f2_n_17,f2_n_18,f2_n_19}),
        .\Y[0]_3 ({f2_n_20,f2_n_21,f2_n_22,f2_n_23}),
        .\Y[0]_4 ({f2_n_24,f2_n_25,f2_n_26,f2_n_27}),
        .\Y[0]_5 ({f2_n_28,f2_n_29,f2_n_30,f2_n_31}),
        .Y_OBUF(Y_OBUF),
        .a_IBUF(a_IBUF),
        .b_IBUF(b_IBUF));
endmodule

module arith
   (O,
    a,
    S,
    \AluOp[1] ,
    \AluOp[1]_0 ,
    \AluOp[1]_1 ,
    \AluOp[1]_2 ,
    \AluOp[1]_3 ,
    \AluOp[1]_4 ,
    \AluOp[1]_5 );
  output [0:0]O;
  input [30:0]a;
  input [3:0]S;
  input [3:0]\AluOp[1] ;
  input [3:0]\AluOp[1]_0 ;
  input [3:0]\AluOp[1]_1 ;
  input [3:0]\AluOp[1]_2 ;
  input [3:0]\AluOp[1]_3 ;
  input [3:0]\AluOp[1]_4 ;
  input [3:0]\AluOp[1]_5 ;

  wire [3:0]\AluOp[1] ;
  wire [3:0]\AluOp[1]_0 ;
  wire [3:0]\AluOp[1]_1 ;
  wire [3:0]\AluOp[1]_2 ;
  wire [3:0]\AluOp[1]_3 ;
  wire [3:0]\AluOp[1]_4 ;
  wire [3:0]\AluOp[1]_5 ;
  wire [0:0]O;
  wire [3:0]S;
  wire [30:0]a;

  adder32 f2
       (.\AluOp[1] (\AluOp[1] ),
        .\AluOp[1]_0 (\AluOp[1]_0 ),
        .\AluOp[1]_1 (\AluOp[1]_1 ),
        .\AluOp[1]_2 (\AluOp[1]_2 ),
        .\AluOp[1]_3 (\AluOp[1]_3 ),
        .\AluOp[1]_4 (\AluOp[1]_4 ),
        .\AluOp[1]_5 (\AluOp[1]_5 ),
        .O(O),
        .S(S),
        .a(a));
endmodule

module mux21
   (S,
    \Y[0] ,
    \Y[0]_0 ,
    \Y[0]_1 ,
    \Y[0]_2 ,
    \Y[0]_3 ,
    \Y[0]_4 ,
    \Y[0]_5 ,
    Y_OBUF,
    a_IBUF,
    b_IBUF,
    AluOp_IBUF,
    O);
  output [3:0]S;
  output [3:0]\Y[0] ;
  output [3:0]\Y[0]_0 ;
  output [3:0]\Y[0]_1 ;
  output [3:0]\Y[0]_2 ;
  output [3:0]\Y[0]_3 ;
  output [3:0]\Y[0]_4 ;
  output [3:0]\Y[0]_5 ;
  output [31:0]Y_OBUF;
  input [31:0]a_IBUF;
  input [31:0]b_IBUF;
  input [2:0]AluOp_IBUF;
  input [0:0]O;

  wire [2:0]AluOp_IBUF;
  wire [0:0]O;
  wire [3:0]S;
  wire [3:0]\Y[0] ;
  wire [3:0]\Y[0]_0 ;
  wire [3:0]\Y[0]_1 ;
  wire [3:0]\Y[0]_2 ;
  wire [3:0]\Y[0]_3 ;
  wire [3:0]\Y[0]_4 ;
  wire [3:0]\Y[0]_5 ;
  wire [31:0]Y_OBUF;
  wire [31:0]a_IBUF;
  wire [31:0]b_IBUF;

  LUT6 #(
    .INIT(64'h1E68FFFF1E680000)) 
    \Y_OBUF[0]_inst_i_1 
       (.I0(b_IBUF[0]),
        .I1(a_IBUF[0]),
        .I2(AluOp_IBUF[1]),
        .I3(AluOp_IBUF[0]),
        .I4(AluOp_IBUF[2]),
        .I5(O),
        .O(Y_OBUF[0]));
  LUT5 #(
    .INIT(32'h0A282880)) 
    \Y_OBUF[10]_inst_i_1 
       (.I0(AluOp_IBUF[2]),
        .I1(AluOp_IBUF[0]),
        .I2(AluOp_IBUF[1]),
        .I3(a_IBUF[10]),
        .I4(b_IBUF[10]),
        .O(Y_OBUF[10]));
  LUT5 #(
    .INIT(32'h0A282880)) 
    \Y_OBUF[11]_inst_i_1 
       (.I0(AluOp_IBUF[2]),
        .I1(AluOp_IBUF[0]),
        .I2(AluOp_IBUF[1]),
        .I3(a_IBUF[11]),
        .I4(b_IBUF[11]),
        .O(Y_OBUF[11]));
  LUT5 #(
    .INIT(32'h0A282880)) 
    \Y_OBUF[12]_inst_i_1 
       (.I0(AluOp_IBUF[2]),
        .I1(AluOp_IBUF[0]),
        .I2(AluOp_IBUF[1]),
        .I3(a_IBUF[12]),
        .I4(b_IBUF[12]),
        .O(Y_OBUF[12]));
  LUT5 #(
    .INIT(32'h0A282880)) 
    \Y_OBUF[13]_inst_i_1 
       (.I0(AluOp_IBUF[2]),
        .I1(AluOp_IBUF[0]),
        .I2(AluOp_IBUF[1]),
        .I3(a_IBUF[13]),
        .I4(b_IBUF[13]),
        .O(Y_OBUF[13]));
  LUT5 #(
    .INIT(32'h0A282880)) 
    \Y_OBUF[14]_inst_i_1 
       (.I0(AluOp_IBUF[2]),
        .I1(AluOp_IBUF[0]),
        .I2(AluOp_IBUF[1]),
        .I3(a_IBUF[14]),
        .I4(b_IBUF[14]),
        .O(Y_OBUF[14]));
  LUT5 #(
    .INIT(32'h0A282880)) 
    \Y_OBUF[15]_inst_i_1 
       (.I0(AluOp_IBUF[2]),
        .I1(AluOp_IBUF[0]),
        .I2(AluOp_IBUF[1]),
        .I3(a_IBUF[15]),
        .I4(b_IBUF[15]),
        .O(Y_OBUF[15]));
  LUT5 #(
    .INIT(32'h0A282880)) 
    \Y_OBUF[16]_inst_i_1 
       (.I0(AluOp_IBUF[2]),
        .I1(AluOp_IBUF[0]),
        .I2(AluOp_IBUF[1]),
        .I3(a_IBUF[16]),
        .I4(b_IBUF[16]),
        .O(Y_OBUF[16]));
  LUT5 #(
    .INIT(32'h0A282880)) 
    \Y_OBUF[17]_inst_i_1 
       (.I0(AluOp_IBUF[2]),
        .I1(AluOp_IBUF[0]),
        .I2(AluOp_IBUF[1]),
        .I3(a_IBUF[17]),
        .I4(b_IBUF[17]),
        .O(Y_OBUF[17]));
  LUT5 #(
    .INIT(32'h0A282880)) 
    \Y_OBUF[18]_inst_i_1 
       (.I0(AluOp_IBUF[2]),
        .I1(AluOp_IBUF[0]),
        .I2(AluOp_IBUF[1]),
        .I3(a_IBUF[18]),
        .I4(b_IBUF[18]),
        .O(Y_OBUF[18]));
  LUT5 #(
    .INIT(32'h0A282880)) 
    \Y_OBUF[19]_inst_i_1 
       (.I0(AluOp_IBUF[2]),
        .I1(AluOp_IBUF[0]),
        .I2(AluOp_IBUF[1]),
        .I3(a_IBUF[19]),
        .I4(b_IBUF[19]),
        .O(Y_OBUF[19]));
  LUT5 #(
    .INIT(32'h0A282880)) 
    \Y_OBUF[1]_inst_i_1 
       (.I0(AluOp_IBUF[2]),
        .I1(AluOp_IBUF[0]),
        .I2(AluOp_IBUF[1]),
        .I3(a_IBUF[1]),
        .I4(b_IBUF[1]),
        .O(Y_OBUF[1]));
  LUT5 #(
    .INIT(32'h0A282880)) 
    \Y_OBUF[20]_inst_i_1 
       (.I0(AluOp_IBUF[2]),
        .I1(AluOp_IBUF[0]),
        .I2(AluOp_IBUF[1]),
        .I3(a_IBUF[20]),
        .I4(b_IBUF[20]),
        .O(Y_OBUF[20]));
  LUT5 #(
    .INIT(32'h0A282880)) 
    \Y_OBUF[21]_inst_i_1 
       (.I0(AluOp_IBUF[2]),
        .I1(AluOp_IBUF[0]),
        .I2(AluOp_IBUF[1]),
        .I3(a_IBUF[21]),
        .I4(b_IBUF[21]),
        .O(Y_OBUF[21]));
  LUT5 #(
    .INIT(32'h0A282880)) 
    \Y_OBUF[22]_inst_i_1 
       (.I0(AluOp_IBUF[2]),
        .I1(AluOp_IBUF[0]),
        .I2(AluOp_IBUF[1]),
        .I3(a_IBUF[22]),
        .I4(b_IBUF[22]),
        .O(Y_OBUF[22]));
  LUT5 #(
    .INIT(32'h0A282880)) 
    \Y_OBUF[23]_inst_i_1 
       (.I0(AluOp_IBUF[2]),
        .I1(AluOp_IBUF[0]),
        .I2(AluOp_IBUF[1]),
        .I3(a_IBUF[23]),
        .I4(b_IBUF[23]),
        .O(Y_OBUF[23]));
  LUT5 #(
    .INIT(32'h0A282880)) 
    \Y_OBUF[24]_inst_i_1 
       (.I0(AluOp_IBUF[2]),
        .I1(AluOp_IBUF[0]),
        .I2(AluOp_IBUF[1]),
        .I3(a_IBUF[24]),
        .I4(b_IBUF[24]),
        .O(Y_OBUF[24]));
  LUT5 #(
    .INIT(32'h0A282880)) 
    \Y_OBUF[25]_inst_i_1 
       (.I0(AluOp_IBUF[2]),
        .I1(AluOp_IBUF[0]),
        .I2(AluOp_IBUF[1]),
        .I3(a_IBUF[25]),
        .I4(b_IBUF[25]),
        .O(Y_OBUF[25]));
  LUT5 #(
    .INIT(32'h0A282880)) 
    \Y_OBUF[26]_inst_i_1 
       (.I0(AluOp_IBUF[2]),
        .I1(AluOp_IBUF[0]),
        .I2(AluOp_IBUF[1]),
        .I3(a_IBUF[26]),
        .I4(b_IBUF[26]),
        .O(Y_OBUF[26]));
  LUT5 #(
    .INIT(32'h0A282880)) 
    \Y_OBUF[27]_inst_i_1 
       (.I0(AluOp_IBUF[2]),
        .I1(AluOp_IBUF[0]),
        .I2(AluOp_IBUF[1]),
        .I3(a_IBUF[27]),
        .I4(b_IBUF[27]),
        .O(Y_OBUF[27]));
  LUT5 #(
    .INIT(32'h0A282880)) 
    \Y_OBUF[28]_inst_i_1 
       (.I0(AluOp_IBUF[2]),
        .I1(AluOp_IBUF[0]),
        .I2(AluOp_IBUF[1]),
        .I3(a_IBUF[28]),
        .I4(b_IBUF[28]),
        .O(Y_OBUF[28]));
  LUT5 #(
    .INIT(32'h0A282880)) 
    \Y_OBUF[29]_inst_i_1 
       (.I0(AluOp_IBUF[2]),
        .I1(AluOp_IBUF[0]),
        .I2(AluOp_IBUF[1]),
        .I3(a_IBUF[29]),
        .I4(b_IBUF[29]),
        .O(Y_OBUF[29]));
  LUT5 #(
    .INIT(32'h0A282880)) 
    \Y_OBUF[2]_inst_i_1 
       (.I0(AluOp_IBUF[2]),
        .I1(AluOp_IBUF[0]),
        .I2(AluOp_IBUF[1]),
        .I3(a_IBUF[2]),
        .I4(b_IBUF[2]),
        .O(Y_OBUF[2]));
  LUT5 #(
    .INIT(32'h0A282880)) 
    \Y_OBUF[30]_inst_i_1 
       (.I0(AluOp_IBUF[2]),
        .I1(AluOp_IBUF[0]),
        .I2(AluOp_IBUF[1]),
        .I3(a_IBUF[30]),
        .I4(b_IBUF[30]),
        .O(Y_OBUF[30]));
  LUT5 #(
    .INIT(32'h0A282880)) 
    \Y_OBUF[31]_inst_i_1 
       (.I0(AluOp_IBUF[2]),
        .I1(AluOp_IBUF[0]),
        .I2(AluOp_IBUF[1]),
        .I3(a_IBUF[31]),
        .I4(b_IBUF[31]),
        .O(Y_OBUF[31]));
  LUT5 #(
    .INIT(32'h0A282880)) 
    \Y_OBUF[3]_inst_i_1 
       (.I0(AluOp_IBUF[2]),
        .I1(AluOp_IBUF[0]),
        .I2(AluOp_IBUF[1]),
        .I3(a_IBUF[3]),
        .I4(b_IBUF[3]),
        .O(Y_OBUF[3]));
  LUT5 #(
    .INIT(32'h0A282880)) 
    \Y_OBUF[4]_inst_i_1 
       (.I0(AluOp_IBUF[2]),
        .I1(AluOp_IBUF[0]),
        .I2(AluOp_IBUF[1]),
        .I3(a_IBUF[4]),
        .I4(b_IBUF[4]),
        .O(Y_OBUF[4]));
  LUT5 #(
    .INIT(32'h0A282880)) 
    \Y_OBUF[5]_inst_i_1 
       (.I0(AluOp_IBUF[2]),
        .I1(AluOp_IBUF[0]),
        .I2(AluOp_IBUF[1]),
        .I3(a_IBUF[5]),
        .I4(b_IBUF[5]),
        .O(Y_OBUF[5]));
  LUT5 #(
    .INIT(32'h0A282880)) 
    \Y_OBUF[6]_inst_i_1 
       (.I0(AluOp_IBUF[2]),
        .I1(AluOp_IBUF[0]),
        .I2(AluOp_IBUF[1]),
        .I3(a_IBUF[6]),
        .I4(b_IBUF[6]),
        .O(Y_OBUF[6]));
  LUT5 #(
    .INIT(32'h0A282880)) 
    \Y_OBUF[7]_inst_i_1 
       (.I0(AluOp_IBUF[2]),
        .I1(AluOp_IBUF[0]),
        .I2(AluOp_IBUF[1]),
        .I3(a_IBUF[7]),
        .I4(b_IBUF[7]),
        .O(Y_OBUF[7]));
  LUT5 #(
    .INIT(32'h0A282880)) 
    \Y_OBUF[8]_inst_i_1 
       (.I0(AluOp_IBUF[2]),
        .I1(AluOp_IBUF[0]),
        .I2(AluOp_IBUF[1]),
        .I3(a_IBUF[8]),
        .I4(b_IBUF[8]),
        .O(Y_OBUF[8]));
  LUT5 #(
    .INIT(32'h0A282880)) 
    \Y_OBUF[9]_inst_i_1 
       (.I0(AluOp_IBUF[2]),
        .I1(AluOp_IBUF[0]),
        .I2(AluOp_IBUF[1]),
        .I3(a_IBUF[9]),
        .I4(b_IBUF[9]),
        .O(Y_OBUF[9]));
  LUT3 #(
    .INIT(8'h69)) 
    y_carry__0_i_1
       (.I0(a_IBUF[7]),
        .I1(b_IBUF[7]),
        .I2(AluOp_IBUF[1]),
        .O(\Y[0] [3]));
  LUT3 #(
    .INIT(8'h69)) 
    y_carry__0_i_2
       (.I0(a_IBUF[6]),
        .I1(b_IBUF[6]),
        .I2(AluOp_IBUF[1]),
        .O(\Y[0] [2]));
  LUT3 #(
    .INIT(8'h69)) 
    y_carry__0_i_3
       (.I0(a_IBUF[5]),
        .I1(b_IBUF[5]),
        .I2(AluOp_IBUF[1]),
        .O(\Y[0] [1]));
  LUT3 #(
    .INIT(8'h69)) 
    y_carry__0_i_4
       (.I0(a_IBUF[4]),
        .I1(b_IBUF[4]),
        .I2(AluOp_IBUF[1]),
        .O(\Y[0] [0]));
  LUT3 #(
    .INIT(8'h69)) 
    y_carry__1_i_1
       (.I0(a_IBUF[11]),
        .I1(b_IBUF[11]),
        .I2(AluOp_IBUF[1]),
        .O(\Y[0]_0 [3]));
  LUT3 #(
    .INIT(8'h69)) 
    y_carry__1_i_2
       (.I0(a_IBUF[10]),
        .I1(b_IBUF[10]),
        .I2(AluOp_IBUF[1]),
        .O(\Y[0]_0 [2]));
  LUT3 #(
    .INIT(8'h69)) 
    y_carry__1_i_3
       (.I0(a_IBUF[9]),
        .I1(b_IBUF[9]),
        .I2(AluOp_IBUF[1]),
        .O(\Y[0]_0 [1]));
  LUT3 #(
    .INIT(8'h69)) 
    y_carry__1_i_4
       (.I0(a_IBUF[8]),
        .I1(b_IBUF[8]),
        .I2(AluOp_IBUF[1]),
        .O(\Y[0]_0 [0]));
  LUT3 #(
    .INIT(8'h69)) 
    y_carry__2_i_1
       (.I0(a_IBUF[15]),
        .I1(b_IBUF[15]),
        .I2(AluOp_IBUF[1]),
        .O(\Y[0]_1 [3]));
  LUT3 #(
    .INIT(8'h69)) 
    y_carry__2_i_2
       (.I0(a_IBUF[14]),
        .I1(b_IBUF[14]),
        .I2(AluOp_IBUF[1]),
        .O(\Y[0]_1 [2]));
  LUT3 #(
    .INIT(8'h69)) 
    y_carry__2_i_3
       (.I0(a_IBUF[13]),
        .I1(b_IBUF[13]),
        .I2(AluOp_IBUF[1]),
        .O(\Y[0]_1 [1]));
  LUT3 #(
    .INIT(8'h69)) 
    y_carry__2_i_4
       (.I0(a_IBUF[12]),
        .I1(b_IBUF[12]),
        .I2(AluOp_IBUF[1]),
        .O(\Y[0]_1 [0]));
  LUT3 #(
    .INIT(8'h69)) 
    y_carry__3_i_1
       (.I0(a_IBUF[19]),
        .I1(b_IBUF[19]),
        .I2(AluOp_IBUF[1]),
        .O(\Y[0]_2 [3]));
  LUT3 #(
    .INIT(8'h69)) 
    y_carry__3_i_2
       (.I0(a_IBUF[18]),
        .I1(b_IBUF[18]),
        .I2(AluOp_IBUF[1]),
        .O(\Y[0]_2 [2]));
  LUT3 #(
    .INIT(8'h69)) 
    y_carry__3_i_3
       (.I0(a_IBUF[17]),
        .I1(b_IBUF[17]),
        .I2(AluOp_IBUF[1]),
        .O(\Y[0]_2 [1]));
  LUT3 #(
    .INIT(8'h69)) 
    y_carry__3_i_4
       (.I0(a_IBUF[16]),
        .I1(b_IBUF[16]),
        .I2(AluOp_IBUF[1]),
        .O(\Y[0]_2 [0]));
  LUT3 #(
    .INIT(8'h69)) 
    y_carry__4_i_1
       (.I0(a_IBUF[23]),
        .I1(b_IBUF[23]),
        .I2(AluOp_IBUF[1]),
        .O(\Y[0]_3 [3]));
  LUT3 #(
    .INIT(8'h69)) 
    y_carry__4_i_2
       (.I0(a_IBUF[22]),
        .I1(b_IBUF[22]),
        .I2(AluOp_IBUF[1]),
        .O(\Y[0]_3 [2]));
  LUT3 #(
    .INIT(8'h69)) 
    y_carry__4_i_3
       (.I0(a_IBUF[21]),
        .I1(b_IBUF[21]),
        .I2(AluOp_IBUF[1]),
        .O(\Y[0]_3 [1]));
  LUT3 #(
    .INIT(8'h69)) 
    y_carry__4_i_4
       (.I0(a_IBUF[20]),
        .I1(b_IBUF[20]),
        .I2(AluOp_IBUF[1]),
        .O(\Y[0]_3 [0]));
  LUT3 #(
    .INIT(8'h69)) 
    y_carry__5_i_1
       (.I0(a_IBUF[27]),
        .I1(b_IBUF[27]),
        .I2(AluOp_IBUF[1]),
        .O(\Y[0]_4 [3]));
  LUT3 #(
    .INIT(8'h69)) 
    y_carry__5_i_2
       (.I0(a_IBUF[26]),
        .I1(b_IBUF[26]),
        .I2(AluOp_IBUF[1]),
        .O(\Y[0]_4 [2]));
  LUT3 #(
    .INIT(8'h69)) 
    y_carry__5_i_3
       (.I0(a_IBUF[25]),
        .I1(b_IBUF[25]),
        .I2(AluOp_IBUF[1]),
        .O(\Y[0]_4 [1]));
  LUT3 #(
    .INIT(8'h69)) 
    y_carry__5_i_4
       (.I0(a_IBUF[24]),
        .I1(b_IBUF[24]),
        .I2(AluOp_IBUF[1]),
        .O(\Y[0]_4 [0]));
  LUT3 #(
    .INIT(8'h69)) 
    y_carry__6_i_1
       (.I0(a_IBUF[31]),
        .I1(b_IBUF[31]),
        .I2(AluOp_IBUF[1]),
        .O(\Y[0]_5 [3]));
  LUT3 #(
    .INIT(8'h69)) 
    y_carry__6_i_2
       (.I0(a_IBUF[30]),
        .I1(b_IBUF[30]),
        .I2(AluOp_IBUF[1]),
        .O(\Y[0]_5 [2]));
  LUT3 #(
    .INIT(8'h69)) 
    y_carry__6_i_3
       (.I0(a_IBUF[29]),
        .I1(b_IBUF[29]),
        .I2(AluOp_IBUF[1]),
        .O(\Y[0]_5 [1]));
  LUT3 #(
    .INIT(8'h69)) 
    y_carry__6_i_4
       (.I0(a_IBUF[28]),
        .I1(b_IBUF[28]),
        .I2(AluOp_IBUF[1]),
        .O(\Y[0]_5 [0]));
  LUT3 #(
    .INIT(8'h69)) 
    y_carry_i_1
       (.I0(a_IBUF[3]),
        .I1(b_IBUF[3]),
        .I2(AluOp_IBUF[1]),
        .O(S[3]));
  LUT3 #(
    .INIT(8'h69)) 
    y_carry_i_2
       (.I0(a_IBUF[2]),
        .I1(b_IBUF[2]),
        .I2(AluOp_IBUF[1]),
        .O(S[2]));
  LUT3 #(
    .INIT(8'h69)) 
    y_carry_i_3
       (.I0(a_IBUF[1]),
        .I1(b_IBUF[1]),
        .I2(AluOp_IBUF[1]),
        .O(S[1]));
  LUT3 #(
    .INIT(8'h69)) 
    y_carry_i_4
       (.I0(a_IBUF[0]),
        .I1(b_IBUF[0]),
        .I2(AluOp_IBUF[1]),
        .O(S[0]));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
