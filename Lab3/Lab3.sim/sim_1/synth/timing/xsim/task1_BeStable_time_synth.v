// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Tue Nov  1 22:28:01 2022
// Host        : DESKTOP-M8UDOM5 running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               D:/Projects/Vivado_Projects/Lab3/Lab3.sim/sim_1/synth/timing/xsim/task1_BeStable_time_synth.v
// Design      : task1_BeStable
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* dont_touch = "true" *) 
module INV_1
   (I,
    O);
  input I;
  output O;

  wire I;
  wire O;

  LUT1 #(
    .INIT(2'h1)) 
    O_INST_0
       (.I0(I),
        .O(O));
endmodule

(* ORIG_REF_NAME = "INV_1" *) (* dont_touch = "true" *) 
module INV_1__1
   (I,
    O);
  input I;
  output O;

  wire I;
  wire O;

  LUT1 #(
    .INIT(2'h1)) 
    O_INST_0
       (.I0(I),
        .O(O));
endmodule

(* NotValidForBitStream *)
module task1_BeStable
   (Q,
    nQ);
  output Q;
  output nQ;

  wire Q;
  wire Q_OBUF;
  wire nQ;
  wire nQ_OBUF;

initial begin
 $sdf_annotate("task1_BeStable_time_synth.sdf",,,,"tool_control");
end
  OBUF Q_OBUF_inst
       (.I(Q_OBUF),
        .O(Q));
  (* DONT_TOUCH *) 
  INV_1__1 U1
       (.I(nQ_OBUF),
        .O(Q_OBUF));
  (* DONT_TOUCH *) 
  INV_1 U2
       (.I(Q_OBUF),
        .O(nQ_OBUF));
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
