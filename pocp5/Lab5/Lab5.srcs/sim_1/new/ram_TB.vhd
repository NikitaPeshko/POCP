library ieee;
use ieee.STD_LOGIC_UNSIGNED.all;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;


entity ram_tb is
end ram_tb;

architecture TB_ARCHITECTURE of ram_tb is
--	component RAM
--		Generic(m:integer:=4; 
--                n:integer:=3);
--        Port ( CLK : in STD_LOGIC;
--               WR : in STD_LOGIC;
--               AB : in STD_LOGIC_VECTOR (m-1 downto 0);
--               DB : inout STD_LOGIC_VECTOR (n-1 downto 0));
--	end component;
component RAM2 is
	generic (
		word_size: integer := 8;
		address_size: integer := 2
		);
	port (
		CLK: in std_logic;
		write_enable: in std_logic;
		address_bus: in std_logic_vector(address_size-1 downto 0);
		data_bus: inout std_logic_vector(word_size-1 downto 0)
		);
end component;

    constant word_size : INTEGER := 8;
    constant address_size : INTEGER := 2; 
        
	signal CLK : STD_LOGIC := '0';
	signal write_enable : STD_LOGIC;
	signal address_bus : STD_LOGIC_VECTOR(address_size-1 downto 0);
	signal data_bus : STD_LOGIC_VECTOR(word_size-1 downto 0);
		
	constant clock_period: time := 10 ns;
	constant tests_count: integer := 4;
	type words_array is array(0 to tests_count-1) of std_logic_vector(word_size-1 downto 0);
	type addresses_array is array(0 to tests_count-1) of std_logic_vector(address_size-1 downto 0);
	constant test_words: words_array := (x"FF", x"00", x"01", x"0A");							   
	constant test_addresses: addresses_array := ("00", "01", "10", "11");
begin
	UUT : RAM2
		generic map (
			word_size => word_size,
			address_size => address_size
		)

		port map (
			CLK => CLK,
			write_enable => write_enable,
			address_bus => address_bus,
			data_bus => data_bus
		);
	
	stimulate: process
	begin
        write_enable <= '1';
        data_bus <= (others => 'Z');
		for i in 0 to tests_count-1	loop
			address_bus <= test_addresses(i);
			data_bus <= test_words(i);
			wait for clock_period;
		end loop; 
		
		write_enable <= '0';		  
		for i in 0 to tests_count-1	loop	 
			address_bus <= test_addresses(i);
            wait for clock_period;
		end loop;
		
		assert (false) report "End of simulation" severity failure;
	end process;
	
	CLK <= not CLK after clock_period / 2;
end TB_ARCHITECTURE;