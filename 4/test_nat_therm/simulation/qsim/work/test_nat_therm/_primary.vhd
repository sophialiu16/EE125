library verilog;
use verilog.vl_types.all;
entity test_nat_therm is
    port(
        x               : in     vl_logic_vector(2 downto 0);
        y               : out    vl_logic_vector(6 downto 0)
    );
end test_nat_therm;
