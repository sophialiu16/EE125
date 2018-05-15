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

-- DATE "05/14/2018 17:17:32"

-- 
-- Device: Altera EP3C5F256C6 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	kitchen_ctr IS
    PORT (
	rst : IN std_logic;
	down_en : IN std_logic;
	clk : IN std_logic;
	btn_press : IN std_logic;
	led_out : OUT std_logic;
	q : OUT std_logic_vector(5 DOWNTO 0)
	);
END kitchen_ctr;

-- Design Ports Information
-- led_out	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[0]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[1]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[2]	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[3]	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[4]	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[5]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- down_en	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- btn_press	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF kitchen_ctr IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_down_en : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_btn_press : std_logic;
SIGNAL ww_led_out : std_logic;
SIGNAL ww_q : std_logic_vector(5 DOWNTO 0);
SIGNAL \clock~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \led_out~output_o\ : std_logic;
SIGNAL \q[0]~output_o\ : std_logic;
SIGNAL \q[1]~output_o\ : std_logic;
SIGNAL \q[2]~output_o\ : std_logic;
SIGNAL \q[3]~output_o\ : std_logic;
SIGNAL \q[4]~output_o\ : std_logic;
SIGNAL \q[5]~output_o\ : std_logic;
SIGNAL \down_en~input_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \btn_press~input_o\ : std_logic;
SIGNAL \clock~combout\ : std_logic;
SIGNAL \clock~clkctrl_outclk\ : std_logic;
SIGNAL \Add1~51\ : std_logic;
SIGNAL \Add1~52_combout\ : std_logic;
SIGNAL \Add1~61\ : std_logic;
SIGNAL \Add1~62_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \count[1]~14_combout\ : std_logic;
SIGNAL \Add1~53\ : std_logic;
SIGNAL \Add1~54_combout\ : std_logic;
SIGNAL \Add1~55\ : std_logic;
SIGNAL \Add1~56_combout\ : std_logic;
SIGNAL \Add1~57\ : std_logic;
SIGNAL \Add1~58_combout\ : std_logic;
SIGNAL \Add1~59\ : std_logic;
SIGNAL \Add1~60_combout\ : std_logic;
SIGNAL \count[5]~17_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \count[2]~3_combout\ : std_logic;
SIGNAL \count[2]~0_combout\ : std_logic;
SIGNAL \count[2]~_emulated_q\ : std_logic;
SIGNAL \count[2]~2_combout\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \count[3]~5_combout\ : std_logic;
SIGNAL \count[3]~_emulated_q\ : std_logic;
SIGNAL \count[3]~4_combout\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \count[4]~7_combout\ : std_logic;
SIGNAL \count[4]~_emulated_q\ : std_logic;
SIGNAL \count[4]~6_combout\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \LessThan1~1_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \LessThan1~2_combout\ : std_logic;
SIGNAL \count[5]~18_combout\ : std_logic;
SIGNAL \count[2]~1_combout\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \count[5]~9_combout\ : std_logic;
SIGNAL \count[5]~_emulated_q\ : std_logic;
SIGNAL \count[5]~8_combout\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \Add1~15\ : std_logic;
SIGNAL \Add1~16_combout\ : std_logic;
SIGNAL \Add1~17\ : std_logic;
SIGNAL \Add1~18_combout\ : std_logic;
SIGNAL \Add1~19\ : std_logic;
SIGNAL \Add1~20_combout\ : std_logic;
SIGNAL \Add1~21\ : std_logic;
SIGNAL \Add1~22_combout\ : std_logic;
SIGNAL \Add1~23\ : std_logic;
SIGNAL \Add1~24_combout\ : std_logic;
SIGNAL \Add1~25\ : std_logic;
SIGNAL \Add1~26_combout\ : std_logic;
SIGNAL \Add1~27\ : std_logic;
SIGNAL \Add1~28_combout\ : std_logic;
SIGNAL \Add1~29\ : std_logic;
SIGNAL \Add1~30_combout\ : std_logic;
SIGNAL \Add1~31\ : std_logic;
SIGNAL \Add1~32_combout\ : std_logic;
SIGNAL \Add1~33\ : std_logic;
SIGNAL \Add1~34_combout\ : std_logic;
SIGNAL \Add1~35\ : std_logic;
SIGNAL \Add1~36_combout\ : std_logic;
SIGNAL \Add1~37\ : std_logic;
SIGNAL \Add1~38_combout\ : std_logic;
SIGNAL \Add1~39\ : std_logic;
SIGNAL \Add1~40_combout\ : std_logic;
SIGNAL \Add1~41\ : std_logic;
SIGNAL \Add1~42_combout\ : std_logic;
SIGNAL \Add1~43\ : std_logic;
SIGNAL \Add1~44_combout\ : std_logic;
SIGNAL \Add1~45\ : std_logic;
SIGNAL \Add1~46_combout\ : std_logic;
SIGNAL \Add1~47\ : std_logic;
SIGNAL \Add1~48_combout\ : std_logic;
SIGNAL \Add1~49\ : std_logic;
SIGNAL \Add1~50_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \Equal0~9_combout\ : std_logic;
SIGNAL \Equal0~10_combout\ : std_logic;
SIGNAL count : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_count[2]~0_combout\ : std_logic;
SIGNAL \ALT_INV_count[1]~14_combout\ : std_logic;

BEGIN

ww_rst <= rst;
ww_down_en <= down_en;
ww_clk <= clk;
ww_btn_press <= btn_press;
led_out <= ww_led_out;
q <= ww_q;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clock~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock~combout\);
\ALT_INV_count[2]~0_combout\ <= NOT \count[2]~0_combout\;
\ALT_INV_count[1]~14_combout\ <= NOT \count[1]~14_combout\;

-- Location: IOOBUF_X34_Y11_N9
\led_out~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal0~10_combout\,
	devoe => ww_devoe,
	o => \led_out~output_o\);

-- Location: IOOBUF_X34_Y5_N23
\q[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => count(0),
	devoe => ww_devoe,
	o => \q[0]~output_o\);

-- Location: IOOBUF_X34_Y8_N9
\q[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => count(1),
	devoe => ww_devoe,
	o => \q[1]~output_o\);

-- Location: IOOBUF_X34_Y9_N9
\q[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \count[2]~2_combout\,
	devoe => ww_devoe,
	o => \q[2]~output_o\);

-- Location: IOOBUF_X34_Y9_N23
\q[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \count[3]~4_combout\,
	devoe => ww_devoe,
	o => \q[3]~output_o\);

-- Location: IOOBUF_X34_Y8_N23
\q[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \count[4]~6_combout\,
	devoe => ww_devoe,
	o => \q[4]~output_o\);

-- Location: IOOBUF_X34_Y9_N2
\q[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \count[5]~8_combout\,
	devoe => ww_devoe,
	o => \q[5]~output_o\);

-- Location: IOIBUF_X34_Y9_N15
\down_en~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_down_en,
	o => \down_en~input_o\);

-- Location: IOIBUF_X34_Y10_N1
\clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: IOIBUF_X34_Y10_N8
\btn_press~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_btn_press,
	o => \btn_press~input_o\);

-- Location: LCCOMB_X33_Y10_N16
clock : cycloneiii_lcell_comb
-- Equation(s):
-- \clock~combout\ = LCELL((\down_en~input_o\ & (\clk~input_o\)) # (!\down_en~input_o\ & ((\btn_press~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \down_en~input_o\,
	datac => \clk~input_o\,
	datad => \btn_press~input_o\,
	combout => \clock~combout\);

-- Location: CLKCTRL_G9
\clock~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock~clkctrl_outclk\);

-- Location: LCCOMB_X32_Y11_N18
\Add1~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~50_combout\ = (count(25) & ((\down_en~input_o\ & (\Add1~49\ & VCC)) # (!\down_en~input_o\ & (!\Add1~49\)))) # (!count(25) & ((\down_en~input_o\ & (!\Add1~49\)) # (!\down_en~input_o\ & ((\Add1~49\) # (GND)))))
-- \Add1~51\ = CARRY((count(25) & (!\down_en~input_o\ & !\Add1~49\)) # (!count(25) & ((!\Add1~49\) # (!\down_en~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(25),
	datab => \down_en~input_o\,
	datad => VCC,
	cin => \Add1~49\,
	combout => \Add1~50_combout\,
	cout => \Add1~51\);

-- Location: LCCOMB_X32_Y11_N20
\Add1~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~52_combout\ = ((count(26) $ (\down_en~input_o\ $ (!\Add1~51\)))) # (GND)
-- \Add1~53\ = CARRY((count(26) & ((\down_en~input_o\) # (!\Add1~51\))) # (!count(26) & (\down_en~input_o\ & !\Add1~51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(26),
	datab => \down_en~input_o\,
	datad => VCC,
	cin => \Add1~51\,
	combout => \Add1~52_combout\,
	cout => \Add1~53\);

-- Location: LCCOMB_X32_Y11_N28
\Add1~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~60_combout\ = ((count(30) $ (\down_en~input_o\ $ (!\Add1~59\)))) # (GND)
-- \Add1~61\ = CARRY((count(30) & ((\down_en~input_o\) # (!\Add1~59\))) # (!count(30) & (\down_en~input_o\ & !\Add1~59\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(30),
	datab => \down_en~input_o\,
	datad => VCC,
	cin => \Add1~59\,
	combout => \Add1~60_combout\,
	cout => \Add1~61\);

-- Location: LCCOMB_X32_Y11_N30
\Add1~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~62_combout\ = count(31) $ (\Add1~61\ $ (\down_en~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(31),
	datad => \down_en~input_o\,
	cin => \Add1~61\,
	combout => \Add1~62_combout\);

-- Location: FF_X32_Y11_N31
\count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \Add1~62_combout\,
	clrn => \ALT_INV_count[1]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(31));

-- Location: IOIBUF_X34_Y11_N1
\rst~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: LCCOMB_X33_Y11_N14
\count[1]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[1]~14_combout\ = (count(31)) # ((\rst~input_o\) # (\LessThan1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count(31),
	datac => \rst~input_o\,
	datad => \LessThan1~2_combout\,
	combout => \count[1]~14_combout\);

-- Location: FF_X32_Y11_N21
\count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \Add1~52_combout\,
	clrn => \ALT_INV_count[1]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(26));

-- Location: LCCOMB_X32_Y11_N22
\Add1~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~54_combout\ = (count(27) & ((\down_en~input_o\ & (\Add1~53\ & VCC)) # (!\down_en~input_o\ & (!\Add1~53\)))) # (!count(27) & ((\down_en~input_o\ & (!\Add1~53\)) # (!\down_en~input_o\ & ((\Add1~53\) # (GND)))))
-- \Add1~55\ = CARRY((count(27) & (!\down_en~input_o\ & !\Add1~53\)) # (!count(27) & ((!\Add1~53\) # (!\down_en~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(27),
	datab => \down_en~input_o\,
	datad => VCC,
	cin => \Add1~53\,
	combout => \Add1~54_combout\,
	cout => \Add1~55\);

-- Location: FF_X32_Y11_N23
\count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \Add1~54_combout\,
	clrn => \ALT_INV_count[1]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(27));

-- Location: LCCOMB_X32_Y11_N24
\Add1~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~56_combout\ = ((count(28) $ (\down_en~input_o\ $ (!\Add1~55\)))) # (GND)
-- \Add1~57\ = CARRY((count(28) & ((\down_en~input_o\) # (!\Add1~55\))) # (!count(28) & (\down_en~input_o\ & !\Add1~55\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(28),
	datab => \down_en~input_o\,
	datad => VCC,
	cin => \Add1~55\,
	combout => \Add1~56_combout\,
	cout => \Add1~57\);

-- Location: FF_X32_Y11_N25
\count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \Add1~56_combout\,
	clrn => \ALT_INV_count[1]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(28));

-- Location: LCCOMB_X32_Y11_N26
\Add1~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~58_combout\ = (count(29) & ((\down_en~input_o\ & (\Add1~57\ & VCC)) # (!\down_en~input_o\ & (!\Add1~57\)))) # (!count(29) & ((\down_en~input_o\ & (!\Add1~57\)) # (!\down_en~input_o\ & ((\Add1~57\) # (GND)))))
-- \Add1~59\ = CARRY((count(29) & (!\down_en~input_o\ & !\Add1~57\)) # (!count(29) & ((!\Add1~57\) # (!\down_en~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(29),
	datab => \down_en~input_o\,
	datad => VCC,
	cin => \Add1~57\,
	combout => \Add1~58_combout\,
	cout => \Add1~59\);

-- Location: FF_X32_Y11_N27
\count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \Add1~58_combout\,
	clrn => \ALT_INV_count[1]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(29));

-- Location: FF_X32_Y11_N29
\count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \Add1~60_combout\,
	clrn => \ALT_INV_count[1]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(30));

-- Location: LCCOMB_X33_Y11_N18
\count[5]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[5]~17_combout\ = (\LessThan1~2_combout\ & !count(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan1~2_combout\,
	datad => count(31),
	combout => \count[5]~17_combout\);

-- Location: LCCOMB_X32_Y12_N0
\Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = count(0) $ (VCC)
-- \Add1~1\ = CARRY(count(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count(0),
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: FF_X32_Y12_N1
\count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \Add1~0_combout\,
	clrn => \ALT_INV_count[1]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(0));

-- Location: LCCOMB_X32_Y12_N2
\Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (count(1) & ((\down_en~input_o\ & (\Add1~1\ & VCC)) # (!\down_en~input_o\ & (!\Add1~1\)))) # (!count(1) & ((\down_en~input_o\ & (!\Add1~1\)) # (!\down_en~input_o\ & ((\Add1~1\) # (GND)))))
-- \Add1~3\ = CARRY((count(1) & (!\down_en~input_o\ & !\Add1~1\)) # (!count(1) & ((!\Add1~1\) # (!\down_en~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(1),
	datab => \down_en~input_o\,
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: FF_X32_Y12_N3
\count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \Add1~2_combout\,
	clrn => \ALT_INV_count[1]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(1));

-- Location: LCCOMB_X32_Y12_N4
\Add1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = ((\down_en~input_o\ $ (\count[2]~2_combout\ $ (!\Add1~3\)))) # (GND)
-- \Add1~5\ = CARRY((\down_en~input_o\ & ((\count[2]~2_combout\) # (!\Add1~3\))) # (!\down_en~input_o\ & (\count[2]~2_combout\ & !\Add1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \down_en~input_o\,
	datab => \count[2]~2_combout\,
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: LCCOMB_X33_Y11_N0
\count[2]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[2]~3_combout\ = \count[2]~1_combout\ $ (\Add1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count[2]~1_combout\,
	datac => \Add1~4_combout\,
	combout => \count[2]~3_combout\);

-- Location: LCCOMB_X33_Y11_N12
\count[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[2]~0_combout\ = (\count[5]~18_combout\) # (\count[5]~17_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \count[5]~18_combout\,
	datad => \count[5]~17_combout\,
	combout => \count[2]~0_combout\);

-- Location: FF_X33_Y11_N1
\count[2]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \count[2]~3_combout\,
	clrn => \ALT_INV_count[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count[2]~_emulated_q\);

-- Location: LCCOMB_X33_Y11_N2
\count[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[2]~2_combout\ = (!\count[5]~18_combout\ & ((\count[5]~17_combout\) # (\count[2]~1_combout\ $ (\count[2]~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count[2]~1_combout\,
	datab => \count[5]~17_combout\,
	datac => \count[5]~18_combout\,
	datad => \count[2]~_emulated_q\,
	combout => \count[2]~2_combout\);

-- Location: LCCOMB_X32_Y12_N6
\Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (\down_en~input_o\ & ((\count[3]~4_combout\ & (\Add1~5\ & VCC)) # (!\count[3]~4_combout\ & (!\Add1~5\)))) # (!\down_en~input_o\ & ((\count[3]~4_combout\ & (!\Add1~5\)) # (!\count[3]~4_combout\ & ((\Add1~5\) # (GND)))))
-- \Add1~7\ = CARRY((\down_en~input_o\ & (!\count[3]~4_combout\ & !\Add1~5\)) # (!\down_en~input_o\ & ((!\Add1~5\) # (!\count[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \down_en~input_o\,
	datab => \count[3]~4_combout\,
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X33_Y11_N28
\count[3]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[3]~5_combout\ = \count[2]~1_combout\ $ (\Add1~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \count[2]~1_combout\,
	datad => \Add1~6_combout\,
	combout => \count[3]~5_combout\);

-- Location: FF_X33_Y11_N29
\count[3]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \count[3]~5_combout\,
	clrn => \ALT_INV_count[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count[3]~_emulated_q\);

-- Location: LCCOMB_X33_Y11_N6
\count[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[3]~4_combout\ = (!\count[5]~18_combout\ & ((\count[5]~17_combout\) # (\count[2]~1_combout\ $ (\count[3]~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count[2]~1_combout\,
	datab => \count[5]~17_combout\,
	datac => \count[5]~18_combout\,
	datad => \count[3]~_emulated_q\,
	combout => \count[3]~4_combout\);

-- Location: LCCOMB_X32_Y12_N8
\Add1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = ((\down_en~input_o\ $ (\count[4]~6_combout\ $ (!\Add1~7\)))) # (GND)
-- \Add1~9\ = CARRY((\down_en~input_o\ & ((\count[4]~6_combout\) # (!\Add1~7\))) # (!\down_en~input_o\ & (\count[4]~6_combout\ & !\Add1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \down_en~input_o\,
	datab => \count[4]~6_combout\,
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: LCCOMB_X33_Y11_N20
\count[4]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[4]~7_combout\ = \count[2]~1_combout\ $ (\Add1~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count[2]~1_combout\,
	datac => \Add1~8_combout\,
	combout => \count[4]~7_combout\);

-- Location: FF_X33_Y11_N21
\count[4]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \count[4]~7_combout\,
	clrn => \ALT_INV_count[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count[4]~_emulated_q\);

-- Location: LCCOMB_X33_Y11_N30
\count[4]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[4]~6_combout\ = (!\count[5]~18_combout\ & ((\count[5]~17_combout\) # (\count[2]~1_combout\ $ (\count[4]~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count[2]~1_combout\,
	datab => \count[5]~17_combout\,
	datac => \count[5]~18_combout\,
	datad => \count[4]~_emulated_q\,
	combout => \count[4]~6_combout\);

-- Location: LCCOMB_X31_Y11_N2
\LessThan1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = (\count[5]~8_combout\ & (\count[3]~4_combout\ & (\count[2]~2_combout\ & \count[4]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count[5]~8_combout\,
	datab => \count[3]~4_combout\,
	datac => \count[2]~2_combout\,
	datad => \count[4]~6_combout\,
	combout => \LessThan1~0_combout\);

-- Location: LCCOMB_X31_Y11_N28
\LessThan1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~1_combout\ = (count(30)) # ((\LessThan1~0_combout\ & ((count(1)) # (count(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(30),
	datab => \LessThan1~0_combout\,
	datac => count(1),
	datad => count(0),
	combout => \LessThan1~1_combout\);

-- Location: LCCOMB_X33_Y12_N6
\Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!count(13) & (!count(10) & (!count(12) & !count(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(13),
	datab => count(10),
	datac => count(12),
	datad => count(11),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X33_Y11_N4
\Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!count(16) & (!count(17) & (!count(14) & !count(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(16),
	datab => count(17),
	datac => count(14),
	datad => count(15),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X31_Y11_N12
\Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (!count(18) & (!count(21) & (!count(20) & !count(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(18),
	datab => count(21),
	datac => count(20),
	datad => count(19),
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X33_Y12_N16
\Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!count(7) & (!count(9) & (!count(8) & !count(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(7),
	datab => count(9),
	datac => count(8),
	datad => count(6),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X33_Y11_N26
\Equal0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~1_combout\ & (\Equal0~2_combout\ & (\Equal0~3_combout\ & \Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => \Equal0~2_combout\,
	datac => \Equal0~3_combout\,
	datad => \Equal0~0_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X31_Y11_N24
\Equal0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (!count(26) & (!count(27) & (!count(29) & !count(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(26),
	datab => count(27),
	datac => count(29),
	datad => count(28),
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X33_Y11_N16
\LessThan1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~2_combout\ = ((\LessThan1~1_combout\) # ((!\Equal0~6_combout\) # (!\Equal0~4_combout\))) # (!\Equal0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~5_combout\,
	datab => \LessThan1~1_combout\,
	datac => \Equal0~4_combout\,
	datad => \Equal0~6_combout\,
	combout => \LessThan1~2_combout\);

-- Location: LCCOMB_X33_Y11_N8
\count[5]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[5]~18_combout\ = (count(31)) # ((!\LessThan1~2_combout\ & \rst~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan1~2_combout\,
	datac => \rst~input_o\,
	datad => count(31),
	combout => \count[5]~18_combout\);

-- Location: LCCOMB_X33_Y11_N22
\count[2]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[2]~1_combout\ = (!\count[5]~18_combout\ & ((\count[5]~17_combout\) # (\count[2]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count[5]~18_combout\,
	datab => \count[5]~17_combout\,
	datac => \count[2]~1_combout\,
	combout => \count[2]~1_combout\);

-- Location: LCCOMB_X32_Y12_N10
\Add1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (\count[5]~8_combout\ & ((\down_en~input_o\ & (\Add1~9\ & VCC)) # (!\down_en~input_o\ & (!\Add1~9\)))) # (!\count[5]~8_combout\ & ((\down_en~input_o\ & (!\Add1~9\)) # (!\down_en~input_o\ & ((\Add1~9\) # (GND)))))
-- \Add1~11\ = CARRY((\count[5]~8_combout\ & (!\down_en~input_o\ & !\Add1~9\)) # (!\count[5]~8_combout\ & ((!\Add1~9\) # (!\down_en~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count[5]~8_combout\,
	datab => \down_en~input_o\,
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

-- Location: LCCOMB_X33_Y11_N24
\count[5]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[5]~9_combout\ = \count[2]~1_combout\ $ (\Add1~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \count[2]~1_combout\,
	datad => \Add1~10_combout\,
	combout => \count[5]~9_combout\);

-- Location: FF_X33_Y11_N25
\count[5]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \count[5]~9_combout\,
	clrn => \ALT_INV_count[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count[5]~_emulated_q\);

-- Location: LCCOMB_X33_Y11_N10
\count[5]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[5]~8_combout\ = (!\count[5]~18_combout\ & ((\count[5]~17_combout\) # (\count[2]~1_combout\ $ (\count[5]~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count[2]~1_combout\,
	datab => \count[5]~17_combout\,
	datac => \count[5]~18_combout\,
	datad => \count[5]~_emulated_q\,
	combout => \count[5]~8_combout\);

-- Location: LCCOMB_X32_Y12_N12
\Add1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = ((count(6) $ (\down_en~input_o\ $ (!\Add1~11\)))) # (GND)
-- \Add1~13\ = CARRY((count(6) & ((\down_en~input_o\) # (!\Add1~11\))) # (!count(6) & (\down_en~input_o\ & !\Add1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(6),
	datab => \down_en~input_o\,
	datad => VCC,
	cin => \Add1~11\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

-- Location: FF_X32_Y12_N13
\count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \Add1~12_combout\,
	clrn => \ALT_INV_count[1]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(6));

-- Location: LCCOMB_X32_Y12_N14
\Add1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = (count(7) & ((\down_en~input_o\ & (\Add1~13\ & VCC)) # (!\down_en~input_o\ & (!\Add1~13\)))) # (!count(7) & ((\down_en~input_o\ & (!\Add1~13\)) # (!\down_en~input_o\ & ((\Add1~13\) # (GND)))))
-- \Add1~15\ = CARRY((count(7) & (!\down_en~input_o\ & !\Add1~13\)) # (!count(7) & ((!\Add1~13\) # (!\down_en~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(7),
	datab => \down_en~input_o\,
	datad => VCC,
	cin => \Add1~13\,
	combout => \Add1~14_combout\,
	cout => \Add1~15\);

-- Location: FF_X32_Y12_N15
\count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \Add1~14_combout\,
	clrn => \ALT_INV_count[1]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(7));

-- Location: LCCOMB_X32_Y12_N16
\Add1~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~16_combout\ = ((count(8) $ (\down_en~input_o\ $ (!\Add1~15\)))) # (GND)
-- \Add1~17\ = CARRY((count(8) & ((\down_en~input_o\) # (!\Add1~15\))) # (!count(8) & (\down_en~input_o\ & !\Add1~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(8),
	datab => \down_en~input_o\,
	datad => VCC,
	cin => \Add1~15\,
	combout => \Add1~16_combout\,
	cout => \Add1~17\);

-- Location: FF_X32_Y12_N17
\count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \Add1~16_combout\,
	clrn => \ALT_INV_count[1]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(8));

-- Location: LCCOMB_X32_Y12_N18
\Add1~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~18_combout\ = (\down_en~input_o\ & ((count(9) & (\Add1~17\ & VCC)) # (!count(9) & (!\Add1~17\)))) # (!\down_en~input_o\ & ((count(9) & (!\Add1~17\)) # (!count(9) & ((\Add1~17\) # (GND)))))
-- \Add1~19\ = CARRY((\down_en~input_o\ & (!count(9) & !\Add1~17\)) # (!\down_en~input_o\ & ((!\Add1~17\) # (!count(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \down_en~input_o\,
	datab => count(9),
	datad => VCC,
	cin => \Add1~17\,
	combout => \Add1~18_combout\,
	cout => \Add1~19\);

-- Location: FF_X32_Y12_N19
\count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \Add1~18_combout\,
	clrn => \ALT_INV_count[1]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(9));

-- Location: LCCOMB_X32_Y12_N20
\Add1~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~20_combout\ = ((\down_en~input_o\ $ (count(10) $ (!\Add1~19\)))) # (GND)
-- \Add1~21\ = CARRY((\down_en~input_o\ & ((count(10)) # (!\Add1~19\))) # (!\down_en~input_o\ & (count(10) & !\Add1~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \down_en~input_o\,
	datab => count(10),
	datad => VCC,
	cin => \Add1~19\,
	combout => \Add1~20_combout\,
	cout => \Add1~21\);

-- Location: FF_X32_Y12_N21
\count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \Add1~20_combout\,
	clrn => \ALT_INV_count[1]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(10));

-- Location: LCCOMB_X32_Y12_N22
\Add1~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~22_combout\ = (count(11) & ((\down_en~input_o\ & (\Add1~21\ & VCC)) # (!\down_en~input_o\ & (!\Add1~21\)))) # (!count(11) & ((\down_en~input_o\ & (!\Add1~21\)) # (!\down_en~input_o\ & ((\Add1~21\) # (GND)))))
-- \Add1~23\ = CARRY((count(11) & (!\down_en~input_o\ & !\Add1~21\)) # (!count(11) & ((!\Add1~21\) # (!\down_en~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(11),
	datab => \down_en~input_o\,
	datad => VCC,
	cin => \Add1~21\,
	combout => \Add1~22_combout\,
	cout => \Add1~23\);

-- Location: FF_X32_Y12_N23
\count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \Add1~22_combout\,
	clrn => \ALT_INV_count[1]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(11));

-- Location: LCCOMB_X32_Y12_N24
\Add1~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~24_combout\ = ((\down_en~input_o\ $ (count(12) $ (!\Add1~23\)))) # (GND)
-- \Add1~25\ = CARRY((\down_en~input_o\ & ((count(12)) # (!\Add1~23\))) # (!\down_en~input_o\ & (count(12) & !\Add1~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \down_en~input_o\,
	datab => count(12),
	datad => VCC,
	cin => \Add1~23\,
	combout => \Add1~24_combout\,
	cout => \Add1~25\);

-- Location: FF_X32_Y12_N25
\count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \Add1~24_combout\,
	clrn => \ALT_INV_count[1]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(12));

-- Location: LCCOMB_X32_Y12_N26
\Add1~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~26_combout\ = (count(13) & ((\down_en~input_o\ & (\Add1~25\ & VCC)) # (!\down_en~input_o\ & (!\Add1~25\)))) # (!count(13) & ((\down_en~input_o\ & (!\Add1~25\)) # (!\down_en~input_o\ & ((\Add1~25\) # (GND)))))
-- \Add1~27\ = CARRY((count(13) & (!\down_en~input_o\ & !\Add1~25\)) # (!count(13) & ((!\Add1~25\) # (!\down_en~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(13),
	datab => \down_en~input_o\,
	datad => VCC,
	cin => \Add1~25\,
	combout => \Add1~26_combout\,
	cout => \Add1~27\);

-- Location: FF_X32_Y12_N27
\count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \Add1~26_combout\,
	clrn => \ALT_INV_count[1]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(13));

-- Location: LCCOMB_X32_Y12_N28
\Add1~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~28_combout\ = ((\down_en~input_o\ $ (count(14) $ (!\Add1~27\)))) # (GND)
-- \Add1~29\ = CARRY((\down_en~input_o\ & ((count(14)) # (!\Add1~27\))) # (!\down_en~input_o\ & (count(14) & !\Add1~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \down_en~input_o\,
	datab => count(14),
	datad => VCC,
	cin => \Add1~27\,
	combout => \Add1~28_combout\,
	cout => \Add1~29\);

-- Location: FF_X32_Y12_N29
\count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \Add1~28_combout\,
	clrn => \ALT_INV_count[1]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(14));

-- Location: LCCOMB_X32_Y12_N30
\Add1~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~30_combout\ = (\down_en~input_o\ & ((count(15) & (\Add1~29\ & VCC)) # (!count(15) & (!\Add1~29\)))) # (!\down_en~input_o\ & ((count(15) & (!\Add1~29\)) # (!count(15) & ((\Add1~29\) # (GND)))))
-- \Add1~31\ = CARRY((\down_en~input_o\ & (!count(15) & !\Add1~29\)) # (!\down_en~input_o\ & ((!\Add1~29\) # (!count(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \down_en~input_o\,
	datab => count(15),
	datad => VCC,
	cin => \Add1~29\,
	combout => \Add1~30_combout\,
	cout => \Add1~31\);

-- Location: FF_X32_Y12_N31
\count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \Add1~30_combout\,
	clrn => \ALT_INV_count[1]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(15));

-- Location: LCCOMB_X32_Y11_N0
\Add1~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~32_combout\ = ((\down_en~input_o\ $ (count(16) $ (!\Add1~31\)))) # (GND)
-- \Add1~33\ = CARRY((\down_en~input_o\ & ((count(16)) # (!\Add1~31\))) # (!\down_en~input_o\ & (count(16) & !\Add1~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \down_en~input_o\,
	datab => count(16),
	datad => VCC,
	cin => \Add1~31\,
	combout => \Add1~32_combout\,
	cout => \Add1~33\);

-- Location: FF_X32_Y11_N1
\count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \Add1~32_combout\,
	clrn => \ALT_INV_count[1]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(16));

-- Location: LCCOMB_X32_Y11_N2
\Add1~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~34_combout\ = (\down_en~input_o\ & ((count(17) & (\Add1~33\ & VCC)) # (!count(17) & (!\Add1~33\)))) # (!\down_en~input_o\ & ((count(17) & (!\Add1~33\)) # (!count(17) & ((\Add1~33\) # (GND)))))
-- \Add1~35\ = CARRY((\down_en~input_o\ & (!count(17) & !\Add1~33\)) # (!\down_en~input_o\ & ((!\Add1~33\) # (!count(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \down_en~input_o\,
	datab => count(17),
	datad => VCC,
	cin => \Add1~33\,
	combout => \Add1~34_combout\,
	cout => \Add1~35\);

-- Location: FF_X32_Y11_N3
\count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \Add1~34_combout\,
	clrn => \ALT_INV_count[1]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(17));

-- Location: LCCOMB_X32_Y11_N4
\Add1~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~36_combout\ = ((\down_en~input_o\ $ (count(18) $ (!\Add1~35\)))) # (GND)
-- \Add1~37\ = CARRY((\down_en~input_o\ & ((count(18)) # (!\Add1~35\))) # (!\down_en~input_o\ & (count(18) & !\Add1~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \down_en~input_o\,
	datab => count(18),
	datad => VCC,
	cin => \Add1~35\,
	combout => \Add1~36_combout\,
	cout => \Add1~37\);

-- Location: FF_X32_Y11_N5
\count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \Add1~36_combout\,
	clrn => \ALT_INV_count[1]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(18));

-- Location: LCCOMB_X32_Y11_N6
\Add1~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~38_combout\ = (\down_en~input_o\ & ((count(19) & (\Add1~37\ & VCC)) # (!count(19) & (!\Add1~37\)))) # (!\down_en~input_o\ & ((count(19) & (!\Add1~37\)) # (!count(19) & ((\Add1~37\) # (GND)))))
-- \Add1~39\ = CARRY((\down_en~input_o\ & (!count(19) & !\Add1~37\)) # (!\down_en~input_o\ & ((!\Add1~37\) # (!count(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \down_en~input_o\,
	datab => count(19),
	datad => VCC,
	cin => \Add1~37\,
	combout => \Add1~38_combout\,
	cout => \Add1~39\);

-- Location: FF_X32_Y11_N7
\count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \Add1~38_combout\,
	clrn => \ALT_INV_count[1]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(19));

-- Location: LCCOMB_X32_Y11_N8
\Add1~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~40_combout\ = ((\down_en~input_o\ $ (count(20) $ (!\Add1~39\)))) # (GND)
-- \Add1~41\ = CARRY((\down_en~input_o\ & ((count(20)) # (!\Add1~39\))) # (!\down_en~input_o\ & (count(20) & !\Add1~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \down_en~input_o\,
	datab => count(20),
	datad => VCC,
	cin => \Add1~39\,
	combout => \Add1~40_combout\,
	cout => \Add1~41\);

-- Location: FF_X32_Y11_N9
\count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \Add1~40_combout\,
	clrn => \ALT_INV_count[1]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(20));

-- Location: LCCOMB_X32_Y11_N10
\Add1~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~42_combout\ = (\down_en~input_o\ & ((count(21) & (\Add1~41\ & VCC)) # (!count(21) & (!\Add1~41\)))) # (!\down_en~input_o\ & ((count(21) & (!\Add1~41\)) # (!count(21) & ((\Add1~41\) # (GND)))))
-- \Add1~43\ = CARRY((\down_en~input_o\ & (!count(21) & !\Add1~41\)) # (!\down_en~input_o\ & ((!\Add1~41\) # (!count(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \down_en~input_o\,
	datab => count(21),
	datad => VCC,
	cin => \Add1~41\,
	combout => \Add1~42_combout\,
	cout => \Add1~43\);

-- Location: FF_X32_Y11_N11
\count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \Add1~42_combout\,
	clrn => \ALT_INV_count[1]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(21));

-- Location: LCCOMB_X32_Y11_N12
\Add1~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~44_combout\ = ((\down_en~input_o\ $ (count(22) $ (!\Add1~43\)))) # (GND)
-- \Add1~45\ = CARRY((\down_en~input_o\ & ((count(22)) # (!\Add1~43\))) # (!\down_en~input_o\ & (count(22) & !\Add1~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \down_en~input_o\,
	datab => count(22),
	datad => VCC,
	cin => \Add1~43\,
	combout => \Add1~44_combout\,
	cout => \Add1~45\);

-- Location: FF_X32_Y11_N13
\count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \Add1~44_combout\,
	clrn => \ALT_INV_count[1]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(22));

-- Location: LCCOMB_X32_Y11_N14
\Add1~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~46_combout\ = (count(23) & ((\down_en~input_o\ & (\Add1~45\ & VCC)) # (!\down_en~input_o\ & (!\Add1~45\)))) # (!count(23) & ((\down_en~input_o\ & (!\Add1~45\)) # (!\down_en~input_o\ & ((\Add1~45\) # (GND)))))
-- \Add1~47\ = CARRY((count(23) & (!\down_en~input_o\ & !\Add1~45\)) # (!count(23) & ((!\Add1~45\) # (!\down_en~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(23),
	datab => \down_en~input_o\,
	datad => VCC,
	cin => \Add1~45\,
	combout => \Add1~46_combout\,
	cout => \Add1~47\);

-- Location: FF_X32_Y11_N15
\count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \Add1~46_combout\,
	clrn => \ALT_INV_count[1]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(23));

-- Location: LCCOMB_X32_Y11_N16
\Add1~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~48_combout\ = ((count(24) $ (\down_en~input_o\ $ (!\Add1~47\)))) # (GND)
-- \Add1~49\ = CARRY((count(24) & ((\down_en~input_o\) # (!\Add1~47\))) # (!count(24) & (\down_en~input_o\ & !\Add1~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(24),
	datab => \down_en~input_o\,
	datad => VCC,
	cin => \Add1~47\,
	combout => \Add1~48_combout\,
	cout => \Add1~49\);

-- Location: FF_X32_Y11_N17
\count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \Add1~48_combout\,
	clrn => \ALT_INV_count[1]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(24));

-- Location: FF_X32_Y11_N19
\count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	d => \Add1~50_combout\,
	clrn => \ALT_INV_count[1]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(25));

-- Location: LCCOMB_X31_Y11_N10
\Equal0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (!count(25) & (!count(22) & (!count(23) & !count(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(25),
	datab => count(22),
	datac => count(23),
	datad => count(24),
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X31_Y11_N26
\Equal0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (\Equal0~5_combout\ & (\Equal0~6_combout\ & (!count(30) & \Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~5_combout\,
	datab => \Equal0~6_combout\,
	datac => count(30),
	datad => \Equal0~4_combout\,
	combout => \Equal0~7_combout\);

-- Location: LCCOMB_X31_Y11_N0
\Equal0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = (!count(1) & (!count(0) & (!\count[2]~2_combout\ & !count(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(1),
	datab => count(0),
	datac => \count[2]~2_combout\,
	datad => count(31),
	combout => \Equal0~8_combout\);

-- Location: LCCOMB_X31_Y11_N22
\Equal0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~9_combout\ = (!\count[5]~8_combout\ & (!\count[4]~6_combout\ & !\count[3]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count[5]~8_combout\,
	datab => \count[4]~6_combout\,
	datac => \count[3]~4_combout\,
	combout => \Equal0~9_combout\);

-- Location: LCCOMB_X31_Y11_N16
\Equal0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~10_combout\ = (\Equal0~7_combout\ & (\Equal0~8_combout\ & \Equal0~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~7_combout\,
	datab => \Equal0~8_combout\,
	datac => \Equal0~9_combout\,
	combout => \Equal0~10_combout\);

ww_led_out <= \led_out~output_o\;

ww_q(0) <= \q[0]~output_o\;

ww_q(1) <= \q[1]~output_o\;

ww_q(2) <= \q[2]~output_o\;

ww_q(3) <= \q[3]~output_o\;

ww_q(4) <= \q[4]~output_o\;

ww_q(5) <= \q[5]~output_o\;
END structure;


