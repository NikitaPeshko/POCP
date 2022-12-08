----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 14.10.2022 16:08:33
-- Design Name: 
-- Module Name: task4_test - Behavioral
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
USE ieee.numeric_std.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity task4_test is
end task4_test;

architecture Behavioral of task4_test is
        component task4_adder_beh
            Port ( A1 : in STD_LOGIC;
                   A2 : in STD_LOGIC;
                   B1 : in STD_LOGIC;
                   B2 : in STD_LOGIC;
                   F1 : out STD_LOGIC;
                   F2 : out STD_LOGIC;
                   C : out STD_LOGIC);
        end component;
        
        component task4_adder_struct
            Port ( A1 : in STD_LOGIC;
                   A2 : in STD_LOGIC;
                   B1 : in STD_LOGIC;
                   B2 : in STD_LOGIC;
                   F1 : out STD_LOGIC;
                   F2 : out STD_LOGIC;
                   C : out STD_LOGIC);
        end component;
        
signal A1, A2, B1, B2, E:std_logic;
signal temp_vector:std_logic_vector(5 downto 0);
signal test_vector:std_logic_vector(3 downto 0);
   
constant period: time := 10ns;   
        
begin

U_beh:task4_adder_beh port map(A1, A2, B1, B2, temp_vector(0), temp_vector(1), temp_vector(2));
U_struct:task4_adder_struct port map(A1, A2, B1, B2, temp_vector(3), temp_vector(4), temp_vector(5));

A1<=test_vector(0);
A2<=test_vector(1);
B1<=test_vector(2);
B2<=test_vector(3);
	
E<='0' when (temp_vector(0) = temp_vector(3)) and (temp_vector(1) = temp_vector(4)) else '1';

 stim_proc: process
begin

    for i in 0 to 15 loop
          
        test_vector <= std_logic_vector(to_unsigned(i, test_vector'length)); 
          wait for period;
    end loop;
    
    report "End of simulation" severity failure;

end process;

end Behavioral;
