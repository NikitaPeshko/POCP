----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01.11.2022 13:03:07
-- Design Name: 
-- Module Name: DSLatch - Behavioral
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

entity DSLatch is
    Port ( D : in STD_LOGIC;
           E : in STD_LOGIC;
           S : in STD_LOGIC;
           Q : out STD_LOGIC;
           nQ : out STD_LOGIC);
end DSLatch;

architecture Behavioral of DSLatch is

signal q_t:std_logic;

begin

Main: process(D, E, S)
begin
    if  S='1' then
        q_t<='1';
    elsif E='1' then
        q_t<=D;
    end if;    
end process;

Q<=q_t;
nQ<= not Q_t;

end Behavioral;