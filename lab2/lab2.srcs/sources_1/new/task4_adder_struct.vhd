----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 14.10.2022 13:09:45
-- Design Name: 
-- Module Name: task4_adder_struct - Behavioral
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

entity task4_adder_struct is
    Port ( A1 : in STD_LOGIC;
           A2 : in STD_LOGIC;
           B1 : in STD_LOGIC;
           B2 : in STD_LOGIC;
           F1 : out STD_LOGIC;
           F2 : out STD_LOGIC;
           C : out STD_LOGIC);
end task4_adder_struct;

architecture Structure of task4_adder_struct is
attribute dont_touch : string;
attribute dont_touch of Structure : architecture is "true";
        component Adder
            Port ( A : in STD_LOGIC;
                       B : in STD_LOGIC;
                       CIN : in STD_LOGIC;
                       COUT : out STD_LOGIC;
                       SUM : out STD_LOGIC);
        end component;
signal C1:std_logic;
begin

U1:Adder port map(A1, B1, '0', C1, F1);
U2:Adder port map(A2, B2, C1, C, F2);

end Structure;
