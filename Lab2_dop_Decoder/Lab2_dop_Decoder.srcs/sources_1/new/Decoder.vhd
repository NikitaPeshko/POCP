----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 13.10.2022 14:42:51
-- Design Name: 
-- Module Name: Decoder - Behavioral
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

entity Decoder is
      Port (A:in std_logic_vector(2 downto 0);
            G:in std_logic;
            F:out std_logic_vector(7 downto 0) );
end Decoder;

architecture Behavioral of Decoder is

begin

F(0)<=not A(0) and not A(1) and not A(2) and G;
F(1)<= A(0) and not A(1) and not A(2) and G;
F(2)<=not A(0) and A(1) and not A(2) and G;
F(3)<= A(0) and A(1) and not A(2) and G;
F(4)<=not A(0) and not A(1) and A(2) and G;
F(5)<= A(0) and not A(1) and A(2) and G;
F(6)<=not A(0) and A(1) and A(2) and G;
F(7)<= A(0) and A(1) and A(2) and G;

end Behavioral;
