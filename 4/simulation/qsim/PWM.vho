-- Copyright (C) 2017  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 17.1.0 Build 590 10/25/2017 SJ Lite Edition"

-- DATE "05/13/2018 15:28:58"

-- 
-- Device: Altera EP4CE6E22C6 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_101,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	pwm_demo_sc IS
    PORT (
	duty : IN std_logic_vector(2 DOWNTO 0);
	clk_sys : IN std_logic;
	clk_pwm_out : OUT std_logic;
	pwm : OUT std_logic;
	count : OUT std_logic_vector(2 DOWNTO 0)
	);
END pwm_demo_sc;

-- Design Ports Information
-- clk_pwm_out	=>  Location: PIN_28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pwm	=>  Location: PIN_31,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[0]	=>  Location: PIN_32,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[1]	=>  Location: PIN_30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[2]	=>  Location: PIN_34,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- duty[2]	=>  Location: PIN_24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- duty[1]	=>  Location: PIN_25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- duty[0]	=>  Location: PIN_33,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_sys	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF pwm_demo_sc IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_duty : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_clk_sys : std_logic;
SIGNAL ww_clk_pwm_out : std_logic;
SIGNAL ww_pwm : std_logic;
SIGNAL ww_count : std_logic_vector(2 DOWNTO 0);
SIGNAL \rtl~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk_sys~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk_pwm_out~output_o\ : std_logic;
SIGNAL \pwm~output_o\ : std_logic;
SIGNAL \count[0]~output_o\ : std_logic;
SIGNAL \count[1]~output_o\ : std_logic;
SIGNAL \count[2]~output_o\ : std_logic;
SIGNAL \clk_sys~input_o\ : std_logic;
SIGNAL \clk_sys~inputclkctrl_outclk\ : std_logic;
SIGNAL \sc_counter[0]~2_combout\ : std_logic;
SIGNAL \sc_counter~0_combout\ : std_logic;
SIGNAL \sc_counter~1_combout\ : std_logic;
SIGNAL \sc_counter[1]~feeder_combout\ : std_logic;
SIGNAL \rtl~0_combout\ : std_logic;
SIGNAL \rtl~0clkctrl_outclk\ : std_logic;
SIGNAL \pwm_counter~1_combout\ : std_logic;
SIGNAL \pwm_counter~2_combout\ : std_logic;
SIGNAL \pwm_counter~0_combout\ : std_logic;
SIGNAL \duty[2]~input_o\ : std_logic;
SIGNAL \duty[0]~input_o\ : std_logic;
SIGNAL \duty[1]~input_o\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \LessThan1~1_combout\ : std_logic;
SIGNAL pwm_counter : std_logic_vector(2 DOWNTO 0);
SIGNAL sc_counter : std_logic_vector(2 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_duty <= duty;
ww_clk_sys <= clk_sys;
clk_pwm_out <= ww_clk_pwm_out;
pwm <= ww_pwm;
count <= ww_count;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\rtl~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~0_combout\);

\clk_sys~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk_sys~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y9_N9
\clk_pwm_out~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rtl~0_combout\,
	devoe => ww_devoe,
	o => \clk_pwm_out~output_o\);

-- Location: IOOBUF_X0_Y7_N2
\pwm~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LessThan1~1_combout\,
	devoe => ww_devoe,
	o => \pwm~output_o\);

-- Location: IOOBUF_X0_Y6_N16
\count[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => pwm_counter(0),
	devoe => ww_devoe,
	o => \count[0]~output_o\);

-- Location: IOOBUF_X0_Y8_N16
\count[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => pwm_counter(1),
	devoe => ww_devoe,
	o => \count[1]~output_o\);

-- Location: IOOBUF_X0_Y5_N16
\count[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => pwm_counter(2),
	devoe => ww_devoe,
	o => \count[2]~output_o\);

-- Location: IOIBUF_X0_Y11_N8
\clk_sys~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_sys,
	o => \clk_sys~input_o\);

-- Location: CLKCTRL_G2
\clk_sys~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk_sys~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk_sys~inputclkctrl_outclk\);

-- Location: LCCOMB_X1_Y11_N28
\sc_counter[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc_counter[0]~2_combout\ = !sc_counter(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => sc_counter(0),
	combout => \sc_counter[0]~2_combout\);

-- Location: FF_X1_Y11_N29
\sc_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_sys~inputclkctrl_outclk\,
	d => \sc_counter[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sc_counter(0));

-- Location: LCCOMB_X1_Y11_N24
\sc_counter~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc_counter~0_combout\ = (sc_counter(2) & ((!sc_counter(0)))) # (!sc_counter(2) & (sc_counter(1) & sc_counter(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sc_counter(1),
	datac => sc_counter(2),
	datad => sc_counter(0),
	combout => \sc_counter~0_combout\);

-- Location: FF_X1_Y11_N25
\sc_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_sys~input_o\,
	d => \sc_counter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sc_counter(2));

-- Location: LCCOMB_X1_Y11_N20
\sc_counter~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc_counter~1_combout\ = (sc_counter(1) & ((!sc_counter(0)))) # (!sc_counter(1) & (!sc_counter(2) & sc_counter(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => sc_counter(2),
	datac => sc_counter(1),
	datad => sc_counter(0),
	combout => \sc_counter~1_combout\);

-- Location: LCCOMB_X1_Y11_N30
\sc_counter[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc_counter[1]~feeder_combout\ = \sc_counter~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sc_counter~1_combout\,
	combout => \sc_counter[1]~feeder_combout\);

-- Location: FF_X1_Y11_N31
\sc_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_sys~inputclkctrl_outclk\,
	d => \sc_counter[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sc_counter(1));

-- Location: LCCOMB_X1_Y11_N16
\rtl~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rtl~0_combout\ = LCELL((sc_counter(1) & sc_counter(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => sc_counter(1),
	datad => sc_counter(2),
	combout => \rtl~0_combout\);

-- Location: CLKCTRL_G4
\rtl~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rtl~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rtl~0clkctrl_outclk\);

-- Location: LCCOMB_X1_Y7_N10
\pwm_counter~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \pwm_counter~1_combout\ = (pwm_counter(1) & (!pwm_counter(2) & !pwm_counter(0))) # (!pwm_counter(1) & ((pwm_counter(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => pwm_counter(2),
	datac => pwm_counter(1),
	datad => pwm_counter(0),
	combout => \pwm_counter~1_combout\);

-- Location: FF_X1_Y7_N11
\pwm_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	d => \pwm_counter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pwm_counter(1));

-- Location: LCCOMB_X1_Y7_N20
\pwm_counter~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \pwm_counter~2_combout\ = (!pwm_counter(0) & ((!pwm_counter(2)) # (!pwm_counter(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pwm_counter(1),
	datac => pwm_counter(0),
	datad => pwm_counter(2),
	combout => \pwm_counter~2_combout\);

-- Location: FF_X1_Y7_N21
\pwm_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	d => \pwm_counter~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pwm_counter(0));

-- Location: LCCOMB_X1_Y7_N24
\pwm_counter~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pwm_counter~0_combout\ = (pwm_counter(2) & ((!pwm_counter(1)))) # (!pwm_counter(2) & (pwm_counter(0) & pwm_counter(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => pwm_counter(0),
	datac => pwm_counter(2),
	datad => pwm_counter(1),
	combout => \pwm_counter~0_combout\);

-- Location: FF_X1_Y7_N25
\pwm_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	d => \pwm_counter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pwm_counter(2));

-- Location: IOIBUF_X0_Y11_N15
\duty[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_duty(2),
	o => \duty[2]~input_o\);

-- Location: IOIBUF_X0_Y6_N22
\duty[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_duty(0),
	o => \duty[0]~input_o\);

-- Location: IOIBUF_X0_Y11_N22
\duty[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_duty(1),
	o => \duty[1]~input_o\);

-- Location: LCCOMB_X1_Y7_N18
\LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = (pwm_counter(1) & (!pwm_counter(0) & (\duty[0]~input_o\ & \duty[1]~input_o\))) # (!pwm_counter(1) & ((\duty[1]~input_o\) # ((!pwm_counter(0) & \duty[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pwm_counter(1),
	datab => pwm_counter(0),
	datac => \duty[0]~input_o\,
	datad => \duty[1]~input_o\,
	combout => \LessThan1~0_combout\);

-- Location: LCCOMB_X1_Y7_N16
\LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~1_combout\ = (pwm_counter(2) & (\duty[2]~input_o\ & \LessThan1~0_combout\)) # (!pwm_counter(2) & ((\duty[2]~input_o\) # (\LessThan1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => pwm_counter(2),
	datac => \duty[2]~input_o\,
	datad => \LessThan1~0_combout\,
	combout => \LessThan1~1_combout\);

ww_clk_pwm_out <= \clk_pwm_out~output_o\;

ww_pwm <= \pwm~output_o\;

ww_count(0) <= \count[0]~output_o\;

ww_count(1) <= \count[1]~output_o\;

ww_count(2) <= \count[2]~output_o\;
END structure;


