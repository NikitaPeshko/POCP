----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 21.10.2022 20:00:02
-- Design Name: 
-- Module Name: task3_DLatch_struct - Behavioral
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

entity task3_DLatch_struct is
    Port ( D : in STD_LOGIC;
           Q : out STD_LOGIC;
           nQ : out STD_LOGIC);
end task3_DLatch_struct;

architecture Behavioral of task3_DLatch_struct is
    component NOT_OR_2 
          Port 
          (A:in std_logic;
          B:in std_logic;
          F:out std_logic );
    end component;
    
    component INV_1 
              Port 
              (I:in std_logic;
              O:out std_logic );
    end component;
    
signal X, nX, NOT_D: std_logic;    
    
begin

U1:INV_1 port map(D, NOT_D);
U2:NOT_OR_2 port map(nX, NOT_D, X);
U3:NOT_OR_2 port map(X, D, nX);

Q<=X;
nQ<=nX;

end Behavioral;
