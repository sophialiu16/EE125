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

-- DATE "05/04/2018 03:16:06"

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
	reset : IN std_logic;
	count_x : OUT std_logic_vector(3 DOWNTO 0);
	count_debounced : OUT std_logic_vector(3 DOWNTO 0);
	ssd_x : OUT std_logic_vector(6 DOWNTO 0);
	ssd_debounced : OUT std_logic_vector(6 DOWNTO 0)
	);
END debouncer;

-- Design Ports Information
-- count_x[0]	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count_x[1]	=>  Location: PIN_66,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count_x[2]	=>  Location: PIN_64,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count_x[3]	=>  Location: PIN_65,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count_debounced[0]	=>  Location: PIN_28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count_debounced[1]	=>  Location: PIN_43,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count_debounced[2]	=>  Location: PIN_31,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count_debounced[3]	=>  Location: PIN_39,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd_x[0]	=>  Location: PIN_54,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd_x[1]	=>  Location: PIN_60,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd_x[2]	=>  Location: PIN_58,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd_x[3]	=>  Location: PIN_55,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd_x[4]	=>  Location: PIN_59,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd_x[5]	=>  Location: PIN_51,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd_x[6]	=>  Location: PIN_67,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd_debounced[0]	=>  Location: PIN_32,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd_debounced[1]	=>  Location: PIN_38,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd_debounced[2]	=>  Location: PIN_30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd_debounced[3]	=>  Location: PIN_34,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd_debounced[4]	=>  Location: PIN_33,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd_debounced[5]	=>  Location: PIN_44,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd_debounced[6]	=>  Location: PIN_42,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x	=>  Location: PIN_24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_25,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
SIGNAL ww_reset : std_logic;
SIGNAL ww_count_x : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_count_debounced : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_ssd_x : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_ssd_debounced : std_logic_vector(6 DOWNTO 0);
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \x~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \count_x[0]~output_o\ : std_logic;
SIGNAL \count_x[1]~output_o\ : std_logic;
SIGNAL \count_x[2]~output_o\ : std_logic;
SIGNAL \count_x[3]~output_o\ : std_logic;
SIGNAL \count_debounced[0]~output_o\ : std_logic;
SIGNAL \count_debounced[1]~output_o\ : std_logic;
SIGNAL \count_debounced[2]~output_o\ : std_logic;
SIGNAL \count_debounced[3]~output_o\ : std_logic;
SIGNAL \ssd_x[0]~output_o\ : std_logic;
SIGNAL \ssd_x[1]~output_o\ : std_logic;
SIGNAL \ssd_x[2]~output_o\ : std_logic;
SIGNAL \ssd_x[3]~output_o\ : std_logic;
SIGNAL \ssd_x[4]~output_o\ : std_logic;
SIGNAL \ssd_x[5]~output_o\ : std_logic;
SIGNAL \ssd_x[6]~output_o\ : std_logic;
SIGNAL \ssd_debounced[0]~output_o\ : std_logic;
SIGNAL \ssd_debounced[1]~output_o\ : std_logic;
SIGNAL \ssd_debounced[2]~output_o\ : std_logic;
SIGNAL \ssd_debounced[3]~output_o\ : std_logic;
SIGNAL \ssd_debounced[4]~output_o\ : std_logic;
SIGNAL \ssd_debounced[5]~output_o\ : std_logic;
SIGNAL \ssd_debounced[6]~output_o\ : std_logic;
SIGNAL \x~input_o\ : std_logic;
SIGNAL \x~inputclkctrl_outclk\ : std_logic;
SIGNAL \var_count[0]~3_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \var_count[1]~0_combout\ : std_logic;
SIGNAL \var_count[2]~1_combout\ : std_logic;
SIGNAL \var_count[3]~2_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \pressed~0_combout\ : std_logic;
SIGNAL \pressed~q\ : std_logic;
SIGNAL \counter[1]~0_combout\ : std_logic;
SIGNAL \counter[0]~1_combout\ : std_logic;
SIGNAL \var_count_debounced[0]~0_combout\ : std_logic;
SIGNAL \var_count_debounced[0]~1_combout\ : std_logic;
SIGNAL \var_count_debounced[1]~2_combout\ : std_logic;
SIGNAL \var_count_debounced[2]~3_combout\ : std_logic;
SIGNAL \var_count_debounced[3]~4_combout\ : std_logic;
SIGNAL \var_count_debounced[3]~5_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL var_count : std_logic_vector(3 DOWNTO 0);
SIGNAL var_count_debounced : std_logic_vector(3 DOWNTO 0);
SIGNAL counter : std_logic_vector(1 DOWNTO 0);
SIGNAL \ALT_INV_x~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_Mux13~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux6~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_x <= x;
ww_clk <= clk;
ww_reset <= reset;
count_x <= ww_count_x;
count_debounced <= ww_count_debounced;
ssd_x <= ww_ssd_x;
ssd_debounced <= ww_ssd_debounced;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);

\x~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \x~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_x~inputclkctrl_outclk\ <= NOT \x~inputclkctrl_outclk\;
\ALT_INV_Mux13~0_combout\ <= NOT \Mux13~0_combout\;
\ALT_INV_Mux6~0_combout\ <= NOT \Mux6~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X16_Y0_N9
\count_x[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => var_count(0),
	devoe => ww_devoe,
	o => \count_x[0]~output_o\);

-- Location: IOOBUF_X28_Y0_N2
\count_x[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => var_count(1),
	devoe => ww_devoe,
	o => \count_x[1]~output_o\);

-- Location: IOOBUF_X25_Y0_N2
\count_x[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => var_count(2),
	devoe => ww_devoe,
	o => \count_x[2]~output_o\);

-- Location: IOOBUF_X28_Y0_N23
\count_x[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => var_count(3),
	devoe => ww_devoe,
	o => \count_x[3]~output_o\);

-- Location: IOOBUF_X0_Y9_N9
\count_debounced[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => var_count_debounced(0),
	devoe => ww_devoe,
	o => \count_debounced[0]~output_o\);

-- Location: IOOBUF_X5_Y0_N23
\count_debounced[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => var_count_debounced(1),
	devoe => ww_devoe,
	o => \count_debounced[1]~output_o\);

-- Location: IOOBUF_X0_Y7_N2
\count_debounced[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => var_count_debounced(2),
	devoe => ww_devoe,
	o => \count_debounced[2]~output_o\);

-- Location: IOOBUF_X1_Y0_N16
\count_debounced[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => var_count_debounced(3),
	devoe => ww_devoe,
	o => \count_debounced[3]~output_o\);

-- Location: IOOBUF_X18_Y0_N23
\ssd_x[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \ssd_x[0]~output_o\);

-- Location: IOOBUF_X23_Y0_N9
\ssd_x[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~0_combout\,
	devoe => ww_devoe,
	o => \ssd_x[1]~output_o\);

-- Location: IOOBUF_X21_Y0_N9
\ssd_x[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~0_combout\,
	devoe => ww_devoe,
	o => \ssd_x[2]~output_o\);

-- Location: IOOBUF_X18_Y0_N16
\ssd_x[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~0_combout\,
	devoe => ww_devoe,
	o => \ssd_x[3]~output_o\);

-- Location: IOOBUF_X23_Y0_N16
\ssd_x[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~0_combout\,
	devoe => ww_devoe,
	o => \ssd_x[4]~output_o\);

-- Location: IOOBUF_X16_Y0_N23
\ssd_x[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~0_combout\,
	devoe => ww_devoe,
	o => \ssd_x[5]~output_o\);

-- Location: IOOBUF_X30_Y0_N23
\ssd_x[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~0_combout\,
	devoe => ww_devoe,
	o => \ssd_x[6]~output_o\);

-- Location: IOOBUF_X0_Y6_N16
\ssd_debounced[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux13~0_combout\,
	devoe => ww_devoe,
	o => \ssd_debounced[0]~output_o\);

-- Location: IOOBUF_X1_Y0_N23
\ssd_debounced[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux12~0_combout\,
	devoe => ww_devoe,
	o => \ssd_debounced[1]~output_o\);

-- Location: IOOBUF_X0_Y8_N16
\ssd_debounced[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux11~0_combout\,
	devoe => ww_devoe,
	o => \ssd_debounced[2]~output_o\);

-- Location: IOOBUF_X0_Y5_N16
\ssd_debounced[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux10~0_combout\,
	devoe => ww_devoe,
	o => \ssd_debounced[3]~output_o\);

-- Location: IOOBUF_X0_Y6_N23
\ssd_debounced[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux9~0_combout\,
	devoe => ww_devoe,
	o => \ssd_debounced[4]~output_o\);

-- Location: IOOBUF_X5_Y0_N16
\ssd_debounced[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux8~0_combout\,
	devoe => ww_devoe,
	o => \ssd_debounced[5]~output_o\);

-- Location: IOOBUF_X3_Y0_N2
\ssd_debounced[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux7~0_combout\,
	devoe => ww_devoe,
	o => \ssd_debounced[6]~output_o\);

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

-- Location: LCCOMB_X22_Y1_N0
\var_count[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \var_count[0]~3_combout\ = !var_count(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => var_count(0),
	combout => \var_count[0]~3_combout\);

-- Location: IOIBUF_X0_Y11_N22
\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: CLKCTRL_G3
\reset~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset~inputclkctrl_outclk\);

-- Location: FF_X22_Y1_N1
\var_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_x~inputclkctrl_outclk\,
	d => \var_count[0]~3_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => var_count(0));

-- Location: LCCOMB_X22_Y1_N10
\var_count[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \var_count[1]~0_combout\ = var_count(1) $ (var_count(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => var_count(1),
	datad => var_count(0),
	combout => \var_count[1]~0_combout\);

-- Location: FF_X22_Y1_N11
\var_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_x~inputclkctrl_outclk\,
	d => \var_count[1]~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => var_count(1));

-- Location: LCCOMB_X22_Y1_N12
\var_count[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \var_count[2]~1_combout\ = var_count(2) $ (((var_count(1) & var_count(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => var_count(1),
	datac => var_count(2),
	datad => var_count(0),
	combout => \var_count[2]~1_combout\);

-- Location: FF_X22_Y1_N13
\var_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_x~inputclkctrl_outclk\,
	d => \var_count[2]~1_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => var_count(2));

-- Location: LCCOMB_X22_Y1_N22
\var_count[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \var_count[3]~2_combout\ = var_count(3) $ (((var_count(2) & (var_count(0) & var_count(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => var_count(2),
	datab => var_count(0),
	datac => var_count(3),
	datad => var_count(1),
	combout => \var_count[3]~2_combout\);

-- Location: FF_X22_Y1_N23
\var_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_x~inputclkctrl_outclk\,
	d => \var_count[3]~2_combout\,
	clrn => \reset~inputclkctrl_outclk\,
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

-- Location: LCCOMB_X1_Y11_N30
\pressed~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pressed~0_combout\ = (counter(0) & (((\pressed~q\)))) # (!counter(0) & ((counter(1) & (!\x~input_o\)) # (!counter(1) & ((\pressed~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x~input_o\,
	datab => \pressed~q\,
	datac => counter(0),
	datad => counter(1),
	combout => \pressed~0_combout\);

-- Location: FF_X1_Y11_N9
pressed : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \pressed~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pressed~q\);

-- Location: LCCOMB_X1_Y11_N24
\counter[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[1]~0_combout\ = (counter(0) & (\x~input_o\ $ ((!\pressed~q\)))) # (!counter(0) & (counter(1) & (\x~input_o\ $ (!\pressed~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(0),
	datab => \x~input_o\,
	datac => \pressed~q\,
	datad => counter(1),
	combout => \counter[1]~0_combout\);

-- Location: FF_X1_Y11_N7
\counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \counter[1]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(1));

-- Location: LCCOMB_X1_Y11_N2
\counter[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[0]~1_combout\ = (counter(1) & (\x~input_o\ $ (((!\pressed~q\))))) # (!counter(1) & (!counter(0) & (\x~input_o\ $ (!\pressed~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(1),
	datab => \x~input_o\,
	datac => counter(0),
	datad => \pressed~q\,
	combout => \counter[0]~1_combout\);

-- Location: FF_X1_Y11_N31
\counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \counter[0]~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(0));

-- Location: LCCOMB_X1_Y11_N6
\var_count_debounced[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \var_count_debounced[0]~0_combout\ = (!counter(0) & (!\x~input_o\ & (counter(1) & !\pressed~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(0),
	datab => \x~input_o\,
	datac => counter(1),
	datad => \pressed~q\,
	combout => \var_count_debounced[0]~0_combout\);

-- Location: LCCOMB_X1_Y11_N12
\var_count_debounced[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \var_count_debounced[0]~1_combout\ = \var_count_debounced[0]~0_combout\ $ (var_count_debounced(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \var_count_debounced[0]~0_combout\,
	datac => var_count_debounced(0),
	combout => \var_count_debounced[0]~1_combout\);

-- Location: FF_X1_Y11_N13
\var_count_debounced[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \var_count_debounced[0]~1_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => var_count_debounced(0));

-- Location: LCCOMB_X1_Y11_N18
\var_count_debounced[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \var_count_debounced[1]~2_combout\ = var_count_debounced(1) $ (((\var_count_debounced[0]~0_combout\ & var_count_debounced(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \var_count_debounced[0]~0_combout\,
	datac => var_count_debounced(1),
	datad => var_count_debounced(0),
	combout => \var_count_debounced[1]~2_combout\);

-- Location: FF_X1_Y11_N19
\var_count_debounced[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \var_count_debounced[1]~2_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => var_count_debounced(1));

-- Location: LCCOMB_X1_Y11_N20
\var_count_debounced[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \var_count_debounced[2]~3_combout\ = var_count_debounced(2) $ (((\var_count_debounced[0]~0_combout\ & (var_count_debounced(1) & var_count_debounced(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \var_count_debounced[0]~0_combout\,
	datab => var_count_debounced(1),
	datac => var_count_debounced(2),
	datad => var_count_debounced(0),
	combout => \var_count_debounced[2]~3_combout\);

-- Location: FF_X1_Y11_N21
\var_count_debounced[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \var_count_debounced[2]~3_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => var_count_debounced(2));

-- Location: LCCOMB_X1_Y11_N8
\var_count_debounced[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \var_count_debounced[3]~4_combout\ = (!var_count_debounced(1)) # (!var_count_debounced(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => var_count_debounced(0),
	datad => var_count_debounced(1),
	combout => \var_count_debounced[3]~4_combout\);

-- Location: LCCOMB_X1_Y11_N14
\var_count_debounced[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \var_count_debounced[3]~5_combout\ = var_count_debounced(3) $ (((\var_count_debounced[0]~0_combout\ & (var_count_debounced(2) & !\var_count_debounced[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \var_count_debounced[0]~0_combout\,
	datab => var_count_debounced(2),
	datac => var_count_debounced(3),
	datad => \var_count_debounced[3]~4_combout\,
	combout => \var_count_debounced[3]~5_combout\);

-- Location: FF_X1_Y11_N15
\var_count_debounced[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \var_count_debounced[3]~5_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => var_count_debounced(3));

-- Location: LCCOMB_X22_Y1_N28
\Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (var_count(0) & ((var_count(3)) # (var_count(1) $ (var_count(2))))) # (!var_count(0) & ((var_count(1)) # (var_count(3) $ (var_count(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => var_count(0),
	datab => var_count(1),
	datac => var_count(3),
	datad => var_count(2),
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X22_Y1_N30
\Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (var_count(0) & (var_count(3) $ (((var_count(1)) # (!var_count(2)))))) # (!var_count(0) & (var_count(1) & (!var_count(3) & !var_count(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => var_count(0),
	datab => var_count(1),
	datac => var_count(3),
	datad => var_count(2),
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X22_Y1_N16
\Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (var_count(1) & (var_count(0) & (!var_count(3)))) # (!var_count(1) & ((var_count(2) & ((!var_count(3)))) # (!var_count(2) & (var_count(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => var_count(0),
	datab => var_count(1),
	datac => var_count(3),
	datad => var_count(2),
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X22_Y1_N18
\Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (var_count(1) & ((var_count(0) & ((var_count(2)))) # (!var_count(0) & (var_count(3) & !var_count(2))))) # (!var_count(1) & (!var_count(3) & (var_count(0) $ (var_count(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => var_count(0),
	datab => var_count(1),
	datac => var_count(3),
	datad => var_count(2),
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X22_Y1_N20
\Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (var_count(3) & (var_count(2) & ((var_count(1)) # (!var_count(0))))) # (!var_count(3) & (!var_count(0) & (var_count(1) & !var_count(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => var_count(0),
	datab => var_count(1),
	datac => var_count(3),
	datad => var_count(2),
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X22_Y1_N26
\Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (var_count(1) & ((var_count(0) & (var_count(3))) # (!var_count(0) & ((var_count(2)))))) # (!var_count(1) & (var_count(2) & (var_count(0) $ (var_count(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => var_count(0),
	datab => var_count(1),
	datac => var_count(3),
	datad => var_count(2),
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X22_Y1_N24
\Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (var_count(3) & (var_count(0) & (var_count(1) $ (var_count(2))))) # (!var_count(3) & (!var_count(1) & (var_count(0) $ (var_count(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => var_count(0),
	datab => var_count(1),
	datac => var_count(3),
	datad => var_count(2),
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X1_Y11_N4
\Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = (var_count_debounced(0) & ((var_count_debounced(3)) # (var_count_debounced(2) $ (var_count_debounced(1))))) # (!var_count_debounced(0) & ((var_count_debounced(1)) # (var_count_debounced(2) $ (var_count_debounced(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => var_count_debounced(2),
	datab => var_count_debounced(3),
	datac => var_count_debounced(0),
	datad => var_count_debounced(1),
	combout => \Mux13~0_combout\);

-- Location: LCCOMB_X1_Y11_N22
\Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = (var_count_debounced(2) & (var_count_debounced(0) & (var_count_debounced(3) $ (var_count_debounced(1))))) # (!var_count_debounced(2) & (!var_count_debounced(3) & ((var_count_debounced(0)) # (var_count_debounced(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => var_count_debounced(2),
	datab => var_count_debounced(3),
	datac => var_count_debounced(0),
	datad => var_count_debounced(1),
	combout => \Mux12~0_combout\);

-- Location: LCCOMB_X1_Y11_N0
\Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = (var_count_debounced(1) & (((!var_count_debounced(3) & var_count_debounced(0))))) # (!var_count_debounced(1) & ((var_count_debounced(2) & (!var_count_debounced(3))) # (!var_count_debounced(2) & ((var_count_debounced(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => var_count_debounced(2),
	datab => var_count_debounced(3),
	datac => var_count_debounced(0),
	datad => var_count_debounced(1),
	combout => \Mux11~0_combout\);

-- Location: LCCOMB_X1_Y11_N10
\Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = (var_count_debounced(1) & ((var_count_debounced(2) & ((var_count_debounced(0)))) # (!var_count_debounced(2) & (var_count_debounced(3) & !var_count_debounced(0))))) # (!var_count_debounced(1) & (!var_count_debounced(3) & 
-- (var_count_debounced(2) $ (var_count_debounced(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => var_count_debounced(2),
	datab => var_count_debounced(3),
	datac => var_count_debounced(0),
	datad => var_count_debounced(1),
	combout => \Mux10~0_combout\);

-- Location: LCCOMB_X1_Y11_N28
\Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (var_count_debounced(2) & (var_count_debounced(3) & ((var_count_debounced(1)) # (!var_count_debounced(0))))) # (!var_count_debounced(2) & (!var_count_debounced(3) & (!var_count_debounced(0) & var_count_debounced(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => var_count_debounced(2),
	datab => var_count_debounced(3),
	datac => var_count_debounced(0),
	datad => var_count_debounced(1),
	combout => \Mux9~0_combout\);

-- Location: LCCOMB_X1_Y11_N26
\Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (var_count_debounced(3) & ((var_count_debounced(0) & ((var_count_debounced(1)))) # (!var_count_debounced(0) & (var_count_debounced(2))))) # (!var_count_debounced(3) & (var_count_debounced(2) & (var_count_debounced(0) $ 
-- (var_count_debounced(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => var_count_debounced(2),
	datab => var_count_debounced(3),
	datac => var_count_debounced(0),
	datad => var_count_debounced(1),
	combout => \Mux8~0_combout\);

-- Location: LCCOMB_X1_Y11_N16
\Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (var_count_debounced(2) & (!var_count_debounced(1) & (var_count_debounced(3) $ (!var_count_debounced(0))))) # (!var_count_debounced(2) & (var_count_debounced(0) & (var_count_debounced(3) $ (!var_count_debounced(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => var_count_debounced(2),
	datab => var_count_debounced(3),
	datac => var_count_debounced(0),
	datad => var_count_debounced(1),
	combout => \Mux7~0_combout\);

ww_count_x(0) <= \count_x[0]~output_o\;

ww_count_x(1) <= \count_x[1]~output_o\;

ww_count_x(2) <= \count_x[2]~output_o\;

ww_count_x(3) <= \count_x[3]~output_o\;

ww_count_debounced(0) <= \count_debounced[0]~output_o\;

ww_count_debounced(1) <= \count_debounced[1]~output_o\;

ww_count_debounced(2) <= \count_debounced[2]~output_o\;

ww_count_debounced(3) <= \count_debounced[3]~output_o\;

ww_ssd_x(0) <= \ssd_x[0]~output_o\;

ww_ssd_x(1) <= \ssd_x[1]~output_o\;

ww_ssd_x(2) <= \ssd_x[2]~output_o\;

ww_ssd_x(3) <= \ssd_x[3]~output_o\;

ww_ssd_x(4) <= \ssd_x[4]~output_o\;

ww_ssd_x(5) <= \ssd_x[5]~output_o\;

ww_ssd_x(6) <= \ssd_x[6]~output_o\;

ww_ssd_debounced(0) <= \ssd_debounced[0]~output_o\;

ww_ssd_debounced(1) <= \ssd_debounced[1]~output_o\;

ww_ssd_debounced(2) <= \ssd_debounced[2]~output_o\;

ww_ssd_debounced(3) <= \ssd_debounced[3]~output_o\;

ww_ssd_debounced(4) <= \ssd_debounced[4]~output_o\;

ww_ssd_debounced(5) <= \ssd_debounced[5]~output_o\;

ww_ssd_debounced(6) <= \ssd_debounced[6]~output_o\;
END structure;


