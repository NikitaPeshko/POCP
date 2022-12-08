----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 14.10.2022 11:49:10
-- Design Name: 
-- Module Name: task3_v8_struct - Behavioral
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

entity task3_v8_struct is
    Port ( W : in STD_LOGIC;
           X : in STD_LOGIC;
           Y : in STD_LOGIC;
           Z : in STD_LOGIC;
           G : out STD_LOGIC);
end task3_v8_struct;

architecture Structure of task3_v8_struct is
        component NOT_AND_3
               Port ( A : in STD_LOGIC;
                   B : in STD_LOGIC;
                   C : in STD_LOGIC;
                   F : out STD_LOGIC);
        end component;
        
        component NOT_AND_2
            Port ( A : in STD_LOGIC;
                   B : in STD_LOGIC;
                   F : out STD_LOGIC);
        end component;
        
       component OR_2_NOT
           Port ( A : in STD_LOGIC;
                  B : in STD_LOGIC;
                  F : out STD_LOGIC);
       end component;
signal temp: std_logic_vector(1 downto 0);                 
begin

U1:NOT_AND_3 port map(W, X, Y, temp(0));
U2:NOT_AND_2 port map(Y, Z, temp(1));
U3:OR_2_NOT port map(temp(0), temp(1), G);

end Structure;
