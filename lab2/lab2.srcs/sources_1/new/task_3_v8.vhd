----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 13.10.2022 13:58:27
-- Design Name: 
-- Module Name: task_3_v8 - Behavioral
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

entity task_3_v8 is
    Port ( W : in STD_LOGIC;
           X : in STD_LOGIC;
           Y : in STD_LOGIC;
           Z : in STD_LOGIC;
           G : out STD_LOGIC);
end task_3_v8;

architecture Behavioral of task_3_v8 is
signal res: std_logic_vector(1 downto 0);
begin

res(0)<=not(W and X and Y);


res(1)<=not(Y and Z);
G<=not res(0) or not res(1);

end Behavioral;
