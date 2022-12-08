----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01.11.2022 13:15:00
-- Design Name: 
-- Module Name: fde - Behavioral
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

entity fde is
    Port ( D : in STD_LOGIC;
           CLK : in STD_LOGIC;
           CE : in STD_LOGIC;
           Q : out STD_LOGIC;
           nQ : out STD_LOGIC);
end fde;

architecture Behavioral of fde is

signal q_t:std_logic;

begin

Main: process(D, CLK, CE)
begin
    if CE='1' then
        if rising_edge(CLK) then
            q_t<=D;
        end if;    
    end if;  
end process;

Q<=q_t;
nQ<= not Q_t;

end Behavioral;
