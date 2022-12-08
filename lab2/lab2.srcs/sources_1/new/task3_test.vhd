----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 14.10.2022 16:08:33
-- Design Name: 
-- Module Name: task3_test - Behavioral
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

entity task3_test is
end task3_test;

architecture Behavioral of task3_test is
        component task_3_v8
               Port ( W : in STD_LOGIC;
                   X : in STD_LOGIC;
                   Y : in STD_LOGIC;
                   Z : in STD_LOGIC;
                   G : out STD_LOGIC);
        end component;
        
        component task3_v8_struct
            Port ( W : in STD_LOGIC;
                   X : in STD_LOGIC;
                   Y : in STD_LOGIC;
                   Z : in STD_LOGIC;
                   G : out STD_LOGIC);
        end component;
  
signal test_vector: std_logic_vector(3 downto 0);        
signal temp_vector:std_logic_vector(1 downto 0);      
signal W, X, Y, Z, E:std_logic;
constant period : time := 10 ns;
        
begin

U_Beh:task_3_v8 port map(W, X, Y, Z, temp_vector(0));
U_Struct:task3_v8_struct port map(W, X, Y, Z, temp_vector(1));

W<=test_vector(0);
X<=test_vector(1);
Y<=test_vector(2);
Z<=test_vector(3);

E<=temp_vector(0) xor temp_vector(1);

p:process
begin

    for i in 0 to 15 loop
        test_vector <= std_logic_vector(to_unsigned(i, test_vector'length)); 
		wait for period;
    end loop;
	
	report "End of simulation" severity failure;

end process;

end Behavioral;
