----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 13.10.2022 14:12:29
-- Design Name: 
-- Module Name: Adder - Behavioral
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

entity Adder is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           CIN : in STD_LOGIC;
           COUT : out STD_LOGIC;
           SUM : out STD_LOGIC);
end Adder;

architecture Behavioral of Adder is
attribute dont_touch : string;
attribute dont_touch of Behavioral : architecture is "true";
signal X:std_logic_vector(2 downto 0);

begin

X(0)<=A xor B;
X(1)<=A and B;
X(2)<=X(0) and CIN;
COUT<=X(1) or X(2);
SUM<=X(0) xor CIN;

end Behavioral;
