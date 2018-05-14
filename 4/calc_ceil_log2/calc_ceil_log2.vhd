--------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
--use ieee.math_real.all;
--------------------------------------------------------------------------------
entity calc_ceil_log2 is 
    generic (
        BITS:       positive := 8);
    port (
        x:      in  std_logic_vector(BITS-1 downto 0);
        --y:      out std_logic_vector(integer(ceil(log2(real(BITS)))) downto 0) );
        y:      out std_logic_vector(BITS-1 downto 0) );
end entity;
--------------------------------------------------------------------------------        
architecture calc_ceil_log2 of calc_ceil_log2 is 
    function ceil_log2 (s : std_logic_vector) return std_logic_vector is 
          variable num: integer;
          variable i: integer;
    begin 
        num := to_integer(unsigned(s));
        i := 0;
        while (2**i) < num loop 
            i := i + 1;
        end loop;
        return std_logic_vector(to_unsigned(i, BITS));
    end function ceil_log2;
begin 
    y <= ceil_log2(x); 
end architecture;
-------------------------------------------------------------------------------- 