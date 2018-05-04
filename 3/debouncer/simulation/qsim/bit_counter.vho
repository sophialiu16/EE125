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

-- DATE "05/03/2018 16:35:34"

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

ENTITY 	debouncer IS
    PORT (
	x : IN std_logic;
	clk : IN std_logic;
	x_count : OUT std_logic_vector(3 DOWNTO 0);
	debounced_count : OUT std_logic_vector(3 DOWNTO 0)
	);
END debouncer;

-- Design Ports Information
-- x_count[0]	=>  Location: PIN_67,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_count[1]	=>  Location: PIN_68,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_count[2]	=>  Location: PIN_69,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_count[3]	=>  Location: PIN_66,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debounced_count[0]	=>  Location: PIN_11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debounced_count[1]	=>  Location: PIN_31,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debounced_count[2]	=>  Location: PIN_30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debounced_count[3]	=>  Location: PIN_28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x	=>  Location: PIN_24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF debouncer IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_x : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_x_count : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_debounced_count : std_logic_vector(3 DOWNTO 0);
SIGNAL \x~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \x_count[0]~output_o\ : std_logic;
SIGNAL \x_count[1]~output_o\ : std_logic;
SIGNAL \x_count[2]~output_o\ : std_logic;
SIGNAL \x_count[3]~output_o\ : std_logic;
SIGNAL \debounced_count[0]~output_o\ : std_logic;
SIGNAL \debounced_count[1]~output_o\ : std_logic;
SIGNAL \debounced_count[2]~output_o\ : std_logic;
SIGNAL \debounced_count[3]~output_o\ : std_logic;
SIGNAL \x~input_o\ : std_logic;
SIGNAL \x~inputclkctrl_outclk\ : std_logic;
SIGNAL \var_count[0]~9_combout\ : std_logic;
SIGNAL \var_count[1]~3_combout\ : std_logic;
SIGNAL \var_count[1]~4\ : std_logic;
SIGNAL \var_count[2]~5_combout\ : std_logic;
SIGNAL \var_count[2]~6\ : std_logic;
SIGNAL \var_count[3]~7_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \counter[0]~1_combout\ : std_logic;
SIGNAL \counter[0]~feeder_combout\ : std_logic;
SIGNAL \pressed~0_combout\ : std_logic;
SIGNAL \pressed~feeder_combout\ : std_logic;
SIGNAL \pressed~q\ : std_logic;
SIGNAL \counter[1]~0_combout\ : std_logic;
SIGNAL \counter[1]~feeder_combout\ : std_logic;
SIGNAL \var_debounced_count[0]~3_combout\ : std_logic;
SIGNAL \var_debounced_count[0]~4_combout\ : std_logic;
SIGNAL \var_debounced_count[1]~5_combout\ : std_logic;
SIGNAL \var_debounced_count[1]~6\ : std_logic;
SIGNAL \var_debounced_count[2]~7_combout\ : std_logic;
SIGNAL \var_debounced_count[2]~8\ : std_logic;
SIGNAL \var_debounced_count[3]~9_combout\ : std_logic;
SIGNAL var_count : std_logic_vector(31 DOWNTO 0);
SIGNAL var_debounced_count : std_logic_vector(31 DOWNTO 0);
SIGNAL counter : std_logic_vector(1 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_x <= x;
ww_clk <= clk;
x_count <= ww_x_count;
debounced_count <= ww_debounced_count;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\x~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \x~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X30_Y0_N23
\x_count[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => var_count(0),
	devoe => ww_devoe,
	o => \x_count[0]~output_o\);

-- Location: IOOBUF_X30_Y0_N9
\x_count[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => var_count(1),
	devoe => ww_devoe,
	o => \x_count[1]~output_o\);

-- Location: IOOBUF_X30_Y0_N2
\x_count[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => var_count(2),
	devoe => ww_devoe,
	o => \x_count[2]~output_o\);

-- Location: IOOBUF_X28_Y0_N2
\x_count[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => var_count(3),
	devoe => ww_devoe,
	o => \x_count[3]~output_o\);

-- Location: IOOBUF_X0_Y18_N23
\debounced_count[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => var_debounced_count(0),
	devoe => ww_devoe,
	o => \debounced_count[0]~output_o\);

-- Location: IOOBUF_X0_Y7_N2
\debounced_count[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => var_debounced_count(1),
	devoe => ww_devoe,
	o => \debounced_count[1]~output_o\);

-- Location: IOOBUF_X0_Y8_N16
\debounced_count[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => var_debounced_count(2),
	devoe => ww_devoe,
	o => \debounced_count[2]~output_o\);

-- Location: IOOBUF_X0_Y9_N9
\debounced_count[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => var_debounced_count(3),
	devoe => ww_devoe,
	o => \debounced_count[3]~output_o\);

-- Location: IOIBUF_X0_Y11_N15
\x~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x,
	o => \x~input_o\);

-- Location: CLKCTRL_G4
\x~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \x~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \x~inputclkctrl_outclk\);

-- Location: LCCOMB_X30_Y1_N28
\var_count[0]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \var_count[0]~9_combout\ = !var_count(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => var_count(0),
	combout => \var_count[0]~9_combout\);

-- Location: FF_X30_Y1_N29
\var_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \x~inputclkctrl_outclk\,
	d => \var_count[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => var_count(0));

-- Location: LCCOMB_X30_Y1_N8
\var_count[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \var_count[1]~3_combout\ = (var_count(0) & (var_count(1) $ (VCC))) # (!var_count(0) & (var_count(1) & VCC))
-- \var_count[1]~4\ = CARRY((var_count(0) & var_count(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => var_count(0),
	datab => var_count(1),
	datad => VCC,
	combout => \var_count[1]~3_combout\,
	cout => \var_count[1]~4\);

-- Location: FF_X30_Y1_N9
\var_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \x~inputclkctrl_outclk\,
	d => \var_count[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => var_count(1));

-- Location: LCCOMB_X30_Y1_N10
\var_count[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \var_count[2]~5_combout\ = (var_count(2) & (!\var_count[1]~4\)) # (!var_count(2) & ((\var_count[1]~4\) # (GND)))
-- \var_count[2]~6\ = CARRY((!\var_count[1]~4\) # (!var_count(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => var_count(2),
	datad => VCC,
	cin => \var_count[1]~4\,
	combout => \var_count[2]~5_combout\,
	cout => \var_count[2]~6\);

-- Location: FF_X30_Y1_N11
\var_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \x~inputclkctrl_outclk\,
	d => \var_count[2]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => var_count(2));

-- Location: LCCOMB_X30_Y1_N12
\var_count[3]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \var_count[3]~7_combout\ = var_count(3) $ (!\var_count[2]~6\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => var_count(3),
	cin => \var_count[2]~6\,
	combout => \var_count[3]~7_combout\);

-- Location: FF_X30_Y1_N13
\var_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \x~inputclkctrl_outclk\,
	d => \var_count[3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => var_count(3));

-- Location: IOIBUF_X0_Y11_N8
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G2
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X1_Y11_N26
\counter[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[0]~1_combout\ = (counter(1) & (\x~input_o\ $ ((!\pressed~q\)))) # (!counter(1) & (!counter(0) & (\x~input_o\ $ (!\pressed~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000010011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x~input_o\,
	datab => \pressed~q\,
	datac => counter(1),
	datad => counter(0),
	combout => \counter[0]~1_combout\);

-- Location: LCCOMB_X1_Y11_N10
\counter[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[0]~feeder_combout\ = \counter[0]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \counter[0]~1_combout\,
	combout => \counter[0]~feeder_combout\);

-- Location: FF_X1_Y11_N11
\counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(0));

-- Location: LCCOMB_X1_Y11_N16
\pressed~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pressed~0_combout\ = (counter(0) & (((\pressed~q\)))) # (!counter(0) & ((counter(1) & (!\x~input_o\)) # (!counter(1) & ((\pressed~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(0),
	datab => \x~input_o\,
	datac => counter(1),
	datad => \pressed~q\,
	combout => \pressed~0_combout\);

-- Location: LCCOMB_X1_Y11_N28
\pressed~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \pressed~feeder_combout\ = \pressed~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \pressed~0_combout\,
	combout => \pressed~feeder_combout\);

-- Location: FF_X1_Y11_N29
pressed : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pressed~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pressed~q\);

-- Location: LCCOMB_X1_Y11_N14
\counter[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[1]~0_combout\ = (counter(1) & (\x~input_o\ $ ((!\pressed~q\)))) # (!counter(1) & (counter(0) & (\x~input_o\ $ (!\pressed~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x~input_o\,
	datab => \pressed~q\,
	datac => counter(1),
	datad => counter(0),
	combout => \counter[1]~0_combout\);

-- Location: LCCOMB_X1_Y11_N30
\counter[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[1]~feeder_combout\ = \counter[1]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \counter[1]~0_combout\,
	combout => \counter[1]~feeder_combout\);

-- Location: FF_X1_Y11_N31
\counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(1));

-- Location: LCCOMB_X1_Y11_N24
\var_debounced_count[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \var_debounced_count[0]~3_combout\ = (counter(1) & (!\pressed~q\ & (!\x~input_o\ & !counter(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(1),
	datab => \pressed~q\,
	datac => \x~input_o\,
	datad => counter(0),
	combout => \var_debounced_count[0]~3_combout\);

-- Location: LCCOMB_X1_Y11_N12
\var_debounced_count[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \var_debounced_count[0]~4_combout\ = \var_debounced_count[0]~3_combout\ $ (var_debounced_count(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \var_debounced_count[0]~3_combout\,
	datac => var_debounced_count(0),
	combout => \var_debounced_count[0]~4_combout\);

-- Location: FF_X1_Y11_N13
\var_debounced_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \var_debounced_count[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => var_debounced_count(0));

-- Location: LCCOMB_X1_Y11_N18
\var_debounced_count[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \var_debounced_count[1]~5_combout\ = (var_debounced_count(0) & (var_debounced_count(1) $ (VCC))) # (!var_debounced_count(0) & (var_debounced_count(1) & VCC))
-- \var_debounced_count[1]~6\ = CARRY((var_debounced_count(0) & var_debounced_count(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => var_debounced_count(0),
	datab => var_debounced_count(1),
	datad => VCC,
	combout => \var_debounced_count[1]~5_combout\,
	cout => \var_debounced_count[1]~6\);

-- Location: FF_X1_Y11_N19
\var_debounced_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \var_debounced_count[1]~5_combout\,
	ena => \var_debounced_count[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => var_debounced_count(1));

-- Location: LCCOMB_X1_Y11_N20
\var_debounced_count[2]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \var_debounced_count[2]~7_combout\ = (var_debounced_count(2) & (!\var_debounced_count[1]~6\)) # (!var_debounced_count(2) & ((\var_debounced_count[1]~6\) # (GND)))
-- \var_debounced_count[2]~8\ = CARRY((!\var_debounced_count[1]~6\) # (!var_debounced_count(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => var_debounced_count(2),
	datad => VCC,
	cin => \var_debounced_count[1]~6\,
	combout => \var_debounced_count[2]~7_combout\,
	cout => \var_debounced_count[2]~8\);

-- Location: FF_X1_Y11_N21
\var_debounced_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \var_debounced_count[2]~7_combout\,
	ena => \var_debounced_count[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => var_debounced_count(2));

-- Location: LCCOMB_X1_Y11_N22
\var_debounced_count[3]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \var_debounced_count[3]~9_combout\ = var_debounced_count(3) $ (!\var_debounced_count[2]~8\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => var_debounced_count(3),
	cin => \var_debounced_count[2]~8\,
	combout => \var_debounced_count[3]~9_combout\);

-- Location: FF_X1_Y11_N23
\var_debounced_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \var_debounced_count[3]~9_combout\,
	ena => \var_debounced_count[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => var_debounced_count(3));

ww_x_count(0) <= \x_count[0]~output_o\;

ww_x_count(1) <= \x_count[1]~output_o\;

ww_x_count(2) <= \x_count[2]~output_o\;

ww_x_count(3) <= \x_count[3]~output_o\;

ww_debounced_count(0) <= \debounced_count[0]~output_o\;

ww_debounced_count(1) <= \debounced_count[1]~output_o\;

ww_debounced_count(2) <= \debounced_count[2]~output_o\;

ww_debounced_count(3) <= \debounced_count[3]~output_o\;
END structure;


