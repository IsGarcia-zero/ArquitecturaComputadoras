-- Copyright (C) 2021  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 21.1.0 Build 842 10/21/2021 SJ Lite Edition"

-- DATE "11/28/2022 18:04:24"

-- 
-- Device: Altera EP4CE6E22C8 Package TQFP144
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
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

ENTITY 	practica2 IS
    PORT (
	sign_flag : OUT std_logic;
	clk : IN std_logic;
	rst : IN std_logic;
	ecuacion : IN std_logic_vector(1 DOWNTO 0);
	d1 : OUT std_logic;
	d2 : OUT std_logic;
	d3 : OUT std_logic;
	d4 : OUT std_logic;
	a : OUT std_logic;
	b : OUT std_logic;
	c : OUT std_logic;
	d : OUT std_logic;
	e : OUT std_logic;
	f : OUT std_logic;
	g : OUT std_logic;
	a_dato : OUT std_logic_vector(9 DOWNTO 0);
	b_dato : OUT std_logic_vector(9 DOWNTO 0);
	mar : OUT std_logic_vector(11 DOWNTO 0);
	R : OUT std_logic_vector(15 DOWNTO 0)
	);
END practica2;

-- Design Ports Information
-- sign_flag	=>  Location: PIN_50,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d1	=>  Location: PIN_38,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d2	=>  Location: PIN_39,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d3	=>  Location: PIN_42,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d4	=>  Location: PIN_43,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a	=>  Location: PIN_30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b	=>  Location: PIN_31,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c	=>  Location: PIN_32,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d	=>  Location: PIN_33,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- e	=>  Location: PIN_44,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f	=>  Location: PIN_46,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- g	=>  Location: PIN_49,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_dato[9]	=>  Location: PIN_141,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_dato[8]	=>  Location: PIN_133,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_dato[7]	=>  Location: PIN_135,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_dato[6]	=>  Location: PIN_143,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_dato[5]	=>  Location: PIN_127,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_dato[4]	=>  Location: PIN_34,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_dato[3]	=>  Location: PIN_136,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_dato[2]	=>  Location: PIN_85,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_dato[1]	=>  Location: PIN_7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_dato[0]	=>  Location: PIN_137,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_dato[9]	=>  Location: PIN_128,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_dato[8]	=>  Location: PIN_11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_dato[7]	=>  Location: PIN_132,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_dato[6]	=>  Location: PIN_138,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_dato[5]	=>  Location: PIN_84,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_dato[4]	=>  Location: PIN_3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_dato[3]	=>  Location: PIN_10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_dato[2]	=>  Location: PIN_100,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_dato[1]	=>  Location: PIN_98,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_dato[0]	=>  Location: PIN_87,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mar[11]	=>  Location: PIN_83,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mar[10]	=>  Location: PIN_124,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mar[9]	=>  Location: PIN_55,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mar[8]	=>  Location: PIN_121,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mar[7]	=>  Location: PIN_71,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mar[6]	=>  Location: PIN_114,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mar[5]	=>  Location: PIN_28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mar[4]	=>  Location: PIN_129,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mar[3]	=>  Location: PIN_80,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mar[2]	=>  Location: PIN_126,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mar[1]	=>  Location: PIN_86,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mar[0]	=>  Location: PIN_125,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[15]	=>  Location: PIN_72,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[14]	=>  Location: PIN_54,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[13]	=>  Location: PIN_113,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[12]	=>  Location: PIN_68,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[11]	=>  Location: PIN_64,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[10]	=>  Location: PIN_59,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[9]	=>  Location: PIN_70,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[8]	=>  Location: PIN_65,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[7]	=>  Location: PIN_60,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[6]	=>  Location: PIN_66,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[5]	=>  Location: PIN_67,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[4]	=>  Location: PIN_120,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[3]	=>  Location: PIN_53,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[2]	=>  Location: PIN_58,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[1]	=>  Location: PIN_69,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[0]	=>  Location: PIN_119,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_74,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_91,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ecuacion[1]	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ecuacion[0]	=>  Location: PIN_51,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF practica2 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_sign_flag : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_ecuacion : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_d1 : std_logic;
SIGNAL ww_d2 : std_logic;
SIGNAL ww_d3 : std_logic;
SIGNAL ww_d4 : std_logic;
SIGNAL ww_a : std_logic;
SIGNAL ww_b : std_logic;
SIGNAL ww_c : std_logic;
SIGNAL ww_d : std_logic;
SIGNAL ww_e : std_logic;
SIGNAL ww_f : std_logic;
SIGNAL ww_g : std_logic;
SIGNAL ww_a_dato : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_b_dato : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_mar : std_logic_vector(11 DOWNTO 0);
SIGNAL ww_R : std_logic_vector(15 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \sign_flag~output_o\ : std_logic;
SIGNAL \d1~output_o\ : std_logic;
SIGNAL \d2~output_o\ : std_logic;
SIGNAL \d3~output_o\ : std_logic;
SIGNAL \d4~output_o\ : std_logic;
SIGNAL \a~output_o\ : std_logic;
SIGNAL \b~output_o\ : std_logic;
SIGNAL \c~output_o\ : std_logic;
SIGNAL \d~output_o\ : std_logic;
SIGNAL \e~output_o\ : std_logic;
SIGNAL \f~output_o\ : std_logic;
SIGNAL \g~output_o\ : std_logic;
SIGNAL \a_dato[9]~output_o\ : std_logic;
SIGNAL \a_dato[8]~output_o\ : std_logic;
SIGNAL \a_dato[7]~output_o\ : std_logic;
SIGNAL \a_dato[6]~output_o\ : std_logic;
SIGNAL \a_dato[5]~output_o\ : std_logic;
SIGNAL \a_dato[4]~output_o\ : std_logic;
SIGNAL \a_dato[3]~output_o\ : std_logic;
SIGNAL \a_dato[2]~output_o\ : std_logic;
SIGNAL \a_dato[1]~output_o\ : std_logic;
SIGNAL \a_dato[0]~output_o\ : std_logic;
SIGNAL \b_dato[9]~output_o\ : std_logic;
SIGNAL \b_dato[8]~output_o\ : std_logic;
SIGNAL \b_dato[7]~output_o\ : std_logic;
SIGNAL \b_dato[6]~output_o\ : std_logic;
SIGNAL \b_dato[5]~output_o\ : std_logic;
SIGNAL \b_dato[4]~output_o\ : std_logic;
SIGNAL \b_dato[3]~output_o\ : std_logic;
SIGNAL \b_dato[2]~output_o\ : std_logic;
SIGNAL \b_dato[1]~output_o\ : std_logic;
SIGNAL \b_dato[0]~output_o\ : std_logic;
SIGNAL \mar[11]~output_o\ : std_logic;
SIGNAL \mar[10]~output_o\ : std_logic;
SIGNAL \mar[9]~output_o\ : std_logic;
SIGNAL \mar[8]~output_o\ : std_logic;
SIGNAL \mar[7]~output_o\ : std_logic;
SIGNAL \mar[6]~output_o\ : std_logic;
SIGNAL \mar[5]~output_o\ : std_logic;
SIGNAL \mar[4]~output_o\ : std_logic;
SIGNAL \mar[3]~output_o\ : std_logic;
SIGNAL \mar[2]~output_o\ : std_logic;
SIGNAL \mar[1]~output_o\ : std_logic;
SIGNAL \mar[0]~output_o\ : std_logic;
SIGNAL \R[15]~output_o\ : std_logic;
SIGNAL \R[14]~output_o\ : std_logic;
SIGNAL \R[13]~output_o\ : std_logic;
SIGNAL \R[12]~output_o\ : std_logic;
SIGNAL \R[11]~output_o\ : std_logic;
SIGNAL \R[10]~output_o\ : std_logic;
SIGNAL \R[9]~output_o\ : std_logic;
SIGNAL \R[8]~output_o\ : std_logic;
SIGNAL \R[7]~output_o\ : std_logic;
SIGNAL \R[6]~output_o\ : std_logic;
SIGNAL \R[5]~output_o\ : std_logic;
SIGNAL \R[4]~output_o\ : std_logic;
SIGNAL \R[3]~output_o\ : std_logic;
SIGNAL \R[2]~output_o\ : std_logic;
SIGNAL \R[1]~output_o\ : std_logic;
SIGNAL \R[0]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \ecuacion[1]~input_o\ : std_logic;
SIGNAL \inst|Add0~0_combout\ : std_logic;
SIGNAL \inst|Add0~9_combout\ : std_logic;
SIGNAL \inst|Add0~1\ : std_logic;
SIGNAL \inst|Add0~2_combout\ : std_logic;
SIGNAL \inst|Add0~10_combout\ : std_logic;
SIGNAL \inst|Add0~3\ : std_logic;
SIGNAL \inst|Add0~4_combout\ : std_logic;
SIGNAL \inst|Add0~11_combout\ : std_logic;
SIGNAL \inst|Add0~5\ : std_logic;
SIGNAL \inst|Add0~6_combout\ : std_logic;
SIGNAL \inst|Add0~8_combout\ : std_logic;
SIGNAL \inst|Add0~7\ : std_logic;
SIGNAL \inst|Add0~12_combout\ : std_logic;
SIGNAL \inst|Add0~14_combout\ : std_logic;
SIGNAL \inst|Add0~13\ : std_logic;
SIGNAL \inst|Add0~15_combout\ : std_logic;
SIGNAL \inst|Add0~17_combout\ : std_logic;
SIGNAL \inst|LessThan0~2_combout\ : std_logic;
SIGNAL \inst|PC[13]~4_combout\ : std_logic;
SIGNAL \inst|LessThan2~0_combout\ : std_logic;
SIGNAL \inst|PC[13]~5_combout\ : std_logic;
SIGNAL \ecuacion[0]~input_o\ : std_logic;
SIGNAL \inst|LessThan2~1_combout\ : std_logic;
SIGNAL \inst|Mux38~2_combout\ : std_logic;
SIGNAL \inst|LessThan1~0_combout\ : std_logic;
SIGNAL \inst|PC[13]~3_combout\ : std_logic;
SIGNAL \inst|LessThan0~3_combout\ : std_logic;
SIGNAL \inst|Selector0~1_combout\ : std_logic;
SIGNAL \inst|Selector0~2_combout\ : std_logic;
SIGNAL \inst|Selector0~3_combout\ : std_logic;
SIGNAL \inst|pr_state.state0~q\ : std_logic;
SIGNAL \inst|PC[13]~2_combout\ : std_logic;
SIGNAL \inst|PC[13]~6_combout\ : std_logic;
SIGNAL \inst|Add0~16\ : std_logic;
SIGNAL \inst|Add0~18_combout\ : std_logic;
SIGNAL \inst|PC[6]~13_combout\ : std_logic;
SIGNAL \inst|Add0~19\ : std_logic;
SIGNAL \inst|Add0~20_combout\ : std_logic;
SIGNAL \inst|PC[7]~12_combout\ : std_logic;
SIGNAL \inst|Add0~21\ : std_logic;
SIGNAL \inst|Add0~22_combout\ : std_logic;
SIGNAL \inst|PC[8]~11_combout\ : std_logic;
SIGNAL \inst|Add0~23\ : std_logic;
SIGNAL \inst|Add0~24_combout\ : std_logic;
SIGNAL \inst|PC[9]~10_combout\ : std_logic;
SIGNAL \inst|Add0~25\ : std_logic;
SIGNAL \inst|Add0~26_combout\ : std_logic;
SIGNAL \inst|PC[10]~9_combout\ : std_logic;
SIGNAL \inst|Add0~27\ : std_logic;
SIGNAL \inst|Add0~28_combout\ : std_logic;
SIGNAL \inst|PC[11]~8_combout\ : std_logic;
SIGNAL \inst|LessThan0~0_combout\ : std_logic;
SIGNAL \inst|LessThan0~1_combout\ : std_logic;
SIGNAL \inst|LessThan1~1_combout\ : std_logic;
SIGNAL \inst|PC[8]~0_combout\ : std_logic;
SIGNAL \inst|PC[8]~1_combout\ : std_logic;
SIGNAL \inst|Add0~29\ : std_logic;
SIGNAL \inst|Add0~30_combout\ : std_logic;
SIGNAL \inst|PC[12]~7_combout\ : std_logic;
SIGNAL \inst|Add0~31\ : std_logic;
SIGNAL \inst|Add0~32_combout\ : std_logic;
SIGNAL \inst|PC[13]~14_combout\ : std_logic;
SIGNAL \inst|pr_state~10_combout\ : std_logic;
SIGNAL \inst|Selector0~0_combout\ : std_logic;
SIGNAL \inst|pr_state~11_combout\ : std_logic;
SIGNAL \inst|pr_state~12_combout\ : std_logic;
SIGNAL \inst|pr_state~13_combout\ : std_logic;
SIGNAL \inst|pr_state.state1~q\ : std_logic;
SIGNAL \inst|pr_state.state2~q\ : std_logic;
SIGNAL \inst|Mux38~3_combout\ : std_logic;
SIGNAL \inst|Mux38~4_combout\ : std_logic;
SIGNAL \inst|MAR[1]~5_combout\ : std_logic;
SIGNAL \inst|Mux38~5_combout\ : std_logic;
SIGNAL \inst|Mux38~7_combout\ : std_logic;
SIGNAL \inst|MAR[11]~7_combout\ : std_logic;
SIGNAL \inst|Mux39~0_combout\ : std_logic;
SIGNAL \inst|Mux38~6_combout\ : std_logic;
SIGNAL \inst|MAR[0]~6_combout\ : std_logic;
SIGNAL \inst|Mux39~1_combout\ : std_logic;
SIGNAL \inst|Mux39~2_combout\ : std_logic;
SIGNAL \inst|Mux36~0_combout\ : std_logic;
SIGNAL \inst|Mux36~1_combout\ : std_logic;
SIGNAL \inst|Mux36~2_combout\ : std_logic;
SIGNAL \inst|Mux50~0_combout\ : std_logic;
SIGNAL \inst|Mux31~0_combout\ : std_logic;
SIGNAL \inst|Mux31~1_combout\ : std_logic;
SIGNAL \inst|Mux31~2_combout\ : std_logic;
SIGNAL \inst|Mux30~1_combout\ : std_logic;
SIGNAL \inst|Mux30~0_combout\ : std_logic;
SIGNAL \inst|MAR[9]~1_combout\ : std_logic;
SIGNAL \inst|Mux30~2_combout\ : std_logic;
SIGNAL \inst|Mux30~3_combout\ : std_logic;
SIGNAL \inst|Mux28~0_combout\ : std_logic;
SIGNAL \inst|Mux28~1_combout\ : std_logic;
SIGNAL \inst|Mux28~2_combout\ : std_logic;
SIGNAL \inst|Mux29~0_combout\ : std_logic;
SIGNAL \inst|Mux29~1_combout\ : std_logic;
SIGNAL \inst|MAR[10]~0_combout\ : std_logic;
SIGNAL \inst|Mux29~2_combout\ : std_logic;
SIGNAL \inst|Mux29~3_combout\ : std_logic;
SIGNAL \inst|Equal0~0_combout\ : std_logic;
SIGNAL \inst|REG_D[0]~0_combout\ : std_logic;
SIGNAL \inst|reggy~194_combout\ : std_logic;
SIGNAL \inst|Mux4~0_combout\ : std_logic;
SIGNAL \inst|flag~3_combout\ : std_logic;
SIGNAL \inst|Mux34~3_combout\ : std_logic;
SIGNAL \inst|Mux34~2_combout\ : std_logic;
SIGNAL \inst|MAR[5]~2_combout\ : std_logic;
SIGNAL \inst|Mux34~4_combout\ : std_logic;
SIGNAL \inst|Mux34~5_combout\ : std_logic;
SIGNAL \inst|Mux35~0_combout\ : std_logic;
SIGNAL \inst|Mux29~5_combout\ : std_logic;
SIGNAL \inst|MAR[4]~3_combout\ : std_logic;
SIGNAL \inst|Mux35~1_combout\ : std_logic;
SIGNAL \inst|Mux35~2_combout\ : std_logic;
SIGNAL \inst|reggy~198_combout\ : std_logic;
SIGNAL \inst|reggy~93_q\ : std_logic;
SIGNAL \inst|reggy~195_combout\ : std_logic;
SIGNAL \inst|reggy~73_q\ : std_logic;
SIGNAL \inst|reggy~197_combout\ : std_logic;
SIGNAL \inst|reggy~63_q\ : std_logic;
SIGNAL \inst|reggy~196_combout\ : std_logic;
SIGNAL \inst|reggy~83_q\ : std_logic;
SIGNAL \inst|reggy~94_combout\ : std_logic;
SIGNAL \inst|reggy~95_combout\ : std_logic;
SIGNAL \inst|reggy~202_combout\ : std_logic;
SIGNAL \inst|reggy~53_q\ : std_logic;
SIGNAL \inst|reggy~199_combout\ : std_logic;
SIGNAL \inst|reggy~43_q\ : std_logic;
SIGNAL \inst|reggy~200_combout\ : std_logic;
SIGNAL \inst|reggy~33_q\ : std_logic;
SIGNAL \inst|reggy~201_combout\ : std_logic;
SIGNAL \inst|reggy~23_q\ : std_logic;
SIGNAL \inst|reggy~96_combout\ : std_logic;
SIGNAL \inst|reggy~97_combout\ : std_logic;
SIGNAL \inst|reggy~98_combout\ : std_logic;
SIGNAL \inst|s_p1[9]~0_combout\ : std_logic;
SIGNAL \inst|Mux37~0_combout\ : std_logic;
SIGNAL \inst|MAR[2]~4_combout\ : std_logic;
SIGNAL \inst|Mux29~4_combout\ : std_logic;
SIGNAL \inst|Mux37~1_combout\ : std_logic;
SIGNAL \inst|reggy~106_combout\ : std_logic;
SIGNAL \inst|reggy~107_combout\ : std_logic;
SIGNAL \inst|reggy~104_combout\ : std_logic;
SIGNAL \inst|reggy~105_combout\ : std_logic;
SIGNAL \inst|reggy~108_combout\ : std_logic;
SIGNAL \inst|alu1|Mux10~0_combout\ : std_logic;
SIGNAL \inst|alu1|Mux11~0_combout\ : std_logic;
SIGNAL \inst|alu1|Mux2~10_combout\ : std_logic;
SIGNAL \inst|alu1|Mux2~3_combout\ : std_logic;
SIGNAL \inst|Mux54~0_combout\ : std_logic;
SIGNAL \inst|reggy~15_q\ : std_logic;
SIGNAL \inst|reggy~146_combout\ : std_logic;
SIGNAL \inst|reggy~35_q\ : std_logic;
SIGNAL \inst|reggy~45_q\ : std_logic;
SIGNAL \inst|reggy~147_combout\ : std_logic;
SIGNAL \inst|reggy~85_q\ : std_logic;
SIGNAL \inst|reggy~65_q\ : std_logic;
SIGNAL \inst|reggy~75_q\ : std_logic;
SIGNAL \inst|reggy~55_q\ : std_logic;
SIGNAL \inst|reggy~144_combout\ : std_logic;
SIGNAL \inst|reggy~145_combout\ : std_logic;
SIGNAL \inst|reggy~148_combout\ : std_logic;
SIGNAL \inst|Mux55~0_combout\ : std_logic;
SIGNAL \inst|alu1|Mux9~1_combout\ : std_logic;
SIGNAL \inst|alu1|Mux9~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|salida[0]~30_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|aux[0]~23_combout\ : std_logic;
SIGNAL \inst|reggy~74_q\ : std_logic;
SIGNAL \inst|reggy~54_q\ : std_logic;
SIGNAL \inst|reggy~154_combout\ : std_logic;
SIGNAL \inst|reggy~64_q\ : std_logic;
SIGNAL \inst|reggy~155_combout\ : std_logic;
SIGNAL \inst|reggy~24_q\ : std_logic;
SIGNAL \inst|reggy~14_q\ : std_logic;
SIGNAL \inst|reggy~156_combout\ : std_logic;
SIGNAL \inst|reggy~34_q\ : std_logic;
SIGNAL \inst|reggy~44_q\ : std_logic;
SIGNAL \inst|reggy~157_combout\ : std_logic;
SIGNAL \inst|reggy~158_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|inter[0]~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|salida~23_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|salida~24_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~39_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~18_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~19_combout\ : std_logic;
SIGNAL \inst|reggy~41_q\ : std_logic;
SIGNAL \inst|reggy~51_q\ : std_logic;
SIGNAL \inst|reggy~21_q\ : std_logic;
SIGNAL \inst|reggy~31_q\ : std_logic;
SIGNAL \inst|reggy~101_combout\ : std_logic;
SIGNAL \inst|reggy~102_combout\ : std_logic;
SIGNAL \inst|reggy~61_q\ : std_logic;
SIGNAL \inst|reggy~99_combout\ : std_logic;
SIGNAL \inst|reggy~91_q\ : std_logic;
SIGNAL \inst|reggy~71_q\ : std_logic;
SIGNAL \inst|reggy~100_combout\ : std_logic;
SIGNAL \inst|reggy~103_combout\ : std_logic;
SIGNAL \inst|reggy~40_q\ : std_logic;
SIGNAL \inst|reggy~20_q\ : std_logic;
SIGNAL \inst|reggy~30_q\ : std_logic;
SIGNAL \inst|reggy~116_combout\ : std_logic;
SIGNAL \inst|reggy~117_combout\ : std_logic;
SIGNAL \inst|reggy~60_q\ : std_logic;
SIGNAL \inst|reggy~80_q\ : std_logic;
SIGNAL \inst|reggy~114_combout\ : std_logic;
SIGNAL \inst|reggy~90_q\ : std_logic;
SIGNAL \inst|reggy~70_q\ : std_logic;
SIGNAL \inst|reggy~115_combout\ : std_logic;
SIGNAL \inst|reggy~118_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|Yop~1_combout\ : std_logic;
SIGNAL \inst|reggy~49_q\ : std_logic;
SIGNAL \inst|reggy~19_q\ : std_logic;
SIGNAL \inst|reggy~29_q\ : std_logic;
SIGNAL \inst|reggy~126_combout\ : std_logic;
SIGNAL \inst|reggy~39_q\ : std_logic;
SIGNAL \inst|reggy~127_combout\ : std_logic;
SIGNAL \inst|reggy~59_q\ : std_logic;
SIGNAL \inst|reggy~124_combout\ : std_logic;
SIGNAL \inst|reggy~69_q\ : std_logic;
SIGNAL \inst|reggy~89_q\ : std_logic;
SIGNAL \inst|reggy~125_combout\ : std_logic;
SIGNAL \inst|reggy~128_combout\ : std_logic;
SIGNAL \inst|Mux52~0_combout\ : std_logic;
SIGNAL \inst|reggy~57_q\ : std_logic;
SIGNAL \inst|reggy~77_q\ : std_logic;
SIGNAL \inst|reggy~169_combout\ : std_logic;
SIGNAL \inst|reggy~87_q\ : std_logic;
SIGNAL \inst|reggy~67_q\ : std_logic;
SIGNAL \inst|reggy~170_combout\ : std_logic;
SIGNAL \inst|reggy~47_q\ : std_logic;
SIGNAL \inst|reggy~37_q\ : std_logic;
SIGNAL \inst|reggy~17_q\ : std_logic;
SIGNAL \inst|reggy~171_combout\ : std_logic;
SIGNAL \inst|reggy~172_combout\ : std_logic;
SIGNAL \inst|reggy~173_combout\ : std_logic;
SIGNAL \inst|Mux53~0_combout\ : std_logic;
SIGNAL \inst|reggy~76_q\ : std_logic;
SIGNAL \inst|reggy~139_combout\ : std_logic;
SIGNAL \inst|reggy~66_q\ : std_logic;
SIGNAL \inst|reggy~86_q\ : std_logic;
SIGNAL \inst|reggy~140_combout\ : std_logic;
SIGNAL \inst|reggy~46_q\ : std_logic;
SIGNAL \inst|reggy~16_q\ : std_logic;
SIGNAL \inst|reggy~26_q\ : std_logic;
SIGNAL \inst|reggy~141_combout\ : std_logic;
SIGNAL \inst|reggy~36_q\ : std_logic;
SIGNAL \inst|reggy~142_combout\ : std_logic;
SIGNAL \inst|reggy~143_combout\ : std_logic;
SIGNAL \inst|REG_A[2]~feeder_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|aux[1]~10\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|aux[2]~11_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|salida~19_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|salida~20_combout\ : std_logic;
SIGNAL \inst|alu1|Mux2~4_combout\ : std_logic;
SIGNAL \inst|Mux51~0_combout\ : std_logic;
SIGNAL \inst|reggy~88_q\ : std_logic;
SIGNAL \inst|reggy~78_q\ : std_logic;
SIGNAL \inst|reggy~129_combout\ : std_logic;
SIGNAL \inst|reggy~68_q\ : std_logic;
SIGNAL \inst|reggy~130_combout\ : std_logic;
SIGNAL \inst|reggy~48_q\ : std_logic;
SIGNAL \inst|reggy~38_q\ : std_logic;
SIGNAL \inst|reggy~18_q\ : std_logic;
SIGNAL \inst|reggy~28_q\ : std_logic;
SIGNAL \inst|reggy~131_combout\ : std_logic;
SIGNAL \inst|reggy~132_combout\ : std_logic;
SIGNAL \inst|reggy~133_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|aux[2]~12\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|aux[3]~14\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|aux[4]~15_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|salida~15_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|salida~16_combout\ : std_logic;
SIGNAL \inst|alu1|barrel_shifters|aux[4]~feeder_combout\ : std_logic;
SIGNAL \inst|alu1|Mux2~7_combout\ : std_logic;
SIGNAL \inst|alu1|Mux5~2_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan0~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan0~1_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add0~1\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add0~3\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add0~5\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add0~7\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add0~8_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add0~16_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add0~6_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add0~17_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add0~4_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add0~18_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add0~2_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add0~19_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add0~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add0~20_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add1~1\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add1~3\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add1~5\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add1~7\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add1~9\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add1~10_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add0~9\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add0~11\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add0~12_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add0~14_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add0~10_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add0~15_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan1~1_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan1~3_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan1~5_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan1~7_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan1~9_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan1~11_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan1~13_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan1~14_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add1~15_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add1~8_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add1~16_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add1~6_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add1~17_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add1~4_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add1~18_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add1~2_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add1~19_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add1~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add1~20_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add2~1\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add2~3\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add2~5\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add2~7\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add2~9\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add2~11\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add2~12_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add2~14_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add2~10_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add2~15_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add2~8_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add2~16_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add2~6_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add2~17_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add2~4_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add2~18_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add2~2_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add2~19_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add2~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add2~20_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan3~1_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan3~3_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan3~5_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan3~7_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan3~9_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan3~11_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan3~13_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan3~14_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi3|s3|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi1|s1|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi1|s2|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi1|s3|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi1|s4|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi1|s3|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi2|s3|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi2|s4|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi3|s4|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi4|s4|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|Yop~3_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|s0|Cout2~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|s1|Cout2~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|s2|Cout2~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|s3|Cout2~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|salida~4_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|s0|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|s1|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|s1|Cout~1_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|s2|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|s2|Cout~combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|s3|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|s3|Cout~combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|s4|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|Mux5~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|resta|s0|Cout2~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|Yop~5_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|resta|s0|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|resta|s1|Cout2~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|Yop~6_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|resta|s1|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|resta|s2|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|resta|s2|Cout2~4_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|Yop~2_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|resta|s3|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|resta|s4|Suma~combout\ : std_logic;
SIGNAL \inst|alu1|Mux5~1_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~10_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~11_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|salida~5_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi2|s2|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|resta|s2|Suma~combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|s2|Suma~combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~14_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~15_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi1|s1|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|s1|Suma~combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|resta|s1|Suma~combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~16_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~17_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~20\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~22\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~24\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~26\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~27_combout\ : std_logic;
SIGNAL \inst|alu1|Mux5~3_combout\ : std_logic;
SIGNAL \inst|reggy~206_combout\ : std_logic;
SIGNAL \inst|reggy~58_q\ : std_logic;
SIGNAL \inst|reggy~174_combout\ : std_logic;
SIGNAL \inst|reggy~175_combout\ : std_logic;
SIGNAL \inst|reggy~176_combout\ : std_logic;
SIGNAL \inst|reggy~177_combout\ : std_logic;
SIGNAL \inst|reggy~178_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi1|s4|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi1|s5|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi2|s4|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi1|s5|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi2|s5|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi2|s6|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi2|s6|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi3|s4|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi2|s5|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi3|s5|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi3|s6|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi3|s7|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi3|s7|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi3|s6|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi4|s4|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi3|s5|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi4|s5|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi4|s6|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi4|s7|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi4|s8|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|Mux2~5_combout\ : std_logic;
SIGNAL \inst|alu1|Mux2~6_combout\ : std_logic;
SIGNAL \inst|alu1|Mux7~2_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~23_combout\ : std_logic;
SIGNAL \inst|alu1|Mux7~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add3~1\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add3~3\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add3~5\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add3~7\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add3~9\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add3~10_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add3~15_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add3~8_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add3~16_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add3~6_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add3~17_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add3~4_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add3~18_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add3~2_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add3~19_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add3~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add3~20_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add4~1\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add4~3\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add4~5\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add4~7\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add4~9\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add4~11\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add4~12_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add3~11\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add3~12_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add3~14_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan4~1_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan4~3_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan4~5_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan4~7_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan4~9_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan4~11_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan4~13_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan4~14_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add4~14_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add4~10_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add4~15_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add4~8_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add4~16_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add4~6_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add4~17_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add4~4_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add4~18_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add4~2_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add4~19_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add4~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add4~20_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan5~1_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan5~3_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan5~5_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan5~7_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan5~9_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan5~11_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan5~13_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan5~14_combout\ : std_logic;
SIGNAL \inst|alu1|Mux7~1_combout\ : std_logic;
SIGNAL \inst|alu1|Mux7~3_combout\ : std_logic;
SIGNAL \inst|reggy~208_combout\ : std_logic;
SIGNAL \inst|reggy~56_q\ : std_logic;
SIGNAL \inst|reggy~164_combout\ : std_logic;
SIGNAL \inst|reggy~165_combout\ : std_logic;
SIGNAL \inst|reggy~166_combout\ : std_logic;
SIGNAL \inst|reggy~167_combout\ : std_logic;
SIGNAL \inst|reggy~168_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi2|s2|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi2|s3|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi3|s3|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|s3|Suma~combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|resta|s3|Suma~combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~12_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~13_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~25_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|aux[3]~13_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|salida~17_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|salida~18_combout\ : std_logic;
SIGNAL \inst|alu1|Mux6~2_combout\ : std_logic;
SIGNAL \inst|alu1|Mux6~0_combout\ : std_logic;
SIGNAL \inst|alu1|Mux6~1_combout\ : std_logic;
SIGNAL \inst|alu1|Mux6~3_combout\ : std_logic;
SIGNAL \inst|reggy~207_combout\ : std_logic;
SIGNAL \inst|reggy~27_q\ : std_logic;
SIGNAL \inst|reggy~136_combout\ : std_logic;
SIGNAL \inst|reggy~137_combout\ : std_logic;
SIGNAL \inst|reggy~134_combout\ : std_logic;
SIGNAL \inst|reggy~135_combout\ : std_logic;
SIGNAL \inst|reggy~138_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|resta|s3|Cout2~4_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|resta|s4|Cout2~4_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|resta|s5|Cout2~4_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|resta|s6|Cout2~4_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|Yop~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|resta|s7|Cout2~4_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|resta|s6|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|resta|s7|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|resta|Sfaux~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|Mux9~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add5~1\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add5~3\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add5~5\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add5~7\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add5~9\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add5~11\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add5~12_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add5~14_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add5~10_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add5~15_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add5~8_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add5~16_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add5~6_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add5~17_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add5~4_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add5~18_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add5~2_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add5~19_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add5~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add5~20_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan6~1_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan6~3_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan6~5_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan6~7_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan6~9_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan6~11_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan6~13_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan6~14_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add6~1\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add6~3\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add6~5\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add6~7\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add6~9\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add6~11\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add6~12_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add6~14_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add6~10_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add6~15_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add6~8_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add6~16_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add6~6_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add6~17_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add6~4_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add6~18_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add6~2_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add6~19_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add6~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add6~20_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan7~1_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan7~3_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan7~5_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan7~7_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan7~9_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan7~11_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan7~13_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan7~14_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|Mux9~1_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|Mux9~2_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|Mux9~3_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|Mux9~4_combout\ : std_logic;
SIGNAL \inst|reggy~211_combout\ : std_logic;
SIGNAL \inst|reggy~212_combout\ : std_logic;
SIGNAL \inst|reggy~84_q\ : std_logic;
SIGNAL \inst|reggy~149_combout\ : std_logic;
SIGNAL \inst|reggy~150_combout\ : std_logic;
SIGNAL \inst|reggy~151_combout\ : std_logic;
SIGNAL \inst|reggy~152_combout\ : std_logic;
SIGNAL \inst|reggy~153_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|aux[1]~9_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|salida~21_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|salida~22_combout\ : std_logic;
SIGNAL \inst|alu1|barrel_shifters|aux[1]~feeder_combout\ : std_logic;
SIGNAL \inst|alu1|Mux8~2_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~21_combout\ : std_logic;
SIGNAL \inst|alu1|Mux8~0_combout\ : std_logic;
SIGNAL \inst|alu1|Mux8~1_combout\ : std_logic;
SIGNAL \inst|alu1|Mux8~3_combout\ : std_logic;
SIGNAL \inst|reggy~209_combout\ : std_logic;
SIGNAL \inst|reggy~25_q\ : std_logic;
SIGNAL \inst|reggy~161_combout\ : std_logic;
SIGNAL \inst|reggy~162_combout\ : std_logic;
SIGNAL \inst|reggy~159_combout\ : std_logic;
SIGNAL \inst|reggy~160_combout\ : std_logic;
SIGNAL \inst|reggy~163_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan0~2_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|resta|s7|Suma~combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi4|s7|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|s4|Cout2~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|s5|Cout2~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|s6|Cout2~4_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|s4|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|s4|Cout~combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|s5|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|s5|Cout~combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|s6|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|s6|Cout~combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|s7|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|Mux2~1_combout\ : std_logic;
SIGNAL \inst|alu1|Mux2~2_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~4_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~5_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi4|s6|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|s6|Suma~combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~6_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~7_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi4|s5|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|s5|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|resta|s4|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|resta|s5|Suma~combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~8_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~9_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~28\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~30\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~32\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~33_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|aux[4]~16\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|aux[5]~18\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|aux[6]~20\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|aux[7]~21_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|salida~6_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|salida~7_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|salida~8_combout\ : std_logic;
SIGNAL \inst|alu1|barrel_shifters|aux[7]~feeder_combout\ : std_logic;
SIGNAL \inst|alu1|Mux2~8_combout\ : std_logic;
SIGNAL \inst|alu1|Mux2~9_combout\ : std_logic;
SIGNAL \inst|reggy~203_combout\ : std_logic;
SIGNAL \inst|reggy~81_q\ : std_logic;
SIGNAL \inst|reggy~109_combout\ : std_logic;
SIGNAL \inst|reggy~110_combout\ : std_logic;
SIGNAL \inst|reggy~111_combout\ : std_logic;
SIGNAL \inst|reggy~112_combout\ : std_logic;
SIGNAL \inst|reggy~113_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add1~11\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add1~12_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add1~14_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan2~1_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan2~3_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan2~5_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan2~7_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan2~9_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan2~11_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan2~13_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan2~14_combout\ : std_logic;
SIGNAL \inst|alu1|Mux4~0_combout\ : std_logic;
SIGNAL \inst|alu1|Mux4~1_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|aux[5]~17_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|salida~12_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|salida~13_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|salida~14_combout\ : std_logic;
SIGNAL \inst|alu1|Mux4~2_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~29_combout\ : std_logic;
SIGNAL \inst|alu1|Mux4~3_combout\ : std_logic;
SIGNAL \inst|reggy~205_combout\ : std_logic;
SIGNAL \inst|reggy~79_q\ : std_logic;
SIGNAL \inst|reggy~179_combout\ : std_logic;
SIGNAL \inst|reggy~180_combout\ : std_logic;
SIGNAL \inst|reggy~181_combout\ : std_logic;
SIGNAL \inst|reggy~182_combout\ : std_logic;
SIGNAL \inst|reggy~183_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|Yop~4_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|resta|s5|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|resta|s6|Suma~combout\ : std_logic;
SIGNAL \inst|alu1|Mux3~0_combout\ : std_logic;
SIGNAL \inst|alu1|Mux3~1_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|salida~9_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|aux[6]~19_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|salida~10_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|salida~11_combout\ : std_logic;
SIGNAL \inst|alu1|Mux3~2_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~31_combout\ : std_logic;
SIGNAL \inst|alu1|Mux3~3_combout\ : std_logic;
SIGNAL \inst|reggy~204_combout\ : std_logic;
SIGNAL \inst|reggy~50_q\ : std_logic;
SIGNAL \inst|reggy~121_combout\ : std_logic;
SIGNAL \inst|reggy~122_combout\ : std_logic;
SIGNAL \inst|reggy~119_combout\ : std_logic;
SIGNAL \inst|reggy~120_combout\ : std_logic;
SIGNAL \inst|reggy~123_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|s7|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|Sfaux~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|s7|Cout~1_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|s7|Cout~2_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|s8|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|Sfaux~1_combout\ : std_logic;
SIGNAL \inst|alu1|Mux2~0_combout\ : std_logic;
SIGNAL \inst|flag~2_combout\ : std_logic;
SIGNAL \inst|flag~4_combout\ : std_logic;
SIGNAL \inst|flag~q\ : std_logic;
SIGNAL \inst2|contador[0]~1_combout\ : std_logic;
SIGNAL \inst2|contador[1]~0_combout\ : std_logic;
SIGNAL \inst2|Mux3~0_combout\ : std_logic;
SIGNAL \inst2|Mux1~0_combout\ : std_logic;
SIGNAL \inst2|Mux1~1_combout\ : std_logic;
SIGNAL \inst2|Mux1~2_combout\ : std_logic;
SIGNAL \inst1|Selector31~0_combout\ : std_logic;
SIGNAL \inst1|Selector30~0_combout\ : std_logic;
SIGNAL \inst1|Selector29~0_combout\ : std_logic;
SIGNAL \inst1|Selector29~1_combout\ : std_logic;
SIGNAL \inst1|Add0~0_combout\ : std_logic;
SIGNAL \inst1|Selector28~0_combout\ : std_logic;
SIGNAL \inst1|Equal0~0_combout\ : std_logic;
SIGNAL \inst1|state_next.done~0_combout\ : std_logic;
SIGNAL \inst1|state.done~q\ : std_logic;
SIGNAL \inst1|state.start~0_combout\ : std_logic;
SIGNAL \inst1|state.start~q\ : std_logic;
SIGNAL \inst1|Selector1~1_combout\ : std_logic;
SIGNAL \inst1|state.shift~q\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|s7|Cout2~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|s8|Suma~combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|Mux1~2_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi4|s8|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|resta|s8|Suma~combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~35_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~36_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~34\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~37_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|Mux1~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|Mux1~1_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|Mux1~3_combout\ : std_logic;
SIGNAL \inst|alu1|Mux1~7_combout\ : std_logic;
SIGNAL \inst|alu1|Mux1~5_combout\ : std_logic;
SIGNAL \inst|alu1|barrel_shifters|aux[8]~feeder_combout\ : std_logic;
SIGNAL \inst|alu1|Mux1~3_combout\ : std_logic;
SIGNAL \inst|reggy~52_q\ : std_logic;
SIGNAL \inst|reggy~42_q\ : std_logic;
SIGNAL \inst|reggy~32_q\ : std_logic;
SIGNAL \inst|reggy~191_combout\ : std_logic;
SIGNAL \inst|reggy~192_combout\ : std_logic;
SIGNAL \inst|reggy~72_q\ : std_logic;
SIGNAL \inst|reggy~62_q\ : std_logic;
SIGNAL \inst|reggy~82_q\ : std_logic;
SIGNAL \inst|reggy~189_combout\ : std_logic;
SIGNAL \inst|reggy~92_q\ : std_logic;
SIGNAL \inst|reggy~190_combout\ : std_logic;
SIGNAL \inst|reggy~193_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|aux[7]~22\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|aux[8]~24_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|salida~25_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|salida~26_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|salida~27_combout\ : std_logic;
SIGNAL \inst|alu1|Mux1~2_combout\ : std_logic;
SIGNAL \inst|alu1|Mux1~4_combout\ : std_logic;
SIGNAL \inst|alu1|Mux1~6_combout\ : std_logic;
SIGNAL \inst|reggy~210_combout\ : std_logic;
SIGNAL \inst|reggy~22_q\ : std_logic;
SIGNAL \inst|reggy~186_combout\ : std_logic;
SIGNAL \inst|reggy~187_combout\ : std_logic;
SIGNAL \inst|reggy~184_combout\ : std_logic;
SIGNAL \inst|reggy~185_combout\ : std_logic;
SIGNAL \inst|reggy~188_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|aux[8]~25\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|aux[9]~26_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|salida~28_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|salida~29_combout\ : std_logic;
SIGNAL \inst|salida[9]~0_combout\ : std_logic;
SIGNAL \inst|alu1|Mux2~11_combout\ : std_logic;
SIGNAL \inst|salida[9]~1_combout\ : std_logic;
SIGNAL \inst|salida[9]~2_combout\ : std_logic;
SIGNAL \inst|salida[9]~3_combout\ : std_logic;
SIGNAL \inst|salida[9]~4_combout\ : std_logic;
SIGNAL \inst|salida[9]~5_combout\ : std_logic;
SIGNAL \inst|Selector3~0_combout\ : std_logic;
SIGNAL \inst|salida[8]~6_combout\ : std_logic;
SIGNAL \inst|Selector4~0_combout\ : std_logic;
SIGNAL \inst|Selector7~0_combout\ : std_logic;
SIGNAL \inst|Selector8~0_combout\ : std_logic;
SIGNAL \inst1|binary_next~0_combout\ : std_logic;
SIGNAL \inst|Selector11~3_combout\ : std_logic;
SIGNAL \inst|Selector11~2_combout\ : std_logic;
SIGNAL \inst1|binary[0]~0_combout\ : std_logic;
SIGNAL \inst|Selector10~0_combout\ : std_logic;
SIGNAL \inst1|Selector10~0_combout\ : std_logic;
SIGNAL \inst1|binary[7]~1_combout\ : std_logic;
SIGNAL \inst|Selector9~0_combout\ : std_logic;
SIGNAL \inst1|Selector9~0_combout\ : std_logic;
SIGNAL \inst1|Selector8~0_combout\ : std_logic;
SIGNAL \inst1|Selector7~0_combout\ : std_logic;
SIGNAL \inst|Selector6~0_combout\ : std_logic;
SIGNAL \inst1|Selector6~0_combout\ : std_logic;
SIGNAL \inst|Selector5~0_combout\ : std_logic;
SIGNAL \inst1|Selector5~0_combout\ : std_logic;
SIGNAL \inst1|Selector4~0_combout\ : std_logic;
SIGNAL \inst1|Selector3~0_combout\ : std_logic;
SIGNAL \inst1|Selector2~0_combout\ : std_logic;
SIGNAL \inst1|Selector1~0_combout\ : std_logic;
SIGNAL \inst1|Selector27~0_combout\ : std_logic;
SIGNAL \inst1|Selector25~0_combout\ : std_logic;
SIGNAL \inst1|Selector25~1_combout\ : std_logic;
SIGNAL \inst1|Selector24~0_combout\ : std_logic;
SIGNAL \inst1|Selector24~1_combout\ : std_logic;
SIGNAL \inst1|bcds_next~3_combout\ : std_logic;
SIGNAL \inst1|Selector26~0_combout\ : std_logic;
SIGNAL \inst1|Selector23~0_combout\ : std_logic;
SIGNAL \inst1|Selector23~1_combout\ : std_logic;
SIGNAL \inst1|bcds_next~2_combout\ : std_logic;
SIGNAL \inst1|Selector22~0_combout\ : std_logic;
SIGNAL \inst1|Selector21~0_combout\ : std_logic;
SIGNAL \inst1|Selector21~1_combout\ : std_logic;
SIGNAL \inst1|Selector20~0_combout\ : std_logic;
SIGNAL \inst1|Selector20~1_combout\ : std_logic;
SIGNAL \inst1|Selector19~0_combout\ : std_logic;
SIGNAL \inst1|Selector19~1_combout\ : std_logic;
SIGNAL \inst1|Selector17~0_combout\ : std_logic;
SIGNAL \inst1|Selector17~1_combout\ : std_logic;
SIGNAL \inst1|Selector16~0_combout\ : std_logic;
SIGNAL \inst1|Selector16~1_combout\ : std_logic;
SIGNAL \inst1|bcds_next~1_combout\ : std_logic;
SIGNAL \inst1|Selector18~0_combout\ : std_logic;
SIGNAL \inst1|bcds_out_reg[9]~feeder_combout\ : std_logic;
SIGNAL \inst1|bcds_out_reg[5]~feeder_combout\ : std_logic;
SIGNAL \inst1|Selector15~0_combout\ : std_logic;
SIGNAL \inst1|Selector15~1_combout\ : std_logic;
SIGNAL \inst1|Selector13~0_combout\ : std_logic;
SIGNAL \inst1|Selector13~1_combout\ : std_logic;
SIGNAL \inst1|Selector12~0_combout\ : std_logic;
SIGNAL \inst1|Selector12~1_combout\ : std_logic;
SIGNAL \inst1|Selector12~2_combout\ : std_logic;
SIGNAL \inst1|bcds_next~0_combout\ : std_logic;
SIGNAL \inst1|Selector14~0_combout\ : std_logic;
SIGNAL \inst2|Mux6~0_combout\ : std_logic;
SIGNAL \inst2|Mux6~1_combout\ : std_logic;
SIGNAL \inst1|bcds_out_reg[10]~feeder_combout\ : std_logic;
SIGNAL \inst2|Mux5~0_combout\ : std_logic;
SIGNAL \inst1|bcds_out_reg[2]~feeder_combout\ : std_logic;
SIGNAL \inst2|Mux5~1_combout\ : std_logic;
SIGNAL \inst1|bcds_out_reg[7]~feeder_combout\ : std_logic;
SIGNAL \inst2|Mux4~0_combout\ : std_logic;
SIGNAL \inst2|Mux4~1_combout\ : std_logic;
SIGNAL \inst1|bcds_out_reg[0]~feeder_combout\ : std_logic;
SIGNAL \inst1|bcds_out_reg[8]~feeder_combout\ : std_logic;
SIGNAL \inst2|Mux7~0_combout\ : std_logic;
SIGNAL \inst2|Mux7~1_combout\ : std_logic;
SIGNAL \inst2|Mux14~0_combout\ : std_logic;
SIGNAL \inst2|Mux13~0_combout\ : std_logic;
SIGNAL \inst2|Mux12~0_combout\ : std_logic;
SIGNAL \inst2|Mux11~0_combout\ : std_logic;
SIGNAL \inst2|Mux10~0_combout\ : std_logic;
SIGNAL \inst2|Mux9~0_combout\ : std_logic;
SIGNAL \inst2|Mux8~0_combout\ : std_logic;
SIGNAL \inst|s_p1[7]~feeder_combout\ : std_logic;
SIGNAL \inst|s_p1[6]~feeder_combout\ : std_logic;
SIGNAL \inst|s_p1[1]~feeder_combout\ : std_logic;
SIGNAL \inst|s_p1[0]~feeder_combout\ : std_logic;
SIGNAL \inst|s_p2[7]~feeder_combout\ : std_logic;
SIGNAL \inst|s_p2[6]~feeder_combout\ : std_logic;
SIGNAL \inst|s_p2[4]~feeder_combout\ : std_logic;
SIGNAL \inst|s_p2[3]~feeder_combout\ : std_logic;
SIGNAL \inst|s_p2[2]~feeder_combout\ : std_logic;
SIGNAL \inst|s_p2[0]~feeder_combout\ : std_logic;
SIGNAL \inst|salida\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst|alu1|unidad_aritmetica|mult|inter\ : std_logic_vector(24 DOWNTO 0);
SIGNAL \inst|REG_D\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst|alu1|barrel_shifters|salShifters\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst|PC\ : std_logic_vector(13 DOWNTO 0);
SIGNAL \inst|alu1|unidad_logica|salida\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst2|contador\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst|alu1|barrel_shifters|aux\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst1|bcds\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \inst|OP\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|REG_B\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst1|binary\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst2|arreglo\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|alu1|unidad_logica|aux\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \inst1|shift_counter\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|s_p1\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst|s_p2\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst1|bcds_out_reg\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \inst|REG_A\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst2|tmp\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|MAR\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst|alu1|unidad_aritmetica|suma|Xop\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \inst|ALT_INV_PC\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst2|ALT_INV_Mux8~0_combout\ : std_logic;
SIGNAL \ALT_INV_clk~inputclkctrl_outclk\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

sign_flag <= ww_sign_flag;
ww_clk <= clk;
ww_rst <= rst;
ww_ecuacion <= ecuacion;
d1 <= ww_d1;
d2 <= ww_d2;
d3 <= ww_d3;
d4 <= ww_d4;
a <= ww_a;
b <= ww_b;
c <= ww_c;
d <= ww_d;
e <= ww_e;
f <= ww_f;
g <= ww_g;
a_dato <= ww_a_dato;
b_dato <= ww_b_dato;
mar <= ww_mar;
R <= ww_R;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\inst|ALT_INV_PC\(0) <= NOT \inst|PC\(0);
\inst|ALT_INV_PC\(3) <= NOT \inst|PC\(3);
\inst2|ALT_INV_Mux8~0_combout\ <= NOT \inst2|Mux8~0_combout\;
\ALT_INV_clk~inputclkctrl_outclk\ <= NOT \clk~inputclkctrl_outclk\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X13_Y0_N2
\sign_flag~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|flag~q\,
	devoe => ww_devoe,
	o => \sign_flag~output_o\);

-- Location: IOOBUF_X1_Y0_N23
\d1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|arreglo\(0),
	devoe => ww_devoe,
	o => \d1~output_o\);

-- Location: IOOBUF_X1_Y0_N16
\d2~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|arreglo\(1),
	devoe => ww_devoe,
	o => \d2~output_o\);

-- Location: IOOBUF_X3_Y0_N2
\d3~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|arreglo\(2),
	devoe => ww_devoe,
	o => \d3~output_o\);

-- Location: IOOBUF_X5_Y0_N23
\d4~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|arreglo\(3),
	devoe => ww_devoe,
	o => \d4~output_o\);

-- Location: IOOBUF_X0_Y8_N16
\a~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|Mux14~0_combout\,
	devoe => ww_devoe,
	o => \a~output_o\);

-- Location: IOOBUF_X0_Y7_N2
\b~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|Mux13~0_combout\,
	devoe => ww_devoe,
	o => \b~output_o\);

-- Location: IOOBUF_X0_Y6_N16
\c~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|Mux12~0_combout\,
	devoe => ww_devoe,
	o => \c~output_o\);

-- Location: IOOBUF_X0_Y6_N23
\d~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|Mux11~0_combout\,
	devoe => ww_devoe,
	o => \d~output_o\);

-- Location: IOOBUF_X5_Y0_N16
\e~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|Mux10~0_combout\,
	devoe => ww_devoe,
	o => \e~output_o\);

-- Location: IOOBUF_X7_Y0_N2
\f~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|Mux9~0_combout\,
	devoe => ww_devoe,
	o => \f~output_o\);

-- Location: IOOBUF_X13_Y0_N16
\g~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|ALT_INV_Mux8~0_combout\,
	devoe => ww_devoe,
	o => \g~output_o\);

-- Location: IOOBUF_X5_Y24_N9
\a_dato[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|s_p1\(9),
	devoe => ww_devoe,
	o => \a_dato[9]~output_o\);

-- Location: IOOBUF_X13_Y24_N23
\a_dato[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|s_p1\(8),
	devoe => ww_devoe,
	o => \a_dato[8]~output_o\);

-- Location: IOOBUF_X11_Y24_N16
\a_dato[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|s_p1\(7),
	devoe => ww_devoe,
	o => \a_dato[7]~output_o\);

-- Location: IOOBUF_X1_Y24_N2
\a_dato[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|s_p1\(6),
	devoe => ww_devoe,
	o => \a_dato[6]~output_o\);

-- Location: IOOBUF_X16_Y24_N9
\a_dato[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|s_p1\(5),
	devoe => ww_devoe,
	o => \a_dato[5]~output_o\);

-- Location: IOOBUF_X0_Y5_N16
\a_dato[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|s_p1\(4),
	devoe => ww_devoe,
	o => \a_dato[4]~output_o\);

-- Location: IOOBUF_X9_Y24_N9
\a_dato[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|s_p1\(3),
	devoe => ww_devoe,
	o => \a_dato[3]~output_o\);

-- Location: IOOBUF_X34_Y9_N9
\a_dato[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|s_p1\(2),
	devoe => ww_devoe,
	o => \a_dato[2]~output_o\);

-- Location: IOOBUF_X0_Y21_N9
\a_dato[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|s_p1\(1),
	devoe => ww_devoe,
	o => \a_dato[1]~output_o\);

-- Location: IOOBUF_X7_Y24_N2
\a_dato[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|s_p1\(0),
	devoe => ww_devoe,
	o => \a_dato[0]~output_o\);

-- Location: IOOBUF_X16_Y24_N16
\b_dato[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|s_p2\(9),
	devoe => ww_devoe,
	o => \b_dato[9]~output_o\);

-- Location: IOOBUF_X0_Y18_N23
\b_dato[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|s_p2\(8),
	devoe => ww_devoe,
	o => \b_dato[8]~output_o\);

-- Location: IOOBUF_X13_Y24_N16
\b_dato[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|s_p2\(7),
	devoe => ww_devoe,
	o => \b_dato[7]~output_o\);

-- Location: IOOBUF_X7_Y24_N9
\b_dato[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|s_p2\(6),
	devoe => ww_devoe,
	o => \b_dato[6]~output_o\);

-- Location: IOOBUF_X34_Y9_N16
\b_dato[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|s_p2\(5),
	devoe => ww_devoe,
	o => \b_dato[5]~output_o\);

-- Location: IOOBUF_X0_Y23_N16
\b_dato[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|s_p2\(4),
	devoe => ww_devoe,
	o => \b_dato[4]~output_o\);

-- Location: IOOBUF_X0_Y18_N16
\b_dato[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|s_p2\(3),
	devoe => ww_devoe,
	o => \b_dato[3]~output_o\);

-- Location: IOOBUF_X34_Y17_N2
\b_dato[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|s_p2\(2),
	devoe => ww_devoe,
	o => \b_dato[2]~output_o\);

-- Location: IOOBUF_X34_Y17_N23
\b_dato[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|s_p2\(1),
	devoe => ww_devoe,
	o => \b_dato[1]~output_o\);

-- Location: IOOBUF_X34_Y10_N9
\b_dato[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|s_p2\(0),
	devoe => ww_devoe,
	o => \b_dato[0]~output_o\);

-- Location: IOOBUF_X34_Y9_N23
\mar[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|MAR\(11),
	devoe => ww_devoe,
	o => \mar[11]~output_o\);

-- Location: IOOBUF_X18_Y24_N16
\mar[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|MAR\(10),
	devoe => ww_devoe,
	o => \mar[10]~output_o\);

-- Location: IOOBUF_X18_Y0_N16
\mar[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|MAR\(9),
	devoe => ww_devoe,
	o => \mar[9]~output_o\);

-- Location: IOOBUF_X23_Y24_N16
\mar[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|MAR\(8),
	devoe => ww_devoe,
	o => \mar[8]~output_o\);

-- Location: IOOBUF_X32_Y0_N16
\mar[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \mar[7]~output_o\);

-- Location: IOOBUF_X28_Y24_N16
\mar[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|MAR\(6),
	devoe => ww_devoe,
	o => \mar[6]~output_o\);

-- Location: IOOBUF_X0_Y9_N9
\mar[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|MAR\(5),
	devoe => ww_devoe,
	o => \mar[5]~output_o\);

-- Location: IOOBUF_X16_Y24_N23
\mar[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|MAR\(4),
	devoe => ww_devoe,
	o => \mar[4]~output_o\);

-- Location: IOOBUF_X34_Y7_N9
\mar[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|MAR\(3),
	devoe => ww_devoe,
	o => \mar[3]~output_o\);

-- Location: IOOBUF_X16_Y24_N2
\mar[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|MAR\(2),
	devoe => ww_devoe,
	o => \mar[2]~output_o\);

-- Location: IOOBUF_X34_Y9_N2
\mar[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|MAR\(1),
	devoe => ww_devoe,
	o => \mar[1]~output_o\);

-- Location: IOOBUF_X18_Y24_N23
\mar[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|MAR\(0),
	devoe => ww_devoe,
	o => \mar[0]~output_o\);

-- Location: IOOBUF_X32_Y0_N9
\R[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|bcds_out_reg\(15),
	devoe => ww_devoe,
	o => \R[15]~output_o\);

-- Location: IOOBUF_X18_Y0_N23
\R[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|bcds_out_reg\(14),
	devoe => ww_devoe,
	o => \R[14]~output_o\);

-- Location: IOOBUF_X28_Y24_N9
\R[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|bcds_out_reg\(13),
	devoe => ww_devoe,
	o => \R[13]~output_o\);

-- Location: IOOBUF_X30_Y0_N9
\R[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|bcds_out_reg\(12),
	devoe => ww_devoe,
	o => \R[12]~output_o\);

-- Location: IOOBUF_X25_Y0_N2
\R[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|bcds_out_reg\(11),
	devoe => ww_devoe,
	o => \R[11]~output_o\);

-- Location: IOOBUF_X23_Y0_N16
\R[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|bcds_out_reg\(10),
	devoe => ww_devoe,
	o => \R[10]~output_o\);

-- Location: IOOBUF_X32_Y0_N23
\R[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|bcds_out_reg\(9),
	devoe => ww_devoe,
	o => \R[9]~output_o\);

-- Location: IOOBUF_X28_Y0_N23
\R[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|bcds_out_reg\(8),
	devoe => ww_devoe,
	o => \R[8]~output_o\);

-- Location: IOOBUF_X23_Y0_N9
\R[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|bcds_out_reg\(7),
	devoe => ww_devoe,
	o => \R[7]~output_o\);

-- Location: IOOBUF_X28_Y0_N2
\R[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|bcds_out_reg\(6),
	devoe => ww_devoe,
	o => \R[6]~output_o\);

-- Location: IOOBUF_X30_Y0_N23
\R[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|bcds_out_reg\(5),
	devoe => ww_devoe,
	o => \R[5]~output_o\);

-- Location: IOOBUF_X23_Y24_N9
\R[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|bcds_out_reg\(4),
	devoe => ww_devoe,
	o => \R[4]~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\R[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|bcds_out_reg\(3),
	devoe => ww_devoe,
	o => \R[3]~output_o\);

-- Location: IOOBUF_X21_Y0_N9
\R[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|bcds_out_reg\(2),
	devoe => ww_devoe,
	o => \R[2]~output_o\);

-- Location: IOOBUF_X30_Y0_N2
\R[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|bcds_out_reg\(1),
	devoe => ww_devoe,
	o => \R[1]~output_o\);

-- Location: IOOBUF_X23_Y24_N2
\R[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|bcds_out_reg\(0),
	devoe => ww_devoe,
	o => \R[0]~output_o\);

-- Location: IOIBUF_X34_Y12_N1
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G9
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

-- Location: IOIBUF_X34_Y2_N15
\rst~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: IOIBUF_X16_Y0_N8
\ecuacion[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ecuacion(1),
	o => \ecuacion[1]~input_o\);

-- Location: LCCOMB_X18_Y12_N4
\inst|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~0_combout\ = \inst|PC\(0) $ (VCC)
-- \inst|Add0~1\ = CARRY(\inst|PC\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC\(0),
	datad => VCC,
	combout => \inst|Add0~0_combout\,
	cout => \inst|Add0~1\);

-- Location: LCCOMB_X17_Y12_N14
\inst|Add0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~9_combout\ = (\inst|PC[8]~1_combout\ & \inst|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|PC[8]~1_combout\,
	datad => \inst|Add0~0_combout\,
	combout => \inst|Add0~9_combout\);

-- Location: FF_X17_Y12_N15
\inst|PC[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Add0~9_combout\,
	clrn => \rst~input_o\,
	ena => \inst|PC[13]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC\(0));

-- Location: LCCOMB_X18_Y12_N6
\inst|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~2_combout\ = (\inst|PC\(1) & (!\inst|Add0~1\)) # (!\inst|PC\(1) & ((\inst|Add0~1\) # (GND)))
-- \inst|Add0~3\ = CARRY((!\inst|Add0~1\) # (!\inst|PC\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|PC\(1),
	datad => VCC,
	cin => \inst|Add0~1\,
	combout => \inst|Add0~2_combout\,
	cout => \inst|Add0~3\);

-- Location: LCCOMB_X19_Y12_N30
\inst|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~10_combout\ = (\inst|PC[8]~1_combout\ & ((\inst|Add0~2_combout\))) # (!\inst|PC[8]~1_combout\ & (\ecuacion[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ecuacion[1]~input_o\,
	datac => \inst|Add0~2_combout\,
	datad => \inst|PC[8]~1_combout\,
	combout => \inst|Add0~10_combout\);

-- Location: FF_X19_Y12_N31
\inst|PC[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Add0~10_combout\,
	clrn => \rst~input_o\,
	ena => \inst|PC[13]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC\(1));

-- Location: LCCOMB_X18_Y12_N8
\inst|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~4_combout\ = (\inst|PC\(2) & (\inst|Add0~3\ $ (GND))) # (!\inst|PC\(2) & (!\inst|Add0~3\ & VCC))
-- \inst|Add0~5\ = CARRY((\inst|PC\(2) & !\inst|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|PC\(2),
	datad => VCC,
	cin => \inst|Add0~3\,
	combout => \inst|Add0~4_combout\,
	cout => \inst|Add0~5\);

-- Location: LCCOMB_X19_Y12_N0
\inst|Add0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~11_combout\ = (\inst|PC[8]~1_combout\ & ((\inst|Add0~4_combout\))) # (!\inst|PC[8]~1_combout\ & (!\ecuacion[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC[8]~1_combout\,
	datac => \ecuacion[1]~input_o\,
	datad => \inst|Add0~4_combout\,
	combout => \inst|Add0~11_combout\);

-- Location: FF_X19_Y12_N1
\inst|PC[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Add0~11_combout\,
	clrn => \rst~input_o\,
	ena => \inst|PC[13]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC\(2));

-- Location: LCCOMB_X18_Y12_N10
\inst|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~6_combout\ = (\inst|PC\(3) & (!\inst|Add0~5\)) # (!\inst|PC\(3) & ((\inst|Add0~5\) # (GND)))
-- \inst|Add0~7\ = CARRY((!\inst|Add0~5\) # (!\inst|PC\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|PC\(3),
	datad => VCC,
	cin => \inst|Add0~5\,
	combout => \inst|Add0~6_combout\,
	cout => \inst|Add0~7\);

-- Location: LCCOMB_X19_Y12_N16
\inst|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~8_combout\ = (\inst|Add0~6_combout\) # (!\inst|PC[8]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC[8]~1_combout\,
	datad => \inst|Add0~6_combout\,
	combout => \inst|Add0~8_combout\);

-- Location: FF_X19_Y12_N17
\inst|PC[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Add0~8_combout\,
	clrn => \rst~input_o\,
	ena => \inst|PC[13]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC\(3));

-- Location: LCCOMB_X18_Y12_N12
\inst|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~12_combout\ = (\inst|PC\(4) & (\inst|Add0~7\ $ (GND))) # (!\inst|PC\(4) & (!\inst|Add0~7\ & VCC))
-- \inst|Add0~13\ = CARRY((\inst|PC\(4) & !\inst|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC\(4),
	datad => VCC,
	cin => \inst|Add0~7\,
	combout => \inst|Add0~12_combout\,
	cout => \inst|Add0~13\);

-- Location: LCCOMB_X19_Y12_N26
\inst|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~14_combout\ = (\inst|PC[8]~1_combout\ & ((\inst|Add0~12_combout\))) # (!\inst|PC[8]~1_combout\ & (\ecuacion[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC[8]~1_combout\,
	datac => \ecuacion[1]~input_o\,
	datad => \inst|Add0~12_combout\,
	combout => \inst|Add0~14_combout\);

-- Location: FF_X19_Y12_N27
\inst|PC[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Add0~14_combout\,
	clrn => \rst~input_o\,
	ena => \inst|PC[13]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC\(4));

-- Location: LCCOMB_X18_Y12_N14
\inst|Add0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~15_combout\ = (\inst|PC\(5) & (!\inst|Add0~13\)) # (!\inst|PC\(5) & ((\inst|Add0~13\) # (GND)))
-- \inst|Add0~16\ = CARRY((!\inst|Add0~13\) # (!\inst|PC\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|PC\(5),
	datad => VCC,
	cin => \inst|Add0~13\,
	combout => \inst|Add0~15_combout\,
	cout => \inst|Add0~16\);

-- Location: LCCOMB_X19_Y12_N28
\inst|Add0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~17_combout\ = (\inst|PC[8]~1_combout\ & \inst|Add0~15_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC[8]~1_combout\,
	datad => \inst|Add0~15_combout\,
	combout => \inst|Add0~17_combout\);

-- Location: FF_X19_Y12_N29
\inst|PC[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Add0~17_combout\,
	clrn => \rst~input_o\,
	ena => \inst|PC[13]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC\(5));

-- Location: LCCOMB_X17_Y12_N6
\inst|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan0~2_combout\ = ((!\inst|PC\(2) & ((!\inst|PC\(1)) # (!\inst|PC\(0))))) # (!\inst|PC\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC\(3),
	datab => \inst|PC\(0),
	datac => \inst|PC\(2),
	datad => \inst|PC\(1),
	combout => \inst|LessThan0~2_combout\);

-- Location: LCCOMB_X17_Y12_N28
\inst|PC[13]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|PC[13]~4_combout\ = (\ecuacion[1]~input_o\ & (((\inst|PC\(3))))) # (!\ecuacion[1]~input_o\ & (\inst|LessThan0~2_combout\ & (!\inst|PC\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan0~2_combout\,
	datab => \inst|PC\(4),
	datac => \ecuacion[1]~input_o\,
	datad => \inst|PC\(3),
	combout => \inst|PC[13]~4_combout\);

-- Location: LCCOMB_X18_Y12_N2
\inst|LessThan2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan2~0_combout\ = (!\inst|PC\(4) & (((!\inst|PC\(0)) # (!\inst|PC\(2))) # (!\inst|PC\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC\(4),
	datab => \inst|PC\(1),
	datac => \inst|PC\(2),
	datad => \inst|PC\(0),
	combout => \inst|LessThan2~0_combout\);

-- Location: LCCOMB_X17_Y12_N4
\inst|PC[13]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|PC[13]~5_combout\ = (\inst|PC\(5) & (!\inst|PC[13]~4_combout\ & (\ecuacion[1]~input_o\ & \inst|LessThan2~0_combout\))) # (!\inst|PC\(5) & (\inst|PC[13]~4_combout\ & (!\ecuacion[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC\(5),
	datab => \inst|PC[13]~4_combout\,
	datac => \ecuacion[1]~input_o\,
	datad => \inst|LessThan2~0_combout\,
	combout => \inst|PC[13]~5_combout\);

-- Location: IOIBUF_X16_Y0_N22
\ecuacion[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ecuacion(0),
	o => \ecuacion[0]~input_o\);

-- Location: LCCOMB_X17_Y12_N8
\inst|LessThan2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan2~1_combout\ = ((!\inst|PC\(3) & \inst|LessThan2~0_combout\)) # (!\inst|PC\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC\(3),
	datac => \inst|PC\(5),
	datad => \inst|LessThan2~0_combout\,
	combout => \inst|LessThan2~1_combout\);

-- Location: LCCOMB_X21_Y10_N20
\inst|Mux38~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux38~2_combout\ = (!\inst|PC\(1) & !\inst|PC\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|PC\(1),
	datad => \inst|PC\(2),
	combout => \inst|Mux38~2_combout\);

-- Location: LCCOMB_X21_Y10_N22
\inst|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan1~0_combout\ = (((!\inst|PC\(0) & \inst|Mux38~2_combout\)) # (!\inst|PC\(3))) # (!\inst|PC\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC\(4),
	datab => \inst|PC\(3),
	datac => \inst|PC\(0),
	datad => \inst|Mux38~2_combout\,
	combout => \inst|LessThan1~0_combout\);

-- Location: LCCOMB_X16_Y10_N14
\inst|PC[13]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|PC[13]~3_combout\ = (\ecuacion[0]~input_o\ & (((!\ecuacion[1]~input_o\ & \inst|LessThan1~0_combout\)))) # (!\ecuacion[0]~input_o\ & (\ecuacion[1]~input_o\ & ((\inst|LessThan2~1_combout\) # (\inst|LessThan1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ecuacion[0]~input_o\,
	datab => \inst|LessThan2~1_combout\,
	datac => \ecuacion[1]~input_o\,
	datad => \inst|LessThan1~0_combout\,
	combout => \inst|PC[13]~3_combout\);

-- Location: LCCOMB_X16_Y10_N0
\inst|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan0~3_combout\ = (\inst|LessThan0~2_combout\ & (!\inst|PC\(5) & (!\inst|PC\(4) & \inst|LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan0~2_combout\,
	datab => \inst|PC\(5),
	datac => \inst|PC\(4),
	datad => \inst|LessThan0~1_combout\,
	combout => \inst|LessThan0~3_combout\);

-- Location: LCCOMB_X16_Y10_N16
\inst|Selector0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector0~1_combout\ = (\inst|PC\(13)) # ((\ecuacion[0]~input_o\ & ((\inst|LessThan0~3_combout\) # (!\inst|LessThan1~1_combout\))) # (!\ecuacion[0]~input_o\ & ((!\inst|LessThan0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan1~1_combout\,
	datab => \ecuacion[0]~input_o\,
	datac => \inst|PC\(13),
	datad => \inst|LessThan0~3_combout\,
	combout => \inst|Selector0~1_combout\);

-- Location: LCCOMB_X16_Y10_N6
\inst|Selector0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector0~2_combout\ = (!\inst|pr_state.state0~q\ & ((\ecuacion[1]~input_o\ & (\inst|Selector0~0_combout\)) # (!\ecuacion[1]~input_o\ & ((\inst|Selector0~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector0~0_combout\,
	datab => \ecuacion[1]~input_o\,
	datac => \inst|pr_state.state0~q\,
	datad => \inst|Selector0~1_combout\,
	combout => \inst|Selector0~2_combout\);

-- Location: LCCOMB_X17_Y8_N2
\inst|Selector0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector0~3_combout\ = (!\inst|pr_state.state2~q\ & !\inst|Selector0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|pr_state.state2~q\,
	datad => \inst|Selector0~2_combout\,
	combout => \inst|Selector0~3_combout\);

-- Location: FF_X17_Y8_N3
\inst|pr_state.state0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Selector0~3_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|pr_state.state0~q\);

-- Location: LCCOMB_X17_Y12_N0
\inst|PC[13]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|PC[13]~2_combout\ = (\inst|PC\(13)) # ((\inst|pr_state.state0~q\) # (!\inst|LessThan0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|PC\(13),
	datac => \inst|LessThan0~1_combout\,
	datad => \inst|pr_state.state0~q\,
	combout => \inst|PC[13]~2_combout\);

-- Location: LCCOMB_X17_Y12_N2
\inst|PC[13]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|PC[13]~6_combout\ = (!\inst|PC[13]~2_combout\ & ((\inst|PC\(5) & (\inst|PC[13]~5_combout\ & \inst|PC[13]~3_combout\)) # (!\inst|PC\(5) & ((\inst|PC[13]~5_combout\) # (\inst|PC[13]~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC\(5),
	datab => \inst|PC[13]~5_combout\,
	datac => \inst|PC[13]~3_combout\,
	datad => \inst|PC[13]~2_combout\,
	combout => \inst|PC[13]~6_combout\);

-- Location: LCCOMB_X18_Y12_N16
\inst|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~18_combout\ = (\inst|PC\(6) & (\inst|Add0~16\ $ (GND))) # (!\inst|PC\(6) & (!\inst|Add0~16\ & VCC))
-- \inst|Add0~19\ = CARRY((\inst|PC\(6) & !\inst|Add0~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC\(6),
	datad => VCC,
	cin => \inst|Add0~16\,
	combout => \inst|Add0~18_combout\,
	cout => \inst|Add0~19\);

-- Location: LCCOMB_X19_Y12_N2
\inst|PC[6]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|PC[6]~13_combout\ = (\inst|PC\(6)) # ((\inst|Add0~18_combout\ & (\inst|PC[13]~6_combout\ & \inst|PC[8]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~18_combout\,
	datab => \inst|PC[13]~6_combout\,
	datac => \inst|PC\(6),
	datad => \inst|PC[8]~1_combout\,
	combout => \inst|PC[6]~13_combout\);

-- Location: FF_X19_Y12_N3
\inst|PC[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|PC[6]~13_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC\(6));

-- Location: LCCOMB_X18_Y12_N18
\inst|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~20_combout\ = (\inst|PC\(7) & (!\inst|Add0~19\)) # (!\inst|PC\(7) & ((\inst|Add0~19\) # (GND)))
-- \inst|Add0~21\ = CARRY((!\inst|Add0~19\) # (!\inst|PC\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|PC\(7),
	datad => VCC,
	cin => \inst|Add0~19\,
	combout => \inst|Add0~20_combout\,
	cout => \inst|Add0~21\);

-- Location: LCCOMB_X19_Y12_N24
\inst|PC[7]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|PC[7]~12_combout\ = (\inst|PC\(7)) # ((\inst|PC[8]~1_combout\ & (\inst|PC[13]~6_combout\ & \inst|Add0~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC[8]~1_combout\,
	datab => \inst|PC[13]~6_combout\,
	datac => \inst|PC\(7),
	datad => \inst|Add0~20_combout\,
	combout => \inst|PC[7]~12_combout\);

-- Location: FF_X19_Y12_N25
\inst|PC[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|PC[7]~12_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC\(7));

-- Location: LCCOMB_X18_Y12_N20
\inst|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~22_combout\ = (\inst|PC\(8) & (\inst|Add0~21\ $ (GND))) # (!\inst|PC\(8) & (!\inst|Add0~21\ & VCC))
-- \inst|Add0~23\ = CARRY((\inst|PC\(8) & !\inst|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|PC\(8),
	datad => VCC,
	cin => \inst|Add0~21\,
	combout => \inst|Add0~22_combout\,
	cout => \inst|Add0~23\);

-- Location: LCCOMB_X19_Y12_N14
\inst|PC[8]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|PC[8]~11_combout\ = (\inst|PC\(8)) # ((\inst|PC[8]~1_combout\ & (\inst|PC[13]~6_combout\ & \inst|Add0~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC[8]~1_combout\,
	datab => \inst|PC[13]~6_combout\,
	datac => \inst|PC\(8),
	datad => \inst|Add0~22_combout\,
	combout => \inst|PC[8]~11_combout\);

-- Location: FF_X19_Y12_N15
\inst|PC[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|PC[8]~11_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC\(8));

-- Location: LCCOMB_X18_Y12_N22
\inst|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~24_combout\ = (\inst|PC\(9) & (!\inst|Add0~23\)) # (!\inst|PC\(9) & ((\inst|Add0~23\) # (GND)))
-- \inst|Add0~25\ = CARRY((!\inst|Add0~23\) # (!\inst|PC\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|PC\(9),
	datad => VCC,
	cin => \inst|Add0~23\,
	combout => \inst|Add0~24_combout\,
	cout => \inst|Add0~25\);

-- Location: LCCOMB_X19_Y12_N18
\inst|PC[9]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|PC[9]~10_combout\ = (\inst|PC\(9)) # ((\inst|PC[8]~1_combout\ & (\inst|PC[13]~6_combout\ & \inst|Add0~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC[8]~1_combout\,
	datab => \inst|PC[13]~6_combout\,
	datac => \inst|PC\(9),
	datad => \inst|Add0~24_combout\,
	combout => \inst|PC[9]~10_combout\);

-- Location: FF_X19_Y12_N19
\inst|PC[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|PC[9]~10_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC\(9));

-- Location: LCCOMB_X18_Y12_N24
\inst|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~26_combout\ = (\inst|PC\(10) & (\inst|Add0~25\ $ (GND))) # (!\inst|PC\(10) & (!\inst|Add0~25\ & VCC))
-- \inst|Add0~27\ = CARRY((\inst|PC\(10) & !\inst|Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC\(10),
	datad => VCC,
	cin => \inst|Add0~25\,
	combout => \inst|Add0~26_combout\,
	cout => \inst|Add0~27\);

-- Location: LCCOMB_X19_Y12_N20
\inst|PC[10]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|PC[10]~9_combout\ = (\inst|PC\(10)) # ((\inst|PC[8]~1_combout\ & (\inst|PC[13]~6_combout\ & \inst|Add0~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC[8]~1_combout\,
	datab => \inst|PC[13]~6_combout\,
	datac => \inst|PC\(10),
	datad => \inst|Add0~26_combout\,
	combout => \inst|PC[10]~9_combout\);

-- Location: FF_X19_Y12_N21
\inst|PC[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|PC[10]~9_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC\(10));

-- Location: LCCOMB_X18_Y12_N26
\inst|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~28_combout\ = (\inst|PC\(11) & (!\inst|Add0~27\)) # (!\inst|PC\(11) & ((\inst|Add0~27\) # (GND)))
-- \inst|Add0~29\ = CARRY((!\inst|Add0~27\) # (!\inst|PC\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|PC\(11),
	datad => VCC,
	cin => \inst|Add0~27\,
	combout => \inst|Add0~28_combout\,
	cout => \inst|Add0~29\);

-- Location: LCCOMB_X19_Y12_N10
\inst|PC[11]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|PC[11]~8_combout\ = (\inst|PC\(11)) # ((\inst|Add0~28_combout\ & (\inst|PC[13]~6_combout\ & \inst|PC[8]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~28_combout\,
	datab => \inst|PC[13]~6_combout\,
	datac => \inst|PC\(11),
	datad => \inst|PC[8]~1_combout\,
	combout => \inst|PC[11]~8_combout\);

-- Location: FF_X19_Y12_N11
\inst|PC[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|PC[11]~8_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC\(11));

-- Location: LCCOMB_X19_Y12_N12
\inst|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan0~0_combout\ = (!\inst|PC\(11) & (!\inst|PC\(10) & (!\inst|PC\(12) & !\inst|PC\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC\(11),
	datab => \inst|PC\(10),
	datac => \inst|PC\(12),
	datad => \inst|PC\(9),
	combout => \inst|LessThan0~0_combout\);

-- Location: LCCOMB_X19_Y12_N4
\inst|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan0~1_combout\ = (\inst|LessThan0~0_combout\ & (!\inst|PC\(7) & (!\inst|PC\(8) & !\inst|PC\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan0~0_combout\,
	datab => \inst|PC\(7),
	datac => \inst|PC\(8),
	datad => \inst|PC\(6),
	combout => \inst|LessThan0~1_combout\);

-- Location: LCCOMB_X16_Y10_N26
\inst|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan1~1_combout\ = (\inst|LessThan0~1_combout\ & (!\inst|PC\(5) & \inst|LessThan1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|LessThan0~1_combout\,
	datac => \inst|PC\(5),
	datad => \inst|LessThan1~0_combout\,
	combout => \inst|LessThan1~1_combout\);

-- Location: LCCOMB_X16_Y10_N2
\inst|PC[8]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|PC[8]~0_combout\ = (!\ecuacion[1]~input_o\ & ((!\inst|LessThan0~3_combout\) # (!\ecuacion[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ecuacion[0]~input_o\,
	datac => \ecuacion[1]~input_o\,
	datad => \inst|LessThan0~3_combout\,
	combout => \inst|PC[8]~0_combout\);

-- Location: LCCOMB_X16_Y10_N20
\inst|PC[8]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|PC[8]~1_combout\ = (\inst|PC\(13)) # ((\inst|PC[8]~0_combout\) # ((!\inst|LessThan1~1_combout\ & \ecuacion[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan1~1_combout\,
	datab => \inst|PC\(13),
	datac => \ecuacion[1]~input_o\,
	datad => \inst|PC[8]~0_combout\,
	combout => \inst|PC[8]~1_combout\);

-- Location: LCCOMB_X18_Y12_N28
\inst|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~30_combout\ = (\inst|PC\(12) & (\inst|Add0~29\ $ (GND))) # (!\inst|PC\(12) & (!\inst|Add0~29\ & VCC))
-- \inst|Add0~31\ = CARRY((\inst|PC\(12) & !\inst|Add0~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|PC\(12),
	datad => VCC,
	cin => \inst|Add0~29\,
	combout => \inst|Add0~30_combout\,
	cout => \inst|Add0~31\);

-- Location: LCCOMB_X19_Y12_N8
\inst|PC[12]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|PC[12]~7_combout\ = (\inst|PC\(12)) # ((\inst|PC[8]~1_combout\ & (\inst|PC[13]~6_combout\ & \inst|Add0~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC[8]~1_combout\,
	datab => \inst|PC[13]~6_combout\,
	datac => \inst|PC\(12),
	datad => \inst|Add0~30_combout\,
	combout => \inst|PC[12]~7_combout\);

-- Location: FF_X19_Y12_N9
\inst|PC[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|PC[12]~7_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC\(12));

-- Location: LCCOMB_X18_Y12_N30
\inst|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~32_combout\ = \inst|Add0~31\ $ (\inst|PC\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|PC\(13),
	cin => \inst|Add0~31\,
	combout => \inst|Add0~32_combout\);

-- Location: LCCOMB_X17_Y12_N18
\inst|PC[13]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|PC[13]~14_combout\ = (\inst|PC\(13)) # ((\inst|Add0~32_combout\ & (\inst|PC[8]~1_combout\ & \inst|PC[13]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~32_combout\,
	datab => \inst|PC[8]~1_combout\,
	datac => \inst|PC\(13),
	datad => \inst|PC[13]~6_combout\,
	combout => \inst|PC[13]~14_combout\);

-- Location: FF_X17_Y12_N19
\inst|PC[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|PC[13]~14_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC\(13));

-- Location: LCCOMB_X16_Y10_N12
\inst|pr_state~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|pr_state~10_combout\ = (!\inst|PC\(13) & \inst|LessThan0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|PC\(13),
	datad => \inst|LessThan0~1_combout\,
	combout => \inst|pr_state~10_combout\);

-- Location: LCCOMB_X16_Y10_N22
\inst|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector0~0_combout\ = (!\ecuacion[0]~input_o\ & (((\inst|LessThan1~1_combout\) # (!\inst|LessThan2~1_combout\)) # (!\inst|pr_state~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pr_state~10_combout\,
	datab => \inst|LessThan2~1_combout\,
	datac => \inst|LessThan1~1_combout\,
	datad => \ecuacion[0]~input_o\,
	combout => \inst|Selector0~0_combout\);

-- Location: LCCOMB_X17_Y12_N30
\inst|pr_state~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|pr_state~11_combout\ = (\ecuacion[1]~input_o\ & !\inst|Selector0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ecuacion[1]~input_o\,
	datad => \inst|Selector0~0_combout\,
	combout => \inst|pr_state~11_combout\);

-- Location: LCCOMB_X16_Y10_N10
\inst|pr_state~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|pr_state~12_combout\ = (\ecuacion[0]~input_o\ & (\inst|LessThan1~1_combout\ & ((!\inst|LessThan0~3_combout\)))) # (!\ecuacion[0]~input_o\ & (((!\ecuacion[1]~input_o\ & \inst|LessThan0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan1~1_combout\,
	datab => \ecuacion[0]~input_o\,
	datac => \ecuacion[1]~input_o\,
	datad => \inst|LessThan0~3_combout\,
	combout => \inst|pr_state~12_combout\);

-- Location: LCCOMB_X17_Y12_N22
\inst|pr_state~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|pr_state~13_combout\ = (!\inst|pr_state.state0~q\ & ((\inst|pr_state~11_combout\) # ((\inst|pr_state~12_combout\ & !\inst|PC\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pr_state~11_combout\,
	datab => \inst|pr_state.state0~q\,
	datac => \inst|pr_state~12_combout\,
	datad => \inst|PC\(13),
	combout => \inst|pr_state~13_combout\);

-- Location: FF_X17_Y12_N23
\inst|pr_state.state1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|pr_state~13_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|pr_state.state1~q\);

-- Location: FF_X17_Y12_N31
\inst|pr_state.state2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|pr_state.state1~q\,
	clrn => \rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|pr_state.state2~q\);

-- Location: LCCOMB_X21_Y11_N24
\inst|Mux38~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux38~3_combout\ = (\inst|PC\(1) & (\inst|PC\(5) $ (\inst|PC\(2)))) # (!\inst|PC\(1) & (\inst|PC\(5) & \inst|PC\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC\(1),
	datab => \inst|PC\(5),
	datad => \inst|PC\(2),
	combout => \inst|Mux38~3_combout\);

-- Location: LCCOMB_X21_Y11_N10
\inst|Mux38~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux38~4_combout\ = \inst|PC\(2) $ (((!\inst|PC\(4) & !\inst|PC\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC\(4),
	datab => \inst|PC\(2),
	datad => \inst|PC\(1),
	combout => \inst|Mux38~4_combout\);

-- Location: LCCOMB_X21_Y11_N0
\inst|MAR[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|MAR[1]~5_combout\ = (\inst|PC\(3) & ((\inst|Mux38~4_combout\))) # (!\inst|PC\(3) & (\inst|Mux38~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC\(3),
	datab => \inst|Mux38~3_combout\,
	datad => \inst|Mux38~4_combout\,
	combout => \inst|MAR[1]~5_combout\);

-- Location: LCCOMB_X21_Y11_N20
\inst|Mux38~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux38~5_combout\ = (\inst|PC\(4) & (!\inst|PC\(1) & (\inst|PC\(2) $ (\inst|PC\(3))))) # (!\inst|PC\(4) & (\inst|PC\(1) & (\inst|PC\(2) $ (\inst|PC\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC\(4),
	datab => \inst|PC\(2),
	datac => \inst|PC\(3),
	datad => \inst|PC\(1),
	combout => \inst|Mux38~5_combout\);

-- Location: LCCOMB_X21_Y11_N22
\inst|Mux38~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux38~7_combout\ = (\inst|PC\(5) & ((\inst|PC\(1)) # ((!\inst|PC\(2))))) # (!\inst|PC\(5) & (((\inst|Mux38~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC\(1),
	datab => \inst|PC\(2),
	datac => \inst|PC\(5),
	datad => \inst|Mux38~5_combout\,
	combout => \inst|Mux38~7_combout\);

-- Location: LCCOMB_X16_Y10_N24
\inst|MAR[11]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|MAR[11]~7_combout\ = (\rst~input_o\ & (!\inst|pr_state.state0~q\ & ((!\ecuacion[0]~input_o\) # (!\ecuacion[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \inst|pr_state.state0~q\,
	datac => \ecuacion[1]~input_o\,
	datad => \ecuacion[0]~input_o\,
	combout => \inst|MAR[11]~7_combout\);

-- Location: FF_X21_Y11_N1
\inst|MAR[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|MAR[1]~5_combout\,
	asdata => \inst|Mux38~7_combout\,
	sload => \inst|ALT_INV_PC\(0),
	ena => \inst|MAR[11]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MAR\(1));

-- Location: LCCOMB_X21_Y11_N18
\inst|Mux39~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux39~0_combout\ = \inst|PC\(2) $ (((\inst|PC\(1)) # (\inst|PC\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC\(1),
	datab => \inst|PC\(5),
	datad => \inst|PC\(2),
	combout => \inst|Mux39~0_combout\);

-- Location: LCCOMB_X21_Y11_N12
\inst|Mux38~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux38~6_combout\ = (!\inst|PC\(4) & (\inst|PC\(2) & \inst|PC\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC\(4),
	datab => \inst|PC\(2),
	datad => \inst|PC\(1),
	combout => \inst|Mux38~6_combout\);

-- Location: LCCOMB_X21_Y11_N14
\inst|MAR[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|MAR[0]~6_combout\ = (\inst|PC\(3) & ((\inst|Mux38~6_combout\))) # (!\inst|PC\(3) & (\inst|Mux39~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC\(3),
	datab => \inst|Mux39~0_combout\,
	datad => \inst|Mux38~6_combout\,
	combout => \inst|MAR[0]~6_combout\);

-- Location: LCCOMB_X21_Y10_N24
\inst|Mux39~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux39~1_combout\ = (\inst|PC\(1) & (((!\inst|PC\(3) & \inst|PC\(2))) # (!\inst|PC\(4)))) # (!\inst|PC\(1) & (\inst|PC\(3) $ (((!\inst|PC\(4) & \inst|PC\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100101011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC\(4),
	datab => \inst|PC\(3),
	datac => \inst|PC\(1),
	datad => \inst|PC\(2),
	combout => \inst|Mux39~1_combout\);

-- Location: LCCOMB_X22_Y10_N0
\inst|Mux39~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux39~2_combout\ = (\inst|PC\(5)) # (\inst|Mux39~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|PC\(5),
	datad => \inst|Mux39~1_combout\,
	combout => \inst|Mux39~2_combout\);

-- Location: FF_X21_Y11_N15
\inst|MAR[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|MAR[0]~6_combout\,
	asdata => \inst|Mux39~2_combout\,
	sload => \inst|ALT_INV_PC\(0),
	ena => \inst|MAR[11]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MAR\(0));

-- Location: LCCOMB_X21_Y10_N0
\inst|Mux36~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux36~0_combout\ = (\inst|PC\(5) & ((\inst|PC\(3) $ (!\inst|PC\(2))))) # (!\inst|PC\(5) & (\inst|PC\(2) & ((\inst|PC\(4)) # (\inst|PC\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC\(4),
	datab => \inst|PC\(5),
	datac => \inst|PC\(3),
	datad => \inst|PC\(2),
	combout => \inst|Mux36~0_combout\);

-- Location: LCCOMB_X21_Y11_N6
\inst|Mux36~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux36~1_combout\ = (\inst|PC\(4) & ((\inst|PC\(3) & ((\inst|PC\(2)))) # (!\inst|PC\(3) & (!\inst|PC\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC\(4),
	datab => \inst|PC\(5),
	datac => \inst|PC\(3),
	datad => \inst|PC\(2),
	combout => \inst|Mux36~1_combout\);

-- Location: LCCOMB_X21_Y11_N8
\inst|Mux36~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux36~2_combout\ = (\inst|Mux36~0_combout\ & (\inst|PC\(0) & (\inst|PC\(1) $ (\inst|Mux36~1_combout\)))) # (!\inst|Mux36~0_combout\ & (\inst|PC\(1) & (!\inst|PC\(0) & \inst|Mux36~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC\(1),
	datab => \inst|Mux36~0_combout\,
	datac => \inst|PC\(0),
	datad => \inst|Mux36~1_combout\,
	combout => \inst|Mux36~2_combout\);

-- Location: FF_X21_Y11_N9
\inst|MAR[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Mux36~2_combout\,
	ena => \inst|MAR[11]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MAR\(3));

-- Location: LCCOMB_X21_Y11_N26
\inst|Mux50~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux50~0_combout\ = (\inst|MAR\(1) & (!\inst|MAR\(0) & \inst|MAR\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|MAR\(1),
	datac => \inst|MAR\(0),
	datad => \inst|MAR\(3),
	combout => \inst|Mux50~0_combout\);

-- Location: LCCOMB_X21_Y10_N10
\inst|Mux31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux31~0_combout\ = (\inst|PC\(5) & (((\inst|PC\(1)) # (!\inst|PC\(2))))) # (!\inst|PC\(5) & ((\inst|PC\(2)) # ((\inst|PC\(4) & \inst|PC\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC\(4),
	datab => \inst|PC\(5),
	datac => \inst|PC\(1),
	datad => \inst|PC\(2),
	combout => \inst|Mux31~0_combout\);

-- Location: LCCOMB_X21_Y10_N28
\inst|Mux31~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux31~1_combout\ = (\inst|PC\(2) & ((\inst|PC\(5) & ((!\inst|PC\(1)))) # (!\inst|PC\(5) & (\inst|PC\(4) & \inst|PC\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC\(4),
	datab => \inst|PC\(5),
	datac => \inst|PC\(1),
	datad => \inst|PC\(2),
	combout => \inst|Mux31~1_combout\);

-- Location: LCCOMB_X21_Y10_N16
\inst|Mux31~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux31~2_combout\ = (\inst|PC\(3) & ((\inst|Mux31~0_combout\) # ((\inst|PC\(0))))) # (!\inst|PC\(3) & (((\inst|Mux31~0_combout\ & \inst|PC\(0))) # (!\inst|Mux31~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux31~0_combout\,
	datab => \inst|PC\(3),
	datac => \inst|PC\(0),
	datad => \inst|Mux31~1_combout\,
	combout => \inst|Mux31~2_combout\);

-- Location: FF_X21_Y10_N17
\inst|MAR[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Mux31~2_combout\,
	ena => \inst|MAR[11]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MAR\(8));

-- Location: LCCOMB_X17_Y10_N14
\inst|Mux30~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux30~1_combout\ = (!\inst|PC\(2) & ((!\inst|PC\(1)) # (!\inst|PC\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC\(4),
	datac => \inst|PC\(1),
	datad => \inst|PC\(2),
	combout => \inst|Mux30~1_combout\);

-- Location: LCCOMB_X17_Y10_N20
\inst|Mux30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux30~0_combout\ = (\inst|PC\(1) & (\inst|PC\(2) & ((\inst|PC\(4)) # (\inst|PC\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC\(4),
	datab => \inst|PC\(5),
	datac => \inst|PC\(1),
	datad => \inst|PC\(2),
	combout => \inst|Mux30~0_combout\);

-- Location: LCCOMB_X17_Y10_N24
\inst|MAR[9]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|MAR[9]~1_combout\ = (\inst|PC\(3) & (\inst|Mux30~1_combout\)) # (!\inst|PC\(3) & ((\inst|Mux30~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC\(3),
	datab => \inst|Mux30~1_combout\,
	datad => \inst|Mux30~0_combout\,
	combout => \inst|MAR[9]~1_combout\);

-- Location: LCCOMB_X17_Y10_N28
\inst|Mux30~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux30~2_combout\ = (\inst|PC\(4) & (!\inst|PC\(3) & (\inst|PC\(1) & \inst|PC\(2)))) # (!\inst|PC\(4) & (\inst|PC\(3) & (!\inst|PC\(1) & !\inst|PC\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC\(4),
	datab => \inst|PC\(3),
	datac => \inst|PC\(1),
	datad => \inst|PC\(2),
	combout => \inst|Mux30~2_combout\);

-- Location: LCCOMB_X17_Y10_N22
\inst|Mux30~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux30~3_combout\ = (\inst|PC\(5) & (\inst|PC\(2))) # (!\inst|PC\(5) & ((\inst|Mux30~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC\(2),
	datab => \inst|Mux30~2_combout\,
	datac => \inst|PC\(5),
	combout => \inst|Mux30~3_combout\);

-- Location: FF_X17_Y10_N25
\inst|MAR[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|MAR[9]~1_combout\,
	asdata => \inst|Mux30~3_combout\,
	sload => \inst|ALT_INV_PC\(0),
	ena => \inst|MAR[11]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MAR\(9));

-- Location: LCCOMB_X17_Y10_N4
\inst|Mux28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux28~0_combout\ = (\inst|PC\(4) & (!\inst|PC\(5) & (!\inst|PC\(3) & \inst|PC\(2)))) # (!\inst|PC\(4) & (((\inst|PC\(3) & !\inst|PC\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC\(4),
	datab => \inst|PC\(5),
	datac => \inst|PC\(3),
	datad => \inst|PC\(2),
	combout => \inst|Mux28~0_combout\);

-- Location: LCCOMB_X17_Y10_N2
\inst|Mux28~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux28~1_combout\ = (\inst|PC\(0) & (((\inst|Mux28~0_combout\)))) # (!\inst|PC\(0) & (\inst|PC\(2) & ((\inst|PC\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC\(2),
	datab => \inst|PC\(0),
	datac => \inst|Mux28~0_combout\,
	datad => \inst|PC\(5),
	combout => \inst|Mux28~1_combout\);

-- Location: LCCOMB_X17_Y10_N10
\inst|Mux28~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux28~2_combout\ = (\inst|PC\(1) $ (((!\inst|PC\(3)) # (!\inst|PC\(0))))) # (!\inst|Mux28~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC\(1),
	datab => \inst|PC\(0),
	datac => \inst|PC\(3),
	datad => \inst|Mux28~1_combout\,
	combout => \inst|Mux28~2_combout\);

-- Location: FF_X17_Y10_N11
\inst|MAR[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Mux28~2_combout\,
	ena => \inst|MAR[11]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MAR\(11));

-- Location: LCCOMB_X21_Y10_N26
\inst|Mux29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux29~0_combout\ = (\inst|PC\(4) & ((\inst|PC\(1) & ((!\inst|PC\(2)))) # (!\inst|PC\(1) & (!\inst|PC\(3) & \inst|PC\(2))))) # (!\inst|PC\(4) & ((\inst|PC\(3) & (!\inst|PC\(1) & \inst|PC\(2))) # (!\inst|PC\(3) & ((\inst|PC\(2)) # (!\inst|PC\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011110100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC\(4),
	datab => \inst|PC\(3),
	datac => \inst|PC\(1),
	datad => \inst|PC\(2),
	combout => \inst|Mux29~0_combout\);

-- Location: LCCOMB_X21_Y10_N12
\inst|Mux29~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux29~1_combout\ = (\inst|PC\(1)) # (!\inst|PC\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|PC\(1),
	datad => \inst|PC\(2),
	combout => \inst|Mux29~1_combout\);

-- Location: LCCOMB_X21_Y10_N4
\inst|MAR[10]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|MAR[10]~0_combout\ = (\inst|PC\(5) & ((\inst|Mux29~1_combout\))) # (!\inst|PC\(5) & (\inst|Mux29~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux29~0_combout\,
	datab => \inst|PC\(5),
	datad => \inst|Mux29~1_combout\,
	combout => \inst|MAR[10]~0_combout\);

-- Location: LCCOMB_X21_Y10_N2
\inst|Mux29~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux29~2_combout\ = (\inst|PC\(5) & (((\inst|PC\(1))))) # (!\inst|PC\(5) & ((\inst|PC\(4) & ((\inst|PC\(2)) # (!\inst|PC\(1)))) # (!\inst|PC\(4) & ((\inst|PC\(1)) # (!\inst|PC\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC\(4),
	datab => \inst|PC\(5),
	datac => \inst|PC\(1),
	datad => \inst|PC\(2),
	combout => \inst|Mux29~2_combout\);

-- Location: LCCOMB_X21_Y10_N8
\inst|Mux29~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux29~3_combout\ = (\inst|PC\(3)) # (\inst|Mux29~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|PC\(3),
	datad => \inst|Mux29~2_combout\,
	combout => \inst|Mux29~3_combout\);

-- Location: FF_X21_Y10_N5
\inst|MAR[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|MAR[10]~0_combout\,
	asdata => \inst|Mux29~3_combout\,
	sload => \inst|PC\(0),
	ena => \inst|MAR[11]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MAR\(10));

-- Location: LCCOMB_X14_Y10_N8
\inst|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~0_combout\ = (\inst|MAR\(8) & (!\inst|MAR\(9) & (\inst|MAR\(11) & \inst|MAR\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MAR\(8),
	datab => \inst|MAR\(9),
	datac => \inst|MAR\(11),
	datad => \inst|MAR\(10),
	combout => \inst|Equal0~0_combout\);

-- Location: LCCOMB_X17_Y12_N24
\inst|REG_D[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|REG_D[0]~0_combout\ = (\rst~input_o\ & (\inst|pr_state.state1~q\ & \inst|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datac => \inst|pr_state.state1~q\,
	datad => \inst|Equal0~0_combout\,
	combout => \inst|REG_D[0]~0_combout\);

-- Location: FF_X21_Y11_N27
\inst|REG_D[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Mux50~0_combout\,
	ena => \inst|REG_D[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|REG_D\(9));

-- Location: LCCOMB_X17_Y12_N12
\inst|reggy~194\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~194_combout\ = (\inst|Equal0~0_combout\ & ((\inst|REG_D\(9)))) # (!\inst|Equal0~0_combout\ & (\inst|flag~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|flag~q\,
	datab => \inst|REG_D\(9),
	datad => \inst|Equal0~0_combout\,
	combout => \inst|reggy~194_combout\);

-- Location: LCCOMB_X18_Y12_N0
\inst|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux4~0_combout\ = (\inst|PC\(2) & (\inst|PC\(0) & (\inst|PC\(4) $ (\inst|PC\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC\(4),
	datab => \inst|PC\(1),
	datac => \inst|PC\(2),
	datad => \inst|PC\(0),
	combout => \inst|Mux4~0_combout\);

-- Location: FF_X18_Y12_N1
\inst|MAR[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Mux4~0_combout\,
	sclr => \inst|ALT_INV_PC\(3),
	ena => \inst|MAR[11]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MAR\(6));

-- Location: LCCOMB_X14_Y8_N12
\inst|flag~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|flag~3_combout\ = (\rst~input_o\ & \inst|pr_state.state2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datad => \inst|pr_state.state2~q\,
	combout => \inst|flag~3_combout\);

-- Location: LCCOMB_X17_Y10_N26
\inst|Mux34~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux34~3_combout\ = (\inst|PC\(4) & (\inst|PC\(1) & \inst|PC\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC\(4),
	datac => \inst|PC\(1),
	datad => \inst|PC\(2),
	combout => \inst|Mux34~3_combout\);

-- Location: LCCOMB_X17_Y10_N0
\inst|Mux34~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux34~2_combout\ = (\inst|PC\(5) & (((!\inst|PC\(1) & !\inst|PC\(2))))) # (!\inst|PC\(5) & (\inst|PC\(2) $ (((\inst|PC\(4)) # (\inst|PC\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC\(4),
	datab => \inst|PC\(5),
	datac => \inst|PC\(1),
	datad => \inst|PC\(2),
	combout => \inst|Mux34~2_combout\);

-- Location: LCCOMB_X17_Y10_N6
\inst|MAR[5]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|MAR[5]~2_combout\ = (\inst|PC\(3) & (\inst|Mux34~3_combout\)) # (!\inst|PC\(3) & ((\inst|Mux34~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux34~3_combout\,
	datab => \inst|PC\(3),
	datad => \inst|Mux34~2_combout\,
	combout => \inst|MAR[5]~2_combout\);

-- Location: LCCOMB_X19_Y12_N22
\inst|Mux34~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux34~4_combout\ = (\inst|PC\(3) & (!\inst|PC\(1) & (!\inst|PC\(4) & !\inst|PC\(2)))) # (!\inst|PC\(3) & (\inst|PC\(2) & ((\inst|PC\(1)) # (\inst|PC\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC\(1),
	datab => \inst|PC\(3),
	datac => \inst|PC\(4),
	datad => \inst|PC\(2),
	combout => \inst|Mux34~4_combout\);

-- Location: LCCOMB_X19_Y12_N6
\inst|Mux34~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux34~5_combout\ = (\inst|PC\(5) & (\inst|PC\(1) $ (((\inst|PC\(2)))))) # (!\inst|PC\(5) & (((\inst|Mux34~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC\(1),
	datab => \inst|PC\(5),
	datac => \inst|Mux34~4_combout\,
	datad => \inst|PC\(2),
	combout => \inst|Mux34~5_combout\);

-- Location: FF_X17_Y10_N7
\inst|MAR[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|MAR[5]~2_combout\,
	asdata => \inst|Mux34~5_combout\,
	sload => \inst|ALT_INV_PC\(0),
	ena => \inst|MAR[11]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MAR\(5));

-- Location: LCCOMB_X17_Y10_N12
\inst|Mux35~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux35~0_combout\ = (\inst|PC\(5) & (((\inst|PC\(1) & !\inst|PC\(2))))) # (!\inst|PC\(5) & ((\inst|PC\(4) & (!\inst|PC\(1) & \inst|PC\(2))) # (!\inst|PC\(4) & (\inst|PC\(1) $ (!\inst|PC\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001011000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC\(4),
	datab => \inst|PC\(5),
	datac => \inst|PC\(1),
	datad => \inst|PC\(2),
	combout => \inst|Mux35~0_combout\);

-- Location: LCCOMB_X17_Y10_N18
\inst|Mux29~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux29~5_combout\ = (\inst|PC\(4) & ((\inst|PC\(2)) # (!\inst|PC\(1)))) # (!\inst|PC\(4) & ((\inst|PC\(1)) # (!\inst|PC\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC\(4),
	datac => \inst|PC\(1),
	datad => \inst|PC\(2),
	combout => \inst|Mux29~5_combout\);

-- Location: LCCOMB_X17_Y10_N16
\inst|MAR[4]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|MAR[4]~3_combout\ = (\inst|PC\(3) & ((!\inst|Mux29~5_combout\))) # (!\inst|PC\(3) & (\inst|Mux35~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux35~0_combout\,
	datab => \inst|PC\(3),
	datad => \inst|Mux29~5_combout\,
	combout => \inst|MAR[4]~3_combout\);

-- Location: LCCOMB_X17_Y10_N8
\inst|Mux35~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux35~1_combout\ = (\inst|PC\(5) & (((\inst|PC\(1) & \inst|PC\(2))))) # (!\inst|PC\(5) & ((\inst|PC\(4)) # ((\inst|PC\(1)) # (\inst|PC\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC\(4),
	datab => \inst|PC\(5),
	datac => \inst|PC\(1),
	datad => \inst|PC\(2),
	combout => \inst|Mux35~1_combout\);

-- Location: LCCOMB_X17_Y10_N30
\inst|Mux35~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux35~2_combout\ = (\inst|PC\(3) & (!\inst|Mux35~1_combout\)) # (!\inst|PC\(3) & ((\inst|PC\(5) & (!\inst|Mux35~1_combout\)) # (!\inst|PC\(5) & ((!\inst|Mux30~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux35~1_combout\,
	datab => \inst|Mux30~1_combout\,
	datac => \inst|PC\(3),
	datad => \inst|PC\(5),
	combout => \inst|Mux35~2_combout\);

-- Location: FF_X17_Y10_N17
\inst|MAR[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|MAR[4]~3_combout\,
	asdata => \inst|Mux35~2_combout\,
	sload => \inst|ALT_INV_PC\(0),
	ena => \inst|MAR[11]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MAR\(4));

-- Location: LCCOMB_X11_Y11_N10
\inst|reggy~198\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~198_combout\ = (\inst|MAR\(6) & (\inst|flag~3_combout\ & (\inst|MAR\(5) & \inst|MAR\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MAR\(6),
	datab => \inst|flag~3_combout\,
	datac => \inst|MAR\(5),
	datad => \inst|MAR\(4),
	combout => \inst|reggy~198_combout\);

-- Location: FF_X12_Y12_N11
\inst|reggy~93\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~194_combout\,
	sload => VCC,
	ena => \inst|reggy~198_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy~93_q\);

-- Location: LCCOMB_X11_Y11_N28
\inst|reggy~195\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~195_combout\ = (\inst|MAR\(6) & (\inst|flag~3_combout\ & (!\inst|MAR\(5) & \inst|MAR\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MAR\(6),
	datab => \inst|flag~3_combout\,
	datac => \inst|MAR\(5),
	datad => \inst|MAR\(4),
	combout => \inst|reggy~195_combout\);

-- Location: FF_X12_Y12_N29
\inst|reggy~73\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~194_combout\,
	sload => VCC,
	ena => \inst|reggy~195_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy~73_q\);

-- Location: LCCOMB_X11_Y11_N8
\inst|reggy~197\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~197_combout\ = (\inst|MAR\(6) & (\inst|flag~3_combout\ & (!\inst|MAR\(5) & !\inst|MAR\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MAR\(6),
	datab => \inst|flag~3_combout\,
	datac => \inst|MAR\(5),
	datad => \inst|MAR\(4),
	combout => \inst|reggy~197_combout\);

-- Location: FF_X12_Y11_N15
\inst|reggy~63\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~194_combout\,
	sload => VCC,
	ena => \inst|reggy~197_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy~63_q\);

-- Location: LCCOMB_X11_Y11_N30
\inst|reggy~196\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~196_combout\ = (\inst|MAR\(6) & (\inst|flag~3_combout\ & (\inst|MAR\(5) & !\inst|MAR\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MAR\(6),
	datab => \inst|flag~3_combout\,
	datac => \inst|MAR\(5),
	datad => \inst|MAR\(4),
	combout => \inst|reggy~196_combout\);

-- Location: FF_X12_Y11_N9
\inst|reggy~83\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~194_combout\,
	sload => VCC,
	ena => \inst|reggy~196_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy~83_q\);

-- Location: LCCOMB_X12_Y11_N8
\inst|reggy~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~94_combout\ = (\inst|MAR\(4) & (((\inst|MAR\(5))))) # (!\inst|MAR\(4) & ((\inst|MAR\(5) & ((\inst|reggy~83_q\))) # (!\inst|MAR\(5) & (\inst|reggy~63_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MAR\(4),
	datab => \inst|reggy~63_q\,
	datac => \inst|reggy~83_q\,
	datad => \inst|MAR\(5),
	combout => \inst|reggy~94_combout\);

-- Location: LCCOMB_X12_Y12_N28
\inst|reggy~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~95_combout\ = (\inst|MAR\(4) & ((\inst|reggy~94_combout\ & (\inst|reggy~93_q\)) # (!\inst|reggy~94_combout\ & ((\inst|reggy~73_q\))))) # (!\inst|MAR\(4) & (((\inst|reggy~94_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy~93_q\,
	datab => \inst|MAR\(4),
	datac => \inst|reggy~73_q\,
	datad => \inst|reggy~94_combout\,
	combout => \inst|reggy~95_combout\);

-- Location: LCCOMB_X11_Y11_N6
\inst|reggy~202\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~202_combout\ = (!\inst|MAR\(6) & (\inst|flag~3_combout\ & (\inst|MAR\(5) & \inst|MAR\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MAR\(6),
	datab => \inst|flag~3_combout\,
	datac => \inst|MAR\(5),
	datad => \inst|MAR\(4),
	combout => \inst|reggy~202_combout\);

-- Location: FF_X13_Y11_N15
\inst|reggy~53\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~194_combout\,
	sload => VCC,
	ena => \inst|reggy~202_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy~53_q\);

-- Location: LCCOMB_X11_Y11_N12
\inst|reggy~199\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~199_combout\ = (!\inst|MAR\(6) & (\inst|flag~3_combout\ & (\inst|MAR\(5) & !\inst|MAR\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MAR\(6),
	datab => \inst|flag~3_combout\,
	datac => \inst|MAR\(5),
	datad => \inst|MAR\(4),
	combout => \inst|reggy~199_combout\);

-- Location: FF_X14_Y11_N25
\inst|reggy~43\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~194_combout\,
	sload => VCC,
	ena => \inst|reggy~199_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy~43_q\);

-- Location: LCCOMB_X11_Y11_N26
\inst|reggy~200\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~200_combout\ = (!\inst|MAR\(6) & (\inst|flag~3_combout\ & (!\inst|MAR\(5) & \inst|MAR\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MAR\(6),
	datab => \inst|flag~3_combout\,
	datac => \inst|MAR\(5),
	datad => \inst|MAR\(4),
	combout => \inst|reggy~200_combout\);

-- Location: FF_X13_Y11_N13
\inst|reggy~33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~194_combout\,
	sload => VCC,
	ena => \inst|reggy~200_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy~33_q\);

-- Location: LCCOMB_X11_Y11_N4
\inst|reggy~201\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~201_combout\ = (!\inst|MAR\(6) & (\inst|flag~3_combout\ & (!\inst|MAR\(5) & !\inst|MAR\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MAR\(6),
	datab => \inst|flag~3_combout\,
	datac => \inst|MAR\(5),
	datad => \inst|MAR\(4),
	combout => \inst|reggy~201_combout\);

-- Location: FF_X13_Y12_N13
\inst|reggy~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~194_combout\,
	sload => VCC,
	ena => \inst|reggy~201_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy~23_q\);

-- Location: LCCOMB_X13_Y11_N12
\inst|reggy~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~96_combout\ = (\inst|MAR\(5) & (\inst|MAR\(4))) # (!\inst|MAR\(5) & ((\inst|MAR\(4) & (\inst|reggy~33_q\)) # (!\inst|MAR\(4) & ((\inst|reggy~23_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MAR\(5),
	datab => \inst|MAR\(4),
	datac => \inst|reggy~33_q\,
	datad => \inst|reggy~23_q\,
	combout => \inst|reggy~96_combout\);

-- Location: LCCOMB_X14_Y11_N24
\inst|reggy~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~97_combout\ = (\inst|MAR\(5) & ((\inst|reggy~96_combout\ & (\inst|reggy~53_q\)) # (!\inst|reggy~96_combout\ & ((\inst|reggy~43_q\))))) # (!\inst|MAR\(5) & (((\inst|reggy~96_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy~53_q\,
	datab => \inst|MAR\(5),
	datac => \inst|reggy~43_q\,
	datad => \inst|reggy~96_combout\,
	combout => \inst|reggy~97_combout\);

-- Location: LCCOMB_X13_Y13_N6
\inst|reggy~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~98_combout\ = (\inst|MAR\(6) & (\inst|reggy~95_combout\)) # (!\inst|MAR\(6) & ((\inst|reggy~97_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|reggy~95_combout\,
	datac => \inst|MAR\(6),
	datad => \inst|reggy~97_combout\,
	combout => \inst|reggy~98_combout\);

-- Location: LCCOMB_X17_Y12_N20
\inst|s_p1[9]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_p1[9]~0_combout\ = (\rst~input_o\ & (\inst|pr_state.state1~q\ & !\inst|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datac => \inst|pr_state.state1~q\,
	datad => \inst|Equal0~0_combout\,
	combout => \inst|s_p1[9]~0_combout\);

-- Location: FF_X13_Y13_N7
\inst|REG_A[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|reggy~98_combout\,
	ena => \inst|s_p1[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|REG_A\(9));

-- Location: LCCOMB_X21_Y10_N30
\inst|Mux37~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux37~0_combout\ = (\inst|PC\(3) & (\inst|PC\(4) & (\inst|PC\(1) & \inst|PC\(2)))) # (!\inst|PC\(3) & (!\inst|PC\(1) & (\inst|PC\(4) $ (\inst|PC\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC\(4),
	datab => \inst|PC\(3),
	datac => \inst|PC\(1),
	datad => \inst|PC\(2),
	combout => \inst|Mux37~0_combout\);

-- Location: LCCOMB_X21_Y10_N6
\inst|MAR[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|MAR[2]~4_combout\ = (\inst|PC\(5) & ((\inst|Mux38~2_combout\))) # (!\inst|PC\(5) & (\inst|Mux37~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux37~0_combout\,
	datab => \inst|PC\(5),
	datad => \inst|Mux38~2_combout\,
	combout => \inst|MAR[2]~4_combout\);

-- Location: LCCOMB_X21_Y10_N18
\inst|Mux29~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux29~4_combout\ = \inst|PC\(1) $ (\inst|PC\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|PC\(1),
	datad => \inst|PC\(2),
	combout => \inst|Mux29~4_combout\);

-- Location: LCCOMB_X21_Y10_N14
\inst|Mux37~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux37~1_combout\ = (!\inst|PC\(4) & (!\inst|PC\(5) & (!\inst|PC\(3) & !\inst|Mux29~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC\(4),
	datab => \inst|PC\(5),
	datac => \inst|PC\(3),
	datad => \inst|Mux29~4_combout\,
	combout => \inst|Mux37~1_combout\);

-- Location: FF_X21_Y10_N7
\inst|MAR[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|MAR[2]~4_combout\,
	asdata => \inst|Mux37~1_combout\,
	sload => \inst|PC\(0),
	ena => \inst|MAR[11]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MAR\(2));

-- Location: LCCOMB_X13_Y12_N12
\inst|reggy~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~106_combout\ = (\inst|MAR\(1) & (((\inst|MAR\(0))))) # (!\inst|MAR\(1) & ((\inst|MAR\(0) & (\inst|reggy~33_q\)) # (!\inst|MAR\(0) & ((\inst|reggy~23_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MAR\(1),
	datab => \inst|reggy~33_q\,
	datac => \inst|reggy~23_q\,
	datad => \inst|MAR\(0),
	combout => \inst|reggy~106_combout\);

-- Location: LCCOMB_X13_Y11_N14
\inst|reggy~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~107_combout\ = (\inst|MAR\(1) & ((\inst|reggy~106_combout\ & ((\inst|reggy~53_q\))) # (!\inst|reggy~106_combout\ & (\inst|reggy~43_q\)))) # (!\inst|MAR\(1) & (((\inst|reggy~106_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy~43_q\,
	datab => \inst|MAR\(1),
	datac => \inst|reggy~53_q\,
	datad => \inst|reggy~106_combout\,
	combout => \inst|reggy~107_combout\);

-- Location: LCCOMB_X12_Y11_N14
\inst|reggy~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~104_combout\ = (\inst|MAR\(0) & (((\inst|MAR\(1))))) # (!\inst|MAR\(0) & ((\inst|MAR\(1) & (\inst|reggy~83_q\)) # (!\inst|MAR\(1) & ((\inst|reggy~63_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MAR\(0),
	datab => \inst|reggy~83_q\,
	datac => \inst|reggy~63_q\,
	datad => \inst|MAR\(1),
	combout => \inst|reggy~104_combout\);

-- Location: LCCOMB_X12_Y12_N10
\inst|reggy~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~105_combout\ = (\inst|reggy~104_combout\ & (((\inst|reggy~93_q\) # (!\inst|MAR\(0))))) # (!\inst|reggy~104_combout\ & (\inst|reggy~73_q\ & ((\inst|MAR\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy~104_combout\,
	datab => \inst|reggy~73_q\,
	datac => \inst|reggy~93_q\,
	datad => \inst|MAR\(0),
	combout => \inst|reggy~105_combout\);

-- Location: LCCOMB_X12_Y14_N0
\inst|reggy~108\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~108_combout\ = (\inst|MAR\(2) & ((\inst|reggy~105_combout\))) # (!\inst|MAR\(2) & (\inst|reggy~107_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|MAR\(2),
	datac => \inst|reggy~107_combout\,
	datad => \inst|reggy~105_combout\,
	combout => \inst|reggy~108_combout\);

-- Location: FF_X12_Y14_N1
\inst|REG_B[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|reggy~108_combout\,
	ena => \inst|s_p1[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|REG_B\(9));

-- Location: FF_X14_Y10_N11
\inst|OP[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|MAR\(10),
	sload => VCC,
	ena => \inst|s_p1[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|OP\(2));

-- Location: FF_X14_Y10_N25
\inst|OP[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|MAR\(8),
	sload => VCC,
	ena => \inst|s_p1[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|OP\(0));

-- Location: FF_X14_Y10_N19
\inst|OP[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|MAR\(9),
	sload => VCC,
	ena => \inst|s_p1[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|OP\(1));

-- Location: LCCOMB_X14_Y10_N24
\inst|alu1|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux10~0_combout\ = (!\inst|OP\(2) & (\inst|OP\(0) $ (\inst|OP\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|OP\(2),
	datac => \inst|OP\(0),
	datad => \inst|OP\(1),
	combout => \inst|alu1|Mux10~0_combout\);

-- Location: FF_X14_Y10_N21
\inst|OP[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|MAR\(11),
	sload => VCC,
	ena => \inst|s_p1[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|OP\(3));

-- Location: LCCOMB_X14_Y10_N20
\inst|alu1|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux11~0_combout\ = (!\inst|OP\(0) & ((\inst|OP\(2) & ((!\inst|OP\(3)))) # (!\inst|OP\(2) & ((\inst|OP\(1)) # (\inst|OP\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|OP\(2),
	datab => \inst|OP\(1),
	datac => \inst|OP\(3),
	datad => \inst|OP\(0),
	combout => \inst|alu1|Mux11~0_combout\);

-- Location: LCCOMB_X14_Y10_N4
\inst|alu1|Mux2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux2~10_combout\ = (\inst|OP\(3) & ((\inst|OP\(2)) # ((\inst|OP\(1) & \inst|OP\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|OP\(2),
	datab => \inst|OP\(1),
	datac => \inst|OP\(3),
	datad => \inst|OP\(0),
	combout => \inst|alu1|Mux2~10_combout\);

-- Location: LCCOMB_X14_Y10_N2
\inst|alu1|Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux2~3_combout\ = (\inst|OP\(2) & (\inst|OP\(1) & (!\inst|OP\(3) & \inst|OP\(0)))) # (!\inst|OP\(2) & (\inst|OP\(3) & ((!\inst|OP\(0)) # (!\inst|OP\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|OP\(2),
	datab => \inst|OP\(1),
	datac => \inst|OP\(3),
	datad => \inst|OP\(0),
	combout => \inst|alu1|Mux2~3_combout\);

-- Location: LCCOMB_X21_Y11_N30
\inst|Mux54~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux54~0_combout\ = (\inst|MAR\(1) & (!\inst|MAR\(2) & (\inst|MAR\(0) $ (\inst|MAR\(3))))) # (!\inst|MAR\(1) & (\inst|MAR\(2) $ (((\inst|MAR\(3)) # (!\inst|MAR\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MAR\(2),
	datab => \inst|MAR\(1),
	datac => \inst|MAR\(0),
	datad => \inst|MAR\(3),
	combout => \inst|Mux54~0_combout\);

-- Location: FF_X21_Y11_N31
\inst|REG_D[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Mux54~0_combout\,
	ena => \inst|REG_D[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|REG_D\(1));

-- Location: FF_X13_Y12_N5
\inst|reggy~15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~209_combout\,
	sload => VCC,
	ena => \inst|reggy~201_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy~15_q\);

-- Location: LCCOMB_X12_Y10_N4
\inst|reggy~146\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~146_combout\ = (\inst|MAR\(5) & (\inst|MAR\(4))) # (!\inst|MAR\(5) & ((\inst|MAR\(4) & (\inst|reggy~25_q\)) # (!\inst|MAR\(4) & ((\inst|reggy~15_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MAR\(5),
	datab => \inst|MAR\(4),
	datac => \inst|reggy~25_q\,
	datad => \inst|reggy~15_q\,
	combout => \inst|reggy~146_combout\);

-- Location: FF_X13_Y12_N27
\inst|reggy~35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~209_combout\,
	sload => VCC,
	ena => \inst|reggy~199_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy~35_q\);

-- Location: FF_X16_Y12_N13
\inst|reggy~45\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|reggy~209_combout\,
	ena => \inst|reggy~202_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy~45_q\);

-- Location: LCCOMB_X13_Y12_N14
\inst|reggy~147\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~147_combout\ = (\inst|MAR\(5) & ((\inst|reggy~146_combout\ & ((\inst|reggy~45_q\))) # (!\inst|reggy~146_combout\ & (\inst|reggy~35_q\)))) # (!\inst|MAR\(5) & (\inst|reggy~146_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MAR\(5),
	datab => \inst|reggy~146_combout\,
	datac => \inst|reggy~35_q\,
	datad => \inst|reggy~45_q\,
	combout => \inst|reggy~147_combout\);

-- Location: FF_X12_Y12_N31
\inst|reggy~85\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~209_combout\,
	sload => VCC,
	ena => \inst|reggy~198_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy~85_q\);

-- Location: FF_X12_Y12_N1
\inst|reggy~65\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~209_combout\,
	sload => VCC,
	ena => \inst|reggy~195_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy~65_q\);

-- Location: FF_X11_Y12_N21
\inst|reggy~75\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~209_combout\,
	sload => VCC,
	ena => \inst|reggy~196_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy~75_q\);

-- Location: FF_X11_Y12_N11
\inst|reggy~55\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~209_combout\,
	sload => VCC,
	ena => \inst|reggy~197_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy~55_q\);

-- Location: LCCOMB_X11_Y12_N20
\inst|reggy~144\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~144_combout\ = (\inst|MAR\(5) & ((\inst|MAR\(4)) # ((\inst|reggy~75_q\)))) # (!\inst|MAR\(5) & (!\inst|MAR\(4) & ((\inst|reggy~55_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MAR\(5),
	datab => \inst|MAR\(4),
	datac => \inst|reggy~75_q\,
	datad => \inst|reggy~55_q\,
	combout => \inst|reggy~144_combout\);

-- Location: LCCOMB_X12_Y12_N0
\inst|reggy~145\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~145_combout\ = (\inst|MAR\(4) & ((\inst|reggy~144_combout\ & (\inst|reggy~85_q\)) # (!\inst|reggy~144_combout\ & ((\inst|reggy~65_q\))))) # (!\inst|MAR\(4) & (((\inst|reggy~144_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy~85_q\,
	datab => \inst|MAR\(4),
	datac => \inst|reggy~65_q\,
	datad => \inst|reggy~144_combout\,
	combout => \inst|reggy~145_combout\);

-- Location: LCCOMB_X12_Y13_N6
\inst|reggy~148\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~148_combout\ = (\inst|MAR\(6) & ((\inst|reggy~145_combout\))) # (!\inst|MAR\(6) & (\inst|reggy~147_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|MAR\(6),
	datac => \inst|reggy~147_combout\,
	datad => \inst|reggy~145_combout\,
	combout => \inst|reggy~148_combout\);

-- Location: FF_X12_Y13_N7
\inst|REG_A[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|reggy~148_combout\,
	ena => \inst|s_p1[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|REG_A\(1));

-- Location: LCCOMB_X21_Y11_N28
\inst|Mux55~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux55~0_combout\ = (\inst|MAR\(3) & (!\inst|MAR\(2) & (\inst|MAR\(1)))) # (!\inst|MAR\(3) & ((\inst|MAR\(0)) # ((\inst|MAR\(2) & !\inst|MAR\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MAR\(2),
	datab => \inst|MAR\(1),
	datac => \inst|MAR\(0),
	datad => \inst|MAR\(3),
	combout => \inst|Mux55~0_combout\);

-- Location: FF_X21_Y11_N29
\inst|REG_D[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Mux55~0_combout\,
	ena => \inst|REG_D[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|REG_D\(0));

-- Location: LCCOMB_X14_Y10_N16
\inst|alu1|Mux9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux9~1_combout\ = (\inst|OP\(3)) # ((\inst|OP\(2) & (\inst|OP\(1) & \inst|OP\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|OP\(2),
	datab => \inst|OP\(1),
	datac => \inst|OP\(3),
	datad => \inst|OP\(0),
	combout => \inst|alu1|Mux9~1_combout\);

-- Location: LCCOMB_X14_Y10_N0
\inst|alu1|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux9~0_combout\ = (\inst|OP\(2) & (!\inst|OP\(1) & ((!\inst|OP\(0))))) # (!\inst|OP\(2) & (!\inst|OP\(3) & ((\inst|OP\(1)) # (\inst|OP\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|OP\(2),
	datab => \inst|OP\(1),
	datac => \inst|OP\(3),
	datad => \inst|OP\(0),
	combout => \inst|alu1|Mux9~0_combout\);

-- Location: LCCOMB_X14_Y10_N22
\inst|alu1|unidad_logica|salida[0]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|salida[0]~30_combout\ = (\inst|OP\(2) & (((!\inst|OP\(3) & !\inst|OP\(0))))) # (!\inst|OP\(2) & (!\inst|OP\(1) & ((\inst|OP\(3)) # (\inst|OP\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|OP\(2),
	datab => \inst|OP\(1),
	datac => \inst|OP\(3),
	datad => \inst|OP\(0),
	combout => \inst|alu1|unidad_logica|salida[0]~30_combout\);

-- Location: LCCOMB_X12_Y14_N26
\inst|alu1|unidad_logica|aux[0]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|aux[0]~23_combout\ = (\inst|alu1|Mux10~0_combout\ & ((\inst|alu1|Mux11~0_combout\ & ((\inst|REG_A\(0)))) # (!\inst|alu1|Mux11~0_combout\ & (\inst|alu1|unidad_logica|aux\(0))))) # (!\inst|alu1|Mux10~0_combout\ & 
-- (((\inst|alu1|unidad_logica|aux\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux10~0_combout\,
	datab => \inst|alu1|Mux11~0_combout\,
	datac => \inst|alu1|unidad_logica|aux\(0),
	datad => \inst|REG_A\(0),
	combout => \inst|alu1|unidad_logica|aux[0]~23_combout\);

-- Location: FF_X12_Y14_N27
\inst|alu1|unidad_logica|aux[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|alu1|unidad_logica|aux[0]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|unidad_logica|aux\(0));

-- Location: FF_X12_Y11_N1
\inst|reggy~74\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~212_combout\,
	sload => VCC,
	ena => \inst|reggy~196_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy~74_q\);

-- Location: FF_X17_Y11_N9
\inst|reggy~54\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~212_combout\,
	sload => VCC,
	ena => \inst|reggy~197_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy~54_q\);

-- Location: LCCOMB_X17_Y11_N8
\inst|reggy~154\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~154_combout\ = (\inst|MAR\(1) & ((\inst|reggy~74_q\) # ((\inst|MAR\(0))))) # (!\inst|MAR\(1) & (((\inst|reggy~54_q\ & !\inst|MAR\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MAR\(1),
	datab => \inst|reggy~74_q\,
	datac => \inst|reggy~54_q\,
	datad => \inst|MAR\(0),
	combout => \inst|reggy~154_combout\);

-- Location: FF_X11_Y11_N17
\inst|reggy~64\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~212_combout\,
	sload => VCC,
	ena => \inst|reggy~195_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy~64_q\);

-- Location: LCCOMB_X11_Y11_N22
\inst|reggy~155\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~155_combout\ = (\inst|reggy~154_combout\ & (((\inst|reggy~84_q\)) # (!\inst|MAR\(0)))) # (!\inst|reggy~154_combout\ & (\inst|MAR\(0) & ((\inst|reggy~64_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy~154_combout\,
	datab => \inst|MAR\(0),
	datac => \inst|reggy~84_q\,
	datad => \inst|reggy~64_q\,
	combout => \inst|reggy~155_combout\);

-- Location: FF_X17_Y11_N31
\inst|reggy~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~212_combout\,
	sload => VCC,
	ena => \inst|reggy~200_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy~24_q\);

-- Location: FF_X14_Y11_N3
\inst|reggy~14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~212_combout\,
	sload => VCC,
	ena => \inst|reggy~201_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy~14_q\);

-- Location: LCCOMB_X14_Y11_N2
\inst|reggy~156\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~156_combout\ = (\inst|MAR\(1) & (((\inst|MAR\(0))))) # (!\inst|MAR\(1) & ((\inst|MAR\(0) & (\inst|reggy~24_q\)) # (!\inst|MAR\(0) & ((\inst|reggy~14_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MAR\(1),
	datab => \inst|reggy~24_q\,
	datac => \inst|reggy~14_q\,
	datad => \inst|MAR\(0),
	combout => \inst|reggy~156_combout\);

-- Location: FF_X14_Y11_N13
\inst|reggy~34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~212_combout\,
	sload => VCC,
	ena => \inst|reggy~199_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy~34_q\);

-- Location: FF_X16_Y11_N1
\inst|reggy~44\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|reggy~212_combout\,
	ena => \inst|reggy~202_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy~44_q\);

-- Location: LCCOMB_X14_Y11_N12
\inst|reggy~157\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~157_combout\ = (\inst|MAR\(1) & ((\inst|reggy~156_combout\ & ((\inst|reggy~44_q\))) # (!\inst|reggy~156_combout\ & (\inst|reggy~34_q\)))) # (!\inst|MAR\(1) & (\inst|reggy~156_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MAR\(1),
	datab => \inst|reggy~156_combout\,
	datac => \inst|reggy~34_q\,
	datad => \inst|reggy~44_q\,
	combout => \inst|reggy~157_combout\);

-- Location: LCCOMB_X12_Y11_N2
\inst|reggy~158\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~158_combout\ = (\inst|MAR\(2) & (\inst|reggy~155_combout\)) # (!\inst|MAR\(2) & ((\inst|reggy~157_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|reggy~155_combout\,
	datac => \inst|MAR\(2),
	datad => \inst|reggy~157_combout\,
	combout => \inst|reggy~158_combout\);

-- Location: FF_X16_Y13_N21
\inst|REG_B[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~158_combout\,
	sload => VCC,
	ena => \inst|s_p1[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|REG_B\(0));

-- Location: LCCOMB_X12_Y14_N12
\inst|alu1|unidad_aritmetica|mult|inter[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|inter[0]~0_combout\ = (\inst|REG_B\(0) & \inst|REG_A\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(0),
	datad => \inst|REG_A\(0),
	combout => \inst|alu1|unidad_aritmetica|mult|inter[0]~0_combout\);

-- Location: LCCOMB_X12_Y14_N4
\inst|alu1|unidad_logica|salida~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|salida~23_combout\ = (\inst|alu1|Mux11~0_combout\ & (\inst|alu1|unidad_logica|aux\(0) & (\inst|alu1|Mux10~0_combout\))) # (!\inst|alu1|Mux11~0_combout\ & (((\inst|alu1|Mux10~0_combout\) # 
-- (\inst|alu1|unidad_aritmetica|mult|inter[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_logica|aux\(0),
	datab => \inst|alu1|Mux11~0_combout\,
	datac => \inst|alu1|Mux10~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|mult|inter[0]~0_combout\,
	combout => \inst|alu1|unidad_logica|salida~23_combout\);

-- Location: LCCOMB_X12_Y14_N16
\inst|alu1|unidad_logica|salida~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|salida~24_combout\ = (\inst|REG_A\(0) & (\inst|alu1|unidad_logica|salida[0]~30_combout\ $ ((\inst|alu1|unidad_logica|salida~23_combout\)))) # (!\inst|REG_A\(0) & ((\inst|alu1|unidad_logica|salida~23_combout\) # 
-- ((\inst|alu1|unidad_logica|salida[0]~30_combout\ & \inst|REG_B\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(0),
	datab => \inst|alu1|unidad_logica|salida[0]~30_combout\,
	datac => \inst|alu1|unidad_logica|salida~23_combout\,
	datad => \inst|REG_B\(0),
	combout => \inst|alu1|unidad_logica|salida~24_combout\);

-- Location: FF_X12_Y14_N17
\inst|alu1|unidad_logica|salida[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|alu1|unidad_logica|salida~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|unidad_logica|salida\(0));

-- Location: LCCOMB_X14_Y10_N10
\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~39_combout\ = (\inst|OP\(1) & (!\inst|OP\(2) & !\inst|OP\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|OP\(1),
	datac => \inst|OP\(2),
	datad => \inst|OP\(0),
	combout => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~39_combout\);

-- Location: LCCOMB_X14_Y9_N18
\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~18_combout\ = (\inst|REG_B\(0) & (\inst|alu1|Mux10~0_combout\ $ (!\inst|REG_A\(0)))) # (!\inst|REG_B\(0) & (!\inst|alu1|Mux10~0_combout\ & \inst|REG_A\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|REG_B\(0),
	datac => \inst|alu1|Mux10~0_combout\,
	datad => \inst|REG_A\(0),
	combout => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~18_combout\);

-- Location: LCCOMB_X14_Y12_N0
\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~19_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~39_combout\ & (!\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~18_combout\ & VCC)) # 
-- (!\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~39_combout\ & (\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~18_combout\ $ (GND)))
-- \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~20\ = CARRY((!\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~39_combout\ & !\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~39_combout\,
	datab => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~18_combout\,
	datad => VCC,
	combout => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~19_combout\,
	cout => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~20\);

-- Location: FF_X14_Y11_N23
\inst|reggy~41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~203_combout\,
	sload => VCC,
	ena => \inst|reggy~199_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy~41_q\);

-- Location: FF_X13_Y11_N11
\inst|reggy~51\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|reggy~203_combout\,
	ena => \inst|reggy~202_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy~51_q\);

-- Location: FF_X14_Y11_N29
\inst|reggy~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~203_combout\,
	sload => VCC,
	ena => \inst|reggy~201_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy~21_q\);

-- Location: FF_X13_Y11_N21
\inst|reggy~31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~203_combout\,
	sload => VCC,
	ena => \inst|reggy~200_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy~31_q\);

-- Location: LCCOMB_X13_Y11_N20
\inst|reggy~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~101_combout\ = (\inst|MAR\(5) & (((\inst|MAR\(4))))) # (!\inst|MAR\(5) & ((\inst|MAR\(4) & ((\inst|reggy~31_q\))) # (!\inst|MAR\(4) & (\inst|reggy~21_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MAR\(5),
	datab => \inst|reggy~21_q\,
	datac => \inst|reggy~31_q\,
	datad => \inst|MAR\(4),
	combout => \inst|reggy~101_combout\);

-- Location: LCCOMB_X14_Y11_N10
\inst|reggy~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~102_combout\ = (\inst|MAR\(5) & ((\inst|reggy~101_combout\ & ((\inst|reggy~51_q\))) # (!\inst|reggy~101_combout\ & (\inst|reggy~41_q\)))) # (!\inst|MAR\(5) & (((\inst|reggy~101_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy~41_q\,
	datab => \inst|reggy~51_q\,
	datac => \inst|MAR\(5),
	datad => \inst|reggy~101_combout\,
	combout => \inst|reggy~102_combout\);

-- Location: FF_X12_Y11_N11
\inst|reggy~61\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~203_combout\,
	sload => VCC,
	ena => \inst|reggy~197_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy~61_q\);

-- Location: LCCOMB_X12_Y11_N16
\inst|reggy~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~99_combout\ = (\inst|MAR\(4) & (\inst|MAR\(5))) # (!\inst|MAR\(4) & ((\inst|MAR\(5) & (\inst|reggy~81_q\)) # (!\inst|MAR\(5) & ((\inst|reggy~61_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MAR\(4),
	datab => \inst|MAR\(5),
	datac => \inst|reggy~81_q\,
	datad => \inst|reggy~61_q\,
	combout => \inst|reggy~99_combout\);

-- Location: FF_X11_Y11_N15
\inst|reggy~91\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~203_combout\,
	sload => VCC,
	ena => \inst|reggy~198_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy~91_q\);

-- Location: FF_X11_Y11_N21
\inst|reggy~71\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~203_combout\,
	sload => VCC,
	ena => \inst|reggy~195_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy~71_q\);

-- Location: LCCOMB_X11_Y11_N20
\inst|reggy~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~100_combout\ = (\inst|reggy~99_combout\ & ((\inst|reggy~91_q\) # ((!\inst|MAR\(4))))) # (!\inst|reggy~99_combout\ & (((\inst|reggy~71_q\ & \inst|MAR\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy~99_combout\,
	datab => \inst|reggy~91_q\,
	datac => \inst|reggy~71_q\,
	datad => \inst|MAR\(4),
	combout => \inst|reggy~100_combout\);

-- Location: LCCOMB_X11_Y11_N24
\inst|reggy~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~103_combout\ = (\inst|MAR\(6) & ((\inst|reggy~100_combout\))) # (!\inst|MAR\(6) & (\inst|reggy~102_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MAR\(6),
	datac => \inst|reggy~102_combout\,
	datad => \inst|reggy~100_combout\,
	combout => \inst|reggy~103_combout\);

-- Location: FF_X16_Y13_N5
\inst|REG_A[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~103_combout\,
	sload => VCC,
	ena => \inst|s_p1[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|REG_A\(7));

-- Location: FF_X14_Y11_N27
\inst|reggy~40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~204_combout\,
	sload => VCC,
	ena => \inst|reggy~199_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy~40_q\);

-- Location: FF_X14_Y11_N21
\inst|reggy~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~204_combout\,
	sload => VCC,
	ena => \inst|reggy~201_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy~20_q\);

-- Location: FF_X13_Y11_N29
\inst|reggy~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~204_combout\,
	sload => VCC,
	ena => \inst|reggy~200_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy~30_q\);

-- Location: LCCOMB_X13_Y11_N28
\inst|reggy~116\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~116_combout\ = (\inst|MAR\(1) & (((\inst|MAR\(0))))) # (!\inst|MAR\(1) & ((\inst|MAR\(0) & ((\inst|reggy~30_q\))) # (!\inst|MAR\(0) & (\inst|reggy~20_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy~20_q\,
	datab => \inst|MAR\(1),
	datac => \inst|reggy~30_q\,
	datad => \inst|MAR\(0),
	combout => \inst|reggy~116_combout\);

-- Location: LCCOMB_X13_Y11_N0
\inst|reggy~117\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~117_combout\ = (\inst|MAR\(1) & ((\inst|reggy~116_combout\ & (\inst|reggy~50_q\)) # (!\inst|reggy~116_combout\ & ((\inst|reggy~40_q\))))) # (!\inst|MAR\(1) & (((\inst|reggy~116_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy~50_q\,
	datab => \inst|MAR\(1),
	datac => \inst|reggy~40_q\,
	datad => \inst|reggy~116_combout\,
	combout => \inst|reggy~117_combout\);

-- Location: FF_X12_Y11_N31
\inst|reggy~60\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~204_combout\,
	sload => VCC,
	ena => \inst|reggy~197_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy~60_q\);

-- Location: FF_X12_Y11_N25
\inst|reggy~80\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~204_combout\,
	sload => VCC,
	ena => \inst|reggy~196_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy~80_q\);

-- Location: LCCOMB_X12_Y11_N24
\inst|reggy~114\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~114_combout\ = (\inst|MAR\(0) & (((\inst|MAR\(1))))) # (!\inst|MAR\(0) & ((\inst|MAR\(1) & ((\inst|reggy~80_q\))) # (!\inst|MAR\(1) & (\inst|reggy~60_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy~60_q\,
	datab => \inst|MAR\(0),
	datac => \inst|reggy~80_q\,
	datad => \inst|MAR\(1),
	combout => \inst|reggy~114_combout\);

-- Location: FF_X12_Y12_N15
\inst|reggy~90\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~204_combout\,
	sload => VCC,
	ena => \inst|reggy~198_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy~90_q\);

-- Location: FF_X12_Y12_N21
\inst|reggy~70\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~204_combout\,
	sload => VCC,
	ena => \inst|reggy~195_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy~70_q\);

-- Location: LCCOMB_X12_Y12_N20
\inst|reggy~115\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~115_combout\ = (\inst|reggy~114_combout\ & ((\inst|reggy~90_q\) # ((!\inst|MAR\(0))))) # (!\inst|reggy~114_combout\ & (((\inst|reggy~70_q\ & \inst|MAR\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy~114_combout\,
	datab => \inst|reggy~90_q\,
	datac => \inst|reggy~70_q\,
	datad => \inst|MAR\(0),
	combout => \inst|reggy~115_combout\);

-- Location: LCCOMB_X13_Y13_N4
\inst|reggy~118\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~118_combout\ = (\inst|MAR\(2) & ((\inst|reggy~115_combout\))) # (!\inst|MAR\(2) & (\inst|reggy~117_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MAR\(2),
	datab => \inst|reggy~117_combout\,
	datad => \inst|reggy~115_combout\,
	combout => \inst|reggy~118_combout\);

-- Location: FF_X17_Y13_N15
\inst|REG_B[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~118_combout\,
	sload => VCC,
	ena => \inst|s_p1[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|REG_B\(6));

-- Location: LCCOMB_X16_Y14_N2
\inst|alu1|unidad_aritmetica|suma|Yop~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|Yop~1_combout\ = \inst|REG_B\(9) $ (\inst|REG_B\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|REG_B\(9),
	datad => \inst|REG_B\(6),
	combout => \inst|alu1|unidad_aritmetica|suma|Yop~1_combout\);

-- Location: FF_X13_Y11_N9
\inst|reggy~49\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|reggy~205_combout\,
	ena => \inst|reggy~202_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy~49_q\);

-- Location: FF_X14_Y11_N17
\inst|reggy~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~205_combout\,
	sload => VCC,
	ena => \inst|reggy~201_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy~19_q\);

-- Location: FF_X13_Y11_N31
\inst|reggy~29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~205_combout\,
	sload => VCC,
	ena => \inst|reggy~200_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy~29_q\);

-- Location: LCCOMB_X13_Y11_N30
\inst|reggy~126\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~126_combout\ = (\inst|MAR\(4) & (((\inst|reggy~29_q\) # (\inst|MAR\(5))))) # (!\inst|MAR\(4) & (\inst|reggy~19_q\ & ((!\inst|MAR\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy~19_q\,
	datab => \inst|MAR\(4),
	datac => \inst|reggy~29_q\,
	datad => \inst|MAR\(5),
	combout => \inst|reggy~126_combout\);

-- Location: FF_X14_Y11_N19
\inst|reggy~39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~205_combout\,
	sload => VCC,
	ena => \inst|reggy~199_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy~39_q\);

-- Location: LCCOMB_X11_Y11_N2
\inst|reggy~127\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~127_combout\ = (\inst|reggy~126_combout\ & ((\inst|reggy~49_q\) # ((!\inst|MAR\(5))))) # (!\inst|reggy~126_combout\ & (((\inst|MAR\(5) & \inst|reggy~39_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy~49_q\,
	datab => \inst|reggy~126_combout\,
	datac => \inst|MAR\(5),
	datad => \inst|reggy~39_q\,
	combout => \inst|reggy~127_combout\);

-- Location: FF_X12_Y11_N7
\inst|reggy~59\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~205_combout\,
	sload => VCC,
	ena => \inst|reggy~197_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy~59_q\);

-- Location: LCCOMB_X12_Y11_N4
\inst|reggy~124\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~124_combout\ = (\inst|MAR\(4) & (\inst|MAR\(5))) # (!\inst|MAR\(4) & ((\inst|MAR\(5) & (\inst|reggy~79_q\)) # (!\inst|MAR\(5) & ((\inst|reggy~59_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MAR\(4),
	datab => \inst|MAR\(5),
	datac => \inst|reggy~79_q\,
	datad => \inst|reggy~59_q\,
	combout => \inst|reggy~124_combout\);

-- Location: FF_X12_Y12_N25
\inst|reggy~69\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~205_combout\,
	sload => VCC,
	ena => \inst|reggy~195_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy~69_q\);

-- Location: FF_X12_Y12_N3
\inst|reggy~89\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~205_combout\,
	sload => VCC,
	ena => \inst|reggy~198_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy~89_q\);

-- Location: LCCOMB_X12_Y12_N24
\inst|reggy~125\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~125_combout\ = (\inst|reggy~124_combout\ & (((\inst|reggy~89_q\)) # (!\inst|MAR\(4)))) # (!\inst|reggy~124_combout\ & (\inst|MAR\(4) & (\inst|reggy~69_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy~124_combout\,
	datab => \inst|MAR\(4),
	datac => \inst|reggy~69_q\,
	datad => \inst|reggy~89_q\,
	combout => \inst|reggy~125_combout\);

-- Location: LCCOMB_X12_Y13_N18
\inst|reggy~128\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~128_combout\ = (\inst|MAR\(6) & ((\inst|reggy~125_combout\))) # (!\inst|MAR\(6) & (\inst|reggy~127_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy~127_combout\,
	datab => \inst|MAR\(6),
	datac => \inst|reggy~125_combout\,
	combout => \inst|reggy~128_combout\);

-- Location: FF_X17_Y13_N29
\inst|REG_A[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~128_combout\,
	sload => VCC,
	ena => \inst|s_p1[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|REG_A\(5));

-- Location: LCCOMB_X21_Y11_N2
\inst|Mux52~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux52~0_combout\ = (\inst|MAR\(1) & (!\inst|MAR\(2) & (\inst|MAR\(0) & !\inst|MAR\(3)))) # (!\inst|MAR\(1) & (!\inst|MAR\(0) & (\inst|MAR\(2) $ (\inst|MAR\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MAR\(2),
	datab => \inst|MAR\(1),
	datac => \inst|MAR\(0),
	datad => \inst|MAR\(3),
	combout => \inst|Mux52~0_combout\);

-- Location: FF_X21_Y11_N3
\inst|REG_D[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Mux52~0_combout\,
	ena => \inst|REG_D[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|REG_D\(3));

-- Location: FF_X12_Y11_N23
\inst|reggy~57\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~207_combout\,
	sload => VCC,
	ena => \inst|reggy~197_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy~57_q\);

-- Location: FF_X12_Y11_N21
\inst|reggy~77\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~207_combout\,
	sload => VCC,
	ena => \inst|reggy~196_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy~77_q\);

-- Location: LCCOMB_X12_Y11_N22
\inst|reggy~169\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~169_combout\ = (\inst|MAR\(1) & ((\inst|MAR\(0)) # ((\inst|reggy~77_q\)))) # (!\inst|MAR\(1) & (!\inst|MAR\(0) & (\inst|reggy~57_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MAR\(1),
	datab => \inst|MAR\(0),
	datac => \inst|reggy~57_q\,
	datad => \inst|reggy~77_q\,
	combout => \inst|reggy~169_combout\);

-- Location: FF_X12_Y12_N27
\inst|reggy~87\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~207_combout\,
	sload => VCC,
	ena => \inst|reggy~198_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy~87_q\);

-- Location: FF_X12_Y12_N17
\inst|reggy~67\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~207_combout\,
	sload => VCC,
	ena => \inst|reggy~195_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy~67_q\);

-- Location: LCCOMB_X12_Y12_N26
\inst|reggy~170\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~170_combout\ = (\inst|reggy~169_combout\ & (((\inst|reggy~87_q\)) # (!\inst|MAR\(0)))) # (!\inst|reggy~169_combout\ & (\inst|MAR\(0) & ((\inst|reggy~67_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy~169_combout\,
	datab => \inst|MAR\(0),
	datac => \inst|reggy~87_q\,
	datad => \inst|reggy~67_q\,
	combout => \inst|reggy~170_combout\);

-- Location: FF_X13_Y11_N17
\inst|reggy~47\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|reggy~207_combout\,
	ena => \inst|reggy~202_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy~47_q\);

-- Location: FF_X13_Y12_N17
\inst|reggy~37\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~207_combout\,
	sload => VCC,
	ena => \inst|reggy~199_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy~37_q\);

-- Location: FF_X13_Y12_N19
\inst|reggy~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~207_combout\,
	sload => VCC,
	ena => \inst|reggy~201_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy~17_q\);

-- Location: LCCOMB_X13_Y12_N18
\inst|reggy~171\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~171_combout\ = (\inst|MAR\(1) & (((\inst|MAR\(0))))) # (!\inst|MAR\(1) & ((\inst|MAR\(0) & (\inst|reggy~27_q\)) # (!\inst|MAR\(0) & ((\inst|reggy~17_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MAR\(1),
	datab => \inst|reggy~27_q\,
	datac => \inst|reggy~17_q\,
	datad => \inst|MAR\(0),
	combout => \inst|reggy~171_combout\);

-- Location: LCCOMB_X13_Y12_N16
\inst|reggy~172\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~172_combout\ = (\inst|MAR\(1) & ((\inst|reggy~171_combout\ & (\inst|reggy~47_q\)) # (!\inst|reggy~171_combout\ & ((\inst|reggy~37_q\))))) # (!\inst|MAR\(1) & (((\inst|reggy~171_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MAR\(1),
	datab => \inst|reggy~47_q\,
	datac => \inst|reggy~37_q\,
	datad => \inst|reggy~171_combout\,
	combout => \inst|reggy~172_combout\);

-- Location: LCCOMB_X13_Y12_N28
\inst|reggy~173\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~173_combout\ = (\inst|MAR\(2) & (\inst|reggy~170_combout\)) # (!\inst|MAR\(2) & ((\inst|reggy~172_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy~170_combout\,
	datac => \inst|MAR\(2),
	datad => \inst|reggy~172_combout\,
	combout => \inst|reggy~173_combout\);

-- Location: FF_X16_Y13_N13
\inst|REG_B[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~173_combout\,
	sload => VCC,
	ena => \inst|s_p1[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|REG_B\(3));

-- Location: LCCOMB_X21_Y11_N4
\inst|Mux53~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux53~0_combout\ = (\inst|MAR\(2)) # ((\inst|MAR\(0) & (\inst|MAR\(1))) # (!\inst|MAR\(0) & ((\inst|MAR\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MAR\(2),
	datab => \inst|MAR\(1),
	datac => \inst|MAR\(0),
	datad => \inst|MAR\(3),
	combout => \inst|Mux53~0_combout\);

-- Location: FF_X21_Y11_N5
\inst|REG_D[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Mux53~0_combout\,
	ena => \inst|REG_D[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|REG_D\(2));

-- Location: FF_X12_Y11_N13
\inst|reggy~76\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~208_combout\,
	sload => VCC,
	ena => \inst|reggy~196_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy~76_q\);

-- Location: LCCOMB_X12_Y11_N12
\inst|reggy~139\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~139_combout\ = (\inst|MAR\(4) & (\inst|MAR\(5))) # (!\inst|MAR\(4) & ((\inst|MAR\(5) & (\inst|reggy~76_q\)) # (!\inst|MAR\(5) & ((\inst|reggy~56_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MAR\(4),
	datab => \inst|MAR\(5),
	datac => \inst|reggy~76_q\,
	datad => \inst|reggy~56_q\,
	combout => \inst|reggy~139_combout\);

-- Location: FF_X12_Y12_N9
\inst|reggy~66\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~208_combout\,
	sload => VCC,
	ena => \inst|reggy~195_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy~66_q\);

-- Location: FF_X12_Y12_N7
\inst|reggy~86\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~208_combout\,
	sload => VCC,
	ena => \inst|reggy~198_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy~86_q\);

-- Location: LCCOMB_X12_Y12_N8
\inst|reggy~140\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~140_combout\ = (\inst|reggy~139_combout\ & (((\inst|reggy~86_q\)) # (!\inst|MAR\(4)))) # (!\inst|reggy~139_combout\ & (\inst|MAR\(4) & (\inst|reggy~66_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy~139_combout\,
	datab => \inst|MAR\(4),
	datac => \inst|reggy~66_q\,
	datad => \inst|reggy~86_q\,
	combout => \inst|reggy~140_combout\);

-- Location: FF_X13_Y11_N25
\inst|reggy~46\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|reggy~208_combout\,
	ena => \inst|reggy~202_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy~46_q\);

-- Location: FF_X14_Y11_N7
\inst|reggy~16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~208_combout\,
	sload => VCC,
	ena => \inst|reggy~201_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy~16_q\);

-- Location: FF_X13_Y11_N7
\inst|reggy~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~208_combout\,
	sload => VCC,
	ena => \inst|reggy~200_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy~26_q\);

-- Location: LCCOMB_X13_Y11_N6
\inst|reggy~141\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~141_combout\ = (\inst|MAR\(5) & (((\inst|MAR\(4))))) # (!\inst|MAR\(5) & ((\inst|MAR\(4) & ((\inst|reggy~26_q\))) # (!\inst|MAR\(4) & (\inst|reggy~16_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MAR\(5),
	datab => \inst|reggy~16_q\,
	datac => \inst|reggy~26_q\,
	datad => \inst|MAR\(4),
	combout => \inst|reggy~141_combout\);

-- Location: FF_X13_Y12_N7
\inst|reggy~36\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~208_combout\,
	sload => VCC,
	ena => \inst|reggy~199_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy~36_q\);

-- Location: LCCOMB_X13_Y12_N20
\inst|reggy~142\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~142_combout\ = (\inst|MAR\(5) & ((\inst|reggy~141_combout\ & (\inst|reggy~46_q\)) # (!\inst|reggy~141_combout\ & ((\inst|reggy~36_q\))))) # (!\inst|MAR\(5) & (((\inst|reggy~141_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MAR\(5),
	datab => \inst|reggy~46_q\,
	datac => \inst|reggy~141_combout\,
	datad => \inst|reggy~36_q\,
	combout => \inst|reggy~142_combout\);

-- Location: LCCOMB_X13_Y13_N8
\inst|reggy~143\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~143_combout\ = (\inst|MAR\(6) & (\inst|reggy~140_combout\)) # (!\inst|MAR\(6) & ((\inst|reggy~142_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy~140_combout\,
	datab => \inst|MAR\(6),
	datad => \inst|reggy~142_combout\,
	combout => \inst|reggy~143_combout\);

-- Location: LCCOMB_X14_Y13_N28
\inst|REG_A[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|REG_A[2]~feeder_combout\ = \inst|reggy~143_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|reggy~143_combout\,
	combout => \inst|REG_A[2]~feeder_combout\);

-- Location: FF_X14_Y13_N29
\inst|REG_A[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|REG_A[2]~feeder_combout\,
	ena => \inst|s_p1[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|REG_A\(2));

-- Location: LCCOMB_X11_Y13_N4
\inst|alu1|unidad_logica|aux[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|aux[1]~9_combout\ = (\inst|REG_A\(1) & (!\inst|REG_A\(0) & VCC)) # (!\inst|REG_A\(1) & (\inst|REG_A\(0) $ (GND)))
-- \inst|alu1|unidad_logica|aux[1]~10\ = CARRY((!\inst|REG_A\(1) & !\inst|REG_A\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(1),
	datab => \inst|REG_A\(0),
	datad => VCC,
	combout => \inst|alu1|unidad_logica|aux[1]~9_combout\,
	cout => \inst|alu1|unidad_logica|aux[1]~10\);

-- Location: LCCOMB_X11_Y13_N6
\inst|alu1|unidad_logica|aux[2]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|aux[2]~11_combout\ = (\inst|REG_A\(2) & ((\inst|alu1|unidad_logica|aux[1]~10\) # (GND))) # (!\inst|REG_A\(2) & (!\inst|alu1|unidad_logica|aux[1]~10\))
-- \inst|alu1|unidad_logica|aux[2]~12\ = CARRY((\inst|REG_A\(2)) # (!\inst|alu1|unidad_logica|aux[1]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(2),
	datad => VCC,
	cin => \inst|alu1|unidad_logica|aux[1]~10\,
	combout => \inst|alu1|unidad_logica|aux[2]~11_combout\,
	cout => \inst|alu1|unidad_logica|aux[2]~12\);

-- Location: FF_X11_Y13_N7
\inst|alu1|unidad_logica|aux[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|alu1|unidad_logica|aux[2]~11_combout\,
	ena => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|unidad_logica|aux\(2));

-- Location: LCCOMB_X14_Y13_N6
\inst|alu1|unidad_aritmetica|mult|inter[12]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|inter\(12) = (\inst|REG_A\(2) & \inst|REG_B\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|REG_A\(2),
	datad => \inst|REG_B\(2),
	combout => \inst|alu1|unidad_aritmetica|mult|inter\(12));

-- Location: LCCOMB_X14_Y13_N24
\inst|alu1|unidad_logica|salida~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|salida~19_combout\ = (\inst|alu1|Mux11~0_combout\ & (\inst|alu1|unidad_logica|aux\(2) & (\inst|alu1|Mux10~0_combout\))) # (!\inst|alu1|Mux11~0_combout\ & (((\inst|alu1|Mux10~0_combout\) # 
-- (\inst|alu1|unidad_aritmetica|mult|inter\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_logica|aux\(2),
	datab => \inst|alu1|Mux11~0_combout\,
	datac => \inst|alu1|Mux10~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|mult|inter\(12),
	combout => \inst|alu1|unidad_logica|salida~19_combout\);

-- Location: LCCOMB_X14_Y13_N30
\inst|alu1|unidad_logica|salida~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|salida~20_combout\ = (\inst|REG_A\(2) & ((\inst|alu1|unidad_logica|salida[0]~30_combout\ $ (\inst|alu1|unidad_logica|salida~19_combout\)))) # (!\inst|REG_A\(2) & ((\inst|alu1|unidad_logica|salida~19_combout\) # ((\inst|REG_B\(2) & 
-- \inst|alu1|unidad_logica|salida[0]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(2),
	datab => \inst|REG_A\(2),
	datac => \inst|alu1|unidad_logica|salida[0]~30_combout\,
	datad => \inst|alu1|unidad_logica|salida~19_combout\,
	combout => \inst|alu1|unidad_logica|salida~20_combout\);

-- Location: FF_X14_Y13_N31
\inst|alu1|unidad_logica|salida[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|alu1|unidad_logica|salida~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|unidad_logica|salida\(2));

-- Location: LCCOMB_X14_Y10_N18
\inst|alu1|Mux2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux2~4_combout\ = \inst|OP\(2) $ (((\inst|OP\(1)) # (\inst|OP\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|OP\(2),
	datac => \inst|OP\(1),
	datad => \inst|OP\(0),
	combout => \inst|alu1|Mux2~4_combout\);

-- Location: LCCOMB_X21_Y11_N16
\inst|Mux51~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux51~0_combout\ = (\inst|MAR\(0) & (!\inst|MAR\(3) & (\inst|MAR\(2) $ (\inst|MAR\(1))))) # (!\inst|MAR\(0) & (!\inst|MAR\(2) & (\inst|MAR\(1) $ (\inst|MAR\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MAR\(2),
	datab => \inst|MAR\(1),
	datac => \inst|MAR\(0),
	datad => \inst|MAR\(3),
	combout => \inst|Mux51~0_combout\);

-- Location: FF_X21_Y11_N17
\inst|REG_D[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Mux51~0_combout\,
	ena => \inst|REG_D[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|REG_D\(4));

-- Location: FF_X12_Y12_N23
\inst|reggy~88\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~206_combout\,
	sload => VCC,
	ena => \inst|reggy~198_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy~88_q\);

-- Location: FF_X12_Y11_N29
\inst|reggy~78\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~206_combout\,
	sload => VCC,
	ena => \inst|reggy~196_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy~78_q\);

-- Location: LCCOMB_X12_Y11_N28
\inst|reggy~129\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~129_combout\ = (\inst|MAR\(4) & (\inst|MAR\(5))) # (!\inst|MAR\(4) & ((\inst|MAR\(5) & (\inst|reggy~78_q\)) # (!\inst|MAR\(5) & ((\inst|reggy~58_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MAR\(4),
	datab => \inst|MAR\(5),
	datac => \inst|reggy~78_q\,
	datad => \inst|reggy~58_q\,
	combout => \inst|reggy~129_combout\);

-- Location: FF_X12_Y12_N5
\inst|reggy~68\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~206_combout\,
	sload => VCC,
	ena => \inst|reggy~195_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy~68_q\);

-- Location: LCCOMB_X12_Y12_N4
\inst|reggy~130\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~130_combout\ = (\inst|reggy~129_combout\ & ((\inst|reggy~88_q\) # ((!\inst|MAR\(4))))) # (!\inst|reggy~129_combout\ & (((\inst|reggy~68_q\ & \inst|MAR\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy~88_q\,
	datab => \inst|reggy~129_combout\,
	datac => \inst|reggy~68_q\,
	datad => \inst|MAR\(4),
	combout => \inst|reggy~130_combout\);

-- Location: FF_X13_Y11_N5
\inst|reggy~48\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|reggy~206_combout\,
	ena => \inst|reggy~202_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy~48_q\);

-- Location: FF_X13_Y12_N23
\inst|reggy~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~206_combout\,
	sload => VCC,
	ena => \inst|reggy~199_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy~38_q\);

-- Location: FF_X13_Y12_N25
\inst|reggy~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~206_combout\,
	sload => VCC,
	ena => \inst|reggy~201_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy~18_q\);

-- Location: FF_X13_Y11_N27
\inst|reggy~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~206_combout\,
	sload => VCC,
	ena => \inst|reggy~200_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy~28_q\);

-- Location: LCCOMB_X13_Y11_N26
\inst|reggy~131\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~131_combout\ = (\inst|MAR\(4) & (((\inst|reggy~28_q\) # (\inst|MAR\(5))))) # (!\inst|MAR\(4) & (\inst|reggy~18_q\ & ((!\inst|MAR\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy~18_q\,
	datab => \inst|MAR\(4),
	datac => \inst|reggy~28_q\,
	datad => \inst|MAR\(5),
	combout => \inst|reggy~131_combout\);

-- Location: LCCOMB_X13_Y12_N30
\inst|reggy~132\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~132_combout\ = (\inst|MAR\(5) & ((\inst|reggy~131_combout\ & (\inst|reggy~48_q\)) # (!\inst|reggy~131_combout\ & ((\inst|reggy~38_q\))))) # (!\inst|MAR\(5) & (((\inst|reggy~131_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MAR\(5),
	datab => \inst|reggy~48_q\,
	datac => \inst|reggy~38_q\,
	datad => \inst|reggy~131_combout\,
	combout => \inst|reggy~132_combout\);

-- Location: LCCOMB_X12_Y9_N30
\inst|reggy~133\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~133_combout\ = (\inst|MAR\(6) & (\inst|reggy~130_combout\)) # (!\inst|MAR\(6) & ((\inst|reggy~132_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|reggy~130_combout\,
	datac => \inst|reggy~132_combout\,
	datad => \inst|MAR\(6),
	combout => \inst|reggy~133_combout\);

-- Location: FF_X12_Y9_N31
\inst|REG_A[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|reggy~133_combout\,
	ena => \inst|s_p1[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|REG_A\(4));

-- Location: LCCOMB_X11_Y13_N28
\inst|alu1|unidad_aritmetica|mult|inter[24]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|inter\(24) = (\inst|REG_A\(4) & \inst|REG_B\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|REG_A\(4),
	datad => \inst|REG_B\(4),
	combout => \inst|alu1|unidad_aritmetica|mult|inter\(24));

-- Location: LCCOMB_X11_Y13_N8
\inst|alu1|unidad_logica|aux[3]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|aux[3]~13_combout\ = (\inst|REG_A\(3) & (!\inst|alu1|unidad_logica|aux[2]~12\ & VCC)) # (!\inst|REG_A\(3) & (\inst|alu1|unidad_logica|aux[2]~12\ $ (GND)))
-- \inst|alu1|unidad_logica|aux[3]~14\ = CARRY((!\inst|REG_A\(3) & !\inst|alu1|unidad_logica|aux[2]~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(3),
	datad => VCC,
	cin => \inst|alu1|unidad_logica|aux[2]~12\,
	combout => \inst|alu1|unidad_logica|aux[3]~13_combout\,
	cout => \inst|alu1|unidad_logica|aux[3]~14\);

-- Location: LCCOMB_X11_Y13_N10
\inst|alu1|unidad_logica|aux[4]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|aux[4]~15_combout\ = (\inst|REG_A\(4) & ((\inst|alu1|unidad_logica|aux[3]~14\) # (GND))) # (!\inst|REG_A\(4) & (!\inst|alu1|unidad_logica|aux[3]~14\))
-- \inst|alu1|unidad_logica|aux[4]~16\ = CARRY((\inst|REG_A\(4)) # (!\inst|alu1|unidad_logica|aux[3]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(4),
	datad => VCC,
	cin => \inst|alu1|unidad_logica|aux[3]~14\,
	combout => \inst|alu1|unidad_logica|aux[4]~15_combout\,
	cout => \inst|alu1|unidad_logica|aux[4]~16\);

-- Location: FF_X11_Y13_N11
\inst|alu1|unidad_logica|aux[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|alu1|unidad_logica|aux[4]~15_combout\,
	ena => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|unidad_logica|aux\(4));

-- Location: LCCOMB_X10_Y13_N12
\inst|alu1|unidad_logica|salida~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|salida~15_combout\ = (\inst|alu1|Mux10~0_combout\ & (((\inst|alu1|unidad_logica|aux\(4)) # (!\inst|alu1|Mux11~0_combout\)))) # (!\inst|alu1|Mux10~0_combout\ & (\inst|alu1|unidad_aritmetica|mult|inter\(24) & 
-- ((!\inst|alu1|Mux11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|inter\(24),
	datab => \inst|alu1|Mux10~0_combout\,
	datac => \inst|alu1|unidad_logica|aux\(4),
	datad => \inst|alu1|Mux11~0_combout\,
	combout => \inst|alu1|unidad_logica|salida~15_combout\);

-- Location: LCCOMB_X13_Y13_N10
\inst|alu1|unidad_logica|salida~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|salida~16_combout\ = (\inst|alu1|unidad_logica|salida~15_combout\ & (((!\inst|alu1|unidad_logica|salida[0]~30_combout\) # (!\inst|REG_A\(4))))) # (!\inst|alu1|unidad_logica|salida~15_combout\ & 
-- (\inst|alu1|unidad_logica|salida[0]~30_combout\ & ((\inst|REG_B\(4)) # (\inst|REG_A\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(4),
	datab => \inst|alu1|unidad_logica|salida~15_combout\,
	datac => \inst|REG_A\(4),
	datad => \inst|alu1|unidad_logica|salida[0]~30_combout\,
	combout => \inst|alu1|unidad_logica|salida~16_combout\);

-- Location: FF_X13_Y13_N11
\inst|alu1|unidad_logica|salida[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|alu1|unidad_logica|salida~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|unidad_logica|salida\(4));

-- Location: LCCOMB_X12_Y13_N0
\inst|alu1|barrel_shifters|aux[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|barrel_shifters|aux[4]~feeder_combout\ = \inst|REG_A\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|REG_A\(3),
	combout => \inst|alu1|barrel_shifters|aux[4]~feeder_combout\);

-- Location: FF_X12_Y13_N1
\inst|alu1|barrel_shifters|aux[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|alu1|barrel_shifters|aux[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|barrel_shifters|aux\(4));

-- Location: FF_X13_Y13_N21
\inst|alu1|barrel_shifters|salShifters[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|alu1|barrel_shifters|aux\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|barrel_shifters|salShifters\(4));

-- Location: LCCOMB_X13_Y10_N18
\inst|alu1|Mux2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux2~7_combout\ = (!\inst|alu1|Mux2~3_combout\ & ((\inst|OP\(2)) # (\inst|alu1|Mux2~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|OP\(2),
	datab => \inst|alu1|Mux2~6_combout\,
	datad => \inst|alu1|Mux2~3_combout\,
	combout => \inst|alu1|Mux2~7_combout\);

-- Location: LCCOMB_X13_Y13_N20
\inst|alu1|Mux5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux5~2_combout\ = (\inst|alu1|Mux2~6_combout\ & ((\inst|alu1|unidad_logica|salida\(4)) # ((!\inst|alu1|Mux2~7_combout\)))) # (!\inst|alu1|Mux2~6_combout\ & (((\inst|alu1|barrel_shifters|salShifters\(4) & \inst|alu1|Mux2~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_logica|salida\(4),
	datab => \inst|alu1|Mux2~6_combout\,
	datac => \inst|alu1|barrel_shifters|salShifters\(4),
	datad => \inst|alu1|Mux2~7_combout\,
	combout => \inst|alu1|Mux5~2_combout\);

-- Location: LCCOMB_X16_Y13_N20
\inst|alu1|unidad_aritmetica|divi|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan0~0_combout\ = (\inst|REG_B\(6)) # ((\inst|REG_B\(7)) # ((!\inst|REG_A\(7) & \inst|REG_B\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(7),
	datab => \inst|REG_B\(6),
	datac => \inst|REG_B\(0),
	datad => \inst|REG_B\(7),
	combout => \inst|alu1|unidad_aritmetica|divi|LessThan0~0_combout\);

-- Location: LCCOMB_X16_Y13_N30
\inst|alu1|unidad_aritmetica|divi|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan0~1_combout\ = (\inst|REG_B\(5)) # ((\inst|REG_B\(2)) # ((\inst|REG_B\(4)) # (\inst|REG_B\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(5),
	datab => \inst|REG_B\(2),
	datac => \inst|REG_B\(4),
	datad => \inst|REG_B\(3),
	combout => \inst|alu1|unidad_aritmetica|divi|LessThan0~1_combout\);

-- Location: LCCOMB_X16_Y13_N4
\inst|alu1|unidad_aritmetica|divi|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add0~0_combout\ = (\inst|REG_A\(7) & ((GND) # (!\inst|REG_B\(0)))) # (!\inst|REG_A\(7) & (\inst|REG_B\(0) $ (GND)))
-- \inst|alu1|unidad_aritmetica|divi|Add0~1\ = CARRY((\inst|REG_A\(7)) # (!\inst|REG_B\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(7),
	datab => \inst|REG_B\(0),
	datad => VCC,
	combout => \inst|alu1|unidad_aritmetica|divi|Add0~0_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add0~1\);

-- Location: LCCOMB_X16_Y13_N6
\inst|alu1|unidad_aritmetica|divi|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add0~2_combout\ = (\inst|REG_B\(1) & ((\inst|alu1|unidad_aritmetica|divi|Add0~1\) # (GND))) # (!\inst|REG_B\(1) & (!\inst|alu1|unidad_aritmetica|divi|Add0~1\))
-- \inst|alu1|unidad_aritmetica|divi|Add0~3\ = CARRY((\inst|REG_B\(1)) # (!\inst|alu1|unidad_aritmetica|divi|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|REG_B\(1),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add0~1\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add0~2_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add0~3\);

-- Location: LCCOMB_X16_Y13_N8
\inst|alu1|unidad_aritmetica|divi|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add0~4_combout\ = (\inst|REG_B\(2) & (!\inst|alu1|unidad_aritmetica|divi|Add0~3\ & VCC)) # (!\inst|REG_B\(2) & (\inst|alu1|unidad_aritmetica|divi|Add0~3\ $ (GND)))
-- \inst|alu1|unidad_aritmetica|divi|Add0~5\ = CARRY((!\inst|REG_B\(2) & !\inst|alu1|unidad_aritmetica|divi|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|REG_B\(2),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add0~3\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add0~4_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add0~5\);

-- Location: LCCOMB_X16_Y13_N10
\inst|alu1|unidad_aritmetica|divi|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add0~6_combout\ = (\inst|REG_B\(3) & ((\inst|alu1|unidad_aritmetica|divi|Add0~5\) # (GND))) # (!\inst|REG_B\(3) & (!\inst|alu1|unidad_aritmetica|divi|Add0~5\))
-- \inst|alu1|unidad_aritmetica|divi|Add0~7\ = CARRY((\inst|REG_B\(3)) # (!\inst|alu1|unidad_aritmetica|divi|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(3),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add0~5\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add0~6_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add0~7\);

-- Location: LCCOMB_X16_Y13_N12
\inst|alu1|unidad_aritmetica|divi|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add0~8_combout\ = (\inst|REG_B\(4) & (!\inst|alu1|unidad_aritmetica|divi|Add0~7\ & VCC)) # (!\inst|REG_B\(4) & (\inst|alu1|unidad_aritmetica|divi|Add0~7\ $ (GND)))
-- \inst|alu1|unidad_aritmetica|divi|Add0~9\ = CARRY((!\inst|REG_B\(4) & !\inst|alu1|unidad_aritmetica|divi|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(4),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add0~7\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add0~8_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add0~9\);

-- Location: LCCOMB_X16_Y13_N26
\inst|alu1|unidad_aritmetica|divi|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add0~16_combout\ = (!\inst|alu1|unidad_aritmetica|divi|LessThan0~0_combout\ & (!\inst|alu1|unidad_aritmetica|divi|LessThan0~1_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add0~8_combout\ & !\inst|REG_B\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|LessThan0~0_combout\,
	datab => \inst|alu1|unidad_aritmetica|divi|LessThan0~1_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|Add0~8_combout\,
	datad => \inst|REG_B\(1),
	combout => \inst|alu1|unidad_aritmetica|divi|Add0~16_combout\);

-- Location: LCCOMB_X16_Y13_N24
\inst|alu1|unidad_aritmetica|divi|Add0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add0~17_combout\ = (!\inst|REG_B\(1) & (!\inst|alu1|unidad_aritmetica|divi|LessThan0~1_combout\ & (!\inst|alu1|unidad_aritmetica|divi|LessThan0~0_combout\ & \inst|alu1|unidad_aritmetica|divi|Add0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(1),
	datab => \inst|alu1|unidad_aritmetica|divi|LessThan0~1_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|LessThan0~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|Add0~6_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add0~17_combout\);

-- Location: LCCOMB_X16_Y13_N18
\inst|alu1|unidad_aritmetica|divi|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add0~18_combout\ = (!\inst|alu1|unidad_aritmetica|divi|LessThan0~0_combout\ & (!\inst|alu1|unidad_aritmetica|divi|LessThan0~1_combout\ & (!\inst|REG_B\(1) & \inst|alu1|unidad_aritmetica|divi|Add0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|LessThan0~0_combout\,
	datab => \inst|alu1|unidad_aritmetica|divi|LessThan0~1_combout\,
	datac => \inst|REG_B\(1),
	datad => \inst|alu1|unidad_aritmetica|divi|Add0~4_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add0~18_combout\);

-- Location: LCCOMB_X16_Y13_N2
\inst|alu1|unidad_aritmetica|divi|Add0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add0~19_combout\ = (!\inst|REG_B\(1) & (!\inst|alu1|unidad_aritmetica|divi|LessThan0~1_combout\ & (!\inst|alu1|unidad_aritmetica|divi|LessThan0~0_combout\ & \inst|alu1|unidad_aritmetica|divi|Add0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(1),
	datab => \inst|alu1|unidad_aritmetica|divi|LessThan0~1_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|LessThan0~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|Add0~2_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add0~19_combout\);

-- Location: LCCOMB_X18_Y13_N28
\inst|alu1|unidad_aritmetica|divi|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add0~20_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan0~2_combout\ & (\inst|REG_A\(7))) # (!\inst|alu1|unidad_aritmetica|divi|LessThan0~2_combout\ & ((\inst|alu1|unidad_aritmetica|divi|Add0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(7),
	datac => \inst|alu1|unidad_aritmetica|divi|Add0~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan0~2_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add0~20_combout\);

-- Location: LCCOMB_X18_Y13_N12
\inst|alu1|unidad_aritmetica|divi|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add1~0_combout\ = (\inst|REG_B\(0) & (\inst|REG_A\(6) $ (VCC))) # (!\inst|REG_B\(0) & ((\inst|REG_A\(6)) # (GND)))
-- \inst|alu1|unidad_aritmetica|divi|Add1~1\ = CARRY((\inst|REG_A\(6)) # (!\inst|REG_B\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(0),
	datab => \inst|REG_A\(6),
	datad => VCC,
	combout => \inst|alu1|unidad_aritmetica|divi|Add1~0_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add1~1\);

-- Location: LCCOMB_X18_Y13_N14
\inst|alu1|unidad_aritmetica|divi|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add1~2_combout\ = (\inst|REG_B\(1) & ((\inst|alu1|unidad_aritmetica|divi|Add0~20_combout\ & (!\inst|alu1|unidad_aritmetica|divi|Add1~1\)) # (!\inst|alu1|unidad_aritmetica|divi|Add0~20_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add1~1\) # (GND))))) # (!\inst|REG_B\(1) & ((\inst|alu1|unidad_aritmetica|divi|Add0~20_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add1~1\ & VCC)) # (!\inst|alu1|unidad_aritmetica|divi|Add0~20_combout\ & 
-- (!\inst|alu1|unidad_aritmetica|divi|Add1~1\))))
-- \inst|alu1|unidad_aritmetica|divi|Add1~3\ = CARRY((\inst|REG_B\(1) & ((!\inst|alu1|unidad_aritmetica|divi|Add1~1\) # (!\inst|alu1|unidad_aritmetica|divi|Add0~20_combout\))) # (!\inst|REG_B\(1) & (!\inst|alu1|unidad_aritmetica|divi|Add0~20_combout\ & 
-- !\inst|alu1|unidad_aritmetica|divi|Add1~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(1),
	datab => \inst|alu1|unidad_aritmetica|divi|Add0~20_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add1~1\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add1~2_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add1~3\);

-- Location: LCCOMB_X18_Y13_N16
\inst|alu1|unidad_aritmetica|divi|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add1~4_combout\ = ((\inst|alu1|unidad_aritmetica|divi|Add0~19_combout\ $ (\inst|REG_B\(2) $ (\inst|alu1|unidad_aritmetica|divi|Add1~3\)))) # (GND)
-- \inst|alu1|unidad_aritmetica|divi|Add1~5\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add0~19_combout\ & ((!\inst|alu1|unidad_aritmetica|divi|Add1~3\) # (!\inst|REG_B\(2)))) # (!\inst|alu1|unidad_aritmetica|divi|Add0~19_combout\ & (!\inst|REG_B\(2) & 
-- !\inst|alu1|unidad_aritmetica|divi|Add1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add0~19_combout\,
	datab => \inst|REG_B\(2),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add1~3\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add1~4_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add1~5\);

-- Location: LCCOMB_X18_Y13_N18
\inst|alu1|unidad_aritmetica|divi|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add1~6_combout\ = (\inst|alu1|unidad_aritmetica|divi|Add0~18_combout\ & ((\inst|REG_B\(3) & (!\inst|alu1|unidad_aritmetica|divi|Add1~5\)) # (!\inst|REG_B\(3) & (\inst|alu1|unidad_aritmetica|divi|Add1~5\ & VCC)))) # 
-- (!\inst|alu1|unidad_aritmetica|divi|Add0~18_combout\ & ((\inst|REG_B\(3) & ((\inst|alu1|unidad_aritmetica|divi|Add1~5\) # (GND))) # (!\inst|REG_B\(3) & (!\inst|alu1|unidad_aritmetica|divi|Add1~5\))))
-- \inst|alu1|unidad_aritmetica|divi|Add1~7\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add0~18_combout\ & (\inst|REG_B\(3) & !\inst|alu1|unidad_aritmetica|divi|Add1~5\)) # (!\inst|alu1|unidad_aritmetica|divi|Add0~18_combout\ & ((\inst|REG_B\(3)) # 
-- (!\inst|alu1|unidad_aritmetica|divi|Add1~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add0~18_combout\,
	datab => \inst|REG_B\(3),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add1~5\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add1~6_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add1~7\);

-- Location: LCCOMB_X18_Y13_N20
\inst|alu1|unidad_aritmetica|divi|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add1~8_combout\ = ((\inst|REG_B\(4) $ (\inst|alu1|unidad_aritmetica|divi|Add0~17_combout\ $ (\inst|alu1|unidad_aritmetica|divi|Add1~7\)))) # (GND)
-- \inst|alu1|unidad_aritmetica|divi|Add1~9\ = CARRY((\inst|REG_B\(4) & (\inst|alu1|unidad_aritmetica|divi|Add0~17_combout\ & !\inst|alu1|unidad_aritmetica|divi|Add1~7\)) # (!\inst|REG_B\(4) & ((\inst|alu1|unidad_aritmetica|divi|Add0~17_combout\) # 
-- (!\inst|alu1|unidad_aritmetica|divi|Add1~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(4),
	datab => \inst|alu1|unidad_aritmetica|divi|Add0~17_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add1~7\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add1~8_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add1~9\);

-- Location: LCCOMB_X18_Y13_N22
\inst|alu1|unidad_aritmetica|divi|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add1~10_combout\ = (\inst|REG_B\(5) & ((\inst|alu1|unidad_aritmetica|divi|Add0~16_combout\ & (!\inst|alu1|unidad_aritmetica|divi|Add1~9\)) # (!\inst|alu1|unidad_aritmetica|divi|Add0~16_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add1~9\) # (GND))))) # (!\inst|REG_B\(5) & ((\inst|alu1|unidad_aritmetica|divi|Add0~16_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add1~9\ & VCC)) # (!\inst|alu1|unidad_aritmetica|divi|Add0~16_combout\ & 
-- (!\inst|alu1|unidad_aritmetica|divi|Add1~9\))))
-- \inst|alu1|unidad_aritmetica|divi|Add1~11\ = CARRY((\inst|REG_B\(5) & ((!\inst|alu1|unidad_aritmetica|divi|Add1~9\) # (!\inst|alu1|unidad_aritmetica|divi|Add0~16_combout\))) # (!\inst|REG_B\(5) & (!\inst|alu1|unidad_aritmetica|divi|Add0~16_combout\ & 
-- !\inst|alu1|unidad_aritmetica|divi|Add1~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(5),
	datab => \inst|alu1|unidad_aritmetica|divi|Add0~16_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add1~9\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add1~10_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add1~11\);

-- Location: LCCOMB_X16_Y13_N14
\inst|alu1|unidad_aritmetica|divi|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add0~10_combout\ = (\inst|REG_B\(5) & ((\inst|alu1|unidad_aritmetica|divi|Add0~9\) # (GND))) # (!\inst|REG_B\(5) & (!\inst|alu1|unidad_aritmetica|divi|Add0~9\))
-- \inst|alu1|unidad_aritmetica|divi|Add0~11\ = CARRY((\inst|REG_B\(5)) # (!\inst|alu1|unidad_aritmetica|divi|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|REG_B\(5),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add0~9\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add0~10_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add0~11\);

-- Location: LCCOMB_X16_Y13_N16
\inst|alu1|unidad_aritmetica|divi|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add0~12_combout\ = \inst|REG_B\(6) $ (\inst|alu1|unidad_aritmetica|divi|Add0~11\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|REG_B\(6),
	cin => \inst|alu1|unidad_aritmetica|divi|Add0~11\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add0~12_combout\);

-- Location: LCCOMB_X16_Y13_N22
\inst|alu1|unidad_aritmetica|divi|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add0~14_combout\ = (!\inst|REG_B\(1) & (!\inst|alu1|unidad_aritmetica|divi|LessThan0~1_combout\ & (!\inst|alu1|unidad_aritmetica|divi|LessThan0~0_combout\ & \inst|alu1|unidad_aritmetica|divi|Add0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(1),
	datab => \inst|alu1|unidad_aritmetica|divi|LessThan0~1_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|LessThan0~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|Add0~12_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add0~14_combout\);

-- Location: LCCOMB_X16_Y13_N0
\inst|alu1|unidad_aritmetica|divi|Add0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add0~15_combout\ = (!\inst|alu1|unidad_aritmetica|divi|LessThan0~0_combout\ & (!\inst|alu1|unidad_aritmetica|divi|LessThan0~1_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add0~10_combout\ & !\inst|REG_B\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|LessThan0~0_combout\,
	datab => \inst|alu1|unidad_aritmetica|divi|LessThan0~1_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|Add0~10_combout\,
	datad => \inst|REG_B\(1),
	combout => \inst|alu1|unidad_aritmetica|divi|Add0~15_combout\);

-- Location: LCCOMB_X17_Y13_N0
\inst|alu1|unidad_aritmetica|divi|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan1~1_cout\ = CARRY((!\inst|REG_A\(6) & \inst|REG_B\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(6),
	datab => \inst|REG_B\(0),
	datad => VCC,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan1~1_cout\);

-- Location: LCCOMB_X17_Y13_N2
\inst|alu1|unidad_aritmetica|divi|LessThan1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan1~3_cout\ = CARRY((\inst|REG_B\(1) & (\inst|alu1|unidad_aritmetica|divi|Add0~20_combout\ & !\inst|alu1|unidad_aritmetica|divi|LessThan1~1_cout\)) # (!\inst|REG_B\(1) & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add0~20_combout\) # (!\inst|alu1|unidad_aritmetica|divi|LessThan1~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(1),
	datab => \inst|alu1|unidad_aritmetica|divi|Add0~20_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan1~1_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan1~3_cout\);

-- Location: LCCOMB_X17_Y13_N4
\inst|alu1|unidad_aritmetica|divi|LessThan1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan1~5_cout\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add0~19_combout\ & (\inst|REG_B\(2) & !\inst|alu1|unidad_aritmetica|divi|LessThan1~3_cout\)) # (!\inst|alu1|unidad_aritmetica|divi|Add0~19_combout\ & 
-- ((\inst|REG_B\(2)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan1~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add0~19_combout\,
	datab => \inst|REG_B\(2),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan1~3_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan1~5_cout\);

-- Location: LCCOMB_X17_Y13_N6
\inst|alu1|unidad_aritmetica|divi|LessThan1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan1~7_cout\ = CARRY((\inst|REG_B\(3) & (\inst|alu1|unidad_aritmetica|divi|Add0~18_combout\ & !\inst|alu1|unidad_aritmetica|divi|LessThan1~5_cout\)) # (!\inst|REG_B\(3) & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add0~18_combout\) # (!\inst|alu1|unidad_aritmetica|divi|LessThan1~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(3),
	datab => \inst|alu1|unidad_aritmetica|divi|Add0~18_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan1~5_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan1~7_cout\);

-- Location: LCCOMB_X17_Y13_N8
\inst|alu1|unidad_aritmetica|divi|LessThan1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan1~9_cout\ = CARRY((\inst|REG_B\(4) & ((!\inst|alu1|unidad_aritmetica|divi|LessThan1~7_cout\) # (!\inst|alu1|unidad_aritmetica|divi|Add0~17_combout\))) # (!\inst|REG_B\(4) & 
-- (!\inst|alu1|unidad_aritmetica|divi|Add0~17_combout\ & !\inst|alu1|unidad_aritmetica|divi|LessThan1~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(4),
	datab => \inst|alu1|unidad_aritmetica|divi|Add0~17_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan1~7_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan1~9_cout\);

-- Location: LCCOMB_X17_Y13_N10
\inst|alu1|unidad_aritmetica|divi|LessThan1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan1~11_cout\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add0~16_combout\ & ((!\inst|alu1|unidad_aritmetica|divi|LessThan1~9_cout\) # (!\inst|REG_B\(5)))) # (!\inst|alu1|unidad_aritmetica|divi|Add0~16_combout\ & 
-- (!\inst|REG_B\(5) & !\inst|alu1|unidad_aritmetica|divi|LessThan1~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add0~16_combout\,
	datab => \inst|REG_B\(5),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan1~9_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan1~11_cout\);

-- Location: LCCOMB_X17_Y13_N12
\inst|alu1|unidad_aritmetica|divi|LessThan1~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan1~13_cout\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add0~15_combout\ & (\inst|REG_B\(6) & !\inst|alu1|unidad_aritmetica|divi|LessThan1~11_cout\)) # (!\inst|alu1|unidad_aritmetica|divi|Add0~15_combout\ & 
-- ((\inst|REG_B\(6)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan1~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add0~15_combout\,
	datab => \inst|REG_B\(6),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan1~11_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan1~13_cout\);

-- Location: LCCOMB_X17_Y13_N14
\inst|alu1|unidad_aritmetica|divi|LessThan1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan1~14_combout\ = (\inst|REG_B\(7) & ((\inst|alu1|unidad_aritmetica|divi|LessThan1~13_cout\) # (!\inst|alu1|unidad_aritmetica|divi|Add0~14_combout\))) # (!\inst|REG_B\(7) & 
-- (\inst|alu1|unidad_aritmetica|divi|LessThan1~13_cout\ & !\inst|alu1|unidad_aritmetica|divi|Add0~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(7),
	datad => \inst|alu1|unidad_aritmetica|divi|Add0~14_combout\,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan1~13_cout\,
	combout => \inst|alu1|unidad_aritmetica|divi|LessThan1~14_combout\);

-- Location: LCCOMB_X18_Y13_N2
\inst|alu1|unidad_aritmetica|divi|Add1~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add1~15_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan1~14_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add0~16_combout\)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan1~14_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add1~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|unidad_aritmetica|divi|Add0~16_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|Add1~10_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan1~14_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add1~15_combout\);

-- Location: LCCOMB_X17_Y9_N28
\inst|alu1|unidad_aritmetica|divi|Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add1~16_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan1~14_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add0~17_combout\)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan1~14_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|unidad_aritmetica|divi|Add0~17_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|Add1~8_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan1~14_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add1~16_combout\);

-- Location: LCCOMB_X18_Y13_N8
\inst|alu1|unidad_aritmetica|divi|Add1~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add1~17_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan1~14_combout\ & ((\inst|alu1|unidad_aritmetica|divi|Add0~18_combout\))) # (!\inst|alu1|unidad_aritmetica|divi|LessThan1~14_combout\ & 
-- (\inst|alu1|unidad_aritmetica|divi|Add1~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|unidad_aritmetica|divi|Add1~6_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|Add0~18_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan1~14_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add1~17_combout\);

-- Location: LCCOMB_X18_Y13_N26
\inst|alu1|unidad_aritmetica|divi|Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add1~18_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan1~14_combout\ & ((\inst|alu1|unidad_aritmetica|divi|Add0~19_combout\))) # (!\inst|alu1|unidad_aritmetica|divi|LessThan1~14_combout\ & 
-- (\inst|alu1|unidad_aritmetica|divi|Add1~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|unidad_aritmetica|divi|Add1~4_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|Add0~19_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan1~14_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add1~18_combout\);

-- Location: LCCOMB_X18_Y13_N6
\inst|alu1|unidad_aritmetica|divi|Add1~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add1~19_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan1~14_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add0~20_combout\)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan1~14_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|unidad_aritmetica|divi|Add0~20_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|Add1~2_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan1~14_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add1~19_combout\);

-- Location: LCCOMB_X17_Y13_N16
\inst|alu1|unidad_aritmetica|divi|Add1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add1~20_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan1~14_combout\ & (\inst|REG_A\(6))) # (!\inst|alu1|unidad_aritmetica|divi|LessThan1~14_combout\ & ((\inst|alu1|unidad_aritmetica|divi|Add1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(6),
	datab => \inst|alu1|unidad_aritmetica|divi|LessThan1~14_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|Add1~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add1~20_combout\);

-- Location: LCCOMB_X17_Y13_N18
\inst|alu1|unidad_aritmetica|divi|Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add2~0_combout\ = (\inst|REG_B\(0) & (\inst|REG_A\(5) $ (VCC))) # (!\inst|REG_B\(0) & ((\inst|REG_A\(5)) # (GND)))
-- \inst|alu1|unidad_aritmetica|divi|Add2~1\ = CARRY((\inst|REG_A\(5)) # (!\inst|REG_B\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(0),
	datab => \inst|REG_A\(5),
	datad => VCC,
	combout => \inst|alu1|unidad_aritmetica|divi|Add2~0_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add2~1\);

-- Location: LCCOMB_X17_Y13_N20
\inst|alu1|unidad_aritmetica|divi|Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add2~2_combout\ = (\inst|REG_B\(1) & ((\inst|alu1|unidad_aritmetica|divi|Add1~20_combout\ & (!\inst|alu1|unidad_aritmetica|divi|Add2~1\)) # (!\inst|alu1|unidad_aritmetica|divi|Add1~20_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add2~1\) # (GND))))) # (!\inst|REG_B\(1) & ((\inst|alu1|unidad_aritmetica|divi|Add1~20_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add2~1\ & VCC)) # (!\inst|alu1|unidad_aritmetica|divi|Add1~20_combout\ & 
-- (!\inst|alu1|unidad_aritmetica|divi|Add2~1\))))
-- \inst|alu1|unidad_aritmetica|divi|Add2~3\ = CARRY((\inst|REG_B\(1) & ((!\inst|alu1|unidad_aritmetica|divi|Add2~1\) # (!\inst|alu1|unidad_aritmetica|divi|Add1~20_combout\))) # (!\inst|REG_B\(1) & (!\inst|alu1|unidad_aritmetica|divi|Add1~20_combout\ & 
-- !\inst|alu1|unidad_aritmetica|divi|Add2~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(1),
	datab => \inst|alu1|unidad_aritmetica|divi|Add1~20_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add2~1\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add2~2_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add2~3\);

-- Location: LCCOMB_X17_Y13_N22
\inst|alu1|unidad_aritmetica|divi|Add2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add2~4_combout\ = ((\inst|alu1|unidad_aritmetica|divi|Add1~19_combout\ $ (\inst|REG_B\(2) $ (\inst|alu1|unidad_aritmetica|divi|Add2~3\)))) # (GND)
-- \inst|alu1|unidad_aritmetica|divi|Add2~5\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add1~19_combout\ & ((!\inst|alu1|unidad_aritmetica|divi|Add2~3\) # (!\inst|REG_B\(2)))) # (!\inst|alu1|unidad_aritmetica|divi|Add1~19_combout\ & (!\inst|REG_B\(2) & 
-- !\inst|alu1|unidad_aritmetica|divi|Add2~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add1~19_combout\,
	datab => \inst|REG_B\(2),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add2~3\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add2~4_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add2~5\);

-- Location: LCCOMB_X17_Y13_N24
\inst|alu1|unidad_aritmetica|divi|Add2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add2~6_combout\ = (\inst|REG_B\(3) & ((\inst|alu1|unidad_aritmetica|divi|Add1~18_combout\ & (!\inst|alu1|unidad_aritmetica|divi|Add2~5\)) # (!\inst|alu1|unidad_aritmetica|divi|Add1~18_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add2~5\) # (GND))))) # (!\inst|REG_B\(3) & ((\inst|alu1|unidad_aritmetica|divi|Add1~18_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add2~5\ & VCC)) # (!\inst|alu1|unidad_aritmetica|divi|Add1~18_combout\ & 
-- (!\inst|alu1|unidad_aritmetica|divi|Add2~5\))))
-- \inst|alu1|unidad_aritmetica|divi|Add2~7\ = CARRY((\inst|REG_B\(3) & ((!\inst|alu1|unidad_aritmetica|divi|Add2~5\) # (!\inst|alu1|unidad_aritmetica|divi|Add1~18_combout\))) # (!\inst|REG_B\(3) & (!\inst|alu1|unidad_aritmetica|divi|Add1~18_combout\ & 
-- !\inst|alu1|unidad_aritmetica|divi|Add2~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(3),
	datab => \inst|alu1|unidad_aritmetica|divi|Add1~18_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add2~5\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add2~6_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add2~7\);

-- Location: LCCOMB_X17_Y13_N26
\inst|alu1|unidad_aritmetica|divi|Add2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add2~8_combout\ = ((\inst|REG_B\(4) $ (\inst|alu1|unidad_aritmetica|divi|Add1~17_combout\ $ (\inst|alu1|unidad_aritmetica|divi|Add2~7\)))) # (GND)
-- \inst|alu1|unidad_aritmetica|divi|Add2~9\ = CARRY((\inst|REG_B\(4) & (\inst|alu1|unidad_aritmetica|divi|Add1~17_combout\ & !\inst|alu1|unidad_aritmetica|divi|Add2~7\)) # (!\inst|REG_B\(4) & ((\inst|alu1|unidad_aritmetica|divi|Add1~17_combout\) # 
-- (!\inst|alu1|unidad_aritmetica|divi|Add2~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(4),
	datab => \inst|alu1|unidad_aritmetica|divi|Add1~17_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add2~7\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add2~8_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add2~9\);

-- Location: LCCOMB_X17_Y13_N28
\inst|alu1|unidad_aritmetica|divi|Add2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add2~10_combout\ = (\inst|alu1|unidad_aritmetica|divi|Add1~16_combout\ & ((\inst|REG_B\(5) & (!\inst|alu1|unidad_aritmetica|divi|Add2~9\)) # (!\inst|REG_B\(5) & (\inst|alu1|unidad_aritmetica|divi|Add2~9\ & VCC)))) # 
-- (!\inst|alu1|unidad_aritmetica|divi|Add1~16_combout\ & ((\inst|REG_B\(5) & ((\inst|alu1|unidad_aritmetica|divi|Add2~9\) # (GND))) # (!\inst|REG_B\(5) & (!\inst|alu1|unidad_aritmetica|divi|Add2~9\))))
-- \inst|alu1|unidad_aritmetica|divi|Add2~11\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add1~16_combout\ & (\inst|REG_B\(5) & !\inst|alu1|unidad_aritmetica|divi|Add2~9\)) # (!\inst|alu1|unidad_aritmetica|divi|Add1~16_combout\ & ((\inst|REG_B\(5)) # 
-- (!\inst|alu1|unidad_aritmetica|divi|Add2~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add1~16_combout\,
	datab => \inst|REG_B\(5),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add2~9\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add2~10_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add2~11\);

-- Location: LCCOMB_X17_Y13_N30
\inst|alu1|unidad_aritmetica|divi|Add2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add2~12_combout\ = \inst|REG_B\(6) $ (\inst|alu1|unidad_aritmetica|divi|Add2~11\ $ (\inst|alu1|unidad_aritmetica|divi|Add1~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|REG_B\(6),
	datad => \inst|alu1|unidad_aritmetica|divi|Add1~15_combout\,
	cin => \inst|alu1|unidad_aritmetica|divi|Add2~11\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add2~12_combout\);

-- Location: LCCOMB_X18_Y9_N24
\inst|alu1|unidad_aritmetica|divi|Add2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add2~14_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan2~14_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add1~15_combout\)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan2~14_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add2~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|unidad_aritmetica|divi|LessThan2~14_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|Add1~15_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|Add2~12_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add2~14_combout\);

-- Location: LCCOMB_X18_Y9_N30
\inst|alu1|unidad_aritmetica|divi|Add2~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add2~15_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan2~14_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add1~16_combout\)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan2~14_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add2~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|unidad_aritmetica|divi|Add1~16_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|Add2~10_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan2~14_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add2~15_combout\);

-- Location: LCCOMB_X18_Y9_N20
\inst|alu1|unidad_aritmetica|divi|Add2~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add2~16_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan2~14_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add1~17_combout\)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan2~14_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add2~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add1~17_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|Add2~8_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan2~14_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add2~16_combout\);

-- Location: LCCOMB_X17_Y9_N30
\inst|alu1|unidad_aritmetica|divi|Add2~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add2~17_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan2~14_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add1~18_combout\)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan2~14_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add2~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add1~18_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|Add2~6_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan2~14_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add2~17_combout\);

-- Location: LCCOMB_X17_Y9_N8
\inst|alu1|unidad_aritmetica|divi|Add2~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add2~18_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan2~14_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add1~19_combout\)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan2~14_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add1~19_combout\,
	datab => \inst|alu1|unidad_aritmetica|divi|Add2~4_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan2~14_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add2~18_combout\);

-- Location: LCCOMB_X17_Y9_N6
\inst|alu1|unidad_aritmetica|divi|Add2~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add2~19_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan2~14_combout\ & ((\inst|alu1|unidad_aritmetica|divi|Add1~20_combout\))) # (!\inst|alu1|unidad_aritmetica|divi|LessThan2~14_combout\ & 
-- (\inst|alu1|unidad_aritmetica|divi|Add2~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add2~2_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|Add1~20_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan2~14_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add2~19_combout\);

-- Location: LCCOMB_X17_Y9_N4
\inst|alu1|unidad_aritmetica|divi|Add2~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add2~20_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan2~14_combout\ & (\inst|REG_A\(5))) # (!\inst|alu1|unidad_aritmetica|divi|LessThan2~14_combout\ & ((\inst|alu1|unidad_aritmetica|divi|Add2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|REG_A\(5),
	datac => \inst|alu1|unidad_aritmetica|divi|Add2~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan2~14_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add2~20_combout\);

-- Location: LCCOMB_X18_Y9_N2
\inst|alu1|unidad_aritmetica|divi|LessThan3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan3~1_cout\ = CARRY((\inst|REG_B\(0) & !\inst|REG_A\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(0),
	datab => \inst|REG_A\(4),
	datad => VCC,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan3~1_cout\);

-- Location: LCCOMB_X18_Y9_N4
\inst|alu1|unidad_aritmetica|divi|LessThan3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan3~3_cout\ = CARRY((\inst|REG_B\(1) & (\inst|alu1|unidad_aritmetica|divi|Add2~20_combout\ & !\inst|alu1|unidad_aritmetica|divi|LessThan3~1_cout\)) # (!\inst|REG_B\(1) & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add2~20_combout\) # (!\inst|alu1|unidad_aritmetica|divi|LessThan3~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(1),
	datab => \inst|alu1|unidad_aritmetica|divi|Add2~20_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan3~1_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan3~3_cout\);

-- Location: LCCOMB_X18_Y9_N6
\inst|alu1|unidad_aritmetica|divi|LessThan3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan3~5_cout\ = CARRY((\inst|REG_B\(2) & ((!\inst|alu1|unidad_aritmetica|divi|LessThan3~3_cout\) # (!\inst|alu1|unidad_aritmetica|divi|Add2~19_combout\))) # (!\inst|REG_B\(2) & 
-- (!\inst|alu1|unidad_aritmetica|divi|Add2~19_combout\ & !\inst|alu1|unidad_aritmetica|divi|LessThan3~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(2),
	datab => \inst|alu1|unidad_aritmetica|divi|Add2~19_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan3~3_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan3~5_cout\);

-- Location: LCCOMB_X18_Y9_N8
\inst|alu1|unidad_aritmetica|divi|LessThan3~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan3~7_cout\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add2~18_combout\ & ((!\inst|alu1|unidad_aritmetica|divi|LessThan3~5_cout\) # (!\inst|REG_B\(3)))) # (!\inst|alu1|unidad_aritmetica|divi|Add2~18_combout\ & 
-- (!\inst|REG_B\(3) & !\inst|alu1|unidad_aritmetica|divi|LessThan3~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add2~18_combout\,
	datab => \inst|REG_B\(3),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan3~5_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan3~7_cout\);

-- Location: LCCOMB_X18_Y9_N10
\inst|alu1|unidad_aritmetica|divi|LessThan3~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan3~9_cout\ = CARRY((\inst|REG_B\(4) & ((!\inst|alu1|unidad_aritmetica|divi|LessThan3~7_cout\) # (!\inst|alu1|unidad_aritmetica|divi|Add2~17_combout\))) # (!\inst|REG_B\(4) & 
-- (!\inst|alu1|unidad_aritmetica|divi|Add2~17_combout\ & !\inst|alu1|unidad_aritmetica|divi|LessThan3~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(4),
	datab => \inst|alu1|unidad_aritmetica|divi|Add2~17_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan3~7_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan3~9_cout\);

-- Location: LCCOMB_X18_Y9_N12
\inst|alu1|unidad_aritmetica|divi|LessThan3~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan3~11_cout\ = CARRY((\inst|REG_B\(5) & (\inst|alu1|unidad_aritmetica|divi|Add2~16_combout\ & !\inst|alu1|unidad_aritmetica|divi|LessThan3~9_cout\)) # (!\inst|REG_B\(5) & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add2~16_combout\) # (!\inst|alu1|unidad_aritmetica|divi|LessThan3~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(5),
	datab => \inst|alu1|unidad_aritmetica|divi|Add2~16_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan3~9_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan3~11_cout\);

-- Location: LCCOMB_X18_Y9_N14
\inst|alu1|unidad_aritmetica|divi|LessThan3~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan3~13_cout\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add2~15_combout\ & (\inst|REG_B\(6) & !\inst|alu1|unidad_aritmetica|divi|LessThan3~11_cout\)) # (!\inst|alu1|unidad_aritmetica|divi|Add2~15_combout\ & 
-- ((\inst|REG_B\(6)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan3~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add2~15_combout\,
	datab => \inst|REG_B\(6),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan3~11_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan3~13_cout\);

-- Location: LCCOMB_X18_Y9_N16
\inst|alu1|unidad_aritmetica|divi|LessThan3~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan3~14_combout\ = (\inst|REG_B\(7) & ((\inst|alu1|unidad_aritmetica|divi|LessThan3~13_cout\) # (!\inst|alu1|unidad_aritmetica|divi|Add2~14_combout\))) # (!\inst|REG_B\(7) & 
-- (\inst|alu1|unidad_aritmetica|divi|LessThan3~13_cout\ & !\inst|alu1|unidad_aritmetica|divi|Add2~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|REG_B\(7),
	datad => \inst|alu1|unidad_aritmetica|divi|Add2~14_combout\,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan3~13_cout\,
	combout => \inst|alu1|unidad_aritmetica|divi|LessThan3~14_combout\);

-- Location: LCCOMB_X14_Y9_N28
\inst|alu1|unidad_aritmetica|mult|multi3|s3|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi3|s3|Cout~0_combout\ = (\inst|REG_B\(3) & (\inst|alu1|unidad_aritmetica|mult|multi2|s3|Suma~0_combout\ & \inst|REG_A\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(3),
	datac => \inst|alu1|unidad_aritmetica|mult|multi2|s3|Suma~0_combout\,
	datad => \inst|REG_A\(0),
	combout => \inst|alu1|unidad_aritmetica|mult|multi3|s3|Cout~0_combout\);

-- Location: LCCOMB_X13_Y9_N4
\inst|alu1|unidad_aritmetica|mult|inter[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|inter\(3) = (\inst|REG_A\(3) & \inst|REG_B\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|REG_A\(3),
	datad => \inst|REG_B\(0),
	combout => \inst|alu1|unidad_aritmetica|mult|inter\(3));

-- Location: LCCOMB_X13_Y9_N28
\inst|alu1|unidad_aritmetica|mult|multi1|s1|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi1|s1|Cout~0_combout\ = (\inst|REG_B\(1) & (\inst|REG_A\(0) & (\inst|REG_B\(0) & \inst|REG_A\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(1),
	datab => \inst|REG_A\(0),
	datac => \inst|REG_B\(0),
	datad => \inst|REG_A\(1),
	combout => \inst|alu1|unidad_aritmetica|mult|multi1|s1|Cout~0_combout\);

-- Location: LCCOMB_X13_Y9_N30
\inst|alu1|unidad_aritmetica|mult|inter[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|inter\(2) = (\inst|REG_B\(0) & \inst|REG_A\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|REG_B\(0),
	datad => \inst|REG_A\(2),
	combout => \inst|alu1|unidad_aritmetica|mult|inter\(2));

-- Location: LCCOMB_X13_Y9_N18
\inst|alu1|unidad_aritmetica|mult|multi1|s2|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi1|s2|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi1|s1|Cout~0_combout\ & ((\inst|alu1|unidad_aritmetica|mult|inter\(2)) # ((\inst|REG_B\(1) & \inst|REG_A\(1))))) # 
-- (!\inst|alu1|unidad_aritmetica|mult|multi1|s1|Cout~0_combout\ & (\inst|REG_B\(1) & (\inst|alu1|unidad_aritmetica|mult|inter\(2) & \inst|REG_A\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(1),
	datab => \inst|alu1|unidad_aritmetica|mult|multi1|s1|Cout~0_combout\,
	datac => \inst|alu1|unidad_aritmetica|mult|inter\(2),
	datad => \inst|REG_A\(1),
	combout => \inst|alu1|unidad_aritmetica|mult|multi1|s2|Cout~0_combout\);

-- Location: LCCOMB_X13_Y9_N0
\inst|alu1|unidad_aritmetica|mult|multi1|s3|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi1|s3|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|mult|inter\(3) & ((\inst|alu1|unidad_aritmetica|mult|multi1|s2|Cout~0_combout\) # ((\inst|REG_B\(1) & \inst|REG_A\(2))))) # 
-- (!\inst|alu1|unidad_aritmetica|mult|inter\(3) & (\inst|REG_B\(1) & (\inst|REG_A\(2) & \inst|alu1|unidad_aritmetica|mult|multi1|s2|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(1),
	datab => \inst|REG_A\(2),
	datac => \inst|alu1|unidad_aritmetica|mult|inter\(3),
	datad => \inst|alu1|unidad_aritmetica|mult|multi1|s2|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi1|s3|Cout~0_combout\);

-- Location: LCCOMB_X14_Y9_N24
\inst|alu1|unidad_aritmetica|mult|inter[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|inter\(4) = (\inst|REG_A\(4) & \inst|REG_B\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|REG_A\(4),
	datad => \inst|REG_B\(0),
	combout => \inst|alu1|unidad_aritmetica|mult|inter\(4));

-- Location: LCCOMB_X13_Y9_N8
\inst|alu1|unidad_aritmetica|mult|multi1|s4|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi1|s4|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|mult|multi1|s3|Cout~0_combout\ $ (\inst|alu1|unidad_aritmetica|mult|inter\(4) $ (((\inst|REG_B\(1) & \inst|REG_A\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(1),
	datab => \inst|alu1|unidad_aritmetica|mult|multi1|s3|Cout~0_combout\,
	datac => \inst|REG_A\(3),
	datad => \inst|alu1|unidad_aritmetica|mult|inter\(4),
	combout => \inst|alu1|unidad_aritmetica|mult|multi1|s4|Suma~0_combout\);

-- Location: LCCOMB_X13_Y9_N26
\inst|alu1|unidad_aritmetica|mult|multi1|s3|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi1|s3|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|mult|inter\(3) $ (\inst|alu1|unidad_aritmetica|mult|multi1|s2|Cout~0_combout\ $ (((\inst|REG_B\(1) & \inst|REG_A\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(1),
	datab => \inst|REG_A\(2),
	datac => \inst|alu1|unidad_aritmetica|mult|inter\(3),
	datad => \inst|alu1|unidad_aritmetica|mult|multi1|s2|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi1|s3|Suma~0_combout\);

-- Location: LCCOMB_X13_Y9_N10
\inst|alu1|unidad_aritmetica|mult|multi2|s3|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi2|s3|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi1|s3|Suma~0_combout\ & ((\inst|alu1|unidad_aritmetica|mult|multi2|s2|Cout~0_combout\) # ((\inst|REG_B\(2) & \inst|REG_A\(1))))) # 
-- (!\inst|alu1|unidad_aritmetica|mult|multi1|s3|Suma~0_combout\ & (\inst|alu1|unidad_aritmetica|mult|multi2|s2|Cout~0_combout\ & (\inst|REG_B\(2) & \inst|REG_A\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|multi1|s3|Suma~0_combout\,
	datab => \inst|alu1|unidad_aritmetica|mult|multi2|s2|Cout~0_combout\,
	datac => \inst|REG_B\(2),
	datad => \inst|REG_A\(1),
	combout => \inst|alu1|unidad_aritmetica|mult|multi2|s3|Cout~0_combout\);

-- Location: LCCOMB_X13_Y9_N14
\inst|alu1|unidad_aritmetica|mult|multi2|s4|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi2|s4|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|mult|multi1|s4|Suma~0_combout\ $ (\inst|alu1|unidad_aritmetica|mult|multi2|s3|Cout~0_combout\ $ (((\inst|REG_B\(2) & \inst|REG_A\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(2),
	datab => \inst|REG_A\(2),
	datac => \inst|alu1|unidad_aritmetica|mult|multi1|s4|Suma~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|mult|multi2|s3|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi2|s4|Suma~0_combout\);

-- Location: LCCOMB_X14_Y9_N2
\inst|alu1|unidad_aritmetica|mult|multi3|s4|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi3|s4|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|mult|multi3|s3|Cout~0_combout\ $ (\inst|alu1|unidad_aritmetica|mult|multi2|s4|Suma~0_combout\ $ (((\inst|REG_A\(1) & \inst|REG_B\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(1),
	datab => \inst|alu1|unidad_aritmetica|mult|multi3|s3|Cout~0_combout\,
	datac => \inst|REG_B\(3),
	datad => \inst|alu1|unidad_aritmetica|mult|multi2|s4|Suma~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi3|s4|Suma~0_combout\);

-- Location: LCCOMB_X14_Y9_N12
\inst|alu1|unidad_aritmetica|mult|multi4|s4|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi4|s4|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|mult|multi3|s4|Suma~0_combout\ $ (((\inst|REG_A\(0) & \inst|REG_B\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|REG_A\(0),
	datac => \inst|REG_B\(4),
	datad => \inst|alu1|unidad_aritmetica|mult|multi3|s4|Suma~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi4|s4|Suma~0_combout\);

-- Location: LCCOMB_X14_Y15_N12
\inst|alu1|unidad_aritmetica|suma|Xop[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|Xop\(4) = \inst|REG_A\(4) $ (\inst|REG_A\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|REG_A\(4),
	datac => \inst|REG_A\(9),
	combout => \inst|alu1|unidad_aritmetica|suma|Xop\(4));

-- Location: LCCOMB_X14_Y15_N28
\inst|alu1|unidad_aritmetica|suma|Yop~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|Yop~3_combout\ = \inst|REG_B\(4) $ (\inst|REG_B\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|REG_B\(4),
	datac => \inst|REG_B\(9),
	combout => \inst|alu1|unidad_aritmetica|suma|Yop~3_combout\);

-- Location: LCCOMB_X14_Y15_N6
\inst|alu1|unidad_aritmetica|suma|Xop[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|Xop\(3) = \inst|REG_A\(9) $ (\inst|REG_A\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|REG_A\(9),
	datad => \inst|REG_A\(3),
	combout => \inst|alu1|unidad_aritmetica|suma|Xop\(3));

-- Location: LCCOMB_X13_Y15_N4
\inst|alu1|unidad_aritmetica|suma|Xop[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|Xop\(2) = \inst|REG_A\(9) $ (\inst|REG_A\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(9),
	datac => \inst|REG_A\(2),
	combout => \inst|alu1|unidad_aritmetica|suma|Xop\(2));

-- Location: LCCOMB_X12_Y15_N26
\inst|alu1|unidad_aritmetica|suma|s0|Cout2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|s0|Cout2~0_combout\ = (!\inst|REG_B\(0) & (!\inst|REG_A\(0) & (\inst|REG_A\(9) & \inst|REG_B\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(0),
	datab => \inst|REG_A\(0),
	datac => \inst|REG_A\(9),
	datad => \inst|REG_B\(9),
	combout => \inst|alu1|unidad_aritmetica|suma|s0|Cout2~0_combout\);

-- Location: LCCOMB_X12_Y15_N28
\inst|alu1|unidad_aritmetica|suma|Xop[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|Xop\(1) = \inst|REG_A\(9) $ (\inst|REG_A\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|REG_A\(9),
	datad => \inst|REG_A\(1),
	combout => \inst|alu1|unidad_aritmetica|suma|Xop\(1));

-- Location: LCCOMB_X12_Y15_N4
\inst|alu1|unidad_aritmetica|suma|s1|Cout2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|s1|Cout2~0_combout\ = (\inst|alu1|unidad_aritmetica|suma|s0|Cout2~0_combout\ & (\inst|alu1|unidad_aritmetica|suma|Xop\(1) & (\inst|REG_B\(1) $ (\inst|REG_B\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|suma|s0|Cout2~0_combout\,
	datab => \inst|alu1|unidad_aritmetica|suma|Xop\(1),
	datac => \inst|REG_B\(1),
	datad => \inst|REG_B\(9),
	combout => \inst|alu1|unidad_aritmetica|suma|s1|Cout2~0_combout\);

-- Location: LCCOMB_X13_Y15_N22
\inst|alu1|unidad_aritmetica|suma|s2|Cout2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|s2|Cout2~0_combout\ = (\inst|alu1|unidad_aritmetica|suma|Xop\(2) & (\inst|alu1|unidad_aritmetica|suma|s1|Cout2~0_combout\ & (\inst|REG_B\(9) $ (\inst|REG_B\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(9),
	datab => \inst|alu1|unidad_aritmetica|suma|Xop\(2),
	datac => \inst|alu1|unidad_aritmetica|suma|s1|Cout2~0_combout\,
	datad => \inst|REG_B\(2),
	combout => \inst|alu1|unidad_aritmetica|suma|s2|Cout2~0_combout\);

-- Location: LCCOMB_X14_Y15_N24
\inst|alu1|unidad_aritmetica|suma|s3|Cout2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|s3|Cout2~0_combout\ = (\inst|alu1|unidad_aritmetica|suma|Xop\(3) & (\inst|alu1|unidad_aritmetica|suma|s2|Cout2~0_combout\ & (\inst|REG_B\(3) $ (\inst|REG_B\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|suma|Xop\(3),
	datab => \inst|REG_B\(3),
	datac => \inst|REG_B\(9),
	datad => \inst|alu1|unidad_aritmetica|suma|s2|Cout2~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|suma|s3|Cout2~0_combout\);

-- Location: LCCOMB_X13_Y15_N8
\inst|alu1|unidad_logica|salida~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|salida~4_combout\ = (\inst|REG_B\(9) & \inst|REG_A\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(9),
	datad => \inst|REG_A\(9),
	combout => \inst|alu1|unidad_logica|salida~4_combout\);

-- Location: LCCOMB_X12_Y15_N10
\inst|alu1|unidad_aritmetica|suma|s0|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|s0|Cout~0_combout\ = (\inst|REG_B\(0) & ((\inst|REG_A\(0)) # ((\inst|REG_A\(9))))) # (!\inst|REG_B\(0) & ((\inst|REG_B\(9)) # ((!\inst|REG_A\(0) & \inst|REG_A\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(0),
	datab => \inst|REG_A\(0),
	datac => \inst|REG_A\(9),
	datad => \inst|REG_B\(9),
	combout => \inst|alu1|unidad_aritmetica|suma|s0|Cout~0_combout\);

-- Location: LCCOMB_X12_Y15_N24
\inst|alu1|unidad_aritmetica|suma|s1|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|s1|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|suma|s0|Cout~0_combout\ & ((\inst|alu1|unidad_aritmetica|suma|Xop\(1)) # (\inst|REG_B\(9) $ (\inst|REG_B\(1))))) # (!\inst|alu1|unidad_aritmetica|suma|s0|Cout~0_combout\ 
-- & (\inst|alu1|unidad_aritmetica|suma|Xop\(1) & (\inst|REG_B\(9) $ (\inst|REG_B\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|suma|s0|Cout~0_combout\,
	datab => \inst|REG_B\(9),
	datac => \inst|REG_B\(1),
	datad => \inst|alu1|unidad_aritmetica|suma|Xop\(1),
	combout => \inst|alu1|unidad_aritmetica|suma|s1|Cout~0_combout\);

-- Location: LCCOMB_X13_Y15_N10
\inst|alu1|unidad_aritmetica|suma|s1|Cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|s1|Cout~1_combout\ = (\inst|alu1|unidad_aritmetica|suma|s1|Cout~0_combout\) # ((!\inst|REG_A\(0) & (!\inst|REG_B\(0) & \inst|alu1|unidad_logica|salida~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(0),
	datab => \inst|REG_B\(0),
	datac => \inst|alu1|unidad_logica|salida~4_combout\,
	datad => \inst|alu1|unidad_aritmetica|suma|s1|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|suma|s1|Cout~1_combout\);

-- Location: LCCOMB_X13_Y15_N16
\inst|alu1|unidad_aritmetica|suma|s2|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|s2|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|suma|Xop\(2) & ((\inst|alu1|unidad_aritmetica|suma|s1|Cout~1_combout\) # (\inst|REG_B\(2) $ (\inst|REG_B\(9))))) # (!\inst|alu1|unidad_aritmetica|suma|Xop\(2) & 
-- (\inst|alu1|unidad_aritmetica|suma|s1|Cout~1_combout\ & (\inst|REG_B\(2) $ (\inst|REG_B\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(2),
	datab => \inst|alu1|unidad_aritmetica|suma|Xop\(2),
	datac => \inst|REG_B\(9),
	datad => \inst|alu1|unidad_aritmetica|suma|s1|Cout~1_combout\,
	combout => \inst|alu1|unidad_aritmetica|suma|s2|Cout~0_combout\);

-- Location: LCCOMB_X13_Y15_N2
\inst|alu1|unidad_aritmetica|suma|s2|Cout\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|s2|Cout~combout\ = (\inst|alu1|unidad_aritmetica|suma|s1|Cout2~0_combout\) # (\inst|alu1|unidad_aritmetica|suma|s2|Cout~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|alu1|unidad_aritmetica|suma|s1|Cout2~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|suma|s2|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|suma|s2|Cout~combout\);

-- Location: LCCOMB_X14_Y15_N2
\inst|alu1|unidad_aritmetica|suma|s3|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|s3|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|suma|Xop\(3) & ((\inst|alu1|unidad_aritmetica|suma|s2|Cout~combout\) # (\inst|REG_B\(3) $ (\inst|REG_B\(9))))) # (!\inst|alu1|unidad_aritmetica|suma|Xop\(3) & 
-- (\inst|alu1|unidad_aritmetica|suma|s2|Cout~combout\ & (\inst|REG_B\(3) $ (\inst|REG_B\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|suma|Xop\(3),
	datab => \inst|REG_B\(3),
	datac => \inst|REG_B\(9),
	datad => \inst|alu1|unidad_aritmetica|suma|s2|Cout~combout\,
	combout => \inst|alu1|unidad_aritmetica|suma|s3|Cout~0_combout\);

-- Location: LCCOMB_X14_Y15_N20
\inst|alu1|unidad_aritmetica|suma|s3|Cout\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|s3|Cout~combout\ = (\inst|alu1|unidad_aritmetica|suma|s2|Cout2~0_combout\) # (\inst|alu1|unidad_aritmetica|suma|s3|Cout~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|unidad_aritmetica|suma|s2|Cout2~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|suma|s3|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|suma|s3|Cout~combout\);

-- Location: LCCOMB_X14_Y15_N16
\inst|alu1|unidad_aritmetica|suma|s4|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|s4|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|suma|Xop\(4) $ (\inst|alu1|unidad_aritmetica|suma|Yop~3_combout\ $ (\inst|alu1|unidad_aritmetica|suma|s3|Cout2~0_combout\ $ 
-- (\inst|alu1|unidad_aritmetica|suma|s3|Cout~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|suma|Xop\(4),
	datab => \inst|alu1|unidad_aritmetica|suma|Yop~3_combout\,
	datac => \inst|alu1|unidad_aritmetica|suma|s3|Cout2~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|suma|s3|Cout~combout\,
	combout => \inst|alu1|unidad_aritmetica|suma|s4|Suma~0_combout\);

-- Location: LCCOMB_X14_Y9_N4
\inst|alu1|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux5~0_combout\ = (\inst|alu1|Mux10~0_combout\ & ((\inst|alu1|unidad_aritmetica|mult|multi4|s4|Suma~0_combout\) # ((\inst|alu1|Mux11~0_combout\)))) # (!\inst|alu1|Mux10~0_combout\ & (((\inst|alu1|unidad_aritmetica|suma|s4|Suma~0_combout\ & 
-- !\inst|alu1|Mux11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|multi4|s4|Suma~0_combout\,
	datab => \inst|alu1|Mux10~0_combout\,
	datac => \inst|alu1|unidad_aritmetica|suma|s4|Suma~0_combout\,
	datad => \inst|alu1|Mux11~0_combout\,
	combout => \inst|alu1|Mux5~0_combout\);

-- Location: LCCOMB_X12_Y15_N6
\inst|alu1|unidad_aritmetica|resta|s0|Cout2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|resta|s0|Cout2~0_combout\ = (\inst|REG_B\(0) & (!\inst|REG_A\(9) & (\inst|REG_A\(0) & \inst|REG_B\(9)))) # (!\inst|REG_B\(0) & (\inst|REG_A\(9) & (!\inst|REG_A\(0) & !\inst|REG_B\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(0),
	datab => \inst|REG_A\(9),
	datac => \inst|REG_A\(0),
	datad => \inst|REG_B\(9),
	combout => \inst|alu1|unidad_aritmetica|resta|s0|Cout2~0_combout\);

-- Location: LCCOMB_X12_Y15_N22
\inst|alu1|unidad_aritmetica|suma|Yop~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|Yop~5_combout\ = \inst|REG_B\(1) $ (\inst|REG_B\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|REG_B\(1),
	datad => \inst|REG_B\(9),
	combout => \inst|alu1|unidad_aritmetica|suma|Yop~5_combout\);

-- Location: LCCOMB_X12_Y15_N20
\inst|alu1|unidad_aritmetica|resta|s0|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|resta|s0|Cout~0_combout\ = (\inst|REG_B\(0) & ((\inst|REG_A\(9)) # ((\inst|REG_A\(0)) # (\inst|REG_B\(9))))) # (!\inst|REG_B\(0) & ((\inst|REG_A\(9) $ (\inst|REG_A\(0))) # (!\inst|REG_B\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(0),
	datab => \inst|REG_A\(9),
	datac => \inst|REG_A\(0),
	datad => \inst|REG_B\(9),
	combout => \inst|alu1|unidad_aritmetica|resta|s0|Cout~0_combout\);

-- Location: LCCOMB_X12_Y15_N16
\inst|alu1|unidad_aritmetica|resta|s1|Cout2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|resta|s1|Cout2~0_combout\ = (\inst|alu1|unidad_aritmetica|resta|s0|Cout2~0_combout\ & (\inst|alu1|unidad_aritmetica|suma|Xop\(1) & (!\inst|alu1|unidad_aritmetica|suma|Yop~5_combout\ & 
-- \inst|alu1|unidad_aritmetica|resta|s0|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|resta|s0|Cout2~0_combout\,
	datab => \inst|alu1|unidad_aritmetica|suma|Xop\(1),
	datac => \inst|alu1|unidad_aritmetica|suma|Yop~5_combout\,
	datad => \inst|alu1|unidad_aritmetica|resta|s0|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|resta|s1|Cout2~0_combout\);

-- Location: LCCOMB_X13_Y15_N0
\inst|alu1|unidad_aritmetica|suma|Yop~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|Yop~6_combout\ = \inst|REG_B\(9) $ (\inst|REG_B\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|REG_B\(9),
	datad => \inst|REG_B\(2),
	combout => \inst|alu1|unidad_aritmetica|suma|Yop~6_combout\);

-- Location: LCCOMB_X12_Y15_N14
\inst|alu1|unidad_aritmetica|resta|s1|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|resta|s1|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|suma|Xop\(1) & (((\inst|alu1|unidad_aritmetica|resta|s0|Cout~0_combout\) # (!\inst|alu1|unidad_aritmetica|suma|Yop~5_combout\)))) # 
-- (!\inst|alu1|unidad_aritmetica|suma|Xop\(1) & (\inst|alu1|unidad_aritmetica|resta|s0|Cout~0_combout\ & ((\inst|alu1|unidad_aritmetica|resta|s0|Cout2~0_combout\) # (!\inst|alu1|unidad_aritmetica|suma|Yop~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|resta|s0|Cout2~0_combout\,
	datab => \inst|alu1|unidad_aritmetica|suma|Xop\(1),
	datac => \inst|alu1|unidad_aritmetica|suma|Yop~5_combout\,
	datad => \inst|alu1|unidad_aritmetica|resta|s0|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|resta|s1|Cout~0_combout\);

-- Location: LCCOMB_X13_Y15_N26
\inst|alu1|unidad_aritmetica|resta|s2|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|resta|s2|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|resta|s1|Cout2~0_combout\) # ((\inst|alu1|unidad_aritmetica|suma|Yop~6_combout\ & (\inst|alu1|unidad_aritmetica|suma|Xop\(2) & 
-- \inst|alu1|unidad_aritmetica|resta|s1|Cout~0_combout\)) # (!\inst|alu1|unidad_aritmetica|suma|Yop~6_combout\ & ((\inst|alu1|unidad_aritmetica|suma|Xop\(2)) # (\inst|alu1|unidad_aritmetica|resta|s1|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|resta|s1|Cout2~0_combout\,
	datab => \inst|alu1|unidad_aritmetica|suma|Yop~6_combout\,
	datac => \inst|alu1|unidad_aritmetica|suma|Xop\(2),
	datad => \inst|alu1|unidad_aritmetica|resta|s1|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|resta|s2|Cout~0_combout\);

-- Location: LCCOMB_X13_Y15_N24
\inst|alu1|unidad_aritmetica|resta|s2|Cout2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|resta|s2|Cout2~4_combout\ = (\inst|alu1|unidad_aritmetica|resta|s1|Cout2~0_combout\ & (!\inst|alu1|unidad_aritmetica|suma|Yop~6_combout\ & (\inst|REG_A\(9) $ (\inst|REG_A\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(9),
	datab => \inst|REG_A\(2),
	datac => \inst|alu1|unidad_aritmetica|resta|s1|Cout2~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|suma|Yop~6_combout\,
	combout => \inst|alu1|unidad_aritmetica|resta|s2|Cout2~4_combout\);

-- Location: LCCOMB_X14_Y15_N8
\inst|alu1|unidad_aritmetica|suma|Yop~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|Yop~2_combout\ = \inst|REG_B\(3) $ (\inst|REG_B\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|REG_B\(3),
	datac => \inst|REG_B\(9),
	combout => \inst|alu1|unidad_aritmetica|suma|Yop~2_combout\);

-- Location: LCCOMB_X14_Y15_N22
\inst|alu1|unidad_aritmetica|resta|s3|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|resta|s3|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|resta|s2|Cout2~4_combout\) # ((\inst|alu1|unidad_aritmetica|resta|s2|Cout~0_combout\ & ((\inst|alu1|unidad_aritmetica|suma|Xop\(3)) # 
-- (!\inst|alu1|unidad_aritmetica|suma|Yop~2_combout\))) # (!\inst|alu1|unidad_aritmetica|resta|s2|Cout~0_combout\ & (!\inst|alu1|unidad_aritmetica|suma|Yop~2_combout\ & \inst|alu1|unidad_aritmetica|suma|Xop\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|resta|s2|Cout~0_combout\,
	datab => \inst|alu1|unidad_aritmetica|resta|s2|Cout2~4_combout\,
	datac => \inst|alu1|unidad_aritmetica|suma|Yop~2_combout\,
	datad => \inst|alu1|unidad_aritmetica|suma|Xop\(3),
	combout => \inst|alu1|unidad_aritmetica|resta|s3|Cout~0_combout\);

-- Location: LCCOMB_X14_Y15_N10
\inst|alu1|unidad_aritmetica|resta|s4|Suma\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|resta|s4|Suma~combout\ = \inst|alu1|unidad_aritmetica|suma|Xop\(4) $ (\inst|alu1|unidad_aritmetica|suma|Yop~3_combout\ $ (\inst|alu1|unidad_aritmetica|resta|s3|Cout~0_combout\ $ 
-- (\inst|alu1|unidad_aritmetica|resta|s3|Cout2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|suma|Xop\(4),
	datab => \inst|alu1|unidad_aritmetica|suma|Yop~3_combout\,
	datac => \inst|alu1|unidad_aritmetica|resta|s3|Cout~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|resta|s3|Cout2~4_combout\,
	combout => \inst|alu1|unidad_aritmetica|resta|s4|Suma~combout\);

-- Location: LCCOMB_X14_Y9_N10
\inst|alu1|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux5~1_combout\ = (\inst|alu1|Mux11~0_combout\ & ((\inst|alu1|Mux5~0_combout\ & (!\inst|alu1|unidad_aritmetica|divi|LessThan3~14_combout\)) # (!\inst|alu1|Mux5~0_combout\ & ((!\inst|alu1|unidad_aritmetica|resta|s4|Suma~combout\))))) # 
-- (!\inst|alu1|Mux11~0_combout\ & (((\inst|alu1|Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|LessThan3~14_combout\,
	datab => \inst|alu1|Mux11~0_combout\,
	datac => \inst|alu1|Mux5~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|resta|s4|Suma~combout\,
	combout => \inst|alu1|Mux5~1_combout\);

-- Location: LCCOMB_X14_Y9_N30
\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~10_combout\ = (!\inst|alu1|Mux10~0_combout\ & ((\inst|alu1|Mux11~0_combout\ & ((\inst|alu1|unidad_aritmetica|resta|s4|Suma~combout\))) # (!\inst|alu1|Mux11~0_combout\ & 
-- (!\inst|alu1|unidad_aritmetica|suma|s4|Suma~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux11~0_combout\,
	datab => \inst|alu1|Mux10~0_combout\,
	datac => \inst|alu1|unidad_aritmetica|suma|s4|Suma~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|resta|s4|Suma~combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~10_combout\);

-- Location: LCCOMB_X14_Y9_N14
\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~11_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~10_combout\) # ((!\inst|alu1|unidad_aritmetica|mult|multi4|s4|Suma~0_combout\ & \inst|alu1|Mux10~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|multi4|s4|Suma~0_combout\,
	datab => \inst|alu1|Mux10~0_combout\,
	datac => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~10_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~11_combout\);

-- Location: LCCOMB_X13_Y9_N2
\inst|alu1|unidad_logica|salida~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|salida~5_combout\ = (\inst|REG_B\(1) & \inst|REG_A\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|REG_B\(1),
	datad => \inst|REG_A\(1),
	combout => \inst|alu1|unidad_logica|salida~5_combout\);

-- Location: LCCOMB_X13_Y9_N22
\inst|alu1|unidad_aritmetica|mult|multi2|s2|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi2|s2|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|mult|inter\(10) $ (\inst|alu1|unidad_aritmetica|mult|multi1|s1|Cout~0_combout\ $ (\inst|alu1|unidad_aritmetica|mult|inter\(2) $ 
-- (\inst|alu1|unidad_logica|salida~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|inter\(10),
	datab => \inst|alu1|unidad_aritmetica|mult|multi1|s1|Cout~0_combout\,
	datac => \inst|alu1|unidad_aritmetica|mult|inter\(2),
	datad => \inst|alu1|unidad_logica|salida~5_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi2|s2|Suma~0_combout\);

-- Location: LCCOMB_X13_Y15_N12
\inst|alu1|unidad_aritmetica|resta|s2|Suma\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|resta|s2|Suma~combout\ = \inst|alu1|unidad_aritmetica|resta|s1|Cout2~0_combout\ $ (\inst|alu1|unidad_aritmetica|suma|Yop~6_combout\ $ (\inst|alu1|unidad_aritmetica|suma|Xop\(2) $ 
-- (\inst|alu1|unidad_aritmetica|resta|s1|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|resta|s1|Cout2~0_combout\,
	datab => \inst|alu1|unidad_aritmetica|suma|Yop~6_combout\,
	datac => \inst|alu1|unidad_aritmetica|suma|Xop\(2),
	datad => \inst|alu1|unidad_aritmetica|resta|s1|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|resta|s2|Suma~combout\);

-- Location: LCCOMB_X13_Y15_N18
\inst|alu1|unidad_aritmetica|suma|s2|Suma\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|s2|Suma~combout\ = \inst|alu1|unidad_aritmetica|suma|s1|Cout~1_combout\ $ (\inst|alu1|unidad_aritmetica|suma|s1|Cout2~0_combout\ $ (\inst|alu1|unidad_aritmetica|suma|Xop\(2) $ 
-- (\inst|alu1|unidad_aritmetica|suma|Yop~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|suma|s1|Cout~1_combout\,
	datab => \inst|alu1|unidad_aritmetica|suma|s1|Cout2~0_combout\,
	datac => \inst|alu1|unidad_aritmetica|suma|Xop\(2),
	datad => \inst|alu1|unidad_aritmetica|suma|Yop~6_combout\,
	combout => \inst|alu1|unidad_aritmetica|suma|s2|Suma~combout\);

-- Location: LCCOMB_X13_Y15_N20
\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~14_combout\ = (!\inst|alu1|Mux10~0_combout\ & ((\inst|alu1|Mux11~0_combout\ & (\inst|alu1|unidad_aritmetica|resta|s2|Suma~combout\)) # (!\inst|alu1|Mux11~0_combout\ & 
-- ((!\inst|alu1|unidad_aritmetica|suma|s2|Suma~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|resta|s2|Suma~combout\,
	datab => \inst|alu1|Mux11~0_combout\,
	datac => \inst|alu1|Mux10~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|suma|s2|Suma~combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~14_combout\);

-- Location: LCCOMB_X13_Y15_N30
\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~15_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~14_combout\) # ((!\inst|alu1|unidad_aritmetica|mult|multi2|s2|Suma~0_combout\ & \inst|alu1|Mux10~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|unidad_aritmetica|mult|multi2|s2|Suma~0_combout\,
	datac => \inst|alu1|Mux10~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~14_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~15_combout\);

-- Location: LCCOMB_X14_Y12_N20
\inst|alu1|unidad_aritmetica|mult|multi1|s1|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi1|s1|Suma~0_combout\ = (\inst|REG_B\(1) & (\inst|REG_A\(0) $ (((\inst|REG_A\(1) & \inst|REG_B\(0)))))) # (!\inst|REG_B\(1) & (((\inst|REG_A\(1) & \inst|REG_B\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(1),
	datab => \inst|REG_A\(0),
	datac => \inst|REG_A\(1),
	datad => \inst|REG_B\(0),
	combout => \inst|alu1|unidad_aritmetica|mult|multi1|s1|Suma~0_combout\);

-- Location: LCCOMB_X12_Y15_N30
\inst|alu1|unidad_aritmetica|suma|s1|Suma\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|s1|Suma~combout\ = \inst|alu1|unidad_aritmetica|suma|Yop~5_combout\ $ (\inst|alu1|unidad_aritmetica|suma|Xop\(1) $ (\inst|alu1|unidad_aritmetica|suma|s0|Cout2~0_combout\ $ 
-- (\inst|alu1|unidad_aritmetica|suma|s0|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|suma|Yop~5_combout\,
	datab => \inst|alu1|unidad_aritmetica|suma|Xop\(1),
	datac => \inst|alu1|unidad_aritmetica|suma|s0|Cout2~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|suma|s0|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|suma|s1|Suma~combout\);

-- Location: LCCOMB_X12_Y15_N8
\inst|alu1|unidad_aritmetica|resta|s1|Suma\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|resta|s1|Suma~combout\ = \inst|alu1|unidad_aritmetica|resta|s0|Cout2~0_combout\ $ (\inst|alu1|unidad_aritmetica|resta|s0|Cout~0_combout\ $ (\inst|alu1|unidad_aritmetica|suma|Yop~5_combout\ $ 
-- (\inst|alu1|unidad_aritmetica|suma|Xop\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|resta|s0|Cout2~0_combout\,
	datab => \inst|alu1|unidad_aritmetica|resta|s0|Cout~0_combout\,
	datac => \inst|alu1|unidad_aritmetica|suma|Yop~5_combout\,
	datad => \inst|alu1|unidad_aritmetica|suma|Xop\(1),
	combout => \inst|alu1|unidad_aritmetica|resta|s1|Suma~combout\);

-- Location: LCCOMB_X16_Y12_N24
\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~16_combout\ = (!\inst|alu1|Mux10~0_combout\ & ((\inst|alu1|Mux11~0_combout\ & ((\inst|alu1|unidad_aritmetica|resta|s1|Suma~combout\))) # (!\inst|alu1|Mux11~0_combout\ & 
-- (!\inst|alu1|unidad_aritmetica|suma|s1|Suma~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|suma|s1|Suma~combout\,
	datab => \inst|alu1|Mux10~0_combout\,
	datac => \inst|alu1|Mux11~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|resta|s1|Suma~combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~16_combout\);

-- Location: LCCOMB_X16_Y12_N26
\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~17_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~16_combout\) # ((!\inst|alu1|unidad_aritmetica|mult|multi1|s1|Suma~0_combout\ & \inst|alu1|Mux10~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|unidad_aritmetica|mult|multi1|s1|Suma~0_combout\,
	datac => \inst|alu1|Mux10~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~16_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~17_combout\);

-- Location: LCCOMB_X14_Y12_N2
\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~21_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~17_combout\ & (!\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~20\)) # 
-- (!\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~17_combout\ & ((\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~20\) # (GND)))
-- \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~22\ = CARRY((!\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~20\) # (!\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~17_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~20\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~21_combout\,
	cout => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~22\);

-- Location: LCCOMB_X14_Y12_N4
\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~23_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~15_combout\ & (\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~22\ $ (GND))) # 
-- (!\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~15_combout\ & (!\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~22\ & VCC))
-- \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~24\ = CARRY((\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~15_combout\ & !\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~15_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~22\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~23_combout\,
	cout => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~24\);

-- Location: LCCOMB_X14_Y12_N6
\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~25_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~13_combout\ & (!\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~24\)) # 
-- (!\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~13_combout\ & ((\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~24\) # (GND)))
-- \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~26\ = CARRY((!\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~24\) # (!\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~13_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~24\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~25_combout\,
	cout => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~26\);

-- Location: LCCOMB_X14_Y12_N8
\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~27_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~11_combout\ & (\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~26\ $ (GND))) # 
-- (!\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~11_combout\ & (!\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~26\ & VCC))
-- \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~28\ = CARRY((\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~11_combout\ & !\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~11_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~26\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~27_combout\,
	cout => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~28\);

-- Location: LCCOMB_X13_Y11_N18
\inst|alu1|Mux5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux5~3_combout\ = (\inst|alu1|Mux5~2_combout\ & (((\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~27_combout\)) # (!\inst|alu1|Mux2~3_combout\))) # (!\inst|alu1|Mux5~2_combout\ & (\inst|alu1|Mux2~3_combout\ & 
-- (\inst|alu1|Mux5~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux5~2_combout\,
	datab => \inst|alu1|Mux2~3_combout\,
	datac => \inst|alu1|Mux5~1_combout\,
	datad => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~27_combout\,
	combout => \inst|alu1|Mux5~3_combout\);

-- Location: LCCOMB_X13_Y11_N4
\inst|reggy~206\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~206_combout\ = (\inst|Equal0~0_combout\ & (\inst|REG_D\(4))) # (!\inst|Equal0~0_combout\ & (((\inst|alu1|Mux2~10_combout\) # (\inst|alu1|Mux5~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_D\(4),
	datab => \inst|Equal0~0_combout\,
	datac => \inst|alu1|Mux2~10_combout\,
	datad => \inst|alu1|Mux5~3_combout\,
	combout => \inst|reggy~206_combout\);

-- Location: FF_X12_Y11_N19
\inst|reggy~58\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~206_combout\,
	sload => VCC,
	ena => \inst|reggy~197_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy~58_q\);

-- Location: LCCOMB_X12_Y11_N18
\inst|reggy~174\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~174_combout\ = (\inst|MAR\(1) & ((\inst|MAR\(0)) # ((\inst|reggy~78_q\)))) # (!\inst|MAR\(1) & (!\inst|MAR\(0) & (\inst|reggy~58_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MAR\(1),
	datab => \inst|MAR\(0),
	datac => \inst|reggy~58_q\,
	datad => \inst|reggy~78_q\,
	combout => \inst|reggy~174_combout\);

-- Location: LCCOMB_X12_Y12_N22
\inst|reggy~175\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~175_combout\ = (\inst|reggy~174_combout\ & (((\inst|reggy~88_q\) # (!\inst|MAR\(0))))) # (!\inst|reggy~174_combout\ & (\inst|reggy~68_q\ & ((\inst|MAR\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy~174_combout\,
	datab => \inst|reggy~68_q\,
	datac => \inst|reggy~88_q\,
	datad => \inst|MAR\(0),
	combout => \inst|reggy~175_combout\);

-- Location: LCCOMB_X13_Y12_N24
\inst|reggy~176\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~176_combout\ = (\inst|MAR\(1) & (((\inst|MAR\(0))))) # (!\inst|MAR\(1) & ((\inst|MAR\(0) & (\inst|reggy~28_q\)) # (!\inst|MAR\(0) & ((\inst|reggy~18_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MAR\(1),
	datab => \inst|reggy~28_q\,
	datac => \inst|reggy~18_q\,
	datad => \inst|MAR\(0),
	combout => \inst|reggy~176_combout\);

-- Location: LCCOMB_X13_Y12_N22
\inst|reggy~177\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~177_combout\ = (\inst|MAR\(1) & ((\inst|reggy~176_combout\ & (\inst|reggy~48_q\)) # (!\inst|reggy~176_combout\ & ((\inst|reggy~38_q\))))) # (!\inst|MAR\(1) & (((\inst|reggy~176_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MAR\(1),
	datab => \inst|reggy~48_q\,
	datac => \inst|reggy~38_q\,
	datad => \inst|reggy~176_combout\,
	combout => \inst|reggy~177_combout\);

-- Location: LCCOMB_X13_Y12_N2
\inst|reggy~178\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~178_combout\ = (\inst|MAR\(2) & (\inst|reggy~175_combout\)) # (!\inst|MAR\(2) & ((\inst|reggy~177_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|reggy~175_combout\,
	datac => \inst|MAR\(2),
	datad => \inst|reggy~177_combout\,
	combout => \inst|reggy~178_combout\);

-- Location: FF_X16_Y13_N31
\inst|REG_B[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~178_combout\,
	sload => VCC,
	ena => \inst|s_p1[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|REG_B\(4));

-- Location: LCCOMB_X13_Y9_N6
\inst|alu1|unidad_aritmetica|mult|multi1|s4|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi1|s4|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi1|s3|Cout~0_combout\ & ((\inst|alu1|unidad_aritmetica|mult|inter\(4)) # ((\inst|REG_B\(1) & \inst|REG_A\(3))))) # 
-- (!\inst|alu1|unidad_aritmetica|mult|multi1|s3|Cout~0_combout\ & (\inst|REG_B\(1) & (\inst|REG_A\(3) & \inst|alu1|unidad_aritmetica|mult|inter\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(1),
	datab => \inst|alu1|unidad_aritmetica|mult|multi1|s3|Cout~0_combout\,
	datac => \inst|REG_A\(3),
	datad => \inst|alu1|unidad_aritmetica|mult|inter\(4),
	combout => \inst|alu1|unidad_aritmetica|mult|multi1|s4|Cout~0_combout\);

-- Location: LCCOMB_X16_Y9_N8
\inst|alu1|unidad_aritmetica|mult|multi1|s5|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi1|s5|Cout~0_combout\ = (\inst|REG_B\(1) & (\inst|REG_A\(4) & \inst|alu1|unidad_aritmetica|mult|multi1|s4|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|REG_B\(1),
	datac => \inst|REG_A\(4),
	datad => \inst|alu1|unidad_aritmetica|mult|multi1|s4|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi1|s5|Cout~0_combout\);

-- Location: LCCOMB_X13_Y9_N24
\inst|alu1|unidad_aritmetica|mult|multi2|s4|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi2|s4|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi1|s4|Suma~0_combout\ & ((\inst|alu1|unidad_aritmetica|mult|multi2|s3|Cout~0_combout\) # ((\inst|REG_B\(2) & \inst|REG_A\(2))))) # 
-- (!\inst|alu1|unidad_aritmetica|mult|multi1|s4|Suma~0_combout\ & (\inst|REG_B\(2) & (\inst|REG_A\(2) & \inst|alu1|unidad_aritmetica|mult|multi2|s3|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(2),
	datab => \inst|REG_A\(2),
	datac => \inst|alu1|unidad_aritmetica|mult|multi1|s4|Suma~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|mult|multi2|s3|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi2|s4|Cout~0_combout\);

-- Location: LCCOMB_X16_Y9_N24
\inst|alu1|unidad_aritmetica|mult|multi1|s5|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi1|s5|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|mult|multi1|s4|Cout~0_combout\ $ (((\inst|REG_B\(1) & \inst|REG_A\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|REG_B\(1),
	datac => \inst|REG_A\(4),
	datad => \inst|alu1|unidad_aritmetica|mult|multi1|s4|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi1|s5|Suma~0_combout\);

-- Location: LCCOMB_X16_Y9_N6
\inst|alu1|unidad_aritmetica|mult|multi2|s5|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi2|s5|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi2|s4|Cout~0_combout\ & ((\inst|alu1|unidad_aritmetica|mult|multi1|s5|Suma~0_combout\) # ((\inst|REG_A\(3) & \inst|REG_B\(2))))) # 
-- (!\inst|alu1|unidad_aritmetica|mult|multi2|s4|Cout~0_combout\ & (\inst|REG_A\(3) & (\inst|REG_B\(2) & \inst|alu1|unidad_aritmetica|mult|multi1|s5|Suma~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|multi2|s4|Cout~0_combout\,
	datab => \inst|REG_A\(3),
	datac => \inst|REG_B\(2),
	datad => \inst|alu1|unidad_aritmetica|mult|multi1|s5|Suma~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi2|s5|Cout~0_combout\);

-- Location: LCCOMB_X16_Y9_N4
\inst|alu1|unidad_aritmetica|mult|multi2|s6|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi2|s6|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi1|s5|Cout~0_combout\ & ((\inst|alu1|unidad_aritmetica|mult|multi2|s5|Cout~0_combout\) # ((\inst|REG_A\(4) & \inst|REG_B\(2))))) # 
-- (!\inst|alu1|unidad_aritmetica|mult|multi1|s5|Cout~0_combout\ & (\inst|REG_A\(4) & (\inst|REG_B\(2) & \inst|alu1|unidad_aritmetica|mult|multi2|s5|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(4),
	datab => \inst|REG_B\(2),
	datac => \inst|alu1|unidad_aritmetica|mult|multi1|s5|Cout~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|mult|multi2|s5|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi2|s6|Cout~0_combout\);

-- Location: LCCOMB_X16_Y9_N26
\inst|alu1|unidad_aritmetica|mult|multi2|s6|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi2|s6|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|mult|multi1|s5|Cout~0_combout\ $ (\inst|alu1|unidad_aritmetica|mult|multi2|s5|Cout~0_combout\ $ (((\inst|REG_A\(4) & \inst|REG_B\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(4),
	datab => \inst|REG_B\(2),
	datac => \inst|alu1|unidad_aritmetica|mult|multi1|s5|Cout~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|mult|multi2|s5|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi2|s6|Suma~0_combout\);

-- Location: LCCOMB_X13_Y9_N20
\inst|alu1|unidad_aritmetica|mult|multi3|s4|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi3|s4|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi2|s4|Suma~0_combout\ & ((\inst|alu1|unidad_aritmetica|mult|multi3|s3|Cout~0_combout\) # ((\inst|REG_A\(1) & \inst|REG_B\(3))))) # 
-- (!\inst|alu1|unidad_aritmetica|mult|multi2|s4|Suma~0_combout\ & (\inst|REG_A\(1) & (\inst|REG_B\(3) & \inst|alu1|unidad_aritmetica|mult|multi3|s3|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(1),
	datab => \inst|REG_B\(3),
	datac => \inst|alu1|unidad_aritmetica|mult|multi2|s4|Suma~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|mult|multi3|s3|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi3|s4|Cout~0_combout\);

-- Location: LCCOMB_X16_Y9_N28
\inst|alu1|unidad_aritmetica|mult|multi2|s5|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi2|s5|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|mult|multi2|s4|Cout~0_combout\ $ (\inst|alu1|unidad_aritmetica|mult|multi1|s5|Suma~0_combout\ $ (((\inst|REG_A\(3) & \inst|REG_B\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|multi2|s4|Cout~0_combout\,
	datab => \inst|REG_A\(3),
	datac => \inst|REG_B\(2),
	datad => \inst|alu1|unidad_aritmetica|mult|multi1|s5|Suma~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi2|s5|Suma~0_combout\);

-- Location: LCCOMB_X12_Y9_N20
\inst|alu1|unidad_aritmetica|mult|multi3|s5|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi3|s5|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi3|s4|Cout~0_combout\ & ((\inst|alu1|unidad_aritmetica|mult|multi2|s5|Suma~0_combout\) # ((\inst|REG_A\(2) & \inst|REG_B\(3))))) # 
-- (!\inst|alu1|unidad_aritmetica|mult|multi3|s4|Cout~0_combout\ & (\inst|REG_A\(2) & (\inst|REG_B\(3) & \inst|alu1|unidad_aritmetica|mult|multi2|s5|Suma~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|multi3|s4|Cout~0_combout\,
	datab => \inst|REG_A\(2),
	datac => \inst|REG_B\(3),
	datad => \inst|alu1|unidad_aritmetica|mult|multi2|s5|Suma~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi3|s5|Cout~0_combout\);

-- Location: LCCOMB_X12_Y9_N6
\inst|alu1|unidad_aritmetica|mult|multi3|s6|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi3|s6|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi2|s6|Suma~0_combout\ & ((\inst|alu1|unidad_aritmetica|mult|multi3|s5|Cout~0_combout\) # ((\inst|REG_A\(3) & \inst|REG_B\(3))))) # 
-- (!\inst|alu1|unidad_aritmetica|mult|multi2|s6|Suma~0_combout\ & (\inst|REG_A\(3) & (\inst|REG_B\(3) & \inst|alu1|unidad_aritmetica|mult|multi3|s5|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|multi2|s6|Suma~0_combout\,
	datab => \inst|REG_A\(3),
	datac => \inst|REG_B\(3),
	datad => \inst|alu1|unidad_aritmetica|mult|multi3|s5|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi3|s6|Cout~0_combout\);

-- Location: LCCOMB_X12_Y9_N0
\inst|alu1|unidad_aritmetica|mult|multi3|s7|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi3|s7|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi2|s6|Cout~0_combout\ & ((\inst|alu1|unidad_aritmetica|mult|multi3|s6|Cout~0_combout\) # ((\inst|REG_A\(4) & \inst|REG_B\(3))))) # 
-- (!\inst|alu1|unidad_aritmetica|mult|multi2|s6|Cout~0_combout\ & (\inst|REG_A\(4) & (\inst|REG_B\(3) & \inst|alu1|unidad_aritmetica|mult|multi3|s6|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(4),
	datab => \inst|REG_B\(3),
	datac => \inst|alu1|unidad_aritmetica|mult|multi2|s6|Cout~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|mult|multi3|s6|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi3|s7|Cout~0_combout\);

-- Location: LCCOMB_X12_Y9_N8
\inst|alu1|unidad_aritmetica|mult|multi3|s7|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi3|s7|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|mult|multi2|s6|Cout~0_combout\ $ (\inst|alu1|unidad_aritmetica|mult|multi3|s6|Cout~0_combout\ $ (((\inst|REG_A\(4) & \inst|REG_B\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(4),
	datab => \inst|REG_B\(3),
	datac => \inst|alu1|unidad_aritmetica|mult|multi2|s6|Cout~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|mult|multi3|s6|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi3|s7|Suma~0_combout\);

-- Location: LCCOMB_X12_Y9_N22
\inst|alu1|unidad_aritmetica|mult|multi3|s6|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi3|s6|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|mult|multi2|s6|Suma~0_combout\ $ (\inst|alu1|unidad_aritmetica|mult|multi3|s5|Cout~0_combout\ $ (((\inst|REG_A\(3) & \inst|REG_B\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|multi2|s6|Suma~0_combout\,
	datab => \inst|REG_A\(3),
	datac => \inst|REG_B\(3),
	datad => \inst|alu1|unidad_aritmetica|mult|multi3|s5|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi3|s6|Suma~0_combout\);

-- Location: LCCOMB_X14_Y9_N0
\inst|alu1|unidad_aritmetica|mult|multi4|s4|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi4|s4|Cout~0_combout\ = (\inst|REG_A\(0) & (\inst|REG_B\(4) & \inst|alu1|unidad_aritmetica|mult|multi3|s4|Suma~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|REG_A\(0),
	datac => \inst|REG_B\(4),
	datad => \inst|alu1|unidad_aritmetica|mult|multi3|s4|Suma~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi4|s4|Cout~0_combout\);

-- Location: LCCOMB_X12_Y9_N12
\inst|alu1|unidad_aritmetica|mult|multi3|s5|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi3|s5|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|mult|multi3|s4|Cout~0_combout\ $ (\inst|alu1|unidad_aritmetica|mult|multi2|s5|Suma~0_combout\ $ (((\inst|REG_A\(2) & \inst|REG_B\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|multi3|s4|Cout~0_combout\,
	datab => \inst|REG_A\(2),
	datac => \inst|REG_B\(3),
	datad => \inst|alu1|unidad_aritmetica|mult|multi2|s5|Suma~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi3|s5|Suma~0_combout\);

-- Location: LCCOMB_X12_Y9_N10
\inst|alu1|unidad_aritmetica|mult|multi4|s5|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi4|s5|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi4|s4|Cout~0_combout\ & ((\inst|alu1|unidad_aritmetica|mult|multi3|s5|Suma~0_combout\) # ((\inst|REG_A\(1) & \inst|REG_B\(4))))) # 
-- (!\inst|alu1|unidad_aritmetica|mult|multi4|s4|Cout~0_combout\ & (\inst|REG_A\(1) & (\inst|REG_B\(4) & \inst|alu1|unidad_aritmetica|mult|multi3|s5|Suma~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(1),
	datab => \inst|REG_B\(4),
	datac => \inst|alu1|unidad_aritmetica|mult|multi4|s4|Cout~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|mult|multi3|s5|Suma~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi4|s5|Cout~0_combout\);

-- Location: LCCOMB_X12_Y9_N16
\inst|alu1|unidad_aritmetica|mult|multi4|s6|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi4|s6|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi3|s6|Suma~0_combout\ & ((\inst|alu1|unidad_aritmetica|mult|multi4|s5|Cout~0_combout\) # ((\inst|REG_B\(4) & \inst|REG_A\(2))))) # 
-- (!\inst|alu1|unidad_aritmetica|mult|multi3|s6|Suma~0_combout\ & (\inst|REG_B\(4) & (\inst|REG_A\(2) & \inst|alu1|unidad_aritmetica|mult|multi4|s5|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(4),
	datab => \inst|REG_A\(2),
	datac => \inst|alu1|unidad_aritmetica|mult|multi3|s6|Suma~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|mult|multi4|s5|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi4|s6|Cout~0_combout\);

-- Location: LCCOMB_X12_Y9_N18
\inst|alu1|unidad_aritmetica|mult|multi4|s7|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi4|s7|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi3|s7|Suma~0_combout\ & ((\inst|alu1|unidad_aritmetica|mult|multi4|s6|Cout~0_combout\) # ((\inst|REG_B\(4) & \inst|REG_A\(3))))) # 
-- (!\inst|alu1|unidad_aritmetica|mult|multi3|s7|Suma~0_combout\ & (\inst|REG_B\(4) & (\inst|REG_A\(3) & \inst|alu1|unidad_aritmetica|mult|multi4|s6|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(4),
	datab => \inst|REG_A\(3),
	datac => \inst|alu1|unidad_aritmetica|mult|multi3|s7|Suma~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|mult|multi4|s6|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi4|s7|Cout~0_combout\);

-- Location: LCCOMB_X12_Y9_N24
\inst|alu1|unidad_aritmetica|mult|multi4|s8|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi4|s8|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi3|s7|Cout~0_combout\ & ((\inst|alu1|unidad_aritmetica|mult|multi4|s7|Cout~0_combout\) # ((\inst|REG_B\(4) & \inst|REG_A\(4))))) # 
-- (!\inst|alu1|unidad_aritmetica|mult|multi3|s7|Cout~0_combout\ & (\inst|REG_B\(4) & (\inst|REG_A\(4) & \inst|alu1|unidad_aritmetica|mult|multi4|s7|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(4),
	datab => \inst|alu1|unidad_aritmetica|mult|multi3|s7|Cout~0_combout\,
	datac => \inst|REG_A\(4),
	datad => \inst|alu1|unidad_aritmetica|mult|multi4|s7|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi4|s8|Cout~0_combout\);

-- Location: LCCOMB_X13_Y10_N6
\inst|alu1|Mux2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux2~5_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi4|s8|Cout~0_combout\ & (!\inst|alu1|Mux11~0_combout\ & \inst|alu1|Mux10~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|multi4|s8|Cout~0_combout\,
	datac => \inst|alu1|Mux11~0_combout\,
	datad => \inst|alu1|Mux10~0_combout\,
	combout => \inst|alu1|Mux2~5_combout\);

-- Location: LCCOMB_X13_Y10_N24
\inst|alu1|Mux2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux2~6_combout\ = (\inst|alu1|Mux2~3_combout\ & (((\inst|alu1|Mux2~0_combout\) # (\inst|alu1|Mux2~5_combout\)))) # (!\inst|alu1|Mux2~3_combout\ & (\inst|alu1|Mux2~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux2~3_combout\,
	datab => \inst|alu1|Mux2~4_combout\,
	datac => \inst|alu1|Mux2~0_combout\,
	datad => \inst|alu1|Mux2~5_combout\,
	combout => \inst|alu1|Mux2~6_combout\);

-- Location: FF_X14_Y12_N7
\inst|alu1|barrel_shifters|aux[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|REG_A\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|barrel_shifters|aux\(2));

-- Location: FF_X14_Y12_N27
\inst|alu1|barrel_shifters|salShifters[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|alu1|barrel_shifters|aux\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|barrel_shifters|salShifters\(2));

-- Location: LCCOMB_X14_Y12_N26
\inst|alu1|Mux7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux7~2_combout\ = (\inst|alu1|Mux2~6_combout\ & ((\inst|alu1|unidad_logica|salida\(2)) # ((!\inst|alu1|Mux2~7_combout\)))) # (!\inst|alu1|Mux2~6_combout\ & (((\inst|alu1|barrel_shifters|salShifters\(2) & \inst|alu1|Mux2~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_logica|salida\(2),
	datab => \inst|alu1|Mux2~6_combout\,
	datac => \inst|alu1|barrel_shifters|salShifters\(2),
	datad => \inst|alu1|Mux2~7_combout\,
	combout => \inst|alu1|Mux7~2_combout\);

-- Location: LCCOMB_X13_Y15_N28
\inst|alu1|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux7~0_combout\ = (\inst|alu1|Mux10~0_combout\ & (((\inst|alu1|unidad_aritmetica|mult|multi2|s2|Suma~0_combout\) # (\inst|alu1|Mux11~0_combout\)))) # (!\inst|alu1|Mux10~0_combout\ & (\inst|alu1|unidad_aritmetica|suma|s2|Suma~combout\ & 
-- ((!\inst|alu1|Mux11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux10~0_combout\,
	datab => \inst|alu1|unidad_aritmetica|suma|s2|Suma~combout\,
	datac => \inst|alu1|unidad_aritmetica|mult|multi2|s2|Suma~0_combout\,
	datad => \inst|alu1|Mux11~0_combout\,
	combout => \inst|alu1|Mux7~0_combout\);

-- Location: LCCOMB_X16_Y9_N10
\inst|alu1|unidad_aritmetica|divi|Add3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add3~0_combout\ = (\inst|REG_A\(4) & ((GND) # (!\inst|REG_B\(0)))) # (!\inst|REG_A\(4) & (\inst|REG_B\(0) $ (GND)))
-- \inst|alu1|unidad_aritmetica|divi|Add3~1\ = CARRY((\inst|REG_A\(4)) # (!\inst|REG_B\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(4),
	datab => \inst|REG_B\(0),
	datad => VCC,
	combout => \inst|alu1|unidad_aritmetica|divi|Add3~0_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add3~1\);

-- Location: LCCOMB_X16_Y9_N12
\inst|alu1|unidad_aritmetica|divi|Add3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add3~2_combout\ = (\inst|alu1|unidad_aritmetica|divi|Add2~20_combout\ & ((\inst|REG_B\(1) & (!\inst|alu1|unidad_aritmetica|divi|Add3~1\)) # (!\inst|REG_B\(1) & (\inst|alu1|unidad_aritmetica|divi|Add3~1\ & VCC)))) # 
-- (!\inst|alu1|unidad_aritmetica|divi|Add2~20_combout\ & ((\inst|REG_B\(1) & ((\inst|alu1|unidad_aritmetica|divi|Add3~1\) # (GND))) # (!\inst|REG_B\(1) & (!\inst|alu1|unidad_aritmetica|divi|Add3~1\))))
-- \inst|alu1|unidad_aritmetica|divi|Add3~3\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add2~20_combout\ & (\inst|REG_B\(1) & !\inst|alu1|unidad_aritmetica|divi|Add3~1\)) # (!\inst|alu1|unidad_aritmetica|divi|Add2~20_combout\ & ((\inst|REG_B\(1)) # 
-- (!\inst|alu1|unidad_aritmetica|divi|Add3~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add2~20_combout\,
	datab => \inst|REG_B\(1),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add3~1\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add3~2_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add3~3\);

-- Location: LCCOMB_X16_Y9_N14
\inst|alu1|unidad_aritmetica|divi|Add3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add3~4_combout\ = ((\inst|alu1|unidad_aritmetica|divi|Add2~19_combout\ $ (\inst|REG_B\(2) $ (\inst|alu1|unidad_aritmetica|divi|Add3~3\)))) # (GND)
-- \inst|alu1|unidad_aritmetica|divi|Add3~5\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add2~19_combout\ & ((!\inst|alu1|unidad_aritmetica|divi|Add3~3\) # (!\inst|REG_B\(2)))) # (!\inst|alu1|unidad_aritmetica|divi|Add2~19_combout\ & (!\inst|REG_B\(2) & 
-- !\inst|alu1|unidad_aritmetica|divi|Add3~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add2~19_combout\,
	datab => \inst|REG_B\(2),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add3~3\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add3~4_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add3~5\);

-- Location: LCCOMB_X16_Y9_N16
\inst|alu1|unidad_aritmetica|divi|Add3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add3~6_combout\ = (\inst|REG_B\(3) & ((\inst|alu1|unidad_aritmetica|divi|Add2~18_combout\ & (!\inst|alu1|unidad_aritmetica|divi|Add3~5\)) # (!\inst|alu1|unidad_aritmetica|divi|Add2~18_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add3~5\) # (GND))))) # (!\inst|REG_B\(3) & ((\inst|alu1|unidad_aritmetica|divi|Add2~18_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add3~5\ & VCC)) # (!\inst|alu1|unidad_aritmetica|divi|Add2~18_combout\ & 
-- (!\inst|alu1|unidad_aritmetica|divi|Add3~5\))))
-- \inst|alu1|unidad_aritmetica|divi|Add3~7\ = CARRY((\inst|REG_B\(3) & ((!\inst|alu1|unidad_aritmetica|divi|Add3~5\) # (!\inst|alu1|unidad_aritmetica|divi|Add2~18_combout\))) # (!\inst|REG_B\(3) & (!\inst|alu1|unidad_aritmetica|divi|Add2~18_combout\ & 
-- !\inst|alu1|unidad_aritmetica|divi|Add3~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(3),
	datab => \inst|alu1|unidad_aritmetica|divi|Add2~18_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add3~5\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add3~6_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add3~7\);

-- Location: LCCOMB_X16_Y9_N18
\inst|alu1|unidad_aritmetica|divi|Add3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add3~8_combout\ = ((\inst|alu1|unidad_aritmetica|divi|Add2~17_combout\ $ (\inst|REG_B\(4) $ (\inst|alu1|unidad_aritmetica|divi|Add3~7\)))) # (GND)
-- \inst|alu1|unidad_aritmetica|divi|Add3~9\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add2~17_combout\ & ((!\inst|alu1|unidad_aritmetica|divi|Add3~7\) # (!\inst|REG_B\(4)))) # (!\inst|alu1|unidad_aritmetica|divi|Add2~17_combout\ & (!\inst|REG_B\(4) & 
-- !\inst|alu1|unidad_aritmetica|divi|Add3~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add2~17_combout\,
	datab => \inst|REG_B\(4),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add3~7\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add3~8_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add3~9\);

-- Location: LCCOMB_X16_Y9_N20
\inst|alu1|unidad_aritmetica|divi|Add3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add3~10_combout\ = (\inst|alu1|unidad_aritmetica|divi|Add2~16_combout\ & ((\inst|REG_B\(5) & (!\inst|alu1|unidad_aritmetica|divi|Add3~9\)) # (!\inst|REG_B\(5) & (\inst|alu1|unidad_aritmetica|divi|Add3~9\ & VCC)))) # 
-- (!\inst|alu1|unidad_aritmetica|divi|Add2~16_combout\ & ((\inst|REG_B\(5) & ((\inst|alu1|unidad_aritmetica|divi|Add3~9\) # (GND))) # (!\inst|REG_B\(5) & (!\inst|alu1|unidad_aritmetica|divi|Add3~9\))))
-- \inst|alu1|unidad_aritmetica|divi|Add3~11\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add2~16_combout\ & (\inst|REG_B\(5) & !\inst|alu1|unidad_aritmetica|divi|Add3~9\)) # (!\inst|alu1|unidad_aritmetica|divi|Add2~16_combout\ & ((\inst|REG_B\(5)) # 
-- (!\inst|alu1|unidad_aritmetica|divi|Add3~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add2~16_combout\,
	datab => \inst|REG_B\(5),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add3~9\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add3~10_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add3~11\);

-- Location: LCCOMB_X18_Y9_N26
\inst|alu1|unidad_aritmetica|divi|Add3~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add3~15_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan3~14_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add2~16_combout\)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan3~14_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add3~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|unidad_aritmetica|divi|Add2~16_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|Add3~10_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan3~14_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add3~15_combout\);

-- Location: LCCOMB_X19_Y9_N22
\inst|alu1|unidad_aritmetica|divi|Add3~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add3~16_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan3~14_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add2~17_combout\)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan3~14_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add3~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add2~17_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|LessThan3~14_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|Add3~8_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add3~16_combout\);

-- Location: LCCOMB_X18_Y9_N28
\inst|alu1|unidad_aritmetica|divi|Add3~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add3~17_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan3~14_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add2~18_combout\)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan3~14_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add3~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add2~18_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|Add3~6_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan3~14_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add3~17_combout\);

-- Location: LCCOMB_X18_Y9_N22
\inst|alu1|unidad_aritmetica|divi|Add3~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add3~18_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan3~14_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add2~19_combout\)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan3~14_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add3~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|unidad_aritmetica|divi|LessThan3~14_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|Add2~19_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|Add3~4_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add3~18_combout\);

-- Location: LCCOMB_X18_Y9_N0
\inst|alu1|unidad_aritmetica|divi|Add3~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add3~19_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan3~14_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add2~20_combout\)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan3~14_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|unidad_aritmetica|divi|Add2~20_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|Add3~2_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan3~14_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add3~19_combout\);

-- Location: LCCOMB_X18_Y9_N18
\inst|alu1|unidad_aritmetica|divi|Add3~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add3~20_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan3~14_combout\ & (\inst|REG_A\(4))) # (!\inst|alu1|unidad_aritmetica|divi|LessThan3~14_combout\ & ((\inst|alu1|unidad_aritmetica|divi|Add3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|REG_A\(4),
	datac => \inst|alu1|unidad_aritmetica|divi|Add3~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan3~14_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add3~20_combout\);

-- Location: LCCOMB_X19_Y11_N0
\inst|alu1|unidad_aritmetica|divi|Add4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add4~0_combout\ = (\inst|REG_A\(3) & ((GND) # (!\inst|REG_B\(0)))) # (!\inst|REG_A\(3) & (\inst|REG_B\(0) $ (GND)))
-- \inst|alu1|unidad_aritmetica|divi|Add4~1\ = CARRY((\inst|REG_A\(3)) # (!\inst|REG_B\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(3),
	datab => \inst|REG_B\(0),
	datad => VCC,
	combout => \inst|alu1|unidad_aritmetica|divi|Add4~0_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add4~1\);

-- Location: LCCOMB_X19_Y11_N2
\inst|alu1|unidad_aritmetica|divi|Add4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add4~2_combout\ = (\inst|REG_B\(1) & ((\inst|alu1|unidad_aritmetica|divi|Add3~20_combout\ & (!\inst|alu1|unidad_aritmetica|divi|Add4~1\)) # (!\inst|alu1|unidad_aritmetica|divi|Add3~20_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add4~1\) # (GND))))) # (!\inst|REG_B\(1) & ((\inst|alu1|unidad_aritmetica|divi|Add3~20_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add4~1\ & VCC)) # (!\inst|alu1|unidad_aritmetica|divi|Add3~20_combout\ & 
-- (!\inst|alu1|unidad_aritmetica|divi|Add4~1\))))
-- \inst|alu1|unidad_aritmetica|divi|Add4~3\ = CARRY((\inst|REG_B\(1) & ((!\inst|alu1|unidad_aritmetica|divi|Add4~1\) # (!\inst|alu1|unidad_aritmetica|divi|Add3~20_combout\))) # (!\inst|REG_B\(1) & (!\inst|alu1|unidad_aritmetica|divi|Add3~20_combout\ & 
-- !\inst|alu1|unidad_aritmetica|divi|Add4~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(1),
	datab => \inst|alu1|unidad_aritmetica|divi|Add3~20_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add4~1\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add4~2_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add4~3\);

-- Location: LCCOMB_X19_Y11_N4
\inst|alu1|unidad_aritmetica|divi|Add4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add4~4_combout\ = ((\inst|alu1|unidad_aritmetica|divi|Add3~19_combout\ $ (\inst|REG_B\(2) $ (\inst|alu1|unidad_aritmetica|divi|Add4~3\)))) # (GND)
-- \inst|alu1|unidad_aritmetica|divi|Add4~5\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add3~19_combout\ & ((!\inst|alu1|unidad_aritmetica|divi|Add4~3\) # (!\inst|REG_B\(2)))) # (!\inst|alu1|unidad_aritmetica|divi|Add3~19_combout\ & (!\inst|REG_B\(2) & 
-- !\inst|alu1|unidad_aritmetica|divi|Add4~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add3~19_combout\,
	datab => \inst|REG_B\(2),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add4~3\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add4~4_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add4~5\);

-- Location: LCCOMB_X19_Y11_N6
\inst|alu1|unidad_aritmetica|divi|Add4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add4~6_combout\ = (\inst|alu1|unidad_aritmetica|divi|Add3~18_combout\ & ((\inst|REG_B\(3) & (!\inst|alu1|unidad_aritmetica|divi|Add4~5\)) # (!\inst|REG_B\(3) & (\inst|alu1|unidad_aritmetica|divi|Add4~5\ & VCC)))) # 
-- (!\inst|alu1|unidad_aritmetica|divi|Add3~18_combout\ & ((\inst|REG_B\(3) & ((\inst|alu1|unidad_aritmetica|divi|Add4~5\) # (GND))) # (!\inst|REG_B\(3) & (!\inst|alu1|unidad_aritmetica|divi|Add4~5\))))
-- \inst|alu1|unidad_aritmetica|divi|Add4~7\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add3~18_combout\ & (\inst|REG_B\(3) & !\inst|alu1|unidad_aritmetica|divi|Add4~5\)) # (!\inst|alu1|unidad_aritmetica|divi|Add3~18_combout\ & ((\inst|REG_B\(3)) # 
-- (!\inst|alu1|unidad_aritmetica|divi|Add4~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add3~18_combout\,
	datab => \inst|REG_B\(3),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add4~5\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add4~6_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add4~7\);

-- Location: LCCOMB_X19_Y11_N8
\inst|alu1|unidad_aritmetica|divi|Add4~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add4~8_combout\ = ((\inst|REG_B\(4) $ (\inst|alu1|unidad_aritmetica|divi|Add3~17_combout\ $ (\inst|alu1|unidad_aritmetica|divi|Add4~7\)))) # (GND)
-- \inst|alu1|unidad_aritmetica|divi|Add4~9\ = CARRY((\inst|REG_B\(4) & (\inst|alu1|unidad_aritmetica|divi|Add3~17_combout\ & !\inst|alu1|unidad_aritmetica|divi|Add4~7\)) # (!\inst|REG_B\(4) & ((\inst|alu1|unidad_aritmetica|divi|Add3~17_combout\) # 
-- (!\inst|alu1|unidad_aritmetica|divi|Add4~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(4),
	datab => \inst|alu1|unidad_aritmetica|divi|Add3~17_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add4~7\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add4~8_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add4~9\);

-- Location: LCCOMB_X19_Y11_N10
\inst|alu1|unidad_aritmetica|divi|Add4~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add4~10_combout\ = (\inst|alu1|unidad_aritmetica|divi|Add3~16_combout\ & ((\inst|REG_B\(5) & (!\inst|alu1|unidad_aritmetica|divi|Add4~9\)) # (!\inst|REG_B\(5) & (\inst|alu1|unidad_aritmetica|divi|Add4~9\ & VCC)))) # 
-- (!\inst|alu1|unidad_aritmetica|divi|Add3~16_combout\ & ((\inst|REG_B\(5) & ((\inst|alu1|unidad_aritmetica|divi|Add4~9\) # (GND))) # (!\inst|REG_B\(5) & (!\inst|alu1|unidad_aritmetica|divi|Add4~9\))))
-- \inst|alu1|unidad_aritmetica|divi|Add4~11\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add3~16_combout\ & (\inst|REG_B\(5) & !\inst|alu1|unidad_aritmetica|divi|Add4~9\)) # (!\inst|alu1|unidad_aritmetica|divi|Add3~16_combout\ & ((\inst|REG_B\(5)) # 
-- (!\inst|alu1|unidad_aritmetica|divi|Add4~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add3~16_combout\,
	datab => \inst|REG_B\(5),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add4~9\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add4~10_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add4~11\);

-- Location: LCCOMB_X19_Y11_N12
\inst|alu1|unidad_aritmetica|divi|Add4~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add4~12_combout\ = \inst|REG_B\(6) $ (\inst|alu1|unidad_aritmetica|divi|Add4~11\ $ (\inst|alu1|unidad_aritmetica|divi|Add3~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|REG_B\(6),
	datad => \inst|alu1|unidad_aritmetica|divi|Add3~15_combout\,
	cin => \inst|alu1|unidad_aritmetica|divi|Add4~11\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add4~12_combout\);

-- Location: LCCOMB_X16_Y9_N22
\inst|alu1|unidad_aritmetica|divi|Add3~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add3~12_combout\ = \inst|REG_B\(6) $ (\inst|alu1|unidad_aritmetica|divi|Add3~11\ $ (\inst|alu1|unidad_aritmetica|divi|Add2~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|REG_B\(6),
	datad => \inst|alu1|unidad_aritmetica|divi|Add2~15_combout\,
	cin => \inst|alu1|unidad_aritmetica|divi|Add3~11\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add3~12_combout\);

-- Location: LCCOMB_X19_Y9_N24
\inst|alu1|unidad_aritmetica|divi|Add3~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add3~14_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan3~14_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add2~15_combout\)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan3~14_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add3~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|unidad_aritmetica|divi|Add2~15_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|LessThan3~14_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|Add3~12_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add3~14_combout\);

-- Location: LCCOMB_X19_Y9_N4
\inst|alu1|unidad_aritmetica|divi|LessThan4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan4~1_cout\ = CARRY((!\inst|REG_A\(3) & \inst|REG_B\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(3),
	datab => \inst|REG_B\(0),
	datad => VCC,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan4~1_cout\);

-- Location: LCCOMB_X19_Y9_N6
\inst|alu1|unidad_aritmetica|divi|LessThan4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan4~3_cout\ = CARRY((\inst|REG_B\(1) & (\inst|alu1|unidad_aritmetica|divi|Add3~20_combout\ & !\inst|alu1|unidad_aritmetica|divi|LessThan4~1_cout\)) # (!\inst|REG_B\(1) & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add3~20_combout\) # (!\inst|alu1|unidad_aritmetica|divi|LessThan4~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(1),
	datab => \inst|alu1|unidad_aritmetica|divi|Add3~20_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan4~1_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan4~3_cout\);

-- Location: LCCOMB_X19_Y9_N8
\inst|alu1|unidad_aritmetica|divi|LessThan4~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan4~5_cout\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add3~19_combout\ & (\inst|REG_B\(2) & !\inst|alu1|unidad_aritmetica|divi|LessThan4~3_cout\)) # (!\inst|alu1|unidad_aritmetica|divi|Add3~19_combout\ & 
-- ((\inst|REG_B\(2)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan4~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add3~19_combout\,
	datab => \inst|REG_B\(2),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan4~3_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan4~5_cout\);

-- Location: LCCOMB_X19_Y9_N10
\inst|alu1|unidad_aritmetica|divi|LessThan4~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan4~7_cout\ = CARRY((\inst|REG_B\(3) & (\inst|alu1|unidad_aritmetica|divi|Add3~18_combout\ & !\inst|alu1|unidad_aritmetica|divi|LessThan4~5_cout\)) # (!\inst|REG_B\(3) & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add3~18_combout\) # (!\inst|alu1|unidad_aritmetica|divi|LessThan4~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(3),
	datab => \inst|alu1|unidad_aritmetica|divi|Add3~18_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan4~5_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan4~7_cout\);

-- Location: LCCOMB_X19_Y9_N12
\inst|alu1|unidad_aritmetica|divi|LessThan4~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan4~9_cout\ = CARRY((\inst|REG_B\(4) & ((!\inst|alu1|unidad_aritmetica|divi|LessThan4~7_cout\) # (!\inst|alu1|unidad_aritmetica|divi|Add3~17_combout\))) # (!\inst|REG_B\(4) & 
-- (!\inst|alu1|unidad_aritmetica|divi|Add3~17_combout\ & !\inst|alu1|unidad_aritmetica|divi|LessThan4~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(4),
	datab => \inst|alu1|unidad_aritmetica|divi|Add3~17_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan4~7_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan4~9_cout\);

-- Location: LCCOMB_X19_Y9_N14
\inst|alu1|unidad_aritmetica|divi|LessThan4~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan4~11_cout\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add3~16_combout\ & ((!\inst|alu1|unidad_aritmetica|divi|LessThan4~9_cout\) # (!\inst|REG_B\(5)))) # (!\inst|alu1|unidad_aritmetica|divi|Add3~16_combout\ & 
-- (!\inst|REG_B\(5) & !\inst|alu1|unidad_aritmetica|divi|LessThan4~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add3~16_combout\,
	datab => \inst|REG_B\(5),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan4~9_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan4~11_cout\);

-- Location: LCCOMB_X19_Y9_N16
\inst|alu1|unidad_aritmetica|divi|LessThan4~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan4~13_cout\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add3~15_combout\ & (\inst|REG_B\(6) & !\inst|alu1|unidad_aritmetica|divi|LessThan4~11_cout\)) # (!\inst|alu1|unidad_aritmetica|divi|Add3~15_combout\ & 
-- ((\inst|REG_B\(6)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan4~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add3~15_combout\,
	datab => \inst|REG_B\(6),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan4~11_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan4~13_cout\);

-- Location: LCCOMB_X19_Y9_N18
\inst|alu1|unidad_aritmetica|divi|LessThan4~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan4~14_combout\ = (\inst|REG_B\(7) & ((\inst|alu1|unidad_aritmetica|divi|LessThan4~13_cout\) # (!\inst|alu1|unidad_aritmetica|divi|Add3~14_combout\))) # (!\inst|REG_B\(7) & 
-- (\inst|alu1|unidad_aritmetica|divi|LessThan4~13_cout\ & !\inst|alu1|unidad_aritmetica|divi|Add3~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(7),
	datad => \inst|alu1|unidad_aritmetica|divi|Add3~14_combout\,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan4~13_cout\,
	combout => \inst|alu1|unidad_aritmetica|divi|LessThan4~14_combout\);

-- Location: LCCOMB_X18_Y11_N24
\inst|alu1|unidad_aritmetica|divi|Add4~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add4~14_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan4~14_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add3~15_combout\)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan4~14_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add4~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add3~15_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|Add4~12_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan4~14_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add4~14_combout\);

-- Location: LCCOMB_X18_Y11_N30
\inst|alu1|unidad_aritmetica|divi|Add4~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add4~15_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan4~14_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add3~16_combout\)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan4~14_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add4~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|unidad_aritmetica|divi|Add3~16_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|Add4~10_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan4~14_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add4~15_combout\);

-- Location: LCCOMB_X18_Y11_N28
\inst|alu1|unidad_aritmetica|divi|Add4~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add4~16_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan4~14_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add3~17_combout\)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan4~14_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add4~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|unidad_aritmetica|divi|Add3~17_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|Add4~8_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan4~14_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add4~16_combout\);

-- Location: LCCOMB_X19_Y9_N28
\inst|alu1|unidad_aritmetica|divi|Add4~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add4~17_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan4~14_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add3~18_combout\)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan4~14_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add4~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|unidad_aritmetica|divi|LessThan4~14_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|Add3~18_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|Add4~6_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add4~17_combout\);

-- Location: LCCOMB_X19_Y9_N30
\inst|alu1|unidad_aritmetica|divi|Add4~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add4~18_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan4~14_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add3~19_combout\)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan4~14_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add4~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|unidad_aritmetica|divi|LessThan4~14_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|Add3~19_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|Add4~4_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add4~18_combout\);

-- Location: LCCOMB_X19_Y9_N0
\inst|alu1|unidad_aritmetica|divi|Add4~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add4~19_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan4~14_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add3~20_combout\)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan4~14_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add4~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|unidad_aritmetica|divi|Add3~20_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|Add4~2_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan4~14_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add4~19_combout\);

-- Location: LCCOMB_X19_Y9_N2
\inst|alu1|unidad_aritmetica|divi|Add4~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add4~20_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan4~14_combout\ & (\inst|REG_A\(3))) # (!\inst|alu1|unidad_aritmetica|divi|LessThan4~14_combout\ & ((\inst|alu1|unidad_aritmetica|divi|Add4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(3),
	datac => \inst|alu1|unidad_aritmetica|divi|Add4~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan4~14_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add4~20_combout\);

-- Location: LCCOMB_X18_Y11_N4
\inst|alu1|unidad_aritmetica|divi|LessThan5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan5~1_cout\ = CARRY((!\inst|REG_A\(2) & \inst|REG_B\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(2),
	datab => \inst|REG_B\(0),
	datad => VCC,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan5~1_cout\);

-- Location: LCCOMB_X18_Y11_N6
\inst|alu1|unidad_aritmetica|divi|LessThan5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan5~3_cout\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add4~20_combout\ & ((!\inst|alu1|unidad_aritmetica|divi|LessThan5~1_cout\) # (!\inst|REG_B\(1)))) # (!\inst|alu1|unidad_aritmetica|divi|Add4~20_combout\ & 
-- (!\inst|REG_B\(1) & !\inst|alu1|unidad_aritmetica|divi|LessThan5~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add4~20_combout\,
	datab => \inst|REG_B\(1),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan5~1_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan5~3_cout\);

-- Location: LCCOMB_X18_Y11_N8
\inst|alu1|unidad_aritmetica|divi|LessThan5~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan5~5_cout\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add4~19_combout\ & (\inst|REG_B\(2) & !\inst|alu1|unidad_aritmetica|divi|LessThan5~3_cout\)) # (!\inst|alu1|unidad_aritmetica|divi|Add4~19_combout\ & 
-- ((\inst|REG_B\(2)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan5~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add4~19_combout\,
	datab => \inst|REG_B\(2),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan5~3_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan5~5_cout\);

-- Location: LCCOMB_X18_Y11_N10
\inst|alu1|unidad_aritmetica|divi|LessThan5~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan5~7_cout\ = CARRY((\inst|REG_B\(3) & (\inst|alu1|unidad_aritmetica|divi|Add4~18_combout\ & !\inst|alu1|unidad_aritmetica|divi|LessThan5~5_cout\)) # (!\inst|REG_B\(3) & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add4~18_combout\) # (!\inst|alu1|unidad_aritmetica|divi|LessThan5~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(3),
	datab => \inst|alu1|unidad_aritmetica|divi|Add4~18_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan5~5_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan5~7_cout\);

-- Location: LCCOMB_X18_Y11_N12
\inst|alu1|unidad_aritmetica|divi|LessThan5~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan5~9_cout\ = CARRY((\inst|REG_B\(4) & ((!\inst|alu1|unidad_aritmetica|divi|LessThan5~7_cout\) # (!\inst|alu1|unidad_aritmetica|divi|Add4~17_combout\))) # (!\inst|REG_B\(4) & 
-- (!\inst|alu1|unidad_aritmetica|divi|Add4~17_combout\ & !\inst|alu1|unidad_aritmetica|divi|LessThan5~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(4),
	datab => \inst|alu1|unidad_aritmetica|divi|Add4~17_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan5~7_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan5~9_cout\);

-- Location: LCCOMB_X18_Y11_N14
\inst|alu1|unidad_aritmetica|divi|LessThan5~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan5~11_cout\ = CARRY((\inst|REG_B\(5) & (\inst|alu1|unidad_aritmetica|divi|Add4~16_combout\ & !\inst|alu1|unidad_aritmetica|divi|LessThan5~9_cout\)) # (!\inst|REG_B\(5) & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add4~16_combout\) # (!\inst|alu1|unidad_aritmetica|divi|LessThan5~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(5),
	datab => \inst|alu1|unidad_aritmetica|divi|Add4~16_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan5~9_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan5~11_cout\);

-- Location: LCCOMB_X18_Y11_N16
\inst|alu1|unidad_aritmetica|divi|LessThan5~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan5~13_cout\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add4~15_combout\ & (\inst|REG_B\(6) & !\inst|alu1|unidad_aritmetica|divi|LessThan5~11_cout\)) # (!\inst|alu1|unidad_aritmetica|divi|Add4~15_combout\ & 
-- ((\inst|REG_B\(6)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan5~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add4~15_combout\,
	datab => \inst|REG_B\(6),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan5~11_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan5~13_cout\);

-- Location: LCCOMB_X18_Y11_N18
\inst|alu1|unidad_aritmetica|divi|LessThan5~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan5~14_combout\ = (\inst|REG_B\(7) & ((\inst|alu1|unidad_aritmetica|divi|LessThan5~13_cout\) # (!\inst|alu1|unidad_aritmetica|divi|Add4~14_combout\))) # (!\inst|REG_B\(7) & 
-- (\inst|alu1|unidad_aritmetica|divi|LessThan5~13_cout\ & !\inst|alu1|unidad_aritmetica|divi|Add4~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|REG_B\(7),
	datad => \inst|alu1|unidad_aritmetica|divi|Add4~14_combout\,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan5~13_cout\,
	combout => \inst|alu1|unidad_aritmetica|divi|LessThan5~14_combout\);

-- Location: LCCOMB_X14_Y12_N24
\inst|alu1|Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux7~1_combout\ = (\inst|alu1|Mux7~0_combout\ & (((!\inst|alu1|Mux11~0_combout\) # (!\inst|alu1|unidad_aritmetica|divi|LessThan5~14_combout\)))) # (!\inst|alu1|Mux7~0_combout\ & (!\inst|alu1|unidad_aritmetica|resta|s2|Suma~combout\ & 
-- ((\inst|alu1|Mux11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|resta|s2|Suma~combout\,
	datab => \inst|alu1|Mux7~0_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|LessThan5~14_combout\,
	datad => \inst|alu1|Mux11~0_combout\,
	combout => \inst|alu1|Mux7~1_combout\);

-- Location: LCCOMB_X14_Y12_N22
\inst|alu1|Mux7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux7~3_combout\ = (\inst|alu1|Mux7~2_combout\ & (((\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~23_combout\)) # (!\inst|alu1|Mux2~3_combout\))) # (!\inst|alu1|Mux7~2_combout\ & (\inst|alu1|Mux2~3_combout\ & 
-- ((\inst|alu1|Mux7~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux7~2_combout\,
	datab => \inst|alu1|Mux2~3_combout\,
	datac => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~23_combout\,
	datad => \inst|alu1|Mux7~1_combout\,
	combout => \inst|alu1|Mux7~3_combout\);

-- Location: LCCOMB_X13_Y11_N24
\inst|reggy~208\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~208_combout\ = (\inst|Equal0~0_combout\ & (\inst|REG_D\(2))) # (!\inst|Equal0~0_combout\ & (((\inst|alu1|Mux2~10_combout\) # (\inst|alu1|Mux7~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_D\(2),
	datab => \inst|Equal0~0_combout\,
	datac => \inst|alu1|Mux2~10_combout\,
	datad => \inst|alu1|Mux7~3_combout\,
	combout => \inst|reggy~208_combout\);

-- Location: FF_X12_Y11_N27
\inst|reggy~56\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~208_combout\,
	sload => VCC,
	ena => \inst|reggy~197_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy~56_q\);

-- Location: LCCOMB_X12_Y11_N26
\inst|reggy~164\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~164_combout\ = (\inst|MAR\(1) & ((\inst|MAR\(0)) # ((\inst|reggy~76_q\)))) # (!\inst|MAR\(1) & (!\inst|MAR\(0) & (\inst|reggy~56_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MAR\(1),
	datab => \inst|MAR\(0),
	datac => \inst|reggy~56_q\,
	datad => \inst|reggy~76_q\,
	combout => \inst|reggy~164_combout\);

-- Location: LCCOMB_X12_Y12_N6
\inst|reggy~165\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~165_combout\ = (\inst|reggy~164_combout\ & (((\inst|reggy~86_q\) # (!\inst|MAR\(0))))) # (!\inst|reggy~164_combout\ & (\inst|reggy~66_q\ & ((\inst|MAR\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy~164_combout\,
	datab => \inst|reggy~66_q\,
	datac => \inst|reggy~86_q\,
	datad => \inst|MAR\(0),
	combout => \inst|reggy~165_combout\);

-- Location: LCCOMB_X14_Y11_N6
\inst|reggy~166\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~166_combout\ = (\inst|MAR\(1) & (((\inst|MAR\(0))))) # (!\inst|MAR\(1) & ((\inst|MAR\(0) & (\inst|reggy~26_q\)) # (!\inst|MAR\(0) & ((\inst|reggy~16_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MAR\(1),
	datab => \inst|reggy~26_q\,
	datac => \inst|reggy~16_q\,
	datad => \inst|MAR\(0),
	combout => \inst|reggy~166_combout\);

-- Location: LCCOMB_X13_Y12_N6
\inst|reggy~167\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~167_combout\ = (\inst|MAR\(1) & ((\inst|reggy~166_combout\ & (\inst|reggy~46_q\)) # (!\inst|reggy~166_combout\ & ((\inst|reggy~36_q\))))) # (!\inst|MAR\(1) & (((\inst|reggy~166_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MAR\(1),
	datab => \inst|reggy~46_q\,
	datac => \inst|reggy~36_q\,
	datad => \inst|reggy~166_combout\,
	combout => \inst|reggy~167_combout\);

-- Location: LCCOMB_X13_Y12_N10
\inst|reggy~168\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~168_combout\ = (\inst|MAR\(2) & (\inst|reggy~165_combout\)) # (!\inst|MAR\(2) & ((\inst|reggy~167_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy~165_combout\,
	datac => \inst|MAR\(2),
	datad => \inst|reggy~167_combout\,
	combout => \inst|reggy~168_combout\);

-- Location: FF_X16_Y13_N9
\inst|REG_B[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~168_combout\,
	sload => VCC,
	ena => \inst|s_p1[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|REG_B\(2));

-- Location: LCCOMB_X13_Y9_N12
\inst|alu1|unidad_aritmetica|mult|inter[10]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|inter\(10) = (\inst|REG_B\(2) & \inst|REG_A\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|REG_B\(2),
	datad => \inst|REG_A\(0),
	combout => \inst|alu1|unidad_aritmetica|mult|inter\(10));

-- Location: LCCOMB_X13_Y9_N16
\inst|alu1|unidad_aritmetica|mult|multi2|s2|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi2|s2|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|mult|inter\(10) & (\inst|alu1|unidad_aritmetica|mult|multi1|s1|Cout~0_combout\ $ (\inst|alu1|unidad_aritmetica|mult|inter\(2) $ 
-- (\inst|alu1|unidad_logica|salida~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|inter\(10),
	datab => \inst|alu1|unidad_aritmetica|mult|multi1|s1|Cout~0_combout\,
	datac => \inst|alu1|unidad_aritmetica|mult|inter\(2),
	datad => \inst|alu1|unidad_logica|salida~5_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi2|s2|Cout~0_combout\);

-- Location: LCCOMB_X14_Y9_N22
\inst|alu1|unidad_aritmetica|mult|multi2|s3|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi2|s3|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|mult|multi2|s2|Cout~0_combout\ $ (\inst|alu1|unidad_aritmetica|mult|multi1|s3|Suma~0_combout\ $ (((\inst|REG_B\(2) & \inst|REG_A\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|multi2|s2|Cout~0_combout\,
	datab => \inst|REG_B\(2),
	datac => \inst|alu1|unidad_aritmetica|mult|multi1|s3|Suma~0_combout\,
	datad => \inst|REG_A\(1),
	combout => \inst|alu1|unidad_aritmetica|mult|multi2|s3|Suma~0_combout\);

-- Location: LCCOMB_X14_Y9_N26
\inst|alu1|unidad_aritmetica|mult|multi3|s3|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi3|s3|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|mult|multi2|s3|Suma~0_combout\ $ (((\inst|REG_B\(3) & \inst|REG_A\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(3),
	datac => \inst|alu1|unidad_aritmetica|mult|multi2|s3|Suma~0_combout\,
	datad => \inst|REG_A\(0),
	combout => \inst|alu1|unidad_aritmetica|mult|multi3|s3|Suma~0_combout\);

-- Location: LCCOMB_X14_Y15_N4
\inst|alu1|unidad_aritmetica|suma|s3|Suma\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|s3|Suma~combout\ = \inst|alu1|unidad_aritmetica|suma|s2|Cout~combout\ $ (\inst|alu1|unidad_aritmetica|suma|s2|Cout2~0_combout\ $ (\inst|alu1|unidad_aritmetica|suma|Yop~2_combout\ $ 
-- (\inst|alu1|unidad_aritmetica|suma|Xop\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|suma|s2|Cout~combout\,
	datab => \inst|alu1|unidad_aritmetica|suma|s2|Cout2~0_combout\,
	datac => \inst|alu1|unidad_aritmetica|suma|Yop~2_combout\,
	datad => \inst|alu1|unidad_aritmetica|suma|Xop\(3),
	combout => \inst|alu1|unidad_aritmetica|suma|s3|Suma~combout\);

-- Location: LCCOMB_X14_Y15_N26
\inst|alu1|unidad_aritmetica|resta|s3|Suma\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|resta|s3|Suma~combout\ = \inst|alu1|unidad_aritmetica|suma|Xop\(3) $ (\inst|alu1|unidad_aritmetica|suma|Yop~2_combout\ $ (\inst|alu1|unidad_aritmetica|resta|s2|Cout~0_combout\ $ 
-- (\inst|alu1|unidad_aritmetica|resta|s2|Cout2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|suma|Xop\(3),
	datab => \inst|alu1|unidad_aritmetica|suma|Yop~2_combout\,
	datac => \inst|alu1|unidad_aritmetica|resta|s2|Cout~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|resta|s2|Cout2~4_combout\,
	combout => \inst|alu1|unidad_aritmetica|resta|s3|Suma~combout\);

-- Location: LCCOMB_X14_Y9_N16
\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~12_combout\ = (!\inst|alu1|Mux10~0_combout\ & ((\inst|alu1|Mux11~0_combout\ & ((\inst|alu1|unidad_aritmetica|resta|s3|Suma~combout\))) # (!\inst|alu1|Mux11~0_combout\ & 
-- (!\inst|alu1|unidad_aritmetica|suma|s3|Suma~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|suma|s3|Suma~combout\,
	datab => \inst|alu1|Mux11~0_combout\,
	datac => \inst|alu1|Mux10~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|resta|s3|Suma~combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~12_combout\);

-- Location: LCCOMB_X14_Y9_N8
\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~13_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~12_combout\) # ((!\inst|alu1|unidad_aritmetica|mult|multi3|s3|Suma~0_combout\ & \inst|alu1|Mux10~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|multi3|s3|Suma~0_combout\,
	datac => \inst|alu1|Mux10~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~12_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~13_combout\);

-- Location: LCCOMB_X11_Y13_N22
\inst|alu1|unidad_aritmetica|mult|inter[18]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|inter\(18) = (\inst|REG_A\(3) & \inst|REG_B\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(3),
	datad => \inst|REG_B\(3),
	combout => \inst|alu1|unidad_aritmetica|mult|inter\(18));

-- Location: FF_X11_Y13_N9
\inst|alu1|unidad_logica|aux[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|alu1|unidad_logica|aux[3]~13_combout\,
	ena => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|unidad_logica|aux\(3));

-- Location: LCCOMB_X12_Y13_N22
\inst|alu1|unidad_logica|salida~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|salida~17_combout\ = (\inst|alu1|Mux10~0_combout\ & (((\inst|alu1|unidad_logica|aux\(3)) # (!\inst|alu1|Mux11~0_combout\)))) # (!\inst|alu1|Mux10~0_combout\ & (\inst|alu1|unidad_aritmetica|mult|inter\(18) & 
-- (!\inst|alu1|Mux11~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|inter\(18),
	datab => \inst|alu1|Mux10~0_combout\,
	datac => \inst|alu1|Mux11~0_combout\,
	datad => \inst|alu1|unidad_logica|aux\(3),
	combout => \inst|alu1|unidad_logica|salida~17_combout\);

-- Location: LCCOMB_X12_Y13_N14
\inst|alu1|unidad_logica|salida~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|salida~18_combout\ = (\inst|alu1|unidad_logica|salida~17_combout\ & (((!\inst|alu1|unidad_logica|salida[0]~30_combout\)) # (!\inst|REG_A\(3)))) # (!\inst|alu1|unidad_logica|salida~17_combout\ & 
-- (\inst|alu1|unidad_logica|salida[0]~30_combout\ & ((\inst|REG_A\(3)) # (\inst|REG_B\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_logica|salida~17_combout\,
	datab => \inst|REG_A\(3),
	datac => \inst|alu1|unidad_logica|salida[0]~30_combout\,
	datad => \inst|REG_B\(3),
	combout => \inst|alu1|unidad_logica|salida~18_combout\);

-- Location: FF_X12_Y13_N15
\inst|alu1|unidad_logica|salida[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|alu1|unidad_logica|salida~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|unidad_logica|salida\(3));

-- Location: FF_X13_Y13_N27
\inst|alu1|barrel_shifters|aux[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|REG_A\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|barrel_shifters|aux\(3));

-- Location: FF_X13_Y13_N23
\inst|alu1|barrel_shifters|salShifters[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|alu1|barrel_shifters|aux\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|barrel_shifters|salShifters\(3));

-- Location: LCCOMB_X13_Y13_N22
\inst|alu1|Mux6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux6~2_combout\ = (\inst|alu1|Mux2~6_combout\ & ((\inst|alu1|unidad_logica|salida\(3)) # ((!\inst|alu1|Mux2~7_combout\)))) # (!\inst|alu1|Mux2~6_combout\ & (((\inst|alu1|barrel_shifters|salShifters\(3) & \inst|alu1|Mux2~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_logica|salida\(3),
	datab => \inst|alu1|Mux2~6_combout\,
	datac => \inst|alu1|barrel_shifters|salShifters\(3),
	datad => \inst|alu1|Mux2~7_combout\,
	combout => \inst|alu1|Mux6~2_combout\);

-- Location: LCCOMB_X14_Y9_N20
\inst|alu1|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux6~0_combout\ = (\inst|alu1|Mux11~0_combout\ & (((\inst|alu1|Mux10~0_combout\)))) # (!\inst|alu1|Mux11~0_combout\ & ((\inst|alu1|Mux10~0_combout\ & (\inst|alu1|unidad_aritmetica|mult|multi3|s3|Suma~0_combout\)) # (!\inst|alu1|Mux10~0_combout\ 
-- & ((\inst|alu1|unidad_aritmetica|suma|s3|Suma~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|multi3|s3|Suma~0_combout\,
	datab => \inst|alu1|Mux11~0_combout\,
	datac => \inst|alu1|Mux10~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|suma|s3|Suma~combout\,
	combout => \inst|alu1|Mux6~0_combout\);

-- Location: LCCOMB_X14_Y9_N6
\inst|alu1|Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux6~1_combout\ = (\inst|alu1|Mux6~0_combout\ & (((!\inst|alu1|Mux11~0_combout\)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan4~14_combout\))) # (!\inst|alu1|Mux6~0_combout\ & (((\inst|alu1|Mux11~0_combout\ & 
-- !\inst|alu1|unidad_aritmetica|resta|s3|Suma~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|LessThan4~14_combout\,
	datab => \inst|alu1|Mux6~0_combout\,
	datac => \inst|alu1|Mux11~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|resta|s3|Suma~combout\,
	combout => \inst|alu1|Mux6~1_combout\);

-- Location: LCCOMB_X14_Y12_N18
\inst|alu1|Mux6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux6~3_combout\ = (\inst|alu1|Mux2~3_combout\ & ((\inst|alu1|Mux6~2_combout\ & (\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~25_combout\)) # (!\inst|alu1|Mux6~2_combout\ & ((\inst|alu1|Mux6~1_combout\))))) # 
-- (!\inst|alu1|Mux2~3_combout\ & (((\inst|alu1|Mux6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~25_combout\,
	datab => \inst|alu1|Mux2~3_combout\,
	datac => \inst|alu1|Mux6~2_combout\,
	datad => \inst|alu1|Mux6~1_combout\,
	combout => \inst|alu1|Mux6~3_combout\);

-- Location: LCCOMB_X13_Y11_N16
\inst|reggy~207\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~207_combout\ = (\inst|Equal0~0_combout\ & (\inst|REG_D\(3))) # (!\inst|Equal0~0_combout\ & (((\inst|alu1|Mux2~10_combout\) # (\inst|alu1|Mux6~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_D\(3),
	datab => \inst|Equal0~0_combout\,
	datac => \inst|alu1|Mux2~10_combout\,
	datad => \inst|alu1|Mux6~3_combout\,
	combout => \inst|reggy~207_combout\);

-- Location: FF_X13_Y11_N3
\inst|reggy~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~207_combout\,
	sload => VCC,
	ena => \inst|reggy~200_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy~27_q\);

-- Location: LCCOMB_X13_Y11_N2
\inst|reggy~136\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~136_combout\ = (\inst|MAR\(5) & (\inst|MAR\(4))) # (!\inst|MAR\(5) & ((\inst|MAR\(4) & (\inst|reggy~27_q\)) # (!\inst|MAR\(4) & ((\inst|reggy~17_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MAR\(5),
	datab => \inst|MAR\(4),
	datac => \inst|reggy~27_q\,
	datad => \inst|reggy~17_q\,
	combout => \inst|reggy~136_combout\);

-- Location: LCCOMB_X13_Y12_N8
\inst|reggy~137\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~137_combout\ = (\inst|MAR\(5) & ((\inst|reggy~136_combout\ & ((\inst|reggy~47_q\))) # (!\inst|reggy~136_combout\ & (\inst|reggy~37_q\)))) # (!\inst|MAR\(5) & (\inst|reggy~136_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MAR\(5),
	datab => \inst|reggy~136_combout\,
	datac => \inst|reggy~37_q\,
	datad => \inst|reggy~47_q\,
	combout => \inst|reggy~137_combout\);

-- Location: LCCOMB_X12_Y11_N20
\inst|reggy~134\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~134_combout\ = (\inst|MAR\(4) & (((\inst|MAR\(5))))) # (!\inst|MAR\(4) & ((\inst|MAR\(5) & ((\inst|reggy~77_q\))) # (!\inst|MAR\(5) & (\inst|reggy~57_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy~57_q\,
	datab => \inst|MAR\(4),
	datac => \inst|reggy~77_q\,
	datad => \inst|MAR\(5),
	combout => \inst|reggy~134_combout\);

-- Location: LCCOMB_X12_Y12_N16
\inst|reggy~135\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~135_combout\ = (\inst|reggy~134_combout\ & ((\inst|reggy~87_q\) # ((!\inst|MAR\(4))))) # (!\inst|reggy~134_combout\ & (((\inst|reggy~67_q\ & \inst|MAR\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy~87_q\,
	datab => \inst|reggy~134_combout\,
	datac => \inst|reggy~67_q\,
	datad => \inst|MAR\(4),
	combout => \inst|reggy~135_combout\);

-- Location: LCCOMB_X12_Y13_N20
\inst|reggy~138\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~138_combout\ = (\inst|MAR\(6) & ((\inst|reggy~135_combout\))) # (!\inst|MAR\(6) & (\inst|reggy~137_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|reggy~137_combout\,
	datac => \inst|MAR\(6),
	datad => \inst|reggy~135_combout\,
	combout => \inst|reggy~138_combout\);

-- Location: FF_X12_Y13_N21
\inst|REG_A[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|reggy~138_combout\,
	ena => \inst|s_p1[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|REG_A\(3));

-- Location: LCCOMB_X14_Y15_N18
\inst|alu1|unidad_aritmetica|resta|s3|Cout2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|resta|s3|Cout2~4_combout\ = (!\inst|alu1|unidad_aritmetica|suma|Yop~2_combout\ & (\inst|alu1|unidad_aritmetica|resta|s2|Cout2~4_combout\ & (\inst|REG_A\(3) $ (\inst|REG_A\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(3),
	datab => \inst|REG_A\(9),
	datac => \inst|alu1|unidad_aritmetica|suma|Yop~2_combout\,
	datad => \inst|alu1|unidad_aritmetica|resta|s2|Cout2~4_combout\,
	combout => \inst|alu1|unidad_aritmetica|resta|s3|Cout2~4_combout\);

-- Location: LCCOMB_X14_Y14_N24
\inst|alu1|unidad_aritmetica|resta|s4|Cout2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|resta|s4|Cout2~4_combout\ = (\inst|alu1|unidad_aritmetica|resta|s3|Cout2~4_combout\ & (!\inst|alu1|unidad_aritmetica|suma|Yop~3_combout\ & (\inst|REG_A\(9) $ (\inst|REG_A\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|resta|s3|Cout2~4_combout\,
	datab => \inst|REG_A\(9),
	datac => \inst|REG_A\(4),
	datad => \inst|alu1|unidad_aritmetica|suma|Yop~3_combout\,
	combout => \inst|alu1|unidad_aritmetica|resta|s4|Cout2~4_combout\);

-- Location: LCCOMB_X14_Y14_N18
\inst|alu1|unidad_aritmetica|resta|s5|Cout2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|resta|s5|Cout2~4_combout\ = (!\inst|alu1|unidad_aritmetica|suma|Yop~4_combout\ & (\inst|alu1|unidad_aritmetica|resta|s4|Cout2~4_combout\ & (\inst|REG_A\(5) $ (\inst|REG_A\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|suma|Yop~4_combout\,
	datab => \inst|REG_A\(5),
	datac => \inst|REG_A\(9),
	datad => \inst|alu1|unidad_aritmetica|resta|s4|Cout2~4_combout\,
	combout => \inst|alu1|unidad_aritmetica|resta|s5|Cout2~4_combout\);

-- Location: LCCOMB_X13_Y14_N4
\inst|alu1|unidad_aritmetica|resta|s6|Cout2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|resta|s6|Cout2~4_combout\ = (!\inst|alu1|unidad_aritmetica|suma|Yop~1_combout\ & (\inst|alu1|unidad_aritmetica|resta|s5|Cout2~4_combout\ & (\inst|REG_A\(6) $ (\inst|REG_A\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(6),
	datab => \inst|REG_A\(9),
	datac => \inst|alu1|unidad_aritmetica|suma|Yop~1_combout\,
	datad => \inst|alu1|unidad_aritmetica|resta|s5|Cout2~4_combout\,
	combout => \inst|alu1|unidad_aritmetica|resta|s6|Cout2~4_combout\);

-- Location: LCCOMB_X14_Y13_N14
\inst|alu1|unidad_aritmetica|suma|Yop~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|Yop~0_combout\ = \inst|REG_B\(7) $ (\inst|REG_B\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(7),
	datad => \inst|REG_B\(9),
	combout => \inst|alu1|unidad_aritmetica|suma|Yop~0_combout\);

-- Location: LCCOMB_X13_Y14_N10
\inst|alu1|unidad_aritmetica|resta|s7|Cout2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|resta|s7|Cout2~4_combout\ = (\inst|alu1|unidad_aritmetica|resta|s6|Cout2~4_combout\ & (!\inst|alu1|unidad_aritmetica|suma|Yop~0_combout\ & (\inst|REG_A\(7) $ (\inst|REG_A\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(7),
	datab => \inst|REG_A\(9),
	datac => \inst|alu1|unidad_aritmetica|resta|s6|Cout2~4_combout\,
	datad => \inst|alu1|unidad_aritmetica|suma|Yop~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|resta|s7|Cout2~4_combout\);

-- Location: LCCOMB_X13_Y13_N0
\inst|alu1|unidad_aritmetica|suma|Xop[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|Xop\(7) = \inst|REG_A\(7) $ (\inst|REG_A\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|REG_A\(7),
	datad => \inst|REG_A\(9),
	combout => \inst|alu1|unidad_aritmetica|suma|Xop\(7));

-- Location: LCCOMB_X14_Y14_N22
\inst|alu1|unidad_aritmetica|resta|s6|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|resta|s6|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|resta|s5|Cout2~4_combout\) # ((\inst|alu1|unidad_aritmetica|resta|s5|Cout~0_combout\ & ((\inst|alu1|unidad_aritmetica|suma|Xop\(6)) # 
-- (!\inst|alu1|unidad_aritmetica|suma|Yop~1_combout\))) # (!\inst|alu1|unidad_aritmetica|resta|s5|Cout~0_combout\ & (\inst|alu1|unidad_aritmetica|suma|Xop\(6) & !\inst|alu1|unidad_aritmetica|suma|Yop~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|resta|s5|Cout~0_combout\,
	datab => \inst|alu1|unidad_aritmetica|suma|Xop\(6),
	datac => \inst|alu1|unidad_aritmetica|suma|Yop~1_combout\,
	datad => \inst|alu1|unidad_aritmetica|resta|s5|Cout2~4_combout\,
	combout => \inst|alu1|unidad_aritmetica|resta|s6|Cout~0_combout\);

-- Location: LCCOMB_X13_Y14_N24
\inst|alu1|unidad_aritmetica|resta|s7|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|resta|s7|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|resta|s6|Cout2~4_combout\) # ((\inst|alu1|unidad_aritmetica|suma|Yop~0_combout\ & (\inst|alu1|unidad_aritmetica|suma|Xop\(7) & 
-- \inst|alu1|unidad_aritmetica|resta|s6|Cout~0_combout\)) # (!\inst|alu1|unidad_aritmetica|suma|Yop~0_combout\ & ((\inst|alu1|unidad_aritmetica|suma|Xop\(7)) # (\inst|alu1|unidad_aritmetica|resta|s6|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|suma|Yop~0_combout\,
	datab => \inst|alu1|unidad_aritmetica|suma|Xop\(7),
	datac => \inst|alu1|unidad_aritmetica|resta|s6|Cout2~4_combout\,
	datad => \inst|alu1|unidad_aritmetica|resta|s6|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|resta|s7|Cout~0_combout\);

-- Location: LCCOMB_X12_Y14_N20
\inst|alu1|unidad_aritmetica|resta|Sfaux~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|resta|Sfaux~0_combout\ = (\inst|REG_B\(9) & ((\inst|REG_A\(9) & ((\inst|alu1|unidad_aritmetica|resta|s7|Cout2~4_combout\) # (\inst|alu1|unidad_aritmetica|resta|s7|Cout~0_combout\))) # (!\inst|REG_A\(9) & 
-- (!\inst|alu1|unidad_aritmetica|resta|s7|Cout2~4_combout\)))) # (!\inst|REG_B\(9) & (!\inst|REG_A\(9) & ((\inst|alu1|unidad_aritmetica|resta|s7|Cout2~4_combout\) # (\inst|alu1|unidad_aritmetica|resta|s7|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101110010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(9),
	datab => \inst|REG_A\(9),
	datac => \inst|alu1|unidad_aritmetica|resta|s7|Cout2~4_combout\,
	datad => \inst|alu1|unidad_aritmetica|resta|s7|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|resta|Sfaux~0_combout\);

-- Location: LCCOMB_X13_Y10_N12
\inst|alu1|unidad_aritmetica|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|Mux9~0_combout\ = (\inst|alu1|unidad_aritmetica|resta|Sfaux~0_combout\ & (\inst|REG_B\(0) $ (((\inst|REG_A\(0)))))) # (!\inst|alu1|unidad_aritmetica|resta|Sfaux~0_combout\ & 
-- (((\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(0),
	datab => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~19_combout\,
	datac => \inst|REG_A\(0),
	datad => \inst|alu1|unidad_aritmetica|resta|Sfaux~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|Mux9~0_combout\);

-- Location: LCCOMB_X18_Y10_N10
\inst|alu1|unidad_aritmetica|divi|Add5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add5~0_combout\ = (\inst|REG_A\(2) & ((GND) # (!\inst|REG_B\(0)))) # (!\inst|REG_A\(2) & (\inst|REG_B\(0) $ (GND)))
-- \inst|alu1|unidad_aritmetica|divi|Add5~1\ = CARRY((\inst|REG_A\(2)) # (!\inst|REG_B\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(2),
	datab => \inst|REG_B\(0),
	datad => VCC,
	combout => \inst|alu1|unidad_aritmetica|divi|Add5~0_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add5~1\);

-- Location: LCCOMB_X18_Y10_N12
\inst|alu1|unidad_aritmetica|divi|Add5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add5~2_combout\ = (\inst|REG_B\(1) & ((\inst|alu1|unidad_aritmetica|divi|Add4~20_combout\ & (!\inst|alu1|unidad_aritmetica|divi|Add5~1\)) # (!\inst|alu1|unidad_aritmetica|divi|Add4~20_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add5~1\) # (GND))))) # (!\inst|REG_B\(1) & ((\inst|alu1|unidad_aritmetica|divi|Add4~20_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add5~1\ & VCC)) # (!\inst|alu1|unidad_aritmetica|divi|Add4~20_combout\ & 
-- (!\inst|alu1|unidad_aritmetica|divi|Add5~1\))))
-- \inst|alu1|unidad_aritmetica|divi|Add5~3\ = CARRY((\inst|REG_B\(1) & ((!\inst|alu1|unidad_aritmetica|divi|Add5~1\) # (!\inst|alu1|unidad_aritmetica|divi|Add4~20_combout\))) # (!\inst|REG_B\(1) & (!\inst|alu1|unidad_aritmetica|divi|Add4~20_combout\ & 
-- !\inst|alu1|unidad_aritmetica|divi|Add5~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(1),
	datab => \inst|alu1|unidad_aritmetica|divi|Add4~20_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add5~1\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add5~2_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add5~3\);

-- Location: LCCOMB_X18_Y10_N14
\inst|alu1|unidad_aritmetica|divi|Add5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add5~4_combout\ = ((\inst|REG_B\(2) $ (\inst|alu1|unidad_aritmetica|divi|Add4~19_combout\ $ (\inst|alu1|unidad_aritmetica|divi|Add5~3\)))) # (GND)
-- \inst|alu1|unidad_aritmetica|divi|Add5~5\ = CARRY((\inst|REG_B\(2) & (\inst|alu1|unidad_aritmetica|divi|Add4~19_combout\ & !\inst|alu1|unidad_aritmetica|divi|Add5~3\)) # (!\inst|REG_B\(2) & ((\inst|alu1|unidad_aritmetica|divi|Add4~19_combout\) # 
-- (!\inst|alu1|unidad_aritmetica|divi|Add5~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(2),
	datab => \inst|alu1|unidad_aritmetica|divi|Add4~19_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add5~3\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add5~4_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add5~5\);

-- Location: LCCOMB_X18_Y10_N16
\inst|alu1|unidad_aritmetica|divi|Add5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add5~6_combout\ = (\inst|REG_B\(3) & ((\inst|alu1|unidad_aritmetica|divi|Add4~18_combout\ & (!\inst|alu1|unidad_aritmetica|divi|Add5~5\)) # (!\inst|alu1|unidad_aritmetica|divi|Add4~18_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add5~5\) # (GND))))) # (!\inst|REG_B\(3) & ((\inst|alu1|unidad_aritmetica|divi|Add4~18_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add5~5\ & VCC)) # (!\inst|alu1|unidad_aritmetica|divi|Add4~18_combout\ & 
-- (!\inst|alu1|unidad_aritmetica|divi|Add5~5\))))
-- \inst|alu1|unidad_aritmetica|divi|Add5~7\ = CARRY((\inst|REG_B\(3) & ((!\inst|alu1|unidad_aritmetica|divi|Add5~5\) # (!\inst|alu1|unidad_aritmetica|divi|Add4~18_combout\))) # (!\inst|REG_B\(3) & (!\inst|alu1|unidad_aritmetica|divi|Add4~18_combout\ & 
-- !\inst|alu1|unidad_aritmetica|divi|Add5~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(3),
	datab => \inst|alu1|unidad_aritmetica|divi|Add4~18_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add5~5\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add5~6_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add5~7\);

-- Location: LCCOMB_X18_Y10_N18
\inst|alu1|unidad_aritmetica|divi|Add5~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add5~8_combout\ = ((\inst|REG_B\(4) $ (\inst|alu1|unidad_aritmetica|divi|Add4~17_combout\ $ (\inst|alu1|unidad_aritmetica|divi|Add5~7\)))) # (GND)
-- \inst|alu1|unidad_aritmetica|divi|Add5~9\ = CARRY((\inst|REG_B\(4) & (\inst|alu1|unidad_aritmetica|divi|Add4~17_combout\ & !\inst|alu1|unidad_aritmetica|divi|Add5~7\)) # (!\inst|REG_B\(4) & ((\inst|alu1|unidad_aritmetica|divi|Add4~17_combout\) # 
-- (!\inst|alu1|unidad_aritmetica|divi|Add5~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(4),
	datab => \inst|alu1|unidad_aritmetica|divi|Add4~17_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add5~7\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add5~8_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add5~9\);

-- Location: LCCOMB_X18_Y10_N20
\inst|alu1|unidad_aritmetica|divi|Add5~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add5~10_combout\ = (\inst|alu1|unidad_aritmetica|divi|Add4~16_combout\ & ((\inst|REG_B\(5) & (!\inst|alu1|unidad_aritmetica|divi|Add5~9\)) # (!\inst|REG_B\(5) & (\inst|alu1|unidad_aritmetica|divi|Add5~9\ & VCC)))) # 
-- (!\inst|alu1|unidad_aritmetica|divi|Add4~16_combout\ & ((\inst|REG_B\(5) & ((\inst|alu1|unidad_aritmetica|divi|Add5~9\) # (GND))) # (!\inst|REG_B\(5) & (!\inst|alu1|unidad_aritmetica|divi|Add5~9\))))
-- \inst|alu1|unidad_aritmetica|divi|Add5~11\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add4~16_combout\ & (\inst|REG_B\(5) & !\inst|alu1|unidad_aritmetica|divi|Add5~9\)) # (!\inst|alu1|unidad_aritmetica|divi|Add4~16_combout\ & ((\inst|REG_B\(5)) # 
-- (!\inst|alu1|unidad_aritmetica|divi|Add5~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add4~16_combout\,
	datab => \inst|REG_B\(5),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add5~9\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add5~10_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add5~11\);

-- Location: LCCOMB_X18_Y10_N22
\inst|alu1|unidad_aritmetica|divi|Add5~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add5~12_combout\ = \inst|alu1|unidad_aritmetica|divi|Add4~15_combout\ $ (\inst|alu1|unidad_aritmetica|divi|Add5~11\ $ (\inst|REG_B\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add4~15_combout\,
	datad => \inst|REG_B\(6),
	cin => \inst|alu1|unidad_aritmetica|divi|Add5~11\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add5~12_combout\);

-- Location: LCCOMB_X17_Y11_N0
\inst|alu1|unidad_aritmetica|divi|Add5~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add5~14_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan5~14_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add4~15_combout\)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan5~14_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add5~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|unidad_aritmetica|divi|Add4~15_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|Add5~12_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan5~14_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add5~14_combout\);

-- Location: LCCOMB_X17_Y11_N10
\inst|alu1|unidad_aritmetica|divi|Add5~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add5~15_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan5~14_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add4~16_combout\)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan5~14_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add5~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|unidad_aritmetica|divi|Add4~16_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|Add5~10_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan5~14_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add5~15_combout\);

-- Location: LCCOMB_X17_Y11_N12
\inst|alu1|unidad_aritmetica|divi|Add5~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add5~16_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan5~14_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add4~17_combout\)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan5~14_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add5~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add4~17_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|Add5~8_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan5~14_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add5~16_combout\);

-- Location: LCCOMB_X17_Y11_N6
\inst|alu1|unidad_aritmetica|divi|Add5~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add5~17_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan5~14_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add4~18_combout\)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan5~14_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add5~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|unidad_aritmetica|divi|Add4~18_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|Add5~6_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan5~14_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add5~17_combout\);

-- Location: LCCOMB_X18_Y11_N26
\inst|alu1|unidad_aritmetica|divi|Add5~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add5~18_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan5~14_combout\ & ((\inst|alu1|unidad_aritmetica|divi|Add4~19_combout\))) # (!\inst|alu1|unidad_aritmetica|divi|LessThan5~14_combout\ & 
-- (\inst|alu1|unidad_aritmetica|divi|Add5~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add5~4_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|Add4~19_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan5~14_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add5~18_combout\);

-- Location: LCCOMB_X18_Y11_N20
\inst|alu1|unidad_aritmetica|divi|Add5~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add5~19_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan5~14_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add4~20_combout\)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan5~14_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add5~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add4~20_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|Add5~2_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan5~14_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add5~19_combout\);

-- Location: LCCOMB_X18_Y11_N2
\inst|alu1|unidad_aritmetica|divi|Add5~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add5~20_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan5~14_combout\ & (\inst|REG_A\(2))) # (!\inst|alu1|unidad_aritmetica|divi|LessThan5~14_combout\ & ((\inst|alu1|unidad_aritmetica|divi|Add5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(2),
	datac => \inst|alu1|unidad_aritmetica|divi|Add5~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan5~14_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add5~20_combout\);

-- Location: LCCOMB_X17_Y11_N14
\inst|alu1|unidad_aritmetica|divi|LessThan6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan6~1_cout\ = CARRY((\inst|REG_B\(0) & !\inst|REG_A\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(0),
	datab => \inst|REG_A\(1),
	datad => VCC,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan6~1_cout\);

-- Location: LCCOMB_X17_Y11_N16
\inst|alu1|unidad_aritmetica|divi|LessThan6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan6~3_cout\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add5~20_combout\ & ((!\inst|alu1|unidad_aritmetica|divi|LessThan6~1_cout\) # (!\inst|REG_B\(1)))) # (!\inst|alu1|unidad_aritmetica|divi|Add5~20_combout\ & 
-- (!\inst|REG_B\(1) & !\inst|alu1|unidad_aritmetica|divi|LessThan6~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add5~20_combout\,
	datab => \inst|REG_B\(1),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan6~1_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan6~3_cout\);

-- Location: LCCOMB_X17_Y11_N18
\inst|alu1|unidad_aritmetica|divi|LessThan6~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan6~5_cout\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add5~19_combout\ & (\inst|REG_B\(2) & !\inst|alu1|unidad_aritmetica|divi|LessThan6~3_cout\)) # (!\inst|alu1|unidad_aritmetica|divi|Add5~19_combout\ & 
-- ((\inst|REG_B\(2)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan6~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add5~19_combout\,
	datab => \inst|REG_B\(2),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan6~3_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan6~5_cout\);

-- Location: LCCOMB_X17_Y11_N20
\inst|alu1|unidad_aritmetica|divi|LessThan6~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan6~7_cout\ = CARRY((\inst|REG_B\(3) & (\inst|alu1|unidad_aritmetica|divi|Add5~18_combout\ & !\inst|alu1|unidad_aritmetica|divi|LessThan6~5_cout\)) # (!\inst|REG_B\(3) & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add5~18_combout\) # (!\inst|alu1|unidad_aritmetica|divi|LessThan6~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(3),
	datab => \inst|alu1|unidad_aritmetica|divi|Add5~18_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan6~5_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan6~7_cout\);

-- Location: LCCOMB_X17_Y11_N22
\inst|alu1|unidad_aritmetica|divi|LessThan6~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan6~9_cout\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add5~17_combout\ & (\inst|REG_B\(4) & !\inst|alu1|unidad_aritmetica|divi|LessThan6~7_cout\)) # (!\inst|alu1|unidad_aritmetica|divi|Add5~17_combout\ & 
-- ((\inst|REG_B\(4)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan6~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add5~17_combout\,
	datab => \inst|REG_B\(4),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan6~7_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan6~9_cout\);

-- Location: LCCOMB_X17_Y11_N24
\inst|alu1|unidad_aritmetica|divi|LessThan6~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan6~11_cout\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add5~16_combout\ & ((!\inst|alu1|unidad_aritmetica|divi|LessThan6~9_cout\) # (!\inst|REG_B\(5)))) # (!\inst|alu1|unidad_aritmetica|divi|Add5~16_combout\ & 
-- (!\inst|REG_B\(5) & !\inst|alu1|unidad_aritmetica|divi|LessThan6~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add5~16_combout\,
	datab => \inst|REG_B\(5),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan6~9_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan6~11_cout\);

-- Location: LCCOMB_X17_Y11_N26
\inst|alu1|unidad_aritmetica|divi|LessThan6~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan6~13_cout\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add5~15_combout\ & (\inst|REG_B\(6) & !\inst|alu1|unidad_aritmetica|divi|LessThan6~11_cout\)) # (!\inst|alu1|unidad_aritmetica|divi|Add5~15_combout\ & 
-- ((\inst|REG_B\(6)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan6~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add5~15_combout\,
	datab => \inst|REG_B\(6),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan6~11_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan6~13_cout\);

-- Location: LCCOMB_X17_Y11_N28
\inst|alu1|unidad_aritmetica|divi|LessThan6~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan6~14_combout\ = (\inst|REG_B\(7) & ((\inst|alu1|unidad_aritmetica|divi|LessThan6~13_cout\) # (!\inst|alu1|unidad_aritmetica|divi|Add5~14_combout\))) # (!\inst|REG_B\(7) & 
-- (\inst|alu1|unidad_aritmetica|divi|LessThan6~13_cout\ & !\inst|alu1|unidad_aritmetica|divi|Add5~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|REG_B\(7),
	datad => \inst|alu1|unidad_aritmetica|divi|Add5~14_combout\,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan6~13_cout\,
	combout => \inst|alu1|unidad_aritmetica|divi|LessThan6~14_combout\);

-- Location: LCCOMB_X19_Y11_N14
\inst|alu1|unidad_aritmetica|divi|Add6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add6~0_combout\ = (\inst|REG_B\(0) & (\inst|REG_A\(1) $ (VCC))) # (!\inst|REG_B\(0) & ((\inst|REG_A\(1)) # (GND)))
-- \inst|alu1|unidad_aritmetica|divi|Add6~1\ = CARRY((\inst|REG_A\(1)) # (!\inst|REG_B\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(0),
	datab => \inst|REG_A\(1),
	datad => VCC,
	combout => \inst|alu1|unidad_aritmetica|divi|Add6~0_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add6~1\);

-- Location: LCCOMB_X19_Y11_N16
\inst|alu1|unidad_aritmetica|divi|Add6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add6~2_combout\ = (\inst|alu1|unidad_aritmetica|divi|Add5~20_combout\ & ((\inst|REG_B\(1) & (!\inst|alu1|unidad_aritmetica|divi|Add6~1\)) # (!\inst|REG_B\(1) & (\inst|alu1|unidad_aritmetica|divi|Add6~1\ & VCC)))) # 
-- (!\inst|alu1|unidad_aritmetica|divi|Add5~20_combout\ & ((\inst|REG_B\(1) & ((\inst|alu1|unidad_aritmetica|divi|Add6~1\) # (GND))) # (!\inst|REG_B\(1) & (!\inst|alu1|unidad_aritmetica|divi|Add6~1\))))
-- \inst|alu1|unidad_aritmetica|divi|Add6~3\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add5~20_combout\ & (\inst|REG_B\(1) & !\inst|alu1|unidad_aritmetica|divi|Add6~1\)) # (!\inst|alu1|unidad_aritmetica|divi|Add5~20_combout\ & ((\inst|REG_B\(1)) # 
-- (!\inst|alu1|unidad_aritmetica|divi|Add6~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add5~20_combout\,
	datab => \inst|REG_B\(1),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add6~1\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add6~2_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add6~3\);

-- Location: LCCOMB_X19_Y11_N18
\inst|alu1|unidad_aritmetica|divi|Add6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add6~4_combout\ = ((\inst|REG_B\(2) $ (\inst|alu1|unidad_aritmetica|divi|Add5~19_combout\ $ (\inst|alu1|unidad_aritmetica|divi|Add6~3\)))) # (GND)
-- \inst|alu1|unidad_aritmetica|divi|Add6~5\ = CARRY((\inst|REG_B\(2) & (\inst|alu1|unidad_aritmetica|divi|Add5~19_combout\ & !\inst|alu1|unidad_aritmetica|divi|Add6~3\)) # (!\inst|REG_B\(2) & ((\inst|alu1|unidad_aritmetica|divi|Add5~19_combout\) # 
-- (!\inst|alu1|unidad_aritmetica|divi|Add6~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(2),
	datab => \inst|alu1|unidad_aritmetica|divi|Add5~19_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add6~3\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add6~4_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add6~5\);

-- Location: LCCOMB_X19_Y11_N20
\inst|alu1|unidad_aritmetica|divi|Add6~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add6~6_combout\ = (\inst|alu1|unidad_aritmetica|divi|Add5~18_combout\ & ((\inst|REG_B\(3) & (!\inst|alu1|unidad_aritmetica|divi|Add6~5\)) # (!\inst|REG_B\(3) & (\inst|alu1|unidad_aritmetica|divi|Add6~5\ & VCC)))) # 
-- (!\inst|alu1|unidad_aritmetica|divi|Add5~18_combout\ & ((\inst|REG_B\(3) & ((\inst|alu1|unidad_aritmetica|divi|Add6~5\) # (GND))) # (!\inst|REG_B\(3) & (!\inst|alu1|unidad_aritmetica|divi|Add6~5\))))
-- \inst|alu1|unidad_aritmetica|divi|Add6~7\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add5~18_combout\ & (\inst|REG_B\(3) & !\inst|alu1|unidad_aritmetica|divi|Add6~5\)) # (!\inst|alu1|unidad_aritmetica|divi|Add5~18_combout\ & ((\inst|REG_B\(3)) # 
-- (!\inst|alu1|unidad_aritmetica|divi|Add6~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add5~18_combout\,
	datab => \inst|REG_B\(3),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add6~5\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add6~6_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add6~7\);

-- Location: LCCOMB_X19_Y11_N22
\inst|alu1|unidad_aritmetica|divi|Add6~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add6~8_combout\ = ((\inst|REG_B\(4) $ (\inst|alu1|unidad_aritmetica|divi|Add5~17_combout\ $ (\inst|alu1|unidad_aritmetica|divi|Add6~7\)))) # (GND)
-- \inst|alu1|unidad_aritmetica|divi|Add6~9\ = CARRY((\inst|REG_B\(4) & (\inst|alu1|unidad_aritmetica|divi|Add5~17_combout\ & !\inst|alu1|unidad_aritmetica|divi|Add6~7\)) # (!\inst|REG_B\(4) & ((\inst|alu1|unidad_aritmetica|divi|Add5~17_combout\) # 
-- (!\inst|alu1|unidad_aritmetica|divi|Add6~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(4),
	datab => \inst|alu1|unidad_aritmetica|divi|Add5~17_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add6~7\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add6~8_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add6~9\);

-- Location: LCCOMB_X19_Y11_N24
\inst|alu1|unidad_aritmetica|divi|Add6~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add6~10_combout\ = (\inst|REG_B\(5) & ((\inst|alu1|unidad_aritmetica|divi|Add5~16_combout\ & (!\inst|alu1|unidad_aritmetica|divi|Add6~9\)) # (!\inst|alu1|unidad_aritmetica|divi|Add5~16_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add6~9\) # (GND))))) # (!\inst|REG_B\(5) & ((\inst|alu1|unidad_aritmetica|divi|Add5~16_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add6~9\ & VCC)) # (!\inst|alu1|unidad_aritmetica|divi|Add5~16_combout\ & 
-- (!\inst|alu1|unidad_aritmetica|divi|Add6~9\))))
-- \inst|alu1|unidad_aritmetica|divi|Add6~11\ = CARRY((\inst|REG_B\(5) & ((!\inst|alu1|unidad_aritmetica|divi|Add6~9\) # (!\inst|alu1|unidad_aritmetica|divi|Add5~16_combout\))) # (!\inst|REG_B\(5) & (!\inst|alu1|unidad_aritmetica|divi|Add5~16_combout\ & 
-- !\inst|alu1|unidad_aritmetica|divi|Add6~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(5),
	datab => \inst|alu1|unidad_aritmetica|divi|Add5~16_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add6~9\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add6~10_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add6~11\);

-- Location: LCCOMB_X19_Y11_N26
\inst|alu1|unidad_aritmetica|divi|Add6~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add6~12_combout\ = \inst|REG_B\(6) $ (\inst|alu1|unidad_aritmetica|divi|Add6~11\ $ (\inst|alu1|unidad_aritmetica|divi|Add5~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|REG_B\(6),
	datad => \inst|alu1|unidad_aritmetica|divi|Add5~15_combout\,
	cin => \inst|alu1|unidad_aritmetica|divi|Add6~11\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add6~12_combout\);

-- Location: LCCOMB_X16_Y11_N2
\inst|alu1|unidad_aritmetica|divi|Add6~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add6~14_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan6~14_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add5~15_combout\)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan6~14_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add6~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|unidad_aritmetica|divi|LessThan6~14_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|Add5~15_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|Add6~12_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add6~14_combout\);

-- Location: LCCOMB_X16_Y11_N8
\inst|alu1|unidad_aritmetica|divi|Add6~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add6~15_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan6~14_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add5~16_combout\)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan6~14_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add6~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|unidad_aritmetica|divi|Add5~16_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|Add6~10_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan6~14_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add6~15_combout\);

-- Location: LCCOMB_X17_Y11_N30
\inst|alu1|unidad_aritmetica|divi|Add6~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add6~16_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan6~14_combout\ & ((\inst|alu1|unidad_aritmetica|divi|Add5~17_combout\))) # (!\inst|alu1|unidad_aritmetica|divi|LessThan6~14_combout\ & 
-- (\inst|alu1|unidad_aritmetica|divi|Add6~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add6~8_combout\,
	datab => \inst|alu1|unidad_aritmetica|divi|Add5~17_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan6~14_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add6~16_combout\);

-- Location: LCCOMB_X16_Y11_N30
\inst|alu1|unidad_aritmetica|divi|Add6~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add6~17_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan6~14_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add5~18_combout\)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan6~14_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add6~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|unidad_aritmetica|divi|Add5~18_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|Add6~6_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan6~14_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add6~17_combout\);

-- Location: LCCOMB_X16_Y11_N4
\inst|alu1|unidad_aritmetica|divi|Add6~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add6~18_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan6~14_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add5~19_combout\)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan6~14_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add6~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add5~19_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|Add6~4_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan6~14_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add6~18_combout\);

-- Location: LCCOMB_X17_Y11_N4
\inst|alu1|unidad_aritmetica|divi|Add6~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add6~19_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan6~14_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add5~20_combout\)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan6~14_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add6~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add5~20_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|Add6~2_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan6~14_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add6~19_combout\);

-- Location: LCCOMB_X17_Y11_N2
\inst|alu1|unidad_aritmetica|divi|Add6~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add6~20_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan6~14_combout\ & (\inst|REG_A\(1))) # (!\inst|alu1|unidad_aritmetica|divi|LessThan6~14_combout\ & ((\inst|alu1|unidad_aritmetica|divi|Add6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|REG_A\(1),
	datac => \inst|alu1|unidad_aritmetica|divi|Add6~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan6~14_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add6~20_combout\);

-- Location: LCCOMB_X16_Y11_N12
\inst|alu1|unidad_aritmetica|divi|LessThan7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan7~1_cout\ = CARRY((!\inst|REG_A\(0) & \inst|REG_B\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(0),
	datab => \inst|REG_B\(0),
	datad => VCC,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan7~1_cout\);

-- Location: LCCOMB_X16_Y11_N14
\inst|alu1|unidad_aritmetica|divi|LessThan7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan7~3_cout\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add6~20_combout\ & ((!\inst|alu1|unidad_aritmetica|divi|LessThan7~1_cout\) # (!\inst|REG_B\(1)))) # (!\inst|alu1|unidad_aritmetica|divi|Add6~20_combout\ & 
-- (!\inst|REG_B\(1) & !\inst|alu1|unidad_aritmetica|divi|LessThan7~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add6~20_combout\,
	datab => \inst|REG_B\(1),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan7~1_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan7~3_cout\);

-- Location: LCCOMB_X16_Y11_N16
\inst|alu1|unidad_aritmetica|divi|LessThan7~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan7~5_cout\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add6~19_combout\ & (\inst|REG_B\(2) & !\inst|alu1|unidad_aritmetica|divi|LessThan7~3_cout\)) # (!\inst|alu1|unidad_aritmetica|divi|Add6~19_combout\ & 
-- ((\inst|REG_B\(2)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan7~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add6~19_combout\,
	datab => \inst|REG_B\(2),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan7~3_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan7~5_cout\);

-- Location: LCCOMB_X16_Y11_N18
\inst|alu1|unidad_aritmetica|divi|LessThan7~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan7~7_cout\ = CARRY((\inst|REG_B\(3) & (\inst|alu1|unidad_aritmetica|divi|Add6~18_combout\ & !\inst|alu1|unidad_aritmetica|divi|LessThan7~5_cout\)) # (!\inst|REG_B\(3) & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add6~18_combout\) # (!\inst|alu1|unidad_aritmetica|divi|LessThan7~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(3),
	datab => \inst|alu1|unidad_aritmetica|divi|Add6~18_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan7~5_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan7~7_cout\);

-- Location: LCCOMB_X16_Y11_N20
\inst|alu1|unidad_aritmetica|divi|LessThan7~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan7~9_cout\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add6~17_combout\ & (\inst|REG_B\(4) & !\inst|alu1|unidad_aritmetica|divi|LessThan7~7_cout\)) # (!\inst|alu1|unidad_aritmetica|divi|Add6~17_combout\ & 
-- ((\inst|REG_B\(4)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan7~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add6~17_combout\,
	datab => \inst|REG_B\(4),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan7~7_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan7~9_cout\);

-- Location: LCCOMB_X16_Y11_N22
\inst|alu1|unidad_aritmetica|divi|LessThan7~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan7~11_cout\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add6~16_combout\ & ((!\inst|alu1|unidad_aritmetica|divi|LessThan7~9_cout\) # (!\inst|REG_B\(5)))) # (!\inst|alu1|unidad_aritmetica|divi|Add6~16_combout\ & 
-- (!\inst|REG_B\(5) & !\inst|alu1|unidad_aritmetica|divi|LessThan7~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add6~16_combout\,
	datab => \inst|REG_B\(5),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan7~9_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan7~11_cout\);

-- Location: LCCOMB_X16_Y11_N24
\inst|alu1|unidad_aritmetica|divi|LessThan7~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan7~13_cout\ = CARRY((\inst|REG_B\(6) & ((!\inst|alu1|unidad_aritmetica|divi|LessThan7~11_cout\) # (!\inst|alu1|unidad_aritmetica|divi|Add6~15_combout\))) # (!\inst|REG_B\(6) & 
-- (!\inst|alu1|unidad_aritmetica|divi|Add6~15_combout\ & !\inst|alu1|unidad_aritmetica|divi|LessThan7~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(6),
	datab => \inst|alu1|unidad_aritmetica|divi|Add6~15_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan7~11_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan7~13_cout\);

-- Location: LCCOMB_X16_Y11_N26
\inst|alu1|unidad_aritmetica|divi|LessThan7~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan7~14_combout\ = (\inst|REG_B\(7) & ((\inst|alu1|unidad_aritmetica|divi|LessThan7~13_cout\) # (!\inst|alu1|unidad_aritmetica|divi|Add6~14_combout\))) # (!\inst|REG_B\(7) & 
-- (\inst|alu1|unidad_aritmetica|divi|LessThan7~13_cout\ & !\inst|alu1|unidad_aritmetica|divi|Add6~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|REG_B\(7),
	datad => \inst|alu1|unidad_aritmetica|divi|Add6~14_combout\,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan7~13_cout\,
	combout => \inst|alu1|unidad_aritmetica|divi|LessThan7~14_combout\);

-- Location: LCCOMB_X13_Y10_N22
\inst|alu1|unidad_aritmetica|Mux9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|Mux9~1_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi4|s8|Cout~0_combout\ & (((\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~19_combout\)))) # (!\inst|alu1|unidad_aritmetica|mult|multi4|s8|Cout~0_combout\ & 
-- (\inst|REG_A\(0) & ((\inst|REG_B\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|multi4|s8|Cout~0_combout\,
	datab => \inst|REG_A\(0),
	datac => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~19_combout\,
	datad => \inst|REG_B\(0),
	combout => \inst|alu1|unidad_aritmetica|Mux9~1_combout\);

-- Location: LCCOMB_X13_Y10_N20
\inst|alu1|unidad_aritmetica|Mux9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|Mux9~2_combout\ = (\inst|alu1|unidad_aritmetica|suma|Sfaux~1_combout\ & (((\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~19_combout\)))) # (!\inst|alu1|unidad_aritmetica|suma|Sfaux~1_combout\ & (\inst|REG_A\(0) $ 
-- (((\inst|REG_B\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|suma|Sfaux~1_combout\,
	datab => \inst|REG_A\(0),
	datac => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~19_combout\,
	datad => \inst|REG_B\(0),
	combout => \inst|alu1|unidad_aritmetica|Mux9~2_combout\);

-- Location: LCCOMB_X13_Y10_N10
\inst|alu1|unidad_aritmetica|Mux9~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|Mux9~3_combout\ = (\inst|alu1|Mux10~0_combout\ & ((\inst|alu1|unidad_aritmetica|Mux9~1_combout\) # ((\inst|alu1|Mux11~0_combout\)))) # (!\inst|alu1|Mux10~0_combout\ & (((!\inst|alu1|Mux11~0_combout\ & 
-- \inst|alu1|unidad_aritmetica|Mux9~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|Mux9~1_combout\,
	datab => \inst|alu1|Mux10~0_combout\,
	datac => \inst|alu1|Mux11~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|Mux9~2_combout\,
	combout => \inst|alu1|unidad_aritmetica|Mux9~3_combout\);

-- Location: LCCOMB_X16_Y11_N10
\inst|alu1|unidad_aritmetica|Mux9~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|Mux9~4_combout\ = (\inst|alu1|Mux11~0_combout\ & ((\inst|alu1|unidad_aritmetica|Mux9~3_combout\ & ((!\inst|alu1|unidad_aritmetica|divi|LessThan7~14_combout\))) # (!\inst|alu1|unidad_aritmetica|Mux9~3_combout\ & 
-- (\inst|alu1|unidad_aritmetica|Mux9~0_combout\)))) # (!\inst|alu1|Mux11~0_combout\ & (((\inst|alu1|unidad_aritmetica|Mux9~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux11~0_combout\,
	datab => \inst|alu1|unidad_aritmetica|Mux9~0_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|LessThan7~14_combout\,
	datad => \inst|alu1|unidad_aritmetica|Mux9~3_combout\,
	combout => \inst|alu1|unidad_aritmetica|Mux9~4_combout\);

-- Location: LCCOMB_X16_Y11_N6
\inst|reggy~211\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~211_combout\ = (\inst|alu1|Mux9~1_combout\ & ((\inst|alu1|unidad_aritmetica|Mux9~4_combout\) # ((\inst|alu1|Mux9~0_combout\ & \inst|alu1|unidad_logica|salida\(0))))) # (!\inst|alu1|Mux9~1_combout\ & (\inst|alu1|Mux9~0_combout\ & 
-- (\inst|alu1|unidad_logica|salida\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux9~1_combout\,
	datab => \inst|alu1|Mux9~0_combout\,
	datac => \inst|alu1|unidad_logica|salida\(0),
	datad => \inst|alu1|unidad_aritmetica|Mux9~4_combout\,
	combout => \inst|reggy~211_combout\);

-- Location: LCCOMB_X16_Y11_N0
\inst|reggy~212\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~212_combout\ = (\inst|Equal0~0_combout\ & (((\inst|REG_D\(0))))) # (!\inst|Equal0~0_combout\ & ((\inst|alu1|Mux2~10_combout\) # ((\inst|reggy~211_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux2~10_combout\,
	datab => \inst|REG_D\(0),
	datac => \inst|Equal0~0_combout\,
	datad => \inst|reggy~211_combout\,
	combout => \inst|reggy~212_combout\);

-- Location: FF_X11_Y11_N23
\inst|reggy~84\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~212_combout\,
	sload => VCC,
	ena => \inst|reggy~198_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy~84_q\);

-- Location: LCCOMB_X12_Y11_N0
\inst|reggy~149\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~149_combout\ = (\inst|MAR\(5) & (((\inst|reggy~74_q\) # (\inst|MAR\(4))))) # (!\inst|MAR\(5) & (\inst|reggy~54_q\ & ((!\inst|MAR\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy~54_q\,
	datab => \inst|MAR\(5),
	datac => \inst|reggy~74_q\,
	datad => \inst|MAR\(4),
	combout => \inst|reggy~149_combout\);

-- Location: LCCOMB_X11_Y11_N16
\inst|reggy~150\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~150_combout\ = (\inst|reggy~149_combout\ & ((\inst|reggy~84_q\) # ((!\inst|MAR\(4))))) # (!\inst|reggy~149_combout\ & (((\inst|reggy~64_q\ & \inst|MAR\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy~84_q\,
	datab => \inst|reggy~149_combout\,
	datac => \inst|reggy~64_q\,
	datad => \inst|MAR\(4),
	combout => \inst|reggy~150_combout\);

-- Location: LCCOMB_X14_Y11_N8
\inst|reggy~151\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~151_combout\ = (\inst|MAR\(4) & ((\inst|reggy~24_q\) # ((\inst|MAR\(5))))) # (!\inst|MAR\(4) & (((!\inst|MAR\(5) & \inst|reggy~14_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MAR\(4),
	datab => \inst|reggy~24_q\,
	datac => \inst|MAR\(5),
	datad => \inst|reggy~14_q\,
	combout => \inst|reggy~151_combout\);

-- Location: LCCOMB_X14_Y11_N30
\inst|reggy~152\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~152_combout\ = (\inst|MAR\(5) & ((\inst|reggy~151_combout\ & ((\inst|reggy~44_q\))) # (!\inst|reggy~151_combout\ & (\inst|reggy~34_q\)))) # (!\inst|MAR\(5) & (((\inst|reggy~151_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy~34_q\,
	datab => \inst|MAR\(5),
	datac => \inst|reggy~151_combout\,
	datad => \inst|reggy~44_q\,
	combout => \inst|reggy~152_combout\);

-- Location: LCCOMB_X12_Y13_N28
\inst|reggy~153\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~153_combout\ = (\inst|MAR\(6) & (\inst|reggy~150_combout\)) # (!\inst|MAR\(6) & ((\inst|reggy~152_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy~150_combout\,
	datab => \inst|MAR\(6),
	datac => \inst|reggy~152_combout\,
	combout => \inst|reggy~153_combout\);

-- Location: FF_X12_Y13_N29
\inst|REG_A[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|reggy~153_combout\,
	ena => \inst|s_p1[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|REG_A\(0));

-- Location: FF_X11_Y13_N5
\inst|alu1|unidad_logica|aux[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|alu1|unidad_logica|aux[1]~9_combout\,
	ena => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|unidad_logica|aux\(1));

-- Location: LCCOMB_X12_Y13_N30
\inst|alu1|unidad_logica|salida~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|salida~21_combout\ = (\inst|alu1|Mux11~0_combout\ & (\inst|alu1|unidad_logica|aux\(1) & (\inst|alu1|Mux10~0_combout\))) # (!\inst|alu1|Mux11~0_combout\ & (((\inst|alu1|Mux10~0_combout\) # 
-- (\inst|alu1|unidad_logica|salida~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux11~0_combout\,
	datab => \inst|alu1|unidad_logica|aux\(1),
	datac => \inst|alu1|Mux10~0_combout\,
	datad => \inst|alu1|unidad_logica|salida~5_combout\,
	combout => \inst|alu1|unidad_logica|salida~21_combout\);

-- Location: LCCOMB_X12_Y13_N8
\inst|alu1|unidad_logica|salida~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|salida~22_combout\ = (\inst|REG_A\(1) & (\inst|alu1|unidad_logica|salida~21_combout\ $ ((\inst|alu1|unidad_logica|salida[0]~30_combout\)))) # (!\inst|REG_A\(1) & ((\inst|alu1|unidad_logica|salida~21_combout\) # 
-- ((\inst|alu1|unidad_logica|salida[0]~30_combout\ & \inst|REG_B\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(1),
	datab => \inst|alu1|unidad_logica|salida~21_combout\,
	datac => \inst|alu1|unidad_logica|salida[0]~30_combout\,
	datad => \inst|REG_B\(1),
	combout => \inst|alu1|unidad_logica|salida~22_combout\);

-- Location: FF_X12_Y13_N9
\inst|alu1|unidad_logica|salida[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|alu1|unidad_logica|salida~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|unidad_logica|salida\(1));

-- Location: LCCOMB_X12_Y13_N16
\inst|alu1|barrel_shifters|aux[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|barrel_shifters|aux[1]~feeder_combout\ = \inst|REG_A\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|REG_A\(0),
	combout => \inst|alu1|barrel_shifters|aux[1]~feeder_combout\);

-- Location: FF_X12_Y13_N17
\inst|alu1|barrel_shifters|aux[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|alu1|barrel_shifters|aux[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|barrel_shifters|aux\(1));

-- Location: FF_X13_Y13_N31
\inst|alu1|barrel_shifters|salShifters[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|alu1|barrel_shifters|aux\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|barrel_shifters|salShifters\(1));

-- Location: LCCOMB_X13_Y13_N30
\inst|alu1|Mux8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux8~2_combout\ = (\inst|alu1|Mux2~6_combout\ & ((\inst|alu1|unidad_logica|salida\(1)) # ((!\inst|alu1|Mux2~7_combout\)))) # (!\inst|alu1|Mux2~6_combout\ & (((\inst|alu1|barrel_shifters|salShifters\(1) & \inst|alu1|Mux2~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_logica|salida\(1),
	datab => \inst|alu1|Mux2~6_combout\,
	datac => \inst|alu1|barrel_shifters|salShifters\(1),
	datad => \inst|alu1|Mux2~7_combout\,
	combout => \inst|alu1|Mux8~2_combout\);

-- Location: LCCOMB_X16_Y12_N8
\inst|alu1|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux8~0_combout\ = (\inst|alu1|Mux10~0_combout\ & (((\inst|alu1|Mux11~0_combout\) # (\inst|alu1|unidad_aritmetica|mult|multi1|s1|Suma~0_combout\)))) # (!\inst|alu1|Mux10~0_combout\ & (\inst|alu1|unidad_aritmetica|suma|s1|Suma~combout\ & 
-- (!\inst|alu1|Mux11~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|suma|s1|Suma~combout\,
	datab => \inst|alu1|Mux10~0_combout\,
	datac => \inst|alu1|Mux11~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|mult|multi1|s1|Suma~0_combout\,
	combout => \inst|alu1|Mux8~0_combout\);

-- Location: LCCOMB_X16_Y12_N10
\inst|alu1|Mux8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux8~1_combout\ = (\inst|alu1|Mux11~0_combout\ & ((\inst|alu1|Mux8~0_combout\ & ((!\inst|alu1|unidad_aritmetica|divi|LessThan6~14_combout\))) # (!\inst|alu1|Mux8~0_combout\ & (!\inst|alu1|unidad_aritmetica|resta|s1|Suma~combout\)))) # 
-- (!\inst|alu1|Mux11~0_combout\ & (((\inst|alu1|Mux8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|resta|s1|Suma~combout\,
	datab => \inst|alu1|Mux11~0_combout\,
	datac => \inst|alu1|Mux8~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan6~14_combout\,
	combout => \inst|alu1|Mux8~1_combout\);

-- Location: LCCOMB_X16_Y12_N20
\inst|alu1|Mux8~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux8~3_combout\ = (\inst|alu1|Mux8~2_combout\ & ((\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~21_combout\) # ((!\inst|alu1|Mux2~3_combout\)))) # (!\inst|alu1|Mux8~2_combout\ & (((\inst|alu1|Mux2~3_combout\ & 
-- \inst|alu1|Mux8~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux8~2_combout\,
	datab => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~21_combout\,
	datac => \inst|alu1|Mux2~3_combout\,
	datad => \inst|alu1|Mux8~1_combout\,
	combout => \inst|alu1|Mux8~3_combout\);

-- Location: LCCOMB_X16_Y12_N12
\inst|reggy~209\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~209_combout\ = (\inst|Equal0~0_combout\ & (((\inst|REG_D\(1))))) # (!\inst|Equal0~0_combout\ & ((\inst|alu1|Mux2~10_combout\) # ((\inst|alu1|Mux8~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux2~10_combout\,
	datab => \inst|REG_D\(1),
	datac => \inst|Equal0~0_combout\,
	datad => \inst|alu1|Mux8~3_combout\,
	combout => \inst|reggy~209_combout\);

-- Location: FF_X12_Y10_N5
\inst|reggy~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~209_combout\,
	sload => VCC,
	ena => \inst|reggy~200_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy~25_q\);

-- Location: LCCOMB_X13_Y12_N4
\inst|reggy~161\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~161_combout\ = (\inst|MAR\(1) & (((\inst|MAR\(0))))) # (!\inst|MAR\(1) & ((\inst|MAR\(0) & (\inst|reggy~25_q\)) # (!\inst|MAR\(0) & ((\inst|reggy~15_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy~25_q\,
	datab => \inst|MAR\(1),
	datac => \inst|reggy~15_q\,
	datad => \inst|MAR\(0),
	combout => \inst|reggy~161_combout\);

-- Location: LCCOMB_X13_Y12_N26
\inst|reggy~162\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~162_combout\ = (\inst|MAR\(1) & ((\inst|reggy~161_combout\ & ((\inst|reggy~45_q\))) # (!\inst|reggy~161_combout\ & (\inst|reggy~35_q\)))) # (!\inst|MAR\(1) & (\inst|reggy~161_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MAR\(1),
	datab => \inst|reggy~161_combout\,
	datac => \inst|reggy~35_q\,
	datad => \inst|reggy~45_q\,
	combout => \inst|reggy~162_combout\);

-- Location: LCCOMB_X11_Y12_N10
\inst|reggy~159\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~159_combout\ = (\inst|MAR\(0) & (\inst|MAR\(1))) # (!\inst|MAR\(0) & ((\inst|MAR\(1) & ((\inst|reggy~75_q\))) # (!\inst|MAR\(1) & (\inst|reggy~55_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MAR\(0),
	datab => \inst|MAR\(1),
	datac => \inst|reggy~55_q\,
	datad => \inst|reggy~75_q\,
	combout => \inst|reggy~159_combout\);

-- Location: LCCOMB_X12_Y12_N30
\inst|reggy~160\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~160_combout\ = (\inst|reggy~159_combout\ & (((\inst|reggy~85_q\) # (!\inst|MAR\(0))))) # (!\inst|reggy~159_combout\ & (\inst|reggy~65_q\ & ((\inst|MAR\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy~159_combout\,
	datab => \inst|reggy~65_q\,
	datac => \inst|reggy~85_q\,
	datad => \inst|MAR\(0),
	combout => \inst|reggy~160_combout\);

-- Location: LCCOMB_X13_Y12_N0
\inst|reggy~163\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~163_combout\ = (\inst|MAR\(2) & ((\inst|reggy~160_combout\))) # (!\inst|MAR\(2) & (\inst|reggy~162_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|MAR\(2),
	datac => \inst|reggy~162_combout\,
	datad => \inst|reggy~160_combout\,
	combout => \inst|reggy~163_combout\);

-- Location: FF_X16_Y13_N19
\inst|REG_B[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~163_combout\,
	sload => VCC,
	ena => \inst|s_p1[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|REG_B\(1));

-- Location: LCCOMB_X18_Y13_N10
\inst|alu1|unidad_aritmetica|divi|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan0~2_combout\ = (\inst|REG_B\(1)) # ((\inst|alu1|unidad_aritmetica|divi|LessThan0~1_combout\) # (\inst|alu1|unidad_aritmetica|divi|LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(1),
	datac => \inst|alu1|unidad_aritmetica|divi|LessThan0~1_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan0~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|LessThan0~2_combout\);

-- Location: LCCOMB_X13_Y14_N22
\inst|alu1|unidad_aritmetica|resta|s7|Suma\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|resta|s7|Suma~combout\ = \inst|alu1|unidad_aritmetica|suma|Yop~0_combout\ $ (\inst|alu1|unidad_aritmetica|suma|Xop\(7) $ (\inst|alu1|unidad_aritmetica|resta|s6|Cout2~4_combout\ $ 
-- (\inst|alu1|unidad_aritmetica|resta|s6|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|suma|Yop~0_combout\,
	datab => \inst|alu1|unidad_aritmetica|suma|Xop\(7),
	datac => \inst|alu1|unidad_aritmetica|resta|s6|Cout2~4_combout\,
	datad => \inst|alu1|unidad_aritmetica|resta|s6|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|resta|s7|Suma~combout\);

-- Location: LCCOMB_X12_Y9_N14
\inst|alu1|unidad_aritmetica|mult|multi4|s7|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi4|s7|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|mult|multi3|s7|Suma~0_combout\ $ (\inst|alu1|unidad_aritmetica|mult|multi4|s6|Cout~0_combout\ $ (((\inst|REG_B\(4) & \inst|REG_A\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(4),
	datab => \inst|REG_A\(3),
	datac => \inst|alu1|unidad_aritmetica|mult|multi3|s7|Suma~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|mult|multi4|s6|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi4|s7|Suma~0_combout\);

-- Location: LCCOMB_X14_Y14_N2
\inst|alu1|unidad_aritmetica|suma|s4|Cout2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|s4|Cout2~0_combout\ = (\inst|alu1|unidad_aritmetica|suma|Xop\(4) & (\inst|alu1|unidad_aritmetica|suma|s3|Cout2~0_combout\ & (\inst|REG_B\(9) $ (\inst|REG_B\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(9),
	datab => \inst|REG_B\(4),
	datac => \inst|alu1|unidad_aritmetica|suma|Xop\(4),
	datad => \inst|alu1|unidad_aritmetica|suma|s3|Cout2~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|suma|s4|Cout2~0_combout\);

-- Location: LCCOMB_X14_Y14_N28
\inst|alu1|unidad_aritmetica|suma|Xop[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|Xop\(5) = \inst|REG_A\(9) $ (\inst|REG_A\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|REG_A\(9),
	datad => \inst|REG_A\(5),
	combout => \inst|alu1|unidad_aritmetica|suma|Xop\(5));

-- Location: LCCOMB_X14_Y14_N8
\inst|alu1|unidad_aritmetica|suma|s5|Cout2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|s5|Cout2~0_combout\ = (\inst|alu1|unidad_aritmetica|suma|s4|Cout2~0_combout\ & (\inst|alu1|unidad_aritmetica|suma|Xop\(5) & (\inst|REG_B\(5) $ (\inst|REG_B\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(5),
	datab => \inst|alu1|unidad_aritmetica|suma|s4|Cout2~0_combout\,
	datac => \inst|REG_B\(9),
	datad => \inst|alu1|unidad_aritmetica|suma|Xop\(5),
	combout => \inst|alu1|unidad_aritmetica|suma|s5|Cout2~0_combout\);

-- Location: LCCOMB_X13_Y14_N8
\inst|alu1|unidad_aritmetica|suma|s6|Cout2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|s6|Cout2~4_combout\ = (\inst|alu1|unidad_aritmetica|suma|s5|Cout2~0_combout\ & (\inst|alu1|unidad_aritmetica|suma|Xop\(6) & (\inst|REG_B\(9) $ (\inst|REG_B\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(9),
	datab => \inst|REG_B\(6),
	datac => \inst|alu1|unidad_aritmetica|suma|s5|Cout2~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|suma|Xop\(6),
	combout => \inst|alu1|unidad_aritmetica|suma|s6|Cout2~4_combout\);

-- Location: LCCOMB_X14_Y15_N14
\inst|alu1|unidad_aritmetica|suma|s4|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|s4|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|suma|Xop\(4) & ((\inst|alu1|unidad_aritmetica|suma|s3|Cout~combout\) # (\inst|REG_B\(4) $ (\inst|REG_B\(9))))) # (!\inst|alu1|unidad_aritmetica|suma|Xop\(4) & 
-- (\inst|alu1|unidad_aritmetica|suma|s3|Cout~combout\ & (\inst|REG_B\(4) $ (\inst|REG_B\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|suma|Xop\(4),
	datab => \inst|REG_B\(4),
	datac => \inst|REG_B\(9),
	datad => \inst|alu1|unidad_aritmetica|suma|s3|Cout~combout\,
	combout => \inst|alu1|unidad_aritmetica|suma|s4|Cout~0_combout\);

-- Location: LCCOMB_X14_Y15_N30
\inst|alu1|unidad_aritmetica|suma|s4|Cout\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|s4|Cout~combout\ = (\inst|alu1|unidad_aritmetica|suma|s4|Cout~0_combout\) # ((\inst|alu1|unidad_aritmetica|suma|Xop\(3) & (\inst|alu1|unidad_aritmetica|suma|Yop~2_combout\ & 
-- \inst|alu1|unidad_aritmetica|suma|s2|Cout2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|suma|Xop\(3),
	datab => \inst|alu1|unidad_aritmetica|suma|Yop~2_combout\,
	datac => \inst|alu1|unidad_aritmetica|suma|s4|Cout~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|suma|s2|Cout2~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|suma|s4|Cout~combout\);

-- Location: LCCOMB_X14_Y14_N10
\inst|alu1|unidad_aritmetica|suma|s5|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|s5|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|suma|Xop\(5) & ((\inst|alu1|unidad_aritmetica|suma|s4|Cout~combout\) # (\inst|REG_B\(5) $ (\inst|REG_B\(9))))) # (!\inst|alu1|unidad_aritmetica|suma|Xop\(5) & 
-- (\inst|alu1|unidad_aritmetica|suma|s4|Cout~combout\ & (\inst|REG_B\(5) $ (\inst|REG_B\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(5),
	datab => \inst|alu1|unidad_aritmetica|suma|Xop\(5),
	datac => \inst|alu1|unidad_aritmetica|suma|s4|Cout~combout\,
	datad => \inst|REG_B\(9),
	combout => \inst|alu1|unidad_aritmetica|suma|s5|Cout~0_combout\);

-- Location: LCCOMB_X14_Y14_N0
\inst|alu1|unidad_aritmetica|suma|s5|Cout\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|s5|Cout~combout\ = (\inst|alu1|unidad_aritmetica|suma|s5|Cout~0_combout\) # ((\inst|alu1|unidad_aritmetica|suma|Yop~3_combout\ & (\inst|alu1|unidad_aritmetica|suma|s3|Cout2~0_combout\ & 
-- \inst|alu1|unidad_aritmetica|suma|Xop\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|suma|Yop~3_combout\,
	datab => \inst|alu1|unidad_aritmetica|suma|s3|Cout2~0_combout\,
	datac => \inst|alu1|unidad_aritmetica|suma|Xop\(4),
	datad => \inst|alu1|unidad_aritmetica|suma|s5|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|suma|s5|Cout~combout\);

-- Location: LCCOMB_X14_Y14_N30
\inst|alu1|unidad_aritmetica|suma|s6|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|s6|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|suma|Xop\(6) & ((\inst|alu1|unidad_aritmetica|suma|s5|Cout~combout\) # (\inst|REG_B\(9) $ (\inst|REG_B\(6))))) # (!\inst|alu1|unidad_aritmetica|suma|Xop\(6) & 
-- (\inst|alu1|unidad_aritmetica|suma|s5|Cout~combout\ & (\inst|REG_B\(9) $ (\inst|REG_B\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(9),
	datab => \inst|alu1|unidad_aritmetica|suma|Xop\(6),
	datac => \inst|REG_B\(6),
	datad => \inst|alu1|unidad_aritmetica|suma|s5|Cout~combout\,
	combout => \inst|alu1|unidad_aritmetica|suma|s6|Cout~0_combout\);

-- Location: LCCOMB_X14_Y14_N6
\inst|alu1|unidad_aritmetica|suma|s6|Cout\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|s6|Cout~combout\ = (\inst|alu1|unidad_aritmetica|suma|s6|Cout~0_combout\) # ((\inst|alu1|unidad_aritmetica|suma|Yop~4_combout\ & (\inst|alu1|unidad_aritmetica|suma|Xop\(5) & 
-- \inst|alu1|unidad_aritmetica|suma|s4|Cout2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|suma|Yop~4_combout\,
	datab => \inst|alu1|unidad_aritmetica|suma|Xop\(5),
	datac => \inst|alu1|unidad_aritmetica|suma|s6|Cout~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|suma|s4|Cout2~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|suma|s6|Cout~combout\);

-- Location: LCCOMB_X13_Y14_N16
\inst|alu1|unidad_aritmetica|suma|s7|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|s7|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|suma|Yop~0_combout\ $ (\inst|alu1|unidad_aritmetica|suma|Xop\(7) $ (\inst|alu1|unidad_aritmetica|suma|s6|Cout2~4_combout\ $ 
-- (\inst|alu1|unidad_aritmetica|suma|s6|Cout~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|suma|Yop~0_combout\,
	datab => \inst|alu1|unidad_aritmetica|suma|Xop\(7),
	datac => \inst|alu1|unidad_aritmetica|suma|s6|Cout2~4_combout\,
	datad => \inst|alu1|unidad_aritmetica|suma|s6|Cout~combout\,
	combout => \inst|alu1|unidad_aritmetica|suma|s7|Suma~0_combout\);

-- Location: LCCOMB_X13_Y14_N30
\inst|alu1|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux2~1_combout\ = (\inst|alu1|Mux10~0_combout\ & ((\inst|alu1|unidad_aritmetica|mult|multi4|s7|Suma~0_combout\) # ((\inst|alu1|Mux11~0_combout\)))) # (!\inst|alu1|Mux10~0_combout\ & (((!\inst|alu1|Mux11~0_combout\ & 
-- \inst|alu1|unidad_aritmetica|suma|s7|Suma~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|multi4|s7|Suma~0_combout\,
	datab => \inst|alu1|Mux10~0_combout\,
	datac => \inst|alu1|Mux11~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|suma|s7|Suma~0_combout\,
	combout => \inst|alu1|Mux2~1_combout\);

-- Location: LCCOMB_X14_Y13_N10
\inst|alu1|Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux2~2_combout\ = (\inst|alu1|Mux11~0_combout\ & ((\inst|alu1|Mux2~1_combout\ & (!\inst|alu1|unidad_aritmetica|divi|LessThan0~2_combout\)) # (!\inst|alu1|Mux2~1_combout\ & ((!\inst|alu1|unidad_aritmetica|resta|s7|Suma~combout\))))) # 
-- (!\inst|alu1|Mux11~0_combout\ & (((\inst|alu1|Mux2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|LessThan0~2_combout\,
	datab => \inst|alu1|Mux11~0_combout\,
	datac => \inst|alu1|unidad_aritmetica|resta|s7|Suma~combout\,
	datad => \inst|alu1|Mux2~1_combout\,
	combout => \inst|alu1|Mux2~2_combout\);

-- Location: LCCOMB_X13_Y14_N12
\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~4_combout\ = (!\inst|alu1|Mux10~0_combout\ & ((\inst|alu1|Mux11~0_combout\ & (\inst|alu1|unidad_aritmetica|resta|s7|Suma~combout\)) # (!\inst|alu1|Mux11~0_combout\ & 
-- ((!\inst|alu1|unidad_aritmetica|suma|s7|Suma~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux11~0_combout\,
	datab => \inst|alu1|Mux10~0_combout\,
	datac => \inst|alu1|unidad_aritmetica|resta|s7|Suma~combout\,
	datad => \inst|alu1|unidad_aritmetica|suma|s7|Suma~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~4_combout\);

-- Location: LCCOMB_X13_Y14_N14
\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~5_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~4_combout\) # ((!\inst|alu1|unidad_aritmetica|mult|multi4|s7|Suma~0_combout\ & \inst|alu1|Mux10~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|multi4|s7|Suma~0_combout\,
	datab => \inst|alu1|Mux10~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~4_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~5_combout\);

-- Location: LCCOMB_X12_Y9_N28
\inst|alu1|unidad_aritmetica|mult|multi4|s6|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi4|s6|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|mult|multi3|s6|Suma~0_combout\ $ (\inst|alu1|unidad_aritmetica|mult|multi4|s5|Cout~0_combout\ $ (((\inst|REG_B\(4) & \inst|REG_A\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(4),
	datab => \inst|REG_A\(2),
	datac => \inst|alu1|unidad_aritmetica|mult|multi3|s6|Suma~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|mult|multi4|s5|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi4|s6|Suma~0_combout\);

-- Location: LCCOMB_X16_Y12_N2
\inst|alu1|unidad_aritmetica|suma|s6|Suma\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|s6|Suma~combout\ = \inst|alu1|unidad_aritmetica|suma|s5|Cout~combout\ $ (\inst|alu1|unidad_aritmetica|suma|Xop\(6) $ (\inst|alu1|unidad_aritmetica|suma|Yop~1_combout\ $ 
-- (\inst|alu1|unidad_aritmetica|suma|s5|Cout2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|suma|s5|Cout~combout\,
	datab => \inst|alu1|unidad_aritmetica|suma|Xop\(6),
	datac => \inst|alu1|unidad_aritmetica|suma|Yop~1_combout\,
	datad => \inst|alu1|unidad_aritmetica|suma|s5|Cout2~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|suma|s6|Suma~combout\);

-- Location: LCCOMB_X16_Y12_N28
\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~6_combout\ = (!\inst|alu1|Mux10~0_combout\ & ((\inst|alu1|Mux11~0_combout\ & (\inst|alu1|unidad_aritmetica|resta|s6|Suma~combout\)) # (!\inst|alu1|Mux11~0_combout\ & 
-- ((!\inst|alu1|unidad_aritmetica|suma|s6|Suma~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|resta|s6|Suma~combout\,
	datab => \inst|alu1|Mux10~0_combout\,
	datac => \inst|alu1|Mux11~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|suma|s6|Suma~combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~6_combout\);

-- Location: LCCOMB_X16_Y12_N6
\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~7_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~6_combout\) # ((\inst|alu1|Mux10~0_combout\ & !\inst|alu1|unidad_aritmetica|mult|multi4|s6|Suma~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|Mux10~0_combout\,
	datac => \inst|alu1|unidad_aritmetica|mult|multi4|s6|Suma~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~6_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~7_combout\);

-- Location: LCCOMB_X12_Y9_N26
\inst|alu1|unidad_aritmetica|mult|multi4|s5|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi4|s5|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|mult|multi4|s4|Cout~0_combout\ $ (\inst|alu1|unidad_aritmetica|mult|multi3|s5|Suma~0_combout\ $ (((\inst|REG_A\(1) & \inst|REG_B\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(1),
	datab => \inst|REG_B\(4),
	datac => \inst|alu1|unidad_aritmetica|mult|multi4|s4|Cout~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|mult|multi3|s5|Suma~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi4|s5|Suma~0_combout\);

-- Location: LCCOMB_X14_Y14_N4
\inst|alu1|unidad_aritmetica|suma|s5|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|s5|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|suma|Yop~4_combout\ $ (\inst|alu1|unidad_aritmetica|suma|Xop\(5) $ (\inst|alu1|unidad_aritmetica|suma|s4|Cout~combout\ $ 
-- (\inst|alu1|unidad_aritmetica|suma|s4|Cout2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|suma|Yop~4_combout\,
	datab => \inst|alu1|unidad_aritmetica|suma|Xop\(5),
	datac => \inst|alu1|unidad_aritmetica|suma|s4|Cout~combout\,
	datad => \inst|alu1|unidad_aritmetica|suma|s4|Cout2~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|suma|s5|Suma~0_combout\);

-- Location: LCCOMB_X14_Y15_N0
\inst|alu1|unidad_aritmetica|resta|s4|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|resta|s4|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|resta|s3|Cout2~4_combout\) # ((\inst|alu1|unidad_aritmetica|suma|Xop\(4) & ((\inst|alu1|unidad_aritmetica|resta|s3|Cout~0_combout\) # 
-- (!\inst|alu1|unidad_aritmetica|suma|Yop~3_combout\))) # (!\inst|alu1|unidad_aritmetica|suma|Xop\(4) & (!\inst|alu1|unidad_aritmetica|suma|Yop~3_combout\ & \inst|alu1|unidad_aritmetica|resta|s3|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|suma|Xop\(4),
	datab => \inst|alu1|unidad_aritmetica|suma|Yop~3_combout\,
	datac => \inst|alu1|unidad_aritmetica|resta|s3|Cout~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|resta|s3|Cout2~4_combout\,
	combout => \inst|alu1|unidad_aritmetica|resta|s4|Cout~0_combout\);

-- Location: LCCOMB_X14_Y14_N14
\inst|alu1|unidad_aritmetica|resta|s5|Suma\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|resta|s5|Suma~combout\ = \inst|alu1|unidad_aritmetica|suma|Yop~4_combout\ $ (\inst|alu1|unidad_aritmetica|suma|Xop\(5) $ (\inst|alu1|unidad_aritmetica|resta|s4|Cout~0_combout\ $ 
-- (\inst|alu1|unidad_aritmetica|resta|s4|Cout2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|suma|Yop~4_combout\,
	datab => \inst|alu1|unidad_aritmetica|suma|Xop\(5),
	datac => \inst|alu1|unidad_aritmetica|resta|s4|Cout~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|resta|s4|Cout2~4_combout\,
	combout => \inst|alu1|unidad_aritmetica|resta|s5|Suma~combout\);

-- Location: LCCOMB_X16_Y12_N16
\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~8_combout\ = (!\inst|alu1|Mux10~0_combout\ & ((\inst|alu1|Mux11~0_combout\ & ((\inst|alu1|unidad_aritmetica|resta|s5|Suma~combout\))) # (!\inst|alu1|Mux11~0_combout\ & 
-- (!\inst|alu1|unidad_aritmetica|suma|s5|Suma~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|suma|s5|Suma~0_combout\,
	datab => \inst|alu1|Mux10~0_combout\,
	datac => \inst|alu1|Mux11~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|resta|s5|Suma~combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~8_combout\);

-- Location: LCCOMB_X16_Y12_N30
\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~9_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~8_combout\) # ((\inst|alu1|Mux10~0_combout\ & !\inst|alu1|unidad_aritmetica|mult|multi4|s5|Suma~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|Mux10~0_combout\,
	datac => \inst|alu1|unidad_aritmetica|mult|multi4|s5|Suma~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~8_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~9_combout\);

-- Location: LCCOMB_X14_Y12_N10
\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~29_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~9_combout\ & (!\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~28\)) # 
-- (!\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~9_combout\ & ((\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~28\) # (GND)))
-- \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~30\ = CARRY((!\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~28\) # (!\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~9_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~28\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~29_combout\,
	cout => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~30\);

-- Location: LCCOMB_X14_Y12_N12
\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~31_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~7_combout\ & (\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~30\ $ (GND))) # 
-- (!\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~7_combout\ & (!\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~30\ & VCC))
-- \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~32\ = CARRY((\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~7_combout\ & !\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~7_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~30\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~31_combout\,
	cout => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~32\);

-- Location: LCCOMB_X14_Y12_N14
\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~33_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~5_combout\ & (!\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~32\)) # 
-- (!\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~5_combout\ & ((\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~32\) # (GND)))
-- \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~34\ = CARRY((!\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~32\) # (!\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~5_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~32\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~33_combout\,
	cout => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~34\);

-- Location: LCCOMB_X11_Y13_N12
\inst|alu1|unidad_logica|aux[5]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|aux[5]~17_combout\ = (\inst|REG_A\(5) & (!\inst|alu1|unidad_logica|aux[4]~16\ & VCC)) # (!\inst|REG_A\(5) & (\inst|alu1|unidad_logica|aux[4]~16\ $ (GND)))
-- \inst|alu1|unidad_logica|aux[5]~18\ = CARRY((!\inst|REG_A\(5) & !\inst|alu1|unidad_logica|aux[4]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|REG_A\(5),
	datad => VCC,
	cin => \inst|alu1|unidad_logica|aux[4]~16\,
	combout => \inst|alu1|unidad_logica|aux[5]~17_combout\,
	cout => \inst|alu1|unidad_logica|aux[5]~18\);

-- Location: LCCOMB_X11_Y13_N14
\inst|alu1|unidad_logica|aux[6]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|aux[6]~19_combout\ = (\inst|REG_A\(6) & ((\inst|alu1|unidad_logica|aux[5]~18\) # (GND))) # (!\inst|REG_A\(6) & (!\inst|alu1|unidad_logica|aux[5]~18\))
-- \inst|alu1|unidad_logica|aux[6]~20\ = CARRY((\inst|REG_A\(6)) # (!\inst|alu1|unidad_logica|aux[5]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(6),
	datad => VCC,
	cin => \inst|alu1|unidad_logica|aux[5]~18\,
	combout => \inst|alu1|unidad_logica|aux[6]~19_combout\,
	cout => \inst|alu1|unidad_logica|aux[6]~20\);

-- Location: LCCOMB_X11_Y13_N16
\inst|alu1|unidad_logica|aux[7]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|aux[7]~21_combout\ = (\inst|REG_A\(7) & (!\inst|alu1|unidad_logica|aux[6]~20\ & VCC)) # (!\inst|REG_A\(7) & (\inst|alu1|unidad_logica|aux[6]~20\ $ (GND)))
-- \inst|alu1|unidad_logica|aux[7]~22\ = CARRY((!\inst|REG_A\(7) & !\inst|alu1|unidad_logica|aux[6]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|REG_A\(7),
	datad => VCC,
	cin => \inst|alu1|unidad_logica|aux[6]~20\,
	combout => \inst|alu1|unidad_logica|aux[7]~21_combout\,
	cout => \inst|alu1|unidad_logica|aux[7]~22\);

-- Location: FF_X11_Y13_N17
\inst|alu1|unidad_logica|aux[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|alu1|unidad_logica|aux[7]~21_combout\,
	ena => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|unidad_logica|aux\(7));

-- Location: LCCOMB_X14_Y13_N12
\inst|alu1|unidad_logica|salida~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|salida~6_combout\ = (\inst|REG_A\(7) & \inst|REG_B\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(7),
	datad => \inst|REG_B\(7),
	combout => \inst|alu1|unidad_logica|salida~6_combout\);

-- Location: LCCOMB_X14_Y13_N18
\inst|alu1|unidad_logica|salida~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|salida~7_combout\ = (\inst|alu1|Mux10~0_combout\ & ((\inst|alu1|unidad_logica|aux\(7)) # ((!\inst|alu1|Mux11~0_combout\)))) # (!\inst|alu1|Mux10~0_combout\ & (((\inst|alu1|unidad_logica|salida~6_combout\ & 
-- !\inst|alu1|Mux11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux10~0_combout\,
	datab => \inst|alu1|unidad_logica|aux\(7),
	datac => \inst|alu1|unidad_logica|salida~6_combout\,
	datad => \inst|alu1|Mux11~0_combout\,
	combout => \inst|alu1|unidad_logica|salida~7_combout\);

-- Location: LCCOMB_X14_Y13_N4
\inst|alu1|unidad_logica|salida~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|salida~8_combout\ = (\inst|alu1|unidad_logica|salida~7_combout\ & (((!\inst|REG_A\(7)) # (!\inst|alu1|unidad_logica|salida[0]~30_combout\)))) # (!\inst|alu1|unidad_logica|salida~7_combout\ & 
-- (\inst|alu1|unidad_logica|salida[0]~30_combout\ & ((\inst|REG_B\(7)) # (\inst|REG_A\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(7),
	datab => \inst|alu1|unidad_logica|salida~7_combout\,
	datac => \inst|alu1|unidad_logica|salida[0]~30_combout\,
	datad => \inst|REG_A\(7),
	combout => \inst|alu1|unidad_logica|salida~8_combout\);

-- Location: FF_X14_Y13_N5
\inst|alu1|unidad_logica|salida[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|alu1|unidad_logica|salida~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|unidad_logica|salida\(7));

-- Location: LCCOMB_X12_Y13_N26
\inst|alu1|barrel_shifters|aux[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|barrel_shifters|aux[7]~feeder_combout\ = \inst|REG_A\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|REG_A\(6),
	combout => \inst|alu1|barrel_shifters|aux[7]~feeder_combout\);

-- Location: FF_X12_Y13_N27
\inst|alu1|barrel_shifters|aux[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|alu1|barrel_shifters|aux[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|barrel_shifters|aux\(7));

-- Location: FF_X13_Y13_N3
\inst|alu1|barrel_shifters|salShifters[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|alu1|barrel_shifters|aux\(7),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|barrel_shifters|salShifters\(7));

-- Location: LCCOMB_X13_Y13_N2
\inst|alu1|Mux2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux2~8_combout\ = (\inst|alu1|Mux2~6_combout\ & ((\inst|alu1|unidad_logica|salida\(7)) # ((!\inst|alu1|Mux2~7_combout\)))) # (!\inst|alu1|Mux2~6_combout\ & (((\inst|alu1|barrel_shifters|salShifters\(7) & \inst|alu1|Mux2~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_logica|salida\(7),
	datab => \inst|alu1|Mux2~6_combout\,
	datac => \inst|alu1|barrel_shifters|salShifters\(7),
	datad => \inst|alu1|Mux2~7_combout\,
	combout => \inst|alu1|Mux2~8_combout\);

-- Location: LCCOMB_X13_Y13_N14
\inst|alu1|Mux2~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux2~9_combout\ = (\inst|alu1|Mux2~3_combout\ & ((\inst|alu1|Mux2~8_combout\ & ((\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~33_combout\))) # (!\inst|alu1|Mux2~8_combout\ & (\inst|alu1|Mux2~2_combout\)))) # 
-- (!\inst|alu1|Mux2~3_combout\ & (((\inst|alu1|Mux2~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux2~3_combout\,
	datab => \inst|alu1|Mux2~2_combout\,
	datac => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~33_combout\,
	datad => \inst|alu1|Mux2~8_combout\,
	combout => \inst|alu1|Mux2~9_combout\);

-- Location: LCCOMB_X13_Y11_N10
\inst|reggy~203\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~203_combout\ = (!\inst|Equal0~0_combout\ & ((\inst|alu1|Mux2~10_combout\) # (\inst|alu1|Mux2~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|Mux2~10_combout\,
	datac => \inst|Equal0~0_combout\,
	datad => \inst|alu1|Mux2~9_combout\,
	combout => \inst|reggy~203_combout\);

-- Location: FF_X12_Y11_N17
\inst|reggy~81\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~203_combout\,
	sload => VCC,
	ena => \inst|reggy~196_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy~81_q\);

-- Location: LCCOMB_X12_Y11_N10
\inst|reggy~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~109_combout\ = (\inst|MAR\(0) & (((\inst|MAR\(1))))) # (!\inst|MAR\(0) & ((\inst|MAR\(1) & (\inst|reggy~81_q\)) # (!\inst|MAR\(1) & ((\inst|reggy~61_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MAR\(0),
	datab => \inst|reggy~81_q\,
	datac => \inst|reggy~61_q\,
	datad => \inst|MAR\(1),
	combout => \inst|reggy~109_combout\);

-- Location: LCCOMB_X11_Y11_N14
\inst|reggy~110\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~110_combout\ = (\inst|reggy~109_combout\ & (((\inst|reggy~91_q\)) # (!\inst|MAR\(0)))) # (!\inst|reggy~109_combout\ & (\inst|MAR\(0) & ((\inst|reggy~71_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy~109_combout\,
	datab => \inst|MAR\(0),
	datac => \inst|reggy~91_q\,
	datad => \inst|reggy~71_q\,
	combout => \inst|reggy~110_combout\);

-- Location: LCCOMB_X14_Y11_N28
\inst|reggy~111\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~111_combout\ = (\inst|MAR\(1) & (((\inst|MAR\(0))))) # (!\inst|MAR\(1) & ((\inst|MAR\(0) & (\inst|reggy~31_q\)) # (!\inst|MAR\(0) & ((\inst|reggy~21_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MAR\(1),
	datab => \inst|reggy~31_q\,
	datac => \inst|reggy~21_q\,
	datad => \inst|MAR\(0),
	combout => \inst|reggy~111_combout\);

-- Location: LCCOMB_X14_Y11_N22
\inst|reggy~112\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~112_combout\ = (\inst|MAR\(1) & ((\inst|reggy~111_combout\ & (\inst|reggy~51_q\)) # (!\inst|reggy~111_combout\ & ((\inst|reggy~41_q\))))) # (!\inst|MAR\(1) & (((\inst|reggy~111_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MAR\(1),
	datab => \inst|reggy~51_q\,
	datac => \inst|reggy~41_q\,
	datad => \inst|reggy~111_combout\,
	combout => \inst|reggy~112_combout\);

-- Location: LCCOMB_X14_Y11_N4
\inst|reggy~113\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~113_combout\ = (\inst|MAR\(2) & (\inst|reggy~110_combout\)) # (!\inst|MAR\(2) & ((\inst|reggy~112_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy~110_combout\,
	datab => \inst|MAR\(2),
	datad => \inst|reggy~112_combout\,
	combout => \inst|reggy~113_combout\);

-- Location: FF_X17_Y13_N17
\inst|REG_B[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~113_combout\,
	sload => VCC,
	ena => \inst|s_p1[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|REG_B\(7));

-- Location: LCCOMB_X18_Y13_N24
\inst|alu1|unidad_aritmetica|divi|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add1~12_combout\ = \inst|REG_B\(6) $ (\inst|alu1|unidad_aritmetica|divi|Add1~11\ $ (\inst|alu1|unidad_aritmetica|divi|Add0~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|REG_B\(6),
	datad => \inst|alu1|unidad_aritmetica|divi|Add0~15_combout\,
	cin => \inst|alu1|unidad_aritmetica|divi|Add1~11\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add1~12_combout\);

-- Location: LCCOMB_X17_Y9_N2
\inst|alu1|unidad_aritmetica|divi|Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add1~14_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan1~14_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add0~15_combout\)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan1~14_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add1~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|LessThan1~14_combout\,
	datab => \inst|alu1|unidad_aritmetica|divi|Add0~15_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|Add1~12_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add1~14_combout\);

-- Location: LCCOMB_X17_Y9_N10
\inst|alu1|unidad_aritmetica|divi|LessThan2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan2~1_cout\ = CARRY((!\inst|REG_A\(5) & \inst|REG_B\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(5),
	datab => \inst|REG_B\(0),
	datad => VCC,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan2~1_cout\);

-- Location: LCCOMB_X17_Y9_N12
\inst|alu1|unidad_aritmetica|divi|LessThan2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan2~3_cout\ = CARRY((\inst|REG_B\(1) & (\inst|alu1|unidad_aritmetica|divi|Add1~20_combout\ & !\inst|alu1|unidad_aritmetica|divi|LessThan2~1_cout\)) # (!\inst|REG_B\(1) & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add1~20_combout\) # (!\inst|alu1|unidad_aritmetica|divi|LessThan2~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(1),
	datab => \inst|alu1|unidad_aritmetica|divi|Add1~20_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan2~1_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan2~3_cout\);

-- Location: LCCOMB_X17_Y9_N14
\inst|alu1|unidad_aritmetica|divi|LessThan2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan2~5_cout\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add1~19_combout\ & (\inst|REG_B\(2) & !\inst|alu1|unidad_aritmetica|divi|LessThan2~3_cout\)) # (!\inst|alu1|unidad_aritmetica|divi|Add1~19_combout\ & 
-- ((\inst|REG_B\(2)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan2~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add1~19_combout\,
	datab => \inst|REG_B\(2),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan2~3_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan2~5_cout\);

-- Location: LCCOMB_X17_Y9_N16
\inst|alu1|unidad_aritmetica|divi|LessThan2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan2~7_cout\ = CARRY((\inst|REG_B\(3) & (\inst|alu1|unidad_aritmetica|divi|Add1~18_combout\ & !\inst|alu1|unidad_aritmetica|divi|LessThan2~5_cout\)) # (!\inst|REG_B\(3) & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add1~18_combout\) # (!\inst|alu1|unidad_aritmetica|divi|LessThan2~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(3),
	datab => \inst|alu1|unidad_aritmetica|divi|Add1~18_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan2~5_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan2~7_cout\);

-- Location: LCCOMB_X17_Y9_N18
\inst|alu1|unidad_aritmetica|divi|LessThan2~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan2~9_cout\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add1~17_combout\ & (\inst|REG_B\(4) & !\inst|alu1|unidad_aritmetica|divi|LessThan2~7_cout\)) # (!\inst|alu1|unidad_aritmetica|divi|Add1~17_combout\ & 
-- ((\inst|REG_B\(4)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan2~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add1~17_combout\,
	datab => \inst|REG_B\(4),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan2~7_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan2~9_cout\);

-- Location: LCCOMB_X17_Y9_N20
\inst|alu1|unidad_aritmetica|divi|LessThan2~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan2~11_cout\ = CARRY((\inst|REG_B\(5) & (\inst|alu1|unidad_aritmetica|divi|Add1~16_combout\ & !\inst|alu1|unidad_aritmetica|divi|LessThan2~9_cout\)) # (!\inst|REG_B\(5) & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add1~16_combout\) # (!\inst|alu1|unidad_aritmetica|divi|LessThan2~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(5),
	datab => \inst|alu1|unidad_aritmetica|divi|Add1~16_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan2~9_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan2~11_cout\);

-- Location: LCCOMB_X17_Y9_N22
\inst|alu1|unidad_aritmetica|divi|LessThan2~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan2~13_cout\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add1~15_combout\ & (\inst|REG_B\(6) & !\inst|alu1|unidad_aritmetica|divi|LessThan2~11_cout\)) # (!\inst|alu1|unidad_aritmetica|divi|Add1~15_combout\ & 
-- ((\inst|REG_B\(6)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan2~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add1~15_combout\,
	datab => \inst|REG_B\(6),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan2~11_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan2~13_cout\);

-- Location: LCCOMB_X17_Y9_N24
\inst|alu1|unidad_aritmetica|divi|LessThan2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan2~14_combout\ = (\inst|REG_B\(7) & ((\inst|alu1|unidad_aritmetica|divi|LessThan2~13_cout\) # (!\inst|alu1|unidad_aritmetica|divi|Add1~14_combout\))) # (!\inst|REG_B\(7) & 
-- (\inst|alu1|unidad_aritmetica|divi|LessThan2~13_cout\ & !\inst|alu1|unidad_aritmetica|divi|Add1~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|REG_B\(7),
	datad => \inst|alu1|unidad_aritmetica|divi|Add1~14_combout\,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan2~13_cout\,
	combout => \inst|alu1|unidad_aritmetica|divi|LessThan2~14_combout\);

-- Location: LCCOMB_X16_Y12_N4
\inst|alu1|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux4~0_combout\ = (\inst|alu1|Mux11~0_combout\ & (((\inst|alu1|Mux10~0_combout\)))) # (!\inst|alu1|Mux11~0_combout\ & ((\inst|alu1|Mux10~0_combout\ & (\inst|alu1|unidad_aritmetica|mult|multi4|s5|Suma~0_combout\)) # (!\inst|alu1|Mux10~0_combout\ 
-- & ((\inst|alu1|unidad_aritmetica|suma|s5|Suma~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|multi4|s5|Suma~0_combout\,
	datab => \inst|alu1|Mux11~0_combout\,
	datac => \inst|alu1|Mux10~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|suma|s5|Suma~0_combout\,
	combout => \inst|alu1|Mux4~0_combout\);

-- Location: LCCOMB_X16_Y12_N18
\inst|alu1|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux4~1_combout\ = (\inst|alu1|Mux11~0_combout\ & ((\inst|alu1|Mux4~0_combout\ & (!\inst|alu1|unidad_aritmetica|divi|LessThan2~14_combout\)) # (!\inst|alu1|Mux4~0_combout\ & ((!\inst|alu1|unidad_aritmetica|resta|s5|Suma~combout\))))) # 
-- (!\inst|alu1|Mux11~0_combout\ & (((\inst|alu1|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux11~0_combout\,
	datab => \inst|alu1|unidad_aritmetica|divi|LessThan2~14_combout\,
	datac => \inst|alu1|Mux4~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|resta|s5|Suma~combout\,
	combout => \inst|alu1|Mux4~1_combout\);

-- Location: FF_X11_Y13_N13
\inst|alu1|unidad_logica|aux[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|alu1|unidad_logica|aux[5]~17_combout\,
	ena => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|unidad_logica|aux\(5));

-- Location: LCCOMB_X13_Y13_N26
\inst|alu1|unidad_logica|salida~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|salida~12_combout\ = (\inst|REG_B\(5) & \inst|REG_A\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|REG_B\(5),
	datad => \inst|REG_A\(5),
	combout => \inst|alu1|unidad_logica|salida~12_combout\);

-- Location: LCCOMB_X14_Y13_N16
\inst|alu1|unidad_logica|salida~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|salida~13_combout\ = (\inst|alu1|Mux10~0_combout\ & ((\inst|alu1|unidad_logica|aux\(5)) # ((!\inst|alu1|Mux11~0_combout\)))) # (!\inst|alu1|Mux10~0_combout\ & (((\inst|alu1|unidad_logica|salida~12_combout\ & 
-- !\inst|alu1|Mux11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux10~0_combout\,
	datab => \inst|alu1|unidad_logica|aux\(5),
	datac => \inst|alu1|unidad_logica|salida~12_combout\,
	datad => \inst|alu1|Mux11~0_combout\,
	combout => \inst|alu1|unidad_logica|salida~13_combout\);

-- Location: LCCOMB_X13_Y13_N12
\inst|alu1|unidad_logica|salida~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|salida~14_combout\ = (\inst|REG_A\(5) & (\inst|alu1|unidad_logica|salida~13_combout\ $ (((\inst|alu1|unidad_logica|salida[0]~30_combout\))))) # (!\inst|REG_A\(5) & ((\inst|alu1|unidad_logica|salida~13_combout\) # ((\inst|REG_B\(5) 
-- & \inst|alu1|unidad_logica|salida[0]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(5),
	datab => \inst|alu1|unidad_logica|salida~13_combout\,
	datac => \inst|REG_B\(5),
	datad => \inst|alu1|unidad_logica|salida[0]~30_combout\,
	combout => \inst|alu1|unidad_logica|salida~14_combout\);

-- Location: FF_X13_Y13_N13
\inst|alu1|unidad_logica|salida[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|alu1|unidad_logica|salida~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|unidad_logica|salida\(5));

-- Location: FF_X13_Y13_N9
\inst|alu1|barrel_shifters|aux[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|REG_A\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|barrel_shifters|aux\(5));

-- Location: FF_X13_Y13_N17
\inst|alu1|barrel_shifters|salShifters[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|alu1|barrel_shifters|aux\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|barrel_shifters|salShifters\(5));

-- Location: LCCOMB_X13_Y13_N16
\inst|alu1|Mux4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux4~2_combout\ = (\inst|alu1|Mux2~6_combout\ & ((\inst|alu1|unidad_logica|salida\(5)) # ((!\inst|alu1|Mux2~7_combout\)))) # (!\inst|alu1|Mux2~6_combout\ & (((\inst|alu1|barrel_shifters|salShifters\(5) & \inst|alu1|Mux2~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_logica|salida\(5),
	datab => \inst|alu1|Mux2~6_combout\,
	datac => \inst|alu1|barrel_shifters|salShifters\(5),
	datad => \inst|alu1|Mux2~7_combout\,
	combout => \inst|alu1|Mux4~2_combout\);

-- Location: LCCOMB_X14_Y12_N28
\inst|alu1|Mux4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux4~3_combout\ = (\inst|alu1|Mux2~3_combout\ & ((\inst|alu1|Mux4~2_combout\ & ((\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~29_combout\))) # (!\inst|alu1|Mux4~2_combout\ & (\inst|alu1|Mux4~1_combout\)))) # 
-- (!\inst|alu1|Mux2~3_combout\ & (((\inst|alu1|Mux4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux4~1_combout\,
	datab => \inst|alu1|Mux2~3_combout\,
	datac => \inst|alu1|Mux4~2_combout\,
	datad => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~29_combout\,
	combout => \inst|alu1|Mux4~3_combout\);

-- Location: LCCOMB_X13_Y11_N8
\inst|reggy~205\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~205_combout\ = (!\inst|Equal0~0_combout\ & ((\inst|alu1|Mux2~10_combout\) # (\inst|alu1|Mux4~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|Mux2~10_combout\,
	datac => \inst|Equal0~0_combout\,
	datad => \inst|alu1|Mux4~3_combout\,
	combout => \inst|reggy~205_combout\);

-- Location: FF_X12_Y11_N5
\inst|reggy~79\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~205_combout\,
	sload => VCC,
	ena => \inst|reggy~196_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy~79_q\);

-- Location: LCCOMB_X12_Y11_N6
\inst|reggy~179\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~179_combout\ = (\inst|MAR\(1) & ((\inst|reggy~79_q\) # ((\inst|MAR\(0))))) # (!\inst|MAR\(1) & (((\inst|reggy~59_q\ & !\inst|MAR\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MAR\(1),
	datab => \inst|reggy~79_q\,
	datac => \inst|reggy~59_q\,
	datad => \inst|MAR\(0),
	combout => \inst|reggy~179_combout\);

-- Location: LCCOMB_X12_Y12_N2
\inst|reggy~180\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~180_combout\ = (\inst|reggy~179_combout\ & (((\inst|reggy~89_q\) # (!\inst|MAR\(0))))) # (!\inst|reggy~179_combout\ & (\inst|reggy~69_q\ & ((\inst|MAR\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy~179_combout\,
	datab => \inst|reggy~69_q\,
	datac => \inst|reggy~89_q\,
	datad => \inst|MAR\(0),
	combout => \inst|reggy~180_combout\);

-- Location: LCCOMB_X14_Y11_N16
\inst|reggy~181\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~181_combout\ = (\inst|MAR\(1) & (((\inst|MAR\(0))))) # (!\inst|MAR\(1) & ((\inst|MAR\(0) & (\inst|reggy~29_q\)) # (!\inst|MAR\(0) & ((\inst|reggy~19_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MAR\(1),
	datab => \inst|reggy~29_q\,
	datac => \inst|reggy~19_q\,
	datad => \inst|MAR\(0),
	combout => \inst|reggy~181_combout\);

-- Location: LCCOMB_X14_Y11_N18
\inst|reggy~182\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~182_combout\ = (\inst|MAR\(1) & ((\inst|reggy~181_combout\ & ((\inst|reggy~49_q\))) # (!\inst|reggy~181_combout\ & (\inst|reggy~39_q\)))) # (!\inst|MAR\(1) & (\inst|reggy~181_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MAR\(1),
	datab => \inst|reggy~181_combout\,
	datac => \inst|reggy~39_q\,
	datad => \inst|reggy~49_q\,
	combout => \inst|reggy~182_combout\);

-- Location: LCCOMB_X16_Y13_N28
\inst|reggy~183\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~183_combout\ = (\inst|MAR\(2) & (\inst|reggy~180_combout\)) # (!\inst|MAR\(2) & ((\inst|reggy~182_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|reggy~180_combout\,
	datac => \inst|reggy~182_combout\,
	datad => \inst|MAR\(2),
	combout => \inst|reggy~183_combout\);

-- Location: FF_X16_Y13_N29
\inst|REG_B[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|reggy~183_combout\,
	ena => \inst|s_p1[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|REG_B\(5));

-- Location: LCCOMB_X14_Y14_N20
\inst|alu1|unidad_aritmetica|suma|Yop~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|Yop~4_combout\ = \inst|REG_B\(9) $ (\inst|REG_B\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(9),
	datad => \inst|REG_B\(5),
	combout => \inst|alu1|unidad_aritmetica|suma|Yop~4_combout\);

-- Location: LCCOMB_X14_Y14_N12
\inst|alu1|unidad_aritmetica|resta|s5|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|resta|s5|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|resta|s4|Cout2~4_combout\) # ((\inst|alu1|unidad_aritmetica|suma|Yop~4_combout\ & (\inst|alu1|unidad_aritmetica|resta|s4|Cout~0_combout\ & 
-- \inst|alu1|unidad_aritmetica|suma|Xop\(5))) # (!\inst|alu1|unidad_aritmetica|suma|Yop~4_combout\ & ((\inst|alu1|unidad_aritmetica|resta|s4|Cout~0_combout\) # (\inst|alu1|unidad_aritmetica|suma|Xop\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|suma|Yop~4_combout\,
	datab => \inst|alu1|unidad_aritmetica|resta|s4|Cout2~4_combout\,
	datac => \inst|alu1|unidad_aritmetica|resta|s4|Cout~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|suma|Xop\(5),
	combout => \inst|alu1|unidad_aritmetica|resta|s5|Cout~0_combout\);

-- Location: LCCOMB_X14_Y14_N16
\inst|alu1|unidad_aritmetica|resta|s6|Suma\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|resta|s6|Suma~combout\ = \inst|alu1|unidad_aritmetica|resta|s5|Cout~0_combout\ $ (\inst|alu1|unidad_aritmetica|suma|Xop\(6) $ (\inst|alu1|unidad_aritmetica|suma|Yop~1_combout\ $ 
-- (\inst|alu1|unidad_aritmetica|resta|s5|Cout2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|resta|s5|Cout~0_combout\,
	datab => \inst|alu1|unidad_aritmetica|suma|Xop\(6),
	datac => \inst|alu1|unidad_aritmetica|suma|Yop~1_combout\,
	datad => \inst|alu1|unidad_aritmetica|resta|s5|Cout2~4_combout\,
	combout => \inst|alu1|unidad_aritmetica|resta|s6|Suma~combout\);

-- Location: LCCOMB_X16_Y12_N0
\inst|alu1|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux3~0_combout\ = (\inst|alu1|Mux10~0_combout\ & ((\inst|alu1|unidad_aritmetica|mult|multi4|s6|Suma~0_combout\) # ((\inst|alu1|Mux11~0_combout\)))) # (!\inst|alu1|Mux10~0_combout\ & (((!\inst|alu1|Mux11~0_combout\ & 
-- \inst|alu1|unidad_aritmetica|suma|s6|Suma~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|multi4|s6|Suma~0_combout\,
	datab => \inst|alu1|Mux10~0_combout\,
	datac => \inst|alu1|Mux11~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|suma|s6|Suma~combout\,
	combout => \inst|alu1|Mux3~0_combout\);

-- Location: LCCOMB_X16_Y12_N22
\inst|alu1|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux3~1_combout\ = (\inst|alu1|Mux11~0_combout\ & ((\inst|alu1|Mux3~0_combout\ & ((!\inst|alu1|unidad_aritmetica|divi|LessThan1~14_combout\))) # (!\inst|alu1|Mux3~0_combout\ & (!\inst|alu1|unidad_aritmetica|resta|s6|Suma~combout\)))) # 
-- (!\inst|alu1|Mux11~0_combout\ & (((\inst|alu1|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|resta|s6|Suma~combout\,
	datab => \inst|alu1|unidad_aritmetica|divi|LessThan1~14_combout\,
	datac => \inst|alu1|Mux11~0_combout\,
	datad => \inst|alu1|Mux3~0_combout\,
	combout => \inst|alu1|Mux3~1_combout\);

-- Location: LCCOMB_X12_Y13_N24
\inst|alu1|unidad_logica|salida~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|salida~9_combout\ = (\inst|REG_A\(6) & \inst|REG_B\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(6),
	datad => \inst|REG_B\(6),
	combout => \inst|alu1|unidad_logica|salida~9_combout\);

-- Location: FF_X11_Y13_N15
\inst|alu1|unidad_logica|aux[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|alu1|unidad_logica|aux[6]~19_combout\,
	ena => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|unidad_logica|aux\(6));

-- Location: LCCOMB_X12_Y13_N10
\inst|alu1|unidad_logica|salida~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|salida~10_combout\ = (\inst|alu1|Mux11~0_combout\ & (((\inst|alu1|Mux10~0_combout\ & \inst|alu1|unidad_logica|aux\(6))))) # (!\inst|alu1|Mux11~0_combout\ & ((\inst|alu1|unidad_logica|salida~9_combout\) # 
-- ((\inst|alu1|Mux10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux11~0_combout\,
	datab => \inst|alu1|unidad_logica|salida~9_combout\,
	datac => \inst|alu1|Mux10~0_combout\,
	datad => \inst|alu1|unidad_logica|aux\(6),
	combout => \inst|alu1|unidad_logica|salida~10_combout\);

-- Location: LCCOMB_X12_Y13_N12
\inst|alu1|unidad_logica|salida~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|salida~11_combout\ = (\inst|alu1|unidad_logica|salida~10_combout\ & (((!\inst|REG_A\(6)) # (!\inst|alu1|unidad_logica|salida[0]~30_combout\)))) # (!\inst|alu1|unidad_logica|salida~10_combout\ & 
-- (\inst|alu1|unidad_logica|salida[0]~30_combout\ & ((\inst|REG_B\(6)) # (\inst|REG_A\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_logica|salida~10_combout\,
	datab => \inst|REG_B\(6),
	datac => \inst|alu1|unidad_logica|salida[0]~30_combout\,
	datad => \inst|REG_A\(6),
	combout => \inst|alu1|unidad_logica|salida~11_combout\);

-- Location: FF_X12_Y13_N13
\inst|alu1|unidad_logica|salida[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|alu1|unidad_logica|salida~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|unidad_logica|salida\(6));

-- Location: FF_X13_Y13_N5
\inst|alu1|barrel_shifters|aux[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|REG_A\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|barrel_shifters|aux\(6));

-- Location: FF_X13_Y13_N29
\inst|alu1|barrel_shifters|salShifters[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|alu1|barrel_shifters|aux\(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|barrel_shifters|salShifters\(6));

-- Location: LCCOMB_X13_Y13_N28
\inst|alu1|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux3~2_combout\ = (\inst|alu1|Mux2~6_combout\ & ((\inst|alu1|unidad_logica|salida\(6)) # ((!\inst|alu1|Mux2~7_combout\)))) # (!\inst|alu1|Mux2~6_combout\ & (((\inst|alu1|barrel_shifters|salShifters\(6) & \inst|alu1|Mux2~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_logica|salida\(6),
	datab => \inst|alu1|Mux2~6_combout\,
	datac => \inst|alu1|barrel_shifters|salShifters\(6),
	datad => \inst|alu1|Mux2~7_combout\,
	combout => \inst|alu1|Mux3~2_combout\);

-- Location: LCCOMB_X14_Y12_N30
\inst|alu1|Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux3~3_combout\ = (\inst|alu1|Mux2~3_combout\ & ((\inst|alu1|Mux3~2_combout\ & ((\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~31_combout\))) # (!\inst|alu1|Mux3~2_combout\ & (\inst|alu1|Mux3~1_combout\)))) # 
-- (!\inst|alu1|Mux2~3_combout\ & (((\inst|alu1|Mux3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux3~1_combout\,
	datab => \inst|alu1|Mux2~3_combout\,
	datac => \inst|alu1|Mux3~2_combout\,
	datad => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~31_combout\,
	combout => \inst|alu1|Mux3~3_combout\);

-- Location: LCCOMB_X13_Y11_N22
\inst|reggy~204\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~204_combout\ = (!\inst|Equal0~0_combout\ & ((\inst|alu1|Mux2~10_combout\) # (\inst|alu1|Mux3~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|Mux2~10_combout\,
	datac => \inst|Equal0~0_combout\,
	datad => \inst|alu1|Mux3~3_combout\,
	combout => \inst|reggy~204_combout\);

-- Location: FF_X13_Y11_N23
\inst|reggy~50\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|reggy~204_combout\,
	ena => \inst|reggy~202_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy~50_q\);

-- Location: LCCOMB_X14_Y11_N20
\inst|reggy~121\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~121_combout\ = (\inst|MAR\(4) & ((\inst|MAR\(5)) # ((\inst|reggy~30_q\)))) # (!\inst|MAR\(4) & (!\inst|MAR\(5) & (\inst|reggy~20_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MAR\(4),
	datab => \inst|MAR\(5),
	datac => \inst|reggy~20_q\,
	datad => \inst|reggy~30_q\,
	combout => \inst|reggy~121_combout\);

-- Location: LCCOMB_X14_Y11_N26
\inst|reggy~122\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~122_combout\ = (\inst|MAR\(5) & ((\inst|reggy~121_combout\ & (\inst|reggy~50_q\)) # (!\inst|reggy~121_combout\ & ((\inst|reggy~40_q\))))) # (!\inst|MAR\(5) & (((\inst|reggy~121_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy~50_q\,
	datab => \inst|MAR\(5),
	datac => \inst|reggy~40_q\,
	datad => \inst|reggy~121_combout\,
	combout => \inst|reggy~122_combout\);

-- Location: LCCOMB_X12_Y11_N30
\inst|reggy~119\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~119_combout\ = (\inst|MAR\(4) & (\inst|MAR\(5))) # (!\inst|MAR\(4) & ((\inst|MAR\(5) & ((\inst|reggy~80_q\))) # (!\inst|MAR\(5) & (\inst|reggy~60_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MAR\(4),
	datab => \inst|MAR\(5),
	datac => \inst|reggy~60_q\,
	datad => \inst|reggy~80_q\,
	combout => \inst|reggy~119_combout\);

-- Location: LCCOMB_X12_Y12_N14
\inst|reggy~120\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~120_combout\ = (\inst|reggy~119_combout\ & (((\inst|reggy~90_q\) # (!\inst|MAR\(4))))) # (!\inst|reggy~119_combout\ & (\inst|reggy~70_q\ & ((\inst|MAR\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy~119_combout\,
	datab => \inst|reggy~70_q\,
	datac => \inst|reggy~90_q\,
	datad => \inst|MAR\(4),
	combout => \inst|reggy~120_combout\);

-- Location: LCCOMB_X18_Y13_N4
\inst|reggy~123\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~123_combout\ = (\inst|MAR\(6) & ((\inst|reggy~120_combout\))) # (!\inst|MAR\(6) & (\inst|reggy~122_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|reggy~122_combout\,
	datac => \inst|reggy~120_combout\,
	datad => \inst|MAR\(6),
	combout => \inst|reggy~123_combout\);

-- Location: FF_X18_Y13_N5
\inst|REG_A[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|reggy~123_combout\,
	ena => \inst|s_p1[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|REG_A\(6));

-- Location: LCCOMB_X16_Y14_N20
\inst|alu1|unidad_aritmetica|suma|Xop[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|Xop\(6) = \inst|REG_A\(6) $ (\inst|REG_A\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|REG_A\(6),
	datad => \inst|REG_A\(9),
	combout => \inst|alu1|unidad_aritmetica|suma|Xop\(6));

-- Location: LCCOMB_X13_Y13_N18
\inst|alu1|unidad_aritmetica|suma|s7|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|s7|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|suma|Xop\(6) & (\inst|alu1|unidad_aritmetica|suma|Yop~1_combout\ & (\inst|alu1|unidad_aritmetica|suma|Yop~0_combout\ & 
-- \inst|alu1|unidad_aritmetica|suma|s5|Cout2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|suma|Xop\(6),
	datab => \inst|alu1|unidad_aritmetica|suma|Yop~1_combout\,
	datac => \inst|alu1|unidad_aritmetica|suma|Yop~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|suma|s5|Cout2~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|suma|s7|Cout~0_combout\);

-- Location: LCCOMB_X12_Y14_N14
\inst|alu1|unidad_aritmetica|suma|Sfaux~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|Sfaux~0_combout\ = \inst|REG_B\(9) $ (\inst|REG_A\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|REG_B\(9),
	datac => \inst|REG_A\(9),
	combout => \inst|alu1|unidad_aritmetica|suma|Sfaux~0_combout\);

-- Location: LCCOMB_X13_Y14_N28
\inst|alu1|unidad_aritmetica|suma|s7|Cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|s7|Cout~1_combout\ = (\inst|alu1|unidad_aritmetica|suma|Xop\(7) & ((\inst|alu1|unidad_aritmetica|suma|s6|Cout~combout\) # (\inst|REG_B\(9) $ (\inst|REG_B\(7))))) # (!\inst|alu1|unidad_aritmetica|suma|Xop\(7) & 
-- (\inst|alu1|unidad_aritmetica|suma|s6|Cout~combout\ & (\inst|REG_B\(9) $ (\inst|REG_B\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(9),
	datab => \inst|alu1|unidad_aritmetica|suma|Xop\(7),
	datac => \inst|REG_B\(7),
	datad => \inst|alu1|unidad_aritmetica|suma|s6|Cout~combout\,
	combout => \inst|alu1|unidad_aritmetica|suma|s7|Cout~1_combout\);

-- Location: LCCOMB_X13_Y14_N26
\inst|alu1|unidad_aritmetica|suma|s7|Cout~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|s7|Cout~2_combout\ = (\inst|alu1|unidad_aritmetica|suma|s7|Cout~1_combout\) # ((\inst|alu1|unidad_aritmetica|suma|Xop\(6) & (\inst|alu1|unidad_aritmetica|suma|s5|Cout2~0_combout\ & 
-- \inst|alu1|unidad_aritmetica|suma|Yop~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|suma|Xop\(6),
	datab => \inst|alu1|unidad_aritmetica|suma|s5|Cout2~0_combout\,
	datac => \inst|alu1|unidad_aritmetica|suma|Yop~1_combout\,
	datad => \inst|alu1|unidad_aritmetica|suma|s7|Cout~1_combout\,
	combout => \inst|alu1|unidad_aritmetica|suma|s7|Cout~2_combout\);

-- Location: LCCOMB_X12_Y10_N28
\inst|alu1|unidad_aritmetica|suma|s8|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|s8|Cout~0_combout\ = (\inst|REG_A\(9) & ((\inst|REG_B\(9)) # ((\inst|alu1|unidad_aritmetica|suma|s7|Cout~0_combout\) # (\inst|alu1|unidad_aritmetica|suma|s7|Cout~2_combout\)))) # (!\inst|REG_A\(9) & (\inst|REG_B\(9) & 
-- ((\inst|alu1|unidad_aritmetica|suma|s7|Cout~0_combout\) # (\inst|alu1|unidad_aritmetica|suma|s7|Cout~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(9),
	datab => \inst|REG_B\(9),
	datac => \inst|alu1|unidad_aritmetica|suma|s7|Cout~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|suma|s7|Cout~2_combout\,
	combout => \inst|alu1|unidad_aritmetica|suma|s8|Cout~0_combout\);

-- Location: LCCOMB_X12_Y10_N26
\inst|alu1|unidad_aritmetica|suma|Sfaux~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|Sfaux~1_combout\ = \inst|alu1|unidad_aritmetica|suma|Sfaux~0_combout\ $ (((\inst|alu1|unidad_aritmetica|suma|s8|Cout~0_combout\) # ((\inst|alu1|unidad_aritmetica|suma|s7|Cout~0_combout\ & 
-- \inst|alu1|unidad_aritmetica|suma|Xop\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|suma|s7|Cout~0_combout\,
	datab => \inst|alu1|unidad_aritmetica|suma|Sfaux~0_combout\,
	datac => \inst|alu1|unidad_aritmetica|suma|Xop\(7),
	datad => \inst|alu1|unidad_aritmetica|suma|s8|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|suma|Sfaux~1_combout\);

-- Location: LCCOMB_X13_Y10_N8
\inst|alu1|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux2~0_combout\ = (!\inst|alu1|Mux10~0_combout\ & ((\inst|alu1|Mux11~0_combout\ & ((!\inst|alu1|unidad_aritmetica|resta|Sfaux~0_combout\))) # (!\inst|alu1|Mux11~0_combout\ & (\inst|alu1|unidad_aritmetica|suma|Sfaux~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux11~0_combout\,
	datab => \inst|alu1|Mux10~0_combout\,
	datac => \inst|alu1|unidad_aritmetica|suma|Sfaux~1_combout\,
	datad => \inst|alu1|unidad_aritmetica|resta|Sfaux~0_combout\,
	combout => \inst|alu1|Mux2~0_combout\);

-- Location: LCCOMB_X16_Y14_N14
\inst|flag~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|flag~2_combout\ = (\inst|alu1|Mux2~0_combout\) # ((\inst|alu1|Mux10~0_combout\ & (\inst|REG_A\(9) $ (\inst|REG_B\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(9),
	datab => \inst|REG_B\(9),
	datac => \inst|alu1|Mux10~0_combout\,
	datad => \inst|alu1|Mux2~0_combout\,
	combout => \inst|flag~2_combout\);

-- Location: LCCOMB_X17_Y12_N10
\inst|flag~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|flag~4_combout\ = (\rst~input_o\ & ((\inst|pr_state.state2~q\ & ((\inst|flag~2_combout\))) # (!\inst|pr_state.state2~q\ & (\inst|flag~q\)))) # (!\rst~input_o\ & (((\inst|flag~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \inst|pr_state.state2~q\,
	datac => \inst|flag~q\,
	datad => \inst|flag~2_combout\,
	combout => \inst|flag~4_combout\);

-- Location: FF_X17_Y12_N11
\inst|flag\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|flag~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|flag~q\);

-- Location: LCCOMB_X19_Y4_N28
\inst2|contador[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|contador[0]~1_combout\ = !\inst2|contador\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|contador\(0),
	combout => \inst2|contador[0]~1_combout\);

-- Location: FF_X19_Y4_N29
\inst2|contador[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|contador[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|contador\(0));

-- Location: LCCOMB_X19_Y4_N2
\inst2|contador[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|contador[1]~0_combout\ = \inst2|contador\(1) $ (\inst2|contador\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|contador\(1),
	datad => \inst2|contador\(0),
	combout => \inst2|contador[1]~0_combout\);

-- Location: FF_X19_Y4_N3
\inst2|contador[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|contador[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|contador\(1));

-- Location: LCCOMB_X19_Y4_N12
\inst2|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux3~0_combout\ = (!\inst2|contador\(1) & !\inst2|contador\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|contador\(1),
	datad => \inst2|contador\(0),
	combout => \inst2|Mux3~0_combout\);

-- Location: FF_X19_Y4_N13
\inst2|arreglo[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|arreglo\(0));

-- Location: LCCOMB_X19_Y4_N22
\inst2|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux1~0_combout\ = (!\inst2|contador\(1) & \inst2|contador\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|contador\(1),
	datad => \inst2|contador\(0),
	combout => \inst2|Mux1~0_combout\);

-- Location: FF_X19_Y4_N23
\inst2|arreglo[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|arreglo\(1));

-- Location: LCCOMB_X19_Y4_N24
\inst2|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux1~1_combout\ = (\inst2|contador\(1) & !\inst2|contador\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|contador\(1),
	datad => \inst2|contador\(0),
	combout => \inst2|Mux1~1_combout\);

-- Location: FF_X19_Y4_N25
\inst2|arreglo[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|Mux1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|arreglo\(2));

-- Location: LCCOMB_X19_Y4_N26
\inst2|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux1~2_combout\ = (\inst2|contador\(1) & \inst2|contador\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|contador\(1),
	datad => \inst2|contador\(0),
	combout => \inst2|Mux1~2_combout\);

-- Location: FF_X19_Y4_N27
\inst2|arreglo[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|Mux1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|arreglo\(3));

-- Location: LCCOMB_X17_Y8_N4
\inst1|Selector31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector31~0_combout\ = (\inst1|shift_counter\(0) & (((\inst1|state.done~q\)))) # (!\inst1|shift_counter\(0) & (!\inst1|Equal0~0_combout\ & (\inst1|state.shift~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal0~0_combout\,
	datab => \inst1|state.shift~q\,
	datac => \inst1|shift_counter\(0),
	datad => \inst1|state.done~q\,
	combout => \inst1|Selector31~0_combout\);

-- Location: FF_X17_Y8_N5
\inst1|shift_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|Selector31~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_counter\(0));

-- Location: LCCOMB_X17_Y8_N16
\inst1|Selector30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector30~0_combout\ = (\inst1|shift_counter\(1) & ((\inst1|state.done~q\) # ((\inst1|state.shift~q\ & !\inst1|shift_counter\(0))))) # (!\inst1|shift_counter\(1) & (\inst1|state.shift~q\ & (\inst1|shift_counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|state.shift~q\,
	datab => \inst1|shift_counter\(0),
	datac => \inst1|shift_counter\(1),
	datad => \inst1|state.done~q\,
	combout => \inst1|Selector30~0_combout\);

-- Location: FF_X17_Y8_N17
\inst1|shift_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|Selector30~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_counter\(1));

-- Location: LCCOMB_X17_Y8_N26
\inst1|Selector29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector29~0_combout\ = (\inst1|state.shift~q\ & (\inst1|shift_counter\(2) $ (((\inst1|shift_counter\(0) & \inst1|shift_counter\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|shift_counter\(2),
	datab => \inst1|state.shift~q\,
	datac => \inst1|shift_counter\(0),
	datad => \inst1|shift_counter\(1),
	combout => \inst1|Selector29~0_combout\);

-- Location: LCCOMB_X17_Y8_N30
\inst1|Selector29~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector29~1_combout\ = (\inst1|Selector29~0_combout\) # ((\inst1|shift_counter\(2) & \inst1|state.done~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Selector29~0_combout\,
	datac => \inst1|shift_counter\(2),
	datad => \inst1|state.done~q\,
	combout => \inst1|Selector29~1_combout\);

-- Location: FF_X17_Y8_N31
\inst1|shift_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|Selector29~1_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_counter\(2));

-- Location: LCCOMB_X17_Y8_N28
\inst1|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~0_combout\ = \inst1|shift_counter\(3) $ (((\inst1|shift_counter\(2) & (\inst1|shift_counter\(1) & \inst1|shift_counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|shift_counter\(2),
	datab => \inst1|shift_counter\(1),
	datac => \inst1|shift_counter\(0),
	datad => \inst1|shift_counter\(3),
	combout => \inst1|Add0~0_combout\);

-- Location: LCCOMB_X17_Y8_N18
\inst1|Selector28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector28~0_combout\ = (\inst1|state.shift~q\ & ((\inst1|Add0~0_combout\) # ((\inst1|shift_counter\(3) & \inst1|state.done~q\)))) # (!\inst1|state.shift~q\ & (((\inst1|shift_counter\(3) & \inst1|state.done~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|state.shift~q\,
	datab => \inst1|Add0~0_combout\,
	datac => \inst1|shift_counter\(3),
	datad => \inst1|state.done~q\,
	combout => \inst1|Selector28~0_combout\);

-- Location: FF_X17_Y8_N19
\inst1|shift_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|Selector28~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|shift_counter\(3));

-- Location: LCCOMB_X17_Y8_N6
\inst1|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal0~0_combout\ = (!\inst1|shift_counter\(2) & (\inst1|shift_counter\(1) & (!\inst1|shift_counter\(0) & \inst1|shift_counter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|shift_counter\(2),
	datab => \inst1|shift_counter\(1),
	datac => \inst1|shift_counter\(0),
	datad => \inst1|shift_counter\(3),
	combout => \inst1|Equal0~0_combout\);

-- Location: LCCOMB_X18_Y5_N16
\inst1|state_next.done~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|state_next.done~0_combout\ = (\inst1|Equal0~0_combout\ & \inst1|state.shift~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Equal0~0_combout\,
	datad => \inst1|state.shift~q\,
	combout => \inst1|state_next.done~0_combout\);

-- Location: FF_X18_Y5_N17
\inst1|state.done\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|state_next.done~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|state.done~q\);

-- Location: LCCOMB_X17_Y8_N22
\inst1|state.start~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|state.start~0_combout\ = !\inst1|state.done~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|state.done~q\,
	combout => \inst1|state.start~0_combout\);

-- Location: FF_X17_Y8_N23
\inst1|state.start\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|state.start~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|state.start~q\);

-- Location: LCCOMB_X17_Y8_N0
\inst1|Selector1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector1~1_combout\ = ((\inst1|state.shift~q\ & !\inst1|Equal0~0_combout\)) # (!\inst1|state.start~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|state.start~q\,
	datac => \inst1|state.shift~q\,
	datad => \inst1|Equal0~0_combout\,
	combout => \inst1|Selector1~1_combout\);

-- Location: FF_X17_Y8_N1
\inst1|state.shift\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|Selector1~1_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|state.shift~q\);

-- Location: LCCOMB_X13_Y14_N20
\inst|alu1|unidad_aritmetica|suma|s7|Cout2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|s7|Cout2~0_combout\ = (\inst|alu1|unidad_aritmetica|suma|s6|Cout2~4_combout\ & (\inst|alu1|unidad_aritmetica|suma|Yop~0_combout\ & (\inst|REG_A\(7) $ (\inst|REG_A\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(7),
	datab => \inst|REG_A\(9),
	datac => \inst|alu1|unidad_aritmetica|suma|s6|Cout2~4_combout\,
	datad => \inst|alu1|unidad_aritmetica|suma|Yop~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|suma|s7|Cout2~0_combout\);

-- Location: LCCOMB_X13_Y14_N18
\inst|alu1|unidad_aritmetica|suma|s8|Suma\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|s8|Suma~combout\ = \inst|alu1|unidad_aritmetica|suma|Sfaux~0_combout\ $ (\inst|alu1|unidad_aritmetica|suma|s7|Cout2~0_combout\ $ (((\inst|alu1|unidad_aritmetica|suma|s6|Cout2~4_combout\) # 
-- (\inst|alu1|unidad_aritmetica|suma|s7|Cout~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|suma|Sfaux~0_combout\,
	datab => \inst|alu1|unidad_aritmetica|suma|s7|Cout2~0_combout\,
	datac => \inst|alu1|unidad_aritmetica|suma|s6|Cout2~4_combout\,
	datad => \inst|alu1|unidad_aritmetica|suma|s7|Cout~1_combout\,
	combout => \inst|alu1|unidad_aritmetica|suma|s8|Suma~combout\);

-- Location: LCCOMB_X13_Y10_N4
\inst|alu1|unidad_aritmetica|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|Mux1~2_combout\ = (\inst|alu1|Mux10~0_combout\) # ((\inst|alu1|unidad_aritmetica|suma|Sfaux~1_combout\ & !\inst|alu1|Mux11~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|Mux10~0_combout\,
	datac => \inst|alu1|unidad_aritmetica|suma|Sfaux~1_combout\,
	datad => \inst|alu1|Mux11~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|Mux1~2_combout\);

-- Location: LCCOMB_X12_Y9_N2
\inst|alu1|unidad_aritmetica|mult|multi4|s8|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi4|s8|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|mult|multi3|s7|Cout~0_combout\ $ (\inst|alu1|unidad_aritmetica|mult|multi4|s7|Cout~0_combout\ $ (((\inst|REG_B\(4) & \inst|REG_A\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(4),
	datab => \inst|alu1|unidad_aritmetica|mult|multi3|s7|Cout~0_combout\,
	datac => \inst|REG_A\(4),
	datad => \inst|alu1|unidad_aritmetica|mult|multi4|s7|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi4|s8|Suma~0_combout\);

-- Location: LCCOMB_X13_Y14_N6
\inst|alu1|unidad_aritmetica|resta|s8|Suma\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|resta|s8|Suma~combout\ = \inst|alu1|unidad_aritmetica|resta|s7|Cout2~4_combout\ $ (\inst|REG_A\(9) $ (\inst|REG_B\(9) $ (\inst|alu1|unidad_aritmetica|resta|s7|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|resta|s7|Cout2~4_combout\,
	datab => \inst|REG_A\(9),
	datac => \inst|REG_B\(9),
	datad => \inst|alu1|unidad_aritmetica|resta|s7|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|resta|s8|Suma~combout\);

-- Location: LCCOMB_X13_Y14_N0
\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~35_combout\ = (!\inst|alu1|Mux10~0_combout\ & ((\inst|alu1|Mux11~0_combout\ & (\inst|alu1|unidad_aritmetica|resta|s8|Suma~combout\)) # (!\inst|alu1|Mux11~0_combout\ & 
-- ((!\inst|alu1|unidad_aritmetica|suma|s8|Suma~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|resta|s8|Suma~combout\,
	datab => \inst|alu1|Mux10~0_combout\,
	datac => \inst|alu1|Mux11~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|suma|s8|Suma~combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~35_combout\);

-- Location: LCCOMB_X13_Y14_N2
\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~36_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~35_combout\) # ((!\inst|alu1|unidad_aritmetica|mult|multi4|s8|Suma~0_combout\ & \inst|alu1|Mux10~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|multi4|s8|Suma~0_combout\,
	datab => \inst|alu1|Mux10~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~35_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~36_combout\);

-- Location: LCCOMB_X14_Y12_N16
\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~37_combout\ = \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~34\ $ (!\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~36_combout\,
	cin => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~34\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~37_combout\);

-- Location: LCCOMB_X13_Y10_N0
\inst|alu1|unidad_aritmetica|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|Mux1~0_combout\ = (\inst|alu1|Mux11~0_combout\ & ((\inst|alu1|unidad_aritmetica|resta|Sfaux~0_combout\ & ((!\inst|alu1|unidad_aritmetica|resta|s8|Suma~combout\))) # (!\inst|alu1|unidad_aritmetica|resta|Sfaux~0_combout\ & 
-- (\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~37_combout\)))) # (!\inst|alu1|Mux11~0_combout\ & (\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~37_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~37_combout\,
	datab => \inst|alu1|unidad_aritmetica|resta|s8|Suma~combout\,
	datac => \inst|alu1|Mux11~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|resta|Sfaux~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|Mux1~0_combout\);

-- Location: LCCOMB_X13_Y10_N2
\inst|alu1|unidad_aritmetica|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|Mux1~1_combout\ = (\inst|alu1|Mux10~0_combout\ & ((\inst|alu1|unidad_aritmetica|mult|multi4|s8|Cout~0_combout\ & ((\inst|alu1|unidad_aritmetica|Mux1~0_combout\))) # (!\inst|alu1|unidad_aritmetica|mult|multi4|s8|Cout~0_combout\ 
-- & (\inst|alu1|unidad_aritmetica|mult|multi4|s8|Suma~0_combout\)))) # (!\inst|alu1|Mux10~0_combout\ & (((\inst|alu1|unidad_aritmetica|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|multi4|s8|Suma~0_combout\,
	datab => \inst|alu1|Mux10~0_combout\,
	datac => \inst|alu1|unidad_aritmetica|mult|multi4|s8|Cout~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|Mux1~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|Mux1~1_combout\);

-- Location: LCCOMB_X13_Y10_N14
\inst|alu1|unidad_aritmetica|Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|Mux1~3_combout\ = (\inst|alu1|Mux11~0_combout\ & (((!\inst|alu1|unidad_aritmetica|Mux1~2_combout\ & \inst|alu1|unidad_aritmetica|Mux1~1_combout\)))) # (!\inst|alu1|Mux11~0_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|Mux1~2_combout\ & ((\inst|alu1|unidad_aritmetica|Mux1~1_combout\))) # (!\inst|alu1|unidad_aritmetica|Mux1~2_combout\ & (\inst|alu1|unidad_aritmetica|suma|s8|Suma~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|suma|s8|Suma~combout\,
	datab => \inst|alu1|Mux11~0_combout\,
	datac => \inst|alu1|unidad_aritmetica|Mux1~2_combout\,
	datad => \inst|alu1|unidad_aritmetica|Mux1~1_combout\,
	combout => \inst|alu1|unidad_aritmetica|Mux1~3_combout\);

-- Location: LCCOMB_X13_Y10_N26
\inst|alu1|Mux1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux1~7_combout\ = (\inst|OP\(3) & ((\inst|alu1|unidad_aritmetica|Mux1~3_combout\) # ((\inst|OP\(0) & \inst|OP\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|OP\(0),
	datab => \inst|OP\(3),
	datac => \inst|alu1|unidad_aritmetica|Mux1~3_combout\,
	datad => \inst|OP\(1),
	combout => \inst|alu1|Mux1~7_combout\);

-- Location: LCCOMB_X14_Y10_N14
\inst|alu1|Mux1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux1~5_combout\ = (!\inst|OP\(2) & (!\inst|OP\(3) & ((\inst|OP\(1)) # (\inst|OP\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|OP\(2),
	datab => \inst|OP\(1),
	datac => \inst|OP\(3),
	datad => \inst|OP\(0),
	combout => \inst|alu1|Mux1~5_combout\);

-- Location: LCCOMB_X14_Y13_N2
\inst|alu1|barrel_shifters|aux[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|barrel_shifters|aux[8]~feeder_combout\ = \inst|REG_A\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|REG_A\(7),
	combout => \inst|alu1|barrel_shifters|aux[8]~feeder_combout\);

-- Location: FF_X14_Y13_N3
\inst|alu1|barrel_shifters|aux[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|alu1|barrel_shifters|aux[8]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|barrel_shifters|aux\(8));

-- Location: FF_X14_Y10_N31
\inst|alu1|barrel_shifters|salShifters[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|alu1|barrel_shifters|aux\(8),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|barrel_shifters|salShifters\(8));

-- Location: LCCOMB_X14_Y10_N30
\inst|alu1|Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux1~3_combout\ = (\inst|OP\(3)) # ((\inst|alu1|barrel_shifters|salShifters\(8) & (\inst|OP\(1) $ (\inst|OP\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|OP\(3),
	datab => \inst|OP\(1),
	datac => \inst|alu1|barrel_shifters|salShifters\(8),
	datad => \inst|OP\(0),
	combout => \inst|alu1|Mux1~3_combout\);

-- Location: FF_X16_Y10_N31
\inst|reggy~52\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|reggy~210_combout\,
	ena => \inst|reggy~202_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy~52_q\);

-- Location: FF_X14_Y11_N1
\inst|reggy~42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~210_combout\,
	sload => VCC,
	ena => \inst|reggy~199_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy~42_q\);

-- Location: FF_X16_Y10_N9
\inst|reggy~32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~210_combout\,
	sload => VCC,
	ena => \inst|reggy~200_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy~32_q\);

-- Location: LCCOMB_X16_Y10_N4
\inst|reggy~191\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~191_combout\ = (\inst|MAR\(1) & (((\inst|MAR\(0))))) # (!\inst|MAR\(1) & ((\inst|MAR\(0) & ((\inst|reggy~32_q\))) # (!\inst|MAR\(0) & (\inst|reggy~22_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MAR\(1),
	datab => \inst|reggy~22_q\,
	datac => \inst|reggy~32_q\,
	datad => \inst|MAR\(0),
	combout => \inst|reggy~191_combout\);

-- Location: LCCOMB_X14_Y11_N0
\inst|reggy~192\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~192_combout\ = (\inst|MAR\(1) & ((\inst|reggy~191_combout\ & (\inst|reggy~52_q\)) # (!\inst|reggy~191_combout\ & ((\inst|reggy~42_q\))))) # (!\inst|MAR\(1) & (((\inst|reggy~191_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MAR\(1),
	datab => \inst|reggy~52_q\,
	datac => \inst|reggy~42_q\,
	datad => \inst|reggy~191_combout\,
	combout => \inst|reggy~192_combout\);

-- Location: FF_X12_Y12_N13
\inst|reggy~72\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~210_combout\,
	sload => VCC,
	ena => \inst|reggy~195_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy~72_q\);

-- Location: FF_X14_Y12_N3
\inst|reggy~62\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~210_combout\,
	sload => VCC,
	ena => \inst|reggy~197_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy~62_q\);

-- Location: FF_X11_Y12_N17
\inst|reggy~82\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~210_combout\,
	sload => VCC,
	ena => \inst|reggy~196_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy~82_q\);

-- Location: LCCOMB_X11_Y12_N30
\inst|reggy~189\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~189_combout\ = (\inst|MAR\(0) & (\inst|MAR\(1))) # (!\inst|MAR\(0) & ((\inst|MAR\(1) & ((\inst|reggy~82_q\))) # (!\inst|MAR\(1) & (\inst|reggy~62_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MAR\(0),
	datab => \inst|MAR\(1),
	datac => \inst|reggy~62_q\,
	datad => \inst|reggy~82_q\,
	combout => \inst|reggy~189_combout\);

-- Location: FF_X12_Y12_N19
\inst|reggy~92\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~210_combout\,
	sload => VCC,
	ena => \inst|reggy~198_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy~92_q\);

-- Location: LCCOMB_X12_Y12_N18
\inst|reggy~190\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~190_combout\ = (\inst|reggy~189_combout\ & (((\inst|reggy~92_q\) # (!\inst|MAR\(0))))) # (!\inst|reggy~189_combout\ & (\inst|reggy~72_q\ & ((\inst|MAR\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy~72_q\,
	datab => \inst|reggy~189_combout\,
	datac => \inst|reggy~92_q\,
	datad => \inst|MAR\(0),
	combout => \inst|reggy~190_combout\);

-- Location: LCCOMB_X12_Y14_N22
\inst|reggy~193\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~193_combout\ = (\inst|MAR\(2) & ((\inst|reggy~190_combout\))) # (!\inst|MAR\(2) & (\inst|reggy~192_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|MAR\(2),
	datac => \inst|reggy~192_combout\,
	datad => \inst|reggy~190_combout\,
	combout => \inst|reggy~193_combout\);

-- Location: FF_X12_Y14_N23
\inst|REG_B[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|reggy~193_combout\,
	ena => \inst|s_p1[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|REG_B\(8));

-- Location: LCCOMB_X11_Y13_N18
\inst|alu1|unidad_logica|aux[8]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|aux[8]~24_combout\ = (\inst|REG_A\(8) & ((\inst|alu1|unidad_logica|aux[7]~22\) # (GND))) # (!\inst|REG_A\(8) & (!\inst|alu1|unidad_logica|aux[7]~22\))
-- \inst|alu1|unidad_logica|aux[8]~25\ = CARRY((\inst|REG_A\(8)) # (!\inst|alu1|unidad_logica|aux[7]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|REG_A\(8),
	datad => VCC,
	cin => \inst|alu1|unidad_logica|aux[7]~22\,
	combout => \inst|alu1|unidad_logica|aux[8]~24_combout\,
	cout => \inst|alu1|unidad_logica|aux[8]~25\);

-- Location: FF_X11_Y13_N19
\inst|alu1|unidad_logica|aux[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|alu1|unidad_logica|aux[8]~24_combout\,
	ena => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|unidad_logica|aux\(8));

-- Location: LCCOMB_X12_Y14_N30
\inst|alu1|unidad_logica|salida~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|salida~25_combout\ = (\inst|REG_A\(8) & \inst|REG_B\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|REG_A\(8),
	datac => \inst|REG_B\(8),
	combout => \inst|alu1|unidad_logica|salida~25_combout\);

-- Location: LCCOMB_X12_Y14_N8
\inst|alu1|unidad_logica|salida~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|salida~26_combout\ = (\inst|alu1|Mux10~0_combout\ & ((\inst|alu1|unidad_logica|aux\(8)) # ((!\inst|alu1|Mux11~0_combout\)))) # (!\inst|alu1|Mux10~0_combout\ & (((\inst|alu1|unidad_logica|salida~25_combout\ & 
-- !\inst|alu1|Mux11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux10~0_combout\,
	datab => \inst|alu1|unidad_logica|aux\(8),
	datac => \inst|alu1|unidad_logica|salida~25_combout\,
	datad => \inst|alu1|Mux11~0_combout\,
	combout => \inst|alu1|unidad_logica|salida~26_combout\);

-- Location: LCCOMB_X12_Y14_N2
\inst|alu1|unidad_logica|salida~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|salida~27_combout\ = (\inst|REG_A\(8) & ((\inst|alu1|unidad_logica|salida~26_combout\ $ (\inst|alu1|unidad_logica|salida[0]~30_combout\)))) # (!\inst|REG_A\(8) & ((\inst|alu1|unidad_logica|salida~26_combout\) # ((\inst|REG_B\(8) & 
-- \inst|alu1|unidad_logica|salida[0]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(8),
	datab => \inst|REG_A\(8),
	datac => \inst|alu1|unidad_logica|salida~26_combout\,
	datad => \inst|alu1|unidad_logica|salida[0]~30_combout\,
	combout => \inst|alu1|unidad_logica|salida~27_combout\);

-- Location: FF_X12_Y14_N3
\inst|alu1|unidad_logica|salida[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|alu1|unidad_logica|salida~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|unidad_logica|salida\(8));

-- Location: LCCOMB_X13_Y10_N28
\inst|alu1|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux1~2_combout\ = (\inst|OP\(1) & (\inst|alu1|unidad_aritmetica|Mux1~3_combout\ & (\inst|OP\(0)))) # (!\inst|OP\(1) & (((!\inst|OP\(0) & \inst|alu1|unidad_logica|salida\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|OP\(1),
	datab => \inst|alu1|unidad_aritmetica|Mux1~3_combout\,
	datac => \inst|OP\(0),
	datad => \inst|alu1|unidad_logica|salida\(8),
	combout => \inst|alu1|Mux1~2_combout\);

-- Location: LCCOMB_X13_Y10_N30
\inst|alu1|Mux1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux1~4_combout\ = (\inst|OP\(2) & ((\inst|alu1|Mux1~3_combout\) # (\inst|alu1|Mux1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|OP\(2),
	datac => \inst|alu1|Mux1~3_combout\,
	datad => \inst|alu1|Mux1~2_combout\,
	combout => \inst|alu1|Mux1~4_combout\);

-- Location: LCCOMB_X13_Y10_N16
\inst|alu1|Mux1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux1~6_combout\ = (\inst|alu1|Mux1~7_combout\) # ((\inst|alu1|Mux1~4_combout\) # ((\inst|alu1|Mux1~5_combout\ & \inst|alu1|unidad_logica|salida\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux1~7_combout\,
	datab => \inst|alu1|Mux1~5_combout\,
	datac => \inst|alu1|Mux1~4_combout\,
	datad => \inst|alu1|unidad_logica|salida\(8),
	combout => \inst|alu1|Mux1~6_combout\);

-- Location: LCCOMB_X16_Y10_N30
\inst|reggy~210\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~210_combout\ = (!\inst|Equal0~0_combout\ & \inst|alu1|Mux1~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Equal0~0_combout\,
	datad => \inst|alu1|Mux1~6_combout\,
	combout => \inst|reggy~210_combout\);

-- Location: FF_X14_Y11_N5
\inst|reggy~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~210_combout\,
	sload => VCC,
	ena => \inst|reggy~201_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy~22_q\);

-- Location: LCCOMB_X16_Y10_N8
\inst|reggy~186\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~186_combout\ = (\inst|MAR\(4) & (((\inst|reggy~32_q\) # (\inst|MAR\(5))))) # (!\inst|MAR\(4) & (\inst|reggy~22_q\ & ((!\inst|MAR\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MAR\(4),
	datab => \inst|reggy~22_q\,
	datac => \inst|reggy~32_q\,
	datad => \inst|MAR\(5),
	combout => \inst|reggy~186_combout\);

-- Location: LCCOMB_X14_Y11_N14
\inst|reggy~187\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~187_combout\ = (\inst|reggy~186_combout\ & ((\inst|reggy~52_q\) # ((!\inst|MAR\(5))))) # (!\inst|reggy~186_combout\ & (((\inst|MAR\(5) & \inst|reggy~42_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy~186_combout\,
	datab => \inst|reggy~52_q\,
	datac => \inst|MAR\(5),
	datad => \inst|reggy~42_q\,
	combout => \inst|reggy~187_combout\);

-- Location: LCCOMB_X11_Y12_N16
\inst|reggy~184\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~184_combout\ = (\inst|MAR\(5) & ((\inst|MAR\(4)) # ((\inst|reggy~82_q\)))) # (!\inst|MAR\(5) & (!\inst|MAR\(4) & ((\inst|reggy~62_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MAR\(5),
	datab => \inst|MAR\(4),
	datac => \inst|reggy~82_q\,
	datad => \inst|reggy~62_q\,
	combout => \inst|reggy~184_combout\);

-- Location: LCCOMB_X12_Y12_N12
\inst|reggy~185\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~185_combout\ = (\inst|reggy~184_combout\ & ((\inst|reggy~92_q\) # ((!\inst|MAR\(4))))) # (!\inst|reggy~184_combout\ & (((\inst|reggy~72_q\ & \inst|MAR\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy~184_combout\,
	datab => \inst|reggy~92_q\,
	datac => \inst|reggy~72_q\,
	datad => \inst|MAR\(4),
	combout => \inst|reggy~185_combout\);

-- Location: LCCOMB_X13_Y13_N24
\inst|reggy~188\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~188_combout\ = (\inst|MAR\(6) & ((\inst|reggy~185_combout\))) # (!\inst|MAR\(6) & (\inst|reggy~187_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy~187_combout\,
	datac => \inst|MAR\(6),
	datad => \inst|reggy~185_combout\,
	combout => \inst|reggy~188_combout\);

-- Location: FF_X13_Y13_N25
\inst|REG_A[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|reggy~188_combout\,
	ena => \inst|s_p1[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|REG_A\(8));

-- Location: FF_X14_Y10_N27
\inst|alu1|barrel_shifters|aux[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|REG_A\(8),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|barrel_shifters|aux\(9));

-- Location: FF_X14_Y10_N29
\inst|alu1|barrel_shifters|salShifters[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|alu1|barrel_shifters|aux\(9),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|barrel_shifters|salShifters\(9));

-- Location: LCCOMB_X11_Y13_N20
\inst|alu1|unidad_logica|aux[9]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|aux[9]~26_combout\ = \inst|alu1|unidad_logica|aux[8]~25\ $ (\inst|REG_A\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|REG_A\(9),
	cin => \inst|alu1|unidad_logica|aux[8]~25\,
	combout => \inst|alu1|unidad_logica|aux[9]~26_combout\);

-- Location: FF_X11_Y13_N21
\inst|alu1|unidad_logica|aux[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|alu1|unidad_logica|aux[9]~26_combout\,
	ena => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|unidad_logica|aux\(9));

-- Location: LCCOMB_X13_Y15_N14
\inst|alu1|unidad_logica|salida~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|salida~28_combout\ = (\inst|alu1|Mux10~0_combout\ & ((\inst|alu1|unidad_logica|aux\(9)) # ((!\inst|alu1|Mux11~0_combout\)))) # (!\inst|alu1|Mux10~0_combout\ & (((\inst|alu1|unidad_logica|salida~4_combout\ & 
-- !\inst|alu1|Mux11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_logica|aux\(9),
	datab => \inst|alu1|unidad_logica|salida~4_combout\,
	datac => \inst|alu1|Mux10~0_combout\,
	datad => \inst|alu1|Mux11~0_combout\,
	combout => \inst|alu1|unidad_logica|salida~28_combout\);

-- Location: LCCOMB_X14_Y14_N26
\inst|alu1|unidad_logica|salida~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|salida~29_combout\ = (\inst|alu1|unidad_logica|salida~28_combout\ & (((!\inst|alu1|unidad_logica|salida[0]~30_combout\) # (!\inst|REG_A\(9))))) # (!\inst|alu1|unidad_logica|salida~28_combout\ & 
-- (\inst|alu1|unidad_logica|salida[0]~30_combout\ & ((\inst|REG_B\(9)) # (\inst|REG_A\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(9),
	datab => \inst|alu1|unidad_logica|salida~28_combout\,
	datac => \inst|REG_A\(9),
	datad => \inst|alu1|unidad_logica|salida[0]~30_combout\,
	combout => \inst|alu1|unidad_logica|salida~29_combout\);

-- Location: FF_X14_Y14_N27
\inst|alu1|unidad_logica|salida[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|alu1|unidad_logica|salida~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|unidad_logica|salida\(9));

-- Location: LCCOMB_X14_Y10_N28
\inst|salida[9]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|salida[9]~0_combout\ = (\inst|OP\(1) & (!\inst|OP\(0) & (\inst|alu1|barrel_shifters|salShifters\(9)))) # (!\inst|OP\(1) & ((\inst|OP\(0) & (\inst|alu1|barrel_shifters|salShifters\(9))) # (!\inst|OP\(0) & ((\inst|alu1|unidad_logica|salida\(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|OP\(1),
	datab => \inst|OP\(0),
	datac => \inst|alu1|barrel_shifters|salShifters\(9),
	datad => \inst|alu1|unidad_logica|salida\(9),
	combout => \inst|salida[9]~0_combout\);

-- Location: LCCOMB_X14_Y10_N26
\inst|alu1|Mux2~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux2~11_combout\ = (\inst|OP\(1) & \inst|OP\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|OP\(1),
	datad => \inst|OP\(0),
	combout => \inst|alu1|Mux2~11_combout\);

-- Location: LCCOMB_X14_Y10_N6
\inst|salida[9]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|salida[9]~1_combout\ = (\inst|OP\(2) & ((\inst|salida[9]~0_combout\) # ((\inst|OP\(3))))) # (!\inst|OP\(2) & (((\inst|OP\(3) & \inst|alu1|Mux2~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|OP\(2),
	datab => \inst|salida[9]~0_combout\,
	datac => \inst|OP\(3),
	datad => \inst|alu1|Mux2~11_combout\,
	combout => \inst|salida[9]~1_combout\);

-- Location: LCCOMB_X14_Y10_N12
\inst|salida[9]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|salida[9]~2_combout\ = (\inst|salida[9]~1_combout\) # ((\inst|alu1|Mux1~5_combout\ & \inst|alu1|unidad_logica|salida\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|salida[9]~1_combout\,
	datac => \inst|alu1|Mux1~5_combout\,
	datad => \inst|alu1|unidad_logica|salida\(9),
	combout => \inst|salida[9]~2_combout\);

-- Location: LCCOMB_X16_Y10_N28
\inst|salida[9]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|salida[9]~3_combout\ = (\ecuacion[1]~input_o\ & \ecuacion[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ecuacion[1]~input_o\,
	datad => \ecuacion[0]~input_o\,
	combout => \inst|salida[9]~3_combout\);

-- Location: LCCOMB_X17_Y12_N26
\inst|salida[9]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|salida[9]~4_combout\ = (\rst~input_o\ & ((\inst|pr_state.state0~q\ & (\inst|pr_state.state2~q\)) # (!\inst|pr_state.state0~q\ & ((\inst|salida[9]~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \inst|pr_state.state2~q\,
	datac => \inst|salida[9]~3_combout\,
	datad => \inst|pr_state.state0~q\,
	combout => \inst|salida[9]~4_combout\);

-- Location: LCCOMB_X17_Y8_N20
\inst|salida[9]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|salida[9]~5_combout\ = (\inst|salida[9]~4_combout\ & (\inst|salida[9]~2_combout\ & (\inst|pr_state.state0~q\))) # (!\inst|salida[9]~4_combout\ & (((\inst|salida\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|salida[9]~2_combout\,
	datab => \inst|pr_state.state0~q\,
	datac => \inst|salida\(9),
	datad => \inst|salida[9]~4_combout\,
	combout => \inst|salida[9]~5_combout\);

-- Location: FF_X17_Y8_N21
\inst|salida[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|salida[9]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|salida\(9));

-- Location: LCCOMB_X14_Y8_N4
\inst|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector3~0_combout\ = (\inst|alu1|Mux1~6_combout\ & \inst|pr_state.state2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|alu1|Mux1~6_combout\,
	datad => \inst|pr_state.state2~q\,
	combout => \inst|Selector3~0_combout\);

-- Location: LCCOMB_X17_Y12_N16
\inst|salida[8]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|salida[8]~6_combout\ = (\rst~input_o\ & (!\inst|pr_state.state1~q\ & ((\inst|salida[9]~3_combout\) # (\inst|pr_state.state0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \inst|salida[9]~3_combout\,
	datac => \inst|pr_state.state1~q\,
	datad => \inst|pr_state.state0~q\,
	combout => \inst|salida[8]~6_combout\);

-- Location: FF_X14_Y8_N5
\inst|salida[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Selector3~0_combout\,
	ena => \inst|salida[8]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|salida\(8));

-- Location: LCCOMB_X14_Y8_N16
\inst|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector4~0_combout\ = (\inst|pr_state.state2~q\ & ((\inst|alu1|Mux2~10_combout\) # (\inst|alu1|Mux2~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|pr_state.state2~q\,
	datac => \inst|alu1|Mux2~10_combout\,
	datad => \inst|alu1|Mux2~9_combout\,
	combout => \inst|Selector4~0_combout\);

-- Location: FF_X14_Y8_N17
\inst|salida[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Selector4~0_combout\,
	ena => \inst|salida[8]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|salida\(7));

-- Location: LCCOMB_X14_Y8_N8
\inst|Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector7~0_combout\ = (\inst|pr_state.state2~q\ & ((\inst|alu1|Mux2~10_combout\) # (\inst|alu1|Mux5~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|pr_state.state2~q\,
	datac => \inst|alu1|Mux2~10_combout\,
	datad => \inst|alu1|Mux5~3_combout\,
	combout => \inst|Selector7~0_combout\);

-- Location: FF_X14_Y8_N9
\inst|salida[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Selector7~0_combout\,
	ena => \inst|salida[8]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|salida\(4));

-- Location: LCCOMB_X14_Y8_N24
\inst|Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector8~0_combout\ = (\inst|pr_state.state2~q\ & ((\inst|alu1|Mux2~10_combout\) # (\inst|alu1|Mux6~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|Mux2~10_combout\,
	datac => \inst|alu1|Mux6~3_combout\,
	datad => \inst|pr_state.state2~q\,
	combout => \inst|Selector8~0_combout\);

-- Location: FF_X14_Y8_N25
\inst|salida[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Selector8~0_combout\,
	ena => \inst|salida[8]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|salida\(3));

-- Location: LCCOMB_X17_Y8_N12
\inst1|binary_next~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|binary_next~0_combout\ = (\inst1|binary\(0) & \inst1|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|binary\(0),
	datad => \inst1|Equal0~0_combout\,
	combout => \inst1|binary_next~0_combout\);

-- Location: LCCOMB_X16_Y10_N18
\inst|Selector11~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector11~3_combout\ = (\inst|alu1|Mux2~10_combout\) # ((\inst|alu1|Mux9~0_combout\ & \inst|alu1|unidad_logica|salida\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux9~0_combout\,
	datab => \inst|alu1|unidad_logica|salida\(0),
	datac => \inst|alu1|Mux2~10_combout\,
	combout => \inst|Selector11~3_combout\);

-- Location: LCCOMB_X16_Y11_N28
\inst|Selector11~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector11~2_combout\ = (\inst|pr_state.state2~q\ & ((\inst|Selector11~3_combout\) # ((\inst|alu1|Mux9~1_combout\ & \inst|alu1|unidad_aritmetica|Mux9~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux9~1_combout\,
	datab => \inst|Selector11~3_combout\,
	datac => \inst|pr_state.state2~q\,
	datad => \inst|alu1|unidad_aritmetica|Mux9~4_combout\,
	combout => \inst|Selector11~2_combout\);

-- Location: FF_X16_Y11_N29
\inst|salida[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Selector11~2_combout\,
	ena => \inst|salida[8]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|salida\(0));

-- Location: LCCOMB_X17_Y8_N8
\inst1|binary[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|binary[0]~0_combout\ = (\inst1|state.shift~q\ & (\inst1|binary_next~0_combout\)) # (!\inst1|state.shift~q\ & ((\inst|salida\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|binary_next~0_combout\,
	datab => \inst|salida\(0),
	datad => \inst1|state.shift~q\,
	combout => \inst1|binary[0]~0_combout\);

-- Location: FF_X17_Y8_N9
\inst1|binary[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|binary[0]~0_combout\,
	asdata => \inst1|binary\(0),
	clrn => \rst~input_o\,
	sload => \inst1|state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|binary\(0));

-- Location: LCCOMB_X16_Y12_N14
\inst|Selector10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector10~0_combout\ = (\inst|pr_state.state2~q\ & ((\inst|alu1|Mux2~10_combout\) # (\inst|alu1|Mux8~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux2~10_combout\,
	datac => \inst|pr_state.state2~q\,
	datad => \inst|alu1|Mux8~3_combout\,
	combout => \inst|Selector10~0_combout\);

-- Location: FF_X16_Y12_N15
\inst|salida[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Selector10~0_combout\,
	ena => \inst|salida[8]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|salida\(1));

-- Location: LCCOMB_X17_Y8_N14
\inst1|Selector10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector10~0_combout\ = (\inst1|state.shift~q\ & (\inst1|binary\(0))) # (!\inst1|state.shift~q\ & ((\inst|salida\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|state.shift~q\,
	datac => \inst1|binary\(0),
	datad => \inst|salida\(1),
	combout => \inst1|Selector10~0_combout\);

-- Location: LCCOMB_X17_Y8_N24
\inst1|binary[7]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|binary[7]~1_combout\ = (!\inst1|state.done~q\ & ((!\inst1|state.shift~q\) # (!\inst1|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal0~0_combout\,
	datab => \inst1|state.shift~q\,
	datad => \inst1|state.done~q\,
	combout => \inst1|binary[7]~1_combout\);

-- Location: FF_X14_Y8_N13
\inst1|binary[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \inst1|Selector10~0_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \inst1|binary[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|binary\(1));

-- Location: LCCOMB_X14_Y8_N10
\inst|Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector9~0_combout\ = (\inst|pr_state.state2~q\ & ((\inst|alu1|Mux2~10_combout\) # (\inst|alu1|Mux7~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|pr_state.state2~q\,
	datac => \inst|alu1|Mux2~10_combout\,
	datad => \inst|alu1|Mux7~3_combout\,
	combout => \inst|Selector9~0_combout\);

-- Location: FF_X14_Y8_N11
\inst|salida[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Selector9~0_combout\,
	ena => \inst|salida[8]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|salida\(2));

-- Location: LCCOMB_X14_Y8_N2
\inst1|Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector9~0_combout\ = (\inst1|state.shift~q\ & (\inst1|binary\(1))) # (!\inst1|state.shift~q\ & ((\inst|salida\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|binary\(1),
	datac => \inst1|state.shift~q\,
	datad => \inst|salida\(2),
	combout => \inst1|Selector9~0_combout\);

-- Location: FF_X14_Y8_N3
\inst1|binary[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|Selector9~0_combout\,
	clrn => \rst~input_o\,
	ena => \inst1|binary[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|binary\(2));

-- Location: LCCOMB_X14_Y8_N6
\inst1|Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector8~0_combout\ = (\inst1|state.shift~q\ & ((\inst1|binary\(2)))) # (!\inst1|state.shift~q\ & (\inst|salida\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|salida\(3),
	datac => \inst1|state.shift~q\,
	datad => \inst1|binary\(2),
	combout => \inst1|Selector8~0_combout\);

-- Location: FF_X14_Y8_N7
\inst1|binary[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|Selector8~0_combout\,
	clrn => \rst~input_o\,
	ena => \inst1|binary[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|binary\(3));

-- Location: LCCOMB_X14_Y8_N30
\inst1|Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector7~0_combout\ = (\inst1|state.shift~q\ & ((\inst1|binary\(3)))) # (!\inst1|state.shift~q\ & (\inst|salida\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|salida\(4),
	datac => \inst1|state.shift~q\,
	datad => \inst1|binary\(3),
	combout => \inst1|Selector7~0_combout\);

-- Location: FF_X14_Y8_N31
\inst1|binary[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|Selector7~0_combout\,
	clrn => \rst~input_o\,
	ena => \inst1|binary[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|binary\(4));

-- Location: LCCOMB_X14_Y8_N20
\inst|Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector6~0_combout\ = (\inst|pr_state.state2~q\ & ((\inst|alu1|Mux2~10_combout\) # (\inst|alu1|Mux4~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|Mux2~10_combout\,
	datac => \inst|alu1|Mux4~3_combout\,
	datad => \inst|pr_state.state2~q\,
	combout => \inst|Selector6~0_combout\);

-- Location: FF_X14_Y8_N21
\inst|salida[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Selector6~0_combout\,
	ena => \inst|salida[8]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|salida\(5));

-- Location: LCCOMB_X14_Y8_N22
\inst1|Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector6~0_combout\ = (\inst1|state.shift~q\ & (\inst1|binary\(4))) # (!\inst1|state.shift~q\ & ((\inst|salida\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|binary\(4),
	datab => \inst|salida\(5),
	datac => \inst1|state.shift~q\,
	combout => \inst1|Selector6~0_combout\);

-- Location: FF_X14_Y8_N23
\inst1|binary[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|Selector6~0_combout\,
	clrn => \rst~input_o\,
	ena => \inst1|binary[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|binary\(5));

-- Location: LCCOMB_X14_Y8_N0
\inst|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector5~0_combout\ = (\inst|pr_state.state2~q\ & ((\inst|alu1|Mux2~10_combout\) # (\inst|alu1|Mux3~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|pr_state.state2~q\,
	datac => \inst|alu1|Mux2~10_combout\,
	datad => \inst|alu1|Mux3~3_combout\,
	combout => \inst|Selector5~0_combout\);

-- Location: FF_X14_Y8_N1
\inst|salida[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Selector5~0_combout\,
	ena => \inst|salida[8]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|salida\(6));

-- Location: LCCOMB_X14_Y8_N14
\inst1|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector5~0_combout\ = (\inst1|state.shift~q\ & (\inst1|binary\(5))) # (!\inst1|state.shift~q\ & ((\inst|salida\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|binary\(5),
	datab => \inst|salida\(6),
	datac => \inst1|state.shift~q\,
	combout => \inst1|Selector5~0_combout\);

-- Location: FF_X14_Y8_N15
\inst1|binary[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|Selector5~0_combout\,
	clrn => \rst~input_o\,
	ena => \inst1|binary[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|binary\(6));

-- Location: LCCOMB_X14_Y8_N18
\inst1|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector4~0_combout\ = (\inst1|state.shift~q\ & ((\inst1|binary\(6)))) # (!\inst1|state.shift~q\ & (\inst|salida\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|state.shift~q\,
	datab => \inst|salida\(7),
	datac => \inst1|binary\(6),
	combout => \inst1|Selector4~0_combout\);

-- Location: FF_X14_Y8_N19
\inst1|binary[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|Selector4~0_combout\,
	clrn => \rst~input_o\,
	ena => \inst1|binary[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|binary\(7));

-- Location: LCCOMB_X14_Y8_N28
\inst1|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector3~0_combout\ = (\inst1|state.shift~q\ & ((\inst1|binary\(7)))) # (!\inst1|state.shift~q\ & (\inst|salida\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|salida\(8),
	datac => \inst1|state.shift~q\,
	datad => \inst1|binary\(7),
	combout => \inst1|Selector3~0_combout\);

-- Location: FF_X14_Y8_N29
\inst1|binary[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|Selector3~0_combout\,
	clrn => \rst~input_o\,
	ena => \inst1|binary[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|binary\(8));

-- Location: LCCOMB_X14_Y8_N26
\inst1|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector2~0_combout\ = (\inst1|state.shift~q\ & ((\inst1|binary\(8)))) # (!\inst1|state.shift~q\ & (\inst|salida\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|state.shift~q\,
	datac => \inst|salida\(9),
	datad => \inst1|binary\(8),
	combout => \inst1|Selector2~0_combout\);

-- Location: FF_X14_Y8_N27
\inst1|binary[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|Selector2~0_combout\,
	clrn => \rst~input_o\,
	ena => \inst1|binary[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|binary\(9));

-- Location: LCCOMB_X18_Y5_N14
\inst1|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector1~0_combout\ = (!\inst1|Equal0~0_combout\ & \inst1|state.shift~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Equal0~0_combout\,
	datad => \inst1|state.shift~q\,
	combout => \inst1|Selector1~0_combout\);

-- Location: LCCOMB_X18_Y5_N28
\inst1|Selector27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector27~0_combout\ = (\inst1|binary\(9) & ((\inst1|Selector1~0_combout\) # ((\inst1|bcds\(0) & !\inst1|binary[7]~1_combout\)))) # (!\inst1|binary\(9) & (((\inst1|bcds\(0) & !\inst1|binary[7]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|binary\(9),
	datab => \inst1|Selector1~0_combout\,
	datac => \inst1|bcds\(0),
	datad => \inst1|binary[7]~1_combout\,
	combout => \inst1|Selector27~0_combout\);

-- Location: FF_X18_Y5_N29
\inst1|bcds[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|Selector27~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|bcds\(0));

-- Location: LCCOMB_X18_Y5_N26
\inst1|Selector25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector25~0_combout\ = (\inst1|bcds\(1) & ((\inst1|bcds\(0)) # ((!\inst1|bcds\(3) & !\inst1|bcds\(2))))) # (!\inst1|bcds\(1) & (!\inst1|bcds\(0) & (\inst1|bcds\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100010011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|bcds\(1),
	datab => \inst1|bcds\(0),
	datac => \inst1|bcds\(3),
	datad => \inst1|bcds\(2),
	combout => \inst1|Selector25~0_combout\);

-- Location: LCCOMB_X18_Y5_N0
\inst1|Selector25~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector25~1_combout\ = (\inst1|Selector25~0_combout\ & ((\inst1|Selector1~0_combout\) # ((\inst1|bcds\(2) & !\inst1|binary[7]~1_combout\)))) # (!\inst1|Selector25~0_combout\ & (((\inst1|bcds\(2) & !\inst1|binary[7]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Selector25~0_combout\,
	datab => \inst1|Selector1~0_combout\,
	datac => \inst1|bcds\(2),
	datad => \inst1|binary[7]~1_combout\,
	combout => \inst1|Selector25~1_combout\);

-- Location: FF_X18_Y5_N1
\inst1|bcds[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|Selector25~1_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|bcds\(2));

-- Location: LCCOMB_X18_Y5_N20
\inst1|Selector24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector24~0_combout\ = (\inst1|bcds\(2) & (!\inst1|bcds\(1) & (!\inst1|bcds\(0)))) # (!\inst1|bcds\(2) & (\inst1|bcds\(3) & ((\inst1|bcds\(1)) # (\inst1|bcds\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|bcds\(1),
	datab => \inst1|bcds\(0),
	datac => \inst1|bcds\(3),
	datad => \inst1|bcds\(2),
	combout => \inst1|Selector24~0_combout\);

-- Location: LCCOMB_X18_Y5_N22
\inst1|Selector24~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector24~1_combout\ = (\inst1|binary[7]~1_combout\ & (\inst1|Selector1~0_combout\ & ((\inst1|Selector24~0_combout\)))) # (!\inst1|binary[7]~1_combout\ & ((\inst1|bcds\(3)) # ((\inst1|Selector1~0_combout\ & \inst1|Selector24~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|binary[7]~1_combout\,
	datab => \inst1|Selector1~0_combout\,
	datac => \inst1|bcds\(3),
	datad => \inst1|Selector24~0_combout\,
	combout => \inst1|Selector24~1_combout\);

-- Location: FF_X18_Y5_N23
\inst1|bcds[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|Selector24~1_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|bcds\(3));

-- Location: LCCOMB_X18_Y5_N12
\inst1|bcds_next~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|bcds_next~3_combout\ = (\inst1|bcds\(0) & (((!\inst1|bcds\(3) & !\inst1|bcds\(2))))) # (!\inst1|bcds\(0) & ((\inst1|bcds\(3)) # ((\inst1|bcds\(1) & \inst1|bcds\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|bcds\(1),
	datab => \inst1|bcds\(0),
	datac => \inst1|bcds\(3),
	datad => \inst1|bcds\(2),
	combout => \inst1|bcds_next~3_combout\);

-- Location: LCCOMB_X18_Y5_N10
\inst1|Selector26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector26~0_combout\ = (\inst1|bcds_next~3_combout\ & ((\inst1|Selector1~0_combout\) # ((\inst1|bcds\(1) & !\inst1|binary[7]~1_combout\)))) # (!\inst1|bcds_next~3_combout\ & (((\inst1|bcds\(1) & !\inst1|binary[7]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|bcds_next~3_combout\,
	datab => \inst1|Selector1~0_combout\,
	datac => \inst1|bcds\(1),
	datad => \inst1|binary[7]~1_combout\,
	combout => \inst1|Selector26~0_combout\);

-- Location: FF_X18_Y5_N11
\inst1|bcds[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|Selector26~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|bcds\(1));

-- Location: FF_X19_Y4_N11
\inst1|bcds_out_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \inst1|bcds\(1),
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \inst1|state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|bcds_out_reg\(1));

-- Location: LCCOMB_X18_Y5_N6
\inst1|Selector23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector23~0_combout\ = \inst1|bcds\(3) $ (((\inst1|bcds\(2) & ((\inst1|bcds\(1)) # (\inst1|bcds\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|bcds\(1),
	datab => \inst1|bcds\(0),
	datac => \inst1|bcds\(3),
	datad => \inst1|bcds\(2),
	combout => \inst1|Selector23~0_combout\);

-- Location: LCCOMB_X21_Y5_N22
\inst1|Selector23~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector23~1_combout\ = (\inst1|Selector23~0_combout\ & ((\inst1|Selector1~0_combout\) # ((\inst1|bcds\(4) & !\inst1|binary[7]~1_combout\)))) # (!\inst1|Selector23~0_combout\ & (((\inst1|bcds\(4) & !\inst1|binary[7]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Selector23~0_combout\,
	datab => \inst1|Selector1~0_combout\,
	datac => \inst1|bcds\(4),
	datad => \inst1|binary[7]~1_combout\,
	combout => \inst1|Selector23~1_combout\);

-- Location: FF_X21_Y5_N23
\inst1|bcds[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|Selector23~1_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|bcds\(4));

-- Location: LCCOMB_X21_Y5_N10
\inst1|bcds_next~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|bcds_next~2_combout\ = (\inst1|bcds\(4) & (!\inst1|bcds\(7) & (!\inst1|bcds\(6)))) # (!\inst1|bcds\(4) & ((\inst1|bcds\(7)) # ((\inst1|bcds\(6) & \inst1|bcds\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|bcds\(4),
	datab => \inst1|bcds\(7),
	datac => \inst1|bcds\(6),
	datad => \inst1|bcds\(5),
	combout => \inst1|bcds_next~2_combout\);

-- Location: LCCOMB_X21_Y5_N28
\inst1|Selector22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector22~0_combout\ = (\inst1|bcds_next~2_combout\ & ((\inst1|Selector1~0_combout\) # ((\inst1|bcds\(5) & !\inst1|binary[7]~1_combout\)))) # (!\inst1|bcds_next~2_combout\ & (((\inst1|bcds\(5) & !\inst1|binary[7]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|bcds_next~2_combout\,
	datab => \inst1|Selector1~0_combout\,
	datac => \inst1|bcds\(5),
	datad => \inst1|binary[7]~1_combout\,
	combout => \inst1|Selector22~0_combout\);

-- Location: FF_X21_Y5_N29
\inst1|bcds[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|Selector22~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|bcds\(5));

-- Location: LCCOMB_X21_Y5_N24
\inst1|Selector21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector21~0_combout\ = (\inst1|bcds\(4) & (((\inst1|bcds\(5))))) # (!\inst1|bcds\(4) & ((\inst1|bcds\(7) & ((!\inst1|bcds\(5)))) # (!\inst1|bcds\(7) & (!\inst1|bcds\(6) & \inst1|bcds\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|bcds\(4),
	datab => \inst1|bcds\(7),
	datac => \inst1|bcds\(6),
	datad => \inst1|bcds\(5),
	combout => \inst1|Selector21~0_combout\);

-- Location: LCCOMB_X21_Y5_N26
\inst1|Selector21~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector21~1_combout\ = (\inst1|Selector21~0_combout\ & ((\inst1|Selector1~0_combout\) # ((\inst1|bcds\(6) & !\inst1|binary[7]~1_combout\)))) # (!\inst1|Selector21~0_combout\ & (((\inst1|bcds\(6) & !\inst1|binary[7]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Selector21~0_combout\,
	datab => \inst1|Selector1~0_combout\,
	datac => \inst1|bcds\(6),
	datad => \inst1|binary[7]~1_combout\,
	combout => \inst1|Selector21~1_combout\);

-- Location: FF_X21_Y5_N27
\inst1|bcds[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|Selector21~1_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|bcds\(6));

-- Location: LCCOMB_X21_Y5_N2
\inst1|Selector20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector20~0_combout\ = (\inst1|bcds\(6) & (!\inst1|bcds\(4) & ((!\inst1|bcds\(5))))) # (!\inst1|bcds\(6) & (\inst1|bcds\(7) & ((\inst1|bcds\(4)) # (\inst1|bcds\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|bcds\(4),
	datab => \inst1|bcds\(7),
	datac => \inst1|bcds\(6),
	datad => \inst1|bcds\(5),
	combout => \inst1|Selector20~0_combout\);

-- Location: LCCOMB_X21_Y5_N16
\inst1|Selector20~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector20~1_combout\ = (\inst1|Selector20~0_combout\ & ((\inst1|Selector1~0_combout\) # ((\inst1|bcds\(7) & !\inst1|binary[7]~1_combout\)))) # (!\inst1|Selector20~0_combout\ & (((\inst1|bcds\(7) & !\inst1|binary[7]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Selector20~0_combout\,
	datab => \inst1|Selector1~0_combout\,
	datac => \inst1|bcds\(7),
	datad => \inst1|binary[7]~1_combout\,
	combout => \inst1|Selector20~1_combout\);

-- Location: FF_X21_Y5_N17
\inst1|bcds[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|Selector20~1_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|bcds\(7));

-- Location: LCCOMB_X21_Y5_N12
\inst1|Selector19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector19~0_combout\ = \inst1|bcds\(7) $ (((\inst1|bcds\(6) & ((\inst1|bcds\(4)) # (\inst1|bcds\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|bcds\(4),
	datab => \inst1|bcds\(7),
	datac => \inst1|bcds\(6),
	datad => \inst1|bcds\(5),
	combout => \inst1|Selector19~0_combout\);

-- Location: LCCOMB_X21_Y5_N6
\inst1|Selector19~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector19~1_combout\ = (\inst1|Selector19~0_combout\ & ((\inst1|Selector1~0_combout\) # ((\inst1|bcds\(8) & !\inst1|binary[7]~1_combout\)))) # (!\inst1|Selector19~0_combout\ & (((\inst1|bcds\(8) & !\inst1|binary[7]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Selector19~0_combout\,
	datab => \inst1|Selector1~0_combout\,
	datac => \inst1|bcds\(8),
	datad => \inst1|binary[7]~1_combout\,
	combout => \inst1|Selector19~1_combout\);

-- Location: FF_X21_Y5_N7
\inst1|bcds[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|Selector19~1_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|bcds\(8));

-- Location: LCCOMB_X19_Y5_N22
\inst1|Selector17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector17~0_combout\ = (\inst1|bcds\(8) & (\inst1|bcds\(9))) # (!\inst1|bcds\(8) & ((\inst1|bcds\(9) & (!\inst1|bcds\(11) & !\inst1|bcds\(10))) # (!\inst1|bcds\(9) & (\inst1|bcds\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|bcds\(8),
	datab => \inst1|bcds\(9),
	datac => \inst1|bcds\(11),
	datad => \inst1|bcds\(10),
	combout => \inst1|Selector17~0_combout\);

-- Location: LCCOMB_X19_Y5_N16
\inst1|Selector17~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector17~1_combout\ = (\inst1|binary[7]~1_combout\ & (\inst1|Selector17~0_combout\ & ((\inst1|Selector1~0_combout\)))) # (!\inst1|binary[7]~1_combout\ & ((\inst1|bcds\(10)) # ((\inst1|Selector17~0_combout\ & \inst1|Selector1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|binary[7]~1_combout\,
	datab => \inst1|Selector17~0_combout\,
	datac => \inst1|bcds\(10),
	datad => \inst1|Selector1~0_combout\,
	combout => \inst1|Selector17~1_combout\);

-- Location: FF_X19_Y5_N17
\inst1|bcds[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|Selector17~1_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|bcds\(10));

-- Location: LCCOMB_X19_Y5_N12
\inst1|Selector16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector16~0_combout\ = (\inst1|bcds\(10) & (!\inst1|bcds\(8) & (!\inst1|bcds\(9)))) # (!\inst1|bcds\(10) & (\inst1|bcds\(11) & ((\inst1|bcds\(8)) # (\inst1|bcds\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|bcds\(8),
	datab => \inst1|bcds\(9),
	datac => \inst1|bcds\(11),
	datad => \inst1|bcds\(10),
	combout => \inst1|Selector16~0_combout\);

-- Location: LCCOMB_X19_Y5_N28
\inst1|Selector16~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector16~1_combout\ = (\inst1|binary[7]~1_combout\ & (\inst1|Selector16~0_combout\ & ((\inst1|Selector1~0_combout\)))) # (!\inst1|binary[7]~1_combout\ & ((\inst1|bcds\(11)) # ((\inst1|Selector16~0_combout\ & \inst1|Selector1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|binary[7]~1_combout\,
	datab => \inst1|Selector16~0_combout\,
	datac => \inst1|bcds\(11),
	datad => \inst1|Selector1~0_combout\,
	combout => \inst1|Selector16~1_combout\);

-- Location: FF_X19_Y5_N29
\inst1|bcds[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|Selector16~1_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|bcds\(11));

-- Location: LCCOMB_X19_Y5_N8
\inst1|bcds_next~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|bcds_next~1_combout\ = (\inst1|bcds\(8) & (((!\inst1|bcds\(11) & !\inst1|bcds\(10))))) # (!\inst1|bcds\(8) & ((\inst1|bcds\(11)) # ((\inst1|bcds\(9) & \inst1|bcds\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|bcds\(8),
	datab => \inst1|bcds\(9),
	datac => \inst1|bcds\(11),
	datad => \inst1|bcds\(10),
	combout => \inst1|bcds_next~1_combout\);

-- Location: LCCOMB_X19_Y5_N0
\inst1|Selector18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector18~0_combout\ = (\inst1|binary[7]~1_combout\ & (\inst1|Selector1~0_combout\ & ((\inst1|bcds_next~1_combout\)))) # (!\inst1|binary[7]~1_combout\ & ((\inst1|bcds\(9)) # ((\inst1|Selector1~0_combout\ & \inst1|bcds_next~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|binary[7]~1_combout\,
	datab => \inst1|Selector1~0_combout\,
	datac => \inst1|bcds\(9),
	datad => \inst1|bcds_next~1_combout\,
	combout => \inst1|Selector18~0_combout\);

-- Location: FF_X19_Y5_N1
\inst1|bcds[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|Selector18~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|bcds\(9));

-- Location: LCCOMB_X19_Y5_N4
\inst1|bcds_out_reg[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|bcds_out_reg[9]~feeder_combout\ = \inst1|bcds\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|bcds\(9),
	combout => \inst1|bcds_out_reg[9]~feeder_combout\);

-- Location: FF_X19_Y5_N5
\inst1|bcds_out_reg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|bcds_out_reg[9]~feeder_combout\,
	clrn => \rst~input_o\,
	ena => \inst1|state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|bcds_out_reg\(9));

-- Location: LCCOMB_X21_Y5_N30
\inst1|bcds_out_reg[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|bcds_out_reg[5]~feeder_combout\ = \inst1|bcds\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|bcds\(5),
	combout => \inst1|bcds_out_reg[5]~feeder_combout\);

-- Location: FF_X21_Y5_N31
\inst1|bcds_out_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|bcds_out_reg[5]~feeder_combout\,
	clrn => \rst~input_o\,
	ena => \inst1|state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|bcds_out_reg\(5));

-- Location: LCCOMB_X19_Y5_N20
\inst1|Selector15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector15~0_combout\ = \inst1|bcds\(11) $ (((\inst1|bcds\(10) & ((\inst1|bcds\(8)) # (\inst1|bcds\(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|bcds\(8),
	datab => \inst1|bcds\(9),
	datac => \inst1|bcds\(11),
	datad => \inst1|bcds\(10),
	combout => \inst1|Selector15~0_combout\);

-- Location: LCCOMB_X19_Y5_N18
\inst1|Selector15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector15~1_combout\ = (\inst1|binary[7]~1_combout\ & (\inst1|Selector15~0_combout\ & ((\inst1|Selector1~0_combout\)))) # (!\inst1|binary[7]~1_combout\ & ((\inst1|bcds\(12)) # ((\inst1|Selector15~0_combout\ & \inst1|Selector1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|binary[7]~1_combout\,
	datab => \inst1|Selector15~0_combout\,
	datac => \inst1|bcds\(12),
	datad => \inst1|Selector1~0_combout\,
	combout => \inst1|Selector15~1_combout\);

-- Location: FF_X19_Y5_N19
\inst1|bcds[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|Selector15~1_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|bcds\(12));

-- Location: LCCOMB_X19_Y5_N10
\inst1|Selector13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector13~0_combout\ = (\inst1|bcds\(13) & ((\inst1|bcds\(12)) # ((!\inst1|bcds\(15) & !\inst1|bcds\(14))))) # (!\inst1|bcds\(13) & (!\inst1|bcds\(12) & (\inst1|bcds\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100010011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|bcds\(13),
	datab => \inst1|bcds\(12),
	datac => \inst1|bcds\(15),
	datad => \inst1|bcds\(14),
	combout => \inst1|Selector13~0_combout\);

-- Location: LCCOMB_X19_Y5_N6
\inst1|Selector13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector13~1_combout\ = (\inst1|binary[7]~1_combout\ & (\inst1|Selector1~0_combout\ & ((\inst1|Selector13~0_combout\)))) # (!\inst1|binary[7]~1_combout\ & ((\inst1|bcds\(14)) # ((\inst1|Selector1~0_combout\ & \inst1|Selector13~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|binary[7]~1_combout\,
	datab => \inst1|Selector1~0_combout\,
	datac => \inst1|bcds\(14),
	datad => \inst1|Selector13~0_combout\,
	combout => \inst1|Selector13~1_combout\);

-- Location: FF_X19_Y5_N7
\inst1|bcds[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|Selector13~1_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|bcds\(14));

-- Location: LCCOMB_X19_Y5_N26
\inst1|Selector12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector12~0_combout\ = (\inst1|bcds\(14) & (!\inst1|bcds\(12) & (\inst1|Selector1~0_combout\ & !\inst1|bcds\(13)))) # (!\inst1|bcds\(14) & ((\inst1|bcds\(12)) # ((\inst1|bcds\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|bcds\(14),
	datab => \inst1|bcds\(12),
	datac => \inst1|Selector1~0_combout\,
	datad => \inst1|bcds\(13),
	combout => \inst1|Selector12~0_combout\);

-- Location: LCCOMB_X18_Y5_N24
\inst1|Selector12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector12~1_combout\ = (\inst1|state.done~q\) # ((\inst1|state.shift~q\ & ((\inst1|Equal0~0_combout\) # (\inst1|Selector12~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|state.shift~q\,
	datab => \inst1|state.done~q\,
	datac => \inst1|Equal0~0_combout\,
	datad => \inst1|Selector12~0_combout\,
	combout => \inst1|Selector12~1_combout\);

-- Location: LCCOMB_X19_Y5_N30
\inst1|Selector12~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector12~2_combout\ = (\inst1|bcds\(14) & ((\inst1|Selector12~0_combout\) # ((\inst1|bcds\(15) & \inst1|Selector12~1_combout\)))) # (!\inst1|bcds\(14) & (((\inst1|bcds\(15) & \inst1|Selector12~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|bcds\(14),
	datab => \inst1|Selector12~0_combout\,
	datac => \inst1|bcds\(15),
	datad => \inst1|Selector12~1_combout\,
	combout => \inst1|Selector12~2_combout\);

-- Location: FF_X19_Y5_N31
\inst1|bcds[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|Selector12~2_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|bcds\(15));

-- Location: LCCOMB_X19_Y5_N2
\inst1|bcds_next~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|bcds_next~0_combout\ = (\inst1|bcds\(12) & (((!\inst1|bcds\(15) & !\inst1|bcds\(14))))) # (!\inst1|bcds\(12) & ((\inst1|bcds\(15)) # ((\inst1|bcds\(13) & \inst1|bcds\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|bcds\(13),
	datab => \inst1|bcds\(12),
	datac => \inst1|bcds\(15),
	datad => \inst1|bcds\(14),
	combout => \inst1|bcds_next~0_combout\);

-- Location: LCCOMB_X19_Y5_N14
\inst1|Selector14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector14~0_combout\ = (\inst1|binary[7]~1_combout\ & (\inst1|bcds_next~0_combout\ & ((\inst1|Selector1~0_combout\)))) # (!\inst1|binary[7]~1_combout\ & ((\inst1|bcds\(13)) # ((\inst1|bcds_next~0_combout\ & \inst1|Selector1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|binary[7]~1_combout\,
	datab => \inst1|bcds_next~0_combout\,
	datac => \inst1|bcds\(13),
	datad => \inst1|Selector1~0_combout\,
	combout => \inst1|Selector14~0_combout\);

-- Location: FF_X19_Y5_N15
\inst1|bcds[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|Selector14~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|bcds\(13));

-- Location: FF_X19_Y4_N19
\inst1|bcds_out_reg[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \inst1|bcds\(13),
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \inst1|state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|bcds_out_reg\(13));

-- Location: LCCOMB_X19_Y4_N18
\inst2|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux6~0_combout\ = (\inst2|contador\(0) & (((\inst2|contador\(1))))) # (!\inst2|contador\(0) & ((\inst2|contador\(1) & (\inst1|bcds_out_reg\(5))) # (!\inst2|contador\(1) & ((\inst1|bcds_out_reg\(13))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|contador\(0),
	datab => \inst1|bcds_out_reg\(5),
	datac => \inst1|bcds_out_reg\(13),
	datad => \inst2|contador\(1),
	combout => \inst2|Mux6~0_combout\);

-- Location: LCCOMB_X19_Y4_N30
\inst2|Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux6~1_combout\ = (\inst2|contador\(0) & ((\inst2|Mux6~0_combout\ & (\inst1|bcds_out_reg\(1))) # (!\inst2|Mux6~0_combout\ & ((\inst1|bcds_out_reg\(9)))))) # (!\inst2|contador\(0) & (((\inst2|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|bcds_out_reg\(1),
	datab => \inst2|contador\(0),
	datac => \inst1|bcds_out_reg\(9),
	datad => \inst2|Mux6~0_combout\,
	combout => \inst2|Mux6~1_combout\);

-- Location: FF_X19_Y4_N31
\inst2|tmp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|Mux6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|tmp\(1));

-- Location: FF_X21_Y5_N5
\inst1|bcds_out_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \inst1|bcds\(6),
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \inst1|state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|bcds_out_reg\(6));

-- Location: LCCOMB_X19_Y4_N4
\inst1|bcds_out_reg[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|bcds_out_reg[10]~feeder_combout\ = \inst1|bcds\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|bcds\(10),
	combout => \inst1|bcds_out_reg[10]~feeder_combout\);

-- Location: FF_X19_Y4_N5
\inst1|bcds_out_reg[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|bcds_out_reg[10]~feeder_combout\,
	clrn => \rst~input_o\,
	ena => \inst1|state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|bcds_out_reg\(10));

-- Location: FF_X19_Y4_N21
\inst1|bcds_out_reg[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \inst1|bcds\(14),
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \inst1|state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|bcds_out_reg\(14));

-- Location: LCCOMB_X19_Y4_N20
\inst2|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux5~0_combout\ = (\inst2|contador\(1) & (((\inst2|contador\(0))))) # (!\inst2|contador\(1) & ((\inst2|contador\(0) & (\inst1|bcds_out_reg\(10))) # (!\inst2|contador\(0) & ((\inst1|bcds_out_reg\(14))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|bcds_out_reg\(10),
	datab => \inst2|contador\(1),
	datac => \inst1|bcds_out_reg\(14),
	datad => \inst2|contador\(0),
	combout => \inst2|Mux5~0_combout\);

-- Location: LCCOMB_X18_Y5_N30
\inst1|bcds_out_reg[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|bcds_out_reg[2]~feeder_combout\ = \inst1|bcds\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|bcds\(2),
	combout => \inst1|bcds_out_reg[2]~feeder_combout\);

-- Location: FF_X18_Y5_N31
\inst1|bcds_out_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|bcds_out_reg[2]~feeder_combout\,
	clrn => \rst~input_o\,
	ena => \inst1|state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|bcds_out_reg\(2));

-- Location: LCCOMB_X19_Y4_N16
\inst2|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux5~1_combout\ = (\inst2|Mux5~0_combout\ & (((\inst1|bcds_out_reg\(2)) # (!\inst2|contador\(1))))) # (!\inst2|Mux5~0_combout\ & (\inst1|bcds_out_reg\(6) & ((\inst2|contador\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|bcds_out_reg\(6),
	datab => \inst2|Mux5~0_combout\,
	datac => \inst1|bcds_out_reg\(2),
	datad => \inst2|contador\(1),
	combout => \inst2|Mux5~1_combout\);

-- Location: FF_X19_Y4_N17
\inst2|tmp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|Mux5~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|tmp\(2));

-- Location: LCCOMB_X21_Y5_N18
\inst1|bcds_out_reg[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|bcds_out_reg[7]~feeder_combout\ = \inst1|bcds\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|bcds\(7),
	combout => \inst1|bcds_out_reg[7]~feeder_combout\);

-- Location: FF_X21_Y5_N19
\inst1|bcds_out_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|bcds_out_reg[7]~feeder_combout\,
	clrn => \rst~input_o\,
	ena => \inst1|state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|bcds_out_reg\(7));

-- Location: FF_X18_Y5_N5
\inst1|bcds_out_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \inst1|bcds\(3),
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \inst1|state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|bcds_out_reg\(3));

-- Location: FF_X19_Y4_N15
\inst1|bcds_out_reg[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \inst1|bcds\(11),
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \inst1|state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|bcds_out_reg\(11));

-- Location: FF_X19_Y5_N3
\inst1|bcds_out_reg[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \inst1|bcds\(15),
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \inst1|state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|bcds_out_reg\(15));

-- Location: LCCOMB_X19_Y4_N14
\inst2|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux4~0_combout\ = (\inst2|contador\(1) & (\inst2|contador\(0))) # (!\inst2|contador\(1) & ((\inst2|contador\(0) & (\inst1|bcds_out_reg\(11))) # (!\inst2|contador\(0) & ((\inst1|bcds_out_reg\(15))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|contador\(1),
	datab => \inst2|contador\(0),
	datac => \inst1|bcds_out_reg\(11),
	datad => \inst1|bcds_out_reg\(15),
	combout => \inst2|Mux4~0_combout\);

-- Location: LCCOMB_X19_Y4_N6
\inst2|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux4~1_combout\ = (\inst2|Mux4~0_combout\ & (((\inst1|bcds_out_reg\(3)) # (!\inst2|contador\(1))))) # (!\inst2|Mux4~0_combout\ & (\inst1|bcds_out_reg\(7) & ((\inst2|contador\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|bcds_out_reg\(7),
	datab => \inst1|bcds_out_reg\(3),
	datac => \inst2|Mux4~0_combout\,
	datad => \inst2|contador\(1),
	combout => \inst2|Mux4~1_combout\);

-- Location: FF_X19_Y4_N7
\inst2|tmp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|Mux4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|tmp\(3));

-- Location: LCCOMB_X19_Y5_N24
\inst1|bcds_out_reg[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|bcds_out_reg[0]~feeder_combout\ = \inst1|bcds\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|bcds\(0),
	combout => \inst1|bcds_out_reg[0]~feeder_combout\);

-- Location: FF_X19_Y5_N25
\inst1|bcds_out_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|bcds_out_reg[0]~feeder_combout\,
	clrn => \rst~input_o\,
	ena => \inst1|state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|bcds_out_reg\(0));

-- Location: FF_X21_Y5_N21
\inst1|bcds_out_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \inst1|bcds\(4),
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \inst1|state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|bcds_out_reg\(4));

-- Location: FF_X19_Y4_N1
\inst1|bcds_out_reg[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \inst1|bcds\(12),
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \inst1|state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|bcds_out_reg\(12));

-- Location: LCCOMB_X21_Y5_N8
\inst1|bcds_out_reg[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|bcds_out_reg[8]~feeder_combout\ = \inst1|bcds\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|bcds\(8),
	combout => \inst1|bcds_out_reg[8]~feeder_combout\);

-- Location: FF_X21_Y5_N9
\inst1|bcds_out_reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|bcds_out_reg[8]~feeder_combout\,
	clrn => \rst~input_o\,
	ena => \inst1|state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|bcds_out_reg\(8));

-- Location: LCCOMB_X19_Y4_N0
\inst2|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux7~0_combout\ = (\inst2|contador\(0) & ((\inst2|contador\(1)) # ((\inst1|bcds_out_reg\(8))))) # (!\inst2|contador\(0) & (!\inst2|contador\(1) & (\inst1|bcds_out_reg\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|contador\(0),
	datab => \inst2|contador\(1),
	datac => \inst1|bcds_out_reg\(12),
	datad => \inst1|bcds_out_reg\(8),
	combout => \inst2|Mux7~0_combout\);

-- Location: LCCOMB_X19_Y4_N8
\inst2|Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux7~1_combout\ = (\inst2|contador\(1) & ((\inst2|Mux7~0_combout\ & (\inst1|bcds_out_reg\(0))) # (!\inst2|Mux7~0_combout\ & ((\inst1|bcds_out_reg\(4)))))) # (!\inst2|contador\(1) & (((\inst2|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|bcds_out_reg\(0),
	datab => \inst2|contador\(1),
	datac => \inst1|bcds_out_reg\(4),
	datad => \inst2|Mux7~0_combout\,
	combout => \inst2|Mux7~1_combout\);

-- Location: FF_X19_Y4_N9
\inst2|tmp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|Mux7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|tmp\(0));

-- Location: LCCOMB_X8_Y4_N0
\inst2|Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux14~0_combout\ = (\inst2|tmp\(1) & (((\inst2|tmp\(3))))) # (!\inst2|tmp\(1) & (\inst2|tmp\(2) $ (((!\inst2|tmp\(3) & \inst2|tmp\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|tmp\(1),
	datab => \inst2|tmp\(2),
	datac => \inst2|tmp\(3),
	datad => \inst2|tmp\(0),
	combout => \inst2|Mux14~0_combout\);

-- Location: LCCOMB_X8_Y4_N22
\inst2|Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux13~0_combout\ = (\inst2|tmp\(2) & ((\inst2|tmp\(3)) # (\inst2|tmp\(1) $ (\inst2|tmp\(0))))) # (!\inst2|tmp\(2) & (\inst2|tmp\(1) & (\inst2|tmp\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|tmp\(1),
	datab => \inst2|tmp\(2),
	datac => \inst2|tmp\(3),
	datad => \inst2|tmp\(0),
	combout => \inst2|Mux13~0_combout\);

-- Location: LCCOMB_X8_Y4_N16
\inst2|Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux12~0_combout\ = (\inst2|tmp\(2) & (((\inst2|tmp\(3))))) # (!\inst2|tmp\(2) & (\inst2|tmp\(1) & ((\inst2|tmp\(3)) # (!\inst2|tmp\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|tmp\(1),
	datab => \inst2|tmp\(2),
	datac => \inst2|tmp\(3),
	datad => \inst2|tmp\(0),
	combout => \inst2|Mux12~0_combout\);

-- Location: LCCOMB_X8_Y4_N26
\inst2|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux11~0_combout\ = (\inst2|tmp\(1) & ((\inst2|tmp\(3)) # ((\inst2|tmp\(2) & \inst2|tmp\(0))))) # (!\inst2|tmp\(1) & (\inst2|tmp\(2) $ (((!\inst2|tmp\(3) & \inst2|tmp\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|tmp\(1),
	datab => \inst2|tmp\(2),
	datac => \inst2|tmp\(3),
	datad => \inst2|tmp\(0),
	combout => \inst2|Mux11~0_combout\);

-- Location: LCCOMB_X8_Y4_N4
\inst2|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux10~0_combout\ = (\inst2|tmp\(0)) # ((\inst2|tmp\(1) & ((\inst2|tmp\(3)))) # (!\inst2|tmp\(1) & (\inst2|tmp\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|tmp\(1),
	datab => \inst2|tmp\(2),
	datac => \inst2|tmp\(3),
	datad => \inst2|tmp\(0),
	combout => \inst2|Mux10~0_combout\);

-- Location: LCCOMB_X8_Y4_N14
\inst2|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux9~0_combout\ = (\inst2|tmp\(2) & ((\inst2|tmp\(3)) # ((\inst2|tmp\(1) & \inst2|tmp\(0))))) # (!\inst2|tmp\(2) & ((\inst2|tmp\(1)) # ((!\inst2|tmp\(3) & \inst2|tmp\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|tmp\(1),
	datab => \inst2|tmp\(2),
	datac => \inst2|tmp\(3),
	datad => \inst2|tmp\(0),
	combout => \inst2|Mux9~0_combout\);

-- Location: LCCOMB_X13_Y4_N28
\inst2|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux8~0_combout\ = (\inst2|tmp\(1) & (((!\inst2|tmp\(0)) # (!\inst2|tmp\(2))))) # (!\inst2|tmp\(1) & ((\inst2|tmp\(3)) # ((\inst2|tmp\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|tmp\(1),
	datab => \inst2|tmp\(3),
	datac => \inst2|tmp\(2),
	datad => \inst2|tmp\(0),
	combout => \inst2|Mux8~0_combout\);

-- Location: FF_X12_Y14_N25
\inst|s_p1[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|REG_A\(9),
	sload => VCC,
	ena => \inst|s_p1[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_p1\(9));

-- Location: FF_X12_Y14_N11
\inst|s_p1[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|REG_A\(8),
	sload => VCC,
	ena => \inst|s_p1[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_p1\(8));

-- Location: LCCOMB_X12_Y14_N28
\inst|s_p1[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_p1[7]~feeder_combout\ = \inst|REG_A\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|REG_A\(7),
	combout => \inst|s_p1[7]~feeder_combout\);

-- Location: FF_X12_Y14_N29
\inst|s_p1[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|s_p1[7]~feeder_combout\,
	ena => \inst|s_p1[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_p1\(7));

-- Location: LCCOMB_X11_Y13_N24
\inst|s_p1[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_p1[6]~feeder_combout\ = \inst|REG_A\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|REG_A\(6),
	combout => \inst|s_p1[6]~feeder_combout\);

-- Location: FF_X11_Y13_N25
\inst|s_p1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|s_p1[6]~feeder_combout\,
	ena => \inst|s_p1[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_p1\(6));

-- Location: FF_X13_Y13_N1
\inst|s_p1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|REG_A\(5),
	sload => VCC,
	ena => \inst|s_p1[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_p1\(5));

-- Location: FF_X12_Y9_N5
\inst|s_p1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|REG_A\(4),
	sload => VCC,
	ena => \inst|s_p1[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_p1\(4));

-- Location: FF_X11_Y13_N3
\inst|s_p1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|REG_A\(3),
	sload => VCC,
	ena => \inst|s_p1[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_p1\(3));

-- Location: FF_X18_Y10_N25
\inst|s_p1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|REG_A\(2),
	sload => VCC,
	ena => \inst|s_p1[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_p1\(2));

-- Location: LCCOMB_X11_Y13_N26
\inst|s_p1[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_p1[1]~feeder_combout\ = \inst|REG_A\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|REG_A\(1),
	combout => \inst|s_p1[1]~feeder_combout\);

-- Location: FF_X11_Y13_N27
\inst|s_p1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|s_p1[1]~feeder_combout\,
	ena => \inst|s_p1[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_p1\(1));

-- Location: LCCOMB_X12_Y13_N4
\inst|s_p1[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_p1[0]~feeder_combout\ = \inst|REG_A\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|REG_A\(0),
	combout => \inst|s_p1[0]~feeder_combout\);

-- Location: FF_X12_Y13_N5
\inst|s_p1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|s_p1[0]~feeder_combout\,
	ena => \inst|s_p1[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_p1\(0));

-- Location: FF_X16_Y14_N13
\inst|s_p2[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|REG_B\(9),
	sload => VCC,
	ena => \inst|s_p1[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_p2\(9));

-- Location: FF_X12_Y14_N19
\inst|s_p2[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|REG_B\(8),
	sload => VCC,
	ena => \inst|s_p1[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_p2\(8));

-- Location: LCCOMB_X14_Y13_N0
\inst|s_p2[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_p2[7]~feeder_combout\ = \inst|REG_B\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|REG_B\(7),
	combout => \inst|s_p2[7]~feeder_combout\);

-- Location: FF_X14_Y13_N1
\inst|s_p2[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|s_p2[7]~feeder_combout\,
	ena => \inst|s_p1[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_p2\(7));

-- Location: LCCOMB_X12_Y13_N2
\inst|s_p2[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_p2[6]~feeder_combout\ = \inst|REG_B\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|REG_B\(6),
	combout => \inst|s_p2[6]~feeder_combout\);

-- Location: FF_X12_Y13_N3
\inst|s_p2[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|s_p2[6]~feeder_combout\,
	ena => \inst|s_p1[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_p2\(6));

-- Location: FF_X17_Y9_N1
\inst|s_p2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|REG_B\(5),
	sload => VCC,
	ena => \inst|s_p1[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_p2\(5));

-- Location: LCCOMB_X11_Y13_N0
\inst|s_p2[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_p2[4]~feeder_combout\ = \inst|REG_B\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|REG_B\(4),
	combout => \inst|s_p2[4]~feeder_combout\);

-- Location: FF_X11_Y13_N1
\inst|s_p2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|s_p2[4]~feeder_combout\,
	ena => \inst|s_p1[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_p2\(4));

-- Location: LCCOMB_X11_Y13_N30
\inst|s_p2[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_p2[3]~feeder_combout\ = \inst|REG_B\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|REG_B\(3),
	combout => \inst|s_p2[3]~feeder_combout\);

-- Location: FF_X11_Y13_N31
\inst|s_p2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|s_p2[3]~feeder_combout\,
	ena => \inst|s_p1[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_p2\(3));

-- Location: LCCOMB_X18_Y10_N26
\inst|s_p2[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_p2[2]~feeder_combout\ = \inst|REG_B\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|REG_B\(2),
	combout => \inst|s_p2[2]~feeder_combout\);

-- Location: FF_X18_Y10_N27
\inst|s_p2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|s_p2[2]~feeder_combout\,
	ena => \inst|s_p1[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_p2\(2));

-- Location: FF_X17_Y13_N3
\inst|s_p2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|REG_B\(1),
	sload => VCC,
	ena => \inst|s_p1[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_p2\(1));

-- Location: LCCOMB_X18_Y10_N28
\inst|s_p2[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_p2[0]~feeder_combout\ = \inst|REG_B\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|REG_B\(0),
	combout => \inst|s_p2[0]~feeder_combout\);

-- Location: FF_X18_Y10_N29
\inst|s_p2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|s_p2[0]~feeder_combout\,
	ena => \inst|s_p1[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_p2\(0));

ww_sign_flag <= \sign_flag~output_o\;

ww_d1 <= \d1~output_o\;

ww_d2 <= \d2~output_o\;

ww_d3 <= \d3~output_o\;

ww_d4 <= \d4~output_o\;

ww_a <= \a~output_o\;

ww_b <= \b~output_o\;

ww_c <= \c~output_o\;

ww_d <= \d~output_o\;

ww_e <= \e~output_o\;

ww_f <= \f~output_o\;

ww_g <= \g~output_o\;

ww_a_dato(9) <= \a_dato[9]~output_o\;

ww_a_dato(8) <= \a_dato[8]~output_o\;

ww_a_dato(7) <= \a_dato[7]~output_o\;

ww_a_dato(6) <= \a_dato[6]~output_o\;

ww_a_dato(5) <= \a_dato[5]~output_o\;

ww_a_dato(4) <= \a_dato[4]~output_o\;

ww_a_dato(3) <= \a_dato[3]~output_o\;

ww_a_dato(2) <= \a_dato[2]~output_o\;

ww_a_dato(1) <= \a_dato[1]~output_o\;

ww_a_dato(0) <= \a_dato[0]~output_o\;

ww_b_dato(9) <= \b_dato[9]~output_o\;

ww_b_dato(8) <= \b_dato[8]~output_o\;

ww_b_dato(7) <= \b_dato[7]~output_o\;

ww_b_dato(6) <= \b_dato[6]~output_o\;

ww_b_dato(5) <= \b_dato[5]~output_o\;

ww_b_dato(4) <= \b_dato[4]~output_o\;

ww_b_dato(3) <= \b_dato[3]~output_o\;

ww_b_dato(2) <= \b_dato[2]~output_o\;

ww_b_dato(1) <= \b_dato[1]~output_o\;

ww_b_dato(0) <= \b_dato[0]~output_o\;

ww_mar(11) <= \mar[11]~output_o\;

ww_mar(10) <= \mar[10]~output_o\;

ww_mar(9) <= \mar[9]~output_o\;

ww_mar(8) <= \mar[8]~output_o\;

ww_mar(7) <= \mar[7]~output_o\;

ww_mar(6) <= \mar[6]~output_o\;

ww_mar(5) <= \mar[5]~output_o\;

ww_mar(4) <= \mar[4]~output_o\;

ww_mar(3) <= \mar[3]~output_o\;

ww_mar(2) <= \mar[2]~output_o\;

ww_mar(1) <= \mar[1]~output_o\;

ww_mar(0) <= \mar[0]~output_o\;

ww_R(15) <= \R[15]~output_o\;

ww_R(14) <= \R[14]~output_o\;

ww_R(13) <= \R[13]~output_o\;

ww_R(12) <= \R[12]~output_o\;

ww_R(11) <= \R[11]~output_o\;

ww_R(10) <= \R[10]~output_o\;

ww_R(9) <= \R[9]~output_o\;

ww_R(8) <= \R[8]~output_o\;

ww_R(7) <= \R[7]~output_o\;

ww_R(6) <= \R[6]~output_o\;

ww_R(5) <= \R[5]~output_o\;

ww_R(4) <= \R[4]~output_o\;

ww_R(3) <= \R[3]~output_o\;

ww_R(2) <= \R[2]~output_o\;

ww_R(1) <= \R[1]~output_o\;

ww_R(0) <= \R[0]~output_o\;
END structure;


