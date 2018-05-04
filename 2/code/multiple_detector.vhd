--- Whether a is a multiple of b 
---
library ieee;
library std;  
use ieee.std_logic_1164.all; --- for std logic types
use ieee.numeric_std.all;    --- for usig 
---
entity multiple_detector is 
	generic(
		NUM_BITS:natural := 5); --- number of bits in a and b 
	port (
		a, b: in std_logic_vector(NUM_BITS-1 downto 0); 
		is_multiple, invalid_inp: out std_logic); 
end entity;
---
architecture multiple_detector of multiple_detector is
	--- internal unsigned signals
	signal ausig, busig, aremb: unsigned(NUM_BITS-1 downto 0);
begin 
	--- cast to signed 
	ausig <= unsigned(a); 
	busig <= unsigned(b); 
	invalid_inp <= '1' when (busig = 0) else '0';
	aremb <= ausig rem busig;--- remainder of division 
	is_multiple <= '0' when (invalid_inp = '1') else 
						'0' when (ausig = 0) else --- discard if a or b = 0 
						'1' when (aremb = 0) else '0';
	
end architecture; 