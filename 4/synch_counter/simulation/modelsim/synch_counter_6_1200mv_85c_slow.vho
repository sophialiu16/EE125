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

-- DATE "05/14/2018 01:45:16"

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

ENTITY 	synch_counter IS
    PORT (
	clk : IN std_logic;
	q : BUFFER std_logic_vector(3 DOWNTO 0)
	);
END synch_counter;

-- Design Ports Information
-- q[0]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[1]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[2]	=>  Location: PIN_K5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[3]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF synch_counter IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_q : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \q[0]~output_o\ : std_logic;
SIGNAL \q[1]~output_o\ : std_logic;
SIGNAL \q[2]~output_o\ : std_logic;
SIGNAL \q[3]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \cell0|q~0_combout\ : std_logic;
SIGNAL \cell0|q~q\ : std_logic;
SIGNAL \gen:1:other_cells|q~0_combout\ : std_logic;
SIGNAL \gen:1:other_cells|q~q\ : std_logic;
SIGNAL \gen:2:other_cells|q~0_combout\ : std_logic;
SIGNAL \gen:2:other_cells|q~q\ : std_logic;
SIGNAL \gen:3:other_cells|q~0_combout\ : std_logic;
SIGNAL \gen:3:other_cells|q~q\ : std_logic;

BEGIN

ww_clk <= clk;
q <= ww_q;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

-- Location: IOOBUF_X0_Y7_N16
\q[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cell0|q~q\,
	devoe => ww_devoe,
	o => \q[0]~output_o\);

-- Location: IOOBUF_X0_Y6_N23
\q[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen:1:other_cells|q~q\,
	devoe => ww_devoe,
	o => \q[1]~output_o\);

-- Location: IOOBUF_X0_Y6_N16
\q[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen:2:other_cells|q~q\,
	devoe => ww_devoe,
	o => \q[2]~output_o\);

-- Location: IOOBUF_X0_Y5_N23
\q[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen:3:other_cells|q~q\,
	devoe => ww_devoe,
	o => \q[3]~output_o\);

-- Location: IOIBUF_X0_Y11_N1
\clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G4
\clk~inputclkctrl\ : cycloneiii_clkctrl
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

-- Location: LCCOMB_X1_Y6_N12
\cell0|q~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cell0|q~0_combout\ = !\cell0|q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cell0|q~q\,
	combout => \cell0|q~0_combout\);

-- Location: FF_X1_Y6_N13
\cell0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cell0|q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cell0|q~q\);

-- Location: LCCOMB_X1_Y6_N2
\gen:1:other_cells|q~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gen:1:other_cells|q~0_combout\ = \gen:1:other_cells|q~q\ $ (\cell0|q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gen:1:other_cells|q~q\,
	datad => \cell0|q~q\,
	combout => \gen:1:other_cells|q~0_combout\);

-- Location: FF_X1_Y6_N3
\gen:1:other_cells|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \gen:1:other_cells|q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen:1:other_cells|q~q\);

-- Location: LCCOMB_X1_Y6_N24
\gen:2:other_cells|q~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gen:2:other_cells|q~0_combout\ = \gen:2:other_cells|q~q\ $ (((\gen:1:other_cells|q~q\ & \cell0|q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \gen:1:other_cells|q~q\,
	datac => \gen:2:other_cells|q~q\,
	datad => \cell0|q~q\,
	combout => \gen:2:other_cells|q~0_combout\);

-- Location: FF_X1_Y6_N25
\gen:2:other_cells|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \gen:2:other_cells|q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen:2:other_cells|q~q\);

-- Location: LCCOMB_X1_Y6_N30
\gen:3:other_cells|q~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gen:3:other_cells|q~0_combout\ = \gen:3:other_cells|q~q\ $ (((\cell0|q~q\ & (\gen:2:other_cells|q~q\ & \gen:1:other_cells|q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cell0|q~q\,
	datab => \gen:2:other_cells|q~q\,
	datac => \gen:3:other_cells|q~q\,
	datad => \gen:1:other_cells|q~q\,
	combout => \gen:3:other_cells|q~0_combout\);

-- Location: FF_X1_Y6_N31
\gen:3:other_cells|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \gen:3:other_cells|q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen:3:other_cells|q~q\);

ww_q(0) <= \q[0]~output_o\;

ww_q(1) <= \q[1]~output_o\;

ww_q(2) <= \q[2]~output_o\;

ww_q(3) <= \q[3]~output_o\;
END structure;


