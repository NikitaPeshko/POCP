----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 21.10.2022 19:39:19
-- Design Name: 
-- Module Name: task1_BeStable - Behavioral
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

entity task1_BeStable is
    Port ( Q : out STD_LOGIC;
           nQ : out STD_LOGIC);
end task1_BeStable;

architecture Structure of task1_BeStable is
    component INV_1 
        Port ( I : in STD_LOGIC;
               O : out STD_LOGIC);
    end component;
signal X, nX:std_logic;
begin

U1:INV_1 port map(nX, X);
U2:INV_1 port map(X, nX);

Q<=X;
nQ<=nX;

end Structure;
