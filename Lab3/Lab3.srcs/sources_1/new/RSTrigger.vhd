----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01.11.2022 13:35:34
-- Design Name: 
-- Module Name: RSTrigger - Behavioral
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

entity RSTrigger is
    Port ( R : in STD_LOGIC;
           S : in STD_LOGIC;
           CLK : in STD_LOGIC;
           Q : out STD_LOGIC;
           nQ : out STD_LOGIC);
end RSTrigger;

architecture Behavioral of RSTrigger is

signal q_t:std_logic;

begin

Main: process(R, S, CLK)
begin
    if rising_edge(CLK) then
        if R='1' then
            q_t<='0'; 
        elsif S='1' then
            q_t<='1';
        end if; 
    end if;    
end process;

Q<=q_t;
nQ<= not Q_t;

end Behavioral;
