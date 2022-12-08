----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 20.11.2022 13:51:32
-- Design Name: 
-- Module Name: task2_RegFile - Behavioral
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

entity task2_RegFile is
    Generic(capacity:integer:=4;
            a:integer:=2);
    Port ( INIT : in STD_LOGIC;
           WDP : in STD_LOGIC_VECTOR (capacity-1 downto 0);
           WA : in STD_LOGIC_VECTOR (a-1 downto 0);
           RA : in STD_LOGIC_VECTOR (a-1 downto 0);
           WE : in STD_LOGIC;
           RDP : out STD_LOGIC_VECTOR (capacity-1 downto 0)
           );
end task2_RegFile;

architecture Behavioral of task2_RegFile is
    component GenericDecoder
        Generic(n:integer);
        Port ( 
            I:in std_logic_vector(n-1 downto 0);
            O:out std_logic_vector(2**n-1 downto 0)    
        );
    end component;
    
    component REGn is
        Generic(n:integer);
        Port ( INIT : in STD_LOGIC;
               Din : in STD_LOGIC_VECTOR (n-1 downto 0);
               EN : in STD_LOGIC;
               CLK : in STD_LOGIC;
               OE : in STD_LOGIC;
               Dout: out std_logic_vector(n-1 downto 0));
    end component;
    
signal wad, rad:std_logic_vector(2**a-1 downto 0);
    
begin

WAD1:GenericDecoder generic map(a) port map(WA, wad);
RAD1:GenericDecoder generic map(a) port map(RA, rad);

REG:for i in 0 to 2**a-1 generate
    REG_i:REGn generic map(capacity) port map(INIT, WDP, wad(i), WE, rad(i), RDP);
end generate;

end Behavioral;
