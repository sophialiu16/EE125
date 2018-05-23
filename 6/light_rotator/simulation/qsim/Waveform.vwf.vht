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
-- Generated on "05/22/2018 19:59:44"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          light_rotator
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY light_rotator_vhd_vec_tst IS
END light_rotator_vhd_vec_tst;
ARCHITECTURE light_rotator_arch OF light_rotator_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk_sys : STD_LOGIC;
SIGNAL dir : STD_LOGIC;
SIGNAL rst : STD_LOGIC;
SIGNAL spd : STD_LOGIC;
SIGNAL ssd : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL stp : STD_LOGIC;
SIGNAL tout : STD_LOGIC_VECTOR(8 DOWNTO 0);
COMPONENT light_rotator
	PORT (
	clk_sys : IN STD_LOGIC;
	dir : IN STD_LOGIC;
	rst : IN STD_LOGIC;
	spd : IN STD_LOGIC;
	ssd : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	stp : IN STD_LOGIC;
	tout : OUT STD_LOGIC_VECTOR(8 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : light_rotator
	PORT MAP (
-- list connections between master ports and signals
	clk_sys => clk_sys,
	dir => dir,
	rst => rst,
	spd => spd,
	ssd => ssd,
	stp => stp,
	tout => tout
	);

-- clk_sys
t_prcs_clk_sys: PROCESS
BEGIN
LOOP
	clk_sys <= '0';
	WAIT FOR 10000 ps;
	clk_sys <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk_sys;

-- dir
t_prcs_dir: PROCESS
BEGIN
	dir <= '0';
WAIT;
END PROCESS t_prcs_dir;

-- rst
t_prcs_rst: PROCESS
BEGIN
	rst <= '1';
WAIT;
END PROCESS t_prcs_rst;

-- spd
t_prcs_spd: PROCESS
BEGIN
	FOR i IN 1 TO 12
	LOOP
		spd <= '0';
		WAIT FOR 40000 ps;
		spd <= '1';
		WAIT FOR 40000 ps;
	END LOOP;
	spd <= '0';
WAIT;
END PROCESS t_prcs_spd;

-- stp
t_prcs_stp: PROCESS
BEGIN
	stp <= '1';
WAIT;
END PROCESS t_prcs_stp;
END light_rotator_arch;
