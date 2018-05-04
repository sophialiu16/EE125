library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
--------------------------------------------------------------------------------
package user_type is
    type slv_array is array (natural range <>) of std_logic_vector;
    type uns_array is array (natural range <>) of unsigned;
    type sgn_array is array (natural range <>) of signed;
end package;
--------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.user_type.all;
--------------------------------------------------------------------------------
entity abs_difference_calculator is 
    generic (
        SIZE:       natural := 6;
        BITS:       natural := 5;
        --EXTRA_BITS:   integer := integer(ceil(log2(real(BITS + 1))))
        EXTRA_BITS: natural := 4 ); 
    port (
        a, b:       in  slv_array(0 to SIZE-1)(BITS-1 downto 0);
        abs_diff:   out std_logic_vector(0 to SIZE-1 + EXTRA_BITS); 
end entity;
--------------------------------------------------------------------------------
architecture generic_chain_type of abs_difference_calculator is 
    -- Individual absolute differences between a_i, b_i; i from 0 to SIZE-1
    -- Each element is of length BITS+1
    signal ind_abs_diffs:   uns_array(0 to SIZE-1)(BITS downto 0);
    
    signal a_sgn:           sgn_array(0 to SIZE-1)(BITS-1 downto 0);
    signal b_sgn:           sgn_array(0 to SIZE-1)(BITS-1 downto 0);
    signal abs_diff_uns     unsigned(0 to SIZE-1 + EXTRA_BITS); -- REPLACE SIZE
begin
    abs_diff_uns <= (others => '0');
    gen: for i in 0 to SIZE-1 generate
        a_sgn(i) <= signed(a);
        b_sgn(i) <= signed(b);
        -- Calculate absolute differences for each slv in a and b
        ind_abs_diffs(i) <= abs(resize(a_sgn(i), BITS+1) - 
                                resize(b_sgn(i), BITS+1));
        -- Sum into abs_diff
        abs_diff_uns <= abs_diff_uns + 
                        resize(ind_abs_diffs(i), abs_diff_uns'length);
    end generate;
    abs_diff = std_logic_vector(abs_diff_uns);
end architecture;