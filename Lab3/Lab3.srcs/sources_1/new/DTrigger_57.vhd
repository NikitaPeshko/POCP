----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01.11.2022 13:30:43
-- Design Name: 
-- Module Name: DTrigger_57 - Behavioral
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

entity DTrigger_57 is
    Port ( D : in STD_LOGIC;
           PRE : in STD_LOGIC;
           CLK : in STD_LOGIC;
           CLR : in STD_LOGIC;
           Q : out STD_LOGIC;
           nQ : out STD_LOGIC);
end DTrigger_57;

architecture Behavioral of DTrigger_57 is

signal q_t:std_logic;

begin

Main: process(D, CLK, PRE, CLR)
begin
    if CLR='1' then
        q_t<='0';
    elsif rising_edge(CLK) then
        if PRE='1' then
            q_t<='1';
        else q_t<=D;
        end if;
    end if;     
end process;

Q<=q_t;
nQ<= not Q_t;

end Behavioral;
