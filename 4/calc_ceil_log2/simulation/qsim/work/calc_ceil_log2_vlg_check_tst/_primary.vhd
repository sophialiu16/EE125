library verilog;
use verilog.vl_types.all;
entity calc_ceil_log2_vlg_check_tst is
    port(
        y               : in     vl_logic_vector(7 downto 0);
        sampler_rx      : in     vl_logic
    );
end calc_ceil_log2_vlg_check_tst;
