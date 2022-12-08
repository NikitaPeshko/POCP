----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 14.10.2022 12:17:02
-- Design Name: 
-- Module Name: task_1_struct - Behavioral
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

entity task_1_struct is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           S : in STD_LOGIC;
           F : out STD_LOGIC);
end task_1_struct;

architecture Structure of task_1_struct is
        component AND_2
               Port ( A : in STD_LOGIC;
                   B : in STD_LOGIC;
                   F : out STD_LOGIC);
        end component;
        
        component NOT_1
            Port ( I : in STD_LOGIC;
                   O : out STD_LOGIC);
        end component;
        
       component OR_2
           Port ( A : in STD_LOGIC;
                  B : in STD_LOGIC;
                  F : out STD_LOGIC);
       end component;
       
signal A_AND_NOT_S, B_AND_S, NOT_S: std_logic;
begin

U1:AND_2 port map(A, NOT_S, A_AND_NOT_S);
U2:AND_2 port map(B, S, B_AND_S);
U3:NOT_1 port map(S, NOT_S);
U4:OR_2 port map(A_AND_NOT_S, B_AND_S, F);

end Structure;
