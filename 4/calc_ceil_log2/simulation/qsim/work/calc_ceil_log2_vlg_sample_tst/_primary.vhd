library verilog;
use verilog.vl_types.all;
entity calc_ceil_log2_vlg_sample_tst is
    port(
        x               : in     vl_logic_vector(7 downto 0);
        sampler_tx      : out    vl_logic
    );
end calc_ceil_log2_vlg_sample_tst;
