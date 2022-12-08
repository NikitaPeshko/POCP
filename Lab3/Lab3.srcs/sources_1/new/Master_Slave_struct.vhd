----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01.11.2022 13:58:23
-- Design Name: 
-- Module Name: Master_Slave_struct - Behavioral
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

entity Master_Slave_struct is
    Port ( D : in STD_LOGIC;
           CLK : in STD_LOGIC;
           Q : out STD_LOGIC);
end Master_Slave_struct;

architecture Structure of Master_Slave_struct is
    component task4_DE_Latch_struct 
        Port ( D : in STD_LOGIC;
                   E : in STD_LOGIC;
                   Q : out STD_LOGIC;
                   nQ : out STD_LOGIC);
     end component;
     
   component INV_1
       Port ( I : in STD_LOGIC;
              O : out STD_LOGIC);
    end component;
     
signal S, nCLK:std_logic;

begin

U1:INV_1 port map(CLK, nCLK);
U2:task4_DE_Latch_struct port map(D, nCLK, S);
U3:task4_DE_Latch_struct port map(S, CLK, Q);

end Structure;
