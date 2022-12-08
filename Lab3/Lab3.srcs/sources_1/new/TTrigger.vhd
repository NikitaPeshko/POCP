----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01.11.2022 13:54:12
-- Design Name: 
-- Module Name: TTrigger - Behavioral
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

entity TTrigger is
    Port ( T : in STD_LOGIC;
           CLK : in STD_LOGIC;
           Q : out STD_LOGIC;
           nQ : out STD_LOGIC);
end TTrigger;

architecture Behavioral of TTrigger is

signal q_t, nq_t:std_logic;

begin

Main: process(T, CLK)
begin
    if T='1' then 
        if rising_edge(CLK) then
            q_t<= not q_t;    
        end if;    
    end if;
end process;

Q<=q_t;
nQ<= not q_t;

end Behavioral;
