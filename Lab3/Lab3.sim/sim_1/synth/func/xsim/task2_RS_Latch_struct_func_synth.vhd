-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Tue Nov  1 14:31:50 2022
-- Host        : DESKTOP-M8UDOM5 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               D:/Projects/Vivado_Projects/Lab3/Lab3.sim/sim_1/synth/func/xsim/task2_RS_Latch_struct_func_synth.vhd
-- Design      : task2_RS_Latch_struct
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity NOT_OR_2 is
  port (
    A : in STD_LOGIC;
    B : in STD_LOGIC;
    F : out STD_LOGIC
  );
  attribute dont_touch : string;
  attribute dont_touch of NOT_OR_2 : entity is "true";
end NOT_OR_2;

architecture STRUCTURE of NOT_OR_2 is
begin
F_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => A,
      I1 => B,
      O => F
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \NOT_OR_2__1\ is
  port (
    A : in STD_LOGIC;
    B : in STD_LOGIC;
    F : out STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \NOT_OR_2__1\ : entity is "NOT_OR_2";
  attribute dont_touch : string;
  attribute dont_touch of \NOT_OR_2__1\ : entity is "true";
end \NOT_OR_2__1\;

architecture STRUCTURE of \NOT_OR_2__1\ is
begin
F_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => A,
      I1 => B,
      O => F
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity task2_RS_Latch_struct is
  port (
    R : in STD_LOGIC;
    S : in STD_LOGIC;
    nQ : out STD_LOGIC;
    Q : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of task2_RS_Latch_struct : entity is true;
end task2_RS_Latch_struct;

architecture STRUCTURE of task2_RS_Latch_struct is
  signal Q_OBUF : STD_LOGIC;
  signal R_IBUF : STD_LOGIC;
  signal S_IBUF : STD_LOGIC;
  signal nQ_OBUF : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of U1 : label is std.standard.true;
  attribute DONT_TOUCH of U2 : label is std.standard.true;
begin
Q_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => Q_OBUF,
      O => Q
    );
R_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => R,
      O => R_IBUF
    );
S_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => S,
      O => S_IBUF
    );
U1: entity work.\NOT_OR_2__1\
     port map (
      A => nQ_OBUF,
      B => R_IBUF,
      F => Q_OBUF
    );
U2: entity work.NOT_OR_2
     port map (
      A => Q_OBUF,
      B => S_IBUF,
      F => nQ_OBUF
    );
nQ_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => nQ_OBUF,
      O => nQ
    );
end STRUCTURE;
