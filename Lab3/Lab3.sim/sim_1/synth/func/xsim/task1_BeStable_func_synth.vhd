-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Tue Nov  1 22:27:45 2022
-- Host        : DESKTOP-M8UDOM5 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               D:/Projects/Vivado_Projects/Lab3/Lab3.sim/sim_1/synth/func/xsim/task1_BeStable_func_synth.vhd
-- Design      : task1_BeStable
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity INV_1 is
  port (
    I : in STD_LOGIC;
    O : out STD_LOGIC
  );
  attribute dont_touch : string;
  attribute dont_touch of INV_1 : entity is "true";
end INV_1;

architecture STRUCTURE of INV_1 is
begin
O_INST_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => I,
      O => O
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \INV_1__1\ is
  port (
    I : in STD_LOGIC;
    O : out STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \INV_1__1\ : entity is "INV_1";
  attribute dont_touch : string;
  attribute dont_touch of \INV_1__1\ : entity is "true";
end \INV_1__1\;

architecture STRUCTURE of \INV_1__1\ is
begin
O_INST_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => I,
      O => O
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity task1_BeStable is
  port (
    Q : out STD_LOGIC;
    nQ : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of task1_BeStable : entity is true;
end task1_BeStable;

architecture STRUCTURE of task1_BeStable is
  signal Q_OBUF : STD_LOGIC;
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
U1: entity work.\INV_1__1\
     port map (
      I => nQ_OBUF,
      O => Q_OBUF
    );
U2: entity work.INV_1
     port map (
      I => Q_OBUF,
      O => nQ_OBUF
    );
nQ_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => nQ_OBUF,
      O => nQ
    );
end STRUCTURE;
