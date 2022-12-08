----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 21.10.2022 19:46:02
-- Design Name: 
-- Module Name: task2_RS_Trigger_struct - Behavioral
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

entity task2_RS_Latch_struct is
  Port (
        R:in std_logic;
        S:in std_logic;
        nQ:out std_logic;
        Q:out std_logic );
end task2_RS_Latch_struct;

architecture Behavioral of task2_RS_Latch_struct is
    component NOT_OR_2 
          Port 
          (A:in std_logic;
          B:in std_logic;
          F:out std_logic );
    end component;
  
signal X, nX:std_logic;    
    
begin

U1: NOT_OR_2 port map(nX, R, X);   
U2: NOT_OR_2 port map(X, S, nX);   

Q<=X after 2 ns;
nQ<=nX;
    
end Behavioral;
