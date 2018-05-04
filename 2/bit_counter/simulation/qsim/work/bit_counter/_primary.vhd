library verilog;
use verilog.vl_types.all;
entity bit_counter is
    port(
        x               : in     vl_logic_vector(7 downto 0);
        y               : out    vl_logic_vector(3 downto 0);
        ssd             : out    vl_logic_vector(6 downto 0)
    );
end bit_counter;
