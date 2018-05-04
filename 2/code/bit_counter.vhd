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
	 -- Vector of [leading ones] & 0... with length BITS
    signal leading_ones:            std_logic_vector(BITS-1 downto 0);
	 -- Vector to accumulate count of leading ones
    signal leading_ones_counts:     int_array;
    signal num_leading_ones:        integer;
begin
    leading_ones(0)        <= x(BITS - 1); 
    leading_ones_counts(0) <= 1 when x(BITS - 1) = '1' else 0;
    
	 -- Generate vector of leading ones and accumulate the count of ones
    gen: for i in 1 to BITS-1 generate
        leading_ones(i) <= '1' when (x(BITS - 1 - i) and leading_ones(i-1)) = '1' else '0';
        with leading_ones(i) select 
            leading_ones_counts(i) <= leading_ones_counts(i-1) + 1 when '1',
                                      leading_ones_counts(i-1) when others;
    end generate;
    
    -- Last element of `leading_ones_count` is number of leading ones==
    num_leading_ones <= leading_ones_counts(BITS - 1);
	 y <= std_logic_vector(to_unsigned(num_leading_ones, y'length));
    
    -- Convert to SSD output
    with num_leading_ones select
        ssd <=  "1111110" when 0,       --"0" on SSD
                "0110000" when 1,       --"1" on SSD
                "1101101" when 2,       --"2" on SSD
                "1111001" when 3,       --"3" on SSD
                "0110011" when 4,       --"4" on SSD
                "1011011" when 5,       --"5" on SSD
                "1011111" when 6,       --"6" on SSD
                "1110000" when 7,       --"7" on SSD
                "1111111" when 8,       --"8" on SSD
                "1111011" when 9,       --"9" on SSD
                "0011101" when others;  --"o" for overflow
end architecture;
