// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Tue Nov  1 14:18:53 2022
// Host        : DESKTOP-M8UDOM5 running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               D:/Projects/Vivado_Projects/Lab3/Lab3.sim/sim_1/synth/timing/xsim/task2_RS_Latch_struct_time_synth.v
// Design      : task2_RS_Latch_struct
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* dont_touch = "true" *) 
module NOT_OR_2
   (A,
    B,
    F);
  input A;
  input B;
  output F;

  wire A;
  wire B;
  wire F;

  LUT2 #(
    .INIT(4'h1)) 
    F_INST_0
       (.I0(A),
        .I1(B),
        .O(F));
endmodule

(* ORIG_REF_NAME = "NOT_OR_2" *) (* dont_touch = "true" *) 
module NOT_OR_2__1
   (A,
    B,
    F);
  input A;
  input B;
  output F;

  wire A;
  wire B;
  wire F;

  LUT2 #(
    .INIT(4'h1)) 
    F_INST_0
       (.I0(A),
        .I1(B),
        .O(F));
endmodule

(* NotValidForBitStream *)
module task2_RS_Latch_struct
   (R,
    S,
    nQ,
    Q);
  input R;
  input S;
  output nQ;
  output Q;

  wire Q;
  wire Q_OBUF;
  wire R;
  wire R_IBUF;
  wire S;
  wire S_IBUF;
  wire nQ;
  wire nQ_OBUF;

initial begin
 $sdf_annotate("task2_RS_Latch_struct_time_synth.sdf",,,,"tool_control");
end
  OBUF Q_OBUF_inst
       (.I(Q_OBUF),
        .O(Q));
  IBUF R_IBUF_inst
       (.I(R),
        .O(R_IBUF));
  IBUF S_IBUF_inst
       (.I(S),
        .O(S_IBUF));
  (* DONT_TOUCH *) 
  NOT_OR_2__1 U1
       (.A(nQ_OBUF),
        .B(R_IBUF),
        .F(Q_OBUF));
  (* DONT_TOUCH *) 
  NOT_OR_2 U2
       (.A(Q_OBUF),
        .B(S_IBUF),
        .F(nQ_OBUF));
  OBUF nQ_OBUF_inst
       (.I(nQ_OBUF),
        .O(nQ));
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
