library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
--------------------------------------------------------------------------------
package user_type is
    -- Array of std_logic_vector
	type slv_array is array (natural range <>) of std_logic_vector;
    -- Array of unsigned
	type uns_array is array (natural range <>) of unsigned;
end package;
--------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.user_type.all;
--------------------------------------------------------------------------------
entity abs_difference_calculator is 
    generic (
        SIZE:       natural := 6;    -- Length of the chain
        BITS:       natural := 5;	 -- Number of bits in each vector	
        --EXTRA_BITS:   integer := integer(ceil(log2(real(BITS + 1))))
        EXTRA_BITS: natural := 4 );  -- Number of extra bits needed for abs_diff
    port (
        -- Inputs: a, b
        a, b:       in  slv_array(0 to SIZE-1)(BITS-1 downto 0);
        -- Outputs: absolute difference of each element in a and b
        abs_diff:   out std_logic_vector(BITS-1 + EXTRA_BITS downto 0) ); 
end entity;
--------------------------------------------------------------------------------
architecture generic_chain_type of abs_difference_calculator is 
    -- Individual, accumulated absolute differences between a_i, b_i; 
	-- i from 0 to SIZE-1. Each element is of length BITS + EXTRA_BITS
    signal abs_diff_uns: uns_array(0 to SIZE-1)(BITS-1 + EXTRA_BITS downto 0);
begin
    -- Initialize the first element of `abs_diff_uns` with the absolute 
    -- difference of the first a, b - essentially the output of the first 
    -- adder in the chain:
    abs_diff_uns(0) <= unsigned(
        abs(resize(signed(a(0)), BITS + EXTRA_BITS) - 
            resize(signed(b(0)), BITS + EXTRA_BITS) ) );
    gen: for i in 1 to SIZE-1 generate
        -- Calculate absolute differences for each slv in a and b
        -- and accumulate these differences in the `abs_diff_uns` array
        abs_diff_uns(i) <= abs_diff_uns(i-1) + unsigned(
	        abs(resize(signed(a(i)), BITS + EXTRA_BITS) - 
            resize(signed(b(i)), BITS + EXTRA_BITS) ) );
    end generate;
    -- The last element of the array is the total absolute difference
    abs_diff <= std_logic_vector(abs_diff_uns(SIZE-1));
end architecture;