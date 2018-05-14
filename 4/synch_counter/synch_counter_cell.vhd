--------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
--------------------------------------------------------------------------------
entity synch_counter_cell is
    port (
    a, b, clk:  in      std_logic;
    c, q:       buffer  std_logic );
end entity;
--------------------------------------------------------------------------------
architecture synch_counter_cell of synch_counter_cell is
begin
    process (clk, a, b)
    begin
        c <= a and b;
        if rising_edge(clk) then
            q <= q xor c;
        end if;
    end process;
end architecture;
--------------------------------------------------------------------------------
