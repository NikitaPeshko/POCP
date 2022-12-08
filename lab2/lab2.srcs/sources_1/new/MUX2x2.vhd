----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 13.10.2022 13:44:50
-- Design Name: 
-- Module Name: MUX2x2 - Behavioral
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

entity MUX2x2 is
    Port ( A1 : in STD_LOGIC;
           A2 : in STD_LOGIC;
           B1 : in STD_LOGIC;
           B2 : in STD_LOGIC;
           S : in STD_LOGIC;
           Z1 : out STD_LOGIC;
           Z2 : out STD_LOGIC);
end MUX2x2;

architecture Structure of MUX2x2 is
        component task_1_struct port(
            A : in STD_LOGIC;
            B : in STD_LOGIC;
            S : in STD_LOGIC;
            F : out STD_LOGIC);
        end component;

begin

MUX1:task_1_struct port map(A1, B1, S, Z1);
MUX2:task_1_struct port map(A2, B2, S, Z2);

end Structure;
