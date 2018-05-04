library verilog;
use verilog.vl_types.all;
entity abs_difference_calculator_vlg_check_tst is
    port(
        abs_diff        : in     vl_logic_vector(0 to 7);
        sampler_rx      : in     vl_logic
    );
end abs_difference_calculator_vlg_check_tst;
