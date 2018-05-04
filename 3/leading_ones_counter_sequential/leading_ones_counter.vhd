1     library ieee;
2     use ieee.std_logic_1164.all;
3     use ieee.numeric_std.all;
4     use ieee.math_real.all;
5     --------------------------------------------------------------------------------
6     entity bit_counter is
7         generic (
8             BITS:    positive := 8 );
9         port (
10            x:   in  std_logic_vector(BITS-1 downto 0);
11            y:   out std_logic_vector(integer(ceil(log2(real(BITS)))) downto 0);
12            ssd: out std_logic_vector(6 downto 0) );
13    end entity;
14    --------------------------------------------------------------------------------
15    architecture leading_ones_counter of bit_counter is 
16        type int_array is array (BITS-1 downto 0) of integer;
17        signal num_ones: integer;
18    begin
19        process(x) 
20        variable ones_count: integer range 0 to BITS;
21        begin 
22            ones_count := 0; 
23            for i in x'range loop 
24                case x(i)  is 
25                    when '1' => ones_count := ones_count + 1;
26                    when others => exit; 
27                end case;
28            end loop;
29            num_ones <= ones_count;
30         end process; 
31        
32        -- Convert result to slv output
33         y <= std_logic_vector(to_unsigned(num_ones, y'length));
34         
35        -- Convert to SSD output
36        with num_ones select
37            ssd <=  "0000001" when 0,       --"0" on SSD
38                    "1001111" when 1,       --"1" on SSD
39                    "0010010" when 2,       --"2" on SSD
40                    "0000110" when 3,       --"3" on SSD
41                    "1001100" when 4,       --"4" on SSD
42                    "0100100" when 5,       --"5" on SSD
43                    "0100000" when 6,       --"6" on SSD
44                    "0001111" when 7,       --"7" on SSD
45                    "0000000" when 8,       --"8" on SSD
46                    "0000100" when 9,       --"9" on SSD
47                    "1100010" when others;  --"o" for overflow
48    end architecture;