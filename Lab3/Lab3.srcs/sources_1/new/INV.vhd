----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 21.10.2022 20:00:02
-- Design Name: 
-- Module Name: INV - Behavioral
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

entity INV_1 is
    Port ( I : in STD_LOGIC;
           O : out STD_LOGIC);
end INV_1;

architecture Behavioral of INV_1 is

attribute dont_touch : string;
attribute dont_touch of Behavioral : architecture is "true";

begin

O<=not I;

end Behavioral;
