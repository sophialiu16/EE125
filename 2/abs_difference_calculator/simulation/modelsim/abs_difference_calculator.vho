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

-- DATE "04/25/2018 01:39:11"

-- 
-- Device: Altera EP3C5E144C7 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	abs_difference_calculator IS
    PORT (
	a0 : IN std_logic_vector(4 DOWNTO 0);
	a1 : IN std_logic_vector(4 DOWNTO 0);
	a2 : IN std_logic_vector(4 DOWNTO 0);
	a3 : IN std_logic_vector(4 DOWNTO 0);
	a4 : IN std_logic_vector(4 DOWNTO 0);
	a5 : IN std_logic_vector(4 DOWNTO 0);
	b0 : IN std_logic_vector(4 DOWNTO 0);
	b1 : IN std_logic_vector(4 DOWNTO 0);
	b2 : IN std_logic_vector(4 DOWNTO 0);
	b3 : IN std_logic_vector(4 DOWNTO 0);
	b4 : IN std_logic_vector(4 DOWNTO 0);
	b5 : IN std_logic_vector(4 DOWNTO 0);
	abs_diff : OUT std_logic_vector(0 TO 7)
	);
END abs_difference_calculator;

-- Design Ports Information
-- abs_diff[7]	=>  Location: PIN_65,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- abs_diff[6]	=>  Location: PIN_32,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- abs_diff[5]	=>  Location: PIN_66,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- abs_diff[4]	=>  Location: PIN_69,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- abs_diff[3]	=>  Location: PIN_59,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- abs_diff[2]	=>  Location: PIN_60,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- abs_diff[1]	=>  Location: PIN_67,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- abs_diff[0]	=>  Location: PIN_64,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b5[4]	=>  Location: PIN_34,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a5[4]	=>  Location: PIN_51,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b5[3]	=>  Location: PIN_50,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a5[3]	=>  Location: PIN_55,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b5[2]	=>  Location: PIN_46,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a5[2]	=>  Location: PIN_58,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b5[1]	=>  Location: PIN_53,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a5[1]	=>  Location: PIN_54,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b5[0]	=>  Location: PIN_49,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a5[0]	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b4[4]	=>  Location: PIN_72,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a4[4]	=>  Location: PIN_80,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b4[3]	=>  Location: PIN_75,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a4[3]	=>  Location: PIN_74,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b4[2]	=>  Location: PIN_70,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a4[2]	=>  Location: PIN_79,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b4[1]	=>  Location: PIN_76,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a4[1]	=>  Location: PIN_77,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b4[0]	=>  Location: PIN_73,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a4[0]	=>  Location: PIN_71,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b1[4]	=>  Location: PIN_103,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a1[4]	=>  Location: PIN_111,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b1[3]	=>  Location: PIN_106,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a1[3]	=>  Location: PIN_114,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b1[2]	=>  Location: PIN_110,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a1[2]	=>  Location: PIN_88,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b1[1]	=>  Location: PIN_89,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a1[1]	=>  Location: PIN_112,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b1[0]	=>  Location: PIN_86,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a1[0]	=>  Location: PIN_105,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b0[4]	=>  Location: PIN_142,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a0[4]	=>  Location: PIN_141,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b0[3]	=>  Location: PIN_133,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a0[3]	=>  Location: PIN_138,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b0[2]	=>  Location: PIN_132,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a0[2]	=>  Location: PIN_135,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b0[1]	=>  Location: PIN_136,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a0[1]	=>  Location: PIN_7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b0[0]	=>  Location: PIN_137,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a0[0]	=>  Location: PIN_126,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b3[4]	=>  Location: PIN_120,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a3[4]	=>  Location: PIN_115,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b3[3]	=>  Location: PIN_121,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a3[3]	=>  Location: PIN_125,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b3[2]	=>  Location: PIN_113,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a3[2]	=>  Location: PIN_127,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b3[1]	=>  Location: PIN_128,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a3[1]	=>  Location: PIN_129,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b3[0]	=>  Location: PIN_119,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a3[0]	=>  Location: PIN_124,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b2[4]	=>  Location: PIN_104,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a2[4]	=>  Location: PIN_83,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b2[3]	=>  Location: PIN_90,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a2[3]	=>  Location: PIN_91,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b2[2]	=>  Location: PIN_99,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a2[2]	=>  Location: PIN_98,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b2[1]	=>  Location: PIN_87,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a2[1]	=>  Location: PIN_100,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b2[0]	=>  Location: PIN_84,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a2[0]	=>  Location: PIN_85,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF abs_difference_calculator IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_a0 : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_a1 : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_a2 : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_a3 : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_a4 : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_a5 : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_b0 : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_b1 : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_b2 : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_b3 : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_b4 : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_b5 : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_abs_diff : std_logic_vector(0 TO 7);
SIGNAL \abs_diff[7]~output_o\ : std_logic;
SIGNAL \abs_diff[6]~output_o\ : std_logic;
SIGNAL \abs_diff[5]~output_o\ : std_logic;
SIGNAL \abs_diff[4]~output_o\ : std_logic;
SIGNAL \abs_diff[3]~output_o\ : std_logic;
SIGNAL \abs_diff[2]~output_o\ : std_logic;
SIGNAL \abs_diff[1]~output_o\ : std_logic;
SIGNAL \abs_diff[0]~output_o\ : std_logic;
SIGNAL \a1[4]~input_o\ : std_logic;
SIGNAL \b1[4]~input_o\ : std_logic;
SIGNAL \a1[3]~input_o\ : std_logic;
SIGNAL \b1[3]~input_o\ : std_logic;
SIGNAL \b1[2]~input_o\ : std_logic;
SIGNAL \a1[2]~input_o\ : std_logic;
SIGNAL \b1[1]~input_o\ : std_logic;
SIGNAL \a1[1]~input_o\ : std_logic;
SIGNAL \a1[0]~input_o\ : std_logic;
SIGNAL \b1[0]~input_o\ : std_logic;
SIGNAL \Add2~1\ : std_logic;
SIGNAL \Add2~3\ : std_logic;
SIGNAL \Add2~5\ : std_logic;
SIGNAL \Add2~7\ : std_logic;
SIGNAL \Add2~9\ : std_logic;
SIGNAL \Add2~10_combout\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \abs_diff_uns~2_combout\ : std_logic;
SIGNAL \Add3~0_combout\ : std_logic;
SIGNAL \b0[4]~input_o\ : std_logic;
SIGNAL \a0[4]~input_o\ : std_logic;
SIGNAL \a0[3]~input_o\ : std_logic;
SIGNAL \b0[3]~input_o\ : std_logic;
SIGNAL \b0[2]~input_o\ : std_logic;
SIGNAL \a0[2]~input_o\ : std_logic;
SIGNAL \b0[1]~input_o\ : std_logic;
SIGNAL \a0[1]~input_o\ : std_logic;
SIGNAL \b0[0]~input_o\ : std_logic;
SIGNAL \a0[0]~input_o\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \abs_diff_uns~3_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Add4~0_combout\ : std_logic;
SIGNAL \a2[0]~input_o\ : std_logic;
SIGNAL \b2[0]~input_o\ : std_logic;
SIGNAL \Add5~0_combout\ : std_logic;
SIGNAL \a2[4]~input_o\ : std_logic;
SIGNAL \b2[4]~input_o\ : std_logic;
SIGNAL \a2[3]~input_o\ : std_logic;
SIGNAL \b2[3]~input_o\ : std_logic;
SIGNAL \a2[2]~input_o\ : std_logic;
SIGNAL \b2[2]~input_o\ : std_logic;
SIGNAL \a2[1]~input_o\ : std_logic;
SIGNAL \b2[1]~input_o\ : std_logic;
SIGNAL \Add5~1\ : std_logic;
SIGNAL \Add5~3\ : std_logic;
SIGNAL \Add5~5\ : std_logic;
SIGNAL \Add5~7\ : std_logic;
SIGNAL \Add5~9\ : std_logic;
SIGNAL \Add5~10_combout\ : std_logic;
SIGNAL \abs_diff_uns~5_combout\ : std_logic;
SIGNAL \Add6~0_combout\ : std_logic;
SIGNAL \b3[4]~input_o\ : std_logic;
SIGNAL \a3[4]~input_o\ : std_logic;
SIGNAL \a3[3]~input_o\ : std_logic;
SIGNAL \b3[3]~input_o\ : std_logic;
SIGNAL \a3[2]~input_o\ : std_logic;
SIGNAL \b3[2]~input_o\ : std_logic;
SIGNAL \b3[1]~input_o\ : std_logic;
SIGNAL \a3[1]~input_o\ : std_logic;
SIGNAL \a3[0]~input_o\ : std_logic;
SIGNAL \b3[0]~input_o\ : std_logic;
SIGNAL \Add8~1\ : std_logic;
SIGNAL \Add8~3\ : std_logic;
SIGNAL \Add8~5\ : std_logic;
SIGNAL \Add8~7\ : std_logic;
SIGNAL \Add8~9\ : std_logic;
SIGNAL \Add8~10_combout\ : std_logic;
SIGNAL \Add8~0_combout\ : std_logic;
SIGNAL \abs_diff_uns~4_combout\ : std_logic;
SIGNAL \Add9~0_combout\ : std_logic;
SIGNAL \Add7~0_combout\ : std_logic;
SIGNAL \abs_diff_uns[3][0]~6_combout\ : std_logic;
SIGNAL \b5[0]~input_o\ : std_logic;
SIGNAL \a5[0]~input_o\ : std_logic;
SIGNAL \Add14~0_combout\ : std_logic;
SIGNAL \a5[4]~input_o\ : std_logic;
SIGNAL \b5[4]~input_o\ : std_logic;
SIGNAL \b5[3]~input_o\ : std_logic;
SIGNAL \a5[3]~input_o\ : std_logic;
SIGNAL \b5[2]~input_o\ : std_logic;
SIGNAL \a5[2]~input_o\ : std_logic;
SIGNAL \b5[1]~input_o\ : std_logic;
SIGNAL \a5[1]~input_o\ : std_logic;
SIGNAL \Add14~1\ : std_logic;
SIGNAL \Add14~3\ : std_logic;
SIGNAL \Add14~5\ : std_logic;
SIGNAL \Add14~7\ : std_logic;
SIGNAL \Add14~9\ : std_logic;
SIGNAL \Add14~10_combout\ : std_logic;
SIGNAL \abs_diff_uns~0_combout\ : std_logic;
SIGNAL \Add15~0_combout\ : std_logic;
SIGNAL \b4[4]~input_o\ : std_logic;
SIGNAL \a4[4]~input_o\ : std_logic;
SIGNAL \a4[3]~input_o\ : std_logic;
SIGNAL \b4[3]~input_o\ : std_logic;
SIGNAL \a4[2]~input_o\ : std_logic;
SIGNAL \b4[2]~input_o\ : std_logic;
SIGNAL \b4[1]~input_o\ : std_logic;
SIGNAL \a4[1]~input_o\ : std_logic;
SIGNAL \b4[0]~input_o\ : std_logic;
SIGNAL \a4[0]~input_o\ : std_logic;
SIGNAL \Add11~1\ : std_logic;
SIGNAL \Add11~3\ : std_logic;
SIGNAL \Add11~5\ : std_logic;
SIGNAL \Add11~7\ : std_logic;
SIGNAL \Add11~9\ : std_logic;
SIGNAL \Add11~10_combout\ : std_logic;
SIGNAL \Add11~0_combout\ : std_logic;
SIGNAL \abs_diff_uns~1_combout\ : std_logic;
SIGNAL \Add12~0_combout\ : std_logic;
SIGNAL \Add13~0_combout\ : std_logic;
SIGNAL \Add16~0_combout\ : std_logic;
SIGNAL \Add5~2_combout\ : std_logic;
SIGNAL \Add6~1\ : std_logic;
SIGNAL \Add6~2_combout\ : std_logic;
SIGNAL \Add8~2_combout\ : std_logic;
SIGNAL \Add9~1\ : std_logic;
SIGNAL \Add9~2_combout\ : std_logic;
SIGNAL \Add7~1\ : std_logic;
SIGNAL \Add7~2_combout\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \Add2~2_combout\ : std_logic;
SIGNAL \Add3~1\ : std_logic;
SIGNAL \Add3~2_combout\ : std_logic;
SIGNAL \Add4~1\ : std_logic;
SIGNAL \Add4~2_combout\ : std_logic;
SIGNAL \abs_diff_uns[3][0]~7\ : std_logic;
SIGNAL \abs_diff_uns[3][1]~8_combout\ : std_logic;
SIGNAL \Add14~2_combout\ : std_logic;
SIGNAL \Add15~1\ : std_logic;
SIGNAL \Add15~2_combout\ : std_logic;
SIGNAL \Add11~2_combout\ : std_logic;
SIGNAL \Add12~1\ : std_logic;
SIGNAL \Add12~2_combout\ : std_logic;
SIGNAL \Add13~1\ : std_logic;
SIGNAL \Add13~2_combout\ : std_logic;
SIGNAL \Add16~1\ : std_logic;
SIGNAL \Add16~2_combout\ : std_logic;
SIGNAL \Add8~4_combout\ : std_logic;
SIGNAL \Add9~3\ : std_logic;
SIGNAL \Add9~4_combout\ : std_logic;
SIGNAL \Add5~4_combout\ : std_logic;
SIGNAL \Add6~3\ : std_logic;
SIGNAL \Add6~4_combout\ : std_logic;
SIGNAL \Add7~3\ : std_logic;
SIGNAL \Add7~4_combout\ : std_logic;
SIGNAL \Add2~4_combout\ : std_logic;
SIGNAL \Add3~3\ : std_logic;
SIGNAL \Add3~4_combout\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \Add4~3\ : std_logic;
SIGNAL \Add4~4_combout\ : std_logic;
SIGNAL \abs_diff_uns[3][1]~9\ : std_logic;
SIGNAL \abs_diff_uns[3][2]~10_combout\ : std_logic;
SIGNAL \Add14~4_combout\ : std_logic;
SIGNAL \Add15~3\ : std_logic;
SIGNAL \Add15~4_combout\ : std_logic;
SIGNAL \Add11~4_combout\ : std_logic;
SIGNAL \Add12~3\ : std_logic;
SIGNAL \Add12~4_combout\ : std_logic;
SIGNAL \Add13~3\ : std_logic;
SIGNAL \Add13~4_combout\ : std_logic;
SIGNAL \Add16~3\ : std_logic;
SIGNAL \Add16~4_combout\ : std_logic;
SIGNAL \Add11~6_combout\ : std_logic;
SIGNAL \Add12~5\ : std_logic;
SIGNAL \Add12~6_combout\ : std_logic;
SIGNAL \Add14~6_combout\ : std_logic;
SIGNAL \Add15~5\ : std_logic;
SIGNAL \Add15~6_combout\ : std_logic;
SIGNAL \Add13~5\ : std_logic;
SIGNAL \Add13~6_combout\ : std_logic;
SIGNAL \Add8~6_combout\ : std_logic;
SIGNAL \Add9~5\ : std_logic;
SIGNAL \Add9~6_combout\ : std_logic;
SIGNAL \Add5~6_combout\ : std_logic;
SIGNAL \Add6~5\ : std_logic;
SIGNAL \Add6~6_combout\ : std_logic;
SIGNAL \Add7~5\ : std_logic;
SIGNAL \Add7~6_combout\ : std_logic;
SIGNAL \Add2~6_combout\ : std_logic;
SIGNAL \Add3~5\ : std_logic;
SIGNAL \Add3~6_combout\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \Add4~5\ : std_logic;
SIGNAL \Add4~6_combout\ : std_logic;
SIGNAL \abs_diff_uns[3][2]~11\ : std_logic;
SIGNAL \abs_diff_uns[3][3]~12_combout\ : std_logic;
SIGNAL \Add16~5\ : std_logic;
SIGNAL \Add16~6_combout\ : std_logic;
SIGNAL \Add14~8_combout\ : std_logic;
SIGNAL \Add15~7\ : std_logic;
SIGNAL \Add15~8_combout\ : std_logic;
SIGNAL \Add11~8_combout\ : std_logic;
SIGNAL \Add12~7\ : std_logic;
SIGNAL \Add12~8_combout\ : std_logic;
SIGNAL \Add13~7\ : std_logic;
SIGNAL \Add13~8_combout\ : std_logic;
SIGNAL \Add8~8_combout\ : std_logic;
SIGNAL \Add9~7\ : std_logic;
SIGNAL \Add9~8_combout\ : std_logic;
SIGNAL \Add5~8_combout\ : std_logic;
SIGNAL \Add6~7\ : std_logic;
SIGNAL \Add6~8_combout\ : std_logic;
SIGNAL \Add7~7\ : std_logic;
SIGNAL \Add7~8_combout\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \Add2~8_combout\ : std_logic;
SIGNAL \Add3~7\ : std_logic;
SIGNAL \Add3~8_combout\ : std_logic;
SIGNAL \Add4~7\ : std_logic;
SIGNAL \Add4~8_combout\ : std_logic;
SIGNAL \abs_diff_uns[3][3]~13\ : std_logic;
SIGNAL \abs_diff_uns[3][4]~14_combout\ : std_logic;
SIGNAL \Add16~7\ : std_logic;
SIGNAL \Add16~8_combout\ : std_logic;
SIGNAL \Add12~9\ : std_logic;
SIGNAL \Add12~10_combout\ : std_logic;
SIGNAL \Add15~9\ : std_logic;
SIGNAL \Add15~10_combout\ : std_logic;
SIGNAL \Add13~9\ : std_logic;
SIGNAL \Add13~10_combout\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \Add3~9\ : std_logic;
SIGNAL \Add3~10_combout\ : std_logic;
SIGNAL \Add4~9\ : std_logic;
SIGNAL \Add4~10_combout\ : std_logic;
SIGNAL \Add6~9\ : std_logic;
SIGNAL \Add6~10_combout\ : std_logic;
SIGNAL \Add9~9\ : std_logic;
SIGNAL \Add9~10_combout\ : std_logic;
SIGNAL \Add7~9\ : std_logic;
SIGNAL \Add7~10_combout\ : std_logic;
SIGNAL \abs_diff_uns[3][4]~15\ : std_logic;
SIGNAL \abs_diff_uns[3][5]~16_combout\ : std_logic;
SIGNAL \Add16~9\ : std_logic;
SIGNAL \Add16~10_combout\ : std_logic;
SIGNAL \Add4~11\ : std_logic;
SIGNAL \Add4~12_combout\ : std_logic;
SIGNAL \Add7~11\ : std_logic;
SIGNAL \Add7~12_combout\ : std_logic;
SIGNAL \abs_diff_uns[3][5]~17\ : std_logic;
SIGNAL \abs_diff_uns[3][6]~18_combout\ : std_logic;
SIGNAL \Add13~11\ : std_logic;
SIGNAL \Add13~12_combout\ : std_logic;
SIGNAL \Add16~11\ : std_logic;
SIGNAL \Add16~12_combout\ : std_logic;
SIGNAL \abs_diff_uns[3][6]~19\ : std_logic;
SIGNAL \abs_diff_uns[3][7]~20_combout\ : std_logic;
SIGNAL \Add16~13\ : std_logic;
SIGNAL \Add16~14_combout\ : std_logic;

BEGIN

ww_a0 <= a0;
ww_a1 <= a1;
ww_a2 <= a2;
ww_a3 <= a3;
ww_a4 <= a4;
ww_a5 <= a5;
ww_b0 <= b0;
ww_b1 <= b1;
ww_b2 <= b2;
ww_b3 <= b3;
ww_b4 <= b4;
ww_b5 <= b5;
abs_diff <= ww_abs_diff;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X28_Y0_N23
\abs_diff[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add16~0_combout\,
	devoe => ww_devoe,
	o => \abs_diff[7]~output_o\);

-- Location: IOOBUF_X0_Y6_N16
\abs_diff[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add16~2_combout\,
	devoe => ww_devoe,
	o => \abs_diff[6]~output_o\);

-- Location: IOOBUF_X28_Y0_N2
\abs_diff[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add16~4_combout\,
	devoe => ww_devoe,
	o => \abs_diff[5]~output_o\);

-- Location: IOOBUF_X30_Y0_N2
\abs_diff[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add16~6_combout\,
	devoe => ww_devoe,
	o => \abs_diff[4]~output_o\);

-- Location: IOOBUF_X23_Y0_N16
\abs_diff[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add16~8_combout\,
	devoe => ww_devoe,
	o => \abs_diff[3]~output_o\);

-- Location: IOOBUF_X23_Y0_N9
\abs_diff[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add16~10_combout\,
	devoe => ww_devoe,
	o => \abs_diff[2]~output_o\);

-- Location: IOOBUF_X30_Y0_N23
\abs_diff[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add16~12_combout\,
	devoe => ww_devoe,
	o => \abs_diff[1]~output_o\);

-- Location: IOOBUF_X25_Y0_N2
\abs_diff[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add16~14_combout\,
	devoe => ww_devoe,
	o => \abs_diff[0]~output_o\);

-- Location: IOIBUF_X30_Y24_N22
\a1[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a1(4),
	o => \a1[4]~input_o\);

-- Location: IOIBUF_X34_Y18_N15
\b1[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b1(4),
	o => \b1[4]~input_o\);

-- Location: IOIBUF_X28_Y24_N15
\a1[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a1(3),
	o => \a1[3]~input_o\);

-- Location: IOIBUF_X34_Y20_N8
\b1[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b1(3),
	o => \b1[3]~input_o\);

-- Location: IOIBUF_X30_Y24_N1
\b1[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b1(2),
	o => \b1[2]~input_o\);

-- Location: IOIBUF_X34_Y12_N22
\a1[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a1(2),
	o => \a1[2]~input_o\);

-- Location: IOIBUF_X34_Y12_N15
\b1[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b1(1),
	o => \b1[1]~input_o\);

-- Location: IOIBUF_X28_Y24_N1
\a1[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a1(1),
	o => \a1[1]~input_o\);

-- Location: IOIBUF_X34_Y19_N15
\a1[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a1(0),
	o => \a1[0]~input_o\);

-- Location: IOIBUF_X34_Y9_N1
\b1[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b1(0),
	o => \b1[0]~input_o\);

-- Location: LCCOMB_X29_Y21_N16
\Add2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = (\a1[0]~input_o\ & ((GND) # (!\b1[0]~input_o\))) # (!\a1[0]~input_o\ & (\b1[0]~input_o\ $ (GND)))
-- \Add2~1\ = CARRY((\a1[0]~input_o\) # (!\b1[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a1[0]~input_o\,
	datab => \b1[0]~input_o\,
	datad => VCC,
	combout => \Add2~0_combout\,
	cout => \Add2~1\);

-- Location: LCCOMB_X29_Y21_N18
\Add2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~2_combout\ = (\b1[1]~input_o\ & ((\a1[1]~input_o\ & (!\Add2~1\)) # (!\a1[1]~input_o\ & ((\Add2~1\) # (GND))))) # (!\b1[1]~input_o\ & ((\a1[1]~input_o\ & (\Add2~1\ & VCC)) # (!\a1[1]~input_o\ & (!\Add2~1\))))
-- \Add2~3\ = CARRY((\b1[1]~input_o\ & ((!\Add2~1\) # (!\a1[1]~input_o\))) # (!\b1[1]~input_o\ & (!\a1[1]~input_o\ & !\Add2~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b1[1]~input_o\,
	datab => \a1[1]~input_o\,
	datad => VCC,
	cin => \Add2~1\,
	combout => \Add2~2_combout\,
	cout => \Add2~3\);

-- Location: LCCOMB_X29_Y21_N20
\Add2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~4_combout\ = ((\b1[2]~input_o\ $ (\a1[2]~input_o\ $ (\Add2~3\)))) # (GND)
-- \Add2~5\ = CARRY((\b1[2]~input_o\ & (\a1[2]~input_o\ & !\Add2~3\)) # (!\b1[2]~input_o\ & ((\a1[2]~input_o\) # (!\Add2~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b1[2]~input_o\,
	datab => \a1[2]~input_o\,
	datad => VCC,
	cin => \Add2~3\,
	combout => \Add2~4_combout\,
	cout => \Add2~5\);

-- Location: LCCOMB_X29_Y21_N22
\Add2~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~6_combout\ = (\a1[3]~input_o\ & ((\b1[3]~input_o\ & (!\Add2~5\)) # (!\b1[3]~input_o\ & (\Add2~5\ & VCC)))) # (!\a1[3]~input_o\ & ((\b1[3]~input_o\ & ((\Add2~5\) # (GND))) # (!\b1[3]~input_o\ & (!\Add2~5\))))
-- \Add2~7\ = CARRY((\a1[3]~input_o\ & (\b1[3]~input_o\ & !\Add2~5\)) # (!\a1[3]~input_o\ & ((\b1[3]~input_o\) # (!\Add2~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a1[3]~input_o\,
	datab => \b1[3]~input_o\,
	datad => VCC,
	cin => \Add2~5\,
	combout => \Add2~6_combout\,
	cout => \Add2~7\);

-- Location: LCCOMB_X29_Y21_N24
\Add2~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~8_combout\ = ((\a1[4]~input_o\ $ (\b1[4]~input_o\ $ (\Add2~7\)))) # (GND)
-- \Add2~9\ = CARRY((\a1[4]~input_o\ & ((!\Add2~7\) # (!\b1[4]~input_o\))) # (!\a1[4]~input_o\ & (!\b1[4]~input_o\ & !\Add2~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a1[4]~input_o\,
	datab => \b1[4]~input_o\,
	datad => VCC,
	cin => \Add2~7\,
	combout => \Add2~8_combout\,
	cout => \Add2~9\);

-- Location: LCCOMB_X29_Y21_N26
\Add2~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~10_combout\ = \a1[4]~input_o\ $ (\Add2~9\ $ (!\b1[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a1[4]~input_o\,
	datad => \b1[4]~input_o\,
	cin => \Add2~9\,
	combout => \Add2~10_combout\);

-- Location: LCCOMB_X29_Y21_N28
\abs_diff_uns~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \abs_diff_uns~2_combout\ = \Add2~10_combout\ $ (\Add2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~10_combout\,
	datad => \Add2~0_combout\,
	combout => \abs_diff_uns~2_combout\);

-- Location: LCCOMB_X29_Y21_N0
\Add3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~0_combout\ = (\Add2~10_combout\ & (\abs_diff_uns~2_combout\ $ (VCC))) # (!\Add2~10_combout\ & (\abs_diff_uns~2_combout\ & VCC))
-- \Add3~1\ = CARRY((\Add2~10_combout\ & \abs_diff_uns~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~10_combout\,
	datab => \abs_diff_uns~2_combout\,
	datad => VCC,
	combout => \Add3~0_combout\,
	cout => \Add3~1\);

-- Location: IOIBUF_X3_Y24_N22
\b0[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b0(4),
	o => \b0[4]~input_o\);

-- Location: IOIBUF_X5_Y24_N8
\a0[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a0(4),
	o => \a0[4]~input_o\);

-- Location: IOIBUF_X7_Y24_N8
\a0[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a0(3),
	o => \a0[3]~input_o\);

-- Location: IOIBUF_X13_Y24_N22
\b0[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b0(3),
	o => \b0[3]~input_o\);

-- Location: IOIBUF_X13_Y24_N15
\b0[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b0(2),
	o => \b0[2]~input_o\);

-- Location: IOIBUF_X11_Y24_N15
\a0[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a0(2),
	o => \a0[2]~input_o\);

-- Location: IOIBUF_X9_Y24_N8
\b0[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b0(1),
	o => \b0[1]~input_o\);

-- Location: IOIBUF_X0_Y21_N8
\a0[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a0(1),
	o => \a0[1]~input_o\);

-- Location: IOIBUF_X7_Y24_N1
\b0[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b0(0),
	o => \b0[0]~input_o\);

-- Location: IOIBUF_X16_Y24_N1
\a0[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a0(0),
	o => \a0[0]~input_o\);

-- Location: LCCOMB_X13_Y21_N0
\Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = (\b0[0]~input_o\ & (\a0[0]~input_o\ $ (VCC))) # (!\b0[0]~input_o\ & ((\a0[0]~input_o\) # (GND)))
-- \Add0~1\ = CARRY((\a0[0]~input_o\) # (!\b0[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b0[0]~input_o\,
	datab => \a0[0]~input_o\,
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X13_Y21_N2
\Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (\b0[1]~input_o\ & ((\a0[1]~input_o\ & (!\Add0~1\)) # (!\a0[1]~input_o\ & ((\Add0~1\) # (GND))))) # (!\b0[1]~input_o\ & ((\a0[1]~input_o\ & (\Add0~1\ & VCC)) # (!\a0[1]~input_o\ & (!\Add0~1\))))
-- \Add0~3\ = CARRY((\b0[1]~input_o\ & ((!\Add0~1\) # (!\a0[1]~input_o\))) # (!\b0[1]~input_o\ & (!\a0[1]~input_o\ & !\Add0~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b0[1]~input_o\,
	datab => \a0[1]~input_o\,
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X13_Y21_N4
\Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = ((\b0[2]~input_o\ $ (\a0[2]~input_o\ $ (\Add0~3\)))) # (GND)
-- \Add0~5\ = CARRY((\b0[2]~input_o\ & (\a0[2]~input_o\ & !\Add0~3\)) # (!\b0[2]~input_o\ & ((\a0[2]~input_o\) # (!\Add0~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b0[2]~input_o\,
	datab => \a0[2]~input_o\,
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X13_Y21_N6
\Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (\a0[3]~input_o\ & ((\b0[3]~input_o\ & (!\Add0~5\)) # (!\b0[3]~input_o\ & (\Add0~5\ & VCC)))) # (!\a0[3]~input_o\ & ((\b0[3]~input_o\ & ((\Add0~5\) # (GND))) # (!\b0[3]~input_o\ & (!\Add0~5\))))
-- \Add0~7\ = CARRY((\a0[3]~input_o\ & (\b0[3]~input_o\ & !\Add0~5\)) # (!\a0[3]~input_o\ & ((\b0[3]~input_o\) # (!\Add0~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a0[3]~input_o\,
	datab => \b0[3]~input_o\,
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X13_Y21_N8
\Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = ((\b0[4]~input_o\ $ (\a0[4]~input_o\ $ (\Add0~7\)))) # (GND)
-- \Add0~9\ = CARRY((\b0[4]~input_o\ & (\a0[4]~input_o\ & !\Add0~7\)) # (!\b0[4]~input_o\ & ((\a0[4]~input_o\) # (!\Add0~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b0[4]~input_o\,
	datab => \a0[4]~input_o\,
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X13_Y21_N10
\Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = \b0[4]~input_o\ $ (\a0[4]~input_o\ $ (!\Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b0[4]~input_o\,
	datab => \a0[4]~input_o\,
	cin => \Add0~9\,
	combout => \Add0~10_combout\);

-- Location: LCCOMB_X13_Y21_N12
\abs_diff_uns~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \abs_diff_uns~3_combout\ = \Add0~10_combout\ $ (\Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~10_combout\,
	datad => \Add0~0_combout\,
	combout => \abs_diff_uns~3_combout\);

-- Location: LCCOMB_X13_Y21_N16
\Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = (\Add0~10_combout\ & (\abs_diff_uns~3_combout\ $ (VCC))) # (!\Add0~10_combout\ & (\abs_diff_uns~3_combout\ & VCC))
-- \Add1~1\ = CARRY((\Add0~10_combout\ & \abs_diff_uns~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~10_combout\,
	datab => \abs_diff_uns~3_combout\,
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: LCCOMB_X25_Y21_N0
\Add4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~0_combout\ = (\Add3~0_combout\ & (\Add1~0_combout\ $ (VCC))) # (!\Add3~0_combout\ & (\Add1~0_combout\ & VCC))
-- \Add4~1\ = CARRY((\Add3~0_combout\ & \Add1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~0_combout\,
	datab => \Add1~0_combout\,
	datad => VCC,
	combout => \Add4~0_combout\,
	cout => \Add4~1\);

-- Location: IOIBUF_X34_Y9_N8
\a2[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a2(0),
	o => \a2[0]~input_o\);

-- Location: IOIBUF_X34_Y9_N15
\b2[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b2(0),
	o => \b2[0]~input_o\);

-- Location: LCCOMB_X33_Y17_N18
\Add5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~0_combout\ = (\a2[0]~input_o\ & ((GND) # (!\b2[0]~input_o\))) # (!\a2[0]~input_o\ & (\b2[0]~input_o\ $ (GND)))
-- \Add5~1\ = CARRY((\a2[0]~input_o\) # (!\b2[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a2[0]~input_o\,
	datab => \b2[0]~input_o\,
	datad => VCC,
	combout => \Add5~0_combout\,
	cout => \Add5~1\);

-- Location: IOIBUF_X34_Y9_N22
\a2[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a2(4),
	o => \a2[4]~input_o\);

-- Location: IOIBUF_X34_Y18_N1
\b2[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b2(4),
	o => \b2[4]~input_o\);

-- Location: IOIBUF_X34_Y12_N1
\a2[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a2(3),
	o => \a2[3]~input_o\);

-- Location: IOIBUF_X34_Y12_N8
\b2[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b2(3),
	o => \b2[3]~input_o\);

-- Location: IOIBUF_X34_Y17_N22
\a2[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a2(2),
	o => \a2[2]~input_o\);

-- Location: IOIBUF_X34_Y17_N15
\b2[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b2(2),
	o => \b2[2]~input_o\);

-- Location: IOIBUF_X34_Y17_N1
\a2[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a2(1),
	o => \a2[1]~input_o\);

-- Location: IOIBUF_X34_Y10_N8
\b2[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b2(1),
	o => \b2[1]~input_o\);

-- Location: LCCOMB_X33_Y17_N20
\Add5~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~2_combout\ = (\a2[1]~input_o\ & ((\b2[1]~input_o\ & (!\Add5~1\)) # (!\b2[1]~input_o\ & (\Add5~1\ & VCC)))) # (!\a2[1]~input_o\ & ((\b2[1]~input_o\ & ((\Add5~1\) # (GND))) # (!\b2[1]~input_o\ & (!\Add5~1\))))
-- \Add5~3\ = CARRY((\a2[1]~input_o\ & (\b2[1]~input_o\ & !\Add5~1\)) # (!\a2[1]~input_o\ & ((\b2[1]~input_o\) # (!\Add5~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a2[1]~input_o\,
	datab => \b2[1]~input_o\,
	datad => VCC,
	cin => \Add5~1\,
	combout => \Add5~2_combout\,
	cout => \Add5~3\);

-- Location: LCCOMB_X33_Y17_N22
\Add5~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~4_combout\ = ((\a2[2]~input_o\ $ (\b2[2]~input_o\ $ (\Add5~3\)))) # (GND)
-- \Add5~5\ = CARRY((\a2[2]~input_o\ & ((!\Add5~3\) # (!\b2[2]~input_o\))) # (!\a2[2]~input_o\ & (!\b2[2]~input_o\ & !\Add5~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a2[2]~input_o\,
	datab => \b2[2]~input_o\,
	datad => VCC,
	cin => \Add5~3\,
	combout => \Add5~4_combout\,
	cout => \Add5~5\);

-- Location: LCCOMB_X33_Y17_N24
\Add5~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~6_combout\ = (\a2[3]~input_o\ & ((\b2[3]~input_o\ & (!\Add5~5\)) # (!\b2[3]~input_o\ & (\Add5~5\ & VCC)))) # (!\a2[3]~input_o\ & ((\b2[3]~input_o\ & ((\Add5~5\) # (GND))) # (!\b2[3]~input_o\ & (!\Add5~5\))))
-- \Add5~7\ = CARRY((\a2[3]~input_o\ & (\b2[3]~input_o\ & !\Add5~5\)) # (!\a2[3]~input_o\ & ((\b2[3]~input_o\) # (!\Add5~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a2[3]~input_o\,
	datab => \b2[3]~input_o\,
	datad => VCC,
	cin => \Add5~5\,
	combout => \Add5~6_combout\,
	cout => \Add5~7\);

-- Location: LCCOMB_X33_Y17_N26
\Add5~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~8_combout\ = ((\a2[4]~input_o\ $ (\b2[4]~input_o\ $ (\Add5~7\)))) # (GND)
-- \Add5~9\ = CARRY((\a2[4]~input_o\ & ((!\Add5~7\) # (!\b2[4]~input_o\))) # (!\a2[4]~input_o\ & (!\b2[4]~input_o\ & !\Add5~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a2[4]~input_o\,
	datab => \b2[4]~input_o\,
	datad => VCC,
	cin => \Add5~7\,
	combout => \Add5~8_combout\,
	cout => \Add5~9\);

-- Location: LCCOMB_X33_Y17_N28
\Add5~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~10_combout\ = \a2[4]~input_o\ $ (\Add5~9\ $ (!\b2[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \a2[4]~input_o\,
	datad => \b2[4]~input_o\,
	cin => \Add5~9\,
	combout => \Add5~10_combout\);

-- Location: LCCOMB_X33_Y17_N0
\abs_diff_uns~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \abs_diff_uns~5_combout\ = \Add5~0_combout\ $ (\Add5~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add5~0_combout\,
	datad => \Add5~10_combout\,
	combout => \abs_diff_uns~5_combout\);

-- Location: LCCOMB_X33_Y17_N6
\Add6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add6~0_combout\ = (\abs_diff_uns~5_combout\ & (\Add5~10_combout\ $ (VCC))) # (!\abs_diff_uns~5_combout\ & (\Add5~10_combout\ & VCC))
-- \Add6~1\ = CARRY((\abs_diff_uns~5_combout\ & \Add5~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \abs_diff_uns~5_combout\,
	datab => \Add5~10_combout\,
	datad => VCC,
	combout => \Add6~0_combout\,
	cout => \Add6~1\);

-- Location: IOIBUF_X23_Y24_N8
\b3[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b3(4),
	o => \b3[4]~input_o\);

-- Location: IOIBUF_X28_Y24_N22
\a3[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a3(4),
	o => \a3[4]~input_o\);

-- Location: IOIBUF_X18_Y24_N22
\a3[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a3(3),
	o => \a3[3]~input_o\);

-- Location: IOIBUF_X23_Y24_N15
\b3[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b3(3),
	o => \b3[3]~input_o\);

-- Location: IOIBUF_X16_Y24_N8
\a3[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a3(2),
	o => \a3[2]~input_o\);

-- Location: IOIBUF_X28_Y24_N8
\b3[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b3(2),
	o => \b3[2]~input_o\);

-- Location: IOIBUF_X16_Y24_N15
\b3[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b3(1),
	o => \b3[1]~input_o\);

-- Location: IOIBUF_X16_Y24_N22
\a3[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a3(1),
	o => \a3[1]~input_o\);

-- Location: IOIBUF_X18_Y24_N15
\a3[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a3(0),
	o => \a3[0]~input_o\);

-- Location: IOIBUF_X23_Y24_N1
\b3[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b3(0),
	o => \b3[0]~input_o\);

-- Location: LCCOMB_X23_Y21_N0
\Add8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add8~0_combout\ = (\a3[0]~input_o\ & ((GND) # (!\b3[0]~input_o\))) # (!\a3[0]~input_o\ & (\b3[0]~input_o\ $ (GND)))
-- \Add8~1\ = CARRY((\a3[0]~input_o\) # (!\b3[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a3[0]~input_o\,
	datab => \b3[0]~input_o\,
	datad => VCC,
	combout => \Add8~0_combout\,
	cout => \Add8~1\);

-- Location: LCCOMB_X23_Y21_N2
\Add8~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add8~2_combout\ = (\b3[1]~input_o\ & ((\a3[1]~input_o\ & (!\Add8~1\)) # (!\a3[1]~input_o\ & ((\Add8~1\) # (GND))))) # (!\b3[1]~input_o\ & ((\a3[1]~input_o\ & (\Add8~1\ & VCC)) # (!\a3[1]~input_o\ & (!\Add8~1\))))
-- \Add8~3\ = CARRY((\b3[1]~input_o\ & ((!\Add8~1\) # (!\a3[1]~input_o\))) # (!\b3[1]~input_o\ & (!\a3[1]~input_o\ & !\Add8~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b3[1]~input_o\,
	datab => \a3[1]~input_o\,
	datad => VCC,
	cin => \Add8~1\,
	combout => \Add8~2_combout\,
	cout => \Add8~3\);

-- Location: LCCOMB_X23_Y21_N4
\Add8~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add8~4_combout\ = ((\a3[2]~input_o\ $ (\b3[2]~input_o\ $ (\Add8~3\)))) # (GND)
-- \Add8~5\ = CARRY((\a3[2]~input_o\ & ((!\Add8~3\) # (!\b3[2]~input_o\))) # (!\a3[2]~input_o\ & (!\b3[2]~input_o\ & !\Add8~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a3[2]~input_o\,
	datab => \b3[2]~input_o\,
	datad => VCC,
	cin => \Add8~3\,
	combout => \Add8~4_combout\,
	cout => \Add8~5\);

-- Location: LCCOMB_X23_Y21_N6
\Add8~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add8~6_combout\ = (\a3[3]~input_o\ & ((\b3[3]~input_o\ & (!\Add8~5\)) # (!\b3[3]~input_o\ & (\Add8~5\ & VCC)))) # (!\a3[3]~input_o\ & ((\b3[3]~input_o\ & ((\Add8~5\) # (GND))) # (!\b3[3]~input_o\ & (!\Add8~5\))))
-- \Add8~7\ = CARRY((\a3[3]~input_o\ & (\b3[3]~input_o\ & !\Add8~5\)) # (!\a3[3]~input_o\ & ((\b3[3]~input_o\) # (!\Add8~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a3[3]~input_o\,
	datab => \b3[3]~input_o\,
	datad => VCC,
	cin => \Add8~5\,
	combout => \Add8~6_combout\,
	cout => \Add8~7\);

-- Location: LCCOMB_X23_Y21_N8
\Add8~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add8~8_combout\ = ((\b3[4]~input_o\ $ (\a3[4]~input_o\ $ (\Add8~7\)))) # (GND)
-- \Add8~9\ = CARRY((\b3[4]~input_o\ & (\a3[4]~input_o\ & !\Add8~7\)) # (!\b3[4]~input_o\ & ((\a3[4]~input_o\) # (!\Add8~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b3[4]~input_o\,
	datab => \a3[4]~input_o\,
	datad => VCC,
	cin => \Add8~7\,
	combout => \Add8~8_combout\,
	cout => \Add8~9\);

-- Location: LCCOMB_X23_Y21_N10
\Add8~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add8~10_combout\ = \b3[4]~input_o\ $ (\Add8~9\ $ (!\a3[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b3[4]~input_o\,
	datad => \a3[4]~input_o\,
	cin => \Add8~9\,
	combout => \Add8~10_combout\);

-- Location: LCCOMB_X23_Y21_N12
\abs_diff_uns~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \abs_diff_uns~4_combout\ = \Add8~10_combout\ $ (\Add8~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~10_combout\,
	datad => \Add8~0_combout\,
	combout => \abs_diff_uns~4_combout\);

-- Location: LCCOMB_X23_Y21_N16
\Add9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add9~0_combout\ = (\Add8~10_combout\ & (\abs_diff_uns~4_combout\ $ (VCC))) # (!\Add8~10_combout\ & (\abs_diff_uns~4_combout\ & VCC))
-- \Add9~1\ = CARRY((\Add8~10_combout\ & \abs_diff_uns~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~10_combout\,
	datab => \abs_diff_uns~4_combout\,
	datad => VCC,
	combout => \Add9~0_combout\,
	cout => \Add9~1\);

-- Location: LCCOMB_X26_Y21_N0
\Add7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add7~0_combout\ = (\Add6~0_combout\ & (\Add9~0_combout\ $ (VCC))) # (!\Add6~0_combout\ & (\Add9~0_combout\ & VCC))
-- \Add7~1\ = CARRY((\Add6~0_combout\ & \Add9~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~0_combout\,
	datab => \Add9~0_combout\,
	datad => VCC,
	combout => \Add7~0_combout\,
	cout => \Add7~1\);

-- Location: LCCOMB_X25_Y21_N14
\abs_diff_uns[3][0]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \abs_diff_uns[3][0]~6_combout\ = (\Add4~0_combout\ & (\Add7~0_combout\ $ (VCC))) # (!\Add4~0_combout\ & (\Add7~0_combout\ & VCC))
-- \abs_diff_uns[3][0]~7\ = CARRY((\Add4~0_combout\ & \Add7~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~0_combout\,
	datab => \Add7~0_combout\,
	datad => VCC,
	combout => \abs_diff_uns[3][0]~6_combout\,
	cout => \abs_diff_uns[3][0]~7\);

-- Location: IOIBUF_X13_Y0_N15
\b5[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b5(0),
	o => \b5[0]~input_o\);

-- Location: IOIBUF_X16_Y0_N8
\a5[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a5(0),
	o => \a5[0]~input_o\);

-- Location: LCCOMB_X17_Y5_N6
\Add14~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add14~0_combout\ = (\b5[0]~input_o\ & (\a5[0]~input_o\ $ (VCC))) # (!\b5[0]~input_o\ & ((\a5[0]~input_o\) # (GND)))
-- \Add14~1\ = CARRY((\a5[0]~input_o\) # (!\b5[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b5[0]~input_o\,
	datab => \a5[0]~input_o\,
	datad => VCC,
	combout => \Add14~0_combout\,
	cout => \Add14~1\);

-- Location: IOIBUF_X16_Y0_N22
\a5[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a5(4),
	o => \a5[4]~input_o\);

-- Location: IOIBUF_X0_Y5_N15
\b5[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b5(4),
	o => \b5[4]~input_o\);

-- Location: IOIBUF_X13_Y0_N1
\b5[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b5(3),
	o => \b5[3]~input_o\);

-- Location: IOIBUF_X18_Y0_N15
\a5[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a5(3),
	o => \a5[3]~input_o\);

-- Location: IOIBUF_X7_Y0_N1
\b5[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b5(2),
	o => \b5[2]~input_o\);

-- Location: IOIBUF_X21_Y0_N8
\a5[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a5(2),
	o => \a5[2]~input_o\);

-- Location: IOIBUF_X16_Y0_N1
\b5[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b5(1),
	o => \b5[1]~input_o\);

-- Location: IOIBUF_X18_Y0_N22
\a5[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a5(1),
	o => \a5[1]~input_o\);

-- Location: LCCOMB_X17_Y5_N8
\Add14~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add14~2_combout\ = (\b5[1]~input_o\ & ((\a5[1]~input_o\ & (!\Add14~1\)) # (!\a5[1]~input_o\ & ((\Add14~1\) # (GND))))) # (!\b5[1]~input_o\ & ((\a5[1]~input_o\ & (\Add14~1\ & VCC)) # (!\a5[1]~input_o\ & (!\Add14~1\))))
-- \Add14~3\ = CARRY((\b5[1]~input_o\ & ((!\Add14~1\) # (!\a5[1]~input_o\))) # (!\b5[1]~input_o\ & (!\a5[1]~input_o\ & !\Add14~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b5[1]~input_o\,
	datab => \a5[1]~input_o\,
	datad => VCC,
	cin => \Add14~1\,
	combout => \Add14~2_combout\,
	cout => \Add14~3\);

-- Location: LCCOMB_X17_Y5_N10
\Add14~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add14~4_combout\ = ((\b5[2]~input_o\ $ (\a5[2]~input_o\ $ (\Add14~3\)))) # (GND)
-- \Add14~5\ = CARRY((\b5[2]~input_o\ & (\a5[2]~input_o\ & !\Add14~3\)) # (!\b5[2]~input_o\ & ((\a5[2]~input_o\) # (!\Add14~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b5[2]~input_o\,
	datab => \a5[2]~input_o\,
	datad => VCC,
	cin => \Add14~3\,
	combout => \Add14~4_combout\,
	cout => \Add14~5\);

-- Location: LCCOMB_X17_Y5_N12
\Add14~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add14~6_combout\ = (\b5[3]~input_o\ & ((\a5[3]~input_o\ & (!\Add14~5\)) # (!\a5[3]~input_o\ & ((\Add14~5\) # (GND))))) # (!\b5[3]~input_o\ & ((\a5[3]~input_o\ & (\Add14~5\ & VCC)) # (!\a5[3]~input_o\ & (!\Add14~5\))))
-- \Add14~7\ = CARRY((\b5[3]~input_o\ & ((!\Add14~5\) # (!\a5[3]~input_o\))) # (!\b5[3]~input_o\ & (!\a5[3]~input_o\ & !\Add14~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b5[3]~input_o\,
	datab => \a5[3]~input_o\,
	datad => VCC,
	cin => \Add14~5\,
	combout => \Add14~6_combout\,
	cout => \Add14~7\);

-- Location: LCCOMB_X17_Y5_N14
\Add14~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add14~8_combout\ = ((\a5[4]~input_o\ $ (\b5[4]~input_o\ $ (\Add14~7\)))) # (GND)
-- \Add14~9\ = CARRY((\a5[4]~input_o\ & ((!\Add14~7\) # (!\b5[4]~input_o\))) # (!\a5[4]~input_o\ & (!\b5[4]~input_o\ & !\Add14~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a5[4]~input_o\,
	datab => \b5[4]~input_o\,
	datad => VCC,
	cin => \Add14~7\,
	combout => \Add14~8_combout\,
	cout => \Add14~9\);

-- Location: LCCOMB_X17_Y5_N16
\Add14~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add14~10_combout\ = \a5[4]~input_o\ $ (\b5[4]~input_o\ $ (!\Add14~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a5[4]~input_o\,
	datab => \b5[4]~input_o\,
	cin => \Add14~9\,
	combout => \Add14~10_combout\);

-- Location: LCCOMB_X17_Y5_N0
\abs_diff_uns~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \abs_diff_uns~0_combout\ = \Add14~0_combout\ $ (\Add14~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add14~0_combout\,
	datad => \Add14~10_combout\,
	combout => \abs_diff_uns~0_combout\);

-- Location: LCCOMB_X17_Y5_N20
\Add15~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add15~0_combout\ = (\abs_diff_uns~0_combout\ & (\Add14~10_combout\ $ (VCC))) # (!\abs_diff_uns~0_combout\ & (\Add14~10_combout\ & VCC))
-- \Add15~1\ = CARRY((\abs_diff_uns~0_combout\ & \Add14~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \abs_diff_uns~0_combout\,
	datab => \Add14~10_combout\,
	datad => VCC,
	combout => \Add15~0_combout\,
	cout => \Add15~1\);

-- Location: IOIBUF_X32_Y0_N8
\b4[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b4(4),
	o => \b4[4]~input_o\);

-- Location: IOIBUF_X34_Y7_N8
\a4[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a4(4),
	o => \a4[4]~input_o\);

-- Location: IOIBUF_X34_Y2_N15
\a4[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a4(3),
	o => \a4[3]~input_o\);

-- Location: IOIBUF_X34_Y3_N22
\b4[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b4(3),
	o => \b4[3]~input_o\);

-- Location: IOIBUF_X34_Y7_N22
\a4[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a4(2),
	o => \a4[2]~input_o\);

-- Location: IOIBUF_X32_Y0_N22
\b4[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b4(2),
	o => \b4[2]~input_o\);

-- Location: IOIBUF_X34_Y4_N22
\b4[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b4(1),
	o => \b4[1]~input_o\);

-- Location: IOIBUF_X34_Y4_N15
\a4[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a4(1),
	o => \a4[1]~input_o\);

-- Location: IOIBUF_X34_Y2_N22
\b4[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b4(0),
	o => \b4[0]~input_o\);

-- Location: IOIBUF_X32_Y0_N15
\a4[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a4(0),
	o => \a4[0]~input_o\);

-- Location: LCCOMB_X33_Y5_N0
\Add11~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add11~0_combout\ = (\b4[0]~input_o\ & (\a4[0]~input_o\ $ (VCC))) # (!\b4[0]~input_o\ & ((\a4[0]~input_o\) # (GND)))
-- \Add11~1\ = CARRY((\a4[0]~input_o\) # (!\b4[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b4[0]~input_o\,
	datab => \a4[0]~input_o\,
	datad => VCC,
	combout => \Add11~0_combout\,
	cout => \Add11~1\);

-- Location: LCCOMB_X33_Y5_N2
\Add11~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add11~2_combout\ = (\b4[1]~input_o\ & ((\a4[1]~input_o\ & (!\Add11~1\)) # (!\a4[1]~input_o\ & ((\Add11~1\) # (GND))))) # (!\b4[1]~input_o\ & ((\a4[1]~input_o\ & (\Add11~1\ & VCC)) # (!\a4[1]~input_o\ & (!\Add11~1\))))
-- \Add11~3\ = CARRY((\b4[1]~input_o\ & ((!\Add11~1\) # (!\a4[1]~input_o\))) # (!\b4[1]~input_o\ & (!\a4[1]~input_o\ & !\Add11~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b4[1]~input_o\,
	datab => \a4[1]~input_o\,
	datad => VCC,
	cin => \Add11~1\,
	combout => \Add11~2_combout\,
	cout => \Add11~3\);

-- Location: LCCOMB_X33_Y5_N4
\Add11~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add11~4_combout\ = ((\a4[2]~input_o\ $ (\b4[2]~input_o\ $ (\Add11~3\)))) # (GND)
-- \Add11~5\ = CARRY((\a4[2]~input_o\ & ((!\Add11~3\) # (!\b4[2]~input_o\))) # (!\a4[2]~input_o\ & (!\b4[2]~input_o\ & !\Add11~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a4[2]~input_o\,
	datab => \b4[2]~input_o\,
	datad => VCC,
	cin => \Add11~3\,
	combout => \Add11~4_combout\,
	cout => \Add11~5\);

-- Location: LCCOMB_X33_Y5_N6
\Add11~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add11~6_combout\ = (\a4[3]~input_o\ & ((\b4[3]~input_o\ & (!\Add11~5\)) # (!\b4[3]~input_o\ & (\Add11~5\ & VCC)))) # (!\a4[3]~input_o\ & ((\b4[3]~input_o\ & ((\Add11~5\) # (GND))) # (!\b4[3]~input_o\ & (!\Add11~5\))))
-- \Add11~7\ = CARRY((\a4[3]~input_o\ & (\b4[3]~input_o\ & !\Add11~5\)) # (!\a4[3]~input_o\ & ((\b4[3]~input_o\) # (!\Add11~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a4[3]~input_o\,
	datab => \b4[3]~input_o\,
	datad => VCC,
	cin => \Add11~5\,
	combout => \Add11~6_combout\,
	cout => \Add11~7\);

-- Location: LCCOMB_X33_Y5_N8
\Add11~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add11~8_combout\ = ((\b4[4]~input_o\ $ (\a4[4]~input_o\ $ (\Add11~7\)))) # (GND)
-- \Add11~9\ = CARRY((\b4[4]~input_o\ & (\a4[4]~input_o\ & !\Add11~7\)) # (!\b4[4]~input_o\ & ((\a4[4]~input_o\) # (!\Add11~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b4[4]~input_o\,
	datab => \a4[4]~input_o\,
	datad => VCC,
	cin => \Add11~7\,
	combout => \Add11~8_combout\,
	cout => \Add11~9\);

-- Location: LCCOMB_X33_Y5_N10
\Add11~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add11~10_combout\ = \b4[4]~input_o\ $ (\Add11~9\ $ (!\a4[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b4[4]~input_o\,
	datad => \a4[4]~input_o\,
	cin => \Add11~9\,
	combout => \Add11~10_combout\);

-- Location: LCCOMB_X33_Y5_N24
\abs_diff_uns~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \abs_diff_uns~1_combout\ = \Add11~10_combout\ $ (\Add11~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add11~10_combout\,
	datad => \Add11~0_combout\,
	combout => \abs_diff_uns~1_combout\);

-- Location: LCCOMB_X33_Y5_N12
\Add12~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add12~0_combout\ = (\Add11~10_combout\ & (\abs_diff_uns~1_combout\ $ (VCC))) # (!\Add11~10_combout\ & (\abs_diff_uns~1_combout\ & VCC))
-- \Add12~1\ = CARRY((\Add11~10_combout\ & \abs_diff_uns~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add11~10_combout\,
	datab => \abs_diff_uns~1_combout\,
	datad => VCC,
	combout => \Add12~0_combout\,
	cout => \Add12~1\);

-- Location: LCCOMB_X25_Y5_N0
\Add13~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add13~0_combout\ = (\Add15~0_combout\ & (\Add12~0_combout\ $ (VCC))) # (!\Add15~0_combout\ & (\Add12~0_combout\ & VCC))
-- \Add13~1\ = CARRY((\Add15~0_combout\ & \Add12~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add15~0_combout\,
	datab => \Add12~0_combout\,
	datad => VCC,
	combout => \Add13~0_combout\,
	cout => \Add13~1\);

-- Location: LCCOMB_X25_Y5_N14
\Add16~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add16~0_combout\ = (\abs_diff_uns[3][0]~6_combout\ & (\Add13~0_combout\ $ (VCC))) # (!\abs_diff_uns[3][0]~6_combout\ & (\Add13~0_combout\ & VCC))
-- \Add16~1\ = CARRY((\abs_diff_uns[3][0]~6_combout\ & \Add13~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \abs_diff_uns[3][0]~6_combout\,
	datab => \Add13~0_combout\,
	datad => VCC,
	combout => \Add16~0_combout\,
	cout => \Add16~1\);

-- Location: LCCOMB_X33_Y17_N8
\Add6~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add6~2_combout\ = (\Add6~1\ & (\Add5~2_combout\ $ ((!\Add5~10_combout\)))) # (!\Add6~1\ & ((\Add5~2_combout\ $ (\Add5~10_combout\)) # (GND)))
-- \Add6~3\ = CARRY((\Add5~2_combout\ $ (!\Add5~10_combout\)) # (!\Add6~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~2_combout\,
	datab => \Add5~10_combout\,
	datad => VCC,
	cin => \Add6~1\,
	combout => \Add6~2_combout\,
	cout => \Add6~3\);

-- Location: LCCOMB_X23_Y21_N18
\Add9~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add9~2_combout\ = (\Add9~1\ & (\Add8~10_combout\ $ ((!\Add8~2_combout\)))) # (!\Add9~1\ & ((\Add8~10_combout\ $ (\Add8~2_combout\)) # (GND)))
-- \Add9~3\ = CARRY((\Add8~10_combout\ $ (!\Add8~2_combout\)) # (!\Add9~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~10_combout\,
	datab => \Add8~2_combout\,
	datad => VCC,
	cin => \Add9~1\,
	combout => \Add9~2_combout\,
	cout => \Add9~3\);

-- Location: LCCOMB_X26_Y21_N2
\Add7~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add7~2_combout\ = (\Add6~2_combout\ & ((\Add9~2_combout\ & (\Add7~1\ & VCC)) # (!\Add9~2_combout\ & (!\Add7~1\)))) # (!\Add6~2_combout\ & ((\Add9~2_combout\ & (!\Add7~1\)) # (!\Add9~2_combout\ & ((\Add7~1\) # (GND)))))
-- \Add7~3\ = CARRY((\Add6~2_combout\ & (!\Add9~2_combout\ & !\Add7~1\)) # (!\Add6~2_combout\ & ((!\Add7~1\) # (!\Add9~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~2_combout\,
	datab => \Add9~2_combout\,
	datad => VCC,
	cin => \Add7~1\,
	combout => \Add7~2_combout\,
	cout => \Add7~3\);

-- Location: LCCOMB_X13_Y21_N18
\Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (\Add1~1\ & (\Add0~10_combout\ $ ((!\Add0~2_combout\)))) # (!\Add1~1\ & ((\Add0~10_combout\ $ (\Add0~2_combout\)) # (GND)))
-- \Add1~3\ = CARRY((\Add0~10_combout\ $ (!\Add0~2_combout\)) # (!\Add1~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~10_combout\,
	datab => \Add0~2_combout\,
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: LCCOMB_X29_Y21_N2
\Add3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~2_combout\ = (\Add3~1\ & (\Add2~10_combout\ $ ((!\Add2~2_combout\)))) # (!\Add3~1\ & ((\Add2~10_combout\ $ (\Add2~2_combout\)) # (GND)))
-- \Add3~3\ = CARRY((\Add2~10_combout\ $ (!\Add2~2_combout\)) # (!\Add3~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~10_combout\,
	datab => \Add2~2_combout\,
	datad => VCC,
	cin => \Add3~1\,
	combout => \Add3~2_combout\,
	cout => \Add3~3\);

-- Location: LCCOMB_X25_Y21_N2
\Add4~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~2_combout\ = (\Add1~2_combout\ & ((\Add3~2_combout\ & (\Add4~1\ & VCC)) # (!\Add3~2_combout\ & (!\Add4~1\)))) # (!\Add1~2_combout\ & ((\Add3~2_combout\ & (!\Add4~1\)) # (!\Add3~2_combout\ & ((\Add4~1\) # (GND)))))
-- \Add4~3\ = CARRY((\Add1~2_combout\ & (!\Add3~2_combout\ & !\Add4~1\)) # (!\Add1~2_combout\ & ((!\Add4~1\) # (!\Add3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~2_combout\,
	datab => \Add3~2_combout\,
	datad => VCC,
	cin => \Add4~1\,
	combout => \Add4~2_combout\,
	cout => \Add4~3\);

-- Location: LCCOMB_X25_Y21_N16
\abs_diff_uns[3][1]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \abs_diff_uns[3][1]~8_combout\ = (\Add7~2_combout\ & ((\Add4~2_combout\ & (\abs_diff_uns[3][0]~7\ & VCC)) # (!\Add4~2_combout\ & (!\abs_diff_uns[3][0]~7\)))) # (!\Add7~2_combout\ & ((\Add4~2_combout\ & (!\abs_diff_uns[3][0]~7\)) # (!\Add4~2_combout\ & 
-- ((\abs_diff_uns[3][0]~7\) # (GND)))))
-- \abs_diff_uns[3][1]~9\ = CARRY((\Add7~2_combout\ & (!\Add4~2_combout\ & !\abs_diff_uns[3][0]~7\)) # (!\Add7~2_combout\ & ((!\abs_diff_uns[3][0]~7\) # (!\Add4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~2_combout\,
	datab => \Add4~2_combout\,
	datad => VCC,
	cin => \abs_diff_uns[3][0]~7\,
	combout => \abs_diff_uns[3][1]~8_combout\,
	cout => \abs_diff_uns[3][1]~9\);

-- Location: LCCOMB_X17_Y5_N22
\Add15~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add15~2_combout\ = (\Add15~1\ & (\Add14~2_combout\ $ ((!\Add14~10_combout\)))) # (!\Add15~1\ & ((\Add14~2_combout\ $ (\Add14~10_combout\)) # (GND)))
-- \Add15~3\ = CARRY((\Add14~2_combout\ $ (!\Add14~10_combout\)) # (!\Add15~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add14~2_combout\,
	datab => \Add14~10_combout\,
	datad => VCC,
	cin => \Add15~1\,
	combout => \Add15~2_combout\,
	cout => \Add15~3\);

-- Location: LCCOMB_X33_Y5_N14
\Add12~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add12~2_combout\ = (\Add12~1\ & (\Add11~10_combout\ $ ((!\Add11~2_combout\)))) # (!\Add12~1\ & ((\Add11~10_combout\ $ (\Add11~2_combout\)) # (GND)))
-- \Add12~3\ = CARRY((\Add11~10_combout\ $ (!\Add11~2_combout\)) # (!\Add12~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add11~10_combout\,
	datab => \Add11~2_combout\,
	datad => VCC,
	cin => \Add12~1\,
	combout => \Add12~2_combout\,
	cout => \Add12~3\);

-- Location: LCCOMB_X25_Y5_N2
\Add13~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add13~2_combout\ = (\Add15~2_combout\ & ((\Add12~2_combout\ & (\Add13~1\ & VCC)) # (!\Add12~2_combout\ & (!\Add13~1\)))) # (!\Add15~2_combout\ & ((\Add12~2_combout\ & (!\Add13~1\)) # (!\Add12~2_combout\ & ((\Add13~1\) # (GND)))))
-- \Add13~3\ = CARRY((\Add15~2_combout\ & (!\Add12~2_combout\ & !\Add13~1\)) # (!\Add15~2_combout\ & ((!\Add13~1\) # (!\Add12~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add15~2_combout\,
	datab => \Add12~2_combout\,
	datad => VCC,
	cin => \Add13~1\,
	combout => \Add13~2_combout\,
	cout => \Add13~3\);

-- Location: LCCOMB_X25_Y5_N16
\Add16~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add16~2_combout\ = (\abs_diff_uns[3][1]~8_combout\ & ((\Add13~2_combout\ & (\Add16~1\ & VCC)) # (!\Add13~2_combout\ & (!\Add16~1\)))) # (!\abs_diff_uns[3][1]~8_combout\ & ((\Add13~2_combout\ & (!\Add16~1\)) # (!\Add13~2_combout\ & ((\Add16~1\) # 
-- (GND)))))
-- \Add16~3\ = CARRY((\abs_diff_uns[3][1]~8_combout\ & (!\Add13~2_combout\ & !\Add16~1\)) # (!\abs_diff_uns[3][1]~8_combout\ & ((!\Add16~1\) # (!\Add13~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \abs_diff_uns[3][1]~8_combout\,
	datab => \Add13~2_combout\,
	datad => VCC,
	cin => \Add16~1\,
	combout => \Add16~2_combout\,
	cout => \Add16~3\);

-- Location: LCCOMB_X23_Y21_N20
\Add9~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add9~4_combout\ = (\Add9~3\ & ((\Add8~10_combout\ $ (\Add8~4_combout\)))) # (!\Add9~3\ & (\Add8~10_combout\ $ (\Add8~4_combout\ $ (VCC))))
-- \Add9~5\ = CARRY((!\Add9~3\ & (\Add8~10_combout\ $ (\Add8~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~10_combout\,
	datab => \Add8~4_combout\,
	datad => VCC,
	cin => \Add9~3\,
	combout => \Add9~4_combout\,
	cout => \Add9~5\);

-- Location: LCCOMB_X33_Y17_N10
\Add6~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add6~4_combout\ = (\Add6~3\ & ((\Add5~4_combout\ $ (\Add5~10_combout\)))) # (!\Add6~3\ & (\Add5~4_combout\ $ (\Add5~10_combout\ $ (VCC))))
-- \Add6~5\ = CARRY((!\Add6~3\ & (\Add5~4_combout\ $ (\Add5~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~4_combout\,
	datab => \Add5~10_combout\,
	datad => VCC,
	cin => \Add6~3\,
	combout => \Add6~4_combout\,
	cout => \Add6~5\);

-- Location: LCCOMB_X26_Y21_N4
\Add7~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add7~4_combout\ = ((\Add9~4_combout\ $ (\Add6~4_combout\ $ (!\Add7~3\)))) # (GND)
-- \Add7~5\ = CARRY((\Add9~4_combout\ & ((\Add6~4_combout\) # (!\Add7~3\))) # (!\Add9~4_combout\ & (\Add6~4_combout\ & !\Add7~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~4_combout\,
	datab => \Add6~4_combout\,
	datad => VCC,
	cin => \Add7~3\,
	combout => \Add7~4_combout\,
	cout => \Add7~5\);

-- Location: LCCOMB_X29_Y21_N4
\Add3~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~4_combout\ = (\Add3~3\ & ((\Add2~10_combout\ $ (\Add2~4_combout\)))) # (!\Add3~3\ & (\Add2~10_combout\ $ (\Add2~4_combout\ $ (VCC))))
-- \Add3~5\ = CARRY((!\Add3~3\ & (\Add2~10_combout\ $ (\Add2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~10_combout\,
	datab => \Add2~4_combout\,
	datad => VCC,
	cin => \Add3~3\,
	combout => \Add3~4_combout\,
	cout => \Add3~5\);

-- Location: LCCOMB_X13_Y21_N20
\Add1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = (\Add1~3\ & ((\Add0~10_combout\ $ (\Add0~4_combout\)))) # (!\Add1~3\ & (\Add0~10_combout\ $ (\Add0~4_combout\ $ (VCC))))
-- \Add1~5\ = CARRY((!\Add1~3\ & (\Add0~10_combout\ $ (\Add0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~10_combout\,
	datab => \Add0~4_combout\,
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: LCCOMB_X25_Y21_N4
\Add4~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~4_combout\ = ((\Add3~4_combout\ $ (\Add1~4_combout\ $ (!\Add4~3\)))) # (GND)
-- \Add4~5\ = CARRY((\Add3~4_combout\ & ((\Add1~4_combout\) # (!\Add4~3\))) # (!\Add3~4_combout\ & (\Add1~4_combout\ & !\Add4~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~4_combout\,
	datab => \Add1~4_combout\,
	datad => VCC,
	cin => \Add4~3\,
	combout => \Add4~4_combout\,
	cout => \Add4~5\);

-- Location: LCCOMB_X25_Y21_N18
\abs_diff_uns[3][2]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \abs_diff_uns[3][2]~10_combout\ = ((\Add7~4_combout\ $ (\Add4~4_combout\ $ (!\abs_diff_uns[3][1]~9\)))) # (GND)
-- \abs_diff_uns[3][2]~11\ = CARRY((\Add7~4_combout\ & ((\Add4~4_combout\) # (!\abs_diff_uns[3][1]~9\))) # (!\Add7~4_combout\ & (\Add4~4_combout\ & !\abs_diff_uns[3][1]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~4_combout\,
	datab => \Add4~4_combout\,
	datad => VCC,
	cin => \abs_diff_uns[3][1]~9\,
	combout => \abs_diff_uns[3][2]~10_combout\,
	cout => \abs_diff_uns[3][2]~11\);

-- Location: LCCOMB_X17_Y5_N24
\Add15~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add15~4_combout\ = (\Add15~3\ & ((\Add14~4_combout\ $ (\Add14~10_combout\)))) # (!\Add15~3\ & (\Add14~4_combout\ $ (\Add14~10_combout\ $ (VCC))))
-- \Add15~5\ = CARRY((!\Add15~3\ & (\Add14~4_combout\ $ (\Add14~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add14~4_combout\,
	datab => \Add14~10_combout\,
	datad => VCC,
	cin => \Add15~3\,
	combout => \Add15~4_combout\,
	cout => \Add15~5\);

-- Location: LCCOMB_X33_Y5_N16
\Add12~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add12~4_combout\ = (\Add12~3\ & ((\Add11~10_combout\ $ (\Add11~4_combout\)))) # (!\Add12~3\ & (\Add11~10_combout\ $ (\Add11~4_combout\ $ (VCC))))
-- \Add12~5\ = CARRY((!\Add12~3\ & (\Add11~10_combout\ $ (\Add11~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add11~10_combout\,
	datab => \Add11~4_combout\,
	datad => VCC,
	cin => \Add12~3\,
	combout => \Add12~4_combout\,
	cout => \Add12~5\);

-- Location: LCCOMB_X25_Y5_N4
\Add13~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add13~4_combout\ = ((\Add15~4_combout\ $ (\Add12~4_combout\ $ (!\Add13~3\)))) # (GND)
-- \Add13~5\ = CARRY((\Add15~4_combout\ & ((\Add12~4_combout\) # (!\Add13~3\))) # (!\Add15~4_combout\ & (\Add12~4_combout\ & !\Add13~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add15~4_combout\,
	datab => \Add12~4_combout\,
	datad => VCC,
	cin => \Add13~3\,
	combout => \Add13~4_combout\,
	cout => \Add13~5\);

-- Location: LCCOMB_X25_Y5_N18
\Add16~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add16~4_combout\ = ((\abs_diff_uns[3][2]~10_combout\ $ (\Add13~4_combout\ $ (!\Add16~3\)))) # (GND)
-- \Add16~5\ = CARRY((\abs_diff_uns[3][2]~10_combout\ & ((\Add13~4_combout\) # (!\Add16~3\))) # (!\abs_diff_uns[3][2]~10_combout\ & (\Add13~4_combout\ & !\Add16~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \abs_diff_uns[3][2]~10_combout\,
	datab => \Add13~4_combout\,
	datad => VCC,
	cin => \Add16~3\,
	combout => \Add16~4_combout\,
	cout => \Add16~5\);

-- Location: LCCOMB_X33_Y5_N18
\Add12~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add12~6_combout\ = (\Add12~5\ & (\Add11~10_combout\ $ ((!\Add11~6_combout\)))) # (!\Add12~5\ & ((\Add11~10_combout\ $ (\Add11~6_combout\)) # (GND)))
-- \Add12~7\ = CARRY((\Add11~10_combout\ $ (!\Add11~6_combout\)) # (!\Add12~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add11~10_combout\,
	datab => \Add11~6_combout\,
	datad => VCC,
	cin => \Add12~5\,
	combout => \Add12~6_combout\,
	cout => \Add12~7\);

-- Location: LCCOMB_X17_Y5_N26
\Add15~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add15~6_combout\ = (\Add15~5\ & (\Add14~6_combout\ $ ((!\Add14~10_combout\)))) # (!\Add15~5\ & ((\Add14~6_combout\ $ (\Add14~10_combout\)) # (GND)))
-- \Add15~7\ = CARRY((\Add14~6_combout\ $ (!\Add14~10_combout\)) # (!\Add15~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add14~6_combout\,
	datab => \Add14~10_combout\,
	datad => VCC,
	cin => \Add15~5\,
	combout => \Add15~6_combout\,
	cout => \Add15~7\);

-- Location: LCCOMB_X25_Y5_N6
\Add13~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add13~6_combout\ = (\Add12~6_combout\ & ((\Add15~6_combout\ & (\Add13~5\ & VCC)) # (!\Add15~6_combout\ & (!\Add13~5\)))) # (!\Add12~6_combout\ & ((\Add15~6_combout\ & (!\Add13~5\)) # (!\Add15~6_combout\ & ((\Add13~5\) # (GND)))))
-- \Add13~7\ = CARRY((\Add12~6_combout\ & (!\Add15~6_combout\ & !\Add13~5\)) # (!\Add12~6_combout\ & ((!\Add13~5\) # (!\Add15~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add12~6_combout\,
	datab => \Add15~6_combout\,
	datad => VCC,
	cin => \Add13~5\,
	combout => \Add13~6_combout\,
	cout => \Add13~7\);

-- Location: LCCOMB_X23_Y21_N22
\Add9~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add9~6_combout\ = (\Add9~5\ & (\Add8~10_combout\ $ ((!\Add8~6_combout\)))) # (!\Add9~5\ & ((\Add8~10_combout\ $ (\Add8~6_combout\)) # (GND)))
-- \Add9~7\ = CARRY((\Add8~10_combout\ $ (!\Add8~6_combout\)) # (!\Add9~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~10_combout\,
	datab => \Add8~6_combout\,
	datad => VCC,
	cin => \Add9~5\,
	combout => \Add9~6_combout\,
	cout => \Add9~7\);

-- Location: LCCOMB_X33_Y17_N12
\Add6~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add6~6_combout\ = (\Add6~5\ & (\Add5~6_combout\ $ ((!\Add5~10_combout\)))) # (!\Add6~5\ & ((\Add5~6_combout\ $ (\Add5~10_combout\)) # (GND)))
-- \Add6~7\ = CARRY((\Add5~6_combout\ $ (!\Add5~10_combout\)) # (!\Add6~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~6_combout\,
	datab => \Add5~10_combout\,
	datad => VCC,
	cin => \Add6~5\,
	combout => \Add6~6_combout\,
	cout => \Add6~7\);

-- Location: LCCOMB_X26_Y21_N6
\Add7~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add7~6_combout\ = (\Add9~6_combout\ & ((\Add6~6_combout\ & (\Add7~5\ & VCC)) # (!\Add6~6_combout\ & (!\Add7~5\)))) # (!\Add9~6_combout\ & ((\Add6~6_combout\ & (!\Add7~5\)) # (!\Add6~6_combout\ & ((\Add7~5\) # (GND)))))
-- \Add7~7\ = CARRY((\Add9~6_combout\ & (!\Add6~6_combout\ & !\Add7~5\)) # (!\Add9~6_combout\ & ((!\Add7~5\) # (!\Add6~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~6_combout\,
	datab => \Add6~6_combout\,
	datad => VCC,
	cin => \Add7~5\,
	combout => \Add7~6_combout\,
	cout => \Add7~7\);

-- Location: LCCOMB_X29_Y21_N6
\Add3~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~6_combout\ = (\Add3~5\ & (\Add2~10_combout\ $ ((!\Add2~6_combout\)))) # (!\Add3~5\ & ((\Add2~10_combout\ $ (\Add2~6_combout\)) # (GND)))
-- \Add3~7\ = CARRY((\Add2~10_combout\ $ (!\Add2~6_combout\)) # (!\Add3~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~10_combout\,
	datab => \Add2~6_combout\,
	datad => VCC,
	cin => \Add3~5\,
	combout => \Add3~6_combout\,
	cout => \Add3~7\);

-- Location: LCCOMB_X13_Y21_N22
\Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (\Add1~5\ & (\Add0~10_combout\ $ ((!\Add0~6_combout\)))) # (!\Add1~5\ & ((\Add0~10_combout\ $ (\Add0~6_combout\)) # (GND)))
-- \Add1~7\ = CARRY((\Add0~10_combout\ $ (!\Add0~6_combout\)) # (!\Add1~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~10_combout\,
	datab => \Add0~6_combout\,
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X25_Y21_N6
\Add4~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~6_combout\ = (\Add3~6_combout\ & ((\Add1~6_combout\ & (\Add4~5\ & VCC)) # (!\Add1~6_combout\ & (!\Add4~5\)))) # (!\Add3~6_combout\ & ((\Add1~6_combout\ & (!\Add4~5\)) # (!\Add1~6_combout\ & ((\Add4~5\) # (GND)))))
-- \Add4~7\ = CARRY((\Add3~6_combout\ & (!\Add1~6_combout\ & !\Add4~5\)) # (!\Add3~6_combout\ & ((!\Add4~5\) # (!\Add1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~6_combout\,
	datab => \Add1~6_combout\,
	datad => VCC,
	cin => \Add4~5\,
	combout => \Add4~6_combout\,
	cout => \Add4~7\);

-- Location: LCCOMB_X25_Y21_N20
\abs_diff_uns[3][3]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \abs_diff_uns[3][3]~12_combout\ = (\Add7~6_combout\ & ((\Add4~6_combout\ & (\abs_diff_uns[3][2]~11\ & VCC)) # (!\Add4~6_combout\ & (!\abs_diff_uns[3][2]~11\)))) # (!\Add7~6_combout\ & ((\Add4~6_combout\ & (!\abs_diff_uns[3][2]~11\)) # (!\Add4~6_combout\ & 
-- ((\abs_diff_uns[3][2]~11\) # (GND)))))
-- \abs_diff_uns[3][3]~13\ = CARRY((\Add7~6_combout\ & (!\Add4~6_combout\ & !\abs_diff_uns[3][2]~11\)) # (!\Add7~6_combout\ & ((!\abs_diff_uns[3][2]~11\) # (!\Add4~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~6_combout\,
	datab => \Add4~6_combout\,
	datad => VCC,
	cin => \abs_diff_uns[3][2]~11\,
	combout => \abs_diff_uns[3][3]~12_combout\,
	cout => \abs_diff_uns[3][3]~13\);

-- Location: LCCOMB_X25_Y5_N20
\Add16~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add16~6_combout\ = (\Add13~6_combout\ & ((\abs_diff_uns[3][3]~12_combout\ & (\Add16~5\ & VCC)) # (!\abs_diff_uns[3][3]~12_combout\ & (!\Add16~5\)))) # (!\Add13~6_combout\ & ((\abs_diff_uns[3][3]~12_combout\ & (!\Add16~5\)) # 
-- (!\abs_diff_uns[3][3]~12_combout\ & ((\Add16~5\) # (GND)))))
-- \Add16~7\ = CARRY((\Add13~6_combout\ & (!\abs_diff_uns[3][3]~12_combout\ & !\Add16~5\)) # (!\Add13~6_combout\ & ((!\Add16~5\) # (!\abs_diff_uns[3][3]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add13~6_combout\,
	datab => \abs_diff_uns[3][3]~12_combout\,
	datad => VCC,
	cin => \Add16~5\,
	combout => \Add16~6_combout\,
	cout => \Add16~7\);

-- Location: LCCOMB_X17_Y5_N28
\Add15~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add15~8_combout\ = (\Add15~7\ & ((\Add14~8_combout\ $ (\Add14~10_combout\)))) # (!\Add15~7\ & (\Add14~8_combout\ $ (\Add14~10_combout\ $ (VCC))))
-- \Add15~9\ = CARRY((!\Add15~7\ & (\Add14~8_combout\ $ (\Add14~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add14~8_combout\,
	datab => \Add14~10_combout\,
	datad => VCC,
	cin => \Add15~7\,
	combout => \Add15~8_combout\,
	cout => \Add15~9\);

-- Location: LCCOMB_X33_Y5_N20
\Add12~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add12~8_combout\ = (\Add12~7\ & ((\Add11~10_combout\ $ (\Add11~8_combout\)))) # (!\Add12~7\ & (\Add11~10_combout\ $ (\Add11~8_combout\ $ (VCC))))
-- \Add12~9\ = CARRY((!\Add12~7\ & (\Add11~10_combout\ $ (\Add11~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add11~10_combout\,
	datab => \Add11~8_combout\,
	datad => VCC,
	cin => \Add12~7\,
	combout => \Add12~8_combout\,
	cout => \Add12~9\);

-- Location: LCCOMB_X25_Y5_N8
\Add13~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add13~8_combout\ = ((\Add15~8_combout\ $ (\Add12~8_combout\ $ (!\Add13~7\)))) # (GND)
-- \Add13~9\ = CARRY((\Add15~8_combout\ & ((\Add12~8_combout\) # (!\Add13~7\))) # (!\Add15~8_combout\ & (\Add12~8_combout\ & !\Add13~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add15~8_combout\,
	datab => \Add12~8_combout\,
	datad => VCC,
	cin => \Add13~7\,
	combout => \Add13~8_combout\,
	cout => \Add13~9\);

-- Location: LCCOMB_X23_Y21_N24
\Add9~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add9~8_combout\ = (\Add9~7\ & ((\Add8~10_combout\ $ (\Add8~8_combout\)))) # (!\Add9~7\ & (\Add8~10_combout\ $ (\Add8~8_combout\ $ (VCC))))
-- \Add9~9\ = CARRY((!\Add9~7\ & (\Add8~10_combout\ $ (\Add8~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~10_combout\,
	datab => \Add8~8_combout\,
	datad => VCC,
	cin => \Add9~7\,
	combout => \Add9~8_combout\,
	cout => \Add9~9\);

-- Location: LCCOMB_X33_Y17_N14
\Add6~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add6~8_combout\ = (\Add6~7\ & ((\Add5~8_combout\ $ (\Add5~10_combout\)))) # (!\Add6~7\ & (\Add5~8_combout\ $ (\Add5~10_combout\ $ (VCC))))
-- \Add6~9\ = CARRY((!\Add6~7\ & (\Add5~8_combout\ $ (\Add5~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~8_combout\,
	datab => \Add5~10_combout\,
	datad => VCC,
	cin => \Add6~7\,
	combout => \Add6~8_combout\,
	cout => \Add6~9\);

-- Location: LCCOMB_X26_Y21_N8
\Add7~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add7~8_combout\ = ((\Add9~8_combout\ $ (\Add6~8_combout\ $ (!\Add7~7\)))) # (GND)
-- \Add7~9\ = CARRY((\Add9~8_combout\ & ((\Add6~8_combout\) # (!\Add7~7\))) # (!\Add9~8_combout\ & (\Add6~8_combout\ & !\Add7~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~8_combout\,
	datab => \Add6~8_combout\,
	datad => VCC,
	cin => \Add7~7\,
	combout => \Add7~8_combout\,
	cout => \Add7~9\);

-- Location: LCCOMB_X13_Y21_N24
\Add1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = (\Add1~7\ & ((\Add0~10_combout\ $ (\Add0~8_combout\)))) # (!\Add1~7\ & (\Add0~10_combout\ $ (\Add0~8_combout\ $ (VCC))))
-- \Add1~9\ = CARRY((!\Add1~7\ & (\Add0~10_combout\ $ (\Add0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~10_combout\,
	datab => \Add0~8_combout\,
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: LCCOMB_X29_Y21_N8
\Add3~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~8_combout\ = (\Add3~7\ & ((\Add2~10_combout\ $ (\Add2~8_combout\)))) # (!\Add3~7\ & (\Add2~10_combout\ $ (\Add2~8_combout\ $ (VCC))))
-- \Add3~9\ = CARRY((!\Add3~7\ & (\Add2~10_combout\ $ (\Add2~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~10_combout\,
	datab => \Add2~8_combout\,
	datad => VCC,
	cin => \Add3~7\,
	combout => \Add3~8_combout\,
	cout => \Add3~9\);

-- Location: LCCOMB_X25_Y21_N8
\Add4~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~8_combout\ = ((\Add1~8_combout\ $ (\Add3~8_combout\ $ (!\Add4~7\)))) # (GND)
-- \Add4~9\ = CARRY((\Add1~8_combout\ & ((\Add3~8_combout\) # (!\Add4~7\))) # (!\Add1~8_combout\ & (\Add3~8_combout\ & !\Add4~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~8_combout\,
	datab => \Add3~8_combout\,
	datad => VCC,
	cin => \Add4~7\,
	combout => \Add4~8_combout\,
	cout => \Add4~9\);

-- Location: LCCOMB_X25_Y21_N22
\abs_diff_uns[3][4]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \abs_diff_uns[3][4]~14_combout\ = ((\Add7~8_combout\ $ (\Add4~8_combout\ $ (!\abs_diff_uns[3][3]~13\)))) # (GND)
-- \abs_diff_uns[3][4]~15\ = CARRY((\Add7~8_combout\ & ((\Add4~8_combout\) # (!\abs_diff_uns[3][3]~13\))) # (!\Add7~8_combout\ & (\Add4~8_combout\ & !\abs_diff_uns[3][3]~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~8_combout\,
	datab => \Add4~8_combout\,
	datad => VCC,
	cin => \abs_diff_uns[3][3]~13\,
	combout => \abs_diff_uns[3][4]~14_combout\,
	cout => \abs_diff_uns[3][4]~15\);

-- Location: LCCOMB_X25_Y5_N22
\Add16~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add16~8_combout\ = ((\Add13~8_combout\ $ (\abs_diff_uns[3][4]~14_combout\ $ (!\Add16~7\)))) # (GND)
-- \Add16~9\ = CARRY((\Add13~8_combout\ & ((\abs_diff_uns[3][4]~14_combout\) # (!\Add16~7\))) # (!\Add13~8_combout\ & (\abs_diff_uns[3][4]~14_combout\ & !\Add16~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add13~8_combout\,
	datab => \abs_diff_uns[3][4]~14_combout\,
	datad => VCC,
	cin => \Add16~7\,
	combout => \Add16~8_combout\,
	cout => \Add16~9\);

-- Location: LCCOMB_X33_Y5_N22
\Add12~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add12~10_combout\ = \Add12~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Add12~9\,
	combout => \Add12~10_combout\);

-- Location: LCCOMB_X17_Y5_N30
\Add15~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add15~10_combout\ = \Add15~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Add15~9\,
	combout => \Add15~10_combout\);

-- Location: LCCOMB_X25_Y5_N10
\Add13~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add13~10_combout\ = (\Add12~10_combout\ & ((\Add15~10_combout\ & (\Add13~9\ & VCC)) # (!\Add15~10_combout\ & (!\Add13~9\)))) # (!\Add12~10_combout\ & ((\Add15~10_combout\ & (!\Add13~9\)) # (!\Add15~10_combout\ & ((\Add13~9\) # (GND)))))
-- \Add13~11\ = CARRY((\Add12~10_combout\ & (!\Add15~10_combout\ & !\Add13~9\)) # (!\Add12~10_combout\ & ((!\Add13~9\) # (!\Add15~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add12~10_combout\,
	datab => \Add15~10_combout\,
	datad => VCC,
	cin => \Add13~9\,
	combout => \Add13~10_combout\,
	cout => \Add13~11\);

-- Location: LCCOMB_X13_Y21_N26
\Add1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = \Add1~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Add1~9\,
	combout => \Add1~10_combout\);

-- Location: LCCOMB_X29_Y21_N10
\Add3~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~10_combout\ = \Add3~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Add3~9\,
	combout => \Add3~10_combout\);

-- Location: LCCOMB_X25_Y21_N10
\Add4~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~10_combout\ = (\Add1~10_combout\ & ((\Add3~10_combout\ & (\Add4~9\ & VCC)) # (!\Add3~10_combout\ & (!\Add4~9\)))) # (!\Add1~10_combout\ & ((\Add3~10_combout\ & (!\Add4~9\)) # (!\Add3~10_combout\ & ((\Add4~9\) # (GND)))))
-- \Add4~11\ = CARRY((\Add1~10_combout\ & (!\Add3~10_combout\ & !\Add4~9\)) # (!\Add1~10_combout\ & ((!\Add4~9\) # (!\Add3~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~10_combout\,
	datab => \Add3~10_combout\,
	datad => VCC,
	cin => \Add4~9\,
	combout => \Add4~10_combout\,
	cout => \Add4~11\);

-- Location: LCCOMB_X33_Y17_N16
\Add6~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add6~10_combout\ = \Add6~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Add6~9\,
	combout => \Add6~10_combout\);

-- Location: LCCOMB_X23_Y21_N26
\Add9~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add9~10_combout\ = \Add9~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Add9~9\,
	combout => \Add9~10_combout\);

-- Location: LCCOMB_X26_Y21_N10
\Add7~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add7~10_combout\ = (\Add6~10_combout\ & ((\Add9~10_combout\ & (\Add7~9\ & VCC)) # (!\Add9~10_combout\ & (!\Add7~9\)))) # (!\Add6~10_combout\ & ((\Add9~10_combout\ & (!\Add7~9\)) # (!\Add9~10_combout\ & ((\Add7~9\) # (GND)))))
-- \Add7~11\ = CARRY((\Add6~10_combout\ & (!\Add9~10_combout\ & !\Add7~9\)) # (!\Add6~10_combout\ & ((!\Add7~9\) # (!\Add9~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~10_combout\,
	datab => \Add9~10_combout\,
	datad => VCC,
	cin => \Add7~9\,
	combout => \Add7~10_combout\,
	cout => \Add7~11\);

-- Location: LCCOMB_X25_Y21_N24
\abs_diff_uns[3][5]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \abs_diff_uns[3][5]~16_combout\ = (\Add4~10_combout\ & ((\Add7~10_combout\ & (\abs_diff_uns[3][4]~15\ & VCC)) # (!\Add7~10_combout\ & (!\abs_diff_uns[3][4]~15\)))) # (!\Add4~10_combout\ & ((\Add7~10_combout\ & (!\abs_diff_uns[3][4]~15\)) # 
-- (!\Add7~10_combout\ & ((\abs_diff_uns[3][4]~15\) # (GND)))))
-- \abs_diff_uns[3][5]~17\ = CARRY((\Add4~10_combout\ & (!\Add7~10_combout\ & !\abs_diff_uns[3][4]~15\)) # (!\Add4~10_combout\ & ((!\abs_diff_uns[3][4]~15\) # (!\Add7~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~10_combout\,
	datab => \Add7~10_combout\,
	datad => VCC,
	cin => \abs_diff_uns[3][4]~15\,
	combout => \abs_diff_uns[3][5]~16_combout\,
	cout => \abs_diff_uns[3][5]~17\);

-- Location: LCCOMB_X25_Y5_N24
\Add16~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add16~10_combout\ = (\Add13~10_combout\ & ((\abs_diff_uns[3][5]~16_combout\ & (\Add16~9\ & VCC)) # (!\abs_diff_uns[3][5]~16_combout\ & (!\Add16~9\)))) # (!\Add13~10_combout\ & ((\abs_diff_uns[3][5]~16_combout\ & (!\Add16~9\)) # 
-- (!\abs_diff_uns[3][5]~16_combout\ & ((\Add16~9\) # (GND)))))
-- \Add16~11\ = CARRY((\Add13~10_combout\ & (!\abs_diff_uns[3][5]~16_combout\ & !\Add16~9\)) # (!\Add13~10_combout\ & ((!\Add16~9\) # (!\abs_diff_uns[3][5]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add13~10_combout\,
	datab => \abs_diff_uns[3][5]~16_combout\,
	datad => VCC,
	cin => \Add16~9\,
	combout => \Add16~10_combout\,
	cout => \Add16~11\);

-- Location: LCCOMB_X25_Y21_N12
\Add4~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~12_combout\ = !\Add4~11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Add4~11\,
	combout => \Add4~12_combout\);

-- Location: LCCOMB_X26_Y21_N12
\Add7~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add7~12_combout\ = !\Add7~11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Add7~11\,
	combout => \Add7~12_combout\);

-- Location: LCCOMB_X25_Y21_N26
\abs_diff_uns[3][6]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \abs_diff_uns[3][6]~18_combout\ = ((\Add4~12_combout\ $ (\Add7~12_combout\ $ (!\abs_diff_uns[3][5]~17\)))) # (GND)
-- \abs_diff_uns[3][6]~19\ = CARRY((\Add4~12_combout\ & ((\Add7~12_combout\) # (!\abs_diff_uns[3][5]~17\))) # (!\Add4~12_combout\ & (\Add7~12_combout\ & !\abs_diff_uns[3][5]~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~12_combout\,
	datab => \Add7~12_combout\,
	datad => VCC,
	cin => \abs_diff_uns[3][5]~17\,
	combout => \abs_diff_uns[3][6]~18_combout\,
	cout => \abs_diff_uns[3][6]~19\);

-- Location: LCCOMB_X25_Y5_N12
\Add13~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add13~12_combout\ = !\Add13~11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Add13~11\,
	combout => \Add13~12_combout\);

-- Location: LCCOMB_X25_Y5_N26
\Add16~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add16~12_combout\ = ((\abs_diff_uns[3][6]~18_combout\ $ (\Add13~12_combout\ $ (!\Add16~11\)))) # (GND)
-- \Add16~13\ = CARRY((\abs_diff_uns[3][6]~18_combout\ & ((\Add13~12_combout\) # (!\Add16~11\))) # (!\abs_diff_uns[3][6]~18_combout\ & (\Add13~12_combout\ & !\Add16~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \abs_diff_uns[3][6]~18_combout\,
	datab => \Add13~12_combout\,
	datad => VCC,
	cin => \Add16~11\,
	combout => \Add16~12_combout\,
	cout => \Add16~13\);

-- Location: LCCOMB_X25_Y21_N28
\abs_diff_uns[3][7]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \abs_diff_uns[3][7]~20_combout\ = \abs_diff_uns[3][6]~19\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \abs_diff_uns[3][6]~19\,
	combout => \abs_diff_uns[3][7]~20_combout\);

-- Location: LCCOMB_X25_Y5_N28
\Add16~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add16~14_combout\ = \Add16~13\ $ (\abs_diff_uns[3][7]~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \abs_diff_uns[3][7]~20_combout\,
	cin => \Add16~13\,
	combout => \Add16~14_combout\);

ww_abs_diff(7) <= \abs_diff[7]~output_o\;

ww_abs_diff(6) <= \abs_diff[6]~output_o\;

ww_abs_diff(5) <= \abs_diff[5]~output_o\;

ww_abs_diff(4) <= \abs_diff[4]~output_o\;

ww_abs_diff(3) <= \abs_diff[3]~output_o\;

ww_abs_diff(2) <= \abs_diff[2]~output_o\;

ww_abs_diff(1) <= \abs_diff[1]~output_o\;

ww_abs_diff(0) <= \abs_diff[0]~output_o\;
END structure;


