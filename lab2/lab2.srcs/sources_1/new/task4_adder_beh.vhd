----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 14.10.2022 12:33:47
-- Design Name: 
-- Module Name: task4_adder_beh - Behavioral
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

entity task4_adder_beh is
    Port ( A1 : in STD_LOGIC;
           A2 : in STD_LOGIC;
           B1 : in STD_LOGIC;
           B2 : in STD_LOGIC;
           F1 : out STD_LOGIC;
           F2 : out STD_LOGIC;
           C : out STD_LOGIC);
end task4_adder_beh;

architecture Behavioral of task4_adder_beh is
signal C1:std_logic;
begin

F1<='0' xor (A1 xor B1);
C1<=(A1 and B1) or ((A1 xor B1) and '0');
F2<=C1 xor (A2 xor B2);
C<=(A2 and B2) or ((A2 xor B2) and C1);

end Behavioral;
