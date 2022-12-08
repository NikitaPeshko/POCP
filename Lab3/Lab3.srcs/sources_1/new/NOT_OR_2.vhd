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

entity NOT_OR_2 is
  Port (A:in std_logic;
        B:in std_logic;
        F:out std_logic );
end NOT_OR_2;

architecture Behavioral of NOT_OR_2 is

attribute dont_touch : string;
attribute dont_touch of Behavioral : architecture is "true";

begin

F<=not(A or B);

end Behavioral;
