-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "04/24/2018 14:44:06"

-- 
-- Device: Altera EP4CGX15BF14C6 Package FBGA169
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	bit_counter IS
    PORT (
	x : IN std_logic_vector(7 DOWNTO 0);
	y : OUT std_logic_vector(3 DOWNTO 0);
	ssd : OUT std_logic_vector(6 DOWNTO 0)
	);
END bit_counter;

-- Design Ports Information
-- y[0]	=>  Location: PIN_M13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[1]	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[2]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[3]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd[0]	=>  Location: PIN_K13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd[1]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd[2]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd[3]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd[4]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd[5]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd[6]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[0]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[1]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[2]	=>  Location: PIN_L11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[3]	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[4]	=>  Location: PIN_K11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[5]	=>  Location: PIN_K12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[6]	=>  Location: PIN_N13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[7]	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF bit_counter IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_x : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_y : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_ssd : std_logic_vector(6 DOWNTO 0);
SIGNAL \y[0]~output_o\ : std_logic;
SIGNAL \y[1]~output_o\ : std_logic;
SIGNAL \y[2]~output_o\ : std_logic;
SIGNAL \y[3]~output_o\ : std_logic;
SIGNAL \ssd[0]~output_o\ : std_logic;
SIGNAL \ssd[1]~output_o\ : std_logic;
SIGNAL \ssd[2]~output_o\ : std_logic;
SIGNAL \ssd[3]~output_o\ : std_logic;
SIGNAL \ssd[4]~output_o\ : std_logic;
SIGNAL \ssd[5]~output_o\ : std_logic;
SIGNAL \ssd[6]~output_o\ : std_logic;
SIGNAL \x[4]~input_o\ : std_logic;
SIGNAL \x[3]~input_o\ : std_logic;
SIGNAL \x[1]~input_o\ : std_logic;
SIGNAL \x[2]~input_o\ : std_logic;
SIGNAL \x[0]~input_o\ : std_logic;
SIGNAL \leading_ones_count[5][2]~0_combout\ : std_logic;
SIGNAL \x[6]~input_o\ : std_logic;
SIGNAL \x[5]~input_o\ : std_logic;
SIGNAL \leading_ones_count[5][0]~1_combout\ : std_logic;
SIGNAL \leading_ones[6]~2_combout\ : std_logic;
SIGNAL \leading_ones_count[6][0]~2_combout\ : std_logic;
SIGNAL \Add6~0_combout\ : std_logic;
SIGNAL \x[7]~input_o\ : std_logic;
SIGNAL \Add7~0_combout\ : std_logic;
SIGNAL \leading_ones_count[6][1]~3_combout\ : std_logic;
SIGNAL \leading_ones_count[6][1]~4_combout\ : std_logic;
SIGNAL \Add6~1\ : std_logic;
SIGNAL \Add6~2_combout\ : std_logic;
SIGNAL \Add7~1\ : std_logic;
SIGNAL \Add7~2_combout\ : std_logic;
SIGNAL \Add6~3\ : std_logic;
SIGNAL \Add6~4_combout\ : std_logic;
SIGNAL \Add7~3\ : std_logic;
SIGNAL \Add7~4_combout\ : std_logic;
SIGNAL \Add6~5\ : std_logic;
SIGNAL \Add6~6_combout\ : std_logic;
SIGNAL \Add7~5\ : std_logic;
SIGNAL \Add7~6_combout\ : std_logic;
SIGNAL \Add7~7\ : std_logic;
SIGNAL \Add7~8_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \WideOr5~combout\ : std_logic;
SIGNAL \WideOr4~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \WideNor0~0_combout\ : std_logic;
SIGNAL \WideOr4~combout\ : std_logic;
SIGNAL \WideOr3~2_combout\ : std_logic;
SIGNAL \WideOr3~combout\ : std_logic;
SIGNAL \WideOr2~combout\ : std_logic;
SIGNAL \WideOr1~0_combout\ : std_logic;
SIGNAL \WideOr1~combout\ : std_logic;
SIGNAL \WideOr0~0_combout\ : std_logic;
SIGNAL \WideOr0~combout\ : std_logic;
SIGNAL leading_ones : std_logic_vector(8 DOWNTO 0);
SIGNAL \ALT_INV_WideOr0~combout\ : std_logic;
SIGNAL \ALT_INV_WideOr1~combout\ : std_logic;
SIGNAL \ALT_INV_WideOr2~combout\ : std_logic;
SIGNAL \ALT_INV_WideOr4~combout\ : std_logic;
SIGNAL \ALT_INV_Equal2~0_combout\ : std_logic;
SIGNAL \ALT_INV_WideOr5~combout\ : std_logic;

BEGIN

ww_x <= x;
y <= ww_y;
ssd <= ww_ssd;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_WideOr0~combout\ <= NOT \WideOr0~combout\;
\ALT_INV_WideOr1~combout\ <= NOT \WideOr1~combout\;
\ALT_INV_WideOr2~combout\ <= NOT \WideOr2~combout\;
\ALT_INV_WideOr4~combout\ <= NOT \WideOr4~combout\;
\ALT_INV_Equal2~0_combout\ <= NOT \Equal2~0_combout\;
\ALT_INV_WideOr5~combout\ <= NOT \WideOr5~combout\;

-- Location: IOOBUF_X33_Y10_N2
\y[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add7~0_combout\,
	devoe => ww_devoe,
	o => \y[0]~output_o\);

-- Location: IOOBUF_X33_Y22_N2
\y[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add7~2_combout\,
	devoe => ww_devoe,
	o => \y[1]~output_o\);

-- Location: IOOBUF_X29_Y31_N2
\y[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add7~4_combout\,
	devoe => ww_devoe,
	o => \y[2]~output_o\);

-- Location: IOOBUF_X33_Y15_N9
\y[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add7~6_combout\,
	devoe => ww_devoe,
	o => \y[3]~output_o\);

-- Location: IOOBUF_X33_Y15_N2
\ssd[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_WideOr5~combout\,
	devoe => ww_devoe,
	o => \ssd[0]~output_o\);

-- Location: IOOBUF_X33_Y24_N9
\ssd[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_WideOr4~combout\,
	devoe => ww_devoe,
	o => \ssd[1]~output_o\);

-- Location: IOOBUF_X33_Y14_N9
\ssd[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WideOr3~combout\,
	devoe => ww_devoe,
	o => \ssd[2]~output_o\);

-- Location: IOOBUF_X29_Y31_N9
\ssd[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_WideOr2~combout\,
	devoe => ww_devoe,
	o => \ssd[3]~output_o\);

-- Location: IOOBUF_X33_Y22_N9
\ssd[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Equal2~0_combout\,
	devoe => ww_devoe,
	o => \ssd[4]~output_o\);

-- Location: IOOBUF_X33_Y24_N2
\ssd[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_WideOr1~combout\,
	devoe => ww_devoe,
	o => \ssd[5]~output_o\);

-- Location: IOOBUF_X24_Y31_N2
\ssd[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_WideOr0~combout\,
	devoe => ww_devoe,
	o => \ssd[6]~output_o\);

-- Location: IOIBUF_X33_Y11_N1
\x[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(4),
	o => \x[4]~input_o\);

-- Location: IOIBUF_X29_Y0_N1
\x[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(3),
	o => \x[3]~input_o\);

-- Location: IOIBUF_X33_Y16_N1
\x[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(1),
	o => \x[1]~input_o\);

-- Location: IOIBUF_X31_Y0_N1
\x[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(2),
	o => \x[2]~input_o\);

-- Location: IOIBUF_X33_Y16_N8
\x[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(0),
	o => \x[0]~input_o\);

-- Location: LCCOMB_X30_Y11_N24
\leading_ones_count[5][2]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \leading_ones_count[5][2]~0_combout\ = (\x[3]~input_o\ & (\x[1]~input_o\ & (\x[2]~input_o\ & \x[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x[3]~input_o\,
	datab => \x[1]~input_o\,
	datac => \x[2]~input_o\,
	datad => \x[0]~input_o\,
	combout => \leading_ones_count[5][2]~0_combout\);

-- Location: IOIBUF_X33_Y10_N8
\x[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(6),
	o => \x[6]~input_o\);

-- Location: IOIBUF_X33_Y11_N8
\x[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(5),
	o => \x[5]~input_o\);

-- Location: LCCOMB_X30_Y11_N22
\leading_ones[7]\ : cycloneiv_lcell_comb
-- Equation(s):
-- leading_ones(7) = (\x[4]~input_o\ & (\leading_ones_count[5][2]~0_combout\ & (\x[6]~input_o\ & \x[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x[4]~input_o\,
	datab => \leading_ones_count[5][2]~0_combout\,
	datac => \x[6]~input_o\,
	datad => \x[5]~input_o\,
	combout => leading_ones(7));

-- Location: LCCOMB_X30_Y11_N20
\leading_ones_count[5][0]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \leading_ones_count[5][0]~1_combout\ = ((\x[2]~input_o\ & ((\x[4]~input_o\) # (!\x[3]~input_o\)))) # (!\x[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x[4]~input_o\,
	datab => \x[3]~input_o\,
	datac => \x[2]~input_o\,
	datad => \x[1]~input_o\,
	combout => \leading_ones_count[5][0]~1_combout\);

-- Location: LCCOMB_X30_Y11_N26
\leading_ones[6]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \leading_ones[6]~2_combout\ = (\x[4]~input_o\ & \x[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \x[4]~input_o\,
	datad => \x[5]~input_o\,
	combout => \leading_ones[6]~2_combout\);

-- Location: LCCOMB_X30_Y11_N14
\leading_ones_count[6][0]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \leading_ones_count[6][0]~2_combout\ = (\leading_ones_count[5][0]~1_combout\ & (\x[0]~input_o\ $ (((\leading_ones_count[5][2]~0_combout\ & \leading_ones[6]~2_combout\))))) # (!\leading_ones_count[5][0]~1_combout\ & (\leading_ones_count[5][2]~0_combout\ & 
-- (\leading_ones[6]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \leading_ones_count[5][0]~1_combout\,
	datab => \leading_ones_count[5][2]~0_combout\,
	datac => \leading_ones[6]~2_combout\,
	datad => \x[0]~input_o\,
	combout => \leading_ones_count[6][0]~2_combout\);

-- Location: LCCOMB_X30_Y11_N0
\Add6~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add6~0_combout\ = (leading_ones(7) & (\leading_ones_count[6][0]~2_combout\ $ (VCC))) # (!leading_ones(7) & (\leading_ones_count[6][0]~2_combout\ & VCC))
-- \Add6~1\ = CARRY((leading_ones(7) & \leading_ones_count[6][0]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => leading_ones(7),
	datab => \leading_ones_count[6][0]~2_combout\,
	datad => VCC,
	combout => \Add6~0_combout\,
	cout => \Add6~1\);

-- Location: IOIBUF_X33_Y12_N8
\x[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(7),
	o => \x[7]~input_o\);

-- Location: LCCOMB_X30_Y11_N16
\leading_ones[8]\ : cycloneiv_lcell_comb
-- Equation(s):
-- leading_ones(8) = (\x[6]~input_o\ & (\leading_ones_count[5][2]~0_combout\ & (\leading_ones[6]~2_combout\ & \x[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x[6]~input_o\,
	datab => \leading_ones_count[5][2]~0_combout\,
	datac => \leading_ones[6]~2_combout\,
	datad => \x[7]~input_o\,
	combout => leading_ones(8));

-- Location: LCCOMB_X30_Y20_N6
\Add7~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add7~0_combout\ = (\Add6~0_combout\ & (leading_ones(8) $ (VCC))) # (!\Add6~0_combout\ & (leading_ones(8) & VCC))
-- \Add7~1\ = CARRY((\Add6~0_combout\ & leading_ones(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~0_combout\,
	datab => leading_ones(8),
	datad => VCC,
	combout => \Add7~0_combout\,
	cout => \Add7~1\);

-- Location: LCCOMB_X30_Y11_N10
\leading_ones_count[6][1]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \leading_ones_count[6][1]~3_combout\ = (((\x[4]~input_o\ & \x[5]~input_o\)) # (!\x[2]~input_o\)) # (!\x[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x[4]~input_o\,
	datab => \x[3]~input_o\,
	datac => \x[2]~input_o\,
	datad => \x[5]~input_o\,
	combout => \leading_ones_count[6][1]~3_combout\);

-- Location: LCCOMB_X30_Y11_N12
\leading_ones_count[6][1]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \leading_ones_count[6][1]~4_combout\ = (\leading_ones_count[6][1]~3_combout\ & (\x[1]~input_o\ & \x[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \leading_ones_count[6][1]~3_combout\,
	datab => \x[1]~input_o\,
	datad => \x[0]~input_o\,
	combout => \leading_ones_count[6][1]~4_combout\);

-- Location: LCCOMB_X30_Y11_N2
\Add6~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add6~2_combout\ = (\leading_ones_count[6][1]~4_combout\ & (!\Add6~1\)) # (!\leading_ones_count[6][1]~4_combout\ & ((\Add6~1\) # (GND)))
-- \Add6~3\ = CARRY((!\Add6~1\) # (!\leading_ones_count[6][1]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \leading_ones_count[6][1]~4_combout\,
	datad => VCC,
	cin => \Add6~1\,
	combout => \Add6~2_combout\,
	cout => \Add6~3\);

-- Location: LCCOMB_X30_Y20_N8
\Add7~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add7~2_combout\ = (\Add6~2_combout\ & (!\Add7~1\)) # (!\Add6~2_combout\ & ((\Add7~1\) # (GND)))
-- \Add7~3\ = CARRY((!\Add7~1\) # (!\Add6~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add6~2_combout\,
	datad => VCC,
	cin => \Add7~1\,
	combout => \Add7~2_combout\,
	cout => \Add7~3\);

-- Location: LCCOMB_X30_Y11_N4
\Add6~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add6~4_combout\ = (\leading_ones_count[5][2]~0_combout\ & (\Add6~3\ $ (GND))) # (!\leading_ones_count[5][2]~0_combout\ & (!\Add6~3\ & VCC))
-- \Add6~5\ = CARRY((\leading_ones_count[5][2]~0_combout\ & !\Add6~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \leading_ones_count[5][2]~0_combout\,
	datad => VCC,
	cin => \Add6~3\,
	combout => \Add6~4_combout\,
	cout => \Add6~5\);

-- Location: LCCOMB_X30_Y20_N10
\Add7~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add7~4_combout\ = (\Add6~4_combout\ & (\Add7~3\ $ (GND))) # (!\Add6~4_combout\ & (!\Add7~3\ & VCC))
-- \Add7~5\ = CARRY((\Add6~4_combout\ & !\Add7~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~4_combout\,
	datad => VCC,
	cin => \Add7~3\,
	combout => \Add7~4_combout\,
	cout => \Add7~5\);

-- Location: LCCOMB_X30_Y11_N6
\Add6~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add6~6_combout\ = \Add6~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Add6~5\,
	combout => \Add6~6_combout\);

-- Location: LCCOMB_X30_Y20_N12
\Add7~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add7~6_combout\ = (\Add6~6_combout\ & (!\Add7~5\)) # (!\Add6~6_combout\ & ((\Add7~5\) # (GND)))
-- \Add7~7\ = CARRY((!\Add7~5\) # (!\Add6~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~6_combout\,
	datad => VCC,
	cin => \Add7~5\,
	combout => \Add7~6_combout\,
	cout => \Add7~7\);

-- Location: LCCOMB_X30_Y20_N14
\Add7~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add7~8_combout\ = !\Add7~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Add7~7\,
	combout => \Add7~8_combout\);

-- Location: LCCOMB_X30_Y20_N0
\Equal0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!\Add7~8_combout\ & !\Add7~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add7~8_combout\,
	datad => \Add7~6_combout\,
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X30_Y20_N18
WideOr5 : cycloneiv_lcell_comb
-- Equation(s):
-- \WideOr5~combout\ = (\Equal0~0_combout\ & ((\Add7~4_combout\ & (\Add7~2_combout\ & \Add7~0_combout\)) # (!\Add7~4_combout\ & (!\Add7~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~4_combout\,
	datab => \Equal0~0_combout\,
	datac => \Add7~2_combout\,
	datad => \Add7~0_combout\,
	combout => \WideOr5~combout\);

-- Location: LCCOMB_X30_Y20_N26
\WideOr4~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WideOr4~0_combout\ = (\Equal0~0_combout\ & (\Add7~0_combout\ & ((\Add7~2_combout\) # (!\Add7~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~4_combout\,
	datab => \Equal0~0_combout\,
	datac => \Add7~2_combout\,
	datad => \Add7~0_combout\,
	combout => \WideOr4~0_combout\);

-- Location: LCCOMB_X30_Y20_N28
\Equal0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!\Add7~6_combout\ & (!\Add7~8_combout\ & !\Add7~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~6_combout\,
	datac => \Add7~8_combout\,
	datad => \Add7~0_combout\,
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X30_Y20_N24
\Equal2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (\Equal0~1_combout\ & (\Add7~2_combout\ & !\Add7~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~1_combout\,
	datac => \Add7~2_combout\,
	datad => \Add7~4_combout\,
	combout => \Equal2~0_combout\);

-- Location: LCCOMB_X30_Y20_N4
\WideNor0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WideNor0~0_combout\ = (!\Add7~8_combout\ & (((!\Add7~2_combout\ & !\Add7~4_combout\)) # (!\Add7~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~6_combout\,
	datab => \Add7~8_combout\,
	datac => \Add7~2_combout\,
	datad => \Add7~4_combout\,
	combout => \WideNor0~0_combout\);

-- Location: LCCOMB_X29_Y24_N24
WideOr4 : cycloneiv_lcell_comb
-- Equation(s):
-- \WideOr4~combout\ = (\WideOr4~0_combout\) # ((\Equal2~0_combout\) # (!\WideNor0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \WideOr4~0_combout\,
	datac => \Equal2~0_combout\,
	datad => \WideNor0~0_combout\,
	combout => \WideOr4~combout\);

-- Location: LCCOMB_X30_Y20_N20
\WideOr3~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WideOr3~2_combout\ = (\Add7~2_combout\ & (((\Add7~6_combout\) # (!\Add7~0_combout\)))) # (!\Add7~2_combout\ & ((\Add7~4_combout\ & (\Add7~6_combout\)) # (!\Add7~4_combout\ & ((!\Add7~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~4_combout\,
	datab => \Add7~6_combout\,
	datac => \Add7~2_combout\,
	datad => \Add7~0_combout\,
	combout => \WideOr3~2_combout\);

-- Location: LCCOMB_X30_Y20_N30
WideOr3 : cycloneiv_lcell_comb
-- Equation(s):
-- \WideOr3~combout\ = (\Add7~8_combout\) # (\WideOr3~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add7~8_combout\,
	datad => \WideOr3~2_combout\,
	combout => \WideOr3~combout\);

-- Location: LCCOMB_X30_Y20_N22
WideOr2 : cycloneiv_lcell_comb
-- Equation(s):
-- \WideOr2~combout\ = (\Equal0~0_combout\ & ((\Add7~4_combout\ & (\Add7~2_combout\ $ (!\Add7~0_combout\))) # (!\Add7~4_combout\ & (!\Add7~2_combout\ & \Add7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~4_combout\,
	datab => \Equal0~0_combout\,
	datac => \Add7~2_combout\,
	datad => \Add7~0_combout\,
	combout => \WideOr2~combout\);

-- Location: LCCOMB_X30_Y20_N16
\WideOr1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WideOr1~0_combout\ = (\Add7~4_combout\ & (\Equal0~0_combout\ & (\Add7~2_combout\ $ (\Add7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~4_combout\,
	datab => \Equal0~0_combout\,
	datac => \Add7~2_combout\,
	datad => \Add7~0_combout\,
	combout => \WideOr1~0_combout\);

-- Location: LCCOMB_X29_Y24_N26
WideOr1 : cycloneiv_lcell_comb
-- Equation(s):
-- \WideOr1~combout\ = (\WideOr1~0_combout\) # (!\WideNor0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \WideOr1~0_combout\,
	datad => \WideNor0~0_combout\,
	combout => \WideOr1~combout\);

-- Location: LCCOMB_X30_Y20_N2
\WideOr0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WideOr0~0_combout\ = (\Equal0~0_combout\ & (!\Add7~2_combout\ & (\Add7~4_combout\ $ (\Add7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~4_combout\,
	datab => \Equal0~0_combout\,
	datac => \Add7~2_combout\,
	datad => \Add7~0_combout\,
	combout => \WideOr0~0_combout\);

-- Location: LCCOMB_X29_Y24_N4
WideOr0 : cycloneiv_lcell_comb
-- Equation(s):
-- \WideOr0~combout\ = (\WideOr0~0_combout\) # (!\WideNor0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr0~0_combout\,
	datad => \WideNor0~0_combout\,
	combout => \WideOr0~combout\);

ww_y(0) <= \y[0]~output_o\;

ww_y(1) <= \y[1]~output_o\;

ww_y(2) <= \y[2]~output_o\;

ww_y(3) <= \y[3]~output_o\;

ww_ssd(0) <= \ssd[0]~output_o\;

ww_ssd(1) <= \ssd[1]~output_o\;

ww_ssd(2) <= \ssd[2]~output_o\;

ww_ssd(3) <= \ssd[3]~output_o\;

ww_ssd(4) <= \ssd[4]~output_o\;

ww_ssd(5) <= \ssd[5]~output_o\;

ww_ssd(6) <= \ssd[6]~output_o\;
END structure;


