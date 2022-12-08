----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01.12.2022 03:08:24
-- Design Name: 
-- Module Name: RAM - Behavioral
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity RAM is
    Generic(m:integer:=4; 
            n:integer:=3);
    Port ( CLK : in STD_LOGIC;
           WR : in STD_LOGIC;
           AB : in STD_LOGIC_VECTOR (m-1 downto 0);
           DB : inout STD_LOGIC_VECTOR (n-1 downto 0));
end RAM;

architecture Behavioral of RAM is

subtype word is std_logic_vector(n-1 downto 0);

type tram is array (0 to 2**m-1) of word;

signal sRAM:tram;

signal adrreg:integer range 0 to 2**m-1;

begin

adrreg <= conv_integer(AB);

WRP:process(WR, CLK, adrreg, DB)
begin
    if WR='0' then
        if rising_edge(CLK) then
            sRAM(adrreg) <= DB;
        end if;
    end if;
end process;
    
RDP:process(WR, sRAM, adrreg)
begin
    if WR='1' then
        DB <= sRAM(adrreg);
    else
        DB <= (others => 'Z');
    end if;
end process;

end Behavioral;
