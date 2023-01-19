-- Copyright (C) 2022  Intel Corporation. All rights reserved.
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
-- VERSION "Version 21.1.1 Build 850 06/23/2022 SJ Lite Edition"

-- DATE "01/19/2023 00:11:30"

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

ENTITY 	final IS
    PORT (
	A : OUT std_logic_vector(11 DOWNTO 0);
	clk : IN std_logic;
	rst : IN std_logic;
	put : IN std_logic;
	up : IN std_logic;
	down : IN std_logic;
	izq : IN std_logic;
	der : IN std_logic;
	B : OUT std_logic_vector(11 DOWNTO 0);
	instrucciones : OUT std_logic_vector(11 DOWNTO 0);
	mov : OUT std_logic_vector(8 DOWNTO 0);
	p1 : OUT std_logic_vector(8 DOWNTO 0);
	p2 : OUT std_logic_vector(8 DOWNTO 0)
	);
END final;

-- Design Ports Information
-- A[11]	=>  Location: PIN_75,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[10]	=>  Location: PIN_73,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[9]	=>  Location: PIN_86,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[8]	=>  Location: PIN_135,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_126,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_128,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_132,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_136,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_51,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_54,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_55,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- put	=>  Location: PIN_74,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[11]	=>  Location: PIN_68,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[10]	=>  Location: PIN_71,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[9]	=>  Location: PIN_46,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[8]	=>  Location: PIN_67,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_65,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_99,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_31,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_66,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_69,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_111,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_119,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_120,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucciones[11]	=>  Location: PIN_60,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucciones[10]	=>  Location: PIN_53,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucciones[9]	=>  Location: PIN_59,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucciones[8]	=>  Location: PIN_83,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucciones[7]	=>  Location: PIN_38,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucciones[6]	=>  Location: PIN_44,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucciones[5]	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucciones[4]	=>  Location: PIN_28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucciones[3]	=>  Location: PIN_87,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucciones[2]	=>  Location: PIN_34,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucciones[1]	=>  Location: PIN_141,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucciones[0]	=>  Location: PIN_49,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mov[8]	=>  Location: PIN_100,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mov[7]	=>  Location: PIN_112,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mov[6]	=>  Location: PIN_124,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mov[5]	=>  Location: PIN_125,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mov[4]	=>  Location: PIN_137,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mov[3]	=>  Location: PIN_129,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mov[2]	=>  Location: PIN_127,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mov[1]	=>  Location: PIN_121,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mov[0]	=>  Location: PIN_133,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- p1[8]	=>  Location: PIN_105,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- p1[7]	=>  Location: PIN_77,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- p1[6]	=>  Location: PIN_84,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- p1[5]	=>  Location: PIN_72,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- p1[4]	=>  Location: PIN_144,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- p1[3]	=>  Location: PIN_138,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- p1[2]	=>  Location: PIN_33,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- p1[1]	=>  Location: PIN_30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- p1[0]	=>  Location: PIN_80,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- p2[8]	=>  Location: PIN_50,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- p2[7]	=>  Location: PIN_85,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- p2[6]	=>  Location: PIN_64,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- p2[5]	=>  Location: PIN_76,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- p2[4]	=>  Location: PIN_11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- p2[3]	=>  Location: PIN_3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- p2[2]	=>  Location: PIN_142,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- p2[1]	=>  Location: PIN_143,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- p2[0]	=>  Location: PIN_104,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- der	=>  Location: PIN_114,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- izq	=>  Location: PIN_115,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- up	=>  Location: PIN_113,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- down	=>  Location: PIN_103,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF final IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic_vector(11 DOWNTO 0);
SIGNAL ww_clk : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_put : std_logic;
SIGNAL ww_up : std_logic;
SIGNAL ww_down : std_logic;
SIGNAL ww_izq : std_logic;
SIGNAL ww_der : std_logic;
SIGNAL ww_B : std_logic_vector(11 DOWNTO 0);
SIGNAL ww_instrucciones : std_logic_vector(11 DOWNTO 0);
SIGNAL ww_mov : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_p1 : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_p2 : std_logic_vector(8 DOWNTO 0);
SIGNAL \rst~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \put~input_o\ : std_logic;
SIGNAL \A[11]~output_o\ : std_logic;
SIGNAL \A[10]~output_o\ : std_logic;
SIGNAL \A[9]~output_o\ : std_logic;
SIGNAL \A[8]~output_o\ : std_logic;
SIGNAL \A[7]~output_o\ : std_logic;
SIGNAL \A[6]~output_o\ : std_logic;
SIGNAL \A[5]~output_o\ : std_logic;
SIGNAL \A[4]~output_o\ : std_logic;
SIGNAL \A[3]~output_o\ : std_logic;
SIGNAL \A[2]~output_o\ : std_logic;
SIGNAL \A[1]~output_o\ : std_logic;
SIGNAL \A[0]~output_o\ : std_logic;
SIGNAL \B[11]~output_o\ : std_logic;
SIGNAL \B[10]~output_o\ : std_logic;
SIGNAL \B[9]~output_o\ : std_logic;
SIGNAL \B[8]~output_o\ : std_logic;
SIGNAL \B[7]~output_o\ : std_logic;
SIGNAL \B[6]~output_o\ : std_logic;
SIGNAL \B[5]~output_o\ : std_logic;
SIGNAL \B[4]~output_o\ : std_logic;
SIGNAL \B[3]~output_o\ : std_logic;
SIGNAL \B[2]~output_o\ : std_logic;
SIGNAL \B[1]~output_o\ : std_logic;
SIGNAL \B[0]~output_o\ : std_logic;
SIGNAL \instrucciones[11]~output_o\ : std_logic;
SIGNAL \instrucciones[10]~output_o\ : std_logic;
SIGNAL \instrucciones[9]~output_o\ : std_logic;
SIGNAL \instrucciones[8]~output_o\ : std_logic;
SIGNAL \instrucciones[7]~output_o\ : std_logic;
SIGNAL \instrucciones[6]~output_o\ : std_logic;
SIGNAL \instrucciones[5]~output_o\ : std_logic;
SIGNAL \instrucciones[4]~output_o\ : std_logic;
SIGNAL \instrucciones[3]~output_o\ : std_logic;
SIGNAL \instrucciones[2]~output_o\ : std_logic;
SIGNAL \instrucciones[1]~output_o\ : std_logic;
SIGNAL \instrucciones[0]~output_o\ : std_logic;
SIGNAL \mov[8]~output_o\ : std_logic;
SIGNAL \mov[7]~output_o\ : std_logic;
SIGNAL \mov[6]~output_o\ : std_logic;
SIGNAL \mov[5]~output_o\ : std_logic;
SIGNAL \mov[4]~output_o\ : std_logic;
SIGNAL \mov[3]~output_o\ : std_logic;
SIGNAL \mov[2]~output_o\ : std_logic;
SIGNAL \mov[1]~output_o\ : std_logic;
SIGNAL \mov[0]~output_o\ : std_logic;
SIGNAL \p1[8]~output_o\ : std_logic;
SIGNAL \p1[7]~output_o\ : std_logic;
SIGNAL \p1[6]~output_o\ : std_logic;
SIGNAL \p1[5]~output_o\ : std_logic;
SIGNAL \p1[4]~output_o\ : std_logic;
SIGNAL \p1[3]~output_o\ : std_logic;
SIGNAL \p1[2]~output_o\ : std_logic;
SIGNAL \p1[1]~output_o\ : std_logic;
SIGNAL \p1[0]~output_o\ : std_logic;
SIGNAL \p2[8]~output_o\ : std_logic;
SIGNAL \p2[7]~output_o\ : std_logic;
SIGNAL \p2[6]~output_o\ : std_logic;
SIGNAL \p2[5]~output_o\ : std_logic;
SIGNAL \p2[4]~output_o\ : std_logic;
SIGNAL \p2[3]~output_o\ : std_logic;
SIGNAL \p2[2]~output_o\ : std_logic;
SIGNAL \p2[1]~output_o\ : std_logic;
SIGNAL \p2[0]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst|PC[0]~14_combout\ : std_logic;
SIGNAL \inst|PC[1]~18\ : std_logic;
SIGNAL \inst|PC[2]~19_combout\ : std_logic;
SIGNAL \inst|PC[2]~20\ : std_logic;
SIGNAL \inst|PC[3]~21_combout\ : std_logic;
SIGNAL \inst|Mux5~0_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \inst|pr_state.state1~0_combout\ : std_logic;
SIGNAL \rst~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst|pr_state.state1~q\ : std_logic;
SIGNAL \inst|pr_state.state2~q\ : std_logic;
SIGNAL \inst|Selector14~0_combout\ : std_logic;
SIGNAL \inst|pr_state.state0~q\ : std_logic;
SIGNAL \inst|MAR[11]~0_combout\ : std_logic;
SIGNAL \inst|Selector29~0_combout\ : std_logic;
SIGNAL \inst|Mux0~0_combout\ : std_logic;
SIGNAL \inst|Mux3~0_combout\ : std_logic;
SIGNAL \inst|Equal3~0_combout\ : std_logic;
SIGNAL \inst|OFFSET[13]~1_combout\ : std_logic;
SIGNAL \inst|OFFSET[13]~2_combout\ : std_logic;
SIGNAL \inst|PC[13]~16_combout\ : std_logic;
SIGNAL \inst|Mux1~0_combout\ : std_logic;
SIGNAL \inst|OP[3]~1_combout\ : std_logic;
SIGNAL \inst|Mux6~0_combout\ : std_logic;
SIGNAL \inst|Equal2~0_combout\ : std_logic;
SIGNAL \inst|Equal5~0_combout\ : std_logic;
SIGNAL \inst|reggy~154_combout\ : std_logic;
SIGNAL \inst|Mux7~0_combout\ : std_logic;
SIGNAL \inst|reggy~178_combout\ : std_logic;
SIGNAL \inst|reggy~176_combout\ : std_logic;
SIGNAL \inst|reggy~177_combout\ : std_logic;
SIGNAL \inst|reggy~179_combout\ : std_logic;
SIGNAL \inst|reggy~180_combout\ : std_logic;
SIGNAL \inst|reggy~53_q\ : std_logic;
SIGNAL \inst|reggy~21feeder_combout\ : std_logic;
SIGNAL \inst|reggy~182_combout\ : std_logic;
SIGNAL \inst|reggy~21_q\ : std_logic;
SIGNAL \inst|reggy~155_combout\ : std_logic;
SIGNAL \inst|reggy~170_combout\ : std_logic;
SIGNAL \inst|reggy~181_combout\ : std_logic;
SIGNAL \inst|reggy~37_q\ : std_logic;
SIGNAL \inst|reggy~171_combout\ : std_logic;
SIGNAL \up~input_o\ : std_logic;
SIGNAL \izq~input_o\ : std_logic;
SIGNAL \down~input_o\ : std_logic;
SIGNAL \inst|process_0~2_combout\ : std_logic;
SIGNAL \der~input_o\ : std_logic;
SIGNAL \inst|process_0~0_combout\ : std_logic;
SIGNAL \inst|PC[3]~22\ : std_logic;
SIGNAL \inst|PC[4]~23_combout\ : std_logic;
SIGNAL \inst|Selector28~0_combout\ : std_logic;
SIGNAL \inst|PC[4]~24\ : std_logic;
SIGNAL \inst|PC[5]~25_combout\ : std_logic;
SIGNAL \inst|Selector27~0_combout\ : std_logic;
SIGNAL \inst|PC[5]~26\ : std_logic;
SIGNAL \inst|PC[6]~27_combout\ : std_logic;
SIGNAL \inst|Selector26~0_combout\ : std_logic;
SIGNAL \inst|PC[6]~28\ : std_logic;
SIGNAL \inst|PC[7]~29_combout\ : std_logic;
SIGNAL \inst|Selector25~0_combout\ : std_logic;
SIGNAL \inst|PC[7]~30\ : std_logic;
SIGNAL \inst|PC[8]~31_combout\ : std_logic;
SIGNAL \inst|Selector24~0_combout\ : std_logic;
SIGNAL \inst|PC[8]~32\ : std_logic;
SIGNAL \inst|PC[9]~33_combout\ : std_logic;
SIGNAL \inst|Selector23~0_combout\ : std_logic;
SIGNAL \inst|PC[9]~34\ : std_logic;
SIGNAL \inst|PC[10]~35_combout\ : std_logic;
SIGNAL \inst|Selector22~0_combout\ : std_logic;
SIGNAL \inst|PC[10]~36\ : std_logic;
SIGNAL \inst|PC[11]~37_combout\ : std_logic;
SIGNAL \inst|Selector21~0_combout\ : std_logic;
SIGNAL \inst|PC[11]~38\ : std_logic;
SIGNAL \inst|PC[12]~39_combout\ : std_logic;
SIGNAL \inst|Selector20~0_combout\ : std_logic;
SIGNAL \inst|PC[12]~40\ : std_logic;
SIGNAL \inst|PC[13]~41_combout\ : std_logic;
SIGNAL \inst|Selector19~0_combout\ : std_logic;
SIGNAL \inst|LessThan0~3_combout\ : std_logic;
SIGNAL \inst|LessThan0~1_combout\ : std_logic;
SIGNAL \inst|LessThan0~0_combout\ : std_logic;
SIGNAL \inst|LessThan0~2_combout\ : std_logic;
SIGNAL \inst|LessThan0~4_combout\ : std_logic;
SIGNAL \inst|pushed~0_combout\ : std_logic;
SIGNAL \inst|pushed[3]~1_combout\ : std_logic;
SIGNAL \inst|pushed[0]~4_combout\ : std_logic;
SIGNAL \inst|aux[8]~4_combout\ : std_logic;
SIGNAL \inst|aux[8]~5_combout\ : std_logic;
SIGNAL \inst|mov[6]~feeder_combout\ : std_logic;
SIGNAL \inst|Equal6~0_combout\ : std_logic;
SIGNAL \inst|aux[8]~2_combout\ : std_logic;
SIGNAL \inst|aux[8]~3_combout\ : std_logic;
SIGNAL \inst|i[2]~0_combout\ : std_logic;
SIGNAL \inst|i~2_combout\ : std_logic;
SIGNAL \inst|i~1_combout\ : std_logic;
SIGNAL \inst|process_0~1_combout\ : std_logic;
SIGNAL \inst|mov[8]~0_combout\ : std_logic;
SIGNAL \inst|pushed~3_combout\ : std_logic;
SIGNAL \inst|aux[8]~7_combout\ : std_logic;
SIGNAL \inst|aux[8]~6_combout\ : std_logic;
SIGNAL \inst|aux[8]~8_combout\ : std_logic;
SIGNAL \inst|aux~16_combout\ : std_logic;
SIGNAL \inst|mov[3]~feeder_combout\ : std_logic;
SIGNAL \inst|aux~25_combout\ : std_logic;
SIGNAL \inst|pushed~2_combout\ : std_logic;
SIGNAL \inst|aux[8]~11_combout\ : std_logic;
SIGNAL \inst|aux~22_combout\ : std_logic;
SIGNAL \inst|mov~1_combout\ : std_logic;
SIGNAL \inst|mov[2]~2_combout\ : std_logic;
SIGNAL \inst|mov[2]~3_combout\ : std_logic;
SIGNAL \inst|aux~28_combout\ : std_logic;
SIGNAL \inst|aux~29_combout\ : std_logic;
SIGNAL \inst|aux~30_combout\ : std_logic;
SIGNAL \inst|aux[8]~37_combout\ : std_logic;
SIGNAL \inst|aux~19_combout\ : std_logic;
SIGNAL \inst|aux~20_combout\ : std_logic;
SIGNAL \inst|aux~21_combout\ : std_logic;
SIGNAL \inst|aux~23_combout\ : std_logic;
SIGNAL \inst|aux~24_combout\ : std_logic;
SIGNAL \inst|aux~26_combout\ : std_logic;
SIGNAL \inst|aux~27_combout\ : std_logic;
SIGNAL \inst|aux~17_combout\ : std_logic;
SIGNAL \inst|aux~18_combout\ : std_logic;
SIGNAL \inst|mov[7]~feeder_combout\ : std_logic;
SIGNAL \inst|aux~13_combout\ : std_logic;
SIGNAL \inst|aux~14_combout\ : std_logic;
SIGNAL \inst|aux~15_combout\ : std_logic;
SIGNAL \inst|aux~9_combout\ : std_logic;
SIGNAL \inst|aux~10_combout\ : std_logic;
SIGNAL \inst|aux~12_combout\ : std_logic;
SIGNAL \inst|mov[0]~feeder_combout\ : std_logic;
SIGNAL \inst|aux~34_combout\ : std_logic;
SIGNAL \inst|aux~35_combout\ : std_logic;
SIGNAL \inst|aux~36_combout\ : std_logic;
SIGNAL \inst|aux~31_combout\ : std_logic;
SIGNAL \inst|aux~32_combout\ : std_logic;
SIGNAL \inst|aux~33_combout\ : std_logic;
SIGNAL \inst|cat~8_combout\ : std_logic;
SIGNAL \inst|cat[0][8]~1_combout\ : std_logic;
SIGNAL \inst|cat[0][8]~10_combout\ : std_logic;
SIGNAL \inst|cat[0][8]~11_combout\ : std_logic;
SIGNAL \inst|cat[0][1]~q\ : std_logic;
SIGNAL \inst|REG_D~9_combout\ : std_logic;
SIGNAL \inst|REG_D~10_combout\ : std_logic;
SIGNAL \inst|OP[3]~0_combout\ : std_logic;
SIGNAL \inst|REG_D[8]~2_combout\ : std_logic;
SIGNAL \inst|OP[3]~2_combout\ : std_logic;
SIGNAL \inst|reggy~243_combout\ : std_logic;
SIGNAL \inst|reggy~244_combout\ : std_logic;
SIGNAL \inst|reggy~183_combout\ : std_logic;
SIGNAL \inst|reggy~69_q\ : std_logic;
SIGNAL \inst|reggy~255_combout\ : std_logic;
SIGNAL \inst|reggy~256_combout\ : std_logic;
SIGNAL \inst|OP[3]~3_combout\ : std_logic;
SIGNAL \inst|alu1|Mux17~0_combout\ : std_logic;
SIGNAL \inst|alu1|Mux16~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|Mux14~0_combout\ : std_logic;
SIGNAL \inst|alu1|Mux15~12_combout\ : std_logic;
SIGNAL \inst|reggy~68_q\ : std_logic;
SIGNAL \inst|reggy~52_q\ : std_logic;
SIGNAL \inst|reggy~20_q\ : std_logic;
SIGNAL \inst|reggy~253_combout\ : std_logic;
SIGNAL \inst|reggy~254_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|Mux15~0_combout\ : std_logic;
SIGNAL \inst|alu1|Mux15~11_combout\ : std_logic;
SIGNAL \inst|alu1|Mux15~15_combout\ : std_logic;
SIGNAL \inst|alu1|Mux15~5_combout\ : std_logic;
SIGNAL \inst|reggy~75_q\ : std_logic;
SIGNAL \inst|reggy~43_q\ : std_logic;
SIGNAL \inst|reggy~27_q\ : std_logic;
SIGNAL \inst|reggy~158_combout\ : std_logic;
SIGNAL \inst|reggy~159_combout\ : std_logic;
SIGNAL \inst|reggy~198_combout\ : std_logic;
SIGNAL \inst|reggy~199_combout\ : std_logic;
SIGNAL \inst|reggy~57_q\ : std_logic;
SIGNAL \inst|reggy~25_q\ : std_logic;
SIGNAL \inst|reggy~263_combout\ : std_logic;
SIGNAL \inst|reggy~41_q\ : std_logic;
SIGNAL \inst|reggy~264_combout\ : std_logic;
SIGNAL \inst|reggy~211_combout\ : std_logic;
SIGNAL \inst|cat~7_combout\ : std_logic;
SIGNAL \inst|cat[0][2]~q\ : std_logic;
SIGNAL \inst|REG_D~0_combout\ : std_logic;
SIGNAL \inst|REG_D~8_combout\ : std_logic;
SIGNAL \inst|reggy~241_combout\ : std_logic;
SIGNAL \inst|alu1|Mux13~6_combout\ : std_logic;
SIGNAL \inst|reggy~83_q\ : std_logic;
SIGNAL \inst|reggy~67_q\ : std_logic;
SIGNAL \inst|reggy~35_q\ : std_logic;
SIGNAL \inst|reggy~249_combout\ : std_logic;
SIGNAL \inst|reggy~250_combout\ : std_logic;
SIGNAL \inst|REG_D~13_combout\ : std_logic;
SIGNAL \inst|alu1|Mux7~1_combout\ : std_logic;
SIGNAL \inst|reggy~192_combout\ : std_logic;
SIGNAL \inst|reggy~297_combout\ : std_logic;
SIGNAL \inst|reggy~66_q\ : std_logic;
SIGNAL \inst|reggy~34_q\ : std_logic;
SIGNAL \inst|reggy~291_combout\ : std_logic;
SIGNAL \inst|reggy~82_q\ : std_logic;
SIGNAL \inst|reggy~292_combout\ : std_logic;
SIGNAL \inst|reggy~352_combout\ : std_logic;
SIGNAL \inst|reggy~80_q\ : std_logic;
SIGNAL \inst|reggy~32_q\ : std_logic;
SIGNAL \inst|reggy~285_combout\ : std_logic;
SIGNAL \inst|reggy~48feeder_combout\ : std_logic;
SIGNAL \inst|reggy~48_q\ : std_logic;
SIGNAL \inst|reggy~286_combout\ : std_logic;
SIGNAL \inst|reggy~316_combout\ : std_logic;
SIGNAL \inst|reggy~26_q\ : std_logic;
SIGNAL \inst|reggy~58_q\ : std_logic;
SIGNAL \inst|reggy~265_combout\ : std_logic;
SIGNAL \inst|reggy~74_q\ : std_logic;
SIGNAL \inst|reggy~266_combout\ : std_logic;
SIGNAL \inst|reggy~24_q\ : std_logic;
SIGNAL \inst|reggy~261_combout\ : std_logic;
SIGNAL \inst|reggy~40_q\ : std_logic;
SIGNAL \inst|reggy~72_q\ : std_logic;
SIGNAL \inst|reggy~262_combout\ : std_logic;
SIGNAL \inst|reggy~23_q\ : std_logic;
SIGNAL \inst|reggy~259_combout\ : std_logic;
SIGNAL \inst|reggy~71_q\ : std_logic;
SIGNAL \inst|reggy~39_q\ : std_logic;
SIGNAL \inst|reggy~260_combout\ : std_logic;
SIGNAL \inst|reggy~22_q\ : std_logic;
SIGNAL \inst|reggy~38_q\ : std_logic;
SIGNAL \inst|reggy~257_combout\ : std_logic;
SIGNAL \inst|reggy~54_q\ : std_logic;
SIGNAL \inst|reggy~258_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi1|sR:1:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi1|sR:2:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi1|sR:3:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi1|sR:4:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi1|sR:5:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi1|sR:6:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi1|sR:7:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi1|sR:8:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi1|sR:6:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi1|sR:5:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi1|sR:4:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi1|sR:2:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi2|sR:2:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi1|sR:3:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi2|sR:3:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi2|sR:4:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi2|sR:5:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi2|sR:6:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi1|sR:7:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi2|sR:7:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi2|sR:8:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi1|sR:8:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi2|sR:9:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi2|sR:8:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi2|sR:7:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi2|sR:5:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi2|sR:4:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi2|sR:3:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi3|sR:3:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi3|sR:4:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi3|sR:5:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi2|sR:6:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi3|sR:6:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi3|sR:7:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi3|sR:8:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi3|sR:9:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi3|sR:8:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi3|sR:6:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi3|sR:4:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi4|sR:4:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi3|sR:5:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi4|sR:5:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi4|sR:6:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi3|sR:7:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi4|sR:7:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi4|sR:8:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi4|sR:9:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi4|sR:7:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi4|sR:6:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi4|sR:5:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi5|sR:5:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi5|sR:6:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi5|sR:7:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi4|sR:8:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi5|sR:8:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi5|sR:9:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi4|sR:9:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi2|sR:9:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi3|sR:9:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi3|sR:10:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi4|sR:10:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi5|sR:10:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi5|sR:9:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi5|sR:8:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi5|sR:7:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi5|sR:6:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi6|sR:6:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi6|sR:7:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi6|sR:8:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi6|sR:9:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi6|sR:10:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi5|sR:10:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi4|sR:10:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi3|sR:10:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi4|sR:11:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi5|sR:11:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi6|sR:11:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi6|sR:9:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi6|sR:7:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi7|sR:7:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi6|sR:8:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi7|sR:8:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi7|sR:9:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi6|sR:10:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi7|sR:10:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi7|sR:11:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi7|sR:10:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi7|sR:9:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi7|sR:8:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~1\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~3\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~5\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~7\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~9\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~11\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~13\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~15\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~17\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~19\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~21\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~22_combout\ : std_logic;
SIGNAL \inst|reggy~355_combout\ : std_logic;
SIGNAL \inst|alu1|Mux7~6_combout\ : std_logic;
SIGNAL \inst|reggy~301_combout\ : std_logic;
SIGNAL \inst|reggy~302_combout\ : std_logic;
SIGNAL \inst|REG_D~16_combout\ : std_logic;
SIGNAL \inst|reggy~321_combout\ : std_logic;
SIGNAL \inst|reggy~322_combout\ : std_logic;
SIGNAL \inst|reggy~300_combout\ : std_logic;
SIGNAL \inst|reggy~33_q\ : std_logic;
SIGNAL \inst|reggy~49_q\ : std_logic;
SIGNAL \inst|reggy~287_combout\ : std_logic;
SIGNAL \inst|reggy~65_q\ : std_logic;
SIGNAL \inst|reggy~288_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|Yop~12_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|Yop~11_combout\ : std_logic;
SIGNAL \inst|reggy~31_q\ : std_logic;
SIGNAL \inst|reggy~283_combout\ : std_logic;
SIGNAL \inst|reggy~79_q\ : std_logic;
SIGNAL \inst|reggy~63_q\ : std_logic;
SIGNAL \inst|reggy~284_combout\ : std_logic;
SIGNAL \inst|REG_B[11]~feeder_combout\ : std_logic;
SIGNAL \inst|reggy~46feeder_combout\ : std_logic;
SIGNAL \inst|reggy~46_q\ : std_logic;
SIGNAL \inst|reggy~30_q\ : std_logic;
SIGNAL \inst|reggy~62_q\ : std_logic;
SIGNAL \inst|reggy~275_combout\ : std_logic;
SIGNAL \inst|reggy~276_combout\ : std_logic;
SIGNAL \inst|reggy~45_q\ : std_logic;
SIGNAL \inst|reggy~279_combout\ : std_logic;
SIGNAL \inst|reggy~61feeder_combout\ : std_logic;
SIGNAL \inst|reggy~61_q\ : std_logic;
SIGNAL \inst|reggy~77_q\ : std_logic;
SIGNAL \inst|reggy~280_combout\ : std_logic;
SIGNAL \inst|reggy~343_combout\ : std_logic;
SIGNAL \inst|REG_D~1_combout\ : std_logic;
SIGNAL \inst|reggy~174_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|aux[7]~15\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|aux[8]~16_combout\ : std_logic;
SIGNAL \inst|reggy~44feeder_combout\ : std_logic;
SIGNAL \inst|reggy~44_q\ : std_logic;
SIGNAL \inst|reggy~28_q\ : std_logic;
SIGNAL \inst|reggy~247_combout\ : std_logic;
SIGNAL \inst|reggy~76_q\ : std_logic;
SIGNAL \inst|reggy~248_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|Mux7~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|Mux7~1_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|Mux7~6_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|Yop~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|Yop~7_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|Yop~5_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|Yop~4_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|Yop~3_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|resta|s0|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|Yop~1_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|resta|s0|Cout2~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|resta|sR:1:sP|Cout2~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|resta|sR:2:sP|Cout2~4_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|resta|sR:3:sP|Cout2~4_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|resta|sR:4:sP|Cout2~4_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|resta|sR:5:sP|Cout2~4_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|Yop~6_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|resta|sR:6:sP|Cout2~4_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|resta|sR:7:sP|Cout2~4_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|resta|sR:1:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|resta|sR:2:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|resta|sR:3:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|resta|sR:4:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|resta|sR:5:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|resta|sR:6:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|resta|sR:7:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|resta|sR:8:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|Yop~9_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|Yop~8_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|resta|sR:8:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|resta|sR:8:sP|Cout2~4_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|resta|sR:9:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|resta|sR:9:sP|Cout2~4_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|resta|sR:10:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|Yop~10_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|resta|sR:10:sP|Cout2~4_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|resta|sR:11:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|resta|sR:11:sP|Cout2~4_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|resta|sR:12:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|resta|sR:12:sP|Cout2~4_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|resta|sR:13:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|Yop~13_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|resta|sR:13:sP|Cout2~4_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|resta|sR:14:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|resta|Sfaux~2_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|resta|sR:7:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|resta|sR:6:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|resta|sR:5:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|resta|sR:4:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|resta|sR:3:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|resta|sR:1:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|resta|negativo|Add0~1\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|resta|negativo|Add0~3\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|resta|negativo|Add0~5\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|resta|negativo|Add0~7\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|resta|negativo|Add0~9\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|resta|negativo|Add0~11\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|resta|negativo|Add0~13\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|resta|negativo|Add0~15\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|resta|negativo|Add0~16_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|Mux7~2_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~16_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|Mux7~3_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|sR:1:sP|Cout~1_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|sR:1:sP|Cout2~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|sR:2:sP|Cout2~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|sR:3:sP|Cout2~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|sR:4:sP|Cout2~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|sR:5:sP|Cout2~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|sR:6:sP|Cout2~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|sR:7:sP|Cout2~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|s0|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|sR:1:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|sR:1:sP|Cout~2_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|sR:2:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|sR:2:sP|Cout~1_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|sR:3:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|sR:3:sP|Cout~1_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|sR:4:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|sR:4:sP|Cout~1_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|sR:5:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|sR:5:sP|Cout~1_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|sR:6:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|sR:6:sP|Cout~1_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|sR:7:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|sR:7:sP|Cout~1_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|sR:8:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|sR:7:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|sR:6:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|sR:5:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|sR:4:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|sR:3:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|sR:2:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|sR:1:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|negativo|Add0~1\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|negativo|Add0~3\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|negativo|Add0~5\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|negativo|Add0~7\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|negativo|Add0~9\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|negativo|Add0~11\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|negativo|Add0~13\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|negativo|Add0~15\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|negativo|Add0~16_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|Mux7~4_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|Mux7~5_combout\ : std_logic;
SIGNAL \inst|alu1|Mux7~3_combout\ : std_logic;
SIGNAL \inst|alu1|Mux7~4_combout\ : std_logic;
SIGNAL \inst|alu1|Mux7~0_combout\ : std_logic;
SIGNAL \inst|alu1|Mux7~2_combout\ : std_logic;
SIGNAL \inst|alu1|Mux7~5_combout\ : std_logic;
SIGNAL \inst|reggy~175_combout\ : std_logic;
SIGNAL \inst|reggy~60_q\ : std_logic;
SIGNAL \inst|reggy~156_combout\ : std_logic;
SIGNAL \inst|reggy~157_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|aux[8]~17\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|aux[9]~18_combout\ : std_logic;
SIGNAL \inst|reggy~344_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~18_combout\ : std_logic;
SIGNAL \inst|REG_D~18_combout\ : std_logic;
SIGNAL \inst|reggy~339_combout\ : std_logic;
SIGNAL \inst|reggy~340_combout\ : std_logic;
SIGNAL \inst|reggy~341_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|resta|sR:9:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|sR:8:sP|Cout2~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|sR:8:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|sR:8:sP|Cout~1_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|sR:9:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|negativo|Add0~17\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|negativo|Add0~18_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|resta|negativo|Add0~17\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|resta|negativo|Add0~18_combout\ : std_logic;
SIGNAL \inst|reggy~337_combout\ : std_logic;
SIGNAL \inst|reggy~338_combout\ : std_logic;
SIGNAL \inst|reggy~342_combout\ : std_logic;
SIGNAL \inst|reggy~345_combout\ : std_logic;
SIGNAL \inst|reggy~29_q\ : std_logic;
SIGNAL \inst|reggy~277_combout\ : std_logic;
SIGNAL \inst|reggy~278_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|aux[9]~19\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|aux[10]~20_combout\ : std_logic;
SIGNAL \inst|reggy~334_combout\ : std_logic;
SIGNAL \inst|reggy~335_combout\ : std_logic;
SIGNAL \inst|REG_D~17_combout\ : std_logic;
SIGNAL \inst|reggy~330_combout\ : std_logic;
SIGNAL \inst|reggy~331_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~20_combout\ : std_logic;
SIGNAL \inst|reggy~332_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|sR:9:sP|Cout2~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|sR:9:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|sR:9:sP|Cout~1_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|sR:10:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|resta|sR:10:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|resta|negativo|Add0~19\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|resta|negativo|Add0~20_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|negativo|Add0~19\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|negativo|Add0~20_combout\ : std_logic;
SIGNAL \inst|reggy~328_combout\ : std_logic;
SIGNAL \inst|reggy~329_combout\ : std_logic;
SIGNAL \inst|reggy~333_combout\ : std_logic;
SIGNAL \inst|reggy~336_combout\ : std_logic;
SIGNAL \inst|reggy~78_q\ : std_logic;
SIGNAL \inst|reggy~281_combout\ : std_logic;
SIGNAL \inst|reggy~282_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|sR:10:sP|Cout2~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|sR:11:sP|Cout2~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|sR:12:sP|Cout2~4_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|sR:13:sP|Cout2~4_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|sR:10:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|sR:10:sP|Cout~1_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|sR:11:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|sR:11:sP|Cout~1_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|sR:12:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|sR:12:sP|Cout~1_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|sR:13:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|sR:13:sP|Cout~1_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|sR:14:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|Sfaux~1_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|Sfaux~0_combout\ : std_logic;
SIGNAL \inst|reggy~187_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|resta|sR:11:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|sR:11:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|resta|negativo|Add0~21\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|resta|negativo|Add0~22_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|negativo|Add0~21\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|negativo|Add0~22_combout\ : std_logic;
SIGNAL \inst|reggy~319_combout\ : std_logic;
SIGNAL \inst|reggy~320_combout\ : std_logic;
SIGNAL \inst|reggy~323_combout\ : std_logic;
SIGNAL \inst|reggy~324_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|aux[10]~21\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|aux[11]~22_combout\ : std_logic;
SIGNAL \inst|reggy~325_combout\ : std_logic;
SIGNAL \inst|reggy~326_combout\ : std_logic;
SIGNAL \inst|reggy~327_combout\ : std_logic;
SIGNAL \inst|reggy~47_q\ : std_logic;
SIGNAL \inst|reggy~273_combout\ : std_logic;
SIGNAL \inst|reggy~274_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|aux[11]~23\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|aux[12]~24_combout\ : std_logic;
SIGNAL \inst|reggy~317_combout\ : std_logic;
SIGNAL \inst|REG_D~15_combout\ : std_logic;
SIGNAL \inst|reggy~312_combout\ : std_logic;
SIGNAL \inst|reggy~313_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi7|sR:11:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi4|sR:11:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi5|sR:11:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi5|sR:12:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi6|sR:11:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi6|sR:12:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi7|sR:12:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~23\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~24_combout\ : std_logic;
SIGNAL \inst|reggy~314_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|resta|sR:12:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|resta|negativo|Add0~23\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|resta|negativo|Add0~24_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|sR:12:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|negativo|Add0~23\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|negativo|Add0~24_combout\ : std_logic;
SIGNAL \inst|reggy~310_combout\ : std_logic;
SIGNAL \inst|reggy~311_combout\ : std_logic;
SIGNAL \inst|reggy~315_combout\ : std_logic;
SIGNAL \inst|reggy~318_combout\ : std_logic;
SIGNAL \inst|reggy~64_q\ : std_logic;
SIGNAL \inst|reggy~271_combout\ : std_logic;
SIGNAL \inst|reggy~272_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|aux[12]~25\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|aux[13]~26_combout\ : std_logic;
SIGNAL \inst|reggy~307_combout\ : std_logic;
SIGNAL \inst|reggy~308_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi6|sR:12:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi5|sR:12:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi6|sR:13:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi7|sR:12:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi7|sR:13:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|sR:13:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|resta|sR:13:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|negativo|Add0~25\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|negativo|Add0~26_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|resta|negativo|Add0~25\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|resta|negativo|Add0~26_combout\ : std_logic;
SIGNAL \inst|reggy~298_combout\ : std_logic;
SIGNAL \inst|reggy~299_combout\ : std_logic;
SIGNAL \inst|REG_D~14_combout\ : std_logic;
SIGNAL \inst|reggy~303_combout\ : std_logic;
SIGNAL \inst|reggy~304_combout\ : std_logic;
SIGNAL \inst|reggy~305_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~25\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~26_combout\ : std_logic;
SIGNAL \inst|reggy~306_combout\ : std_logic;
SIGNAL \inst|reggy~309_combout\ : std_logic;
SIGNAL \inst|reggy~81_q\ : std_logic;
SIGNAL \inst|reggy~269_combout\ : std_logic;
SIGNAL \inst|reggy~270_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|aux[13]~27\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|aux[14]~28_combout\ : std_logic;
SIGNAL \inst|reggy~353_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|resta|sR:14:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|sR:14:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|resta|negativo|Add0~27\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|resta|negativo|Add0~28_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|negativo|Add0~27\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|negativo|Add0~28_combout\ : std_logic;
SIGNAL \inst|reggy~346_combout\ : std_logic;
SIGNAL \inst|reggy~347_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi6|sR:13:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi7|sR:14:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|REG_D~19_combout\ : std_logic;
SIGNAL \inst|reggy~348_combout\ : std_logic;
SIGNAL \inst|reggy~349_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~27\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~28_combout\ : std_logic;
SIGNAL \inst|reggy~350_combout\ : std_logic;
SIGNAL \inst|reggy~351_combout\ : std_logic;
SIGNAL \inst|reggy~354_combout\ : std_logic;
SIGNAL \inst|reggy~50_q\ : std_logic;
SIGNAL \inst|reggy~289_combout\ : std_logic;
SIGNAL \inst|reggy~290_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|aux[14]~29\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|aux[15]~30_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|Mux0~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|Mux0~1_combout\ : std_logic;
SIGNAL \inst|alu1|Mux0~0_combout\ : std_logic;
SIGNAL \inst|reggy~293_combout\ : std_logic;
SIGNAL \inst|reggy~294_combout\ : std_logic;
SIGNAL \inst|reggy~295_combout\ : std_logic;
SIGNAL \inst|reggy~296_combout\ : std_logic;
SIGNAL \inst|reggy~51_q\ : std_logic;
SIGNAL \inst|reggy~251_combout\ : std_logic;
SIGNAL \inst|reggy~252_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|Yop~2_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|resta|sR:2:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|resta|negativo|Add0~4_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|resta|negativo|Sc[2]~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|negativo|Add0~4_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|negativo|Sc[2]~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|Mux13~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~4_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Sc[2]~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add0~1\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add0~3\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add0~5\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add0~7\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add0~9\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add0~11\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add0~13\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add0~15\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add0~17\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add0~18_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan0~2_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan0~1_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan0~3_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan0~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan0~4_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add0~19\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add0~21\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add0~23\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add0~25\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add0~26_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add0~28_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add0~24_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add0~29_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add0~22_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add0~30_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add0~20_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add0~31_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add0~32_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add0~16_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add0~33_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add0~14_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add0~34_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add0~12_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add0~35_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add0~10_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add0~36_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add0~8_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add0~37_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add0~6_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add0~38_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add0~4_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add0~39_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add0~2_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add0~40_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add0~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add0~41_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan1~1_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan1~3_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan1~5_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan1~7_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan1~9_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan1~11_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan1~13_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan1~15_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan1~17_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan1~19_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan1~21_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan1~23_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan1~25_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan1~27_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan1~28_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add1~25\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add1~27\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add1~29\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add1~31\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add1~33\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add1~35\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add1~37\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add1~39\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add1~41\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add1~43\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add1~44_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add1~57_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add1~42_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add1~58_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add1~40_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add1~59_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add1~38_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add1~60_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add1~36_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add1~61_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add1~34_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add1~62_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add1~32_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add1~63_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add1~30_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add1~64_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add1~28_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add1~65_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add1~26_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add1~52_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add1~24_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add1~53_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add2~1\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add2~3\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add2~5\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add2~7\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add2~9\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add2~11\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add2~13\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add2~15\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add2~17\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add2~19\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add2~21\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add2~22_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add1~45\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add1~47\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add1~49\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add1~50_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add1~54_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add1~48_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add1~55_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add1~46_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add1~56_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan2~1_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan2~3_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan2~5_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan2~7_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan2~9_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan2~11_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan2~13_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan2~15_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan2~17_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan2~19_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan2~21_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan2~23_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan2~25_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan2~27_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan2~28_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add2~30_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add2~20_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add2~31_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add2~18_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add2~32_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add2~16_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add2~33_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add2~14_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add2~34_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add2~12_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add2~35_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add2~10_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add2~36_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add2~8_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add2~37_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add2~6_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add2~38_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add2~4_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add2~39_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add2~2_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add2~40_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add2~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add2~41_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add3~1\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add3~3\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add3~5\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add3~7\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add3~9\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add3~11\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add3~13\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add3~15\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add3~17\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add3~19\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add3~21\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add3~23\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add3~24_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add2~23\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add2~25\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add2~26_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add2~28_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add2~24_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add2~29_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan3~1_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan3~3_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan3~5_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan3~7_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan3~9_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan3~11_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan3~13_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan3~15_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan3~17_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan3~19_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan3~21_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan3~23_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan3~25_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan3~27_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan3~28_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add3~29_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add3~25\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add3~26_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add3~28_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add3~22_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add3~30_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add3~20_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add3~31_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add3~18_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add3~32_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add3~16_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add3~33_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add3~14_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add3~34_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add3~12_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add3~35_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add3~10_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add3~36_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add3~8_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add3~37_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add3~6_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add3~38_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add3~4_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add3~39_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add3~2_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add3~40_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add3~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add3~41_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan4~1_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan4~3_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan4~5_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan4~7_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan4~9_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan4~11_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan4~13_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan4~15_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan4~17_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan4~19_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan4~21_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan4~23_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan4~25_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan4~27_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan4~28_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add4~1\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add4~3\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add4~5\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add4~7\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add4~9\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add4~11\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add4~13\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add4~15\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add4~17\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add4~19\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add4~21\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add4~23\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add4~25\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add4~26_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add4~28_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add4~24_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add4~29_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add4~22_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add4~30_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add4~20_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add4~31_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add4~18_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add4~32_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add4~16_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add4~33_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add4~14_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add4~34_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add4~12_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add4~35_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add4~10_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add4~36_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add4~8_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add4~37_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add4~6_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add4~38_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add4~4_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add4~39_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add4~2_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add4~40_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add4~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add4~41_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan5~1_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan5~3_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan5~5_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan5~7_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan5~9_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan5~11_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan5~13_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan5~15_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan5~17_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan5~19_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan5~21_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan5~23_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan5~25_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan5~27_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan5~28_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|Mux13~1_combout\ : std_logic;
SIGNAL \inst|alu1|Mux13~4_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|aux[1]~3\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|aux[2]~4_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|Mux13~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|Mux13~1_combout\ : std_logic;
SIGNAL \inst|alu1|Mux13~8_combout\ : std_logic;
SIGNAL \inst|alu1|Mux13~5_combout\ : std_logic;
SIGNAL \inst|alu1|Mux15~2_combout\ : std_logic;
SIGNAL \inst|alu1|comparador|comparaP:1:comp|gout~0_combout\ : std_logic;
SIGNAL \inst|alu1|comparador|comparaP:2:comp|gout~0_combout\ : std_logic;
SIGNAL \inst|alu1|comparador|comparaP:3:comp|gout~0_combout\ : std_logic;
SIGNAL \inst|alu1|comparador|comparaP:4:comp|gout~0_combout\ : std_logic;
SIGNAL \inst|alu1|comparador|comparaP:5:comp|gout~0_combout\ : std_logic;
SIGNAL \inst|alu1|comparador|comparaP:6:comp|gout~0_combout\ : std_logic;
SIGNAL \inst|alu1|comparador|comparaP:7:comp|gout~0_combout\ : std_logic;
SIGNAL \inst|alu1|comparador|comparaP:8:comp|gout~0_combout\ : std_logic;
SIGNAL \inst|alu1|comparador|comparaP:9:comp|gout~0_combout\ : std_logic;
SIGNAL \inst|alu1|comparador|comparaP:10:comp|gout~0_combout\ : std_logic;
SIGNAL \inst|alu1|comparador|comparaP:11:comp|gout~0_combout\ : std_logic;
SIGNAL \inst|alu1|comparador|comparaP:12:comp|gout~0_combout\ : std_logic;
SIGNAL \inst|alu1|comparador|comparaP:13:comp|gout~0_combout\ : std_logic;
SIGNAL \inst|alu1|comparador|comparaP:14:comp|gout~0_combout\ : std_logic;
SIGNAL \inst|alu1|Mux13~2_combout\ : std_logic;
SIGNAL \inst|alu1|Mux13~3_combout\ : std_logic;
SIGNAL \inst|alu1|Mux13~7_combout\ : std_logic;
SIGNAL \inst|reggy~242_combout\ : std_logic;
SIGNAL \inst|reggy~70_q\ : std_logic;
SIGNAL \inst|reggy~168_combout\ : std_logic;
SIGNAL \inst|reggy~169_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|aux[2]~5\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|aux[3]~6_combout\ : std_logic;
SIGNAL \inst|reggy~231_combout\ : std_logic;
SIGNAL \inst|reggy~232_combout\ : std_logic;
SIGNAL \inst|reggy~193_combout\ : std_logic;
SIGNAL \inst|reggy~194_combout\ : std_logic;
SIGNAL \inst|reggy~237_combout\ : std_logic;
SIGNAL \inst|reggy~238_combout\ : std_logic;
SIGNAL \inst|cat~6_combout\ : std_logic;
SIGNAL \inst|cat[0][3]~q\ : std_logic;
SIGNAL \inst|REG_D~7_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi3|sR:3:sP|Suma~2_combout\ : std_logic;
SIGNAL \inst|reggy~356_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~6_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|resta|negativo|Add0~6_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|negativo|Add0~6_combout\ : std_logic;
SIGNAL \inst|reggy~233_combout\ : std_logic;
SIGNAL \inst|reggy~234_combout\ : std_logic;
SIGNAL \inst|reggy~186_combout\ : std_logic;
SIGNAL \inst|reggy~235_combout\ : std_logic;
SIGNAL \inst|reggy~236_combout\ : std_logic;
SIGNAL \inst|reggy~239_combout\ : std_logic;
SIGNAL \inst|reggy~240_combout\ : std_logic;
SIGNAL \inst|reggy~55_q\ : std_logic;
SIGNAL \inst|reggy~166_combout\ : std_logic;
SIGNAL \inst|reggy~167_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|aux[3]~7\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|aux[4]~8_combout\ : std_logic;
SIGNAL \inst|reggy~221_combout\ : std_logic;
SIGNAL \inst|reggy~222_combout\ : std_logic;
SIGNAL \inst|cat~5_combout\ : std_logic;
SIGNAL \inst|cat[0][4]~q\ : std_logic;
SIGNAL \inst|REG_D~6_combout\ : std_logic;
SIGNAL \inst|reggy~227_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|negativo|Add0~8_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|resta|negativo|Add0~8_combout\ : std_logic;
SIGNAL \inst|reggy~223_combout\ : std_logic;
SIGNAL \inst|reggy~224_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi4|sR:4:sP|Suma~2_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~8_combout\ : std_logic;
SIGNAL \inst|reggy~225_combout\ : std_logic;
SIGNAL \inst|reggy~226_combout\ : std_logic;
SIGNAL \inst|reggy~228_combout\ : std_logic;
SIGNAL \inst|reggy~229_combout\ : std_logic;
SIGNAL \inst|reggy~230_combout\ : std_logic;
SIGNAL \inst|reggy~56_q\ : std_logic;
SIGNAL \inst|reggy~164_combout\ : std_logic;
SIGNAL \inst|reggy~165_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|aux[4]~9\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|aux[5]~10_combout\ : std_logic;
SIGNAL \inst|reggy~212_combout\ : std_logic;
SIGNAL \inst|reggy~217_combout\ : std_logic;
SIGNAL \inst|reggy~218_combout\ : std_logic;
SIGNAL \inst|cat~4_combout\ : std_logic;
SIGNAL \inst|cat[0][5]~q\ : std_logic;
SIGNAL \inst|REG_D~5_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|negativo|Add0~10_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|resta|negativo|Add0~10_combout\ : std_logic;
SIGNAL \inst|reggy~213_combout\ : std_logic;
SIGNAL \inst|reggy~214_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~10_combout\ : std_logic;
SIGNAL \inst|reggy~215_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi5|sR:5:sP|Suma~2_combout\ : std_logic;
SIGNAL \inst|reggy~216_combout\ : std_logic;
SIGNAL \inst|reggy~219_combout\ : std_logic;
SIGNAL \inst|reggy~220_combout\ : std_logic;
SIGNAL \inst|reggy~73_q\ : std_logic;
SIGNAL \inst|reggy~162_combout\ : std_logic;
SIGNAL \inst|reggy~163_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|aux[5]~11\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|aux[6]~12_combout\ : std_logic;
SIGNAL \inst|reggy~201_combout\ : std_logic;
SIGNAL \inst|reggy~202_combout\ : std_logic;
SIGNAL \inst|cat~3_combout\ : std_logic;
SIGNAL \inst|cat[0][6]~q\ : std_logic;
SIGNAL \inst|REG_D~4_combout\ : std_logic;
SIGNAL \inst|reggy~207_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|resta|negativo|Add0~12_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|negativo|Add0~12_combout\ : std_logic;
SIGNAL \inst|reggy~203_combout\ : std_logic;
SIGNAL \inst|reggy~204_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~12_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi6|sR:6:sP|Suma~2_combout\ : std_logic;
SIGNAL \inst|reggy~205_combout\ : std_logic;
SIGNAL \inst|reggy~206_combout\ : std_logic;
SIGNAL \inst|reggy~208_combout\ : std_logic;
SIGNAL \inst|reggy~209_combout\ : std_logic;
SIGNAL \inst|reggy~210_combout\ : std_logic;
SIGNAL \inst|reggy~42_q\ : std_logic;
SIGNAL \inst|reggy~160_combout\ : std_logic;
SIGNAL \inst|reggy~161_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|aux[6]~13\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|aux[7]~14_combout\ : std_logic;
SIGNAL \inst|reggy~184_combout\ : std_logic;
SIGNAL \inst|reggy~185_combout\ : std_logic;
SIGNAL \inst|reggy~195_combout\ : std_logic;
SIGNAL \inst|reggy~196_combout\ : std_logic;
SIGNAL \inst|cat~2_combout\ : std_logic;
SIGNAL \inst|cat[0][7]~q\ : std_logic;
SIGNAL \inst|REG_D~3_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi7|sR:7:sP|Suma~2_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|negativo|Add0~14_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|resta|negativo|Add0~14_combout\ : std_logic;
SIGNAL \inst|reggy~188_combout\ : std_logic;
SIGNAL \inst|reggy~189_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~14_combout\ : std_logic;
SIGNAL \inst|reggy~190_combout\ : std_logic;
SIGNAL \inst|reggy~191_combout\ : std_logic;
SIGNAL \inst|reggy~197_combout\ : std_logic;
SIGNAL \inst|reggy~200_combout\ : std_logic;
SIGNAL \inst|reggy~59_q\ : std_logic;
SIGNAL \inst|reggy~267_combout\ : std_logic;
SIGNAL \inst|reggy~268_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi7|sR:13:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi7|sR:14:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|Mux15~6_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|resta|negativo|Add0~0_combout\ : std_logic;
SIGNAL \inst|alu1|Mux15~8_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|negativo|Add0~0_combout\ : std_logic;
SIGNAL \inst|alu1|Mux15~9_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~0_combout\ : std_logic;
SIGNAL \inst|alu1|Mux15~7_combout\ : std_logic;
SIGNAL \inst|alu1|Mux15~10_combout\ : std_logic;
SIGNAL \inst|alu1|Mux15~13_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add5~1\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add5~3\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add5~5\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add5~7\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add5~9\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add5~11\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add5~13\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add5~15\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add5~17\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add5~19\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add5~21\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add5~23\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add5~24_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add5~29_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add5~22_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add5~30_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add5~20_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add5~31_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add5~18_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add5~32_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add5~16_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add5~33_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add5~14_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add5~34_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add5~12_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add5~35_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add5~10_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add5~36_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add5~8_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add5~37_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add5~6_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add5~38_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add5~4_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add5~39_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add5~2_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add5~40_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add5~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add5~41_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add6~1\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add6~3\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add6~5\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add6~7\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add6~9\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add6~11\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add6~13\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add6~15\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add6~17\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add6~19\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add6~21\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add6~23\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add6~25\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add6~26_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add5~25\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add5~26_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add5~28_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan6~1_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan6~3_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan6~5_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan6~7_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan6~9_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan6~11_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan6~13_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan6~15_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan6~17_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan6~19_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan6~21_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan6~23_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan6~25_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan6~27_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan6~28_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add6~28_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add6~24_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add6~29_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add6~22_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add6~30_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add6~20_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add6~31_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add6~18_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add6~32_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add6~16_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add6~33_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add6~14_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add6~34_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add6~12_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add6~35_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add6~10_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add6~36_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add6~8_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add6~37_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add6~6_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add6~38_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add6~4_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add6~39_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add6~2_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add6~40_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add6~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add6~41_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan7~1_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan7~3_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan7~5_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan7~7_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan7~9_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan7~11_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan7~13_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan7~15_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan7~17_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan7~19_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan7~21_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan7~23_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan7~25_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan7~27_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan7~28_combout\ : std_logic;
SIGNAL \inst|alu1|Mux15~3_combout\ : std_logic;
SIGNAL \inst|alu1|comparador|comparaP:1:comp|lout~0_combout\ : std_logic;
SIGNAL \inst|alu1|comparador|comparaP:2:comp|lout~0_combout\ : std_logic;
SIGNAL \inst|alu1|comparador|comparaP:3:comp|lout~0_combout\ : std_logic;
SIGNAL \inst|alu1|comparador|comparaP:4:comp|lout~0_combout\ : std_logic;
SIGNAL \inst|alu1|comparador|comparaP:5:comp|lout~0_combout\ : std_logic;
SIGNAL \inst|alu1|comparador|comparaP:6:comp|lout~0_combout\ : std_logic;
SIGNAL \inst|alu1|comparador|comparaP:7:comp|lout~0_combout\ : std_logic;
SIGNAL \inst|alu1|comparador|comparaP:8:comp|lout~0_combout\ : std_logic;
SIGNAL \inst|alu1|comparador|comparaP:9:comp|lout~0_combout\ : std_logic;
SIGNAL \inst|alu1|comparador|comparaP:10:comp|lout~0_combout\ : std_logic;
SIGNAL \inst|alu1|comparador|comparaP:11:comp|lout~0_combout\ : std_logic;
SIGNAL \inst|alu1|comparador|comparaP:12:comp|lout~0_combout\ : std_logic;
SIGNAL \inst|alu1|comparador|comparaP:13:comp|lout~0_combout\ : std_logic;
SIGNAL \inst|alu1|comparador|comparaP:14:comp|lout~0_combout\ : std_logic;
SIGNAL \inst|alu1|Mux15~4_combout\ : std_logic;
SIGNAL \inst|alu1|Mux15~14_combout\ : std_logic;
SIGNAL \inst|cat~9_combout\ : std_logic;
SIGNAL \inst|cat[0][0]~q\ : std_logic;
SIGNAL \inst|REG_D~11_combout\ : std_logic;
SIGNAL \inst|REG_D~12_combout\ : std_logic;
SIGNAL \inst|reggy~245_combout\ : std_logic;
SIGNAL \inst|reggy~246_combout\ : std_logic;
SIGNAL \inst|reggy~36_q\ : std_logic;
SIGNAL \inst|reggy~172_combout\ : std_logic;
SIGNAL \inst|reggy~173_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|aux[0]~1_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|aux[1]~2_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|Mux14~1_combout\ : std_logic;
SIGNAL \inst|alu1|Mux14~2_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~2_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Sc[1]~1_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|resta|negativo|Add0~2_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|resta|negativo|Sc[1]~1_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|negativo|Add0~2_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|negativo|Sc[1]~1_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|Mux14~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|Mux14~1_combout\ : std_logic;
SIGNAL \inst|alu1|Mux14~3_combout\ : std_logic;
SIGNAL \inst|alu1|Mux14~7_combout\ : std_logic;
SIGNAL \inst|alu1|Mux14~4_combout\ : std_logic;
SIGNAL \inst|alu1|Mux14~5_combout\ : std_logic;
SIGNAL \inst|alu1|Mux14~6_combout\ : std_logic;
SIGNAL \inst|reggu[0][0]~2_combout\ : std_logic;
SIGNAL \inst|reggu[0][0]~3_combout\ : std_logic;
SIGNAL \inst|reggu[0][1]~q\ : std_logic;
SIGNAL \inst|reggu[0][0]~q\ : std_logic;
SIGNAL \inst|OFFSET[0]~0_combout\ : std_logic;
SIGNAL \inst|Selector30~0_combout\ : std_logic;
SIGNAL \inst|Mux4~0_combout\ : std_logic;
SIGNAL \inst|Selector32~0_combout\ : std_logic;
SIGNAL \inst|PC[0]~15\ : std_logic;
SIGNAL \inst|PC[1]~17_combout\ : std_logic;
SIGNAL \inst|Selector31~0_combout\ : std_logic;
SIGNAL \inst|Mux2~0_combout\ : std_logic;
SIGNAL \inst|Equal1~0_combout\ : std_logic;
SIGNAL \inst|pr_state~8_combout\ : std_logic;
SIGNAL \inst|pr_state.state3~q\ : std_logic;
SIGNAL \inst|enable~0_combout\ : std_logic;
SIGNAL \inst|enable~q\ : std_logic;
SIGNAL \inst|cat~0_combout\ : std_logic;
SIGNAL \inst|cat[0][8]~q\ : std_logic;
SIGNAL \inst|PC\ : std_logic_vector(13 DOWNTO 0);
SIGNAL \inst|pushed\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|i\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst|OFFSET\ : std_logic_vector(13 DOWNTO 0);
SIGNAL \inst|MAR\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst|mov\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \inst|REG_D\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst|aux\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \inst|REG_A\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst|OP\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|REG_B\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst|alu1|unidad_aritmetica|suma|Xop\ : std_logic_vector(14 DOWNTO 0);
SIGNAL \inst|alu1|unidad_aritmetica|mult|inter\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \inst|ALT_INV_mov\ : std_logic_vector(2 DOWNTO 2);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

A <= ww_A;
ww_clk <= clk;
ww_rst <= rst;
ww_put <= put;
ww_up <= up;
ww_down <= down;
ww_izq <= izq;
ww_der <= der;
B <= ww_B;
instrucciones <= ww_instrucciones;
mov <= ww_mov;
p1 <= ww_p1;
p2 <= ww_p2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\rst~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rst~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\inst|ALT_INV_mov\(2) <= NOT \inst|mov\(2);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X34_Y3_N23
\A[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \A[11]~output_o\);

-- Location: IOOBUF_X34_Y2_N23
\A[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \A[10]~output_o\);

-- Location: IOOBUF_X34_Y9_N2
\A[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \A[9]~output_o\);

-- Location: IOOBUF_X11_Y24_N16
\A[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|cat[0][8]~q\,
	devoe => ww_devoe,
	o => \A[8]~output_o\);

-- Location: IOOBUF_X16_Y24_N2
\A[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|cat[0][7]~q\,
	devoe => ww_devoe,
	o => \A[7]~output_o\);

-- Location: IOOBUF_X16_Y24_N16
\A[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|cat[0][6]~q\,
	devoe => ww_devoe,
	o => \A[6]~output_o\);

-- Location: IOOBUF_X0_Y21_N9
\A[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|cat[0][5]~q\,
	devoe => ww_devoe,
	o => \A[5]~output_o\);

-- Location: IOOBUF_X13_Y24_N16
\A[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|cat[0][4]~q\,
	devoe => ww_devoe,
	o => \A[4]~output_o\);

-- Location: IOOBUF_X9_Y24_N9
\A[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|cat[0][3]~q\,
	devoe => ww_devoe,
	o => \A[3]~output_o\);

-- Location: IOOBUF_X16_Y0_N23
\A[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|cat[0][2]~q\,
	devoe => ww_devoe,
	o => \A[2]~output_o\);

-- Location: IOOBUF_X18_Y0_N23
\A[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|cat[0][1]~q\,
	devoe => ww_devoe,
	o => \A[1]~output_o\);

-- Location: IOOBUF_X18_Y0_N16
\A[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|cat[0][0]~q\,
	devoe => ww_devoe,
	o => \A[0]~output_o\);

-- Location: IOOBUF_X30_Y0_N9
\B[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \B[11]~output_o\);

-- Location: IOOBUF_X32_Y0_N16
\B[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \B[10]~output_o\);

-- Location: IOOBUF_X7_Y0_N2
\B[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \B[9]~output_o\);

-- Location: IOOBUF_X30_Y0_N23
\B[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \B[8]~output_o\);

-- Location: IOOBUF_X28_Y0_N23
\B[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \B[7]~output_o\);

-- Location: IOOBUF_X34_Y17_N16
\B[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \B[6]~output_o\);

-- Location: IOOBUF_X0_Y7_N2
\B[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \B[5]~output_o\);

-- Location: IOOBUF_X28_Y0_N2
\B[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \B[4]~output_o\);

-- Location: IOOBUF_X30_Y0_N2
\B[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|pushed\(3),
	devoe => ww_devoe,
	o => \B[3]~output_o\);

-- Location: IOOBUF_X30_Y24_N23
\B[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|pushed\(2),
	devoe => ww_devoe,
	o => \B[2]~output_o\);

-- Location: IOOBUF_X23_Y24_N2
\B[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|pushed\(1),
	devoe => ww_devoe,
	o => \B[1]~output_o\);

-- Location: IOOBUF_X23_Y24_N9
\B[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|pushed\(0),
	devoe => ww_devoe,
	o => \B[0]~output_o\);

-- Location: IOOBUF_X23_Y0_N9
\instrucciones[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|MAR\(11),
	devoe => ww_devoe,
	o => \instrucciones[11]~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\instrucciones[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|MAR\(10),
	devoe => ww_devoe,
	o => \instrucciones[10]~output_o\);

-- Location: IOOBUF_X23_Y0_N16
\instrucciones[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|MAR\(9),
	devoe => ww_devoe,
	o => \instrucciones[9]~output_o\);

-- Location: IOOBUF_X34_Y9_N23
\instrucciones[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|MAR\(8),
	devoe => ww_devoe,
	o => \instrucciones[8]~output_o\);

-- Location: IOOBUF_X1_Y0_N23
\instrucciones[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \instrucciones[7]~output_o\);

-- Location: IOOBUF_X5_Y0_N16
\instrucciones[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \instrucciones[6]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\instrucciones[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|MAR\(5),
	devoe => ww_devoe,
	o => \instrucciones[5]~output_o\);

-- Location: IOOBUF_X0_Y9_N9
\instrucciones[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|MAR\(4),
	devoe => ww_devoe,
	o => \instrucciones[4]~output_o\);

-- Location: IOOBUF_X34_Y10_N9
\instrucciones[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \instrucciones[3]~output_o\);

-- Location: IOOBUF_X0_Y5_N16
\instrucciones[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \instrucciones[2]~output_o\);

-- Location: IOOBUF_X5_Y24_N9
\instrucciones[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|MAR\(1),
	devoe => ww_devoe,
	o => \instrucciones[1]~output_o\);

-- Location: IOOBUF_X13_Y0_N16
\instrucciones[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|MAR\(0),
	devoe => ww_devoe,
	o => \instrucciones[0]~output_o\);

-- Location: IOOBUF_X34_Y17_N2
\mov[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|mov\(8),
	devoe => ww_devoe,
	o => \mov[8]~output_o\);

-- Location: IOOBUF_X28_Y24_N2
\mov[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|mov\(7),
	devoe => ww_devoe,
	o => \mov[7]~output_o\);

-- Location: IOOBUF_X18_Y24_N16
\mov[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|mov\(6),
	devoe => ww_devoe,
	o => \mov[6]~output_o\);

-- Location: IOOBUF_X18_Y24_N23
\mov[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|mov\(5),
	devoe => ww_devoe,
	o => \mov[5]~output_o\);

-- Location: IOOBUF_X7_Y24_N2
\mov[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|mov\(4),
	devoe => ww_devoe,
	o => \mov[4]~output_o\);

-- Location: IOOBUF_X16_Y24_N23
\mov[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|mov\(3),
	devoe => ww_devoe,
	o => \mov[3]~output_o\);

-- Location: IOOBUF_X16_Y24_N9
\mov[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_mov\(2),
	devoe => ww_devoe,
	o => \mov[2]~output_o\);

-- Location: IOOBUF_X23_Y24_N16
\mov[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|mov\(1),
	devoe => ww_devoe,
	o => \mov[1]~output_o\);

-- Location: IOOBUF_X13_Y24_N23
\mov[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|mov\(0),
	devoe => ww_devoe,
	o => \mov[0]~output_o\);

-- Location: IOOBUF_X34_Y19_N16
\p1[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \p1[8]~output_o\);

-- Location: IOOBUF_X34_Y4_N16
\p1[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \p1[7]~output_o\);

-- Location: IOOBUF_X34_Y9_N16
\p1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \p1[6]~output_o\);

-- Location: IOOBUF_X32_Y0_N9
\p1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \p1[5]~output_o\);

-- Location: IOOBUF_X1_Y24_N9
\p1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \p1[4]~output_o\);

-- Location: IOOBUF_X7_Y24_N9
\p1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \p1[3]~output_o\);

-- Location: IOOBUF_X0_Y6_N23
\p1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \p1[2]~output_o\);

-- Location: IOOBUF_X0_Y8_N16
\p1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \p1[1]~output_o\);

-- Location: IOOBUF_X34_Y7_N9
\p1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \p1[0]~output_o\);

-- Location: IOOBUF_X13_Y0_N2
\p2[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \p2[8]~output_o\);

-- Location: IOOBUF_X34_Y9_N9
\p2[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \p2[7]~output_o\);

-- Location: IOOBUF_X25_Y0_N2
\p2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \p2[6]~output_o\);

-- Location: IOOBUF_X34_Y4_N23
\p2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \p2[5]~output_o\);

-- Location: IOOBUF_X0_Y18_N23
\p2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \p2[4]~output_o\);

-- Location: IOOBUF_X0_Y23_N16
\p2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \p2[3]~output_o\);

-- Location: IOOBUF_X3_Y24_N23
\p2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \p2[2]~output_o\);

-- Location: IOOBUF_X1_Y24_N2
\p2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \p2[1]~output_o\);

-- Location: IOOBUF_X34_Y18_N2
\p2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \p2[0]~output_o\);

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

-- Location: LCCOMB_X17_Y11_N4
\inst|PC[0]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|PC[0]~14_combout\ = \inst|PC\(0) $ (VCC)
-- \inst|PC[0]~15\ = CARRY(\inst|PC\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|PC\(0),
	datad => VCC,
	combout => \inst|PC[0]~14_combout\,
	cout => \inst|PC[0]~15\);

-- Location: LCCOMB_X17_Y11_N6
\inst|PC[1]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|PC[1]~17_combout\ = (\inst|PC\(1) & (!\inst|PC[0]~15\)) # (!\inst|PC\(1) & ((\inst|PC[0]~15\) # (GND)))
-- \inst|PC[1]~18\ = CARRY((!\inst|PC[0]~15\) # (!\inst|PC\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC\(1),
	datad => VCC,
	cin => \inst|PC[0]~15\,
	combout => \inst|PC[1]~17_combout\,
	cout => \inst|PC[1]~18\);

-- Location: LCCOMB_X17_Y11_N8
\inst|PC[2]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|PC[2]~19_combout\ = (\inst|PC\(2) & (\inst|PC[1]~18\ $ (GND))) # (!\inst|PC\(2) & (!\inst|PC[1]~18\ & VCC))
-- \inst|PC[2]~20\ = CARRY((\inst|PC\(2) & !\inst|PC[1]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|PC\(2),
	datad => VCC,
	cin => \inst|PC[1]~18\,
	combout => \inst|PC[2]~19_combout\,
	cout => \inst|PC[2]~20\);

-- Location: LCCOMB_X17_Y11_N10
\inst|PC[3]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|PC[3]~21_combout\ = (\inst|PC\(3) & (!\inst|PC[2]~20\)) # (!\inst|PC\(3) & ((\inst|PC[2]~20\) # (GND)))
-- \inst|PC[3]~22\ = CARRY((!\inst|PC[2]~20\) # (!\inst|PC\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC\(3),
	datad => VCC,
	cin => \inst|PC[2]~20\,
	combout => \inst|PC[3]~21_combout\,
	cout => \inst|PC[3]~22\);

-- Location: LCCOMB_X16_Y11_N28
\inst|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux5~0_combout\ = (\inst|PC\(3) & ((\inst|PC\(2) & ((!\inst|PC\(0)))) # (!\inst|PC\(2) & (\inst|PC\(1) & \inst|PC\(0))))) # (!\inst|PC\(3) & (\inst|PC\(1) $ (((!\inst|PC\(2) & \inst|PC\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC\(1),
	datab => \inst|PC\(2),
	datac => \inst|PC\(3),
	datad => \inst|PC\(0),
	combout => \inst|Mux5~0_combout\);

-- Location: IOIBUF_X0_Y11_N15
\rst~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: LCCOMB_X17_Y12_N30
\inst|pr_state.state1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|pr_state.state1~0_combout\ = !\inst|pr_state.state0~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|pr_state.state0~q\,
	combout => \inst|pr_state.state1~0_combout\);

-- Location: CLKCTRL_G4
\rst~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rst~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rst~inputclkctrl_outclk\);

-- Location: FF_X17_Y12_N31
\inst|pr_state.state1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|pr_state.state1~0_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \inst|enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|pr_state.state1~q\);

-- Location: FF_X17_Y12_N23
\inst|pr_state.state2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|pr_state.state1~q\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst|enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|pr_state.state2~q\);

-- Location: LCCOMB_X17_Y12_N28
\inst|Selector14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector14~0_combout\ = (!\inst|pr_state.state3~q\ & ((\inst|Equal1~0_combout\) # (!\inst|pr_state.state2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pr_state.state2~q\,
	datab => \inst|pr_state.state3~q\,
	datac => \inst|Equal1~0_combout\,
	combout => \inst|Selector14~0_combout\);

-- Location: FF_X17_Y12_N29
\inst|pr_state.state0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Selector14~0_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \inst|enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|pr_state.state0~q\);

-- Location: LCCOMB_X17_Y12_N20
\inst|MAR[11]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|MAR[11]~0_combout\ = (\inst|enable~q\ & (\rst~input_o\ & !\inst|pr_state.state0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|enable~q\,
	datac => \rst~input_o\,
	datad => \inst|pr_state.state0~q\,
	combout => \inst|MAR[11]~0_combout\);

-- Location: FF_X16_Y11_N29
\inst|MAR[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Mux5~0_combout\,
	ena => \inst|MAR[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MAR\(4));

-- Location: LCCOMB_X16_Y11_N16
\inst|Selector29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector29~0_combout\ = (\inst|OFFSET[0]~0_combout\ & (((\inst|PC\(3))))) # (!\inst|OFFSET[0]~0_combout\ & (!\inst|MAR\(4) & ((!\inst|MAR\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|OFFSET[0]~0_combout\,
	datab => \inst|MAR\(4),
	datac => \inst|PC\(3),
	datad => \inst|MAR\(5),
	combout => \inst|Selector29~0_combout\);

-- Location: LCCOMB_X16_Y11_N10
\inst|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux0~0_combout\ = (\inst|PC\(1) & ((\inst|PC\(3)) # (\inst|PC\(2) $ (\inst|PC\(0))))) # (!\inst|PC\(1) & (((\inst|PC\(0)) # (!\inst|PC\(3))) # (!\inst|PC\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC\(1),
	datab => \inst|PC\(2),
	datac => \inst|PC\(3),
	datad => \inst|PC\(0),
	combout => \inst|Mux0~0_combout\);

-- Location: FF_X16_Y11_N11
\inst|MAR[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Mux0~0_combout\,
	ena => \inst|MAR[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MAR\(11));

-- Location: LCCOMB_X16_Y11_N8
\inst|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux3~0_combout\ = (\inst|PC\(2) & (\inst|PC\(1) & ((\inst|PC\(0))))) # (!\inst|PC\(2) & ((\inst|PC\(3) & ((!\inst|PC\(0)))) # (!\inst|PC\(3) & (\inst|PC\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC\(1),
	datab => \inst|PC\(2),
	datac => \inst|PC\(3),
	datad => \inst|PC\(0),
	combout => \inst|Mux3~0_combout\);

-- Location: FF_X16_Y11_N9
\inst|MAR[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Mux3~0_combout\,
	ena => \inst|MAR[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MAR\(8));

-- Location: LCCOMB_X17_Y12_N26
\inst|Equal3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal3~0_combout\ = (\inst|MAR\(11) & (\inst|MAR\(10) & (\inst|MAR\(9) & !\inst|MAR\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MAR\(11),
	datab => \inst|MAR\(10),
	datac => \inst|MAR\(9),
	datad => \inst|MAR\(8),
	combout => \inst|Equal3~0_combout\);

-- Location: LCCOMB_X17_Y12_N8
\inst|OFFSET[13]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|OFFSET[13]~1_combout\ = (\inst|pr_state.state0~q\ & (\inst|enable~q\ & (\rst~input_o\ & !\inst|pr_state.state3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pr_state.state0~q\,
	datab => \inst|enable~q\,
	datac => \rst~input_o\,
	datad => \inst|pr_state.state3~q\,
	combout => \inst|OFFSET[13]~1_combout\);

-- Location: LCCOMB_X17_Y12_N6
\inst|OFFSET[13]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|OFFSET[13]~2_combout\ = (\inst|Equal3~0_combout\ & \inst|OFFSET[13]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal3~0_combout\,
	datac => \inst|OFFSET[13]~1_combout\,
	combout => \inst|OFFSET[13]~2_combout\);

-- Location: FF_X16_Y11_N17
\inst|OFFSET[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Selector29~0_combout\,
	sclr => \inst|pr_state.state2~q\,
	ena => \inst|OFFSET[13]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|OFFSET\(3));

-- Location: LCCOMB_X17_Y12_N4
\inst|PC[13]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|PC[13]~16_combout\ = (\inst|enable~q\ & (!\inst|pr_state.state1~q\ & ((\inst|Equal3~0_combout\) # (!\inst|pr_state.state2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal3~0_combout\,
	datab => \inst|enable~q\,
	datac => \inst|pr_state.state1~q\,
	datad => \inst|pr_state.state2~q\,
	combout => \inst|PC[13]~16_combout\);

-- Location: FF_X17_Y11_N11
\inst|PC[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|PC[3]~21_combout\,
	asdata => \inst|OFFSET\(3),
	clrn => \rst~inputclkctrl_outclk\,
	sclr => \inst|pr_state.state3~q\,
	sload => \inst|pr_state.state2~q\,
	ena => \inst|PC[13]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC\(3));

-- Location: LCCOMB_X16_Y11_N24
\inst|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux1~0_combout\ = (\inst|PC\(0) & (((\inst|PC\(3))) # (!\inst|PC\(1)))) # (!\inst|PC\(0) & ((\inst|PC\(2)) # (\inst|PC\(1) $ (!\inst|PC\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC\(1),
	datab => \inst|PC\(2),
	datac => \inst|PC\(3),
	datad => \inst|PC\(0),
	combout => \inst|Mux1~0_combout\);

-- Location: FF_X16_Y11_N25
\inst|MAR[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Mux1~0_combout\,
	ena => \inst|MAR[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MAR\(10));

-- Location: LCCOMB_X17_Y12_N10
\inst|OP[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|OP[3]~1_combout\ = ((\inst|MAR\(9)) # (!\inst|MAR\(11))) # (!\inst|MAR\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|MAR\(10),
	datac => \inst|MAR\(9),
	datad => \inst|MAR\(11),
	combout => \inst|OP[3]~1_combout\);

-- Location: LCCOMB_X16_Y11_N22
\inst|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux6~0_combout\ = (\inst|PC\(3) & (!\inst|PC\(1) & ((\inst|PC\(0))))) # (!\inst|PC\(3) & (((\inst|PC\(2) & !\inst|PC\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC\(1),
	datab => \inst|PC\(2),
	datac => \inst|PC\(3),
	datad => \inst|PC\(0),
	combout => \inst|Mux6~0_combout\);

-- Location: FF_X16_Y11_N23
\inst|MAR[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Mux6~0_combout\,
	ena => \inst|MAR[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MAR\(1));

-- Location: LCCOMB_X17_Y13_N14
\inst|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal2~0_combout\ = (!\inst|MAR\(9) & (\inst|MAR\(11) & (\inst|MAR\(10) & \inst|MAR\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MAR\(9),
	datab => \inst|MAR\(11),
	datac => \inst|MAR\(10),
	datad => \inst|MAR\(8),
	combout => \inst|Equal2~0_combout\);

-- Location: LCCOMB_X17_Y13_N24
\inst|Equal5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal5~0_combout\ = (!\inst|MAR\(9) & (\inst|MAR\(11) & (\inst|MAR\(10) & !\inst|MAR\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MAR\(9),
	datab => \inst|MAR\(11),
	datac => \inst|MAR\(10),
	datad => \inst|MAR\(8),
	combout => \inst|Equal5~0_combout\);

-- Location: LCCOMB_X16_Y13_N8
\inst|reggy~154\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~154_combout\ = (\inst|MAR\(5)) # (\inst|Equal5~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|MAR\(5),
	datad => \inst|Equal5~0_combout\,
	combout => \inst|reggy~154_combout\);

-- Location: LCCOMB_X16_Y11_N12
\inst|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux7~0_combout\ = (\inst|PC\(3) & (!\inst|PC\(1) & (\inst|PC\(2) $ (!\inst|PC\(0))))) # (!\inst|PC\(3) & (((!\inst|PC\(2) & \inst|PC\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC\(1),
	datab => \inst|PC\(2),
	datac => \inst|PC\(3),
	datad => \inst|PC\(0),
	combout => \inst|Mux7~0_combout\);

-- Location: FF_X16_Y11_N13
\inst|MAR[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Mux7~0_combout\,
	ena => \inst|MAR[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MAR\(0));

-- Location: LCCOMB_X17_Y13_N6
\inst|reggy~178\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~178_combout\ = (\inst|MAR\(8)) # (((!\inst|MAR\(1)) # (!\inst|MAR\(10))) # (!\inst|MAR\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MAR\(8),
	datab => \inst|MAR\(0),
	datac => \inst|MAR\(10),
	datad => \inst|MAR\(1),
	combout => \inst|reggy~178_combout\);

-- Location: LCCOMB_X17_Y13_N18
\inst|reggy~176\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~176_combout\ = (\rst~input_o\ & (\inst|enable~q\ & \inst|pr_state.state2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \inst|enable~q\,
	datad => \inst|pr_state.state2~q\,
	combout => \inst|reggy~176_combout\);

-- Location: LCCOMB_X17_Y13_N28
\inst|reggy~177\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~177_combout\ = ((\inst|MAR\(9) & (\inst|MAR\(10) $ (!\inst|MAR\(8))))) # (!\inst|MAR\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MAR\(9),
	datab => \inst|MAR\(11),
	datac => \inst|MAR\(10),
	datad => \inst|MAR\(8),
	combout => \inst|reggy~177_combout\);

-- Location: LCCOMB_X16_Y13_N22
\inst|reggy~179\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~179_combout\ = (\inst|reggy~176_combout\ & ((\inst|reggy~177_combout\) # ((\inst|reggy~178_combout\ & !\inst|MAR\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy~178_combout\,
	datab => \inst|reggy~176_combout\,
	datac => \inst|MAR\(9),
	datad => \inst|reggy~177_combout\,
	combout => \inst|reggy~179_combout\);

-- Location: LCCOMB_X16_Y13_N16
\inst|reggy~180\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~180_combout\ = (\inst|MAR\(5) & (!\inst|MAR\(4) & \inst|reggy~179_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|MAR\(5),
	datac => \inst|MAR\(4),
	datad => \inst|reggy~179_combout\,
	combout => \inst|reggy~180_combout\);

-- Location: FF_X12_Y17_N21
\inst|reggy~53\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~244_combout\,
	sload => VCC,
	ena => \inst|reggy~180_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy~53_q\);

-- Location: LCCOMB_X12_Y17_N22
\inst|reggy~21feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~21feeder_combout\ = \inst|reggy~244_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|reggy~244_combout\,
	combout => \inst|reggy~21feeder_combout\);

-- Location: LCCOMB_X16_Y13_N4
\inst|reggy~182\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~182_combout\ = (!\inst|MAR\(5) & (!\inst|MAR\(4) & \inst|reggy~179_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|MAR\(5),
	datac => \inst|MAR\(4),
	datad => \inst|reggy~179_combout\,
	combout => \inst|reggy~182_combout\);

-- Location: FF_X12_Y17_N23
\inst|reggy~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|reggy~21feeder_combout\,
	ena => \inst|reggy~182_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy~21_q\);

-- Location: LCCOMB_X16_Y13_N30
\inst|reggy~155\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~155_combout\ = (\inst|MAR\(4)) # (\inst|Equal5~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|MAR\(4),
	datad => \inst|Equal5~0_combout\,
	combout => \inst|reggy~155_combout\);

-- Location: LCCOMB_X12_Y17_N24
\inst|reggy~170\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~170_combout\ = (\inst|reggy~154_combout\ & ((\inst|reggy~53_q\) # ((\inst|reggy~155_combout\)))) # (!\inst|reggy~154_combout\ & (((\inst|reggy~21_q\ & !\inst|reggy~155_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy~154_combout\,
	datab => \inst|reggy~53_q\,
	datac => \inst|reggy~21_q\,
	datad => \inst|reggy~155_combout\,
	combout => \inst|reggy~170_combout\);

-- Location: LCCOMB_X16_Y13_N14
\inst|reggy~181\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~181_combout\ = (!\inst|MAR\(5) & (\inst|MAR\(4) & \inst|reggy~179_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|MAR\(5),
	datac => \inst|MAR\(4),
	datad => \inst|reggy~179_combout\,
	combout => \inst|reggy~181_combout\);

-- Location: FF_X13_Y17_N21
\inst|reggy~37\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~244_combout\,
	sload => VCC,
	ena => \inst|reggy~181_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy~37_q\);

-- Location: LCCOMB_X19_Y15_N24
\inst|reggy~171\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~171_combout\ = (\inst|reggy~170_combout\ & ((\inst|reggy~69_q\) # ((!\inst|reggy~155_combout\)))) # (!\inst|reggy~170_combout\ & (((\inst|reggy~155_combout\ & \inst|reggy~37_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy~170_combout\,
	datab => \inst|reggy~69_q\,
	datac => \inst|reggy~155_combout\,
	datad => \inst|reggy~37_q\,
	combout => \inst|reggy~171_combout\);

-- Location: IOIBUF_X28_Y24_N8
\up~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_up,
	o => \up~input_o\);

-- Location: IOIBUF_X28_Y24_N22
\izq~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_izq,
	o => \izq~input_o\);

-- Location: IOIBUF_X34_Y18_N15
\down~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_down,
	o => \down~input_o\);

-- Location: LCCOMB_X24_Y20_N8
\inst|process_0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|process_0~2_combout\ = (!\up~input_o\ & (!\izq~input_o\ & !\down~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \up~input_o\,
	datab => \izq~input_o\,
	datac => \down~input_o\,
	combout => \inst|process_0~2_combout\);

-- Location: IOIBUF_X28_Y24_N15
\der~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_der,
	o => \der~input_o\);

-- Location: LCCOMB_X24_Y20_N12
\inst|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|process_0~0_combout\ = (!\up~input_o\ & (!\izq~input_o\ & (!\down~input_o\ & !\der~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \up~input_o\,
	datab => \izq~input_o\,
	datac => \down~input_o\,
	datad => \der~input_o\,
	combout => \inst|process_0~0_combout\);

-- Location: LCCOMB_X17_Y11_N12
\inst|PC[4]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|PC[4]~23_combout\ = (\inst|PC\(4) & (\inst|PC[3]~22\ $ (GND))) # (!\inst|PC\(4) & (!\inst|PC[3]~22\ & VCC))
-- \inst|PC[4]~24\ = CARRY((\inst|PC\(4) & !\inst|PC[3]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC\(4),
	datad => VCC,
	cin => \inst|PC[3]~22\,
	combout => \inst|PC[4]~23_combout\,
	cout => \inst|PC[4]~24\);

-- Location: LCCOMB_X16_Y11_N14
\inst|Selector28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector28~0_combout\ = (\inst|OFFSET[0]~0_combout\ & (\inst|PC\(4) & !\inst|pr_state.state2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|OFFSET[0]~0_combout\,
	datac => \inst|PC\(4),
	datad => \inst|pr_state.state2~q\,
	combout => \inst|Selector28~0_combout\);

-- Location: FF_X16_Y11_N15
\inst|OFFSET[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Selector28~0_combout\,
	ena => \inst|OFFSET[13]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|OFFSET\(4));

-- Location: FF_X17_Y11_N13
\inst|PC[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|PC[4]~23_combout\,
	asdata => \inst|OFFSET\(4),
	clrn => \rst~inputclkctrl_outclk\,
	sclr => \inst|pr_state.state3~q\,
	sload => \inst|pr_state.state2~q\,
	ena => \inst|PC[13]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC\(4));

-- Location: LCCOMB_X17_Y11_N14
\inst|PC[5]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|PC[5]~25_combout\ = (\inst|PC\(5) & (!\inst|PC[4]~24\)) # (!\inst|PC\(5) & ((\inst|PC[4]~24\) # (GND)))
-- \inst|PC[5]~26\ = CARRY((!\inst|PC[4]~24\) # (!\inst|PC\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|PC\(5),
	datad => VCC,
	cin => \inst|PC[4]~24\,
	combout => \inst|PC[5]~25_combout\,
	cout => \inst|PC[5]~26\);

-- Location: LCCOMB_X16_Y11_N4
\inst|Selector27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector27~0_combout\ = (\inst|OFFSET[0]~0_combout\ & (\inst|PC\(5) & !\inst|pr_state.state2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|OFFSET[0]~0_combout\,
	datac => \inst|PC\(5),
	datad => \inst|pr_state.state2~q\,
	combout => \inst|Selector27~0_combout\);

-- Location: FF_X16_Y11_N5
\inst|OFFSET[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Selector27~0_combout\,
	ena => \inst|OFFSET[13]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|OFFSET\(5));

-- Location: FF_X17_Y11_N15
\inst|PC[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|PC[5]~25_combout\,
	asdata => \inst|OFFSET\(5),
	clrn => \rst~inputclkctrl_outclk\,
	sclr => \inst|pr_state.state3~q\,
	sload => \inst|pr_state.state2~q\,
	ena => \inst|PC[13]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC\(5));

-- Location: LCCOMB_X17_Y11_N16
\inst|PC[6]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|PC[6]~27_combout\ = (\inst|PC\(6) & (\inst|PC[5]~26\ $ (GND))) # (!\inst|PC\(6) & (!\inst|PC[5]~26\ & VCC))
-- \inst|PC[6]~28\ = CARRY((\inst|PC\(6) & !\inst|PC[5]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|PC\(6),
	datad => VCC,
	cin => \inst|PC[5]~26\,
	combout => \inst|PC[6]~27_combout\,
	cout => \inst|PC[6]~28\);

-- Location: LCCOMB_X16_Y11_N18
\inst|Selector26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector26~0_combout\ = (!\inst|pr_state.state2~q\ & (\inst|OFFSET[0]~0_combout\ & \inst|PC\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pr_state.state2~q\,
	datac => \inst|OFFSET[0]~0_combout\,
	datad => \inst|PC\(6),
	combout => \inst|Selector26~0_combout\);

-- Location: FF_X16_Y11_N19
\inst|OFFSET[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Selector26~0_combout\,
	ena => \inst|OFFSET[13]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|OFFSET\(6));

-- Location: FF_X17_Y11_N17
\inst|PC[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|PC[6]~27_combout\,
	asdata => \inst|OFFSET\(6),
	clrn => \rst~inputclkctrl_outclk\,
	sclr => \inst|pr_state.state3~q\,
	sload => \inst|pr_state.state2~q\,
	ena => \inst|PC[13]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC\(6));

-- Location: LCCOMB_X17_Y11_N18
\inst|PC[7]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|PC[7]~29_combout\ = (\inst|PC\(7) & (!\inst|PC[6]~28\)) # (!\inst|PC\(7) & ((\inst|PC[6]~28\) # (GND)))
-- \inst|PC[7]~30\ = CARRY((!\inst|PC[6]~28\) # (!\inst|PC\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|PC\(7),
	datad => VCC,
	cin => \inst|PC[6]~28\,
	combout => \inst|PC[7]~29_combout\,
	cout => \inst|PC[7]~30\);

-- Location: LCCOMB_X18_Y11_N20
\inst|Selector25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector25~0_combout\ = (!\inst|pr_state.state2~q\ & (\inst|OFFSET[0]~0_combout\ & \inst|PC\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|pr_state.state2~q\,
	datac => \inst|OFFSET[0]~0_combout\,
	datad => \inst|PC\(7),
	combout => \inst|Selector25~0_combout\);

-- Location: FF_X18_Y11_N21
\inst|OFFSET[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Selector25~0_combout\,
	ena => \inst|OFFSET[13]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|OFFSET\(7));

-- Location: FF_X17_Y11_N19
\inst|PC[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|PC[7]~29_combout\,
	asdata => \inst|OFFSET\(7),
	clrn => \rst~inputclkctrl_outclk\,
	sclr => \inst|pr_state.state3~q\,
	sload => \inst|pr_state.state2~q\,
	ena => \inst|PC[13]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC\(7));

-- Location: LCCOMB_X17_Y11_N20
\inst|PC[8]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|PC[8]~31_combout\ = (\inst|PC\(8) & (\inst|PC[7]~30\ $ (GND))) # (!\inst|PC\(8) & (!\inst|PC[7]~30\ & VCC))
-- \inst|PC[8]~32\ = CARRY((\inst|PC\(8) & !\inst|PC[7]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|PC\(8),
	datad => VCC,
	cin => \inst|PC[7]~30\,
	combout => \inst|PC[8]~31_combout\,
	cout => \inst|PC[8]~32\);

-- Location: LCCOMB_X18_Y11_N10
\inst|Selector24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector24~0_combout\ = (!\inst|pr_state.state2~q\ & (\inst|OFFSET[0]~0_combout\ & \inst|PC\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|pr_state.state2~q\,
	datac => \inst|OFFSET[0]~0_combout\,
	datad => \inst|PC\(8),
	combout => \inst|Selector24~0_combout\);

-- Location: FF_X18_Y11_N11
\inst|OFFSET[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Selector24~0_combout\,
	ena => \inst|OFFSET[13]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|OFFSET\(8));

-- Location: FF_X17_Y11_N21
\inst|PC[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|PC[8]~31_combout\,
	asdata => \inst|OFFSET\(8),
	clrn => \rst~inputclkctrl_outclk\,
	sclr => \inst|pr_state.state3~q\,
	sload => \inst|pr_state.state2~q\,
	ena => \inst|PC[13]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC\(8));

-- Location: LCCOMB_X17_Y11_N22
\inst|PC[9]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|PC[9]~33_combout\ = (\inst|PC\(9) & (!\inst|PC[8]~32\)) # (!\inst|PC\(9) & ((\inst|PC[8]~32\) # (GND)))
-- \inst|PC[9]~34\ = CARRY((!\inst|PC[8]~32\) # (!\inst|PC\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC\(9),
	datad => VCC,
	cin => \inst|PC[8]~32\,
	combout => \inst|PC[9]~33_combout\,
	cout => \inst|PC[9]~34\);

-- Location: LCCOMB_X18_Y11_N0
\inst|Selector23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector23~0_combout\ = (!\inst|pr_state.state2~q\ & (\inst|OFFSET[0]~0_combout\ & \inst|PC\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|pr_state.state2~q\,
	datac => \inst|OFFSET[0]~0_combout\,
	datad => \inst|PC\(9),
	combout => \inst|Selector23~0_combout\);

-- Location: FF_X18_Y11_N1
\inst|OFFSET[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Selector23~0_combout\,
	ena => \inst|OFFSET[13]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|OFFSET\(9));

-- Location: FF_X17_Y11_N23
\inst|PC[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|PC[9]~33_combout\,
	asdata => \inst|OFFSET\(9),
	clrn => \rst~inputclkctrl_outclk\,
	sclr => \inst|pr_state.state3~q\,
	sload => \inst|pr_state.state2~q\,
	ena => \inst|PC[13]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC\(9));

-- Location: LCCOMB_X17_Y11_N24
\inst|PC[10]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|PC[10]~35_combout\ = (\inst|PC\(10) & (\inst|PC[9]~34\ $ (GND))) # (!\inst|PC\(10) & (!\inst|PC[9]~34\ & VCC))
-- \inst|PC[10]~36\ = CARRY((\inst|PC\(10) & !\inst|PC[9]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|PC\(10),
	datad => VCC,
	cin => \inst|PC[9]~34\,
	combout => \inst|PC[10]~35_combout\,
	cout => \inst|PC[10]~36\);

-- Location: LCCOMB_X18_Y11_N14
\inst|Selector22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector22~0_combout\ = (!\inst|pr_state.state2~q\ & (\inst|OFFSET[0]~0_combout\ & \inst|PC\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|pr_state.state2~q\,
	datac => \inst|OFFSET[0]~0_combout\,
	datad => \inst|PC\(10),
	combout => \inst|Selector22~0_combout\);

-- Location: FF_X18_Y11_N15
\inst|OFFSET[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Selector22~0_combout\,
	ena => \inst|OFFSET[13]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|OFFSET\(10));

-- Location: FF_X17_Y11_N25
\inst|PC[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|PC[10]~35_combout\,
	asdata => \inst|OFFSET\(10),
	clrn => \rst~inputclkctrl_outclk\,
	sclr => \inst|pr_state.state3~q\,
	sload => \inst|pr_state.state2~q\,
	ena => \inst|PC[13]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC\(10));

-- Location: LCCOMB_X17_Y11_N26
\inst|PC[11]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|PC[11]~37_combout\ = (\inst|PC\(11) & (!\inst|PC[10]~36\)) # (!\inst|PC\(11) & ((\inst|PC[10]~36\) # (GND)))
-- \inst|PC[11]~38\ = CARRY((!\inst|PC[10]~36\) # (!\inst|PC\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC\(11),
	datad => VCC,
	cin => \inst|PC[10]~36\,
	combout => \inst|PC[11]~37_combout\,
	cout => \inst|PC[11]~38\);

-- Location: LCCOMB_X18_Y11_N8
\inst|Selector21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector21~0_combout\ = (\inst|OFFSET[0]~0_combout\ & (!\inst|pr_state.state2~q\ & \inst|PC\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|OFFSET[0]~0_combout\,
	datab => \inst|pr_state.state2~q\,
	datac => \inst|PC\(11),
	combout => \inst|Selector21~0_combout\);

-- Location: FF_X18_Y11_N9
\inst|OFFSET[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Selector21~0_combout\,
	ena => \inst|OFFSET[13]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|OFFSET\(11));

-- Location: FF_X17_Y11_N27
\inst|PC[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|PC[11]~37_combout\,
	asdata => \inst|OFFSET\(11),
	clrn => \rst~inputclkctrl_outclk\,
	sclr => \inst|pr_state.state3~q\,
	sload => \inst|pr_state.state2~q\,
	ena => \inst|PC[13]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC\(11));

-- Location: LCCOMB_X17_Y11_N28
\inst|PC[12]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|PC[12]~39_combout\ = (\inst|PC\(12) & (\inst|PC[11]~38\ $ (GND))) # (!\inst|PC\(12) & (!\inst|PC[11]~38\ & VCC))
-- \inst|PC[12]~40\ = CARRY((\inst|PC\(12) & !\inst|PC[11]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|PC\(12),
	datad => VCC,
	cin => \inst|PC[11]~38\,
	combout => \inst|PC[12]~39_combout\,
	cout => \inst|PC[12]~40\);

-- Location: LCCOMB_X18_Y11_N30
\inst|Selector20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector20~0_combout\ = (!\inst|pr_state.state2~q\ & (\inst|OFFSET[0]~0_combout\ & \inst|PC\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|pr_state.state2~q\,
	datac => \inst|OFFSET[0]~0_combout\,
	datad => \inst|PC\(12),
	combout => \inst|Selector20~0_combout\);

-- Location: FF_X18_Y11_N31
\inst|OFFSET[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Selector20~0_combout\,
	ena => \inst|OFFSET[13]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|OFFSET\(12));

-- Location: FF_X17_Y11_N29
\inst|PC[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|PC[12]~39_combout\,
	asdata => \inst|OFFSET\(12),
	clrn => \rst~inputclkctrl_outclk\,
	sclr => \inst|pr_state.state3~q\,
	sload => \inst|pr_state.state2~q\,
	ena => \inst|PC[13]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC\(12));

-- Location: LCCOMB_X17_Y11_N30
\inst|PC[13]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|PC[13]~41_combout\ = \inst|PC\(13) $ (\inst|PC[12]~40\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC\(13),
	cin => \inst|PC[12]~40\,
	combout => \inst|PC[13]~41_combout\);

-- Location: LCCOMB_X18_Y11_N12
\inst|Selector19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector19~0_combout\ = (!\inst|pr_state.state2~q\ & (\inst|OFFSET[0]~0_combout\ & \inst|PC\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|pr_state.state2~q\,
	datac => \inst|OFFSET[0]~0_combout\,
	datad => \inst|PC\(13),
	combout => \inst|Selector19~0_combout\);

-- Location: FF_X18_Y11_N13
\inst|OFFSET[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Selector19~0_combout\,
	ena => \inst|OFFSET[13]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|OFFSET\(13));

-- Location: FF_X17_Y11_N31
\inst|PC[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|PC[13]~41_combout\,
	asdata => \inst|OFFSET\(13),
	clrn => \rst~inputclkctrl_outclk\,
	sclr => \inst|pr_state.state3~q\,
	sload => \inst|pr_state.state2~q\,
	ena => \inst|PC[13]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC\(13));

-- Location: LCCOMB_X18_Y11_N6
\inst|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan0~3_combout\ = (!\inst|PC\(13) & !\inst|PC\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|PC\(13),
	datad => \inst|PC\(12),
	combout => \inst|LessThan0~3_combout\);

-- Location: LCCOMB_X17_Y11_N0
\inst|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan0~1_combout\ = (!\inst|PC\(4) & (!\inst|PC\(6) & (!\inst|PC\(5) & !\inst|PC\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC\(4),
	datab => \inst|PC\(6),
	datac => \inst|PC\(5),
	datad => \inst|PC\(7),
	combout => \inst|LessThan0~1_combout\);

-- Location: LCCOMB_X16_Y11_N26
\inst|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan0~0_combout\ = ((!\inst|PC\(2) & ((!\inst|PC\(0)) # (!\inst|PC\(1))))) # (!\inst|PC\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC\(1),
	datab => \inst|PC\(2),
	datac => \inst|PC\(3),
	datad => \inst|PC\(0),
	combout => \inst|LessThan0~0_combout\);

-- Location: LCCOMB_X18_Y11_N16
\inst|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan0~2_combout\ = (!\inst|PC\(8) & (!\inst|PC\(10) & (!\inst|PC\(11) & !\inst|PC\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC\(8),
	datab => \inst|PC\(10),
	datac => \inst|PC\(11),
	datad => \inst|PC\(9),
	combout => \inst|LessThan0~2_combout\);

-- Location: LCCOMB_X17_Y11_N2
\inst|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan0~4_combout\ = (\inst|LessThan0~3_combout\ & (\inst|LessThan0~1_combout\ & (\inst|LessThan0~0_combout\ & \inst|LessThan0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan0~3_combout\,
	datab => \inst|LessThan0~1_combout\,
	datac => \inst|LessThan0~0_combout\,
	datad => \inst|LessThan0~2_combout\,
	combout => \inst|LessThan0~4_combout\);

-- Location: LCCOMB_X18_Y12_N10
\inst|pushed~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|pushed~0_combout\ = (\inst|LessThan0~4_combout\ & \inst|pr_state.state3~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan0~4_combout\,
	datac => \inst|pr_state.state3~q\,
	combout => \inst|pushed~0_combout\);

-- Location: LCCOMB_X18_Y12_N0
\inst|pushed[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|pushed[3]~1_combout\ = (\rst~input_o\ & ((\inst|enable~q\ & ((\inst|pushed~0_combout\))) # (!\inst|enable~q\ & (!\inst|process_0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|process_0~0_combout\,
	datab => \inst|enable~q\,
	datac => \rst~input_o\,
	datad => \inst|pushed~0_combout\,
	combout => \inst|pushed[3]~1_combout\);

-- Location: FF_X24_Y20_N9
\inst|pushed[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|process_0~2_combout\,
	sclr => \inst|enable~q\,
	ena => \inst|pushed[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|pushed\(3));

-- Location: LCCOMB_X24_Y20_N2
\inst|pushed[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|pushed[0]~4_combout\ = (\inst|pushed[3]~1_combout\ & (\up~input_o\ & ((!\inst|enable~q\)))) # (!\inst|pushed[3]~1_combout\ & (((\inst|pushed\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \up~input_o\,
	datab => \inst|pushed[3]~1_combout\,
	datac => \inst|pushed\(0),
	datad => \inst|enable~q\,
	combout => \inst|pushed[0]~4_combout\);

-- Location: FF_X24_Y20_N3
\inst|pushed[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|pushed[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|pushed\(0));

-- Location: LCCOMB_X24_Y20_N18
\inst|aux[8]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|aux[8]~4_combout\ = (\inst|enable~q\ & (((\inst|pushed\(3)) # (\inst|pushed\(0))))) # (!\inst|enable~q\ & (\up~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \up~input_o\,
	datab => \inst|pushed\(3),
	datac => \inst|enable~q\,
	datad => \inst|pushed\(0),
	combout => \inst|aux[8]~4_combout\);

-- Location: LCCOMB_X24_Y20_N0
\inst|aux[8]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|aux[8]~5_combout\ = (\inst|aux[8]~4_combout\) # ((!\inst|enable~q\ & \der~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|aux[8]~4_combout\,
	datac => \inst|enable~q\,
	datad => \der~input_o\,
	combout => \inst|aux[8]~5_combout\);

-- Location: LCCOMB_X18_Y20_N12
\inst|mov[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|mov[6]~feeder_combout\ = \inst|aux\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|aux\(6),
	combout => \inst|mov[6]~feeder_combout\);

-- Location: LCCOMB_X17_Y13_N12
\inst|Equal6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal6~0_combout\ = ((\inst|MAR\(11)) # ((\inst|MAR\(8)) # (!\inst|MAR\(10)))) # (!\inst|MAR\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MAR\(9),
	datab => \inst|MAR\(11),
	datac => \inst|MAR\(10),
	datad => \inst|MAR\(8),
	combout => \inst|Equal6~0_combout\);

-- Location: LCCOMB_X17_Y12_N2
\inst|aux[8]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|aux[8]~2_combout\ = (\inst|pr_state.state0~q\ & !\inst|pr_state.state2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|pr_state.state0~q\,
	datac => \inst|pr_state.state2~q\,
	combout => \inst|aux[8]~2_combout\);

-- Location: LCCOMB_X18_Y12_N30
\inst|aux[8]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|aux[8]~3_combout\ = (\inst|aux[8]~2_combout\ & ((\inst|pr_state.state3~q\ & (\inst|LessThan0~4_combout\)) # (!\inst|pr_state.state3~q\ & ((!\inst|Equal6~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan0~4_combout\,
	datab => \inst|Equal6~0_combout\,
	datac => \inst|pr_state.state3~q\,
	datad => \inst|aux[8]~2_combout\,
	combout => \inst|aux[8]~3_combout\);

-- Location: LCCOMB_X18_Y12_N6
\inst|i[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|i[2]~0_combout\ = \inst|i\(2) $ (((\inst|i\(0) & (\rst~input_o\ & \inst|i\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|i\(0),
	datab => \rst~input_o\,
	datac => \inst|i\(2),
	datad => \inst|i\(1),
	combout => \inst|i[2]~0_combout\);

-- Location: FF_X18_Y12_N7
\inst|i[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|i[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|i\(2));

-- Location: LCCOMB_X18_Y12_N26
\inst|i~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|i~2_combout\ = ((\inst|i\(2) & !\inst|i\(1))) # (!\inst|i\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|i\(2),
	datab => \inst|i\(1),
	datac => \inst|i\(0),
	combout => \inst|i~2_combout\);

-- Location: FF_X18_Y12_N27
\inst|i[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|i~2_combout\,
	ena => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|i\(0));

-- Location: LCCOMB_X18_Y12_N24
\inst|i~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|i~1_combout\ = (\inst|i\(0) & (!\inst|i\(1) & !\inst|i\(2))) # (!\inst|i\(0) & (\inst|i\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|i\(0),
	datac => \inst|i\(1),
	datad => \inst|i\(2),
	combout => \inst|i~1_combout\);

-- Location: FF_X18_Y12_N25
\inst|i[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|i~1_combout\,
	ena => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|i\(1));

-- Location: LCCOMB_X18_Y12_N28
\inst|process_0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|process_0~1_combout\ = (\inst|process_0~0_combout\ & ((\inst|i\(1)) # ((\inst|i\(0)) # (\inst|i\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|process_0~0_combout\,
	datab => \inst|i\(1),
	datac => \inst|i\(0),
	datad => \inst|i\(2),
	combout => \inst|process_0~1_combout\);

-- Location: LCCOMB_X18_Y12_N12
\inst|mov[8]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|mov[8]~0_combout\ = (\rst~input_o\ & ((\inst|enable~q\ & (\inst|aux[8]~3_combout\)) # (!\inst|enable~q\ & ((!\inst|process_0~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|aux[8]~3_combout\,
	datab => \inst|enable~q\,
	datac => \rst~input_o\,
	datad => \inst|process_0~1_combout\,
	combout => \inst|mov[8]~0_combout\);

-- Location: FF_X18_Y20_N13
\inst|mov[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|mov[6]~feeder_combout\,
	ena => \inst|mov[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|mov\(6));

-- Location: LCCOMB_X24_Y20_N4
\inst|pushed~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|pushed~3_combout\ = (!\up~input_o\ & \down~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \up~input_o\,
	datac => \down~input_o\,
	combout => \inst|pushed~3_combout\);

-- Location: FF_X24_Y20_N5
\inst|pushed[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|pushed~3_combout\,
	sclr => \inst|enable~q\,
	ena => \inst|pushed[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|pushed\(1));

-- Location: LCCOMB_X24_Y20_N28
\inst|aux[8]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|aux[8]~7_combout\ = (\inst|enable~q\ & ((\inst|pushed\(3)) # ((\inst|pushed\(1) & !\inst|pushed\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pushed\(1),
	datab => \inst|pushed\(3),
	datac => \inst|enable~q\,
	datad => \inst|pushed\(0),
	combout => \inst|aux[8]~7_combout\);

-- Location: LCCOMB_X24_Y20_N14
\inst|aux[8]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|aux[8]~6_combout\ = (!\inst|enable~q\ & ((\der~input_o\) # ((\down~input_o\ & !\up~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|enable~q\,
	datab => \down~input_o\,
	datac => \up~input_o\,
	datad => \der~input_o\,
	combout => \inst|aux[8]~6_combout\);

-- Location: LCCOMB_X24_Y20_N22
\inst|aux[8]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|aux[8]~8_combout\ = (\inst|aux[8]~7_combout\) # (\inst|aux[8]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|aux[8]~7_combout\,
	datac => \inst|aux[8]~6_combout\,
	combout => \inst|aux[8]~8_combout\);

-- Location: LCCOMB_X18_Y20_N20
\inst|aux~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|aux~16_combout\ = (\inst|aux[8]~5_combout\ & (((\inst|aux[8]~8_combout\)))) # (!\inst|aux[8]~5_combout\ & ((\inst|aux[8]~8_combout\ & ((\inst|aux\(0)))) # (!\inst|aux[8]~8_combout\ & (\inst|mov\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|aux[8]~5_combout\,
	datab => \inst|mov\(6),
	datac => \inst|aux[8]~8_combout\,
	datad => \inst|aux\(0),
	combout => \inst|aux~16_combout\);

-- Location: LCCOMB_X18_Y20_N0
\inst|mov[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|mov[3]~feeder_combout\ = \inst|aux\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|aux\(3),
	combout => \inst|mov[3]~feeder_combout\);

-- Location: FF_X18_Y20_N1
\inst|mov[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|mov[3]~feeder_combout\,
	ena => \inst|mov[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|mov\(3));

-- Location: LCCOMB_X18_Y20_N28
\inst|aux~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|aux~25_combout\ = (\inst|aux[8]~5_combout\ & (((\inst|aux[8]~8_combout\) # (\inst|aux\(0))))) # (!\inst|aux[8]~5_combout\ & (\inst|mov\(3) & (!\inst|aux[8]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|aux[8]~5_combout\,
	datab => \inst|mov\(3),
	datac => \inst|aux[8]~8_combout\,
	datad => \inst|aux\(0),
	combout => \inst|aux~25_combout\);

-- Location: LCCOMB_X24_Y20_N26
\inst|pushed~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|pushed~2_combout\ = (!\up~input_o\ & (\izq~input_o\ & !\down~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \up~input_o\,
	datab => \izq~input_o\,
	datac => \down~input_o\,
	combout => \inst|pushed~2_combout\);

-- Location: FF_X24_Y20_N27
\inst|pushed[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|pushed~2_combout\,
	sclr => \inst|enable~q\,
	ena => \inst|pushed[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|pushed\(2));

-- Location: LCCOMB_X24_Y20_N24
\inst|aux[8]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|aux[8]~11_combout\ = (\inst|enable~q\ & (\inst|pushed\(2))) # (!\inst|enable~q\ & ((\izq~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pushed\(2),
	datab => \izq~input_o\,
	datac => \inst|enable~q\,
	combout => \inst|aux[8]~11_combout\);

-- Location: FF_X18_Y20_N15
\inst|mov[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|aux\(4),
	sload => VCC,
	ena => \inst|mov[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|mov\(4));

-- Location: LCCOMB_X18_Y20_N14
\inst|aux~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|aux~22_combout\ = (\inst|aux[8]~8_combout\ & ((\inst|aux\(7)) # ((\inst|aux[8]~5_combout\)))) # (!\inst|aux[8]~8_combout\ & (((\inst|mov\(4) & !\inst|aux[8]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|aux[8]~8_combout\,
	datab => \inst|aux\(7),
	datac => \inst|mov\(4),
	datad => \inst|aux[8]~5_combout\,
	combout => \inst|aux~22_combout\);

-- Location: FF_X19_Y20_N19
\inst|mov[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|aux\(5),
	sload => VCC,
	ena => \inst|mov[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|mov\(5));

-- Location: LCCOMB_X18_Y12_N22
\inst|mov~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|mov~1_combout\ = (\inst|pr_state.state3~q\ & (!\inst|LessThan0~4_combout\)) # (!\inst|pr_state.state3~q\ & (((\inst|Equal6~0_combout\) # (!\inst|pr_state.state1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan0~4_combout\,
	datab => \inst|pr_state.state1~q\,
	datac => \inst|pr_state.state3~q\,
	datad => \inst|Equal6~0_combout\,
	combout => \inst|mov~1_combout\);

-- Location: LCCOMB_X18_Y12_N4
\inst|mov[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|mov[2]~2_combout\ = (\rst~input_o\ & ((\inst|enable~q\ & (!\inst|mov~1_combout\)) # (!\inst|enable~q\ & ((!\inst|process_0~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|mov~1_combout\,
	datab => \inst|enable~q\,
	datac => \rst~input_o\,
	datad => \inst|process_0~1_combout\,
	combout => \inst|mov[2]~2_combout\);

-- Location: LCCOMB_X18_Y17_N14
\inst|mov[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|mov[2]~3_combout\ = (\inst|mov[2]~2_combout\ & ((!\inst|aux\(2)))) # (!\inst|mov[2]~2_combout\ & (\inst|mov\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|mov[2]~2_combout\,
	datac => \inst|mov\(2),
	datad => \inst|aux\(2),
	combout => \inst|mov[2]~3_combout\);

-- Location: FF_X18_Y17_N15
\inst|mov[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|mov[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|mov\(2));

-- Location: LCCOMB_X18_Y20_N8
\inst|aux~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|aux~28_combout\ = (\inst|aux[8]~5_combout\ & (((\inst|aux[8]~8_combout\)))) # (!\inst|aux[8]~5_combout\ & ((\inst|aux[8]~8_combout\ & (\inst|aux\(5))) # (!\inst|aux[8]~8_combout\ & ((!\inst|mov\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|aux[8]~5_combout\,
	datab => \inst|aux\(5),
	datac => \inst|aux[8]~8_combout\,
	datad => \inst|mov\(2),
	combout => \inst|aux~28_combout\);

-- Location: LCCOMB_X18_Y20_N22
\inst|aux~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|aux~29_combout\ = (\inst|aux[8]~5_combout\ & ((\inst|aux~28_combout\ & ((\inst|aux\(3)))) # (!\inst|aux~28_combout\ & (\inst|aux\(8))))) # (!\inst|aux[8]~5_combout\ & (((\inst|aux~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|aux[8]~5_combout\,
	datab => \inst|aux\(8),
	datac => \inst|aux~28_combout\,
	datad => \inst|aux\(3),
	combout => \inst|aux~29_combout\);

-- Location: LCCOMB_X18_Y20_N24
\inst|aux~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|aux~30_combout\ = (\inst|aux[8]~11_combout\ & ((\inst|aux\(1)))) # (!\inst|aux[8]~11_combout\ & (\inst|aux~29_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|aux~29_combout\,
	datac => \inst|aux[8]~11_combout\,
	datad => \inst|aux\(1),
	combout => \inst|aux~30_combout\);

-- Location: LCCOMB_X18_Y12_N18
\inst|aux[8]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|aux[8]~37_combout\ = (\rst~input_o\ & ((\inst|enable~q\ & (\inst|aux[8]~3_combout\)) # (!\inst|enable~q\ & ((!\inst|process_0~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|aux[8]~3_combout\,
	datab => \inst|enable~q\,
	datac => \rst~input_o\,
	datad => \inst|process_0~1_combout\,
	combout => \inst|aux[8]~37_combout\);

-- Location: FF_X18_Y20_N25
\inst|aux[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|aux~30_combout\,
	ena => \inst|aux[8]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|aux\(2));

-- Location: LCCOMB_X19_Y20_N18
\inst|aux~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|aux~19_combout\ = (\inst|aux[8]~5_combout\ & ((\inst|aux[8]~8_combout\) # ((\inst|aux\(2))))) # (!\inst|aux[8]~5_combout\ & (!\inst|aux[8]~8_combout\ & (\inst|mov\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|aux[8]~5_combout\,
	datab => \inst|aux[8]~8_combout\,
	datac => \inst|mov\(5),
	datad => \inst|aux\(2),
	combout => \inst|aux~19_combout\);

-- Location: LCCOMB_X19_Y20_N8
\inst|aux~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|aux~20_combout\ = (\inst|aux[8]~8_combout\ & ((\inst|aux~19_combout\ & (\inst|aux\(6))) # (!\inst|aux~19_combout\ & ((\inst|aux\(8)))))) # (!\inst|aux[8]~8_combout\ & (((\inst|aux~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|aux\(6),
	datab => \inst|aux[8]~8_combout\,
	datac => \inst|aux\(8),
	datad => \inst|aux~19_combout\,
	combout => \inst|aux~20_combout\);

-- Location: LCCOMB_X19_Y20_N0
\inst|aux~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|aux~21_combout\ = (\inst|aux[8]~11_combout\ & ((\inst|aux\(4)))) # (!\inst|aux[8]~11_combout\ & (\inst|aux~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|aux~20_combout\,
	datac => \inst|aux[8]~11_combout\,
	datad => \inst|aux\(4),
	combout => \inst|aux~21_combout\);

-- Location: FF_X19_Y20_N1
\inst|aux[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|aux~21_combout\,
	ena => \inst|aux[8]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|aux\(5));

-- Location: LCCOMB_X19_Y20_N2
\inst|aux~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|aux~23_combout\ = (\inst|aux~22_combout\ & (((\inst|aux\(5)) # (!\inst|aux[8]~5_combout\)))) # (!\inst|aux~22_combout\ & (\inst|aux\(1) & ((\inst|aux[8]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|aux\(1),
	datab => \inst|aux~22_combout\,
	datac => \inst|aux\(5),
	datad => \inst|aux[8]~5_combout\,
	combout => \inst|aux~23_combout\);

-- Location: LCCOMB_X19_Y20_N20
\inst|aux~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|aux~24_combout\ = (\inst|aux[8]~11_combout\ & (\inst|aux\(3))) # (!\inst|aux[8]~11_combout\ & ((\inst|aux~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|aux\(3),
	datac => \inst|aux[8]~11_combout\,
	datad => \inst|aux~23_combout\,
	combout => \inst|aux~24_combout\);

-- Location: FF_X19_Y20_N21
\inst|aux[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|aux~24_combout\,
	ena => \inst|aux[8]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|aux\(4));

-- Location: LCCOMB_X18_Y20_N2
\inst|aux~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|aux~26_combout\ = (\inst|aux[8]~8_combout\ & ((\inst|aux~25_combout\ & (\inst|aux\(4))) # (!\inst|aux~25_combout\ & ((\inst|aux\(6)))))) # (!\inst|aux[8]~8_combout\ & (\inst|aux~25_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|aux[8]~8_combout\,
	datab => \inst|aux~25_combout\,
	datac => \inst|aux\(4),
	datad => \inst|aux\(6),
	combout => \inst|aux~26_combout\);

-- Location: LCCOMB_X18_Y20_N6
\inst|aux~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|aux~27_combout\ = (\inst|aux[8]~11_combout\ & ((\inst|aux\(2)))) # (!\inst|aux[8]~11_combout\ & (\inst|aux~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|aux~26_combout\,
	datac => \inst|aux[8]~11_combout\,
	datad => \inst|aux\(2),
	combout => \inst|aux~27_combout\);

-- Location: FF_X18_Y20_N7
\inst|aux[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|aux~27_combout\,
	ena => \inst|aux[8]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|aux\(3));

-- Location: LCCOMB_X18_Y20_N26
\inst|aux~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|aux~17_combout\ = (\inst|aux[8]~5_combout\ & ((\inst|aux~16_combout\ & (\inst|aux\(7))) # (!\inst|aux~16_combout\ & ((\inst|aux\(3)))))) # (!\inst|aux[8]~5_combout\ & (\inst|aux~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|aux[8]~5_combout\,
	datab => \inst|aux~16_combout\,
	datac => \inst|aux\(7),
	datad => \inst|aux\(3),
	combout => \inst|aux~17_combout\);

-- Location: LCCOMB_X18_Y20_N16
\inst|aux~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|aux~18_combout\ = (\inst|aux[8]~11_combout\ & ((\inst|aux\(5)))) # (!\inst|aux[8]~11_combout\ & (\inst|aux~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|aux~17_combout\,
	datab => \inst|aux\(5),
	datac => \inst|aux[8]~11_combout\,
	combout => \inst|aux~18_combout\);

-- Location: FF_X18_Y20_N17
\inst|aux[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|aux~18_combout\,
	ena => \inst|aux[8]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|aux\(6));

-- Location: LCCOMB_X19_Y20_N22
\inst|mov[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|mov[7]~feeder_combout\ = \inst|aux\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|aux\(7),
	combout => \inst|mov[7]~feeder_combout\);

-- Location: FF_X19_Y20_N23
\inst|mov[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|mov[7]~feeder_combout\,
	ena => \inst|mov[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|mov\(7));

-- Location: LCCOMB_X19_Y20_N16
\inst|aux~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|aux~13_combout\ = (\inst|aux[8]~5_combout\ & ((\inst|aux[8]~8_combout\) # ((\inst|aux\(4))))) # (!\inst|aux[8]~5_combout\ & (!\inst|aux[8]~8_combout\ & (\inst|mov\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|aux[8]~5_combout\,
	datab => \inst|aux[8]~8_combout\,
	datac => \inst|mov\(7),
	datad => \inst|aux\(4),
	combout => \inst|aux~13_combout\);

-- Location: LCCOMB_X19_Y20_N24
\inst|aux~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|aux~14_combout\ = (\inst|aux[8]~8_combout\ & ((\inst|aux~13_combout\ & ((\inst|aux\(8)))) # (!\inst|aux~13_combout\ & (\inst|aux\(1))))) # (!\inst|aux[8]~8_combout\ & (((\inst|aux~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|aux\(1),
	datab => \inst|aux[8]~8_combout\,
	datac => \inst|aux\(8),
	datad => \inst|aux~13_combout\,
	combout => \inst|aux~14_combout\);

-- Location: LCCOMB_X19_Y20_N12
\inst|aux~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|aux~15_combout\ = (\inst|aux[8]~11_combout\ & (\inst|aux\(6))) # (!\inst|aux[8]~11_combout\ & ((\inst|aux~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|aux\(6),
	datac => \inst|aux[8]~11_combout\,
	datad => \inst|aux~14_combout\,
	combout => \inst|aux~15_combout\);

-- Location: FF_X19_Y20_N13
\inst|aux[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|aux~15_combout\,
	ena => \inst|aux[8]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|aux\(7));

-- Location: FF_X19_Y20_N27
\inst|mov[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|aux\(8),
	sload => VCC,
	ena => \inst|mov[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|mov\(8));

-- Location: LCCOMB_X19_Y20_N4
\inst|aux~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|aux~9_combout\ = (\inst|aux[8]~5_combout\ & (\inst|aux[8]~8_combout\)) # (!\inst|aux[8]~5_combout\ & ((\inst|aux[8]~8_combout\ & ((\inst|aux\(2)))) # (!\inst|aux[8]~8_combout\ & (\inst|mov\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|aux[8]~5_combout\,
	datab => \inst|aux[8]~8_combout\,
	datac => \inst|mov\(8),
	datad => \inst|aux\(2),
	combout => \inst|aux~9_combout\);

-- Location: LCCOMB_X19_Y20_N6
\inst|aux~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|aux~10_combout\ = (\inst|aux~9_combout\ & ((\inst|aux\(0)) # ((!\inst|aux[8]~5_combout\)))) # (!\inst|aux~9_combout\ & (((\inst|aux\(5) & \inst|aux[8]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|aux\(0),
	datab => \inst|aux~9_combout\,
	datac => \inst|aux\(5),
	datad => \inst|aux[8]~5_combout\,
	combout => \inst|aux~10_combout\);

-- Location: LCCOMB_X19_Y20_N14
\inst|aux~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|aux~12_combout\ = (\inst|aux[8]~11_combout\ & (\inst|aux\(7))) # (!\inst|aux[8]~11_combout\ & ((\inst|aux~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|aux\(7),
	datac => \inst|aux[8]~11_combout\,
	datad => \inst|aux~10_combout\,
	combout => \inst|aux~12_combout\);

-- Location: FF_X19_Y20_N15
\inst|aux[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|aux~12_combout\,
	ena => \inst|aux[8]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|aux\(8));

-- Location: LCCOMB_X18_Y20_N30
\inst|mov[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|mov[0]~feeder_combout\ = \inst|aux\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|aux\(0),
	combout => \inst|mov[0]~feeder_combout\);

-- Location: FF_X18_Y20_N31
\inst|mov[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|mov[0]~feeder_combout\,
	ena => \inst|mov[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|mov\(0));

-- Location: LCCOMB_X18_Y20_N4
\inst|aux~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|aux~34_combout\ = (\inst|aux[8]~5_combout\ & (((\inst|aux[8]~8_combout\)))) # (!\inst|aux[8]~5_combout\ & ((\inst|aux[8]~8_combout\ & ((\inst|aux\(3)))) # (!\inst|aux[8]~8_combout\ & (\inst|mov\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|aux[8]~5_combout\,
	datab => \inst|mov\(0),
	datac => \inst|aux[8]~8_combout\,
	datad => \inst|aux\(3),
	combout => \inst|aux~34_combout\);

-- Location: LCCOMB_X18_Y20_N18
\inst|aux~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|aux~35_combout\ = (\inst|aux[8]~5_combout\ & ((\inst|aux~34_combout\ & ((\inst|aux\(1)))) # (!\inst|aux~34_combout\ & (\inst|aux\(6))))) # (!\inst|aux[8]~5_combout\ & (((\inst|aux~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|aux[8]~5_combout\,
	datab => \inst|aux\(6),
	datac => \inst|aux~34_combout\,
	datad => \inst|aux\(1),
	combout => \inst|aux~35_combout\);

-- Location: LCCOMB_X18_Y20_N10
\inst|aux~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|aux~36_combout\ = (\inst|aux[8]~11_combout\ & (\inst|aux\(8))) # (!\inst|aux[8]~11_combout\ & ((\inst|aux~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|aux\(8),
	datac => \inst|aux[8]~11_combout\,
	datad => \inst|aux~35_combout\,
	combout => \inst|aux~36_combout\);

-- Location: FF_X18_Y20_N11
\inst|aux[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|aux~36_combout\,
	ena => \inst|aux[8]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|aux\(0));

-- Location: LCCOMB_X19_Y20_N10
\inst|aux~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|aux~31_combout\ = (\inst|aux[8]~8_combout\ & (((\inst|aux[8]~5_combout\)))) # (!\inst|aux[8]~8_combout\ & ((\inst|aux[8]~5_combout\ & (\inst|aux\(7))) # (!\inst|aux[8]~5_combout\ & ((\inst|mov\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|aux\(7),
	datab => \inst|aux[8]~8_combout\,
	datac => \inst|mov\(1),
	datad => \inst|aux[8]~5_combout\,
	combout => \inst|aux~31_combout\);

-- Location: LCCOMB_X19_Y20_N30
\inst|aux~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|aux~32_combout\ = (\inst|aux~31_combout\ & ((\inst|aux\(2)) # ((!\inst|aux[8]~8_combout\)))) # (!\inst|aux~31_combout\ & (((\inst|aux[8]~8_combout\ & \inst|aux\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|aux~31_combout\,
	datab => \inst|aux\(2),
	datac => \inst|aux[8]~8_combout\,
	datad => \inst|aux\(4),
	combout => \inst|aux~32_combout\);

-- Location: LCCOMB_X19_Y20_N28
\inst|aux~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|aux~33_combout\ = (\inst|aux[8]~11_combout\ & (\inst|aux\(0))) # (!\inst|aux[8]~11_combout\ & ((\inst|aux~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|aux\(0),
	datac => \inst|aux[8]~11_combout\,
	datad => \inst|aux~32_combout\,
	combout => \inst|aux~33_combout\);

-- Location: FF_X19_Y20_N29
\inst|aux[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|aux~33_combout\,
	ena => \inst|aux[8]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|aux\(1));

-- Location: FF_X19_Y20_N11
\inst|mov[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|aux\(1),
	sload => VCC,
	ena => \inst|mov[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|mov\(1));

-- Location: LCCOMB_X18_Y17_N30
\inst|cat~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|cat~8_combout\ = (\inst|enable~q\ & ((\inst|pr_state.state3~q\ & (\inst|mov\(1))) # (!\inst|pr_state.state3~q\ & ((\inst|REG_D\(1)))))) # (!\inst|enable~q\ & (((\inst|mov\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|enable~q\,
	datab => \inst|pr_state.state3~q\,
	datac => \inst|mov\(1),
	datad => \inst|REG_D\(1),
	combout => \inst|cat~8_combout\);

-- Location: LCCOMB_X17_Y13_N30
\inst|cat[0][8]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|cat[0][8]~1_combout\ = ((\inst|MAR\(1) & (\inst|MAR\(0) & \inst|Equal5~0_combout\))) # (!\inst|pr_state.state2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pr_state.state2~q\,
	datab => \inst|MAR\(1),
	datac => \inst|MAR\(0),
	datad => \inst|Equal5~0_combout\,
	combout => \inst|cat[0][8]~1_combout\);

-- Location: LCCOMB_X17_Y12_N14
\inst|cat[0][8]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|cat[0][8]~10_combout\ = (!\inst|pr_state.state1~q\ & (\inst|pr_state.state0~q\ & \inst|cat[0][8]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pr_state.state1~q\,
	datab => \inst|pr_state.state0~q\,
	datac => \inst|cat[0][8]~1_combout\,
	combout => \inst|cat[0][8]~10_combout\);

-- Location: LCCOMB_X18_Y12_N8
\inst|cat[0][8]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|cat[0][8]~11_combout\ = (\rst~input_o\ & ((\inst|enable~q\ & (\inst|cat[0][8]~10_combout\)) # (!\inst|enable~q\ & ((!\inst|process_0~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cat[0][8]~10_combout\,
	datab => \inst|enable~q\,
	datac => \rst~input_o\,
	datad => \inst|process_0~1_combout\,
	combout => \inst|cat[0][8]~11_combout\);

-- Location: FF_X18_Y17_N31
\inst|cat[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|cat~8_combout\,
	ena => \inst|cat[0][8]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cat[0][1]~q\);

-- Location: LCCOMB_X21_Y14_N18
\inst|REG_D~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|REG_D~9_combout\ = (!\inst|MAR\(0) & ((\inst|cat[0][1]~q\) # (\inst|MAR\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cat[0][1]~q\,
	datab => \inst|MAR\(0),
	datac => \inst|MAR\(1),
	combout => \inst|REG_D~9_combout\);

-- Location: LCCOMB_X21_Y14_N24
\inst|REG_D~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|REG_D~10_combout\ = (!\inst|Equal2~0_combout\ & ((\inst|REG_D~9_combout\) # ((\inst|MAR\(1) & \inst|reggy~171_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MAR\(1),
	datab => \inst|Equal2~0_combout\,
	datac => \inst|reggy~171_combout\,
	datad => \inst|REG_D~9_combout\,
	combout => \inst|REG_D~10_combout\);

-- Location: LCCOMB_X17_Y12_N12
\inst|OP[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|OP[3]~0_combout\ = (\inst|pr_state.state1~q\ & (\inst|enable~q\ & \rst~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pr_state.state1~q\,
	datab => \inst|enable~q\,
	datac => \rst~input_o\,
	combout => \inst|OP[3]~0_combout\);

-- Location: LCCOMB_X17_Y12_N0
\inst|REG_D[8]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|REG_D[8]~2_combout\ = (!\inst|OP[3]~1_combout\ & (!\inst|Equal1~0_combout\ & \inst|OP[3]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|OP[3]~1_combout\,
	datac => \inst|Equal1~0_combout\,
	datad => \inst|OP[3]~0_combout\,
	combout => \inst|REG_D[8]~2_combout\);

-- Location: FF_X21_Y14_N25
\inst|REG_D[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|REG_D~10_combout\,
	ena => \inst|REG_D[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|REG_D\(1));

-- Location: LCCOMB_X17_Y12_N18
\inst|OP[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|OP[3]~2_combout\ = ((\inst|MAR\(9) & ((\inst|MAR\(8)) # (\inst|MAR\(11)))) # (!\inst|MAR\(9) & ((!\inst|MAR\(11))))) # (!\inst|MAR\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MAR\(8),
	datab => \inst|MAR\(10),
	datac => \inst|MAR\(9),
	datad => \inst|MAR\(11),
	combout => \inst|OP[3]~2_combout\);

-- Location: LCCOMB_X18_Y17_N22
\inst|reggy~243\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~243_combout\ = (!\inst|OP[3]~2_combout\ & ((\inst|OP[3]~1_combout\ & ((\inst|mov\(1)))) # (!\inst|OP[3]~1_combout\ & (\inst|REG_D\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|OP[3]~1_combout\,
	datab => \inst|REG_D\(1),
	datac => \inst|mov\(1),
	datad => \inst|OP[3]~2_combout\,
	combout => \inst|reggy~243_combout\);

-- Location: LCCOMB_X13_Y17_N30
\inst|reggy~244\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~244_combout\ = (\inst|reggy~243_combout\) # ((\inst|OP[3]~2_combout\ & \inst|alu1|Mux14~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy~243_combout\,
	datab => \inst|OP[3]~2_combout\,
	datad => \inst|alu1|Mux14~6_combout\,
	combout => \inst|reggy~244_combout\);

-- Location: LCCOMB_X16_Y13_N18
\inst|reggy~183\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~183_combout\ = (\inst|MAR\(5) & (\inst|MAR\(4) & \inst|reggy~179_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|MAR\(5),
	datac => \inst|MAR\(4),
	datad => \inst|reggy~179_combout\,
	combout => \inst|reggy~183_combout\);

-- Location: FF_X13_Y17_N31
\inst|reggy~69\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|reggy~244_combout\,
	ena => \inst|reggy~183_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy~69_q\);

-- Location: LCCOMB_X12_Y17_N20
\inst|reggy~255\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~255_combout\ = (\inst|MAR\(1) & (((\inst|reggy~53_q\) # (\inst|MAR\(0))))) # (!\inst|MAR\(1) & (\inst|reggy~21_q\ & ((!\inst|MAR\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy~21_q\,
	datab => \inst|MAR\(1),
	datac => \inst|reggy~53_q\,
	datad => \inst|MAR\(0),
	combout => \inst|reggy~255_combout\);

-- Location: LCCOMB_X17_Y16_N20
\inst|reggy~256\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~256_combout\ = (\inst|reggy~255_combout\ & ((\inst|reggy~69_q\) # ((!\inst|MAR\(0))))) # (!\inst|reggy~255_combout\ & (((\inst|reggy~37_q\ & \inst|MAR\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy~69_q\,
	datab => \inst|reggy~255_combout\,
	datac => \inst|reggy~37_q\,
	datad => \inst|MAR\(0),
	combout => \inst|reggy~256_combout\);

-- Location: LCCOMB_X17_Y12_N24
\inst|OP[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|OP[3]~3_combout\ = (\inst|OP[3]~0_combout\ & (!\inst|Equal1~0_combout\ & (!\inst|Equal3~0_combout\ & \inst|OP[3]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|OP[3]~0_combout\,
	datab => \inst|Equal1~0_combout\,
	datac => \inst|Equal3~0_combout\,
	datad => \inst|OP[3]~2_combout\,
	combout => \inst|OP[3]~3_combout\);

-- Location: FF_X17_Y16_N21
\inst|REG_B[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|reggy~256_combout\,
	ena => \inst|OP[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|REG_B\(1));

-- Location: FF_X17_Y13_N17
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
	ena => \inst|OP[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|OP\(3));

-- Location: FF_X18_Y13_N23
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
	ena => \inst|OP[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|OP\(0));

-- Location: FF_X17_Y13_N11
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
	ena => \inst|OP[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|OP\(2));

-- Location: FF_X18_Y14_N17
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
	ena => \inst|OP[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|OP\(1));

-- Location: LCCOMB_X19_Y16_N30
\inst|alu1|Mux17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux17~0_combout\ = (!\inst|OP\(0) & ((\inst|OP\(3) & (!\inst|OP\(2))) # (!\inst|OP\(3) & ((\inst|OP\(2)) # (\inst|OP\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|OP\(3),
	datab => \inst|OP\(0),
	datac => \inst|OP\(2),
	datad => \inst|OP\(1),
	combout => \inst|alu1|Mux17~0_combout\);

-- Location: FF_X19_Y15_N25
\inst|REG_A[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|reggy~171_combout\,
	ena => \inst|OP[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|REG_A\(1));

-- Location: LCCOMB_X19_Y16_N16
\inst|alu1|Mux16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux16~0_combout\ = (!\inst|OP\(2) & (\inst|OP\(0) $ (\inst|OP\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|OP\(0),
	datac => \inst|OP\(2),
	datad => \inst|OP\(1),
	combout => \inst|alu1|Mux16~0_combout\);

-- Location: LCCOMB_X19_Y16_N10
\inst|alu1|unidad_logica|Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|Mux14~0_combout\ = (\inst|REG_B\(1) & ((\inst|alu1|Mux17~0_combout\) # ((\inst|REG_A\(1) & !\inst|alu1|Mux16~0_combout\)))) # (!\inst|REG_B\(1) & (\inst|alu1|Mux17~0_combout\ & ((\inst|REG_A\(1)) # (\inst|alu1|Mux16~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(1),
	datab => \inst|alu1|Mux17~0_combout\,
	datac => \inst|REG_A\(1),
	datad => \inst|alu1|Mux16~0_combout\,
	combout => \inst|alu1|unidad_logica|Mux14~0_combout\);

-- Location: LCCOMB_X16_Y13_N24
\inst|alu1|Mux15~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux15~12_combout\ = (\inst|REG_A\(1) & (\inst|OP\(2) & (\inst|OP\(1) $ (\inst|OP\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(1),
	datab => \inst|OP\(2),
	datac => \inst|OP\(1),
	datad => \inst|OP\(0),
	combout => \inst|alu1|Mux15~12_combout\);

-- Location: FF_X13_Y17_N11
\inst|reggy~68\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|reggy~246_combout\,
	ena => \inst|reggy~183_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy~68_q\);

-- Location: FF_X12_Y17_N27
\inst|reggy~52\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~246_combout\,
	sload => VCC,
	ena => \inst|reggy~180_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy~52_q\);

-- Location: FF_X12_Y17_N13
\inst|reggy~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~246_combout\,
	sload => VCC,
	ena => \inst|reggy~182_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy~20_q\);

-- Location: LCCOMB_X13_Y17_N0
\inst|reggy~253\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~253_combout\ = (\inst|MAR\(1) & (((\inst|MAR\(0))))) # (!\inst|MAR\(1) & ((\inst|MAR\(0) & ((\inst|reggy~36_q\))) # (!\inst|MAR\(0) & (\inst|reggy~20_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MAR\(1),
	datab => \inst|reggy~20_q\,
	datac => \inst|reggy~36_q\,
	datad => \inst|MAR\(0),
	combout => \inst|reggy~253_combout\);

-- Location: LCCOMB_X13_Y17_N12
\inst|reggy~254\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~254_combout\ = (\inst|MAR\(1) & ((\inst|reggy~253_combout\ & (\inst|reggy~68_q\)) # (!\inst|reggy~253_combout\ & ((\inst|reggy~52_q\))))) # (!\inst|MAR\(1) & (((\inst|reggy~253_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy~68_q\,
	datab => \inst|reggy~52_q\,
	datac => \inst|MAR\(1),
	datad => \inst|reggy~253_combout\,
	combout => \inst|reggy~254_combout\);

-- Location: FF_X18_Y15_N1
\inst|REG_B[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~254_combout\,
	sload => VCC,
	ena => \inst|OP[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|REG_B\(0));

-- Location: LCCOMB_X18_Y13_N0
\inst|alu1|unidad_logica|Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|Mux15~0_combout\ = (\inst|REG_A\(0) & ((\inst|alu1|Mux17~0_combout\) # ((\inst|REG_B\(0) & !\inst|alu1|Mux16~0_combout\)))) # (!\inst|REG_A\(0) & ((\inst|alu1|Mux17~0_combout\ & (\inst|REG_B\(0) & !\inst|alu1|Mux16~0_combout\)) # 
-- (!\inst|alu1|Mux17~0_combout\ & ((\inst|alu1|Mux16~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(0),
	datab => \inst|alu1|Mux17~0_combout\,
	datac => \inst|REG_B\(0),
	datad => \inst|alu1|Mux16~0_combout\,
	combout => \inst|alu1|unidad_logica|Mux15~0_combout\);

-- Location: LCCOMB_X18_Y13_N18
\inst|alu1|Mux15~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux15~11_combout\ = (\inst|alu1|unidad_logica|Mux15~0_combout\ & (\inst|OP\(2) $ (((\inst|OP\(0)) # (\inst|OP\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|OP\(0),
	datab => \inst|OP\(2),
	datac => \inst|OP\(1),
	datad => \inst|alu1|unidad_logica|Mux15~0_combout\,
	combout => \inst|alu1|Mux15~11_combout\);

-- Location: LCCOMB_X18_Y13_N10
\inst|alu1|Mux15~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux15~15_combout\ = (\inst|OP\(3) & (\inst|OP\(2))) # (!\inst|OP\(3) & (((\inst|alu1|Mux15~12_combout\) # (\inst|alu1|Mux15~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|OP\(3),
	datab => \inst|OP\(2),
	datac => \inst|alu1|Mux15~12_combout\,
	datad => \inst|alu1|Mux15~11_combout\,
	combout => \inst|alu1|Mux15~15_combout\);

-- Location: LCCOMB_X18_Y13_N22
\inst|alu1|Mux15~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux15~5_combout\ = (\inst|OP\(3) & (!\inst|OP\(2) & ((!\inst|OP\(0)) # (!\inst|OP\(1))))) # (!\inst|OP\(3) & (\inst|OP\(1) & (\inst|OP\(0) & \inst|OP\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|OP\(3),
	datab => \inst|OP\(1),
	datac => \inst|OP\(0),
	datad => \inst|OP\(2),
	combout => \inst|alu1|Mux15~5_combout\);

-- Location: FF_X21_Y17_N15
\inst|reggy~75\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|reggy~200_combout\,
	ena => \inst|reggy~183_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy~75_q\);

-- Location: FF_X21_Y17_N21
\inst|reggy~43\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~200_combout\,
	sload => VCC,
	ena => \inst|reggy~181_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy~43_q\);

-- Location: FF_X16_Y17_N19
\inst|reggy~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~200_combout\,
	sload => VCC,
	ena => \inst|reggy~182_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy~27_q\);

-- Location: LCCOMB_X16_Y17_N18
\inst|reggy~158\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~158_combout\ = (\inst|reggy~154_combout\ & ((\inst|reggy~59_q\) # ((\inst|reggy~155_combout\)))) # (!\inst|reggy~154_combout\ & (((\inst|reggy~27_q\ & !\inst|reggy~155_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy~154_combout\,
	datab => \inst|reggy~59_q\,
	datac => \inst|reggy~27_q\,
	datad => \inst|reggy~155_combout\,
	combout => \inst|reggy~158_combout\);

-- Location: LCCOMB_X21_Y17_N20
\inst|reggy~159\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~159_combout\ = (\inst|reggy~155_combout\ & ((\inst|reggy~158_combout\ & (\inst|reggy~75_q\)) # (!\inst|reggy~158_combout\ & ((\inst|reggy~43_q\))))) # (!\inst|reggy~155_combout\ & (((\inst|reggy~158_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy~155_combout\,
	datab => \inst|reggy~75_q\,
	datac => \inst|reggy~43_q\,
	datad => \inst|reggy~158_combout\,
	combout => \inst|reggy~159_combout\);

-- Location: FF_X17_Y14_N11
\inst|REG_A[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~159_combout\,
	sload => VCC,
	ena => \inst|OP[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|REG_A\(7));

-- Location: LCCOMB_X12_Y16_N14
\inst|reggy~198\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~198_combout\ = (!\inst|OP\(0) & !\inst|OP\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|OP\(0),
	datad => \inst|OP\(1),
	combout => \inst|reggy~198_combout\);

-- Location: LCCOMB_X13_Y17_N4
\inst|reggy~199\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~199_combout\ = (!\inst|OP\(3) & (\inst|OP[3]~2_combout\ & (\inst|OP\(2) $ (!\inst|reggy~198_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|OP\(2),
	datab => \inst|reggy~198_combout\,
	datac => \inst|OP\(3),
	datad => \inst|OP[3]~2_combout\,
	combout => \inst|reggy~199_combout\);

-- Location: FF_X16_Y17_N15
\inst|reggy~57\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~220_combout\,
	sload => VCC,
	ena => \inst|reggy~180_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy~57_q\);

-- Location: FF_X16_Y17_N25
\inst|reggy~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~220_combout\,
	sload => VCC,
	ena => \inst|reggy~182_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy~25_q\);

-- Location: LCCOMB_X16_Y17_N14
\inst|reggy~263\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~263_combout\ = (\inst|MAR\(1) & ((\inst|MAR\(0)) # ((\inst|reggy~57_q\)))) # (!\inst|MAR\(1) & (!\inst|MAR\(0) & ((\inst|reggy~25_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MAR\(1),
	datab => \inst|MAR\(0),
	datac => \inst|reggy~57_q\,
	datad => \inst|reggy~25_q\,
	combout => \inst|reggy~263_combout\);

-- Location: FF_X19_Y17_N21
\inst|reggy~41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~220_combout\,
	sload => VCC,
	ena => \inst|reggy~181_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy~41_q\);

-- Location: LCCOMB_X18_Y14_N30
\inst|reggy~264\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~264_combout\ = (\inst|reggy~263_combout\ & ((\inst|reggy~73_q\) # ((!\inst|MAR\(0))))) # (!\inst|reggy~263_combout\ & (((\inst|MAR\(0) & \inst|reggy~41_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy~73_q\,
	datab => \inst|reggy~263_combout\,
	datac => \inst|MAR\(0),
	datad => \inst|reggy~41_q\,
	combout => \inst|reggy~264_combout\);

-- Location: FF_X17_Y14_N29
\inst|REG_B[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~264_combout\,
	sload => VCC,
	ena => \inst|OP[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|REG_B\(5));

-- Location: LCCOMB_X19_Y15_N18
\inst|reggy~211\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~211_combout\ = (\inst|alu1|Mux16~0_combout\ & (\inst|alu1|Mux17~0_combout\)) # (!\inst|alu1|Mux16~0_combout\ & ((\inst|alu1|Mux17~0_combout\ & ((\inst|REG_A\(5)) # (\inst|REG_B\(5)))) # (!\inst|alu1|Mux17~0_combout\ & (\inst|REG_A\(5) & 
-- \inst|REG_B\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux16~0_combout\,
	datab => \inst|alu1|Mux17~0_combout\,
	datac => \inst|REG_A\(5),
	datad => \inst|REG_B\(5),
	combout => \inst|reggy~211_combout\);

-- Location: LCCOMB_X18_Y17_N4
\inst|cat~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|cat~7_combout\ = (\inst|pr_state.state3~q\ & (((!\inst|mov\(2))))) # (!\inst|pr_state.state3~q\ & ((\inst|enable~q\ & (\inst|REG_D\(2))) # (!\inst|enable~q\ & ((!\inst|mov\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pr_state.state3~q\,
	datab => \inst|REG_D\(2),
	datac => \inst|mov\(2),
	datad => \inst|enable~q\,
	combout => \inst|cat~7_combout\);

-- Location: FF_X18_Y17_N5
\inst|cat[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|cat~7_combout\,
	ena => \inst|cat[0][8]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cat[0][2]~q\);

-- Location: LCCOMB_X17_Y17_N20
\inst|REG_D~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|REG_D~0_combout\ = (!\inst|Equal2~0_combout\ & (\inst|MAR\(0) $ (!\inst|MAR\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Equal2~0_combout\,
	datac => \inst|MAR\(0),
	datad => \inst|MAR\(1),
	combout => \inst|REG_D~0_combout\);

-- Location: LCCOMB_X17_Y17_N24
\inst|REG_D~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|REG_D~8_combout\ = (\inst|REG_D~0_combout\ & ((\inst|MAR\(1) & ((\inst|reggy~169_combout\))) # (!\inst|MAR\(1) & (\inst|cat[0][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cat[0][2]~q\,
	datab => \inst|REG_D~0_combout\,
	datac => \inst|reggy~169_combout\,
	datad => \inst|MAR\(1),
	combout => \inst|REG_D~8_combout\);

-- Location: FF_X17_Y17_N25
\inst|REG_D[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|REG_D~8_combout\,
	ena => \inst|REG_D[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|REG_D\(2));

-- Location: LCCOMB_X17_Y17_N6
\inst|reggy~241\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~241_combout\ = (\inst|OP[3]~1_combout\ & (!\inst|mov\(2) & ((!\inst|Equal6~0_combout\)))) # (!\inst|OP[3]~1_combout\ & (((\inst|REG_D\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|mov\(2),
	datab => \inst|REG_D\(2),
	datac => \inst|Equal6~0_combout\,
	datad => \inst|OP[3]~1_combout\,
	combout => \inst|reggy~241_combout\);

-- Location: LCCOMB_X12_Y16_N2
\inst|alu1|Mux13~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux13~6_combout\ = (!\inst|OP\(3) & (!\inst|OP\(2) & ((\inst|OP\(0)) # (\inst|OP\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|OP\(3),
	datab => \inst|OP\(2),
	datac => \inst|OP\(0),
	datad => \inst|OP\(1),
	combout => \inst|alu1|Mux13~6_combout\);

-- Location: FF_X13_Y17_N7
\inst|reggy~83\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|reggy~296_combout\,
	ena => \inst|reggy~183_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy~83_q\);

-- Location: FF_X16_Y17_N23
\inst|reggy~67\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~296_combout\,
	sload => VCC,
	ena => \inst|reggy~180_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy~67_q\);

-- Location: FF_X16_Y17_N13
\inst|reggy~35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~296_combout\,
	sload => VCC,
	ena => \inst|reggy~182_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy~35_q\);

-- Location: LCCOMB_X16_Y17_N12
\inst|reggy~249\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~249_combout\ = (\inst|reggy~154_combout\ & ((\inst|reggy~67_q\) # ((\inst|reggy~155_combout\)))) # (!\inst|reggy~154_combout\ & (((\inst|reggy~35_q\ & !\inst|reggy~155_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy~154_combout\,
	datab => \inst|reggy~67_q\,
	datac => \inst|reggy~35_q\,
	datad => \inst|reggy~155_combout\,
	combout => \inst|reggy~249_combout\);

-- Location: LCCOMB_X13_Y17_N24
\inst|reggy~250\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~250_combout\ = (\inst|reggy~155_combout\ & ((\inst|reggy~249_combout\ & (\inst|reggy~83_q\)) # (!\inst|reggy~249_combout\ & ((\inst|reggy~51_q\))))) # (!\inst|reggy~155_combout\ & (((\inst|reggy~249_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy~83_q\,
	datab => \inst|reggy~155_combout\,
	datac => \inst|reggy~51_q\,
	datad => \inst|reggy~249_combout\,
	combout => \inst|reggy~250_combout\);

-- Location: LCCOMB_X17_Y17_N22
\inst|REG_D~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|REG_D~13_combout\ = (\inst|reggy~250_combout\ & (!\inst|Equal2~0_combout\ & (\inst|MAR\(0) & \inst|MAR\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy~250_combout\,
	datab => \inst|Equal2~0_combout\,
	datac => \inst|MAR\(0),
	datad => \inst|MAR\(1),
	combout => \inst|REG_D~13_combout\);

-- Location: FF_X17_Y17_N23
\inst|REG_D[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|REG_D~13_combout\,
	ena => \inst|REG_D[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|REG_D\(15));

-- Location: FF_X18_Y15_N3
\inst|REG_A[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~250_combout\,
	sload => VCC,
	ena => \inst|OP[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|REG_A\(15));

-- Location: LCCOMB_X19_Y16_N18
\inst|alu1|Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux7~1_combout\ = (\inst|OP\(0) & \inst|OP\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|OP\(0),
	datad => \inst|OP\(1),
	combout => \inst|alu1|Mux7~1_combout\);

-- Location: LCCOMB_X19_Y16_N2
\inst|reggy~192\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~192_combout\ = (\inst|OP[3]~2_combout\ & ((\inst|OP\(3) & (!\inst|OP\(2) & !\inst|alu1|Mux7~1_combout\)) # (!\inst|OP\(3) & (\inst|OP\(2) & \inst|alu1|Mux7~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|OP\(3),
	datab => \inst|OP[3]~2_combout\,
	datac => \inst|OP\(2),
	datad => \inst|alu1|Mux7~1_combout\,
	combout => \inst|reggy~192_combout\);

-- Location: LCCOMB_X19_Y13_N6
\inst|reggy~297\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~297_combout\ = (!\inst|reggy~199_combout\ & (((!\inst|alu1|Mux16~0_combout\) # (!\inst|reggy~192_combout\)) # (!\inst|alu1|Mux17~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux17~0_combout\,
	datab => \inst|reggy~199_combout\,
	datac => \inst|reggy~192_combout\,
	datad => \inst|alu1|Mux16~0_combout\,
	combout => \inst|reggy~297_combout\);

-- Location: FF_X16_Y17_N29
\inst|reggy~66\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~354_combout\,
	sload => VCC,
	ena => \inst|reggy~180_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy~66_q\);

-- Location: FF_X16_Y17_N11
\inst|reggy~34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~354_combout\,
	sload => VCC,
	ena => \inst|reggy~182_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy~34_q\);

-- Location: LCCOMB_X16_Y17_N28
\inst|reggy~291\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~291_combout\ = (\inst|MAR\(1) & ((\inst|MAR\(0)) # ((\inst|reggy~66_q\)))) # (!\inst|MAR\(1) & (!\inst|MAR\(0) & ((\inst|reggy~34_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MAR\(1),
	datab => \inst|MAR\(0),
	datac => \inst|reggy~66_q\,
	datad => \inst|reggy~34_q\,
	combout => \inst|reggy~291_combout\);

-- Location: FF_X19_Y13_N5
\inst|reggy~82\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|reggy~354_combout\,
	ena => \inst|reggy~183_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy~82_q\);

-- Location: LCCOMB_X19_Y13_N10
\inst|reggy~292\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~292_combout\ = (\inst|reggy~291_combout\ & (((\inst|reggy~82_q\)) # (!\inst|MAR\(0)))) # (!\inst|reggy~291_combout\ & (\inst|MAR\(0) & (\inst|reggy~50_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy~291_combout\,
	datab => \inst|MAR\(0),
	datac => \inst|reggy~50_q\,
	datad => \inst|reggy~82_q\,
	combout => \inst|reggy~292_combout\);

-- Location: FF_X17_Y14_N25
\inst|REG_B[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~292_combout\,
	sload => VCC,
	ena => \inst|OP[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|REG_B\(14));

-- Location: LCCOMB_X19_Y14_N18
\inst|reggy~352\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~352_combout\ = (\inst|REG_A\(14) & ((\inst|alu1|Mux17~0_combout\) # ((\inst|REG_B\(14) & !\inst|alu1|Mux16~0_combout\)))) # (!\inst|REG_A\(14) & (\inst|alu1|Mux17~0_combout\ & ((\inst|REG_B\(14)) # (\inst|alu1|Mux16~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(14),
	datab => \inst|alu1|Mux17~0_combout\,
	datac => \inst|REG_B\(14),
	datad => \inst|alu1|Mux16~0_combout\,
	combout => \inst|reggy~352_combout\);

-- Location: FF_X19_Y13_N3
\inst|reggy~80\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|reggy~318_combout\,
	ena => \inst|reggy~183_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy~80_q\);

-- Location: FF_X12_Y17_N11
\inst|reggy~32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~318_combout\,
	sload => VCC,
	ena => \inst|reggy~182_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy~32_q\);

-- Location: LCCOMB_X12_Y17_N0
\inst|reggy~285\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~285_combout\ = (\inst|MAR\(0) & (\inst|MAR\(1))) # (!\inst|MAR\(0) & ((\inst|MAR\(1) & (\inst|reggy~64_q\)) # (!\inst|MAR\(1) & ((\inst|reggy~32_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MAR\(0),
	datab => \inst|MAR\(1),
	datac => \inst|reggy~64_q\,
	datad => \inst|reggy~32_q\,
	combout => \inst|reggy~285_combout\);

-- Location: LCCOMB_X19_Y13_N0
\inst|reggy~48feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~48feeder_combout\ = \inst|reggy~318_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|reggy~318_combout\,
	combout => \inst|reggy~48feeder_combout\);

-- Location: FF_X19_Y13_N1
\inst|reggy~48\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|reggy~48feeder_combout\,
	ena => \inst|reggy~181_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy~48_q\);

-- Location: LCCOMB_X19_Y14_N10
\inst|reggy~286\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~286_combout\ = (\inst|MAR\(0) & ((\inst|reggy~285_combout\ & (\inst|reggy~80_q\)) # (!\inst|reggy~285_combout\ & ((\inst|reggy~48_q\))))) # (!\inst|MAR\(0) & (((\inst|reggy~285_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy~80_q\,
	datab => \inst|MAR\(0),
	datac => \inst|reggy~285_combout\,
	datad => \inst|reggy~48_q\,
	combout => \inst|reggy~286_combout\);

-- Location: FF_X18_Y14_N13
\inst|REG_B[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~286_combout\,
	sload => VCC,
	ena => \inst|OP[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|REG_B\(12));

-- Location: LCCOMB_X23_Y13_N20
\inst|reggy~316\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~316_combout\ = (\inst|alu1|Mux16~0_combout\ & (((\inst|alu1|Mux17~0_combout\)))) # (!\inst|alu1|Mux16~0_combout\ & ((\inst|REG_B\(12) & ((\inst|REG_A\(12)) # (\inst|alu1|Mux17~0_combout\))) # (!\inst|REG_B\(12) & (\inst|REG_A\(12) & 
-- \inst|alu1|Mux17~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux16~0_combout\,
	datab => \inst|REG_B\(12),
	datac => \inst|REG_A\(12),
	datad => \inst|alu1|Mux17~0_combout\,
	combout => \inst|reggy~316_combout\);

-- Location: FF_X16_Y17_N7
\inst|reggy~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~210_combout\,
	sload => VCC,
	ena => \inst|reggy~182_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy~26_q\);

-- Location: FF_X16_Y17_N9
\inst|reggy~58\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~210_combout\,
	sload => VCC,
	ena => \inst|reggy~180_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy~58_q\);

-- Location: LCCOMB_X16_Y17_N8
\inst|reggy~265\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~265_combout\ = (\inst|MAR\(0) & (((\inst|MAR\(1))))) # (!\inst|MAR\(0) & ((\inst|MAR\(1) & ((\inst|reggy~58_q\))) # (!\inst|MAR\(1) & (\inst|reggy~26_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy~26_q\,
	datab => \inst|MAR\(0),
	datac => \inst|reggy~58_q\,
	datad => \inst|MAR\(1),
	combout => \inst|reggy~265_combout\);

-- Location: FF_X19_Y17_N15
\inst|reggy~74\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|reggy~210_combout\,
	ena => \inst|reggy~183_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy~74_q\);

-- Location: LCCOMB_X19_Y17_N24
\inst|reggy~266\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~266_combout\ = (\inst|MAR\(0) & ((\inst|reggy~265_combout\ & ((\inst|reggy~74_q\))) # (!\inst|reggy~265_combout\ & (\inst|reggy~42_q\)))) # (!\inst|MAR\(0) & (\inst|reggy~265_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MAR\(0),
	datab => \inst|reggy~265_combout\,
	datac => \inst|reggy~42_q\,
	datad => \inst|reggy~74_q\,
	combout => \inst|reggy~266_combout\);

-- Location: FF_X17_Y14_N3
\inst|REG_B[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~266_combout\,
	sload => VCC,
	ena => \inst|OP[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|REG_B\(6));

-- Location: FF_X16_Y13_N27
\inst|reggy~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~230_combout\,
	sload => VCC,
	ena => \inst|reggy~182_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy~24_q\);

-- Location: LCCOMB_X16_Y13_N12
\inst|reggy~261\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~261_combout\ = (\inst|MAR\(0) & (((\inst|MAR\(1))))) # (!\inst|MAR\(0) & ((\inst|MAR\(1) & ((\inst|reggy~56_q\))) # (!\inst|MAR\(1) & (\inst|reggy~24_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy~24_q\,
	datab => \inst|MAR\(0),
	datac => \inst|reggy~56_q\,
	datad => \inst|MAR\(1),
	combout => \inst|reggy~261_combout\);

-- Location: FF_X18_Y13_N9
\inst|reggy~40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~230_combout\,
	sload => VCC,
	ena => \inst|reggy~181_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy~40_q\);

-- Location: FF_X19_Y13_N9
\inst|reggy~72\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|reggy~230_combout\,
	ena => \inst|reggy~183_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy~72_q\);

-- Location: LCCOMB_X18_Y13_N8
\inst|reggy~262\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~262_combout\ = (\inst|reggy~261_combout\ & (((\inst|reggy~72_q\)) # (!\inst|MAR\(0)))) # (!\inst|reggy~261_combout\ & (\inst|MAR\(0) & (\inst|reggy~40_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy~261_combout\,
	datab => \inst|MAR\(0),
	datac => \inst|reggy~40_q\,
	datad => \inst|reggy~72_q\,
	combout => \inst|reggy~262_combout\);

-- Location: FF_X17_Y14_N7
\inst|REG_B[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~262_combout\,
	sload => VCC,
	ena => \inst|OP[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|REG_B\(4));

-- Location: FF_X12_Y17_N19
\inst|reggy~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~240_combout\,
	sload => VCC,
	ena => \inst|reggy~182_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy~23_q\);

-- Location: LCCOMB_X12_Y17_N16
\inst|reggy~259\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~259_combout\ = (\inst|MAR\(0) & (\inst|MAR\(1))) # (!\inst|MAR\(0) & ((\inst|MAR\(1) & (\inst|reggy~55_q\)) # (!\inst|MAR\(1) & ((\inst|reggy~23_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MAR\(0),
	datab => \inst|MAR\(1),
	datac => \inst|reggy~55_q\,
	datad => \inst|reggy~23_q\,
	combout => \inst|reggy~259_combout\);

-- Location: FF_X19_Y17_N27
\inst|reggy~71\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|reggy~240_combout\,
	ena => \inst|reggy~183_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy~71_q\);

-- Location: FF_X19_Y17_N5
\inst|reggy~39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~240_combout\,
	sload => VCC,
	ena => \inst|reggy~181_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy~39_q\);

-- Location: LCCOMB_X17_Y16_N24
\inst|reggy~260\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~260_combout\ = (\inst|reggy~259_combout\ & ((\inst|reggy~71_q\) # ((!\inst|MAR\(0))))) # (!\inst|reggy~259_combout\ & (((\inst|reggy~39_q\ & \inst|MAR\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy~259_combout\,
	datab => \inst|reggy~71_q\,
	datac => \inst|reggy~39_q\,
	datad => \inst|MAR\(0),
	combout => \inst|reggy~260_combout\);

-- Location: FF_X17_Y14_N5
\inst|REG_B[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~260_combout\,
	sload => VCC,
	ena => \inst|OP[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|REG_B\(3));

-- Location: FF_X12_Y14_N31
\inst|reggy~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~242_combout\,
	sload => VCC,
	ena => \inst|reggy~182_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy~22_q\);

-- Location: FF_X12_Y14_N1
\inst|reggy~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~242_combout\,
	sload => VCC,
	ena => \inst|reggy~181_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy~38_q\);

-- Location: LCCOMB_X12_Y14_N0
\inst|reggy~257\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~257_combout\ = (\inst|MAR\(0) & (((\inst|reggy~38_q\) # (\inst|MAR\(1))))) # (!\inst|MAR\(0) & (\inst|reggy~22_q\ & ((!\inst|MAR\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy~22_q\,
	datab => \inst|MAR\(0),
	datac => \inst|reggy~38_q\,
	datad => \inst|MAR\(1),
	combout => \inst|reggy~257_combout\);

-- Location: FF_X11_Y16_N5
\inst|reggy~54\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~242_combout\,
	sload => VCC,
	ena => \inst|reggy~180_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy~54_q\);

-- Location: LCCOMB_X18_Y15_N30
\inst|reggy~258\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~258_combout\ = (\inst|MAR\(1) & ((\inst|reggy~257_combout\ & (\inst|reggy~70_q\)) # (!\inst|reggy~257_combout\ & ((\inst|reggy~54_q\))))) # (!\inst|MAR\(1) & (\inst|reggy~257_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MAR\(1),
	datab => \inst|reggy~257_combout\,
	datac => \inst|reggy~70_q\,
	datad => \inst|reggy~54_q\,
	combout => \inst|reggy~258_combout\);

-- Location: FF_X18_Y15_N31
\inst|REG_B[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|reggy~258_combout\,
	ena => \inst|OP[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|REG_B\(2));

-- Location: LCCOMB_X22_Y13_N22
\inst|alu1|unidad_aritmetica|mult|inter[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|inter\(6) = (\inst|REG_B\(0) & \inst|REG_A\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|REG_B\(0),
	datad => \inst|REG_A\(6),
	combout => \inst|alu1|unidad_aritmetica|mult|inter\(6));

-- Location: LCCOMB_X21_Y16_N22
\inst|alu1|unidad_aritmetica|mult|inter[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|inter\(5) = (\inst|REG_B\(0) & \inst|REG_A\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|REG_B\(0),
	datad => \inst|REG_A\(5),
	combout => \inst|alu1|unidad_aritmetica|mult|inter\(5));

-- Location: LCCOMB_X14_Y18_N22
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

-- Location: LCCOMB_X14_Y18_N6
\inst|alu1|unidad_aritmetica|mult|multi1|sR:1:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi1|sR:1:sP|Cout~0_combout\ = (\inst|REG_A\(0) & (\inst|REG_B\(1) & (\inst|REG_A\(1) & \inst|REG_B\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(0),
	datab => \inst|REG_B\(1),
	datac => \inst|REG_A\(1),
	datad => \inst|REG_B\(0),
	combout => \inst|alu1|unidad_aritmetica|mult|multi1|sR:1:sP|Cout~0_combout\);

-- Location: LCCOMB_X14_Y18_N28
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

-- Location: LCCOMB_X14_Y18_N24
\inst|alu1|unidad_aritmetica|mult|multi1|sR:2:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi1|sR:2:sP|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi1|sR:1:sP|Cout~0_combout\ & ((\inst|alu1|unidad_aritmetica|mult|inter\(2)) # ((\inst|REG_B\(1) & \inst|REG_A\(1))))) # 
-- (!\inst|alu1|unidad_aritmetica|mult|multi1|sR:1:sP|Cout~0_combout\ & (\inst|REG_B\(1) & (\inst|REG_A\(1) & \inst|alu1|unidad_aritmetica|mult|inter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|multi1|sR:1:sP|Cout~0_combout\,
	datab => \inst|REG_B\(1),
	datac => \inst|REG_A\(1),
	datad => \inst|alu1|unidad_aritmetica|mult|inter\(2),
	combout => \inst|alu1|unidad_aritmetica|mult|multi1|sR:2:sP|Cout~0_combout\);

-- Location: LCCOMB_X14_Y18_N26
\inst|alu1|unidad_aritmetica|mult|multi1|sR:3:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi1|sR:3:sP|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|mult|inter\(3) & ((\inst|alu1|unidad_aritmetica|mult|multi1|sR:2:sP|Cout~0_combout\) # ((\inst|REG_A\(2) & \inst|REG_B\(1))))) # 
-- (!\inst|alu1|unidad_aritmetica|mult|inter\(3) & (\inst|REG_A\(2) & (\inst|REG_B\(1) & \inst|alu1|unidad_aritmetica|mult|multi1|sR:2:sP|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|inter\(3),
	datab => \inst|REG_A\(2),
	datac => \inst|REG_B\(1),
	datad => \inst|alu1|unidad_aritmetica|mult|multi1|sR:2:sP|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi1|sR:3:sP|Cout~0_combout\);

-- Location: LCCOMB_X14_Y18_N12
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

-- Location: LCCOMB_X14_Y18_N20
\inst|alu1|unidad_aritmetica|mult|multi1|sR:4:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi1|sR:4:sP|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi1|sR:3:sP|Cout~0_combout\ & ((\inst|alu1|unidad_aritmetica|mult|inter\(4)) # ((\inst|REG_A\(3) & \inst|REG_B\(1))))) # 
-- (!\inst|alu1|unidad_aritmetica|mult|multi1|sR:3:sP|Cout~0_combout\ & (\inst|REG_A\(3) & (\inst|REG_B\(1) & \inst|alu1|unidad_aritmetica|mult|inter\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(3),
	datab => \inst|REG_B\(1),
	datac => \inst|alu1|unidad_aritmetica|mult|multi1|sR:3:sP|Cout~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|mult|inter\(4),
	combout => \inst|alu1|unidad_aritmetica|mult|multi1|sR:4:sP|Cout~0_combout\);

-- Location: LCCOMB_X21_Y18_N20
\inst|alu1|unidad_aritmetica|mult|multi1|sR:5:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi1|sR:5:sP|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|mult|inter\(5) & ((\inst|alu1|unidad_aritmetica|mult|multi1|sR:4:sP|Cout~0_combout\) # ((\inst|REG_B\(1) & \inst|REG_A\(4))))) # 
-- (!\inst|alu1|unidad_aritmetica|mult|inter\(5) & (\inst|REG_B\(1) & (\inst|alu1|unidad_aritmetica|mult|multi1|sR:4:sP|Cout~0_combout\ & \inst|REG_A\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|inter\(5),
	datab => \inst|REG_B\(1),
	datac => \inst|alu1|unidad_aritmetica|mult|multi1|sR:4:sP|Cout~0_combout\,
	datad => \inst|REG_A\(4),
	combout => \inst|alu1|unidad_aritmetica|mult|multi1|sR:5:sP|Cout~0_combout\);

-- Location: LCCOMB_X21_Y18_N30
\inst|alu1|unidad_aritmetica|mult|multi1|sR:6:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi1|sR:6:sP|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|mult|inter\(6) & ((\inst|alu1|unidad_aritmetica|mult|multi1|sR:5:sP|Cout~0_combout\) # ((\inst|REG_A\(5) & \inst|REG_B\(1))))) # 
-- (!\inst|alu1|unidad_aritmetica|mult|inter\(6) & (\inst|REG_A\(5) & (\inst|REG_B\(1) & \inst|alu1|unidad_aritmetica|mult|multi1|sR:5:sP|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(5),
	datab => \inst|REG_B\(1),
	datac => \inst|alu1|unidad_aritmetica|mult|inter\(6),
	datad => \inst|alu1|unidad_aritmetica|mult|multi1|sR:5:sP|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi1|sR:6:sP|Cout~0_combout\);

-- Location: LCCOMB_X21_Y16_N4
\inst|alu1|unidad_aritmetica|mult|inter[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|inter\(7) = (\inst|REG_B\(0) & \inst|REG_A\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|REG_B\(0),
	datad => \inst|REG_A\(7),
	combout => \inst|alu1|unidad_aritmetica|mult|inter\(7));

-- Location: LCCOMB_X21_Y18_N12
\inst|alu1|unidad_aritmetica|mult|multi1|sR:7:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi1|sR:7:sP|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi1|sR:6:sP|Cout~0_combout\ & ((\inst|alu1|unidad_aritmetica|mult|inter\(7)) # ((\inst|REG_B\(1) & \inst|REG_A\(6))))) # 
-- (!\inst|alu1|unidad_aritmetica|mult|multi1|sR:6:sP|Cout~0_combout\ & (\inst|REG_B\(1) & (\inst|REG_A\(6) & \inst|alu1|unidad_aritmetica|mult|inter\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|multi1|sR:6:sP|Cout~0_combout\,
	datab => \inst|REG_B\(1),
	datac => \inst|REG_A\(6),
	datad => \inst|alu1|unidad_aritmetica|mult|inter\(7),
	combout => \inst|alu1|unidad_aritmetica|mult|multi1|sR:7:sP|Cout~0_combout\);

-- Location: LCCOMB_X21_Y18_N10
\inst|alu1|unidad_aritmetica|mult|multi1|sR:8:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi1|sR:8:sP|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|mult|multi1|sR:7:sP|Cout~0_combout\ $ (((\inst|REG_B\(1) & \inst|REG_A\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|REG_B\(1),
	datac => \inst|REG_A\(7),
	datad => \inst|alu1|unidad_aritmetica|mult|multi1|sR:7:sP|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi1|sR:8:sP|Suma~0_combout\);

-- Location: LCCOMB_X21_Y18_N14
\inst|alu1|unidad_aritmetica|mult|multi1|sR:6:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi1|sR:6:sP|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|mult|inter\(6) $ (\inst|alu1|unidad_aritmetica|mult|multi1|sR:5:sP|Cout~0_combout\ $ (((\inst|REG_A\(5) & \inst|REG_B\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(5),
	datab => \inst|REG_B\(1),
	datac => \inst|alu1|unidad_aritmetica|mult|inter\(6),
	datad => \inst|alu1|unidad_aritmetica|mult|multi1|sR:5:sP|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi1|sR:6:sP|Suma~0_combout\);

-- Location: LCCOMB_X21_Y18_N24
\inst|alu1|unidad_aritmetica|mult|multi1|sR:5:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi1|sR:5:sP|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|mult|inter\(5) $ (\inst|alu1|unidad_aritmetica|mult|multi1|sR:4:sP|Cout~0_combout\ $ (((\inst|REG_B\(1) & \inst|REG_A\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|inter\(5),
	datab => \inst|REG_B\(1),
	datac => \inst|alu1|unidad_aritmetica|mult|multi1|sR:4:sP|Cout~0_combout\,
	datad => \inst|REG_A\(4),
	combout => \inst|alu1|unidad_aritmetica|mult|multi1|sR:5:sP|Suma~0_combout\);

-- Location: LCCOMB_X14_Y18_N10
\inst|alu1|unidad_aritmetica|mult|multi1|sR:4:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi1|sR:4:sP|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|mult|multi1|sR:3:sP|Cout~0_combout\ $ (\inst|alu1|unidad_aritmetica|mult|inter\(4) $ (((\inst|REG_A\(3) & \inst|REG_B\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(3),
	datab => \inst|REG_B\(1),
	datac => \inst|alu1|unidad_aritmetica|mult|multi1|sR:3:sP|Cout~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|mult|inter\(4),
	combout => \inst|alu1|unidad_aritmetica|mult|multi1|sR:4:sP|Suma~0_combout\);

-- Location: LCCOMB_X14_Y18_N2
\inst|alu1|unidad_aritmetica|mult|multi1|sR:2:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi1|sR:2:sP|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|mult|multi1|sR:1:sP|Cout~0_combout\ $ (\inst|alu1|unidad_aritmetica|mult|inter\(2) $ (((\inst|REG_B\(1) & \inst|REG_A\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|multi1|sR:1:sP|Cout~0_combout\,
	datab => \inst|REG_B\(1),
	datac => \inst|REG_A\(1),
	datad => \inst|alu1|unidad_aritmetica|mult|inter\(2),
	combout => \inst|alu1|unidad_aritmetica|mult|multi1|sR:2:sP|Suma~0_combout\);

-- Location: LCCOMB_X14_Y18_N8
\inst|alu1|unidad_aritmetica|mult|multi2|sR:2:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi2|sR:2:sP|Cout~0_combout\ = (\inst|REG_B\(2) & (\inst|REG_A\(0) & \inst|alu1|unidad_aritmetica|mult|multi1|sR:2:sP|Suma~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(2),
	datac => \inst|REG_A\(0),
	datad => \inst|alu1|unidad_aritmetica|mult|multi1|sR:2:sP|Suma~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi2|sR:2:sP|Cout~0_combout\);

-- Location: LCCOMB_X14_Y18_N16
\inst|alu1|unidad_aritmetica|mult|multi1|sR:3:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi1|sR:3:sP|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|mult|inter\(3) $ (\inst|alu1|unidad_aritmetica|mult|multi1|sR:2:sP|Cout~0_combout\ $ (((\inst|REG_A\(2) & \inst|REG_B\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|inter\(3),
	datab => \inst|REG_A\(2),
	datac => \inst|REG_B\(1),
	datad => \inst|alu1|unidad_aritmetica|mult|multi1|sR:2:sP|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi1|sR:3:sP|Suma~0_combout\);

-- Location: LCCOMB_X14_Y18_N30
\inst|alu1|unidad_aritmetica|mult|multi2|sR:3:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi2|sR:3:sP|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi2|sR:2:sP|Cout~0_combout\ & ((\inst|alu1|unidad_aritmetica|mult|multi1|sR:3:sP|Suma~0_combout\) # ((\inst|REG_A\(1) & \inst|REG_B\(2))))) # 
-- (!\inst|alu1|unidad_aritmetica|mult|multi2|sR:2:sP|Cout~0_combout\ & (\inst|REG_A\(1) & (\inst|REG_B\(2) & \inst|alu1|unidad_aritmetica|mult|multi1|sR:3:sP|Suma~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(1),
	datab => \inst|alu1|unidad_aritmetica|mult|multi2|sR:2:sP|Cout~0_combout\,
	datac => \inst|REG_B\(2),
	datad => \inst|alu1|unidad_aritmetica|mult|multi1|sR:3:sP|Suma~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi2|sR:3:sP|Cout~0_combout\);

-- Location: LCCOMB_X22_Y18_N28
\inst|alu1|unidad_aritmetica|mult|multi2|sR:4:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi2|sR:4:sP|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi1|sR:4:sP|Suma~0_combout\ & ((\inst|alu1|unidad_aritmetica|mult|multi2|sR:3:sP|Cout~0_combout\) # ((\inst|REG_B\(2) & \inst|REG_A\(2))))) # 
-- (!\inst|alu1|unidad_aritmetica|mult|multi1|sR:4:sP|Suma~0_combout\ & (\inst|REG_B\(2) & (\inst|REG_A\(2) & \inst|alu1|unidad_aritmetica|mult|multi2|sR:3:sP|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(2),
	datab => \inst|alu1|unidad_aritmetica|mult|multi1|sR:4:sP|Suma~0_combout\,
	datac => \inst|REG_A\(2),
	datad => \inst|alu1|unidad_aritmetica|mult|multi2|sR:3:sP|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi2|sR:4:sP|Cout~0_combout\);

-- Location: LCCOMB_X21_Y18_N2
\inst|alu1|unidad_aritmetica|mult|multi2|sR:5:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi2|sR:5:sP|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi1|sR:5:sP|Suma~0_combout\ & ((\inst|alu1|unidad_aritmetica|mult|multi2|sR:4:sP|Cout~0_combout\) # ((\inst|REG_B\(2) & \inst|REG_A\(3))))) # 
-- (!\inst|alu1|unidad_aritmetica|mult|multi1|sR:5:sP|Suma~0_combout\ & (\inst|REG_B\(2) & (\inst|REG_A\(3) & \inst|alu1|unidad_aritmetica|mult|multi2|sR:4:sP|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(2),
	datab => \inst|alu1|unidad_aritmetica|mult|multi1|sR:5:sP|Suma~0_combout\,
	datac => \inst|REG_A\(3),
	datad => \inst|alu1|unidad_aritmetica|mult|multi2|sR:4:sP|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi2|sR:5:sP|Cout~0_combout\);

-- Location: LCCOMB_X21_Y18_N4
\inst|alu1|unidad_aritmetica|mult|multi2|sR:6:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi2|sR:6:sP|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi1|sR:6:sP|Suma~0_combout\ & ((\inst|alu1|unidad_aritmetica|mult|multi2|sR:5:sP|Cout~0_combout\) # ((\inst|REG_A\(4) & \inst|REG_B\(2))))) # 
-- (!\inst|alu1|unidad_aritmetica|mult|multi1|sR:6:sP|Suma~0_combout\ & (\inst|REG_A\(4) & (\inst|REG_B\(2) & \inst|alu1|unidad_aritmetica|mult|multi2|sR:5:sP|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(4),
	datab => \inst|alu1|unidad_aritmetica|mult|multi1|sR:6:sP|Suma~0_combout\,
	datac => \inst|REG_B\(2),
	datad => \inst|alu1|unidad_aritmetica|mult|multi2|sR:5:sP|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi2|sR:6:sP|Cout~0_combout\);

-- Location: LCCOMB_X21_Y18_N16
\inst|alu1|unidad_aritmetica|mult|multi1|sR:7:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi1|sR:7:sP|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|mult|multi1|sR:6:sP|Cout~0_combout\ $ (\inst|alu1|unidad_aritmetica|mult|inter\(7) $ (((\inst|REG_B\(1) & \inst|REG_A\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|multi1|sR:6:sP|Cout~0_combout\,
	datab => \inst|REG_B\(1),
	datac => \inst|REG_A\(6),
	datad => \inst|alu1|unidad_aritmetica|mult|inter\(7),
	combout => \inst|alu1|unidad_aritmetica|mult|multi1|sR:7:sP|Suma~0_combout\);

-- Location: LCCOMB_X21_Y18_N18
\inst|alu1|unidad_aritmetica|mult|multi2|sR:7:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi2|sR:7:sP|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi2|sR:6:sP|Cout~0_combout\ & ((\inst|alu1|unidad_aritmetica|mult|multi1|sR:7:sP|Suma~0_combout\) # ((\inst|REG_A\(5) & \inst|REG_B\(2))))) # 
-- (!\inst|alu1|unidad_aritmetica|mult|multi2|sR:6:sP|Cout~0_combout\ & (\inst|REG_A\(5) & (\inst|REG_B\(2) & \inst|alu1|unidad_aritmetica|mult|multi1|sR:7:sP|Suma~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(5),
	datab => \inst|alu1|unidad_aritmetica|mult|multi2|sR:6:sP|Cout~0_combout\,
	datac => \inst|REG_B\(2),
	datad => \inst|alu1|unidad_aritmetica|mult|multi1|sR:7:sP|Suma~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi2|sR:7:sP|Cout~0_combout\);

-- Location: LCCOMB_X21_Y18_N22
\inst|alu1|unidad_aritmetica|mult|multi2|sR:8:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi2|sR:8:sP|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi1|sR:8:sP|Suma~0_combout\ & ((\inst|alu1|unidad_aritmetica|mult|multi2|sR:7:sP|Cout~0_combout\) # ((\inst|REG_A\(6) & \inst|REG_B\(2))))) # 
-- (!\inst|alu1|unidad_aritmetica|mult|multi1|sR:8:sP|Suma~0_combout\ & (\inst|REG_A\(6) & (\inst|REG_B\(2) & \inst|alu1|unidad_aritmetica|mult|multi2|sR:7:sP|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|multi1|sR:8:sP|Suma~0_combout\,
	datab => \inst|REG_A\(6),
	datac => \inst|REG_B\(2),
	datad => \inst|alu1|unidad_aritmetica|mult|multi2|sR:7:sP|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi2|sR:8:sP|Cout~0_combout\);

-- Location: LCCOMB_X21_Y18_N28
\inst|alu1|unidad_aritmetica|mult|multi1|sR:8:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi1|sR:8:sP|Cout~0_combout\ = (\inst|REG_B\(1) & (\inst|REG_A\(7) & \inst|alu1|unidad_aritmetica|mult|multi1|sR:7:sP|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|REG_B\(1),
	datac => \inst|REG_A\(7),
	datad => \inst|alu1|unidad_aritmetica|mult|multi1|sR:7:sP|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi1|sR:8:sP|Cout~0_combout\);

-- Location: LCCOMB_X23_Y18_N14
\inst|alu1|unidad_aritmetica|mult|multi2|sR:9:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi2|sR:9:sP|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|mult|multi2|sR:8:sP|Cout~0_combout\ $ (\inst|alu1|unidad_aritmetica|mult|multi1|sR:8:sP|Cout~0_combout\ $ (((\inst|REG_A\(7) & \inst|REG_B\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(7),
	datab => \inst|REG_B\(2),
	datac => \inst|alu1|unidad_aritmetica|mult|multi2|sR:8:sP|Cout~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|mult|multi1|sR:8:sP|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi2|sR:9:sP|Suma~0_combout\);

-- Location: LCCOMB_X21_Y18_N0
\inst|alu1|unidad_aritmetica|mult|multi2|sR:8:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi2|sR:8:sP|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|mult|multi1|sR:8:sP|Suma~0_combout\ $ (\inst|alu1|unidad_aritmetica|mult|multi2|sR:7:sP|Cout~0_combout\ $ (((\inst|REG_A\(6) & \inst|REG_B\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|multi1|sR:8:sP|Suma~0_combout\,
	datab => \inst|REG_A\(6),
	datac => \inst|REG_B\(2),
	datad => \inst|alu1|unidad_aritmetica|mult|multi2|sR:7:sP|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi2|sR:8:sP|Suma~0_combout\);

-- Location: LCCOMB_X21_Y18_N6
\inst|alu1|unidad_aritmetica|mult|multi2|sR:7:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi2|sR:7:sP|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|mult|multi2|sR:6:sP|Cout~0_combout\ $ (\inst|alu1|unidad_aritmetica|mult|multi1|sR:7:sP|Suma~0_combout\ $ (((\inst|REG_A\(5) & \inst|REG_B\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(5),
	datab => \inst|alu1|unidad_aritmetica|mult|multi2|sR:6:sP|Cout~0_combout\,
	datac => \inst|REG_B\(2),
	datad => \inst|alu1|unidad_aritmetica|mult|multi1|sR:7:sP|Suma~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi2|sR:7:sP|Suma~0_combout\);

-- Location: LCCOMB_X21_Y18_N26
\inst|alu1|unidad_aritmetica|mult|multi2|sR:5:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi2|sR:5:sP|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|mult|multi1|sR:5:sP|Suma~0_combout\ $ (\inst|alu1|unidad_aritmetica|mult|multi2|sR:4:sP|Cout~0_combout\ $ (((\inst|REG_B\(2) & \inst|REG_A\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(2),
	datab => \inst|alu1|unidad_aritmetica|mult|multi1|sR:5:sP|Suma~0_combout\,
	datac => \inst|REG_A\(3),
	datad => \inst|alu1|unidad_aritmetica|mult|multi2|sR:4:sP|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi2|sR:5:sP|Suma~0_combout\);

-- Location: LCCOMB_X22_Y18_N18
\inst|alu1|unidad_aritmetica|mult|multi2|sR:4:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi2|sR:4:sP|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|mult|multi1|sR:4:sP|Suma~0_combout\ $ (\inst|alu1|unidad_aritmetica|mult|multi2|sR:3:sP|Cout~0_combout\ $ (((\inst|REG_B\(2) & \inst|REG_A\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(2),
	datab => \inst|alu1|unidad_aritmetica|mult|multi1|sR:4:sP|Suma~0_combout\,
	datac => \inst|REG_A\(2),
	datad => \inst|alu1|unidad_aritmetica|mult|multi2|sR:3:sP|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi2|sR:4:sP|Suma~0_combout\);

-- Location: LCCOMB_X14_Y18_N4
\inst|alu1|unidad_aritmetica|mult|multi2|sR:3:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi2|sR:3:sP|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|mult|multi2|sR:2:sP|Cout~0_combout\ $ (\inst|alu1|unidad_aritmetica|mult|multi1|sR:3:sP|Suma~0_combout\ $ (((\inst|REG_A\(1) & \inst|REG_B\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(1),
	datab => \inst|alu1|unidad_aritmetica|mult|multi2|sR:2:sP|Cout~0_combout\,
	datac => \inst|REG_B\(2),
	datad => \inst|alu1|unidad_aritmetica|mult|multi1|sR:3:sP|Suma~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi2|sR:3:sP|Suma~0_combout\);

-- Location: LCCOMB_X22_Y18_N4
\inst|alu1|unidad_aritmetica|mult|multi3|sR:3:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi3|sR:3:sP|Cout~0_combout\ = (\inst|REG_B\(3) & (\inst|alu1|unidad_aritmetica|mult|multi2|sR:3:sP|Suma~0_combout\ & \inst|REG_A\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|REG_B\(3),
	datac => \inst|alu1|unidad_aritmetica|mult|multi2|sR:3:sP|Suma~0_combout\,
	datad => \inst|REG_A\(0),
	combout => \inst|alu1|unidad_aritmetica|mult|multi3|sR:3:sP|Cout~0_combout\);

-- Location: LCCOMB_X22_Y18_N6
\inst|alu1|unidad_aritmetica|mult|multi3|sR:4:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi3|sR:4:sP|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi2|sR:4:sP|Suma~0_combout\ & ((\inst|alu1|unidad_aritmetica|mult|multi3|sR:3:sP|Cout~0_combout\) # ((\inst|REG_A\(1) & \inst|REG_B\(3))))) # 
-- (!\inst|alu1|unidad_aritmetica|mult|multi2|sR:4:sP|Suma~0_combout\ & (\inst|REG_A\(1) & (\inst|REG_B\(3) & \inst|alu1|unidad_aritmetica|mult|multi3|sR:3:sP|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(1),
	datab => \inst|alu1|unidad_aritmetica|mult|multi2|sR:4:sP|Suma~0_combout\,
	datac => \inst|REG_B\(3),
	datad => \inst|alu1|unidad_aritmetica|mult|multi3|sR:3:sP|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi3|sR:4:sP|Cout~0_combout\);

-- Location: LCCOMB_X22_Y18_N8
\inst|alu1|unidad_aritmetica|mult|multi3|sR:5:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi3|sR:5:sP|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi2|sR:5:sP|Suma~0_combout\ & ((\inst|alu1|unidad_aritmetica|mult|multi3|sR:4:sP|Cout~0_combout\) # ((\inst|REG_A\(2) & \inst|REG_B\(3))))) # 
-- (!\inst|alu1|unidad_aritmetica|mult|multi2|sR:5:sP|Suma~0_combout\ & (\inst|REG_A\(2) & (\inst|REG_B\(3) & \inst|alu1|unidad_aritmetica|mult|multi3|sR:4:sP|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|multi2|sR:5:sP|Suma~0_combout\,
	datab => \inst|REG_A\(2),
	datac => \inst|REG_B\(3),
	datad => \inst|alu1|unidad_aritmetica|mult|multi3|sR:4:sP|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi3|sR:5:sP|Cout~0_combout\);

-- Location: LCCOMB_X21_Y18_N8
\inst|alu1|unidad_aritmetica|mult|multi2|sR:6:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi2|sR:6:sP|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|mult|multi1|sR:6:sP|Suma~0_combout\ $ (\inst|alu1|unidad_aritmetica|mult|multi2|sR:5:sP|Cout~0_combout\ $ (((\inst|REG_A\(4) & \inst|REG_B\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(4),
	datab => \inst|alu1|unidad_aritmetica|mult|multi1|sR:6:sP|Suma~0_combout\,
	datac => \inst|REG_B\(2),
	datad => \inst|alu1|unidad_aritmetica|mult|multi2|sR:5:sP|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi2|sR:6:sP|Suma~0_combout\);

-- Location: LCCOMB_X22_Y18_N22
\inst|alu1|unidad_aritmetica|mult|multi3|sR:6:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi3|sR:6:sP|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi3|sR:5:sP|Cout~0_combout\ & ((\inst|alu1|unidad_aritmetica|mult|multi2|sR:6:sP|Suma~0_combout\) # ((\inst|REG_A\(3) & \inst|REG_B\(3))))) # 
-- (!\inst|alu1|unidad_aritmetica|mult|multi3|sR:5:sP|Cout~0_combout\ & (\inst|REG_A\(3) & (\inst|REG_B\(3) & \inst|alu1|unidad_aritmetica|mult|multi2|sR:6:sP|Suma~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|multi3|sR:5:sP|Cout~0_combout\,
	datab => \inst|REG_A\(3),
	datac => \inst|REG_B\(3),
	datad => \inst|alu1|unidad_aritmetica|mult|multi2|sR:6:sP|Suma~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi3|sR:6:sP|Cout~0_combout\);

-- Location: LCCOMB_X23_Y18_N12
\inst|alu1|unidad_aritmetica|mult|multi3|sR:7:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi3|sR:7:sP|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi2|sR:7:sP|Suma~0_combout\ & ((\inst|alu1|unidad_aritmetica|mult|multi3|sR:6:sP|Cout~0_combout\) # ((\inst|REG_B\(3) & \inst|REG_A\(4))))) # 
-- (!\inst|alu1|unidad_aritmetica|mult|multi2|sR:7:sP|Suma~0_combout\ & (\inst|REG_B\(3) & (\inst|REG_A\(4) & \inst|alu1|unidad_aritmetica|mult|multi3|sR:6:sP|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(3),
	datab => \inst|REG_A\(4),
	datac => \inst|alu1|unidad_aritmetica|mult|multi2|sR:7:sP|Suma~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|mult|multi3|sR:6:sP|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi3|sR:7:sP|Cout~0_combout\);

-- Location: LCCOMB_X23_Y18_N0
\inst|alu1|unidad_aritmetica|mult|multi3|sR:8:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi3|sR:8:sP|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi2|sR:8:sP|Suma~0_combout\ & ((\inst|alu1|unidad_aritmetica|mult|multi3|sR:7:sP|Cout~0_combout\) # ((\inst|REG_B\(3) & \inst|REG_A\(5))))) # 
-- (!\inst|alu1|unidad_aritmetica|mult|multi2|sR:8:sP|Suma~0_combout\ & (\inst|REG_B\(3) & (\inst|REG_A\(5) & \inst|alu1|unidad_aritmetica|mult|multi3|sR:7:sP|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(3),
	datab => \inst|REG_A\(5),
	datac => \inst|alu1|unidad_aritmetica|mult|multi2|sR:8:sP|Suma~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|mult|multi3|sR:7:sP|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi3|sR:8:sP|Cout~0_combout\);

-- Location: LCCOMB_X23_Y18_N8
\inst|alu1|unidad_aritmetica|mult|multi3|sR:9:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi3|sR:9:sP|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|mult|multi2|sR:9:sP|Suma~0_combout\ $ (\inst|alu1|unidad_aritmetica|mult|multi3|sR:8:sP|Cout~0_combout\ $ (((\inst|REG_B\(3) & \inst|REG_A\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(3),
	datab => \inst|alu1|unidad_aritmetica|mult|multi2|sR:9:sP|Suma~0_combout\,
	datac => \inst|REG_A\(6),
	datad => \inst|alu1|unidad_aritmetica|mult|multi3|sR:8:sP|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi3|sR:9:sP|Suma~0_combout\);

-- Location: LCCOMB_X23_Y18_N26
\inst|alu1|unidad_aritmetica|mult|multi3|sR:8:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi3|sR:8:sP|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|mult|multi2|sR:8:sP|Suma~0_combout\ $ (\inst|alu1|unidad_aritmetica|mult|multi3|sR:7:sP|Cout~0_combout\ $ (((\inst|REG_B\(3) & \inst|REG_A\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(3),
	datab => \inst|REG_A\(5),
	datac => \inst|alu1|unidad_aritmetica|mult|multi2|sR:8:sP|Suma~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|mult|multi3|sR:7:sP|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi3|sR:8:sP|Suma~0_combout\);

-- Location: LCCOMB_X22_Y18_N0
\inst|alu1|unidad_aritmetica|mult|multi3|sR:6:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi3|sR:6:sP|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|mult|multi3|sR:5:sP|Cout~0_combout\ $ (\inst|alu1|unidad_aritmetica|mult|multi2|sR:6:sP|Suma~0_combout\ $ (((\inst|REG_A\(3) & \inst|REG_B\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|multi3|sR:5:sP|Cout~0_combout\,
	datab => \inst|REG_A\(3),
	datac => \inst|REG_B\(3),
	datad => \inst|alu1|unidad_aritmetica|mult|multi2|sR:6:sP|Suma~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi3|sR:6:sP|Suma~0_combout\);

-- Location: LCCOMB_X22_Y18_N24
\inst|alu1|unidad_aritmetica|mult|multi3|sR:4:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi3|sR:4:sP|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|mult|multi2|sR:4:sP|Suma~0_combout\ $ (\inst|alu1|unidad_aritmetica|mult|multi3|sR:3:sP|Cout~0_combout\ $ (((\inst|REG_A\(1) & \inst|REG_B\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(1),
	datab => \inst|alu1|unidad_aritmetica|mult|multi2|sR:4:sP|Suma~0_combout\,
	datac => \inst|REG_B\(3),
	datad => \inst|alu1|unidad_aritmetica|mult|multi3|sR:3:sP|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi3|sR:4:sP|Suma~0_combout\);

-- Location: LCCOMB_X22_Y18_N30
\inst|alu1|unidad_aritmetica|mult|multi4|sR:4:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi4|sR:4:sP|Cout~0_combout\ = (\inst|REG_A\(0) & (\inst|REG_B\(4) & \inst|alu1|unidad_aritmetica|mult|multi3|sR:4:sP|Suma~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|REG_A\(0),
	datac => \inst|REG_B\(4),
	datad => \inst|alu1|unidad_aritmetica|mult|multi3|sR:4:sP|Suma~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi4|sR:4:sP|Cout~0_combout\);

-- Location: LCCOMB_X22_Y18_N2
\inst|alu1|unidad_aritmetica|mult|multi3|sR:5:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi3|sR:5:sP|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|mult|multi2|sR:5:sP|Suma~0_combout\ $ (\inst|alu1|unidad_aritmetica|mult|multi3|sR:4:sP|Cout~0_combout\ $ (((\inst|REG_A\(2) & \inst|REG_B\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(2),
	datab => \inst|REG_B\(3),
	datac => \inst|alu1|unidad_aritmetica|mult|multi2|sR:5:sP|Suma~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|mult|multi3|sR:4:sP|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi3|sR:5:sP|Suma~0_combout\);

-- Location: LCCOMB_X22_Y18_N16
\inst|alu1|unidad_aritmetica|mult|multi4|sR:5:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi4|sR:5:sP|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi4|sR:4:sP|Cout~0_combout\ & ((\inst|alu1|unidad_aritmetica|mult|multi3|sR:5:sP|Suma~0_combout\) # ((\inst|REG_A\(1) & \inst|REG_B\(4))))) # 
-- (!\inst|alu1|unidad_aritmetica|mult|multi4|sR:4:sP|Cout~0_combout\ & (\inst|REG_A\(1) & (\inst|REG_B\(4) & \inst|alu1|unidad_aritmetica|mult|multi3|sR:5:sP|Suma~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(1),
	datab => \inst|REG_B\(4),
	datac => \inst|alu1|unidad_aritmetica|mult|multi4|sR:4:sP|Cout~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|mult|multi3|sR:5:sP|Suma~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi4|sR:5:sP|Cout~0_combout\);

-- Location: LCCOMB_X22_Y18_N26
\inst|alu1|unidad_aritmetica|mult|multi4|sR:6:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi4|sR:6:sP|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi3|sR:6:sP|Suma~0_combout\ & ((\inst|alu1|unidad_aritmetica|mult|multi4|sR:5:sP|Cout~0_combout\) # ((\inst|REG_A\(2) & \inst|REG_B\(4))))) # 
-- (!\inst|alu1|unidad_aritmetica|mult|multi3|sR:6:sP|Suma~0_combout\ & (\inst|REG_A\(2) & (\inst|REG_B\(4) & \inst|alu1|unidad_aritmetica|mult|multi4|sR:5:sP|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(2),
	datab => \inst|alu1|unidad_aritmetica|mult|multi3|sR:6:sP|Suma~0_combout\,
	datac => \inst|REG_B\(4),
	datad => \inst|alu1|unidad_aritmetica|mult|multi4|sR:5:sP|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi4|sR:6:sP|Cout~0_combout\);

-- Location: LCCOMB_X23_Y18_N16
\inst|alu1|unidad_aritmetica|mult|multi3|sR:7:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi3|sR:7:sP|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|mult|multi2|sR:7:sP|Suma~0_combout\ $ (\inst|alu1|unidad_aritmetica|mult|multi3|sR:6:sP|Cout~0_combout\ $ (((\inst|REG_B\(3) & \inst|REG_A\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(3),
	datab => \inst|REG_A\(4),
	datac => \inst|alu1|unidad_aritmetica|mult|multi2|sR:7:sP|Suma~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|mult|multi3|sR:6:sP|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi3|sR:7:sP|Suma~0_combout\);

-- Location: LCCOMB_X23_Y18_N2
\inst|alu1|unidad_aritmetica|mult|multi4|sR:7:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi4|sR:7:sP|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi4|sR:6:sP|Cout~0_combout\ & ((\inst|alu1|unidad_aritmetica|mult|multi3|sR:7:sP|Suma~0_combout\) # ((\inst|REG_A\(3) & \inst|REG_B\(4))))) # 
-- (!\inst|alu1|unidad_aritmetica|mult|multi4|sR:6:sP|Cout~0_combout\ & (\inst|REG_A\(3) & (\inst|REG_B\(4) & \inst|alu1|unidad_aritmetica|mult|multi3|sR:7:sP|Suma~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|multi4|sR:6:sP|Cout~0_combout\,
	datab => \inst|REG_A\(3),
	datac => \inst|REG_B\(4),
	datad => \inst|alu1|unidad_aritmetica|mult|multi3|sR:7:sP|Suma~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi4|sR:7:sP|Cout~0_combout\);

-- Location: LCCOMB_X23_Y18_N18
\inst|alu1|unidad_aritmetica|mult|multi4|sR:8:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi4|sR:8:sP|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi3|sR:8:sP|Suma~0_combout\ & ((\inst|alu1|unidad_aritmetica|mult|multi4|sR:7:sP|Cout~0_combout\) # ((\inst|REG_B\(4) & \inst|REG_A\(4))))) # 
-- (!\inst|alu1|unidad_aritmetica|mult|multi3|sR:8:sP|Suma~0_combout\ & (\inst|REG_B\(4) & (\inst|REG_A\(4) & \inst|alu1|unidad_aritmetica|mult|multi4|sR:7:sP|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(4),
	datab => \inst|REG_A\(4),
	datac => \inst|alu1|unidad_aritmetica|mult|multi3|sR:8:sP|Suma~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|mult|multi4|sR:7:sP|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi4|sR:8:sP|Cout~0_combout\);

-- Location: LCCOMB_X23_Y18_N6
\inst|alu1|unidad_aritmetica|mult|multi4|sR:9:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi4|sR:9:sP|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|mult|multi3|sR:9:sP|Suma~0_combout\ $ (\inst|alu1|unidad_aritmetica|mult|multi4|sR:8:sP|Cout~0_combout\ $ (((\inst|REG_B\(4) & \inst|REG_A\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(4),
	datab => \inst|alu1|unidad_aritmetica|mult|multi3|sR:9:sP|Suma~0_combout\,
	datac => \inst|REG_A\(5),
	datad => \inst|alu1|unidad_aritmetica|mult|multi4|sR:8:sP|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi4|sR:9:sP|Suma~0_combout\);

-- Location: LCCOMB_X23_Y18_N30
\inst|alu1|unidad_aritmetica|mult|multi4|sR:7:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi4|sR:7:sP|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|mult|multi4|sR:6:sP|Cout~0_combout\ $ (\inst|alu1|unidad_aritmetica|mult|multi3|sR:7:sP|Suma~0_combout\ $ (((\inst|REG_A\(3) & \inst|REG_B\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|multi4|sR:6:sP|Cout~0_combout\,
	datab => \inst|REG_A\(3),
	datac => \inst|REG_B\(4),
	datad => \inst|alu1|unidad_aritmetica|mult|multi3|sR:7:sP|Suma~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi4|sR:7:sP|Suma~0_combout\);

-- Location: LCCOMB_X22_Y18_N12
\inst|alu1|unidad_aritmetica|mult|multi4|sR:6:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi4|sR:6:sP|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|mult|multi3|sR:6:sP|Suma~0_combout\ $ (\inst|alu1|unidad_aritmetica|mult|multi4|sR:5:sP|Cout~0_combout\ $ (((\inst|REG_A\(2) & \inst|REG_B\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(2),
	datab => \inst|alu1|unidad_aritmetica|mult|multi3|sR:6:sP|Suma~0_combout\,
	datac => \inst|REG_B\(4),
	datad => \inst|alu1|unidad_aritmetica|mult|multi4|sR:5:sP|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi4|sR:6:sP|Suma~0_combout\);

-- Location: LCCOMB_X22_Y18_N10
\inst|alu1|unidad_aritmetica|mult|multi4|sR:5:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi4|sR:5:sP|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|mult|multi4|sR:4:sP|Cout~0_combout\ $ (\inst|alu1|unidad_aritmetica|mult|multi3|sR:5:sP|Suma~0_combout\ $ (((\inst|REG_A\(1) & \inst|REG_B\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(1),
	datab => \inst|REG_B\(4),
	datac => \inst|alu1|unidad_aritmetica|mult|multi4|sR:4:sP|Cout~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|mult|multi3|sR:5:sP|Suma~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi4|sR:5:sP|Suma~0_combout\);

-- Location: LCCOMB_X22_Y16_N0
\inst|alu1|unidad_aritmetica|mult|multi5|sR:5:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi5|sR:5:sP|Cout~0_combout\ = (\inst|REG_B\(5) & (\inst|REG_A\(0) & \inst|alu1|unidad_aritmetica|mult|multi4|sR:5:sP|Suma~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(5),
	datac => \inst|REG_A\(0),
	datad => \inst|alu1|unidad_aritmetica|mult|multi4|sR:5:sP|Suma~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi5|sR:5:sP|Cout~0_combout\);

-- Location: LCCOMB_X23_Y17_N16
\inst|alu1|unidad_aritmetica|mult|multi5|sR:6:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi5|sR:6:sP|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi4|sR:6:sP|Suma~0_combout\ & ((\inst|alu1|unidad_aritmetica|mult|multi5|sR:5:sP|Cout~0_combout\) # ((\inst|REG_A\(1) & \inst|REG_B\(5))))) # 
-- (!\inst|alu1|unidad_aritmetica|mult|multi4|sR:6:sP|Suma~0_combout\ & (\inst|REG_A\(1) & (\inst|REG_B\(5) & \inst|alu1|unidad_aritmetica|mult|multi5|sR:5:sP|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(1),
	datab => \inst|alu1|unidad_aritmetica|mult|multi4|sR:6:sP|Suma~0_combout\,
	datac => \inst|REG_B\(5),
	datad => \inst|alu1|unidad_aritmetica|mult|multi5|sR:5:sP|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi5|sR:6:sP|Cout~0_combout\);

-- Location: LCCOMB_X23_Y17_N26
\inst|alu1|unidad_aritmetica|mult|multi5|sR:7:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi5|sR:7:sP|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi4|sR:7:sP|Suma~0_combout\ & ((\inst|alu1|unidad_aritmetica|mult|multi5|sR:6:sP|Cout~0_combout\) # ((\inst|REG_A\(2) & \inst|REG_B\(5))))) # 
-- (!\inst|alu1|unidad_aritmetica|mult|multi4|sR:7:sP|Suma~0_combout\ & (\inst|REG_A\(2) & (\inst|REG_B\(5) & \inst|alu1|unidad_aritmetica|mult|multi5|sR:6:sP|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|multi4|sR:7:sP|Suma~0_combout\,
	datab => \inst|REG_A\(2),
	datac => \inst|REG_B\(5),
	datad => \inst|alu1|unidad_aritmetica|mult|multi5|sR:6:sP|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi5|sR:7:sP|Cout~0_combout\);

-- Location: LCCOMB_X23_Y18_N24
\inst|alu1|unidad_aritmetica|mult|multi4|sR:8:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi4|sR:8:sP|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|mult|multi3|sR:8:sP|Suma~0_combout\ $ (\inst|alu1|unidad_aritmetica|mult|multi4|sR:7:sP|Cout~0_combout\ $ (((\inst|REG_B\(4) & \inst|REG_A\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(4),
	datab => \inst|REG_A\(4),
	datac => \inst|alu1|unidad_aritmetica|mult|multi3|sR:8:sP|Suma~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|mult|multi4|sR:7:sP|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi4|sR:8:sP|Suma~0_combout\);

-- Location: LCCOMB_X23_Y17_N6
\inst|alu1|unidad_aritmetica|mult|multi5|sR:8:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi5|sR:8:sP|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi5|sR:7:sP|Cout~0_combout\ & ((\inst|alu1|unidad_aritmetica|mult|multi4|sR:8:sP|Suma~0_combout\) # ((\inst|REG_B\(5) & \inst|REG_A\(3))))) # 
-- (!\inst|alu1|unidad_aritmetica|mult|multi5|sR:7:sP|Cout~0_combout\ & (\inst|REG_B\(5) & (\inst|REG_A\(3) & \inst|alu1|unidad_aritmetica|mult|multi4|sR:8:sP|Suma~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(5),
	datab => \inst|REG_A\(3),
	datac => \inst|alu1|unidad_aritmetica|mult|multi5|sR:7:sP|Cout~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|mult|multi4|sR:8:sP|Suma~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi5|sR:8:sP|Cout~0_combout\);

-- Location: LCCOMB_X23_Y17_N20
\inst|alu1|unidad_aritmetica|mult|multi5|sR:9:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi5|sR:9:sP|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi4|sR:9:sP|Suma~0_combout\ & ((\inst|alu1|unidad_aritmetica|mult|multi5|sR:8:sP|Cout~0_combout\) # ((\inst|REG_A\(4) & \inst|REG_B\(5))))) # 
-- (!\inst|alu1|unidad_aritmetica|mult|multi4|sR:9:sP|Suma~0_combout\ & (\inst|REG_A\(4) & (\inst|REG_B\(5) & \inst|alu1|unidad_aritmetica|mult|multi5|sR:8:sP|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(4),
	datab => \inst|alu1|unidad_aritmetica|mult|multi4|sR:9:sP|Suma~0_combout\,
	datac => \inst|REG_B\(5),
	datad => \inst|alu1|unidad_aritmetica|mult|multi5|sR:8:sP|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi5|sR:9:sP|Cout~0_combout\);

-- Location: LCCOMB_X23_Y18_N4
\inst|alu1|unidad_aritmetica|mult|multi4|sR:9:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi4|sR:9:sP|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi3|sR:9:sP|Suma~0_combout\ & ((\inst|alu1|unidad_aritmetica|mult|multi4|sR:8:sP|Cout~0_combout\) # ((\inst|REG_B\(4) & \inst|REG_A\(5))))) # 
-- (!\inst|alu1|unidad_aritmetica|mult|multi3|sR:9:sP|Suma~0_combout\ & (\inst|REG_B\(4) & (\inst|REG_A\(5) & \inst|alu1|unidad_aritmetica|mult|multi4|sR:8:sP|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(4),
	datab => \inst|alu1|unidad_aritmetica|mult|multi3|sR:9:sP|Suma~0_combout\,
	datac => \inst|REG_A\(5),
	datad => \inst|alu1|unidad_aritmetica|mult|multi4|sR:8:sP|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi4|sR:9:sP|Cout~0_combout\);

-- Location: LCCOMB_X23_Y18_N28
\inst|alu1|unidad_aritmetica|mult|multi2|sR:9:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi2|sR:9:sP|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi2|sR:8:sP|Cout~0_combout\ & ((\inst|alu1|unidad_aritmetica|mult|multi1|sR:8:sP|Cout~0_combout\) # ((\inst|REG_A\(7) & \inst|REG_B\(2))))) # 
-- (!\inst|alu1|unidad_aritmetica|mult|multi2|sR:8:sP|Cout~0_combout\ & (\inst|REG_A\(7) & (\inst|REG_B\(2) & \inst|alu1|unidad_aritmetica|mult|multi1|sR:8:sP|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(7),
	datab => \inst|REG_B\(2),
	datac => \inst|alu1|unidad_aritmetica|mult|multi2|sR:8:sP|Cout~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|mult|multi1|sR:8:sP|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi2|sR:9:sP|Cout~0_combout\);

-- Location: LCCOMB_X23_Y18_N10
\inst|alu1|unidad_aritmetica|mult|multi3|sR:9:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi3|sR:9:sP|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi2|sR:9:sP|Suma~0_combout\ & ((\inst|alu1|unidad_aritmetica|mult|multi3|sR:8:sP|Cout~0_combout\) # ((\inst|REG_B\(3) & \inst|REG_A\(6))))) # 
-- (!\inst|alu1|unidad_aritmetica|mult|multi2|sR:9:sP|Suma~0_combout\ & (\inst|REG_B\(3) & (\inst|REG_A\(6) & \inst|alu1|unidad_aritmetica|mult|multi3|sR:8:sP|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(3),
	datab => \inst|alu1|unidad_aritmetica|mult|multi2|sR:9:sP|Suma~0_combout\,
	datac => \inst|REG_A\(6),
	datad => \inst|alu1|unidad_aritmetica|mult|multi3|sR:8:sP|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi3|sR:9:sP|Cout~0_combout\);

-- Location: LCCOMB_X23_Y18_N22
\inst|alu1|unidad_aritmetica|mult|multi3|sR:10:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi3|sR:10:sP|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|mult|multi2|sR:9:sP|Cout~0_combout\ $ (\inst|alu1|unidad_aritmetica|mult|multi3|sR:9:sP|Cout~0_combout\ $ (((\inst|REG_B\(3) & \inst|REG_A\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(3),
	datab => \inst|alu1|unidad_aritmetica|mult|multi2|sR:9:sP|Cout~0_combout\,
	datac => \inst|REG_A\(7),
	datad => \inst|alu1|unidad_aritmetica|mult|multi3|sR:9:sP|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi3|sR:10:sP|Suma~0_combout\);

-- Location: LCCOMB_X22_Y17_N18
\inst|alu1|unidad_aritmetica|mult|multi4|sR:10:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi4|sR:10:sP|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|mult|multi4|sR:9:sP|Cout~0_combout\ $ (\inst|alu1|unidad_aritmetica|mult|multi3|sR:10:sP|Suma~0_combout\ $ (((\inst|REG_A\(6) & \inst|REG_B\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|multi4|sR:9:sP|Cout~0_combout\,
	datab => \inst|REG_A\(6),
	datac => \inst|REG_B\(4),
	datad => \inst|alu1|unidad_aritmetica|mult|multi3|sR:10:sP|Suma~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi4|sR:10:sP|Suma~0_combout\);

-- Location: LCCOMB_X22_Y17_N30
\inst|alu1|unidad_aritmetica|mult|multi5|sR:10:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi5|sR:10:sP|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|mult|multi5|sR:9:sP|Cout~0_combout\ $ (\inst|alu1|unidad_aritmetica|mult|multi4|sR:10:sP|Suma~0_combout\ $ (((\inst|REG_A\(5) & \inst|REG_B\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(5),
	datab => \inst|REG_B\(5),
	datac => \inst|alu1|unidad_aritmetica|mult|multi5|sR:9:sP|Cout~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|mult|multi4|sR:10:sP|Suma~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi5|sR:10:sP|Suma~0_combout\);

-- Location: LCCOMB_X23_Y17_N14
\inst|alu1|unidad_aritmetica|mult|multi5|sR:9:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi5|sR:9:sP|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|mult|multi4|sR:9:sP|Suma~0_combout\ $ (\inst|alu1|unidad_aritmetica|mult|multi5|sR:8:sP|Cout~0_combout\ $ (((\inst|REG_A\(4) & \inst|REG_B\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(4),
	datab => \inst|alu1|unidad_aritmetica|mult|multi4|sR:9:sP|Suma~0_combout\,
	datac => \inst|REG_B\(5),
	datad => \inst|alu1|unidad_aritmetica|mult|multi5|sR:8:sP|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi5|sR:9:sP|Suma~0_combout\);

-- Location: LCCOMB_X23_Y17_N4
\inst|alu1|unidad_aritmetica|mult|multi5|sR:8:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi5|sR:8:sP|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|mult|multi5|sR:7:sP|Cout~0_combout\ $ (\inst|alu1|unidad_aritmetica|mult|multi4|sR:8:sP|Suma~0_combout\ $ (((\inst|REG_B\(5) & \inst|REG_A\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(5),
	datab => \inst|REG_A\(3),
	datac => \inst|alu1|unidad_aritmetica|mult|multi5|sR:7:sP|Cout~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|mult|multi4|sR:8:sP|Suma~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi5|sR:8:sP|Suma~0_combout\);

-- Location: LCCOMB_X23_Y17_N18
\inst|alu1|unidad_aritmetica|mult|multi5|sR:7:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi5|sR:7:sP|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|mult|multi4|sR:7:sP|Suma~0_combout\ $ (\inst|alu1|unidad_aritmetica|mult|multi5|sR:6:sP|Cout~0_combout\ $ (((\inst|REG_A\(2) & \inst|REG_B\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|multi4|sR:7:sP|Suma~0_combout\,
	datab => \inst|REG_A\(2),
	datac => \inst|REG_B\(5),
	datad => \inst|alu1|unidad_aritmetica|mult|multi5|sR:6:sP|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi5|sR:7:sP|Suma~0_combout\);

-- Location: LCCOMB_X23_Y17_N0
\inst|alu1|unidad_aritmetica|mult|multi5|sR:6:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi5|sR:6:sP|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|mult|multi4|sR:6:sP|Suma~0_combout\ $ (\inst|alu1|unidad_aritmetica|mult|multi5|sR:5:sP|Cout~0_combout\ $ (((\inst|REG_A\(1) & \inst|REG_B\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(1),
	datab => \inst|alu1|unidad_aritmetica|mult|multi4|sR:6:sP|Suma~0_combout\,
	datac => \inst|REG_B\(5),
	datad => \inst|alu1|unidad_aritmetica|mult|multi5|sR:5:sP|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi5|sR:6:sP|Suma~0_combout\);

-- Location: LCCOMB_X23_Y17_N10
\inst|alu1|unidad_aritmetica|mult|multi6|sR:6:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi6|sR:6:sP|Cout~0_combout\ = (\inst|REG_A\(0) & (\inst|REG_B\(6) & \inst|alu1|unidad_aritmetica|mult|multi5|sR:6:sP|Suma~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(0),
	datac => \inst|REG_B\(6),
	datad => \inst|alu1|unidad_aritmetica|mult|multi5|sR:6:sP|Suma~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi6|sR:6:sP|Cout~0_combout\);

-- Location: LCCOMB_X23_Y17_N12
\inst|alu1|unidad_aritmetica|mult|multi6|sR:7:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi6|sR:7:sP|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi5|sR:7:sP|Suma~0_combout\ & ((\inst|alu1|unidad_aritmetica|mult|multi6|sR:6:sP|Cout~0_combout\) # ((\inst|REG_A\(1) & \inst|REG_B\(6))))) # 
-- (!\inst|alu1|unidad_aritmetica|mult|multi5|sR:7:sP|Suma~0_combout\ & (\inst|REG_A\(1) & (\inst|REG_B\(6) & \inst|alu1|unidad_aritmetica|mult|multi6|sR:6:sP|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(1),
	datab => \inst|alu1|unidad_aritmetica|mult|multi5|sR:7:sP|Suma~0_combout\,
	datac => \inst|REG_B\(6),
	datad => \inst|alu1|unidad_aritmetica|mult|multi6|sR:6:sP|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi6|sR:7:sP|Cout~0_combout\);

-- Location: LCCOMB_X23_Y17_N24
\inst|alu1|unidad_aritmetica|mult|multi6|sR:8:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi6|sR:8:sP|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi5|sR:8:sP|Suma~0_combout\ & ((\inst|alu1|unidad_aritmetica|mult|multi6|sR:7:sP|Cout~0_combout\) # ((\inst|REG_B\(6) & \inst|REG_A\(2))))) # 
-- (!\inst|alu1|unidad_aritmetica|mult|multi5|sR:8:sP|Suma~0_combout\ & (\inst|REG_B\(6) & (\inst|REG_A\(2) & \inst|alu1|unidad_aritmetica|mult|multi6|sR:7:sP|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(6),
	datab => \inst|REG_A\(2),
	datac => \inst|alu1|unidad_aritmetica|mult|multi5|sR:8:sP|Suma~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|mult|multi6|sR:7:sP|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi6|sR:8:sP|Cout~0_combout\);

-- Location: LCCOMB_X23_Y17_N22
\inst|alu1|unidad_aritmetica|mult|multi6|sR:9:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi6|sR:9:sP|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi5|sR:9:sP|Suma~0_combout\ & ((\inst|alu1|unidad_aritmetica|mult|multi6|sR:8:sP|Cout~0_combout\) # ((\inst|REG_B\(6) & \inst|REG_A\(3))))) # 
-- (!\inst|alu1|unidad_aritmetica|mult|multi5|sR:9:sP|Suma~0_combout\ & (\inst|REG_B\(6) & (\inst|REG_A\(3) & \inst|alu1|unidad_aritmetica|mult|multi6|sR:8:sP|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(6),
	datab => \inst|REG_A\(3),
	datac => \inst|alu1|unidad_aritmetica|mult|multi5|sR:9:sP|Suma~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|mult|multi6|sR:8:sP|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi6|sR:9:sP|Cout~0_combout\);

-- Location: LCCOMB_X22_Y17_N8
\inst|alu1|unidad_aritmetica|mult|multi6|sR:10:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi6|sR:10:sP|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi5|sR:10:sP|Suma~0_combout\ & ((\inst|alu1|unidad_aritmetica|mult|multi6|sR:9:sP|Cout~0_combout\) # ((\inst|REG_A\(4) & \inst|REG_B\(6))))) # 
-- (!\inst|alu1|unidad_aritmetica|mult|multi5|sR:10:sP|Suma~0_combout\ & (\inst|REG_A\(4) & (\inst|REG_B\(6) & \inst|alu1|unidad_aritmetica|mult|multi6|sR:9:sP|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(4),
	datab => \inst|REG_B\(6),
	datac => \inst|alu1|unidad_aritmetica|mult|multi5|sR:10:sP|Suma~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|mult|multi6|sR:9:sP|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi6|sR:10:sP|Cout~0_combout\);

-- Location: LCCOMB_X22_Y17_N4
\inst|alu1|unidad_aritmetica|mult|multi5|sR:10:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi5|sR:10:sP|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi5|sR:9:sP|Cout~0_combout\ & ((\inst|alu1|unidad_aritmetica|mult|multi4|sR:10:sP|Suma~0_combout\) # ((\inst|REG_A\(5) & \inst|REG_B\(5))))) # 
-- (!\inst|alu1|unidad_aritmetica|mult|multi5|sR:9:sP|Cout~0_combout\ & (\inst|REG_A\(5) & (\inst|REG_B\(5) & \inst|alu1|unidad_aritmetica|mult|multi4|sR:10:sP|Suma~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(5),
	datab => \inst|REG_B\(5),
	datac => \inst|alu1|unidad_aritmetica|mult|multi5|sR:9:sP|Cout~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|mult|multi4|sR:10:sP|Suma~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi5|sR:10:sP|Cout~0_combout\);

-- Location: LCCOMB_X22_Y17_N20
\inst|alu1|unidad_aritmetica|mult|multi4|sR:10:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi4|sR:10:sP|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi4|sR:9:sP|Cout~0_combout\ & ((\inst|alu1|unidad_aritmetica|mult|multi3|sR:10:sP|Suma~0_combout\) # ((\inst|REG_A\(6) & \inst|REG_B\(4))))) # 
-- (!\inst|alu1|unidad_aritmetica|mult|multi4|sR:9:sP|Cout~0_combout\ & (\inst|REG_A\(6) & (\inst|REG_B\(4) & \inst|alu1|unidad_aritmetica|mult|multi3|sR:10:sP|Suma~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|multi4|sR:9:sP|Cout~0_combout\,
	datab => \inst|REG_A\(6),
	datac => \inst|REG_B\(4),
	datad => \inst|alu1|unidad_aritmetica|mult|multi3|sR:10:sP|Suma~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi4|sR:10:sP|Cout~0_combout\);

-- Location: LCCOMB_X23_Y18_N20
\inst|alu1|unidad_aritmetica|mult|multi3|sR:10:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi3|sR:10:sP|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi2|sR:9:sP|Cout~0_combout\ & ((\inst|alu1|unidad_aritmetica|mult|multi3|sR:9:sP|Cout~0_combout\) # ((\inst|REG_B\(3) & \inst|REG_A\(7))))) # 
-- (!\inst|alu1|unidad_aritmetica|mult|multi2|sR:9:sP|Cout~0_combout\ & (\inst|REG_B\(3) & (\inst|REG_A\(7) & \inst|alu1|unidad_aritmetica|mult|multi3|sR:9:sP|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(3),
	datab => \inst|alu1|unidad_aritmetica|mult|multi2|sR:9:sP|Cout~0_combout\,
	datac => \inst|REG_A\(7),
	datad => \inst|alu1|unidad_aritmetica|mult|multi3|sR:9:sP|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi3|sR:10:sP|Cout~0_combout\);

-- Location: LCCOMB_X22_Y17_N28
\inst|alu1|unidad_aritmetica|mult|multi4|sR:11:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi4|sR:11:sP|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|mult|multi4|sR:10:sP|Cout~0_combout\ $ (\inst|alu1|unidad_aritmetica|mult|multi3|sR:10:sP|Cout~0_combout\ $ (((\inst|REG_A\(7) & \inst|REG_B\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(7),
	datab => \inst|alu1|unidad_aritmetica|mult|multi4|sR:10:sP|Cout~0_combout\,
	datac => \inst|REG_B\(4),
	datad => \inst|alu1|unidad_aritmetica|mult|multi3|sR:10:sP|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi4|sR:11:sP|Suma~0_combout\);

-- Location: LCCOMB_X22_Y17_N16
\inst|alu1|unidad_aritmetica|mult|multi5|sR:11:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi5|sR:11:sP|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|mult|multi5|sR:10:sP|Cout~0_combout\ $ (\inst|alu1|unidad_aritmetica|mult|multi4|sR:11:sP|Suma~0_combout\ $ (((\inst|REG_A\(6) & \inst|REG_B\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(6),
	datab => \inst|REG_B\(5),
	datac => \inst|alu1|unidad_aritmetica|mult|multi5|sR:10:sP|Cout~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|mult|multi4|sR:11:sP|Suma~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi5|sR:11:sP|Suma~0_combout\);

-- Location: LCCOMB_X22_Y17_N12
\inst|alu1|unidad_aritmetica|mult|multi6|sR:11:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi6|sR:11:sP|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|mult|multi6|sR:10:sP|Cout~0_combout\ $ (\inst|alu1|unidad_aritmetica|mult|multi5|sR:11:sP|Suma~0_combout\ $ (((\inst|REG_A\(5) & \inst|REG_B\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(5),
	datab => \inst|REG_B\(6),
	datac => \inst|alu1|unidad_aritmetica|mult|multi6|sR:10:sP|Cout~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|mult|multi5|sR:11:sP|Suma~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi6|sR:11:sP|Suma~0_combout\);

-- Location: LCCOMB_X23_Y17_N28
\inst|alu1|unidad_aritmetica|mult|multi6|sR:9:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi6|sR:9:sP|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|mult|multi5|sR:9:sP|Suma~0_combout\ $ (\inst|alu1|unidad_aritmetica|mult|multi6|sR:8:sP|Cout~0_combout\ $ (((\inst|REG_B\(6) & \inst|REG_A\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(6),
	datab => \inst|REG_A\(3),
	datac => \inst|alu1|unidad_aritmetica|mult|multi5|sR:9:sP|Suma~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|mult|multi6|sR:8:sP|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi6|sR:9:sP|Suma~0_combout\);

-- Location: LCCOMB_X23_Y17_N8
\inst|alu1|unidad_aritmetica|mult|multi6|sR:7:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi6|sR:7:sP|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|mult|multi5|sR:7:sP|Suma~0_combout\ $ (\inst|alu1|unidad_aritmetica|mult|multi6|sR:6:sP|Cout~0_combout\ $ (((\inst|REG_A\(1) & \inst|REG_B\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(1),
	datab => \inst|alu1|unidad_aritmetica|mult|multi5|sR:7:sP|Suma~0_combout\,
	datac => \inst|REG_B\(6),
	datad => \inst|alu1|unidad_aritmetica|mult|multi6|sR:6:sP|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi6|sR:7:sP|Suma~0_combout\);

-- Location: LCCOMB_X21_Y15_N12
\inst|alu1|unidad_aritmetica|mult|multi7|sR:7:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi7|sR:7:sP|Cout~0_combout\ = (\inst|REG_A\(0) & (\inst|REG_B\(7) & \inst|alu1|unidad_aritmetica|mult|multi6|sR:7:sP|Suma~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(0),
	datac => \inst|REG_B\(7),
	datad => \inst|alu1|unidad_aritmetica|mult|multi6|sR:7:sP|Suma~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi7|sR:7:sP|Cout~0_combout\);

-- Location: LCCOMB_X23_Y17_N2
\inst|alu1|unidad_aritmetica|mult|multi6|sR:8:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi6|sR:8:sP|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|mult|multi5|sR:8:sP|Suma~0_combout\ $ (\inst|alu1|unidad_aritmetica|mult|multi6|sR:7:sP|Cout~0_combout\ $ (((\inst|REG_B\(6) & \inst|REG_A\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(6),
	datab => \inst|REG_A\(2),
	datac => \inst|alu1|unidad_aritmetica|mult|multi5|sR:8:sP|Suma~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|mult|multi6|sR:7:sP|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi6|sR:8:sP|Suma~0_combout\);

-- Location: LCCOMB_X21_Y15_N10
\inst|alu1|unidad_aritmetica|mult|multi7|sR:8:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi7|sR:8:sP|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi7|sR:7:sP|Cout~0_combout\ & ((\inst|alu1|unidad_aritmetica|mult|multi6|sR:8:sP|Suma~0_combout\) # ((\inst|REG_A\(1) & \inst|REG_B\(7))))) # 
-- (!\inst|alu1|unidad_aritmetica|mult|multi7|sR:7:sP|Cout~0_combout\ & (\inst|REG_A\(1) & (\inst|REG_B\(7) & \inst|alu1|unidad_aritmetica|mult|multi6|sR:8:sP|Suma~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|multi7|sR:7:sP|Cout~0_combout\,
	datab => \inst|REG_A\(1),
	datac => \inst|REG_B\(7),
	datad => \inst|alu1|unidad_aritmetica|mult|multi6|sR:8:sP|Suma~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi7|sR:8:sP|Cout~0_combout\);

-- Location: LCCOMB_X21_Y15_N0
\inst|alu1|unidad_aritmetica|mult|multi7|sR:9:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi7|sR:9:sP|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi6|sR:9:sP|Suma~0_combout\ & ((\inst|alu1|unidad_aritmetica|mult|multi7|sR:8:sP|Cout~0_combout\) # ((\inst|REG_A\(2) & \inst|REG_B\(7))))) # 
-- (!\inst|alu1|unidad_aritmetica|mult|multi6|sR:9:sP|Suma~0_combout\ & (\inst|REG_A\(2) & (\inst|REG_B\(7) & \inst|alu1|unidad_aritmetica|mult|multi7|sR:8:sP|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(2),
	datab => \inst|alu1|unidad_aritmetica|mult|multi6|sR:9:sP|Suma~0_combout\,
	datac => \inst|REG_B\(7),
	datad => \inst|alu1|unidad_aritmetica|mult|multi7|sR:8:sP|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi7|sR:9:sP|Cout~0_combout\);

-- Location: LCCOMB_X22_Y17_N6
\inst|alu1|unidad_aritmetica|mult|multi6|sR:10:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi6|sR:10:sP|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|mult|multi5|sR:10:sP|Suma~0_combout\ $ (\inst|alu1|unidad_aritmetica|mult|multi6|sR:9:sP|Cout~0_combout\ $ (((\inst|REG_A\(4) & \inst|REG_B\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(4),
	datab => \inst|REG_B\(6),
	datac => \inst|alu1|unidad_aritmetica|mult|multi5|sR:10:sP|Suma~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|mult|multi6|sR:9:sP|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi6|sR:10:sP|Suma~0_combout\);

-- Location: LCCOMB_X21_Y14_N12
\inst|alu1|unidad_aritmetica|mult|multi7|sR:10:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi7|sR:10:sP|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi7|sR:9:sP|Cout~0_combout\ & ((\inst|alu1|unidad_aritmetica|mult|multi6|sR:10:sP|Suma~0_combout\) # ((\inst|REG_A\(3) & \inst|REG_B\(7))))) # 
-- (!\inst|alu1|unidad_aritmetica|mult|multi7|sR:9:sP|Cout~0_combout\ & (\inst|REG_A\(3) & (\inst|REG_B\(7) & \inst|alu1|unidad_aritmetica|mult|multi6|sR:10:sP|Suma~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(3),
	datab => \inst|REG_B\(7),
	datac => \inst|alu1|unidad_aritmetica|mult|multi7|sR:9:sP|Cout~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|mult|multi6|sR:10:sP|Suma~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi7|sR:10:sP|Cout~0_combout\);

-- Location: LCCOMB_X21_Y14_N0
\inst|alu1|unidad_aritmetica|mult|multi7|sR:11:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi7|sR:11:sP|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|mult|multi6|sR:11:sP|Suma~0_combout\ $ (\inst|alu1|unidad_aritmetica|mult|multi7|sR:10:sP|Cout~0_combout\ $ (((\inst|REG_A\(4) & \inst|REG_B\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(4),
	datab => \inst|REG_B\(7),
	datac => \inst|alu1|unidad_aritmetica|mult|multi6|sR:11:sP|Suma~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|mult|multi7|sR:10:sP|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi7|sR:11:sP|Suma~0_combout\);

-- Location: LCCOMB_X21_Y15_N20
\inst|alu1|unidad_aritmetica|mult|multi7|sR:10:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi7|sR:10:sP|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|mult|multi7|sR:9:sP|Cout~0_combout\ $ (\inst|alu1|unidad_aritmetica|mult|multi6|sR:10:sP|Suma~0_combout\ $ (((\inst|REG_B\(7) & \inst|REG_A\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(7),
	datab => \inst|alu1|unidad_aritmetica|mult|multi7|sR:9:sP|Cout~0_combout\,
	datac => \inst|REG_A\(3),
	datad => \inst|alu1|unidad_aritmetica|mult|multi6|sR:10:sP|Suma~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi7|sR:10:sP|Suma~0_combout\);

-- Location: LCCOMB_X21_Y15_N14
\inst|alu1|unidad_aritmetica|mult|multi7|sR:9:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi7|sR:9:sP|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|mult|multi6|sR:9:sP|Suma~0_combout\ $ (\inst|alu1|unidad_aritmetica|mult|multi7|sR:8:sP|Cout~0_combout\ $ (((\inst|REG_A\(2) & \inst|REG_B\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(2),
	datab => \inst|alu1|unidad_aritmetica|mult|multi6|sR:9:sP|Suma~0_combout\,
	datac => \inst|REG_B\(7),
	datad => \inst|alu1|unidad_aritmetica|mult|multi7|sR:8:sP|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi7|sR:9:sP|Suma~0_combout\);

-- Location: LCCOMB_X21_Y15_N2
\inst|alu1|unidad_aritmetica|mult|multi7|sR:8:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi7|sR:8:sP|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|mult|multi7|sR:7:sP|Cout~0_combout\ $ (\inst|alu1|unidad_aritmetica|mult|multi6|sR:8:sP|Suma~0_combout\ $ (((\inst|REG_A\(1) & \inst|REG_B\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|multi7|sR:7:sP|Cout~0_combout\,
	datab => \inst|REG_A\(1),
	datac => \inst|REG_B\(7),
	datad => \inst|alu1|unidad_aritmetica|mult|multi6|sR:8:sP|Suma~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi7|sR:8:sP|Suma~0_combout\);

-- Location: LCCOMB_X24_Y15_N8
\inst|alu1|unidad_aritmetica|mult|inter[56]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|inter\(56) = (\inst|REG_A\(0) & \inst|REG_B\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|REG_A\(0),
	datad => \inst|REG_B\(7),
	combout => \inst|alu1|unidad_aritmetica|mult|inter\(56));

-- Location: LCCOMB_X24_Y16_N4
\inst|alu1|unidad_aritmetica|mult|inter[48]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|inter\(48) = (\inst|REG_B\(6) & \inst|REG_A\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|REG_B\(6),
	datad => \inst|REG_A\(0),
	combout => \inst|alu1|unidad_aritmetica|mult|inter\(48));

-- Location: LCCOMB_X22_Y16_N30
\inst|alu1|unidad_aritmetica|mult|inter[40]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|inter\(40) = (\inst|REG_B\(5) & \inst|REG_A\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(5),
	datac => \inst|REG_A\(0),
	combout => \inst|alu1|unidad_aritmetica|mult|inter\(40));

-- Location: LCCOMB_X24_Y15_N22
\inst|alu1|unidad_aritmetica|mult|inter[32]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|inter\(32) = (\inst|REG_A\(0) & \inst|REG_B\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|REG_A\(0),
	datad => \inst|REG_B\(4),
	combout => \inst|alu1|unidad_aritmetica|mult|inter\(32));

-- Location: LCCOMB_X24_Y15_N12
\inst|alu1|unidad_aritmetica|mult|inter[24]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|inter\(24) = (\inst|REG_A\(0) & \inst|REG_B\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|REG_A\(0),
	datad => \inst|REG_B\(3),
	combout => \inst|alu1|unidad_aritmetica|mult|inter\(24));

-- Location: LCCOMB_X24_Y15_N6
\inst|alu1|unidad_aritmetica|mult|inter[16]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|inter\(16) = (\inst|REG_A\(0) & \inst|REG_B\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|REG_A\(0),
	datad => \inst|REG_B\(2),
	combout => \inst|alu1|unidad_aritmetica|mult|inter\(16));

-- Location: LCCOMB_X23_Y15_N30
\inst|alu1|unidad_aritmetica|mult|inter[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|inter\(1) = (\inst|REG_B\(0) & \inst|REG_A\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|REG_B\(0),
	datad => \inst|REG_A\(1),
	combout => \inst|alu1|unidad_aritmetica|mult|inter\(1));

-- Location: LCCOMB_X21_Y15_N16
\inst|alu1|unidad_aritmetica|mult|inter[8]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|inter\(8) = (\inst|REG_A\(0) & \inst|REG_B\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(0),
	datac => \inst|REG_B\(1),
	combout => \inst|alu1|unidad_aritmetica|mult|inter\(8));

-- Location: LCCOMB_X25_Y15_N0
\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~0_combout\ = (((!\inst|REG_A\(0)) # (!\inst|REG_B\(0))))
-- \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~1\ = CARRY((!\inst|REG_A\(0)) # (!\inst|REG_B\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(0),
	datab => \inst|REG_A\(0),
	datad => VCC,
	combout => \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~0_combout\,
	cout => \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~1\);

-- Location: LCCOMB_X25_Y15_N2
\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~2_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~1\ & (\inst|alu1|unidad_aritmetica|mult|inter\(1) $ ((\inst|alu1|unidad_aritmetica|mult|inter\(8))))) # 
-- (!\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~1\ & ((\inst|alu1|unidad_aritmetica|mult|inter\(1) $ (!\inst|alu1|unidad_aritmetica|mult|inter\(8))) # (GND)))
-- \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~3\ = CARRY((\inst|alu1|unidad_aritmetica|mult|inter\(1) $ (\inst|alu1|unidad_aritmetica|mult|inter\(8))) # (!\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|inter\(1),
	datab => \inst|alu1|unidad_aritmetica|mult|inter\(8),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~1\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~2_combout\,
	cout => \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~3\);

-- Location: LCCOMB_X25_Y15_N4
\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~4_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~3\ & ((\inst|alu1|unidad_aritmetica|mult|multi1|sR:2:sP|Suma~0_combout\ $ (!\inst|alu1|unidad_aritmetica|mult|inter\(16))))) # 
-- (!\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~3\ & (\inst|alu1|unidad_aritmetica|mult|multi1|sR:2:sP|Suma~0_combout\ $ (\inst|alu1|unidad_aritmetica|mult|inter\(16) $ (GND))))
-- \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~5\ = CARRY((!\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~3\ & (\inst|alu1|unidad_aritmetica|mult|multi1|sR:2:sP|Suma~0_combout\ $ (!\inst|alu1|unidad_aritmetica|mult|inter\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|multi1|sR:2:sP|Suma~0_combout\,
	datab => \inst|alu1|unidad_aritmetica|mult|inter\(16),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~3\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~4_combout\,
	cout => \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~5\);

-- Location: LCCOMB_X25_Y15_N6
\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~6_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~5\ & (\inst|alu1|unidad_aritmetica|mult|inter\(24) $ ((\inst|alu1|unidad_aritmetica|mult|multi2|sR:3:sP|Suma~0_combout\)))) # 
-- (!\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~5\ & ((\inst|alu1|unidad_aritmetica|mult|inter\(24) $ (!\inst|alu1|unidad_aritmetica|mult|multi2|sR:3:sP|Suma~0_combout\)) # (GND)))
-- \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~7\ = CARRY((\inst|alu1|unidad_aritmetica|mult|inter\(24) $ (\inst|alu1|unidad_aritmetica|mult|multi2|sR:3:sP|Suma~0_combout\)) # (!\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|inter\(24),
	datab => \inst|alu1|unidad_aritmetica|mult|multi2|sR:3:sP|Suma~0_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~5\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~6_combout\,
	cout => \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~7\);

-- Location: LCCOMB_X25_Y15_N8
\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~8_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~7\ & ((\inst|alu1|unidad_aritmetica|mult|multi3|sR:4:sP|Suma~0_combout\ $ (!\inst|alu1|unidad_aritmetica|mult|inter\(32))))) # 
-- (!\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~7\ & (\inst|alu1|unidad_aritmetica|mult|multi3|sR:4:sP|Suma~0_combout\ $ (\inst|alu1|unidad_aritmetica|mult|inter\(32) $ (GND))))
-- \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~9\ = CARRY((!\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~7\ & (\inst|alu1|unidad_aritmetica|mult|multi3|sR:4:sP|Suma~0_combout\ $ (!\inst|alu1|unidad_aritmetica|mult|inter\(32)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|multi3|sR:4:sP|Suma~0_combout\,
	datab => \inst|alu1|unidad_aritmetica|mult|inter\(32),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~7\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~8_combout\,
	cout => \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~9\);

-- Location: LCCOMB_X25_Y15_N10
\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~10_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~9\ & (\inst|alu1|unidad_aritmetica|mult|multi4|sR:5:sP|Suma~0_combout\ $ ((\inst|alu1|unidad_aritmetica|mult|inter\(40))))) # 
-- (!\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~9\ & ((\inst|alu1|unidad_aritmetica|mult|multi4|sR:5:sP|Suma~0_combout\ $ (!\inst|alu1|unidad_aritmetica|mult|inter\(40))) # (GND)))
-- \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~11\ = CARRY((\inst|alu1|unidad_aritmetica|mult|multi4|sR:5:sP|Suma~0_combout\ $ (\inst|alu1|unidad_aritmetica|mult|inter\(40))) # (!\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|multi4|sR:5:sP|Suma~0_combout\,
	datab => \inst|alu1|unidad_aritmetica|mult|inter\(40),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~9\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~10_combout\,
	cout => \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~11\);

-- Location: LCCOMB_X25_Y15_N12
\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~12_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~11\ & ((\inst|alu1|unidad_aritmetica|mult|inter\(48) $ (!\inst|alu1|unidad_aritmetica|mult|multi5|sR:6:sP|Suma~0_combout\)))) # 
-- (!\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~11\ & (\inst|alu1|unidad_aritmetica|mult|inter\(48) $ (\inst|alu1|unidad_aritmetica|mult|multi5|sR:6:sP|Suma~0_combout\ $ (GND))))
-- \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~13\ = CARRY((!\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~11\ & (\inst|alu1|unidad_aritmetica|mult|inter\(48) $ (!\inst|alu1|unidad_aritmetica|mult|multi5|sR:6:sP|Suma~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|inter\(48),
	datab => \inst|alu1|unidad_aritmetica|mult|multi5|sR:6:sP|Suma~0_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~11\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~12_combout\,
	cout => \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~13\);

-- Location: LCCOMB_X25_Y15_N14
\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~14_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~13\ & (\inst|alu1|unidad_aritmetica|mult|inter\(56) $ ((\inst|alu1|unidad_aritmetica|mult|multi6|sR:7:sP|Suma~0_combout\)))) # 
-- (!\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~13\ & ((\inst|alu1|unidad_aritmetica|mult|inter\(56) $ (!\inst|alu1|unidad_aritmetica|mult|multi6|sR:7:sP|Suma~0_combout\)) # (GND)))
-- \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~15\ = CARRY((\inst|alu1|unidad_aritmetica|mult|inter\(56) $ (\inst|alu1|unidad_aritmetica|mult|multi6|sR:7:sP|Suma~0_combout\)) # (!\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|inter\(56),
	datab => \inst|alu1|unidad_aritmetica|mult|multi6|sR:7:sP|Suma~0_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~13\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~14_combout\,
	cout => \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~15\);

-- Location: LCCOMB_X25_Y15_N16
\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~16_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi7|sR:8:sP|Suma~0_combout\ & (!\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~15\ & VCC)) # 
-- (!\inst|alu1|unidad_aritmetica|mult|multi7|sR:8:sP|Suma~0_combout\ & (\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~15\ $ (GND)))
-- \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~17\ = CARRY((!\inst|alu1|unidad_aritmetica|mult|multi7|sR:8:sP|Suma~0_combout\ & !\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|multi7|sR:8:sP|Suma~0_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~15\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~16_combout\,
	cout => \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~17\);

-- Location: LCCOMB_X25_Y15_N18
\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~18_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi7|sR:9:sP|Suma~0_combout\ & ((\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~17\) # (GND))) # 
-- (!\inst|alu1|unidad_aritmetica|mult|multi7|sR:9:sP|Suma~0_combout\ & (!\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~17\))
-- \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~19\ = CARRY((\inst|alu1|unidad_aritmetica|mult|multi7|sR:9:sP|Suma~0_combout\) # (!\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|unidad_aritmetica|mult|multi7|sR:9:sP|Suma~0_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~17\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~18_combout\,
	cout => \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~19\);

-- Location: LCCOMB_X25_Y15_N20
\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~20_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi7|sR:10:sP|Suma~0_combout\ & (!\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~19\ & VCC)) # 
-- (!\inst|alu1|unidad_aritmetica|mult|multi7|sR:10:sP|Suma~0_combout\ & (\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~19\ $ (GND)))
-- \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~21\ = CARRY((!\inst|alu1|unidad_aritmetica|mult|multi7|sR:10:sP|Suma~0_combout\ & !\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|multi7|sR:10:sP|Suma~0_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~19\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~20_combout\,
	cout => \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~21\);

-- Location: LCCOMB_X25_Y15_N22
\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~22_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi7|sR:11:sP|Suma~0_combout\ & ((\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~21\) # (GND))) # 
-- (!\inst|alu1|unidad_aritmetica|mult|multi7|sR:11:sP|Suma~0_combout\ & (!\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~21\))
-- \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~23\ = CARRY((\inst|alu1|unidad_aritmetica|mult|multi7|sR:11:sP|Suma~0_combout\) # (!\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|multi7|sR:11:sP|Suma~0_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~21\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~22_combout\,
	cout => \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~23\);

-- Location: LCCOMB_X19_Y13_N18
\inst|reggy~355\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~355_combout\ = (!\inst|OP\(2) & (\inst|reggy~192_combout\ & (\inst|OP\(1) $ (\inst|OP\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|OP\(1),
	datab => \inst|OP\(2),
	datac => \inst|reggy~192_combout\,
	datad => \inst|OP\(0),
	combout => \inst|reggy~355_combout\);

-- Location: LCCOMB_X17_Y13_N2
\inst|alu1|Mux7~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux7~6_combout\ = (\inst|OP\(3) & \inst|OP\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|OP\(3),
	datad => \inst|OP\(2),
	combout => \inst|alu1|Mux7~6_combout\);

-- Location: LCCOMB_X17_Y13_N10
\inst|reggy~301\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~301_combout\ = (\inst|alu1|Mux7~6_combout\ & (((\inst|MAR\(9) & \inst|MAR\(11))) # (!\inst|MAR\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MAR\(9),
	datab => \inst|MAR\(11),
	datac => \inst|MAR\(10),
	datad => \inst|alu1|Mux7~6_combout\,
	combout => \inst|reggy~301_combout\);

-- Location: LCCOMB_X17_Y13_N26
\inst|reggy~302\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~302_combout\ = (!\inst|MAR\(11) & (\inst|alu1|Mux7~6_combout\ & ((\inst|MAR\(8)) # (!\inst|MAR\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MAR\(8),
	datab => \inst|MAR\(11),
	datac => \inst|MAR\(9),
	datad => \inst|alu1|Mux7~6_combout\,
	combout => \inst|reggy~302_combout\);

-- Location: LCCOMB_X21_Y14_N10
\inst|REG_D~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|REG_D~16_combout\ = (\inst|MAR\(1) & (!\inst|Equal2~0_combout\ & (\inst|MAR\(0) & \inst|reggy~274_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MAR\(1),
	datab => \inst|Equal2~0_combout\,
	datac => \inst|MAR\(0),
	datad => \inst|reggy~274_combout\,
	combout => \inst|REG_D~16_combout\);

-- Location: FF_X21_Y14_N11
\inst|REG_D[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|REG_D~16_combout\,
	ena => \inst|REG_D[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|REG_D\(11));

-- Location: LCCOMB_X21_Y14_N28
\inst|reggy~321\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~321_combout\ = (\inst|MAR\(11) & (!\inst|MAR\(9) & \inst|REG_D\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MAR\(11),
	datac => \inst|MAR\(9),
	datad => \inst|REG_D\(11),
	combout => \inst|reggy~321_combout\);

-- Location: LCCOMB_X21_Y11_N8
\inst|reggy~322\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~322_combout\ = (\inst|reggy~301_combout\) # ((\inst|MAR\(10) & ((\inst|reggy~302_combout\) # (\inst|reggy~321_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy~301_combout\,
	datab => \inst|reggy~302_combout\,
	datac => \inst|MAR\(10),
	datad => \inst|reggy~321_combout\,
	combout => \inst|reggy~322_combout\);

-- Location: LCCOMB_X19_Y13_N28
\inst|reggy~300\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~300_combout\ = (\inst|reggy~192_combout\ & ((!\inst|alu1|unidad_aritmetica|mult|multi7|sR:14:sP|Cout~0_combout\) # (!\inst|alu1|Mux16~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|Mux16~0_combout\,
	datac => \inst|reggy~192_combout\,
	datad => \inst|alu1|unidad_aritmetica|mult|multi7|sR:14:sP|Cout~0_combout\,
	combout => \inst|reggy~300_combout\);

-- Location: FF_X12_Y14_N27
\inst|reggy~33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~309_combout\,
	sload => VCC,
	ena => \inst|reggy~182_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy~33_q\);

-- Location: FF_X12_Y14_N21
\inst|reggy~49\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~309_combout\,
	sload => VCC,
	ena => \inst|reggy~181_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy~49_q\);

-- Location: LCCOMB_X12_Y14_N20
\inst|reggy~287\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~287_combout\ = (\inst|MAR\(0) & (((\inst|reggy~49_q\) # (\inst|MAR\(1))))) # (!\inst|MAR\(0) & (\inst|reggy~33_q\ & ((!\inst|MAR\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy~33_q\,
	datab => \inst|MAR\(0),
	datac => \inst|reggy~49_q\,
	datad => \inst|MAR\(1),
	combout => \inst|reggy~287_combout\);

-- Location: FF_X16_Y14_N19
\inst|reggy~65\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~309_combout\,
	sload => VCC,
	ena => \inst|reggy~180_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy~65_q\);

-- Location: LCCOMB_X19_Y14_N0
\inst|reggy~288\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~288_combout\ = (\inst|MAR\(1) & ((\inst|reggy~287_combout\ & (\inst|reggy~81_q\)) # (!\inst|reggy~287_combout\ & ((\inst|reggy~65_q\))))) # (!\inst|MAR\(1) & (((\inst|reggy~287_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy~81_q\,
	datab => \inst|MAR\(1),
	datac => \inst|reggy~287_combout\,
	datad => \inst|reggy~65_q\,
	combout => \inst|reggy~288_combout\);

-- Location: FF_X18_Y14_N11
\inst|REG_B[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~288_combout\,
	sload => VCC,
	ena => \inst|OP[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|REG_B\(13));

-- Location: LCCOMB_X23_Y12_N18
\inst|alu1|unidad_aritmetica|suma|Yop~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|Yop~12_combout\ = \inst|REG_B\(13) $ (\inst|REG_B\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|REG_B\(13),
	datad => \inst|REG_B\(15),
	combout => \inst|alu1|unidad_aritmetica|suma|Yop~12_combout\);

-- Location: LCCOMB_X23_Y11_N30
\inst|alu1|unidad_aritmetica|suma|Yop~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|Yop~11_combout\ = \inst|REG_B\(15) $ (\inst|REG_B\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(15),
	datac => \inst|REG_B\(12),
	combout => \inst|alu1|unidad_aritmetica|suma|Yop~11_combout\);

-- Location: FF_X12_Y17_N29
\inst|reggy~31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~327_combout\,
	sload => VCC,
	ena => \inst|reggy~182_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy~31_q\);

-- Location: LCCOMB_X13_Y17_N2
\inst|reggy~283\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~283_combout\ = (\inst|MAR\(1) & (((\inst|MAR\(0))))) # (!\inst|MAR\(1) & ((\inst|MAR\(0) & ((\inst|reggy~47_q\))) # (!\inst|MAR\(0) & (\inst|reggy~31_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MAR\(1),
	datab => \inst|reggy~31_q\,
	datac => \inst|reggy~47_q\,
	datad => \inst|MAR\(0),
	combout => \inst|reggy~283_combout\);

-- Location: FF_X19_Y13_N25
\inst|reggy~79\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|reggy~327_combout\,
	ena => \inst|reggy~183_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy~79_q\);

-- Location: FF_X16_Y14_N25
\inst|reggy~63\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~327_combout\,
	sload => VCC,
	ena => \inst|reggy~180_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy~63_q\);

-- Location: LCCOMB_X19_Y14_N24
\inst|reggy~284\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~284_combout\ = (\inst|reggy~283_combout\ & (((\inst|reggy~79_q\)) # (!\inst|MAR\(1)))) # (!\inst|reggy~283_combout\ & (\inst|MAR\(1) & ((\inst|reggy~63_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy~283_combout\,
	datab => \inst|MAR\(1),
	datac => \inst|reggy~79_q\,
	datad => \inst|reggy~63_q\,
	combout => \inst|reggy~284_combout\);

-- Location: LCCOMB_X18_Y14_N0
\inst|REG_B[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|REG_B[11]~feeder_combout\ = \inst|reggy~284_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|reggy~284_combout\,
	combout => \inst|REG_B[11]~feeder_combout\);

-- Location: FF_X18_Y14_N1
\inst|REG_B[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|REG_B[11]~feeder_combout\,
	ena => \inst|OP[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|REG_B\(11));

-- Location: LCCOMB_X19_Y13_N22
\inst|reggy~46feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~46feeder_combout\ = \inst|reggy~336_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|reggy~336_combout\,
	combout => \inst|reggy~46feeder_combout\);

-- Location: FF_X19_Y13_N23
\inst|reggy~46\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|reggy~46feeder_combout\,
	ena => \inst|reggy~181_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy~46_q\);

-- Location: FF_X16_Y17_N31
\inst|reggy~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~336_combout\,
	sload => VCC,
	ena => \inst|reggy~182_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy~30_q\);

-- Location: FF_X16_Y17_N21
\inst|reggy~62\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~336_combout\,
	sload => VCC,
	ena => \inst|reggy~180_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy~62_q\);

-- Location: LCCOMB_X16_Y17_N30
\inst|reggy~275\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~275_combout\ = (\inst|reggy~154_combout\ & ((\inst|reggy~155_combout\) # ((\inst|reggy~62_q\)))) # (!\inst|reggy~154_combout\ & (!\inst|reggy~155_combout\ & (\inst|reggy~30_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy~154_combout\,
	datab => \inst|reggy~155_combout\,
	datac => \inst|reggy~30_q\,
	datad => \inst|reggy~62_q\,
	combout => \inst|reggy~275_combout\);

-- Location: LCCOMB_X19_Y14_N26
\inst|reggy~276\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~276_combout\ = (\inst|reggy~155_combout\ & ((\inst|reggy~275_combout\ & ((\inst|reggy~78_q\))) # (!\inst|reggy~275_combout\ & (\inst|reggy~46_q\)))) # (!\inst|reggy~155_combout\ & (((\inst|reggy~275_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy~155_combout\,
	datab => \inst|reggy~46_q\,
	datac => \inst|reggy~275_combout\,
	datad => \inst|reggy~78_q\,
	combout => \inst|reggy~276_combout\);

-- Location: FF_X19_Y14_N27
\inst|REG_A[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|reggy~276_combout\,
	ena => \inst|OP[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|REG_A\(10));

-- Location: FF_X19_Y13_N31
\inst|reggy~45\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~345_combout\,
	sload => VCC,
	ena => \inst|reggy~181_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy~45_q\);

-- Location: LCCOMB_X19_Y13_N30
\inst|reggy~279\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~279_combout\ = (\inst|MAR\(1) & (\inst|MAR\(0))) # (!\inst|MAR\(1) & ((\inst|MAR\(0) & (\inst|reggy~45_q\)) # (!\inst|MAR\(0) & ((\inst|reggy~29_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MAR\(1),
	datab => \inst|MAR\(0),
	datac => \inst|reggy~45_q\,
	datad => \inst|reggy~29_q\,
	combout => \inst|reggy~279_combout\);

-- Location: LCCOMB_X16_Y13_N28
\inst|reggy~61feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~61feeder_combout\ = \inst|reggy~345_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|reggy~345_combout\,
	combout => \inst|reggy~61feeder_combout\);

-- Location: FF_X16_Y13_N29
\inst|reggy~61\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|reggy~61feeder_combout\,
	ena => \inst|reggy~180_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy~61_q\);

-- Location: FF_X19_Y13_N21
\inst|reggy~77\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|reggy~345_combout\,
	ena => \inst|reggy~183_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy~77_q\);

-- Location: LCCOMB_X17_Y17_N28
\inst|reggy~280\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~280_combout\ = (\inst|reggy~279_combout\ & (((\inst|reggy~77_q\)) # (!\inst|MAR\(1)))) # (!\inst|reggy~279_combout\ & (\inst|MAR\(1) & (\inst|reggy~61_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy~279_combout\,
	datab => \inst|MAR\(1),
	datac => \inst|reggy~61_q\,
	datad => \inst|reggy~77_q\,
	combout => \inst|reggy~280_combout\);

-- Location: FF_X16_Y14_N31
\inst|REG_B[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~280_combout\,
	sload => VCC,
	ena => \inst|OP[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|REG_B\(9));

-- Location: LCCOMB_X23_Y12_N24
\inst|reggy~343\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~343_combout\ = (\inst|alu1|Mux17~0_combout\ & ((\inst|REG_B\(9)) # ((\inst|alu1|Mux16~0_combout\) # (\inst|REG_A\(9))))) # (!\inst|alu1|Mux17~0_combout\ & (\inst|REG_B\(9) & (!\inst|alu1|Mux16~0_combout\ & \inst|REG_A\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux17~0_combout\,
	datab => \inst|REG_B\(9),
	datac => \inst|alu1|Mux16~0_combout\,
	datad => \inst|REG_A\(9),
	combout => \inst|reggy~343_combout\);

-- Location: LCCOMB_X17_Y17_N8
\inst|REG_D~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|REG_D~1_combout\ = (\inst|REG_D~0_combout\ & ((\inst|MAR\(1) & ((\inst|reggy~157_combout\))) # (!\inst|MAR\(1) & (\inst|cat[0][8]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cat[0][8]~q\,
	datab => \inst|REG_D~0_combout\,
	datac => \inst|reggy~157_combout\,
	datad => \inst|MAR\(1),
	combout => \inst|REG_D~1_combout\);

-- Location: FF_X17_Y17_N9
\inst|REG_D[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|REG_D~1_combout\,
	ena => \inst|REG_D[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|REG_D\(8));

-- Location: LCCOMB_X17_Y17_N4
\inst|reggy~174\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~174_combout\ = (\inst|OP[3]~1_combout\ & (!\inst|Equal6~0_combout\ & ((\inst|mov\(8))))) # (!\inst|OP[3]~1_combout\ & (((\inst|REG_D\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|OP[3]~1_combout\,
	datab => \inst|Equal6~0_combout\,
	datac => \inst|REG_D\(8),
	datad => \inst|mov\(8),
	combout => \inst|reggy~174_combout\);

-- Location: LCCOMB_X23_Y14_N14
\inst|alu1|unidad_logica|aux[7]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|aux[7]~14_combout\ = (\inst|REG_A\(7) & ((\inst|alu1|unidad_logica|aux[6]~13\) # (GND))) # (!\inst|REG_A\(7) & (!\inst|alu1|unidad_logica|aux[6]~13\))
-- \inst|alu1|unidad_logica|aux[7]~15\ = CARRY((\inst|REG_A\(7)) # (!\inst|alu1|unidad_logica|aux[6]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|REG_A\(7),
	datad => VCC,
	cin => \inst|alu1|unidad_logica|aux[6]~13\,
	combout => \inst|alu1|unidad_logica|aux[7]~14_combout\,
	cout => \inst|alu1|unidad_logica|aux[7]~15\);

-- Location: LCCOMB_X23_Y14_N16
\inst|alu1|unidad_logica|aux[8]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|aux[8]~16_combout\ = (\inst|REG_A\(8) & (!\inst|alu1|unidad_logica|aux[7]~15\ & VCC)) # (!\inst|REG_A\(8) & (\inst|alu1|unidad_logica|aux[7]~15\ $ (GND)))
-- \inst|alu1|unidad_logica|aux[8]~17\ = CARRY((!\inst|REG_A\(8) & !\inst|alu1|unidad_logica|aux[7]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|REG_A\(8),
	datad => VCC,
	cin => \inst|alu1|unidad_logica|aux[7]~15\,
	combout => \inst|alu1|unidad_logica|aux[8]~16_combout\,
	cout => \inst|alu1|unidad_logica|aux[8]~17\);

-- Location: LCCOMB_X13_Y17_N28
\inst|reggy~44feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~44feeder_combout\ = \inst|reggy~175_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|reggy~175_combout\,
	combout => \inst|reggy~44feeder_combout\);

-- Location: FF_X13_Y17_N29
\inst|reggy~44\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|reggy~44feeder_combout\,
	ena => \inst|reggy~181_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy~44_q\);

-- Location: FF_X12_Y17_N15
\inst|reggy~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~175_combout\,
	sload => VCC,
	ena => \inst|reggy~182_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy~28_q\);

-- Location: LCCOMB_X12_Y17_N4
\inst|reggy~247\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~247_combout\ = (\inst|MAR\(0) & (((\inst|MAR\(1))))) # (!\inst|MAR\(0) & ((\inst|MAR\(1) & ((\inst|reggy~60_q\))) # (!\inst|MAR\(1) & (\inst|reggy~28_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MAR\(0),
	datab => \inst|reggy~28_q\,
	datac => \inst|reggy~60_q\,
	datad => \inst|MAR\(1),
	combout => \inst|reggy~247_combout\);

-- Location: FF_X13_Y17_N23
\inst|reggy~76\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|reggy~175_combout\,
	ena => \inst|reggy~183_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy~76_q\);

-- Location: LCCOMB_X12_Y17_N30
\inst|reggy~248\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~248_combout\ = (\inst|MAR\(0) & ((\inst|reggy~247_combout\ & ((\inst|reggy~76_q\))) # (!\inst|reggy~247_combout\ & (\inst|reggy~44_q\)))) # (!\inst|MAR\(0) & (((\inst|reggy~247_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MAR\(0),
	datab => \inst|reggy~44_q\,
	datac => \inst|reggy~247_combout\,
	datad => \inst|reggy~76_q\,
	combout => \inst|reggy~248_combout\);

-- Location: FF_X17_Y14_N17
\inst|REG_B[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~248_combout\,
	sload => VCC,
	ena => \inst|OP[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|REG_B\(8));

-- Location: LCCOMB_X19_Y16_N12
\inst|alu1|unidad_logica|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|Mux7~0_combout\ = (\inst|REG_A\(8) & ((\inst|alu1|Mux17~0_combout\) # ((\inst|REG_B\(8) & !\inst|alu1|Mux16~0_combout\)))) # (!\inst|REG_A\(8) & (\inst|alu1|Mux17~0_combout\ & ((\inst|REG_B\(8)) # (\inst|alu1|Mux16~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(8),
	datab => \inst|alu1|Mux17~0_combout\,
	datac => \inst|REG_B\(8),
	datad => \inst|alu1|Mux16~0_combout\,
	combout => \inst|alu1|unidad_logica|Mux7~0_combout\);

-- Location: LCCOMB_X19_Y16_N22
\inst|alu1|unidad_logica|Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|Mux7~1_combout\ = (\inst|alu1|Mux16~0_combout\ & ((\inst|alu1|unidad_logica|Mux7~0_combout\ & ((\inst|alu1|unidad_logica|aux[8]~16_combout\))) # (!\inst|alu1|unidad_logica|Mux7~0_combout\ & (!\inst|REG_A\(8))))) # 
-- (!\inst|alu1|Mux16~0_combout\ & (((\inst|alu1|unidad_logica|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(8),
	datab => \inst|alu1|Mux16~0_combout\,
	datac => \inst|alu1|unidad_logica|aux[8]~16_combout\,
	datad => \inst|alu1|unidad_logica|Mux7~0_combout\,
	combout => \inst|alu1|unidad_logica|Mux7~1_combout\);

-- Location: LCCOMB_X18_Y15_N10
\inst|alu1|unidad_aritmetica|Mux7~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|Mux7~6_combout\ = (!\inst|OP\(0) & ((\inst|OP\(2) & ((!\inst|OP\(3)))) # (!\inst|OP\(2) & (!\inst|OP\(1) & \inst|OP\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|OP\(1),
	datab => \inst|OP\(0),
	datac => \inst|OP\(2),
	datad => \inst|OP\(3),
	combout => \inst|alu1|unidad_aritmetica|Mux7~6_combout\);

-- Location: LCCOMB_X22_Y12_N26
\inst|alu1|unidad_aritmetica|suma|Yop~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|Yop~0_combout\ = \inst|REG_B\(8) $ (\inst|REG_B\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(8),
	datad => \inst|REG_B\(15),
	combout => \inst|alu1|unidad_aritmetica|suma|Yop~0_combout\);

-- Location: LCCOMB_X21_Y12_N14
\inst|alu1|unidad_aritmetica|suma|Yop~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|Yop~7_combout\ = \inst|REG_B\(15) $ (\inst|REG_B\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|REG_B\(15),
	datad => \inst|REG_B\(7),
	combout => \inst|alu1|unidad_aritmetica|suma|Yop~7_combout\);

-- Location: LCCOMB_X19_Y12_N22
\inst|alu1|unidad_aritmetica|suma|Yop~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|Yop~5_combout\ = \inst|REG_B\(15) $ (\inst|REG_B\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|REG_B\(15),
	datac => \inst|REG_B\(5),
	combout => \inst|alu1|unidad_aritmetica|suma|Yop~5_combout\);

-- Location: LCCOMB_X21_Y12_N12
\inst|alu1|unidad_aritmetica|suma|Yop~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|Yop~4_combout\ = \inst|REG_B\(15) $ (\inst|REG_B\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|REG_B\(15),
	datad => \inst|REG_B\(4),
	combout => \inst|alu1|unidad_aritmetica|suma|Yop~4_combout\);

-- Location: LCCOMB_X19_Y15_N22
\inst|alu1|unidad_aritmetica|suma|Yop~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|Yop~3_combout\ = \inst|REG_B\(3) $ (\inst|REG_B\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|REG_B\(3),
	datad => \inst|REG_B\(15),
	combout => \inst|alu1|unidad_aritmetica|suma|Yop~3_combout\);

-- Location: LCCOMB_X18_Y15_N18
\inst|alu1|unidad_aritmetica|suma|Xop[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|Xop\(1) = \inst|REG_A\(15) $ (\inst|REG_A\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|REG_A\(15),
	datad => \inst|REG_A\(1),
	combout => \inst|alu1|unidad_aritmetica|suma|Xop\(1));

-- Location: LCCOMB_X22_Y14_N18
\inst|alu1|unidad_aritmetica|resta|s0|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|resta|s0|Cout~0_combout\ = (\inst|REG_B\(0) & ((\inst|REG_A\(15)) # ((\inst|REG_B\(15)) # (\inst|REG_A\(0))))) # (!\inst|REG_B\(0) & ((\inst|REG_A\(15) $ (\inst|REG_A\(0))) # (!\inst|REG_B\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(0),
	datab => \inst|REG_A\(15),
	datac => \inst|REG_B\(15),
	datad => \inst|REG_A\(0),
	combout => \inst|alu1|unidad_aritmetica|resta|s0|Cout~0_combout\);

-- Location: LCCOMB_X18_Y15_N2
\inst|alu1|unidad_aritmetica|suma|Yop~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|Yop~1_combout\ = \inst|REG_B\(1) $ (\inst|REG_B\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|REG_B\(1),
	datad => \inst|REG_B\(15),
	combout => \inst|alu1|unidad_aritmetica|suma|Yop~1_combout\);

-- Location: LCCOMB_X22_Y14_N16
\inst|alu1|unidad_aritmetica|resta|s0|Cout2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|resta|s0|Cout2~0_combout\ = (\inst|REG_B\(0) & (!\inst|REG_A\(15) & (\inst|REG_B\(15) & \inst|REG_A\(0)))) # (!\inst|REG_B\(0) & (\inst|REG_A\(15) & (!\inst|REG_B\(15) & !\inst|REG_A\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(0),
	datab => \inst|REG_A\(15),
	datac => \inst|REG_B\(15),
	datad => \inst|REG_A\(0),
	combout => \inst|alu1|unidad_aritmetica|resta|s0|Cout2~0_combout\);

-- Location: LCCOMB_X22_Y14_N28
\inst|alu1|unidad_aritmetica|resta|sR:1:sP|Cout2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|resta|sR:1:sP|Cout2~0_combout\ = (\inst|alu1|unidad_aritmetica|suma|Xop\(1) & (\inst|alu1|unidad_aritmetica|resta|s0|Cout~0_combout\ & (!\inst|alu1|unidad_aritmetica|suma|Yop~1_combout\ & 
-- \inst|alu1|unidad_aritmetica|resta|s0|Cout2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|suma|Xop\(1),
	datab => \inst|alu1|unidad_aritmetica|resta|s0|Cout~0_combout\,
	datac => \inst|alu1|unidad_aritmetica|suma|Yop~1_combout\,
	datad => \inst|alu1|unidad_aritmetica|resta|s0|Cout2~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|resta|sR:1:sP|Cout2~0_combout\);

-- Location: LCCOMB_X22_Y14_N6
\inst|alu1|unidad_aritmetica|resta|sR:2:sP|Cout2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|resta|sR:2:sP|Cout2~4_combout\ = (!\inst|alu1|unidad_aritmetica|suma|Yop~2_combout\ & (\inst|alu1|unidad_aritmetica|resta|sR:1:sP|Cout2~0_combout\ & (\inst|REG_A\(2) $ (\inst|REG_A\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(2),
	datab => \inst|REG_A\(15),
	datac => \inst|alu1|unidad_aritmetica|suma|Yop~2_combout\,
	datad => \inst|alu1|unidad_aritmetica|resta|sR:1:sP|Cout2~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|resta|sR:2:sP|Cout2~4_combout\);

-- Location: LCCOMB_X19_Y15_N10
\inst|alu1|unidad_aritmetica|resta|sR:3:sP|Cout2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|resta|sR:3:sP|Cout2~4_combout\ = (!\inst|alu1|unidad_aritmetica|suma|Yop~3_combout\ & (\inst|alu1|unidad_aritmetica|resta|sR:2:sP|Cout2~4_combout\ & (\inst|REG_A\(3) $ (\inst|REG_A\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(3),
	datab => \inst|alu1|unidad_aritmetica|suma|Yop~3_combout\,
	datac => \inst|REG_A\(15),
	datad => \inst|alu1|unidad_aritmetica|resta|sR:2:sP|Cout2~4_combout\,
	combout => \inst|alu1|unidad_aritmetica|resta|sR:3:sP|Cout2~4_combout\);

-- Location: LCCOMB_X19_Y15_N4
\inst|alu1|unidad_aritmetica|resta|sR:4:sP|Cout2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|resta|sR:4:sP|Cout2~4_combout\ = (!\inst|alu1|unidad_aritmetica|suma|Yop~4_combout\ & (\inst|alu1|unidad_aritmetica|resta|sR:3:sP|Cout2~4_combout\ & (\inst|REG_A\(15) $ (\inst|REG_A\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(15),
	datab => \inst|alu1|unidad_aritmetica|suma|Yop~4_combout\,
	datac => \inst|REG_A\(4),
	datad => \inst|alu1|unidad_aritmetica|resta|sR:3:sP|Cout2~4_combout\,
	combout => \inst|alu1|unidad_aritmetica|resta|sR:4:sP|Cout2~4_combout\);

-- Location: LCCOMB_X19_Y12_N4
\inst|alu1|unidad_aritmetica|resta|sR:5:sP|Cout2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|resta|sR:5:sP|Cout2~4_combout\ = (!\inst|alu1|unidad_aritmetica|suma|Yop~5_combout\ & (\inst|alu1|unidad_aritmetica|resta|sR:4:sP|Cout2~4_combout\ & (\inst|REG_A\(15) $ (\inst|REG_A\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|suma|Yop~5_combout\,
	datab => \inst|REG_A\(15),
	datac => \inst|alu1|unidad_aritmetica|resta|sR:4:sP|Cout2~4_combout\,
	datad => \inst|REG_A\(5),
	combout => \inst|alu1|unidad_aritmetica|resta|sR:5:sP|Cout2~4_combout\);

-- Location: LCCOMB_X19_Y12_N28
\inst|alu1|unidad_aritmetica|suma|Yop~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|Yop~6_combout\ = \inst|REG_B\(15) $ (\inst|REG_B\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|REG_B\(15),
	datac => \inst|REG_B\(6),
	combout => \inst|alu1|unidad_aritmetica|suma|Yop~6_combout\);

-- Location: LCCOMB_X19_Y12_N18
\inst|alu1|unidad_aritmetica|resta|sR:6:sP|Cout2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|resta|sR:6:sP|Cout2~4_combout\ = (\inst|alu1|unidad_aritmetica|resta|sR:5:sP|Cout2~4_combout\ & (!\inst|alu1|unidad_aritmetica|suma|Yop~6_combout\ & (\inst|REG_A\(6) $ (\inst|REG_A\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(6),
	datab => \inst|alu1|unidad_aritmetica|resta|sR:5:sP|Cout2~4_combout\,
	datac => \inst|REG_A\(15),
	datad => \inst|alu1|unidad_aritmetica|suma|Yop~6_combout\,
	combout => \inst|alu1|unidad_aritmetica|resta|sR:6:sP|Cout2~4_combout\);

-- Location: LCCOMB_X22_Y12_N16
\inst|alu1|unidad_aritmetica|resta|sR:7:sP|Cout2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|resta|sR:7:sP|Cout2~4_combout\ = (!\inst|alu1|unidad_aritmetica|suma|Yop~7_combout\ & (\inst|alu1|unidad_aritmetica|resta|sR:6:sP|Cout2~4_combout\ & (\inst|REG_A\(15) $ (\inst|REG_A\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|suma|Yop~7_combout\,
	datab => \inst|REG_A\(15),
	datac => \inst|alu1|unidad_aritmetica|resta|sR:6:sP|Cout2~4_combout\,
	datad => \inst|REG_A\(7),
	combout => \inst|alu1|unidad_aritmetica|resta|sR:7:sP|Cout2~4_combout\);

-- Location: LCCOMB_X22_Y12_N8
\inst|alu1|unidad_aritmetica|suma|Xop[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|Xop\(7) = \inst|REG_A\(7) $ (\inst|REG_A\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|REG_A\(7),
	datac => \inst|REG_A\(15),
	combout => \inst|alu1|unidad_aritmetica|suma|Xop\(7));

-- Location: LCCOMB_X19_Y15_N8
\inst|alu1|unidad_aritmetica|suma|Xop[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|Xop\(5) = \inst|REG_A\(15) $ (\inst|REG_A\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(15),
	datad => \inst|REG_A\(5),
	combout => \inst|alu1|unidad_aritmetica|suma|Xop\(5));

-- Location: LCCOMB_X19_Y15_N0
\inst|alu1|unidad_aritmetica|suma|Xop[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|Xop\(3) = \inst|REG_A\(3) $ (\inst|REG_A\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|REG_A\(3),
	datad => \inst|REG_A\(15),
	combout => \inst|alu1|unidad_aritmetica|suma|Xop\(3));

-- Location: LCCOMB_X19_Y15_N2
\inst|alu1|unidad_aritmetica|suma|Xop[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|Xop\(2) = \inst|REG_A\(2) $ (\inst|REG_A\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|REG_A\(2),
	datad => \inst|REG_A\(15),
	combout => \inst|alu1|unidad_aritmetica|suma|Xop\(2));

-- Location: LCCOMB_X22_Y14_N12
\inst|alu1|unidad_aritmetica|resta|sR:1:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|resta|sR:1:sP|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|suma|Xop\(1) & ((\inst|alu1|unidad_aritmetica|resta|s0|Cout~0_combout\) # ((!\inst|alu1|unidad_aritmetica|suma|Yop~1_combout\)))) # 
-- (!\inst|alu1|unidad_aritmetica|suma|Xop\(1) & (\inst|alu1|unidad_aritmetica|resta|s0|Cout~0_combout\ & ((\inst|alu1|unidad_aritmetica|resta|s0|Cout2~0_combout\) # (!\inst|alu1|unidad_aritmetica|suma|Yop~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|suma|Xop\(1),
	datab => \inst|alu1|unidad_aritmetica|resta|s0|Cout~0_combout\,
	datac => \inst|alu1|unidad_aritmetica|suma|Yop~1_combout\,
	datad => \inst|alu1|unidad_aritmetica|resta|s0|Cout2~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|resta|sR:1:sP|Cout~0_combout\);

-- Location: LCCOMB_X22_Y14_N30
\inst|alu1|unidad_aritmetica|resta|sR:2:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|resta|sR:2:sP|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|resta|sR:1:sP|Cout2~0_combout\) # ((\inst|alu1|unidad_aritmetica|suma|Xop\(2) & ((\inst|alu1|unidad_aritmetica|resta|sR:1:sP|Cout~0_combout\) # 
-- (!\inst|alu1|unidad_aritmetica|suma|Yop~2_combout\))) # (!\inst|alu1|unidad_aritmetica|suma|Xop\(2) & (!\inst|alu1|unidad_aritmetica|suma|Yop~2_combout\ & \inst|alu1|unidad_aritmetica|resta|sR:1:sP|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|suma|Xop\(2),
	datab => \inst|alu1|unidad_aritmetica|resta|sR:1:sP|Cout2~0_combout\,
	datac => \inst|alu1|unidad_aritmetica|suma|Yop~2_combout\,
	datad => \inst|alu1|unidad_aritmetica|resta|sR:1:sP|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|resta|sR:2:sP|Cout~0_combout\);

-- Location: LCCOMB_X19_Y15_N20
\inst|alu1|unidad_aritmetica|resta|sR:3:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|resta|sR:3:sP|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|resta|sR:2:sP|Cout2~4_combout\) # ((\inst|alu1|unidad_aritmetica|suma|Xop\(3) & ((\inst|alu1|unidad_aritmetica|resta|sR:2:sP|Cout~0_combout\) # 
-- (!\inst|alu1|unidad_aritmetica|suma|Yop~3_combout\))) # (!\inst|alu1|unidad_aritmetica|suma|Xop\(3) & (!\inst|alu1|unidad_aritmetica|suma|Yop~3_combout\ & \inst|alu1|unidad_aritmetica|resta|sR:2:sP|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|suma|Xop\(3),
	datab => \inst|alu1|unidad_aritmetica|suma|Yop~3_combout\,
	datac => \inst|alu1|unidad_aritmetica|resta|sR:2:sP|Cout~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|resta|sR:2:sP|Cout2~4_combout\,
	combout => \inst|alu1|unidad_aritmetica|resta|sR:3:sP|Cout~0_combout\);

-- Location: LCCOMB_X19_Y15_N30
\inst|alu1|unidad_aritmetica|suma|Xop[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|Xop\(4) = \inst|REG_A\(4) $ (\inst|REG_A\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|REG_A\(4),
	datad => \inst|REG_A\(15),
	combout => \inst|alu1|unidad_aritmetica|suma|Xop\(4));

-- Location: LCCOMB_X19_Y15_N14
\inst|alu1|unidad_aritmetica|resta|sR:4:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|resta|sR:4:sP|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|resta|sR:3:sP|Cout2~4_combout\) # ((\inst|alu1|unidad_aritmetica|resta|sR:3:sP|Cout~0_combout\ & ((\inst|alu1|unidad_aritmetica|suma|Xop\(4)) # 
-- (!\inst|alu1|unidad_aritmetica|suma|Yop~4_combout\))) # (!\inst|alu1|unidad_aritmetica|resta|sR:3:sP|Cout~0_combout\ & (\inst|alu1|unidad_aritmetica|suma|Xop\(4) & !\inst|alu1|unidad_aritmetica|suma|Yop~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|resta|sR:3:sP|Cout2~4_combout\,
	datab => \inst|alu1|unidad_aritmetica|resta|sR:3:sP|Cout~0_combout\,
	datac => \inst|alu1|unidad_aritmetica|suma|Xop\(4),
	datad => \inst|alu1|unidad_aritmetica|suma|Yop~4_combout\,
	combout => \inst|alu1|unidad_aritmetica|resta|sR:4:sP|Cout~0_combout\);

-- Location: LCCOMB_X19_Y12_N10
\inst|alu1|unidad_aritmetica|resta|sR:5:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|resta|sR:5:sP|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|resta|sR:4:sP|Cout2~4_combout\) # ((\inst|alu1|unidad_aritmetica|suma|Yop~5_combout\ & (\inst|alu1|unidad_aritmetica|suma|Xop\(5) & 
-- \inst|alu1|unidad_aritmetica|resta|sR:4:sP|Cout~0_combout\)) # (!\inst|alu1|unidad_aritmetica|suma|Yop~5_combout\ & ((\inst|alu1|unidad_aritmetica|suma|Xop\(5)) # (\inst|alu1|unidad_aritmetica|resta|sR:4:sP|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|suma|Yop~5_combout\,
	datab => \inst|alu1|unidad_aritmetica|resta|sR:4:sP|Cout2~4_combout\,
	datac => \inst|alu1|unidad_aritmetica|suma|Xop\(5),
	datad => \inst|alu1|unidad_aritmetica|resta|sR:4:sP|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|resta|sR:5:sP|Cout~0_combout\);

-- Location: LCCOMB_X19_Y12_N0
\inst|alu1|unidad_aritmetica|suma|Xop[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|Xop\(6) = \inst|REG_A\(6) $ (\inst|REG_A\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|REG_A\(6),
	datac => \inst|REG_A\(15),
	combout => \inst|alu1|unidad_aritmetica|suma|Xop\(6));

-- Location: LCCOMB_X19_Y12_N12
\inst|alu1|unidad_aritmetica|resta|sR:6:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|resta|sR:6:sP|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|resta|sR:5:sP|Cout2~4_combout\) # ((\inst|alu1|unidad_aritmetica|resta|sR:5:sP|Cout~0_combout\ & ((\inst|alu1|unidad_aritmetica|suma|Xop\(6)) # 
-- (!\inst|alu1|unidad_aritmetica|suma|Yop~6_combout\))) # (!\inst|alu1|unidad_aritmetica|resta|sR:5:sP|Cout~0_combout\ & (!\inst|alu1|unidad_aritmetica|suma|Yop~6_combout\ & \inst|alu1|unidad_aritmetica|suma|Xop\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|resta|sR:5:sP|Cout~0_combout\,
	datab => \inst|alu1|unidad_aritmetica|suma|Yop~6_combout\,
	datac => \inst|alu1|unidad_aritmetica|resta|sR:5:sP|Cout2~4_combout\,
	datad => \inst|alu1|unidad_aritmetica|suma|Xop\(6),
	combout => \inst|alu1|unidad_aritmetica|resta|sR:6:sP|Cout~0_combout\);

-- Location: LCCOMB_X22_Y12_N22
\inst|alu1|unidad_aritmetica|resta|sR:7:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|resta|sR:7:sP|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|resta|sR:6:sP|Cout2~4_combout\) # ((\inst|alu1|unidad_aritmetica|suma|Yop~7_combout\ & (\inst|alu1|unidad_aritmetica|suma|Xop\(7) & 
-- \inst|alu1|unidad_aritmetica|resta|sR:6:sP|Cout~0_combout\)) # (!\inst|alu1|unidad_aritmetica|suma|Yop~7_combout\ & ((\inst|alu1|unidad_aritmetica|suma|Xop\(7)) # (\inst|alu1|unidad_aritmetica|resta|sR:6:sP|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|suma|Yop~7_combout\,
	datab => \inst|alu1|unidad_aritmetica|suma|Xop\(7),
	datac => \inst|alu1|unidad_aritmetica|resta|sR:6:sP|Cout2~4_combout\,
	datad => \inst|alu1|unidad_aritmetica|resta|sR:6:sP|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|resta|sR:7:sP|Cout~0_combout\);

-- Location: LCCOMB_X22_Y12_N28
\inst|alu1|unidad_aritmetica|suma|Xop[8]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|Xop\(8) = \inst|REG_A\(15) $ (\inst|REG_A\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|REG_A\(15),
	datad => \inst|REG_A\(8),
	combout => \inst|alu1|unidad_aritmetica|suma|Xop\(8));

-- Location: LCCOMB_X22_Y12_N20
\inst|alu1|unidad_aritmetica|resta|sR:8:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|resta|sR:8:sP|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|suma|Yop~0_combout\ $ (\inst|alu1|unidad_aritmetica|resta|sR:7:sP|Cout2~4_combout\ $ (\inst|alu1|unidad_aritmetica|resta|sR:7:sP|Cout~0_combout\ $ 
-- (\inst|alu1|unidad_aritmetica|suma|Xop\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|suma|Yop~0_combout\,
	datab => \inst|alu1|unidad_aritmetica|resta|sR:7:sP|Cout2~4_combout\,
	datac => \inst|alu1|unidad_aritmetica|resta|sR:7:sP|Cout~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|suma|Xop\(8),
	combout => \inst|alu1|unidad_aritmetica|resta|sR:8:sP|Suma~0_combout\);

-- Location: LCCOMB_X23_Y13_N22
\inst|alu1|unidad_aritmetica|suma|Xop[12]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|Xop\(12) = \inst|REG_A\(12) $ (\inst|REG_A\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|REG_A\(12),
	datad => \inst|REG_A\(15),
	combout => \inst|alu1|unidad_aritmetica|suma|Xop\(12));

-- Location: LCCOMB_X24_Y13_N16
\inst|alu1|unidad_aritmetica|suma|Xop[11]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|Xop\(11) = \inst|REG_A\(15) $ (\inst|REG_A\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(15),
	datad => \inst|REG_A\(11),
	combout => \inst|alu1|unidad_aritmetica|suma|Xop\(11));

-- Location: LCCOMB_X24_Y13_N6
\inst|alu1|unidad_aritmetica|suma|Xop[10]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|Xop\(10) = \inst|REG_A\(15) $ (\inst|REG_A\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(15),
	datad => \inst|REG_A\(10),
	combout => \inst|alu1|unidad_aritmetica|suma|Xop\(10));

-- Location: LCCOMB_X23_Y12_N8
\inst|alu1|unidad_aritmetica|suma|Yop~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|Yop~9_combout\ = \inst|REG_B\(15) $ (\inst|REG_B\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(15),
	datad => \inst|REG_B\(10),
	combout => \inst|alu1|unidad_aritmetica|suma|Yop~9_combout\);

-- Location: LCCOMB_X23_Y12_N10
\inst|alu1|unidad_aritmetica|suma|Yop~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|Yop~8_combout\ = \inst|REG_B\(9) $ (\inst|REG_B\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|REG_B\(9),
	datad => \inst|REG_B\(15),
	combout => \inst|alu1|unidad_aritmetica|suma|Yop~8_combout\);

-- Location: LCCOMB_X23_Y12_N16
\inst|alu1|unidad_aritmetica|suma|Xop[9]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|Xop\(9) = \inst|REG_A\(15) $ (\inst|REG_A\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|REG_A\(15),
	datad => \inst|REG_A\(9),
	combout => \inst|alu1|unidad_aritmetica|suma|Xop\(9));

-- Location: LCCOMB_X22_Y12_N0
\inst|alu1|unidad_aritmetica|resta|sR:8:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|resta|sR:8:sP|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|resta|sR:7:sP|Cout2~4_combout\) # ((\inst|alu1|unidad_aritmetica|suma|Yop~0_combout\ & (\inst|alu1|unidad_aritmetica|resta|sR:7:sP|Cout~0_combout\ & 
-- \inst|alu1|unidad_aritmetica|suma|Xop\(8))) # (!\inst|alu1|unidad_aritmetica|suma|Yop~0_combout\ & ((\inst|alu1|unidad_aritmetica|resta|sR:7:sP|Cout~0_combout\) # (\inst|alu1|unidad_aritmetica|suma|Xop\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|suma|Yop~0_combout\,
	datab => \inst|alu1|unidad_aritmetica|resta|sR:7:sP|Cout2~4_combout\,
	datac => \inst|alu1|unidad_aritmetica|resta|sR:7:sP|Cout~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|suma|Xop\(8),
	combout => \inst|alu1|unidad_aritmetica|resta|sR:8:sP|Cout~0_combout\);

-- Location: LCCOMB_X22_Y12_N10
\inst|alu1|unidad_aritmetica|resta|sR:8:sP|Cout2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|resta|sR:8:sP|Cout2~4_combout\ = (!\inst|alu1|unidad_aritmetica|suma|Yop~0_combout\ & (\inst|alu1|unidad_aritmetica|resta|sR:7:sP|Cout2~4_combout\ & (\inst|REG_A\(15) $ (\inst|REG_A\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|suma|Yop~0_combout\,
	datab => \inst|alu1|unidad_aritmetica|resta|sR:7:sP|Cout2~4_combout\,
	datac => \inst|REG_A\(15),
	datad => \inst|REG_A\(8),
	combout => \inst|alu1|unidad_aritmetica|resta|sR:8:sP|Cout2~4_combout\);

-- Location: LCCOMB_X23_Y12_N28
\inst|alu1|unidad_aritmetica|resta|sR:9:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|resta|sR:9:sP|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|resta|sR:8:sP|Cout2~4_combout\) # ((\inst|alu1|unidad_aritmetica|suma|Yop~8_combout\ & (\inst|alu1|unidad_aritmetica|suma|Xop\(9) & 
-- \inst|alu1|unidad_aritmetica|resta|sR:8:sP|Cout~0_combout\)) # (!\inst|alu1|unidad_aritmetica|suma|Yop~8_combout\ & ((\inst|alu1|unidad_aritmetica|suma|Xop\(9)) # (\inst|alu1|unidad_aritmetica|resta|sR:8:sP|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|suma|Yop~8_combout\,
	datab => \inst|alu1|unidad_aritmetica|suma|Xop\(9),
	datac => \inst|alu1|unidad_aritmetica|resta|sR:8:sP|Cout~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|resta|sR:8:sP|Cout2~4_combout\,
	combout => \inst|alu1|unidad_aritmetica|resta|sR:9:sP|Cout~0_combout\);

-- Location: LCCOMB_X23_Y12_N0
\inst|alu1|unidad_aritmetica|resta|sR:9:sP|Cout2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|resta|sR:9:sP|Cout2~4_combout\ = (!\inst|alu1|unidad_aritmetica|suma|Yop~8_combout\ & (\inst|alu1|unidad_aritmetica|resta|sR:8:sP|Cout2~4_combout\ & (\inst|REG_A\(9) $ (\inst|REG_A\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|suma|Yop~8_combout\,
	datab => \inst|REG_A\(9),
	datac => \inst|REG_A\(15),
	datad => \inst|alu1|unidad_aritmetica|resta|sR:8:sP|Cout2~4_combout\,
	combout => \inst|alu1|unidad_aritmetica|resta|sR:9:sP|Cout2~4_combout\);

-- Location: LCCOMB_X24_Y13_N20
\inst|alu1|unidad_aritmetica|resta|sR:10:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|resta|sR:10:sP|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|resta|sR:9:sP|Cout2~4_combout\) # ((\inst|alu1|unidad_aritmetica|suma|Xop\(10) & ((\inst|alu1|unidad_aritmetica|resta|sR:9:sP|Cout~0_combout\) # 
-- (!\inst|alu1|unidad_aritmetica|suma|Yop~9_combout\))) # (!\inst|alu1|unidad_aritmetica|suma|Xop\(10) & (!\inst|alu1|unidad_aritmetica|suma|Yop~9_combout\ & \inst|alu1|unidad_aritmetica|resta|sR:9:sP|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|suma|Xop\(10),
	datab => \inst|alu1|unidad_aritmetica|suma|Yop~9_combout\,
	datac => \inst|alu1|unidad_aritmetica|resta|sR:9:sP|Cout~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|resta|sR:9:sP|Cout2~4_combout\,
	combout => \inst|alu1|unidad_aritmetica|resta|sR:10:sP|Cout~0_combout\);

-- Location: LCCOMB_X23_Y11_N0
\inst|alu1|unidad_aritmetica|suma|Yop~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|Yop~10_combout\ = \inst|REG_B\(11) $ (\inst|REG_B\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|REG_B\(11),
	datac => \inst|REG_B\(15),
	combout => \inst|alu1|unidad_aritmetica|suma|Yop~10_combout\);

-- Location: LCCOMB_X24_Y13_N28
\inst|alu1|unidad_aritmetica|resta|sR:10:sP|Cout2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|resta|sR:10:sP|Cout2~4_combout\ = (\inst|alu1|unidad_aritmetica|resta|sR:9:sP|Cout2~4_combout\ & (!\inst|alu1|unidad_aritmetica|suma|Yop~9_combout\ & (\inst|REG_A\(10) $ (\inst|REG_A\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(10),
	datab => \inst|alu1|unidad_aritmetica|resta|sR:9:sP|Cout2~4_combout\,
	datac => \inst|alu1|unidad_aritmetica|suma|Yop~9_combout\,
	datad => \inst|REG_A\(15),
	combout => \inst|alu1|unidad_aritmetica|resta|sR:10:sP|Cout2~4_combout\);

-- Location: LCCOMB_X24_Y13_N18
\inst|alu1|unidad_aritmetica|resta|sR:11:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|resta|sR:11:sP|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|resta|sR:10:sP|Cout2~4_combout\) # ((\inst|alu1|unidad_aritmetica|suma|Xop\(11) & ((\inst|alu1|unidad_aritmetica|resta|sR:10:sP|Cout~0_combout\) # 
-- (!\inst|alu1|unidad_aritmetica|suma|Yop~10_combout\))) # (!\inst|alu1|unidad_aritmetica|suma|Xop\(11) & (\inst|alu1|unidad_aritmetica|resta|sR:10:sP|Cout~0_combout\ & !\inst|alu1|unidad_aritmetica|suma|Yop~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|suma|Xop\(11),
	datab => \inst|alu1|unidad_aritmetica|resta|sR:10:sP|Cout~0_combout\,
	datac => \inst|alu1|unidad_aritmetica|suma|Yop~10_combout\,
	datad => \inst|alu1|unidad_aritmetica|resta|sR:10:sP|Cout2~4_combout\,
	combout => \inst|alu1|unidad_aritmetica|resta|sR:11:sP|Cout~0_combout\);

-- Location: LCCOMB_X24_Y13_N26
\inst|alu1|unidad_aritmetica|resta|sR:11:sP|Cout2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|resta|sR:11:sP|Cout2~4_combout\ = (\inst|alu1|unidad_aritmetica|resta|sR:10:sP|Cout2~4_combout\ & (!\inst|alu1|unidad_aritmetica|suma|Yop~10_combout\ & (\inst|REG_A\(11) $ (\inst|REG_A\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(11),
	datab => \inst|alu1|unidad_aritmetica|resta|sR:10:sP|Cout2~4_combout\,
	datac => \inst|alu1|unidad_aritmetica|suma|Yop~10_combout\,
	datad => \inst|REG_A\(15),
	combout => \inst|alu1|unidad_aritmetica|resta|sR:11:sP|Cout2~4_combout\);

-- Location: LCCOMB_X23_Y13_N12
\inst|alu1|unidad_aritmetica|resta|sR:12:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|resta|sR:12:sP|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|resta|sR:11:sP|Cout2~4_combout\) # ((\inst|alu1|unidad_aritmetica|suma|Xop\(12) & ((\inst|alu1|unidad_aritmetica|resta|sR:11:sP|Cout~0_combout\) # 
-- (!\inst|alu1|unidad_aritmetica|suma|Yop~11_combout\))) # (!\inst|alu1|unidad_aritmetica|suma|Xop\(12) & (\inst|alu1|unidad_aritmetica|resta|sR:11:sP|Cout~0_combout\ & !\inst|alu1|unidad_aritmetica|suma|Yop~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|suma|Xop\(12),
	datab => \inst|alu1|unidad_aritmetica|resta|sR:11:sP|Cout~0_combout\,
	datac => \inst|alu1|unidad_aritmetica|suma|Yop~11_combout\,
	datad => \inst|alu1|unidad_aritmetica|resta|sR:11:sP|Cout2~4_combout\,
	combout => \inst|alu1|unidad_aritmetica|resta|sR:12:sP|Cout~0_combout\);

-- Location: LCCOMB_X23_Y13_N4
\inst|alu1|unidad_aritmetica|resta|sR:12:sP|Cout2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|resta|sR:12:sP|Cout2~4_combout\ = (!\inst|alu1|unidad_aritmetica|suma|Yop~11_combout\ & (\inst|alu1|unidad_aritmetica|resta|sR:11:sP|Cout2~4_combout\ & (\inst|REG_A\(12) $ (\inst|REG_A\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|suma|Yop~11_combout\,
	datab => \inst|alu1|unidad_aritmetica|resta|sR:11:sP|Cout2~4_combout\,
	datac => \inst|REG_A\(12),
	datad => \inst|REG_A\(15),
	combout => \inst|alu1|unidad_aritmetica|resta|sR:12:sP|Cout2~4_combout\);

-- Location: LCCOMB_X23_Y13_N24
\inst|alu1|unidad_aritmetica|suma|Xop[13]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|Xop\(13) = \inst|REG_A\(13) $ (\inst|REG_A\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|REG_A\(13),
	datad => \inst|REG_A\(15),
	combout => \inst|alu1|unidad_aritmetica|suma|Xop\(13));

-- Location: LCCOMB_X23_Y13_N6
\inst|alu1|unidad_aritmetica|resta|sR:13:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|resta|sR:13:sP|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|resta|sR:12:sP|Cout2~4_combout\) # ((\inst|alu1|unidad_aritmetica|resta|sR:12:sP|Cout~0_combout\ & ((\inst|alu1|unidad_aritmetica|suma|Xop\(13)) # 
-- (!\inst|alu1|unidad_aritmetica|suma|Yop~12_combout\))) # (!\inst|alu1|unidad_aritmetica|resta|sR:12:sP|Cout~0_combout\ & (!\inst|alu1|unidad_aritmetica|suma|Yop~12_combout\ & \inst|alu1|unidad_aritmetica|suma|Xop\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|resta|sR:12:sP|Cout~0_combout\,
	datab => \inst|alu1|unidad_aritmetica|suma|Yop~12_combout\,
	datac => \inst|alu1|unidad_aritmetica|resta|sR:12:sP|Cout2~4_combout\,
	datad => \inst|alu1|unidad_aritmetica|suma|Xop\(13),
	combout => \inst|alu1|unidad_aritmetica|resta|sR:13:sP|Cout~0_combout\);

-- Location: LCCOMB_X22_Y13_N16
\inst|alu1|unidad_aritmetica|suma|Xop[14]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|Xop\(14) = \inst|REG_A\(15) $ (\inst|REG_A\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(15),
	datad => \inst|REG_A\(14),
	combout => \inst|alu1|unidad_aritmetica|suma|Xop\(14));

-- Location: LCCOMB_X22_Y13_N30
\inst|alu1|unidad_aritmetica|suma|Yop~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|Yop~13_combout\ = \inst|REG_B\(15) $ (\inst|REG_B\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|REG_B\(15),
	datad => \inst|REG_B\(14),
	combout => \inst|alu1|unidad_aritmetica|suma|Yop~13_combout\);

-- Location: LCCOMB_X23_Y13_N18
\inst|alu1|unidad_aritmetica|resta|sR:13:sP|Cout2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|resta|sR:13:sP|Cout2~4_combout\ = (!\inst|alu1|unidad_aritmetica|suma|Yop~12_combout\ & (\inst|alu1|unidad_aritmetica|resta|sR:12:sP|Cout2~4_combout\ & (\inst|REG_A\(15) $ (\inst|REG_A\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(15),
	datab => \inst|alu1|unidad_aritmetica|suma|Yop~12_combout\,
	datac => \inst|alu1|unidad_aritmetica|resta|sR:12:sP|Cout2~4_combout\,
	datad => \inst|REG_A\(13),
	combout => \inst|alu1|unidad_aritmetica|resta|sR:13:sP|Cout2~4_combout\);

-- Location: LCCOMB_X22_Y13_N0
\inst|alu1|unidad_aritmetica|resta|sR:14:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|resta|sR:14:sP|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|resta|sR:13:sP|Cout2~4_combout\) # ((\inst|alu1|unidad_aritmetica|resta|sR:13:sP|Cout~0_combout\ & ((\inst|alu1|unidad_aritmetica|suma|Xop\(14)) # 
-- (!\inst|alu1|unidad_aritmetica|suma|Yop~13_combout\))) # (!\inst|alu1|unidad_aritmetica|resta|sR:13:sP|Cout~0_combout\ & (\inst|alu1|unidad_aritmetica|suma|Xop\(14) & !\inst|alu1|unidad_aritmetica|suma|Yop~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|resta|sR:13:sP|Cout~0_combout\,
	datab => \inst|alu1|unidad_aritmetica|suma|Xop\(14),
	datac => \inst|alu1|unidad_aritmetica|suma|Yop~13_combout\,
	datad => \inst|alu1|unidad_aritmetica|resta|sR:13:sP|Cout2~4_combout\,
	combout => \inst|alu1|unidad_aritmetica|resta|sR:14:sP|Cout~0_combout\);

-- Location: LCCOMB_X22_Y13_N12
\inst|alu1|unidad_aritmetica|resta|Sfaux~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|resta|Sfaux~2_combout\ = \inst|REG_A\(15) $ (\inst|REG_B\(15) $ (\inst|alu1|unidad_aritmetica|resta|sR:14:sP|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(15),
	datac => \inst|REG_B\(15),
	datad => \inst|alu1|unidad_aritmetica|resta|sR:14:sP|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|resta|Sfaux~2_combout\);

-- Location: LCCOMB_X22_Y12_N2
\inst|alu1|unidad_aritmetica|resta|sR:7:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|resta|sR:7:sP|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|suma|Yop~7_combout\ $ (\inst|alu1|unidad_aritmetica|suma|Xop\(7) $ (\inst|alu1|unidad_aritmetica|resta|sR:6:sP|Cout2~4_combout\ $ 
-- (\inst|alu1|unidad_aritmetica|resta|sR:6:sP|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|suma|Yop~7_combout\,
	datab => \inst|alu1|unidad_aritmetica|suma|Xop\(7),
	datac => \inst|alu1|unidad_aritmetica|resta|sR:6:sP|Cout2~4_combout\,
	datad => \inst|alu1|unidad_aritmetica|resta|sR:6:sP|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|resta|sR:7:sP|Suma~0_combout\);

-- Location: LCCOMB_X19_Y12_N2
\inst|alu1|unidad_aritmetica|resta|sR:6:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|resta|sR:6:sP|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|resta|sR:5:sP|Cout~0_combout\ $ (\inst|alu1|unidad_aritmetica|suma|Yop~6_combout\ $ (\inst|alu1|unidad_aritmetica|resta|sR:5:sP|Cout2~4_combout\ $ 
-- (\inst|alu1|unidad_aritmetica|suma|Xop\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|resta|sR:5:sP|Cout~0_combout\,
	datab => \inst|alu1|unidad_aritmetica|suma|Yop~6_combout\,
	datac => \inst|alu1|unidad_aritmetica|resta|sR:5:sP|Cout2~4_combout\,
	datad => \inst|alu1|unidad_aritmetica|suma|Xop\(6),
	combout => \inst|alu1|unidad_aritmetica|resta|sR:6:sP|Suma~0_combout\);

-- Location: LCCOMB_X19_Y15_N16
\inst|alu1|unidad_aritmetica|resta|sR:5:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|resta|sR:5:sP|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|resta|sR:4:sP|Cout2~4_combout\ $ (\inst|alu1|unidad_aritmetica|suma|Xop\(5) $ (\inst|alu1|unidad_aritmetica|resta|sR:4:sP|Cout~0_combout\ $ 
-- (\inst|alu1|unidad_aritmetica|suma|Yop~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|resta|sR:4:sP|Cout2~4_combout\,
	datab => \inst|alu1|unidad_aritmetica|suma|Xop\(5),
	datac => \inst|alu1|unidad_aritmetica|resta|sR:4:sP|Cout~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|suma|Yop~5_combout\,
	combout => \inst|alu1|unidad_aritmetica|resta|sR:5:sP|Suma~0_combout\);

-- Location: LCCOMB_X19_Y15_N26
\inst|alu1|unidad_aritmetica|resta|sR:4:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|resta|sR:4:sP|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|resta|sR:3:sP|Cout2~4_combout\ $ (\inst|alu1|unidad_aritmetica|resta|sR:3:sP|Cout~0_combout\ $ (\inst|alu1|unidad_aritmetica|suma|Xop\(4) $ 
-- (\inst|alu1|unidad_aritmetica|suma|Yop~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|resta|sR:3:sP|Cout2~4_combout\,
	datab => \inst|alu1|unidad_aritmetica|resta|sR:3:sP|Cout~0_combout\,
	datac => \inst|alu1|unidad_aritmetica|suma|Xop\(4),
	datad => \inst|alu1|unidad_aritmetica|suma|Yop~4_combout\,
	combout => \inst|alu1|unidad_aritmetica|resta|sR:4:sP|Suma~0_combout\);

-- Location: LCCOMB_X19_Y15_N28
\inst|alu1|unidad_aritmetica|resta|sR:3:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|resta|sR:3:sP|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|suma|Xop\(3) $ (\inst|alu1|unidad_aritmetica|suma|Yop~3_combout\ $ (\inst|alu1|unidad_aritmetica|resta|sR:2:sP|Cout~0_combout\ $ 
-- (\inst|alu1|unidad_aritmetica|resta|sR:2:sP|Cout2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|suma|Xop\(3),
	datab => \inst|alu1|unidad_aritmetica|suma|Yop~3_combout\,
	datac => \inst|alu1|unidad_aritmetica|resta|sR:2:sP|Cout~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|resta|sR:2:sP|Cout2~4_combout\,
	combout => \inst|alu1|unidad_aritmetica|resta|sR:3:sP|Suma~0_combout\);

-- Location: LCCOMB_X22_Y14_N14
\inst|alu1|unidad_aritmetica|resta|sR:1:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|resta|sR:1:sP|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|suma|Xop\(1) $ (\inst|alu1|unidad_aritmetica|resta|s0|Cout~0_combout\ $ (\inst|alu1|unidad_aritmetica|suma|Yop~1_combout\ $ 
-- (\inst|alu1|unidad_aritmetica|resta|s0|Cout2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|suma|Xop\(1),
	datab => \inst|alu1|unidad_aritmetica|resta|s0|Cout~0_combout\,
	datac => \inst|alu1|unidad_aritmetica|suma|Yop~1_combout\,
	datad => \inst|alu1|unidad_aritmetica|resta|s0|Cout2~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|resta|sR:1:sP|Suma~0_combout\);

-- Location: LCCOMB_X23_Y15_N0
\inst|alu1|unidad_aritmetica|resta|negativo|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|resta|negativo|Add0~0_combout\ = \inst|REG_A\(0) $ (\inst|REG_B\(0) $ (GND))
-- \inst|alu1|unidad_aritmetica|resta|negativo|Add0~1\ = CARRY(\inst|REG_A\(0) $ (!\inst|REG_B\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(0),
	datab => \inst|REG_B\(0),
	datad => VCC,
	combout => \inst|alu1|unidad_aritmetica|resta|negativo|Add0~0_combout\,
	cout => \inst|alu1|unidad_aritmetica|resta|negativo|Add0~1\);

-- Location: LCCOMB_X23_Y15_N2
\inst|alu1|unidad_aritmetica|resta|negativo|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|resta|negativo|Add0~2_combout\ = (\inst|alu1|unidad_aritmetica|resta|sR:1:sP|Suma~0_combout\ & (!\inst|alu1|unidad_aritmetica|resta|negativo|Add0~1\)) # (!\inst|alu1|unidad_aritmetica|resta|sR:1:sP|Suma~0_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|resta|negativo|Add0~1\) # (GND)))
-- \inst|alu1|unidad_aritmetica|resta|negativo|Add0~3\ = CARRY((!\inst|alu1|unidad_aritmetica|resta|negativo|Add0~1\) # (!\inst|alu1|unidad_aritmetica|resta|sR:1:sP|Suma~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|resta|sR:1:sP|Suma~0_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|resta|negativo|Add0~1\,
	combout => \inst|alu1|unidad_aritmetica|resta|negativo|Add0~2_combout\,
	cout => \inst|alu1|unidad_aritmetica|resta|negativo|Add0~3\);

-- Location: LCCOMB_X23_Y15_N4
\inst|alu1|unidad_aritmetica|resta|negativo|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|resta|negativo|Add0~4_combout\ = (\inst|alu1|unidad_aritmetica|resta|sR:2:sP|Suma~0_combout\ & (\inst|alu1|unidad_aritmetica|resta|negativo|Add0~3\ $ (GND))) # (!\inst|alu1|unidad_aritmetica|resta|sR:2:sP|Suma~0_combout\ & 
-- (!\inst|alu1|unidad_aritmetica|resta|negativo|Add0~3\ & VCC))
-- \inst|alu1|unidad_aritmetica|resta|negativo|Add0~5\ = CARRY((\inst|alu1|unidad_aritmetica|resta|sR:2:sP|Suma~0_combout\ & !\inst|alu1|unidad_aritmetica|resta|negativo|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|resta|sR:2:sP|Suma~0_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|resta|negativo|Add0~3\,
	combout => \inst|alu1|unidad_aritmetica|resta|negativo|Add0~4_combout\,
	cout => \inst|alu1|unidad_aritmetica|resta|negativo|Add0~5\);

-- Location: LCCOMB_X23_Y15_N6
\inst|alu1|unidad_aritmetica|resta|negativo|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|resta|negativo|Add0~6_combout\ = (\inst|alu1|unidad_aritmetica|resta|sR:3:sP|Suma~0_combout\ & (!\inst|alu1|unidad_aritmetica|resta|negativo|Add0~5\)) # (!\inst|alu1|unidad_aritmetica|resta|sR:3:sP|Suma~0_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|resta|negativo|Add0~5\) # (GND)))
-- \inst|alu1|unidad_aritmetica|resta|negativo|Add0~7\ = CARRY((!\inst|alu1|unidad_aritmetica|resta|negativo|Add0~5\) # (!\inst|alu1|unidad_aritmetica|resta|sR:3:sP|Suma~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|resta|sR:3:sP|Suma~0_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|resta|negativo|Add0~5\,
	combout => \inst|alu1|unidad_aritmetica|resta|negativo|Add0~6_combout\,
	cout => \inst|alu1|unidad_aritmetica|resta|negativo|Add0~7\);

-- Location: LCCOMB_X23_Y15_N8
\inst|alu1|unidad_aritmetica|resta|negativo|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|resta|negativo|Add0~8_combout\ = (\inst|alu1|unidad_aritmetica|resta|sR:4:sP|Suma~0_combout\ & (\inst|alu1|unidad_aritmetica|resta|negativo|Add0~7\ $ (GND))) # (!\inst|alu1|unidad_aritmetica|resta|sR:4:sP|Suma~0_combout\ & 
-- (!\inst|alu1|unidad_aritmetica|resta|negativo|Add0~7\ & VCC))
-- \inst|alu1|unidad_aritmetica|resta|negativo|Add0~9\ = CARRY((\inst|alu1|unidad_aritmetica|resta|sR:4:sP|Suma~0_combout\ & !\inst|alu1|unidad_aritmetica|resta|negativo|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|unidad_aritmetica|resta|sR:4:sP|Suma~0_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|resta|negativo|Add0~7\,
	combout => \inst|alu1|unidad_aritmetica|resta|negativo|Add0~8_combout\,
	cout => \inst|alu1|unidad_aritmetica|resta|negativo|Add0~9\);

-- Location: LCCOMB_X23_Y15_N10
\inst|alu1|unidad_aritmetica|resta|negativo|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|resta|negativo|Add0~10_combout\ = (\inst|alu1|unidad_aritmetica|resta|sR:5:sP|Suma~0_combout\ & (!\inst|alu1|unidad_aritmetica|resta|negativo|Add0~9\)) # (!\inst|alu1|unidad_aritmetica|resta|sR:5:sP|Suma~0_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|resta|negativo|Add0~9\) # (GND)))
-- \inst|alu1|unidad_aritmetica|resta|negativo|Add0~11\ = CARRY((!\inst|alu1|unidad_aritmetica|resta|negativo|Add0~9\) # (!\inst|alu1|unidad_aritmetica|resta|sR:5:sP|Suma~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|resta|sR:5:sP|Suma~0_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|resta|negativo|Add0~9\,
	combout => \inst|alu1|unidad_aritmetica|resta|negativo|Add0~10_combout\,
	cout => \inst|alu1|unidad_aritmetica|resta|negativo|Add0~11\);

-- Location: LCCOMB_X23_Y15_N12
\inst|alu1|unidad_aritmetica|resta|negativo|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|resta|negativo|Add0~12_combout\ = (\inst|alu1|unidad_aritmetica|resta|sR:6:sP|Suma~0_combout\ & (\inst|alu1|unidad_aritmetica|resta|negativo|Add0~11\ $ (GND))) # (!\inst|alu1|unidad_aritmetica|resta|sR:6:sP|Suma~0_combout\ & 
-- (!\inst|alu1|unidad_aritmetica|resta|negativo|Add0~11\ & VCC))
-- \inst|alu1|unidad_aritmetica|resta|negativo|Add0~13\ = CARRY((\inst|alu1|unidad_aritmetica|resta|sR:6:sP|Suma~0_combout\ & !\inst|alu1|unidad_aritmetica|resta|negativo|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|resta|sR:6:sP|Suma~0_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|resta|negativo|Add0~11\,
	combout => \inst|alu1|unidad_aritmetica|resta|negativo|Add0~12_combout\,
	cout => \inst|alu1|unidad_aritmetica|resta|negativo|Add0~13\);

-- Location: LCCOMB_X23_Y15_N14
\inst|alu1|unidad_aritmetica|resta|negativo|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|resta|negativo|Add0~14_combout\ = (\inst|alu1|unidad_aritmetica|resta|sR:7:sP|Suma~0_combout\ & (!\inst|alu1|unidad_aritmetica|resta|negativo|Add0~13\)) # (!\inst|alu1|unidad_aritmetica|resta|sR:7:sP|Suma~0_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|resta|negativo|Add0~13\) # (GND)))
-- \inst|alu1|unidad_aritmetica|resta|negativo|Add0~15\ = CARRY((!\inst|alu1|unidad_aritmetica|resta|negativo|Add0~13\) # (!\inst|alu1|unidad_aritmetica|resta|sR:7:sP|Suma~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|resta|sR:7:sP|Suma~0_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|resta|negativo|Add0~13\,
	combout => \inst|alu1|unidad_aritmetica|resta|negativo|Add0~14_combout\,
	cout => \inst|alu1|unidad_aritmetica|resta|negativo|Add0~15\);

-- Location: LCCOMB_X23_Y15_N16
\inst|alu1|unidad_aritmetica|resta|negativo|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|resta|negativo|Add0~16_combout\ = (\inst|alu1|unidad_aritmetica|resta|sR:8:sP|Suma~0_combout\ & (\inst|alu1|unidad_aritmetica|resta|negativo|Add0~15\ $ (GND))) # (!\inst|alu1|unidad_aritmetica|resta|sR:8:sP|Suma~0_combout\ & 
-- (!\inst|alu1|unidad_aritmetica|resta|negativo|Add0~15\ & VCC))
-- \inst|alu1|unidad_aritmetica|resta|negativo|Add0~17\ = CARRY((\inst|alu1|unidad_aritmetica|resta|sR:8:sP|Suma~0_combout\ & !\inst|alu1|unidad_aritmetica|resta|negativo|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|unidad_aritmetica|resta|sR:8:sP|Suma~0_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|resta|negativo|Add0~15\,
	combout => \inst|alu1|unidad_aritmetica|resta|negativo|Add0~16_combout\,
	cout => \inst|alu1|unidad_aritmetica|resta|negativo|Add0~17\);

-- Location: LCCOMB_X22_Y15_N16
\inst|alu1|unidad_aritmetica|Mux7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|Mux7~2_combout\ = (\inst|alu1|unidad_aritmetica|Mux7~6_combout\ & ((\inst|alu1|unidad_aritmetica|resta|Sfaux~2_combout\ & (!\inst|alu1|unidad_aritmetica|resta|sR:8:sP|Suma~0_combout\)) # 
-- (!\inst|alu1|unidad_aritmetica|resta|Sfaux~2_combout\ & ((\inst|alu1|unidad_aritmetica|resta|negativo|Add0~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|Mux7~6_combout\,
	datab => \inst|alu1|unidad_aritmetica|resta|sR:8:sP|Suma~0_combout\,
	datac => \inst|alu1|unidad_aritmetica|resta|Sfaux~2_combout\,
	datad => \inst|alu1|unidad_aritmetica|resta|negativo|Add0~16_combout\,
	combout => \inst|alu1|unidad_aritmetica|Mux7~2_combout\);

-- Location: LCCOMB_X21_Y15_N30
\inst|alu1|unidad_aritmetica|Mux7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|Mux7~3_combout\ = (\inst|alu1|Mux16~0_combout\ & ((\inst|alu1|unidad_aritmetica|mult|multi7|sR:14:sP|Cout~0_combout\ & (\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~16_combout\)) # 
-- (!\inst|alu1|unidad_aritmetica|mult|multi7|sR:14:sP|Cout~0_combout\ & ((\inst|alu1|unidad_aritmetica|mult|multi7|sR:8:sP|Suma~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|multi7|sR:14:sP|Cout~0_combout\,
	datab => \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~16_combout\,
	datac => \inst|alu1|Mux16~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|mult|multi7|sR:8:sP|Suma~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|Mux7~3_combout\);

-- Location: LCCOMB_X18_Y15_N28
\inst|alu1|unidad_aritmetica|suma|sR:1:sP|Cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|sR:1:sP|Cout~1_combout\ = (\inst|REG_B\(15) & (\inst|REG_A\(15) & (!\inst|REG_A\(0) & !\inst|REG_B\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(15),
	datab => \inst|REG_A\(15),
	datac => \inst|REG_A\(0),
	datad => \inst|REG_B\(0),
	combout => \inst|alu1|unidad_aritmetica|suma|sR:1:sP|Cout~1_combout\);

-- Location: LCCOMB_X18_Y15_N12
\inst|alu1|unidad_aritmetica|suma|sR:1:sP|Cout2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|sR:1:sP|Cout2~0_combout\ = (\inst|alu1|unidad_aritmetica|suma|sR:1:sP|Cout~1_combout\ & (\inst|alu1|unidad_aritmetica|suma|Xop\(1) & (\inst|REG_B\(1) $ (\inst|REG_B\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|suma|sR:1:sP|Cout~1_combout\,
	datab => \inst|REG_B\(1),
	datac => \inst|REG_B\(15),
	datad => \inst|alu1|unidad_aritmetica|suma|Xop\(1),
	combout => \inst|alu1|unidad_aritmetica|suma|sR:1:sP|Cout2~0_combout\);

-- Location: LCCOMB_X18_Y15_N24
\inst|alu1|unidad_aritmetica|suma|sR:2:sP|Cout2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|sR:2:sP|Cout2~0_combout\ = (\inst|alu1|unidad_aritmetica|suma|sR:1:sP|Cout2~0_combout\ & (\inst|alu1|unidad_aritmetica|suma|Xop\(2) & (\inst|REG_B\(15) $ (\inst|REG_B\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(15),
	datab => \inst|alu1|unidad_aritmetica|suma|sR:1:sP|Cout2~0_combout\,
	datac => \inst|REG_B\(2),
	datad => \inst|alu1|unidad_aritmetica|suma|Xop\(2),
	combout => \inst|alu1|unidad_aritmetica|suma|sR:2:sP|Cout2~0_combout\);

-- Location: LCCOMB_X21_Y12_N22
\inst|alu1|unidad_aritmetica|suma|sR:3:sP|Cout2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|sR:3:sP|Cout2~0_combout\ = (\inst|alu1|unidad_aritmetica|suma|sR:2:sP|Cout2~0_combout\ & (\inst|alu1|unidad_aritmetica|suma|Xop\(3) & (\inst|REG_B\(15) $ (\inst|REG_B\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|suma|sR:2:sP|Cout2~0_combout\,
	datab => \inst|REG_B\(15),
	datac => \inst|alu1|unidad_aritmetica|suma|Xop\(3),
	datad => \inst|REG_B\(3),
	combout => \inst|alu1|unidad_aritmetica|suma|sR:3:sP|Cout2~0_combout\);

-- Location: LCCOMB_X21_Y12_N26
\inst|alu1|unidad_aritmetica|suma|sR:4:sP|Cout2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|sR:4:sP|Cout2~0_combout\ = (\inst|alu1|unidad_aritmetica|suma|Xop\(4) & (\inst|alu1|unidad_aritmetica|suma|sR:3:sP|Cout2~0_combout\ & (\inst|REG_B\(15) $ (\inst|REG_B\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|suma|Xop\(4),
	datab => \inst|REG_B\(15),
	datac => \inst|alu1|unidad_aritmetica|suma|sR:3:sP|Cout2~0_combout\,
	datad => \inst|REG_B\(4),
	combout => \inst|alu1|unidad_aritmetica|suma|sR:4:sP|Cout2~0_combout\);

-- Location: LCCOMB_X19_Y12_N26
\inst|alu1|unidad_aritmetica|suma|sR:5:sP|Cout2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|sR:5:sP|Cout2~0_combout\ = (\inst|alu1|unidad_aritmetica|suma|Xop\(5) & (\inst|alu1|unidad_aritmetica|suma|sR:4:sP|Cout2~0_combout\ & (\inst|REG_B\(5) $ (\inst|REG_B\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(5),
	datab => \inst|REG_B\(15),
	datac => \inst|alu1|unidad_aritmetica|suma|Xop\(5),
	datad => \inst|alu1|unidad_aritmetica|suma|sR:4:sP|Cout2~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|suma|sR:5:sP|Cout2~0_combout\);

-- Location: LCCOMB_X19_Y12_N30
\inst|alu1|unidad_aritmetica|suma|sR:6:sP|Cout2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|sR:6:sP|Cout2~0_combout\ = (\inst|alu1|unidad_aritmetica|suma|sR:5:sP|Cout2~0_combout\ & (\inst|alu1|unidad_aritmetica|suma|Xop\(6) & (\inst|REG_B\(6) $ (\inst|REG_B\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(6),
	datab => \inst|REG_B\(15),
	datac => \inst|alu1|unidad_aritmetica|suma|sR:5:sP|Cout2~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|suma|Xop\(6),
	combout => \inst|alu1|unidad_aritmetica|suma|sR:6:sP|Cout2~0_combout\);

-- Location: LCCOMB_X22_Y12_N30
\inst|alu1|unidad_aritmetica|suma|sR:7:sP|Cout2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|sR:7:sP|Cout2~0_combout\ = (\inst|alu1|unidad_aritmetica|suma|Xop\(7) & (\inst|alu1|unidad_aritmetica|suma|sR:6:sP|Cout2~0_combout\ & (\inst|REG_B\(7) $ (\inst|REG_B\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(7),
	datab => \inst|alu1|unidad_aritmetica|suma|Xop\(7),
	datac => \inst|alu1|unidad_aritmetica|suma|sR:6:sP|Cout2~0_combout\,
	datad => \inst|REG_B\(15),
	combout => \inst|alu1|unidad_aritmetica|suma|sR:7:sP|Cout2~0_combout\);

-- Location: LCCOMB_X18_Y15_N0
\inst|alu1|unidad_aritmetica|suma|s0|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|s0|Cout~0_combout\ = (\inst|REG_B\(0) & (((\inst|REG_A\(15)) # (\inst|REG_A\(0))))) # (!\inst|REG_B\(0) & ((\inst|REG_B\(15)) # ((\inst|REG_A\(15) & !\inst|REG_A\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(15),
	datab => \inst|REG_A\(15),
	datac => \inst|REG_B\(0),
	datad => \inst|REG_A\(0),
	combout => \inst|alu1|unidad_aritmetica|suma|s0|Cout~0_combout\);

-- Location: LCCOMB_X18_Y15_N20
\inst|alu1|unidad_aritmetica|suma|sR:1:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|sR:1:sP|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|suma|s0|Cout~0_combout\ & ((\inst|alu1|unidad_aritmetica|suma|Xop\(1)) # (\inst|REG_B\(15) $ (\inst|REG_B\(1))))) # 
-- (!\inst|alu1|unidad_aritmetica|suma|s0|Cout~0_combout\ & (\inst|alu1|unidad_aritmetica|suma|Xop\(1) & (\inst|REG_B\(15) $ (\inst|REG_B\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(15),
	datab => \inst|REG_B\(1),
	datac => \inst|alu1|unidad_aritmetica|suma|s0|Cout~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|suma|Xop\(1),
	combout => \inst|alu1|unidad_aritmetica|suma|sR:1:sP|Cout~0_combout\);

-- Location: LCCOMB_X18_Y15_N22
\inst|alu1|unidad_aritmetica|suma|sR:1:sP|Cout~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|sR:1:sP|Cout~2_combout\ = (\inst|alu1|unidad_aritmetica|suma|sR:1:sP|Cout~1_combout\) # (\inst|alu1|unidad_aritmetica|suma|sR:1:sP|Cout~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|alu1|unidad_aritmetica|suma|sR:1:sP|Cout~1_combout\,
	datad => \inst|alu1|unidad_aritmetica|suma|sR:1:sP|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|suma|sR:1:sP|Cout~2_combout\);

-- Location: LCCOMB_X18_Y15_N4
\inst|alu1|unidad_aritmetica|suma|sR:2:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|sR:2:sP|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|suma|Xop\(2) & ((\inst|alu1|unidad_aritmetica|suma|sR:1:sP|Cout~2_combout\) # (\inst|REG_B\(2) $ (\inst|REG_B\(15))))) # (!\inst|alu1|unidad_aritmetica|suma|Xop\(2) 
-- & (\inst|alu1|unidad_aritmetica|suma|sR:1:sP|Cout~2_combout\ & (\inst|REG_B\(2) $ (\inst|REG_B\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|suma|Xop\(2),
	datab => \inst|REG_B\(2),
	datac => \inst|alu1|unidad_aritmetica|suma|sR:1:sP|Cout~2_combout\,
	datad => \inst|REG_B\(15),
	combout => \inst|alu1|unidad_aritmetica|suma|sR:2:sP|Cout~0_combout\);

-- Location: LCCOMB_X18_Y15_N26
\inst|alu1|unidad_aritmetica|suma|sR:2:sP|Cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|sR:2:sP|Cout~1_combout\ = (\inst|alu1|unidad_aritmetica|suma|sR:2:sP|Cout~0_combout\) # ((\inst|alu1|unidad_aritmetica|suma|sR:1:sP|Cout~1_combout\ & (\inst|alu1|unidad_aritmetica|suma|Yop~1_combout\ & 
-- \inst|alu1|unidad_aritmetica|suma|Xop\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|suma|sR:1:sP|Cout~1_combout\,
	datab => \inst|alu1|unidad_aritmetica|suma|Yop~1_combout\,
	datac => \inst|alu1|unidad_aritmetica|suma|sR:2:sP|Cout~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|suma|Xop\(1),
	combout => \inst|alu1|unidad_aritmetica|suma|sR:2:sP|Cout~1_combout\);

-- Location: LCCOMB_X21_Y12_N28
\inst|alu1|unidad_aritmetica|suma|sR:3:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|sR:3:sP|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|suma|Xop\(3) & ((\inst|alu1|unidad_aritmetica|suma|sR:2:sP|Cout~1_combout\) # (\inst|REG_B\(3) $ (\inst|REG_B\(15))))) # (!\inst|alu1|unidad_aritmetica|suma|Xop\(3) 
-- & (\inst|alu1|unidad_aritmetica|suma|sR:2:sP|Cout~1_combout\ & (\inst|REG_B\(3) $ (\inst|REG_B\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|suma|Xop\(3),
	datab => \inst|REG_B\(3),
	datac => \inst|REG_B\(15),
	datad => \inst|alu1|unidad_aritmetica|suma|sR:2:sP|Cout~1_combout\,
	combout => \inst|alu1|unidad_aritmetica|suma|sR:3:sP|Cout~0_combout\);

-- Location: LCCOMB_X21_Y12_N18
\inst|alu1|unidad_aritmetica|suma|sR:3:sP|Cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|sR:3:sP|Cout~1_combout\ = (\inst|alu1|unidad_aritmetica|suma|sR:2:sP|Cout2~0_combout\) # (\inst|alu1|unidad_aritmetica|suma|sR:3:sP|Cout~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|alu1|unidad_aritmetica|suma|sR:2:sP|Cout2~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|suma|sR:3:sP|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|suma|sR:3:sP|Cout~1_combout\);

-- Location: LCCOMB_X21_Y12_N16
\inst|alu1|unidad_aritmetica|suma|sR:4:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|sR:4:sP|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|suma|Xop\(4) & ((\inst|alu1|unidad_aritmetica|suma|sR:3:sP|Cout~1_combout\) # (\inst|REG_B\(4) $ (\inst|REG_B\(15))))) # (!\inst|alu1|unidad_aritmetica|suma|Xop\(4) 
-- & (\inst|alu1|unidad_aritmetica|suma|sR:3:sP|Cout~1_combout\ & (\inst|REG_B\(4) $ (\inst|REG_B\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|suma|Xop\(4),
	datab => \inst|REG_B\(4),
	datac => \inst|REG_B\(15),
	datad => \inst|alu1|unidad_aritmetica|suma|sR:3:sP|Cout~1_combout\,
	combout => \inst|alu1|unidad_aritmetica|suma|sR:4:sP|Cout~0_combout\);

-- Location: LCCOMB_X21_Y12_N8
\inst|alu1|unidad_aritmetica|suma|sR:4:sP|Cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|sR:4:sP|Cout~1_combout\ = (\inst|alu1|unidad_aritmetica|suma|sR:3:sP|Cout2~0_combout\) # (\inst|alu1|unidad_aritmetica|suma|sR:4:sP|Cout~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|alu1|unidad_aritmetica|suma|sR:3:sP|Cout2~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|suma|sR:4:sP|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|suma|sR:4:sP|Cout~1_combout\);

-- Location: LCCOMB_X19_Y12_N8
\inst|alu1|unidad_aritmetica|suma|sR:5:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|sR:5:sP|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|suma|Xop\(5) & ((\inst|alu1|unidad_aritmetica|suma|sR:4:sP|Cout~1_combout\) # (\inst|REG_B\(5) $ (\inst|REG_B\(15))))) # (!\inst|alu1|unidad_aritmetica|suma|Xop\(5) 
-- & (\inst|alu1|unidad_aritmetica|suma|sR:4:sP|Cout~1_combout\ & (\inst|REG_B\(5) $ (\inst|REG_B\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(5),
	datab => \inst|REG_B\(15),
	datac => \inst|alu1|unidad_aritmetica|suma|Xop\(5),
	datad => \inst|alu1|unidad_aritmetica|suma|sR:4:sP|Cout~1_combout\,
	combout => \inst|alu1|unidad_aritmetica|suma|sR:5:sP|Cout~0_combout\);

-- Location: LCCOMB_X19_Y12_N6
\inst|alu1|unidad_aritmetica|suma|sR:5:sP|Cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|sR:5:sP|Cout~1_combout\ = (\inst|alu1|unidad_aritmetica|suma|sR:5:sP|Cout~0_combout\) # (\inst|alu1|unidad_aritmetica|suma|sR:4:sP|Cout2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|alu1|unidad_aritmetica|suma|sR:5:sP|Cout~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|suma|sR:4:sP|Cout2~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|suma|sR:5:sP|Cout~1_combout\);

-- Location: LCCOMB_X19_Y12_N20
\inst|alu1|unidad_aritmetica|suma|sR:6:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|sR:6:sP|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|suma|Xop\(6) & ((\inst|alu1|unidad_aritmetica|suma|sR:5:sP|Cout~1_combout\) # (\inst|REG_B\(6) $ (\inst|REG_B\(15))))) # (!\inst|alu1|unidad_aritmetica|suma|Xop\(6) 
-- & (\inst|alu1|unidad_aritmetica|suma|sR:5:sP|Cout~1_combout\ & (\inst|REG_B\(6) $ (\inst|REG_B\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(6),
	datab => \inst|alu1|unidad_aritmetica|suma|Xop\(6),
	datac => \inst|REG_B\(15),
	datad => \inst|alu1|unidad_aritmetica|suma|sR:5:sP|Cout~1_combout\,
	combout => \inst|alu1|unidad_aritmetica|suma|sR:6:sP|Cout~0_combout\);

-- Location: LCCOMB_X19_Y12_N16
\inst|alu1|unidad_aritmetica|suma|sR:6:sP|Cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|sR:6:sP|Cout~1_combout\ = (\inst|alu1|unidad_aritmetica|suma|sR:5:sP|Cout2~0_combout\) # (\inst|alu1|unidad_aritmetica|suma|sR:6:sP|Cout~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|alu1|unidad_aritmetica|suma|sR:5:sP|Cout2~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|suma|sR:6:sP|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|suma|sR:6:sP|Cout~1_combout\);

-- Location: LCCOMB_X22_Y12_N18
\inst|alu1|unidad_aritmetica|suma|sR:7:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|sR:7:sP|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|suma|Xop\(7) & ((\inst|alu1|unidad_aritmetica|suma|sR:6:sP|Cout~1_combout\) # (\inst|REG_B\(7) $ (\inst|REG_B\(15))))) # (!\inst|alu1|unidad_aritmetica|suma|Xop\(7) 
-- & (\inst|alu1|unidad_aritmetica|suma|sR:6:sP|Cout~1_combout\ & (\inst|REG_B\(7) $ (\inst|REG_B\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(7),
	datab => \inst|alu1|unidad_aritmetica|suma|Xop\(7),
	datac => \inst|REG_B\(15),
	datad => \inst|alu1|unidad_aritmetica|suma|sR:6:sP|Cout~1_combout\,
	combout => \inst|alu1|unidad_aritmetica|suma|sR:7:sP|Cout~0_combout\);

-- Location: LCCOMB_X22_Y12_N12
\inst|alu1|unidad_aritmetica|suma|sR:7:sP|Cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|sR:7:sP|Cout~1_combout\ = (\inst|alu1|unidad_aritmetica|suma|sR:6:sP|Cout2~0_combout\) # (\inst|alu1|unidad_aritmetica|suma|sR:7:sP|Cout~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|alu1|unidad_aritmetica|suma|sR:6:sP|Cout2~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|suma|sR:7:sP|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|suma|sR:7:sP|Cout~1_combout\);

-- Location: LCCOMB_X21_Y12_N4
\inst|alu1|unidad_aritmetica|suma|sR:8:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|sR:8:sP|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|suma|sR:7:sP|Cout2~0_combout\ $ (\inst|alu1|unidad_aritmetica|suma|Yop~0_combout\ $ (\inst|alu1|unidad_aritmetica|suma|sR:7:sP|Cout~1_combout\ $ 
-- (\inst|alu1|unidad_aritmetica|suma|Xop\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|suma|sR:7:sP|Cout2~0_combout\,
	datab => \inst|alu1|unidad_aritmetica|suma|Yop~0_combout\,
	datac => \inst|alu1|unidad_aritmetica|suma|sR:7:sP|Cout~1_combout\,
	datad => \inst|alu1|unidad_aritmetica|suma|Xop\(8),
	combout => \inst|alu1|unidad_aritmetica|suma|sR:8:sP|Suma~0_combout\);

-- Location: LCCOMB_X22_Y12_N4
\inst|alu1|unidad_aritmetica|suma|sR:7:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|sR:7:sP|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|suma|sR:6:sP|Cout~1_combout\ $ (\inst|alu1|unidad_aritmetica|suma|Xop\(7) $ (\inst|alu1|unidad_aritmetica|suma|sR:6:sP|Cout2~0_combout\ $ 
-- (\inst|alu1|unidad_aritmetica|suma|Yop~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|suma|sR:6:sP|Cout~1_combout\,
	datab => \inst|alu1|unidad_aritmetica|suma|Xop\(7),
	datac => \inst|alu1|unidad_aritmetica|suma|sR:6:sP|Cout2~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|suma|Yop~7_combout\,
	combout => \inst|alu1|unidad_aritmetica|suma|sR:7:sP|Suma~0_combout\);

-- Location: LCCOMB_X19_Y12_N24
\inst|alu1|unidad_aritmetica|suma|sR:6:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|sR:6:sP|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|suma|sR:5:sP|Cout~1_combout\ $ (\inst|alu1|unidad_aritmetica|suma|Xop\(6) $ (\inst|alu1|unidad_aritmetica|suma|sR:5:sP|Cout2~0_combout\ $ 
-- (\inst|alu1|unidad_aritmetica|suma|Yop~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|suma|sR:5:sP|Cout~1_combout\,
	datab => \inst|alu1|unidad_aritmetica|suma|Xop\(6),
	datac => \inst|alu1|unidad_aritmetica|suma|sR:5:sP|Cout2~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|suma|Yop~6_combout\,
	combout => \inst|alu1|unidad_aritmetica|suma|sR:6:sP|Suma~0_combout\);

-- Location: LCCOMB_X19_Y12_N14
\inst|alu1|unidad_aritmetica|suma|sR:5:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|sR:5:sP|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|suma|Yop~5_combout\ $ (\inst|alu1|unidad_aritmetica|suma|sR:4:sP|Cout2~0_combout\ $ (\inst|alu1|unidad_aritmetica|suma|Xop\(5) $ 
-- (\inst|alu1|unidad_aritmetica|suma|sR:4:sP|Cout~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|suma|Yop~5_combout\,
	datab => \inst|alu1|unidad_aritmetica|suma|sR:4:sP|Cout2~0_combout\,
	datac => \inst|alu1|unidad_aritmetica|suma|Xop\(5),
	datad => \inst|alu1|unidad_aritmetica|suma|sR:4:sP|Cout~1_combout\,
	combout => \inst|alu1|unidad_aritmetica|suma|sR:5:sP|Suma~0_combout\);

-- Location: LCCOMB_X21_Y12_N6
\inst|alu1|unidad_aritmetica|suma|sR:4:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|sR:4:sP|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|suma|Yop~4_combout\ $ (\inst|alu1|unidad_aritmetica|suma|sR:3:sP|Cout2~0_combout\ $ (\inst|alu1|unidad_aritmetica|suma|Xop\(4) $ 
-- (\inst|alu1|unidad_aritmetica|suma|sR:3:sP|Cout~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|suma|Yop~4_combout\,
	datab => \inst|alu1|unidad_aritmetica|suma|sR:3:sP|Cout2~0_combout\,
	datac => \inst|alu1|unidad_aritmetica|suma|Xop\(4),
	datad => \inst|alu1|unidad_aritmetica|suma|sR:3:sP|Cout~1_combout\,
	combout => \inst|alu1|unidad_aritmetica|suma|sR:4:sP|Suma~0_combout\);

-- Location: LCCOMB_X18_Y15_N14
\inst|alu1|unidad_aritmetica|suma|sR:3:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|sR:3:sP|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|suma|sR:2:sP|Cout~1_combout\ $ (\inst|alu1|unidad_aritmetica|suma|sR:2:sP|Cout2~0_combout\ $ (\inst|alu1|unidad_aritmetica|suma|Xop\(3) $ 
-- (\inst|alu1|unidad_aritmetica|suma|Yop~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|suma|sR:2:sP|Cout~1_combout\,
	datab => \inst|alu1|unidad_aritmetica|suma|sR:2:sP|Cout2~0_combout\,
	datac => \inst|alu1|unidad_aritmetica|suma|Xop\(3),
	datad => \inst|alu1|unidad_aritmetica|suma|Yop~3_combout\,
	combout => \inst|alu1|unidad_aritmetica|suma|sR:3:sP|Suma~0_combout\);

-- Location: LCCOMB_X18_Y15_N8
\inst|alu1|unidad_aritmetica|suma|sR:2:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|sR:2:sP|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|suma|sR:1:sP|Cout~2_combout\ $ (\inst|alu1|unidad_aritmetica|suma|Yop~2_combout\ $ (\inst|alu1|unidad_aritmetica|suma|sR:1:sP|Cout2~0_combout\ $ 
-- (\inst|alu1|unidad_aritmetica|suma|Xop\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|suma|sR:1:sP|Cout~2_combout\,
	datab => \inst|alu1|unidad_aritmetica|suma|Yop~2_combout\,
	datac => \inst|alu1|unidad_aritmetica|suma|sR:1:sP|Cout2~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|suma|Xop\(2),
	combout => \inst|alu1|unidad_aritmetica|suma|sR:2:sP|Suma~0_combout\);

-- Location: LCCOMB_X18_Y15_N6
\inst|alu1|unidad_aritmetica|suma|sR:1:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|sR:1:sP|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|suma|sR:1:sP|Cout~1_combout\ $ (\inst|alu1|unidad_aritmetica|suma|Yop~1_combout\ $ (\inst|alu1|unidad_aritmetica|suma|s0|Cout~0_combout\ $ 
-- (\inst|alu1|unidad_aritmetica|suma|Xop\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|suma|sR:1:sP|Cout~1_combout\,
	datab => \inst|alu1|unidad_aritmetica|suma|Yop~1_combout\,
	datac => \inst|alu1|unidad_aritmetica|suma|s0|Cout~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|suma|Xop\(1),
	combout => \inst|alu1|unidad_aritmetica|suma|sR:1:sP|Suma~0_combout\);

-- Location: LCCOMB_X22_Y11_N2
\inst|alu1|unidad_aritmetica|suma|negativo|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|negativo|Add0~0_combout\ = \inst|REG_B\(0) $ (\inst|REG_A\(0) $ (GND))
-- \inst|alu1|unidad_aritmetica|suma|negativo|Add0~1\ = CARRY(\inst|REG_B\(0) $ (!\inst|REG_A\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(0),
	datab => \inst|REG_A\(0),
	datad => VCC,
	combout => \inst|alu1|unidad_aritmetica|suma|negativo|Add0~0_combout\,
	cout => \inst|alu1|unidad_aritmetica|suma|negativo|Add0~1\);

-- Location: LCCOMB_X22_Y11_N4
\inst|alu1|unidad_aritmetica|suma|negativo|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|negativo|Add0~2_combout\ = (\inst|alu1|unidad_aritmetica|suma|sR:1:sP|Suma~0_combout\ & ((\inst|alu1|unidad_aritmetica|suma|negativo|Add0~1\) # (GND))) # (!\inst|alu1|unidad_aritmetica|suma|sR:1:sP|Suma~0_combout\ & 
-- (!\inst|alu1|unidad_aritmetica|suma|negativo|Add0~1\))
-- \inst|alu1|unidad_aritmetica|suma|negativo|Add0~3\ = CARRY((\inst|alu1|unidad_aritmetica|suma|sR:1:sP|Suma~0_combout\) # (!\inst|alu1|unidad_aritmetica|suma|negativo|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|suma|sR:1:sP|Suma~0_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|suma|negativo|Add0~1\,
	combout => \inst|alu1|unidad_aritmetica|suma|negativo|Add0~2_combout\,
	cout => \inst|alu1|unidad_aritmetica|suma|negativo|Add0~3\);

-- Location: LCCOMB_X22_Y11_N6
\inst|alu1|unidad_aritmetica|suma|negativo|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|negativo|Add0~4_combout\ = (\inst|alu1|unidad_aritmetica|suma|sR:2:sP|Suma~0_combout\ & (!\inst|alu1|unidad_aritmetica|suma|negativo|Add0~3\ & VCC)) # (!\inst|alu1|unidad_aritmetica|suma|sR:2:sP|Suma~0_combout\ & 
-- (\inst|alu1|unidad_aritmetica|suma|negativo|Add0~3\ $ (GND)))
-- \inst|alu1|unidad_aritmetica|suma|negativo|Add0~5\ = CARRY((!\inst|alu1|unidad_aritmetica|suma|sR:2:sP|Suma~0_combout\ & !\inst|alu1|unidad_aritmetica|suma|negativo|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|suma|sR:2:sP|Suma~0_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|suma|negativo|Add0~3\,
	combout => \inst|alu1|unidad_aritmetica|suma|negativo|Add0~4_combout\,
	cout => \inst|alu1|unidad_aritmetica|suma|negativo|Add0~5\);

-- Location: LCCOMB_X22_Y11_N8
\inst|alu1|unidad_aritmetica|suma|negativo|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|negativo|Add0~6_combout\ = (\inst|alu1|unidad_aritmetica|suma|sR:3:sP|Suma~0_combout\ & ((\inst|alu1|unidad_aritmetica|suma|negativo|Add0~5\) # (GND))) # (!\inst|alu1|unidad_aritmetica|suma|sR:3:sP|Suma~0_combout\ & 
-- (!\inst|alu1|unidad_aritmetica|suma|negativo|Add0~5\))
-- \inst|alu1|unidad_aritmetica|suma|negativo|Add0~7\ = CARRY((\inst|alu1|unidad_aritmetica|suma|sR:3:sP|Suma~0_combout\) # (!\inst|alu1|unidad_aritmetica|suma|negativo|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|unidad_aritmetica|suma|sR:3:sP|Suma~0_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|suma|negativo|Add0~5\,
	combout => \inst|alu1|unidad_aritmetica|suma|negativo|Add0~6_combout\,
	cout => \inst|alu1|unidad_aritmetica|suma|negativo|Add0~7\);

-- Location: LCCOMB_X22_Y11_N10
\inst|alu1|unidad_aritmetica|suma|negativo|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|negativo|Add0~8_combout\ = (\inst|alu1|unidad_aritmetica|suma|sR:4:sP|Suma~0_combout\ & (!\inst|alu1|unidad_aritmetica|suma|negativo|Add0~7\ & VCC)) # (!\inst|alu1|unidad_aritmetica|suma|sR:4:sP|Suma~0_combout\ & 
-- (\inst|alu1|unidad_aritmetica|suma|negativo|Add0~7\ $ (GND)))
-- \inst|alu1|unidad_aritmetica|suma|negativo|Add0~9\ = CARRY((!\inst|alu1|unidad_aritmetica|suma|sR:4:sP|Suma~0_combout\ & !\inst|alu1|unidad_aritmetica|suma|negativo|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|unidad_aritmetica|suma|sR:4:sP|Suma~0_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|suma|negativo|Add0~7\,
	combout => \inst|alu1|unidad_aritmetica|suma|negativo|Add0~8_combout\,
	cout => \inst|alu1|unidad_aritmetica|suma|negativo|Add0~9\);

-- Location: LCCOMB_X22_Y11_N12
\inst|alu1|unidad_aritmetica|suma|negativo|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|negativo|Add0~10_combout\ = (\inst|alu1|unidad_aritmetica|suma|sR:5:sP|Suma~0_combout\ & ((\inst|alu1|unidad_aritmetica|suma|negativo|Add0~9\) # (GND))) # (!\inst|alu1|unidad_aritmetica|suma|sR:5:sP|Suma~0_combout\ & 
-- (!\inst|alu1|unidad_aritmetica|suma|negativo|Add0~9\))
-- \inst|alu1|unidad_aritmetica|suma|negativo|Add0~11\ = CARRY((\inst|alu1|unidad_aritmetica|suma|sR:5:sP|Suma~0_combout\) # (!\inst|alu1|unidad_aritmetica|suma|negativo|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|suma|sR:5:sP|Suma~0_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|suma|negativo|Add0~9\,
	combout => \inst|alu1|unidad_aritmetica|suma|negativo|Add0~10_combout\,
	cout => \inst|alu1|unidad_aritmetica|suma|negativo|Add0~11\);

-- Location: LCCOMB_X22_Y11_N14
\inst|alu1|unidad_aritmetica|suma|negativo|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|negativo|Add0~12_combout\ = (\inst|alu1|unidad_aritmetica|suma|sR:6:sP|Suma~0_combout\ & (!\inst|alu1|unidad_aritmetica|suma|negativo|Add0~11\ & VCC)) # (!\inst|alu1|unidad_aritmetica|suma|sR:6:sP|Suma~0_combout\ & 
-- (\inst|alu1|unidad_aritmetica|suma|negativo|Add0~11\ $ (GND)))
-- \inst|alu1|unidad_aritmetica|suma|negativo|Add0~13\ = CARRY((!\inst|alu1|unidad_aritmetica|suma|sR:6:sP|Suma~0_combout\ & !\inst|alu1|unidad_aritmetica|suma|negativo|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|suma|sR:6:sP|Suma~0_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|suma|negativo|Add0~11\,
	combout => \inst|alu1|unidad_aritmetica|suma|negativo|Add0~12_combout\,
	cout => \inst|alu1|unidad_aritmetica|suma|negativo|Add0~13\);

-- Location: LCCOMB_X22_Y11_N16
\inst|alu1|unidad_aritmetica|suma|negativo|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|negativo|Add0~14_combout\ = (\inst|alu1|unidad_aritmetica|suma|sR:7:sP|Suma~0_combout\ & ((\inst|alu1|unidad_aritmetica|suma|negativo|Add0~13\) # (GND))) # (!\inst|alu1|unidad_aritmetica|suma|sR:7:sP|Suma~0_combout\ & 
-- (!\inst|alu1|unidad_aritmetica|suma|negativo|Add0~13\))
-- \inst|alu1|unidad_aritmetica|suma|negativo|Add0~15\ = CARRY((\inst|alu1|unidad_aritmetica|suma|sR:7:sP|Suma~0_combout\) # (!\inst|alu1|unidad_aritmetica|suma|negativo|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|unidad_aritmetica|suma|sR:7:sP|Suma~0_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|suma|negativo|Add0~13\,
	combout => \inst|alu1|unidad_aritmetica|suma|negativo|Add0~14_combout\,
	cout => \inst|alu1|unidad_aritmetica|suma|negativo|Add0~15\);

-- Location: LCCOMB_X22_Y11_N18
\inst|alu1|unidad_aritmetica|suma|negativo|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|negativo|Add0~16_combout\ = (\inst|alu1|unidad_aritmetica|suma|sR:8:sP|Suma~0_combout\ & (!\inst|alu1|unidad_aritmetica|suma|negativo|Add0~15\ & VCC)) # (!\inst|alu1|unidad_aritmetica|suma|sR:8:sP|Suma~0_combout\ & 
-- (\inst|alu1|unidad_aritmetica|suma|negativo|Add0~15\ $ (GND)))
-- \inst|alu1|unidad_aritmetica|suma|negativo|Add0~17\ = CARRY((!\inst|alu1|unidad_aritmetica|suma|sR:8:sP|Suma~0_combout\ & !\inst|alu1|unidad_aritmetica|suma|negativo|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|suma|sR:8:sP|Suma~0_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|suma|negativo|Add0~15\,
	combout => \inst|alu1|unidad_aritmetica|suma|negativo|Add0~16_combout\,
	cout => \inst|alu1|unidad_aritmetica|suma|negativo|Add0~17\);

-- Location: LCCOMB_X21_Y15_N8
\inst|alu1|unidad_aritmetica|Mux7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|Mux7~4_combout\ = (!\inst|alu1|Mux16~0_combout\ & ((\inst|alu1|unidad_aritmetica|suma|Sfaux~1_combout\ & ((\inst|alu1|unidad_aritmetica|suma|negativo|Add0~16_combout\))) # (!\inst|alu1|unidad_aritmetica|suma|Sfaux~1_combout\ & 
-- (\inst|alu1|unidad_aritmetica|suma|sR:8:sP|Suma~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|suma|sR:8:sP|Suma~0_combout\,
	datab => \inst|alu1|Mux16~0_combout\,
	datac => \inst|alu1|unidad_aritmetica|suma|Sfaux~1_combout\,
	datad => \inst|alu1|unidad_aritmetica|suma|negativo|Add0~16_combout\,
	combout => \inst|alu1|unidad_aritmetica|Mux7~4_combout\);

-- Location: LCCOMB_X21_Y15_N22
\inst|alu1|unidad_aritmetica|Mux7~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|Mux7~5_combout\ = (\inst|alu1|unidad_aritmetica|Mux7~2_combout\) # ((!\inst|alu1|Mux17~0_combout\ & ((\inst|alu1|unidad_aritmetica|Mux7~3_combout\) # (\inst|alu1|unidad_aritmetica|Mux7~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux17~0_combout\,
	datab => \inst|alu1|unidad_aritmetica|Mux7~2_combout\,
	datac => \inst|alu1|unidad_aritmetica|Mux7~3_combout\,
	datad => \inst|alu1|unidad_aritmetica|Mux7~4_combout\,
	combout => \inst|alu1|unidad_aritmetica|Mux7~5_combout\);

-- Location: LCCOMB_X18_Y13_N28
\inst|alu1|Mux7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux7~3_combout\ = (\inst|OP\(0) & (\inst|OP\(1) & ((\inst|alu1|unidad_aritmetica|Mux7~5_combout\)))) # (!\inst|OP\(0) & (!\inst|OP\(1) & (\inst|alu1|unidad_logica|Mux7~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|OP\(0),
	datab => \inst|OP\(1),
	datac => \inst|alu1|unidad_logica|Mux7~1_combout\,
	datad => \inst|alu1|unidad_aritmetica|Mux7~5_combout\,
	combout => \inst|alu1|Mux7~3_combout\);

-- Location: LCCOMB_X18_Y13_N30
\inst|alu1|Mux7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux7~4_combout\ = (\inst|alu1|Mux7~3_combout\) # ((\inst|REG_A\(0) & (\inst|OP\(1) $ (\inst|OP\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(0),
	datab => \inst|OP\(1),
	datac => \inst|OP\(0),
	datad => \inst|alu1|Mux7~3_combout\,
	combout => \inst|alu1|Mux7~4_combout\);

-- Location: LCCOMB_X19_Y16_N0
\inst|alu1|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux7~0_combout\ = (\inst|alu1|unidad_logica|Mux7~1_combout\ & (!\inst|OP\(3) & ((\inst|OP\(0)) # (\inst|OP\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_logica|Mux7~1_combout\,
	datab => \inst|OP\(0),
	datac => \inst|OP\(3),
	datad => \inst|OP\(1),
	combout => \inst|alu1|Mux7~0_combout\);

-- Location: LCCOMB_X19_Y16_N4
\inst|alu1|Mux7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux7~2_combout\ = (\inst|alu1|Mux7~0_combout\) # ((!\inst|alu1|Mux7~1_combout\ & (\inst|OP\(3) & \inst|alu1|unidad_aritmetica|Mux7~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux7~0_combout\,
	datab => \inst|alu1|Mux7~1_combout\,
	datac => \inst|OP\(3),
	datad => \inst|alu1|unidad_aritmetica|Mux7~5_combout\,
	combout => \inst|alu1|Mux7~2_combout\);

-- Location: LCCOMB_X18_Y13_N16
\inst|alu1|Mux7~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux7~5_combout\ = (\inst|OP\(2) & ((\inst|OP\(3)) # ((\inst|alu1|Mux7~4_combout\)))) # (!\inst|OP\(2) & (((\inst|alu1|Mux7~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|OP\(3),
	datab => \inst|OP\(2),
	datac => \inst|alu1|Mux7~4_combout\,
	datad => \inst|alu1|Mux7~2_combout\,
	combout => \inst|alu1|Mux7~5_combout\);

-- Location: LCCOMB_X13_Y17_N22
\inst|reggy~175\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~175_combout\ = (\inst|Equal1~0_combout\ & (((\inst|alu1|Mux7~5_combout\)))) # (!\inst|Equal1~0_combout\ & ((\inst|reggy~174_combout\) # ((\inst|OP[3]~2_combout\ & \inst|alu1|Mux7~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|OP[3]~2_combout\,
	datab => \inst|Equal1~0_combout\,
	datac => \inst|reggy~174_combout\,
	datad => \inst|alu1|Mux7~5_combout\,
	combout => \inst|reggy~175_combout\);

-- Location: FF_X12_Y17_N5
\inst|reggy~60\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~175_combout\,
	sload => VCC,
	ena => \inst|reggy~180_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy~60_q\);

-- Location: LCCOMB_X12_Y17_N14
\inst|reggy~156\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~156_combout\ = (\inst|reggy~154_combout\ & (((\inst|reggy~155_combout\)))) # (!\inst|reggy~154_combout\ & ((\inst|reggy~155_combout\ & (\inst|reggy~44_q\)) # (!\inst|reggy~155_combout\ & ((\inst|reggy~28_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy~154_combout\,
	datab => \inst|reggy~44_q\,
	datac => \inst|reggy~28_q\,
	datad => \inst|reggy~155_combout\,
	combout => \inst|reggy~156_combout\);

-- Location: LCCOMB_X17_Y17_N30
\inst|reggy~157\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~157_combout\ = (\inst|reggy~154_combout\ & ((\inst|reggy~156_combout\ & ((\inst|reggy~76_q\))) # (!\inst|reggy~156_combout\ & (\inst|reggy~60_q\)))) # (!\inst|reggy~154_combout\ & (((\inst|reggy~156_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy~154_combout\,
	datab => \inst|reggy~60_q\,
	datac => \inst|reggy~76_q\,
	datad => \inst|reggy~156_combout\,
	combout => \inst|reggy~157_combout\);

-- Location: FF_X17_Y17_N31
\inst|REG_A[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|reggy~157_combout\,
	ena => \inst|OP[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|REG_A\(8));

-- Location: LCCOMB_X23_Y14_N18
\inst|alu1|unidad_logica|aux[9]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|aux[9]~18_combout\ = (\inst|REG_A\(9) & ((\inst|alu1|unidad_logica|aux[8]~17\) # (GND))) # (!\inst|REG_A\(9) & (!\inst|alu1|unidad_logica|aux[8]~17\))
-- \inst|alu1|unidad_logica|aux[9]~19\ = CARRY((\inst|REG_A\(9)) # (!\inst|alu1|unidad_logica|aux[8]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|REG_A\(9),
	datad => VCC,
	cin => \inst|alu1|unidad_logica|aux[8]~17\,
	combout => \inst|alu1|unidad_logica|aux[9]~18_combout\,
	cout => \inst|alu1|unidad_logica|aux[9]~19\);

-- Location: LCCOMB_X23_Y12_N26
\inst|reggy~344\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~344_combout\ = (\inst|reggy~343_combout\ & (((\inst|alu1|unidad_logica|aux[9]~18_combout\) # (!\inst|alu1|Mux16~0_combout\)))) # (!\inst|reggy~343_combout\ & (!\inst|REG_A\(9) & (\inst|alu1|Mux16~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(9),
	datab => \inst|reggy~343_combout\,
	datac => \inst|alu1|Mux16~0_combout\,
	datad => \inst|alu1|unidad_logica|aux[9]~18_combout\,
	combout => \inst|reggy~344_combout\);

-- Location: LCCOMB_X21_Y14_N30
\inst|REG_D~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|REG_D~18_combout\ = (\inst|MAR\(1) & (!\inst|Equal2~0_combout\ & (\inst|MAR\(0) & \inst|reggy~278_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MAR\(1),
	datab => \inst|Equal2~0_combout\,
	datac => \inst|MAR\(0),
	datad => \inst|reggy~278_combout\,
	combout => \inst|REG_D~18_combout\);

-- Location: FF_X21_Y14_N31
\inst|REG_D[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|REG_D~18_combout\,
	ena => \inst|REG_D[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|REG_D\(9));

-- Location: LCCOMB_X17_Y13_N0
\inst|reggy~339\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~339_combout\ = (\inst|MAR\(11) & (!\inst|MAR\(9) & \inst|REG_D\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|MAR\(11),
	datac => \inst|MAR\(9),
	datad => \inst|REG_D\(9),
	combout => \inst|reggy~339_combout\);

-- Location: LCCOMB_X21_Y11_N24
\inst|reggy~340\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~340_combout\ = (\inst|reggy~301_combout\) # ((\inst|MAR\(10) & ((\inst|reggy~302_combout\) # (\inst|reggy~339_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MAR\(10),
	datab => \inst|reggy~302_combout\,
	datac => \inst|reggy~339_combout\,
	datad => \inst|reggy~301_combout\,
	combout => \inst|reggy~340_combout\);

-- Location: LCCOMB_X21_Y11_N22
\inst|reggy~341\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~341_combout\ = (\inst|reggy~355_combout\ & ((\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~18_combout\) # ((\inst|reggy~300_combout\)))) # (!\inst|reggy~355_combout\ & (((\inst|reggy~340_combout\ & !\inst|reggy~300_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~18_combout\,
	datab => \inst|reggy~340_combout\,
	datac => \inst|reggy~355_combout\,
	datad => \inst|reggy~300_combout\,
	combout => \inst|reggy~341_combout\);

-- Location: LCCOMB_X23_Y12_N4
\inst|alu1|unidad_aritmetica|resta|sR:9:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|resta|sR:9:sP|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|resta|sR:8:sP|Cout2~4_combout\ $ (\inst|alu1|unidad_aritmetica|suma|Xop\(9) $ (\inst|alu1|unidad_aritmetica|resta|sR:8:sP|Cout~0_combout\ $ 
-- (\inst|alu1|unidad_aritmetica|suma|Yop~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|resta|sR:8:sP|Cout2~4_combout\,
	datab => \inst|alu1|unidad_aritmetica|suma|Xop\(9),
	datac => \inst|alu1|unidad_aritmetica|resta|sR:8:sP|Cout~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|suma|Yop~8_combout\,
	combout => \inst|alu1|unidad_aritmetica|resta|sR:9:sP|Suma~0_combout\);

-- Location: LCCOMB_X22_Y12_N14
\inst|alu1|unidad_aritmetica|suma|sR:8:sP|Cout2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|sR:8:sP|Cout2~0_combout\ = (\inst|alu1|unidad_aritmetica|suma|sR:7:sP|Cout2~0_combout\ & (\inst|alu1|unidad_aritmetica|suma|Xop\(8) & (\inst|REG_B\(8) $ (\inst|REG_B\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(8),
	datab => \inst|REG_B\(15),
	datac => \inst|alu1|unidad_aritmetica|suma|sR:7:sP|Cout2~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|suma|Xop\(8),
	combout => \inst|alu1|unidad_aritmetica|suma|sR:8:sP|Cout2~0_combout\);

-- Location: LCCOMB_X22_Y12_N6
\inst|alu1|unidad_aritmetica|suma|sR:8:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|sR:8:sP|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|suma|Xop\(8) & ((\inst|alu1|unidad_aritmetica|suma|sR:7:sP|Cout~1_combout\) # (\inst|REG_B\(8) $ (\inst|REG_B\(15))))) # (!\inst|alu1|unidad_aritmetica|suma|Xop\(8) 
-- & (\inst|alu1|unidad_aritmetica|suma|sR:7:sP|Cout~1_combout\ & (\inst|REG_B\(8) $ (\inst|REG_B\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(8),
	datab => \inst|alu1|unidad_aritmetica|suma|Xop\(8),
	datac => \inst|REG_B\(15),
	datad => \inst|alu1|unidad_aritmetica|suma|sR:7:sP|Cout~1_combout\,
	combout => \inst|alu1|unidad_aritmetica|suma|sR:8:sP|Cout~0_combout\);

-- Location: LCCOMB_X22_Y12_N24
\inst|alu1|unidad_aritmetica|suma|sR:8:sP|Cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|sR:8:sP|Cout~1_combout\ = (\inst|alu1|unidad_aritmetica|suma|sR:7:sP|Cout2~0_combout\) # (\inst|alu1|unidad_aritmetica|suma|sR:8:sP|Cout~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|alu1|unidad_aritmetica|suma|sR:7:sP|Cout2~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|suma|sR:8:sP|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|suma|sR:8:sP|Cout~1_combout\);

-- Location: LCCOMB_X23_Y12_N2
\inst|alu1|unidad_aritmetica|suma|sR:9:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|sR:9:sP|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|suma|Yop~8_combout\ $ (\inst|alu1|unidad_aritmetica|suma|Xop\(9) $ (\inst|alu1|unidad_aritmetica|suma|sR:8:sP|Cout2~0_combout\ $ 
-- (\inst|alu1|unidad_aritmetica|suma|sR:8:sP|Cout~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|suma|Yop~8_combout\,
	datab => \inst|alu1|unidad_aritmetica|suma|Xop\(9),
	datac => \inst|alu1|unidad_aritmetica|suma|sR:8:sP|Cout2~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|suma|sR:8:sP|Cout~1_combout\,
	combout => \inst|alu1|unidad_aritmetica|suma|sR:9:sP|Suma~0_combout\);

-- Location: LCCOMB_X22_Y11_N20
\inst|alu1|unidad_aritmetica|suma|negativo|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|negativo|Add0~18_combout\ = (\inst|alu1|unidad_aritmetica|suma|sR:9:sP|Suma~0_combout\ & ((\inst|alu1|unidad_aritmetica|suma|negativo|Add0~17\) # (GND))) # (!\inst|alu1|unidad_aritmetica|suma|sR:9:sP|Suma~0_combout\ & 
-- (!\inst|alu1|unidad_aritmetica|suma|negativo|Add0~17\))
-- \inst|alu1|unidad_aritmetica|suma|negativo|Add0~19\ = CARRY((\inst|alu1|unidad_aritmetica|suma|sR:9:sP|Suma~0_combout\) # (!\inst|alu1|unidad_aritmetica|suma|negativo|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|suma|sR:9:sP|Suma~0_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|suma|negativo|Add0~17\,
	combout => \inst|alu1|unidad_aritmetica|suma|negativo|Add0~18_combout\,
	cout => \inst|alu1|unidad_aritmetica|suma|negativo|Add0~19\);

-- Location: LCCOMB_X23_Y15_N18
\inst|alu1|unidad_aritmetica|resta|negativo|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|resta|negativo|Add0~18_combout\ = (\inst|alu1|unidad_aritmetica|resta|sR:9:sP|Suma~0_combout\ & (!\inst|alu1|unidad_aritmetica|resta|negativo|Add0~17\)) # (!\inst|alu1|unidad_aritmetica|resta|sR:9:sP|Suma~0_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|resta|negativo|Add0~17\) # (GND)))
-- \inst|alu1|unidad_aritmetica|resta|negativo|Add0~19\ = CARRY((!\inst|alu1|unidad_aritmetica|resta|negativo|Add0~17\) # (!\inst|alu1|unidad_aritmetica|resta|sR:9:sP|Suma~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|resta|sR:9:sP|Suma~0_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|resta|negativo|Add0~17\,
	combout => \inst|alu1|unidad_aritmetica|resta|negativo|Add0~18_combout\,
	cout => \inst|alu1|unidad_aritmetica|resta|negativo|Add0~19\);

-- Location: LCCOMB_X23_Y12_N12
\inst|reggy~337\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~337_combout\ = (\inst|alu1|Mux17~0_combout\ & (((\inst|reggy~187_combout\) # (\inst|alu1|unidad_aritmetica|resta|negativo|Add0~18_combout\)))) # (!\inst|alu1|Mux17~0_combout\ & (\inst|alu1|unidad_aritmetica|suma|negativo|Add0~18_combout\ & 
-- (!\inst|reggy~187_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux17~0_combout\,
	datab => \inst|alu1|unidad_aritmetica|suma|negativo|Add0~18_combout\,
	datac => \inst|reggy~187_combout\,
	datad => \inst|alu1|unidad_aritmetica|resta|negativo|Add0~18_combout\,
	combout => \inst|reggy~337_combout\);

-- Location: LCCOMB_X23_Y12_N14
\inst|reggy~338\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~338_combout\ = (\inst|reggy~187_combout\ & ((\inst|reggy~337_combout\ & (!\inst|alu1|unidad_aritmetica|resta|sR:9:sP|Suma~0_combout\)) # (!\inst|reggy~337_combout\ & ((\inst|alu1|unidad_aritmetica|suma|sR:9:sP|Suma~0_combout\))))) # 
-- (!\inst|reggy~187_combout\ & (((\inst|reggy~337_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|resta|sR:9:sP|Suma~0_combout\,
	datab => \inst|alu1|unidad_aritmetica|suma|sR:9:sP|Suma~0_combout\,
	datac => \inst|reggy~187_combout\,
	datad => \inst|reggy~337_combout\,
	combout => \inst|reggy~338_combout\);

-- Location: LCCOMB_X19_Y13_N16
\inst|reggy~342\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~342_combout\ = (\inst|reggy~341_combout\ & (((\inst|alu1|unidad_aritmetica|mult|multi7|sR:9:sP|Suma~0_combout\)) # (!\inst|reggy~300_combout\))) # (!\inst|reggy~341_combout\ & (\inst|reggy~300_combout\ & ((\inst|reggy~338_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy~341_combout\,
	datab => \inst|reggy~300_combout\,
	datac => \inst|alu1|unidad_aritmetica|mult|multi7|sR:9:sP|Suma~0_combout\,
	datad => \inst|reggy~338_combout\,
	combout => \inst|reggy~342_combout\);

-- Location: LCCOMB_X19_Y13_N20
\inst|reggy~345\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~345_combout\ = (\inst|reggy~297_combout\ & ((\inst|reggy~342_combout\) # ((\inst|reggy~199_combout\ & \inst|reggy~344_combout\)))) # (!\inst|reggy~297_combout\ & (\inst|reggy~199_combout\ & (\inst|reggy~344_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy~297_combout\,
	datab => \inst|reggy~199_combout\,
	datac => \inst|reggy~344_combout\,
	datad => \inst|reggy~342_combout\,
	combout => \inst|reggy~345_combout\);

-- Location: FF_X16_Y13_N11
\inst|reggy~29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~345_combout\,
	sload => VCC,
	ena => \inst|reggy~182_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy~29_q\);

-- Location: LCCOMB_X16_Y13_N10
\inst|reggy~277\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~277_combout\ = (\inst|reggy~155_combout\ & ((\inst|reggy~154_combout\) # ((\inst|reggy~45_q\)))) # (!\inst|reggy~155_combout\ & (!\inst|reggy~154_combout\ & (\inst|reggy~29_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy~155_combout\,
	datab => \inst|reggy~154_combout\,
	datac => \inst|reggy~29_q\,
	datad => \inst|reggy~45_q\,
	combout => \inst|reggy~277_combout\);

-- Location: LCCOMB_X17_Y17_N14
\inst|reggy~278\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~278_combout\ = (\inst|reggy~154_combout\ & ((\inst|reggy~277_combout\ & ((\inst|reggy~77_q\))) # (!\inst|reggy~277_combout\ & (\inst|reggy~61_q\)))) # (!\inst|reggy~154_combout\ & (\inst|reggy~277_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy~154_combout\,
	datab => \inst|reggy~277_combout\,
	datac => \inst|reggy~61_q\,
	datad => \inst|reggy~77_q\,
	combout => \inst|reggy~278_combout\);

-- Location: FF_X17_Y17_N15
\inst|REG_A[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|reggy~278_combout\,
	ena => \inst|OP[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|REG_A\(9));

-- Location: LCCOMB_X23_Y14_N20
\inst|alu1|unidad_logica|aux[10]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|aux[10]~20_combout\ = (\inst|REG_A\(10) & (!\inst|alu1|unidad_logica|aux[9]~19\ & VCC)) # (!\inst|REG_A\(10) & (\inst|alu1|unidad_logica|aux[9]~19\ $ (GND)))
-- \inst|alu1|unidad_logica|aux[10]~21\ = CARRY((!\inst|REG_A\(10) & !\inst|alu1|unidad_logica|aux[9]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|REG_A\(10),
	datad => VCC,
	cin => \inst|alu1|unidad_logica|aux[9]~19\,
	combout => \inst|alu1|unidad_logica|aux[10]~20_combout\,
	cout => \inst|alu1|unidad_logica|aux[10]~21\);

-- Location: LCCOMB_X19_Y14_N6
\inst|reggy~334\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~334_combout\ = (\inst|REG_B\(10) & ((\inst|alu1|Mux17~0_combout\) # ((\inst|REG_A\(10) & !\inst|alu1|Mux16~0_combout\)))) # (!\inst|REG_B\(10) & (\inst|alu1|Mux17~0_combout\ & ((\inst|REG_A\(10)) # (\inst|alu1|Mux16~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(10),
	datab => \inst|alu1|Mux17~0_combout\,
	datac => \inst|REG_A\(10),
	datad => \inst|alu1|Mux16~0_combout\,
	combout => \inst|reggy~334_combout\);

-- Location: LCCOMB_X19_Y14_N8
\inst|reggy~335\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~335_combout\ = (\inst|alu1|Mux16~0_combout\ & ((\inst|reggy~334_combout\ & (\inst|alu1|unidad_logica|aux[10]~20_combout\)) # (!\inst|reggy~334_combout\ & ((!\inst|REG_A\(10)))))) # (!\inst|alu1|Mux16~0_combout\ & 
-- (((\inst|reggy~334_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux16~0_combout\,
	datab => \inst|alu1|unidad_logica|aux[10]~20_combout\,
	datac => \inst|REG_A\(10),
	datad => \inst|reggy~334_combout\,
	combout => \inst|reggy~335_combout\);

-- Location: LCCOMB_X21_Y14_N2
\inst|REG_D~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|REG_D~17_combout\ = (\inst|MAR\(1) & (!\inst|Equal2~0_combout\ & (\inst|MAR\(0) & \inst|reggy~276_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MAR\(1),
	datab => \inst|Equal2~0_combout\,
	datac => \inst|MAR\(0),
	datad => \inst|reggy~276_combout\,
	combout => \inst|REG_D~17_combout\);

-- Location: FF_X21_Y14_N3
\inst|REG_D[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|REG_D~17_combout\,
	ena => \inst|REG_D[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|REG_D\(10));

-- Location: LCCOMB_X21_Y14_N8
\inst|reggy~330\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~330_combout\ = (\inst|MAR\(11) & (!\inst|MAR\(9) & \inst|REG_D\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MAR\(11),
	datac => \inst|MAR\(9),
	datad => \inst|REG_D\(10),
	combout => \inst|reggy~330_combout\);

-- Location: LCCOMB_X21_Y11_N6
\inst|reggy~331\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~331_combout\ = (\inst|reggy~301_combout\) # ((\inst|MAR\(10) & ((\inst|reggy~302_combout\) # (\inst|reggy~330_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy~301_combout\,
	datab => \inst|reggy~302_combout\,
	datac => \inst|MAR\(10),
	datad => \inst|reggy~330_combout\,
	combout => \inst|reggy~331_combout\);

-- Location: LCCOMB_X21_Y11_N12
\inst|reggy~332\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~332_combout\ = (\inst|reggy~355_combout\ & (((\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~20_combout\) # (\inst|reggy~300_combout\)))) # (!\inst|reggy~355_combout\ & (\inst|reggy~331_combout\ & ((!\inst|reggy~300_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy~331_combout\,
	datab => \inst|reggy~355_combout\,
	datac => \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~20_combout\,
	datad => \inst|reggy~300_combout\,
	combout => \inst|reggy~332_combout\);

-- Location: LCCOMB_X23_Y12_N22
\inst|alu1|unidad_aritmetica|suma|sR:9:sP|Cout2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|sR:9:sP|Cout2~0_combout\ = (\inst|alu1|unidad_aritmetica|suma|Xop\(9) & (\inst|alu1|unidad_aritmetica|suma|sR:8:sP|Cout2~0_combout\ & (\inst|REG_B\(15) $ (\inst|REG_B\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(15),
	datab => \inst|alu1|unidad_aritmetica|suma|Xop\(9),
	datac => \inst|REG_B\(9),
	datad => \inst|alu1|unidad_aritmetica|suma|sR:8:sP|Cout2~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|suma|sR:9:sP|Cout2~0_combout\);

-- Location: LCCOMB_X23_Y12_N30
\inst|alu1|unidad_aritmetica|suma|sR:9:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|sR:9:sP|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|suma|Xop\(9) & ((\inst|alu1|unidad_aritmetica|suma|sR:8:sP|Cout~1_combout\) # (\inst|REG_B\(15) $ (\inst|REG_B\(9))))) # (!\inst|alu1|unidad_aritmetica|suma|Xop\(9) 
-- & (\inst|alu1|unidad_aritmetica|suma|sR:8:sP|Cout~1_combout\ & (\inst|REG_B\(15) $ (\inst|REG_B\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(15),
	datab => \inst|alu1|unidad_aritmetica|suma|Xop\(9),
	datac => \inst|REG_B\(9),
	datad => \inst|alu1|unidad_aritmetica|suma|sR:8:sP|Cout~1_combout\,
	combout => \inst|alu1|unidad_aritmetica|suma|sR:9:sP|Cout~0_combout\);

-- Location: LCCOMB_X23_Y12_N20
\inst|alu1|unidad_aritmetica|suma|sR:9:sP|Cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|sR:9:sP|Cout~1_combout\ = (\inst|alu1|unidad_aritmetica|suma|sR:8:sP|Cout2~0_combout\) # (\inst|alu1|unidad_aritmetica|suma|sR:9:sP|Cout~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|suma|sR:8:sP|Cout2~0_combout\,
	datac => \inst|alu1|unidad_aritmetica|suma|sR:9:sP|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|suma|sR:9:sP|Cout~1_combout\);

-- Location: LCCOMB_X23_Y11_N14
\inst|alu1|unidad_aritmetica|suma|sR:10:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|sR:10:sP|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|suma|sR:9:sP|Cout2~0_combout\ $ (\inst|alu1|unidad_aritmetica|suma|Xop\(10) $ (\inst|alu1|unidad_aritmetica|suma|Yop~9_combout\ $ 
-- (\inst|alu1|unidad_aritmetica|suma|sR:9:sP|Cout~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|suma|sR:9:sP|Cout2~0_combout\,
	datab => \inst|alu1|unidad_aritmetica|suma|Xop\(10),
	datac => \inst|alu1|unidad_aritmetica|suma|Yop~9_combout\,
	datad => \inst|alu1|unidad_aritmetica|suma|sR:9:sP|Cout~1_combout\,
	combout => \inst|alu1|unidad_aritmetica|suma|sR:10:sP|Suma~0_combout\);

-- Location: LCCOMB_X24_Y13_N10
\inst|alu1|unidad_aritmetica|resta|sR:10:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|resta|sR:10:sP|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|suma|Xop\(10) $ (\inst|alu1|unidad_aritmetica|suma|Yop~9_combout\ $ (\inst|alu1|unidad_aritmetica|resta|sR:9:sP|Cout~0_combout\ $ 
-- (\inst|alu1|unidad_aritmetica|resta|sR:9:sP|Cout2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|suma|Xop\(10),
	datab => \inst|alu1|unidad_aritmetica|suma|Yop~9_combout\,
	datac => \inst|alu1|unidad_aritmetica|resta|sR:9:sP|Cout~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|resta|sR:9:sP|Cout2~4_combout\,
	combout => \inst|alu1|unidad_aritmetica|resta|sR:10:sP|Suma~0_combout\);

-- Location: LCCOMB_X23_Y15_N20
\inst|alu1|unidad_aritmetica|resta|negativo|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|resta|negativo|Add0~20_combout\ = (\inst|alu1|unidad_aritmetica|resta|sR:10:sP|Suma~0_combout\ & (\inst|alu1|unidad_aritmetica|resta|negativo|Add0~19\ $ (GND))) # (!\inst|alu1|unidad_aritmetica|resta|sR:10:sP|Suma~0_combout\ & 
-- (!\inst|alu1|unidad_aritmetica|resta|negativo|Add0~19\ & VCC))
-- \inst|alu1|unidad_aritmetica|resta|negativo|Add0~21\ = CARRY((\inst|alu1|unidad_aritmetica|resta|sR:10:sP|Suma~0_combout\ & !\inst|alu1|unidad_aritmetica|resta|negativo|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|unidad_aritmetica|resta|sR:10:sP|Suma~0_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|resta|negativo|Add0~19\,
	combout => \inst|alu1|unidad_aritmetica|resta|negativo|Add0~20_combout\,
	cout => \inst|alu1|unidad_aritmetica|resta|negativo|Add0~21\);

-- Location: LCCOMB_X22_Y11_N22
\inst|alu1|unidad_aritmetica|suma|negativo|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|negativo|Add0~20_combout\ = (\inst|alu1|unidad_aritmetica|suma|sR:10:sP|Suma~0_combout\ & (!\inst|alu1|unidad_aritmetica|suma|negativo|Add0~19\ & VCC)) # (!\inst|alu1|unidad_aritmetica|suma|sR:10:sP|Suma~0_combout\ & 
-- (\inst|alu1|unidad_aritmetica|suma|negativo|Add0~19\ $ (GND)))
-- \inst|alu1|unidad_aritmetica|suma|negativo|Add0~21\ = CARRY((!\inst|alu1|unidad_aritmetica|suma|sR:10:sP|Suma~0_combout\ & !\inst|alu1|unidad_aritmetica|suma|negativo|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|unidad_aritmetica|suma|sR:10:sP|Suma~0_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|suma|negativo|Add0~19\,
	combout => \inst|alu1|unidad_aritmetica|suma|negativo|Add0~20_combout\,
	cout => \inst|alu1|unidad_aritmetica|suma|negativo|Add0~21\);

-- Location: LCCOMB_X21_Y11_N26
\inst|reggy~328\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~328_combout\ = (\inst|alu1|Mux17~0_combout\ & ((\inst|alu1|unidad_aritmetica|resta|negativo|Add0~20_combout\) # ((\inst|reggy~187_combout\)))) # (!\inst|alu1|Mux17~0_combout\ & (((\inst|alu1|unidad_aritmetica|suma|negativo|Add0~20_combout\ & 
-- !\inst|reggy~187_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|resta|negativo|Add0~20_combout\,
	datab => \inst|alu1|unidad_aritmetica|suma|negativo|Add0~20_combout\,
	datac => \inst|alu1|Mux17~0_combout\,
	datad => \inst|reggy~187_combout\,
	combout => \inst|reggy~328_combout\);

-- Location: LCCOMB_X21_Y11_N4
\inst|reggy~329\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~329_combout\ = (\inst|reggy~328_combout\ & (((!\inst|reggy~187_combout\) # (!\inst|alu1|unidad_aritmetica|resta|sR:10:sP|Suma~0_combout\)))) # (!\inst|reggy~328_combout\ & (\inst|alu1|unidad_aritmetica|suma|sR:10:sP|Suma~0_combout\ & 
-- ((\inst|reggy~187_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|suma|sR:10:sP|Suma~0_combout\,
	datab => \inst|alu1|unidad_aritmetica|resta|sR:10:sP|Suma~0_combout\,
	datac => \inst|reggy~328_combout\,
	datad => \inst|reggy~187_combout\,
	combout => \inst|reggy~329_combout\);

-- Location: LCCOMB_X21_Y11_N30
\inst|reggy~333\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~333_combout\ = (\inst|reggy~332_combout\ & (((\inst|alu1|unidad_aritmetica|mult|multi7|sR:10:sP|Suma~0_combout\) # (!\inst|reggy~300_combout\)))) # (!\inst|reggy~332_combout\ & (\inst|reggy~329_combout\ & ((\inst|reggy~300_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy~332_combout\,
	datab => \inst|reggy~329_combout\,
	datac => \inst|alu1|unidad_aritmetica|mult|multi7|sR:10:sP|Suma~0_combout\,
	datad => \inst|reggy~300_combout\,
	combout => \inst|reggy~333_combout\);

-- Location: LCCOMB_X19_Y13_N12
\inst|reggy~336\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~336_combout\ = (\inst|reggy~297_combout\ & ((\inst|reggy~333_combout\) # ((\inst|reggy~335_combout\ & \inst|reggy~199_combout\)))) # (!\inst|reggy~297_combout\ & (\inst|reggy~335_combout\ & (\inst|reggy~199_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy~297_combout\,
	datab => \inst|reggy~335_combout\,
	datac => \inst|reggy~199_combout\,
	datad => \inst|reggy~333_combout\,
	combout => \inst|reggy~336_combout\);

-- Location: FF_X19_Y13_N13
\inst|reggy~78\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|reggy~336_combout\,
	ena => \inst|reggy~183_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy~78_q\);

-- Location: LCCOMB_X16_Y17_N20
\inst|reggy~281\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~281_combout\ = (\inst|MAR\(0) & (((\inst|MAR\(1))))) # (!\inst|MAR\(0) & ((\inst|MAR\(1) & ((\inst|reggy~62_q\))) # (!\inst|MAR\(1) & (\inst|reggy~30_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy~30_q\,
	datab => \inst|MAR\(0),
	datac => \inst|reggy~62_q\,
	datad => \inst|MAR\(1),
	combout => \inst|reggy~281_combout\);

-- Location: LCCOMB_X19_Y14_N30
\inst|reggy~282\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~282_combout\ = (\inst|MAR\(0) & ((\inst|reggy~281_combout\ & (\inst|reggy~78_q\)) # (!\inst|reggy~281_combout\ & ((\inst|reggy~46_q\))))) # (!\inst|MAR\(0) & (((\inst|reggy~281_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy~78_q\,
	datab => \inst|MAR\(0),
	datac => \inst|reggy~281_combout\,
	datad => \inst|reggy~46_q\,
	combout => \inst|reggy~282_combout\);

-- Location: FF_X18_Y14_N15
\inst|REG_B[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~282_combout\,
	sload => VCC,
	ena => \inst|OP[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|REG_B\(10));

-- Location: LCCOMB_X23_Y11_N22
\inst|alu1|unidad_aritmetica|suma|sR:10:sP|Cout2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|sR:10:sP|Cout2~0_combout\ = (\inst|alu1|unidad_aritmetica|suma|Xop\(10) & (\inst|alu1|unidad_aritmetica|suma|sR:9:sP|Cout2~0_combout\ & (\inst|REG_B\(10) $ (\inst|REG_B\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(10),
	datab => \inst|alu1|unidad_aritmetica|suma|Xop\(10),
	datac => \inst|REG_B\(15),
	datad => \inst|alu1|unidad_aritmetica|suma|sR:9:sP|Cout2~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|suma|sR:10:sP|Cout2~0_combout\);

-- Location: LCCOMB_X23_Y11_N16
\inst|alu1|unidad_aritmetica|suma|sR:11:sP|Cout2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|sR:11:sP|Cout2~0_combout\ = (\inst|alu1|unidad_aritmetica|suma|sR:10:sP|Cout2~0_combout\ & (\inst|alu1|unidad_aritmetica|suma|Xop\(11) & (\inst|REG_B\(15) $ (\inst|REG_B\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(15),
	datab => \inst|REG_B\(11),
	datac => \inst|alu1|unidad_aritmetica|suma|sR:10:sP|Cout2~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|suma|Xop\(11),
	combout => \inst|alu1|unidad_aritmetica|suma|sR:11:sP|Cout2~0_combout\);

-- Location: LCCOMB_X23_Y13_N28
\inst|alu1|unidad_aritmetica|suma|sR:12:sP|Cout2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|sR:12:sP|Cout2~4_combout\ = (\inst|alu1|unidad_aritmetica|suma|Yop~11_combout\ & (\inst|alu1|unidad_aritmetica|suma|sR:11:sP|Cout2~0_combout\ & (\inst|REG_A\(12) $ (\inst|REG_A\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|suma|Yop~11_combout\,
	datab => \inst|alu1|unidad_aritmetica|suma|sR:11:sP|Cout2~0_combout\,
	datac => \inst|REG_A\(12),
	datad => \inst|REG_A\(15),
	combout => \inst|alu1|unidad_aritmetica|suma|sR:12:sP|Cout2~4_combout\);

-- Location: LCCOMB_X23_Y13_N10
\inst|alu1|unidad_aritmetica|suma|sR:13:sP|Cout2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|sR:13:sP|Cout2~4_combout\ = (\inst|alu1|unidad_aritmetica|suma|Yop~12_combout\ & (\inst|alu1|unidad_aritmetica|suma|sR:12:sP|Cout2~4_combout\ & (\inst|REG_A\(15) $ (\inst|REG_A\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(15),
	datab => \inst|REG_A\(13),
	datac => \inst|alu1|unidad_aritmetica|suma|Yop~12_combout\,
	datad => \inst|alu1|unidad_aritmetica|suma|sR:12:sP|Cout2~4_combout\,
	combout => \inst|alu1|unidad_aritmetica|suma|sR:13:sP|Cout2~4_combout\);

-- Location: LCCOMB_X23_Y11_N28
\inst|alu1|unidad_aritmetica|suma|sR:10:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|sR:10:sP|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|suma|Xop\(10) & ((\inst|alu1|unidad_aritmetica|suma|sR:9:sP|Cout~1_combout\) # (\inst|REG_B\(10) $ (\inst|REG_B\(15))))) # 
-- (!\inst|alu1|unidad_aritmetica|suma|Xop\(10) & (\inst|alu1|unidad_aritmetica|suma|sR:9:sP|Cout~1_combout\ & (\inst|REG_B\(10) $ (\inst|REG_B\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(10),
	datab => \inst|alu1|unidad_aritmetica|suma|Xop\(10),
	datac => \inst|REG_B\(15),
	datad => \inst|alu1|unidad_aritmetica|suma|sR:9:sP|Cout~1_combout\,
	combout => \inst|alu1|unidad_aritmetica|suma|sR:10:sP|Cout~0_combout\);

-- Location: LCCOMB_X23_Y11_N26
\inst|alu1|unidad_aritmetica|suma|sR:10:sP|Cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|sR:10:sP|Cout~1_combout\ = (\inst|alu1|unidad_aritmetica|suma|sR:9:sP|Cout2~0_combout\) # (\inst|alu1|unidad_aritmetica|suma|sR:10:sP|Cout~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|suma|sR:9:sP|Cout2~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|suma|sR:10:sP|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|suma|sR:10:sP|Cout~1_combout\);

-- Location: LCCOMB_X23_Y11_N8
\inst|alu1|unidad_aritmetica|suma|sR:11:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|sR:11:sP|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|suma|sR:10:sP|Cout~1_combout\ & ((\inst|alu1|unidad_aritmetica|suma|Xop\(11)) # (\inst|REG_B\(15) $ (\inst|REG_B\(11))))) # 
-- (!\inst|alu1|unidad_aritmetica|suma|sR:10:sP|Cout~1_combout\ & (\inst|alu1|unidad_aritmetica|suma|Xop\(11) & (\inst|REG_B\(15) $ (\inst|REG_B\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(15),
	datab => \inst|REG_B\(11),
	datac => \inst|alu1|unidad_aritmetica|suma|sR:10:sP|Cout~1_combout\,
	datad => \inst|alu1|unidad_aritmetica|suma|Xop\(11),
	combout => \inst|alu1|unidad_aritmetica|suma|sR:11:sP|Cout~0_combout\);

-- Location: LCCOMB_X23_Y11_N6
\inst|alu1|unidad_aritmetica|suma|sR:11:sP|Cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|sR:11:sP|Cout~1_combout\ = (\inst|alu1|unidad_aritmetica|suma|sR:11:sP|Cout~0_combout\) # ((\inst|alu1|unidad_aritmetica|suma|Yop~9_combout\ & (\inst|alu1|unidad_aritmetica|suma|Xop\(10) & 
-- \inst|alu1|unidad_aritmetica|suma|sR:9:sP|Cout2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|suma|Yop~9_combout\,
	datab => \inst|alu1|unidad_aritmetica|suma|Xop\(10),
	datac => \inst|alu1|unidad_aritmetica|suma|sR:11:sP|Cout~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|suma|sR:9:sP|Cout2~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|suma|sR:11:sP|Cout~1_combout\);

-- Location: LCCOMB_X23_Y11_N12
\inst|alu1|unidad_aritmetica|suma|sR:12:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|sR:12:sP|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|suma|Xop\(12) & ((\inst|alu1|unidad_aritmetica|suma|sR:11:sP|Cout~1_combout\) # (\inst|REG_B\(12) $ (\inst|REG_B\(15))))) # 
-- (!\inst|alu1|unidad_aritmetica|suma|Xop\(12) & (\inst|alu1|unidad_aritmetica|suma|sR:11:sP|Cout~1_combout\ & (\inst|REG_B\(12) $ (\inst|REG_B\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(12),
	datab => \inst|alu1|unidad_aritmetica|suma|Xop\(12),
	datac => \inst|REG_B\(15),
	datad => \inst|alu1|unidad_aritmetica|suma|sR:11:sP|Cout~1_combout\,
	combout => \inst|alu1|unidad_aritmetica|suma|sR:12:sP|Cout~0_combout\);

-- Location: LCCOMB_X23_Y11_N24
\inst|alu1|unidad_aritmetica|suma|sR:12:sP|Cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|sR:12:sP|Cout~1_combout\ = (\inst|alu1|unidad_aritmetica|suma|sR:12:sP|Cout~0_combout\) # ((\inst|alu1|unidad_aritmetica|suma|Xop\(11) & (\inst|alu1|unidad_aritmetica|suma|Yop~10_combout\ & 
-- \inst|alu1|unidad_aritmetica|suma|sR:10:sP|Cout2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|suma|Xop\(11),
	datab => \inst|alu1|unidad_aritmetica|suma|Yop~10_combout\,
	datac => \inst|alu1|unidad_aritmetica|suma|sR:10:sP|Cout2~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|suma|sR:12:sP|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|suma|sR:12:sP|Cout~1_combout\);

-- Location: LCCOMB_X23_Y11_N18
\inst|alu1|unidad_aritmetica|suma|sR:13:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|sR:13:sP|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|suma|Xop\(13) & ((\inst|alu1|unidad_aritmetica|suma|sR:12:sP|Cout~1_combout\) # (\inst|REG_B\(13) $ (\inst|REG_B\(15))))) # 
-- (!\inst|alu1|unidad_aritmetica|suma|Xop\(13) & (\inst|alu1|unidad_aritmetica|suma|sR:12:sP|Cout~1_combout\ & (\inst|REG_B\(13) $ (\inst|REG_B\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(13),
	datab => \inst|alu1|unidad_aritmetica|suma|Xop\(13),
	datac => \inst|REG_B\(15),
	datad => \inst|alu1|unidad_aritmetica|suma|sR:12:sP|Cout~1_combout\,
	combout => \inst|alu1|unidad_aritmetica|suma|sR:13:sP|Cout~0_combout\);

-- Location: LCCOMB_X23_Y11_N10
\inst|alu1|unidad_aritmetica|suma|sR:13:sP|Cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|sR:13:sP|Cout~1_combout\ = (\inst|alu1|unidad_aritmetica|suma|sR:13:sP|Cout~0_combout\) # ((\inst|alu1|unidad_aritmetica|suma|Yop~11_combout\ & (\inst|alu1|unidad_aritmetica|suma|sR:11:sP|Cout2~0_combout\ & 
-- \inst|alu1|unidad_aritmetica|suma|Xop\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|suma|Yop~11_combout\,
	datab => \inst|alu1|unidad_aritmetica|suma|sR:11:sP|Cout2~0_combout\,
	datac => \inst|alu1|unidad_aritmetica|suma|Xop\(12),
	datad => \inst|alu1|unidad_aritmetica|suma|sR:13:sP|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|suma|sR:13:sP|Cout~1_combout\);

-- Location: LCCOMB_X22_Y13_N20
\inst|alu1|unidad_aritmetica|suma|sR:14:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|sR:14:sP|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|suma|Xop\(14) & ((\inst|alu1|unidad_aritmetica|suma|sR:13:sP|Cout~1_combout\) # (\inst|REG_B\(14) $ (\inst|REG_B\(15))))) # 
-- (!\inst|alu1|unidad_aritmetica|suma|Xop\(14) & (\inst|alu1|unidad_aritmetica|suma|sR:13:sP|Cout~1_combout\ & (\inst|REG_B\(14) $ (\inst|REG_B\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(14),
	datab => \inst|alu1|unidad_aritmetica|suma|Xop\(14),
	datac => \inst|REG_B\(15),
	datad => \inst|alu1|unidad_aritmetica|suma|sR:13:sP|Cout~1_combout\,
	combout => \inst|alu1|unidad_aritmetica|suma|sR:14:sP|Cout~0_combout\);

-- Location: LCCOMB_X22_Y13_N10
\inst|alu1|unidad_aritmetica|suma|Sfaux~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|Sfaux~1_combout\ = \inst|REG_A\(15) $ (\inst|REG_B\(15) $ (((\inst|alu1|unidad_aritmetica|suma|sR:13:sP|Cout2~4_combout\) # (\inst|alu1|unidad_aritmetica|suma|sR:14:sP|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(15),
	datab => \inst|alu1|unidad_aritmetica|suma|sR:13:sP|Cout2~4_combout\,
	datac => \inst|REG_B\(15),
	datad => \inst|alu1|unidad_aritmetica|suma|sR:14:sP|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|suma|Sfaux~1_combout\);

-- Location: LCCOMB_X22_Y14_N4
\inst|alu1|unidad_aritmetica|suma|Sfaux~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|Sfaux~0_combout\ = \inst|REG_B\(15) $ (\inst|REG_A\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|REG_B\(15),
	datad => \inst|REG_A\(15),
	combout => \inst|alu1|unidad_aritmetica|suma|Sfaux~0_combout\);

-- Location: LCCOMB_X22_Y15_N2
\inst|reggy~187\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~187_combout\ = (\inst|alu1|Mux17~0_combout\ & ((\inst|alu1|unidad_aritmetica|suma|Sfaux~0_combout\ $ (\inst|alu1|unidad_aritmetica|resta|sR:14:sP|Cout~0_combout\)))) # (!\inst|alu1|Mux17~0_combout\ & 
-- (!\inst|alu1|unidad_aritmetica|suma|Sfaux~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010111000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|suma|Sfaux~1_combout\,
	datab => \inst|alu1|unidad_aritmetica|suma|Sfaux~0_combout\,
	datac => \inst|alu1|Mux17~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|resta|sR:14:sP|Cout~0_combout\,
	combout => \inst|reggy~187_combout\);

-- Location: LCCOMB_X24_Y13_N8
\inst|alu1|unidad_aritmetica|resta|sR:11:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|resta|sR:11:sP|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|suma|Xop\(11) $ (\inst|alu1|unidad_aritmetica|resta|sR:10:sP|Cout~0_combout\ $ (\inst|alu1|unidad_aritmetica|suma|Yop~10_combout\ $ 
-- (\inst|alu1|unidad_aritmetica|resta|sR:10:sP|Cout2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|suma|Xop\(11),
	datab => \inst|alu1|unidad_aritmetica|resta|sR:10:sP|Cout~0_combout\,
	datac => \inst|alu1|unidad_aritmetica|suma|Yop~10_combout\,
	datad => \inst|alu1|unidad_aritmetica|resta|sR:10:sP|Cout2~4_combout\,
	combout => \inst|alu1|unidad_aritmetica|resta|sR:11:sP|Suma~0_combout\);

-- Location: LCCOMB_X23_Y11_N4
\inst|alu1|unidad_aritmetica|suma|sR:11:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|sR:11:sP|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|suma|sR:10:sP|Cout2~0_combout\ $ (\inst|alu1|unidad_aritmetica|suma|Yop~10_combout\ $ (\inst|alu1|unidad_aritmetica|suma|sR:10:sP|Cout~1_combout\ $ 
-- (\inst|alu1|unidad_aritmetica|suma|Xop\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|suma|sR:10:sP|Cout2~0_combout\,
	datab => \inst|alu1|unidad_aritmetica|suma|Yop~10_combout\,
	datac => \inst|alu1|unidad_aritmetica|suma|sR:10:sP|Cout~1_combout\,
	datad => \inst|alu1|unidad_aritmetica|suma|Xop\(11),
	combout => \inst|alu1|unidad_aritmetica|suma|sR:11:sP|Suma~0_combout\);

-- Location: LCCOMB_X23_Y15_N22
\inst|alu1|unidad_aritmetica|resta|negativo|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|resta|negativo|Add0~22_combout\ = (\inst|alu1|unidad_aritmetica|resta|sR:11:sP|Suma~0_combout\ & (!\inst|alu1|unidad_aritmetica|resta|negativo|Add0~21\)) # (!\inst|alu1|unidad_aritmetica|resta|sR:11:sP|Suma~0_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|resta|negativo|Add0~21\) # (GND)))
-- \inst|alu1|unidad_aritmetica|resta|negativo|Add0~23\ = CARRY((!\inst|alu1|unidad_aritmetica|resta|negativo|Add0~21\) # (!\inst|alu1|unidad_aritmetica|resta|sR:11:sP|Suma~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|resta|sR:11:sP|Suma~0_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|resta|negativo|Add0~21\,
	combout => \inst|alu1|unidad_aritmetica|resta|negativo|Add0~22_combout\,
	cout => \inst|alu1|unidad_aritmetica|resta|negativo|Add0~23\);

-- Location: LCCOMB_X22_Y11_N24
\inst|alu1|unidad_aritmetica|suma|negativo|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|negativo|Add0~22_combout\ = (\inst|alu1|unidad_aritmetica|suma|sR:11:sP|Suma~0_combout\ & ((\inst|alu1|unidad_aritmetica|suma|negativo|Add0~21\) # (GND))) # (!\inst|alu1|unidad_aritmetica|suma|sR:11:sP|Suma~0_combout\ & 
-- (!\inst|alu1|unidad_aritmetica|suma|negativo|Add0~21\))
-- \inst|alu1|unidad_aritmetica|suma|negativo|Add0~23\ = CARRY((\inst|alu1|unidad_aritmetica|suma|sR:11:sP|Suma~0_combout\) # (!\inst|alu1|unidad_aritmetica|suma|negativo|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|suma|sR:11:sP|Suma~0_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|suma|negativo|Add0~21\,
	combout => \inst|alu1|unidad_aritmetica|suma|negativo|Add0~22_combout\,
	cout => \inst|alu1|unidad_aritmetica|suma|negativo|Add0~23\);

-- Location: LCCOMB_X24_Y11_N12
\inst|reggy~319\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~319_combout\ = (\inst|alu1|Mux17~0_combout\ & ((\inst|alu1|unidad_aritmetica|resta|negativo|Add0~22_combout\) # ((\inst|reggy~187_combout\)))) # (!\inst|alu1|Mux17~0_combout\ & (((\inst|alu1|unidad_aritmetica|suma|negativo|Add0~22_combout\ & 
-- !\inst|reggy~187_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|resta|negativo|Add0~22_combout\,
	datab => \inst|alu1|unidad_aritmetica|suma|negativo|Add0~22_combout\,
	datac => \inst|alu1|Mux17~0_combout\,
	datad => \inst|reggy~187_combout\,
	combout => \inst|reggy~319_combout\);

-- Location: LCCOMB_X24_Y11_N10
\inst|reggy~320\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~320_combout\ = (\inst|reggy~187_combout\ & ((\inst|reggy~319_combout\ & (!\inst|alu1|unidad_aritmetica|resta|sR:11:sP|Suma~0_combout\)) # (!\inst|reggy~319_combout\ & ((\inst|alu1|unidad_aritmetica|suma|sR:11:sP|Suma~0_combout\))))) # 
-- (!\inst|reggy~187_combout\ & (((\inst|reggy~319_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy~187_combout\,
	datab => \inst|alu1|unidad_aritmetica|resta|sR:11:sP|Suma~0_combout\,
	datac => \inst|alu1|unidad_aritmetica|suma|sR:11:sP|Suma~0_combout\,
	datad => \inst|reggy~319_combout\,
	combout => \inst|reggy~320_combout\);

-- Location: LCCOMB_X24_Y11_N20
\inst|reggy~323\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~323_combout\ = (\inst|reggy~355_combout\ & (((\inst|reggy~300_combout\)))) # (!\inst|reggy~355_combout\ & ((\inst|reggy~300_combout\ & ((\inst|reggy~320_combout\))) # (!\inst|reggy~300_combout\ & (\inst|reggy~322_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy~355_combout\,
	datab => \inst|reggy~322_combout\,
	datac => \inst|reggy~300_combout\,
	datad => \inst|reggy~320_combout\,
	combout => \inst|reggy~323_combout\);

-- Location: LCCOMB_X24_Y11_N6
\inst|reggy~324\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~324_combout\ = (\inst|reggy~355_combout\ & ((\inst|reggy~323_combout\ & (\inst|alu1|unidad_aritmetica|mult|multi7|sR:11:sP|Suma~0_combout\)) # (!\inst|reggy~323_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~22_combout\))))) # (!\inst|reggy~355_combout\ & (((\inst|reggy~323_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|multi7|sR:11:sP|Suma~0_combout\,
	datab => \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~22_combout\,
	datac => \inst|reggy~355_combout\,
	datad => \inst|reggy~323_combout\,
	combout => \inst|reggy~324_combout\);

-- Location: LCCOMB_X23_Y14_N22
\inst|alu1|unidad_logica|aux[11]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|aux[11]~22_combout\ = (\inst|REG_A\(11) & ((\inst|alu1|unidad_logica|aux[10]~21\) # (GND))) # (!\inst|REG_A\(11) & (!\inst|alu1|unidad_logica|aux[10]~21\))
-- \inst|alu1|unidad_logica|aux[11]~23\ = CARRY((\inst|REG_A\(11)) # (!\inst|alu1|unidad_logica|aux[10]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(11),
	datad => VCC,
	cin => \inst|alu1|unidad_logica|aux[10]~21\,
	combout => \inst|alu1|unidad_logica|aux[11]~22_combout\,
	cout => \inst|alu1|unidad_logica|aux[11]~23\);

-- Location: LCCOMB_X24_Y13_N24
\inst|reggy~325\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~325_combout\ = (\inst|REG_A\(11) & ((\inst|alu1|Mux17~0_combout\) # ((!\inst|alu1|Mux16~0_combout\ & \inst|REG_B\(11))))) # (!\inst|REG_A\(11) & (\inst|alu1|Mux17~0_combout\ & ((\inst|alu1|Mux16~0_combout\) # (\inst|REG_B\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(11),
	datab => \inst|alu1|Mux16~0_combout\,
	datac => \inst|alu1|Mux17~0_combout\,
	datad => \inst|REG_B\(11),
	combout => \inst|reggy~325_combout\);

-- Location: LCCOMB_X24_Y13_N30
\inst|reggy~326\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~326_combout\ = (\inst|alu1|Mux16~0_combout\ & ((\inst|reggy~325_combout\ & ((\inst|alu1|unidad_logica|aux[11]~22_combout\))) # (!\inst|reggy~325_combout\ & (!\inst|REG_A\(11))))) # (!\inst|alu1|Mux16~0_combout\ & 
-- (((\inst|reggy~325_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(11),
	datab => \inst|alu1|Mux16~0_combout\,
	datac => \inst|alu1|unidad_logica|aux[11]~22_combout\,
	datad => \inst|reggy~325_combout\,
	combout => \inst|reggy~326_combout\);

-- Location: LCCOMB_X19_Y13_N24
\inst|reggy~327\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~327_combout\ = (\inst|reggy~297_combout\ & ((\inst|reggy~324_combout\) # ((\inst|reggy~199_combout\ & \inst|reggy~326_combout\)))) # (!\inst|reggy~297_combout\ & (\inst|reggy~199_combout\ & ((\inst|reggy~326_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy~297_combout\,
	datab => \inst|reggy~199_combout\,
	datac => \inst|reggy~324_combout\,
	datad => \inst|reggy~326_combout\,
	combout => \inst|reggy~327_combout\);

-- Location: FF_X13_Y17_N3
\inst|reggy~47\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~327_combout\,
	sload => VCC,
	ena => \inst|reggy~181_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy~47_q\);

-- Location: LCCOMB_X12_Y17_N28
\inst|reggy~273\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~273_combout\ = (\inst|reggy~154_combout\ & (((\inst|reggy~155_combout\)))) # (!\inst|reggy~154_combout\ & ((\inst|reggy~155_combout\ & (\inst|reggy~47_q\)) # (!\inst|reggy~155_combout\ & ((\inst|reggy~31_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy~154_combout\,
	datab => \inst|reggy~47_q\,
	datac => \inst|reggy~31_q\,
	datad => \inst|reggy~155_combout\,
	combout => \inst|reggy~273_combout\);

-- Location: LCCOMB_X19_Y14_N16
\inst|reggy~274\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~274_combout\ = (\inst|reggy~273_combout\ & (((\inst|reggy~79_q\)) # (!\inst|reggy~154_combout\))) # (!\inst|reggy~273_combout\ & (\inst|reggy~154_combout\ & ((\inst|reggy~63_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy~273_combout\,
	datab => \inst|reggy~154_combout\,
	datac => \inst|reggy~79_q\,
	datad => \inst|reggy~63_q\,
	combout => \inst|reggy~274_combout\);

-- Location: FF_X19_Y14_N17
\inst|REG_A[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|reggy~274_combout\,
	ena => \inst|OP[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|REG_A\(11));

-- Location: LCCOMB_X23_Y14_N24
\inst|alu1|unidad_logica|aux[12]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|aux[12]~24_combout\ = (\inst|REG_A\(12) & (!\inst|alu1|unidad_logica|aux[11]~23\ & VCC)) # (!\inst|REG_A\(12) & (\inst|alu1|unidad_logica|aux[11]~23\ $ (GND)))
-- \inst|alu1|unidad_logica|aux[12]~25\ = CARRY((!\inst|REG_A\(12) & !\inst|alu1|unidad_logica|aux[11]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(12),
	datad => VCC,
	cin => \inst|alu1|unidad_logica|aux[11]~23\,
	combout => \inst|alu1|unidad_logica|aux[12]~24_combout\,
	cout => \inst|alu1|unidad_logica|aux[12]~25\);

-- Location: LCCOMB_X23_Y13_N30
\inst|reggy~317\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~317_combout\ = (\inst|alu1|Mux16~0_combout\ & ((\inst|reggy~316_combout\ & ((\inst|alu1|unidad_logica|aux[12]~24_combout\))) # (!\inst|reggy~316_combout\ & (!\inst|REG_A\(12))))) # (!\inst|alu1|Mux16~0_combout\ & (\inst|reggy~316_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111001000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux16~0_combout\,
	datab => \inst|reggy~316_combout\,
	datac => \inst|REG_A\(12),
	datad => \inst|alu1|unidad_logica|aux[12]~24_combout\,
	combout => \inst|reggy~317_combout\);

-- Location: LCCOMB_X21_Y14_N14
\inst|REG_D~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|REG_D~15_combout\ = (\inst|MAR\(1) & (!\inst|Equal2~0_combout\ & (\inst|MAR\(0) & \inst|reggy~272_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MAR\(1),
	datab => \inst|Equal2~0_combout\,
	datac => \inst|MAR\(0),
	datad => \inst|reggy~272_combout\,
	combout => \inst|REG_D~15_combout\);

-- Location: FF_X21_Y14_N15
\inst|REG_D[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|REG_D~15_combout\,
	ena => \inst|REG_D[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|REG_D\(12));

-- Location: LCCOMB_X21_Y14_N20
\inst|reggy~312\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~312_combout\ = (\inst|MAR\(11) & (\inst|REG_D\(12) & !\inst|MAR\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MAR\(11),
	datab => \inst|REG_D\(12),
	datac => \inst|MAR\(9),
	combout => \inst|reggy~312_combout\);

-- Location: LCCOMB_X21_Y11_N2
\inst|reggy~313\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~313_combout\ = (\inst|reggy~301_combout\) # ((\inst|MAR\(10) & ((\inst|reggy~302_combout\) # (\inst|reggy~312_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy~301_combout\,
	datab => \inst|reggy~302_combout\,
	datac => \inst|MAR\(10),
	datad => \inst|reggy~312_combout\,
	combout => \inst|reggy~313_combout\);

-- Location: LCCOMB_X21_Y14_N22
\inst|alu1|unidad_aritmetica|mult|multi7|sR:11:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi7|sR:11:sP|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi6|sR:11:sP|Suma~0_combout\ & ((\inst|alu1|unidad_aritmetica|mult|multi7|sR:10:sP|Cout~0_combout\) # ((\inst|REG_A\(4) & \inst|REG_B\(7))))) # 
-- (!\inst|alu1|unidad_aritmetica|mult|multi6|sR:11:sP|Suma~0_combout\ & (\inst|REG_A\(4) & (\inst|REG_B\(7) & \inst|alu1|unidad_aritmetica|mult|multi7|sR:10:sP|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(4),
	datab => \inst|REG_B\(7),
	datac => \inst|alu1|unidad_aritmetica|mult|multi6|sR:11:sP|Suma~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|mult|multi7|sR:10:sP|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi7|sR:11:sP|Cout~0_combout\);

-- Location: LCCOMB_X22_Y17_N14
\inst|alu1|unidad_aritmetica|mult|multi4|sR:11:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi4|sR:11:sP|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi4|sR:10:sP|Cout~0_combout\ & ((\inst|alu1|unidad_aritmetica|mult|multi3|sR:10:sP|Cout~0_combout\) # ((\inst|REG_A\(7) & \inst|REG_B\(4))))) # 
-- (!\inst|alu1|unidad_aritmetica|mult|multi4|sR:10:sP|Cout~0_combout\ & (\inst|REG_A\(7) & (\inst|REG_B\(4) & \inst|alu1|unidad_aritmetica|mult|multi3|sR:10:sP|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(7),
	datab => \inst|alu1|unidad_aritmetica|mult|multi4|sR:10:sP|Cout~0_combout\,
	datac => \inst|REG_B\(4),
	datad => \inst|alu1|unidad_aritmetica|mult|multi3|sR:10:sP|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi4|sR:11:sP|Cout~0_combout\);

-- Location: LCCOMB_X22_Y17_N10
\inst|alu1|unidad_aritmetica|mult|multi5|sR:11:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi5|sR:11:sP|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi5|sR:10:sP|Cout~0_combout\ & ((\inst|alu1|unidad_aritmetica|mult|multi4|sR:11:sP|Suma~0_combout\) # ((\inst|REG_A\(6) & \inst|REG_B\(5))))) # 
-- (!\inst|alu1|unidad_aritmetica|mult|multi5|sR:10:sP|Cout~0_combout\ & (\inst|REG_A\(6) & (\inst|REG_B\(5) & \inst|alu1|unidad_aritmetica|mult|multi4|sR:11:sP|Suma~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(6),
	datab => \inst|REG_B\(5),
	datac => \inst|alu1|unidad_aritmetica|mult|multi5|sR:10:sP|Cout~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|mult|multi4|sR:11:sP|Suma~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi5|sR:11:sP|Cout~0_combout\);

-- Location: LCCOMB_X22_Y17_N26
\inst|alu1|unidad_aritmetica|mult|multi5|sR:12:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi5|sR:12:sP|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|mult|multi4|sR:11:sP|Cout~0_combout\ $ (\inst|alu1|unidad_aritmetica|mult|multi5|sR:11:sP|Cout~0_combout\ $ (((\inst|REG_A\(7) & \inst|REG_B\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(7),
	datab => \inst|REG_B\(5),
	datac => \inst|alu1|unidad_aritmetica|mult|multi4|sR:11:sP|Cout~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|mult|multi5|sR:11:sP|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi5|sR:12:sP|Suma~0_combout\);

-- Location: LCCOMB_X22_Y17_N2
\inst|alu1|unidad_aritmetica|mult|multi6|sR:11:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi6|sR:11:sP|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi6|sR:10:sP|Cout~0_combout\ & ((\inst|alu1|unidad_aritmetica|mult|multi5|sR:11:sP|Suma~0_combout\) # ((\inst|REG_B\(6) & \inst|REG_A\(5))))) # 
-- (!\inst|alu1|unidad_aritmetica|mult|multi6|sR:10:sP|Cout~0_combout\ & (\inst|REG_B\(6) & (\inst|REG_A\(5) & \inst|alu1|unidad_aritmetica|mult|multi5|sR:11:sP|Suma~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(6),
	datab => \inst|REG_A\(5),
	datac => \inst|alu1|unidad_aritmetica|mult|multi6|sR:10:sP|Cout~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|mult|multi5|sR:11:sP|Suma~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi6|sR:11:sP|Cout~0_combout\);

-- Location: LCCOMB_X22_Y17_N22
\inst|alu1|unidad_aritmetica|mult|multi6|sR:12:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi6|sR:12:sP|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|mult|multi5|sR:12:sP|Suma~0_combout\ $ (\inst|alu1|unidad_aritmetica|mult|multi6|sR:11:sP|Cout~0_combout\ $ (((\inst|REG_B\(6) & \inst|REG_A\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(6),
	datab => \inst|REG_A\(6),
	datac => \inst|alu1|unidad_aritmetica|mult|multi5|sR:12:sP|Suma~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|mult|multi6|sR:11:sP|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi6|sR:12:sP|Suma~0_combout\);

-- Location: LCCOMB_X21_Y17_N12
\inst|alu1|unidad_aritmetica|mult|multi7|sR:12:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi7|sR:12:sP|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|mult|multi7|sR:11:sP|Cout~0_combout\ $ (\inst|alu1|unidad_aritmetica|mult|multi6|sR:12:sP|Suma~0_combout\ $ (((\inst|REG_B\(7) & \inst|REG_A\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(7),
	datab => \inst|REG_A\(5),
	datac => \inst|alu1|unidad_aritmetica|mult|multi7|sR:11:sP|Cout~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|mult|multi6|sR:12:sP|Suma~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi7|sR:12:sP|Suma~0_combout\);

-- Location: LCCOMB_X25_Y15_N24
\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~24_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi7|sR:12:sP|Suma~0_combout\ & (!\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~23\ & VCC)) # 
-- (!\inst|alu1|unidad_aritmetica|mult|multi7|sR:12:sP|Suma~0_combout\ & (\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~23\ $ (GND)))
-- \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~25\ = CARRY((!\inst|alu1|unidad_aritmetica|mult|multi7|sR:12:sP|Suma~0_combout\ & !\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|multi7|sR:12:sP|Suma~0_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~23\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~24_combout\,
	cout => \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~25\);

-- Location: LCCOMB_X24_Y11_N0
\inst|reggy~314\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~314_combout\ = (\inst|reggy~355_combout\ & (((\inst|reggy~300_combout\) # (\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~24_combout\)))) # (!\inst|reggy~355_combout\ & (\inst|reggy~313_combout\ & (!\inst|reggy~300_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy~355_combout\,
	datab => \inst|reggy~313_combout\,
	datac => \inst|reggy~300_combout\,
	datad => \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~24_combout\,
	combout => \inst|reggy~314_combout\);

-- Location: LCCOMB_X23_Y13_N0
\inst|alu1|unidad_aritmetica|resta|sR:12:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|resta|sR:12:sP|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|suma|Xop\(12) $ (\inst|alu1|unidad_aritmetica|resta|sR:11:sP|Cout~0_combout\ $ (\inst|alu1|unidad_aritmetica|suma|Yop~11_combout\ $ 
-- (\inst|alu1|unidad_aritmetica|resta|sR:11:sP|Cout2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|suma|Xop\(12),
	datab => \inst|alu1|unidad_aritmetica|resta|sR:11:sP|Cout~0_combout\,
	datac => \inst|alu1|unidad_aritmetica|suma|Yop~11_combout\,
	datad => \inst|alu1|unidad_aritmetica|resta|sR:11:sP|Cout2~4_combout\,
	combout => \inst|alu1|unidad_aritmetica|resta|sR:12:sP|Suma~0_combout\);

-- Location: LCCOMB_X23_Y15_N24
\inst|alu1|unidad_aritmetica|resta|negativo|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|resta|negativo|Add0~24_combout\ = (\inst|alu1|unidad_aritmetica|resta|sR:12:sP|Suma~0_combout\ & (\inst|alu1|unidad_aritmetica|resta|negativo|Add0~23\ $ (GND))) # (!\inst|alu1|unidad_aritmetica|resta|sR:12:sP|Suma~0_combout\ & 
-- (!\inst|alu1|unidad_aritmetica|resta|negativo|Add0~23\ & VCC))
-- \inst|alu1|unidad_aritmetica|resta|negativo|Add0~25\ = CARRY((\inst|alu1|unidad_aritmetica|resta|sR:12:sP|Suma~0_combout\ & !\inst|alu1|unidad_aritmetica|resta|negativo|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|unidad_aritmetica|resta|sR:12:sP|Suma~0_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|resta|negativo|Add0~23\,
	combout => \inst|alu1|unidad_aritmetica|resta|negativo|Add0~24_combout\,
	cout => \inst|alu1|unidad_aritmetica|resta|negativo|Add0~25\);

-- Location: LCCOMB_X23_Y11_N2
\inst|alu1|unidad_aritmetica|suma|sR:12:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|sR:12:sP|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|suma|Yop~11_combout\ $ (\inst|alu1|unidad_aritmetica|suma|sR:11:sP|Cout2~0_combout\ $ (\inst|alu1|unidad_aritmetica|suma|Xop\(12) $ 
-- (\inst|alu1|unidad_aritmetica|suma|sR:11:sP|Cout~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|suma|Yop~11_combout\,
	datab => \inst|alu1|unidad_aritmetica|suma|sR:11:sP|Cout2~0_combout\,
	datac => \inst|alu1|unidad_aritmetica|suma|Xop\(12),
	datad => \inst|alu1|unidad_aritmetica|suma|sR:11:sP|Cout~1_combout\,
	combout => \inst|alu1|unidad_aritmetica|suma|sR:12:sP|Suma~0_combout\);

-- Location: LCCOMB_X22_Y11_N26
\inst|alu1|unidad_aritmetica|suma|negativo|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|negativo|Add0~24_combout\ = (\inst|alu1|unidad_aritmetica|suma|sR:12:sP|Suma~0_combout\ & (!\inst|alu1|unidad_aritmetica|suma|negativo|Add0~23\ & VCC)) # (!\inst|alu1|unidad_aritmetica|suma|sR:12:sP|Suma~0_combout\ & 
-- (\inst|alu1|unidad_aritmetica|suma|negativo|Add0~23\ $ (GND)))
-- \inst|alu1|unidad_aritmetica|suma|negativo|Add0~25\ = CARRY((!\inst|alu1|unidad_aritmetica|suma|sR:12:sP|Suma~0_combout\ & !\inst|alu1|unidad_aritmetica|suma|negativo|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|suma|sR:12:sP|Suma~0_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|suma|negativo|Add0~23\,
	combout => \inst|alu1|unidad_aritmetica|suma|negativo|Add0~24_combout\,
	cout => \inst|alu1|unidad_aritmetica|suma|negativo|Add0~25\);

-- Location: LCCOMB_X24_Y11_N28
\inst|reggy~310\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~310_combout\ = (\inst|alu1|Mux17~0_combout\ & ((\inst|alu1|unidad_aritmetica|resta|negativo|Add0~24_combout\) # ((\inst|reggy~187_combout\)))) # (!\inst|alu1|Mux17~0_combout\ & (((\inst|alu1|unidad_aritmetica|suma|negativo|Add0~24_combout\ & 
-- !\inst|reggy~187_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|resta|negativo|Add0~24_combout\,
	datab => \inst|alu1|unidad_aritmetica|suma|negativo|Add0~24_combout\,
	datac => \inst|alu1|Mux17~0_combout\,
	datad => \inst|reggy~187_combout\,
	combout => \inst|reggy~310_combout\);

-- Location: LCCOMB_X24_Y11_N18
\inst|reggy~311\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~311_combout\ = (\inst|reggy~310_combout\ & (((!\inst|reggy~187_combout\)) # (!\inst|alu1|unidad_aritmetica|resta|sR:12:sP|Suma~0_combout\))) # (!\inst|reggy~310_combout\ & (((\inst|alu1|unidad_aritmetica|suma|sR:12:sP|Suma~0_combout\ & 
-- \inst|reggy~187_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|resta|sR:12:sP|Suma~0_combout\,
	datab => \inst|reggy~310_combout\,
	datac => \inst|alu1|unidad_aritmetica|suma|sR:12:sP|Suma~0_combout\,
	datad => \inst|reggy~187_combout\,
	combout => \inst|reggy~311_combout\);

-- Location: LCCOMB_X24_Y11_N2
\inst|reggy~315\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~315_combout\ = (\inst|reggy~300_combout\ & ((\inst|reggy~314_combout\ & (\inst|alu1|unidad_aritmetica|mult|multi7|sR:12:sP|Suma~0_combout\)) # (!\inst|reggy~314_combout\ & ((\inst|reggy~311_combout\))))) # (!\inst|reggy~300_combout\ & 
-- (\inst|reggy~314_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy~300_combout\,
	datab => \inst|reggy~314_combout\,
	datac => \inst|alu1|unidad_aritmetica|mult|multi7|sR:12:sP|Suma~0_combout\,
	datad => \inst|reggy~311_combout\,
	combout => \inst|reggy~315_combout\);

-- Location: LCCOMB_X19_Y13_N2
\inst|reggy~318\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~318_combout\ = (\inst|reggy~297_combout\ & ((\inst|reggy~315_combout\) # ((\inst|reggy~199_combout\ & \inst|reggy~317_combout\)))) # (!\inst|reggy~297_combout\ & (\inst|reggy~199_combout\ & (\inst|reggy~317_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy~297_combout\,
	datab => \inst|reggy~199_combout\,
	datac => \inst|reggy~317_combout\,
	datad => \inst|reggy~315_combout\,
	combout => \inst|reggy~318_combout\);

-- Location: FF_X12_Y17_N1
\inst|reggy~64\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~318_combout\,
	sload => VCC,
	ena => \inst|reggy~180_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy~64_q\);

-- Location: LCCOMB_X12_Y17_N10
\inst|reggy~271\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~271_combout\ = (\inst|reggy~154_combout\ & ((\inst|reggy~64_q\) # ((\inst|reggy~155_combout\)))) # (!\inst|reggy~154_combout\ & (((\inst|reggy~32_q\ & !\inst|reggy~155_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy~154_combout\,
	datab => \inst|reggy~64_q\,
	datac => \inst|reggy~32_q\,
	datad => \inst|reggy~155_combout\,
	combout => \inst|reggy~271_combout\);

-- Location: LCCOMB_X19_Y14_N14
\inst|reggy~272\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~272_combout\ = (\inst|reggy~271_combout\ & ((\inst|reggy~80_q\) # ((!\inst|reggy~155_combout\)))) # (!\inst|reggy~271_combout\ & (((\inst|reggy~155_combout\ & \inst|reggy~48_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy~271_combout\,
	datab => \inst|reggy~80_q\,
	datac => \inst|reggy~155_combout\,
	datad => \inst|reggy~48_q\,
	combout => \inst|reggy~272_combout\);

-- Location: FF_X19_Y14_N15
\inst|REG_A[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|reggy~272_combout\,
	ena => \inst|OP[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|REG_A\(12));

-- Location: LCCOMB_X23_Y14_N26
\inst|alu1|unidad_logica|aux[13]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|aux[13]~26_combout\ = (\inst|REG_A\(13) & ((\inst|alu1|unidad_logica|aux[12]~25\) # (GND))) # (!\inst|REG_A\(13) & (!\inst|alu1|unidad_logica|aux[12]~25\))
-- \inst|alu1|unidad_logica|aux[13]~27\ = CARRY((\inst|REG_A\(13)) # (!\inst|alu1|unidad_logica|aux[12]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|REG_A\(13),
	datad => VCC,
	cin => \inst|alu1|unidad_logica|aux[12]~25\,
	combout => \inst|alu1|unidad_logica|aux[13]~26_combout\,
	cout => \inst|alu1|unidad_logica|aux[13]~27\);

-- Location: LCCOMB_X23_Y13_N14
\inst|reggy~307\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~307_combout\ = (\inst|alu1|Mux16~0_combout\ & (((\inst|alu1|Mux17~0_combout\)))) # (!\inst|alu1|Mux16~0_combout\ & ((\inst|REG_A\(13) & ((\inst|REG_B\(13)) # (\inst|alu1|Mux17~0_combout\))) # (!\inst|REG_A\(13) & (\inst|REG_B\(13) & 
-- \inst|alu1|Mux17~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux16~0_combout\,
	datab => \inst|REG_A\(13),
	datac => \inst|REG_B\(13),
	datad => \inst|alu1|Mux17~0_combout\,
	combout => \inst|reggy~307_combout\);

-- Location: LCCOMB_X19_Y13_N14
\inst|reggy~308\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~308_combout\ = (\inst|alu1|Mux16~0_combout\ & ((\inst|reggy~307_combout\ & ((\inst|alu1|unidad_logica|aux[13]~26_combout\))) # (!\inst|reggy~307_combout\ & (!\inst|REG_A\(13))))) # (!\inst|alu1|Mux16~0_combout\ & 
-- (((\inst|reggy~307_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(13),
	datab => \inst|alu1|Mux16~0_combout\,
	datac => \inst|alu1|unidad_logica|aux[13]~26_combout\,
	datad => \inst|reggy~307_combout\,
	combout => \inst|reggy~308_combout\);

-- Location: LCCOMB_X22_Y17_N0
\inst|alu1|unidad_aritmetica|mult|multi6|sR:12:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi6|sR:12:sP|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi5|sR:12:sP|Suma~0_combout\ & ((\inst|alu1|unidad_aritmetica|mult|multi6|sR:11:sP|Cout~0_combout\) # ((\inst|REG_B\(6) & \inst|REG_A\(6))))) # 
-- (!\inst|alu1|unidad_aritmetica|mult|multi5|sR:12:sP|Suma~0_combout\ & (\inst|REG_B\(6) & (\inst|REG_A\(6) & \inst|alu1|unidad_aritmetica|mult|multi6|sR:11:sP|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(6),
	datab => \inst|REG_A\(6),
	datac => \inst|alu1|unidad_aritmetica|mult|multi5|sR:12:sP|Suma~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|mult|multi6|sR:11:sP|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi6|sR:12:sP|Cout~0_combout\);

-- Location: LCCOMB_X22_Y17_N24
\inst|alu1|unidad_aritmetica|mult|multi5|sR:12:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi5|sR:12:sP|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi4|sR:11:sP|Cout~0_combout\ & ((\inst|alu1|unidad_aritmetica|mult|multi5|sR:11:sP|Cout~0_combout\) # ((\inst|REG_A\(7) & \inst|REG_B\(5))))) # 
-- (!\inst|alu1|unidad_aritmetica|mult|multi4|sR:11:sP|Cout~0_combout\ & (\inst|REG_A\(7) & (\inst|REG_B\(5) & \inst|alu1|unidad_aritmetica|mult|multi5|sR:11:sP|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(7),
	datab => \inst|REG_B\(5),
	datac => \inst|alu1|unidad_aritmetica|mult|multi4|sR:11:sP|Cout~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|mult|multi5|sR:11:sP|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi5|sR:12:sP|Cout~0_combout\);

-- Location: LCCOMB_X21_Y17_N30
\inst|alu1|unidad_aritmetica|mult|multi6|sR:13:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi6|sR:13:sP|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|mult|multi6|sR:12:sP|Cout~0_combout\ $ (\inst|alu1|unidad_aritmetica|mult|multi5|sR:12:sP|Cout~0_combout\ $ (((\inst|REG_B\(6) & \inst|REG_A\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(6),
	datab => \inst|alu1|unidad_aritmetica|mult|multi6|sR:12:sP|Cout~0_combout\,
	datac => \inst|REG_A\(7),
	datad => \inst|alu1|unidad_aritmetica|mult|multi5|sR:12:sP|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi6|sR:13:sP|Suma~0_combout\);

-- Location: LCCOMB_X21_Y17_N16
\inst|alu1|unidad_aritmetica|mult|multi7|sR:12:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi7|sR:12:sP|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi7|sR:11:sP|Cout~0_combout\ & ((\inst|alu1|unidad_aritmetica|mult|multi6|sR:12:sP|Suma~0_combout\) # ((\inst|REG_B\(7) & \inst|REG_A\(5))))) # 
-- (!\inst|alu1|unidad_aritmetica|mult|multi7|sR:11:sP|Cout~0_combout\ & (\inst|REG_B\(7) & (\inst|REG_A\(5) & \inst|alu1|unidad_aritmetica|mult|multi6|sR:12:sP|Suma~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(7),
	datab => \inst|REG_A\(5),
	datac => \inst|alu1|unidad_aritmetica|mult|multi7|sR:11:sP|Cout~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|mult|multi6|sR:12:sP|Suma~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi7|sR:12:sP|Cout~0_combout\);

-- Location: LCCOMB_X21_Y17_N18
\inst|alu1|unidad_aritmetica|mult|multi7|sR:13:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi7|sR:13:sP|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|mult|multi6|sR:13:sP|Suma~0_combout\ $ (\inst|alu1|unidad_aritmetica|mult|multi7|sR:12:sP|Cout~0_combout\ $ (((\inst|REG_B\(7) & \inst|REG_A\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(7),
	datab => \inst|REG_A\(6),
	datac => \inst|alu1|unidad_aritmetica|mult|multi6|sR:13:sP|Suma~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|mult|multi7|sR:12:sP|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi7|sR:13:sP|Suma~0_combout\);

-- Location: LCCOMB_X23_Y11_N20
\inst|alu1|unidad_aritmetica|suma|sR:13:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|sR:13:sP|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|suma|sR:12:sP|Cout2~4_combout\ $ (\inst|alu1|unidad_aritmetica|suma|Xop\(13) $ (\inst|alu1|unidad_aritmetica|suma|Yop~12_combout\ $ 
-- (\inst|alu1|unidad_aritmetica|suma|sR:12:sP|Cout~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|suma|sR:12:sP|Cout2~4_combout\,
	datab => \inst|alu1|unidad_aritmetica|suma|Xop\(13),
	datac => \inst|alu1|unidad_aritmetica|suma|Yop~12_combout\,
	datad => \inst|alu1|unidad_aritmetica|suma|sR:12:sP|Cout~1_combout\,
	combout => \inst|alu1|unidad_aritmetica|suma|sR:13:sP|Suma~0_combout\);

-- Location: LCCOMB_X23_Y13_N26
\inst|alu1|unidad_aritmetica|resta|sR:13:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|resta|sR:13:sP|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|resta|sR:12:sP|Cout~0_combout\ $ (\inst|alu1|unidad_aritmetica|suma|Yop~12_combout\ $ (\inst|alu1|unidad_aritmetica|resta|sR:12:sP|Cout2~4_combout\ $ 
-- (\inst|alu1|unidad_aritmetica|suma|Xop\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|resta|sR:12:sP|Cout~0_combout\,
	datab => \inst|alu1|unidad_aritmetica|suma|Yop~12_combout\,
	datac => \inst|alu1|unidad_aritmetica|resta|sR:12:sP|Cout2~4_combout\,
	datad => \inst|alu1|unidad_aritmetica|suma|Xop\(13),
	combout => \inst|alu1|unidad_aritmetica|resta|sR:13:sP|Suma~0_combout\);

-- Location: LCCOMB_X22_Y11_N28
\inst|alu1|unidad_aritmetica|suma|negativo|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|negativo|Add0~26_combout\ = (\inst|alu1|unidad_aritmetica|suma|sR:13:sP|Suma~0_combout\ & ((\inst|alu1|unidad_aritmetica|suma|negativo|Add0~25\) # (GND))) # (!\inst|alu1|unidad_aritmetica|suma|sR:13:sP|Suma~0_combout\ & 
-- (!\inst|alu1|unidad_aritmetica|suma|negativo|Add0~25\))
-- \inst|alu1|unidad_aritmetica|suma|negativo|Add0~27\ = CARRY((\inst|alu1|unidad_aritmetica|suma|sR:13:sP|Suma~0_combout\) # (!\inst|alu1|unidad_aritmetica|suma|negativo|Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|suma|sR:13:sP|Suma~0_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|suma|negativo|Add0~25\,
	combout => \inst|alu1|unidad_aritmetica|suma|negativo|Add0~26_combout\,
	cout => \inst|alu1|unidad_aritmetica|suma|negativo|Add0~27\);

-- Location: LCCOMB_X23_Y15_N26
\inst|alu1|unidad_aritmetica|resta|negativo|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|resta|negativo|Add0~26_combout\ = (\inst|alu1|unidad_aritmetica|resta|sR:13:sP|Suma~0_combout\ & (!\inst|alu1|unidad_aritmetica|resta|negativo|Add0~25\)) # (!\inst|alu1|unidad_aritmetica|resta|sR:13:sP|Suma~0_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|resta|negativo|Add0~25\) # (GND)))
-- \inst|alu1|unidad_aritmetica|resta|negativo|Add0~27\ = CARRY((!\inst|alu1|unidad_aritmetica|resta|negativo|Add0~25\) # (!\inst|alu1|unidad_aritmetica|resta|sR:13:sP|Suma~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|unidad_aritmetica|resta|sR:13:sP|Suma~0_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|resta|negativo|Add0~25\,
	combout => \inst|alu1|unidad_aritmetica|resta|negativo|Add0~26_combout\,
	cout => \inst|alu1|unidad_aritmetica|resta|negativo|Add0~27\);

-- Location: LCCOMB_X21_Y11_N28
\inst|reggy~298\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~298_combout\ = (\inst|alu1|Mux17~0_combout\ & (((\inst|alu1|unidad_aritmetica|resta|negativo|Add0~26_combout\) # (\inst|reggy~187_combout\)))) # (!\inst|alu1|Mux17~0_combout\ & (\inst|alu1|unidad_aritmetica|suma|negativo|Add0~26_combout\ & 
-- ((!\inst|reggy~187_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|suma|negativo|Add0~26_combout\,
	datab => \inst|alu1|Mux17~0_combout\,
	datac => \inst|alu1|unidad_aritmetica|resta|negativo|Add0~26_combout\,
	datad => \inst|reggy~187_combout\,
	combout => \inst|reggy~298_combout\);

-- Location: LCCOMB_X21_Y11_N10
\inst|reggy~299\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~299_combout\ = (\inst|reggy~187_combout\ & ((\inst|reggy~298_combout\ & ((!\inst|alu1|unidad_aritmetica|resta|sR:13:sP|Suma~0_combout\))) # (!\inst|reggy~298_combout\ & (\inst|alu1|unidad_aritmetica|suma|sR:13:sP|Suma~0_combout\)))) # 
-- (!\inst|reggy~187_combout\ & (((\inst|reggy~298_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy~187_combout\,
	datab => \inst|alu1|unidad_aritmetica|suma|sR:13:sP|Suma~0_combout\,
	datac => \inst|alu1|unidad_aritmetica|resta|sR:13:sP|Suma~0_combout\,
	datad => \inst|reggy~298_combout\,
	combout => \inst|reggy~299_combout\);

-- Location: LCCOMB_X21_Y14_N6
\inst|REG_D~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|REG_D~14_combout\ = (\inst|MAR\(1) & (!\inst|Equal2~0_combout\ & (\inst|MAR\(0) & \inst|reggy~270_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MAR\(1),
	datab => \inst|Equal2~0_combout\,
	datac => \inst|MAR\(0),
	datad => \inst|reggy~270_combout\,
	combout => \inst|REG_D~14_combout\);

-- Location: FF_X21_Y14_N7
\inst|REG_D[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|REG_D~14_combout\,
	ena => \inst|REG_D[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|REG_D\(13));

-- Location: LCCOMB_X21_Y14_N4
\inst|reggy~303\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~303_combout\ = (\inst|MAR\(11) & (!\inst|MAR\(9) & \inst|REG_D\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MAR\(11),
	datac => \inst|MAR\(9),
	datad => \inst|REG_D\(13),
	combout => \inst|reggy~303_combout\);

-- Location: LCCOMB_X21_Y11_N20
\inst|reggy~304\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~304_combout\ = (\inst|reggy~301_combout\) # ((\inst|MAR\(10) & ((\inst|reggy~303_combout\) # (\inst|reggy~302_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy~301_combout\,
	datab => \inst|reggy~303_combout\,
	datac => \inst|MAR\(10),
	datad => \inst|reggy~302_combout\,
	combout => \inst|reggy~304_combout\);

-- Location: LCCOMB_X21_Y11_N14
\inst|reggy~305\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~305_combout\ = (\inst|reggy~355_combout\ & (((\inst|reggy~300_combout\)))) # (!\inst|reggy~355_combout\ & ((\inst|reggy~300_combout\ & (\inst|reggy~299_combout\)) # (!\inst|reggy~300_combout\ & ((\inst|reggy~304_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy~299_combout\,
	datab => \inst|reggy~304_combout\,
	datac => \inst|reggy~355_combout\,
	datad => \inst|reggy~300_combout\,
	combout => \inst|reggy~305_combout\);

-- Location: LCCOMB_X25_Y15_N26
\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~26_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi7|sR:13:sP|Suma~0_combout\ & ((\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~25\) # (GND))) # 
-- (!\inst|alu1|unidad_aritmetica|mult|multi7|sR:13:sP|Suma~0_combout\ & (!\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~25\))
-- \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~27\ = CARRY((\inst|alu1|unidad_aritmetica|mult|multi7|sR:13:sP|Suma~0_combout\) # (!\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|unidad_aritmetica|mult|multi7|sR:13:sP|Suma~0_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~25\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~26_combout\,
	cout => \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~27\);

-- Location: LCCOMB_X21_Y11_N16
\inst|reggy~306\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~306_combout\ = (\inst|reggy~355_combout\ & ((\inst|reggy~305_combout\ & (\inst|alu1|unidad_aritmetica|mult|multi7|sR:13:sP|Suma~0_combout\)) # (!\inst|reggy~305_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~26_combout\))))) # (!\inst|reggy~355_combout\ & (((\inst|reggy~305_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|multi7|sR:13:sP|Suma~0_combout\,
	datab => \inst|reggy~355_combout\,
	datac => \inst|reggy~305_combout\,
	datad => \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~26_combout\,
	combout => \inst|reggy~306_combout\);

-- Location: LCCOMB_X19_Y13_N26
\inst|reggy~309\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~309_combout\ = (\inst|reggy~199_combout\ & ((\inst|reggy~308_combout\) # ((\inst|reggy~306_combout\ & \inst|reggy~297_combout\)))) # (!\inst|reggy~199_combout\ & (((\inst|reggy~306_combout\ & \inst|reggy~297_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy~199_combout\,
	datab => \inst|reggy~308_combout\,
	datac => \inst|reggy~306_combout\,
	datad => \inst|reggy~297_combout\,
	combout => \inst|reggy~309_combout\);

-- Location: FF_X19_Y13_N27
\inst|reggy~81\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|reggy~309_combout\,
	ena => \inst|reggy~183_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy~81_q\);

-- Location: LCCOMB_X12_Y14_N26
\inst|reggy~269\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~269_combout\ = (\inst|reggy~155_combout\ & ((\inst|reggy~49_q\) # ((\inst|reggy~154_combout\)))) # (!\inst|reggy~155_combout\ & (((\inst|reggy~33_q\ & !\inst|reggy~154_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy~49_q\,
	datab => \inst|reggy~155_combout\,
	datac => \inst|reggy~33_q\,
	datad => \inst|reggy~154_combout\,
	combout => \inst|reggy~269_combout\);

-- Location: LCCOMB_X19_Y14_N4
\inst|reggy~270\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~270_combout\ = (\inst|reggy~154_combout\ & ((\inst|reggy~269_combout\ & (\inst|reggy~81_q\)) # (!\inst|reggy~269_combout\ & ((\inst|reggy~65_q\))))) # (!\inst|reggy~154_combout\ & (((\inst|reggy~269_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy~81_q\,
	datab => \inst|reggy~154_combout\,
	datac => \inst|reggy~269_combout\,
	datad => \inst|reggy~65_q\,
	combout => \inst|reggy~270_combout\);

-- Location: FF_X19_Y14_N5
\inst|REG_A[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|reggy~270_combout\,
	ena => \inst|OP[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|REG_A\(13));

-- Location: LCCOMB_X23_Y14_N28
\inst|alu1|unidad_logica|aux[14]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|aux[14]~28_combout\ = (\inst|REG_A\(14) & (!\inst|alu1|unidad_logica|aux[13]~27\ & VCC)) # (!\inst|REG_A\(14) & (\inst|alu1|unidad_logica|aux[13]~27\ $ (GND)))
-- \inst|alu1|unidad_logica|aux[14]~29\ = CARRY((!\inst|REG_A\(14) & !\inst|alu1|unidad_logica|aux[13]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|REG_A\(14),
	datad => VCC,
	cin => \inst|alu1|unidad_logica|aux[13]~27\,
	combout => \inst|alu1|unidad_logica|aux[14]~28_combout\,
	cout => \inst|alu1|unidad_logica|aux[14]~29\);

-- Location: LCCOMB_X19_Y14_N28
\inst|reggy~353\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~353_combout\ = (\inst|alu1|Mux16~0_combout\ & ((\inst|reggy~352_combout\ & (\inst|alu1|unidad_logica|aux[14]~28_combout\)) # (!\inst|reggy~352_combout\ & ((!\inst|REG_A\(14)))))) # (!\inst|alu1|Mux16~0_combout\ & (\inst|reggy~352_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux16~0_combout\,
	datab => \inst|reggy~352_combout\,
	datac => \inst|alu1|unidad_logica|aux[14]~28_combout\,
	datad => \inst|REG_A\(14),
	combout => \inst|reggy~353_combout\);

-- Location: LCCOMB_X22_Y13_N18
\inst|alu1|unidad_aritmetica|resta|sR:14:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|resta|sR:14:sP|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|resta|sR:13:sP|Cout~0_combout\ $ (\inst|alu1|unidad_aritmetica|suma|Xop\(14) $ (\inst|alu1|unidad_aritmetica|suma|Yop~13_combout\ $ 
-- (\inst|alu1|unidad_aritmetica|resta|sR:13:sP|Cout2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|resta|sR:13:sP|Cout~0_combout\,
	datab => \inst|alu1|unidad_aritmetica|suma|Xop\(14),
	datac => \inst|alu1|unidad_aritmetica|suma|Yop~13_combout\,
	datad => \inst|alu1|unidad_aritmetica|resta|sR:13:sP|Cout2~4_combout\,
	combout => \inst|alu1|unidad_aritmetica|resta|sR:14:sP|Suma~0_combout\);

-- Location: LCCOMB_X22_Y13_N8
\inst|alu1|unidad_aritmetica|suma|sR:14:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|sR:14:sP|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|suma|Yop~13_combout\ $ (\inst|alu1|unidad_aritmetica|suma|Xop\(14) $ (\inst|alu1|unidad_aritmetica|suma|sR:13:sP|Cout2~4_combout\ $ 
-- (\inst|alu1|unidad_aritmetica|suma|sR:13:sP|Cout~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|suma|Yop~13_combout\,
	datab => \inst|alu1|unidad_aritmetica|suma|Xop\(14),
	datac => \inst|alu1|unidad_aritmetica|suma|sR:13:sP|Cout2~4_combout\,
	datad => \inst|alu1|unidad_aritmetica|suma|sR:13:sP|Cout~1_combout\,
	combout => \inst|alu1|unidad_aritmetica|suma|sR:14:sP|Suma~0_combout\);

-- Location: LCCOMB_X23_Y15_N28
\inst|alu1|unidad_aritmetica|resta|negativo|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|resta|negativo|Add0~28_combout\ = \inst|alu1|unidad_aritmetica|resta|negativo|Add0~27\ $ (!\inst|alu1|unidad_aritmetica|resta|sR:14:sP|Suma~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|alu1|unidad_aritmetica|resta|sR:14:sP|Suma~0_combout\,
	cin => \inst|alu1|unidad_aritmetica|resta|negativo|Add0~27\,
	combout => \inst|alu1|unidad_aritmetica|resta|negativo|Add0~28_combout\);

-- Location: LCCOMB_X22_Y11_N30
\inst|alu1|unidad_aritmetica|suma|negativo|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|negativo|Add0~28_combout\ = \inst|alu1|unidad_aritmetica|suma|negativo|Add0~27\ $ (\inst|alu1|unidad_aritmetica|suma|sR:14:sP|Suma~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|alu1|unidad_aritmetica|suma|sR:14:sP|Suma~0_combout\,
	cin => \inst|alu1|unidad_aritmetica|suma|negativo|Add0~27\,
	combout => \inst|alu1|unidad_aritmetica|suma|negativo|Add0~28_combout\);

-- Location: LCCOMB_X22_Y13_N24
\inst|reggy~346\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~346_combout\ = (\inst|alu1|Mux17~0_combout\ & ((\inst|alu1|unidad_aritmetica|resta|negativo|Add0~28_combout\) # ((\inst|reggy~187_combout\)))) # (!\inst|alu1|Mux17~0_combout\ & (((!\inst|reggy~187_combout\ & 
-- \inst|alu1|unidad_aritmetica|suma|negativo|Add0~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|resta|negativo|Add0~28_combout\,
	datab => \inst|alu1|Mux17~0_combout\,
	datac => \inst|reggy~187_combout\,
	datad => \inst|alu1|unidad_aritmetica|suma|negativo|Add0~28_combout\,
	combout => \inst|reggy~346_combout\);

-- Location: LCCOMB_X22_Y13_N6
\inst|reggy~347\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~347_combout\ = (\inst|reggy~187_combout\ & ((\inst|reggy~346_combout\ & (!\inst|alu1|unidad_aritmetica|resta|sR:14:sP|Suma~0_combout\)) # (!\inst|reggy~346_combout\ & ((\inst|alu1|unidad_aritmetica|suma|sR:14:sP|Suma~0_combout\))))) # 
-- (!\inst|reggy~187_combout\ & (((\inst|reggy~346_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|resta|sR:14:sP|Suma~0_combout\,
	datab => \inst|alu1|unidad_aritmetica|suma|sR:14:sP|Suma~0_combout\,
	datac => \inst|reggy~187_combout\,
	datad => \inst|reggy~346_combout\,
	combout => \inst|reggy~347_combout\);

-- Location: LCCOMB_X21_Y17_N0
\inst|alu1|unidad_aritmetica|mult|multi6|sR:13:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi6|sR:13:sP|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi6|sR:12:sP|Cout~0_combout\ & ((\inst|alu1|unidad_aritmetica|mult|multi5|sR:12:sP|Cout~0_combout\) # ((\inst|REG_B\(6) & \inst|REG_A\(7))))) # 
-- (!\inst|alu1|unidad_aritmetica|mult|multi6|sR:12:sP|Cout~0_combout\ & (\inst|REG_B\(6) & (\inst|REG_A\(7) & \inst|alu1|unidad_aritmetica|mult|multi5|sR:12:sP|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(6),
	datab => \inst|alu1|unidad_aritmetica|mult|multi6|sR:12:sP|Cout~0_combout\,
	datac => \inst|REG_A\(7),
	datad => \inst|alu1|unidad_aritmetica|mult|multi5|sR:12:sP|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi6|sR:13:sP|Cout~0_combout\);

-- Location: LCCOMB_X21_Y17_N22
\inst|alu1|unidad_aritmetica|mult|multi7|sR:14:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi7|sR:14:sP|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|mult|multi7|sR:13:sP|Cout~0_combout\ $ (\inst|alu1|unidad_aritmetica|mult|multi6|sR:13:sP|Cout~0_combout\ $ (((\inst|REG_B\(7) & \inst|REG_A\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|multi7|sR:13:sP|Cout~0_combout\,
	datab => \inst|REG_B\(7),
	datac => \inst|REG_A\(7),
	datad => \inst|alu1|unidad_aritmetica|mult|multi6|sR:13:sP|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi7|sR:14:sP|Suma~0_combout\);

-- Location: LCCOMB_X21_Y14_N16
\inst|REG_D~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|REG_D~19_combout\ = (\inst|MAR\(1) & (!\inst|Equal2~0_combout\ & (\inst|MAR\(0) & \inst|reggy~290_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MAR\(1),
	datab => \inst|Equal2~0_combout\,
	datac => \inst|MAR\(0),
	datad => \inst|reggy~290_combout\,
	combout => \inst|REG_D~19_combout\);

-- Location: FF_X21_Y14_N17
\inst|REG_D[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|REG_D~19_combout\,
	ena => \inst|REG_D[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|REG_D\(14));

-- Location: LCCOMB_X21_Y14_N26
\inst|reggy~348\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~348_combout\ = (\inst|MAR\(11) & (!\inst|MAR\(9) & \inst|REG_D\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MAR\(11),
	datac => \inst|MAR\(9),
	datad => \inst|REG_D\(14),
	combout => \inst|reggy~348_combout\);

-- Location: LCCOMB_X21_Y11_N0
\inst|reggy~349\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~349_combout\ = (\inst|reggy~301_combout\) # ((\inst|MAR\(10) & ((\inst|reggy~302_combout\) # (\inst|reggy~348_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy~301_combout\,
	datab => \inst|reggy~302_combout\,
	datac => \inst|MAR\(10),
	datad => \inst|reggy~348_combout\,
	combout => \inst|reggy~349_combout\);

-- Location: LCCOMB_X25_Y15_N28
\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~28_combout\ = \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~27\ $ (\inst|alu1|unidad_aritmetica|mult|multi7|sR:14:sP|Suma~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|alu1|unidad_aritmetica|mult|multi7|sR:14:sP|Suma~0_combout\,
	cin => \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~27\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~28_combout\);

-- Location: LCCOMB_X22_Y13_N4
\inst|reggy~350\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~350_combout\ = (\inst|reggy~355_combout\ & (((\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~28_combout\) # (\inst|reggy~300_combout\)))) # (!\inst|reggy~355_combout\ & (\inst|reggy~349_combout\ & ((!\inst|reggy~300_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy~355_combout\,
	datab => \inst|reggy~349_combout\,
	datac => \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~28_combout\,
	datad => \inst|reggy~300_combout\,
	combout => \inst|reggy~350_combout\);

-- Location: LCCOMB_X22_Y13_N26
\inst|reggy~351\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~351_combout\ = (\inst|reggy~350_combout\ & (((\inst|alu1|unidad_aritmetica|mult|multi7|sR:14:sP|Suma~0_combout\) # (!\inst|reggy~300_combout\)))) # (!\inst|reggy~350_combout\ & (\inst|reggy~347_combout\ & ((\inst|reggy~300_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy~347_combout\,
	datab => \inst|alu1|unidad_aritmetica|mult|multi7|sR:14:sP|Suma~0_combout\,
	datac => \inst|reggy~350_combout\,
	datad => \inst|reggy~300_combout\,
	combout => \inst|reggy~351_combout\);

-- Location: LCCOMB_X19_Y13_N4
\inst|reggy~354\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~354_combout\ = (\inst|reggy~297_combout\ & ((\inst|reggy~351_combout\) # ((\inst|reggy~199_combout\ & \inst|reggy~353_combout\)))) # (!\inst|reggy~297_combout\ & (\inst|reggy~199_combout\ & (\inst|reggy~353_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy~297_combout\,
	datab => \inst|reggy~199_combout\,
	datac => \inst|reggy~353_combout\,
	datad => \inst|reggy~351_combout\,
	combout => \inst|reggy~354_combout\);

-- Location: FF_X19_Y13_N11
\inst|reggy~50\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~354_combout\,
	sload => VCC,
	ena => \inst|reggy~181_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy~50_q\);

-- Location: LCCOMB_X16_Y17_N10
\inst|reggy~289\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~289_combout\ = (\inst|reggy~154_combout\ & ((\inst|reggy~66_q\) # ((\inst|reggy~155_combout\)))) # (!\inst|reggy~154_combout\ & (((\inst|reggy~34_q\ & !\inst|reggy~155_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy~154_combout\,
	datab => \inst|reggy~66_q\,
	datac => \inst|reggy~34_q\,
	datad => \inst|reggy~155_combout\,
	combout => \inst|reggy~289_combout\);

-- Location: LCCOMB_X19_Y14_N12
\inst|reggy~290\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~290_combout\ = (\inst|reggy~289_combout\ & (((\inst|reggy~82_q\) # (!\inst|reggy~155_combout\)))) # (!\inst|reggy~289_combout\ & (\inst|reggy~50_q\ & (\inst|reggy~155_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy~50_q\,
	datab => \inst|reggy~289_combout\,
	datac => \inst|reggy~155_combout\,
	datad => \inst|reggy~82_q\,
	combout => \inst|reggy~290_combout\);

-- Location: FF_X19_Y14_N13
\inst|REG_A[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|reggy~290_combout\,
	ena => \inst|OP[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|REG_A\(14));

-- Location: LCCOMB_X23_Y14_N30
\inst|alu1|unidad_logica|aux[15]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|aux[15]~30_combout\ = \inst|alu1|unidad_logica|aux[14]~29\ $ (!\inst|REG_A\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|REG_A\(15),
	cin => \inst|alu1|unidad_logica|aux[14]~29\,
	combout => \inst|alu1|unidad_logica|aux[15]~30_combout\);

-- Location: LCCOMB_X19_Y14_N22
\inst|alu1|unidad_logica|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|Mux0~0_combout\ = (\inst|alu1|Mux16~0_combout\ & (\inst|alu1|Mux17~0_combout\)) # (!\inst|alu1|Mux16~0_combout\ & ((\inst|alu1|Mux17~0_combout\ & ((\inst|REG_B\(15)) # (\inst|REG_A\(15)))) # (!\inst|alu1|Mux17~0_combout\ & 
-- (\inst|REG_B\(15) & \inst|REG_A\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux16~0_combout\,
	datab => \inst|alu1|Mux17~0_combout\,
	datac => \inst|REG_B\(15),
	datad => \inst|REG_A\(15),
	combout => \inst|alu1|unidad_logica|Mux0~0_combout\);

-- Location: LCCOMB_X19_Y14_N20
\inst|alu1|unidad_logica|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|Mux0~1_combout\ = (\inst|alu1|unidad_logica|Mux0~0_combout\ & ((\inst|alu1|unidad_logica|aux[15]~30_combout\) # ((!\inst|alu1|Mux16~0_combout\)))) # (!\inst|alu1|unidad_logica|Mux0~0_combout\ & (((!\inst|REG_A\(15) & 
-- \inst|alu1|Mux16~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_logica|aux[15]~30_combout\,
	datab => \inst|REG_A\(15),
	datac => \inst|alu1|unidad_logica|Mux0~0_combout\,
	datad => \inst|alu1|Mux16~0_combout\,
	combout => \inst|alu1|unidad_logica|Mux0~1_combout\);

-- Location: LCCOMB_X13_Y17_N8
\inst|alu1|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux0~0_combout\ = (\inst|OP\(3) & (\inst|OP\(2))) # (!\inst|OP\(3) & (\inst|alu1|unidad_logica|Mux0~1_combout\ & (\inst|OP\(2) $ (!\inst|reggy~198_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|OP\(2),
	datab => \inst|reggy~198_combout\,
	datac => \inst|OP\(3),
	datad => \inst|alu1|unidad_logica|Mux0~1_combout\,
	combout => \inst|alu1|Mux0~0_combout\);

-- Location: LCCOMB_X13_Y17_N26
\inst|reggy~293\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~293_combout\ = (\inst|Equal1~0_combout\ & (((\inst|alu1|Mux0~0_combout\)))) # (!\inst|Equal1~0_combout\ & (\inst|REG_D\(15) & ((!\inst|OP[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_D\(15),
	datab => \inst|Equal1~0_combout\,
	datac => \inst|alu1|Mux0~0_combout\,
	datad => \inst|OP[3]~1_combout\,
	combout => \inst|reggy~293_combout\);

-- Location: LCCOMB_X18_Y13_N2
\inst|reggy~294\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~294_combout\ = (!\inst|alu1|Mux16~0_combout\ & ((\inst|alu1|Mux17~0_combout\ & ((!\inst|alu1|unidad_aritmetica|resta|Sfaux~2_combout\))) # (!\inst|alu1|Mux17~0_combout\ & (\inst|alu1|unidad_aritmetica|suma|Sfaux~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|suma|Sfaux~1_combout\,
	datab => \inst|alu1|Mux16~0_combout\,
	datac => \inst|alu1|unidad_aritmetica|resta|Sfaux~2_combout\,
	datad => \inst|alu1|Mux17~0_combout\,
	combout => \inst|reggy~294_combout\);

-- Location: LCCOMB_X18_Y13_N20
\inst|reggy~295\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~295_combout\ = (!\inst|Equal1~0_combout\ & ((\inst|reggy~294_combout\) # ((\inst|alu1|unidad_aritmetica|suma|Sfaux~0_combout\ & \inst|alu1|Mux16~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|suma|Sfaux~0_combout\,
	datab => \inst|alu1|Mux16~0_combout\,
	datac => \inst|Equal1~0_combout\,
	datad => \inst|reggy~294_combout\,
	combout => \inst|reggy~295_combout\);

-- Location: LCCOMB_X13_Y17_N6
\inst|reggy~296\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~296_combout\ = (\inst|reggy~293_combout\) # ((\inst|OP[3]~2_combout\ & ((\inst|alu1|Mux0~0_combout\) # (\inst|reggy~295_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy~293_combout\,
	datab => \inst|OP[3]~2_combout\,
	datac => \inst|alu1|Mux0~0_combout\,
	datad => \inst|reggy~295_combout\,
	combout => \inst|reggy~296_combout\);

-- Location: FF_X13_Y17_N25
\inst|reggy~51\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~296_combout\,
	sload => VCC,
	ena => \inst|reggy~181_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy~51_q\);

-- Location: LCCOMB_X16_Y17_N22
\inst|reggy~251\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~251_combout\ = (\inst|MAR\(1) & ((\inst|MAR\(0)) # ((\inst|reggy~67_q\)))) # (!\inst|MAR\(1) & (!\inst|MAR\(0) & ((\inst|reggy~35_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MAR\(1),
	datab => \inst|MAR\(0),
	datac => \inst|reggy~67_q\,
	datad => \inst|reggy~35_q\,
	combout => \inst|reggy~251_combout\);

-- Location: LCCOMB_X16_Y17_N26
\inst|reggy~252\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~252_combout\ = (\inst|MAR\(0) & ((\inst|reggy~251_combout\ & ((\inst|reggy~83_q\))) # (!\inst|reggy~251_combout\ & (\inst|reggy~51_q\)))) # (!\inst|MAR\(0) & (((\inst|reggy~251_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy~51_q\,
	datab => \inst|MAR\(0),
	datac => \inst|reggy~251_combout\,
	datad => \inst|reggy~83_q\,
	combout => \inst|reggy~252_combout\);

-- Location: FF_X18_Y15_N13
\inst|REG_B[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~252_combout\,
	sload => VCC,
	ena => \inst|OP[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|REG_B\(15));

-- Location: LCCOMB_X22_Y14_N22
\inst|alu1|unidad_aritmetica|suma|Yop~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|Yop~2_combout\ = \inst|REG_B\(15) $ (\inst|REG_B\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|REG_B\(15),
	datad => \inst|REG_B\(2),
	combout => \inst|alu1|unidad_aritmetica|suma|Yop~2_combout\);

-- Location: LCCOMB_X22_Y14_N0
\inst|alu1|unidad_aritmetica|resta|sR:2:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|resta|sR:2:sP|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|suma|Yop~2_combout\ $ (\inst|alu1|unidad_aritmetica|resta|sR:1:sP|Cout2~0_combout\ $ (\inst|alu1|unidad_aritmetica|suma|Xop\(2) $ 
-- (\inst|alu1|unidad_aritmetica|resta|sR:1:sP|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|suma|Yop~2_combout\,
	datab => \inst|alu1|unidad_aritmetica|resta|sR:1:sP|Cout2~0_combout\,
	datac => \inst|alu1|unidad_aritmetica|suma|Xop\(2),
	datad => \inst|alu1|unidad_aritmetica|resta|sR:1:sP|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|resta|sR:2:sP|Suma~0_combout\);

-- Location: LCCOMB_X22_Y15_N8
\inst|alu1|unidad_aritmetica|resta|negativo|Sc[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|resta|negativo|Sc[2]~0_combout\ = (\inst|alu1|unidad_aritmetica|resta|negativo|Add0~4_combout\ & ((\inst|alu1|unidad_aritmetica|suma|Sfaux~0_combout\ $ (!\inst|alu1|unidad_aritmetica|resta|sR:14:sP|Cout~0_combout\)) # 
-- (!\inst|alu1|unidad_aritmetica|resta|sR:2:sP|Suma~0_combout\))) # (!\inst|alu1|unidad_aritmetica|resta|negativo|Add0~4_combout\ & (!\inst|alu1|unidad_aritmetica|resta|sR:2:sP|Suma~0_combout\ & (\inst|alu1|unidad_aritmetica|suma|Sfaux~0_combout\ $ 
-- (\inst|alu1|unidad_aritmetica|resta|sR:14:sP|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101100101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|resta|negativo|Add0~4_combout\,
	datab => \inst|alu1|unidad_aritmetica|suma|Sfaux~0_combout\,
	datac => \inst|alu1|unidad_aritmetica|resta|sR:2:sP|Suma~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|resta|sR:14:sP|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|resta|negativo|Sc[2]~0_combout\);

-- Location: LCCOMB_X22_Y15_N18
\inst|alu1|unidad_aritmetica|suma|negativo|Sc[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|negativo|Sc[2]~0_combout\ = (\inst|alu1|unidad_aritmetica|suma|Sfaux~1_combout\ & ((\inst|alu1|unidad_aritmetica|suma|negativo|Add0~4_combout\))) # (!\inst|alu1|unidad_aritmetica|suma|Sfaux~1_combout\ & 
-- (\inst|alu1|unidad_aritmetica|suma|sR:2:sP|Suma~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|suma|sR:2:sP|Suma~0_combout\,
	datab => \inst|alu1|unidad_aritmetica|suma|negativo|Add0~4_combout\,
	datad => \inst|alu1|unidad_aritmetica|suma|Sfaux~1_combout\,
	combout => \inst|alu1|unidad_aritmetica|suma|negativo|Sc[2]~0_combout\);

-- Location: LCCOMB_X22_Y15_N0
\inst|alu1|unidad_aritmetica|Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|Mux13~0_combout\ = (\inst|alu1|Mux16~0_combout\ & (((\inst|alu1|Mux17~0_combout\)))) # (!\inst|alu1|Mux16~0_combout\ & ((\inst|alu1|Mux17~0_combout\ & (\inst|alu1|unidad_aritmetica|resta|negativo|Sc[2]~0_combout\)) # 
-- (!\inst|alu1|Mux17~0_combout\ & ((\inst|alu1|unidad_aritmetica|suma|negativo|Sc[2]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux16~0_combout\,
	datab => \inst|alu1|unidad_aritmetica|resta|negativo|Sc[2]~0_combout\,
	datac => \inst|alu1|Mux17~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|suma|negativo|Sc[2]~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|Mux13~0_combout\);

-- Location: LCCOMB_X24_Y15_N18
\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Sc[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Sc[2]~0_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi7|sR:14:sP|Cout~0_combout\ & (\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~4_combout\)) # 
-- (!\inst|alu1|unidad_aritmetica|mult|multi7|sR:14:sP|Cout~0_combout\ & ((\inst|alu1|unidad_aritmetica|mult|multi1|sR:2:sP|Suma~0_combout\ $ (\inst|alu1|unidad_aritmetica|mult|inter\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~4_combout\,
	datab => \inst|alu1|unidad_aritmetica|mult|multi1|sR:2:sP|Suma~0_combout\,
	datac => \inst|alu1|unidad_aritmetica|mult|multi7|sR:14:sP|Cout~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|mult|inter\(16),
	combout => \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Sc[2]~0_combout\);

-- Location: LCCOMB_X18_Y14_N2
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

-- Location: LCCOMB_X18_Y14_N4
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

-- Location: LCCOMB_X18_Y14_N6
\inst|alu1|unidad_aritmetica|divi|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add0~4_combout\ = (\inst|REG_B\(2) & (!\inst|alu1|unidad_aritmetica|divi|Add0~3\ & VCC)) # (!\inst|REG_B\(2) & (\inst|alu1|unidad_aritmetica|divi|Add0~3\ $ (GND)))
-- \inst|alu1|unidad_aritmetica|divi|Add0~5\ = CARRY((!\inst|REG_B\(2) & !\inst|alu1|unidad_aritmetica|divi|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(2),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add0~3\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add0~4_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add0~5\);

-- Location: LCCOMB_X18_Y14_N8
\inst|alu1|unidad_aritmetica|divi|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add0~6_combout\ = (\inst|REG_B\(3) & ((\inst|alu1|unidad_aritmetica|divi|Add0~5\) # (GND))) # (!\inst|REG_B\(3) & (!\inst|alu1|unidad_aritmetica|divi|Add0~5\))
-- \inst|alu1|unidad_aritmetica|divi|Add0~7\ = CARRY((\inst|REG_B\(3)) # (!\inst|alu1|unidad_aritmetica|divi|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|REG_B\(3),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add0~5\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add0~6_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add0~7\);

-- Location: LCCOMB_X18_Y14_N10
\inst|alu1|unidad_aritmetica|divi|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add0~8_combout\ = (\inst|REG_B\(4) & (!\inst|alu1|unidad_aritmetica|divi|Add0~7\ & VCC)) # (!\inst|REG_B\(4) & (\inst|alu1|unidad_aritmetica|divi|Add0~7\ $ (GND)))
-- \inst|alu1|unidad_aritmetica|divi|Add0~9\ = CARRY((!\inst|REG_B\(4) & !\inst|alu1|unidad_aritmetica|divi|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|REG_B\(4),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add0~7\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add0~8_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add0~9\);

-- Location: LCCOMB_X18_Y14_N12
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

-- Location: LCCOMB_X18_Y14_N14
\inst|alu1|unidad_aritmetica|divi|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add0~12_combout\ = (\inst|REG_B\(6) & (!\inst|alu1|unidad_aritmetica|divi|Add0~11\ & VCC)) # (!\inst|REG_B\(6) & (\inst|alu1|unidad_aritmetica|divi|Add0~11\ $ (GND)))
-- \inst|alu1|unidad_aritmetica|divi|Add0~13\ = CARRY((!\inst|REG_B\(6) & !\inst|alu1|unidad_aritmetica|divi|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(6),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add0~11\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add0~12_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add0~13\);

-- Location: LCCOMB_X18_Y14_N16
\inst|alu1|unidad_aritmetica|divi|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add0~14_combout\ = (\inst|REG_B\(7) & ((\inst|alu1|unidad_aritmetica|divi|Add0~13\) # (GND))) # (!\inst|REG_B\(7) & (!\inst|alu1|unidad_aritmetica|divi|Add0~13\))
-- \inst|alu1|unidad_aritmetica|divi|Add0~15\ = CARRY((\inst|REG_B\(7)) # (!\inst|alu1|unidad_aritmetica|divi|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(7),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add0~13\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add0~14_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add0~15\);

-- Location: LCCOMB_X18_Y14_N18
\inst|alu1|unidad_aritmetica|divi|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add0~16_combout\ = (\inst|REG_B\(8) & (!\inst|alu1|unidad_aritmetica|divi|Add0~15\ & VCC)) # (!\inst|REG_B\(8) & (\inst|alu1|unidad_aritmetica|divi|Add0~15\ $ (GND)))
-- \inst|alu1|unidad_aritmetica|divi|Add0~17\ = CARRY((!\inst|REG_B\(8) & !\inst|alu1|unidad_aritmetica|divi|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(8),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add0~15\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add0~16_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add0~17\);

-- Location: LCCOMB_X18_Y14_N20
\inst|alu1|unidad_aritmetica|divi|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add0~18_combout\ = (\inst|REG_B\(9) & ((\inst|alu1|unidad_aritmetica|divi|Add0~17\) # (GND))) # (!\inst|REG_B\(9) & (!\inst|alu1|unidad_aritmetica|divi|Add0~17\))
-- \inst|alu1|unidad_aritmetica|divi|Add0~19\ = CARRY((\inst|REG_B\(9)) # (!\inst|alu1|unidad_aritmetica|divi|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(9),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add0~17\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add0~18_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add0~19\);

-- Location: LCCOMB_X17_Y14_N20
\inst|alu1|unidad_aritmetica|divi|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan0~2_combout\ = (\inst|REG_B\(7)) # ((\inst|REG_B\(8)) # ((\inst|REG_B\(6)) # (\inst|REG_B\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(7),
	datab => \inst|REG_B\(8),
	datac => \inst|REG_B\(6),
	datad => \inst|REG_B\(5),
	combout => \inst|alu1|unidad_aritmetica|divi|LessThan0~2_combout\);

-- Location: LCCOMB_X17_Y14_N18
\inst|alu1|unidad_aritmetica|divi|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan0~1_combout\ = (\inst|REG_B\(12)) # ((\inst|REG_B\(10)) # ((\inst|REG_B\(11)) # (\inst|REG_B\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(12),
	datab => \inst|REG_B\(10),
	datac => \inst|REG_B\(11),
	datad => \inst|REG_B\(9),
	combout => \inst|alu1|unidad_aritmetica|divi|LessThan0~1_combout\);

-- Location: LCCOMB_X17_Y14_N26
\inst|alu1|unidad_aritmetica|divi|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan0~3_combout\ = (\inst|REG_B\(4)) # ((\inst|REG_B\(3)) # ((\inst|REG_B\(2)) # (\inst|REG_B\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(4),
	datab => \inst|REG_B\(3),
	datac => \inst|REG_B\(2),
	datad => \inst|REG_B\(1),
	combout => \inst|alu1|unidad_aritmetica|divi|LessThan0~3_combout\);

-- Location: LCCOMB_X17_Y14_N10
\inst|alu1|unidad_aritmetica|divi|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan0~0_combout\ = (\inst|REG_B\(14)) # ((\inst|REG_B\(13)) # ((\inst|REG_B\(0) & !\inst|REG_A\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(0),
	datab => \inst|REG_B\(14),
	datac => \inst|REG_A\(7),
	datad => \inst|REG_B\(13),
	combout => \inst|alu1|unidad_aritmetica|divi|LessThan0~0_combout\);

-- Location: LCCOMB_X17_Y14_N8
\inst|alu1|unidad_aritmetica|divi|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan0~4_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan0~2_combout\) # ((\inst|alu1|unidad_aritmetica|divi|LessThan0~1_combout\) # ((\inst|alu1|unidad_aritmetica|divi|LessThan0~3_combout\) # 
-- (\inst|alu1|unidad_aritmetica|divi|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|LessThan0~2_combout\,
	datab => \inst|alu1|unidad_aritmetica|divi|LessThan0~1_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|LessThan0~3_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan0~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|LessThan0~4_combout\);

-- Location: LCCOMB_X18_Y14_N22
\inst|alu1|unidad_aritmetica|divi|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add0~20_combout\ = (\inst|REG_B\(10) & (!\inst|alu1|unidad_aritmetica|divi|Add0~19\ & VCC)) # (!\inst|REG_B\(10) & (\inst|alu1|unidad_aritmetica|divi|Add0~19\ $ (GND)))
-- \inst|alu1|unidad_aritmetica|divi|Add0~21\ = CARRY((!\inst|REG_B\(10) & !\inst|alu1|unidad_aritmetica|divi|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|REG_B\(10),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add0~19\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add0~20_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add0~21\);

-- Location: LCCOMB_X18_Y14_N24
\inst|alu1|unidad_aritmetica|divi|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add0~22_combout\ = (\inst|REG_B\(11) & ((\inst|alu1|unidad_aritmetica|divi|Add0~21\) # (GND))) # (!\inst|REG_B\(11) & (!\inst|alu1|unidad_aritmetica|divi|Add0~21\))
-- \inst|alu1|unidad_aritmetica|divi|Add0~23\ = CARRY((\inst|REG_B\(11)) # (!\inst|alu1|unidad_aritmetica|divi|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|REG_B\(11),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add0~21\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add0~22_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add0~23\);

-- Location: LCCOMB_X18_Y14_N26
\inst|alu1|unidad_aritmetica|divi|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add0~24_combout\ = (\inst|REG_B\(12) & (!\inst|alu1|unidad_aritmetica|divi|Add0~23\ & VCC)) # (!\inst|REG_B\(12) & (\inst|alu1|unidad_aritmetica|divi|Add0~23\ $ (GND)))
-- \inst|alu1|unidad_aritmetica|divi|Add0~25\ = CARRY((!\inst|REG_B\(12) & !\inst|alu1|unidad_aritmetica|divi|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(12),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add0~23\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add0~24_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add0~25\);

-- Location: LCCOMB_X18_Y14_N28
\inst|alu1|unidad_aritmetica|divi|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add0~26_combout\ = \inst|alu1|unidad_aritmetica|divi|Add0~25\ $ (!\inst|REG_B\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|REG_B\(13),
	cin => \inst|alu1|unidad_aritmetica|divi|Add0~25\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add0~26_combout\);

-- Location: LCCOMB_X16_Y14_N30
\inst|alu1|unidad_aritmetica|divi|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add0~28_combout\ = (!\inst|alu1|unidad_aritmetica|divi|LessThan0~4_combout\ & \inst|alu1|unidad_aritmetica|divi|Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|unidad_aritmetica|divi|LessThan0~4_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|Add0~26_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add0~28_combout\);

-- Location: LCCOMB_X17_Y14_N30
\inst|alu1|unidad_aritmetica|divi|Add0~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add0~29_combout\ = (\inst|alu1|unidad_aritmetica|divi|Add0~24_combout\ & !\inst|alu1|unidad_aritmetica|divi|LessThan0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|alu1|unidad_aritmetica|divi|Add0~24_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan0~4_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add0~29_combout\);

-- Location: LCCOMB_X17_Y14_N0
\inst|alu1|unidad_aritmetica|divi|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add0~30_combout\ = (!\inst|alu1|unidad_aritmetica|divi|LessThan0~4_combout\ & \inst|alu1|unidad_aritmetica|divi|Add0~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|alu1|unidad_aritmetica|divi|LessThan0~4_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|Add0~22_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add0~30_combout\);

-- Location: LCCOMB_X17_Y14_N22
\inst|alu1|unidad_aritmetica|divi|Add0~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add0~31_combout\ = (!\inst|alu1|unidad_aritmetica|divi|LessThan0~4_combout\ & \inst|alu1|unidad_aritmetica|divi|Add0~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|alu1|unidad_aritmetica|divi|LessThan0~4_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|Add0~20_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add0~31_combout\);

-- Location: LCCOMB_X17_Y14_N12
\inst|alu1|unidad_aritmetica|divi|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add0~32_combout\ = (\inst|alu1|unidad_aritmetica|divi|Add0~18_combout\ & !\inst|alu1|unidad_aritmetica|divi|LessThan0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|alu1|unidad_aritmetica|divi|Add0~18_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan0~4_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add0~32_combout\);

-- Location: LCCOMB_X17_Y14_N14
\inst|alu1|unidad_aritmetica|divi|Add0~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add0~33_combout\ = (!\inst|alu1|unidad_aritmetica|divi|LessThan0~4_combout\ & \inst|alu1|unidad_aritmetica|divi|Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|alu1|unidad_aritmetica|divi|LessThan0~4_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|Add0~16_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add0~33_combout\);

-- Location: LCCOMB_X17_Y16_N6
\inst|alu1|unidad_aritmetica|divi|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add0~34_combout\ = (!\inst|alu1|unidad_aritmetica|divi|LessThan0~4_combout\ & \inst|alu1|unidad_aritmetica|divi|Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|alu1|unidad_aritmetica|divi|LessThan0~4_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|Add0~14_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add0~34_combout\);

-- Location: LCCOMB_X17_Y14_N24
\inst|alu1|unidad_aritmetica|divi|Add0~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add0~35_combout\ = (\inst|alu1|unidad_aritmetica|divi|Add0~12_combout\ & !\inst|alu1|unidad_aritmetica|divi|LessThan0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|unidad_aritmetica|divi|Add0~12_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan0~4_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add0~35_combout\);

-- Location: LCCOMB_X17_Y14_N6
\inst|alu1|unidad_aritmetica|divi|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add0~36_combout\ = (\inst|alu1|unidad_aritmetica|divi|Add0~10_combout\ & !\inst|alu1|unidad_aritmetica|divi|LessThan0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|unidad_aritmetica|divi|Add0~10_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan0~4_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add0~36_combout\);

-- Location: LCCOMB_X17_Y16_N4
\inst|alu1|unidad_aritmetica|divi|Add0~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add0~37_combout\ = (!\inst|alu1|unidad_aritmetica|divi|LessThan0~4_combout\ & \inst|alu1|unidad_aritmetica|divi|Add0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|alu1|unidad_aritmetica|divi|LessThan0~4_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|Add0~8_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add0~37_combout\);

-- Location: LCCOMB_X17_Y14_N28
\inst|alu1|unidad_aritmetica|divi|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add0~38_combout\ = (!\inst|alu1|unidad_aritmetica|divi|LessThan0~4_combout\ & \inst|alu1|unidad_aritmetica|divi|Add0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|unidad_aritmetica|divi|LessThan0~4_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|Add0~6_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add0~38_combout\);

-- Location: LCCOMB_X17_Y14_N16
\inst|alu1|unidad_aritmetica|divi|Add0~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add0~39_combout\ = (!\inst|alu1|unidad_aritmetica|divi|LessThan0~4_combout\ & \inst|alu1|unidad_aritmetica|divi|Add0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|unidad_aritmetica|divi|LessThan0~4_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|Add0~4_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add0~39_combout\);

-- Location: LCCOMB_X17_Y14_N4
\inst|alu1|unidad_aritmetica|divi|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add0~40_combout\ = (!\inst|alu1|unidad_aritmetica|divi|LessThan0~4_combout\ & \inst|alu1|unidad_aritmetica|divi|Add0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|unidad_aritmetica|divi|LessThan0~4_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|Add0~2_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add0~40_combout\);

-- Location: LCCOMB_X17_Y14_N2
\inst|alu1|unidad_aritmetica|divi|Add0~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add0~41_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan0~4_combout\ & (\inst|REG_A\(7))) # (!\inst|alu1|unidad_aritmetica|divi|LessThan0~4_combout\ & ((\inst|alu1|unidad_aritmetica|divi|Add0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(7),
	datab => \inst|alu1|unidad_aritmetica|divi|LessThan0~4_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|Add0~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add0~41_combout\);

-- Location: LCCOMB_X16_Y14_N0
\inst|alu1|unidad_aritmetica|divi|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan1~1_cout\ = CARRY((\inst|REG_B\(0) & !\inst|REG_A\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(0),
	datab => \inst|REG_A\(6),
	datad => VCC,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan1~1_cout\);

-- Location: LCCOMB_X16_Y14_N2
\inst|alu1|unidad_aritmetica|divi|LessThan1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan1~3_cout\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add0~41_combout\ & ((!\inst|alu1|unidad_aritmetica|divi|LessThan1~1_cout\) # (!\inst|REG_B\(1)))) # (!\inst|alu1|unidad_aritmetica|divi|Add0~41_combout\ & 
-- (!\inst|REG_B\(1) & !\inst|alu1|unidad_aritmetica|divi|LessThan1~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add0~41_combout\,
	datab => \inst|REG_B\(1),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan1~1_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan1~3_cout\);

-- Location: LCCOMB_X16_Y14_N4
\inst|alu1|unidad_aritmetica|divi|LessThan1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan1~5_cout\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add0~40_combout\ & (\inst|REG_B\(2) & !\inst|alu1|unidad_aritmetica|divi|LessThan1~3_cout\)) # (!\inst|alu1|unidad_aritmetica|divi|Add0~40_combout\ & 
-- ((\inst|REG_B\(2)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan1~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add0~40_combout\,
	datab => \inst|REG_B\(2),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan1~3_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan1~5_cout\);

-- Location: LCCOMB_X16_Y14_N6
\inst|alu1|unidad_aritmetica|divi|LessThan1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan1~7_cout\ = CARRY((\inst|REG_B\(3) & (\inst|alu1|unidad_aritmetica|divi|Add0~39_combout\ & !\inst|alu1|unidad_aritmetica|divi|LessThan1~5_cout\)) # (!\inst|REG_B\(3) & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add0~39_combout\) # (!\inst|alu1|unidad_aritmetica|divi|LessThan1~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(3),
	datab => \inst|alu1|unidad_aritmetica|divi|Add0~39_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan1~5_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan1~7_cout\);

-- Location: LCCOMB_X16_Y14_N8
\inst|alu1|unidad_aritmetica|divi|LessThan1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan1~9_cout\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add0~38_combout\ & (\inst|REG_B\(4) & !\inst|alu1|unidad_aritmetica|divi|LessThan1~7_cout\)) # (!\inst|alu1|unidad_aritmetica|divi|Add0~38_combout\ & 
-- ((\inst|REG_B\(4)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan1~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add0~38_combout\,
	datab => \inst|REG_B\(4),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan1~7_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan1~9_cout\);

-- Location: LCCOMB_X16_Y14_N10
\inst|alu1|unidad_aritmetica|divi|LessThan1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan1~11_cout\ = CARRY((\inst|REG_B\(5) & (\inst|alu1|unidad_aritmetica|divi|Add0~37_combout\ & !\inst|alu1|unidad_aritmetica|divi|LessThan1~9_cout\)) # (!\inst|REG_B\(5) & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add0~37_combout\) # (!\inst|alu1|unidad_aritmetica|divi|LessThan1~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(5),
	datab => \inst|alu1|unidad_aritmetica|divi|Add0~37_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan1~9_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan1~11_cout\);

-- Location: LCCOMB_X16_Y14_N12
\inst|alu1|unidad_aritmetica|divi|LessThan1~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan1~13_cout\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add0~36_combout\ & (\inst|REG_B\(6) & !\inst|alu1|unidad_aritmetica|divi|LessThan1~11_cout\)) # (!\inst|alu1|unidad_aritmetica|divi|Add0~36_combout\ & 
-- ((\inst|REG_B\(6)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan1~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add0~36_combout\,
	datab => \inst|REG_B\(6),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan1~11_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan1~13_cout\);

-- Location: LCCOMB_X16_Y14_N14
\inst|alu1|unidad_aritmetica|divi|LessThan1~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan1~15_cout\ = CARRY((\inst|REG_B\(7) & (\inst|alu1|unidad_aritmetica|divi|Add0~35_combout\ & !\inst|alu1|unidad_aritmetica|divi|LessThan1~13_cout\)) # (!\inst|REG_B\(7) & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add0~35_combout\) # (!\inst|alu1|unidad_aritmetica|divi|LessThan1~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(7),
	datab => \inst|alu1|unidad_aritmetica|divi|Add0~35_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan1~13_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan1~15_cout\);

-- Location: LCCOMB_X16_Y14_N16
\inst|alu1|unidad_aritmetica|divi|LessThan1~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan1~17_cout\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add0~34_combout\ & (\inst|REG_B\(8) & !\inst|alu1|unidad_aritmetica|divi|LessThan1~15_cout\)) # (!\inst|alu1|unidad_aritmetica|divi|Add0~34_combout\ & 
-- ((\inst|REG_B\(8)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan1~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add0~34_combout\,
	datab => \inst|REG_B\(8),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan1~15_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan1~17_cout\);

-- Location: LCCOMB_X16_Y14_N18
\inst|alu1|unidad_aritmetica|divi|LessThan1~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan1~19_cout\ = CARRY((\inst|REG_B\(9) & (\inst|alu1|unidad_aritmetica|divi|Add0~33_combout\ & !\inst|alu1|unidad_aritmetica|divi|LessThan1~17_cout\)) # (!\inst|REG_B\(9) & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add0~33_combout\) # (!\inst|alu1|unidad_aritmetica|divi|LessThan1~17_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(9),
	datab => \inst|alu1|unidad_aritmetica|divi|Add0~33_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan1~17_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan1~19_cout\);

-- Location: LCCOMB_X16_Y14_N20
\inst|alu1|unidad_aritmetica|divi|LessThan1~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan1~21_cout\ = CARRY((\inst|REG_B\(10) & ((!\inst|alu1|unidad_aritmetica|divi|LessThan1~19_cout\) # (!\inst|alu1|unidad_aritmetica|divi|Add0~32_combout\))) # (!\inst|REG_B\(10) & 
-- (!\inst|alu1|unidad_aritmetica|divi|Add0~32_combout\ & !\inst|alu1|unidad_aritmetica|divi|LessThan1~19_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(10),
	datab => \inst|alu1|unidad_aritmetica|divi|Add0~32_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan1~19_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan1~21_cout\);

-- Location: LCCOMB_X16_Y14_N22
\inst|alu1|unidad_aritmetica|divi|LessThan1~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan1~23_cout\ = CARRY((\inst|REG_B\(11) & (\inst|alu1|unidad_aritmetica|divi|Add0~31_combout\ & !\inst|alu1|unidad_aritmetica|divi|LessThan1~21_cout\)) # (!\inst|REG_B\(11) & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add0~31_combout\) # (!\inst|alu1|unidad_aritmetica|divi|LessThan1~21_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(11),
	datab => \inst|alu1|unidad_aritmetica|divi|Add0~31_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan1~21_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan1~23_cout\);

-- Location: LCCOMB_X16_Y14_N24
\inst|alu1|unidad_aritmetica|divi|LessThan1~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan1~25_cout\ = CARRY((\inst|REG_B\(12) & ((!\inst|alu1|unidad_aritmetica|divi|LessThan1~23_cout\) # (!\inst|alu1|unidad_aritmetica|divi|Add0~30_combout\))) # (!\inst|REG_B\(12) & 
-- (!\inst|alu1|unidad_aritmetica|divi|Add0~30_combout\ & !\inst|alu1|unidad_aritmetica|divi|LessThan1~23_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(12),
	datab => \inst|alu1|unidad_aritmetica|divi|Add0~30_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan1~23_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan1~25_cout\);

-- Location: LCCOMB_X16_Y14_N26
\inst|alu1|unidad_aritmetica|divi|LessThan1~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan1~27_cout\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add0~29_combout\ & ((!\inst|alu1|unidad_aritmetica|divi|LessThan1~25_cout\) # (!\inst|REG_B\(13)))) # (!\inst|alu1|unidad_aritmetica|divi|Add0~29_combout\ & 
-- (!\inst|REG_B\(13) & !\inst|alu1|unidad_aritmetica|divi|LessThan1~25_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add0~29_combout\,
	datab => \inst|REG_B\(13),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan1~25_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan1~27_cout\);

-- Location: LCCOMB_X16_Y14_N28
\inst|alu1|unidad_aritmetica|divi|LessThan1~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan1~28_combout\ = (\inst|alu1|unidad_aritmetica|divi|Add0~28_combout\ & (!\inst|alu1|unidad_aritmetica|divi|LessThan1~27_cout\ & \inst|REG_B\(14))) # (!\inst|alu1|unidad_aritmetica|divi|Add0~28_combout\ & 
-- ((\inst|REG_B\(14)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan1~27_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add0~28_combout\,
	datad => \inst|REG_B\(14),
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan1~27_cout\,
	combout => \inst|alu1|unidad_aritmetica|divi|LessThan1~28_combout\);

-- Location: LCCOMB_X16_Y16_N2
\inst|alu1|unidad_aritmetica|divi|Add1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add1~24_combout\ = (\inst|REG_A\(6) & ((GND) # (!\inst|REG_B\(0)))) # (!\inst|REG_A\(6) & (\inst|REG_B\(0) $ (GND)))
-- \inst|alu1|unidad_aritmetica|divi|Add1~25\ = CARRY((\inst|REG_A\(6)) # (!\inst|REG_B\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(6),
	datab => \inst|REG_B\(0),
	datad => VCC,
	combout => \inst|alu1|unidad_aritmetica|divi|Add1~24_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add1~25\);

-- Location: LCCOMB_X16_Y16_N4
\inst|alu1|unidad_aritmetica|divi|Add1~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add1~26_combout\ = (\inst|alu1|unidad_aritmetica|divi|Add0~41_combout\ & ((\inst|REG_B\(1) & (!\inst|alu1|unidad_aritmetica|divi|Add1~25\)) # (!\inst|REG_B\(1) & (\inst|alu1|unidad_aritmetica|divi|Add1~25\ & VCC)))) # 
-- (!\inst|alu1|unidad_aritmetica|divi|Add0~41_combout\ & ((\inst|REG_B\(1) & ((\inst|alu1|unidad_aritmetica|divi|Add1~25\) # (GND))) # (!\inst|REG_B\(1) & (!\inst|alu1|unidad_aritmetica|divi|Add1~25\))))
-- \inst|alu1|unidad_aritmetica|divi|Add1~27\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add0~41_combout\ & (\inst|REG_B\(1) & !\inst|alu1|unidad_aritmetica|divi|Add1~25\)) # (!\inst|alu1|unidad_aritmetica|divi|Add0~41_combout\ & ((\inst|REG_B\(1)) # 
-- (!\inst|alu1|unidad_aritmetica|divi|Add1~25\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add0~41_combout\,
	datab => \inst|REG_B\(1),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add1~25\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add1~26_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add1~27\);

-- Location: LCCOMB_X16_Y16_N6
\inst|alu1|unidad_aritmetica|divi|Add1~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add1~28_combout\ = ((\inst|REG_B\(2) $ (\inst|alu1|unidad_aritmetica|divi|Add0~40_combout\ $ (\inst|alu1|unidad_aritmetica|divi|Add1~27\)))) # (GND)
-- \inst|alu1|unidad_aritmetica|divi|Add1~29\ = CARRY((\inst|REG_B\(2) & (\inst|alu1|unidad_aritmetica|divi|Add0~40_combout\ & !\inst|alu1|unidad_aritmetica|divi|Add1~27\)) # (!\inst|REG_B\(2) & ((\inst|alu1|unidad_aritmetica|divi|Add0~40_combout\) # 
-- (!\inst|alu1|unidad_aritmetica|divi|Add1~27\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(2),
	datab => \inst|alu1|unidad_aritmetica|divi|Add0~40_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add1~27\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add1~28_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add1~29\);

-- Location: LCCOMB_X16_Y16_N8
\inst|alu1|unidad_aritmetica|divi|Add1~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add1~30_combout\ = (\inst|REG_B\(3) & ((\inst|alu1|unidad_aritmetica|divi|Add0~39_combout\ & (!\inst|alu1|unidad_aritmetica|divi|Add1~29\)) # (!\inst|alu1|unidad_aritmetica|divi|Add0~39_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add1~29\) # (GND))))) # (!\inst|REG_B\(3) & ((\inst|alu1|unidad_aritmetica|divi|Add0~39_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add1~29\ & VCC)) # (!\inst|alu1|unidad_aritmetica|divi|Add0~39_combout\ & 
-- (!\inst|alu1|unidad_aritmetica|divi|Add1~29\))))
-- \inst|alu1|unidad_aritmetica|divi|Add1~31\ = CARRY((\inst|REG_B\(3) & ((!\inst|alu1|unidad_aritmetica|divi|Add1~29\) # (!\inst|alu1|unidad_aritmetica|divi|Add0~39_combout\))) # (!\inst|REG_B\(3) & (!\inst|alu1|unidad_aritmetica|divi|Add0~39_combout\ & 
-- !\inst|alu1|unidad_aritmetica|divi|Add1~29\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(3),
	datab => \inst|alu1|unidad_aritmetica|divi|Add0~39_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add1~29\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add1~30_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add1~31\);

-- Location: LCCOMB_X16_Y16_N10
\inst|alu1|unidad_aritmetica|divi|Add1~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add1~32_combout\ = ((\inst|alu1|unidad_aritmetica|divi|Add0~38_combout\ $ (\inst|REG_B\(4) $ (\inst|alu1|unidad_aritmetica|divi|Add1~31\)))) # (GND)
-- \inst|alu1|unidad_aritmetica|divi|Add1~33\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add0~38_combout\ & ((!\inst|alu1|unidad_aritmetica|divi|Add1~31\) # (!\inst|REG_B\(4)))) # (!\inst|alu1|unidad_aritmetica|divi|Add0~38_combout\ & (!\inst|REG_B\(4) & 
-- !\inst|alu1|unidad_aritmetica|divi|Add1~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add0~38_combout\,
	datab => \inst|REG_B\(4),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add1~31\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add1~32_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add1~33\);

-- Location: LCCOMB_X16_Y16_N12
\inst|alu1|unidad_aritmetica|divi|Add1~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add1~34_combout\ = (\inst|alu1|unidad_aritmetica|divi|Add0~37_combout\ & ((\inst|REG_B\(5) & (!\inst|alu1|unidad_aritmetica|divi|Add1~33\)) # (!\inst|REG_B\(5) & (\inst|alu1|unidad_aritmetica|divi|Add1~33\ & VCC)))) # 
-- (!\inst|alu1|unidad_aritmetica|divi|Add0~37_combout\ & ((\inst|REG_B\(5) & ((\inst|alu1|unidad_aritmetica|divi|Add1~33\) # (GND))) # (!\inst|REG_B\(5) & (!\inst|alu1|unidad_aritmetica|divi|Add1~33\))))
-- \inst|alu1|unidad_aritmetica|divi|Add1~35\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add0~37_combout\ & (\inst|REG_B\(5) & !\inst|alu1|unidad_aritmetica|divi|Add1~33\)) # (!\inst|alu1|unidad_aritmetica|divi|Add0~37_combout\ & ((\inst|REG_B\(5)) # 
-- (!\inst|alu1|unidad_aritmetica|divi|Add1~33\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add0~37_combout\,
	datab => \inst|REG_B\(5),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add1~33\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add1~34_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add1~35\);

-- Location: LCCOMB_X16_Y16_N14
\inst|alu1|unidad_aritmetica|divi|Add1~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add1~36_combout\ = ((\inst|REG_B\(6) $ (\inst|alu1|unidad_aritmetica|divi|Add0~36_combout\ $ (\inst|alu1|unidad_aritmetica|divi|Add1~35\)))) # (GND)
-- \inst|alu1|unidad_aritmetica|divi|Add1~37\ = CARRY((\inst|REG_B\(6) & (\inst|alu1|unidad_aritmetica|divi|Add0~36_combout\ & !\inst|alu1|unidad_aritmetica|divi|Add1~35\)) # (!\inst|REG_B\(6) & ((\inst|alu1|unidad_aritmetica|divi|Add0~36_combout\) # 
-- (!\inst|alu1|unidad_aritmetica|divi|Add1~35\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(6),
	datab => \inst|alu1|unidad_aritmetica|divi|Add0~36_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add1~35\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add1~36_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add1~37\);

-- Location: LCCOMB_X16_Y16_N16
\inst|alu1|unidad_aritmetica|divi|Add1~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add1~38_combout\ = (\inst|REG_B\(7) & ((\inst|alu1|unidad_aritmetica|divi|Add0~35_combout\ & (!\inst|alu1|unidad_aritmetica|divi|Add1~37\)) # (!\inst|alu1|unidad_aritmetica|divi|Add0~35_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add1~37\) # (GND))))) # (!\inst|REG_B\(7) & ((\inst|alu1|unidad_aritmetica|divi|Add0~35_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add1~37\ & VCC)) # (!\inst|alu1|unidad_aritmetica|divi|Add0~35_combout\ & 
-- (!\inst|alu1|unidad_aritmetica|divi|Add1~37\))))
-- \inst|alu1|unidad_aritmetica|divi|Add1~39\ = CARRY((\inst|REG_B\(7) & ((!\inst|alu1|unidad_aritmetica|divi|Add1~37\) # (!\inst|alu1|unidad_aritmetica|divi|Add0~35_combout\))) # (!\inst|REG_B\(7) & (!\inst|alu1|unidad_aritmetica|divi|Add0~35_combout\ & 
-- !\inst|alu1|unidad_aritmetica|divi|Add1~37\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(7),
	datab => \inst|alu1|unidad_aritmetica|divi|Add0~35_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add1~37\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add1~38_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add1~39\);

-- Location: LCCOMB_X16_Y16_N18
\inst|alu1|unidad_aritmetica|divi|Add1~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add1~40_combout\ = ((\inst|alu1|unidad_aritmetica|divi|Add0~34_combout\ $ (\inst|REG_B\(8) $ (\inst|alu1|unidad_aritmetica|divi|Add1~39\)))) # (GND)
-- \inst|alu1|unidad_aritmetica|divi|Add1~41\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add0~34_combout\ & ((!\inst|alu1|unidad_aritmetica|divi|Add1~39\) # (!\inst|REG_B\(8)))) # (!\inst|alu1|unidad_aritmetica|divi|Add0~34_combout\ & (!\inst|REG_B\(8) & 
-- !\inst|alu1|unidad_aritmetica|divi|Add1~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add0~34_combout\,
	datab => \inst|REG_B\(8),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add1~39\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add1~40_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add1~41\);

-- Location: LCCOMB_X16_Y16_N20
\inst|alu1|unidad_aritmetica|divi|Add1~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add1~42_combout\ = (\inst|alu1|unidad_aritmetica|divi|Add0~33_combout\ & ((\inst|REG_B\(9) & (!\inst|alu1|unidad_aritmetica|divi|Add1~41\)) # (!\inst|REG_B\(9) & (\inst|alu1|unidad_aritmetica|divi|Add1~41\ & VCC)))) # 
-- (!\inst|alu1|unidad_aritmetica|divi|Add0~33_combout\ & ((\inst|REG_B\(9) & ((\inst|alu1|unidad_aritmetica|divi|Add1~41\) # (GND))) # (!\inst|REG_B\(9) & (!\inst|alu1|unidad_aritmetica|divi|Add1~41\))))
-- \inst|alu1|unidad_aritmetica|divi|Add1~43\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add0~33_combout\ & (\inst|REG_B\(9) & !\inst|alu1|unidad_aritmetica|divi|Add1~41\)) # (!\inst|alu1|unidad_aritmetica|divi|Add0~33_combout\ & ((\inst|REG_B\(9)) # 
-- (!\inst|alu1|unidad_aritmetica|divi|Add1~41\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add0~33_combout\,
	datab => \inst|REG_B\(9),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add1~41\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add1~42_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add1~43\);

-- Location: LCCOMB_X16_Y16_N22
\inst|alu1|unidad_aritmetica|divi|Add1~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add1~44_combout\ = ((\inst|REG_B\(10) $ (\inst|alu1|unidad_aritmetica|divi|Add0~32_combout\ $ (\inst|alu1|unidad_aritmetica|divi|Add1~43\)))) # (GND)
-- \inst|alu1|unidad_aritmetica|divi|Add1~45\ = CARRY((\inst|REG_B\(10) & (\inst|alu1|unidad_aritmetica|divi|Add0~32_combout\ & !\inst|alu1|unidad_aritmetica|divi|Add1~43\)) # (!\inst|REG_B\(10) & ((\inst|alu1|unidad_aritmetica|divi|Add0~32_combout\) # 
-- (!\inst|alu1|unidad_aritmetica|divi|Add1~43\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(10),
	datab => \inst|alu1|unidad_aritmetica|divi|Add0~32_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add1~43\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add1~44_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add1~45\);

-- Location: LCCOMB_X17_Y16_N14
\inst|alu1|unidad_aritmetica|divi|Add1~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add1~57_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan1~28_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add0~18_combout\ & (!\inst|alu1|unidad_aritmetica|divi|LessThan0~4_combout\))) # 
-- (!\inst|alu1|unidad_aritmetica|divi|LessThan1~28_combout\ & (((\inst|alu1|unidad_aritmetica|divi|Add1~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add0~18_combout\,
	datab => \inst|alu1|unidad_aritmetica|divi|LessThan0~4_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|LessThan1~28_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|Add1~44_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add1~57_combout\);

-- Location: LCCOMB_X17_Y16_N16
\inst|alu1|unidad_aritmetica|divi|Add1~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add1~58_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan1~28_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add0~16_combout\ & (!\inst|alu1|unidad_aritmetica|divi|LessThan0~4_combout\))) # 
-- (!\inst|alu1|unidad_aritmetica|divi|LessThan1~28_combout\ & (((\inst|alu1|unidad_aritmetica|divi|Add1~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add0~16_combout\,
	datab => \inst|alu1|unidad_aritmetica|divi|LessThan0~4_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|LessThan1~28_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|Add1~42_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add1~58_combout\);

-- Location: LCCOMB_X14_Y15_N2
\inst|alu1|unidad_aritmetica|divi|Add1~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add1~59_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan1~28_combout\ & (!\inst|alu1|unidad_aritmetica|divi|LessThan0~4_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add0~14_combout\))) # 
-- (!\inst|alu1|unidad_aritmetica|divi|LessThan1~28_combout\ & (((\inst|alu1|unidad_aritmetica|divi|Add1~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|LessThan0~4_combout\,
	datab => \inst|alu1|unidad_aritmetica|divi|Add0~14_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|LessThan1~28_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|Add1~40_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add1~59_combout\);

-- Location: LCCOMB_X14_Y15_N16
\inst|alu1|unidad_aritmetica|divi|Add1~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add1~60_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan1~28_combout\ & (!\inst|alu1|unidad_aritmetica|divi|LessThan0~4_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add0~12_combout\))) # 
-- (!\inst|alu1|unidad_aritmetica|divi|LessThan1~28_combout\ & (((\inst|alu1|unidad_aritmetica|divi|Add1~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|LessThan0~4_combout\,
	datab => \inst|alu1|unidad_aritmetica|divi|Add0~12_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|Add1~38_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan1~28_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add1~60_combout\);

-- Location: LCCOMB_X17_Y16_N18
\inst|alu1|unidad_aritmetica|divi|Add1~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add1~61_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan1~28_combout\ & (!\inst|alu1|unidad_aritmetica|divi|LessThan0~4_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add0~10_combout\))) # 
-- (!\inst|alu1|unidad_aritmetica|divi|LessThan1~28_combout\ & (((\inst|alu1|unidad_aritmetica|divi|Add1~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|LessThan0~4_combout\,
	datab => \inst|alu1|unidad_aritmetica|divi|Add0~10_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|LessThan1~28_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|Add1~36_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add1~61_combout\);

-- Location: LCCOMB_X14_Y14_N2
\inst|alu1|unidad_aritmetica|divi|Add1~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add1~62_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan1~28_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add0~8_combout\ & (!\inst|alu1|unidad_aritmetica|divi|LessThan0~4_combout\))) # 
-- (!\inst|alu1|unidad_aritmetica|divi|LessThan1~28_combout\ & (((\inst|alu1|unidad_aritmetica|divi|Add1~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add0~8_combout\,
	datab => \inst|alu1|unidad_aritmetica|divi|LessThan0~4_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|Add1~34_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan1~28_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add1~62_combout\);

-- Location: LCCOMB_X17_Y16_N12
\inst|alu1|unidad_aritmetica|divi|Add1~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add1~63_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan1~28_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add0~6_combout\ & (!\inst|alu1|unidad_aritmetica|divi|LessThan0~4_combout\))) # 
-- (!\inst|alu1|unidad_aritmetica|divi|LessThan1~28_combout\ & (((\inst|alu1|unidad_aritmetica|divi|Add1~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add0~6_combout\,
	datab => \inst|alu1|unidad_aritmetica|divi|LessThan0~4_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|LessThan1~28_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|Add1~32_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add1~63_combout\);

-- Location: LCCOMB_X14_Y14_N16
\inst|alu1|unidad_aritmetica|divi|Add1~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add1~64_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan1~28_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add0~4_combout\ & ((!\inst|alu1|unidad_aritmetica|divi|LessThan0~4_combout\)))) # 
-- (!\inst|alu1|unidad_aritmetica|divi|LessThan1~28_combout\ & (((\inst|alu1|unidad_aritmetica|divi|Add1~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add0~4_combout\,
	datab => \inst|alu1|unidad_aritmetica|divi|Add1~30_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|LessThan0~4_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan1~28_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add1~64_combout\);

-- Location: LCCOMB_X17_Y16_N30
\inst|alu1|unidad_aritmetica|divi|Add1~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add1~65_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan1~28_combout\ & (!\inst|alu1|unidad_aritmetica|divi|LessThan0~4_combout\ & ((\inst|alu1|unidad_aritmetica|divi|Add0~2_combout\)))) # 
-- (!\inst|alu1|unidad_aritmetica|divi|LessThan1~28_combout\ & (((\inst|alu1|unidad_aritmetica|divi|Add1~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|LessThan0~4_combout\,
	datab => \inst|alu1|unidad_aritmetica|divi|Add1~28_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|LessThan1~28_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|Add0~2_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add1~65_combout\);

-- Location: LCCOMB_X13_Y16_N16
\inst|alu1|unidad_aritmetica|divi|Add1~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add1~52_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan1~28_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add0~41_combout\)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan1~28_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add1~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|unidad_aritmetica|divi|Add0~41_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|Add1~26_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan1~28_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add1~52_combout\);

-- Location: LCCOMB_X13_Y16_N26
\inst|alu1|unidad_aritmetica|divi|Add1~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add1~53_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan1~28_combout\ & (\inst|REG_A\(6))) # (!\inst|alu1|unidad_aritmetica|divi|LessThan1~28_combout\ & ((\inst|alu1|unidad_aritmetica|divi|Add1~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|REG_A\(6),
	datac => \inst|alu1|unidad_aritmetica|divi|Add1~24_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan1~28_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add1~53_combout\);

-- Location: LCCOMB_X17_Y15_N0
\inst|alu1|unidad_aritmetica|divi|Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add2~0_combout\ = (\inst|REG_A\(5) & ((GND) # (!\inst|REG_B\(0)))) # (!\inst|REG_A\(5) & (\inst|REG_B\(0) $ (GND)))
-- \inst|alu1|unidad_aritmetica|divi|Add2~1\ = CARRY((\inst|REG_A\(5)) # (!\inst|REG_B\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(5),
	datab => \inst|REG_B\(0),
	datad => VCC,
	combout => \inst|alu1|unidad_aritmetica|divi|Add2~0_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add2~1\);

-- Location: LCCOMB_X17_Y15_N2
\inst|alu1|unidad_aritmetica|divi|Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add2~2_combout\ = (\inst|alu1|unidad_aritmetica|divi|Add1~53_combout\ & ((\inst|REG_B\(1) & (!\inst|alu1|unidad_aritmetica|divi|Add2~1\)) # (!\inst|REG_B\(1) & (\inst|alu1|unidad_aritmetica|divi|Add2~1\ & VCC)))) # 
-- (!\inst|alu1|unidad_aritmetica|divi|Add1~53_combout\ & ((\inst|REG_B\(1) & ((\inst|alu1|unidad_aritmetica|divi|Add2~1\) # (GND))) # (!\inst|REG_B\(1) & (!\inst|alu1|unidad_aritmetica|divi|Add2~1\))))
-- \inst|alu1|unidad_aritmetica|divi|Add2~3\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add1~53_combout\ & (\inst|REG_B\(1) & !\inst|alu1|unidad_aritmetica|divi|Add2~1\)) # (!\inst|alu1|unidad_aritmetica|divi|Add1~53_combout\ & ((\inst|REG_B\(1)) # 
-- (!\inst|alu1|unidad_aritmetica|divi|Add2~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add1~53_combout\,
	datab => \inst|REG_B\(1),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add2~1\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add2~2_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add2~3\);

-- Location: LCCOMB_X17_Y15_N4
\inst|alu1|unidad_aritmetica|divi|Add2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add2~4_combout\ = ((\inst|REG_B\(2) $ (\inst|alu1|unidad_aritmetica|divi|Add1~52_combout\ $ (\inst|alu1|unidad_aritmetica|divi|Add2~3\)))) # (GND)
-- \inst|alu1|unidad_aritmetica|divi|Add2~5\ = CARRY((\inst|REG_B\(2) & (\inst|alu1|unidad_aritmetica|divi|Add1~52_combout\ & !\inst|alu1|unidad_aritmetica|divi|Add2~3\)) # (!\inst|REG_B\(2) & ((\inst|alu1|unidad_aritmetica|divi|Add1~52_combout\) # 
-- (!\inst|alu1|unidad_aritmetica|divi|Add2~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(2),
	datab => \inst|alu1|unidad_aritmetica|divi|Add1~52_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add2~3\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add2~4_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add2~5\);

-- Location: LCCOMB_X17_Y15_N6
\inst|alu1|unidad_aritmetica|divi|Add2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add2~6_combout\ = (\inst|alu1|unidad_aritmetica|divi|Add1~65_combout\ & ((\inst|REG_B\(3) & (!\inst|alu1|unidad_aritmetica|divi|Add2~5\)) # (!\inst|REG_B\(3) & (\inst|alu1|unidad_aritmetica|divi|Add2~5\ & VCC)))) # 
-- (!\inst|alu1|unidad_aritmetica|divi|Add1~65_combout\ & ((\inst|REG_B\(3) & ((\inst|alu1|unidad_aritmetica|divi|Add2~5\) # (GND))) # (!\inst|REG_B\(3) & (!\inst|alu1|unidad_aritmetica|divi|Add2~5\))))
-- \inst|alu1|unidad_aritmetica|divi|Add2~7\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add1~65_combout\ & (\inst|REG_B\(3) & !\inst|alu1|unidad_aritmetica|divi|Add2~5\)) # (!\inst|alu1|unidad_aritmetica|divi|Add1~65_combout\ & ((\inst|REG_B\(3)) # 
-- (!\inst|alu1|unidad_aritmetica|divi|Add2~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add1~65_combout\,
	datab => \inst|REG_B\(3),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add2~5\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add2~6_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add2~7\);

-- Location: LCCOMB_X17_Y15_N8
\inst|alu1|unidad_aritmetica|divi|Add2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add2~8_combout\ = ((\inst|alu1|unidad_aritmetica|divi|Add1~64_combout\ $ (\inst|REG_B\(4) $ (\inst|alu1|unidad_aritmetica|divi|Add2~7\)))) # (GND)
-- \inst|alu1|unidad_aritmetica|divi|Add2~9\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add1~64_combout\ & ((!\inst|alu1|unidad_aritmetica|divi|Add2~7\) # (!\inst|REG_B\(4)))) # (!\inst|alu1|unidad_aritmetica|divi|Add1~64_combout\ & (!\inst|REG_B\(4) & 
-- !\inst|alu1|unidad_aritmetica|divi|Add2~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add1~64_combout\,
	datab => \inst|REG_B\(4),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add2~7\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add2~8_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add2~9\);

-- Location: LCCOMB_X17_Y15_N10
\inst|alu1|unidad_aritmetica|divi|Add2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add2~10_combout\ = (\inst|alu1|unidad_aritmetica|divi|Add1~63_combout\ & ((\inst|REG_B\(5) & (!\inst|alu1|unidad_aritmetica|divi|Add2~9\)) # (!\inst|REG_B\(5) & (\inst|alu1|unidad_aritmetica|divi|Add2~9\ & VCC)))) # 
-- (!\inst|alu1|unidad_aritmetica|divi|Add1~63_combout\ & ((\inst|REG_B\(5) & ((\inst|alu1|unidad_aritmetica|divi|Add2~9\) # (GND))) # (!\inst|REG_B\(5) & (!\inst|alu1|unidad_aritmetica|divi|Add2~9\))))
-- \inst|alu1|unidad_aritmetica|divi|Add2~11\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add1~63_combout\ & (\inst|REG_B\(5) & !\inst|alu1|unidad_aritmetica|divi|Add2~9\)) # (!\inst|alu1|unidad_aritmetica|divi|Add1~63_combout\ & ((\inst|REG_B\(5)) # 
-- (!\inst|alu1|unidad_aritmetica|divi|Add2~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add1~63_combout\,
	datab => \inst|REG_B\(5),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add2~9\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add2~10_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add2~11\);

-- Location: LCCOMB_X17_Y15_N12
\inst|alu1|unidad_aritmetica|divi|Add2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add2~12_combout\ = ((\inst|REG_B\(6) $ (\inst|alu1|unidad_aritmetica|divi|Add1~62_combout\ $ (\inst|alu1|unidad_aritmetica|divi|Add2~11\)))) # (GND)
-- \inst|alu1|unidad_aritmetica|divi|Add2~13\ = CARRY((\inst|REG_B\(6) & (\inst|alu1|unidad_aritmetica|divi|Add1~62_combout\ & !\inst|alu1|unidad_aritmetica|divi|Add2~11\)) # (!\inst|REG_B\(6) & ((\inst|alu1|unidad_aritmetica|divi|Add1~62_combout\) # 
-- (!\inst|alu1|unidad_aritmetica|divi|Add2~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(6),
	datab => \inst|alu1|unidad_aritmetica|divi|Add1~62_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add2~11\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add2~12_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add2~13\);

-- Location: LCCOMB_X17_Y15_N14
\inst|alu1|unidad_aritmetica|divi|Add2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add2~14_combout\ = (\inst|REG_B\(7) & ((\inst|alu1|unidad_aritmetica|divi|Add1~61_combout\ & (!\inst|alu1|unidad_aritmetica|divi|Add2~13\)) # (!\inst|alu1|unidad_aritmetica|divi|Add1~61_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add2~13\) # (GND))))) # (!\inst|REG_B\(7) & ((\inst|alu1|unidad_aritmetica|divi|Add1~61_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add2~13\ & VCC)) # (!\inst|alu1|unidad_aritmetica|divi|Add1~61_combout\ & 
-- (!\inst|alu1|unidad_aritmetica|divi|Add2~13\))))
-- \inst|alu1|unidad_aritmetica|divi|Add2~15\ = CARRY((\inst|REG_B\(7) & ((!\inst|alu1|unidad_aritmetica|divi|Add2~13\) # (!\inst|alu1|unidad_aritmetica|divi|Add1~61_combout\))) # (!\inst|REG_B\(7) & (!\inst|alu1|unidad_aritmetica|divi|Add1~61_combout\ & 
-- !\inst|alu1|unidad_aritmetica|divi|Add2~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(7),
	datab => \inst|alu1|unidad_aritmetica|divi|Add1~61_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add2~13\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add2~14_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add2~15\);

-- Location: LCCOMB_X17_Y15_N16
\inst|alu1|unidad_aritmetica|divi|Add2~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add2~16_combout\ = ((\inst|alu1|unidad_aritmetica|divi|Add1~60_combout\ $ (\inst|REG_B\(8) $ (\inst|alu1|unidad_aritmetica|divi|Add2~15\)))) # (GND)
-- \inst|alu1|unidad_aritmetica|divi|Add2~17\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add1~60_combout\ & ((!\inst|alu1|unidad_aritmetica|divi|Add2~15\) # (!\inst|REG_B\(8)))) # (!\inst|alu1|unidad_aritmetica|divi|Add1~60_combout\ & (!\inst|REG_B\(8) & 
-- !\inst|alu1|unidad_aritmetica|divi|Add2~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add1~60_combout\,
	datab => \inst|REG_B\(8),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add2~15\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add2~16_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add2~17\);

-- Location: LCCOMB_X17_Y15_N18
\inst|alu1|unidad_aritmetica|divi|Add2~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add2~18_combout\ = (\inst|REG_B\(9) & ((\inst|alu1|unidad_aritmetica|divi|Add1~59_combout\ & (!\inst|alu1|unidad_aritmetica|divi|Add2~17\)) # (!\inst|alu1|unidad_aritmetica|divi|Add1~59_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add2~17\) # (GND))))) # (!\inst|REG_B\(9) & ((\inst|alu1|unidad_aritmetica|divi|Add1~59_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add2~17\ & VCC)) # (!\inst|alu1|unidad_aritmetica|divi|Add1~59_combout\ & 
-- (!\inst|alu1|unidad_aritmetica|divi|Add2~17\))))
-- \inst|alu1|unidad_aritmetica|divi|Add2~19\ = CARRY((\inst|REG_B\(9) & ((!\inst|alu1|unidad_aritmetica|divi|Add2~17\) # (!\inst|alu1|unidad_aritmetica|divi|Add1~59_combout\))) # (!\inst|REG_B\(9) & (!\inst|alu1|unidad_aritmetica|divi|Add1~59_combout\ & 
-- !\inst|alu1|unidad_aritmetica|divi|Add2~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(9),
	datab => \inst|alu1|unidad_aritmetica|divi|Add1~59_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add2~17\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add2~18_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add2~19\);

-- Location: LCCOMB_X17_Y15_N20
\inst|alu1|unidad_aritmetica|divi|Add2~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add2~20_combout\ = ((\inst|alu1|unidad_aritmetica|divi|Add1~58_combout\ $ (\inst|REG_B\(10) $ (\inst|alu1|unidad_aritmetica|divi|Add2~19\)))) # (GND)
-- \inst|alu1|unidad_aritmetica|divi|Add2~21\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add1~58_combout\ & ((!\inst|alu1|unidad_aritmetica|divi|Add2~19\) # (!\inst|REG_B\(10)))) # (!\inst|alu1|unidad_aritmetica|divi|Add1~58_combout\ & (!\inst|REG_B\(10) & 
-- !\inst|alu1|unidad_aritmetica|divi|Add2~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add1~58_combout\,
	datab => \inst|REG_B\(10),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add2~19\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add2~20_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add2~21\);

-- Location: LCCOMB_X17_Y15_N22
\inst|alu1|unidad_aritmetica|divi|Add2~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add2~22_combout\ = (\inst|alu1|unidad_aritmetica|divi|Add1~57_combout\ & ((\inst|REG_B\(11) & (!\inst|alu1|unidad_aritmetica|divi|Add2~21\)) # (!\inst|REG_B\(11) & (\inst|alu1|unidad_aritmetica|divi|Add2~21\ & VCC)))) # 
-- (!\inst|alu1|unidad_aritmetica|divi|Add1~57_combout\ & ((\inst|REG_B\(11) & ((\inst|alu1|unidad_aritmetica|divi|Add2~21\) # (GND))) # (!\inst|REG_B\(11) & (!\inst|alu1|unidad_aritmetica|divi|Add2~21\))))
-- \inst|alu1|unidad_aritmetica|divi|Add2~23\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add1~57_combout\ & (\inst|REG_B\(11) & !\inst|alu1|unidad_aritmetica|divi|Add2~21\)) # (!\inst|alu1|unidad_aritmetica|divi|Add1~57_combout\ & ((\inst|REG_B\(11)) # 
-- (!\inst|alu1|unidad_aritmetica|divi|Add2~21\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add1~57_combout\,
	datab => \inst|REG_B\(11),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add2~21\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add2~22_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add2~23\);

-- Location: LCCOMB_X16_Y16_N24
\inst|alu1|unidad_aritmetica|divi|Add1~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add1~46_combout\ = (\inst|alu1|unidad_aritmetica|divi|Add0~31_combout\ & ((\inst|REG_B\(11) & (!\inst|alu1|unidad_aritmetica|divi|Add1~45\)) # (!\inst|REG_B\(11) & (\inst|alu1|unidad_aritmetica|divi|Add1~45\ & VCC)))) # 
-- (!\inst|alu1|unidad_aritmetica|divi|Add0~31_combout\ & ((\inst|REG_B\(11) & ((\inst|alu1|unidad_aritmetica|divi|Add1~45\) # (GND))) # (!\inst|REG_B\(11) & (!\inst|alu1|unidad_aritmetica|divi|Add1~45\))))
-- \inst|alu1|unidad_aritmetica|divi|Add1~47\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add0~31_combout\ & (\inst|REG_B\(11) & !\inst|alu1|unidad_aritmetica|divi|Add1~45\)) # (!\inst|alu1|unidad_aritmetica|divi|Add0~31_combout\ & ((\inst|REG_B\(11)) # 
-- (!\inst|alu1|unidad_aritmetica|divi|Add1~45\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add0~31_combout\,
	datab => \inst|REG_B\(11),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add1~45\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add1~46_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add1~47\);

-- Location: LCCOMB_X16_Y16_N26
\inst|alu1|unidad_aritmetica|divi|Add1~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add1~48_combout\ = ((\inst|REG_B\(12) $ (\inst|alu1|unidad_aritmetica|divi|Add0~30_combout\ $ (\inst|alu1|unidad_aritmetica|divi|Add1~47\)))) # (GND)
-- \inst|alu1|unidad_aritmetica|divi|Add1~49\ = CARRY((\inst|REG_B\(12) & (\inst|alu1|unidad_aritmetica|divi|Add0~30_combout\ & !\inst|alu1|unidad_aritmetica|divi|Add1~47\)) # (!\inst|REG_B\(12) & ((\inst|alu1|unidad_aritmetica|divi|Add0~30_combout\) # 
-- (!\inst|alu1|unidad_aritmetica|divi|Add1~47\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(12),
	datab => \inst|alu1|unidad_aritmetica|divi|Add0~30_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add1~47\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add1~48_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add1~49\);

-- Location: LCCOMB_X16_Y16_N28
\inst|alu1|unidad_aritmetica|divi|Add1~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add1~50_combout\ = \inst|REG_B\(13) $ (\inst|alu1|unidad_aritmetica|divi|Add1~49\ $ (!\inst|alu1|unidad_aritmetica|divi|Add0~29_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|REG_B\(13),
	datad => \inst|alu1|unidad_aritmetica|divi|Add0~29_combout\,
	cin => \inst|alu1|unidad_aritmetica|divi|Add1~49\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add1~50_combout\);

-- Location: LCCOMB_X18_Y16_N30
\inst|alu1|unidad_aritmetica|divi|Add1~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add1~54_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan1~28_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add0~24_combout\ & (!\inst|alu1|unidad_aritmetica|divi|LessThan0~4_combout\))) # 
-- (!\inst|alu1|unidad_aritmetica|divi|LessThan1~28_combout\ & (((\inst|alu1|unidad_aritmetica|divi|Add1~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add0~24_combout\,
	datab => \inst|alu1|unidad_aritmetica|divi|LessThan0~4_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|LessThan1~28_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|Add1~50_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add1~54_combout\);

-- Location: LCCOMB_X16_Y16_N0
\inst|alu1|unidad_aritmetica|divi|Add1~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add1~55_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan1~28_combout\ & (((!\inst|alu1|unidad_aritmetica|divi|LessThan0~4_combout\ & \inst|alu1|unidad_aritmetica|divi|Add0~22_combout\)))) # 
-- (!\inst|alu1|unidad_aritmetica|divi|LessThan1~28_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add1~48_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add1~48_combout\,
	datab => \inst|alu1|unidad_aritmetica|divi|LessThan0~4_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|LessThan1~28_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|Add0~22_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add1~55_combout\);

-- Location: LCCOMB_X16_Y16_N30
\inst|alu1|unidad_aritmetica|divi|Add1~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add1~56_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan1~28_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add0~20_combout\ & (!\inst|alu1|unidad_aritmetica|divi|LessThan0~4_combout\))) # 
-- (!\inst|alu1|unidad_aritmetica|divi|LessThan1~28_combout\ & (((\inst|alu1|unidad_aritmetica|divi|Add1~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add0~20_combout\,
	datab => \inst|alu1|unidad_aritmetica|divi|LessThan0~4_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|LessThan1~28_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|Add1~46_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add1~56_combout\);

-- Location: LCCOMB_X18_Y16_N0
\inst|alu1|unidad_aritmetica|divi|LessThan2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan2~1_cout\ = CARRY((\inst|REG_B\(0) & !\inst|REG_A\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(0),
	datab => \inst|REG_A\(5),
	datad => VCC,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan2~1_cout\);

-- Location: LCCOMB_X18_Y16_N2
\inst|alu1|unidad_aritmetica|divi|LessThan2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan2~3_cout\ = CARRY((\inst|REG_B\(1) & (\inst|alu1|unidad_aritmetica|divi|Add1~53_combout\ & !\inst|alu1|unidad_aritmetica|divi|LessThan2~1_cout\)) # (!\inst|REG_B\(1) & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add1~53_combout\) # (!\inst|alu1|unidad_aritmetica|divi|LessThan2~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(1),
	datab => \inst|alu1|unidad_aritmetica|divi|Add1~53_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan2~1_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan2~3_cout\);

-- Location: LCCOMB_X18_Y16_N4
\inst|alu1|unidad_aritmetica|divi|LessThan2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan2~5_cout\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add1~52_combout\ & (\inst|REG_B\(2) & !\inst|alu1|unidad_aritmetica|divi|LessThan2~3_cout\)) # (!\inst|alu1|unidad_aritmetica|divi|Add1~52_combout\ & 
-- ((\inst|REG_B\(2)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan2~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add1~52_combout\,
	datab => \inst|REG_B\(2),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan2~3_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan2~5_cout\);

-- Location: LCCOMB_X18_Y16_N6
\inst|alu1|unidad_aritmetica|divi|LessThan2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan2~7_cout\ = CARRY((\inst|REG_B\(3) & (\inst|alu1|unidad_aritmetica|divi|Add1~65_combout\ & !\inst|alu1|unidad_aritmetica|divi|LessThan2~5_cout\)) # (!\inst|REG_B\(3) & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add1~65_combout\) # (!\inst|alu1|unidad_aritmetica|divi|LessThan2~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(3),
	datab => \inst|alu1|unidad_aritmetica|divi|Add1~65_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan2~5_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan2~7_cout\);

-- Location: LCCOMB_X18_Y16_N8
\inst|alu1|unidad_aritmetica|divi|LessThan2~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan2~9_cout\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add1~64_combout\ & (\inst|REG_B\(4) & !\inst|alu1|unidad_aritmetica|divi|LessThan2~7_cout\)) # (!\inst|alu1|unidad_aritmetica|divi|Add1~64_combout\ & 
-- ((\inst|REG_B\(4)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan2~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add1~64_combout\,
	datab => \inst|REG_B\(4),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan2~7_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan2~9_cout\);

-- Location: LCCOMB_X18_Y16_N10
\inst|alu1|unidad_aritmetica|divi|LessThan2~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan2~11_cout\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add1~63_combout\ & ((!\inst|alu1|unidad_aritmetica|divi|LessThan2~9_cout\) # (!\inst|REG_B\(5)))) # (!\inst|alu1|unidad_aritmetica|divi|Add1~63_combout\ & 
-- (!\inst|REG_B\(5) & !\inst|alu1|unidad_aritmetica|divi|LessThan2~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add1~63_combout\,
	datab => \inst|REG_B\(5),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan2~9_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan2~11_cout\);

-- Location: LCCOMB_X18_Y16_N12
\inst|alu1|unidad_aritmetica|divi|LessThan2~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan2~13_cout\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add1~62_combout\ & (\inst|REG_B\(6) & !\inst|alu1|unidad_aritmetica|divi|LessThan2~11_cout\)) # (!\inst|alu1|unidad_aritmetica|divi|Add1~62_combout\ & 
-- ((\inst|REG_B\(6)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan2~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add1~62_combout\,
	datab => \inst|REG_B\(6),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan2~11_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan2~13_cout\);

-- Location: LCCOMB_X18_Y16_N14
\inst|alu1|unidad_aritmetica|divi|LessThan2~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan2~15_cout\ = CARRY((\inst|REG_B\(7) & (\inst|alu1|unidad_aritmetica|divi|Add1~61_combout\ & !\inst|alu1|unidad_aritmetica|divi|LessThan2~13_cout\)) # (!\inst|REG_B\(7) & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add1~61_combout\) # (!\inst|alu1|unidad_aritmetica|divi|LessThan2~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(7),
	datab => \inst|alu1|unidad_aritmetica|divi|Add1~61_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan2~13_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan2~15_cout\);

-- Location: LCCOMB_X18_Y16_N16
\inst|alu1|unidad_aritmetica|divi|LessThan2~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan2~17_cout\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add1~60_combout\ & (\inst|REG_B\(8) & !\inst|alu1|unidad_aritmetica|divi|LessThan2~15_cout\)) # (!\inst|alu1|unidad_aritmetica|divi|Add1~60_combout\ & 
-- ((\inst|REG_B\(8)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan2~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add1~60_combout\,
	datab => \inst|REG_B\(8),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan2~15_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan2~17_cout\);

-- Location: LCCOMB_X18_Y16_N18
\inst|alu1|unidad_aritmetica|divi|LessThan2~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan2~19_cout\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add1~59_combout\ & ((!\inst|alu1|unidad_aritmetica|divi|LessThan2~17_cout\) # (!\inst|REG_B\(9)))) # (!\inst|alu1|unidad_aritmetica|divi|Add1~59_combout\ & 
-- (!\inst|REG_B\(9) & !\inst|alu1|unidad_aritmetica|divi|LessThan2~17_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add1~59_combout\,
	datab => \inst|REG_B\(9),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan2~17_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan2~19_cout\);

-- Location: LCCOMB_X18_Y16_N20
\inst|alu1|unidad_aritmetica|divi|LessThan2~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan2~21_cout\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add1~58_combout\ & (\inst|REG_B\(10) & !\inst|alu1|unidad_aritmetica|divi|LessThan2~19_cout\)) # (!\inst|alu1|unidad_aritmetica|divi|Add1~58_combout\ & 
-- ((\inst|REG_B\(10)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan2~19_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add1~58_combout\,
	datab => \inst|REG_B\(10),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan2~19_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan2~21_cout\);

-- Location: LCCOMB_X18_Y16_N22
\inst|alu1|unidad_aritmetica|divi|LessThan2~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan2~23_cout\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add1~57_combout\ & ((!\inst|alu1|unidad_aritmetica|divi|LessThan2~21_cout\) # (!\inst|REG_B\(11)))) # (!\inst|alu1|unidad_aritmetica|divi|Add1~57_combout\ & 
-- (!\inst|REG_B\(11) & !\inst|alu1|unidad_aritmetica|divi|LessThan2~21_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add1~57_combout\,
	datab => \inst|REG_B\(11),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan2~21_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan2~23_cout\);

-- Location: LCCOMB_X18_Y16_N24
\inst|alu1|unidad_aritmetica|divi|LessThan2~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan2~25_cout\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add1~56_combout\ & (\inst|REG_B\(12) & !\inst|alu1|unidad_aritmetica|divi|LessThan2~23_cout\)) # (!\inst|alu1|unidad_aritmetica|divi|Add1~56_combout\ & 
-- ((\inst|REG_B\(12)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan2~23_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add1~56_combout\,
	datab => \inst|REG_B\(12),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan2~23_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan2~25_cout\);

-- Location: LCCOMB_X18_Y16_N26
\inst|alu1|unidad_aritmetica|divi|LessThan2~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan2~27_cout\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add1~55_combout\ & ((!\inst|alu1|unidad_aritmetica|divi|LessThan2~25_cout\) # (!\inst|REG_B\(13)))) # (!\inst|alu1|unidad_aritmetica|divi|Add1~55_combout\ & 
-- (!\inst|REG_B\(13) & !\inst|alu1|unidad_aritmetica|divi|LessThan2~25_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add1~55_combout\,
	datab => \inst|REG_B\(13),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan2~25_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan2~27_cout\);

-- Location: LCCOMB_X18_Y16_N28
\inst|alu1|unidad_aritmetica|divi|LessThan2~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan2~28_combout\ = (\inst|alu1|unidad_aritmetica|divi|Add1~54_combout\ & (!\inst|alu1|unidad_aritmetica|divi|LessThan2~27_cout\ & \inst|REG_B\(14))) # (!\inst|alu1|unidad_aritmetica|divi|Add1~54_combout\ & 
-- ((\inst|REG_B\(14)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan2~27_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add1~54_combout\,
	datad => \inst|REG_B\(14),
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan2~27_cout\,
	combout => \inst|alu1|unidad_aritmetica|divi|LessThan2~28_combout\);

-- Location: LCCOMB_X17_Y15_N30
\inst|alu1|unidad_aritmetica|divi|Add2~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add2~30_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan2~28_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add1~57_combout\)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan2~28_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add2~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add1~57_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|Add2~22_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan2~28_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add2~30_combout\);

-- Location: LCCOMB_X17_Y16_N26
\inst|alu1|unidad_aritmetica|divi|Add2~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add2~31_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan2~28_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add1~58_combout\)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan2~28_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add2~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|unidad_aritmetica|divi|Add1~58_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|Add2~20_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan2~28_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add2~31_combout\);

-- Location: LCCOMB_X14_Y15_N12
\inst|alu1|unidad_aritmetica|divi|Add2~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add2~32_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan2~28_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add1~59_combout\)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan2~28_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add2~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|unidad_aritmetica|divi|Add1~59_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|Add2~18_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan2~28_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add2~32_combout\);

-- Location: LCCOMB_X14_Y15_N10
\inst|alu1|unidad_aritmetica|divi|Add2~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add2~33_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan2~28_combout\ & ((\inst|alu1|unidad_aritmetica|divi|Add1~60_combout\))) # (!\inst|alu1|unidad_aritmetica|divi|LessThan2~28_combout\ & 
-- (\inst|alu1|unidad_aritmetica|divi|Add2~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add2~16_combout\,
	datab => \inst|alu1|unidad_aritmetica|divi|Add1~60_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan2~28_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add2~33_combout\);

-- Location: LCCOMB_X17_Y16_N28
\inst|alu1|unidad_aritmetica|divi|Add2~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add2~34_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan2~28_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add1~61_combout\)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan2~28_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add2~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|unidad_aritmetica|divi|Add1~61_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|LessThan2~28_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|Add2~14_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add2~34_combout\);

-- Location: LCCOMB_X14_Y14_N0
\inst|alu1|unidad_aritmetica|divi|Add2~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add2~35_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan2~28_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add1~62_combout\)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan2~28_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add2~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|unidad_aritmetica|divi|Add1~62_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|Add2~12_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan2~28_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add2~35_combout\);

-- Location: LCCOMB_X17_Y16_N22
\inst|alu1|unidad_aritmetica|divi|Add2~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add2~36_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan2~28_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add1~63_combout\)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan2~28_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add2~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add1~63_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|LessThan2~28_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|Add2~10_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add2~36_combout\);

-- Location: LCCOMB_X14_Y14_N6
\inst|alu1|unidad_aritmetica|divi|Add2~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add2~37_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan2~28_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add1~64_combout\)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan2~28_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add2~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|unidad_aritmetica|divi|Add1~64_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|Add2~8_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan2~28_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add2~37_combout\);

-- Location: LCCOMB_X17_Y16_N8
\inst|alu1|unidad_aritmetica|divi|Add2~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add2~38_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan2~28_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add1~65_combout\)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan2~28_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add2~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add1~65_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|LessThan2~28_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|Add2~6_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add2~38_combout\);

-- Location: LCCOMB_X13_Y16_N0
\inst|alu1|unidad_aritmetica|divi|Add2~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add2~39_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan2~28_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add1~52_combout\)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan2~28_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|unidad_aritmetica|divi|Add1~52_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|Add2~4_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan2~28_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add2~39_combout\);

-- Location: LCCOMB_X13_Y16_N30
\inst|alu1|unidad_aritmetica|divi|Add2~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add2~40_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan2~28_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add1~53_combout\)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan2~28_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add1~53_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|Add2~2_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan2~28_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add2~40_combout\);

-- Location: LCCOMB_X14_Y15_N24
\inst|alu1|unidad_aritmetica|divi|Add2~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add2~41_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan2~28_combout\ & ((\inst|REG_A\(5)))) # (!\inst|alu1|unidad_aritmetica|divi|LessThan2~28_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add2~0_combout\,
	datab => \inst|REG_A\(5),
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan2~28_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add2~41_combout\);

-- Location: LCCOMB_X12_Y15_N2
\inst|alu1|unidad_aritmetica|divi|Add3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add3~0_combout\ = (\inst|REG_B\(0) & (\inst|REG_A\(4) $ (VCC))) # (!\inst|REG_B\(0) & ((\inst|REG_A\(4)) # (GND)))
-- \inst|alu1|unidad_aritmetica|divi|Add3~1\ = CARRY((\inst|REG_A\(4)) # (!\inst|REG_B\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(0),
	datab => \inst|REG_A\(4),
	datad => VCC,
	combout => \inst|alu1|unidad_aritmetica|divi|Add3~0_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add3~1\);

-- Location: LCCOMB_X12_Y15_N4
\inst|alu1|unidad_aritmetica|divi|Add3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add3~2_combout\ = (\inst|alu1|unidad_aritmetica|divi|Add2~41_combout\ & ((\inst|REG_B\(1) & (!\inst|alu1|unidad_aritmetica|divi|Add3~1\)) # (!\inst|REG_B\(1) & (\inst|alu1|unidad_aritmetica|divi|Add3~1\ & VCC)))) # 
-- (!\inst|alu1|unidad_aritmetica|divi|Add2~41_combout\ & ((\inst|REG_B\(1) & ((\inst|alu1|unidad_aritmetica|divi|Add3~1\) # (GND))) # (!\inst|REG_B\(1) & (!\inst|alu1|unidad_aritmetica|divi|Add3~1\))))
-- \inst|alu1|unidad_aritmetica|divi|Add3~3\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add2~41_combout\ & (\inst|REG_B\(1) & !\inst|alu1|unidad_aritmetica|divi|Add3~1\)) # (!\inst|alu1|unidad_aritmetica|divi|Add2~41_combout\ & ((\inst|REG_B\(1)) # 
-- (!\inst|alu1|unidad_aritmetica|divi|Add3~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add2~41_combout\,
	datab => \inst|REG_B\(1),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add3~1\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add3~2_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add3~3\);

-- Location: LCCOMB_X12_Y15_N6
\inst|alu1|unidad_aritmetica|divi|Add3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add3~4_combout\ = ((\inst|REG_B\(2) $ (\inst|alu1|unidad_aritmetica|divi|Add2~40_combout\ $ (\inst|alu1|unidad_aritmetica|divi|Add3~3\)))) # (GND)
-- \inst|alu1|unidad_aritmetica|divi|Add3~5\ = CARRY((\inst|REG_B\(2) & (\inst|alu1|unidad_aritmetica|divi|Add2~40_combout\ & !\inst|alu1|unidad_aritmetica|divi|Add3~3\)) # (!\inst|REG_B\(2) & ((\inst|alu1|unidad_aritmetica|divi|Add2~40_combout\) # 
-- (!\inst|alu1|unidad_aritmetica|divi|Add3~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(2),
	datab => \inst|alu1|unidad_aritmetica|divi|Add2~40_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add3~3\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add3~4_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add3~5\);

-- Location: LCCOMB_X12_Y15_N8
\inst|alu1|unidad_aritmetica|divi|Add3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add3~6_combout\ = (\inst|REG_B\(3) & ((\inst|alu1|unidad_aritmetica|divi|Add2~39_combout\ & (!\inst|alu1|unidad_aritmetica|divi|Add3~5\)) # (!\inst|alu1|unidad_aritmetica|divi|Add2~39_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add3~5\) # (GND))))) # (!\inst|REG_B\(3) & ((\inst|alu1|unidad_aritmetica|divi|Add2~39_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add3~5\ & VCC)) # (!\inst|alu1|unidad_aritmetica|divi|Add2~39_combout\ & 
-- (!\inst|alu1|unidad_aritmetica|divi|Add3~5\))))
-- \inst|alu1|unidad_aritmetica|divi|Add3~7\ = CARRY((\inst|REG_B\(3) & ((!\inst|alu1|unidad_aritmetica|divi|Add3~5\) # (!\inst|alu1|unidad_aritmetica|divi|Add2~39_combout\))) # (!\inst|REG_B\(3) & (!\inst|alu1|unidad_aritmetica|divi|Add2~39_combout\ & 
-- !\inst|alu1|unidad_aritmetica|divi|Add3~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(3),
	datab => \inst|alu1|unidad_aritmetica|divi|Add2~39_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add3~5\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add3~6_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add3~7\);

-- Location: LCCOMB_X12_Y15_N10
\inst|alu1|unidad_aritmetica|divi|Add3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add3~8_combout\ = ((\inst|REG_B\(4) $ (\inst|alu1|unidad_aritmetica|divi|Add2~38_combout\ $ (\inst|alu1|unidad_aritmetica|divi|Add3~7\)))) # (GND)
-- \inst|alu1|unidad_aritmetica|divi|Add3~9\ = CARRY((\inst|REG_B\(4) & (\inst|alu1|unidad_aritmetica|divi|Add2~38_combout\ & !\inst|alu1|unidad_aritmetica|divi|Add3~7\)) # (!\inst|REG_B\(4) & ((\inst|alu1|unidad_aritmetica|divi|Add2~38_combout\) # 
-- (!\inst|alu1|unidad_aritmetica|divi|Add3~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(4),
	datab => \inst|alu1|unidad_aritmetica|divi|Add2~38_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add3~7\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add3~8_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add3~9\);

-- Location: LCCOMB_X12_Y15_N12
\inst|alu1|unidad_aritmetica|divi|Add3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add3~10_combout\ = (\inst|alu1|unidad_aritmetica|divi|Add2~37_combout\ & ((\inst|REG_B\(5) & (!\inst|alu1|unidad_aritmetica|divi|Add3~9\)) # (!\inst|REG_B\(5) & (\inst|alu1|unidad_aritmetica|divi|Add3~9\ & VCC)))) # 
-- (!\inst|alu1|unidad_aritmetica|divi|Add2~37_combout\ & ((\inst|REG_B\(5) & ((\inst|alu1|unidad_aritmetica|divi|Add3~9\) # (GND))) # (!\inst|REG_B\(5) & (!\inst|alu1|unidad_aritmetica|divi|Add3~9\))))
-- \inst|alu1|unidad_aritmetica|divi|Add3~11\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add2~37_combout\ & (\inst|REG_B\(5) & !\inst|alu1|unidad_aritmetica|divi|Add3~9\)) # (!\inst|alu1|unidad_aritmetica|divi|Add2~37_combout\ & ((\inst|REG_B\(5)) # 
-- (!\inst|alu1|unidad_aritmetica|divi|Add3~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add2~37_combout\,
	datab => \inst|REG_B\(5),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add3~9\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add3~10_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add3~11\);

-- Location: LCCOMB_X12_Y15_N14
\inst|alu1|unidad_aritmetica|divi|Add3~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add3~12_combout\ = ((\inst|REG_B\(6) $ (\inst|alu1|unidad_aritmetica|divi|Add2~36_combout\ $ (\inst|alu1|unidad_aritmetica|divi|Add3~11\)))) # (GND)
-- \inst|alu1|unidad_aritmetica|divi|Add3~13\ = CARRY((\inst|REG_B\(6) & (\inst|alu1|unidad_aritmetica|divi|Add2~36_combout\ & !\inst|alu1|unidad_aritmetica|divi|Add3~11\)) # (!\inst|REG_B\(6) & ((\inst|alu1|unidad_aritmetica|divi|Add2~36_combout\) # 
-- (!\inst|alu1|unidad_aritmetica|divi|Add3~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(6),
	datab => \inst|alu1|unidad_aritmetica|divi|Add2~36_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add3~11\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add3~12_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add3~13\);

-- Location: LCCOMB_X12_Y15_N16
\inst|alu1|unidad_aritmetica|divi|Add3~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add3~14_combout\ = (\inst|REG_B\(7) & ((\inst|alu1|unidad_aritmetica|divi|Add2~35_combout\ & (!\inst|alu1|unidad_aritmetica|divi|Add3~13\)) # (!\inst|alu1|unidad_aritmetica|divi|Add2~35_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add3~13\) # (GND))))) # (!\inst|REG_B\(7) & ((\inst|alu1|unidad_aritmetica|divi|Add2~35_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add3~13\ & VCC)) # (!\inst|alu1|unidad_aritmetica|divi|Add2~35_combout\ & 
-- (!\inst|alu1|unidad_aritmetica|divi|Add3~13\))))
-- \inst|alu1|unidad_aritmetica|divi|Add3~15\ = CARRY((\inst|REG_B\(7) & ((!\inst|alu1|unidad_aritmetica|divi|Add3~13\) # (!\inst|alu1|unidad_aritmetica|divi|Add2~35_combout\))) # (!\inst|REG_B\(7) & (!\inst|alu1|unidad_aritmetica|divi|Add2~35_combout\ & 
-- !\inst|alu1|unidad_aritmetica|divi|Add3~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(7),
	datab => \inst|alu1|unidad_aritmetica|divi|Add2~35_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add3~13\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add3~14_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add3~15\);

-- Location: LCCOMB_X12_Y15_N18
\inst|alu1|unidad_aritmetica|divi|Add3~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add3~16_combout\ = ((\inst|REG_B\(8) $ (\inst|alu1|unidad_aritmetica|divi|Add2~34_combout\ $ (\inst|alu1|unidad_aritmetica|divi|Add3~15\)))) # (GND)
-- \inst|alu1|unidad_aritmetica|divi|Add3~17\ = CARRY((\inst|REG_B\(8) & (\inst|alu1|unidad_aritmetica|divi|Add2~34_combout\ & !\inst|alu1|unidad_aritmetica|divi|Add3~15\)) # (!\inst|REG_B\(8) & ((\inst|alu1|unidad_aritmetica|divi|Add2~34_combout\) # 
-- (!\inst|alu1|unidad_aritmetica|divi|Add3~15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(8),
	datab => \inst|alu1|unidad_aritmetica|divi|Add2~34_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add3~15\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add3~16_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add3~17\);

-- Location: LCCOMB_X12_Y15_N20
\inst|alu1|unidad_aritmetica|divi|Add3~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add3~18_combout\ = (\inst|alu1|unidad_aritmetica|divi|Add2~33_combout\ & ((\inst|REG_B\(9) & (!\inst|alu1|unidad_aritmetica|divi|Add3~17\)) # (!\inst|REG_B\(9) & (\inst|alu1|unidad_aritmetica|divi|Add3~17\ & VCC)))) # 
-- (!\inst|alu1|unidad_aritmetica|divi|Add2~33_combout\ & ((\inst|REG_B\(9) & ((\inst|alu1|unidad_aritmetica|divi|Add3~17\) # (GND))) # (!\inst|REG_B\(9) & (!\inst|alu1|unidad_aritmetica|divi|Add3~17\))))
-- \inst|alu1|unidad_aritmetica|divi|Add3~19\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add2~33_combout\ & (\inst|REG_B\(9) & !\inst|alu1|unidad_aritmetica|divi|Add3~17\)) # (!\inst|alu1|unidad_aritmetica|divi|Add2~33_combout\ & ((\inst|REG_B\(9)) # 
-- (!\inst|alu1|unidad_aritmetica|divi|Add3~17\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add2~33_combout\,
	datab => \inst|REG_B\(9),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add3~17\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add3~18_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add3~19\);

-- Location: LCCOMB_X12_Y15_N22
\inst|alu1|unidad_aritmetica|divi|Add3~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add3~20_combout\ = ((\inst|alu1|unidad_aritmetica|divi|Add2~32_combout\ $ (\inst|REG_B\(10) $ (\inst|alu1|unidad_aritmetica|divi|Add3~19\)))) # (GND)
-- \inst|alu1|unidad_aritmetica|divi|Add3~21\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add2~32_combout\ & ((!\inst|alu1|unidad_aritmetica|divi|Add3~19\) # (!\inst|REG_B\(10)))) # (!\inst|alu1|unidad_aritmetica|divi|Add2~32_combout\ & (!\inst|REG_B\(10) & 
-- !\inst|alu1|unidad_aritmetica|divi|Add3~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add2~32_combout\,
	datab => \inst|REG_B\(10),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add3~19\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add3~20_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add3~21\);

-- Location: LCCOMB_X12_Y15_N24
\inst|alu1|unidad_aritmetica|divi|Add3~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add3~22_combout\ = (\inst|alu1|unidad_aritmetica|divi|Add2~31_combout\ & ((\inst|REG_B\(11) & (!\inst|alu1|unidad_aritmetica|divi|Add3~21\)) # (!\inst|REG_B\(11) & (\inst|alu1|unidad_aritmetica|divi|Add3~21\ & VCC)))) # 
-- (!\inst|alu1|unidad_aritmetica|divi|Add2~31_combout\ & ((\inst|REG_B\(11) & ((\inst|alu1|unidad_aritmetica|divi|Add3~21\) # (GND))) # (!\inst|REG_B\(11) & (!\inst|alu1|unidad_aritmetica|divi|Add3~21\))))
-- \inst|alu1|unidad_aritmetica|divi|Add3~23\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add2~31_combout\ & (\inst|REG_B\(11) & !\inst|alu1|unidad_aritmetica|divi|Add3~21\)) # (!\inst|alu1|unidad_aritmetica|divi|Add2~31_combout\ & ((\inst|REG_B\(11)) # 
-- (!\inst|alu1|unidad_aritmetica|divi|Add3~21\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add2~31_combout\,
	datab => \inst|REG_B\(11),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add3~21\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add3~22_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add3~23\);

-- Location: LCCOMB_X12_Y15_N26
\inst|alu1|unidad_aritmetica|divi|Add3~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add3~24_combout\ = ((\inst|alu1|unidad_aritmetica|divi|Add2~30_combout\ $ (\inst|REG_B\(12) $ (\inst|alu1|unidad_aritmetica|divi|Add3~23\)))) # (GND)
-- \inst|alu1|unidad_aritmetica|divi|Add3~25\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add2~30_combout\ & ((!\inst|alu1|unidad_aritmetica|divi|Add3~23\) # (!\inst|REG_B\(12)))) # (!\inst|alu1|unidad_aritmetica|divi|Add2~30_combout\ & (!\inst|REG_B\(12) & 
-- !\inst|alu1|unidad_aritmetica|divi|Add3~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add2~30_combout\,
	datab => \inst|REG_B\(12),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add3~23\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add3~24_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add3~25\);

-- Location: LCCOMB_X17_Y15_N24
\inst|alu1|unidad_aritmetica|divi|Add2~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add2~24_combout\ = ((\inst|alu1|unidad_aritmetica|divi|Add1~56_combout\ $ (\inst|REG_B\(12) $ (\inst|alu1|unidad_aritmetica|divi|Add2~23\)))) # (GND)
-- \inst|alu1|unidad_aritmetica|divi|Add2~25\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add1~56_combout\ & ((!\inst|alu1|unidad_aritmetica|divi|Add2~23\) # (!\inst|REG_B\(12)))) # (!\inst|alu1|unidad_aritmetica|divi|Add1~56_combout\ & (!\inst|REG_B\(12) & 
-- !\inst|alu1|unidad_aritmetica|divi|Add2~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add1~56_combout\,
	datab => \inst|REG_B\(12),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add2~23\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add2~24_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add2~25\);

-- Location: LCCOMB_X17_Y15_N26
\inst|alu1|unidad_aritmetica|divi|Add2~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add2~26_combout\ = \inst|alu1|unidad_aritmetica|divi|Add1~55_combout\ $ (\inst|alu1|unidad_aritmetica|divi|Add2~25\ $ (!\inst|REG_B\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|unidad_aritmetica|divi|Add1~55_combout\,
	datad => \inst|REG_B\(13),
	cin => \inst|alu1|unidad_aritmetica|divi|Add2~25\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add2~26_combout\);

-- Location: LCCOMB_X17_Y15_N28
\inst|alu1|unidad_aritmetica|divi|Add2~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add2~28_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan2~28_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add1~55_combout\)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan2~28_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add2~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|unidad_aritmetica|divi|Add1~55_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|Add2~26_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan2~28_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add2~28_combout\);

-- Location: LCCOMB_X16_Y15_N30
\inst|alu1|unidad_aritmetica|divi|Add2~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add2~29_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan2~28_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add1~56_combout\)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan2~28_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add2~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add1~56_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|LessThan2~28_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|Add2~24_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add2~29_combout\);

-- Location: LCCOMB_X16_Y15_N0
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

-- Location: LCCOMB_X16_Y15_N2
\inst|alu1|unidad_aritmetica|divi|LessThan3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan3~3_cout\ = CARRY((\inst|REG_B\(1) & (\inst|alu1|unidad_aritmetica|divi|Add2~41_combout\ & !\inst|alu1|unidad_aritmetica|divi|LessThan3~1_cout\)) # (!\inst|REG_B\(1) & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add2~41_combout\) # (!\inst|alu1|unidad_aritmetica|divi|LessThan3~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(1),
	datab => \inst|alu1|unidad_aritmetica|divi|Add2~41_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan3~1_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan3~3_cout\);

-- Location: LCCOMB_X16_Y15_N4
\inst|alu1|unidad_aritmetica|divi|LessThan3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan3~5_cout\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add2~40_combout\ & (\inst|REG_B\(2) & !\inst|alu1|unidad_aritmetica|divi|LessThan3~3_cout\)) # (!\inst|alu1|unidad_aritmetica|divi|Add2~40_combout\ & 
-- ((\inst|REG_B\(2)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan3~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add2~40_combout\,
	datab => \inst|REG_B\(2),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan3~3_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan3~5_cout\);

-- Location: LCCOMB_X16_Y15_N6
\inst|alu1|unidad_aritmetica|divi|LessThan3~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan3~7_cout\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add2~39_combout\ & ((!\inst|alu1|unidad_aritmetica|divi|LessThan3~5_cout\) # (!\inst|REG_B\(3)))) # (!\inst|alu1|unidad_aritmetica|divi|Add2~39_combout\ & 
-- (!\inst|REG_B\(3) & !\inst|alu1|unidad_aritmetica|divi|LessThan3~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add2~39_combout\,
	datab => \inst|REG_B\(3),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan3~5_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan3~7_cout\);

-- Location: LCCOMB_X16_Y15_N8
\inst|alu1|unidad_aritmetica|divi|LessThan3~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan3~9_cout\ = CARRY((\inst|REG_B\(4) & ((!\inst|alu1|unidad_aritmetica|divi|LessThan3~7_cout\) # (!\inst|alu1|unidad_aritmetica|divi|Add2~38_combout\))) # (!\inst|REG_B\(4) & 
-- (!\inst|alu1|unidad_aritmetica|divi|Add2~38_combout\ & !\inst|alu1|unidad_aritmetica|divi|LessThan3~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(4),
	datab => \inst|alu1|unidad_aritmetica|divi|Add2~38_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan3~7_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan3~9_cout\);

-- Location: LCCOMB_X16_Y15_N10
\inst|alu1|unidad_aritmetica|divi|LessThan3~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan3~11_cout\ = CARRY((\inst|REG_B\(5) & (\inst|alu1|unidad_aritmetica|divi|Add2~37_combout\ & !\inst|alu1|unidad_aritmetica|divi|LessThan3~9_cout\)) # (!\inst|REG_B\(5) & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add2~37_combout\) # (!\inst|alu1|unidad_aritmetica|divi|LessThan3~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(5),
	datab => \inst|alu1|unidad_aritmetica|divi|Add2~37_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan3~9_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan3~11_cout\);

-- Location: LCCOMB_X16_Y15_N12
\inst|alu1|unidad_aritmetica|divi|LessThan3~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan3~13_cout\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add2~36_combout\ & (\inst|REG_B\(6) & !\inst|alu1|unidad_aritmetica|divi|LessThan3~11_cout\)) # (!\inst|alu1|unidad_aritmetica|divi|Add2~36_combout\ & 
-- ((\inst|REG_B\(6)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan3~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add2~36_combout\,
	datab => \inst|REG_B\(6),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan3~11_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan3~13_cout\);

-- Location: LCCOMB_X16_Y15_N14
\inst|alu1|unidad_aritmetica|divi|LessThan3~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan3~15_cout\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add2~35_combout\ & ((!\inst|alu1|unidad_aritmetica|divi|LessThan3~13_cout\) # (!\inst|REG_B\(7)))) # (!\inst|alu1|unidad_aritmetica|divi|Add2~35_combout\ & 
-- (!\inst|REG_B\(7) & !\inst|alu1|unidad_aritmetica|divi|LessThan3~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add2~35_combout\,
	datab => \inst|REG_B\(7),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan3~13_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan3~15_cout\);

-- Location: LCCOMB_X16_Y15_N16
\inst|alu1|unidad_aritmetica|divi|LessThan3~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan3~17_cout\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add2~34_combout\ & (\inst|REG_B\(8) & !\inst|alu1|unidad_aritmetica|divi|LessThan3~15_cout\)) # (!\inst|alu1|unidad_aritmetica|divi|Add2~34_combout\ & 
-- ((\inst|REG_B\(8)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan3~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add2~34_combout\,
	datab => \inst|REG_B\(8),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan3~15_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan3~17_cout\);

-- Location: LCCOMB_X16_Y15_N18
\inst|alu1|unidad_aritmetica|divi|LessThan3~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan3~19_cout\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add2~33_combout\ & ((!\inst|alu1|unidad_aritmetica|divi|LessThan3~17_cout\) # (!\inst|REG_B\(9)))) # (!\inst|alu1|unidad_aritmetica|divi|Add2~33_combout\ & 
-- (!\inst|REG_B\(9) & !\inst|alu1|unidad_aritmetica|divi|LessThan3~17_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add2~33_combout\,
	datab => \inst|REG_B\(9),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan3~17_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan3~19_cout\);

-- Location: LCCOMB_X16_Y15_N20
\inst|alu1|unidad_aritmetica|divi|LessThan3~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan3~21_cout\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add2~32_combout\ & (\inst|REG_B\(10) & !\inst|alu1|unidad_aritmetica|divi|LessThan3~19_cout\)) # (!\inst|alu1|unidad_aritmetica|divi|Add2~32_combout\ & 
-- ((\inst|REG_B\(10)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan3~19_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add2~32_combout\,
	datab => \inst|REG_B\(10),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan3~19_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan3~21_cout\);

-- Location: LCCOMB_X16_Y15_N22
\inst|alu1|unidad_aritmetica|divi|LessThan3~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan3~23_cout\ = CARRY((\inst|REG_B\(11) & (\inst|alu1|unidad_aritmetica|divi|Add2~31_combout\ & !\inst|alu1|unidad_aritmetica|divi|LessThan3~21_cout\)) # (!\inst|REG_B\(11) & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add2~31_combout\) # (!\inst|alu1|unidad_aritmetica|divi|LessThan3~21_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(11),
	datab => \inst|alu1|unidad_aritmetica|divi|Add2~31_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan3~21_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan3~23_cout\);

-- Location: LCCOMB_X16_Y15_N24
\inst|alu1|unidad_aritmetica|divi|LessThan3~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan3~25_cout\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add2~30_combout\ & (\inst|REG_B\(12) & !\inst|alu1|unidad_aritmetica|divi|LessThan3~23_cout\)) # (!\inst|alu1|unidad_aritmetica|divi|Add2~30_combout\ & 
-- ((\inst|REG_B\(12)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan3~23_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add2~30_combout\,
	datab => \inst|REG_B\(12),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan3~23_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan3~25_cout\);

-- Location: LCCOMB_X16_Y15_N26
\inst|alu1|unidad_aritmetica|divi|LessThan3~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan3~27_cout\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add2~29_combout\ & ((!\inst|alu1|unidad_aritmetica|divi|LessThan3~25_cout\) # (!\inst|REG_B\(13)))) # (!\inst|alu1|unidad_aritmetica|divi|Add2~29_combout\ & 
-- (!\inst|REG_B\(13) & !\inst|alu1|unidad_aritmetica|divi|LessThan3~25_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add2~29_combout\,
	datab => \inst|REG_B\(13),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan3~25_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan3~27_cout\);

-- Location: LCCOMB_X16_Y15_N28
\inst|alu1|unidad_aritmetica|divi|LessThan3~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan3~28_combout\ = (\inst|REG_B\(14) & ((!\inst|alu1|unidad_aritmetica|divi|Add2~28_combout\) # (!\inst|alu1|unidad_aritmetica|divi|LessThan3~27_cout\))) # (!\inst|REG_B\(14) & 
-- (!\inst|alu1|unidad_aritmetica|divi|LessThan3~27_cout\ & !\inst|alu1|unidad_aritmetica|divi|Add2~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(14),
	datad => \inst|alu1|unidad_aritmetica|divi|Add2~28_combout\,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan3~27_cout\,
	combout => \inst|alu1|unidad_aritmetica|divi|LessThan3~28_combout\);

-- Location: LCCOMB_X12_Y15_N0
\inst|alu1|unidad_aritmetica|divi|Add3~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add3~29_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan3~28_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add2~30_combout\)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan3~28_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add3~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add2~30_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|Add3~24_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan3~28_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add3~29_combout\);

-- Location: LCCOMB_X12_Y15_N28
\inst|alu1|unidad_aritmetica|divi|Add3~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add3~26_combout\ = \inst|REG_B\(13) $ (\inst|alu1|unidad_aritmetica|divi|Add3~25\ $ (!\inst|alu1|unidad_aritmetica|divi|Add2~29_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|REG_B\(13),
	datad => \inst|alu1|unidad_aritmetica|divi|Add2~29_combout\,
	cin => \inst|alu1|unidad_aritmetica|divi|Add3~25\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add3~26_combout\);

-- Location: LCCOMB_X13_Y15_N0
\inst|alu1|unidad_aritmetica|divi|Add3~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add3~28_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan3~28_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add2~29_combout\)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan3~28_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add3~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|unidad_aritmetica|divi|Add2~29_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|LessThan3~28_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|Add3~26_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add3~28_combout\);

-- Location: LCCOMB_X12_Y15_N30
\inst|alu1|unidad_aritmetica|divi|Add3~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add3~30_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan3~28_combout\ & ((\inst|alu1|unidad_aritmetica|divi|Add2~31_combout\))) # (!\inst|alu1|unidad_aritmetica|divi|LessThan3~28_combout\ & 
-- (\inst|alu1|unidad_aritmetica|divi|Add3~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|unidad_aritmetica|divi|Add3~22_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|Add2~31_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan3~28_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add3~30_combout\);

-- Location: LCCOMB_X14_Y15_N6
\inst|alu1|unidad_aritmetica|divi|Add3~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add3~31_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan3~28_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add2~32_combout\)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan3~28_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add3~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add2~32_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|LessThan3~28_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|Add3~20_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add3~31_combout\);

-- Location: LCCOMB_X14_Y15_N8
\inst|alu1|unidad_aritmetica|divi|Add3~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add3~32_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan3~28_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add2~33_combout\)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan3~28_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add3~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add2~33_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|LessThan3~28_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|Add3~18_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add3~32_combout\);

-- Location: LCCOMB_X13_Y13_N20
\inst|alu1|unidad_aritmetica|divi|Add3~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add3~33_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan3~28_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add2~34_combout\)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan3~28_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add3~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|unidad_aritmetica|divi|Add2~34_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|Add3~16_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan3~28_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add3~33_combout\);

-- Location: LCCOMB_X14_Y14_N4
\inst|alu1|unidad_aritmetica|divi|Add3~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add3~34_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan3~28_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add2~35_combout\)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan3~28_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add3~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|unidad_aritmetica|divi|Add2~35_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|Add3~14_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan3~28_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add3~34_combout\);

-- Location: LCCOMB_X13_Y13_N2
\inst|alu1|unidad_aritmetica|divi|Add3~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add3~35_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan3~28_combout\ & ((\inst|alu1|unidad_aritmetica|divi|Add2~36_combout\))) # (!\inst|alu1|unidad_aritmetica|divi|LessThan3~28_combout\ & 
-- (\inst|alu1|unidad_aritmetica|divi|Add3~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|unidad_aritmetica|divi|Add3~12_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|Add2~36_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan3~28_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add3~35_combout\);

-- Location: LCCOMB_X14_Y14_N18
\inst|alu1|unidad_aritmetica|divi|Add3~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add3~36_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan3~28_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add2~37_combout\)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan3~28_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add3~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add2~37_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|Add3~10_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan3~28_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add3~36_combout\);

-- Location: LCCOMB_X13_Y13_N8
\inst|alu1|unidad_aritmetica|divi|Add3~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add3~37_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan3~28_combout\ & ((\inst|alu1|unidad_aritmetica|divi|Add2~38_combout\))) # (!\inst|alu1|unidad_aritmetica|divi|LessThan3~28_combout\ & 
-- (\inst|alu1|unidad_aritmetica|divi|Add3~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|unidad_aritmetica|divi|Add3~8_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|Add2~38_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan3~28_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add3~37_combout\);

-- Location: LCCOMB_X13_Y16_N24
\inst|alu1|unidad_aritmetica|divi|Add3~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add3~38_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan3~28_combout\ & ((\inst|alu1|unidad_aritmetica|divi|Add2~39_combout\))) # (!\inst|alu1|unidad_aritmetica|divi|LessThan3~28_combout\ & 
-- (\inst|alu1|unidad_aritmetica|divi|Add3~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add3~6_combout\,
	datab => \inst|alu1|unidad_aritmetica|divi|Add2~39_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|LessThan3~28_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add3~38_combout\);

-- Location: LCCOMB_X13_Y16_N10
\inst|alu1|unidad_aritmetica|divi|Add3~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add3~39_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan3~28_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add2~40_combout\)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan3~28_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add3~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add2~40_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|LessThan3~28_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|Add3~4_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add3~39_combout\);

-- Location: LCCOMB_X14_Y15_N30
\inst|alu1|unidad_aritmetica|divi|Add3~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add3~40_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan3~28_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add2~41_combout\)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan3~28_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|LessThan3~28_combout\,
	datab => \inst|alu1|unidad_aritmetica|divi|Add2~41_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|Add3~2_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add3~40_combout\);

-- Location: LCCOMB_X13_Y13_N30
\inst|alu1|unidad_aritmetica|divi|Add3~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add3~41_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan3~28_combout\ & (\inst|REG_A\(4))) # (!\inst|alu1|unidad_aritmetica|divi|LessThan3~28_combout\ & ((\inst|alu1|unidad_aritmetica|divi|Add3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(4),
	datac => \inst|alu1|unidad_aritmetica|divi|Add3~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan3~28_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add3~41_combout\);

-- Location: LCCOMB_X13_Y15_N2
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

-- Location: LCCOMB_X13_Y15_N4
\inst|alu1|unidad_aritmetica|divi|LessThan4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan4~3_cout\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add3~41_combout\ & ((!\inst|alu1|unidad_aritmetica|divi|LessThan4~1_cout\) # (!\inst|REG_B\(1)))) # (!\inst|alu1|unidad_aritmetica|divi|Add3~41_combout\ & 
-- (!\inst|REG_B\(1) & !\inst|alu1|unidad_aritmetica|divi|LessThan4~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add3~41_combout\,
	datab => \inst|REG_B\(1),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan4~1_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan4~3_cout\);

-- Location: LCCOMB_X13_Y15_N6
\inst|alu1|unidad_aritmetica|divi|LessThan4~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan4~5_cout\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add3~40_combout\ & (\inst|REG_B\(2) & !\inst|alu1|unidad_aritmetica|divi|LessThan4~3_cout\)) # (!\inst|alu1|unidad_aritmetica|divi|Add3~40_combout\ & 
-- ((\inst|REG_B\(2)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan4~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add3~40_combout\,
	datab => \inst|REG_B\(2),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan4~3_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan4~5_cout\);

-- Location: LCCOMB_X13_Y15_N8
\inst|alu1|unidad_aritmetica|divi|LessThan4~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan4~7_cout\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add3~39_combout\ & ((!\inst|alu1|unidad_aritmetica|divi|LessThan4~5_cout\) # (!\inst|REG_B\(3)))) # (!\inst|alu1|unidad_aritmetica|divi|Add3~39_combout\ & 
-- (!\inst|REG_B\(3) & !\inst|alu1|unidad_aritmetica|divi|LessThan4~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add3~39_combout\,
	datab => \inst|REG_B\(3),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan4~5_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan4~7_cout\);

-- Location: LCCOMB_X13_Y15_N10
\inst|alu1|unidad_aritmetica|divi|LessThan4~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan4~9_cout\ = CARRY((\inst|REG_B\(4) & ((!\inst|alu1|unidad_aritmetica|divi|LessThan4~7_cout\) # (!\inst|alu1|unidad_aritmetica|divi|Add3~38_combout\))) # (!\inst|REG_B\(4) & 
-- (!\inst|alu1|unidad_aritmetica|divi|Add3~38_combout\ & !\inst|alu1|unidad_aritmetica|divi|LessThan4~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(4),
	datab => \inst|alu1|unidad_aritmetica|divi|Add3~38_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan4~7_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan4~9_cout\);

-- Location: LCCOMB_X13_Y15_N12
\inst|alu1|unidad_aritmetica|divi|LessThan4~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan4~11_cout\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add3~37_combout\ & ((!\inst|alu1|unidad_aritmetica|divi|LessThan4~9_cout\) # (!\inst|REG_B\(5)))) # (!\inst|alu1|unidad_aritmetica|divi|Add3~37_combout\ & 
-- (!\inst|REG_B\(5) & !\inst|alu1|unidad_aritmetica|divi|LessThan4~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add3~37_combout\,
	datab => \inst|REG_B\(5),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan4~9_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan4~11_cout\);

-- Location: LCCOMB_X13_Y15_N14
\inst|alu1|unidad_aritmetica|divi|LessThan4~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan4~13_cout\ = CARRY((\inst|REG_B\(6) & ((!\inst|alu1|unidad_aritmetica|divi|LessThan4~11_cout\) # (!\inst|alu1|unidad_aritmetica|divi|Add3~36_combout\))) # (!\inst|REG_B\(6) & 
-- (!\inst|alu1|unidad_aritmetica|divi|Add3~36_combout\ & !\inst|alu1|unidad_aritmetica|divi|LessThan4~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(6),
	datab => \inst|alu1|unidad_aritmetica|divi|Add3~36_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan4~11_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan4~13_cout\);

-- Location: LCCOMB_X13_Y15_N16
\inst|alu1|unidad_aritmetica|divi|LessThan4~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan4~15_cout\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add3~35_combout\ & ((!\inst|alu1|unidad_aritmetica|divi|LessThan4~13_cout\) # (!\inst|REG_B\(7)))) # (!\inst|alu1|unidad_aritmetica|divi|Add3~35_combout\ & 
-- (!\inst|REG_B\(7) & !\inst|alu1|unidad_aritmetica|divi|LessThan4~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add3~35_combout\,
	datab => \inst|REG_B\(7),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan4~13_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan4~15_cout\);

-- Location: LCCOMB_X13_Y15_N18
\inst|alu1|unidad_aritmetica|divi|LessThan4~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan4~17_cout\ = CARRY((\inst|REG_B\(8) & ((!\inst|alu1|unidad_aritmetica|divi|LessThan4~15_cout\) # (!\inst|alu1|unidad_aritmetica|divi|Add3~34_combout\))) # (!\inst|REG_B\(8) & 
-- (!\inst|alu1|unidad_aritmetica|divi|Add3~34_combout\ & !\inst|alu1|unidad_aritmetica|divi|LessThan4~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(8),
	datab => \inst|alu1|unidad_aritmetica|divi|Add3~34_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan4~15_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan4~17_cout\);

-- Location: LCCOMB_X13_Y15_N20
\inst|alu1|unidad_aritmetica|divi|LessThan4~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan4~19_cout\ = CARRY((\inst|REG_B\(9) & (\inst|alu1|unidad_aritmetica|divi|Add3~33_combout\ & !\inst|alu1|unidad_aritmetica|divi|LessThan4~17_cout\)) # (!\inst|REG_B\(9) & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add3~33_combout\) # (!\inst|alu1|unidad_aritmetica|divi|LessThan4~17_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(9),
	datab => \inst|alu1|unidad_aritmetica|divi|Add3~33_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan4~17_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan4~19_cout\);

-- Location: LCCOMB_X13_Y15_N22
\inst|alu1|unidad_aritmetica|divi|LessThan4~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan4~21_cout\ = CARRY((\inst|REG_B\(10) & ((!\inst|alu1|unidad_aritmetica|divi|LessThan4~19_cout\) # (!\inst|alu1|unidad_aritmetica|divi|Add3~32_combout\))) # (!\inst|REG_B\(10) & 
-- (!\inst|alu1|unidad_aritmetica|divi|Add3~32_combout\ & !\inst|alu1|unidad_aritmetica|divi|LessThan4~19_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(10),
	datab => \inst|alu1|unidad_aritmetica|divi|Add3~32_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan4~19_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan4~21_cout\);

-- Location: LCCOMB_X13_Y15_N24
\inst|alu1|unidad_aritmetica|divi|LessThan4~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan4~23_cout\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add3~31_combout\ & ((!\inst|alu1|unidad_aritmetica|divi|LessThan4~21_cout\) # (!\inst|REG_B\(11)))) # (!\inst|alu1|unidad_aritmetica|divi|Add3~31_combout\ & 
-- (!\inst|REG_B\(11) & !\inst|alu1|unidad_aritmetica|divi|LessThan4~21_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add3~31_combout\,
	datab => \inst|REG_B\(11),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan4~21_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan4~23_cout\);

-- Location: LCCOMB_X13_Y15_N26
\inst|alu1|unidad_aritmetica|divi|LessThan4~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan4~25_cout\ = CARRY((\inst|REG_B\(12) & ((!\inst|alu1|unidad_aritmetica|divi|LessThan4~23_cout\) # (!\inst|alu1|unidad_aritmetica|divi|Add3~30_combout\))) # (!\inst|REG_B\(12) & 
-- (!\inst|alu1|unidad_aritmetica|divi|Add3~30_combout\ & !\inst|alu1|unidad_aritmetica|divi|LessThan4~23_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(12),
	datab => \inst|alu1|unidad_aritmetica|divi|Add3~30_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan4~23_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan4~25_cout\);

-- Location: LCCOMB_X13_Y15_N28
\inst|alu1|unidad_aritmetica|divi|LessThan4~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan4~27_cout\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add3~29_combout\ & ((!\inst|alu1|unidad_aritmetica|divi|LessThan4~25_cout\) # (!\inst|REG_B\(13)))) # (!\inst|alu1|unidad_aritmetica|divi|Add3~29_combout\ & 
-- (!\inst|REG_B\(13) & !\inst|alu1|unidad_aritmetica|divi|LessThan4~25_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add3~29_combout\,
	datab => \inst|REG_B\(13),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan4~25_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan4~27_cout\);

-- Location: LCCOMB_X13_Y15_N30
\inst|alu1|unidad_aritmetica|divi|LessThan4~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan4~28_combout\ = (\inst|REG_B\(14) & ((!\inst|alu1|unidad_aritmetica|divi|Add3~28_combout\) # (!\inst|alu1|unidad_aritmetica|divi|LessThan4~27_cout\))) # (!\inst|REG_B\(14) & 
-- (!\inst|alu1|unidad_aritmetica|divi|LessThan4~27_cout\ & !\inst|alu1|unidad_aritmetica|divi|Add3~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(14),
	datad => \inst|alu1|unidad_aritmetica|divi|Add3~28_combout\,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan4~27_cout\,
	combout => \inst|alu1|unidad_aritmetica|divi|LessThan4~28_combout\);

-- Location: LCCOMB_X13_Y12_N4
\inst|alu1|unidad_aritmetica|divi|Add4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add4~0_combout\ = (\inst|REG_B\(0) & (\inst|REG_A\(3) $ (VCC))) # (!\inst|REG_B\(0) & ((\inst|REG_A\(3)) # (GND)))
-- \inst|alu1|unidad_aritmetica|divi|Add4~1\ = CARRY((\inst|REG_A\(3)) # (!\inst|REG_B\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(0),
	datab => \inst|REG_A\(3),
	datad => VCC,
	combout => \inst|alu1|unidad_aritmetica|divi|Add4~0_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add4~1\);

-- Location: LCCOMB_X13_Y12_N6
\inst|alu1|unidad_aritmetica|divi|Add4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add4~2_combout\ = (\inst|alu1|unidad_aritmetica|divi|Add3~41_combout\ & ((\inst|REG_B\(1) & (!\inst|alu1|unidad_aritmetica|divi|Add4~1\)) # (!\inst|REG_B\(1) & (\inst|alu1|unidad_aritmetica|divi|Add4~1\ & VCC)))) # 
-- (!\inst|alu1|unidad_aritmetica|divi|Add3~41_combout\ & ((\inst|REG_B\(1) & ((\inst|alu1|unidad_aritmetica|divi|Add4~1\) # (GND))) # (!\inst|REG_B\(1) & (!\inst|alu1|unidad_aritmetica|divi|Add4~1\))))
-- \inst|alu1|unidad_aritmetica|divi|Add4~3\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add3~41_combout\ & (\inst|REG_B\(1) & !\inst|alu1|unidad_aritmetica|divi|Add4~1\)) # (!\inst|alu1|unidad_aritmetica|divi|Add3~41_combout\ & ((\inst|REG_B\(1)) # 
-- (!\inst|alu1|unidad_aritmetica|divi|Add4~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add3~41_combout\,
	datab => \inst|REG_B\(1),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add4~1\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add4~2_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add4~3\);

-- Location: LCCOMB_X13_Y12_N8
\inst|alu1|unidad_aritmetica|divi|Add4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add4~4_combout\ = ((\inst|REG_B\(2) $ (\inst|alu1|unidad_aritmetica|divi|Add3~40_combout\ $ (\inst|alu1|unidad_aritmetica|divi|Add4~3\)))) # (GND)
-- \inst|alu1|unidad_aritmetica|divi|Add4~5\ = CARRY((\inst|REG_B\(2) & (\inst|alu1|unidad_aritmetica|divi|Add3~40_combout\ & !\inst|alu1|unidad_aritmetica|divi|Add4~3\)) # (!\inst|REG_B\(2) & ((\inst|alu1|unidad_aritmetica|divi|Add3~40_combout\) # 
-- (!\inst|alu1|unidad_aritmetica|divi|Add4~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(2),
	datab => \inst|alu1|unidad_aritmetica|divi|Add3~40_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add4~3\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add4~4_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add4~5\);

-- Location: LCCOMB_X13_Y12_N10
\inst|alu1|unidad_aritmetica|divi|Add4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add4~6_combout\ = (\inst|REG_B\(3) & ((\inst|alu1|unidad_aritmetica|divi|Add3~39_combout\ & (!\inst|alu1|unidad_aritmetica|divi|Add4~5\)) # (!\inst|alu1|unidad_aritmetica|divi|Add3~39_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add4~5\) # (GND))))) # (!\inst|REG_B\(3) & ((\inst|alu1|unidad_aritmetica|divi|Add3~39_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add4~5\ & VCC)) # (!\inst|alu1|unidad_aritmetica|divi|Add3~39_combout\ & 
-- (!\inst|alu1|unidad_aritmetica|divi|Add4~5\))))
-- \inst|alu1|unidad_aritmetica|divi|Add4~7\ = CARRY((\inst|REG_B\(3) & ((!\inst|alu1|unidad_aritmetica|divi|Add4~5\) # (!\inst|alu1|unidad_aritmetica|divi|Add3~39_combout\))) # (!\inst|REG_B\(3) & (!\inst|alu1|unidad_aritmetica|divi|Add3~39_combout\ & 
-- !\inst|alu1|unidad_aritmetica|divi|Add4~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(3),
	datab => \inst|alu1|unidad_aritmetica|divi|Add3~39_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add4~5\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add4~6_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add4~7\);

-- Location: LCCOMB_X13_Y12_N12
\inst|alu1|unidad_aritmetica|divi|Add4~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add4~8_combout\ = ((\inst|alu1|unidad_aritmetica|divi|Add3~38_combout\ $ (\inst|REG_B\(4) $ (\inst|alu1|unidad_aritmetica|divi|Add4~7\)))) # (GND)
-- \inst|alu1|unidad_aritmetica|divi|Add4~9\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add3~38_combout\ & ((!\inst|alu1|unidad_aritmetica|divi|Add4~7\) # (!\inst|REG_B\(4)))) # (!\inst|alu1|unidad_aritmetica|divi|Add3~38_combout\ & (!\inst|REG_B\(4) & 
-- !\inst|alu1|unidad_aritmetica|divi|Add4~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add3~38_combout\,
	datab => \inst|REG_B\(4),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add4~7\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add4~8_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add4~9\);

-- Location: LCCOMB_X13_Y12_N14
\inst|alu1|unidad_aritmetica|divi|Add4~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add4~10_combout\ = (\inst|REG_B\(5) & ((\inst|alu1|unidad_aritmetica|divi|Add3~37_combout\ & (!\inst|alu1|unidad_aritmetica|divi|Add4~9\)) # (!\inst|alu1|unidad_aritmetica|divi|Add3~37_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add4~9\) # (GND))))) # (!\inst|REG_B\(5) & ((\inst|alu1|unidad_aritmetica|divi|Add3~37_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add4~9\ & VCC)) # (!\inst|alu1|unidad_aritmetica|divi|Add3~37_combout\ & 
-- (!\inst|alu1|unidad_aritmetica|divi|Add4~9\))))
-- \inst|alu1|unidad_aritmetica|divi|Add4~11\ = CARRY((\inst|REG_B\(5) & ((!\inst|alu1|unidad_aritmetica|divi|Add4~9\) # (!\inst|alu1|unidad_aritmetica|divi|Add3~37_combout\))) # (!\inst|REG_B\(5) & (!\inst|alu1|unidad_aritmetica|divi|Add3~37_combout\ & 
-- !\inst|alu1|unidad_aritmetica|divi|Add4~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(5),
	datab => \inst|alu1|unidad_aritmetica|divi|Add3~37_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add4~9\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add4~10_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add4~11\);

-- Location: LCCOMB_X13_Y12_N16
\inst|alu1|unidad_aritmetica|divi|Add4~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add4~12_combout\ = ((\inst|alu1|unidad_aritmetica|divi|Add3~36_combout\ $ (\inst|REG_B\(6) $ (\inst|alu1|unidad_aritmetica|divi|Add4~11\)))) # (GND)
-- \inst|alu1|unidad_aritmetica|divi|Add4~13\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add3~36_combout\ & ((!\inst|alu1|unidad_aritmetica|divi|Add4~11\) # (!\inst|REG_B\(6)))) # (!\inst|alu1|unidad_aritmetica|divi|Add3~36_combout\ & (!\inst|REG_B\(6) & 
-- !\inst|alu1|unidad_aritmetica|divi|Add4~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add3~36_combout\,
	datab => \inst|REG_B\(6),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add4~11\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add4~12_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add4~13\);

-- Location: LCCOMB_X13_Y12_N18
\inst|alu1|unidad_aritmetica|divi|Add4~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add4~14_combout\ = (\inst|REG_B\(7) & ((\inst|alu1|unidad_aritmetica|divi|Add3~35_combout\ & (!\inst|alu1|unidad_aritmetica|divi|Add4~13\)) # (!\inst|alu1|unidad_aritmetica|divi|Add3~35_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add4~13\) # (GND))))) # (!\inst|REG_B\(7) & ((\inst|alu1|unidad_aritmetica|divi|Add3~35_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add4~13\ & VCC)) # (!\inst|alu1|unidad_aritmetica|divi|Add3~35_combout\ & 
-- (!\inst|alu1|unidad_aritmetica|divi|Add4~13\))))
-- \inst|alu1|unidad_aritmetica|divi|Add4~15\ = CARRY((\inst|REG_B\(7) & ((!\inst|alu1|unidad_aritmetica|divi|Add4~13\) # (!\inst|alu1|unidad_aritmetica|divi|Add3~35_combout\))) # (!\inst|REG_B\(7) & (!\inst|alu1|unidad_aritmetica|divi|Add3~35_combout\ & 
-- !\inst|alu1|unidad_aritmetica|divi|Add4~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(7),
	datab => \inst|alu1|unidad_aritmetica|divi|Add3~35_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add4~13\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add4~14_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add4~15\);

-- Location: LCCOMB_X13_Y12_N20
\inst|alu1|unidad_aritmetica|divi|Add4~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add4~16_combout\ = ((\inst|REG_B\(8) $ (\inst|alu1|unidad_aritmetica|divi|Add3~34_combout\ $ (\inst|alu1|unidad_aritmetica|divi|Add4~15\)))) # (GND)
-- \inst|alu1|unidad_aritmetica|divi|Add4~17\ = CARRY((\inst|REG_B\(8) & (\inst|alu1|unidad_aritmetica|divi|Add3~34_combout\ & !\inst|alu1|unidad_aritmetica|divi|Add4~15\)) # (!\inst|REG_B\(8) & ((\inst|alu1|unidad_aritmetica|divi|Add3~34_combout\) # 
-- (!\inst|alu1|unidad_aritmetica|divi|Add4~15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(8),
	datab => \inst|alu1|unidad_aritmetica|divi|Add3~34_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add4~15\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add4~16_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add4~17\);

-- Location: LCCOMB_X13_Y12_N22
\inst|alu1|unidad_aritmetica|divi|Add4~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add4~18_combout\ = (\inst|alu1|unidad_aritmetica|divi|Add3~33_combout\ & ((\inst|REG_B\(9) & (!\inst|alu1|unidad_aritmetica|divi|Add4~17\)) # (!\inst|REG_B\(9) & (\inst|alu1|unidad_aritmetica|divi|Add4~17\ & VCC)))) # 
-- (!\inst|alu1|unidad_aritmetica|divi|Add3~33_combout\ & ((\inst|REG_B\(9) & ((\inst|alu1|unidad_aritmetica|divi|Add4~17\) # (GND))) # (!\inst|REG_B\(9) & (!\inst|alu1|unidad_aritmetica|divi|Add4~17\))))
-- \inst|alu1|unidad_aritmetica|divi|Add4~19\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add3~33_combout\ & (\inst|REG_B\(9) & !\inst|alu1|unidad_aritmetica|divi|Add4~17\)) # (!\inst|alu1|unidad_aritmetica|divi|Add3~33_combout\ & ((\inst|REG_B\(9)) # 
-- (!\inst|alu1|unidad_aritmetica|divi|Add4~17\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add3~33_combout\,
	datab => \inst|REG_B\(9),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add4~17\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add4~18_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add4~19\);

-- Location: LCCOMB_X13_Y12_N24
\inst|alu1|unidad_aritmetica|divi|Add4~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add4~20_combout\ = ((\inst|REG_B\(10) $ (\inst|alu1|unidad_aritmetica|divi|Add3~32_combout\ $ (\inst|alu1|unidad_aritmetica|divi|Add4~19\)))) # (GND)
-- \inst|alu1|unidad_aritmetica|divi|Add4~21\ = CARRY((\inst|REG_B\(10) & (\inst|alu1|unidad_aritmetica|divi|Add3~32_combout\ & !\inst|alu1|unidad_aritmetica|divi|Add4~19\)) # (!\inst|REG_B\(10) & ((\inst|alu1|unidad_aritmetica|divi|Add3~32_combout\) # 
-- (!\inst|alu1|unidad_aritmetica|divi|Add4~19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(10),
	datab => \inst|alu1|unidad_aritmetica|divi|Add3~32_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add4~19\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add4~20_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add4~21\);

-- Location: LCCOMB_X13_Y12_N26
\inst|alu1|unidad_aritmetica|divi|Add4~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add4~22_combout\ = (\inst|alu1|unidad_aritmetica|divi|Add3~31_combout\ & ((\inst|REG_B\(11) & (!\inst|alu1|unidad_aritmetica|divi|Add4~21\)) # (!\inst|REG_B\(11) & (\inst|alu1|unidad_aritmetica|divi|Add4~21\ & VCC)))) # 
-- (!\inst|alu1|unidad_aritmetica|divi|Add3~31_combout\ & ((\inst|REG_B\(11) & ((\inst|alu1|unidad_aritmetica|divi|Add4~21\) # (GND))) # (!\inst|REG_B\(11) & (!\inst|alu1|unidad_aritmetica|divi|Add4~21\))))
-- \inst|alu1|unidad_aritmetica|divi|Add4~23\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add3~31_combout\ & (\inst|REG_B\(11) & !\inst|alu1|unidad_aritmetica|divi|Add4~21\)) # (!\inst|alu1|unidad_aritmetica|divi|Add3~31_combout\ & ((\inst|REG_B\(11)) # 
-- (!\inst|alu1|unidad_aritmetica|divi|Add4~21\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add3~31_combout\,
	datab => \inst|REG_B\(11),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add4~21\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add4~22_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add4~23\);

-- Location: LCCOMB_X13_Y12_N28
\inst|alu1|unidad_aritmetica|divi|Add4~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add4~24_combout\ = ((\inst|REG_B\(12) $ (\inst|alu1|unidad_aritmetica|divi|Add3~30_combout\ $ (\inst|alu1|unidad_aritmetica|divi|Add4~23\)))) # (GND)
-- \inst|alu1|unidad_aritmetica|divi|Add4~25\ = CARRY((\inst|REG_B\(12) & (\inst|alu1|unidad_aritmetica|divi|Add3~30_combout\ & !\inst|alu1|unidad_aritmetica|divi|Add4~23\)) # (!\inst|REG_B\(12) & ((\inst|alu1|unidad_aritmetica|divi|Add3~30_combout\) # 
-- (!\inst|alu1|unidad_aritmetica|divi|Add4~23\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(12),
	datab => \inst|alu1|unidad_aritmetica|divi|Add3~30_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add4~23\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add4~24_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add4~25\);

-- Location: LCCOMB_X13_Y12_N30
\inst|alu1|unidad_aritmetica|divi|Add4~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add4~26_combout\ = \inst|alu1|unidad_aritmetica|divi|Add3~29_combout\ $ (\inst|alu1|unidad_aritmetica|divi|Add4~25\ $ (!\inst|REG_B\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|unidad_aritmetica|divi|Add3~29_combout\,
	datad => \inst|REG_B\(13),
	cin => \inst|alu1|unidad_aritmetica|divi|Add4~25\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add4~26_combout\);

-- Location: LCCOMB_X14_Y12_N30
\inst|alu1|unidad_aritmetica|divi|Add4~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add4~28_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan4~28_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add3~29_combout\)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan4~28_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add4~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add3~29_combout\,
	datab => \inst|alu1|unidad_aritmetica|divi|LessThan4~28_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|Add4~26_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add4~28_combout\);

-- Location: LCCOMB_X13_Y12_N0
\inst|alu1|unidad_aritmetica|divi|Add4~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add4~29_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan4~28_combout\ & ((\inst|alu1|unidad_aritmetica|divi|Add3~30_combout\))) # (!\inst|alu1|unidad_aritmetica|divi|LessThan4~28_combout\ & 
-- (\inst|alu1|unidad_aritmetica|divi|Add4~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|unidad_aritmetica|divi|Add4~24_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|Add3~30_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan4~28_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add4~29_combout\);

-- Location: LCCOMB_X13_Y12_N2
\inst|alu1|unidad_aritmetica|divi|Add4~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add4~30_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan4~28_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add3~31_combout\)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan4~28_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add4~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add3~31_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|Add4~22_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan4~28_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add4~30_combout\);

-- Location: LCCOMB_X14_Y15_N4
\inst|alu1|unidad_aritmetica|divi|Add4~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add4~31_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan4~28_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add3~32_combout\)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan4~28_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add4~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|unidad_aritmetica|divi|Add3~32_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|Add4~20_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan4~28_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add4~31_combout\);

-- Location: LCCOMB_X13_Y13_N28
\inst|alu1|unidad_aritmetica|divi|Add4~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add4~32_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan4~28_combout\ & ((\inst|alu1|unidad_aritmetica|divi|Add3~33_combout\))) # (!\inst|alu1|unidad_aritmetica|divi|LessThan4~28_combout\ & 
-- (\inst|alu1|unidad_aritmetica|divi|Add4~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add4~18_combout\,
	datab => \inst|alu1|unidad_aritmetica|divi|Add3~33_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan4~28_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add4~32_combout\);

-- Location: LCCOMB_X14_Y14_N28
\inst|alu1|unidad_aritmetica|divi|Add4~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add4~33_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan4~28_combout\ & ((\inst|alu1|unidad_aritmetica|divi|Add3~34_combout\))) # (!\inst|alu1|unidad_aritmetica|divi|LessThan4~28_combout\ & 
-- (\inst|alu1|unidad_aritmetica|divi|Add4~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|unidad_aritmetica|divi|Add4~16_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|LessThan4~28_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|Add3~34_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add4~33_combout\);

-- Location: LCCOMB_X13_Y13_N14
\inst|alu1|unidad_aritmetica|divi|Add4~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add4~34_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan4~28_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add3~35_combout\)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan4~28_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add4~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|unidad_aritmetica|divi|Add3~35_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|Add4~14_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan4~28_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add4~34_combout\);

-- Location: LCCOMB_X14_Y14_N26
\inst|alu1|unidad_aritmetica|divi|Add4~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add4~35_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan4~28_combout\ & ((\inst|alu1|unidad_aritmetica|divi|Add3~36_combout\))) # (!\inst|alu1|unidad_aritmetica|divi|LessThan4~28_combout\ & 
-- (\inst|alu1|unidad_aritmetica|divi|Add4~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|unidad_aritmetica|divi|Add4~12_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|LessThan4~28_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|Add3~36_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add4~35_combout\);

-- Location: LCCOMB_X13_Y13_N0
\inst|alu1|unidad_aritmetica|divi|Add4~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add4~36_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan4~28_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add3~37_combout\)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan4~28_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add4~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|unidad_aritmetica|divi|Add3~37_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|Add4~10_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan4~28_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add4~36_combout\);

-- Location: LCCOMB_X13_Y16_N4
\inst|alu1|unidad_aritmetica|divi|Add4~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add4~37_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan4~28_combout\ & ((\inst|alu1|unidad_aritmetica|divi|Add3~38_combout\))) # (!\inst|alu1|unidad_aritmetica|divi|LessThan4~28_combout\ & 
-- (\inst|alu1|unidad_aritmetica|divi|Add4~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add4~8_combout\,
	datab => \inst|alu1|unidad_aritmetica|divi|Add3~38_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan4~28_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add4~37_combout\);

-- Location: LCCOMB_X13_Y16_N14
\inst|alu1|unidad_aritmetica|divi|Add4~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add4~38_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan4~28_combout\ & ((\inst|alu1|unidad_aritmetica|divi|Add3~39_combout\))) # (!\inst|alu1|unidad_aritmetica|divi|LessThan4~28_combout\ & 
-- (\inst|alu1|unidad_aritmetica|divi|Add4~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add4~6_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|Add3~39_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan4~28_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add4~38_combout\);

-- Location: LCCOMB_X14_Y15_N18
\inst|alu1|unidad_aritmetica|divi|Add4~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add4~39_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan4~28_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add3~40_combout\)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan4~28_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add4~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add3~40_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|Add4~4_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan4~28_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add4~39_combout\);

-- Location: LCCOMB_X13_Y13_N6
\inst|alu1|unidad_aritmetica|divi|Add4~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add4~40_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan4~28_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add3~41_combout\)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan4~28_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add4~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add3~41_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|Add4~2_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan4~28_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add4~40_combout\);

-- Location: LCCOMB_X13_Y14_N0
\inst|alu1|unidad_aritmetica|divi|Add4~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add4~41_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan4~28_combout\ & (\inst|REG_A\(3))) # (!\inst|alu1|unidad_aritmetica|divi|LessThan4~28_combout\ & ((\inst|alu1|unidad_aritmetica|divi|Add4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(3),
	datac => \inst|alu1|unidad_aritmetica|divi|LessThan4~28_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|Add4~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add4~41_combout\);

-- Location: LCCOMB_X14_Y12_N0
\inst|alu1|unidad_aritmetica|divi|LessThan5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan5~1_cout\ = CARRY((\inst|REG_B\(0) & !\inst|REG_A\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(0),
	datab => \inst|REG_A\(2),
	datad => VCC,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan5~1_cout\);

-- Location: LCCOMB_X14_Y12_N2
\inst|alu1|unidad_aritmetica|divi|LessThan5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan5~3_cout\ = CARRY((\inst|REG_B\(1) & (\inst|alu1|unidad_aritmetica|divi|Add4~41_combout\ & !\inst|alu1|unidad_aritmetica|divi|LessThan5~1_cout\)) # (!\inst|REG_B\(1) & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add4~41_combout\) # (!\inst|alu1|unidad_aritmetica|divi|LessThan5~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(1),
	datab => \inst|alu1|unidad_aritmetica|divi|Add4~41_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan5~1_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan5~3_cout\);

-- Location: LCCOMB_X14_Y12_N4
\inst|alu1|unidad_aritmetica|divi|LessThan5~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan5~5_cout\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add4~40_combout\ & (\inst|REG_B\(2) & !\inst|alu1|unidad_aritmetica|divi|LessThan5~3_cout\)) # (!\inst|alu1|unidad_aritmetica|divi|Add4~40_combout\ & 
-- ((\inst|REG_B\(2)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan5~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add4~40_combout\,
	datab => \inst|REG_B\(2),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan5~3_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan5~5_cout\);

-- Location: LCCOMB_X14_Y12_N6
\inst|alu1|unidad_aritmetica|divi|LessThan5~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan5~7_cout\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add4~39_combout\ & ((!\inst|alu1|unidad_aritmetica|divi|LessThan5~5_cout\) # (!\inst|REG_B\(3)))) # (!\inst|alu1|unidad_aritmetica|divi|Add4~39_combout\ & 
-- (!\inst|REG_B\(3) & !\inst|alu1|unidad_aritmetica|divi|LessThan5~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add4~39_combout\,
	datab => \inst|REG_B\(3),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan5~5_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan5~7_cout\);

-- Location: LCCOMB_X14_Y12_N8
\inst|alu1|unidad_aritmetica|divi|LessThan5~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan5~9_cout\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add4~38_combout\ & (\inst|REG_B\(4) & !\inst|alu1|unidad_aritmetica|divi|LessThan5~7_cout\)) # (!\inst|alu1|unidad_aritmetica|divi|Add4~38_combout\ & 
-- ((\inst|REG_B\(4)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan5~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add4~38_combout\,
	datab => \inst|REG_B\(4),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan5~7_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan5~9_cout\);

-- Location: LCCOMB_X14_Y12_N10
\inst|alu1|unidad_aritmetica|divi|LessThan5~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan5~11_cout\ = CARRY((\inst|REG_B\(5) & (\inst|alu1|unidad_aritmetica|divi|Add4~37_combout\ & !\inst|alu1|unidad_aritmetica|divi|LessThan5~9_cout\)) # (!\inst|REG_B\(5) & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add4~37_combout\) # (!\inst|alu1|unidad_aritmetica|divi|LessThan5~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(5),
	datab => \inst|alu1|unidad_aritmetica|divi|Add4~37_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan5~9_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan5~11_cout\);

-- Location: LCCOMB_X14_Y12_N12
\inst|alu1|unidad_aritmetica|divi|LessThan5~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan5~13_cout\ = CARRY((\inst|REG_B\(6) & ((!\inst|alu1|unidad_aritmetica|divi|LessThan5~11_cout\) # (!\inst|alu1|unidad_aritmetica|divi|Add4~36_combout\))) # (!\inst|REG_B\(6) & 
-- (!\inst|alu1|unidad_aritmetica|divi|Add4~36_combout\ & !\inst|alu1|unidad_aritmetica|divi|LessThan5~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(6),
	datab => \inst|alu1|unidad_aritmetica|divi|Add4~36_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan5~11_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan5~13_cout\);

-- Location: LCCOMB_X14_Y12_N14
\inst|alu1|unidad_aritmetica|divi|LessThan5~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan5~15_cout\ = CARRY((\inst|REG_B\(7) & (\inst|alu1|unidad_aritmetica|divi|Add4~35_combout\ & !\inst|alu1|unidad_aritmetica|divi|LessThan5~13_cout\)) # (!\inst|REG_B\(7) & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add4~35_combout\) # (!\inst|alu1|unidad_aritmetica|divi|LessThan5~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(7),
	datab => \inst|alu1|unidad_aritmetica|divi|Add4~35_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan5~13_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan5~15_cout\);

-- Location: LCCOMB_X14_Y12_N16
\inst|alu1|unidad_aritmetica|divi|LessThan5~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan5~17_cout\ = CARRY((\inst|REG_B\(8) & ((!\inst|alu1|unidad_aritmetica|divi|LessThan5~15_cout\) # (!\inst|alu1|unidad_aritmetica|divi|Add4~34_combout\))) # (!\inst|REG_B\(8) & 
-- (!\inst|alu1|unidad_aritmetica|divi|Add4~34_combout\ & !\inst|alu1|unidad_aritmetica|divi|LessThan5~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(8),
	datab => \inst|alu1|unidad_aritmetica|divi|Add4~34_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan5~15_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan5~17_cout\);

-- Location: LCCOMB_X14_Y12_N18
\inst|alu1|unidad_aritmetica|divi|LessThan5~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan5~19_cout\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add4~33_combout\ & ((!\inst|alu1|unidad_aritmetica|divi|LessThan5~17_cout\) # (!\inst|REG_B\(9)))) # (!\inst|alu1|unidad_aritmetica|divi|Add4~33_combout\ & 
-- (!\inst|REG_B\(9) & !\inst|alu1|unidad_aritmetica|divi|LessThan5~17_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add4~33_combout\,
	datab => \inst|REG_B\(9),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan5~17_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan5~19_cout\);

-- Location: LCCOMB_X14_Y12_N20
\inst|alu1|unidad_aritmetica|divi|LessThan5~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan5~21_cout\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add4~32_combout\ & (\inst|REG_B\(10) & !\inst|alu1|unidad_aritmetica|divi|LessThan5~19_cout\)) # (!\inst|alu1|unidad_aritmetica|divi|Add4~32_combout\ & 
-- ((\inst|REG_B\(10)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan5~19_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add4~32_combout\,
	datab => \inst|REG_B\(10),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan5~19_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan5~21_cout\);

-- Location: LCCOMB_X14_Y12_N22
\inst|alu1|unidad_aritmetica|divi|LessThan5~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan5~23_cout\ = CARRY((\inst|REG_B\(11) & (\inst|alu1|unidad_aritmetica|divi|Add4~31_combout\ & !\inst|alu1|unidad_aritmetica|divi|LessThan5~21_cout\)) # (!\inst|REG_B\(11) & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add4~31_combout\) # (!\inst|alu1|unidad_aritmetica|divi|LessThan5~21_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(11),
	datab => \inst|alu1|unidad_aritmetica|divi|Add4~31_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan5~21_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan5~23_cout\);

-- Location: LCCOMB_X14_Y12_N24
\inst|alu1|unidad_aritmetica|divi|LessThan5~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan5~25_cout\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add4~30_combout\ & (\inst|REG_B\(12) & !\inst|alu1|unidad_aritmetica|divi|LessThan5~23_cout\)) # (!\inst|alu1|unidad_aritmetica|divi|Add4~30_combout\ & 
-- ((\inst|REG_B\(12)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan5~23_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add4~30_combout\,
	datab => \inst|REG_B\(12),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan5~23_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan5~25_cout\);

-- Location: LCCOMB_X14_Y12_N26
\inst|alu1|unidad_aritmetica|divi|LessThan5~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan5~27_cout\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add4~29_combout\ & ((!\inst|alu1|unidad_aritmetica|divi|LessThan5~25_cout\) # (!\inst|REG_B\(13)))) # (!\inst|alu1|unidad_aritmetica|divi|Add4~29_combout\ & 
-- (!\inst|REG_B\(13) & !\inst|alu1|unidad_aritmetica|divi|LessThan5~25_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add4~29_combout\,
	datab => \inst|REG_B\(13),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan5~25_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan5~27_cout\);

-- Location: LCCOMB_X14_Y12_N28
\inst|alu1|unidad_aritmetica|divi|LessThan5~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan5~28_combout\ = (\inst|alu1|unidad_aritmetica|divi|Add4~28_combout\ & (\inst|REG_B\(14) & !\inst|alu1|unidad_aritmetica|divi|LessThan5~27_cout\)) # (!\inst|alu1|unidad_aritmetica|divi|Add4~28_combout\ & 
-- ((\inst|REG_B\(14)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan5~27_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add4~28_combout\,
	datab => \inst|REG_B\(14),
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan5~27_cout\,
	combout => \inst|alu1|unidad_aritmetica|divi|LessThan5~28_combout\);

-- Location: LCCOMB_X12_Y16_N10
\inst|alu1|unidad_aritmetica|Mux13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|Mux13~1_combout\ = (\inst|alu1|unidad_aritmetica|Mux13~0_combout\ & (((!\inst|alu1|unidad_aritmetica|divi|LessThan5~28_combout\)) # (!\inst|alu1|Mux16~0_combout\))) # (!\inst|alu1|unidad_aritmetica|Mux13~0_combout\ & 
-- (\inst|alu1|Mux16~0_combout\ & (\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Sc[2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|Mux13~0_combout\,
	datab => \inst|alu1|Mux16~0_combout\,
	datac => \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Sc[2]~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan5~28_combout\,
	combout => \inst|alu1|unidad_aritmetica|Mux13~1_combout\);

-- Location: LCCOMB_X12_Y16_N30
\inst|alu1|Mux13~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux13~4_combout\ = (\inst|OP\(1) & ((\inst|OP\(0) & ((\inst|alu1|unidad_aritmetica|Mux13~1_combout\))) # (!\inst|OP\(0) & (\inst|REG_A\(3))))) # (!\inst|OP\(1) & (\inst|REG_A\(3) & (\inst|OP\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(3),
	datab => \inst|OP\(1),
	datac => \inst|OP\(0),
	datad => \inst|alu1|unidad_aritmetica|Mux13~1_combout\,
	combout => \inst|alu1|Mux13~4_combout\);

-- Location: LCCOMB_X23_Y14_N2
\inst|alu1|unidad_logica|aux[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|aux[1]~2_combout\ = (\inst|REG_A\(1) & ((\inst|alu1|unidad_logica|aux[0]~1_cout\) # (GND))) # (!\inst|REG_A\(1) & (!\inst|alu1|unidad_logica|aux[0]~1_cout\))
-- \inst|alu1|unidad_logica|aux[1]~3\ = CARRY((\inst|REG_A\(1)) # (!\inst|alu1|unidad_logica|aux[0]~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|REG_A\(1),
	datad => VCC,
	cin => \inst|alu1|unidad_logica|aux[0]~1_cout\,
	combout => \inst|alu1|unidad_logica|aux[1]~2_combout\,
	cout => \inst|alu1|unidad_logica|aux[1]~3\);

-- Location: LCCOMB_X23_Y14_N4
\inst|alu1|unidad_logica|aux[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|aux[2]~4_combout\ = (\inst|REG_A\(2) & (!\inst|alu1|unidad_logica|aux[1]~3\ & VCC)) # (!\inst|REG_A\(2) & (\inst|alu1|unidad_logica|aux[1]~3\ $ (GND)))
-- \inst|alu1|unidad_logica|aux[2]~5\ = CARRY((!\inst|REG_A\(2) & !\inst|alu1|unidad_logica|aux[1]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(2),
	datad => VCC,
	cin => \inst|alu1|unidad_logica|aux[1]~3\,
	combout => \inst|alu1|unidad_logica|aux[2]~4_combout\,
	cout => \inst|alu1|unidad_logica|aux[2]~5\);

-- Location: LCCOMB_X24_Y15_N24
\inst|alu1|unidad_logica|Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|Mux13~0_combout\ = (\inst|alu1|Mux16~0_combout\ & (\inst|alu1|Mux17~0_combout\)) # (!\inst|alu1|Mux16~0_combout\ & ((\inst|alu1|Mux17~0_combout\ & ((\inst|REG_A\(2)) # (\inst|REG_B\(2)))) # (!\inst|alu1|Mux17~0_combout\ & 
-- (\inst|REG_A\(2) & \inst|REG_B\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux16~0_combout\,
	datab => \inst|alu1|Mux17~0_combout\,
	datac => \inst|REG_A\(2),
	datad => \inst|REG_B\(2),
	combout => \inst|alu1|unidad_logica|Mux13~0_combout\);

-- Location: LCCOMB_X24_Y15_N26
\inst|alu1|unidad_logica|Mux13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|Mux13~1_combout\ = (\inst|alu1|Mux16~0_combout\ & ((\inst|alu1|unidad_logica|Mux13~0_combout\ & ((\inst|alu1|unidad_logica|aux[2]~4_combout\))) # (!\inst|alu1|unidad_logica|Mux13~0_combout\ & (!\inst|REG_A\(2))))) # 
-- (!\inst|alu1|Mux16~0_combout\ & (((\inst|alu1|unidad_logica|Mux13~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux16~0_combout\,
	datab => \inst|REG_A\(2),
	datac => \inst|alu1|unidad_logica|aux[2]~4_combout\,
	datad => \inst|alu1|unidad_logica|Mux13~0_combout\,
	combout => \inst|alu1|unidad_logica|Mux13~1_combout\);

-- Location: LCCOMB_X12_Y16_N16
\inst|alu1|Mux13~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux13~8_combout\ = (!\inst|OP\(0) & (\inst|alu1|unidad_logica|Mux13~1_combout\ & !\inst|OP\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|OP\(0),
	datac => \inst|alu1|unidad_logica|Mux13~1_combout\,
	datad => \inst|OP\(1),
	combout => \inst|alu1|Mux13~8_combout\);

-- Location: LCCOMB_X12_Y16_N0
\inst|alu1|Mux13~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux13~5_combout\ = (\inst|OP\(2) & ((\inst|OP\(3)) # ((\inst|alu1|Mux13~4_combout\) # (\inst|alu1|Mux13~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|OP\(3),
	datab => \inst|OP\(2),
	datac => \inst|alu1|Mux13~4_combout\,
	datad => \inst|alu1|Mux13~8_combout\,
	combout => \inst|alu1|Mux13~5_combout\);

-- Location: LCCOMB_X12_Y16_N8
\inst|alu1|Mux15~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux15~2_combout\ = (\inst|OP\(3) & !\inst|OP\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|OP\(3),
	datad => \inst|OP\(2),
	combout => \inst|alu1|Mux15~2_combout\);

-- Location: LCCOMB_X19_Y15_N12
\inst|alu1|comparador|comparaP:1:comp|gout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|comparador|comparaP:1:comp|gout~0_combout\ = (\inst|REG_B\(1) & (!\inst|REG_B\(0) & (\inst|REG_A\(0) & \inst|REG_A\(1)))) # (!\inst|REG_B\(1) & ((\inst|REG_A\(1)) # ((!\inst|REG_B\(0) & \inst|REG_A\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(1),
	datab => \inst|REG_B\(0),
	datac => \inst|REG_A\(0),
	datad => \inst|REG_A\(1),
	combout => \inst|alu1|comparador|comparaP:1:comp|gout~0_combout\);

-- Location: LCCOMB_X21_Y15_N18
\inst|alu1|comparador|comparaP:2:comp|gout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|comparador|comparaP:2:comp|gout~0_combout\ = (\inst|REG_B\(2) & (\inst|alu1|comparador|comparaP:1:comp|gout~0_combout\ & \inst|REG_A\(2))) # (!\inst|REG_B\(2) & ((\inst|alu1|comparador|comparaP:1:comp|gout~0_combout\) # (\inst|REG_A\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(2),
	datac => \inst|alu1|comparador|comparaP:1:comp|gout~0_combout\,
	datad => \inst|REG_A\(2),
	combout => \inst|alu1|comparador|comparaP:2:comp|gout~0_combout\);

-- Location: LCCOMB_X21_Y16_N16
\inst|alu1|comparador|comparaP:3:comp|gout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|comparador|comparaP:3:comp|gout~0_combout\ = (\inst|REG_A\(3) & ((\inst|alu1|comparador|comparaP:2:comp|gout~0_combout\) # (!\inst|REG_B\(3)))) # (!\inst|REG_A\(3) & (!\inst|REG_B\(3) & \inst|alu1|comparador|comparaP:2:comp|gout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|REG_A\(3),
	datac => \inst|REG_B\(3),
	datad => \inst|alu1|comparador|comparaP:2:comp|gout~0_combout\,
	combout => \inst|alu1|comparador|comparaP:3:comp|gout~0_combout\);

-- Location: LCCOMB_X21_Y16_N26
\inst|alu1|comparador|comparaP:4:comp|gout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|comparador|comparaP:4:comp|gout~0_combout\ = (\inst|REG_A\(4) & ((\inst|alu1|comparador|comparaP:3:comp|gout~0_combout\) # (!\inst|REG_B\(4)))) # (!\inst|REG_A\(4) & (!\inst|REG_B\(4) & \inst|alu1|comparador|comparaP:3:comp|gout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(4),
	datac => \inst|REG_B\(4),
	datad => \inst|alu1|comparador|comparaP:3:comp|gout~0_combout\,
	combout => \inst|alu1|comparador|comparaP:4:comp|gout~0_combout\);

-- Location: LCCOMB_X21_Y16_N12
\inst|alu1|comparador|comparaP:5:comp|gout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|comparador|comparaP:5:comp|gout~0_combout\ = (\inst|REG_B\(5) & (\inst|alu1|comparador|comparaP:4:comp|gout~0_combout\ & \inst|REG_A\(5))) # (!\inst|REG_B\(5) & ((\inst|alu1|comparador|comparaP:4:comp|gout~0_combout\) # (\inst|REG_A\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(5),
	datac => \inst|alu1|comparador|comparaP:4:comp|gout~0_combout\,
	datad => \inst|REG_A\(5),
	combout => \inst|alu1|comparador|comparaP:5:comp|gout~0_combout\);

-- Location: LCCOMB_X21_Y16_N14
\inst|alu1|comparador|comparaP:6:comp|gout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|comparador|comparaP:6:comp|gout~0_combout\ = (\inst|REG_A\(6) & ((\inst|alu1|comparador|comparaP:5:comp|gout~0_combout\) # (!\inst|REG_B\(6)))) # (!\inst|REG_A\(6) & (!\inst|REG_B\(6) & \inst|alu1|comparador|comparaP:5:comp|gout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(6),
	datab => \inst|REG_B\(6),
	datad => \inst|alu1|comparador|comparaP:5:comp|gout~0_combout\,
	combout => \inst|alu1|comparador|comparaP:6:comp|gout~0_combout\);

-- Location: LCCOMB_X21_Y16_N28
\inst|alu1|comparador|comparaP:7:comp|gout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|comparador|comparaP:7:comp|gout~0_combout\ = (\inst|REG_A\(7) & ((\inst|alu1|comparador|comparaP:6:comp|gout~0_combout\) # (!\inst|REG_B\(7)))) # (!\inst|REG_A\(7) & (\inst|alu1|comparador|comparaP:6:comp|gout~0_combout\ & !\inst|REG_B\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|REG_A\(7),
	datac => \inst|alu1|comparador|comparaP:6:comp|gout~0_combout\,
	datad => \inst|REG_B\(7),
	combout => \inst|alu1|comparador|comparaP:7:comp|gout~0_combout\);

-- Location: LCCOMB_X21_Y16_N2
\inst|alu1|comparador|comparaP:8:comp|gout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|comparador|comparaP:8:comp|gout~0_combout\ = (\inst|REG_A\(8) & ((\inst|alu1|comparador|comparaP:7:comp|gout~0_combout\) # (!\inst|REG_B\(8)))) # (!\inst|REG_A\(8) & (!\inst|REG_B\(8) & \inst|alu1|comparador|comparaP:7:comp|gout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(8),
	datac => \inst|REG_B\(8),
	datad => \inst|alu1|comparador|comparaP:7:comp|gout~0_combout\,
	combout => \inst|alu1|comparador|comparaP:8:comp|gout~0_combout\);

-- Location: LCCOMB_X21_Y16_N20
\inst|alu1|comparador|comparaP:9:comp|gout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|comparador|comparaP:9:comp|gout~0_combout\ = (\inst|REG_A\(9) & ((\inst|alu1|comparador|comparaP:8:comp|gout~0_combout\) # (!\inst|REG_B\(9)))) # (!\inst|REG_A\(9) & (!\inst|REG_B\(9) & \inst|alu1|comparador|comparaP:8:comp|gout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(9),
	datac => \inst|REG_B\(9),
	datad => \inst|alu1|comparador|comparaP:8:comp|gout~0_combout\,
	combout => \inst|alu1|comparador|comparaP:9:comp|gout~0_combout\);

-- Location: LCCOMB_X24_Y13_N4
\inst|alu1|comparador|comparaP:10:comp|gout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|comparador|comparaP:10:comp|gout~0_combout\ = (\inst|REG_A\(10) & ((\inst|alu1|comparador|comparaP:9:comp|gout~0_combout\) # (!\inst|REG_B\(10)))) # (!\inst|REG_A\(10) & (!\inst|REG_B\(10) & 
-- \inst|alu1|comparador|comparaP:9:comp|gout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(10),
	datac => \inst|REG_B\(10),
	datad => \inst|alu1|comparador|comparaP:9:comp|gout~0_combout\,
	combout => \inst|alu1|comparador|comparaP:10:comp|gout~0_combout\);

-- Location: LCCOMB_X24_Y13_N14
\inst|alu1|comparador|comparaP:11:comp|gout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|comparador|comparaP:11:comp|gout~0_combout\ = (\inst|REG_A\(11) & ((\inst|alu1|comparador|comparaP:10:comp|gout~0_combout\) # (!\inst|REG_B\(11)))) # (!\inst|REG_A\(11) & (\inst|alu1|comparador|comparaP:10:comp|gout~0_combout\ & 
-- !\inst|REG_B\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(11),
	datab => \inst|alu1|comparador|comparaP:10:comp|gout~0_combout\,
	datad => \inst|REG_B\(11),
	combout => \inst|alu1|comparador|comparaP:11:comp|gout~0_combout\);

-- Location: LCCOMB_X23_Y13_N16
\inst|alu1|comparador|comparaP:12:comp|gout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|comparador|comparaP:12:comp|gout~0_combout\ = (\inst|REG_A\(12) & ((\inst|alu1|comparador|comparaP:11:comp|gout~0_combout\) # (!\inst|REG_B\(12)))) # (!\inst|REG_A\(12) & (!\inst|REG_B\(12) & 
-- \inst|alu1|comparador|comparaP:11:comp|gout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(12),
	datab => \inst|REG_B\(12),
	datac => \inst|alu1|comparador|comparaP:11:comp|gout~0_combout\,
	combout => \inst|alu1|comparador|comparaP:12:comp|gout~0_combout\);

-- Location: LCCOMB_X22_Y13_N28
\inst|alu1|comparador|comparaP:13:comp|gout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|comparador|comparaP:13:comp|gout~0_combout\ = (\inst|REG_A\(13) & ((\inst|alu1|comparador|comparaP:12:comp|gout~0_combout\) # (!\inst|REG_B\(13)))) # (!\inst|REG_A\(13) & (!\inst|REG_B\(13) & 
-- \inst|alu1|comparador|comparaP:12:comp|gout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(13),
	datac => \inst|REG_B\(13),
	datad => \inst|alu1|comparador|comparaP:12:comp|gout~0_combout\,
	combout => \inst|alu1|comparador|comparaP:13:comp|gout~0_combout\);

-- Location: LCCOMB_X21_Y13_N24
\inst|alu1|comparador|comparaP:14:comp|gout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|comparador|comparaP:14:comp|gout~0_combout\ = (\inst|REG_A\(14) & ((\inst|alu1|comparador|comparaP:13:comp|gout~0_combout\) # (!\inst|REG_B\(14)))) # (!\inst|REG_A\(14) & (!\inst|REG_B\(14) & 
-- \inst|alu1|comparador|comparaP:13:comp|gout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|REG_A\(14),
	datac => \inst|REG_B\(14),
	datad => \inst|alu1|comparador|comparaP:13:comp|gout~0_combout\,
	combout => \inst|alu1|comparador|comparaP:14:comp|gout~0_combout\);

-- Location: LCCOMB_X19_Y16_N6
\inst|alu1|Mux13~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux13~2_combout\ = (\inst|alu1|Mux7~1_combout\ & ((\inst|REG_B\(15) & (\inst|REG_A\(15) & \inst|alu1|comparador|comparaP:14:comp|gout~0_combout\)) # (!\inst|REG_B\(15) & ((\inst|REG_A\(15)) # 
-- (\inst|alu1|comparador|comparaP:14:comp|gout~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(15),
	datab => \inst|REG_A\(15),
	datac => \inst|alu1|comparador|comparaP:14:comp|gout~0_combout\,
	datad => \inst|alu1|Mux7~1_combout\,
	combout => \inst|alu1|Mux13~2_combout\);

-- Location: LCCOMB_X12_Y16_N28
\inst|alu1|Mux13~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux13~3_combout\ = (\inst|alu1|Mux15~2_combout\ & ((\inst|alu1|Mux13~2_combout\) # ((!\inst|alu1|Mux7~1_combout\ & \inst|alu1|unidad_aritmetica|Mux13~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux7~1_combout\,
	datab => \inst|alu1|Mux15~2_combout\,
	datac => \inst|alu1|Mux13~2_combout\,
	datad => \inst|alu1|unidad_aritmetica|Mux13~1_combout\,
	combout => \inst|alu1|Mux13~3_combout\);

-- Location: LCCOMB_X12_Y16_N12
\inst|alu1|Mux13~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux13~7_combout\ = (\inst|alu1|Mux13~5_combout\) # ((\inst|alu1|Mux13~3_combout\) # ((\inst|alu1|Mux13~6_combout\ & \inst|alu1|unidad_logica|Mux13~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux13~6_combout\,
	datab => \inst|alu1|Mux13~5_combout\,
	datac => \inst|alu1|unidad_logica|Mux13~1_combout\,
	datad => \inst|alu1|Mux13~3_combout\,
	combout => \inst|alu1|Mux13~7_combout\);

-- Location: LCCOMB_X12_Y16_N20
\inst|reggy~242\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~242_combout\ = (\inst|Equal1~0_combout\ & (((\inst|alu1|Mux13~7_combout\)))) # (!\inst|Equal1~0_combout\ & ((\inst|reggy~241_combout\) # ((\inst|OP[3]~2_combout\ & \inst|alu1|Mux13~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|OP[3]~2_combout\,
	datab => \inst|reggy~241_combout\,
	datac => \inst|Equal1~0_combout\,
	datad => \inst|alu1|Mux13~7_combout\,
	combout => \inst|reggy~242_combout\);

-- Location: FF_X12_Y16_N21
\inst|reggy~70\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|reggy~242_combout\,
	ena => \inst|reggy~183_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy~70_q\);

-- Location: LCCOMB_X12_Y14_N30
\inst|reggy~168\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~168_combout\ = (\inst|reggy~154_combout\ & (((\inst|reggy~155_combout\)))) # (!\inst|reggy~154_combout\ & ((\inst|reggy~155_combout\ & (\inst|reggy~38_q\)) # (!\inst|reggy~155_combout\ & ((\inst|reggy~22_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy~154_combout\,
	datab => \inst|reggy~38_q\,
	datac => \inst|reggy~22_q\,
	datad => \inst|reggy~155_combout\,
	combout => \inst|reggy~168_combout\);

-- Location: LCCOMB_X11_Y16_N4
\inst|reggy~169\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~169_combout\ = (\inst|reggy~154_combout\ & ((\inst|reggy~168_combout\ & (\inst|reggy~70_q\)) # (!\inst|reggy~168_combout\ & ((\inst|reggy~54_q\))))) # (!\inst|reggy~154_combout\ & (((\inst|reggy~168_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy~154_combout\,
	datab => \inst|reggy~70_q\,
	datac => \inst|reggy~54_q\,
	datad => \inst|reggy~168_combout\,
	combout => \inst|reggy~169_combout\);

-- Location: FF_X19_Y15_N9
\inst|REG_A[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~169_combout\,
	sload => VCC,
	ena => \inst|OP[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|REG_A\(2));

-- Location: LCCOMB_X23_Y14_N6
\inst|alu1|unidad_logica|aux[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|aux[3]~6_combout\ = (\inst|REG_A\(3) & ((\inst|alu1|unidad_logica|aux[2]~5\) # (GND))) # (!\inst|REG_A\(3) & (!\inst|alu1|unidad_logica|aux[2]~5\))
-- \inst|alu1|unidad_logica|aux[3]~7\ = CARRY((\inst|REG_A\(3)) # (!\inst|alu1|unidad_logica|aux[2]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(3),
	datad => VCC,
	cin => \inst|alu1|unidad_logica|aux[2]~5\,
	combout => \inst|alu1|unidad_logica|aux[3]~6_combout\,
	cout => \inst|alu1|unidad_logica|aux[3]~7\);

-- Location: LCCOMB_X21_Y17_N24
\inst|reggy~231\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~231_combout\ = (\inst|alu1|Mux16~0_combout\ & (((\inst|alu1|Mux17~0_combout\)))) # (!\inst|alu1|Mux16~0_combout\ & ((\inst|REG_A\(3) & ((\inst|alu1|Mux17~0_combout\) # (\inst|REG_B\(3)))) # (!\inst|REG_A\(3) & (\inst|alu1|Mux17~0_combout\ & 
-- \inst|REG_B\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux16~0_combout\,
	datab => \inst|REG_A\(3),
	datac => \inst|alu1|Mux17~0_combout\,
	datad => \inst|REG_B\(3),
	combout => \inst|reggy~231_combout\);

-- Location: LCCOMB_X21_Y17_N26
\inst|reggy~232\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~232_combout\ = (\inst|alu1|Mux16~0_combout\ & ((\inst|reggy~231_combout\ & ((\inst|alu1|unidad_logica|aux[3]~6_combout\))) # (!\inst|reggy~231_combout\ & (!\inst|REG_A\(3))))) # (!\inst|alu1|Mux16~0_combout\ & (((\inst|reggy~231_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux16~0_combout\,
	datab => \inst|REG_A\(3),
	datac => \inst|alu1|unidad_logica|aux[3]~6_combout\,
	datad => \inst|reggy~231_combout\,
	combout => \inst|reggy~232_combout\);

-- Location: LCCOMB_X17_Y13_N4
\inst|reggy~193\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~193_combout\ = (\inst|MAR\(10) & ((\inst|MAR\(9) & (!\inst|MAR\(11) & !\inst|MAR\(8))) # (!\inst|MAR\(9) & (\inst|MAR\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MAR\(9),
	datab => \inst|MAR\(11),
	datac => \inst|MAR\(10),
	datad => \inst|MAR\(8),
	combout => \inst|reggy~193_combout\);

-- Location: LCCOMB_X18_Y17_N24
\inst|reggy~194\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~194_combout\ = (\inst|reggy~193_combout\ & (!\inst|OP[3]~1_combout\)) # (!\inst|reggy~193_combout\ & ((\inst|reggy~192_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|OP[3]~1_combout\,
	datac => \inst|reggy~192_combout\,
	datad => \inst|reggy~193_combout\,
	combout => \inst|reggy~194_combout\);

-- Location: LCCOMB_X19_Y17_N18
\inst|reggy~237\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~237_combout\ = (\inst|OP\(2) & ((\inst|REG_A\(4)) # (\inst|OP\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|OP\(2),
	datac => \inst|REG_A\(4),
	datad => \inst|OP\(3),
	combout => \inst|reggy~237_combout\);

-- Location: LCCOMB_X19_Y17_N16
\inst|reggy~238\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~238_combout\ = (\inst|reggy~193_combout\ & ((\inst|mov\(3)) # ((\inst|reggy~194_combout\)))) # (!\inst|reggy~193_combout\ & (((\inst|reggy~237_combout\ & !\inst|reggy~194_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|mov\(3),
	datab => \inst|reggy~237_combout\,
	datac => \inst|reggy~193_combout\,
	datad => \inst|reggy~194_combout\,
	combout => \inst|reggy~238_combout\);

-- Location: LCCOMB_X18_Y17_N2
\inst|cat~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|cat~6_combout\ = (\inst|pr_state.state3~q\ & (((\inst|mov\(3))))) # (!\inst|pr_state.state3~q\ & ((\inst|enable~q\ & (\inst|REG_D\(3))) # (!\inst|enable~q\ & ((\inst|mov\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pr_state.state3~q\,
	datab => \inst|REG_D\(3),
	datac => \inst|mov\(3),
	datad => \inst|enable~q\,
	combout => \inst|cat~6_combout\);

-- Location: FF_X18_Y17_N3
\inst|cat[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|cat~6_combout\,
	ena => \inst|cat[0][8]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cat[0][3]~q\);

-- Location: LCCOMB_X17_Y17_N18
\inst|REG_D~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|REG_D~7_combout\ = (\inst|REG_D~0_combout\ & ((\inst|MAR\(1) & ((\inst|reggy~167_combout\))) # (!\inst|MAR\(1) & (\inst|cat[0][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cat[0][3]~q\,
	datab => \inst|MAR\(1),
	datac => \inst|reggy~167_combout\,
	datad => \inst|REG_D~0_combout\,
	combout => \inst|REG_D~7_combout\);

-- Location: FF_X17_Y17_N19
\inst|REG_D[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|REG_D~7_combout\,
	ena => \inst|REG_D[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|REG_D\(3));

-- Location: LCCOMB_X22_Y18_N14
\inst|alu1|unidad_aritmetica|mult|multi3|sR:3:sP|Suma~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi3|sR:3:sP|Suma~2_combout\ = \inst|alu1|unidad_aritmetica|mult|multi2|sR:3:sP|Suma~0_combout\ $ (((\inst|REG_B\(3) & \inst|REG_A\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|unidad_aritmetica|mult|multi2|sR:3:sP|Suma~0_combout\,
	datac => \inst|REG_B\(3),
	datad => \inst|REG_A\(0),
	combout => \inst|alu1|unidad_aritmetica|mult|multi3|sR:3:sP|Suma~2_combout\);

-- Location: LCCOMB_X19_Y16_N14
\inst|reggy~356\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~356_combout\ = ((\inst|OP\(2)) # (\inst|OP\(1))) # (!\inst|OP\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|OP\(0),
	datac => \inst|OP\(2),
	datad => \inst|OP\(1),
	combout => \inst|reggy~356_combout\);

-- Location: LCCOMB_X22_Y15_N12
\inst|reggy~233\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~233_combout\ = (\inst|alu1|Mux17~0_combout\ & ((\inst|alu1|unidad_aritmetica|resta|negativo|Add0~6_combout\) # ((\inst|reggy~187_combout\)))) # (!\inst|alu1|Mux17~0_combout\ & (((\inst|alu1|unidad_aritmetica|suma|negativo|Add0~6_combout\ & 
-- !\inst|reggy~187_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|resta|negativo|Add0~6_combout\,
	datab => \inst|alu1|unidad_aritmetica|suma|negativo|Add0~6_combout\,
	datac => \inst|alu1|Mux17~0_combout\,
	datad => \inst|reggy~187_combout\,
	combout => \inst|reggy~233_combout\);

-- Location: LCCOMB_X22_Y15_N30
\inst|reggy~234\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~234_combout\ = (\inst|reggy~233_combout\ & (((!\inst|reggy~187_combout\)) # (!\inst|alu1|unidad_aritmetica|resta|sR:3:sP|Suma~0_combout\))) # (!\inst|reggy~233_combout\ & (((\inst|alu1|unidad_aritmetica|suma|sR:3:sP|Suma~0_combout\ & 
-- \inst|reggy~187_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy~233_combout\,
	datab => \inst|alu1|unidad_aritmetica|resta|sR:3:sP|Suma~0_combout\,
	datac => \inst|alu1|unidad_aritmetica|suma|sR:3:sP|Suma~0_combout\,
	datad => \inst|reggy~187_combout\,
	combout => \inst|reggy~234_combout\);

-- Location: LCCOMB_X24_Y15_N16
\inst|reggy~186\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~186_combout\ = (\inst|alu1|Mux16~0_combout\ & ((\inst|alu1|Mux17~0_combout\) # (!\inst|alu1|unidad_aritmetica|mult|multi7|sR:14:sP|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux16~0_combout\,
	datab => \inst|alu1|Mux17~0_combout\,
	datac => \inst|alu1|unidad_aritmetica|mult|multi7|sR:14:sP|Cout~0_combout\,
	combout => \inst|reggy~186_combout\);

-- Location: LCCOMB_X22_Y15_N4
\inst|reggy~235\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~235_combout\ = (\inst|reggy~356_combout\ & (((\inst|reggy~234_combout\) # (\inst|reggy~186_combout\)))) # (!\inst|reggy~356_combout\ & (\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~6_combout\ & ((!\inst|reggy~186_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy~356_combout\,
	datab => \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~6_combout\,
	datac => \inst|reggy~234_combout\,
	datad => \inst|reggy~186_combout\,
	combout => \inst|reggy~235_combout\);

-- Location: LCCOMB_X22_Y15_N26
\inst|reggy~236\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~236_combout\ = (\inst|reggy~235_combout\ & (((!\inst|reggy~186_combout\)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan4~28_combout\))) # (!\inst|reggy~235_combout\ & (((\inst|alu1|unidad_aritmetica|mult|multi3|sR:3:sP|Suma~2_combout\ & 
-- \inst|reggy~186_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|LessThan4~28_combout\,
	datab => \inst|alu1|unidad_aritmetica|mult|multi3|sR:3:sP|Suma~2_combout\,
	datac => \inst|reggy~235_combout\,
	datad => \inst|reggy~186_combout\,
	combout => \inst|reggy~236_combout\);

-- Location: LCCOMB_X19_Y17_N6
\inst|reggy~239\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~239_combout\ = (\inst|reggy~194_combout\ & ((\inst|reggy~238_combout\ & (\inst|REG_D\(3))) # (!\inst|reggy~238_combout\ & ((\inst|reggy~236_combout\))))) # (!\inst|reggy~194_combout\ & (\inst|reggy~238_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy~194_combout\,
	datab => \inst|reggy~238_combout\,
	datac => \inst|REG_D\(3),
	datad => \inst|reggy~236_combout\,
	combout => \inst|reggy~239_combout\);

-- Location: LCCOMB_X19_Y17_N26
\inst|reggy~240\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~240_combout\ = (\inst|reggy~199_combout\ & (\inst|reggy~232_combout\)) # (!\inst|reggy~199_combout\ & ((\inst|reggy~239_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy~199_combout\,
	datab => \inst|reggy~232_combout\,
	datad => \inst|reggy~239_combout\,
	combout => \inst|reggy~240_combout\);

-- Location: FF_X12_Y17_N17
\inst|reggy~55\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~240_combout\,
	sload => VCC,
	ena => \inst|reggy~180_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy~55_q\);

-- Location: LCCOMB_X12_Y17_N18
\inst|reggy~166\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~166_combout\ = (\inst|reggy~154_combout\ & ((\inst|reggy~55_q\) # ((\inst|reggy~155_combout\)))) # (!\inst|reggy~154_combout\ & (((\inst|reggy~23_q\ & !\inst|reggy~155_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy~154_combout\,
	datab => \inst|reggy~55_q\,
	datac => \inst|reggy~23_q\,
	datad => \inst|reggy~155_combout\,
	combout => \inst|reggy~166_combout\);

-- Location: LCCOMB_X19_Y17_N4
\inst|reggy~167\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~167_combout\ = (\inst|reggy~155_combout\ & ((\inst|reggy~166_combout\ & ((\inst|reggy~71_q\))) # (!\inst|reggy~166_combout\ & (\inst|reggy~39_q\)))) # (!\inst|reggy~155_combout\ & (\inst|reggy~166_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy~155_combout\,
	datab => \inst|reggy~166_combout\,
	datac => \inst|reggy~39_q\,
	datad => \inst|reggy~71_q\,
	combout => \inst|reggy~167_combout\);

-- Location: FF_X19_Y15_N23
\inst|REG_A[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~167_combout\,
	sload => VCC,
	ena => \inst|OP[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|REG_A\(3));

-- Location: LCCOMB_X23_Y14_N8
\inst|alu1|unidad_logica|aux[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|aux[4]~8_combout\ = (\inst|REG_A\(4) & (!\inst|alu1|unidad_logica|aux[3]~7\ & VCC)) # (!\inst|REG_A\(4) & (\inst|alu1|unidad_logica|aux[3]~7\ $ (GND)))
-- \inst|alu1|unidad_logica|aux[4]~9\ = CARRY((!\inst|REG_A\(4) & !\inst|alu1|unidad_logica|aux[3]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(4),
	datad => VCC,
	cin => \inst|alu1|unidad_logica|aux[3]~7\,
	combout => \inst|alu1|unidad_logica|aux[4]~8_combout\,
	cout => \inst|alu1|unidad_logica|aux[4]~9\);

-- Location: LCCOMB_X24_Y13_N12
\inst|reggy~221\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~221_combout\ = (\inst|REG_A\(4) & ((\inst|alu1|Mux17~0_combout\) # ((\inst|REG_B\(4) & !\inst|alu1|Mux16~0_combout\)))) # (!\inst|REG_A\(4) & (\inst|alu1|Mux17~0_combout\ & ((\inst|REG_B\(4)) # (\inst|alu1|Mux16~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(4),
	datab => \inst|REG_B\(4),
	datac => \inst|alu1|Mux17~0_combout\,
	datad => \inst|alu1|Mux16~0_combout\,
	combout => \inst|reggy~221_combout\);

-- Location: LCCOMB_X24_Y13_N22
\inst|reggy~222\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~222_combout\ = (\inst|alu1|Mux16~0_combout\ & ((\inst|reggy~221_combout\ & (\inst|alu1|unidad_logica|aux[4]~8_combout\)) # (!\inst|reggy~221_combout\ & ((!\inst|REG_A\(4)))))) # (!\inst|alu1|Mux16~0_combout\ & (((\inst|reggy~221_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_logica|aux[4]~8_combout\,
	datab => \inst|alu1|Mux16~0_combout\,
	datac => \inst|REG_A\(4),
	datad => \inst|reggy~221_combout\,
	combout => \inst|reggy~222_combout\);

-- Location: LCCOMB_X18_Y17_N16
\inst|cat~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|cat~5_combout\ = (\inst|enable~q\ & ((\inst|pr_state.state3~q\ & (\inst|mov\(4))) # (!\inst|pr_state.state3~q\ & ((\inst|REG_D\(4)))))) # (!\inst|enable~q\ & (\inst|mov\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|enable~q\,
	datab => \inst|mov\(4),
	datac => \inst|REG_D\(4),
	datad => \inst|pr_state.state3~q\,
	combout => \inst|cat~5_combout\);

-- Location: FF_X18_Y17_N17
\inst|cat[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|cat~5_combout\,
	ena => \inst|cat[0][8]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cat[0][4]~q\);

-- Location: LCCOMB_X17_Y17_N16
\inst|REG_D~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|REG_D~6_combout\ = (\inst|REG_D~0_combout\ & ((\inst|MAR\(1) & ((\inst|reggy~165_combout\))) # (!\inst|MAR\(1) & (\inst|cat[0][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cat[0][4]~q\,
	datab => \inst|MAR\(1),
	datac => \inst|reggy~165_combout\,
	datad => \inst|REG_D~0_combout\,
	combout => \inst|REG_D~6_combout\);

-- Location: FF_X17_Y17_N17
\inst|REG_D[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|REG_D~6_combout\,
	ena => \inst|REG_D[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|REG_D\(4));

-- Location: LCCOMB_X17_Y16_N2
\inst|reggy~227\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~227_combout\ = (\inst|OP\(2) & ((\inst|REG_A\(5)) # (\inst|OP\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|REG_A\(5),
	datac => \inst|OP\(3),
	datad => \inst|OP\(2),
	combout => \inst|reggy~227_combout\);

-- Location: LCCOMB_X21_Y15_N26
\inst|reggy~223\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~223_combout\ = (\inst|alu1|Mux17~0_combout\ & (((\inst|alu1|unidad_aritmetica|resta|negativo|Add0~8_combout\) # (\inst|reggy~187_combout\)))) # (!\inst|alu1|Mux17~0_combout\ & (\inst|alu1|unidad_aritmetica|suma|negativo|Add0~8_combout\ & 
-- ((!\inst|reggy~187_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|suma|negativo|Add0~8_combout\,
	datab => \inst|alu1|unidad_aritmetica|resta|negativo|Add0~8_combout\,
	datac => \inst|alu1|Mux17~0_combout\,
	datad => \inst|reggy~187_combout\,
	combout => \inst|reggy~223_combout\);

-- Location: LCCOMB_X21_Y15_N24
\inst|reggy~224\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~224_combout\ = (\inst|reggy~223_combout\ & (((!\inst|reggy~187_combout\)) # (!\inst|alu1|unidad_aritmetica|resta|sR:4:sP|Suma~0_combout\))) # (!\inst|reggy~223_combout\ & (((\inst|alu1|unidad_aritmetica|suma|sR:4:sP|Suma~0_combout\ & 
-- \inst|reggy~187_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|resta|sR:4:sP|Suma~0_combout\,
	datab => \inst|alu1|unidad_aritmetica|suma|sR:4:sP|Suma~0_combout\,
	datac => \inst|reggy~223_combout\,
	datad => \inst|reggy~187_combout\,
	combout => \inst|reggy~224_combout\);

-- Location: LCCOMB_X22_Y18_N20
\inst|alu1|unidad_aritmetica|mult|multi4|sR:4:sP|Suma~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi4|sR:4:sP|Suma~2_combout\ = \inst|alu1|unidad_aritmetica|mult|multi3|sR:4:sP|Suma~0_combout\ $ (((\inst|REG_B\(4) & \inst|REG_A\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|unidad_aritmetica|mult|multi3|sR:4:sP|Suma~0_combout\,
	datac => \inst|REG_B\(4),
	datad => \inst|REG_A\(0),
	combout => \inst|alu1|unidad_aritmetica|mult|multi4|sR:4:sP|Suma~2_combout\);

-- Location: LCCOMB_X24_Y15_N0
\inst|reggy~225\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~225_combout\ = (\inst|reggy~356_combout\ & (((\inst|reggy~186_combout\)))) # (!\inst|reggy~356_combout\ & ((\inst|reggy~186_combout\ & (\inst|alu1|unidad_aritmetica|mult|multi4|sR:4:sP|Suma~2_combout\)) # (!\inst|reggy~186_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy~356_combout\,
	datab => \inst|alu1|unidad_aritmetica|mult|multi4|sR:4:sP|Suma~2_combout\,
	datac => \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~8_combout\,
	datad => \inst|reggy~186_combout\,
	combout => \inst|reggy~225_combout\);

-- Location: LCCOMB_X18_Y17_N28
\inst|reggy~226\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~226_combout\ = (\inst|reggy~356_combout\ & ((\inst|reggy~225_combout\ & (!\inst|alu1|unidad_aritmetica|divi|LessThan3~28_combout\)) # (!\inst|reggy~225_combout\ & ((\inst|reggy~224_combout\))))) # (!\inst|reggy~356_combout\ & 
-- (((\inst|reggy~225_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|LessThan3~28_combout\,
	datab => \inst|reggy~356_combout\,
	datac => \inst|reggy~224_combout\,
	datad => \inst|reggy~225_combout\,
	combout => \inst|reggy~226_combout\);

-- Location: LCCOMB_X18_Y17_N18
\inst|reggy~228\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~228_combout\ = (\inst|reggy~194_combout\ & (((\inst|reggy~193_combout\) # (\inst|reggy~226_combout\)))) # (!\inst|reggy~194_combout\ & (\inst|reggy~227_combout\ & (!\inst|reggy~193_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy~227_combout\,
	datab => \inst|reggy~194_combout\,
	datac => \inst|reggy~193_combout\,
	datad => \inst|reggy~226_combout\,
	combout => \inst|reggy~228_combout\);

-- Location: LCCOMB_X18_Y17_N0
\inst|reggy~229\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~229_combout\ = (\inst|reggy~193_combout\ & ((\inst|reggy~228_combout\ & ((\inst|REG_D\(4)))) # (!\inst|reggy~228_combout\ & (\inst|mov\(4))))) # (!\inst|reggy~193_combout\ & (((\inst|reggy~228_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy~193_combout\,
	datab => \inst|mov\(4),
	datac => \inst|REG_D\(4),
	datad => \inst|reggy~228_combout\,
	combout => \inst|reggy~229_combout\);

-- Location: LCCOMB_X19_Y13_N8
\inst|reggy~230\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~230_combout\ = (\inst|reggy~199_combout\ & (\inst|reggy~222_combout\)) # (!\inst|reggy~199_combout\ & ((\inst|reggy~229_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|reggy~222_combout\,
	datac => \inst|reggy~199_combout\,
	datad => \inst|reggy~229_combout\,
	combout => \inst|reggy~230_combout\);

-- Location: FF_X16_Y13_N13
\inst|reggy~56\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~230_combout\,
	sload => VCC,
	ena => \inst|reggy~180_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy~56_q\);

-- Location: LCCOMB_X16_Y13_N26
\inst|reggy~164\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~164_combout\ = (\inst|reggy~155_combout\ & ((\inst|reggy~154_combout\) # ((\inst|reggy~40_q\)))) # (!\inst|reggy~155_combout\ & (!\inst|reggy~154_combout\ & (\inst|reggy~24_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy~155_combout\,
	datab => \inst|reggy~154_combout\,
	datac => \inst|reggy~24_q\,
	datad => \inst|reggy~40_q\,
	combout => \inst|reggy~164_combout\);

-- Location: LCCOMB_X16_Y13_N20
\inst|reggy~165\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~165_combout\ = (\inst|reggy~154_combout\ & ((\inst|reggy~164_combout\ & ((\inst|reggy~72_q\))) # (!\inst|reggy~164_combout\ & (\inst|reggy~56_q\)))) # (!\inst|reggy~154_combout\ & (((\inst|reggy~164_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy~56_q\,
	datab => \inst|reggy~154_combout\,
	datac => \inst|reggy~164_combout\,
	datad => \inst|reggy~72_q\,
	combout => \inst|reggy~165_combout\);

-- Location: FF_X19_Y15_N5
\inst|REG_A[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~165_combout\,
	sload => VCC,
	ena => \inst|OP[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|REG_A\(4));

-- Location: LCCOMB_X23_Y14_N10
\inst|alu1|unidad_logica|aux[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|aux[5]~10_combout\ = (\inst|REG_A\(5) & ((\inst|alu1|unidad_logica|aux[4]~9\) # (GND))) # (!\inst|REG_A\(5) & (!\inst|alu1|unidad_logica|aux[4]~9\))
-- \inst|alu1|unidad_logica|aux[5]~11\ = CARRY((\inst|REG_A\(5)) # (!\inst|alu1|unidad_logica|aux[4]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(5),
	datad => VCC,
	cin => \inst|alu1|unidad_logica|aux[4]~9\,
	combout => \inst|alu1|unidad_logica|aux[5]~10_combout\,
	cout => \inst|alu1|unidad_logica|aux[5]~11\);

-- Location: LCCOMB_X19_Y15_N6
\inst|reggy~212\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~212_combout\ = (\inst|alu1|Mux16~0_combout\ & ((\inst|reggy~211_combout\ & (\inst|alu1|unidad_logica|aux[5]~10_combout\)) # (!\inst|reggy~211_combout\ & ((!\inst|REG_A\(5)))))) # (!\inst|alu1|Mux16~0_combout\ & (\inst|reggy~211_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux16~0_combout\,
	datab => \inst|reggy~211_combout\,
	datac => \inst|alu1|unidad_logica|aux[5]~10_combout\,
	datad => \inst|REG_A\(5),
	combout => \inst|reggy~212_combout\);

-- Location: LCCOMB_X19_Y17_N0
\inst|reggy~217\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~217_combout\ = (\inst|OP\(2) & ((\inst|OP\(3)) # (\inst|REG_A\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|OP\(2),
	datab => \inst|OP\(3),
	datad => \inst|REG_A\(6),
	combout => \inst|reggy~217_combout\);

-- Location: LCCOMB_X19_Y17_N22
\inst|reggy~218\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~218_combout\ = (\inst|reggy~194_combout\ & (((\inst|reggy~193_combout\)))) # (!\inst|reggy~194_combout\ & ((\inst|reggy~193_combout\ & (\inst|mov\(5))) # (!\inst|reggy~193_combout\ & ((\inst|reggy~217_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|mov\(5),
	datab => \inst|reggy~194_combout\,
	datac => \inst|reggy~193_combout\,
	datad => \inst|reggy~217_combout\,
	combout => \inst|reggy~218_combout\);

-- Location: LCCOMB_X18_Y17_N10
\inst|cat~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|cat~4_combout\ = (\inst|pr_state.state3~q\ & (((\inst|mov\(5))))) # (!\inst|pr_state.state3~q\ & ((\inst|enable~q\ & (\inst|REG_D\(5))) # (!\inst|enable~q\ & ((\inst|mov\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_D\(5),
	datab => \inst|mov\(5),
	datac => \inst|pr_state.state3~q\,
	datad => \inst|enable~q\,
	combout => \inst|cat~4_combout\);

-- Location: FF_X18_Y17_N11
\inst|cat[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|cat~4_combout\,
	ena => \inst|cat[0][8]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cat[0][5]~q\);

-- Location: LCCOMB_X17_Y17_N2
\inst|REG_D~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|REG_D~5_combout\ = (\inst|REG_D~0_combout\ & ((\inst|MAR\(1) & (\inst|reggy~163_combout\)) # (!\inst|MAR\(1) & ((\inst|cat[0][5]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy~163_combout\,
	datab => \inst|MAR\(1),
	datac => \inst|cat[0][5]~q\,
	datad => \inst|REG_D~0_combout\,
	combout => \inst|REG_D~5_combout\);

-- Location: FF_X17_Y17_N3
\inst|REG_D[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|REG_D~5_combout\,
	ena => \inst|REG_D[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|REG_D\(5));

-- Location: LCCOMB_X22_Y15_N24
\inst|reggy~213\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~213_combout\ = (\inst|alu1|Mux17~0_combout\ & (((\inst|alu1|unidad_aritmetica|resta|negativo|Add0~10_combout\) # (\inst|reggy~187_combout\)))) # (!\inst|alu1|Mux17~0_combout\ & (\inst|alu1|unidad_aritmetica|suma|negativo|Add0~10_combout\ & 
-- ((!\inst|reggy~187_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|suma|negativo|Add0~10_combout\,
	datab => \inst|alu1|unidad_aritmetica|resta|negativo|Add0~10_combout\,
	datac => \inst|alu1|Mux17~0_combout\,
	datad => \inst|reggy~187_combout\,
	combout => \inst|reggy~213_combout\);

-- Location: LCCOMB_X22_Y15_N10
\inst|reggy~214\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~214_combout\ = (\inst|reggy~213_combout\ & (((!\inst|reggy~187_combout\)) # (!\inst|alu1|unidad_aritmetica|resta|sR:5:sP|Suma~0_combout\))) # (!\inst|reggy~213_combout\ & (((\inst|alu1|unidad_aritmetica|suma|sR:5:sP|Suma~0_combout\ & 
-- \inst|reggy~187_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|resta|sR:5:sP|Suma~0_combout\,
	datab => \inst|reggy~213_combout\,
	datac => \inst|alu1|unidad_aritmetica|suma|sR:5:sP|Suma~0_combout\,
	datad => \inst|reggy~187_combout\,
	combout => \inst|reggy~214_combout\);

-- Location: LCCOMB_X22_Y15_N20
\inst|reggy~215\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~215_combout\ = (\inst|reggy~356_combout\ & ((\inst|reggy~214_combout\) # ((\inst|reggy~186_combout\)))) # (!\inst|reggy~356_combout\ & (((\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~10_combout\ & !\inst|reggy~186_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy~214_combout\,
	datab => \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~10_combout\,
	datac => \inst|reggy~356_combout\,
	datad => \inst|reggy~186_combout\,
	combout => \inst|reggy~215_combout\);

-- Location: LCCOMB_X22_Y16_N8
\inst|alu1|unidad_aritmetica|mult|multi5|sR:5:sP|Suma~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi5|sR:5:sP|Suma~2_combout\ = \inst|alu1|unidad_aritmetica|mult|multi4|sR:5:sP|Suma~0_combout\ $ (((\inst|REG_B\(5) & \inst|REG_A\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(5),
	datab => \inst|alu1|unidad_aritmetica|mult|multi4|sR:5:sP|Suma~0_combout\,
	datac => \inst|REG_A\(0),
	combout => \inst|alu1|unidad_aritmetica|mult|multi5|sR:5:sP|Suma~2_combout\);

-- Location: LCCOMB_X22_Y15_N6
\inst|reggy~216\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~216_combout\ = (\inst|reggy~215_combout\ & (((!\inst|reggy~186_combout\)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan2~28_combout\))) # (!\inst|reggy~215_combout\ & (((\inst|alu1|unidad_aritmetica|mult|multi5|sR:5:sP|Suma~2_combout\ & 
-- \inst|reggy~186_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|LessThan2~28_combout\,
	datab => \inst|reggy~215_combout\,
	datac => \inst|alu1|unidad_aritmetica|mult|multi5|sR:5:sP|Suma~2_combout\,
	datad => \inst|reggy~186_combout\,
	combout => \inst|reggy~216_combout\);

-- Location: LCCOMB_X19_Y17_N28
\inst|reggy~219\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~219_combout\ = (\inst|reggy~218_combout\ & ((\inst|REG_D\(5)) # ((!\inst|reggy~194_combout\)))) # (!\inst|reggy~218_combout\ & (((\inst|reggy~216_combout\ & \inst|reggy~194_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy~218_combout\,
	datab => \inst|REG_D\(5),
	datac => \inst|reggy~216_combout\,
	datad => \inst|reggy~194_combout\,
	combout => \inst|reggy~219_combout\);

-- Location: LCCOMB_X19_Y17_N2
\inst|reggy~220\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~220_combout\ = (\inst|reggy~199_combout\ & (\inst|reggy~212_combout\)) # (!\inst|reggy~199_combout\ & ((\inst|reggy~219_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy~199_combout\,
	datab => \inst|reggy~212_combout\,
	datad => \inst|reggy~219_combout\,
	combout => \inst|reggy~220_combout\);

-- Location: FF_X19_Y17_N3
\inst|reggy~73\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|reggy~220_combout\,
	ena => \inst|reggy~183_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy~73_q\);

-- Location: LCCOMB_X16_Y17_N24
\inst|reggy~162\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~162_combout\ = (\inst|reggy~154_combout\ & ((\inst|reggy~57_q\) # ((\inst|reggy~155_combout\)))) # (!\inst|reggy~154_combout\ & (((\inst|reggy~25_q\ & !\inst|reggy~155_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy~154_combout\,
	datab => \inst|reggy~57_q\,
	datac => \inst|reggy~25_q\,
	datad => \inst|reggy~155_combout\,
	combout => \inst|reggy~162_combout\);

-- Location: LCCOMB_X19_Y17_N20
\inst|reggy~163\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~163_combout\ = (\inst|reggy~155_combout\ & ((\inst|reggy~162_combout\ & (\inst|reggy~73_q\)) # (!\inst|reggy~162_combout\ & ((\inst|reggy~41_q\))))) # (!\inst|reggy~155_combout\ & (((\inst|reggy~162_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy~155_combout\,
	datab => \inst|reggy~73_q\,
	datac => \inst|reggy~41_q\,
	datad => \inst|reggy~162_combout\,
	combout => \inst|reggy~163_combout\);

-- Location: FF_X19_Y15_N19
\inst|REG_A[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~163_combout\,
	sload => VCC,
	ena => \inst|OP[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|REG_A\(5));

-- Location: LCCOMB_X23_Y14_N12
\inst|alu1|unidad_logica|aux[6]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|aux[6]~12_combout\ = (\inst|REG_A\(6) & (!\inst|alu1|unidad_logica|aux[5]~11\ & VCC)) # (!\inst|REG_A\(6) & (\inst|alu1|unidad_logica|aux[5]~11\ $ (GND)))
-- \inst|alu1|unidad_logica|aux[6]~13\ = CARRY((!\inst|REG_A\(6) & !\inst|alu1|unidad_logica|aux[5]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(6),
	datad => VCC,
	cin => \inst|alu1|unidad_logica|aux[5]~11\,
	combout => \inst|alu1|unidad_logica|aux[6]~12_combout\,
	cout => \inst|alu1|unidad_logica|aux[6]~13\);

-- Location: LCCOMB_X23_Y17_N30
\inst|reggy~201\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~201_combout\ = (\inst|alu1|Mux17~0_combout\ & ((\inst|REG_A\(6)) # ((\inst|REG_B\(6)) # (\inst|alu1|Mux16~0_combout\)))) # (!\inst|alu1|Mux17~0_combout\ & (\inst|REG_A\(6) & (\inst|REG_B\(6) & !\inst|alu1|Mux16~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux17~0_combout\,
	datab => \inst|REG_A\(6),
	datac => \inst|REG_B\(6),
	datad => \inst|alu1|Mux16~0_combout\,
	combout => \inst|reggy~201_combout\);

-- Location: LCCOMB_X19_Y17_N8
\inst|reggy~202\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~202_combout\ = (\inst|reggy~201_combout\ & (((\inst|alu1|unidad_logica|aux[6]~12_combout\) # (!\inst|alu1|Mux16~0_combout\)))) # (!\inst|reggy~201_combout\ & (!\inst|REG_A\(6) & ((\inst|alu1|Mux16~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(6),
	datab => \inst|alu1|unidad_logica|aux[6]~12_combout\,
	datac => \inst|reggy~201_combout\,
	datad => \inst|alu1|Mux16~0_combout\,
	combout => \inst|reggy~202_combout\);

-- Location: LCCOMB_X18_Y17_N8
\inst|cat~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|cat~3_combout\ = (\inst|pr_state.state3~q\ & (((\inst|mov\(6))))) # (!\inst|pr_state.state3~q\ & ((\inst|enable~q\ & (\inst|REG_D\(6))) # (!\inst|enable~q\ & ((\inst|mov\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pr_state.state3~q\,
	datab => \inst|REG_D\(6),
	datac => \inst|mov\(6),
	datad => \inst|enable~q\,
	combout => \inst|cat~3_combout\);

-- Location: FF_X18_Y17_N9
\inst|cat[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|cat~3_combout\,
	ena => \inst|cat[0][8]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cat[0][6]~q\);

-- Location: LCCOMB_X17_Y17_N0
\inst|REG_D~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|REG_D~4_combout\ = (\inst|REG_D~0_combout\ & ((\inst|MAR\(1) & ((\inst|reggy~161_combout\))) # (!\inst|MAR\(1) & (\inst|cat[0][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cat[0][6]~q\,
	datab => \inst|MAR\(1),
	datac => \inst|reggy~161_combout\,
	datad => \inst|REG_D~0_combout\,
	combout => \inst|REG_D~4_combout\);

-- Location: FF_X17_Y17_N1
\inst|REG_D[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|REG_D~4_combout\,
	ena => \inst|REG_D[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|REG_D\(6));

-- Location: LCCOMB_X19_Y17_N30
\inst|reggy~207\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~207_combout\ = (\inst|OP\(2) & ((\inst|OP\(3)) # (\inst|REG_A\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|OP\(2),
	datab => \inst|OP\(3),
	datad => \inst|REG_A\(7),
	combout => \inst|reggy~207_combout\);

-- Location: LCCOMB_X22_Y15_N28
\inst|reggy~203\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~203_combout\ = (\inst|alu1|Mux17~0_combout\ & ((\inst|alu1|unidad_aritmetica|resta|negativo|Add0~12_combout\) # ((\inst|reggy~187_combout\)))) # (!\inst|alu1|Mux17~0_combout\ & (((\inst|alu1|unidad_aritmetica|suma|negativo|Add0~12_combout\ & 
-- !\inst|reggy~187_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|resta|negativo|Add0~12_combout\,
	datab => \inst|alu1|unidad_aritmetica|suma|negativo|Add0~12_combout\,
	datac => \inst|alu1|Mux17~0_combout\,
	datad => \inst|reggy~187_combout\,
	combout => \inst|reggy~203_combout\);

-- Location: LCCOMB_X22_Y15_N14
\inst|reggy~204\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~204_combout\ = (\inst|reggy~203_combout\ & (((!\inst|reggy~187_combout\) # (!\inst|alu1|unidad_aritmetica|resta|sR:6:sP|Suma~0_combout\)))) # (!\inst|reggy~203_combout\ & (\inst|alu1|unidad_aritmetica|suma|sR:6:sP|Suma~0_combout\ & 
-- ((\inst|reggy~187_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|suma|sR:6:sP|Suma~0_combout\,
	datab => \inst|reggy~203_combout\,
	datac => \inst|alu1|unidad_aritmetica|resta|sR:6:sP|Suma~0_combout\,
	datad => \inst|reggy~187_combout\,
	combout => \inst|reggy~204_combout\);

-- Location: LCCOMB_X24_Y15_N30
\inst|alu1|unidad_aritmetica|mult|multi6|sR:6:sP|Suma~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi6|sR:6:sP|Suma~2_combout\ = \inst|alu1|unidad_aritmetica|mult|multi5|sR:6:sP|Suma~0_combout\ $ (((\inst|REG_A\(0) & \inst|REG_B\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|REG_A\(0),
	datac => \inst|alu1|unidad_aritmetica|mult|multi5|sR:6:sP|Suma~0_combout\,
	datad => \inst|REG_B\(6),
	combout => \inst|alu1|unidad_aritmetica|mult|multi6|sR:6:sP|Suma~2_combout\);

-- Location: LCCOMB_X24_Y15_N14
\inst|reggy~205\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~205_combout\ = (\inst|reggy~356_combout\ & (((\inst|reggy~186_combout\)))) # (!\inst|reggy~356_combout\ & ((\inst|reggy~186_combout\ & ((\inst|alu1|unidad_aritmetica|mult|multi6|sR:6:sP|Suma~2_combout\))) # (!\inst|reggy~186_combout\ & 
-- (\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy~356_combout\,
	datab => \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~12_combout\,
	datac => \inst|alu1|unidad_aritmetica|mult|multi6|sR:6:sP|Suma~2_combout\,
	datad => \inst|reggy~186_combout\,
	combout => \inst|reggy~205_combout\);

-- Location: LCCOMB_X21_Y15_N28
\inst|reggy~206\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~206_combout\ = (\inst|reggy~356_combout\ & ((\inst|reggy~205_combout\ & (!\inst|alu1|unidad_aritmetica|divi|LessThan1~28_combout\)) # (!\inst|reggy~205_combout\ & ((\inst|reggy~204_combout\))))) # (!\inst|reggy~356_combout\ & 
-- (((\inst|reggy~205_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy~356_combout\,
	datab => \inst|alu1|unidad_aritmetica|divi|LessThan1~28_combout\,
	datac => \inst|reggy~204_combout\,
	datad => \inst|reggy~205_combout\,
	combout => \inst|reggy~206_combout\);

-- Location: LCCOMB_X19_Y17_N12
\inst|reggy~208\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~208_combout\ = (\inst|reggy~193_combout\ & (((\inst|reggy~194_combout\)))) # (!\inst|reggy~193_combout\ & ((\inst|reggy~194_combout\ & ((\inst|reggy~206_combout\))) # (!\inst|reggy~194_combout\ & (\inst|reggy~207_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy~207_combout\,
	datab => \inst|reggy~193_combout\,
	datac => \inst|reggy~206_combout\,
	datad => \inst|reggy~194_combout\,
	combout => \inst|reggy~208_combout\);

-- Location: LCCOMB_X19_Y17_N10
\inst|reggy~209\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~209_combout\ = (\inst|reggy~193_combout\ & ((\inst|reggy~208_combout\ & (\inst|REG_D\(6))) # (!\inst|reggy~208_combout\ & ((\inst|mov\(6)))))) # (!\inst|reggy~193_combout\ & (((\inst|reggy~208_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_D\(6),
	datab => \inst|mov\(6),
	datac => \inst|reggy~193_combout\,
	datad => \inst|reggy~208_combout\,
	combout => \inst|reggy~209_combout\);

-- Location: LCCOMB_X19_Y17_N14
\inst|reggy~210\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~210_combout\ = (\inst|reggy~199_combout\ & (\inst|reggy~202_combout\)) # (!\inst|reggy~199_combout\ & ((\inst|reggy~209_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy~199_combout\,
	datac => \inst|reggy~202_combout\,
	datad => \inst|reggy~209_combout\,
	combout => \inst|reggy~210_combout\);

-- Location: FF_X19_Y17_N25
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
	ena => \inst|reggy~181_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy~42_q\);

-- Location: LCCOMB_X16_Y17_N6
\inst|reggy~160\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~160_combout\ = (\inst|reggy~154_combout\ & (((\inst|reggy~155_combout\)))) # (!\inst|reggy~154_combout\ & ((\inst|reggy~155_combout\ & (\inst|reggy~42_q\)) # (!\inst|reggy~155_combout\ & ((\inst|reggy~26_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy~154_combout\,
	datab => \inst|reggy~42_q\,
	datac => \inst|reggy~26_q\,
	datad => \inst|reggy~155_combout\,
	combout => \inst|reggy~160_combout\);

-- Location: LCCOMB_X16_Y17_N4
\inst|reggy~161\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~161_combout\ = (\inst|reggy~154_combout\ & ((\inst|reggy~160_combout\ & ((\inst|reggy~74_q\))) # (!\inst|reggy~160_combout\ & (\inst|reggy~58_q\)))) # (!\inst|reggy~154_combout\ & (\inst|reggy~160_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy~154_combout\,
	datab => \inst|reggy~160_combout\,
	datac => \inst|reggy~58_q\,
	datad => \inst|reggy~74_q\,
	combout => \inst|reggy~161_combout\);

-- Location: FF_X16_Y14_N1
\inst|REG_A[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~161_combout\,
	sload => VCC,
	ena => \inst|OP[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|REG_A\(6));

-- Location: LCCOMB_X21_Y17_N2
\inst|reggy~184\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~184_combout\ = (\inst|REG_B\(7) & ((\inst|alu1|Mux17~0_combout\) # ((!\inst|alu1|Mux16~0_combout\ & \inst|REG_A\(7))))) # (!\inst|REG_B\(7) & (\inst|alu1|Mux17~0_combout\ & ((\inst|alu1|Mux16~0_combout\) # (\inst|REG_A\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(7),
	datab => \inst|alu1|Mux16~0_combout\,
	datac => \inst|alu1|Mux17~0_combout\,
	datad => \inst|REG_A\(7),
	combout => \inst|reggy~184_combout\);

-- Location: LCCOMB_X21_Y17_N8
\inst|reggy~185\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~185_combout\ = (\inst|alu1|Mux16~0_combout\ & ((\inst|reggy~184_combout\ & (\inst|alu1|unidad_logica|aux[7]~14_combout\)) # (!\inst|reggy~184_combout\ & ((!\inst|REG_A\(7)))))) # (!\inst|alu1|Mux16~0_combout\ & (((\inst|reggy~184_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_logica|aux[7]~14_combout\,
	datab => \inst|alu1|Mux16~0_combout\,
	datac => \inst|REG_A\(7),
	datad => \inst|reggy~184_combout\,
	combout => \inst|reggy~185_combout\);

-- Location: LCCOMB_X19_Y16_N20
\inst|reggy~195\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~195_combout\ = (\inst|OP\(2) & ((\inst|OP\(3)) # (\inst|REG_A\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|OP\(2),
	datac => \inst|OP\(3),
	datad => \inst|REG_A\(8),
	combout => \inst|reggy~195_combout\);

-- Location: LCCOMB_X18_Y17_N6
\inst|reggy~196\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~196_combout\ = (\inst|reggy~193_combout\ & ((\inst|reggy~194_combout\) # ((\inst|mov\(7))))) # (!\inst|reggy~193_combout\ & (!\inst|reggy~194_combout\ & ((\inst|reggy~195_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy~193_combout\,
	datab => \inst|reggy~194_combout\,
	datac => \inst|mov\(7),
	datad => \inst|reggy~195_combout\,
	combout => \inst|reggy~196_combout\);

-- Location: LCCOMB_X18_Y17_N26
\inst|cat~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|cat~2_combout\ = (\inst|pr_state.state3~q\ & (((\inst|mov\(7))))) # (!\inst|pr_state.state3~q\ & ((\inst|enable~q\ & (\inst|REG_D\(7))) # (!\inst|enable~q\ & ((\inst|mov\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_D\(7),
	datab => \inst|pr_state.state3~q\,
	datac => \inst|mov\(7),
	datad => \inst|enable~q\,
	combout => \inst|cat~2_combout\);

-- Location: FF_X18_Y17_N27
\inst|cat[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|cat~2_combout\,
	ena => \inst|cat[0][8]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cat[0][7]~q\);

-- Location: LCCOMB_X17_Y17_N26
\inst|REG_D~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|REG_D~3_combout\ = (\inst|REG_D~0_combout\ & ((\inst|MAR\(1) & (\inst|reggy~159_combout\)) # (!\inst|MAR\(1) & ((\inst|cat[0][7]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MAR\(1),
	datab => \inst|REG_D~0_combout\,
	datac => \inst|reggy~159_combout\,
	datad => \inst|cat[0][7]~q\,
	combout => \inst|REG_D~3_combout\);

-- Location: FF_X17_Y17_N27
\inst|REG_D[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|REG_D~3_combout\,
	ena => \inst|REG_D[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|REG_D\(7));

-- Location: LCCOMB_X25_Y15_N30
\inst|alu1|unidad_aritmetica|mult|multi7|sR:7:sP|Suma~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi7|sR:7:sP|Suma~2_combout\ = \inst|alu1|unidad_aritmetica|mult|multi6|sR:7:sP|Suma~0_combout\ $ (((\inst|REG_A\(0) & \inst|REG_B\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|REG_A\(0),
	datac => \inst|REG_B\(7),
	datad => \inst|alu1|unidad_aritmetica|mult|multi6|sR:7:sP|Suma~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi7|sR:7:sP|Suma~2_combout\);

-- Location: LCCOMB_X24_Y15_N2
\inst|reggy~188\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~188_combout\ = (\inst|alu1|Mux17~0_combout\ & (((\inst|reggy~187_combout\) # (\inst|alu1|unidad_aritmetica|resta|negativo|Add0~14_combout\)))) # (!\inst|alu1|Mux17~0_combout\ & (\inst|alu1|unidad_aritmetica|suma|negativo|Add0~14_combout\ & 
-- (!\inst|reggy~187_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|suma|negativo|Add0~14_combout\,
	datab => \inst|alu1|Mux17~0_combout\,
	datac => \inst|reggy~187_combout\,
	datad => \inst|alu1|unidad_aritmetica|resta|negativo|Add0~14_combout\,
	combout => \inst|reggy~188_combout\);

-- Location: LCCOMB_X24_Y15_N28
\inst|reggy~189\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~189_combout\ = (\inst|reggy~187_combout\ & ((\inst|reggy~188_combout\ & ((!\inst|alu1|unidad_aritmetica|resta|sR:7:sP|Suma~0_combout\))) # (!\inst|reggy~188_combout\ & (\inst|alu1|unidad_aritmetica|suma|sR:7:sP|Suma~0_combout\)))) # 
-- (!\inst|reggy~187_combout\ & (((\inst|reggy~188_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|suma|sR:7:sP|Suma~0_combout\,
	datab => \inst|alu1|unidad_aritmetica|resta|sR:7:sP|Suma~0_combout\,
	datac => \inst|reggy~187_combout\,
	datad => \inst|reggy~188_combout\,
	combout => \inst|reggy~189_combout\);

-- Location: LCCOMB_X24_Y15_N10
\inst|reggy~190\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~190_combout\ = (\inst|reggy~356_combout\ & ((\inst|reggy~189_combout\) # ((\inst|reggy~186_combout\)))) # (!\inst|reggy~356_combout\ & (((\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~14_combout\ & !\inst|reggy~186_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy~356_combout\,
	datab => \inst|reggy~189_combout\,
	datac => \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~14_combout\,
	datad => \inst|reggy~186_combout\,
	combout => \inst|reggy~190_combout\);

-- Location: LCCOMB_X24_Y15_N4
\inst|reggy~191\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~191_combout\ = (\inst|reggy~186_combout\ & ((\inst|reggy~190_combout\ & ((!\inst|alu1|unidad_aritmetica|divi|LessThan0~4_combout\))) # (!\inst|reggy~190_combout\ & (\inst|alu1|unidad_aritmetica|mult|multi7|sR:7:sP|Suma~2_combout\)))) # 
-- (!\inst|reggy~186_combout\ & (((\inst|reggy~190_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|multi7|sR:7:sP|Suma~2_combout\,
	datab => \inst|reggy~186_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|LessThan0~4_combout\,
	datad => \inst|reggy~190_combout\,
	combout => \inst|reggy~191_combout\);

-- Location: LCCOMB_X21_Y17_N10
\inst|reggy~197\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~197_combout\ = (\inst|reggy~196_combout\ & (((\inst|REG_D\(7))) # (!\inst|reggy~194_combout\))) # (!\inst|reggy~196_combout\ & (\inst|reggy~194_combout\ & ((\inst|reggy~191_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy~196_combout\,
	datab => \inst|reggy~194_combout\,
	datac => \inst|REG_D\(7),
	datad => \inst|reggy~191_combout\,
	combout => \inst|reggy~197_combout\);

-- Location: LCCOMB_X21_Y17_N14
\inst|reggy~200\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~200_combout\ = (\inst|reggy~199_combout\ & (\inst|reggy~185_combout\)) # (!\inst|reggy~199_combout\ & ((\inst|reggy~197_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|reggy~185_combout\,
	datac => \inst|reggy~199_combout\,
	datad => \inst|reggy~197_combout\,
	combout => \inst|reggy~200_combout\);

-- Location: FF_X16_Y17_N17
\inst|reggy~59\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~200_combout\,
	sload => VCC,
	ena => \inst|reggy~180_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy~59_q\);

-- Location: LCCOMB_X16_Y17_N16
\inst|reggy~267\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~267_combout\ = (\inst|MAR\(1) & ((\inst|MAR\(0)) # ((\inst|reggy~59_q\)))) # (!\inst|MAR\(1) & (!\inst|MAR\(0) & ((\inst|reggy~27_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MAR\(1),
	datab => \inst|MAR\(0),
	datac => \inst|reggy~59_q\,
	datad => \inst|reggy~27_q\,
	combout => \inst|reggy~267_combout\);

-- Location: LCCOMB_X21_Y17_N28
\inst|reggy~268\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~268_combout\ = (\inst|reggy~267_combout\ & ((\inst|reggy~75_q\) # ((!\inst|MAR\(0))))) # (!\inst|reggy~267_combout\ & (((\inst|MAR\(0) & \inst|reggy~43_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy~267_combout\,
	datab => \inst|reggy~75_q\,
	datac => \inst|MAR\(0),
	datad => \inst|reggy~43_q\,
	combout => \inst|reggy~268_combout\);

-- Location: FF_X18_Y14_N23
\inst|REG_B[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~268_combout\,
	sload => VCC,
	ena => \inst|OP[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|REG_B\(7));

-- Location: LCCOMB_X21_Y17_N6
\inst|alu1|unidad_aritmetica|mult|multi7|sR:13:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi7|sR:13:sP|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi6|sR:13:sP|Suma~0_combout\ & ((\inst|alu1|unidad_aritmetica|mult|multi7|sR:12:sP|Cout~0_combout\) # ((\inst|REG_B\(7) & \inst|REG_A\(6))))) # 
-- (!\inst|alu1|unidad_aritmetica|mult|multi6|sR:13:sP|Suma~0_combout\ & (\inst|REG_B\(7) & (\inst|REG_A\(6) & \inst|alu1|unidad_aritmetica|mult|multi7|sR:12:sP|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(7),
	datab => \inst|REG_A\(6),
	datac => \inst|alu1|unidad_aritmetica|mult|multi6|sR:13:sP|Suma~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|mult|multi7|sR:12:sP|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi7|sR:13:sP|Cout~0_combout\);

-- Location: LCCOMB_X21_Y17_N4
\inst|alu1|unidad_aritmetica|mult|multi7|sR:14:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi7|sR:14:sP|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi7|sR:13:sP|Cout~0_combout\ & ((\inst|alu1|unidad_aritmetica|mult|multi6|sR:13:sP|Cout~0_combout\) # ((\inst|REG_B\(7) & \inst|REG_A\(7))))) # 
-- (!\inst|alu1|unidad_aritmetica|mult|multi7|sR:13:sP|Cout~0_combout\ & (\inst|REG_B\(7) & (\inst|REG_A\(7) & \inst|alu1|unidad_aritmetica|mult|multi6|sR:13:sP|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|multi7|sR:13:sP|Cout~0_combout\,
	datab => \inst|REG_B\(7),
	datac => \inst|REG_A\(7),
	datad => \inst|alu1|unidad_aritmetica|mult|multi6|sR:13:sP|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi7|sR:14:sP|Cout~0_combout\);

-- Location: LCCOMB_X18_Y13_N26
\inst|alu1|Mux15~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux15~6_combout\ = (\inst|alu1|Mux16~0_combout\ & ((\inst|alu1|unidad_aritmetica|mult|multi7|sR:14:sP|Cout~0_combout\) # ((\inst|REG_A\(0) & \inst|REG_B\(0))))) # (!\inst|alu1|Mux16~0_combout\ & (\inst|REG_A\(0) $ ((\inst|REG_B\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(0),
	datab => \inst|REG_B\(0),
	datac => \inst|alu1|unidad_aritmetica|mult|multi7|sR:14:sP|Cout~0_combout\,
	datad => \inst|alu1|Mux16~0_combout\,
	combout => \inst|alu1|Mux15~6_combout\);

-- Location: LCCOMB_X18_Y13_N6
\inst|alu1|Mux15~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux15~8_combout\ = (\inst|alu1|Mux17~0_combout\ & ((\inst|alu1|unidad_aritmetica|resta|Sfaux~2_combout\ & (\inst|alu1|Mux15~6_combout\)) # (!\inst|alu1|unidad_aritmetica|resta|Sfaux~2_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|resta|negativo|Add0~0_combout\))))) # (!\inst|alu1|Mux17~0_combout\ & (\inst|alu1|Mux15~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux15~6_combout\,
	datab => \inst|alu1|Mux17~0_combout\,
	datac => \inst|alu1|unidad_aritmetica|resta|Sfaux~2_combout\,
	datad => \inst|alu1|unidad_aritmetica|resta|negativo|Add0~0_combout\,
	combout => \inst|alu1|Mux15~8_combout\);

-- Location: LCCOMB_X18_Y13_N4
\inst|alu1|Mux15~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux15~9_combout\ = (\inst|alu1|Mux17~0_combout\ & (\inst|alu1|Mux15~8_combout\)) # (!\inst|alu1|Mux17~0_combout\ & ((\inst|alu1|unidad_aritmetica|suma|Sfaux~1_combout\ & ((\inst|alu1|unidad_aritmetica|suma|negativo|Add0~0_combout\))) # 
-- (!\inst|alu1|unidad_aritmetica|suma|Sfaux~1_combout\ & (\inst|alu1|Mux15~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux15~8_combout\,
	datab => \inst|alu1|Mux17~0_combout\,
	datac => \inst|alu1|unidad_aritmetica|suma|negativo|Add0~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|suma|Sfaux~1_combout\,
	combout => \inst|alu1|Mux15~9_combout\);

-- Location: LCCOMB_X18_Y13_N24
\inst|alu1|Mux15~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux15~7_combout\ = (\inst|alu1|Mux17~0_combout\) # ((\inst|alu1|Mux15~6_combout\ & ((\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~0_combout\) # (!\inst|alu1|unidad_aritmetica|mult|multi7|sR:14:sP|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux15~6_combout\,
	datab => \inst|alu1|Mux17~0_combout\,
	datac => \inst|alu1|unidad_aritmetica|mult|multi7|sR:14:sP|Cout~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~0_combout\,
	combout => \inst|alu1|Mux15~7_combout\);

-- Location: LCCOMB_X18_Y13_N14
\inst|alu1|Mux15~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux15~10_combout\ = (\inst|alu1|Mux15~5_combout\ & ((\inst|alu1|Mux16~0_combout\ & ((\inst|alu1|Mux15~7_combout\))) # (!\inst|alu1|Mux16~0_combout\ & (\inst|alu1|Mux15~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux15~5_combout\,
	datab => \inst|alu1|Mux16~0_combout\,
	datac => \inst|alu1|Mux15~9_combout\,
	datad => \inst|alu1|Mux15~7_combout\,
	combout => \inst|alu1|Mux15~10_combout\);

-- Location: LCCOMB_X18_Y13_N12
\inst|alu1|Mux15~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux15~13_combout\ = (\inst|alu1|Mux15~15_combout\) # ((\inst|alu1|Mux15~10_combout\ & ((!\inst|alu1|Mux17~0_combout\) # (!\inst|alu1|Mux16~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux15~15_combout\,
	datab => \inst|alu1|Mux16~0_combout\,
	datac => \inst|alu1|Mux15~10_combout\,
	datad => \inst|alu1|Mux17~0_combout\,
	combout => \inst|alu1|Mux15~13_combout\);

-- Location: LCCOMB_X13_Y14_N2
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

-- Location: LCCOMB_X13_Y14_N4
\inst|alu1|unidad_aritmetica|divi|Add5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add5~2_combout\ = (\inst|REG_B\(1) & ((\inst|alu1|unidad_aritmetica|divi|Add4~41_combout\ & (!\inst|alu1|unidad_aritmetica|divi|Add5~1\)) # (!\inst|alu1|unidad_aritmetica|divi|Add4~41_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add5~1\) # (GND))))) # (!\inst|REG_B\(1) & ((\inst|alu1|unidad_aritmetica|divi|Add4~41_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add5~1\ & VCC)) # (!\inst|alu1|unidad_aritmetica|divi|Add4~41_combout\ & 
-- (!\inst|alu1|unidad_aritmetica|divi|Add5~1\))))
-- \inst|alu1|unidad_aritmetica|divi|Add5~3\ = CARRY((\inst|REG_B\(1) & ((!\inst|alu1|unidad_aritmetica|divi|Add5~1\) # (!\inst|alu1|unidad_aritmetica|divi|Add4~41_combout\))) # (!\inst|REG_B\(1) & (!\inst|alu1|unidad_aritmetica|divi|Add4~41_combout\ & 
-- !\inst|alu1|unidad_aritmetica|divi|Add5~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(1),
	datab => \inst|alu1|unidad_aritmetica|divi|Add4~41_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add5~1\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add5~2_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add5~3\);

-- Location: LCCOMB_X13_Y14_N6
\inst|alu1|unidad_aritmetica|divi|Add5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add5~4_combout\ = ((\inst|alu1|unidad_aritmetica|divi|Add4~40_combout\ $ (\inst|REG_B\(2) $ (\inst|alu1|unidad_aritmetica|divi|Add5~3\)))) # (GND)
-- \inst|alu1|unidad_aritmetica|divi|Add5~5\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add4~40_combout\ & ((!\inst|alu1|unidad_aritmetica|divi|Add5~3\) # (!\inst|REG_B\(2)))) # (!\inst|alu1|unidad_aritmetica|divi|Add4~40_combout\ & (!\inst|REG_B\(2) & 
-- !\inst|alu1|unidad_aritmetica|divi|Add5~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add4~40_combout\,
	datab => \inst|REG_B\(2),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add5~3\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add5~4_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add5~5\);

-- Location: LCCOMB_X13_Y14_N8
\inst|alu1|unidad_aritmetica|divi|Add5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add5~6_combout\ = (\inst|alu1|unidad_aritmetica|divi|Add4~39_combout\ & ((\inst|REG_B\(3) & (!\inst|alu1|unidad_aritmetica|divi|Add5~5\)) # (!\inst|REG_B\(3) & (\inst|alu1|unidad_aritmetica|divi|Add5~5\ & VCC)))) # 
-- (!\inst|alu1|unidad_aritmetica|divi|Add4~39_combout\ & ((\inst|REG_B\(3) & ((\inst|alu1|unidad_aritmetica|divi|Add5~5\) # (GND))) # (!\inst|REG_B\(3) & (!\inst|alu1|unidad_aritmetica|divi|Add5~5\))))
-- \inst|alu1|unidad_aritmetica|divi|Add5~7\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add4~39_combout\ & (\inst|REG_B\(3) & !\inst|alu1|unidad_aritmetica|divi|Add5~5\)) # (!\inst|alu1|unidad_aritmetica|divi|Add4~39_combout\ & ((\inst|REG_B\(3)) # 
-- (!\inst|alu1|unidad_aritmetica|divi|Add5~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add4~39_combout\,
	datab => \inst|REG_B\(3),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add5~5\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add5~6_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add5~7\);

-- Location: LCCOMB_X13_Y14_N10
\inst|alu1|unidad_aritmetica|divi|Add5~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add5~8_combout\ = ((\inst|alu1|unidad_aritmetica|divi|Add4~38_combout\ $ (\inst|REG_B\(4) $ (\inst|alu1|unidad_aritmetica|divi|Add5~7\)))) # (GND)
-- \inst|alu1|unidad_aritmetica|divi|Add5~9\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add4~38_combout\ & ((!\inst|alu1|unidad_aritmetica|divi|Add5~7\) # (!\inst|REG_B\(4)))) # (!\inst|alu1|unidad_aritmetica|divi|Add4~38_combout\ & (!\inst|REG_B\(4) & 
-- !\inst|alu1|unidad_aritmetica|divi|Add5~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add4~38_combout\,
	datab => \inst|REG_B\(4),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add5~7\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add5~8_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add5~9\);

-- Location: LCCOMB_X13_Y14_N12
\inst|alu1|unidad_aritmetica|divi|Add5~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add5~10_combout\ = (\inst|REG_B\(5) & ((\inst|alu1|unidad_aritmetica|divi|Add4~37_combout\ & (!\inst|alu1|unidad_aritmetica|divi|Add5~9\)) # (!\inst|alu1|unidad_aritmetica|divi|Add4~37_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add5~9\) # (GND))))) # (!\inst|REG_B\(5) & ((\inst|alu1|unidad_aritmetica|divi|Add4~37_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add5~9\ & VCC)) # (!\inst|alu1|unidad_aritmetica|divi|Add4~37_combout\ & 
-- (!\inst|alu1|unidad_aritmetica|divi|Add5~9\))))
-- \inst|alu1|unidad_aritmetica|divi|Add5~11\ = CARRY((\inst|REG_B\(5) & ((!\inst|alu1|unidad_aritmetica|divi|Add5~9\) # (!\inst|alu1|unidad_aritmetica|divi|Add4~37_combout\))) # (!\inst|REG_B\(5) & (!\inst|alu1|unidad_aritmetica|divi|Add4~37_combout\ & 
-- !\inst|alu1|unidad_aritmetica|divi|Add5~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(5),
	datab => \inst|alu1|unidad_aritmetica|divi|Add4~37_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add5~9\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add5~10_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add5~11\);

-- Location: LCCOMB_X13_Y14_N14
\inst|alu1|unidad_aritmetica|divi|Add5~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add5~12_combout\ = ((\inst|REG_B\(6) $ (\inst|alu1|unidad_aritmetica|divi|Add4~36_combout\ $ (\inst|alu1|unidad_aritmetica|divi|Add5~11\)))) # (GND)
-- \inst|alu1|unidad_aritmetica|divi|Add5~13\ = CARRY((\inst|REG_B\(6) & (\inst|alu1|unidad_aritmetica|divi|Add4~36_combout\ & !\inst|alu1|unidad_aritmetica|divi|Add5~11\)) # (!\inst|REG_B\(6) & ((\inst|alu1|unidad_aritmetica|divi|Add4~36_combout\) # 
-- (!\inst|alu1|unidad_aritmetica|divi|Add5~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(6),
	datab => \inst|alu1|unidad_aritmetica|divi|Add4~36_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add5~11\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add5~12_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add5~13\);

-- Location: LCCOMB_X13_Y14_N16
\inst|alu1|unidad_aritmetica|divi|Add5~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add5~14_combout\ = (\inst|REG_B\(7) & ((\inst|alu1|unidad_aritmetica|divi|Add4~35_combout\ & (!\inst|alu1|unidad_aritmetica|divi|Add5~13\)) # (!\inst|alu1|unidad_aritmetica|divi|Add4~35_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add5~13\) # (GND))))) # (!\inst|REG_B\(7) & ((\inst|alu1|unidad_aritmetica|divi|Add4~35_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add5~13\ & VCC)) # (!\inst|alu1|unidad_aritmetica|divi|Add4~35_combout\ & 
-- (!\inst|alu1|unidad_aritmetica|divi|Add5~13\))))
-- \inst|alu1|unidad_aritmetica|divi|Add5~15\ = CARRY((\inst|REG_B\(7) & ((!\inst|alu1|unidad_aritmetica|divi|Add5~13\) # (!\inst|alu1|unidad_aritmetica|divi|Add4~35_combout\))) # (!\inst|REG_B\(7) & (!\inst|alu1|unidad_aritmetica|divi|Add4~35_combout\ & 
-- !\inst|alu1|unidad_aritmetica|divi|Add5~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(7),
	datab => \inst|alu1|unidad_aritmetica|divi|Add4~35_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add5~13\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add5~14_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add5~15\);

-- Location: LCCOMB_X13_Y14_N18
\inst|alu1|unidad_aritmetica|divi|Add5~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add5~16_combout\ = ((\inst|alu1|unidad_aritmetica|divi|Add4~34_combout\ $ (\inst|REG_B\(8) $ (\inst|alu1|unidad_aritmetica|divi|Add5~15\)))) # (GND)
-- \inst|alu1|unidad_aritmetica|divi|Add5~17\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add4~34_combout\ & ((!\inst|alu1|unidad_aritmetica|divi|Add5~15\) # (!\inst|REG_B\(8)))) # (!\inst|alu1|unidad_aritmetica|divi|Add4~34_combout\ & (!\inst|REG_B\(8) & 
-- !\inst|alu1|unidad_aritmetica|divi|Add5~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add4~34_combout\,
	datab => \inst|REG_B\(8),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add5~15\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add5~16_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add5~17\);

-- Location: LCCOMB_X13_Y14_N20
\inst|alu1|unidad_aritmetica|divi|Add5~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add5~18_combout\ = (\inst|REG_B\(9) & ((\inst|alu1|unidad_aritmetica|divi|Add4~33_combout\ & (!\inst|alu1|unidad_aritmetica|divi|Add5~17\)) # (!\inst|alu1|unidad_aritmetica|divi|Add4~33_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add5~17\) # (GND))))) # (!\inst|REG_B\(9) & ((\inst|alu1|unidad_aritmetica|divi|Add4~33_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add5~17\ & VCC)) # (!\inst|alu1|unidad_aritmetica|divi|Add4~33_combout\ & 
-- (!\inst|alu1|unidad_aritmetica|divi|Add5~17\))))
-- \inst|alu1|unidad_aritmetica|divi|Add5~19\ = CARRY((\inst|REG_B\(9) & ((!\inst|alu1|unidad_aritmetica|divi|Add5~17\) # (!\inst|alu1|unidad_aritmetica|divi|Add4~33_combout\))) # (!\inst|REG_B\(9) & (!\inst|alu1|unidad_aritmetica|divi|Add4~33_combout\ & 
-- !\inst|alu1|unidad_aritmetica|divi|Add5~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(9),
	datab => \inst|alu1|unidad_aritmetica|divi|Add4~33_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add5~17\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add5~18_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add5~19\);

-- Location: LCCOMB_X13_Y14_N22
\inst|alu1|unidad_aritmetica|divi|Add5~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add5~20_combout\ = ((\inst|alu1|unidad_aritmetica|divi|Add4~32_combout\ $ (\inst|REG_B\(10) $ (\inst|alu1|unidad_aritmetica|divi|Add5~19\)))) # (GND)
-- \inst|alu1|unidad_aritmetica|divi|Add5~21\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add4~32_combout\ & ((!\inst|alu1|unidad_aritmetica|divi|Add5~19\) # (!\inst|REG_B\(10)))) # (!\inst|alu1|unidad_aritmetica|divi|Add4~32_combout\ & (!\inst|REG_B\(10) & 
-- !\inst|alu1|unidad_aritmetica|divi|Add5~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add4~32_combout\,
	datab => \inst|REG_B\(10),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add5~19\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add5~20_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add5~21\);

-- Location: LCCOMB_X13_Y14_N24
\inst|alu1|unidad_aritmetica|divi|Add5~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add5~22_combout\ = (\inst|REG_B\(11) & ((\inst|alu1|unidad_aritmetica|divi|Add4~31_combout\ & (!\inst|alu1|unidad_aritmetica|divi|Add5~21\)) # (!\inst|alu1|unidad_aritmetica|divi|Add4~31_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add5~21\) # (GND))))) # (!\inst|REG_B\(11) & ((\inst|alu1|unidad_aritmetica|divi|Add4~31_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add5~21\ & VCC)) # (!\inst|alu1|unidad_aritmetica|divi|Add4~31_combout\ & 
-- (!\inst|alu1|unidad_aritmetica|divi|Add5~21\))))
-- \inst|alu1|unidad_aritmetica|divi|Add5~23\ = CARRY((\inst|REG_B\(11) & ((!\inst|alu1|unidad_aritmetica|divi|Add5~21\) # (!\inst|alu1|unidad_aritmetica|divi|Add4~31_combout\))) # (!\inst|REG_B\(11) & (!\inst|alu1|unidad_aritmetica|divi|Add4~31_combout\ & 
-- !\inst|alu1|unidad_aritmetica|divi|Add5~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(11),
	datab => \inst|alu1|unidad_aritmetica|divi|Add4~31_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add5~21\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add5~22_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add5~23\);

-- Location: LCCOMB_X13_Y14_N26
\inst|alu1|unidad_aritmetica|divi|Add5~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add5~24_combout\ = ((\inst|alu1|unidad_aritmetica|divi|Add4~30_combout\ $ (\inst|REG_B\(12) $ (\inst|alu1|unidad_aritmetica|divi|Add5~23\)))) # (GND)
-- \inst|alu1|unidad_aritmetica|divi|Add5~25\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add4~30_combout\ & ((!\inst|alu1|unidad_aritmetica|divi|Add5~23\) # (!\inst|REG_B\(12)))) # (!\inst|alu1|unidad_aritmetica|divi|Add4~30_combout\ & (!\inst|REG_B\(12) & 
-- !\inst|alu1|unidad_aritmetica|divi|Add5~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add4~30_combout\,
	datab => \inst|REG_B\(12),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add5~23\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add5~24_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add5~25\);

-- Location: LCCOMB_X13_Y14_N30
\inst|alu1|unidad_aritmetica|divi|Add5~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add5~29_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan5~28_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add4~30_combout\)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan5~28_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add5~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add4~30_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|Add5~24_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan5~28_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add5~29_combout\);

-- Location: LCCOMB_X14_Y15_N26
\inst|alu1|unidad_aritmetica|divi|Add5~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add5~30_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan5~28_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add4~31_combout\)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan5~28_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add5~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|unidad_aritmetica|divi|Add4~31_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|LessThan5~28_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|Add5~22_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add5~30_combout\);

-- Location: LCCOMB_X13_Y13_N12
\inst|alu1|unidad_aritmetica|divi|Add5~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add5~31_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan5~28_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add4~32_combout\)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan5~28_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add5~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|unidad_aritmetica|divi|Add4~32_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|LessThan5~28_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|Add5~20_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add5~31_combout\);

-- Location: LCCOMB_X14_Y14_N20
\inst|alu1|unidad_aritmetica|divi|Add5~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add5~32_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan5~28_combout\ & ((\inst|alu1|unidad_aritmetica|divi|Add4~33_combout\))) # (!\inst|alu1|unidad_aritmetica|divi|LessThan5~28_combout\ & 
-- (\inst|alu1|unidad_aritmetica|divi|Add5~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|unidad_aritmetica|divi|Add5~18_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|Add4~33_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan5~28_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add5~32_combout\);

-- Location: LCCOMB_X13_Y13_N26
\inst|alu1|unidad_aritmetica|divi|Add5~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add5~33_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan5~28_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add4~34_combout\)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan5~28_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add5~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|unidad_aritmetica|divi|Add4~34_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|LessThan5~28_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|Add5~16_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add5~33_combout\);

-- Location: LCCOMB_X14_Y14_N30
\inst|alu1|unidad_aritmetica|divi|Add5~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add5~34_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan5~28_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add4~35_combout\)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan5~28_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add5~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add4~35_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|Add5~14_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan5~28_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add5~34_combout\);

-- Location: LCCOMB_X13_Y13_N16
\inst|alu1|unidad_aritmetica|divi|Add5~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add5~35_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan5~28_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add4~36_combout\)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan5~28_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add5~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|unidad_aritmetica|divi|Add4~36_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|LessThan5~28_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|Add5~12_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add5~35_combout\);

-- Location: LCCOMB_X13_Y16_N28
\inst|alu1|unidad_aritmetica|divi|Add5~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add5~36_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan5~28_combout\ & ((\inst|alu1|unidad_aritmetica|divi|Add4~37_combout\))) # (!\inst|alu1|unidad_aritmetica|divi|LessThan5~28_combout\ & 
-- (\inst|alu1|unidad_aritmetica|divi|Add5~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add5~10_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|Add4~37_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan5~28_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add5~36_combout\);

-- Location: LCCOMB_X13_Y16_N18
\inst|alu1|unidad_aritmetica|divi|Add5~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add5~37_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan5~28_combout\ & ((\inst|alu1|unidad_aritmetica|divi|Add4~38_combout\))) # (!\inst|alu1|unidad_aritmetica|divi|LessThan5~28_combout\ & 
-- (\inst|alu1|unidad_aritmetica|divi|Add5~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add5~8_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|Add4~38_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan5~28_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add5~37_combout\);

-- Location: LCCOMB_X14_Y15_N0
\inst|alu1|unidad_aritmetica|divi|Add5~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add5~38_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan5~28_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add4~39_combout\)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan5~28_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add5~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|unidad_aritmetica|divi|Add4~39_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|LessThan5~28_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|Add5~6_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add5~38_combout\);

-- Location: LCCOMB_X13_Y13_N22
\inst|alu1|unidad_aritmetica|divi|Add5~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add5~39_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan5~28_combout\ & ((\inst|alu1|unidad_aritmetica|divi|Add4~40_combout\))) # (!\inst|alu1|unidad_aritmetica|divi|LessThan5~28_combout\ & 
-- (\inst|alu1|unidad_aritmetica|divi|Add5~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add5~4_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|LessThan5~28_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|Add4~40_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add5~39_combout\);

-- Location: LCCOMB_X13_Y16_N8
\inst|alu1|unidad_aritmetica|divi|Add5~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add5~40_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan5~28_combout\ & ((\inst|alu1|unidad_aritmetica|divi|Add4~41_combout\))) # (!\inst|alu1|unidad_aritmetica|divi|LessThan5~28_combout\ & 
-- (\inst|alu1|unidad_aritmetica|divi|Add5~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add5~2_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|Add4~41_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan5~28_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add5~40_combout\);

-- Location: LCCOMB_X14_Y13_N0
\inst|alu1|unidad_aritmetica|divi|Add5~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add5~41_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan5~28_combout\ & ((\inst|REG_A\(2)))) # (!\inst|alu1|unidad_aritmetica|divi|LessThan5~28_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add5~0_combout\,
	datac => \inst|REG_A\(2),
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan5~28_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add5~41_combout\);

-- Location: LCCOMB_X14_Y13_N4
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

-- Location: LCCOMB_X14_Y13_N6
\inst|alu1|unidad_aritmetica|divi|Add6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add6~2_combout\ = (\inst|REG_B\(1) & ((\inst|alu1|unidad_aritmetica|divi|Add5~41_combout\ & (!\inst|alu1|unidad_aritmetica|divi|Add6~1\)) # (!\inst|alu1|unidad_aritmetica|divi|Add5~41_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add6~1\) # (GND))))) # (!\inst|REG_B\(1) & ((\inst|alu1|unidad_aritmetica|divi|Add5~41_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add6~1\ & VCC)) # (!\inst|alu1|unidad_aritmetica|divi|Add5~41_combout\ & 
-- (!\inst|alu1|unidad_aritmetica|divi|Add6~1\))))
-- \inst|alu1|unidad_aritmetica|divi|Add6~3\ = CARRY((\inst|REG_B\(1) & ((!\inst|alu1|unidad_aritmetica|divi|Add6~1\) # (!\inst|alu1|unidad_aritmetica|divi|Add5~41_combout\))) # (!\inst|REG_B\(1) & (!\inst|alu1|unidad_aritmetica|divi|Add5~41_combout\ & 
-- !\inst|alu1|unidad_aritmetica|divi|Add6~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(1),
	datab => \inst|alu1|unidad_aritmetica|divi|Add5~41_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add6~1\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add6~2_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add6~3\);

-- Location: LCCOMB_X14_Y13_N8
\inst|alu1|unidad_aritmetica|divi|Add6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add6~4_combout\ = ((\inst|REG_B\(2) $ (\inst|alu1|unidad_aritmetica|divi|Add5~40_combout\ $ (\inst|alu1|unidad_aritmetica|divi|Add6~3\)))) # (GND)
-- \inst|alu1|unidad_aritmetica|divi|Add6~5\ = CARRY((\inst|REG_B\(2) & (\inst|alu1|unidad_aritmetica|divi|Add5~40_combout\ & !\inst|alu1|unidad_aritmetica|divi|Add6~3\)) # (!\inst|REG_B\(2) & ((\inst|alu1|unidad_aritmetica|divi|Add5~40_combout\) # 
-- (!\inst|alu1|unidad_aritmetica|divi|Add6~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(2),
	datab => \inst|alu1|unidad_aritmetica|divi|Add5~40_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add6~3\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add6~4_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add6~5\);

-- Location: LCCOMB_X14_Y13_N10
\inst|alu1|unidad_aritmetica|divi|Add6~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add6~6_combout\ = (\inst|REG_B\(3) & ((\inst|alu1|unidad_aritmetica|divi|Add5~39_combout\ & (!\inst|alu1|unidad_aritmetica|divi|Add6~5\)) # (!\inst|alu1|unidad_aritmetica|divi|Add5~39_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add6~5\) # (GND))))) # (!\inst|REG_B\(3) & ((\inst|alu1|unidad_aritmetica|divi|Add5~39_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add6~5\ & VCC)) # (!\inst|alu1|unidad_aritmetica|divi|Add5~39_combout\ & 
-- (!\inst|alu1|unidad_aritmetica|divi|Add6~5\))))
-- \inst|alu1|unidad_aritmetica|divi|Add6~7\ = CARRY((\inst|REG_B\(3) & ((!\inst|alu1|unidad_aritmetica|divi|Add6~5\) # (!\inst|alu1|unidad_aritmetica|divi|Add5~39_combout\))) # (!\inst|REG_B\(3) & (!\inst|alu1|unidad_aritmetica|divi|Add5~39_combout\ & 
-- !\inst|alu1|unidad_aritmetica|divi|Add6~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(3),
	datab => \inst|alu1|unidad_aritmetica|divi|Add5~39_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add6~5\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add6~6_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add6~7\);

-- Location: LCCOMB_X14_Y13_N12
\inst|alu1|unidad_aritmetica|divi|Add6~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add6~8_combout\ = ((\inst|alu1|unidad_aritmetica|divi|Add5~38_combout\ $ (\inst|REG_B\(4) $ (\inst|alu1|unidad_aritmetica|divi|Add6~7\)))) # (GND)
-- \inst|alu1|unidad_aritmetica|divi|Add6~9\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add5~38_combout\ & ((!\inst|alu1|unidad_aritmetica|divi|Add6~7\) # (!\inst|REG_B\(4)))) # (!\inst|alu1|unidad_aritmetica|divi|Add5~38_combout\ & (!\inst|REG_B\(4) & 
-- !\inst|alu1|unidad_aritmetica|divi|Add6~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add5~38_combout\,
	datab => \inst|REG_B\(4),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add6~7\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add6~8_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add6~9\);

-- Location: LCCOMB_X14_Y13_N14
\inst|alu1|unidad_aritmetica|divi|Add6~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add6~10_combout\ = (\inst|REG_B\(5) & ((\inst|alu1|unidad_aritmetica|divi|Add5~37_combout\ & (!\inst|alu1|unidad_aritmetica|divi|Add6~9\)) # (!\inst|alu1|unidad_aritmetica|divi|Add5~37_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add6~9\) # (GND))))) # (!\inst|REG_B\(5) & ((\inst|alu1|unidad_aritmetica|divi|Add5~37_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add6~9\ & VCC)) # (!\inst|alu1|unidad_aritmetica|divi|Add5~37_combout\ & 
-- (!\inst|alu1|unidad_aritmetica|divi|Add6~9\))))
-- \inst|alu1|unidad_aritmetica|divi|Add6~11\ = CARRY((\inst|REG_B\(5) & ((!\inst|alu1|unidad_aritmetica|divi|Add6~9\) # (!\inst|alu1|unidad_aritmetica|divi|Add5~37_combout\))) # (!\inst|REG_B\(5) & (!\inst|alu1|unidad_aritmetica|divi|Add5~37_combout\ & 
-- !\inst|alu1|unidad_aritmetica|divi|Add6~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(5),
	datab => \inst|alu1|unidad_aritmetica|divi|Add5~37_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add6~9\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add6~10_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add6~11\);

-- Location: LCCOMB_X14_Y13_N16
\inst|alu1|unidad_aritmetica|divi|Add6~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add6~12_combout\ = ((\inst|REG_B\(6) $ (\inst|alu1|unidad_aritmetica|divi|Add5~36_combout\ $ (\inst|alu1|unidad_aritmetica|divi|Add6~11\)))) # (GND)
-- \inst|alu1|unidad_aritmetica|divi|Add6~13\ = CARRY((\inst|REG_B\(6) & (\inst|alu1|unidad_aritmetica|divi|Add5~36_combout\ & !\inst|alu1|unidad_aritmetica|divi|Add6~11\)) # (!\inst|REG_B\(6) & ((\inst|alu1|unidad_aritmetica|divi|Add5~36_combout\) # 
-- (!\inst|alu1|unidad_aritmetica|divi|Add6~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(6),
	datab => \inst|alu1|unidad_aritmetica|divi|Add5~36_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add6~11\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add6~12_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add6~13\);

-- Location: LCCOMB_X14_Y13_N18
\inst|alu1|unidad_aritmetica|divi|Add6~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add6~14_combout\ = (\inst|alu1|unidad_aritmetica|divi|Add5~35_combout\ & ((\inst|REG_B\(7) & (!\inst|alu1|unidad_aritmetica|divi|Add6~13\)) # (!\inst|REG_B\(7) & (\inst|alu1|unidad_aritmetica|divi|Add6~13\ & VCC)))) # 
-- (!\inst|alu1|unidad_aritmetica|divi|Add5~35_combout\ & ((\inst|REG_B\(7) & ((\inst|alu1|unidad_aritmetica|divi|Add6~13\) # (GND))) # (!\inst|REG_B\(7) & (!\inst|alu1|unidad_aritmetica|divi|Add6~13\))))
-- \inst|alu1|unidad_aritmetica|divi|Add6~15\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add5~35_combout\ & (\inst|REG_B\(7) & !\inst|alu1|unidad_aritmetica|divi|Add6~13\)) # (!\inst|alu1|unidad_aritmetica|divi|Add5~35_combout\ & ((\inst|REG_B\(7)) # 
-- (!\inst|alu1|unidad_aritmetica|divi|Add6~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add5~35_combout\,
	datab => \inst|REG_B\(7),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add6~13\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add6~14_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add6~15\);

-- Location: LCCOMB_X14_Y13_N20
\inst|alu1|unidad_aritmetica|divi|Add6~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add6~16_combout\ = ((\inst|alu1|unidad_aritmetica|divi|Add5~34_combout\ $ (\inst|REG_B\(8) $ (\inst|alu1|unidad_aritmetica|divi|Add6~15\)))) # (GND)
-- \inst|alu1|unidad_aritmetica|divi|Add6~17\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add5~34_combout\ & ((!\inst|alu1|unidad_aritmetica|divi|Add6~15\) # (!\inst|REG_B\(8)))) # (!\inst|alu1|unidad_aritmetica|divi|Add5~34_combout\ & (!\inst|REG_B\(8) & 
-- !\inst|alu1|unidad_aritmetica|divi|Add6~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add5~34_combout\,
	datab => \inst|REG_B\(8),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add6~15\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add6~16_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add6~17\);

-- Location: LCCOMB_X14_Y13_N22
\inst|alu1|unidad_aritmetica|divi|Add6~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add6~18_combout\ = (\inst|alu1|unidad_aritmetica|divi|Add5~33_combout\ & ((\inst|REG_B\(9) & (!\inst|alu1|unidad_aritmetica|divi|Add6~17\)) # (!\inst|REG_B\(9) & (\inst|alu1|unidad_aritmetica|divi|Add6~17\ & VCC)))) # 
-- (!\inst|alu1|unidad_aritmetica|divi|Add5~33_combout\ & ((\inst|REG_B\(9) & ((\inst|alu1|unidad_aritmetica|divi|Add6~17\) # (GND))) # (!\inst|REG_B\(9) & (!\inst|alu1|unidad_aritmetica|divi|Add6~17\))))
-- \inst|alu1|unidad_aritmetica|divi|Add6~19\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add5~33_combout\ & (\inst|REG_B\(9) & !\inst|alu1|unidad_aritmetica|divi|Add6~17\)) # (!\inst|alu1|unidad_aritmetica|divi|Add5~33_combout\ & ((\inst|REG_B\(9)) # 
-- (!\inst|alu1|unidad_aritmetica|divi|Add6~17\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add5~33_combout\,
	datab => \inst|REG_B\(9),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add6~17\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add6~18_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add6~19\);

-- Location: LCCOMB_X14_Y13_N24
\inst|alu1|unidad_aritmetica|divi|Add6~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add6~20_combout\ = ((\inst|REG_B\(10) $ (\inst|alu1|unidad_aritmetica|divi|Add5~32_combout\ $ (\inst|alu1|unidad_aritmetica|divi|Add6~19\)))) # (GND)
-- \inst|alu1|unidad_aritmetica|divi|Add6~21\ = CARRY((\inst|REG_B\(10) & (\inst|alu1|unidad_aritmetica|divi|Add5~32_combout\ & !\inst|alu1|unidad_aritmetica|divi|Add6~19\)) # (!\inst|REG_B\(10) & ((\inst|alu1|unidad_aritmetica|divi|Add5~32_combout\) # 
-- (!\inst|alu1|unidad_aritmetica|divi|Add6~19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(10),
	datab => \inst|alu1|unidad_aritmetica|divi|Add5~32_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add6~19\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add6~20_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add6~21\);

-- Location: LCCOMB_X14_Y13_N26
\inst|alu1|unidad_aritmetica|divi|Add6~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add6~22_combout\ = (\inst|alu1|unidad_aritmetica|divi|Add5~31_combout\ & ((\inst|REG_B\(11) & (!\inst|alu1|unidad_aritmetica|divi|Add6~21\)) # (!\inst|REG_B\(11) & (\inst|alu1|unidad_aritmetica|divi|Add6~21\ & VCC)))) # 
-- (!\inst|alu1|unidad_aritmetica|divi|Add5~31_combout\ & ((\inst|REG_B\(11) & ((\inst|alu1|unidad_aritmetica|divi|Add6~21\) # (GND))) # (!\inst|REG_B\(11) & (!\inst|alu1|unidad_aritmetica|divi|Add6~21\))))
-- \inst|alu1|unidad_aritmetica|divi|Add6~23\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add5~31_combout\ & (\inst|REG_B\(11) & !\inst|alu1|unidad_aritmetica|divi|Add6~21\)) # (!\inst|alu1|unidad_aritmetica|divi|Add5~31_combout\ & ((\inst|REG_B\(11)) # 
-- (!\inst|alu1|unidad_aritmetica|divi|Add6~21\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add5~31_combout\,
	datab => \inst|REG_B\(11),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add6~21\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add6~22_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add6~23\);

-- Location: LCCOMB_X14_Y13_N28
\inst|alu1|unidad_aritmetica|divi|Add6~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add6~24_combout\ = ((\inst|REG_B\(12) $ (\inst|alu1|unidad_aritmetica|divi|Add5~30_combout\ $ (\inst|alu1|unidad_aritmetica|divi|Add6~23\)))) # (GND)
-- \inst|alu1|unidad_aritmetica|divi|Add6~25\ = CARRY((\inst|REG_B\(12) & (\inst|alu1|unidad_aritmetica|divi|Add5~30_combout\ & !\inst|alu1|unidad_aritmetica|divi|Add6~23\)) # (!\inst|REG_B\(12) & ((\inst|alu1|unidad_aritmetica|divi|Add5~30_combout\) # 
-- (!\inst|alu1|unidad_aritmetica|divi|Add6~23\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(12),
	datab => \inst|alu1|unidad_aritmetica|divi|Add5~30_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add6~23\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add6~24_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add6~25\);

-- Location: LCCOMB_X14_Y13_N30
\inst|alu1|unidad_aritmetica|divi|Add6~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add6~26_combout\ = \inst|REG_B\(13) $ (\inst|alu1|unidad_aritmetica|divi|Add5~29_combout\ $ (!\inst|alu1|unidad_aritmetica|divi|Add6~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(13),
	datab => \inst|alu1|unidad_aritmetica|divi|Add5~29_combout\,
	cin => \inst|alu1|unidad_aritmetica|divi|Add6~25\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add6~26_combout\);

-- Location: LCCOMB_X13_Y14_N28
\inst|alu1|unidad_aritmetica|divi|Add5~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add5~26_combout\ = \inst|REG_B\(13) $ (\inst|alu1|unidad_aritmetica|divi|Add5~25\ $ (!\inst|alu1|unidad_aritmetica|divi|Add4~29_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|REG_B\(13),
	datad => \inst|alu1|unidad_aritmetica|divi|Add4~29_combout\,
	cin => \inst|alu1|unidad_aritmetica|divi|Add5~25\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add5~26_combout\);

-- Location: LCCOMB_X14_Y16_N30
\inst|alu1|unidad_aritmetica|divi|Add5~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add5~28_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan5~28_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add4~29_combout\)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan5~28_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add5~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add4~29_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|LessThan5~28_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|Add5~26_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add5~28_combout\);

-- Location: LCCOMB_X14_Y16_N0
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

-- Location: LCCOMB_X14_Y16_N2
\inst|alu1|unidad_aritmetica|divi|LessThan6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan6~3_cout\ = CARRY((\inst|REG_B\(1) & (\inst|alu1|unidad_aritmetica|divi|Add5~41_combout\ & !\inst|alu1|unidad_aritmetica|divi|LessThan6~1_cout\)) # (!\inst|REG_B\(1) & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add5~41_combout\) # (!\inst|alu1|unidad_aritmetica|divi|LessThan6~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(1),
	datab => \inst|alu1|unidad_aritmetica|divi|Add5~41_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan6~1_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan6~3_cout\);

-- Location: LCCOMB_X14_Y16_N4
\inst|alu1|unidad_aritmetica|divi|LessThan6~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan6~5_cout\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add5~40_combout\ & (\inst|REG_B\(2) & !\inst|alu1|unidad_aritmetica|divi|LessThan6~3_cout\)) # (!\inst|alu1|unidad_aritmetica|divi|Add5~40_combout\ & 
-- ((\inst|REG_B\(2)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan6~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add5~40_combout\,
	datab => \inst|REG_B\(2),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan6~3_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan6~5_cout\);

-- Location: LCCOMB_X14_Y16_N6
\inst|alu1|unidad_aritmetica|divi|LessThan6~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan6~7_cout\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add5~39_combout\ & ((!\inst|alu1|unidad_aritmetica|divi|LessThan6~5_cout\) # (!\inst|REG_B\(3)))) # (!\inst|alu1|unidad_aritmetica|divi|Add5~39_combout\ & 
-- (!\inst|REG_B\(3) & !\inst|alu1|unidad_aritmetica|divi|LessThan6~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add5~39_combout\,
	datab => \inst|REG_B\(3),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan6~5_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan6~7_cout\);

-- Location: LCCOMB_X14_Y16_N8
\inst|alu1|unidad_aritmetica|divi|LessThan6~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan6~9_cout\ = CARRY((\inst|REG_B\(4) & ((!\inst|alu1|unidad_aritmetica|divi|LessThan6~7_cout\) # (!\inst|alu1|unidad_aritmetica|divi|Add5~38_combout\))) # (!\inst|REG_B\(4) & 
-- (!\inst|alu1|unidad_aritmetica|divi|Add5~38_combout\ & !\inst|alu1|unidad_aritmetica|divi|LessThan6~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(4),
	datab => \inst|alu1|unidad_aritmetica|divi|Add5~38_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan6~7_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan6~9_cout\);

-- Location: LCCOMB_X14_Y16_N10
\inst|alu1|unidad_aritmetica|divi|LessThan6~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan6~11_cout\ = CARRY((\inst|REG_B\(5) & (\inst|alu1|unidad_aritmetica|divi|Add5~37_combout\ & !\inst|alu1|unidad_aritmetica|divi|LessThan6~9_cout\)) # (!\inst|REG_B\(5) & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add5~37_combout\) # (!\inst|alu1|unidad_aritmetica|divi|LessThan6~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(5),
	datab => \inst|alu1|unidad_aritmetica|divi|Add5~37_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan6~9_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan6~11_cout\);

-- Location: LCCOMB_X14_Y16_N12
\inst|alu1|unidad_aritmetica|divi|LessThan6~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan6~13_cout\ = CARRY((\inst|REG_B\(6) & ((!\inst|alu1|unidad_aritmetica|divi|LessThan6~11_cout\) # (!\inst|alu1|unidad_aritmetica|divi|Add5~36_combout\))) # (!\inst|REG_B\(6) & 
-- (!\inst|alu1|unidad_aritmetica|divi|Add5~36_combout\ & !\inst|alu1|unidad_aritmetica|divi|LessThan6~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(6),
	datab => \inst|alu1|unidad_aritmetica|divi|Add5~36_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan6~11_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan6~13_cout\);

-- Location: LCCOMB_X14_Y16_N14
\inst|alu1|unidad_aritmetica|divi|LessThan6~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan6~15_cout\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add5~35_combout\ & ((!\inst|alu1|unidad_aritmetica|divi|LessThan6~13_cout\) # (!\inst|REG_B\(7)))) # (!\inst|alu1|unidad_aritmetica|divi|Add5~35_combout\ & 
-- (!\inst|REG_B\(7) & !\inst|alu1|unidad_aritmetica|divi|LessThan6~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add5~35_combout\,
	datab => \inst|REG_B\(7),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan6~13_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan6~15_cout\);

-- Location: LCCOMB_X14_Y16_N16
\inst|alu1|unidad_aritmetica|divi|LessThan6~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan6~17_cout\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add5~34_combout\ & (\inst|REG_B\(8) & !\inst|alu1|unidad_aritmetica|divi|LessThan6~15_cout\)) # (!\inst|alu1|unidad_aritmetica|divi|Add5~34_combout\ & 
-- ((\inst|REG_B\(8)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan6~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add5~34_combout\,
	datab => \inst|REG_B\(8),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan6~15_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan6~17_cout\);

-- Location: LCCOMB_X14_Y16_N18
\inst|alu1|unidad_aritmetica|divi|LessThan6~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan6~19_cout\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add5~33_combout\ & ((!\inst|alu1|unidad_aritmetica|divi|LessThan6~17_cout\) # (!\inst|REG_B\(9)))) # (!\inst|alu1|unidad_aritmetica|divi|Add5~33_combout\ & 
-- (!\inst|REG_B\(9) & !\inst|alu1|unidad_aritmetica|divi|LessThan6~17_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add5~33_combout\,
	datab => \inst|REG_B\(9),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan6~17_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan6~19_cout\);

-- Location: LCCOMB_X14_Y16_N20
\inst|alu1|unidad_aritmetica|divi|LessThan6~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan6~21_cout\ = CARRY((\inst|REG_B\(10) & ((!\inst|alu1|unidad_aritmetica|divi|LessThan6~19_cout\) # (!\inst|alu1|unidad_aritmetica|divi|Add5~32_combout\))) # (!\inst|REG_B\(10) & 
-- (!\inst|alu1|unidad_aritmetica|divi|Add5~32_combout\ & !\inst|alu1|unidad_aritmetica|divi|LessThan6~19_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(10),
	datab => \inst|alu1|unidad_aritmetica|divi|Add5~32_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan6~19_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan6~21_cout\);

-- Location: LCCOMB_X14_Y16_N22
\inst|alu1|unidad_aritmetica|divi|LessThan6~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan6~23_cout\ = CARRY((\inst|REG_B\(11) & (\inst|alu1|unidad_aritmetica|divi|Add5~31_combout\ & !\inst|alu1|unidad_aritmetica|divi|LessThan6~21_cout\)) # (!\inst|REG_B\(11) & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add5~31_combout\) # (!\inst|alu1|unidad_aritmetica|divi|LessThan6~21_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(11),
	datab => \inst|alu1|unidad_aritmetica|divi|Add5~31_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan6~21_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan6~23_cout\);

-- Location: LCCOMB_X14_Y16_N24
\inst|alu1|unidad_aritmetica|divi|LessThan6~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan6~25_cout\ = CARRY((\inst|REG_B\(12) & ((!\inst|alu1|unidad_aritmetica|divi|LessThan6~23_cout\) # (!\inst|alu1|unidad_aritmetica|divi|Add5~30_combout\))) # (!\inst|REG_B\(12) & 
-- (!\inst|alu1|unidad_aritmetica|divi|Add5~30_combout\ & !\inst|alu1|unidad_aritmetica|divi|LessThan6~23_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(12),
	datab => \inst|alu1|unidad_aritmetica|divi|Add5~30_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan6~23_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan6~25_cout\);

-- Location: LCCOMB_X14_Y16_N26
\inst|alu1|unidad_aritmetica|divi|LessThan6~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan6~27_cout\ = CARRY((\inst|REG_B\(13) & (\inst|alu1|unidad_aritmetica|divi|Add5~29_combout\ & !\inst|alu1|unidad_aritmetica|divi|LessThan6~25_cout\)) # (!\inst|REG_B\(13) & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add5~29_combout\) # (!\inst|alu1|unidad_aritmetica|divi|LessThan6~25_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(13),
	datab => \inst|alu1|unidad_aritmetica|divi|Add5~29_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan6~25_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan6~27_cout\);

-- Location: LCCOMB_X14_Y16_N28
\inst|alu1|unidad_aritmetica|divi|LessThan6~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan6~28_combout\ = (\inst|alu1|unidad_aritmetica|divi|Add5~28_combout\ & (!\inst|alu1|unidad_aritmetica|divi|LessThan6~27_cout\ & \inst|REG_B\(14))) # (!\inst|alu1|unidad_aritmetica|divi|Add5~28_combout\ & 
-- ((\inst|REG_B\(14)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan6~27_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add5~28_combout\,
	datad => \inst|REG_B\(14),
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan6~27_cout\,
	combout => \inst|alu1|unidad_aritmetica|divi|LessThan6~28_combout\);

-- Location: LCCOMB_X13_Y17_N20
\inst|alu1|unidad_aritmetica|divi|Add6~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add6~28_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan6~28_combout\ & ((\inst|alu1|unidad_aritmetica|divi|Add5~29_combout\))) # (!\inst|alu1|unidad_aritmetica|divi|LessThan6~28_combout\ & 
-- (\inst|alu1|unidad_aritmetica|divi|Add6~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add6~26_combout\,
	datab => \inst|alu1|unidad_aritmetica|divi|Add5~29_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan6~28_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add6~28_combout\);

-- Location: LCCOMB_X14_Y15_N22
\inst|alu1|unidad_aritmetica|divi|Add6~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add6~29_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan6~28_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add5~30_combout\)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan6~28_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add6~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add5~30_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|Add6~24_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan6~28_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add6~29_combout\);

-- Location: LCCOMB_X13_Y13_N4
\inst|alu1|unidad_aritmetica|divi|Add6~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add6~30_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan6~28_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add5~31_combout\)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan6~28_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add6~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add5~31_combout\,
	datab => \inst|alu1|unidad_aritmetica|divi|Add6~22_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan6~28_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add6~30_combout\);

-- Location: LCCOMB_X14_Y14_N24
\inst|alu1|unidad_aritmetica|divi|Add6~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add6~31_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan6~28_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add5~32_combout\)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan6~28_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add6~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|unidad_aritmetica|divi|Add5~32_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|Add6~20_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan6~28_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add6~31_combout\);

-- Location: LCCOMB_X13_Y13_N18
\inst|alu1|unidad_aritmetica|divi|Add6~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add6~32_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan6~28_combout\ & ((\inst|alu1|unidad_aritmetica|divi|Add5~33_combout\))) # (!\inst|alu1|unidad_aritmetica|divi|LessThan6~28_combout\ & 
-- (\inst|alu1|unidad_aritmetica|divi|Add6~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|unidad_aritmetica|divi|Add6~18_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|Add5~33_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan6~28_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add6~32_combout\);

-- Location: LCCOMB_X14_Y13_N2
\inst|alu1|unidad_aritmetica|divi|Add6~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add6~33_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan6~28_combout\ & ((\inst|alu1|unidad_aritmetica|divi|Add5~34_combout\))) # (!\inst|alu1|unidad_aritmetica|divi|LessThan6~28_combout\ & 
-- (\inst|alu1|unidad_aritmetica|divi|Add6~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|unidad_aritmetica|divi|Add6~16_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|Add5~34_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan6~28_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add6~33_combout\);

-- Location: LCCOMB_X13_Y13_N24
\inst|alu1|unidad_aritmetica|divi|Add6~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add6~34_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan6~28_combout\ & ((\inst|alu1|unidad_aritmetica|divi|Add5~35_combout\))) # (!\inst|alu1|unidad_aritmetica|divi|LessThan6~28_combout\ & 
-- (\inst|alu1|unidad_aritmetica|divi|Add6~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|unidad_aritmetica|divi|Add6~14_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|Add5~35_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan6~28_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add6~34_combout\);

-- Location: LCCOMB_X13_Y16_N6
\inst|alu1|unidad_aritmetica|divi|Add6~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add6~35_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan6~28_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add5~36_combout\)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan6~28_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add6~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|unidad_aritmetica|divi|Add5~36_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|Add6~12_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan6~28_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add6~35_combout\);

-- Location: LCCOMB_X13_Y16_N20
\inst|alu1|unidad_aritmetica|divi|Add6~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add6~36_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan6~28_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add5~37_combout\)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan6~28_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add6~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|unidad_aritmetica|divi|Add5~37_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|Add6~10_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan6~28_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add6~36_combout\);

-- Location: LCCOMB_X14_Y15_N28
\inst|alu1|unidad_aritmetica|divi|Add6~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add6~37_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan6~28_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add5~38_combout\)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan6~28_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add6~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|unidad_aritmetica|divi|Add5~38_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|Add6~8_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan6~28_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add6~37_combout\);

-- Location: LCCOMB_X13_Y13_N10
\inst|alu1|unidad_aritmetica|divi|Add6~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add6~38_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan6~28_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add5~39_combout\)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan6~28_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add6~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add5~39_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|Add6~6_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan6~28_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add6~38_combout\);

-- Location: LCCOMB_X13_Y16_N2
\inst|alu1|unidad_aritmetica|divi|Add6~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add6~39_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan6~28_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add5~40_combout\)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan6~28_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add6~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|unidad_aritmetica|divi|Add5~40_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|Add6~4_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan6~28_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add6~39_combout\);

-- Location: LCCOMB_X13_Y17_N16
\inst|alu1|unidad_aritmetica|divi|Add6~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add6~40_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan6~28_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add5~41_combout\)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan6~28_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add6~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add5~41_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|LessThan6~28_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|Add6~2_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add6~40_combout\);

-- Location: LCCOMB_X13_Y17_N14
\inst|alu1|unidad_aritmetica|divi|Add6~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add6~41_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan6~28_combout\ & ((\inst|REG_A\(1)))) # (!\inst|alu1|unidad_aritmetica|divi|LessThan6~28_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add6~0_combout\,
	datab => \inst|REG_A\(1),
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan6~28_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add6~41_combout\);

-- Location: LCCOMB_X14_Y17_N2
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

-- Location: LCCOMB_X14_Y17_N4
\inst|alu1|unidad_aritmetica|divi|LessThan7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan7~3_cout\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add6~41_combout\ & ((!\inst|alu1|unidad_aritmetica|divi|LessThan7~1_cout\) # (!\inst|REG_B\(1)))) # (!\inst|alu1|unidad_aritmetica|divi|Add6~41_combout\ & 
-- (!\inst|REG_B\(1) & !\inst|alu1|unidad_aritmetica|divi|LessThan7~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add6~41_combout\,
	datab => \inst|REG_B\(1),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan7~1_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan7~3_cout\);

-- Location: LCCOMB_X14_Y17_N6
\inst|alu1|unidad_aritmetica|divi|LessThan7~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan7~5_cout\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add6~40_combout\ & (\inst|REG_B\(2) & !\inst|alu1|unidad_aritmetica|divi|LessThan7~3_cout\)) # (!\inst|alu1|unidad_aritmetica|divi|Add6~40_combout\ & 
-- ((\inst|REG_B\(2)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan7~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add6~40_combout\,
	datab => \inst|REG_B\(2),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan7~3_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan7~5_cout\);

-- Location: LCCOMB_X14_Y17_N8
\inst|alu1|unidad_aritmetica|divi|LessThan7~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan7~7_cout\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add6~39_combout\ & ((!\inst|alu1|unidad_aritmetica|divi|LessThan7~5_cout\) # (!\inst|REG_B\(3)))) # (!\inst|alu1|unidad_aritmetica|divi|Add6~39_combout\ & 
-- (!\inst|REG_B\(3) & !\inst|alu1|unidad_aritmetica|divi|LessThan7~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add6~39_combout\,
	datab => \inst|REG_B\(3),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan7~5_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan7~7_cout\);

-- Location: LCCOMB_X14_Y17_N10
\inst|alu1|unidad_aritmetica|divi|LessThan7~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan7~9_cout\ = CARRY((\inst|REG_B\(4) & ((!\inst|alu1|unidad_aritmetica|divi|LessThan7~7_cout\) # (!\inst|alu1|unidad_aritmetica|divi|Add6~38_combout\))) # (!\inst|REG_B\(4) & 
-- (!\inst|alu1|unidad_aritmetica|divi|Add6~38_combout\ & !\inst|alu1|unidad_aritmetica|divi|LessThan7~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(4),
	datab => \inst|alu1|unidad_aritmetica|divi|Add6~38_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan7~7_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan7~9_cout\);

-- Location: LCCOMB_X14_Y17_N12
\inst|alu1|unidad_aritmetica|divi|LessThan7~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan7~11_cout\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add6~37_combout\ & ((!\inst|alu1|unidad_aritmetica|divi|LessThan7~9_cout\) # (!\inst|REG_B\(5)))) # (!\inst|alu1|unidad_aritmetica|divi|Add6~37_combout\ & 
-- (!\inst|REG_B\(5) & !\inst|alu1|unidad_aritmetica|divi|LessThan7~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add6~37_combout\,
	datab => \inst|REG_B\(5),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan7~9_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan7~11_cout\);

-- Location: LCCOMB_X14_Y17_N14
\inst|alu1|unidad_aritmetica|divi|LessThan7~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan7~13_cout\ = CARRY((\inst|REG_B\(6) & ((!\inst|alu1|unidad_aritmetica|divi|LessThan7~11_cout\) # (!\inst|alu1|unidad_aritmetica|divi|Add6~36_combout\))) # (!\inst|REG_B\(6) & 
-- (!\inst|alu1|unidad_aritmetica|divi|Add6~36_combout\ & !\inst|alu1|unidad_aritmetica|divi|LessThan7~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(6),
	datab => \inst|alu1|unidad_aritmetica|divi|Add6~36_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan7~11_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan7~13_cout\);

-- Location: LCCOMB_X14_Y17_N16
\inst|alu1|unidad_aritmetica|divi|LessThan7~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan7~15_cout\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add6~35_combout\ & ((!\inst|alu1|unidad_aritmetica|divi|LessThan7~13_cout\) # (!\inst|REG_B\(7)))) # (!\inst|alu1|unidad_aritmetica|divi|Add6~35_combout\ & 
-- (!\inst|REG_B\(7) & !\inst|alu1|unidad_aritmetica|divi|LessThan7~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add6~35_combout\,
	datab => \inst|REG_B\(7),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan7~13_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan7~15_cout\);

-- Location: LCCOMB_X14_Y17_N18
\inst|alu1|unidad_aritmetica|divi|LessThan7~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan7~17_cout\ = CARRY((\inst|REG_B\(8) & ((!\inst|alu1|unidad_aritmetica|divi|LessThan7~15_cout\) # (!\inst|alu1|unidad_aritmetica|divi|Add6~34_combout\))) # (!\inst|REG_B\(8) & 
-- (!\inst|alu1|unidad_aritmetica|divi|Add6~34_combout\ & !\inst|alu1|unidad_aritmetica|divi|LessThan7~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(8),
	datab => \inst|alu1|unidad_aritmetica|divi|Add6~34_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan7~15_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan7~17_cout\);

-- Location: LCCOMB_X14_Y17_N20
\inst|alu1|unidad_aritmetica|divi|LessThan7~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan7~19_cout\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add6~33_combout\ & ((!\inst|alu1|unidad_aritmetica|divi|LessThan7~17_cout\) # (!\inst|REG_B\(9)))) # (!\inst|alu1|unidad_aritmetica|divi|Add6~33_combout\ & 
-- (!\inst|REG_B\(9) & !\inst|alu1|unidad_aritmetica|divi|LessThan7~17_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add6~33_combout\,
	datab => \inst|REG_B\(9),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan7~17_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan7~19_cout\);

-- Location: LCCOMB_X14_Y17_N22
\inst|alu1|unidad_aritmetica|divi|LessThan7~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan7~21_cout\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add6~32_combout\ & (\inst|REG_B\(10) & !\inst|alu1|unidad_aritmetica|divi|LessThan7~19_cout\)) # (!\inst|alu1|unidad_aritmetica|divi|Add6~32_combout\ & 
-- ((\inst|REG_B\(10)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan7~19_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add6~32_combout\,
	datab => \inst|REG_B\(10),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan7~19_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan7~21_cout\);

-- Location: LCCOMB_X14_Y17_N24
\inst|alu1|unidad_aritmetica|divi|LessThan7~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan7~23_cout\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add6~31_combout\ & ((!\inst|alu1|unidad_aritmetica|divi|LessThan7~21_cout\) # (!\inst|REG_B\(11)))) # (!\inst|alu1|unidad_aritmetica|divi|Add6~31_combout\ & 
-- (!\inst|REG_B\(11) & !\inst|alu1|unidad_aritmetica|divi|LessThan7~21_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add6~31_combout\,
	datab => \inst|REG_B\(11),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan7~21_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan7~23_cout\);

-- Location: LCCOMB_X14_Y17_N26
\inst|alu1|unidad_aritmetica|divi|LessThan7~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan7~25_cout\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add6~30_combout\ & (\inst|REG_B\(12) & !\inst|alu1|unidad_aritmetica|divi|LessThan7~23_cout\)) # (!\inst|alu1|unidad_aritmetica|divi|Add6~30_combout\ & 
-- ((\inst|REG_B\(12)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan7~23_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add6~30_combout\,
	datab => \inst|REG_B\(12),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan7~23_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan7~25_cout\);

-- Location: LCCOMB_X14_Y17_N28
\inst|alu1|unidad_aritmetica|divi|LessThan7~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan7~27_cout\ = CARRY((\inst|REG_B\(13) & (\inst|alu1|unidad_aritmetica|divi|Add6~29_combout\ & !\inst|alu1|unidad_aritmetica|divi|LessThan7~25_cout\)) # (!\inst|REG_B\(13) & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add6~29_combout\) # (!\inst|alu1|unidad_aritmetica|divi|LessThan7~25_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(13),
	datab => \inst|alu1|unidad_aritmetica|divi|Add6~29_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan7~25_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan7~27_cout\);

-- Location: LCCOMB_X14_Y17_N30
\inst|alu1|unidad_aritmetica|divi|LessThan7~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan7~28_combout\ = (\inst|REG_B\(14) & ((!\inst|alu1|unidad_aritmetica|divi|Add6~28_combout\) # (!\inst|alu1|unidad_aritmetica|divi|LessThan7~27_cout\))) # (!\inst|REG_B\(14) & 
-- (!\inst|alu1|unidad_aritmetica|divi|LessThan7~27_cout\ & !\inst|alu1|unidad_aritmetica|divi|Add6~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|REG_B\(14),
	datad => \inst|alu1|unidad_aritmetica|divi|Add6~28_combout\,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan7~27_cout\,
	combout => \inst|alu1|unidad_aritmetica|divi|LessThan7~28_combout\);

-- Location: LCCOMB_X19_Y16_N26
\inst|alu1|Mux15~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux15~3_combout\ = (\inst|OP\(3) & (\inst|OP\(0) & (!\inst|OP\(2) & \inst|OP\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|OP\(3),
	datab => \inst|OP\(0),
	datac => \inst|OP\(2),
	datad => \inst|OP\(1),
	combout => \inst|alu1|Mux15~3_combout\);

-- Location: LCCOMB_X21_Y15_N4
\inst|alu1|comparador|comparaP:1:comp|lout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|comparador|comparaP:1:comp|lout~0_combout\ = (\inst|REG_B\(1) & (((!\inst|REG_A\(0) & \inst|REG_B\(0))) # (!\inst|REG_A\(1)))) # (!\inst|REG_B\(1) & (!\inst|REG_A\(0) & (\inst|REG_B\(0) & !\inst|REG_A\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(0),
	datab => \inst|REG_B\(0),
	datac => \inst|REG_B\(1),
	datad => \inst|REG_A\(1),
	combout => \inst|alu1|comparador|comparaP:1:comp|lout~0_combout\);

-- Location: LCCOMB_X21_Y15_N6
\inst|alu1|comparador|comparaP:2:comp|lout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|comparador|comparaP:2:comp|lout~0_combout\ = (\inst|alu1|comparador|comparaP:1:comp|lout~0_combout\ & ((\inst|REG_B\(2)) # (!\inst|REG_A\(2)))) # (!\inst|alu1|comparador|comparaP:1:comp|lout~0_combout\ & (\inst|REG_B\(2) & !\inst|REG_A\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|comparador|comparaP:1:comp|lout~0_combout\,
	datac => \inst|REG_B\(2),
	datad => \inst|REG_A\(2),
	combout => \inst|alu1|comparador|comparaP:2:comp|lout~0_combout\);

-- Location: LCCOMB_X21_Y16_N10
\inst|alu1|comparador|comparaP:3:comp|lout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|comparador|comparaP:3:comp|lout~0_combout\ = (\inst|REG_A\(3) & (\inst|REG_B\(3) & \inst|alu1|comparador|comparaP:2:comp|lout~0_combout\)) # (!\inst|REG_A\(3) & ((\inst|REG_B\(3)) # (\inst|alu1|comparador|comparaP:2:comp|lout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|REG_A\(3),
	datac => \inst|REG_B\(3),
	datad => \inst|alu1|comparador|comparaP:2:comp|lout~0_combout\,
	combout => \inst|alu1|comparador|comparaP:3:comp|lout~0_combout\);

-- Location: LCCOMB_X21_Y16_N8
\inst|alu1|comparador|comparaP:4:comp|lout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|comparador|comparaP:4:comp|lout~0_combout\ = (\inst|REG_A\(4) & (\inst|REG_B\(4) & \inst|alu1|comparador|comparaP:3:comp|lout~0_combout\)) # (!\inst|REG_A\(4) & ((\inst|REG_B\(4)) # (\inst|alu1|comparador|comparaP:3:comp|lout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(4),
	datac => \inst|REG_B\(4),
	datad => \inst|alu1|comparador|comparaP:3:comp|lout~0_combout\,
	combout => \inst|alu1|comparador|comparaP:4:comp|lout~0_combout\);

-- Location: LCCOMB_X21_Y16_N30
\inst|alu1|comparador|comparaP:5:comp|lout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|comparador|comparaP:5:comp|lout~0_combout\ = (\inst|REG_B\(5) & ((\inst|alu1|comparador|comparaP:4:comp|lout~0_combout\) # (!\inst|REG_A\(5)))) # (!\inst|REG_B\(5) & (\inst|alu1|comparador|comparaP:4:comp|lout~0_combout\ & !\inst|REG_A\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(5),
	datac => \inst|alu1|comparador|comparaP:4:comp|lout~0_combout\,
	datad => \inst|REG_A\(5),
	combout => \inst|alu1|comparador|comparaP:5:comp|lout~0_combout\);

-- Location: LCCOMB_X21_Y16_N0
\inst|alu1|comparador|comparaP:6:comp|lout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|comparador|comparaP:6:comp|lout~0_combout\ = (\inst|alu1|comparador|comparaP:5:comp|lout~0_combout\ & ((\inst|REG_B\(6)) # (!\inst|REG_A\(6)))) # (!\inst|alu1|comparador|comparaP:5:comp|lout~0_combout\ & (\inst|REG_B\(6) & !\inst|REG_A\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|comparador|comparaP:5:comp|lout~0_combout\,
	datab => \inst|REG_B\(6),
	datad => \inst|REG_A\(6),
	combout => \inst|alu1|comparador|comparaP:6:comp|lout~0_combout\);

-- Location: LCCOMB_X21_Y16_N6
\inst|alu1|comparador|comparaP:7:comp|lout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|comparador|comparaP:7:comp|lout~0_combout\ = (\inst|REG_A\(7) & (\inst|REG_B\(7) & \inst|alu1|comparador|comparaP:6:comp|lout~0_combout\)) # (!\inst|REG_A\(7) & ((\inst|REG_B\(7)) # (\inst|alu1|comparador|comparaP:6:comp|lout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|REG_A\(7),
	datac => \inst|REG_B\(7),
	datad => \inst|alu1|comparador|comparaP:6:comp|lout~0_combout\,
	combout => \inst|alu1|comparador|comparaP:7:comp|lout~0_combout\);

-- Location: LCCOMB_X21_Y16_N24
\inst|alu1|comparador|comparaP:8:comp|lout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|comparador|comparaP:8:comp|lout~0_combout\ = (\inst|REG_A\(8) & (\inst|REG_B\(8) & \inst|alu1|comparador|comparaP:7:comp|lout~0_combout\)) # (!\inst|REG_A\(8) & ((\inst|REG_B\(8)) # (\inst|alu1|comparador|comparaP:7:comp|lout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(8),
	datac => \inst|REG_B\(8),
	datad => \inst|alu1|comparador|comparaP:7:comp|lout~0_combout\,
	combout => \inst|alu1|comparador|comparaP:8:comp|lout~0_combout\);

-- Location: LCCOMB_X21_Y16_N18
\inst|alu1|comparador|comparaP:9:comp|lout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|comparador|comparaP:9:comp|lout~0_combout\ = (\inst|REG_A\(9) & (\inst|REG_B\(9) & \inst|alu1|comparador|comparaP:8:comp|lout~0_combout\)) # (!\inst|REG_A\(9) & ((\inst|REG_B\(9)) # (\inst|alu1|comparador|comparaP:8:comp|lout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(9),
	datac => \inst|REG_B\(9),
	datad => \inst|alu1|comparador|comparaP:8:comp|lout~0_combout\,
	combout => \inst|alu1|comparador|comparaP:9:comp|lout~0_combout\);

-- Location: LCCOMB_X24_Y13_N0
\inst|alu1|comparador|comparaP:10:comp|lout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|comparador|comparaP:10:comp|lout~0_combout\ = (\inst|REG_A\(10) & (\inst|REG_B\(10) & \inst|alu1|comparador|comparaP:9:comp|lout~0_combout\)) # (!\inst|REG_A\(10) & ((\inst|REG_B\(10)) # (\inst|alu1|comparador|comparaP:9:comp|lout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(10),
	datac => \inst|REG_B\(10),
	datad => \inst|alu1|comparador|comparaP:9:comp|lout~0_combout\,
	combout => \inst|alu1|comparador|comparaP:10:comp|lout~0_combout\);

-- Location: LCCOMB_X24_Y13_N2
\inst|alu1|comparador|comparaP:11:comp|lout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|comparador|comparaP:11:comp|lout~0_combout\ = (\inst|REG_A\(11) & (\inst|alu1|comparador|comparaP:10:comp|lout~0_combout\ & \inst|REG_B\(11))) # (!\inst|REG_A\(11) & ((\inst|alu1|comparador|comparaP:10:comp|lout~0_combout\) # 
-- (\inst|REG_B\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(11),
	datab => \inst|alu1|comparador|comparaP:10:comp|lout~0_combout\,
	datad => \inst|REG_B\(11),
	combout => \inst|alu1|comparador|comparaP:11:comp|lout~0_combout\);

-- Location: LCCOMB_X23_Y13_N2
\inst|alu1|comparador|comparaP:12:comp|lout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|comparador|comparaP:12:comp|lout~0_combout\ = (\inst|REG_B\(12) & ((\inst|alu1|comparador|comparaP:11:comp|lout~0_combout\) # (!\inst|REG_A\(12)))) # (!\inst|REG_B\(12) & (!\inst|REG_A\(12) & 
-- \inst|alu1|comparador|comparaP:11:comp|lout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|REG_B\(12),
	datac => \inst|REG_A\(12),
	datad => \inst|alu1|comparador|comparaP:11:comp|lout~0_combout\,
	combout => \inst|alu1|comparador|comparaP:12:comp|lout~0_combout\);

-- Location: LCCOMB_X23_Y13_N8
\inst|alu1|comparador|comparaP:13:comp|lout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|comparador|comparaP:13:comp|lout~0_combout\ = (\inst|REG_A\(13) & (\inst|REG_B\(13) & \inst|alu1|comparador|comparaP:12:comp|lout~0_combout\)) # (!\inst|REG_A\(13) & ((\inst|REG_B\(13)) # 
-- (\inst|alu1|comparador|comparaP:12:comp|lout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|REG_A\(13),
	datac => \inst|REG_B\(13),
	datad => \inst|alu1|comparador|comparaP:12:comp|lout~0_combout\,
	combout => \inst|alu1|comparador|comparaP:13:comp|lout~0_combout\);

-- Location: LCCOMB_X22_Y13_N2
\inst|alu1|comparador|comparaP:14:comp|lout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|comparador|comparaP:14:comp|lout~0_combout\ = (\inst|REG_A\(14) & (\inst|alu1|comparador|comparaP:13:comp|lout~0_combout\ & \inst|REG_B\(14))) # (!\inst|REG_A\(14) & ((\inst|alu1|comparador|comparaP:13:comp|lout~0_combout\) # 
-- (\inst|REG_B\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|REG_A\(14),
	datac => \inst|alu1|comparador|comparaP:13:comp|lout~0_combout\,
	datad => \inst|REG_B\(14),
	combout => \inst|alu1|comparador|comparaP:14:comp|lout~0_combout\);

-- Location: LCCOMB_X19_Y16_N24
\inst|alu1|Mux15~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux15~4_combout\ = (\inst|alu1|Mux15~3_combout\ & ((\inst|REG_B\(15) & ((\inst|alu1|comparador|comparaP:14:comp|lout~0_combout\) # (!\inst|REG_A\(15)))) # (!\inst|REG_B\(15) & (!\inst|REG_A\(15) & 
-- \inst|alu1|comparador|comparaP:14:comp|lout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(15),
	datab => \inst|REG_A\(15),
	datac => \inst|alu1|Mux15~3_combout\,
	datad => \inst|alu1|comparador|comparaP:14:comp|lout~0_combout\,
	combout => \inst|alu1|Mux15~4_combout\);

-- Location: LCCOMB_X14_Y17_N0
\inst|alu1|Mux15~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux15~14_combout\ = (\inst|alu1|Mux15~13_combout\) # ((\inst|alu1|Mux15~4_combout\) # ((\inst|alu1|Mux15~10_combout\ & !\inst|alu1|unidad_aritmetica|divi|LessThan7~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux15~13_combout\,
	datab => \inst|alu1|Mux15~10_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|LessThan7~28_combout\,
	datad => \inst|alu1|Mux15~4_combout\,
	combout => \inst|alu1|Mux15~14_combout\);

-- Location: LCCOMB_X18_Y17_N12
\inst|cat~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|cat~9_combout\ = (\inst|pr_state.state3~q\ & (((\inst|mov\(0))))) # (!\inst|pr_state.state3~q\ & ((\inst|enable~q\ & (\inst|REG_D\(0))) # (!\inst|enable~q\ & ((\inst|mov\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_D\(0),
	datab => \inst|pr_state.state3~q\,
	datac => \inst|mov\(0),
	datad => \inst|enable~q\,
	combout => \inst|cat~9_combout\);

-- Location: FF_X18_Y17_N13
\inst|cat[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|cat~9_combout\,
	ena => \inst|cat[0][8]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cat[0][0]~q\);

-- Location: LCCOMB_X17_Y17_N12
\inst|REG_D~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|REG_D~11_combout\ = (!\inst|MAR\(1) & ((\inst|MAR\(0)) # (\inst|cat[0][0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|MAR\(1),
	datac => \inst|MAR\(0),
	datad => \inst|cat[0][0]~q\,
	combout => \inst|REG_D~11_combout\);

-- Location: LCCOMB_X17_Y17_N10
\inst|REG_D~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|REG_D~12_combout\ = (!\inst|Equal2~0_combout\ & ((\inst|REG_D~11_combout\) # ((\inst|MAR\(0) & \inst|reggy~173_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MAR\(0),
	datab => \inst|Equal2~0_combout\,
	datac => \inst|reggy~173_combout\,
	datad => \inst|REG_D~11_combout\,
	combout => \inst|REG_D~12_combout\);

-- Location: FF_X17_Y17_N11
\inst|REG_D[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|REG_D~12_combout\,
	ena => \inst|REG_D[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|REG_D\(0));

-- Location: LCCOMB_X13_Y17_N18
\inst|reggy~245\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~245_combout\ = (!\inst|OP[3]~2_combout\ & ((\inst|OP[3]~1_combout\ & ((\inst|mov\(0)))) # (!\inst|OP[3]~1_combout\ & (\inst|REG_D\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_D\(0),
	datab => \inst|OP[3]~1_combout\,
	datac => \inst|mov\(0),
	datad => \inst|OP[3]~2_combout\,
	combout => \inst|reggy~245_combout\);

-- Location: LCCOMB_X13_Y17_N10
\inst|reggy~246\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~246_combout\ = (\inst|reggy~245_combout\) # ((\inst|OP[3]~2_combout\ & \inst|alu1|Mux15~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|OP[3]~2_combout\,
	datac => \inst|alu1|Mux15~14_combout\,
	datad => \inst|reggy~245_combout\,
	combout => \inst|reggy~246_combout\);

-- Location: FF_X13_Y17_N1
\inst|reggy~36\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~246_combout\,
	sload => VCC,
	ena => \inst|reggy~181_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy~36_q\);

-- Location: LCCOMB_X12_Y17_N12
\inst|reggy~172\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~172_combout\ = (\inst|reggy~154_combout\ & (((\inst|reggy~155_combout\)))) # (!\inst|reggy~154_combout\ & ((\inst|reggy~155_combout\ & (\inst|reggy~36_q\)) # (!\inst|reggy~155_combout\ & ((\inst|reggy~20_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy~154_combout\,
	datab => \inst|reggy~36_q\,
	datac => \inst|reggy~20_q\,
	datad => \inst|reggy~155_combout\,
	combout => \inst|reggy~172_combout\);

-- Location: LCCOMB_X12_Y17_N26
\inst|reggy~173\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~173_combout\ = (\inst|reggy~172_combout\ & ((\inst|reggy~68_q\) # ((!\inst|reggy~154_combout\)))) # (!\inst|reggy~172_combout\ & (((\inst|reggy~52_q\ & \inst|reggy~154_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy~172_combout\,
	datab => \inst|reggy~68_q\,
	datac => \inst|reggy~52_q\,
	datad => \inst|reggy~154_combout\,
	combout => \inst|reggy~173_combout\);

-- Location: FF_X18_Y15_N29
\inst|REG_A[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~173_combout\,
	sload => VCC,
	ena => \inst|OP[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|REG_A\(0));

-- Location: LCCOMB_X23_Y14_N0
\inst|alu1|unidad_logica|aux[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|aux[0]~1_cout\ = CARRY(!\inst|REG_A\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(0),
	datad => VCC,
	cout => \inst|alu1|unidad_logica|aux[0]~1_cout\);

-- Location: LCCOMB_X19_Y16_N28
\inst|alu1|unidad_logica|Mux14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|Mux14~1_combout\ = (\inst|alu1|unidad_logica|Mux14~0_combout\ & (((\inst|alu1|unidad_logica|aux[1]~2_combout\)) # (!\inst|alu1|Mux16~0_combout\))) # (!\inst|alu1|unidad_logica|Mux14~0_combout\ & (\inst|alu1|Mux16~0_combout\ & 
-- (!\inst|REG_A\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_logica|Mux14~0_combout\,
	datab => \inst|alu1|Mux16~0_combout\,
	datac => \inst|REG_A\(1),
	datad => \inst|alu1|unidad_logica|aux[1]~2_combout\,
	combout => \inst|alu1|unidad_logica|Mux14~1_combout\);

-- Location: LCCOMB_X19_Y16_N8
\inst|alu1|Mux14~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux14~2_combout\ = (!\inst|alu1|comparador|comparaP:14:comp|lout~0_combout\ & (!\inst|alu1|unidad_aritmetica|suma|Sfaux~0_combout\ & (!\inst|alu1|comparador|comparaP:14:comp|gout~0_combout\ & \inst|alu1|Mux7~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|comparador|comparaP:14:comp|lout~0_combout\,
	datab => \inst|alu1|unidad_aritmetica|suma|Sfaux~0_combout\,
	datac => \inst|alu1|comparador|comparaP:14:comp|gout~0_combout\,
	datad => \inst|alu1|Mux7~1_combout\,
	combout => \inst|alu1|Mux14~2_combout\);

-- Location: LCCOMB_X24_Y15_N20
\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Sc[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Sc[1]~1_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi7|sR:14:sP|Cout~0_combout\ & (\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~2_combout\)) # 
-- (!\inst|alu1|unidad_aritmetica|mult|multi7|sR:14:sP|Cout~0_combout\ & ((\inst|alu1|unidad_aritmetica|mult|inter\(1) $ (\inst|alu1|unidad_aritmetica|mult|inter\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~2_combout\,
	datab => \inst|alu1|unidad_aritmetica|mult|inter\(1),
	datac => \inst|alu1|unidad_aritmetica|mult|multi7|sR:14:sP|Cout~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|mult|inter\(8),
	combout => \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Sc[1]~1_combout\);

-- Location: LCCOMB_X22_Y15_N22
\inst|alu1|unidad_aritmetica|resta|negativo|Sc[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|resta|negativo|Sc[1]~1_combout\ = (\inst|alu1|unidad_aritmetica|resta|negativo|Add0~2_combout\ & ((\inst|alu1|unidad_aritmetica|resta|sR:14:sP|Cout~0_combout\ $ (!\inst|alu1|unidad_aritmetica|suma|Sfaux~0_combout\)) # 
-- (!\inst|alu1|unidad_aritmetica|resta|sR:1:sP|Suma~0_combout\))) # (!\inst|alu1|unidad_aritmetica|resta|negativo|Add0~2_combout\ & (!\inst|alu1|unidad_aritmetica|resta|sR:1:sP|Suma~0_combout\ & (\inst|alu1|unidad_aritmetica|resta|sR:14:sP|Cout~0_combout\ $ 
-- (\inst|alu1|unidad_aritmetica|suma|Sfaux~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101100101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|resta|negativo|Add0~2_combout\,
	datab => \inst|alu1|unidad_aritmetica|resta|sR:14:sP|Cout~0_combout\,
	datac => \inst|alu1|unidad_aritmetica|resta|sR:1:sP|Suma~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|suma|Sfaux~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|resta|negativo|Sc[1]~1_combout\);

-- Location: LCCOMB_X18_Y15_N16
\inst|alu1|unidad_aritmetica|suma|negativo|Sc[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|negativo|Sc[1]~1_combout\ = (\inst|alu1|unidad_aritmetica|suma|Sfaux~1_combout\ & ((\inst|alu1|unidad_aritmetica|suma|negativo|Add0~2_combout\))) # (!\inst|alu1|unidad_aritmetica|suma|Sfaux~1_combout\ & 
-- (\inst|alu1|unidad_aritmetica|suma|sR:1:sP|Suma~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|suma|sR:1:sP|Suma~0_combout\,
	datac => \inst|alu1|unidad_aritmetica|suma|Sfaux~1_combout\,
	datad => \inst|alu1|unidad_aritmetica|suma|negativo|Add0~2_combout\,
	combout => \inst|alu1|unidad_aritmetica|suma|negativo|Sc[1]~1_combout\);

-- Location: LCCOMB_X14_Y15_N20
\inst|alu1|unidad_aritmetica|Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|Mux14~0_combout\ = (\inst|alu1|Mux17~0_combout\ & ((\inst|alu1|unidad_aritmetica|resta|negativo|Sc[1]~1_combout\) # ((\inst|alu1|Mux16~0_combout\)))) # (!\inst|alu1|Mux17~0_combout\ & (((!\inst|alu1|Mux16~0_combout\ & 
-- \inst|alu1|unidad_aritmetica|suma|negativo|Sc[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux17~0_combout\,
	datab => \inst|alu1|unidad_aritmetica|resta|negativo|Sc[1]~1_combout\,
	datac => \inst|alu1|Mux16~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|suma|negativo|Sc[1]~1_combout\,
	combout => \inst|alu1|unidad_aritmetica|Mux14~0_combout\);

-- Location: LCCOMB_X12_Y16_N6
\inst|alu1|unidad_aritmetica|Mux14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|Mux14~1_combout\ = (\inst|alu1|Mux16~0_combout\ & ((\inst|alu1|unidad_aritmetica|Mux14~0_combout\ & ((!\inst|alu1|unidad_aritmetica|divi|LessThan6~28_combout\))) # (!\inst|alu1|unidad_aritmetica|Mux14~0_combout\ & 
-- (\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Sc[1]~1_combout\)))) # (!\inst|alu1|Mux16~0_combout\ & (((\inst|alu1|unidad_aritmetica|Mux14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Sc[1]~1_combout\,
	datab => \inst|alu1|Mux16~0_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|LessThan6~28_combout\,
	datad => \inst|alu1|unidad_aritmetica|Mux14~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|Mux14~1_combout\);

-- Location: LCCOMB_X12_Y16_N4
\inst|alu1|Mux14~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux14~3_combout\ = (\inst|alu1|Mux15~2_combout\ & ((\inst|alu1|Mux14~2_combout\) # ((!\inst|alu1|Mux7~1_combout\ & \inst|alu1|unidad_aritmetica|Mux14~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux7~1_combout\,
	datab => \inst|alu1|Mux15~2_combout\,
	datac => \inst|alu1|Mux14~2_combout\,
	datad => \inst|alu1|unidad_aritmetica|Mux14~1_combout\,
	combout => \inst|alu1|Mux14~3_combout\);

-- Location: LCCOMB_X12_Y16_N26
\inst|alu1|Mux14~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux14~7_combout\ = (!\inst|OP\(0) & (\inst|alu1|unidad_logica|Mux14~1_combout\ & !\inst|OP\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|OP\(0),
	datac => \inst|alu1|unidad_logica|Mux14~1_combout\,
	datad => \inst|OP\(1),
	combout => \inst|alu1|Mux14~7_combout\);

-- Location: LCCOMB_X12_Y16_N18
\inst|alu1|Mux14~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux14~4_combout\ = (\inst|OP\(1) & ((\inst|OP\(0) & ((\inst|alu1|unidad_aritmetica|Mux14~1_combout\))) # (!\inst|OP\(0) & (\inst|REG_A\(2))))) # (!\inst|OP\(1) & (\inst|REG_A\(2) & (\inst|OP\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(2),
	datab => \inst|OP\(1),
	datac => \inst|OP\(0),
	datad => \inst|alu1|unidad_aritmetica|Mux14~1_combout\,
	combout => \inst|alu1|Mux14~4_combout\);

-- Location: LCCOMB_X12_Y16_N24
\inst|alu1|Mux14~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux14~5_combout\ = (\inst|OP\(2) & ((\inst|alu1|Mux14~7_combout\) # ((\inst|OP\(3)) # (\inst|alu1|Mux14~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux14~7_combout\,
	datab => \inst|OP\(2),
	datac => \inst|OP\(3),
	datad => \inst|alu1|Mux14~4_combout\,
	combout => \inst|alu1|Mux14~5_combout\);

-- Location: LCCOMB_X12_Y16_N22
\inst|alu1|Mux14~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux14~6_combout\ = (\inst|alu1|Mux14~3_combout\) # ((\inst|alu1|Mux14~5_combout\) # ((\inst|alu1|unidad_logica|Mux14~1_combout\ & \inst|alu1|Mux13~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_logica|Mux14~1_combout\,
	datab => \inst|alu1|Mux13~6_combout\,
	datac => \inst|alu1|Mux14~3_combout\,
	datad => \inst|alu1|Mux14~5_combout\,
	combout => \inst|alu1|Mux14~6_combout\);

-- Location: LCCOMB_X17_Y13_N8
\inst|reggu[0][0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggu[0][0]~2_combout\ = (\inst|MAR\(9) & (\inst|MAR\(11) & (!\inst|MAR\(10) & \inst|MAR\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MAR\(9),
	datab => \inst|MAR\(11),
	datac => \inst|MAR\(10),
	datad => \inst|MAR\(8),
	combout => \inst|reggu[0][0]~2_combout\);

-- Location: LCCOMB_X17_Y13_N22
\inst|reggu[0][0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggu[0][0]~3_combout\ = (\inst|pr_state.state2~q\ & (\inst|reggu[0][0]~2_combout\ & (\rst~input_o\ & \inst|enable~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pr_state.state2~q\,
	datab => \inst|reggu[0][0]~2_combout\,
	datac => \rst~input_o\,
	datad => \inst|enable~q\,
	combout => \inst|reggu[0][0]~3_combout\);

-- Location: FF_X12_Y16_N23
\inst|reggu[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|alu1|Mux14~6_combout\,
	ena => \inst|reggu[0][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggu[0][1]~q\);

-- Location: FF_X14_Y17_N1
\inst|reggu[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|alu1|Mux15~14_combout\,
	ena => \inst|reggu[0][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggu[0][0]~q\);

-- Location: LCCOMB_X16_Y13_N6
\inst|OFFSET[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|OFFSET[0]~0_combout\ = (\inst|MAR\(0) & (((!\inst|reggu[0][0]~q\)))) # (!\inst|MAR\(0) & (!\inst|reggu[0][1]~q\ & (\inst|MAR\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggu[0][1]~q\,
	datab => \inst|MAR\(0),
	datac => \inst|MAR\(1),
	datad => \inst|reggu[0][0]~q\,
	combout => \inst|OFFSET[0]~0_combout\);

-- Location: LCCOMB_X16_Y11_N20
\inst|Selector30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector30~0_combout\ = (\inst|OFFSET[0]~0_combout\ & (\inst|PC\(2) & !\inst|pr_state.state2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|OFFSET[0]~0_combout\,
	datac => \inst|PC\(2),
	datad => \inst|pr_state.state2~q\,
	combout => \inst|Selector30~0_combout\);

-- Location: FF_X16_Y11_N21
\inst|OFFSET[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Selector30~0_combout\,
	ena => \inst|OFFSET[13]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|OFFSET\(2));

-- Location: FF_X17_Y11_N9
\inst|PC[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|PC[2]~19_combout\,
	asdata => \inst|OFFSET\(2),
	clrn => \rst~inputclkctrl_outclk\,
	sclr => \inst|pr_state.state3~q\,
	sload => \inst|pr_state.state2~q\,
	ena => \inst|PC[13]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC\(2));

-- Location: LCCOMB_X16_Y11_N2
\inst|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux4~0_combout\ = (\inst|PC\(3) & ((\inst|PC\(1) & (!\inst|PC\(2) & \inst|PC\(0))) # (!\inst|PC\(1) & (\inst|PC\(2) & !\inst|PC\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC\(1),
	datab => \inst|PC\(2),
	datac => \inst|PC\(3),
	datad => \inst|PC\(0),
	combout => \inst|Mux4~0_combout\);

-- Location: FF_X16_Y11_N3
\inst|MAR[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Mux4~0_combout\,
	ena => \inst|MAR[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MAR\(5));

-- Location: LCCOMB_X16_Y11_N0
\inst|Selector32~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector32~0_combout\ = (\inst|OFFSET[0]~0_combout\ & (((\inst|PC\(0))))) # (!\inst|OFFSET[0]~0_combout\ & (!\inst|MAR\(5) & (!\inst|MAR\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MAR\(5),
	datab => \inst|MAR\(4),
	datac => \inst|OFFSET[0]~0_combout\,
	datad => \inst|PC\(0),
	combout => \inst|Selector32~0_combout\);

-- Location: FF_X16_Y11_N1
\inst|OFFSET[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Selector32~0_combout\,
	sclr => \inst|pr_state.state2~q\,
	ena => \inst|OFFSET[13]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|OFFSET\(0));

-- Location: FF_X17_Y11_N5
\inst|PC[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|PC[0]~14_combout\,
	asdata => \inst|OFFSET\(0),
	clrn => \rst~inputclkctrl_outclk\,
	sclr => \inst|pr_state.state3~q\,
	sload => \inst|pr_state.state2~q\,
	ena => \inst|PC[13]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC\(0));

-- Location: LCCOMB_X16_Y11_N6
\inst|Selector31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector31~0_combout\ = (\inst|OFFSET[0]~0_combout\ & (((\inst|PC\(1))))) # (!\inst|OFFSET[0]~0_combout\ & (!\inst|MAR\(5) & (!\inst|MAR\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MAR\(5),
	datab => \inst|MAR\(4),
	datac => \inst|OFFSET[0]~0_combout\,
	datad => \inst|PC\(1),
	combout => \inst|Selector31~0_combout\);

-- Location: FF_X16_Y11_N7
\inst|OFFSET[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Selector31~0_combout\,
	sclr => \inst|pr_state.state2~q\,
	ena => \inst|OFFSET[13]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|OFFSET\(1));

-- Location: FF_X17_Y11_N7
\inst|PC[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|PC[1]~17_combout\,
	asdata => \inst|OFFSET\(1),
	clrn => \rst~inputclkctrl_outclk\,
	sclr => \inst|pr_state.state3~q\,
	sload => \inst|pr_state.state2~q\,
	ena => \inst|PC[13]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC\(1));

-- Location: LCCOMB_X16_Y11_N30
\inst|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux2~0_combout\ = (\inst|PC\(3) & ((\inst|PC\(1) $ (!\inst|PC\(2))) # (!\inst|PC\(0)))) # (!\inst|PC\(3) & (\inst|PC\(1) $ (((\inst|PC\(2) & !\inst|PC\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101011110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC\(1),
	datab => \inst|PC\(2),
	datac => \inst|PC\(3),
	datad => \inst|PC\(0),
	combout => \inst|Mux2~0_combout\);

-- Location: FF_X16_Y11_N31
\inst|MAR[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Mux2~0_combout\,
	ena => \inst|MAR[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MAR\(9));

-- Location: LCCOMB_X17_Y13_N20
\inst|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal1~0_combout\ = (\inst|MAR\(9) & (\inst|MAR\(11) & (\inst|MAR\(10) & \inst|MAR\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MAR\(9),
	datab => \inst|MAR\(11),
	datac => \inst|MAR\(10),
	datad => \inst|MAR\(8),
	combout => \inst|Equal1~0_combout\);

-- Location: LCCOMB_X17_Y12_N16
\inst|pr_state~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|pr_state~8_combout\ = (\inst|Equal1~0_combout\ & \inst|pr_state.state2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Equal1~0_combout\,
	datac => \inst|pr_state.state2~q\,
	combout => \inst|pr_state~8_combout\);

-- Location: FF_X17_Y12_N17
\inst|pr_state.state3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|pr_state~8_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \inst|enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|pr_state.state3~q\);

-- Location: LCCOMB_X18_Y12_N16
\inst|enable~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|enable~0_combout\ = (\inst|enable~q\ & (!\inst|pr_state.state3~q\)) # (!\inst|enable~q\ & ((!\inst|process_0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pr_state.state3~q\,
	datac => \inst|enable~q\,
	datad => \inst|process_0~1_combout\,
	combout => \inst|enable~0_combout\);

-- Location: FF_X18_Y12_N17
\inst|enable\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|enable~0_combout\,
	ena => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|enable~q\);

-- Location: LCCOMB_X18_Y17_N20
\inst|cat~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|cat~0_combout\ = (\inst|enable~q\ & ((\inst|pr_state.state3~q\ & (\inst|mov\(8))) # (!\inst|pr_state.state3~q\ & ((\inst|REG_D\(8)))))) # (!\inst|enable~q\ & (\inst|mov\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|enable~q\,
	datab => \inst|mov\(8),
	datac => \inst|pr_state.state3~q\,
	datad => \inst|REG_D\(8),
	combout => \inst|cat~0_combout\);

-- Location: FF_X18_Y17_N21
\inst|cat[0][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|cat~0_combout\,
	ena => \inst|cat[0][8]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cat[0][8]~q\);

-- Location: IOIBUF_X34_Y2_N15
\put~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_put,
	o => \put~input_o\);

ww_A(11) <= \A[11]~output_o\;

ww_A(10) <= \A[10]~output_o\;

ww_A(9) <= \A[9]~output_o\;

ww_A(8) <= \A[8]~output_o\;

ww_A(7) <= \A[7]~output_o\;

ww_A(6) <= \A[6]~output_o\;

ww_A(5) <= \A[5]~output_o\;

ww_A(4) <= \A[4]~output_o\;

ww_A(3) <= \A[3]~output_o\;

ww_A(2) <= \A[2]~output_o\;

ww_A(1) <= \A[1]~output_o\;

ww_A(0) <= \A[0]~output_o\;

ww_B(11) <= \B[11]~output_o\;

ww_B(10) <= \B[10]~output_o\;

ww_B(9) <= \B[9]~output_o\;

ww_B(8) <= \B[8]~output_o\;

ww_B(7) <= \B[7]~output_o\;

ww_B(6) <= \B[6]~output_o\;

ww_B(5) <= \B[5]~output_o\;

ww_B(4) <= \B[4]~output_o\;

ww_B(3) <= \B[3]~output_o\;

ww_B(2) <= \B[2]~output_o\;

ww_B(1) <= \B[1]~output_o\;

ww_B(0) <= \B[0]~output_o\;

ww_instrucciones(11) <= \instrucciones[11]~output_o\;

ww_instrucciones(10) <= \instrucciones[10]~output_o\;

ww_instrucciones(9) <= \instrucciones[9]~output_o\;

ww_instrucciones(8) <= \instrucciones[8]~output_o\;

ww_instrucciones(7) <= \instrucciones[7]~output_o\;

ww_instrucciones(6) <= \instrucciones[6]~output_o\;

ww_instrucciones(5) <= \instrucciones[5]~output_o\;

ww_instrucciones(4) <= \instrucciones[4]~output_o\;

ww_instrucciones(3) <= \instrucciones[3]~output_o\;

ww_instrucciones(2) <= \instrucciones[2]~output_o\;

ww_instrucciones(1) <= \instrucciones[1]~output_o\;

ww_instrucciones(0) <= \instrucciones[0]~output_o\;

ww_mov(8) <= \mov[8]~output_o\;

ww_mov(7) <= \mov[7]~output_o\;

ww_mov(6) <= \mov[6]~output_o\;

ww_mov(5) <= \mov[5]~output_o\;

ww_mov(4) <= \mov[4]~output_o\;

ww_mov(3) <= \mov[3]~output_o\;

ww_mov(2) <= \mov[2]~output_o\;

ww_mov(1) <= \mov[1]~output_o\;

ww_mov(0) <= \mov[0]~output_o\;

ww_p1(8) <= \p1[8]~output_o\;

ww_p1(7) <= \p1[7]~output_o\;

ww_p1(6) <= \p1[6]~output_o\;

ww_p1(5) <= \p1[5]~output_o\;

ww_p1(4) <= \p1[4]~output_o\;

ww_p1(3) <= \p1[3]~output_o\;

ww_p1(2) <= \p1[2]~output_o\;

ww_p1(1) <= \p1[1]~output_o\;

ww_p1(0) <= \p1[0]~output_o\;

ww_p2(8) <= \p2[8]~output_o\;

ww_p2(7) <= \p2[7]~output_o\;

ww_p2(6) <= \p2[6]~output_o\;

ww_p2(5) <= \p2[5]~output_o\;

ww_p2(4) <= \p2[4]~output_o\;

ww_p2(3) <= \p2[3]~output_o\;

ww_p2(2) <= \p2[2]~output_o\;

ww_p2(1) <= \p2[1]~output_o\;

ww_p2(0) <= \p2[0]~output_o\;
END structure;


