--------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
--------------------------------------------------------------------------------
package nat_therm_conv is  
    --constant therm_len:     BITS
	 constant therm_len:     natural := 7;
    function natural_to_thermometer (inp: natural) 
        return std_logic_vector;
end package;
--------------------------------------------------------------------------------
package body nat_therm_conv is  
    function natural_to_thermometer (inp: natural) 
        return std_logic_vector is 
        --variable therm: std_logic_vector(BITS - 1 downto 0);
		  variable therm: std_logic_vector(therm_len - 1 downto 0);
    begin
        -- Build up thermometer code by concatenating `inp` 1s
        for i in therm'range loop 
		      if i < inp then
               therm(i) := '1';
			   else 
				   therm(i) := '0';
				end if;
        end loop;
        return therm;
    end function natural_to_thermometer;
end package body;
--------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
--use ieee.math_real.all;
use work.nat_therm_conv.all;
--------------------------------------------------------------------------------
entity test_nat_therm is 
    generic (
        BITS:       positive := 7);    -- Thermometer output length
    port (
	     -- x:  in      std_logic_vector(floor(log2(real(BITS))) downto 0);  
        x:  in      std_logic_vector(2 downto 0);
        y:  out     std_logic_vector(BITS-1 downto 0) );
end entity;
--------------------------------------------------------------------------------
architecture test_nat_therm of test_nat_therm is 
begin 
    y <= natural_to_thermometer(to_integer(unsigned(x))); 
end architecture;
-------------------------------------------------------------------------------- 