library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;
--------------------------------------------------------------------------------
entity bit_counter is
   generic (
        BITS:    positive := 8 );
	port (
        x:   in  std_logic_vector(BITS-1 downto 0);
        y:   out std_logic_vector(integer(ceil(log2(real(BITS)))) downto 0);
        ssd: out std_logic_vector(6 downto 0) );
end entity;
--------------------------------------------------------------------------------
architecture leading_ones_counter of bit_counter is 
	 type int_array is array (BITS-1 downto 0) of integer;
    signal num_ones: integer;
begin
	 
	 process(x) 
		variable ones_count: integer range 0 to BITS;
	 begin 
		ones_count := 0; 
		for i in x'range loop 
			case x(i)  is 
				when '1' => ones_count := ones_count + 1;
				when others => exit; 
			end case;
		end loop;
		num_ones <= ones_count;
	 end process; 
    
	 y <= std_logic_vector(to_unsigned(num_ones, y'length));
    -- Convert to SSD output
    with num_ones select
        ssd <=  "0000001" when 0,       --"0" on SSD
                "1001111" when 1,       --"1" on SSD
                "0010010" when 2,       --"2" on SSD
                "0000110" when 3,       --"3" on SSD
                "1001100" when 4,       --"4" on SSD
                "0100100" when 5,       --"5" on SSD
                "0100000" when 6,       --"6" on SSD
                "0001111" when 7,       --"7" on SSD
                "0000000" when 8,       --"8" on SSD
                "0000100" when 9,       --"9" on SSD
                "1100010" when others;  --"o" for overflow
end architecture;
