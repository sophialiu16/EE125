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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "05/03/2018 18:02:25"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          debouncer
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY debouncer_vhd_vec_tst IS
END debouncer_vhd_vec_tst;
ARCHITECTURE debouncer_arch OF debouncer_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL count_debounced : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL count_x : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL reset : STD_LOGIC;
SIGNAL ssd_debounced : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL ssd_x : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL x : STD_LOGIC;
COMPONENT debouncer
	PORT (
	clk : IN STD_LOGIC;
	count_debounced : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	count_x : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	reset : IN STD_LOGIC;
	ssd_debounced : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	ssd_x : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	x : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : debouncer
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	count_debounced => count_debounced,
	count_x => count_x,
	reset => reset,
	ssd_debounced => ssd_debounced,
	ssd_x => ssd_x,
	x => x
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 10000 ps;
	clk <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '0';
WAIT;
END PROCESS t_prcs_reset;

-- x
t_prcs_x: PROCESS
BEGIN
	x <= '0';
WAIT;
END PROCESS t_prcs_x;
END debouncer_arch;
