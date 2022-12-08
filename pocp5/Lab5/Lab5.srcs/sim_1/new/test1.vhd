----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 20.11.2022 22:01:44
-- Design Name: 
-- Module Name: test1 - Behavioral
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity test1 is
--  Port ( );
end test1;

architecture Behavioral of test1 is
    component task2_RegFile is
    Generic(capacity:integer:=4;
            a:integer:=2);
    Port ( INIT : in STD_LOGIC;
           WDP : in STD_LOGIC_VECTOR (capacity-1 downto 0);
           WA : in STD_LOGIC_VECTOR (a-1 downto 0);
           RA : in STD_LOGIC_VECTOR (a-1 downto 0);
           WE : in STD_LOGIC;
           RDP : out STD_LOGIC_VECTOR (capacity-1 downto 0)
           );
    end component;
    
--Input values
constant data_width : integer := 4;
constant n : integer := 2;
constant CLK_period : time := 10ns;

signal Reset : STD_LOGIC;
signal WDP : STD_LOGIC_VECTOR (data_width-1 downto 0);
signal WA : STD_LOGIC_VECTOR (n-1 downto 0);
signal RA1 : STD_LOGIC_VECTOR (n-1 downto 0);
signal CLK : STD_LOGIC;  

--Output values    
signal RDP1 : STD_LOGIC_VECTOR (data_width-1 downto 0);  
 
begin

Scheme:task2_RegFile generic map(data_width, n) 
                     port map(Reset, WDP, WA, RA1, CLK, RDP1);

Reset<='0';

Main:process
begin

    report "Start testbench";     
     
    for i in 0 to 2**n-1 loop
        WA<=std_logic_vector(to_unsigned(i, WA'length));  
        if i = 0 then
            WDP<=std_logic_vector(to_unsigned(7, WDP'length));    
        else
            WDP<=std_logic_vector(to_unsigned(i, WDP'length));
        end if;
        CLK<='0'; wait for CLK_period/2;    
        CLK<='1'; wait for CLK_period/2;   
        report "i = " & integer'image(i);
        report "WA = " & integer'image(conv_integer(WA));
        report "WDP = " & integer'image(conv_integer(WDP));
    end loop;
    
    for i in 0 to 2**n-1 loop
        RA1<=std_logic_vector(to_unsigned(i, RA1'length));  
        report "i = " & integer'image(i);
        report "RA1 = " & integer'image(conv_integer(RA1));
        report "RDP1 = " & integer'image(conv_integer(RDP1));
        wait for CLK_period;  
    end loop;
 
    report "End testbench";  
    wait; 
end process;

end Behavioral;
