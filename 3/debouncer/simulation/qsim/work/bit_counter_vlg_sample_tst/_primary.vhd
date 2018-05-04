library verilog;
use verilog.vl_types.all;
entity bit_counter_vlg_sample_tst is
    port(
        x               : in     vl_logic_vector(7 downto 0);
        sampler_tx      : out    vl_logic
    );
end bit_counter_vlg_sample_tst;
