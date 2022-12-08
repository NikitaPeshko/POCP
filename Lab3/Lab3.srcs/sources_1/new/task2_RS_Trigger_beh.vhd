----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 21.10.2022 19:47:52
-- Design Name: 
-- Module Name: task2_RS_Triger_beh - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity task2_RS_Latch_beh is
    Port (
            R:in std_logic;
            S:in std_logic;
            nQ:out std_logic;
            Q:out std_logic );
end task2_RS_Latch_beh;

architecture Behavioral of task2_RS_Latch_beh is
signal X, nX:std_logic;
begin


X<=not (nX or R) after 2 ns;
nX<=not (X or S);

Q<=X;
nQ<=nX;

end Behavioral;
