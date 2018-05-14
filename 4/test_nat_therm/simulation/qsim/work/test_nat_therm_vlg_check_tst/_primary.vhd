library verilog;
use verilog.vl_types.all;
entity test_nat_therm_vlg_check_tst is
    port(
        y               : in     vl_logic_vector(6 downto 0);
        sampler_rx      : in     vl_logic
    );
end test_nat_therm_vlg_check_tst;
