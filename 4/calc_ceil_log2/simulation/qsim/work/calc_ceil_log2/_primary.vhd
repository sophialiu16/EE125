library verilog;
use verilog.vl_types.all;
entity calc_ceil_log2 is
    port(
        x               : in     vl_logic_vector(7 downto 0);
        y               : out    vl_logic_vector(7 downto 0)
    );
end calc_ceil_log2;
