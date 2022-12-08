----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01.11.2022 13:43:10
-- Design Name: 
-- Module Name: JKTrigger - Behavioral
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

entity JKTrigger is
    Port ( J : in STD_LOGIC;
           K : in STD_LOGIC;
           CLK : in STD_LOGIC;
           Q : out STD_LOGIC;
           nQ : out STD_LOGIC);
end JKTrigger;

architecture Behavioral of JKTrigger is

signal q_t:std_logic;

begin

Main: process(J, K, CLK)
begin
    if rising_edge(CLK) then
        if J='1' and K='0' then 
            q_t<='1';
        elsif J='0' and K='1' then
            q_t<='0';
        elsif J='1' and K='1' then
            q_t<=not q_t;            
        end if;
    end if;    
end process;

Q<=q_t;
nQ<= not q_t;

end Behavioral;
