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

-- DATE "05/22/2018 19:59:47"

-- 
-- Device: Altera 5CEBA4F23C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	light_rotator IS
    PORT (
	clk_sys : IN std_logic;
	rst : IN std_logic;
	stp : IN std_logic;
	spd : IN std_logic;
	dir : IN std_logic;
	ssd : OUT std_logic_vector(6 DOWNTO 0);
	tout : OUT std_logic_vector(8 DOWNTO 0)
	);
END light_rotator;

-- Design Ports Information
-- clk_sys	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- stp	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd[0]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd[1]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd[2]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd[3]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd[4]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd[5]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd[6]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tout[0]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tout[1]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tout[2]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tout[3]	=>  Location: PIN_AA2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tout[4]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tout[5]	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tout[6]	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tout[7]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tout[8]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dir	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- spd	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF light_rotator IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk_sys : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_stp : std_logic;
SIGNAL ww_spd : std_logic;
SIGNAL ww_dir : std_logic;
SIGNAL ww_ssd : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_tout : std_logic_vector(8 DOWNTO 0);
SIGNAL \clk_sys~input_o\ : std_logic;
SIGNAL \stp~input_o\ : std_logic;
SIGNAL \dir~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \spd~input_o\ : std_logic;
SIGNAL \spd~inputCLKENA0_outclk\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \spd_pr_state.S1~q\ : std_logic;
SIGNAL \spd_pr_state.S2~0_combout\ : std_logic;
SIGNAL \spd_pr_state.S2~q\ : std_logic;
SIGNAL \spd_pr_state.S3~feeder_combout\ : std_logic;
SIGNAL \spd_pr_state.S3~q\ : std_logic;
SIGNAL \spd_pr_state.S4~q\ : std_logic;
SIGNAL \spd_pr_state.S5~feeder_combout\ : std_logic;
SIGNAL \spd_pr_state.S5~q\ : std_logic;
SIGNAL \spd_pr_state.S6~feeder_combout\ : std_logic;
SIGNAL \spd_pr_state.S6~q\ : std_logic;
SIGNAL \spd_pr_state.S1~0_combout\ : std_logic;
SIGNAL \spd_pr_state.S1~DUPLICATE_q\ : std_logic;
SIGNAL \WideOr21~combout\ : std_logic;
SIGNAL \WideOr20~combout\ : std_logic;
SIGNAL \T1~1_combout\ : std_logic;
SIGNAL \spd_pr_state.S2~DUPLICATE_q\ : std_logic;
SIGNAL \T1~2_combout\ : std_logic;
SIGNAL \T1~3_combout\ : std_logic;
SIGNAL \WideOr19~combout\ : std_logic;
SIGNAL \WideOr18~combout\ : std_logic;
SIGNAL \ALT_INV_spd_pr_state.S2~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_spd_pr_state.S1~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_spd~inputCLKENA0_outclk\ : std_logic;
SIGNAL \ALT_INV_spd_pr_state.S4~q\ : std_logic;
SIGNAL \ALT_INV_T1~3_combout\ : std_logic;
SIGNAL \ALT_INV_spd_pr_state.S2~q\ : std_logic;
SIGNAL \ALT_INV_WideOr20~combout\ : std_logic;
SIGNAL \ALT_INV_spd_pr_state.S6~q\ : std_logic;
SIGNAL \ALT_INV_spd_pr_state.S3~q\ : std_logic;
SIGNAL \ALT_INV_spd_pr_state.S1~q\ : std_logic;
SIGNAL \ALT_INV_spd_pr_state.S5~q\ : std_logic;

BEGIN

ww_clk_sys <= clk_sys;
ww_rst <= rst;
ww_stp <= stp;
ww_spd <= spd;
ww_dir <= dir;
ssd <= ww_ssd;
tout <= ww_tout;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_spd_pr_state.S2~DUPLICATE_q\ <= NOT \spd_pr_state.S2~DUPLICATE_q\;
\ALT_INV_spd_pr_state.S1~DUPLICATE_q\ <= NOT \spd_pr_state.S1~DUPLICATE_q\;
\ALT_INV_spd~inputCLKENA0_outclk\ <= NOT \spd~inputCLKENA0_outclk\;
\ALT_INV_spd_pr_state.S4~q\ <= NOT \spd_pr_state.S4~q\;
\ALT_INV_T1~3_combout\ <= NOT \T1~3_combout\;
\ALT_INV_spd_pr_state.S2~q\ <= NOT \spd_pr_state.S2~q\;
\ALT_INV_WideOr20~combout\ <= NOT \WideOr20~combout\;
\ALT_INV_spd_pr_state.S6~q\ <= NOT \spd_pr_state.S6~q\;
\ALT_INV_spd_pr_state.S3~q\ <= NOT \spd_pr_state.S3~q\;
\ALT_INV_spd_pr_state.S1~q\ <= NOT \spd_pr_state.S1~q\;
\ALT_INV_spd_pr_state.S5~q\ <= NOT \spd_pr_state.S5~q\;

-- Location: IOOBUF_X46_Y0_N36
\ssd[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_ssd(0));

-- Location: IOOBUF_X50_Y0_N53
\ssd[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_ssd(1));

-- Location: IOOBUF_X48_Y0_N93
\ssd[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_ssd(2));

-- Location: IOOBUF_X50_Y0_N36
\ssd[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_ssd(3));

-- Location: IOOBUF_X48_Y0_N76
\ssd[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_ssd(4));

-- Location: IOOBUF_X51_Y0_N36
\ssd[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_ssd(5));

-- Location: IOOBUF_X52_Y0_N53
\ssd[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ssd(6));

-- Location: IOOBUF_X22_Y0_N19
\tout[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_tout(0));

-- Location: IOOBUF_X0_Y18_N45
\tout[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \WideOr21~combout\,
	devoe => ww_devoe,
	o => ww_tout(1));

-- Location: IOOBUF_X0_Y18_N62
\tout[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_WideOr20~combout\,
	devoe => ww_devoe,
	o => ww_tout(2));

-- Location: IOOBUF_X0_Y18_N79
\tout[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \T1~1_combout\,
	devoe => ww_devoe,
	o => ww_tout(3));

-- Location: IOOBUF_X0_Y19_N39
\tout[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \T1~2_combout\,
	devoe => ww_devoe,
	o => ww_tout(4));

-- Location: IOOBUF_X0_Y18_N96
\tout[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_T1~3_combout\,
	devoe => ww_devoe,
	o => ww_tout(5));

-- Location: IOOBUF_X0_Y20_N22
\tout[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \WideOr19~combout\,
	devoe => ww_devoe,
	o => ww_tout(6));

-- Location: IOOBUF_X0_Y19_N22
\tout[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \WideOr18~combout\,
	devoe => ww_devoe,
	o => ww_tout(7));

-- Location: IOOBUF_X0_Y19_N56
\tout[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_tout(8));

-- Location: IOIBUF_X14_Y0_N1
\spd~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_spd,
	o => \spd~input_o\);

-- Location: CLKCTRL_G5
\spd~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \spd~input_o\,
	outclk => \spd~inputCLKENA0_outclk\);

-- Location: IOIBUF_X10_Y0_N92
\rst~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: FF_X1_Y18_N14
\spd_pr_state.S1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_spd~inputCLKENA0_outclk\,
	d => \spd_pr_state.S1~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spd_pr_state.S1~q\);

-- Location: LABCELL_X1_Y18_N48
\spd_pr_state.S2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \spd_pr_state.S2~0_combout\ = ( !\spd_pr_state.S1~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_spd_pr_state.S1~q\,
	combout => \spd_pr_state.S2~0_combout\);

-- Location: FF_X1_Y18_N50
\spd_pr_state.S2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_spd~inputCLKENA0_outclk\,
	d => \spd_pr_state.S2~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spd_pr_state.S2~q\);

-- Location: LABCELL_X1_Y18_N39
\spd_pr_state.S3~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \spd_pr_state.S3~feeder_combout\ = ( \spd_pr_state.S2~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_spd_pr_state.S2~q\,
	combout => \spd_pr_state.S3~feeder_combout\);

-- Location: FF_X1_Y18_N41
\spd_pr_state.S3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_spd~inputCLKENA0_outclk\,
	d => \spd_pr_state.S3~feeder_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spd_pr_state.S3~q\);

-- Location: FF_X1_Y18_N44
\spd_pr_state.S4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_spd~inputCLKENA0_outclk\,
	asdata => \spd_pr_state.S3~q\,
	clrn => \rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spd_pr_state.S4~q\);

-- Location: LABCELL_X1_Y18_N57
\spd_pr_state.S5~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \spd_pr_state.S5~feeder_combout\ = \spd_pr_state.S4~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_spd_pr_state.S4~q\,
	combout => \spd_pr_state.S5~feeder_combout\);

-- Location: FF_X1_Y18_N59
\spd_pr_state.S5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_spd~inputCLKENA0_outclk\,
	d => \spd_pr_state.S5~feeder_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spd_pr_state.S5~q\);

-- Location: LABCELL_X1_Y18_N27
\spd_pr_state.S6~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \spd_pr_state.S6~feeder_combout\ = \spd_pr_state.S5~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_spd_pr_state.S5~q\,
	combout => \spd_pr_state.S6~feeder_combout\);

-- Location: FF_X1_Y18_N28
\spd_pr_state.S6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_spd~inputCLKENA0_outclk\,
	d => \spd_pr_state.S6~feeder_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spd_pr_state.S6~q\);

-- Location: LABCELL_X1_Y18_N12
\spd_pr_state.S1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \spd_pr_state.S1~0_combout\ = !\spd_pr_state.S6~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_spd_pr_state.S6~q\,
	combout => \spd_pr_state.S1~0_combout\);

-- Location: FF_X1_Y18_N13
\spd_pr_state.S1~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_spd~inputCLKENA0_outclk\,
	d => \spd_pr_state.S1~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spd_pr_state.S1~DUPLICATE_q\);

-- Location: LABCELL_X1_Y18_N51
WideOr21 : cyclonev_lcell_comb
-- Equation(s):
-- \WideOr21~combout\ = ( \spd_pr_state.S3~q\ ) # ( !\spd_pr_state.S3~q\ & ( (!\spd_pr_state.S1~DUPLICATE_q\) # (\spd_pr_state.S5~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100111111001111110011111100111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_spd_pr_state.S1~DUPLICATE_q\,
	datac => \ALT_INV_spd_pr_state.S5~q\,
	dataf => \ALT_INV_spd_pr_state.S3~q\,
	combout => \WideOr21~combout\);

-- Location: LABCELL_X1_Y18_N18
WideOr20 : cyclonev_lcell_comb
-- Equation(s):
-- \WideOr20~combout\ = ( \spd_pr_state.S6~q\ ) # ( !\spd_pr_state.S6~q\ & ( (!\spd_pr_state.S1~DUPLICATE_q\) # (\spd_pr_state.S3~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100110011111111110011001111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_spd_pr_state.S3~q\,
	datad => \ALT_INV_spd_pr_state.S1~DUPLICATE_q\,
	dataf => \ALT_INV_spd_pr_state.S6~q\,
	combout => \WideOr20~combout\);

-- Location: LABCELL_X1_Y18_N6
\T1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \T1~1_combout\ = ( \spd_pr_state.S6~q\ ) # ( !\spd_pr_state.S6~q\ & ( !\spd_pr_state.S1~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_spd_pr_state.S1~DUPLICATE_q\,
	dataf => \ALT_INV_spd_pr_state.S6~q\,
	combout => \T1~1_combout\);

-- Location: FF_X1_Y18_N49
\spd_pr_state.S2~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_spd~inputCLKENA0_outclk\,
	d => \spd_pr_state.S2~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spd_pr_state.S2~DUPLICATE_q\);

-- Location: LABCELL_X1_Y18_N30
\T1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \T1~2_combout\ = ( \spd_pr_state.S2~DUPLICATE_q\ & ( \spd_pr_state.S1~DUPLICATE_q\ ) ) # ( \spd_pr_state.S2~DUPLICATE_q\ & ( !\spd_pr_state.S1~DUPLICATE_q\ ) ) # ( !\spd_pr_state.S2~DUPLICATE_q\ & ( !\spd_pr_state.S1~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_spd_pr_state.S2~DUPLICATE_q\,
	dataf => \ALT_INV_spd_pr_state.S1~DUPLICATE_q\,
	combout => \T1~2_combout\);

-- Location: LABCELL_X1_Y18_N45
\T1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \T1~3_combout\ = ( \spd_pr_state.S3~q\ ) # ( !\spd_pr_state.S3~q\ & ( \spd_pr_state.S5~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_spd_pr_state.S5~q\,
	dataf => \ALT_INV_spd_pr_state.S3~q\,
	combout => \T1~3_combout\);

-- Location: LABCELL_X1_Y18_N42
WideOr19 : cyclonev_lcell_comb
-- Equation(s):
-- \WideOr19~combout\ = ( \spd_pr_state.S1~DUPLICATE_q\ & ( (\spd_pr_state.S4~q\) # (\spd_pr_state.S5~q\) ) ) # ( !\spd_pr_state.S1~DUPLICATE_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_spd_pr_state.S5~q\,
	datad => \ALT_INV_spd_pr_state.S4~q\,
	dataf => \ALT_INV_spd_pr_state.S1~DUPLICATE_q\,
	combout => \WideOr19~combout\);

-- Location: LABCELL_X1_Y18_N15
WideOr18 : cyclonev_lcell_comb
-- Equation(s):
-- \WideOr18~combout\ = ( \spd_pr_state.S3~q\ ) # ( !\spd_pr_state.S3~q\ & ( (!\spd_pr_state.S1~DUPLICATE_q\) # (\spd_pr_state.S2~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011111111111100001111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_spd_pr_state.S1~DUPLICATE_q\,
	datad => \ALT_INV_spd_pr_state.S2~DUPLICATE_q\,
	dataf => \ALT_INV_spd_pr_state.S3~q\,
	combout => \WideOr18~combout\);

-- Location: IOIBUF_X22_Y0_N1
\clk_sys~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_sys,
	o => \clk_sys~input_o\);

-- Location: IOIBUF_X14_Y0_N18
\stp~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_stp,
	o => \stp~input_o\);

-- Location: IOIBUF_X33_Y0_N41
\dir~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dir,
	o => \dir~input_o\);

-- Location: MLABCELL_X49_Y9_N0
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


