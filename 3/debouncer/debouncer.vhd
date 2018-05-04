library ieee; 
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
--------------------------------------------------------------------------------
entity debouncer is 
	generic(
		COUNT: positive := 3 ); --- count to 10^6 for 20ms with 50MHz clock 
	port( 
		x, clk: in std_logic;---, reset: in std_logic; 
		---count_x, count_debounced: out std_logic_vector(3 downto 0); 
		---ssd_x, ssd_debounced: out std_logic_vector(6 downto 0) );
		y: out std_logic);
end entity; 

--------------------------------------------------------------------------------
architecture debouncer of debouncer is 
begin 
	process(clk, x)
		variable pressed: std_logic := '0'; --- '0' if button unpressed, '1' if pressed
		variable counter : integer range 0 to COUNT := 0; 
		---variable var_count: integer range 0 to 15 := 0; 
		---variable var_count_debounced: integer range 0 to 15 := 0;
	begin
	if (pressed = '0' and rising_edge(clk) and x = '0' and counter /= COUNT) then 
		counter := counter + 1; 	
		if counter = COUNT then 
			pressed := '1';
			---var_count_debounced := var_count_debounced + 1;
		end if; 
		
	elsif (pressed = '0' and rising_edge(clk) and x = '1') then 
		counter := 0; 
	
	elsif (pressed = '1' and rising_edge(clk) and x = '1' and counter /= COUNT) then 
		counter := counter + 1; 	
		if counter = COUNT then 
			pressed := '0'; 
		end if; 
		
	elsif(pressed = '1' and rising_edge(clk) and x = '0') then 
		counter := 0; 
	end if;
	y <= not pressed; 
--	if(falling_edge(x)) then 	--- increment undebounced counter 
--		var_count := var_count + 1; 
--	end if; 
	
--	if(reset = '0') then 		--- set counters to 0 upon reset 
--		var_count := 0; 
--		var_count_debounced := 0; 
--	end if; 
	
--	count_x <=  std_logic_vector(to_unsigned(var_count, count_x'length));
--	count_debounced <= std_logic_vector(to_unsigned(var_count_debounced, count_debounced'length));

--	case var_count is 
--      when 0 => ssd_x <= "0000001";       --"0" on SSD
--      when 1 => ssd_x <= "1001111";       --"1" on SSD
--      when 2 => ssd_x <= "0010010";       --"2" on SSD
--      when 3 => ssd_x <= "0000110";       --"3" on SSD
--      when 4 => ssd_x <= "1001100";       --"4" on SSD
--      when 5 => ssd_x <= "0100100";       --"5" on SSD
--      when 6 => ssd_x <= "0100000";       --"6" on SSD
--      when 7 => ssd_x <= "0001111";       --"7" on SSD
--      when 8 => ssd_x <= "0000000";       --"8" on SSD
--      when 9 => ssd_x <= "0000100";       --"9" on SSD	
--		when 10 => ssd_x <= "0001000";      -- "A" on SSD 
--		when 11 => ssd_x <= "1100000";      -- "b" on SSD 
--		when 12 => ssd_x <= "0110001";      -- "C" on SSD 
--		when 13 => ssd_x <= "1000010"; 		-- "d" on SSD	
--		when 14 => ssd_x <= "0110000"; 		-- "E" on SSD 
--		when 15 => ssd_x <= "0111000";      -- "F" on SSd
--      when others => ssd_x <= "1100010";  --"o" for overflow
--	end case; 
--		
--	case var_count_debounced is 
--      when 0 => ssd_debounced <= "0000001";       --"0" on SSD
--      when 1 => ssd_debounced <= "1001111";       --"1" on SSD
--      when 2 => ssd_debounced <= "0010010";       --"2" on SSD
--      when 3 => ssd_debounced <= "0000110";       --"3" on SSD
--      when 4 => ssd_debounced <= "1001100";       --"4" on SSD
--      when 5 => ssd_debounced <= "0100100";       --"5" on SSD
--      when 6 => ssd_debounced <= "0100000";       --"6" on SSD
--      when 7 => ssd_debounced <= "0001111";       --"7" on SSD
--      when 8 => ssd_debounced <= "0000000";       --"8" on SSD
--      when 9 => ssd_debounced <= "0000100";       --"9" on SSD	
--		when 10 => ssd_debounced <= "0001000";      -- "A" on SSD 
--		when 11 => ssd_debounced <= "1100000";      -- "b" on SSD 
--		when 12 => ssd_debounced <= "0110001";      -- "C" on SSD 
--		when 13 => ssd_debounced <= "1000010"; 	  -- "d" on SSD	
--		when 14 => ssd_debounced <= "0110000"; 	  -- "E" on SSD 
--		when 15 => ssd_debounced <= "0111000";      -- "F" on SSd
--      when others => ssd_debounced <= "1100010";  --"o" for overflow
--	end case; 	
	end process; 
end architecture;
