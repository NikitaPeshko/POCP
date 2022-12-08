----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01.11.2022 12:27:59
-- Design Name: 
-- Module Name: task4_DE_LATCH - Behavioral
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

entity task4_DE_LATCH_struct is
    Port ( D : in STD_LOGIC;
           E : in STD_LOGIC;
           Q : out STD_LOGIC;
           nQ : out STD_LOGIC);
end task4_DE_LATCH_struct;

architecture Structure of task4_DE_LATCH_struct is

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
    
    component AND_2
        Port ( A : in STD_LOGIC;
               B : in STD_LOGIC;
               F : out STD_LOGIC);
    end component;
    
signal X, nX, NOT_D, NOT_D_E, D_E: std_logic;    
        
    begin
    
    U1:INV_1 port map(D, NOT_D);
    U2:AND_2 port map(D, E, D_E);
    U3:AND_2 port map(NOT_D, E, NOT_D_E);
    U4:NOT_OR_2 port map(nX, NOT_D_E, X);
    U5:NOT_OR_2 port map(X, D_E, nX);
    
    Q<=X;
    nQ<=nX;

end Structure;
