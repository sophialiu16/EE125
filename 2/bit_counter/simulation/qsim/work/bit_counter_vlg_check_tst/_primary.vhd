library verilog;
use verilog.vl_types.all;
entity bit_counter_vlg_check_tst is
    port(
        ssd             : in     vl_logic_vector(6 downto 0);
        y               : in     vl_logic_vector(3 downto 0);
        sampler_rx      : in     vl_logic
    );
end bit_counter_vlg_check_tst;
