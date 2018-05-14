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

-- DATE "05/13/2018 16:37:49"

-- 
-- Device: Altera EP3C5F256C6 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	calc_ceil_log2 IS
    PORT (
	x : IN std_logic_vector(7 DOWNTO 0);
	y : OUT std_logic_vector(7 DOWNTO 0)
	);
END calc_ceil_log2;

-- Design Ports Information
-- y[0]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[1]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[2]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[3]	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[4]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[5]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[6]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[7]	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[0]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[1]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[2]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[3]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[4]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[7]	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[6]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[5]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF calc_ceil_log2 IS
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
SIGNAL ww_y : std_logic_vector(7 DOWNTO 0);
SIGNAL \y[0]~output_o\ : std_logic;
SIGNAL \y[1]~output_o\ : std_logic;
SIGNAL \y[2]~output_o\ : std_logic;
SIGNAL \y[3]~output_o\ : std_logic;
SIGNAL \y[4]~output_o\ : std_logic;
SIGNAL \y[5]~output_o\ : std_logic;
SIGNAL \y[6]~output_o\ : std_logic;
SIGNAL \y[7]~output_o\ : std_logic;
SIGNAL \x[3]~input_o\ : std_logic;
SIGNAL \x[4]~input_o\ : std_logic;
SIGNAL \x[2]~input_o\ : std_logic;
SIGNAL \x[5]~input_o\ : std_logic;
SIGNAL \ceil_log2~39_combout\ : std_logic;
SIGNAL \x[0]~input_o\ : std_logic;
SIGNAL \x[1]~input_o\ : std_logic;
SIGNAL \ceil_log2~37_combout\ : std_logic;
SIGNAL \x[7]~input_o\ : std_logic;
SIGNAL \x[6]~input_o\ : std_logic;
SIGNAL \ceil_log2~41_combout\ : std_logic;
SIGNAL \ceil_log2~38_combout\ : std_logic;
SIGNAL \ceil_log2~43_combout\ : std_logic;
SIGNAL \ceil_log2~7_combout\ : std_logic;
SIGNAL \ceil_log2~5_combout\ : std_logic;
SIGNAL \ceil_log2~51_combout\ : std_logic;
SIGNAL \LessThan5~1_combout\ : std_logic;
SIGNAL \ceil_log2~49_combout\ : std_logic;
SIGNAL \LessThan5~0_combout\ : std_logic;
SIGNAL \ceil_log2~42_combout\ : std_logic;
SIGNAL \ceil_log2~44_combout\ : std_logic;
SIGNAL \ceil_log2~17_combout\ : std_logic;
SIGNAL \ceil_log2~15_combout\ : std_logic;
SIGNAL \ceil_log2~52_combout\ : std_logic;
SIGNAL \ceil_log2~45_combout\ : std_logic;
SIGNAL \ceil_log2~46_combout\ : std_logic;
SIGNAL \ceil_log2~25_combout\ : std_logic;
SIGNAL \ceil_log2~53_combout\ : std_logic;
SIGNAL \ceil_log2~50_combout\ : std_logic;
SIGNAL \ceil_log2~40_combout\ : std_logic;
SIGNAL \ceil_log2~47_combout\ : std_logic;
SIGNAL \ceil_log2~48_combout\ : std_logic;
SIGNAL \ALT_INV_ceil_log2~48_combout\ : std_logic;

BEGIN

ww_x <= x;
y <= ww_y;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_ceil_log2~48_combout\ <= NOT \ceil_log2~48_combout\;

-- Location: IOOBUF_X28_Y24_N2
\y[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ceil_log2~44_combout\,
	devoe => ww_devoe,
	o => \y[0]~output_o\);

-- Location: IOOBUF_X25_Y24_N2
\y[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ceil_log2~46_combout\,
	devoe => ww_devoe,
	o => \y[1]~output_o\);

-- Location: IOOBUF_X0_Y7_N23
\y[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ceil_log2~47_combout\,
	devoe => ww_devoe,
	o => \y[2]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\y[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_ceil_log2~48_combout\,
	devoe => ww_devoe,
	o => \y[3]~output_o\);

-- Location: IOOBUF_X13_Y0_N23
\y[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \y[4]~output_o\);

-- Location: IOOBUF_X0_Y22_N16
\y[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \y[5]~output_o\);

-- Location: IOOBUF_X30_Y0_N9
\y[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \y[6]~output_o\);

-- Location: IOOBUF_X28_Y0_N16
\y[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \y[7]~output_o\);

-- Location: IOIBUF_X23_Y24_N1
\x[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(3),
	o => \x[3]~input_o\);

-- Location: IOIBUF_X0_Y10_N1
\x[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(4),
	o => \x[4]~input_o\);

-- Location: IOIBUF_X11_Y0_N22
\x[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(2),
	o => \x[2]~input_o\);

-- Location: IOIBUF_X16_Y0_N15
\x[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(5),
	o => \x[5]~input_o\);

-- Location: LCCOMB_X29_Y3_N12
\ceil_log2~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ceil_log2~39_combout\ = (!\x[3]~input_o\ & (!\x[4]~input_o\ & (!\x[2]~input_o\ & !\x[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x[3]~input_o\,
	datab => \x[4]~input_o\,
	datac => \x[2]~input_o\,
	datad => \x[5]~input_o\,
	combout => \ceil_log2~39_combout\);

-- Location: IOIBUF_X34_Y12_N8
\x[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(0),
	o => \x[0]~input_o\);

-- Location: IOIBUF_X34_Y12_N1
\x[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(1),
	o => \x[1]~input_o\);

-- Location: LCCOMB_X29_Y3_N16
\ceil_log2~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ceil_log2~37_combout\ = (!\x[0]~input_o\ & !\x[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \x[0]~input_o\,
	datad => \x[1]~input_o\,
	combout => \ceil_log2~37_combout\);

-- Location: IOIBUF_X28_Y0_N22
\x[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(7),
	o => \x[7]~input_o\);

-- Location: IOIBUF_X34_Y5_N22
\x[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(6),
	o => \x[6]~input_o\);

-- Location: LCCOMB_X29_Y3_N8
\ceil_log2~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ceil_log2~41_combout\ = (\ceil_log2~39_combout\ & (\ceil_log2~37_combout\ & (\x[7]~input_o\ & !\x[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ceil_log2~39_combout\,
	datab => \ceil_log2~37_combout\,
	datac => \x[7]~input_o\,
	datad => \x[6]~input_o\,
	combout => \ceil_log2~41_combout\);

-- Location: LCCOMB_X29_Y3_N2
\ceil_log2~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ceil_log2~38_combout\ = ((!\x[3]~input_o\ & (!\x[2]~input_o\ & \ceil_log2~37_combout\))) # (!\x[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x[3]~input_o\,
	datab => \x[4]~input_o\,
	datac => \x[2]~input_o\,
	datad => \ceil_log2~37_combout\,
	combout => \ceil_log2~38_combout\);

-- Location: LCCOMB_X29_Y3_N6
\ceil_log2~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ceil_log2~43_combout\ = (!\x[7]~input_o\ & ((\x[6]~input_o\) # ((\x[5]~input_o\) # (!\ceil_log2~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x[6]~input_o\,
	datab => \x[7]~input_o\,
	datac => \x[5]~input_o\,
	datad => \ceil_log2~38_combout\,
	combout => \ceil_log2~43_combout\);

-- Location: LCCOMB_X29_Y3_N0
\ceil_log2~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ceil_log2~7_combout\ = (\x[3]~input_o\ & (!\x[2]~input_o\ & (!\x[0]~input_o\ & !\x[1]~input_o\))) # (!\x[3]~input_o\ & ((\x[0]~input_o\ & (\x[2]~input_o\)) # (!\x[0]~input_o\ & ((\x[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x[3]~input_o\,
	datab => \x[2]~input_o\,
	datac => \x[0]~input_o\,
	datad => \x[1]~input_o\,
	combout => \ceil_log2~7_combout\);

-- Location: LCCOMB_X29_Y17_N0
\ceil_log2~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ceil_log2~5_combout\ = (!\x[5]~input_o\ & \ceil_log2~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \x[5]~input_o\,
	datac => \ceil_log2~7_combout\,
	combout => \ceil_log2~5_combout\);

-- Location: LCCOMB_X29_Y17_N26
\ceil_log2~51\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ceil_log2~51_combout\ = (!\x[7]~input_o\ & (\ceil_log2~5_combout\ & (!\x[4]~input_o\ & !\x[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x[7]~input_o\,
	datab => \ceil_log2~5_combout\,
	datac => \x[4]~input_o\,
	datad => \x[6]~input_o\,
	combout => \ceil_log2~51_combout\);

-- Location: LCCOMB_X29_Y3_N4
\LessThan5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan5~1_combout\ = (\x[6]~input_o\) # ((\x[5]~input_o\ & ((\x[3]~input_o\) # (\x[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x[6]~input_o\,
	datab => \x[5]~input_o\,
	datac => \x[3]~input_o\,
	datad => \x[4]~input_o\,
	combout => \LessThan5~1_combout\);

-- Location: LCCOMB_X29_Y3_N20
\ceil_log2~49\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ceil_log2~49_combout\ = (\x[6]~input_o\ & (((\x[1]~input_o\) # (\x[0]~input_o\)) # (!\ceil_log2~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ceil_log2~39_combout\,
	datab => \x[1]~input_o\,
	datac => \x[0]~input_o\,
	datad => \x[6]~input_o\,
	combout => \ceil_log2~49_combout\);

-- Location: LCCOMB_X29_Y3_N26
\LessThan5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan5~0_combout\ = (\x[5]~input_o\ & ((\x[0]~input_o\) # ((\x[2]~input_o\) # (\x[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x[0]~input_o\,
	datab => \x[5]~input_o\,
	datac => \x[2]~input_o\,
	datad => \x[1]~input_o\,
	combout => \LessThan5~0_combout\);

-- Location: LCCOMB_X29_Y17_N24
\ceil_log2~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ceil_log2~42_combout\ = (\ceil_log2~49_combout\) # ((!\LessThan5~1_combout\ & !\LessThan5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan5~1_combout\,
	datac => \ceil_log2~49_combout\,
	datad => \LessThan5~0_combout\,
	combout => \ceil_log2~42_combout\);

-- Location: LCCOMB_X29_Y17_N2
\ceil_log2~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ceil_log2~44_combout\ = (\ceil_log2~41_combout\) # ((\ceil_log2~51_combout\) # ((\ceil_log2~43_combout\ & \ceil_log2~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ceil_log2~41_combout\,
	datab => \ceil_log2~43_combout\,
	datac => \ceil_log2~51_combout\,
	datad => \ceil_log2~42_combout\,
	combout => \ceil_log2~44_combout\);

-- Location: LCCOMB_X29_Y3_N18
\ceil_log2~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ceil_log2~17_combout\ = (\x[3]~input_o\ & (!\x[2]~input_o\ & (!\x[0]~input_o\ & !\x[1]~input_o\))) # (!\x[3]~input_o\ & ((\x[2]~input_o\) # ((\x[0]~input_o\ & \x[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x[3]~input_o\,
	datab => \x[2]~input_o\,
	datac => \x[0]~input_o\,
	datad => \x[1]~input_o\,
	combout => \ceil_log2~17_combout\);

-- Location: LCCOMB_X29_Y17_N28
\ceil_log2~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ceil_log2~15_combout\ = (!\x[5]~input_o\ & \ceil_log2~17_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \x[5]~input_o\,
	datad => \ceil_log2~17_combout\,
	combout => \ceil_log2~15_combout\);

-- Location: LCCOMB_X29_Y17_N6
\ceil_log2~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ceil_log2~52_combout\ = (!\x[7]~input_o\ & (\ceil_log2~15_combout\ & (!\x[4]~input_o\ & !\x[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x[7]~input_o\,
	datab => \ceil_log2~15_combout\,
	datac => \x[4]~input_o\,
	datad => \x[6]~input_o\,
	combout => \ceil_log2~52_combout\);

-- Location: LCCOMB_X29_Y17_N12
\ceil_log2~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ceil_log2~45_combout\ = (\ceil_log2~43_combout\ & ((\LessThan5~1_combout\) # (\LessThan5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan5~1_combout\,
	datab => \ceil_log2~43_combout\,
	datad => \LessThan5~0_combout\,
	combout => \ceil_log2~45_combout\);

-- Location: LCCOMB_X29_Y17_N22
\ceil_log2~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ceil_log2~46_combout\ = (\ceil_log2~52_combout\) # ((\ceil_log2~41_combout\) # (\ceil_log2~45_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ceil_log2~52_combout\,
	datab => \ceil_log2~41_combout\,
	datad => \ceil_log2~45_combout\,
	combout => \ceil_log2~46_combout\);

-- Location: LCCOMB_X29_Y3_N30
\ceil_log2~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ceil_log2~25_combout\ = (\x[5]~input_o\) # ((\x[2]~input_o\ & ((\x[0]~input_o\) # (\x[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x[0]~input_o\,
	datab => \x[5]~input_o\,
	datac => \x[2]~input_o\,
	datad => \x[1]~input_o\,
	combout => \ceil_log2~25_combout\);

-- Location: LCCOMB_X29_Y3_N28
\ceil_log2~53\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ceil_log2~53_combout\ = (\ceil_log2~25_combout\) # ((\x[4]~input_o\) # ((\x[3]~input_o\) # (\x[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ceil_log2~25_combout\,
	datab => \x[4]~input_o\,
	datac => \x[3]~input_o\,
	datad => \x[6]~input_o\,
	combout => \ceil_log2~53_combout\);

-- Location: LCCOMB_X29_Y3_N14
\ceil_log2~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ceil_log2~50_combout\ = (!\x[6]~input_o\ & (!\x[4]~input_o\ & !\x[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x[6]~input_o\,
	datab => \x[4]~input_o\,
	datad => \x[5]~input_o\,
	combout => \ceil_log2~50_combout\);

-- Location: LCCOMB_X29_Y3_N22
\ceil_log2~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ceil_log2~40_combout\ = ((\x[3]~input_o\ & ((\x[2]~input_o\) # (!\ceil_log2~37_combout\)))) # (!\ceil_log2~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x[3]~input_o\,
	datab => \x[2]~input_o\,
	datac => \ceil_log2~50_combout\,
	datad => \ceil_log2~37_combout\,
	combout => \ceil_log2~40_combout\);

-- Location: LCCOMB_X29_Y3_N24
\ceil_log2~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ceil_log2~47_combout\ = (\ceil_log2~41_combout\) # ((\ceil_log2~53_combout\ & (\ceil_log2~40_combout\ & !\x[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ceil_log2~41_combout\,
	datab => \ceil_log2~53_combout\,
	datac => \ceil_log2~40_combout\,
	datad => \x[7]~input_o\,
	combout => \ceil_log2~47_combout\);

-- Location: LCCOMB_X29_Y3_N10
\ceil_log2~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ceil_log2~48_combout\ = ((\ceil_log2~39_combout\ & (\ceil_log2~37_combout\ & !\x[6]~input_o\))) # (!\x[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ceil_log2~39_combout\,
	datab => \ceil_log2~37_combout\,
	datac => \x[7]~input_o\,
	datad => \x[6]~input_o\,
	combout => \ceil_log2~48_combout\);

ww_y(0) <= \y[0]~output_o\;

ww_y(1) <= \y[1]~output_o\;

ww_y(2) <= \y[2]~output_o\;

ww_y(3) <= \y[3]~output_o\;

ww_y(4) <= \y[4]~output_o\;

ww_y(5) <= \y[5]~output_o\;

ww_y(6) <= \y[6]~output_o\;

ww_y(7) <= \y[7]~output_o\;
END structure;


