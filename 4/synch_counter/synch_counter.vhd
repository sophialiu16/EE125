library ieee;
use ieee.std_logic_1164.all;
--------------------------------------------------------------------------------
entity synch_counter is
    generic (
        BITS:           positive := 4);  -- # of cells in counter
    port (
        clk:    in      std_logic;
        q:      buffer  std_logic_vector(BITS-1 downto 0) );
end entity;
--------------------------------------------------------------------------------
architecture generic_chain_type of synch_counter is
    -- Intermediate signal 'C's
     signal c:   std_logic_vector(BITS-1 downto 0);
    -- Component declaration
    component synch_counter_cell is
        port (
        a, b, clk:  in      std_logic;
        c, q:       buffer  std_logic );
    end component synch_counter_cell;
begin
    -- Component instantiation with entities
    -- First cell has C and Q inputs of '1'
    cell0: work.synch_counter_cell port map ('1', '1', clk, c(0), q(0));
    gen: FOR i IN 1 TO BITS-1 generate
        other_cells: work.synch_counter_cell
                port map (c(i-1), q(i-1), clk, c(i), q(i));
    end generate gen;
end architecture;