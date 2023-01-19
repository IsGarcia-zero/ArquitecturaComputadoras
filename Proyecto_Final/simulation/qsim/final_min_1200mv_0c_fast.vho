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

-- DATE "01/18/2023 17:34:32"

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
	up : IN std_logic;
	down : IN std_logic;
	izq : IN std_logic;
	der : IN std_logic;
	put : IN std_logic;
	B : OUT std_logic_vector(11 DOWNTO 0);
	instrucciones : OUT std_logic_vector(11 DOWNTO 0);
	mov : OUT std_logic_vector(8 DOWNTO 0);
	p1 : OUT std_logic_vector(8 DOWNTO 0);
	p2 : OUT std_logic_vector(8 DOWNTO 0)
	);
END final;

-- Design Ports Information
-- A[11]	=>  Location: PIN_49,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[10]	=>  Location: PIN_50,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[9]	=>  Location: PIN_77,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[8]	=>  Location: PIN_53,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_60,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_51,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_64,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_75,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_65,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_70,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_66,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_84,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[11]	=>  Location: PIN_44,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[10]	=>  Location: PIN_129,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[9]	=>  Location: PIN_128,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[8]	=>  Location: PIN_58,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_132,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_32,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_135,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_54,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_55,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_76,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_83,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_73,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucciones[11]	=>  Location: PIN_80,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucciones[10]	=>  Location: PIN_85,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucciones[9]	=>  Location: PIN_120,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucciones[8]	=>  Location: PIN_74,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucciones[7]	=>  Location: PIN_68,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucciones[6]	=>  Location: PIN_10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucciones[5]	=>  Location: PIN_144,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucciones[4]	=>  Location: PIN_59,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucciones[3]	=>  Location: PIN_127,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucciones[2]	=>  Location: PIN_126,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucciones[1]	=>  Location: PIN_133,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucciones[0]	=>  Location: PIN_86,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mov[8]	=>  Location: PIN_100,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mov[7]	=>  Location: PIN_99,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mov[6]	=>  Location: PIN_112,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mov[5]	=>  Location: PIN_125,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mov[4]	=>  Location: PIN_98,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mov[3]	=>  Location: PIN_115,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mov[2]	=>  Location: PIN_87,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mov[1]	=>  Location: PIN_105,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mov[0]	=>  Location: PIN_124,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- p1[8]	=>  Location: PIN_2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- p1[7]	=>  Location: PIN_67,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- p1[6]	=>  Location: PIN_46,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- p1[5]	=>  Location: PIN_39,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- p1[4]	=>  Location: PIN_33,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- p1[3]	=>  Location: PIN_143,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- p1[2]	=>  Location: PIN_121,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- p1[1]	=>  Location: PIN_71,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- p1[0]	=>  Location: PIN_119,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- p2[8]	=>  Location: PIN_138,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- p2[7]	=>  Location: PIN_136,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- p2[6]	=>  Location: PIN_3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- p2[5]	=>  Location: PIN_72,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- p2[4]	=>  Location: PIN_31,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- p2[3]	=>  Location: PIN_34,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- p2[2]	=>  Location: PIN_137,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- p2[1]	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- p2[0]	=>  Location: PIN_38,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- izq	=>  Location: PIN_110,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- der	=>  Location: PIN_106,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- up	=>  Location: PIN_103,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- down	=>  Location: PIN_104,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- put	=>  Location: PIN_111,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_up : std_logic;
SIGNAL ww_down : std_logic;
SIGNAL ww_izq : std_logic;
SIGNAL ww_der : std_logic;
SIGNAL ww_put : std_logic;
SIGNAL ww_B : std_logic_vector(11 DOWNTO 0);
SIGNAL ww_instrucciones : std_logic_vector(11 DOWNTO 0);
SIGNAL ww_mov : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_p1 : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_p2 : std_logic_vector(8 DOWNTO 0);
SIGNAL \rst~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
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
SIGNAL \inst|PC[0]~4_combout\ : std_logic;
SIGNAL \inst|Mux4~0_combout\ : std_logic;
SIGNAL \inst|pr_state.state1~0_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \rst~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst1|debouncer1|Add0~0_combout\ : std_logic;
SIGNAL \inst1|debouncer1|cont~1_combout\ : std_logic;
SIGNAL \inst1|debouncer1|Add0~1\ : std_logic;
SIGNAL \inst1|debouncer1|Add0~2_combout\ : std_logic;
SIGNAL \inst1|debouncer1|Add0~3\ : std_logic;
SIGNAL \inst1|debouncer1|Add0~4_combout\ : std_logic;
SIGNAL \inst1|debouncer1|Add0~5\ : std_logic;
SIGNAL \inst1|debouncer1|Add0~6_combout\ : std_logic;
SIGNAL \inst1|debouncer1|cont~0_combout\ : std_logic;
SIGNAL \inst1|debouncer1|Equal0~0_combout\ : std_logic;
SIGNAL \inst1|debouncer1|Add0~7\ : std_logic;
SIGNAL \inst1|debouncer1|Add0~8_combout\ : std_logic;
SIGNAL \inst1|debouncer1|cont~2_combout\ : std_logic;
SIGNAL \inst1|debouncer1|Add0~9\ : std_logic;
SIGNAL \inst1|debouncer1|Add0~10_combout\ : std_logic;
SIGNAL \inst1|debouncer1|cont~3_combout\ : std_logic;
SIGNAL \inst1|debouncer1|Add0~11\ : std_logic;
SIGNAL \inst1|debouncer1|Add0~12_combout\ : std_logic;
SIGNAL \inst1|debouncer1|Add0~13\ : std_logic;
SIGNAL \inst1|debouncer1|Add0~14_combout\ : std_logic;
SIGNAL \inst1|debouncer1|cont~4_combout\ : std_logic;
SIGNAL \inst1|debouncer1|Add0~15\ : std_logic;
SIGNAL \inst1|debouncer1|Add0~16_combout\ : std_logic;
SIGNAL \inst1|debouncer1|cont~5_combout\ : std_logic;
SIGNAL \inst1|debouncer1|Add0~17\ : std_logic;
SIGNAL \inst1|debouncer1|Add0~18_combout\ : std_logic;
SIGNAL \inst1|debouncer1|cont~6_combout\ : std_logic;
SIGNAL \inst1|debouncer1|Add0~19\ : std_logic;
SIGNAL \inst1|debouncer1|Add0~20_combout\ : std_logic;
SIGNAL \inst1|debouncer1|Add0~21\ : std_logic;
SIGNAL \inst1|debouncer1|Add0~22_combout\ : std_logic;
SIGNAL \inst1|debouncer1|cont~7_combout\ : std_logic;
SIGNAL \inst1|debouncer1|Add0~23\ : std_logic;
SIGNAL \inst1|debouncer1|Add0~24_combout\ : std_logic;
SIGNAL \inst1|debouncer1|Equal0~2_combout\ : std_logic;
SIGNAL \inst1|debouncer1|Equal0~1_combout\ : std_logic;
SIGNAL \inst1|debouncer1|Equal0~3_combout\ : std_logic;
SIGNAL \der~input_o\ : std_logic;
SIGNAL \down~input_o\ : std_logic;
SIGNAL \izq~input_o\ : std_logic;
SIGNAL \up~input_o\ : std_logic;
SIGNAL \inst1|debouncer1|enable~0_combout\ : std_logic;
SIGNAL \put~input_o\ : std_logic;
SIGNAL \inst1|debouncer1|enable~1_combout\ : std_logic;
SIGNAL \inst1|debouncer1|enable~q\ : std_logic;
SIGNAL \inst1|debouncer1|s1~0_combout\ : std_logic;
SIGNAL \inst1|debouncer1|s1~q\ : std_logic;
SIGNAL \inst1|debouncer1|s4~0_combout\ : std_logic;
SIGNAL \inst1|debouncer1|s4~q\ : std_logic;
SIGNAL \inst1|debouncer1|s3~0_combout\ : std_logic;
SIGNAL \inst1|debouncer1|s3~q\ : std_logic;
SIGNAL \inst1|player[6]~1_combout\ : std_logic;
SIGNAL \inst1|player[6]~0_combout\ : std_logic;
SIGNAL \inst1|debouncer1|s2~0_combout\ : std_logic;
SIGNAL \inst1|debouncer1|s2~q\ : std_logic;
SIGNAL \inst1|player~8_combout\ : std_logic;
SIGNAL \inst1|player~15_combout\ : std_logic;
SIGNAL \inst1|player~16_combout\ : std_logic;
SIGNAL \inst1|player[6]~4_combout\ : std_logic;
SIGNAL \inst1|player~2_combout\ : std_logic;
SIGNAL \inst1|player~3_combout\ : std_logic;
SIGNAL \inst1|player~17_combout\ : std_logic;
SIGNAL \inst1|player~18_combout\ : std_logic;
SIGNAL \inst1|player~19_combout\ : std_logic;
SIGNAL \inst1|player~20_combout\ : std_logic;
SIGNAL \inst1|player~9_combout\ : std_logic;
SIGNAL \inst1|player~7_combout\ : std_logic;
SIGNAL \inst1|player~10_combout\ : std_logic;
SIGNAL \inst1|player~13_combout\ : std_logic;
SIGNAL \inst1|player~14_combout\ : std_logic;
SIGNAL \inst1|player~11_combout\ : std_logic;
SIGNAL \inst1|player~12_combout\ : std_logic;
SIGNAL \inst1|player~5_combout\ : std_logic;
SIGNAL \inst1|player~6_combout\ : std_logic;
SIGNAL \inst1|player~21_combout\ : std_logic;
SIGNAL \inst1|player~22_combout\ : std_logic;
SIGNAL \inst|cat[0][6]~feeder_combout\ : std_logic;
SIGNAL \inst|cat[0][6]~q\ : std_logic;
SIGNAL \inst|cat[0][7]~feeder_combout\ : std_logic;
SIGNAL \inst|cat[0][7]~q\ : std_logic;
SIGNAL \inst|Equal0~4_combout\ : std_logic;
SIGNAL \inst|cat[0][5]~q\ : std_logic;
SIGNAL \inst|cat[0][4]~feeder_combout\ : std_logic;
SIGNAL \inst|cat[0][4]~q\ : std_logic;
SIGNAL \inst|Equal0~3_combout\ : std_logic;
SIGNAL \inst|cat[0][2]~q\ : std_logic;
SIGNAL \inst|cat[0][3]~feeder_combout\ : std_logic;
SIGNAL \inst|cat[0][3]~q\ : std_logic;
SIGNAL \inst|Equal0~2_combout\ : std_logic;
SIGNAL \inst|cat[0][1]~q\ : std_logic;
SIGNAL \inst|cat[0][0]~1_combout\ : std_logic;
SIGNAL \inst|cat[0][0]~q\ : std_logic;
SIGNAL \inst|Equal0~1_combout\ : std_logic;
SIGNAL \inst|Equal0~5_combout\ : std_logic;
SIGNAL \inst|cat[0][8]~q\ : std_logic;
SIGNAL \inst|Equal0~0_combout\ : std_logic;
SIGNAL \inst|cat[0][8]~0_combout\ : std_logic;
SIGNAL \inst|Mux0~0_combout\ : std_logic;
SIGNAL \inst|Mux2~0_combout\ : std_logic;
SIGNAL \inst|Mux3~0_combout\ : std_logic;
SIGNAL \inst|pr_state~8_combout\ : std_logic;
SIGNAL \inst|pr_state~9_combout\ : std_logic;
SIGNAL \inst|pr_state.state3~q\ : std_logic;
SIGNAL \inst|enable~0_combout\ : std_logic;
SIGNAL \inst|enable~q\ : std_logic;
SIGNAL \inst|pr_state.state1~q\ : std_logic;
SIGNAL \inst|pr_state.state2~q\ : std_logic;
SIGNAL \inst|Selector14~0_combout\ : std_logic;
SIGNAL \inst|pr_state.state0~q\ : std_logic;
SIGNAL \inst|MAR[11]~0_combout\ : std_logic;
SIGNAL \inst|Equal5~0_combout\ : std_logic;
SIGNAL \inst|OP[3]~4_combout\ : std_logic;
SIGNAL \inst|OP[1]~feeder_combout\ : std_logic;
SIGNAL \inst|alu1|Mux16~0_combout\ : std_logic;
SIGNAL \inst|reggy~9_combout\ : std_logic;
SIGNAL \inst|Equal6~0_combout\ : std_logic;
SIGNAL \inst|Equal7~0_combout\ : std_logic;
SIGNAL \inst|reggy[1][11]~5_combout\ : std_logic;
SIGNAL \inst|reggy[0][11]~11_combout\ : std_logic;
SIGNAL \inst|reggy[0][11]~34_combout\ : std_logic;
SIGNAL \inst|reggy[0][0]~q\ : std_logic;
SIGNAL \inst|Mux23~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~26_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~63_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~27_combout\ : std_logic;
SIGNAL \inst|reggy[0][15]~43_combout\ : std_logic;
SIGNAL \inst|reggy[0][15]~42_combout\ : std_logic;
SIGNAL \inst|reggy[0][15]~59_combout\ : std_logic;
SIGNAL \inst|reggy[0][15]~q\ : std_logic;
SIGNAL \inst|Mux8~0_combout\ : std_logic;
SIGNAL \inst|alu1|Mux2~2_combout\ : std_logic;
SIGNAL \inst|reggy[1][11]~12_combout\ : std_logic;
SIGNAL \inst|reggy[1][12]~q\ : std_logic;
SIGNAL \inst|Mux6~0_combout\ : std_logic;
SIGNAL \inst|Mux27~0_combout\ : std_logic;
SIGNAL \inst|Mux5~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|salida_aux~34_combout\ : std_logic;
SIGNAL \inst|alu1|Mux17~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|salida_aux~40_combout\ : std_logic;
SIGNAL \inst|reggy[0][11]~q\ : std_logic;
SIGNAL \inst|Mux28~0_combout\ : std_logic;
SIGNAL \inst|reggy~6_combout\ : std_logic;
SIGNAL \inst|Equal9~0_combout\ : std_logic;
SIGNAL \inst|reggy~10_combout\ : std_logic;
SIGNAL \inst|reggy[1][11]~q\ : std_logic;
SIGNAL \inst|Mux12~0_combout\ : std_logic;
SIGNAL \inst|reggy[1][10]~q\ : std_logic;
SIGNAL \inst|Mux29~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|salida_aux~7_combout\ : std_logic;
SIGNAL \inst|reggy[0][9]~q\ : std_logic;
SIGNAL \inst|Mux30~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|salida_aux~10_combout\ : std_logic;
SIGNAL \inst|reggy[0][8]~q\ : std_logic;
SIGNAL \inst|Mux31~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|salida_aux~13_combout\ : std_logic;
SIGNAL \inst|reggy~15_combout\ : std_logic;
SIGNAL \inst|Equal5~1_combout\ : std_logic;
SIGNAL \inst|REG_D~0_combout\ : std_logic;
SIGNAL \inst|REG_D[0]~1_combout\ : std_logic;
SIGNAL \inst|REG_D[8]~2_combout\ : std_logic;
SIGNAL \inst|reggy~16_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|Yop~7_combout\ : std_logic;
SIGNAL \inst|reggy[1][7]~q\ : std_logic;
SIGNAL \inst|Mux16~0_combout\ : std_logic;
SIGNAL \inst|REG_D~5_combout\ : std_logic;
SIGNAL \inst|reggy[1][5]~q\ : std_logic;
SIGNAL \inst|Mux18~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|salida_aux~21_combout\ : std_logic;
SIGNAL \inst|reggy~22_combout\ : std_logic;
SIGNAL \inst|reggy[1][1]~q\ : std_logic;
SIGNAL \inst|Mux38~0_combout\ : std_logic;
SIGNAL \inst|reggy~4_combout\ : std_logic;
SIGNAL \inst|REG_D~9_combout\ : std_logic;
SIGNAL \inst|reggy~29_combout\ : std_logic;
SIGNAL \inst|reggy~30_combout\ : std_logic;
SIGNAL \inst|reggy[0][1]~q\ : std_logic;
SIGNAL \inst|Mux22~0_combout\ : std_logic;
SIGNAL \inst|REG_D~6_combout\ : std_logic;
SIGNAL \inst|reggy[1][4]~feeder_combout\ : std_logic;
SIGNAL \inst|reggy[1][4]~q\ : std_logic;
SIGNAL \inst|Mux19~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|salida_aux~24_combout\ : std_logic;
SIGNAL \inst|reggy~24_combout\ : std_logic;
SIGNAL \inst|reggy[0][3]~q\ : std_logic;
SIGNAL \inst|Mux20~0_combout\ : std_logic;
SIGNAL \inst|reggy~7_combout\ : std_logic;
SIGNAL \inst|REG_D~7_combout\ : std_logic;
SIGNAL \inst|reggy~26_combout\ : std_logic;
SIGNAL \inst|reggy[1][2]~q\ : std_logic;
SIGNAL \inst|Mux21~0_combout\ : std_logic;
SIGNAL \inst|REG_A[2]~feeder_combout\ : std_logic;
SIGNAL \inst|REG_D~8_combout\ : std_logic;
SIGNAL \inst|alu1|Mux2~7_combout\ : std_logic;
SIGNAL \inst|alu1|Mux13~5_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi1|sR:1:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi2|sR:2:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|resta|s0|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|resta|s0|Cout2~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|Yop~1_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|resta|sR:1:sP|Cout2~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|resta|sR:1:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|Yop~2_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|resta|sR:2:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|s0|Cout2~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|sR:1:sP|Cout2~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|s0|Cout~1_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|s0|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|sR:1:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|sR:1:sP|Cout~1_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|sR:2:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~22_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~23_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~28\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~30\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~31_combout\ : std_logic;
SIGNAL \inst|alu1|Mux13~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|salida_aux~28_combout\ : std_logic;
SIGNAL \inst|reggy~8_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|aux[1]~16\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|aux[2]~17_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|salida_aux[14]~44_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|salida_aux~29_combout\ : std_logic;
SIGNAL \inst|alu1|Mux14~0_combout\ : std_logic;
SIGNAL \inst|alu1|Mux14~2_combout\ : std_logic;
SIGNAL \inst|alu1|Mux14~1_combout\ : std_logic;
SIGNAL \inst|reggy[1][14]~feeder_combout\ : std_logic;
SIGNAL \inst|reggy[1][14]~q\ : std_logic;
SIGNAL \inst|Mux25~0_combout\ : std_logic;
SIGNAL \inst|reggy[1][13]~q\ : std_logic;
SIGNAL \inst|Mux26~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|sR:2:sP|Cout2~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|sR:3:sP|Cout2~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|sR:4:sP|Cout2~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|sR:2:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|sR:2:sP|Cout~1_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|sR:3:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|sR:3:sP|Cout~1_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|sR:4:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|sR:4:sP|Cout~1_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|sR:5:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|sR:5:sP|Cout~1_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|sR:5:sP|Cout2~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|Yop~6_combout\ : std_logic;
SIGNAL \inst|reggy[1][6]~q\ : std_logic;
SIGNAL \inst|Mux17~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|sR:6:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|Yop~4_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|Yop~3_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|resta|sR:2:sP|Cout2~4_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|resta|sR:3:sP|Cout2~4_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|resta|sR:4:sP|Cout2~4_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|resta|sR:5:sP|Cout2~4_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|resta|sR:6:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~14_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi5|sR:5:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi1|sR:2:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi1|sR:3:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi1|sR:4:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi1|sR:5:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi1|sR:4:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi1|sR:3:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi2|sR:3:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi2|sR:4:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi2|sR:5:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi2|sR:4:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi3|sR:3:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi3|sR:4:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi3|sR:5:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi4|sR:5:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi2|sR:5:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi1|sR:5:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi1|sR:6:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi2|sR:6:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi3|sR:5:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi3|sR:6:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi4|sR:6:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi5|sR:6:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi6|sR:6:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~15_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~32\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~34\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~36\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~38\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~39_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan0~3_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan0~1_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan0~2_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan0~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan0~4_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add0~1\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add0~3\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add0~5\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add0~7\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add0~9\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add0~11\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add0~13\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add0~15\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add0~17\ : std_logic;
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
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add0~18_combout\ : std_logic;
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
SIGNAL \inst|alu1|Mux9~0_combout\ : std_logic;
SIGNAL \inst|alu1|Mux9~1_combout\ : std_logic;
SIGNAL \inst|alu1|Mux12~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|aux[2]~18\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|aux[3]~20\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|aux[4]~22\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|aux[5]~24\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|aux[6]~25_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|salida_aux~18_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|salida_aux~19_combout\ : std_logic;
SIGNAL \inst|alu1|Mux12~1_combout\ : std_logic;
SIGNAL \inst|alu1|Mux9~2_combout\ : std_logic;
SIGNAL \inst|alu1|Mux9~3_combout\ : std_logic;
SIGNAL \inst|alu1|Mux9~4_combout\ : std_logic;
SIGNAL \inst|REG_D~4_combout\ : std_logic;
SIGNAL \inst|reggy~20_combout\ : std_logic;
SIGNAL \inst|reggy~21_combout\ : std_logic;
SIGNAL \inst|reggy[0][6]~q\ : std_logic;
SIGNAL \inst|Mux33~0_combout\ : std_logic;
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
SIGNAL \inst|alu1|comparador|comp3|gout~0_combout\ : std_logic;
SIGNAL \inst|alu1|Mux13~1_combout\ : std_logic;
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
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add1~45\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add1~47\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add1~49\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add1~50_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add1~54_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add1~48_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add1~55_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add1~46_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add1~56_combout\ : std_logic;
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
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add2~30_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add2~23\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add2~25\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add2~26_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add2~28_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add2~24_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add2~29_combout\ : std_logic;
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
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add3~29_combout\ : std_logic;
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
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add3~25\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add3~26_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add3~28_combout\ : std_logic;
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
SIGNAL \inst|alu1|Mux13~2_combout\ : std_logic;
SIGNAL \inst|alu1|Mux13~3_combout\ : std_logic;
SIGNAL \inst|alu1|Mux13~4_combout\ : std_logic;
SIGNAL \inst|alu1|Mux13~6_combout\ : std_logic;
SIGNAL \inst|reggy~28_combout\ : std_logic;
SIGNAL \inst|reggy~58_combout\ : std_logic;
SIGNAL \inst|reggy[0][2]~q\ : std_logic;
SIGNAL \inst|Mux37~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi2|sR:2:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi2|sR:3:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi3|sR:3:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|resta|sR:2:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|resta|sR:3:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|sR:3:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~20_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~21_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~33_combout\ : std_logic;
SIGNAL \inst|alu1|Mux12~2_combout\ : std_logic;
SIGNAL \inst|alu1|Mux12~3_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|aux[3]~19_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|salida_aux~26_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|salida_aux~27_combout\ : std_logic;
SIGNAL \inst|alu1|barrel_shifters|aux[3]~feeder_combout\ : std_logic;
SIGNAL \inst|alu1|Mux12~4_combout\ : std_logic;
SIGNAL \inst|alu1|Mux12~5_combout\ : std_logic;
SIGNAL \inst|alu1|Mux12~6_combout\ : std_logic;
SIGNAL \inst|reggy~27_combout\ : std_logic;
SIGNAL \inst|reggy[1][3]~q\ : std_logic;
SIGNAL \inst|Mux36~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi3|sR:4:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi4|sR:4:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|resta|sR:3:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|resta|sR:4:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|sR:4:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~18_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~19_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~35_combout\ : std_logic;
SIGNAL \inst|alu1|Mux11~0_combout\ : std_logic;
SIGNAL \inst|alu1|Mux11~1_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|salida_aux~23_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|aux[4]~21_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|salida_aux~25_combout\ : std_logic;
SIGNAL \inst|alu1|barrel_shifters|aux[4]~feeder_combout\ : std_logic;
SIGNAL \inst|alu1|Mux11~2_combout\ : std_logic;
SIGNAL \inst|alu1|Mux11~3_combout\ : std_logic;
SIGNAL \inst|alu1|Mux11~4_combout\ : std_logic;
SIGNAL \inst|reggy~25_combout\ : std_logic;
SIGNAL \inst|reggy[0][4]~q\ : std_logic;
SIGNAL \inst|Mux35~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi4|sR:4:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi4|sR:5:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi5|sR:5:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|resta|sR:4:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|resta|sR:5:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|sR:5:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~16_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~17_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~37_combout\ : std_logic;
SIGNAL \inst|alu1|Mux10~0_combout\ : std_logic;
SIGNAL \inst|alu1|Mux10~1_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|salida_aux~20_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|aux[5]~23_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|salida_aux~22_combout\ : std_logic;
SIGNAL \inst|alu1|Mux10~2_combout\ : std_logic;
SIGNAL \inst|alu1|Mux10~3_combout\ : std_logic;
SIGNAL \inst|alu1|Mux10~4_combout\ : std_logic;
SIGNAL \inst|reggy~23_combout\ : std_logic;
SIGNAL \inst|reggy[0][5]~q\ : std_logic;
SIGNAL \inst|Mux34~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|Yop~5_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|resta|sR:5:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|resta|sR:6:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|resta|sR:6:sP|Cout2~4_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|resta|sR:7:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|sR:6:sP|Cout2~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|sR:6:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|sR:6:sP|Cout~1_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|sR:7:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~12_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi4|sR:6:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi2|sR:6:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi1|sR:6:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi1|sR:7:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi2|sR:7:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi3|sR:6:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi3|sR:7:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi4|sR:7:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi5|sR:6:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi5|sR:7:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi6|sR:6:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi6|sR:7:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi7|sR:7:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~13_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~40\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~41_combout\ : std_logic;
SIGNAL \inst|alu1|Mux8~0_combout\ : std_logic;
SIGNAL \inst|alu1|Mux8~1_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|salida_aux~16_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|aux[6]~26\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|aux[7]~27_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|salida_aux~15_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|salida_aux~17_combout\ : std_logic;
SIGNAL \inst|alu1|barrel_shifters|aux[7]~feeder_combout\ : std_logic;
SIGNAL \inst|alu1|Mux8~2_combout\ : std_logic;
SIGNAL \inst|alu1|Mux8~3_combout\ : std_logic;
SIGNAL \inst|alu1|Mux8~4_combout\ : std_logic;
SIGNAL \inst|REG_D~3_combout\ : std_logic;
SIGNAL \inst|reggy~18_combout\ : std_logic;
SIGNAL \inst|reggy~19_combout\ : std_logic;
SIGNAL \inst|reggy[0][7]~q\ : std_logic;
SIGNAL \inst|Mux32~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi1|sR:7:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi1|sR:8:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi2|sR:7:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi2|sR:8:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi1|sR:8:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi2|sR:9:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi2|sR:9:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi2|sR:8:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi3|sR:7:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi3|sR:8:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi3|sR:9:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi3|sR:10:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi3|sR:10:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi3|sR:8:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi4|sR:7:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi4|sR:8:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi3|sR:9:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi4|sR:9:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi4|sR:10:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi4|sR:11:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi4|sR:10:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi5|sR:7:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi4|sR:8:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi5|sR:8:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi4|sR:9:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi5|sR:9:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi5|sR:10:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi5|sR:11:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi5|sR:10:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi5|sR:9:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi5|sR:8:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi6|sR:7:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi6|sR:8:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi6|sR:9:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi6|sR:10:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi6|sR:11:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi6|sR:10:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi7|sR:7:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi6|sR:8:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi7|sR:8:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi6|sR:9:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi7|sR:9:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi7|sR:10:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi7|sR:11:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi6|sR:11:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi4|sR:11:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi5|sR:11:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi5|sR:12:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi6|sR:12:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi7|sR:12:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi6|sR:12:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi5|sR:12:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi6|sR:13:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi7|sR:13:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi6|sR:13:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi7|sR:14:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|sR:7:sP|Cout2~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|sR:8:sP|Cout2~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|sR:9:sP|Cout2~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|sR:10:sP|Cout2~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|Yop~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|Yop~10_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|sR:7:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|sR:7:sP|Cout~1_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|sR:8:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|sR:8:sP|Cout~1_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|sR:9:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|sR:9:sP|Cout~1_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|sR:10:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|sR:10:sP|Cout~1_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|sR:11:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|sR:11:sP|Cout~1_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|sR:12:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|sR:12:sP|Cout~1_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|sR:13:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|Yop~11_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|sR:11:sP|Cout2~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|sR:13:sP|Cout~1_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|sR:14:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|sR:12:sP|Cout2~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|sR:13:sP|Cout2~4_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|Sfaux~0_combout\ : std_logic;
SIGNAL \inst|alu1|Mux2~4_combout\ : std_logic;
SIGNAL \inst|alu1|Mux2~5_combout\ : std_logic;
SIGNAL \inst|alu1|Mux2~10_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi7|sR:8:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|Yop~8_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|resta|sR:7:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|resta|sR:7:sP|Cout2~4_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|resta|sR:8:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|sR:8:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~10_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~11_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~42\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~43_combout\ : std_logic;
SIGNAL \inst|alu1|Mux2~6_combout\ : std_logic;
SIGNAL \inst|alu1|Mux7~2_combout\ : std_logic;
SIGNAL \inst|alu1|Mux7~3_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|salida_aux~12_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|aux[7]~28\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|aux[8]~29_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|salida_aux~14_combout\ : std_logic;
SIGNAL \inst|alu1|Mux7~0_combout\ : std_logic;
SIGNAL \inst|alu1|Mux7~1_combout\ : std_logic;
SIGNAL \inst|alu1|Mux7~4_combout\ : std_logic;
SIGNAL \inst|reggy~17_combout\ : std_logic;
SIGNAL \inst|reggy[1][8]~feeder_combout\ : std_logic;
SIGNAL \inst|reggy[1][8]~q\ : std_logic;
SIGNAL \inst|Mux15~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|aux[8]~30\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|aux[9]~31_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|salida_aux~9_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|salida_aux~11_combout\ : std_logic;
SIGNAL \inst|alu1|Mux6~0_combout\ : std_logic;
SIGNAL \inst|alu1|Mux6~1_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|resta|sR:8:sP|Cout2~4_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|resta|sR:8:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|Yop~9_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|resta|sR:9:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|sR:9:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi7|sR:9:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~8_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~9_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~44\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~45_combout\ : std_logic;
SIGNAL \inst|alu1|Mux6~2_combout\ : std_logic;
SIGNAL \inst|alu1|Mux6~3_combout\ : std_logic;
SIGNAL \inst|alu1|Mux6~4_combout\ : std_logic;
SIGNAL \inst|reggy~14_combout\ : std_logic;
SIGNAL \inst|reggy[1][9]~feeder_combout\ : std_logic;
SIGNAL \inst|reggy[1][9]~q\ : std_logic;
SIGNAL \inst|Mux14~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|aux[9]~32\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|aux[10]~33_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|salida_aux~6_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|salida_aux~8_combout\ : std_logic;
SIGNAL \inst|alu1|Mux5~0_combout\ : std_logic;
SIGNAL \inst|alu1|Mux5~1_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|sR:10:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|resta|sR:9:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|resta|sR:9:sP|Cout2~4_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|resta|sR:10:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi7|sR:10:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~6_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~7_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~46\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~47_combout\ : std_logic;
SIGNAL \inst|alu1|Mux5~2_combout\ : std_logic;
SIGNAL \inst|alu1|Mux5~3_combout\ : std_logic;
SIGNAL \inst|alu1|Mux5~4_combout\ : std_logic;
SIGNAL \inst|reggy~13_combout\ : std_logic;
SIGNAL \inst|reggy[0][10]~q\ : std_logic;
SIGNAL \inst|Mux13~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|aux[10]~34\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|aux[11]~36\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|aux[12]~38_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|salida_aux~41_combout\ : std_logic;
SIGNAL \inst|alu1|barrel_shifters|aux[12]~feeder_combout\ : std_logic;
SIGNAL \inst|reggy~51_combout\ : std_logic;
SIGNAL \inst|reggy~52_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|resta|sR:10:sP|Cout2~4_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|resta|sR:10:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|resta|sR:11:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|resta|sR:11:sP|Cout2~4_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|resta|sR:12:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|sR:12:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~53_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi7|sR:12:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~54_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi7|sR:11:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|sR:11:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|resta|sR:11:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~4_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~5_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~48\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~50\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~55_combout\ : std_logic;
SIGNAL \inst|alu1|Mux3~0_combout\ : std_logic;
SIGNAL \inst|alu1|Mux3~1_combout\ : std_logic;
SIGNAL \inst|reggy~44_combout\ : std_logic;
SIGNAL \inst|reggy~50_combout\ : std_logic;
SIGNAL \inst|reggy~53_combout\ : std_logic;
SIGNAL \inst|reggy[0][12]~q\ : std_logic;
SIGNAL \inst|Mux11~0_combout\ : std_logic;
SIGNAL \inst|reggy~45_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|aux[12]~39\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|aux[13]~40_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|salida_aux~38_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|salida_aux~39_combout\ : std_logic;
SIGNAL \inst|reggy~47_combout\ : std_logic;
SIGNAL \inst|reggy~48_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|Yop~12_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|sR:13:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|resta|sR:12:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|resta|sR:12:sP|Cout2~4_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|resta|sR:13:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi7|sR:13:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~51_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~52_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~56\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~57_combout\ : std_logic;
SIGNAL \inst|alu1|Mux2~8_combout\ : std_logic;
SIGNAL \inst|alu1|Mux2~9_combout\ : std_logic;
SIGNAL \inst|reggy~46_combout\ : std_logic;
SIGNAL \inst|reggy~49_combout\ : std_logic;
SIGNAL \inst|reggy[0][13]~q\ : std_logic;
SIGNAL \inst|Mux10~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|aux[13]~41\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|aux[14]~42_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|salida_aux~35_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|salida_aux~42_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|salida_aux~43_combout\ : std_logic;
SIGNAL \inst|reggy~55_combout\ : std_logic;
SIGNAL \inst|reggy~56_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi7|sR:14:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|resta|sR:13:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|Yop~13_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|resta|sR:13:sP|Cout2~4_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|resta|sR:14:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|sR:14:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|sR:14:sP|Suma~1_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~59_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~60_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~58\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~61_combout\ : std_logic;
SIGNAL \inst|alu1|Mux1~0_combout\ : std_logic;
SIGNAL \inst|alu1|Mux1~1_combout\ : std_logic;
SIGNAL \inst|reggy~54_combout\ : std_logic;
SIGNAL \inst|reggy~57_combout\ : std_logic;
SIGNAL \inst|reggy[0][14]~q\ : std_logic;
SIGNAL \inst|Mux9~0_combout\ : std_logic;
SIGNAL \inst|alu1|Mux0~1_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|salida_aux~36_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|aux[14]~43\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|aux[15]~44_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|salida_aux~37_combout\ : std_logic;
SIGNAL \inst|alu1|Mux0~0_combout\ : std_logic;
SIGNAL \inst|alu1|Mux0~2_combout\ : std_logic;
SIGNAL \inst|reggy~39_combout\ : std_logic;
SIGNAL \inst|reggy[1][15]~35_combout\ : std_logic;
SIGNAL \inst|reggy[0][15]~36_combout\ : std_logic;
SIGNAL \inst|reggy~38_combout\ : std_logic;
SIGNAL \inst|reggy[0][15]~37_combout\ : std_logic;
SIGNAL \inst|reggy[1][15]~40_combout\ : std_logic;
SIGNAL \inst|reggy[1][15]~41_combout\ : std_logic;
SIGNAL \inst|reggy[1][15]~q\ : std_logic;
SIGNAL \inst|Mux24~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|resta|sR:14:sP|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|resta|Sfaux~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|Mux15~3_combout\ : std_logic;
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
SIGNAL \inst|alu1|unidad_aritmetica|Mux15~1_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|Mux15~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|Mux15~2_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|Mux15~4_combout\ : std_logic;
SIGNAL \inst|alu1|Mux15~0_combout\ : std_logic;
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
SIGNAL \inst|alu1|Mux15~1_combout\ : std_logic;
SIGNAL \inst|alu1|Mux15~2_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|aux[0]~37_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|salida_aux~32_combout\ : std_logic;
SIGNAL \inst|alu1|comparador|comp0|lout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|salida_aux~33_combout\ : std_logic;
SIGNAL \inst|alu1|Mux15~3_combout\ : std_logic;
SIGNAL \inst|REG_D~10_combout\ : std_logic;
SIGNAL \inst|reggy~31_combout\ : std_logic;
SIGNAL \inst|reggy~32_combout\ : std_logic;
SIGNAL \inst|reggy~33_combout\ : std_logic;
SIGNAL \inst|reggy[1][0]~q\ : std_logic;
SIGNAL \inst|Mux39~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi1|sR:1:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|resta|sR:1:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|sR:1:sP|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~24_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~25_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~29_combout\ : std_logic;
SIGNAL \inst|alu1|Mux14~3_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|aux[1]~15_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|salida_aux~30_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|salida_aux~31_combout\ : std_logic;
SIGNAL \inst|alu1|comparador|comp3|eout~0_combout\ : std_logic;
SIGNAL \inst|alu1|Mux14~4_combout\ : std_logic;
SIGNAL \inst|alu1|Mux14~5_combout\ : std_logic;
SIGNAL \inst|alu1|Mux14~6_combout\ : std_logic;
SIGNAL \inst|alu1|Mux14~7_combout\ : std_logic;
SIGNAL \inst|alu1|Mux14~8_combout\ : std_logic;
SIGNAL \inst|reggu[0][0]~2_combout\ : std_logic;
SIGNAL \inst|reggu[0][1]~q\ : std_logic;
SIGNAL \inst|alu1|Mux15~4_combout\ : std_logic;
SIGNAL \inst|reggu[0][0]~q\ : std_logic;
SIGNAL \inst|OFFSET[1]~0_combout\ : std_logic;
SIGNAL \inst|Selector32~0_combout\ : std_logic;
SIGNAL \inst|OFFSET[3]~1_combout\ : std_logic;
SIGNAL \inst|PC[3]~6_combout\ : std_logic;
SIGNAL \inst|PC[0]~5\ : std_logic;
SIGNAL \inst|PC[1]~7_combout\ : std_logic;
SIGNAL \inst|Selector31~0_combout\ : std_logic;
SIGNAL \inst|PC[1]~8\ : std_logic;
SIGNAL \inst|PC[2]~9_combout\ : std_logic;
SIGNAL \inst|Selector30~0_combout\ : std_logic;
SIGNAL \inst|PC[2]~10\ : std_logic;
SIGNAL \inst|PC[3]~11_combout\ : std_logic;
SIGNAL \inst|Selector29~0_combout\ : std_logic;
SIGNAL \inst|Mux1~0_combout\ : std_logic;
SIGNAL \inst|alu1|Mux2~3_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|aux[11]~35_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|salida_aux~4_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|salida_aux~5_combout\ : std_logic;
SIGNAL \inst|alu1|Mux4~0_combout\ : std_logic;
SIGNAL \inst|alu1|Mux4~1_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~49_combout\ : std_logic;
SIGNAL \inst|alu1|Mux4~2_combout\ : std_logic;
SIGNAL \inst|alu1|Mux4~3_combout\ : std_logic;
SIGNAL \inst|alu1|Mux4~4_combout\ : std_logic;
SIGNAL \inst|REG_B\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst1|debouncer1|cont\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst|alu1|unidad_logica|aux\ : std_logic_vector(16 DOWNTO 0);
SIGNAL \inst|PC\ : std_logic_vector(13 DOWNTO 0);
SIGNAL \inst|OFFSET\ : std_logic_vector(13 DOWNTO 0);
SIGNAL \inst|alu1|barrel_shifters|salShifters\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst|alu1|unidad_logica|salida_aux\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst|OP\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|alu1|unidad_aritmetica|suma|Xop\ : std_logic_vector(14 DOWNTO 0);
SIGNAL \inst|REG_A\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst|alu1|unidad_aritmetica|mult|inter\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \inst|alu1|barrel_shifters|aux\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst|MAR\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst|REG_D\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst1|player\ : std_logic_vector(8 DOWNTO 0);

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
ww_up <= up;
ww_down <= down;
ww_izq <= izq;
ww_der <= der;
ww_put <= put;
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
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X13_Y0_N16
\A[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|alu1|Mux4~4_combout\,
	devoe => ww_devoe,
	o => \A[11]~output_o\);

-- Location: IOOBUF_X13_Y0_N2
\A[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|alu1|Mux5~4_combout\,
	devoe => ww_devoe,
	o => \A[10]~output_o\);

-- Location: IOOBUF_X34_Y4_N16
\A[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|alu1|Mux6~4_combout\,
	devoe => ww_devoe,
	o => \A[9]~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\A[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|alu1|Mux7~4_combout\,
	devoe => ww_devoe,
	o => \A[8]~output_o\);

-- Location: IOOBUF_X23_Y0_N9
\A[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|alu1|Mux8~4_combout\,
	devoe => ww_devoe,
	o => \A[7]~output_o\);

-- Location: IOOBUF_X16_Y0_N23
\A[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|alu1|Mux9~4_combout\,
	devoe => ww_devoe,
	o => \A[6]~output_o\);

-- Location: IOOBUF_X25_Y0_N2
\A[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|alu1|Mux10~4_combout\,
	devoe => ww_devoe,
	o => \A[5]~output_o\);

-- Location: IOOBUF_X34_Y3_N23
\A[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|alu1|Mux11~4_combout\,
	devoe => ww_devoe,
	o => \A[4]~output_o\);

-- Location: IOOBUF_X28_Y0_N23
\A[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|alu1|Mux12~6_combout\,
	devoe => ww_devoe,
	o => \A[3]~output_o\);

-- Location: IOOBUF_X32_Y0_N23
\A[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|alu1|Mux13~6_combout\,
	devoe => ww_devoe,
	o => \A[2]~output_o\);

-- Location: IOOBUF_X28_Y0_N2
\A[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|alu1|Mux14~8_combout\,
	devoe => ww_devoe,
	o => \A[1]~output_o\);

-- Location: IOOBUF_X34_Y9_N16
\A[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|alu1|Mux15~4_combout\,
	devoe => ww_devoe,
	o => \A[0]~output_o\);

-- Location: IOOBUF_X5_Y0_N16
\B[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|reggy[1][11]~q\,
	devoe => ww_devoe,
	o => \B[11]~output_o\);

-- Location: IOOBUF_X16_Y24_N23
\B[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|reggy[1][10]~q\,
	devoe => ww_devoe,
	o => \B[10]~output_o\);

-- Location: IOOBUF_X16_Y24_N16
\B[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|reggy[1][9]~q\,
	devoe => ww_devoe,
	o => \B[9]~output_o\);

-- Location: IOOBUF_X21_Y0_N9
\B[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|reggy[1][8]~q\,
	devoe => ww_devoe,
	o => \B[8]~output_o\);

-- Location: IOOBUF_X13_Y24_N16
\B[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|reggy[1][7]~q\,
	devoe => ww_devoe,
	o => \B[7]~output_o\);

-- Location: IOOBUF_X0_Y6_N16
\B[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|reggy[1][6]~q\,
	devoe => ww_devoe,
	o => \B[6]~output_o\);

-- Location: IOOBUF_X11_Y24_N16
\B[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|reggy[1][5]~q\,
	devoe => ww_devoe,
	o => \B[5]~output_o\);

-- Location: IOOBUF_X18_Y0_N23
\B[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|reggy[1][4]~q\,
	devoe => ww_devoe,
	o => \B[4]~output_o\);

-- Location: IOOBUF_X18_Y0_N16
\B[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|reggy[1][3]~q\,
	devoe => ww_devoe,
	o => \B[3]~output_o\);

-- Location: IOOBUF_X34_Y4_N23
\B[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|reggy[1][2]~q\,
	devoe => ww_devoe,
	o => \B[2]~output_o\);

-- Location: IOOBUF_X34_Y9_N23
\B[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|reggy[1][1]~q\,
	devoe => ww_devoe,
	o => \B[1]~output_o\);

-- Location: IOOBUF_X34_Y2_N23
\B[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|reggy[1][0]~q\,
	devoe => ww_devoe,
	o => \B[0]~output_o\);

-- Location: IOOBUF_X34_Y7_N9
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

-- Location: IOOBUF_X34_Y9_N9
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

-- Location: IOOBUF_X23_Y24_N9
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

-- Location: IOOBUF_X34_Y2_N16
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

-- Location: IOOBUF_X30_Y0_N9
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

-- Location: IOOBUF_X0_Y18_N16
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

-- Location: IOOBUF_X1_Y24_N9
\instrucciones[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \instrucciones[5]~output_o\);

-- Location: IOOBUF_X23_Y0_N16
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

-- Location: IOOBUF_X16_Y24_N9
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

-- Location: IOOBUF_X16_Y24_N2
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

-- Location: IOOBUF_X13_Y24_N23
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

-- Location: IOOBUF_X34_Y9_N2
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
	i => \inst|cat[0][8]~q\,
	devoe => ww_devoe,
	o => \mov[8]~output_o\);

-- Location: IOOBUF_X34_Y17_N16
\mov[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|cat[0][7]~q\,
	devoe => ww_devoe,
	o => \mov[7]~output_o\);

-- Location: IOOBUF_X28_Y24_N2
\mov[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|cat[0][6]~q\,
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
	i => \inst|cat[0][5]~q\,
	devoe => ww_devoe,
	o => \mov[5]~output_o\);

-- Location: IOOBUF_X34_Y17_N23
\mov[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|cat[0][4]~q\,
	devoe => ww_devoe,
	o => \mov[4]~output_o\);

-- Location: IOOBUF_X28_Y24_N23
\mov[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|cat[0][3]~q\,
	devoe => ww_devoe,
	o => \mov[3]~output_o\);

-- Location: IOOBUF_X34_Y10_N9
\mov[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|cat[0][2]~q\,
	devoe => ww_devoe,
	o => \mov[2]~output_o\);

-- Location: IOOBUF_X34_Y19_N16
\mov[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|cat[0][1]~q\,
	devoe => ww_devoe,
	o => \mov[1]~output_o\);

-- Location: IOOBUF_X18_Y24_N16
\mov[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|cat[0][0]~q\,
	devoe => ww_devoe,
	o => \mov[0]~output_o\);

-- Location: IOOBUF_X0_Y23_N9
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

-- Location: IOOBUF_X30_Y0_N23
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

-- Location: IOOBUF_X7_Y0_N2
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

-- Location: IOOBUF_X1_Y0_N16
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

-- Location: IOOBUF_X0_Y6_N23
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

-- Location: IOOBUF_X1_Y24_N2
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

-- Location: IOOBUF_X23_Y24_N16
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

-- Location: IOOBUF_X32_Y0_N16
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

-- Location: IOOBUF_X23_Y24_N2
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

-- Location: IOOBUF_X7_Y24_N9
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

-- Location: IOOBUF_X9_Y24_N9
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

-- Location: IOOBUF_X0_Y23_N16
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

-- Location: IOOBUF_X32_Y0_N9
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

-- Location: IOOBUF_X0_Y7_N2
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

-- Location: IOOBUF_X0_Y5_N16
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

-- Location: IOOBUF_X7_Y24_N2
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

-- Location: IOOBUF_X16_Y0_N9
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

-- Location: IOOBUF_X1_Y0_N23
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

-- Location: LCCOMB_X23_Y14_N14
\inst|PC[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|PC[0]~4_combout\ = \inst|PC\(0) $ (VCC)
-- \inst|PC[0]~5\ = CARRY(\inst|PC\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|PC\(0),
	datad => VCC,
	combout => \inst|PC[0]~4_combout\,
	cout => \inst|PC[0]~5\);

-- Location: LCCOMB_X23_Y14_N28
\inst|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux4~0_combout\ = (!\inst|PC\(3) & (\inst|PC\(1) $ (((!\inst|PC\(2) & \inst|PC\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC\(3),
	datab => \inst|PC\(2),
	datac => \inst|PC\(0),
	datad => \inst|PC\(1),
	combout => \inst|Mux4~0_combout\);

-- Location: LCCOMB_X24_Y14_N28
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

-- Location: LCCOMB_X25_Y18_N4
\inst1|debouncer1|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|debouncer1|Add0~0_combout\ = \inst1|debouncer1|cont\(0) $ (VCC)
-- \inst1|debouncer1|Add0~1\ = CARRY(\inst1|debouncer1|cont\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|debouncer1|cont\(0),
	datad => VCC,
	combout => \inst1|debouncer1|Add0~0_combout\,
	cout => \inst1|debouncer1|Add0~1\);

-- Location: LCCOMB_X25_Y18_N30
\inst1|debouncer1|cont~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|debouncer1|cont~1_combout\ = (\inst1|debouncer1|Add0~0_combout\ & !\inst1|debouncer1|Equal0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|debouncer1|Add0~0_combout\,
	datad => \inst1|debouncer1|Equal0~3_combout\,
	combout => \inst1|debouncer1|cont~1_combout\);

-- Location: FF_X25_Y18_N31
\inst1|debouncer1|cont[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|debouncer1|cont~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|debouncer1|cont\(0));

-- Location: LCCOMB_X25_Y18_N6
\inst1|debouncer1|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|debouncer1|Add0~2_combout\ = (\inst1|debouncer1|cont\(1) & (!\inst1|debouncer1|Add0~1\)) # (!\inst1|debouncer1|cont\(1) & ((\inst1|debouncer1|Add0~1\) # (GND)))
-- \inst1|debouncer1|Add0~3\ = CARRY((!\inst1|debouncer1|Add0~1\) # (!\inst1|debouncer1|cont\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|debouncer1|cont\(1),
	datad => VCC,
	cin => \inst1|debouncer1|Add0~1\,
	combout => \inst1|debouncer1|Add0~2_combout\,
	cout => \inst1|debouncer1|Add0~3\);

-- Location: FF_X25_Y18_N7
\inst1|debouncer1|cont[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|debouncer1|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|debouncer1|cont\(1));

-- Location: LCCOMB_X25_Y18_N8
\inst1|debouncer1|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|debouncer1|Add0~4_combout\ = (\inst1|debouncer1|cont\(2) & (\inst1|debouncer1|Add0~3\ $ (GND))) # (!\inst1|debouncer1|cont\(2) & (!\inst1|debouncer1|Add0~3\ & VCC))
-- \inst1|debouncer1|Add0~5\ = CARRY((\inst1|debouncer1|cont\(2) & !\inst1|debouncer1|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|debouncer1|cont\(2),
	datad => VCC,
	cin => \inst1|debouncer1|Add0~3\,
	combout => \inst1|debouncer1|Add0~4_combout\,
	cout => \inst1|debouncer1|Add0~5\);

-- Location: FF_X25_Y18_N9
\inst1|debouncer1|cont[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|debouncer1|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|debouncer1|cont\(2));

-- Location: LCCOMB_X25_Y18_N10
\inst1|debouncer1|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|debouncer1|Add0~6_combout\ = (\inst1|debouncer1|cont\(3) & (!\inst1|debouncer1|Add0~5\)) # (!\inst1|debouncer1|cont\(3) & ((\inst1|debouncer1|Add0~5\) # (GND)))
-- \inst1|debouncer1|Add0~7\ = CARRY((!\inst1|debouncer1|Add0~5\) # (!\inst1|debouncer1|cont\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|debouncer1|cont\(3),
	datad => VCC,
	cin => \inst1|debouncer1|Add0~5\,
	combout => \inst1|debouncer1|Add0~6_combout\,
	cout => \inst1|debouncer1|Add0~7\);

-- Location: LCCOMB_X25_Y18_N0
\inst1|debouncer1|cont~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|debouncer1|cont~0_combout\ = (\inst1|debouncer1|Add0~6_combout\ & !\inst1|debouncer1|Equal0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|debouncer1|Add0~6_combout\,
	datad => \inst1|debouncer1|Equal0~3_combout\,
	combout => \inst1|debouncer1|cont~0_combout\);

-- Location: FF_X25_Y18_N1
\inst1|debouncer1|cont[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|debouncer1|cont~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|debouncer1|cont\(3));

-- Location: LCCOMB_X25_Y18_N2
\inst1|debouncer1|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|debouncer1|Equal0~0_combout\ = (!\inst1|debouncer1|cont\(0) & (\inst1|debouncer1|cont\(3) & (!\inst1|debouncer1|cont\(2) & !\inst1|debouncer1|cont\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|debouncer1|cont\(0),
	datab => \inst1|debouncer1|cont\(3),
	datac => \inst1|debouncer1|cont\(2),
	datad => \inst1|debouncer1|cont\(1),
	combout => \inst1|debouncer1|Equal0~0_combout\);

-- Location: LCCOMB_X25_Y18_N12
\inst1|debouncer1|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|debouncer1|Add0~8_combout\ = (\inst1|debouncer1|cont\(4) & (\inst1|debouncer1|Add0~7\ $ (GND))) # (!\inst1|debouncer1|cont\(4) & (!\inst1|debouncer1|Add0~7\ & VCC))
-- \inst1|debouncer1|Add0~9\ = CARRY((\inst1|debouncer1|cont\(4) & !\inst1|debouncer1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|debouncer1|cont\(4),
	datad => VCC,
	cin => \inst1|debouncer1|Add0~7\,
	combout => \inst1|debouncer1|Add0~8_combout\,
	cout => \inst1|debouncer1|Add0~9\);

-- Location: LCCOMB_X26_Y18_N12
\inst1|debouncer1|cont~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|debouncer1|cont~2_combout\ = (\inst1|debouncer1|Add0~8_combout\ & !\inst1|debouncer1|Equal0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|debouncer1|Add0~8_combout\,
	datad => \inst1|debouncer1|Equal0~3_combout\,
	combout => \inst1|debouncer1|cont~2_combout\);

-- Location: FF_X26_Y18_N13
\inst1|debouncer1|cont[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|debouncer1|cont~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|debouncer1|cont\(4));

-- Location: LCCOMB_X25_Y18_N14
\inst1|debouncer1|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|debouncer1|Add0~10_combout\ = (\inst1|debouncer1|cont\(5) & (!\inst1|debouncer1|Add0~9\)) # (!\inst1|debouncer1|cont\(5) & ((\inst1|debouncer1|Add0~9\) # (GND)))
-- \inst1|debouncer1|Add0~11\ = CARRY((!\inst1|debouncer1|Add0~9\) # (!\inst1|debouncer1|cont\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|debouncer1|cont\(5),
	datad => VCC,
	cin => \inst1|debouncer1|Add0~9\,
	combout => \inst1|debouncer1|Add0~10_combout\,
	cout => \inst1|debouncer1|Add0~11\);

-- Location: LCCOMB_X26_Y18_N2
\inst1|debouncer1|cont~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|debouncer1|cont~3_combout\ = (\inst1|debouncer1|Add0~10_combout\ & !\inst1|debouncer1|Equal0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|debouncer1|Add0~10_combout\,
	datad => \inst1|debouncer1|Equal0~3_combout\,
	combout => \inst1|debouncer1|cont~3_combout\);

-- Location: FF_X26_Y18_N3
\inst1|debouncer1|cont[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|debouncer1|cont~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|debouncer1|cont\(5));

-- Location: LCCOMB_X25_Y18_N16
\inst1|debouncer1|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|debouncer1|Add0~12_combout\ = (\inst1|debouncer1|cont\(6) & (\inst1|debouncer1|Add0~11\ $ (GND))) # (!\inst1|debouncer1|cont\(6) & (!\inst1|debouncer1|Add0~11\ & VCC))
-- \inst1|debouncer1|Add0~13\ = CARRY((\inst1|debouncer1|cont\(6) & !\inst1|debouncer1|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|debouncer1|cont\(6),
	datad => VCC,
	cin => \inst1|debouncer1|Add0~11\,
	combout => \inst1|debouncer1|Add0~12_combout\,
	cout => \inst1|debouncer1|Add0~13\);

-- Location: FF_X25_Y18_N17
\inst1|debouncer1|cont[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|debouncer1|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|debouncer1|cont\(6));

-- Location: LCCOMB_X25_Y18_N18
\inst1|debouncer1|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|debouncer1|Add0~14_combout\ = (\inst1|debouncer1|cont\(7) & (!\inst1|debouncer1|Add0~13\)) # (!\inst1|debouncer1|cont\(7) & ((\inst1|debouncer1|Add0~13\) # (GND)))
-- \inst1|debouncer1|Add0~15\ = CARRY((!\inst1|debouncer1|Add0~13\) # (!\inst1|debouncer1|cont\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|debouncer1|cont\(7),
	datad => VCC,
	cin => \inst1|debouncer1|Add0~13\,
	combout => \inst1|debouncer1|Add0~14_combout\,
	cout => \inst1|debouncer1|Add0~15\);

-- Location: LCCOMB_X26_Y18_N4
\inst1|debouncer1|cont~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|debouncer1|cont~4_combout\ = (\inst1|debouncer1|Add0~14_combout\ & !\inst1|debouncer1|Equal0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|debouncer1|Add0~14_combout\,
	datad => \inst1|debouncer1|Equal0~3_combout\,
	combout => \inst1|debouncer1|cont~4_combout\);

-- Location: FF_X26_Y18_N5
\inst1|debouncer1|cont[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|debouncer1|cont~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|debouncer1|cont\(7));

-- Location: LCCOMB_X25_Y18_N20
\inst1|debouncer1|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|debouncer1|Add0~16_combout\ = (\inst1|debouncer1|cont\(8) & (\inst1|debouncer1|Add0~15\ $ (GND))) # (!\inst1|debouncer1|cont\(8) & (!\inst1|debouncer1|Add0~15\ & VCC))
-- \inst1|debouncer1|Add0~17\ = CARRY((\inst1|debouncer1|cont\(8) & !\inst1|debouncer1|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|debouncer1|cont\(8),
	datad => VCC,
	cin => \inst1|debouncer1|Add0~15\,
	combout => \inst1|debouncer1|Add0~16_combout\,
	cout => \inst1|debouncer1|Add0~17\);

-- Location: LCCOMB_X26_Y18_N20
\inst1|debouncer1|cont~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|debouncer1|cont~5_combout\ = (\inst1|debouncer1|Add0~16_combout\ & !\inst1|debouncer1|Equal0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|debouncer1|Add0~16_combout\,
	datad => \inst1|debouncer1|Equal0~3_combout\,
	combout => \inst1|debouncer1|cont~5_combout\);

-- Location: FF_X26_Y18_N21
\inst1|debouncer1|cont[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|debouncer1|cont~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|debouncer1|cont\(8));

-- Location: LCCOMB_X25_Y18_N22
\inst1|debouncer1|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|debouncer1|Add0~18_combout\ = (\inst1|debouncer1|cont\(9) & (!\inst1|debouncer1|Add0~17\)) # (!\inst1|debouncer1|cont\(9) & ((\inst1|debouncer1|Add0~17\) # (GND)))
-- \inst1|debouncer1|Add0~19\ = CARRY((!\inst1|debouncer1|Add0~17\) # (!\inst1|debouncer1|cont\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|debouncer1|cont\(9),
	datad => VCC,
	cin => \inst1|debouncer1|Add0~17\,
	combout => \inst1|debouncer1|Add0~18_combout\,
	cout => \inst1|debouncer1|Add0~19\);

-- Location: LCCOMB_X26_Y18_N18
\inst1|debouncer1|cont~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|debouncer1|cont~6_combout\ = (\inst1|debouncer1|Add0~18_combout\ & !\inst1|debouncer1|Equal0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|debouncer1|Add0~18_combout\,
	datad => \inst1|debouncer1|Equal0~3_combout\,
	combout => \inst1|debouncer1|cont~6_combout\);

-- Location: FF_X26_Y18_N19
\inst1|debouncer1|cont[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|debouncer1|cont~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|debouncer1|cont\(9));

-- Location: LCCOMB_X25_Y18_N24
\inst1|debouncer1|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|debouncer1|Add0~20_combout\ = (\inst1|debouncer1|cont\(10) & (\inst1|debouncer1|Add0~19\ $ (GND))) # (!\inst1|debouncer1|cont\(10) & (!\inst1|debouncer1|Add0~19\ & VCC))
-- \inst1|debouncer1|Add0~21\ = CARRY((\inst1|debouncer1|cont\(10) & !\inst1|debouncer1|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|debouncer1|cont\(10),
	datad => VCC,
	cin => \inst1|debouncer1|Add0~19\,
	combout => \inst1|debouncer1|Add0~20_combout\,
	cout => \inst1|debouncer1|Add0~21\);

-- Location: FF_X25_Y18_N25
\inst1|debouncer1|cont[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|debouncer1|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|debouncer1|cont\(10));

-- Location: LCCOMB_X25_Y18_N26
\inst1|debouncer1|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|debouncer1|Add0~22_combout\ = (\inst1|debouncer1|cont\(11) & (!\inst1|debouncer1|Add0~21\)) # (!\inst1|debouncer1|cont\(11) & ((\inst1|debouncer1|Add0~21\) # (GND)))
-- \inst1|debouncer1|Add0~23\ = CARRY((!\inst1|debouncer1|Add0~21\) # (!\inst1|debouncer1|cont\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|debouncer1|cont\(11),
	datad => VCC,
	cin => \inst1|debouncer1|Add0~21\,
	combout => \inst1|debouncer1|Add0~22_combout\,
	cout => \inst1|debouncer1|Add0~23\);

-- Location: LCCOMB_X26_Y18_N8
\inst1|debouncer1|cont~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|debouncer1|cont~7_combout\ = (\inst1|debouncer1|Add0~22_combout\ & !\inst1|debouncer1|Equal0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|debouncer1|Add0~22_combout\,
	datad => \inst1|debouncer1|Equal0~3_combout\,
	combout => \inst1|debouncer1|cont~7_combout\);

-- Location: FF_X26_Y18_N9
\inst1|debouncer1|cont[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|debouncer1|cont~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|debouncer1|cont\(11));

-- Location: LCCOMB_X25_Y18_N28
\inst1|debouncer1|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|debouncer1|Add0~24_combout\ = \inst1|debouncer1|Add0~23\ $ (!\inst1|debouncer1|cont\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst1|debouncer1|cont\(12),
	cin => \inst1|debouncer1|Add0~23\,
	combout => \inst1|debouncer1|Add0~24_combout\);

-- Location: FF_X25_Y18_N29
\inst1|debouncer1|cont[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|debouncer1|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|debouncer1|cont\(12));

-- Location: LCCOMB_X26_Y18_N22
\inst1|debouncer1|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|debouncer1|Equal0~2_combout\ = (\inst1|debouncer1|cont\(8) & (!\inst1|debouncer1|cont\(10) & (\inst1|debouncer1|cont\(11) & \inst1|debouncer1|cont\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|debouncer1|cont\(8),
	datab => \inst1|debouncer1|cont\(10),
	datac => \inst1|debouncer1|cont\(11),
	datad => \inst1|debouncer1|cont\(9),
	combout => \inst1|debouncer1|Equal0~2_combout\);

-- Location: LCCOMB_X26_Y18_N10
\inst1|debouncer1|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|debouncer1|Equal0~1_combout\ = (\inst1|debouncer1|cont\(4) & (\inst1|debouncer1|cont\(7) & (!\inst1|debouncer1|cont\(6) & \inst1|debouncer1|cont\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|debouncer1|cont\(4),
	datab => \inst1|debouncer1|cont\(7),
	datac => \inst1|debouncer1|cont\(6),
	datad => \inst1|debouncer1|cont\(5),
	combout => \inst1|debouncer1|Equal0~1_combout\);

-- Location: LCCOMB_X26_Y18_N28
\inst1|debouncer1|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|debouncer1|Equal0~3_combout\ = (\inst1|debouncer1|Equal0~0_combout\ & (!\inst1|debouncer1|cont\(12) & (\inst1|debouncer1|Equal0~2_combout\ & \inst1|debouncer1|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|debouncer1|Equal0~0_combout\,
	datab => \inst1|debouncer1|cont\(12),
	datac => \inst1|debouncer1|Equal0~2_combout\,
	datad => \inst1|debouncer1|Equal0~1_combout\,
	combout => \inst1|debouncer1|Equal0~3_combout\);

-- Location: IOIBUF_X34_Y20_N8
\der~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_der,
	o => \der~input_o\);

-- Location: IOIBUF_X34_Y18_N1
\down~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_down,
	o => \down~input_o\);

-- Location: IOIBUF_X30_Y24_N1
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
\up~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_up,
	o => \up~input_o\);

-- Location: LCCOMB_X29_Y18_N20
\inst1|debouncer1|enable~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|debouncer1|enable~0_combout\ = (\der~input_o\) # ((\down~input_o\) # ((\izq~input_o\) # (\up~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \der~input_o\,
	datab => \down~input_o\,
	datac => \izq~input_o\,
	datad => \up~input_o\,
	combout => \inst1|debouncer1|enable~0_combout\);

-- Location: IOIBUF_X30_Y24_N22
\put~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_put,
	o => \put~input_o\);

-- Location: LCCOMB_X29_Y18_N22
\inst1|debouncer1|enable~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|debouncer1|enable~1_combout\ = (!\inst1|debouncer1|Equal0~3_combout\ & ((\inst1|debouncer1|enable~0_combout\) # ((\inst1|debouncer1|enable~q\) # (\put~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|debouncer1|Equal0~3_combout\,
	datab => \inst1|debouncer1|enable~0_combout\,
	datac => \inst1|debouncer1|enable~q\,
	datad => \put~input_o\,
	combout => \inst1|debouncer1|enable~1_combout\);

-- Location: FF_X29_Y18_N23
\inst1|debouncer1|enable\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|debouncer1|enable~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|debouncer1|enable~q\);

-- Location: LCCOMB_X29_Y18_N16
\inst1|debouncer1|s1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|debouncer1|s1~0_combout\ = (!\inst1|debouncer1|enable~q\ & \up~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|debouncer1|enable~q\,
	datad => \up~input_o\,
	combout => \inst1|debouncer1|s1~0_combout\);

-- Location: FF_X29_Y18_N17
\inst1|debouncer1|s1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|debouncer1|s1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|debouncer1|s1~q\);

-- Location: LCCOMB_X29_Y18_N8
\inst1|debouncer1|s4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|debouncer1|s4~0_combout\ = (\der~input_o\ & !\inst1|debouncer1|enable~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \der~input_o\,
	datac => \inst1|debouncer1|enable~q\,
	combout => \inst1|debouncer1|s4~0_combout\);

-- Location: FF_X29_Y18_N9
\inst1|debouncer1|s4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|debouncer1|s4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|debouncer1|s4~q\);

-- Location: LCCOMB_X29_Y18_N18
\inst1|debouncer1|s3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|debouncer1|s3~0_combout\ = (!\inst1|debouncer1|enable~q\ & \izq~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|debouncer1|enable~q\,
	datac => \izq~input_o\,
	combout => \inst1|debouncer1|s3~0_combout\);

-- Location: FF_X29_Y18_N19
\inst1|debouncer1|s3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|debouncer1|s3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|debouncer1|s3~q\);

-- Location: LCCOMB_X29_Y18_N14
\inst1|player[6]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|player[6]~1_combout\ = (\inst1|debouncer1|s3~q\) # ((\inst1|debouncer1|s1~q\ & !\inst1|debouncer1|s4~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|debouncer1|s1~q\,
	datac => \inst1|debouncer1|s4~q\,
	datad => \inst1|debouncer1|s3~q\,
	combout => \inst1|player[6]~1_combout\);

-- Location: LCCOMB_X29_Y18_N30
\inst1|player[6]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|player[6]~0_combout\ = (!\inst1|debouncer1|s4~q\ & !\inst1|debouncer1|s3~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|debouncer1|s4~q\,
	datad => \inst1|debouncer1|s3~q\,
	combout => \inst1|player[6]~0_combout\);

-- Location: LCCOMB_X29_Y18_N4
\inst1|debouncer1|s2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|debouncer1|s2~0_combout\ = (\down~input_o\ & !\inst1|debouncer1|enable~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \down~input_o\,
	datac => \inst1|debouncer1|enable~q\,
	combout => \inst1|debouncer1|s2~0_combout\);

-- Location: FF_X29_Y18_N5
\inst1|debouncer1|s2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|debouncer1|s2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|debouncer1|s2~q\);

-- Location: LCCOMB_X29_Y18_N10
\inst1|player~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|player~8_combout\ = (!\inst1|debouncer1|s1~q\ & ((\inst1|debouncer1|s2~q\ & (\inst1|player\(3))) # (!\inst1|debouncer1|s2~q\ & ((!\inst1|player\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|player\(3),
	datab => \inst1|debouncer1|s1~q\,
	datac => \inst1|debouncer1|s2~q\,
	datad => \inst1|player\(0),
	combout => \inst1|player~8_combout\);

-- Location: LCCOMB_X29_Y14_N24
\inst1|player~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|player~15_combout\ = (\inst1|player[6]~0_combout\ & ((\inst1|player[6]~1_combout\ & (\inst1|player\(1))) # (!\inst1|player[6]~1_combout\ & ((\inst1|player\(7)))))) # (!\inst1|player[6]~0_combout\ & (((\inst1|player[6]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|player[6]~0_combout\,
	datab => \inst1|player\(1),
	datac => \inst1|player\(7),
	datad => \inst1|player[6]~1_combout\,
	combout => \inst1|player~15_combout\);

-- Location: LCCOMB_X29_Y14_N28
\inst1|player~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|player~16_combout\ = (\inst1|player[6]~0_combout\ & (((\inst1|player~15_combout\)))) # (!\inst1|player[6]~0_combout\ & ((\inst1|player~15_combout\ & ((\inst1|player\(3)))) # (!\inst1|player~15_combout\ & (\inst1|player\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|player\(5),
	datab => \inst1|player\(3),
	datac => \inst1|player[6]~0_combout\,
	datad => \inst1|player~15_combout\,
	combout => \inst1|player~16_combout\);

-- Location: LCCOMB_X29_Y18_N26
\inst1|player[6]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|player[6]~4_combout\ = (\inst1|debouncer1|s2~q\) # ((\inst1|debouncer1|s1~q\) # ((\inst1|debouncer1|s4~q\) # (\inst1|debouncer1|s3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|debouncer1|s2~q\,
	datab => \inst1|debouncer1|s1~q\,
	datac => \inst1|debouncer1|s4~q\,
	datad => \inst1|debouncer1|s3~q\,
	combout => \inst1|player[6]~4_combout\);

-- Location: FF_X29_Y14_N29
\inst1|player[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|player~16_combout\,
	ena => \inst1|player[6]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|player\(4));

-- Location: LCCOMB_X29_Y14_N20
\inst1|player~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|player~2_combout\ = (\inst1|player[6]~0_combout\ & ((\inst1|player[6]~1_combout\ & ((\inst1|player\(5)))) # (!\inst1|player[6]~1_combout\ & (\inst1|player\(2))))) # (!\inst1|player[6]~0_combout\ & (((\inst1|player[6]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|player\(2),
	datab => \inst1|player\(5),
	datac => \inst1|player[6]~0_combout\,
	datad => \inst1|player[6]~1_combout\,
	combout => \inst1|player~2_combout\);

-- Location: LCCOMB_X29_Y14_N12
\inst1|player~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|player~3_combout\ = (\inst1|player[6]~0_combout\ & (\inst1|player~2_combout\)) # (!\inst1|player[6]~0_combout\ & ((\inst1|player~2_combout\ & (\inst1|player\(7))) # (!\inst1|player~2_combout\ & ((!\inst1|player\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|player[6]~0_combout\,
	datab => \inst1|player~2_combout\,
	datac => \inst1|player\(7),
	datad => \inst1|player\(0),
	combout => \inst1|player~3_combout\);

-- Location: FF_X29_Y14_N13
\inst1|player[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|player~3_combout\,
	ena => \inst1|player[6]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|player\(8));

-- Location: LCCOMB_X29_Y14_N30
\inst1|player~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|player~17_combout\ = (\inst1|player[6]~0_combout\ & (\inst1|player\(8) & ((!\inst1|player[6]~1_combout\)))) # (!\inst1|player[6]~0_combout\ & (((\inst1|player\(6)) # (\inst1|player[6]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|player\(8),
	datab => \inst1|player\(6),
	datac => \inst1|player[6]~0_combout\,
	datad => \inst1|player[6]~1_combout\,
	combout => \inst1|player~17_combout\);

-- Location: LCCOMB_X29_Y14_N10
\inst1|player~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|player~18_combout\ = (\inst1|player~17_combout\ & (((\inst1|player\(4)) # (!\inst1|player[6]~1_combout\)))) # (!\inst1|player~17_combout\ & (\inst1|player\(2) & ((\inst1|player[6]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|player\(2),
	datab => \inst1|player\(4),
	datac => \inst1|player~17_combout\,
	datad => \inst1|player[6]~1_combout\,
	combout => \inst1|player~18_combout\);

-- Location: FF_X29_Y14_N11
\inst1|player[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|player~18_combout\,
	ena => \inst1|player[6]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|player\(5));

-- Location: LCCOMB_X29_Y14_N0
\inst1|player~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|player~19_combout\ = (\inst1|player[6]~0_combout\ & ((\inst1|player[6]~1_combout\ & ((\inst1|player\(3)))) # (!\inst1|player[6]~1_combout\ & (!\inst1|player\(0))))) # (!\inst1|player[6]~0_combout\ & (((\inst1|player[6]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|player[6]~0_combout\,
	datab => \inst1|player\(0),
	datac => \inst1|player\(3),
	datad => \inst1|player[6]~1_combout\,
	combout => \inst1|player~19_combout\);

-- Location: LCCOMB_X29_Y14_N4
\inst1|player~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|player~20_combout\ = (\inst1|player[6]~0_combout\ & (((\inst1|player~19_combout\)))) # (!\inst1|player[6]~0_combout\ & ((\inst1|player~19_combout\ & (\inst1|player\(5))) # (!\inst1|player~19_combout\ & ((\inst1|player\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|player\(5),
	datab => \inst1|player\(7),
	datac => \inst1|player[6]~0_combout\,
	datad => \inst1|player~19_combout\,
	combout => \inst1|player~20_combout\);

-- Location: FF_X29_Y14_N5
\inst1|player[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|player~20_combout\,
	ena => \inst1|player[6]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|player\(6));

-- Location: LCCOMB_X29_Y18_N12
\inst1|player~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|player~9_combout\ = (!\inst1|debouncer1|s4~q\ & ((\inst1|player~8_combout\) # ((\inst1|player\(6) & \inst1|debouncer1|s1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|player~8_combout\,
	datab => \inst1|debouncer1|s4~q\,
	datac => \inst1|player\(6),
	datad => \inst1|debouncer1|s1~q\,
	combout => \inst1|player~9_combout\);

-- Location: LCCOMB_X29_Y18_N24
\inst1|player~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|player~7_combout\ = (\inst1|player\(1) & \inst1|debouncer1|s4~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|player\(1),
	datac => \inst1|debouncer1|s4~q\,
	combout => \inst1|player~7_combout\);

-- Location: LCCOMB_X29_Y18_N28
\inst1|player~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|player~10_combout\ = (\inst1|debouncer1|s3~q\ & (((!\inst1|player\(8))))) # (!\inst1|debouncer1|s3~q\ & (!\inst1|player~9_combout\ & (!\inst1|player~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|player~9_combout\,
	datab => \inst1|player~7_combout\,
	datac => \inst1|player\(8),
	datad => \inst1|debouncer1|s3~q\,
	combout => \inst1|player~10_combout\);

-- Location: FF_X29_Y18_N29
\inst1|player[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|player~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|player\(0));

-- Location: LCCOMB_X29_Y14_N22
\inst1|player~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|player~13_combout\ = (\inst1|player[6]~0_combout\ & (((\inst1|player\(6) & !\inst1|player[6]~1_combout\)))) # (!\inst1|player[6]~0_combout\ & ((\inst1|player\(4)) # ((\inst1|player[6]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|player[6]~0_combout\,
	datab => \inst1|player\(4),
	datac => \inst1|player\(6),
	datad => \inst1|player[6]~1_combout\,
	combout => \inst1|player~13_combout\);

-- Location: LCCOMB_X29_Y14_N2
\inst1|player~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|player~14_combout\ = (\inst1|player~13_combout\ & ((\inst1|player\(2)) # ((!\inst1|player[6]~1_combout\)))) # (!\inst1|player~13_combout\ & (((!\inst1|player\(0) & \inst1|player[6]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|player\(2),
	datab => \inst1|player\(0),
	datac => \inst1|player~13_combout\,
	datad => \inst1|player[6]~1_combout\,
	combout => \inst1|player~14_combout\);

-- Location: FF_X29_Y14_N3
\inst1|player[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|player~14_combout\,
	ena => \inst1|player[6]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|player\(3));

-- Location: LCCOMB_X29_Y14_N16
\inst1|player~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|player~11_combout\ = (\inst1|player[6]~0_combout\ & ((\inst1|player[6]~1_combout\ & ((\inst1|player\(8)))) # (!\inst1|player[6]~1_combout\ & (\inst1|player\(5))))) # (!\inst1|player[6]~0_combout\ & (((\inst1|player[6]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|player\(5),
	datab => \inst1|player\(8),
	datac => \inst1|player[6]~0_combout\,
	datad => \inst1|player[6]~1_combout\,
	combout => \inst1|player~11_combout\);

-- Location: LCCOMB_X29_Y14_N8
\inst1|player~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|player~12_combout\ = (\inst1|player[6]~0_combout\ & (((\inst1|player~11_combout\)))) # (!\inst1|player[6]~0_combout\ & ((\inst1|player~11_combout\ & (\inst1|player\(1))) # (!\inst1|player~11_combout\ & ((\inst1|player\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|player[6]~0_combout\,
	datab => \inst1|player\(1),
	datac => \inst1|player\(3),
	datad => \inst1|player~11_combout\,
	combout => \inst1|player~12_combout\);

-- Location: FF_X29_Y14_N9
\inst1|player[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|player~12_combout\,
	ena => \inst1|player[6]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|player\(2));

-- Location: LCCOMB_X29_Y14_N26
\inst1|player~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|player~5_combout\ = (\inst1|player[6]~0_combout\ & (((\inst1|player\(4) & !\inst1|player[6]~1_combout\)))) # (!\inst1|player[6]~0_combout\ & ((\inst1|player\(2)) # ((\inst1|player[6]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|player\(2),
	datab => \inst1|player\(4),
	datac => \inst1|player[6]~0_combout\,
	datad => \inst1|player[6]~1_combout\,
	combout => \inst1|player~5_combout\);

-- Location: LCCOMB_X29_Y14_N18
\inst1|player~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|player~6_combout\ = (\inst1|player~5_combout\ & (((!\inst1|player[6]~1_combout\)) # (!\inst1|player\(0)))) # (!\inst1|player~5_combout\ & (((\inst1|player\(7) & \inst1|player[6]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|player~5_combout\,
	datab => \inst1|player\(0),
	datac => \inst1|player\(7),
	datad => \inst1|player[6]~1_combout\,
	combout => \inst1|player~6_combout\);

-- Location: FF_X29_Y14_N19
\inst1|player[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|player~6_combout\,
	ena => \inst1|player[6]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|player\(1));

-- Location: LCCOMB_X29_Y14_N14
\inst1|player~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|player~21_combout\ = (\inst1|player[6]~0_combout\ & (\inst1|player\(1) & ((!\inst1|player[6]~1_combout\)))) # (!\inst1|player[6]~0_combout\ & (((\inst1|player\(8)) # (\inst1|player[6]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|player[6]~0_combout\,
	datab => \inst1|player\(1),
	datac => \inst1|player\(8),
	datad => \inst1|player[6]~1_combout\,
	combout => \inst1|player~21_combout\);

-- Location: LCCOMB_X29_Y14_N6
\inst1|player~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|player~22_combout\ = (\inst1|player[6]~1_combout\ & ((\inst1|player~21_combout\ & (\inst1|player\(6))) # (!\inst1|player~21_combout\ & ((\inst1|player\(4)))))) # (!\inst1|player[6]~1_combout\ & (\inst1|player~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|player[6]~1_combout\,
	datab => \inst1|player~21_combout\,
	datac => \inst1|player\(6),
	datad => \inst1|player\(4),
	combout => \inst1|player~22_combout\);

-- Location: FF_X29_Y14_N7
\inst1|player[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|player~22_combout\,
	ena => \inst1|player[6]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|player\(7));

-- Location: LCCOMB_X28_Y14_N28
\inst|cat[0][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|cat[0][6]~feeder_combout\ = \inst1|player\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|player\(6),
	combout => \inst|cat[0][6]~feeder_combout\);

-- Location: FF_X28_Y14_N29
\inst|cat[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|cat[0][6]~feeder_combout\,
	ena => \inst|cat[0][8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cat[0][6]~q\);

-- Location: LCCOMB_X28_Y14_N18
\inst|cat[0][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|cat[0][7]~feeder_combout\ = \inst1|player\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|player\(7),
	combout => \inst|cat[0][7]~feeder_combout\);

-- Location: FF_X28_Y14_N19
\inst|cat[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|cat[0][7]~feeder_combout\,
	ena => \inst|cat[0][8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cat[0][7]~q\);

-- Location: LCCOMB_X28_Y14_N26
\inst|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~4_combout\ = (\inst1|player\(7) & (\inst|cat[0][7]~q\ & (\inst|cat[0][6]~q\ $ (!\inst1|player\(6))))) # (!\inst1|player\(7) & (!\inst|cat[0][7]~q\ & (\inst|cat[0][6]~q\ $ (!\inst1|player\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|player\(7),
	datab => \inst|cat[0][6]~q\,
	datac => \inst|cat[0][7]~q\,
	datad => \inst1|player\(6),
	combout => \inst|Equal0~4_combout\);

-- Location: FF_X28_Y14_N11
\inst|cat[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst1|player\(5),
	sload => VCC,
	ena => \inst|cat[0][8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cat[0][5]~q\);

-- Location: LCCOMB_X28_Y14_N0
\inst|cat[0][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|cat[0][4]~feeder_combout\ = \inst1|player\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|player\(4),
	combout => \inst|cat[0][4]~feeder_combout\);

-- Location: FF_X28_Y14_N1
\inst|cat[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|cat[0][4]~feeder_combout\,
	ena => \inst|cat[0][8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cat[0][4]~q\);

-- Location: LCCOMB_X28_Y14_N16
\inst|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~3_combout\ = (\inst|cat[0][5]~q\ & (\inst1|player\(5) & (\inst|cat[0][4]~q\ $ (!\inst1|player\(4))))) # (!\inst|cat[0][5]~q\ & (!\inst1|player\(5) & (\inst|cat[0][4]~q\ $ (!\inst1|player\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cat[0][5]~q\,
	datab => \inst|cat[0][4]~q\,
	datac => \inst1|player\(5),
	datad => \inst1|player\(4),
	combout => \inst|Equal0~3_combout\);

-- Location: FF_X28_Y14_N25
\inst|cat[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst1|player\(2),
	sload => VCC,
	ena => \inst|cat[0][8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cat[0][2]~q\);

-- Location: LCCOMB_X28_Y14_N30
\inst|cat[0][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|cat[0][3]~feeder_combout\ = \inst1|player\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|player\(3),
	combout => \inst|cat[0][3]~feeder_combout\);

-- Location: FF_X28_Y14_N31
\inst|cat[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|cat[0][3]~feeder_combout\,
	ena => \inst|cat[0][8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cat[0][3]~q\);

-- Location: LCCOMB_X28_Y14_N22
\inst|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~2_combout\ = (\inst1|player\(3) & (\inst|cat[0][3]~q\ & (\inst|cat[0][2]~q\ $ (!\inst1|player\(2))))) # (!\inst1|player\(3) & (!\inst|cat[0][3]~q\ & (\inst|cat[0][2]~q\ $ (!\inst1|player\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|player\(3),
	datab => \inst|cat[0][2]~q\,
	datac => \inst1|player\(2),
	datad => \inst|cat[0][3]~q\,
	combout => \inst|Equal0~2_combout\);

-- Location: FF_X28_Y14_N3
\inst|cat[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst1|player\(1),
	sload => VCC,
	ena => \inst|cat[0][8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cat[0][1]~q\);

-- Location: LCCOMB_X28_Y14_N4
\inst|cat[0][0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|cat[0][0]~1_combout\ = !\inst1|player\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|player\(0),
	combout => \inst|cat[0][0]~1_combout\);

-- Location: FF_X28_Y14_N5
\inst|cat[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|cat[0][0]~1_combout\,
	ena => \inst|cat[0][8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cat[0][0]~q\);

-- Location: LCCOMB_X28_Y14_N12
\inst|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~1_combout\ = (\inst1|player\(1) & (\inst|cat[0][1]~q\ & (\inst|cat[0][0]~q\ $ (\inst1|player\(0))))) # (!\inst1|player\(1) & (!\inst|cat[0][1]~q\ & (\inst|cat[0][0]~q\ $ (\inst1|player\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|player\(1),
	datab => \inst|cat[0][1]~q\,
	datac => \inst|cat[0][0]~q\,
	datad => \inst1|player\(0),
	combout => \inst|Equal0~1_combout\);

-- Location: LCCOMB_X28_Y14_N20
\inst|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~5_combout\ = (\inst|Equal0~4_combout\ & (\inst|Equal0~3_combout\ & (\inst|Equal0~2_combout\ & \inst|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~4_combout\,
	datab => \inst|Equal0~3_combout\,
	datac => \inst|Equal0~2_combout\,
	datad => \inst|Equal0~1_combout\,
	combout => \inst|Equal0~5_combout\);

-- Location: FF_X28_Y14_N9
\inst|cat[0][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst1|player\(8),
	sload => VCC,
	ena => \inst|cat[0][8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cat[0][8]~q\);

-- Location: LCCOMB_X28_Y14_N6
\inst|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~0_combout\ = \inst1|player\(8) $ (\inst|cat[0][8]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|player\(8),
	datac => \inst|cat[0][8]~q\,
	combout => \inst|Equal0~0_combout\);

-- Location: LCCOMB_X28_Y14_N14
\inst|cat[0][8]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|cat[0][8]~0_combout\ = (!\inst|enable~q\ & (\rst~input_o\ & ((\inst|Equal0~0_combout\) # (!\inst|Equal0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|enable~q\,
	datab => \inst|Equal0~5_combout\,
	datac => \rst~input_o\,
	datad => \inst|Equal0~0_combout\,
	combout => \inst|cat[0][8]~0_combout\);

-- Location: LCCOMB_X23_Y14_N8
\inst|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux0~0_combout\ = (\inst|PC\(2) & (\inst|PC\(3) $ (((!\inst|PC\(1)) # (!\inst|PC\(0)))))) # (!\inst|PC\(2) & (((!\inst|PC\(3) & \inst|PC\(0))) # (!\inst|PC\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC\(3),
	datab => \inst|PC\(2),
	datac => \inst|PC\(0),
	datad => \inst|PC\(1),
	combout => \inst|Mux0~0_combout\);

-- Location: FF_X23_Y14_N9
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

-- Location: LCCOMB_X23_Y14_N4
\inst|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux2~0_combout\ = (\inst|PC\(2) & ((\inst|PC\(0) & ((\inst|PC\(1)))) # (!\inst|PC\(0) & (!\inst|PC\(3) & !\inst|PC\(1))))) # (!\inst|PC\(2) & (\inst|PC\(3) $ (((\inst|PC\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000100100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC\(3),
	datab => \inst|PC\(2),
	datac => \inst|PC\(0),
	datad => \inst|PC\(1),
	combout => \inst|Mux2~0_combout\);

-- Location: FF_X23_Y14_N5
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

-- Location: LCCOMB_X23_Y14_N22
\inst|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux3~0_combout\ = (\inst|PC\(2) & (((\inst|PC\(0) & \inst|PC\(1))))) # (!\inst|PC\(2) & ((\inst|PC\(3) & (!\inst|PC\(0) & !\inst|PC\(1))) # (!\inst|PC\(3) & ((\inst|PC\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC\(3),
	datab => \inst|PC\(2),
	datac => \inst|PC\(0),
	datad => \inst|PC\(1),
	combout => \inst|Mux3~0_combout\);

-- Location: FF_X23_Y14_N23
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

-- Location: LCCOMB_X24_Y14_N4
\inst|pr_state~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|pr_state~8_combout\ = (\inst|MAR\(11) & (\inst|MAR\(10) & (\inst|MAR\(9) & \inst|MAR\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MAR\(11),
	datab => \inst|MAR\(10),
	datac => \inst|MAR\(9),
	datad => \inst|MAR\(8),
	combout => \inst|pr_state~8_combout\);

-- Location: LCCOMB_X24_Y14_N18
\inst|pr_state~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|pr_state~9_combout\ = (\inst|pr_state~8_combout\ & \inst|pr_state.state2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|pr_state~8_combout\,
	datad => \inst|pr_state.state2~q\,
	combout => \inst|pr_state~9_combout\);

-- Location: FF_X24_Y14_N19
\inst|pr_state.state3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|pr_state~9_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \inst|enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|pr_state.state3~q\);

-- Location: LCCOMB_X24_Y14_N2
\inst|enable~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|enable~0_combout\ = (\inst|cat[0][8]~0_combout\) # ((\inst|enable~q\ & ((!\inst|pr_state.state3~q\) # (!\rst~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \inst|cat[0][8]~0_combout\,
	datac => \inst|enable~q\,
	datad => \inst|pr_state.state3~q\,
	combout => \inst|enable~0_combout\);

-- Location: FF_X24_Y14_N3
\inst|enable\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|enable~q\);

-- Location: FF_X24_Y14_N29
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

-- Location: FF_X24_Y14_N7
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

-- Location: LCCOMB_X24_Y14_N0
\inst|Selector14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector14~0_combout\ = (!\inst|pr_state.state3~q\ & ((\inst|pr_state~8_combout\) # (!\inst|pr_state.state2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pr_state.state2~q\,
	datac => \inst|pr_state~8_combout\,
	datad => \inst|pr_state.state3~q\,
	combout => \inst|Selector14~0_combout\);

-- Location: FF_X24_Y14_N1
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

-- Location: LCCOMB_X24_Y14_N8
\inst|MAR[11]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|MAR[11]~0_combout\ = (!\inst|pr_state.state0~q\ & (\rst~input_o\ & \inst|enable~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|pr_state.state0~q\,
	datac => \rst~input_o\,
	datad => \inst|enable~q\,
	combout => \inst|MAR[11]~0_combout\);

-- Location: FF_X23_Y14_N29
\inst|MAR[4]\ : dffeas
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
	q => \inst|MAR\(4));

-- Location: LCCOMB_X22_Y10_N28
\inst|Equal5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal5~0_combout\ = (\inst|MAR\(11) & \inst|MAR\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|MAR\(11),
	datad => \inst|MAR\(10),
	combout => \inst|Equal5~0_combout\);

-- Location: LCCOMB_X24_Y14_N26
\inst|OP[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|OP[3]~4_combout\ = (!\inst|Equal5~0_combout\ & (\rst~input_o\ & (\inst|pr_state.state1~q\ & \inst|enable~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal5~0_combout\,
	datab => \rst~input_o\,
	datac => \inst|pr_state.state1~q\,
	datad => \inst|enable~q\,
	combout => \inst|OP[3]~4_combout\);

-- Location: FF_X22_Y9_N3
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
	ena => \inst|OP[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|OP\(0));

-- Location: LCCOMB_X22_Y9_N24
\inst|OP[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|OP[1]~feeder_combout\ = \inst|MAR\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|MAR\(9),
	combout => \inst|OP[1]~feeder_combout\);

-- Location: FF_X22_Y9_N25
\inst|OP[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|OP[1]~feeder_combout\,
	ena => \inst|OP[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|OP\(1));

-- Location: LCCOMB_X22_Y9_N2
\inst|alu1|Mux16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux16~0_combout\ = (\inst|OP\(2)) # (\inst|OP\(0) $ (!\inst|OP\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|OP\(2),
	datac => \inst|OP\(0),
	datad => \inst|OP\(1),
	combout => \inst|alu1|Mux16~0_combout\);

-- Location: LCCOMB_X23_Y14_N30
\inst|reggy~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~9_combout\ = (\inst|MAR\(11) & (((\inst|MAR\(9)) # (!\inst|MAR\(10))))) # (!\inst|MAR\(11) & (((\inst|MAR\(10)) # (!\inst|MAR\(9))) # (!\inst|MAR\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MAR\(8),
	datab => \inst|MAR\(11),
	datac => \inst|MAR\(9),
	datad => \inst|MAR\(10),
	combout => \inst|reggy~9_combout\);

-- Location: LCCOMB_X24_Y14_N12
\inst|Equal6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal6~0_combout\ = (\inst|MAR\(11) & (!\inst|MAR\(10) & (\inst|MAR\(9) & \inst|MAR\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MAR\(11),
	datab => \inst|MAR\(10),
	datac => \inst|MAR\(9),
	datad => \inst|MAR\(8),
	combout => \inst|Equal6~0_combout\);

-- Location: LCCOMB_X24_Y14_N16
\inst|Equal7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal7~0_combout\ = (\inst|MAR\(11) & (\inst|MAR\(10) & (\inst|MAR\(9) & !\inst|MAR\(8))))

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
	combout => \inst|Equal7~0_combout\);

-- Location: LCCOMB_X24_Y14_N24
\inst|reggy[1][11]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy[1][11]~5_combout\ = (\rst~input_o\ & \inst|enable~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rst~input_o\,
	datad => \inst|enable~q\,
	combout => \inst|reggy[1][11]~5_combout\);

-- Location: LCCOMB_X24_Y14_N6
\inst|reggy[0][11]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy[0][11]~11_combout\ = (!\inst|Equal6~0_combout\ & (!\inst|Equal7~0_combout\ & (\inst|pr_state.state2~q\ & \inst|reggy[1][11]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal6~0_combout\,
	datab => \inst|Equal7~0_combout\,
	datac => \inst|pr_state.state2~q\,
	datad => \inst|reggy[1][11]~5_combout\,
	combout => \inst|reggy[0][11]~11_combout\);

-- Location: LCCOMB_X16_Y10_N26
\inst|reggy[0][11]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy[0][11]~34_combout\ = (!\inst|MAR\(4) & \inst|reggy[0][11]~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|MAR\(4),
	datad => \inst|reggy[0][11]~11_combout\,
	combout => \inst|reggy[0][11]~34_combout\);

-- Location: FF_X21_Y13_N31
\inst|reggy[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|reggy~33_combout\,
	ena => \inst|reggy[0][11]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy[0][0]~q\);

-- Location: LCCOMB_X19_Y13_N22
\inst|Mux23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux23~0_combout\ = (\inst|MAR\(4) & ((\inst|reggy[1][0]~q\))) # (!\inst|MAR\(4) & (\inst|reggy[0][0]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|MAR\(4),
	datac => \inst|reggy[0][0]~q\,
	datad => \inst|reggy[1][0]~q\,
	combout => \inst|Mux23~0_combout\);

-- Location: FF_X13_Y12_N23
\inst|REG_A[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|Mux23~0_combout\,
	sload => VCC,
	ena => \inst|OP[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|REG_A\(0));

-- Location: LCCOMB_X18_Y9_N30
\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~26_combout\ = (\inst|REG_A\(0) & (\inst|alu1|Mux16~0_combout\ $ (\inst|REG_B\(0)))) # (!\inst|REG_A\(0) & (\inst|alu1|Mux16~0_combout\ & \inst|REG_B\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|REG_A\(0),
	datac => \inst|alu1|Mux16~0_combout\,
	datad => \inst|REG_B\(0),
	combout => \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~26_combout\);

-- Location: LCCOMB_X22_Y9_N14
\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~63_combout\ = (!\inst|OP\(2) & (!\inst|OP\(0) & \inst|OP\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|OP\(2),
	datab => \inst|OP\(0),
	datad => \inst|OP\(1),
	combout => \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~63_combout\);

-- Location: LCCOMB_X17_Y8_N2
\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~27_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~26_combout\ & (!\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~63_combout\ & VCC)) # 
-- (!\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~26_combout\ & (\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~63_combout\ $ (GND)))
-- \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~28\ = CARRY((!\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~26_combout\ & !\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~63_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~26_combout\,
	datab => \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~63_combout\,
	datad => VCC,
	combout => \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~27_combout\,
	cout => \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~28\);

-- Location: LCCOMB_X22_Y14_N18
\inst|reggy[0][15]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy[0][15]~43_combout\ = (\inst|MAR\(4) & (\inst|reggy[0][15]~q\)) # (!\inst|MAR\(4) & ((\inst|reggy[1][15]~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|MAR\(4),
	datac => \inst|reggy[0][15]~q\,
	datad => \inst|reggy[1][15]~40_combout\,
	combout => \inst|reggy[0][15]~43_combout\);

-- Location: LCCOMB_X24_Y14_N10
\inst|reggy[0][15]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy[0][15]~42_combout\ = ((\inst|MAR\(10) $ (!\inst|MAR\(8))) # (!\inst|MAR\(9))) # (!\inst|MAR\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MAR\(11),
	datab => \inst|MAR\(10),
	datac => \inst|MAR\(9),
	datad => \inst|MAR\(8),
	combout => \inst|reggy[0][15]~42_combout\);

-- Location: LCCOMB_X24_Y14_N22
\inst|reggy[0][15]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy[0][15]~59_combout\ = (\inst|reggy[0][15]~42_combout\ & (\inst|enable~q\ & (\rst~input_o\ & \inst|pr_state.state2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy[0][15]~42_combout\,
	datab => \inst|enable~q\,
	datac => \rst~input_o\,
	datad => \inst|pr_state.state2~q\,
	combout => \inst|reggy[0][15]~59_combout\);

-- Location: FF_X22_Y14_N19
\inst|reggy[0][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|reggy[0][15]~43_combout\,
	ena => \inst|reggy[0][15]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy[0][15]~q\);

-- Location: LCCOMB_X14_Y14_N28
\inst|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux8~0_combout\ = (\inst|MAR\(4) & ((\inst|reggy[1][15]~q\))) # (!\inst|MAR\(4) & (\inst|reggy[0][15]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MAR\(4),
	datac => \inst|reggy[0][15]~q\,
	datad => \inst|reggy[1][15]~q\,
	combout => \inst|Mux8~0_combout\);

-- Location: FF_X13_Y12_N29
\inst|REG_A[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|Mux8~0_combout\,
	sload => VCC,
	ena => \inst|OP[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|REG_A\(15));

-- Location: FF_X22_Y9_N5
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
	ena => \inst|OP[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|OP\(3));

-- Location: LCCOMB_X22_Y9_N8
\inst|alu1|Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux2~2_combout\ = \inst|OP\(2) $ (((\inst|OP\(0)) # (\inst|OP\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|OP\(2),
	datab => \inst|OP\(0),
	datad => \inst|OP\(1),
	combout => \inst|alu1|Mux2~2_combout\);

-- Location: LCCOMB_X16_Y10_N16
\inst|reggy[1][11]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy[1][11]~12_combout\ = (\inst|MAR\(4) & \inst|reggy[0][11]~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|MAR\(4),
	datad => \inst|reggy[0][11]~11_combout\,
	combout => \inst|reggy[1][11]~12_combout\);

-- Location: FF_X18_Y10_N13
\inst|reggy[1][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~53_combout\,
	sload => VCC,
	ena => \inst|reggy[1][11]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy[1][12]~q\);

-- Location: LCCOMB_X23_Y14_N24
\inst|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux6~0_combout\ = (!\inst|PC\(2) & ((\inst|PC\(3) & (!\inst|PC\(0) & !\inst|PC\(1))) # (!\inst|PC\(3) & (\inst|PC\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC\(3),
	datab => \inst|PC\(2),
	datac => \inst|PC\(0),
	datad => \inst|PC\(1),
	combout => \inst|Mux6~0_combout\);

-- Location: FF_X23_Y14_N25
\inst|MAR[0]\ : dffeas
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
	q => \inst|MAR\(0));

-- Location: LCCOMB_X14_Y14_N20
\inst|Mux27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux27~0_combout\ = (\inst|MAR\(0) & (\inst|reggy[1][12]~q\)) # (!\inst|MAR\(0) & ((\inst|reggy[0][12]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy[1][12]~q\,
	datac => \inst|reggy[0][12]~q\,
	datad => \inst|MAR\(0),
	combout => \inst|Mux27~0_combout\);

-- Location: LCCOMB_X23_Y14_N2
\inst|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux5~0_combout\ = (\inst|PC\(3) & (!\inst|PC\(2) & (\inst|PC\(0) & !\inst|PC\(1)))) # (!\inst|PC\(3) & (\inst|PC\(2) & (!\inst|PC\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC\(3),
	datab => \inst|PC\(2),
	datac => \inst|PC\(0),
	datad => \inst|PC\(1),
	combout => \inst|Mux5~0_combout\);

-- Location: FF_X23_Y14_N3
\inst|MAR[1]\ : dffeas
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
	q => \inst|MAR\(1));

-- Location: FF_X13_Y14_N13
\inst|REG_B[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|Mux27~0_combout\,
	sclr => \inst|MAR\(1),
	sload => VCC,
	ena => \inst|OP[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|REG_B\(12));

-- Location: LCCOMB_X19_Y10_N12
\inst|alu1|unidad_logica|salida_aux~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|salida_aux~34_combout\ = (\inst|REG_A\(12) & \inst|REG_B\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|REG_A\(12),
	datad => \inst|REG_B\(12),
	combout => \inst|alu1|unidad_logica|salida_aux~34_combout\);

-- Location: LCCOMB_X22_Y9_N4
\inst|alu1|Mux17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux17~0_combout\ = (!\inst|OP\(0) & ((\inst|OP\(2) & (!\inst|OP\(3))) # (!\inst|OP\(2) & ((\inst|OP\(3)) # (\inst|OP\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|OP\(2),
	datab => \inst|OP\(0),
	datac => \inst|OP\(3),
	datad => \inst|OP\(1),
	combout => \inst|alu1|Mux17~0_combout\);

-- Location: LCCOMB_X19_Y10_N2
\inst|alu1|unidad_logica|salida_aux~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|salida_aux~40_combout\ = (\inst|REG_A\(12) & (\inst|alu1|Mux16~0_combout\)) # (!\inst|REG_A\(12) & (((\inst|alu1|Mux16~0_combout\ & \inst|REG_B\(12))) # (!\inst|alu1|Mux17~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux16~0_combout\,
	datab => \inst|REG_A\(12),
	datac => \inst|REG_B\(12),
	datad => \inst|alu1|Mux17~0_combout\,
	combout => \inst|alu1|unidad_logica|salida_aux~40_combout\);

-- Location: FF_X18_Y9_N1
\inst|reggy[0][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|reggy~10_combout\,
	ena => \inst|reggy[0][11]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy[0][11]~q\);

-- Location: LCCOMB_X14_Y14_N14
\inst|Mux28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux28~0_combout\ = (\inst|MAR\(0) & (\inst|reggy[1][11]~q\)) # (!\inst|MAR\(0) & ((\inst|reggy[0][11]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|MAR\(0),
	datac => \inst|reggy[1][11]~q\,
	datad => \inst|reggy[0][11]~q\,
	combout => \inst|Mux28~0_combout\);

-- Location: FF_X13_Y14_N31
\inst|REG_B[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|Mux28~0_combout\,
	sclr => \inst|MAR\(1),
	sload => VCC,
	ena => \inst|OP[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|REG_B\(11));

-- Location: LCCOMB_X18_Y9_N28
\inst|reggy~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~6_combout\ = (\inst|REG_A\(11) & \inst|REG_B\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|REG_A\(11),
	datad => \inst|REG_B\(11),
	combout => \inst|reggy~6_combout\);

-- Location: LCCOMB_X22_Y10_N12
\inst|Equal9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal9~0_combout\ = (!\inst|MAR\(10) & (!\inst|MAR\(11) & (\inst|MAR\(8) & \inst|MAR\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MAR\(10),
	datab => \inst|MAR\(11),
	datac => \inst|MAR\(8),
	datad => \inst|MAR\(9),
	combout => \inst|Equal9~0_combout\);

-- Location: LCCOMB_X18_Y9_N0
\inst|reggy~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~10_combout\ = (\inst|reggy~6_combout\ & ((\inst|Equal9~0_combout\) # ((\inst|alu1|Mux4~4_combout\ & \inst|reggy~9_combout\)))) # (!\inst|reggy~6_combout\ & (((\inst|alu1|Mux4~4_combout\ & \inst|reggy~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy~6_combout\,
	datab => \inst|Equal9~0_combout\,
	datac => \inst|alu1|Mux4~4_combout\,
	datad => \inst|reggy~9_combout\,
	combout => \inst|reggy~10_combout\);

-- Location: FF_X16_Y10_N19
\inst|reggy[1][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~10_combout\,
	sload => VCC,
	ena => \inst|reggy[1][11]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy[1][11]~q\);

-- Location: LCCOMB_X16_Y10_N28
\inst|Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux12~0_combout\ = (\inst|MAR\(4) & (\inst|reggy[1][11]~q\)) # (!\inst|MAR\(4) & ((\inst|reggy[0][11]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|reggy[1][11]~q\,
	datac => \inst|reggy[0][11]~q\,
	datad => \inst|MAR\(4),
	combout => \inst|Mux12~0_combout\);

-- Location: FF_X16_Y10_N29
\inst|REG_A[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Mux12~0_combout\,
	ena => \inst|OP[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|REG_A\(11));

-- Location: FF_X16_Y10_N31
\inst|reggy[1][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~13_combout\,
	sload => VCC,
	ena => \inst|reggy[1][11]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy[1][10]~q\);

-- Location: LCCOMB_X16_Y10_N18
\inst|Mux29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux29~0_combout\ = (\inst|MAR\(0) & ((\inst|reggy[1][10]~q\))) # (!\inst|MAR\(0) & (\inst|reggy[0][10]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy[0][10]~q\,
	datab => \inst|MAR\(0),
	datad => \inst|reggy[1][10]~q\,
	combout => \inst|Mux29~0_combout\);

-- Location: FF_X13_Y14_N29
\inst|REG_B[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|Mux29~0_combout\,
	sclr => \inst|MAR\(1),
	sload => VCC,
	ena => \inst|OP[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|REG_B\(10));

-- Location: LCCOMB_X18_Y9_N12
\inst|alu1|unidad_logica|salida_aux~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|salida_aux~7_combout\ = (\inst|REG_B\(10) & \inst|REG_A\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|REG_B\(10),
	datad => \inst|REG_A\(10),
	combout => \inst|alu1|unidad_logica|salida_aux~7_combout\);

-- Location: FF_X22_Y11_N17
\inst|reggy[0][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|reggy~14_combout\,
	ena => \inst|reggy[0][11]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy[0][9]~q\);

-- Location: LCCOMB_X19_Y11_N0
\inst|Mux30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux30~0_combout\ = (\inst|MAR\(0) & (\inst|reggy[1][9]~q\)) # (!\inst|MAR\(0) & ((\inst|reggy[0][9]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MAR\(0),
	datab => \inst|reggy[1][9]~q\,
	datad => \inst|reggy[0][9]~q\,
	combout => \inst|Mux30~0_combout\);

-- Location: FF_X13_Y14_N25
\inst|REG_B[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|Mux30~0_combout\,
	sclr => \inst|MAR\(1),
	sload => VCC,
	ena => \inst|OP[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|REG_B\(9));

-- Location: LCCOMB_X21_Y11_N4
\inst|alu1|unidad_logica|salida_aux~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|salida_aux~10_combout\ = (\inst|REG_B\(9) & \inst|REG_A\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|REG_B\(9),
	datad => \inst|REG_A\(9),
	combout => \inst|alu1|unidad_logica|salida_aux~10_combout\);

-- Location: FF_X18_Y10_N3
\inst|reggy[0][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|reggy~17_combout\,
	ena => \inst|reggy[0][11]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy[0][8]~q\);

-- Location: LCCOMB_X19_Y11_N26
\inst|Mux31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux31~0_combout\ = (\inst|MAR\(0) & (\inst|reggy[1][8]~q\)) # (!\inst|MAR\(0) & ((\inst|reggy[0][8]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|reggy[1][8]~q\,
	datac => \inst|MAR\(0),
	datad => \inst|reggy[0][8]~q\,
	combout => \inst|Mux31~0_combout\);

-- Location: FF_X13_Y14_N5
\inst|REG_B[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|Mux31~0_combout\,
	sclr => \inst|MAR\(1),
	sload => VCC,
	ena => \inst|OP[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|REG_B\(8));

-- Location: LCCOMB_X21_Y10_N30
\inst|alu1|unidad_logica|salida_aux~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|salida_aux~13_combout\ = (\inst|REG_B\(8) & \inst|REG_A\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(8),
	datad => \inst|REG_A\(8),
	combout => \inst|alu1|unidad_logica|salida_aux~13_combout\);

-- Location: LCCOMB_X22_Y10_N14
\inst|reggy~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~15_combout\ = (\inst|MAR\(10) & (\inst|MAR\(11) & !\inst|MAR\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MAR\(10),
	datac => \inst|MAR\(11),
	datad => \inst|MAR\(9),
	combout => \inst|reggy~15_combout\);

-- Location: LCCOMB_X23_Y14_N12
\inst|Equal5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal5~1_combout\ = (\inst|MAR\(8) & (\inst|MAR\(11) & (!\inst|MAR\(9) & \inst|MAR\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MAR\(8),
	datab => \inst|MAR\(11),
	datac => \inst|MAR\(9),
	datad => \inst|MAR\(10),
	combout => \inst|Equal5~1_combout\);

-- Location: LCCOMB_X23_Y13_N14
\inst|REG_D~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|REG_D~0_combout\ = (!\inst|MAR\(0) & (!\inst|Equal5~1_combout\ & (!\inst|MAR\(1) & \inst|cat[0][8]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MAR\(0),
	datab => \inst|Equal5~1_combout\,
	datac => \inst|MAR\(1),
	datad => \inst|cat[0][8]~q\,
	combout => \inst|REG_D~0_combout\);

-- Location: LCCOMB_X23_Y13_N2
\inst|REG_D[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|REG_D[0]~1_combout\ = (\inst|MAR\(1) & (!\inst|MAR\(8) & \inst|MAR\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MAR\(1),
	datac => \inst|MAR\(8),
	datad => \inst|MAR\(0),
	combout => \inst|REG_D[0]~1_combout\);

-- Location: LCCOMB_X23_Y13_N8
\inst|REG_D[8]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|REG_D[8]~2_combout\ = (\inst|reggy~15_combout\ & (\inst|reggy[1][11]~5_combout\ & (\inst|pr_state.state1~q\ & !\inst|REG_D[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy~15_combout\,
	datab => \inst|reggy[1][11]~5_combout\,
	datac => \inst|pr_state.state1~q\,
	datad => \inst|REG_D[0]~1_combout\,
	combout => \inst|REG_D[8]~2_combout\);

-- Location: FF_X23_Y13_N15
\inst|REG_D[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|REG_D~0_combout\,
	ena => \inst|REG_D[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|REG_D\(8));

-- Location: LCCOMB_X21_Y10_N8
\inst|reggy~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~16_combout\ = (\inst|alu1|unidad_logica|salida_aux~13_combout\ & ((\inst|Equal9~0_combout\) # ((\inst|reggy~15_combout\ & \inst|REG_D\(8))))) # (!\inst|alu1|unidad_logica|salida_aux~13_combout\ & (\inst|reggy~15_combout\ & 
-- ((\inst|REG_D\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_logica|salida_aux~13_combout\,
	datab => \inst|reggy~15_combout\,
	datac => \inst|Equal9~0_combout\,
	datad => \inst|REG_D\(8),
	combout => \inst|reggy~16_combout\);

-- Location: LCCOMB_X16_Y11_N10
\inst|alu1|unidad_aritmetica|suma|Yop~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|Yop~7_combout\ = \inst|REG_B\(15) $ (\inst|REG_B\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|REG_B\(15),
	datad => \inst|REG_B\(7),
	combout => \inst|alu1|unidad_aritmetica|suma|Yop~7_combout\);

-- Location: FF_X16_Y10_N1
\inst|reggy[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~19_combout\,
	sload => VCC,
	ena => \inst|reggy[1][11]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy[1][7]~q\);

-- Location: LCCOMB_X16_Y10_N4
\inst|Mux16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux16~0_combout\ = (\inst|MAR\(4) & ((\inst|reggy[1][7]~q\))) # (!\inst|MAR\(4) & (\inst|reggy[0][7]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy[0][7]~q\,
	datab => \inst|MAR\(4),
	datad => \inst|reggy[1][7]~q\,
	combout => \inst|Mux16~0_combout\);

-- Location: FF_X11_Y14_N5
\inst|REG_A[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|Mux16~0_combout\,
	sload => VCC,
	ena => \inst|OP[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|REG_A\(7));

-- Location: LCCOMB_X16_Y11_N24
\inst|alu1|unidad_aritmetica|suma|Xop[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|Xop\(7) = \inst|REG_A\(7) $ (\inst|REG_A\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(7),
	datad => \inst|REG_A\(15),
	combout => \inst|alu1|unidad_aritmetica|suma|Xop\(7));

-- Location: LCCOMB_X23_Y13_N22
\inst|REG_D~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|REG_D~5_combout\ = (!\inst|MAR\(1) & (!\inst|Equal5~1_combout\ & (\inst|cat[0][5]~q\ & !\inst|MAR\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MAR\(1),
	datab => \inst|Equal5~1_combout\,
	datac => \inst|cat[0][5]~q\,
	datad => \inst|MAR\(0),
	combout => \inst|REG_D~5_combout\);

-- Location: FF_X23_Y13_N23
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

-- Location: FF_X21_Y13_N3
\inst|reggy[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~23_combout\,
	sload => VCC,
	ena => \inst|reggy[1][11]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy[1][5]~q\);

-- Location: LCCOMB_X11_Y14_N22
\inst|Mux18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux18~0_combout\ = (\inst|MAR\(4) & ((\inst|reggy[1][5]~q\))) # (!\inst|MAR\(4) & (\inst|reggy[0][5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|reggy[0][5]~q\,
	datac => \inst|MAR\(4),
	datad => \inst|reggy[1][5]~q\,
	combout => \inst|Mux18~0_combout\);

-- Location: FF_X11_Y14_N23
\inst|REG_A[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Mux18~0_combout\,
	ena => \inst|OP[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|REG_A\(5));

-- Location: LCCOMB_X18_Y12_N30
\inst|alu1|unidad_logica|salida_aux~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|salida_aux~21_combout\ = (\inst|REG_A\(5) & \inst|REG_B\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|REG_A\(5),
	datad => \inst|REG_B\(5),
	combout => \inst|alu1|unidad_logica|salida_aux~21_combout\);

-- Location: LCCOMB_X21_Y13_N24
\inst|reggy~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~22_combout\ = (\inst|reggy~15_combout\ & ((\inst|REG_D\(5)) # ((\inst|alu1|unidad_logica|salida_aux~21_combout\ & \inst|Equal9~0_combout\)))) # (!\inst|reggy~15_combout\ & (((\inst|alu1|unidad_logica|salida_aux~21_combout\ & 
-- \inst|Equal9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy~15_combout\,
	datab => \inst|REG_D\(5),
	datac => \inst|alu1|unidad_logica|salida_aux~21_combout\,
	datad => \inst|Equal9~0_combout\,
	combout => \inst|reggy~22_combout\);

-- Location: FF_X21_Y13_N21
\inst|reggy[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~30_combout\,
	sload => VCC,
	ena => \inst|reggy[1][11]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy[1][1]~q\);

-- Location: LCCOMB_X21_Y13_N0
\inst|Mux38~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux38~0_combout\ = (\inst|MAR\(0) & ((\inst|reggy[1][1]~q\))) # (!\inst|MAR\(0) & (\inst|reggy[0][1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MAR\(0),
	datab => \inst|reggy[0][1]~q\,
	datad => \inst|reggy[1][1]~q\,
	combout => \inst|Mux38~0_combout\);

-- Location: FF_X12_Y14_N17
\inst|REG_B[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|Mux38~0_combout\,
	sclr => \inst|MAR\(1),
	sload => VCC,
	ena => \inst|OP[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|REG_B\(1));

-- Location: LCCOMB_X13_Y15_N24
\inst|reggy~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~4_combout\ = (\inst|REG_B\(1) & \inst|REG_A\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(1),
	datac => \inst|REG_A\(1),
	combout => \inst|reggy~4_combout\);

-- Location: LCCOMB_X23_Y13_N26
\inst|REG_D~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|REG_D~9_combout\ = (!\inst|Equal5~1_combout\ & (!\inst|MAR\(0) & ((\inst|MAR\(1)) # (\inst|cat[0][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MAR\(1),
	datab => \inst|Equal5~1_combout\,
	datac => \inst|cat[0][1]~q\,
	datad => \inst|MAR\(0),
	combout => \inst|REG_D~9_combout\);

-- Location: FF_X23_Y13_N27
\inst|REG_D[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|REG_D~9_combout\,
	ena => \inst|REG_D[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|REG_D\(1));

-- Location: LCCOMB_X19_Y13_N4
\inst|reggy~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~29_combout\ = (\inst|reggy~15_combout\ & ((\inst|REG_D\(1)) # ((\inst|Equal9~0_combout\ & \inst|reggy~4_combout\)))) # (!\inst|reggy~15_combout\ & (\inst|Equal9~0_combout\ & (\inst|reggy~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy~15_combout\,
	datab => \inst|Equal9~0_combout\,
	datac => \inst|reggy~4_combout\,
	datad => \inst|REG_D\(1),
	combout => \inst|reggy~29_combout\);

-- Location: LCCOMB_X21_Y13_N26
\inst|reggy~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~30_combout\ = (\inst|reggy~29_combout\) # ((\inst|reggy~9_combout\ & \inst|alu1|Mux14~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy~9_combout\,
	datac => \inst|alu1|Mux14~8_combout\,
	datad => \inst|reggy~29_combout\,
	combout => \inst|reggy~30_combout\);

-- Location: FF_X21_Y13_N27
\inst|reggy[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|reggy~30_combout\,
	ena => \inst|reggy[0][11]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy[0][1]~q\);

-- Location: LCCOMB_X21_Y13_N20
\inst|Mux22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux22~0_combout\ = (\inst|MAR\(4) & ((\inst|reggy[1][1]~q\))) # (!\inst|MAR\(4) & (\inst|reggy[0][1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MAR\(4),
	datab => \inst|reggy[0][1]~q\,
	datac => \inst|reggy[1][1]~q\,
	combout => \inst|Mux22~0_combout\);

-- Location: FF_X13_Y12_N27
\inst|REG_A[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|Mux22~0_combout\,
	sload => VCC,
	ena => \inst|OP[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|REG_A\(1));

-- Location: LCCOMB_X23_Y13_N20
\inst|REG_D~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|REG_D~6_combout\ = (!\inst|MAR\(0) & (!\inst|Equal5~1_combout\ & (!\inst|MAR\(1) & \inst|cat[0][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MAR\(0),
	datab => \inst|Equal5~1_combout\,
	datac => \inst|MAR\(1),
	datad => \inst|cat[0][4]~q\,
	combout => \inst|REG_D~6_combout\);

-- Location: FF_X23_Y13_N21
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

-- Location: LCCOMB_X19_Y11_N22
\inst|reggy[1][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy[1][4]~feeder_combout\ = \inst|reggy~25_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|reggy~25_combout\,
	combout => \inst|reggy[1][4]~feeder_combout\);

-- Location: FF_X19_Y11_N23
\inst|reggy[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|reggy[1][4]~feeder_combout\,
	ena => \inst|reggy[1][11]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy[1][4]~q\);

-- Location: LCCOMB_X19_Y11_N2
\inst|Mux19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux19~0_combout\ = (\inst|MAR\(4) & ((\inst|reggy[1][4]~q\))) # (!\inst|MAR\(4) & (\inst|reggy[0][4]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|MAR\(4),
	datac => \inst|reggy[0][4]~q\,
	datad => \inst|reggy[1][4]~q\,
	combout => \inst|Mux19~0_combout\);

-- Location: FF_X19_Y11_N3
\inst|REG_A[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Mux19~0_combout\,
	ena => \inst|OP[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|REG_A\(4));

-- Location: LCCOMB_X21_Y11_N12
\inst|alu1|unidad_logica|salida_aux~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|salida_aux~24_combout\ = (\inst|REG_A\(4) & \inst|REG_B\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|REG_A\(4),
	datad => \inst|REG_B\(4),
	combout => \inst|alu1|unidad_logica|salida_aux~24_combout\);

-- Location: LCCOMB_X22_Y11_N8
\inst|reggy~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~24_combout\ = (\inst|reggy~15_combout\ & ((\inst|REG_D\(4)) # ((\inst|Equal9~0_combout\ & \inst|alu1|unidad_logica|salida_aux~24_combout\)))) # (!\inst|reggy~15_combout\ & (((\inst|Equal9~0_combout\ & 
-- \inst|alu1|unidad_logica|salida_aux~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy~15_combout\,
	datab => \inst|REG_D\(4),
	datac => \inst|Equal9~0_combout\,
	datad => \inst|alu1|unidad_logica|salida_aux~24_combout\,
	combout => \inst|reggy~24_combout\);

-- Location: FF_X22_Y11_N31
\inst|reggy[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|reggy~27_combout\,
	ena => \inst|reggy[0][11]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy[0][3]~q\);

-- Location: LCCOMB_X19_Y13_N16
\inst|Mux20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux20~0_combout\ = (\inst|MAR\(4) & (\inst|reggy[1][3]~q\)) # (!\inst|MAR\(4) & ((\inst|reggy[0][3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|MAR\(4),
	datac => \inst|reggy[1][3]~q\,
	datad => \inst|reggy[0][3]~q\,
	combout => \inst|Mux20~0_combout\);

-- Location: FF_X19_Y13_N17
\inst|REG_A[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Mux20~0_combout\,
	ena => \inst|OP[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|REG_A\(3));

-- Location: LCCOMB_X23_Y11_N12
\inst|reggy~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~7_combout\ = (\inst|REG_A\(3) & \inst|REG_B\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(3),
	datad => \inst|REG_B\(3),
	combout => \inst|reggy~7_combout\);

-- Location: LCCOMB_X23_Y13_N10
\inst|REG_D~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|REG_D~7_combout\ = (!\inst|MAR\(0) & (!\inst|Equal5~1_combout\ & (!\inst|MAR\(1) & \inst|cat[0][3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MAR\(0),
	datab => \inst|Equal5~1_combout\,
	datac => \inst|MAR\(1),
	datad => \inst|cat[0][3]~q\,
	combout => \inst|REG_D~7_combout\);

-- Location: FF_X23_Y13_N11
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

-- Location: LCCOMB_X22_Y11_N4
\inst|reggy~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~26_combout\ = (\inst|reggy~15_combout\ & ((\inst|REG_D\(3)) # ((\inst|reggy~7_combout\ & \inst|Equal9~0_combout\)))) # (!\inst|reggy~15_combout\ & (\inst|reggy~7_combout\ & (\inst|Equal9~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy~15_combout\,
	datab => \inst|reggy~7_combout\,
	datac => \inst|Equal9~0_combout\,
	datad => \inst|REG_D\(3),
	combout => \inst|reggy~26_combout\);

-- Location: FF_X21_Y13_N19
\inst|reggy[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~58_combout\,
	sload => VCC,
	ena => \inst|reggy[1][11]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy[1][2]~q\);

-- Location: LCCOMB_X19_Y13_N18
\inst|Mux21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux21~0_combout\ = (\inst|MAR\(4) & (\inst|reggy[1][2]~q\)) # (!\inst|MAR\(4) & ((\inst|reggy[0][2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|reggy[1][2]~q\,
	datac => \inst|reggy[0][2]~q\,
	datad => \inst|MAR\(4),
	combout => \inst|Mux21~0_combout\);

-- Location: LCCOMB_X13_Y12_N2
\inst|REG_A[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|REG_A[2]~feeder_combout\ = \inst|Mux21~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Mux21~0_combout\,
	combout => \inst|REG_A[2]~feeder_combout\);

-- Location: FF_X13_Y12_N3
\inst|REG_A[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|REG_A[2]~feeder_combout\,
	ena => \inst|OP[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|REG_A\(2));

-- Location: LCCOMB_X23_Y13_N0
\inst|REG_D~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|REG_D~8_combout\ = (!\inst|MAR\(0) & (!\inst|Equal5~1_combout\ & (!\inst|MAR\(1) & \inst|cat[0][2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MAR\(0),
	datab => \inst|Equal5~1_combout\,
	datac => \inst|MAR\(1),
	datad => \inst|cat[0][2]~q\,
	combout => \inst|REG_D~8_combout\);

-- Location: FF_X23_Y13_N1
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

-- Location: LCCOMB_X18_Y8_N26
\inst|alu1|Mux2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux2~7_combout\ = (\inst|alu1|Mux17~0_combout\ & (\inst|alu1|Mux16~0_combout\ & !\inst|alu1|unidad_aritmetica|resta|Sfaux~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|Mux17~0_combout\,
	datac => \inst|alu1|Mux16~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|resta|Sfaux~0_combout\,
	combout => \inst|alu1|Mux2~7_combout\);

-- Location: LCCOMB_X18_Y8_N14
\inst|alu1|Mux13~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux13~5_combout\ = (\inst|alu1|Mux2~3_combout\ & ((\inst|alu1|Mux2~4_combout\) # (\inst|alu1|Mux2~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|Mux2~4_combout\,
	datac => \inst|alu1|Mux2~7_combout\,
	datad => \inst|alu1|Mux2~3_combout\,
	combout => \inst|alu1|Mux13~5_combout\);

-- Location: LCCOMB_X13_Y15_N22
\inst|alu1|unidad_aritmetica|mult|inter[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|inter\(2) = (\inst|REG_B\(0) & \inst|REG_A\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(0),
	datad => \inst|REG_A\(2),
	combout => \inst|alu1|unidad_aritmetica|mult|inter\(2));

-- Location: LCCOMB_X13_Y15_N8
\inst|alu1|unidad_aritmetica|mult|multi1|sR:1:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi1|sR:1:sP|Cout~0_combout\ = (\inst|REG_B\(0) & (\inst|REG_B\(1) & (\inst|REG_A\(1) & \inst|REG_A\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(0),
	datab => \inst|REG_B\(1),
	datac => \inst|REG_A\(1),
	datad => \inst|REG_A\(0),
	combout => \inst|alu1|unidad_aritmetica|mult|multi1|sR:1:sP|Cout~0_combout\);

-- Location: LCCOMB_X13_Y15_N10
\inst|alu1|unidad_aritmetica|mult|multi2|sR:2:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi2|sR:2:sP|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|mult|inter\(2) $ (\inst|alu1|unidad_aritmetica|mult|multi1|sR:1:sP|Cout~0_combout\ $ (\inst|alu1|unidad_aritmetica|mult|inter\(16) $ (\inst|reggy~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|inter\(2),
	datab => \inst|alu1|unidad_aritmetica|mult|multi1|sR:1:sP|Cout~0_combout\,
	datac => \inst|alu1|unidad_aritmetica|mult|inter\(16),
	datad => \inst|reggy~4_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi2|sR:2:sP|Suma~0_combout\);

-- Location: LCCOMB_X13_Y12_N8
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

-- Location: LCCOMB_X13_Y12_N22
\inst|alu1|unidad_aritmetica|resta|s0|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|resta|s0|Cout~0_combout\ = (\inst|REG_B\(0) & ((\inst|REG_A\(15)) # ((\inst|REG_A\(0)) # (\inst|REG_B\(15))))) # (!\inst|REG_B\(0) & ((\inst|REG_A\(15) $ (\inst|REG_A\(0))) # (!\inst|REG_B\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(0),
	datab => \inst|REG_A\(15),
	datac => \inst|REG_A\(0),
	datad => \inst|REG_B\(15),
	combout => \inst|alu1|unidad_aritmetica|resta|s0|Cout~0_combout\);

-- Location: LCCOMB_X13_Y12_N28
\inst|alu1|unidad_aritmetica|resta|s0|Cout2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|resta|s0|Cout2~0_combout\ = (\inst|REG_B\(0) & (\inst|REG_B\(15) & (!\inst|REG_A\(15) & \inst|REG_A\(0)))) # (!\inst|REG_B\(0) & (!\inst|REG_B\(15) & (\inst|REG_A\(15) & !\inst|REG_A\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(0),
	datab => \inst|REG_B\(15),
	datac => \inst|REG_A\(15),
	datad => \inst|REG_A\(0),
	combout => \inst|alu1|unidad_aritmetica|resta|s0|Cout2~0_combout\);

-- Location: LCCOMB_X13_Y12_N26
\inst|alu1|unidad_aritmetica|suma|Yop~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|Yop~1_combout\ = \inst|REG_B\(15) $ (\inst|REG_B\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(15),
	datad => \inst|REG_B\(1),
	combout => \inst|alu1|unidad_aritmetica|suma|Yop~1_combout\);

-- Location: LCCOMB_X13_Y12_N0
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

-- Location: LCCOMB_X13_Y12_N18
\inst|alu1|unidad_aritmetica|resta|sR:1:sP|Cout2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|resta|sR:1:sP|Cout2~0_combout\ = (\inst|alu1|unidad_aritmetica|resta|s0|Cout~0_combout\ & (\inst|alu1|unidad_aritmetica|resta|s0|Cout2~0_combout\ & (!\inst|alu1|unidad_aritmetica|suma|Yop~1_combout\ & 
-- \inst|alu1|unidad_aritmetica|suma|Xop\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|resta|s0|Cout~0_combout\,
	datab => \inst|alu1|unidad_aritmetica|resta|s0|Cout2~0_combout\,
	datac => \inst|alu1|unidad_aritmetica|suma|Yop~1_combout\,
	datad => \inst|alu1|unidad_aritmetica|suma|Xop\(1),
	combout => \inst|alu1|unidad_aritmetica|resta|sR:1:sP|Cout2~0_combout\);

-- Location: LCCOMB_X13_Y12_N4
\inst|alu1|unidad_aritmetica|resta|sR:1:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|resta|sR:1:sP|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|resta|s0|Cout~0_combout\ & ((\inst|alu1|unidad_aritmetica|resta|s0|Cout2~0_combout\) # ((\inst|alu1|unidad_aritmetica|suma|Xop\(1)) # 
-- (!\inst|alu1|unidad_aritmetica|suma|Yop~1_combout\)))) # (!\inst|alu1|unidad_aritmetica|resta|s0|Cout~0_combout\ & (((!\inst|alu1|unidad_aritmetica|suma|Yop~1_combout\ & \inst|alu1|unidad_aritmetica|suma|Xop\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|resta|s0|Cout~0_combout\,
	datab => \inst|alu1|unidad_aritmetica|resta|s0|Cout2~0_combout\,
	datac => \inst|alu1|unidad_aritmetica|suma|Yop~1_combout\,
	datad => \inst|alu1|unidad_aritmetica|suma|Xop\(1),
	combout => \inst|alu1|unidad_aritmetica|resta|sR:1:sP|Cout~0_combout\);

-- Location: LCCOMB_X12_Y14_N26
\inst|alu1|unidad_aritmetica|suma|Yop~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|Yop~2_combout\ = \inst|REG_B\(2) $ (\inst|REG_B\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(2),
	datad => \inst|REG_B\(15),
	combout => \inst|alu1|unidad_aritmetica|suma|Yop~2_combout\);

-- Location: LCCOMB_X13_Y12_N20
\inst|alu1|unidad_aritmetica|resta|sR:2:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|resta|sR:2:sP|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|suma|Xop\(2) $ (\inst|alu1|unidad_aritmetica|resta|sR:1:sP|Cout2~0_combout\ $ (\inst|alu1|unidad_aritmetica|resta|sR:1:sP|Cout~0_combout\ $ 
-- (\inst|alu1|unidad_aritmetica|suma|Yop~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|suma|Xop\(2),
	datab => \inst|alu1|unidad_aritmetica|resta|sR:1:sP|Cout2~0_combout\,
	datac => \inst|alu1|unidad_aritmetica|resta|sR:1:sP|Cout~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|suma|Yop~2_combout\,
	combout => \inst|alu1|unidad_aritmetica|resta|sR:2:sP|Suma~0_combout\);

-- Location: LCCOMB_X13_Y12_N16
\inst|alu1|unidad_aritmetica|suma|s0|Cout2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|s0|Cout2~0_combout\ = (!\inst|REG_B\(0) & (\inst|REG_A\(15) & (\inst|REG_B\(15) & !\inst|REG_A\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(0),
	datab => \inst|REG_A\(15),
	datac => \inst|REG_B\(15),
	datad => \inst|REG_A\(0),
	combout => \inst|alu1|unidad_aritmetica|suma|s0|Cout2~0_combout\);

-- Location: LCCOMB_X12_Y14_N16
\inst|alu1|unidad_aritmetica|suma|sR:1:sP|Cout2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|sR:1:sP|Cout2~0_combout\ = (\inst|alu1|unidad_aritmetica|suma|s0|Cout2~0_combout\ & (\inst|alu1|unidad_aritmetica|suma|Xop\(1) & (\inst|REG_B\(15) $ (\inst|REG_B\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|suma|s0|Cout2~0_combout\,
	datab => \inst|REG_B\(15),
	datac => \inst|REG_B\(1),
	datad => \inst|alu1|unidad_aritmetica|suma|Xop\(1),
	combout => \inst|alu1|unidad_aritmetica|suma|sR:1:sP|Cout2~0_combout\);

-- Location: LCCOMB_X13_Y12_N30
\inst|alu1|unidad_aritmetica|suma|s0|Cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|s0|Cout~1_combout\ = (\inst|REG_B\(15) & \inst|REG_A\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|REG_B\(15),
	datad => \inst|REG_A\(15),
	combout => \inst|alu1|unidad_aritmetica|suma|s0|Cout~1_combout\);

-- Location: LCCOMB_X13_Y12_N24
\inst|alu1|unidad_aritmetica|suma|s0|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|s0|Cout~0_combout\ = (\inst|REG_B\(0) & ((\inst|REG_A\(15)) # ((\inst|REG_A\(0))))) # (!\inst|REG_B\(0) & ((\inst|REG_B\(15)) # ((\inst|REG_A\(15) & !\inst|REG_A\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(0),
	datab => \inst|REG_A\(15),
	datac => \inst|REG_B\(15),
	datad => \inst|REG_A\(0),
	combout => \inst|alu1|unidad_aritmetica|suma|s0|Cout~0_combout\);

-- Location: LCCOMB_X12_Y14_N24
\inst|alu1|unidad_aritmetica|suma|sR:1:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|sR:1:sP|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|suma|s0|Cout~0_combout\ & ((\inst|alu1|unidad_aritmetica|suma|Xop\(1)) # (\inst|REG_B\(1) $ (\inst|REG_B\(15))))) # 
-- (!\inst|alu1|unidad_aritmetica|suma|s0|Cout~0_combout\ & (\inst|alu1|unidad_aritmetica|suma|Xop\(1) & (\inst|REG_B\(1) $ (\inst|REG_B\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|suma|s0|Cout~0_combout\,
	datab => \inst|REG_B\(1),
	datac => \inst|REG_B\(15),
	datad => \inst|alu1|unidad_aritmetica|suma|Xop\(1),
	combout => \inst|alu1|unidad_aritmetica|suma|sR:1:sP|Cout~0_combout\);

-- Location: LCCOMB_X12_Y14_N8
\inst|alu1|unidad_aritmetica|suma|sR:1:sP|Cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|sR:1:sP|Cout~1_combout\ = (\inst|alu1|unidad_aritmetica|suma|sR:1:sP|Cout~0_combout\) # ((\inst|alu1|unidad_aritmetica|suma|s0|Cout~1_combout\ & (!\inst|REG_B\(0) & !\inst|REG_A\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|suma|s0|Cout~1_combout\,
	datab => \inst|REG_B\(0),
	datac => \inst|REG_A\(0),
	datad => \inst|alu1|unidad_aritmetica|suma|sR:1:sP|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|suma|sR:1:sP|Cout~1_combout\);

-- Location: LCCOMB_X12_Y14_N10
\inst|alu1|unidad_aritmetica|suma|sR:2:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|sR:2:sP|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|suma|Xop\(2) $ (\inst|alu1|unidad_aritmetica|suma|sR:1:sP|Cout2~0_combout\ $ (\inst|alu1|unidad_aritmetica|suma|sR:1:sP|Cout~1_combout\ $ 
-- (\inst|alu1|unidad_aritmetica|suma|Yop~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|suma|Xop\(2),
	datab => \inst|alu1|unidad_aritmetica|suma|sR:1:sP|Cout2~0_combout\,
	datac => \inst|alu1|unidad_aritmetica|suma|sR:1:sP|Cout~1_combout\,
	datad => \inst|alu1|unidad_aritmetica|suma|Yop~2_combout\,
	combout => \inst|alu1|unidad_aritmetica|suma|sR:2:sP|Suma~0_combout\);

-- Location: LCCOMB_X21_Y12_N4
\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~22_combout\ = (\inst|alu1|Mux16~0_combout\ & ((\inst|alu1|Mux17~0_combout\ & (\inst|alu1|unidad_aritmetica|resta|sR:2:sP|Suma~0_combout\)) # (!\inst|alu1|Mux17~0_combout\ & 
-- ((!\inst|alu1|unidad_aritmetica|suma|sR:2:sP|Suma~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|resta|sR:2:sP|Suma~0_combout\,
	datab => \inst|alu1|Mux16~0_combout\,
	datac => \inst|alu1|unidad_aritmetica|suma|sR:2:sP|Suma~0_combout\,
	datad => \inst|alu1|Mux17~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~22_combout\);

-- Location: LCCOMB_X21_Y12_N6
\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~23_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~22_combout\) # ((!\inst|alu1|unidad_aritmetica|mult|multi2|sR:2:sP|Suma~0_combout\ & !\inst|alu1|Mux16~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|multi2|sR:2:sP|Suma~0_combout\,
	datab => \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~22_combout\,
	datac => \inst|alu1|Mux16~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~23_combout\);

-- Location: LCCOMB_X17_Y8_N4
\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~29_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~25_combout\ & (!\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~28\)) # 
-- (!\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~25_combout\ & ((\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~28\) # (GND)))
-- \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~30\ = CARRY((!\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~28\) # (!\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~25_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~25_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~28\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~29_combout\,
	cout => \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~30\);

-- Location: LCCOMB_X17_Y8_N6
\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~31_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~23_combout\ & (\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~30\ $ (GND))) # 
-- (!\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~23_combout\ & (!\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~30\ & VCC))
-- \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~32\ = CARRY((\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~23_combout\ & !\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~23_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~30\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~31_combout\,
	cout => \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~32\);

-- Location: FF_X23_Y12_N9
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

-- Location: FF_X23_Y12_N5
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

-- Location: LCCOMB_X23_Y12_N4
\inst|alu1|Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux13~0_combout\ = (\inst|OP\(2) & \inst|alu1|barrel_shifters|salShifters\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|OP\(2),
	datac => \inst|alu1|barrel_shifters|salShifters\(2),
	combout => \inst|alu1|Mux13~0_combout\);

-- Location: LCCOMB_X23_Y12_N10
\inst|alu1|unidad_logica|salida_aux~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|salida_aux~28_combout\ = (\inst|REG_A\(2) & (\inst|alu1|Mux16~0_combout\)) # (!\inst|REG_A\(2) & (((\inst|alu1|Mux16~0_combout\ & \inst|REG_B\(2))) # (!\inst|alu1|Mux17~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux16~0_combout\,
	datab => \inst|alu1|Mux17~0_combout\,
	datac => \inst|REG_A\(2),
	datad => \inst|REG_B\(2),
	combout => \inst|alu1|unidad_logica|salida_aux~28_combout\);

-- Location: LCCOMB_X23_Y12_N28
\inst|reggy~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~8_combout\ = (\inst|REG_A\(2) & \inst|REG_B\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|REG_A\(2),
	datad => \inst|REG_B\(2),
	combout => \inst|reggy~8_combout\);

-- Location: LCCOMB_X21_Y9_N0
\inst|alu1|unidad_logica|aux[1]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|aux[1]~15_combout\ = (\inst|REG_A\(0) & (!\inst|REG_A\(1) & VCC)) # (!\inst|REG_A\(0) & (\inst|REG_A\(1) $ (GND)))
-- \inst|alu1|unidad_logica|aux[1]~16\ = CARRY((!\inst|REG_A\(0) & !\inst|REG_A\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(0),
	datab => \inst|REG_A\(1),
	datad => VCC,
	combout => \inst|alu1|unidad_logica|aux[1]~15_combout\,
	cout => \inst|alu1|unidad_logica|aux[1]~16\);

-- Location: LCCOMB_X21_Y9_N2
\inst|alu1|unidad_logica|aux[2]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|aux[2]~17_combout\ = (\inst|REG_A\(2) & ((\inst|alu1|unidad_logica|aux[1]~16\) # (GND))) # (!\inst|REG_A\(2) & (!\inst|alu1|unidad_logica|aux[1]~16\))
-- \inst|alu1|unidad_logica|aux[2]~18\ = CARRY((\inst|REG_A\(2)) # (!\inst|alu1|unidad_logica|aux[1]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|REG_A\(2),
	datad => VCC,
	cin => \inst|alu1|unidad_logica|aux[1]~16\,
	combout => \inst|alu1|unidad_logica|aux[2]~17_combout\,
	cout => \inst|alu1|unidad_logica|aux[2]~18\);

-- Location: FF_X21_Y9_N3
\inst|alu1|unidad_logica|aux[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|alu1|unidad_logica|aux[2]~17_combout\,
	ena => \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|unidad_logica|aux\(2));

-- Location: LCCOMB_X22_Y9_N26
\inst|alu1|unidad_logica|salida_aux[14]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|salida_aux[14]~44_combout\ = (\inst|OP\(2) & ((\inst|OP\(0)) # ((\inst|OP\(3))))) # (!\inst|OP\(2) & ((\inst|OP\(1)) # ((!\inst|OP\(0) & !\inst|OP\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|OP\(2),
	datab => \inst|OP\(0),
	datac => \inst|OP\(3),
	datad => \inst|OP\(1),
	combout => \inst|alu1|unidad_logica|salida_aux[14]~44_combout\);

-- Location: LCCOMB_X23_Y12_N14
\inst|alu1|unidad_logica|salida_aux~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|salida_aux~29_combout\ = (\inst|alu1|unidad_logica|salida_aux~28_combout\ & ((\inst|reggy~8_combout\) # ((!\inst|alu1|unidad_logica|salida_aux[14]~44_combout\)))) # (!\inst|alu1|unidad_logica|salida_aux~28_combout\ & 
-- (((\inst|alu1|unidad_logica|aux\(2) & \inst|alu1|unidad_logica|salida_aux[14]~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_logica|salida_aux~28_combout\,
	datab => \inst|reggy~8_combout\,
	datac => \inst|alu1|unidad_logica|aux\(2),
	datad => \inst|alu1|unidad_logica|salida_aux[14]~44_combout\,
	combout => \inst|alu1|unidad_logica|salida_aux~29_combout\);

-- Location: FF_X23_Y12_N15
\inst|alu1|unidad_logica|salida_aux[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|alu1|unidad_logica|salida_aux~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|unidad_logica|salida_aux\(2));

-- Location: LCCOMB_X22_Y12_N20
\inst|alu1|Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux14~0_combout\ = (\inst|OP\(3)) # ((\inst|OP\(1) & (\inst|OP\(0) & \inst|OP\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|OP\(1),
	datab => \inst|OP\(0),
	datac => \inst|OP\(2),
	datad => \inst|OP\(3),
	combout => \inst|alu1|Mux14~0_combout\);

-- Location: LCCOMB_X22_Y12_N30
\inst|alu1|Mux14~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux14~2_combout\ = (\inst|OP\(1) & ((\inst|OP\(0) & ((!\inst|OP\(3)))) # (!\inst|OP\(0) & (!\inst|OP\(2))))) # (!\inst|OP\(1) & (\inst|OP\(2) $ (((\inst|OP\(0)) # (\inst|OP\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011110011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|OP\(1),
	datab => \inst|OP\(0),
	datac => \inst|OP\(2),
	datad => \inst|OP\(3),
	combout => \inst|alu1|Mux14~2_combout\);

-- Location: LCCOMB_X22_Y12_N28
\inst|alu1|Mux14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux14~1_combout\ = (\inst|OP\(2) & (\inst|OP\(1) & (\inst|OP\(0) & !\inst|OP\(3)))) # (!\inst|OP\(2) & (((\inst|OP\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|OP\(1),
	datab => \inst|OP\(0),
	datac => \inst|OP\(2),
	datad => \inst|OP\(3),
	combout => \inst|alu1|Mux14~1_combout\);

-- Location: LCCOMB_X16_Y10_N10
\inst|reggy[1][14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy[1][14]~feeder_combout\ = \inst|reggy~57_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|reggy~57_combout\,
	combout => \inst|reggy[1][14]~feeder_combout\);

-- Location: FF_X16_Y10_N11
\inst|reggy[1][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|reggy[1][14]~feeder_combout\,
	ena => \inst|reggy[1][11]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy[1][14]~q\);

-- Location: LCCOMB_X14_Y14_N22
\inst|Mux25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux25~0_combout\ = (\inst|MAR\(0) & ((\inst|reggy[1][14]~q\))) # (!\inst|MAR\(0) & (\inst|reggy[0][14]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy[0][14]~q\,
	datab => \inst|MAR\(0),
	datac => \inst|reggy[1][14]~q\,
	combout => \inst|Mux25~0_combout\);

-- Location: FF_X12_Y14_N27
\inst|REG_B[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|Mux25~0_combout\,
	sclr => \inst|MAR\(1),
	sload => VCC,
	ena => \inst|OP[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|REG_B\(14));

-- Location: FF_X18_Y10_N9
\inst|reggy[1][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~49_combout\,
	sload => VCC,
	ena => \inst|reggy[1][11]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy[1][13]~q\);

-- Location: LCCOMB_X18_Y10_N8
\inst|Mux26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux26~0_combout\ = (\inst|MAR\(0) & ((\inst|reggy[1][13]~q\))) # (!\inst|MAR\(0) & (\inst|reggy[0][13]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|reggy[0][13]~q\,
	datac => \inst|reggy[1][13]~q\,
	datad => \inst|MAR\(0),
	combout => \inst|Mux26~0_combout\);

-- Location: FF_X12_Y14_N5
\inst|REG_B[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|Mux26~0_combout\,
	sclr => \inst|MAR\(1),
	sload => VCC,
	ena => \inst|OP[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|REG_B\(13));

-- Location: LCCOMB_X12_Y14_N6
\inst|alu1|unidad_aritmetica|suma|sR:2:sP|Cout2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|sR:2:sP|Cout2~0_combout\ = (\inst|alu1|unidad_aritmetica|suma|Xop\(2) & (\inst|alu1|unidad_aritmetica|suma|sR:1:sP|Cout2~0_combout\ & (\inst|REG_B\(15) $ (\inst|REG_B\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|suma|Xop\(2),
	datab => \inst|REG_B\(15),
	datac => \inst|REG_B\(2),
	datad => \inst|alu1|unidad_aritmetica|suma|sR:1:sP|Cout2~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|suma|sR:2:sP|Cout2~0_combout\);

-- Location: LCCOMB_X13_Y11_N4
\inst|alu1|unidad_aritmetica|suma|Xop[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|Xop\(3) = \inst|REG_A\(3) $ (\inst|REG_A\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(3),
	datac => \inst|REG_A\(15),
	combout => \inst|alu1|unidad_aritmetica|suma|Xop\(3));

-- Location: LCCOMB_X13_Y11_N30
\inst|alu1|unidad_aritmetica|suma|sR:3:sP|Cout2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|sR:3:sP|Cout2~0_combout\ = (\inst|alu1|unidad_aritmetica|suma|sR:2:sP|Cout2~0_combout\ & (\inst|alu1|unidad_aritmetica|suma|Xop\(3) & (\inst|REG_B\(3) $ (\inst|REG_B\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|suma|sR:2:sP|Cout2~0_combout\,
	datab => \inst|REG_B\(3),
	datac => \inst|alu1|unidad_aritmetica|suma|Xop\(3),
	datad => \inst|REG_B\(15),
	combout => \inst|alu1|unidad_aritmetica|suma|sR:3:sP|Cout2~0_combout\);

-- Location: LCCOMB_X13_Y11_N18
\inst|alu1|unidad_aritmetica|suma|Xop[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|Xop\(4) = \inst|REG_A\(4) $ (\inst|REG_A\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|REG_A\(4),
	datac => \inst|REG_A\(15),
	combout => \inst|alu1|unidad_aritmetica|suma|Xop\(4));

-- Location: LCCOMB_X12_Y11_N30
\inst|alu1|unidad_aritmetica|suma|sR:4:sP|Cout2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|sR:4:sP|Cout2~0_combout\ = (\inst|alu1|unidad_aritmetica|suma|sR:3:sP|Cout2~0_combout\ & (\inst|alu1|unidad_aritmetica|suma|Xop\(4) & (\inst|REG_B\(4) $ (\inst|REG_B\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|suma|sR:3:sP|Cout2~0_combout\,
	datab => \inst|alu1|unidad_aritmetica|suma|Xop\(4),
	datac => \inst|REG_B\(4),
	datad => \inst|REG_B\(15),
	combout => \inst|alu1|unidad_aritmetica|suma|sR:4:sP|Cout2~0_combout\);

-- Location: LCCOMB_X12_Y14_N18
\inst|alu1|unidad_aritmetica|suma|sR:2:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|sR:2:sP|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|suma|sR:1:sP|Cout~1_combout\ & ((\inst|alu1|unidad_aritmetica|suma|Xop\(2)) # (\inst|REG_B\(2) $ (\inst|REG_B\(15))))) # 
-- (!\inst|alu1|unidad_aritmetica|suma|sR:1:sP|Cout~1_combout\ & (\inst|alu1|unidad_aritmetica|suma|Xop\(2) & (\inst|REG_B\(2) $ (\inst|REG_B\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(2),
	datab => \inst|REG_B\(15),
	datac => \inst|alu1|unidad_aritmetica|suma|sR:1:sP|Cout~1_combout\,
	datad => \inst|alu1|unidad_aritmetica|suma|Xop\(2),
	combout => \inst|alu1|unidad_aritmetica|suma|sR:2:sP|Cout~0_combout\);

-- Location: LCCOMB_X12_Y14_N2
\inst|alu1|unidad_aritmetica|suma|sR:2:sP|Cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|sR:2:sP|Cout~1_combout\ = (\inst|alu1|unidad_aritmetica|suma|sR:1:sP|Cout2~0_combout\) # (\inst|alu1|unidad_aritmetica|suma|sR:2:sP|Cout~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|unidad_aritmetica|suma|sR:1:sP|Cout2~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|suma|sR:2:sP|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|suma|sR:2:sP|Cout~1_combout\);

-- Location: LCCOMB_X12_Y14_N28
\inst|alu1|unidad_aritmetica|suma|sR:3:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|sR:3:sP|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|suma|sR:2:sP|Cout~1_combout\ & ((\inst|alu1|unidad_aritmetica|suma|Xop\(3)) # (\inst|REG_B\(15) $ (\inst|REG_B\(3))))) # 
-- (!\inst|alu1|unidad_aritmetica|suma|sR:2:sP|Cout~1_combout\ & (\inst|alu1|unidad_aritmetica|suma|Xop\(3) & (\inst|REG_B\(15) $ (\inst|REG_B\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|suma|sR:2:sP|Cout~1_combout\,
	datab => \inst|REG_B\(15),
	datac => \inst|REG_B\(3),
	datad => \inst|alu1|unidad_aritmetica|suma|Xop\(3),
	combout => \inst|alu1|unidad_aritmetica|suma|sR:3:sP|Cout~0_combout\);

-- Location: LCCOMB_X12_Y14_N0
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

-- Location: LCCOMB_X12_Y11_N8
\inst|alu1|unidad_aritmetica|suma|sR:4:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|sR:4:sP|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|suma|Xop\(4) & ((\inst|alu1|unidad_aritmetica|suma|sR:3:sP|Cout~1_combout\) # (\inst|REG_B\(4) $ (\inst|REG_B\(15))))) # (!\inst|alu1|unidad_aritmetica|suma|Xop\(4) 
-- & (\inst|alu1|unidad_aritmetica|suma|sR:3:sP|Cout~1_combout\ & (\inst|REG_B\(4) $ (\inst|REG_B\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(4),
	datab => \inst|alu1|unidad_aritmetica|suma|Xop\(4),
	datac => \inst|alu1|unidad_aritmetica|suma|sR:3:sP|Cout~1_combout\,
	datad => \inst|REG_B\(15),
	combout => \inst|alu1|unidad_aritmetica|suma|sR:4:sP|Cout~0_combout\);

-- Location: LCCOMB_X12_Y11_N10
\inst|alu1|unidad_aritmetica|suma|sR:4:sP|Cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|sR:4:sP|Cout~1_combout\ = (\inst|alu1|unidad_aritmetica|suma|sR:3:sP|Cout2~0_combout\) # (\inst|alu1|unidad_aritmetica|suma|sR:4:sP|Cout~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|suma|sR:3:sP|Cout2~0_combout\,
	datac => \inst|alu1|unidad_aritmetica|suma|sR:4:sP|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|suma|sR:4:sP|Cout~1_combout\);

-- Location: LCCOMB_X13_Y11_N8
\inst|alu1|unidad_aritmetica|suma|Xop[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|Xop\(5) = \inst|REG_A\(15) $ (\inst|REG_A\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|REG_A\(15),
	datad => \inst|REG_A\(5),
	combout => \inst|alu1|unidad_aritmetica|suma|Xop\(5));

-- Location: LCCOMB_X12_Y11_N20
\inst|alu1|unidad_aritmetica|suma|sR:5:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|sR:5:sP|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|suma|sR:4:sP|Cout~1_combout\ & ((\inst|alu1|unidad_aritmetica|suma|Xop\(5)) # (\inst|REG_B\(5) $ (\inst|REG_B\(15))))) # 
-- (!\inst|alu1|unidad_aritmetica|suma|sR:4:sP|Cout~1_combout\ & (\inst|alu1|unidad_aritmetica|suma|Xop\(5) & (\inst|REG_B\(5) $ (\inst|REG_B\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|suma|sR:4:sP|Cout~1_combout\,
	datab => \inst|alu1|unidad_aritmetica|suma|Xop\(5),
	datac => \inst|REG_B\(5),
	datad => \inst|REG_B\(15),
	combout => \inst|alu1|unidad_aritmetica|suma|sR:5:sP|Cout~0_combout\);

-- Location: LCCOMB_X12_Y11_N24
\inst|alu1|unidad_aritmetica|suma|sR:5:sP|Cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|sR:5:sP|Cout~1_combout\ = (\inst|alu1|unidad_aritmetica|suma|sR:4:sP|Cout2~0_combout\) # (\inst|alu1|unidad_aritmetica|suma|sR:5:sP|Cout~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|alu1|unidad_aritmetica|suma|sR:4:sP|Cout2~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|suma|sR:5:sP|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|suma|sR:5:sP|Cout~1_combout\);

-- Location: LCCOMB_X12_Y11_N18
\inst|alu1|unidad_aritmetica|suma|sR:5:sP|Cout2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|sR:5:sP|Cout2~0_combout\ = (\inst|alu1|unidad_aritmetica|suma|Xop\(5) & (\inst|alu1|unidad_aritmetica|suma|sR:4:sP|Cout2~0_combout\ & (\inst|REG_B\(5) $ (\inst|REG_B\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(5),
	datab => \inst|alu1|unidad_aritmetica|suma|Xop\(5),
	datac => \inst|alu1|unidad_aritmetica|suma|sR:4:sP|Cout2~0_combout\,
	datad => \inst|REG_B\(15),
	combout => \inst|alu1|unidad_aritmetica|suma|sR:5:sP|Cout2~0_combout\);

-- Location: LCCOMB_X16_Y11_N8
\inst|alu1|unidad_aritmetica|suma|Yop~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|Yop~6_combout\ = \inst|REG_B\(15) $ (\inst|REG_B\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|REG_B\(15),
	datad => \inst|REG_B\(6),
	combout => \inst|alu1|unidad_aritmetica|suma|Yop~6_combout\);

-- Location: FF_X16_Y10_N3
\inst|reggy[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~21_combout\,
	sload => VCC,
	ena => \inst|reggy[1][11]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy[1][6]~q\);

-- Location: LCCOMB_X14_Y14_N12
\inst|Mux17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux17~0_combout\ = (\inst|MAR\(4) & (\inst|reggy[1][6]~q\)) # (!\inst|MAR\(4) & ((\inst|reggy[0][6]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MAR\(4),
	datab => \inst|reggy[1][6]~q\,
	datad => \inst|reggy[0][6]~q\,
	combout => \inst|Mux17~0_combout\);

-- Location: FF_X14_Y14_N13
\inst|REG_A[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Mux17~0_combout\,
	ena => \inst|OP[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|REG_A\(6));

-- Location: LCCOMB_X16_Y11_N18
\inst|alu1|unidad_aritmetica|suma|Xop[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|Xop\(6) = \inst|REG_A\(6) $ (\inst|REG_A\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(6),
	datad => \inst|REG_A\(15),
	combout => \inst|alu1|unidad_aritmetica|suma|Xop\(6));

-- Location: LCCOMB_X16_Y11_N6
\inst|alu1|unidad_aritmetica|suma|sR:6:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|sR:6:sP|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|suma|sR:5:sP|Cout~1_combout\ $ (\inst|alu1|unidad_aritmetica|suma|sR:5:sP|Cout2~0_combout\ $ (\inst|alu1|unidad_aritmetica|suma|Yop~6_combout\ $ 
-- (\inst|alu1|unidad_aritmetica|suma|Xop\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|suma|sR:5:sP|Cout~1_combout\,
	datab => \inst|alu1|unidad_aritmetica|suma|sR:5:sP|Cout2~0_combout\,
	datac => \inst|alu1|unidad_aritmetica|suma|Yop~6_combout\,
	datad => \inst|alu1|unidad_aritmetica|suma|Xop\(6),
	combout => \inst|alu1|unidad_aritmetica|suma|sR:6:sP|Suma~0_combout\);

-- Location: LCCOMB_X12_Y11_N16
\inst|alu1|unidad_aritmetica|suma|Yop~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|Yop~4_combout\ = \inst|REG_B\(15) $ (\inst|REG_B\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|REG_B\(15),
	datac => \inst|REG_B\(4),
	combout => \inst|alu1|unidad_aritmetica|suma|Yop~4_combout\);

-- Location: LCCOMB_X13_Y11_N0
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

-- Location: LCCOMB_X13_Y12_N14
\inst|alu1|unidad_aritmetica|resta|sR:2:sP|Cout2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|resta|sR:2:sP|Cout2~4_combout\ = (!\inst|alu1|unidad_aritmetica|suma|Yop~2_combout\ & (\inst|alu1|unidad_aritmetica|resta|sR:1:sP|Cout2~0_combout\ & (\inst|REG_A\(15) $ (\inst|REG_A\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|suma|Yop~2_combout\,
	datab => \inst|REG_A\(15),
	datac => \inst|REG_A\(2),
	datad => \inst|alu1|unidad_aritmetica|resta|sR:1:sP|Cout2~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|resta|sR:2:sP|Cout2~4_combout\);

-- Location: LCCOMB_X13_Y11_N28
\inst|alu1|unidad_aritmetica|resta|sR:3:sP|Cout2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|resta|sR:3:sP|Cout2~4_combout\ = (!\inst|alu1|unidad_aritmetica|suma|Yop~3_combout\ & (\inst|alu1|unidad_aritmetica|resta|sR:2:sP|Cout2~4_combout\ & (\inst|REG_A\(15) $ (\inst|REG_A\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|suma|Yop~3_combout\,
	datab => \inst|alu1|unidad_aritmetica|resta|sR:2:sP|Cout2~4_combout\,
	datac => \inst|REG_A\(15),
	datad => \inst|REG_A\(3),
	combout => \inst|alu1|unidad_aritmetica|resta|sR:3:sP|Cout2~4_combout\);

-- Location: LCCOMB_X13_Y11_N2
\inst|alu1|unidad_aritmetica|resta|sR:4:sP|Cout2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|resta|sR:4:sP|Cout2~4_combout\ = (!\inst|alu1|unidad_aritmetica|suma|Yop~4_combout\ & (\inst|alu1|unidad_aritmetica|resta|sR:3:sP|Cout2~4_combout\ & (\inst|REG_A\(15) $ (\inst|REG_A\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|suma|Yop~4_combout\,
	datab => \inst|REG_A\(15),
	datac => \inst|REG_A\(4),
	datad => \inst|alu1|unidad_aritmetica|resta|sR:3:sP|Cout2~4_combout\,
	combout => \inst|alu1|unidad_aritmetica|resta|sR:4:sP|Cout2~4_combout\);

-- Location: LCCOMB_X13_Y11_N24
\inst|alu1|unidad_aritmetica|resta|sR:5:sP|Cout2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|resta|sR:5:sP|Cout2~4_combout\ = (!\inst|alu1|unidad_aritmetica|suma|Yop~5_combout\ & (\inst|alu1|unidad_aritmetica|resta|sR:4:sP|Cout2~4_combout\ & (\inst|REG_A\(5) $ (\inst|REG_A\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|suma|Yop~5_combout\,
	datab => \inst|REG_A\(5),
	datac => \inst|REG_A\(15),
	datad => \inst|alu1|unidad_aritmetica|resta|sR:4:sP|Cout2~4_combout\,
	combout => \inst|alu1|unidad_aritmetica|resta|sR:5:sP|Cout2~4_combout\);

-- Location: LCCOMB_X16_Y11_N0
\inst|alu1|unidad_aritmetica|resta|sR:6:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|resta|sR:6:sP|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|resta|sR:5:sP|Cout2~4_combout\ $ (\inst|alu1|unidad_aritmetica|suma|Xop\(6) $ (\inst|alu1|unidad_aritmetica|suma|Yop~6_combout\ $ 
-- (\inst|alu1|unidad_aritmetica|resta|sR:5:sP|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|resta|sR:5:sP|Cout2~4_combout\,
	datab => \inst|alu1|unidad_aritmetica|suma|Xop\(6),
	datac => \inst|alu1|unidad_aritmetica|suma|Yop~6_combout\,
	datad => \inst|alu1|unidad_aritmetica|resta|sR:5:sP|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|resta|sR:6:sP|Suma~0_combout\);

-- Location: LCCOMB_X16_Y12_N4
\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~14_combout\ = (\inst|alu1|Mux16~0_combout\ & ((\inst|alu1|Mux17~0_combout\ & ((\inst|alu1|unidad_aritmetica|resta|sR:6:sP|Suma~0_combout\))) # (!\inst|alu1|Mux17~0_combout\ & 
-- (!\inst|alu1|unidad_aritmetica|suma|sR:6:sP|Suma~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|suma|sR:6:sP|Suma~0_combout\,
	datab => \inst|alu1|Mux17~0_combout\,
	datac => \inst|alu1|Mux16~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|resta|sR:6:sP|Suma~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~14_combout\);

-- Location: LCCOMB_X12_Y12_N26
\inst|alu1|unidad_aritmetica|mult|multi5|sR:5:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi5|sR:5:sP|Cout~0_combout\ = (\inst|REG_A\(0) & (\inst|REG_B\(5) & \inst|alu1|unidad_aritmetica|mult|multi4|sR:5:sP|Suma~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|REG_A\(0),
	datac => \inst|REG_B\(5),
	datad => \inst|alu1|unidad_aritmetica|mult|multi4|sR:5:sP|Suma~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi5|sR:5:sP|Cout~0_combout\);

-- Location: LCCOMB_X12_Y15_N12
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

-- Location: LCCOMB_X12_Y15_N6
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

-- Location: LCCOMB_X13_Y15_N2
\inst|alu1|unidad_aritmetica|mult|multi1|sR:2:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi1|sR:2:sP|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|mult|inter\(2) & ((\inst|alu1|unidad_aritmetica|mult|multi1|sR:1:sP|Cout~0_combout\) # ((\inst|REG_A\(1) & \inst|REG_B\(1))))) # 
-- (!\inst|alu1|unidad_aritmetica|mult|inter\(2) & (\inst|alu1|unidad_aritmetica|mult|multi1|sR:1:sP|Cout~0_combout\ & (\inst|REG_A\(1) & \inst|REG_B\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|inter\(2),
	datab => \inst|alu1|unidad_aritmetica|mult|multi1|sR:1:sP|Cout~0_combout\,
	datac => \inst|REG_A\(1),
	datad => \inst|REG_B\(1),
	combout => \inst|alu1|unidad_aritmetica|mult|multi1|sR:2:sP|Cout~0_combout\);

-- Location: LCCOMB_X12_Y15_N24
\inst|alu1|unidad_aritmetica|mult|multi1|sR:3:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi1|sR:3:sP|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|mult|inter\(3) & ((\inst|alu1|unidad_aritmetica|mult|multi1|sR:2:sP|Cout~0_combout\) # ((\inst|REG_B\(1) & \inst|REG_A\(2))))) # 
-- (!\inst|alu1|unidad_aritmetica|mult|inter\(3) & (\inst|REG_B\(1) & (\inst|REG_A\(2) & \inst|alu1|unidad_aritmetica|mult|multi1|sR:2:sP|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|inter\(3),
	datab => \inst|REG_B\(1),
	datac => \inst|REG_A\(2),
	datad => \inst|alu1|unidad_aritmetica|mult|multi1|sR:2:sP|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi1|sR:3:sP|Cout~0_combout\);

-- Location: LCCOMB_X12_Y15_N30
\inst|alu1|unidad_aritmetica|mult|multi1|sR:4:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi1|sR:4:sP|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|mult|inter\(4) & ((\inst|alu1|unidad_aritmetica|mult|multi1|sR:3:sP|Cout~0_combout\) # ((\inst|REG_B\(1) & \inst|REG_A\(3))))) # 
-- (!\inst|alu1|unidad_aritmetica|mult|inter\(4) & (\inst|REG_B\(1) & (\inst|REG_A\(3) & \inst|alu1|unidad_aritmetica|mult|multi1|sR:3:sP|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|inter\(4),
	datab => \inst|REG_B\(1),
	datac => \inst|REG_A\(3),
	datad => \inst|alu1|unidad_aritmetica|mult|multi1|sR:3:sP|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi1|sR:4:sP|Cout~0_combout\);

-- Location: LCCOMB_X12_Y15_N18
\inst|alu1|unidad_aritmetica|mult|inter[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|inter\(5) = (\inst|REG_A\(5) & \inst|REG_B\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|REG_A\(5),
	datad => \inst|REG_B\(0),
	combout => \inst|alu1|unidad_aritmetica|mult|inter\(5));

-- Location: LCCOMB_X12_Y15_N22
\inst|alu1|unidad_aritmetica|mult|multi1|sR:5:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi1|sR:5:sP|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|mult|multi1|sR:4:sP|Cout~0_combout\ $ (\inst|alu1|unidad_aritmetica|mult|inter\(5) $ (((\inst|REG_B\(1) & \inst|REG_A\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|multi1|sR:4:sP|Cout~0_combout\,
	datab => \inst|REG_B\(1),
	datac => \inst|REG_A\(4),
	datad => \inst|alu1|unidad_aritmetica|mult|inter\(5),
	combout => \inst|alu1|unidad_aritmetica|mult|multi1|sR:5:sP|Suma~0_combout\);

-- Location: LCCOMB_X12_Y15_N4
\inst|alu1|unidad_aritmetica|mult|multi1|sR:4:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi1|sR:4:sP|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|mult|inter\(4) $ (\inst|alu1|unidad_aritmetica|mult|multi1|sR:3:sP|Cout~0_combout\ $ (((\inst|REG_B\(1) & \inst|REG_A\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|inter\(4),
	datab => \inst|REG_B\(1),
	datac => \inst|REG_A\(3),
	datad => \inst|alu1|unidad_aritmetica|mult|multi1|sR:3:sP|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi1|sR:4:sP|Suma~0_combout\);

-- Location: LCCOMB_X13_Y15_N12
\inst|alu1|unidad_aritmetica|mult|multi1|sR:3:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi1|sR:3:sP|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|mult|inter\(3) $ (\inst|alu1|unidad_aritmetica|mult|multi1|sR:2:sP|Cout~0_combout\ $ (((\inst|REG_A\(2) & \inst|REG_B\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(2),
	datab => \inst|REG_B\(1),
	datac => \inst|alu1|unidad_aritmetica|mult|inter\(3),
	datad => \inst|alu1|unidad_aritmetica|mult|multi1|sR:2:sP|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi1|sR:3:sP|Suma~0_combout\);

-- Location: LCCOMB_X13_Y15_N16
\inst|alu1|unidad_aritmetica|mult|multi2|sR:3:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi2|sR:3:sP|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi2|sR:2:sP|Cout~0_combout\ & ((\inst|alu1|unidad_aritmetica|mult|multi1|sR:3:sP|Suma~0_combout\) # ((\inst|REG_B\(2) & \inst|REG_A\(1))))) # 
-- (!\inst|alu1|unidad_aritmetica|mult|multi2|sR:2:sP|Cout~0_combout\ & (\inst|REG_B\(2) & (\inst|REG_A\(1) & \inst|alu1|unidad_aritmetica|mult|multi1|sR:3:sP|Suma~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|multi2|sR:2:sP|Cout~0_combout\,
	datab => \inst|REG_B\(2),
	datac => \inst|REG_A\(1),
	datad => \inst|alu1|unidad_aritmetica|mult|multi1|sR:3:sP|Suma~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi2|sR:3:sP|Cout~0_combout\);

-- Location: LCCOMB_X13_Y15_N6
\inst|alu1|unidad_aritmetica|mult|multi2|sR:4:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi2|sR:4:sP|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi1|sR:4:sP|Suma~0_combout\ & ((\inst|alu1|unidad_aritmetica|mult|multi2|sR:3:sP|Cout~0_combout\) # ((\inst|REG_A\(2) & \inst|REG_B\(2))))) # 
-- (!\inst|alu1|unidad_aritmetica|mult|multi1|sR:4:sP|Suma~0_combout\ & (\inst|REG_A\(2) & (\inst|REG_B\(2) & \inst|alu1|unidad_aritmetica|mult|multi2|sR:3:sP|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(2),
	datab => \inst|REG_B\(2),
	datac => \inst|alu1|unidad_aritmetica|mult|multi1|sR:4:sP|Suma~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|mult|multi2|sR:3:sP|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi2|sR:4:sP|Cout~0_combout\);

-- Location: LCCOMB_X12_Y15_N8
\inst|alu1|unidad_aritmetica|mult|multi2|sR:5:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi2|sR:5:sP|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|mult|multi1|sR:5:sP|Suma~0_combout\ $ (\inst|alu1|unidad_aritmetica|mult|multi2|sR:4:sP|Cout~0_combout\ $ (((\inst|REG_B\(2) & \inst|REG_A\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|multi1|sR:5:sP|Suma~0_combout\,
	datab => \inst|REG_B\(2),
	datac => \inst|REG_A\(3),
	datad => \inst|alu1|unidad_aritmetica|mult|multi2|sR:4:sP|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi2|sR:5:sP|Suma~0_combout\);

-- Location: LCCOMB_X12_Y15_N10
\inst|alu1|unidad_aritmetica|mult|multi2|sR:4:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi2|sR:4:sP|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|mult|multi1|sR:4:sP|Suma~0_combout\ $ (\inst|alu1|unidad_aritmetica|mult|multi2|sR:3:sP|Cout~0_combout\ $ (((\inst|REG_A\(2) & \inst|REG_B\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(2),
	datab => \inst|REG_B\(2),
	datac => \inst|alu1|unidad_aritmetica|mult|multi1|sR:4:sP|Suma~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|mult|multi2|sR:3:sP|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi2|sR:4:sP|Suma~0_combout\);

-- Location: LCCOMB_X13_Y15_N18
\inst|alu1|unidad_aritmetica|mult|multi3|sR:3:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi3|sR:3:sP|Cout~0_combout\ = (\inst|REG_A\(0) & (\inst|REG_B\(3) & \inst|alu1|unidad_aritmetica|mult|multi2|sR:3:sP|Suma~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|REG_A\(0),
	datac => \inst|REG_B\(3),
	datad => \inst|alu1|unidad_aritmetica|mult|multi2|sR:3:sP|Suma~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi3|sR:3:sP|Cout~0_combout\);

-- Location: LCCOMB_X12_Y12_N24
\inst|alu1|unidad_aritmetica|mult|multi3|sR:4:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi3|sR:4:sP|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi2|sR:4:sP|Suma~0_combout\ & ((\inst|alu1|unidad_aritmetica|mult|multi3|sR:3:sP|Cout~0_combout\) # ((\inst|REG_A\(1) & \inst|REG_B\(3))))) # 
-- (!\inst|alu1|unidad_aritmetica|mult|multi2|sR:4:sP|Suma~0_combout\ & (\inst|REG_A\(1) & (\inst|REG_B\(3) & \inst|alu1|unidad_aritmetica|mult|multi3|sR:3:sP|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(1),
	datab => \inst|REG_B\(3),
	datac => \inst|alu1|unidad_aritmetica|mult|multi2|sR:4:sP|Suma~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|mult|multi3|sR:3:sP|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi3|sR:4:sP|Cout~0_combout\);

-- Location: LCCOMB_X12_Y12_N16
\inst|alu1|unidad_aritmetica|mult|multi3|sR:5:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi3|sR:5:sP|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|mult|multi2|sR:5:sP|Suma~0_combout\ $ (\inst|alu1|unidad_aritmetica|mult|multi3|sR:4:sP|Cout~0_combout\ $ (((\inst|REG_B\(3) & \inst|REG_A\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|multi2|sR:5:sP|Suma~0_combout\,
	datab => \inst|REG_B\(3),
	datac => \inst|REG_A\(2),
	datad => \inst|alu1|unidad_aritmetica|mult|multi3|sR:4:sP|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi3|sR:5:sP|Suma~0_combout\);

-- Location: LCCOMB_X12_Y12_N30
\inst|alu1|unidad_aritmetica|mult|multi4|sR:5:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi4|sR:5:sP|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi4|sR:4:sP|Cout~0_combout\ & ((\inst|alu1|unidad_aritmetica|mult|multi3|sR:5:sP|Suma~0_combout\) # ((\inst|REG_A\(1) & \inst|REG_B\(4))))) # 
-- (!\inst|alu1|unidad_aritmetica|mult|multi4|sR:4:sP|Cout~0_combout\ & (\inst|REG_A\(1) & (\inst|REG_B\(4) & \inst|alu1|unidad_aritmetica|mult|multi3|sR:5:sP|Suma~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(1),
	datab => \inst|alu1|unidad_aritmetica|mult|multi4|sR:4:sP|Cout~0_combout\,
	datac => \inst|REG_B\(4),
	datad => \inst|alu1|unidad_aritmetica|mult|multi3|sR:5:sP|Suma~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi4|sR:5:sP|Cout~0_combout\);

-- Location: LCCOMB_X12_Y15_N26
\inst|alu1|unidad_aritmetica|mult|multi2|sR:5:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi2|sR:5:sP|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi1|sR:5:sP|Suma~0_combout\ & ((\inst|alu1|unidad_aritmetica|mult|multi2|sR:4:sP|Cout~0_combout\) # ((\inst|REG_B\(2) & \inst|REG_A\(3))))) # 
-- (!\inst|alu1|unidad_aritmetica|mult|multi1|sR:5:sP|Suma~0_combout\ & (\inst|REG_B\(2) & (\inst|REG_A\(3) & \inst|alu1|unidad_aritmetica|mult|multi2|sR:4:sP|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|multi1|sR:5:sP|Suma~0_combout\,
	datab => \inst|REG_B\(2),
	datac => \inst|REG_A\(3),
	datad => \inst|alu1|unidad_aritmetica|mult|multi2|sR:4:sP|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi2|sR:5:sP|Cout~0_combout\);

-- Location: LCCOMB_X12_Y15_N16
\inst|alu1|unidad_aritmetica|mult|multi1|sR:5:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi1|sR:5:sP|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi1|sR:4:sP|Cout~0_combout\ & ((\inst|alu1|unidad_aritmetica|mult|inter\(5)) # ((\inst|REG_B\(1) & \inst|REG_A\(4))))) # 
-- (!\inst|alu1|unidad_aritmetica|mult|multi1|sR:4:sP|Cout~0_combout\ & (\inst|REG_B\(1) & (\inst|REG_A\(4) & \inst|alu1|unidad_aritmetica|mult|inter\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|multi1|sR:4:sP|Cout~0_combout\,
	datab => \inst|REG_B\(1),
	datac => \inst|REG_A\(4),
	datad => \inst|alu1|unidad_aritmetica|mult|inter\(5),
	combout => \inst|alu1|unidad_aritmetica|mult|multi1|sR:5:sP|Cout~0_combout\);

-- Location: LCCOMB_X12_Y15_N0
\inst|alu1|unidad_aritmetica|mult|inter[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|inter\(6) = (\inst|REG_B\(0) & \inst|REG_A\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(0),
	datad => \inst|REG_A\(6),
	combout => \inst|alu1|unidad_aritmetica|mult|inter\(6));

-- Location: LCCOMB_X12_Y15_N28
\inst|alu1|unidad_aritmetica|mult|multi1|sR:6:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi1|sR:6:sP|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|mult|multi1|sR:5:sP|Cout~0_combout\ $ (\inst|alu1|unidad_aritmetica|mult|inter\(6) $ (((\inst|REG_B\(1) & \inst|REG_A\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(1),
	datab => \inst|alu1|unidad_aritmetica|mult|multi1|sR:5:sP|Cout~0_combout\,
	datac => \inst|REG_A\(5),
	datad => \inst|alu1|unidad_aritmetica|mult|inter\(6),
	combout => \inst|alu1|unidad_aritmetica|mult|multi1|sR:6:sP|Suma~0_combout\);

-- Location: LCCOMB_X11_Y12_N8
\inst|alu1|unidad_aritmetica|mult|multi2|sR:6:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi2|sR:6:sP|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|mult|multi2|sR:5:sP|Cout~0_combout\ $ (\inst|alu1|unidad_aritmetica|mult|multi1|sR:6:sP|Suma~0_combout\ $ (((\inst|REG_B\(2) & \inst|REG_A\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(2),
	datab => \inst|alu1|unidad_aritmetica|mult|multi2|sR:5:sP|Cout~0_combout\,
	datac => \inst|REG_A\(4),
	datad => \inst|alu1|unidad_aritmetica|mult|multi1|sR:6:sP|Suma~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi2|sR:6:sP|Suma~0_combout\);

-- Location: LCCOMB_X12_Y12_N6
\inst|alu1|unidad_aritmetica|mult|multi3|sR:5:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi3|sR:5:sP|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi2|sR:5:sP|Suma~0_combout\ & ((\inst|alu1|unidad_aritmetica|mult|multi3|sR:4:sP|Cout~0_combout\) # ((\inst|REG_A\(2) & \inst|REG_B\(3))))) # 
-- (!\inst|alu1|unidad_aritmetica|mult|multi2|sR:5:sP|Suma~0_combout\ & (\inst|alu1|unidad_aritmetica|mult|multi3|sR:4:sP|Cout~0_combout\ & (\inst|REG_A\(2) & \inst|REG_B\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|multi2|sR:5:sP|Suma~0_combout\,
	datab => \inst|alu1|unidad_aritmetica|mult|multi3|sR:4:sP|Cout~0_combout\,
	datac => \inst|REG_A\(2),
	datad => \inst|REG_B\(3),
	combout => \inst|alu1|unidad_aritmetica|mult|multi3|sR:5:sP|Cout~0_combout\);

-- Location: LCCOMB_X11_Y12_N10
\inst|alu1|unidad_aritmetica|mult|multi3|sR:6:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi3|sR:6:sP|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|mult|multi2|sR:6:sP|Suma~0_combout\ $ (\inst|alu1|unidad_aritmetica|mult|multi3|sR:5:sP|Cout~0_combout\ $ (((\inst|REG_B\(3) & \inst|REG_A\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(3),
	datab => \inst|REG_A\(3),
	datac => \inst|alu1|unidad_aritmetica|mult|multi2|sR:6:sP|Suma~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|mult|multi3|sR:5:sP|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi3|sR:6:sP|Suma~0_combout\);

-- Location: LCCOMB_X12_Y12_N2
\inst|alu1|unidad_aritmetica|mult|multi4|sR:6:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi4|sR:6:sP|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|mult|multi4|sR:5:sP|Cout~0_combout\ $ (\inst|alu1|unidad_aritmetica|mult|multi3|sR:6:sP|Suma~0_combout\ $ (((\inst|REG_B\(4) & \inst|REG_A\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|multi4|sR:5:sP|Cout~0_combout\,
	datab => \inst|REG_B\(4),
	datac => \inst|REG_A\(2),
	datad => \inst|alu1|unidad_aritmetica|mult|multi3|sR:6:sP|Suma~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi4|sR:6:sP|Suma~0_combout\);

-- Location: LCCOMB_X12_Y12_N18
\inst|alu1|unidad_aritmetica|mult|multi5|sR:6:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi5|sR:6:sP|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|mult|multi5|sR:5:sP|Cout~0_combout\ $ (\inst|alu1|unidad_aritmetica|mult|multi4|sR:6:sP|Suma~0_combout\ $ (((\inst|REG_B\(5) & \inst|REG_A\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(5),
	datab => \inst|REG_A\(1),
	datac => \inst|alu1|unidad_aritmetica|mult|multi5|sR:5:sP|Cout~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|mult|multi4|sR:6:sP|Suma~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi5|sR:6:sP|Suma~0_combout\);

-- Location: LCCOMB_X14_Y12_N16
\inst|alu1|unidad_aritmetica|mult|multi6|sR:6:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi6|sR:6:sP|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|mult|multi5|sR:6:sP|Suma~0_combout\ $ (((\inst|REG_B\(6) & \inst|REG_A\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|multi5|sR:6:sP|Suma~0_combout\,
	datab => \inst|REG_B\(6),
	datad => \inst|REG_A\(0),
	combout => \inst|alu1|unidad_aritmetica|mult|multi6|sR:6:sP|Suma~0_combout\);

-- Location: LCCOMB_X16_Y12_N22
\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~15_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~14_combout\) # ((!\inst|alu1|Mux16~0_combout\ & !\inst|alu1|unidad_aritmetica|mult|multi6|sR:6:sP|Suma~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~14_combout\,
	datac => \inst|alu1|Mux16~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|mult|multi6|sR:6:sP|Suma~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~15_combout\);

-- Location: LCCOMB_X17_Y8_N8
\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~33_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~21_combout\ & (!\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~32\)) # 
-- (!\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~21_combout\ & ((\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~32\) # (GND)))
-- \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~34\ = CARRY((!\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~32\) # (!\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~21_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~32\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~33_combout\,
	cout => \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~34\);

-- Location: LCCOMB_X17_Y8_N10
\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~35_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~19_combout\ & (\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~34\ $ (GND))) # 
-- (!\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~19_combout\ & (!\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~34\ & VCC))
-- \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~36\ = CARRY((\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~19_combout\ & !\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~19_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~34\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~35_combout\,
	cout => \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~36\);

-- Location: LCCOMB_X17_Y8_N12
\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~37_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~17_combout\ & (!\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~36\)) # 
-- (!\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~17_combout\ & ((\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~36\) # (GND)))
-- \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~38\ = CARRY((!\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~36\) # (!\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~17_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~36\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~37_combout\,
	cout => \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~38\);

-- Location: LCCOMB_X17_Y8_N14
\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~39_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~15_combout\ & (\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~38\ $ (GND))) # 
-- (!\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~15_combout\ & (!\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~38\ & VCC))
-- \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~40\ = CARRY((\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~15_combout\ & !\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~15_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~38\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~39_combout\,
	cout => \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~40\);

-- Location: LCCOMB_X12_Y14_N12
\inst|alu1|unidad_aritmetica|divi|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan0~3_combout\ = (\inst|REG_B\(14)) # ((\inst|REG_B\(13)) # ((\inst|REG_B\(12)) # (\inst|REG_B\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(14),
	datab => \inst|REG_B\(13),
	datac => \inst|REG_B\(12),
	datad => \inst|REG_B\(10),
	combout => \inst|alu1|unidad_aritmetica|divi|LessThan0~3_combout\);

-- Location: LCCOMB_X12_Y14_N20
\inst|alu1|unidad_aritmetica|divi|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan0~1_combout\ = (\inst|REG_B\(2)) # ((\inst|REG_B\(3)) # ((\inst|REG_B\(4)) # (\inst|REG_B\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(2),
	datab => \inst|REG_B\(3),
	datac => \inst|REG_B\(4),
	datad => \inst|REG_B\(5),
	combout => \inst|alu1|unidad_aritmetica|divi|LessThan0~1_combout\);

-- Location: LCCOMB_X12_Y14_N22
\inst|alu1|unidad_aritmetica|divi|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan0~2_combout\ = (\inst|REG_B\(7)) # ((\inst|REG_B\(6)) # ((\inst|REG_B\(8)) # (\inst|REG_B\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(7),
	datab => \inst|REG_B\(6),
	datac => \inst|REG_B\(8),
	datad => \inst|REG_B\(9),
	combout => \inst|alu1|unidad_aritmetica|divi|LessThan0~2_combout\);

-- Location: LCCOMB_X11_Y14_N10
\inst|alu1|unidad_aritmetica|divi|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan0~0_combout\ = (\inst|REG_B\(1)) # ((\inst|REG_B\(11)) # ((!\inst|REG_A\(7) & \inst|REG_B\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(7),
	datab => \inst|REG_B\(1),
	datac => \inst|REG_B\(0),
	datad => \inst|REG_B\(11),
	combout => \inst|alu1|unidad_aritmetica|divi|LessThan0~0_combout\);

-- Location: LCCOMB_X12_Y14_N30
\inst|alu1|unidad_aritmetica|divi|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan0~4_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan0~3_combout\) # ((\inst|alu1|unidad_aritmetica|divi|LessThan0~1_combout\) # ((\inst|alu1|unidad_aritmetica|divi|LessThan0~2_combout\) # 
-- (\inst|alu1|unidad_aritmetica|divi|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|LessThan0~3_combout\,
	datab => \inst|alu1|unidad_aritmetica|divi|LessThan0~1_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|LessThan0~2_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan0~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|LessThan0~4_combout\);

-- Location: LCCOMB_X13_Y14_N0
\inst|alu1|unidad_aritmetica|divi|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add0~0_combout\ = (\inst|REG_B\(0) & (\inst|REG_A\(7) $ (VCC))) # (!\inst|REG_B\(0) & ((\inst|REG_A\(7)) # (GND)))
-- \inst|alu1|unidad_aritmetica|divi|Add0~1\ = CARRY((\inst|REG_A\(7)) # (!\inst|REG_B\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(0),
	datab => \inst|REG_A\(7),
	datad => VCC,
	combout => \inst|alu1|unidad_aritmetica|divi|Add0~0_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add0~1\);

-- Location: LCCOMB_X13_Y14_N2
\inst|alu1|unidad_aritmetica|divi|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add0~2_combout\ = (\inst|REG_B\(1) & ((\inst|alu1|unidad_aritmetica|divi|Add0~1\) # (GND))) # (!\inst|REG_B\(1) & (!\inst|alu1|unidad_aritmetica|divi|Add0~1\))
-- \inst|alu1|unidad_aritmetica|divi|Add0~3\ = CARRY((\inst|REG_B\(1)) # (!\inst|alu1|unidad_aritmetica|divi|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(1),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add0~1\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add0~2_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add0~3\);

-- Location: LCCOMB_X13_Y14_N4
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

-- Location: LCCOMB_X13_Y14_N6
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

-- Location: LCCOMB_X13_Y14_N8
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

-- Location: LCCOMB_X13_Y14_N10
\inst|alu1|unidad_aritmetica|divi|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add0~10_combout\ = (\inst|REG_B\(5) & ((\inst|alu1|unidad_aritmetica|divi|Add0~9\) # (GND))) # (!\inst|REG_B\(5) & (!\inst|alu1|unidad_aritmetica|divi|Add0~9\))
-- \inst|alu1|unidad_aritmetica|divi|Add0~11\ = CARRY((\inst|REG_B\(5)) # (!\inst|alu1|unidad_aritmetica|divi|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(5),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add0~9\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add0~10_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add0~11\);

-- Location: LCCOMB_X13_Y14_N12
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

-- Location: LCCOMB_X13_Y14_N14
\inst|alu1|unidad_aritmetica|divi|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add0~14_combout\ = (\inst|REG_B\(7) & ((\inst|alu1|unidad_aritmetica|divi|Add0~13\) # (GND))) # (!\inst|REG_B\(7) & (!\inst|alu1|unidad_aritmetica|divi|Add0~13\))
-- \inst|alu1|unidad_aritmetica|divi|Add0~15\ = CARRY((\inst|REG_B\(7)) # (!\inst|alu1|unidad_aritmetica|divi|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|REG_B\(7),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add0~13\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add0~14_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add0~15\);

-- Location: LCCOMB_X13_Y14_N16
\inst|alu1|unidad_aritmetica|divi|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add0~16_combout\ = (\inst|REG_B\(8) & (!\inst|alu1|unidad_aritmetica|divi|Add0~15\ & VCC)) # (!\inst|REG_B\(8) & (\inst|alu1|unidad_aritmetica|divi|Add0~15\ $ (GND)))
-- \inst|alu1|unidad_aritmetica|divi|Add0~17\ = CARRY((!\inst|REG_B\(8) & !\inst|alu1|unidad_aritmetica|divi|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|REG_B\(8),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add0~15\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add0~16_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add0~17\);

-- Location: LCCOMB_X13_Y14_N18
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

-- Location: LCCOMB_X13_Y14_N20
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

-- Location: LCCOMB_X13_Y14_N22
\inst|alu1|unidad_aritmetica|divi|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add0~22_combout\ = (\inst|REG_B\(11) & ((\inst|alu1|unidad_aritmetica|divi|Add0~21\) # (GND))) # (!\inst|REG_B\(11) & (!\inst|alu1|unidad_aritmetica|divi|Add0~21\))
-- \inst|alu1|unidad_aritmetica|divi|Add0~23\ = CARRY((\inst|REG_B\(11)) # (!\inst|alu1|unidad_aritmetica|divi|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(11),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add0~21\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add0~22_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add0~23\);

-- Location: LCCOMB_X13_Y14_N24
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

-- Location: LCCOMB_X13_Y14_N26
\inst|alu1|unidad_aritmetica|divi|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add0~26_combout\ = \inst|REG_B\(13) $ (!\inst|alu1|unidad_aritmetica|divi|Add0~25\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|REG_B\(13),
	cin => \inst|alu1|unidad_aritmetica|divi|Add0~25\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add0~26_combout\);

-- Location: LCCOMB_X13_Y13_N30
\inst|alu1|unidad_aritmetica|divi|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add0~28_combout\ = (!\inst|alu1|unidad_aritmetica|divi|LessThan0~4_combout\ & \inst|alu1|unidad_aritmetica|divi|Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|alu1|unidad_aritmetica|divi|LessThan0~4_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|Add0~26_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add0~28_combout\);

-- Location: LCCOMB_X13_Y14_N28
\inst|alu1|unidad_aritmetica|divi|Add0~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add0~29_combout\ = (!\inst|alu1|unidad_aritmetica|divi|LessThan0~4_combout\ & \inst|alu1|unidad_aritmetica|divi|Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|unidad_aritmetica|divi|LessThan0~4_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|Add0~24_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add0~29_combout\);

-- Location: LCCOMB_X13_Y14_N30
\inst|alu1|unidad_aritmetica|divi|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add0~30_combout\ = (\inst|alu1|unidad_aritmetica|divi|Add0~22_combout\ & !\inst|alu1|unidad_aritmetica|divi|LessThan0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add0~22_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan0~4_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add0~30_combout\);

-- Location: LCCOMB_X14_Y13_N28
\inst|alu1|unidad_aritmetica|divi|Add0~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add0~31_combout\ = (!\inst|alu1|unidad_aritmetica|divi|LessThan0~4_combout\ & \inst|alu1|unidad_aritmetica|divi|Add0~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|LessThan0~4_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|Add0~20_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add0~31_combout\);

-- Location: LCCOMB_X12_Y13_N8
\inst|alu1|unidad_aritmetica|divi|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add0~32_combout\ = (!\inst|alu1|unidad_aritmetica|divi|LessThan0~4_combout\ & \inst|alu1|unidad_aritmetica|divi|Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|alu1|unidad_aritmetica|divi|LessThan0~4_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|Add0~18_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add0~32_combout\);

-- Location: LCCOMB_X12_Y13_N14
\inst|alu1|unidad_aritmetica|divi|Add0~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add0~33_combout\ = (!\inst|alu1|unidad_aritmetica|divi|LessThan0~4_combout\ & \inst|alu1|unidad_aritmetica|divi|Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|LessThan0~4_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|Add0~16_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add0~33_combout\);

-- Location: LCCOMB_X14_Y14_N18
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

-- Location: LCCOMB_X14_Y14_N24
\inst|alu1|unidad_aritmetica|divi|Add0~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add0~35_combout\ = (!\inst|alu1|unidad_aritmetica|divi|LessThan0~4_combout\ & \inst|alu1|unidad_aritmetica|divi|Add0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|alu1|unidad_aritmetica|divi|LessThan0~4_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|Add0~12_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add0~35_combout\);

-- Location: LCCOMB_X12_Y13_N16
\inst|alu1|unidad_aritmetica|divi|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add0~36_combout\ = (!\inst|alu1|unidad_aritmetica|divi|LessThan0~4_combout\ & \inst|alu1|unidad_aritmetica|divi|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|LessThan0~4_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|Add0~10_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add0~36_combout\);

-- Location: LCCOMB_X12_Y13_N26
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

-- Location: LCCOMB_X12_Y13_N24
\inst|alu1|unidad_aritmetica|divi|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add0~38_combout\ = (!\inst|alu1|unidad_aritmetica|divi|LessThan0~4_combout\ & \inst|alu1|unidad_aritmetica|divi|Add0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|alu1|unidad_aritmetica|divi|LessThan0~4_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|Add0~6_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add0~38_combout\);

-- Location: LCCOMB_X12_Y13_N6
\inst|alu1|unidad_aritmetica|divi|Add0~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add0~39_combout\ = (!\inst|alu1|unidad_aritmetica|divi|LessThan0~4_combout\ & \inst|alu1|unidad_aritmetica|divi|Add0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|LessThan0~4_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|Add0~4_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add0~39_combout\);

-- Location: LCCOMB_X12_Y13_N20
\inst|alu1|unidad_aritmetica|divi|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add0~40_combout\ = (!\inst|alu1|unidad_aritmetica|divi|LessThan0~4_combout\ & \inst|alu1|unidad_aritmetica|divi|Add0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|LessThan0~4_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|Add0~2_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add0~40_combout\);

-- Location: LCCOMB_X12_Y13_N10
\inst|alu1|unidad_aritmetica|divi|Add0~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add0~41_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan0~4_combout\ & (\inst|REG_A\(7))) # (!\inst|alu1|unidad_aritmetica|divi|LessThan0~4_combout\ & ((\inst|alu1|unidad_aritmetica|divi|Add0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|REG_A\(7),
	datac => \inst|alu1|unidad_aritmetica|divi|LessThan0~4_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|Add0~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add0~41_combout\);

-- Location: LCCOMB_X13_Y13_N0
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

-- Location: LCCOMB_X13_Y13_N2
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

-- Location: LCCOMB_X13_Y13_N4
\inst|alu1|unidad_aritmetica|divi|LessThan1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan1~5_cout\ = CARRY((\inst|REG_B\(2) & ((!\inst|alu1|unidad_aritmetica|divi|LessThan1~3_cout\) # (!\inst|alu1|unidad_aritmetica|divi|Add0~40_combout\))) # (!\inst|REG_B\(2) & 
-- (!\inst|alu1|unidad_aritmetica|divi|Add0~40_combout\ & !\inst|alu1|unidad_aritmetica|divi|LessThan1~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(2),
	datab => \inst|alu1|unidad_aritmetica|divi|Add0~40_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan1~3_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan1~5_cout\);

-- Location: LCCOMB_X13_Y13_N6
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

-- Location: LCCOMB_X13_Y13_N8
\inst|alu1|unidad_aritmetica|divi|LessThan1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan1~9_cout\ = CARRY((\inst|REG_B\(4) & ((!\inst|alu1|unidad_aritmetica|divi|LessThan1~7_cout\) # (!\inst|alu1|unidad_aritmetica|divi|Add0~38_combout\))) # (!\inst|REG_B\(4) & 
-- (!\inst|alu1|unidad_aritmetica|divi|Add0~38_combout\ & !\inst|alu1|unidad_aritmetica|divi|LessThan1~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(4),
	datab => \inst|alu1|unidad_aritmetica|divi|Add0~38_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan1~7_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan1~9_cout\);

-- Location: LCCOMB_X13_Y13_N10
\inst|alu1|unidad_aritmetica|divi|LessThan1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan1~11_cout\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add0~37_combout\ & ((!\inst|alu1|unidad_aritmetica|divi|LessThan1~9_cout\) # (!\inst|REG_B\(5)))) # (!\inst|alu1|unidad_aritmetica|divi|Add0~37_combout\ & 
-- (!\inst|REG_B\(5) & !\inst|alu1|unidad_aritmetica|divi|LessThan1~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add0~37_combout\,
	datab => \inst|REG_B\(5),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan1~9_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan1~11_cout\);

-- Location: LCCOMB_X13_Y13_N12
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

-- Location: LCCOMB_X13_Y13_N14
\inst|alu1|unidad_aritmetica|divi|LessThan1~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan1~15_cout\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add0~35_combout\ & ((!\inst|alu1|unidad_aritmetica|divi|LessThan1~13_cout\) # (!\inst|REG_B\(7)))) # (!\inst|alu1|unidad_aritmetica|divi|Add0~35_combout\ & 
-- (!\inst|REG_B\(7) & !\inst|alu1|unidad_aritmetica|divi|LessThan1~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add0~35_combout\,
	datab => \inst|REG_B\(7),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan1~13_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan1~15_cout\);

-- Location: LCCOMB_X13_Y13_N16
\inst|alu1|unidad_aritmetica|divi|LessThan1~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan1~17_cout\ = CARRY((\inst|REG_B\(8) & ((!\inst|alu1|unidad_aritmetica|divi|LessThan1~15_cout\) # (!\inst|alu1|unidad_aritmetica|divi|Add0~34_combout\))) # (!\inst|REG_B\(8) & 
-- (!\inst|alu1|unidad_aritmetica|divi|Add0~34_combout\ & !\inst|alu1|unidad_aritmetica|divi|LessThan1~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(8),
	datab => \inst|alu1|unidad_aritmetica|divi|Add0~34_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan1~15_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan1~17_cout\);

-- Location: LCCOMB_X13_Y13_N18
\inst|alu1|unidad_aritmetica|divi|LessThan1~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan1~19_cout\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add0~33_combout\ & ((!\inst|alu1|unidad_aritmetica|divi|LessThan1~17_cout\) # (!\inst|REG_B\(9)))) # (!\inst|alu1|unidad_aritmetica|divi|Add0~33_combout\ & 
-- (!\inst|REG_B\(9) & !\inst|alu1|unidad_aritmetica|divi|LessThan1~17_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add0~33_combout\,
	datab => \inst|REG_B\(9),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan1~17_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan1~19_cout\);

-- Location: LCCOMB_X13_Y13_N20
\inst|alu1|unidad_aritmetica|divi|LessThan1~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan1~21_cout\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add0~32_combout\ & (\inst|REG_B\(10) & !\inst|alu1|unidad_aritmetica|divi|LessThan1~19_cout\)) # (!\inst|alu1|unidad_aritmetica|divi|Add0~32_combout\ & 
-- ((\inst|REG_B\(10)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan1~19_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add0~32_combout\,
	datab => \inst|REG_B\(10),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan1~19_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan1~21_cout\);

-- Location: LCCOMB_X13_Y13_N22
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

-- Location: LCCOMB_X13_Y13_N24
\inst|alu1|unidad_aritmetica|divi|LessThan1~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan1~25_cout\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add0~30_combout\ & (\inst|REG_B\(12) & !\inst|alu1|unidad_aritmetica|divi|LessThan1~23_cout\)) # (!\inst|alu1|unidad_aritmetica|divi|Add0~30_combout\ & 
-- ((\inst|REG_B\(12)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan1~23_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add0~30_combout\,
	datab => \inst|REG_B\(12),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan1~23_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan1~25_cout\);

-- Location: LCCOMB_X13_Y13_N26
\inst|alu1|unidad_aritmetica|divi|LessThan1~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan1~27_cout\ = CARRY((\inst|REG_B\(13) & (\inst|alu1|unidad_aritmetica|divi|Add0~29_combout\ & !\inst|alu1|unidad_aritmetica|divi|LessThan1~25_cout\)) # (!\inst|REG_B\(13) & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add0~29_combout\) # (!\inst|alu1|unidad_aritmetica|divi|LessThan1~25_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(13),
	datab => \inst|alu1|unidad_aritmetica|divi|Add0~29_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan1~25_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan1~27_cout\);

-- Location: LCCOMB_X13_Y13_N28
\inst|alu1|unidad_aritmetica|divi|LessThan1~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan1~28_combout\ = (\inst|alu1|unidad_aritmetica|divi|Add0~28_combout\ & (\inst|REG_B\(14) & !\inst|alu1|unidad_aritmetica|divi|LessThan1~27_cout\)) # (!\inst|alu1|unidad_aritmetica|divi|Add0~28_combout\ & 
-- ((\inst|REG_B\(14)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan1~27_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add0~28_combout\,
	datab => \inst|REG_B\(14),
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan1~27_cout\,
	combout => \inst|alu1|unidad_aritmetica|divi|LessThan1~28_combout\);

-- Location: LCCOMB_X16_Y12_N8
\inst|alu1|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux9~0_combout\ = (\inst|alu1|Mux17~0_combout\ & (((\inst|alu1|Mux16~0_combout\)))) # (!\inst|alu1|Mux17~0_combout\ & ((\inst|alu1|Mux16~0_combout\ & ((\inst|alu1|unidad_aritmetica|suma|sR:6:sP|Suma~0_combout\))) # (!\inst|alu1|Mux16~0_combout\ 
-- & (\inst|alu1|unidad_aritmetica|mult|multi6|sR:6:sP|Suma~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|multi6|sR:6:sP|Suma~0_combout\,
	datab => \inst|alu1|Mux17~0_combout\,
	datac => \inst|alu1|Mux16~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|suma|sR:6:sP|Suma~0_combout\,
	combout => \inst|alu1|Mux9~0_combout\);

-- Location: LCCOMB_X16_Y12_N2
\inst|alu1|Mux9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux9~1_combout\ = (\inst|alu1|Mux9~0_combout\ & (((!\inst|alu1|unidad_aritmetica|resta|sR:6:sP|Suma~0_combout\) # (!\inst|alu1|Mux17~0_combout\)))) # (!\inst|alu1|Mux9~0_combout\ & (!\inst|alu1|unidad_aritmetica|divi|LessThan1~28_combout\ & 
-- (\inst|alu1|Mux17~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|LessThan1~28_combout\,
	datab => \inst|alu1|Mux9~0_combout\,
	datac => \inst|alu1|Mux17~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|resta|sR:6:sP|Suma~0_combout\,
	combout => \inst|alu1|Mux9~1_combout\);

-- Location: LCCOMB_X18_Y8_N20
\inst|alu1|Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux12~0_combout\ = (\inst|alu1|Mux2~3_combout\ & ((\inst|alu1|Mux2~7_combout\) # ((\inst|alu1|Mux2~4_combout\)))) # (!\inst|alu1|Mux2~3_combout\ & (((\inst|alu1|Mux2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux2~7_combout\,
	datab => \inst|alu1|Mux2~2_combout\,
	datac => \inst|alu1|Mux2~4_combout\,
	datad => \inst|alu1|Mux2~3_combout\,
	combout => \inst|alu1|Mux12~0_combout\);

-- Location: LCCOMB_X21_Y9_N4
\inst|alu1|unidad_logica|aux[3]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|aux[3]~19_combout\ = (\inst|REG_A\(3) & (!\inst|alu1|unidad_logica|aux[2]~18\ & VCC)) # (!\inst|REG_A\(3) & (\inst|alu1|unidad_logica|aux[2]~18\ $ (GND)))
-- \inst|alu1|unidad_logica|aux[3]~20\ = CARRY((!\inst|REG_A\(3) & !\inst|alu1|unidad_logica|aux[2]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(3),
	datad => VCC,
	cin => \inst|alu1|unidad_logica|aux[2]~18\,
	combout => \inst|alu1|unidad_logica|aux[3]~19_combout\,
	cout => \inst|alu1|unidad_logica|aux[3]~20\);

-- Location: LCCOMB_X21_Y9_N6
\inst|alu1|unidad_logica|aux[4]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|aux[4]~21_combout\ = (\inst|REG_A\(4) & ((\inst|alu1|unidad_logica|aux[3]~20\) # (GND))) # (!\inst|REG_A\(4) & (!\inst|alu1|unidad_logica|aux[3]~20\))
-- \inst|alu1|unidad_logica|aux[4]~22\ = CARRY((\inst|REG_A\(4)) # (!\inst|alu1|unidad_logica|aux[3]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(4),
	datad => VCC,
	cin => \inst|alu1|unidad_logica|aux[3]~20\,
	combout => \inst|alu1|unidad_logica|aux[4]~21_combout\,
	cout => \inst|alu1|unidad_logica|aux[4]~22\);

-- Location: LCCOMB_X21_Y9_N8
\inst|alu1|unidad_logica|aux[5]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|aux[5]~23_combout\ = (\inst|REG_A\(5) & (!\inst|alu1|unidad_logica|aux[4]~22\ & VCC)) # (!\inst|REG_A\(5) & (\inst|alu1|unidad_logica|aux[4]~22\ $ (GND)))
-- \inst|alu1|unidad_logica|aux[5]~24\ = CARRY((!\inst|REG_A\(5) & !\inst|alu1|unidad_logica|aux[4]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(5),
	datad => VCC,
	cin => \inst|alu1|unidad_logica|aux[4]~22\,
	combout => \inst|alu1|unidad_logica|aux[5]~23_combout\,
	cout => \inst|alu1|unidad_logica|aux[5]~24\);

-- Location: LCCOMB_X21_Y9_N10
\inst|alu1|unidad_logica|aux[6]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|aux[6]~25_combout\ = (\inst|REG_A\(6) & ((\inst|alu1|unidad_logica|aux[5]~24\) # (GND))) # (!\inst|REG_A\(6) & (!\inst|alu1|unidad_logica|aux[5]~24\))
-- \inst|alu1|unidad_logica|aux[6]~26\ = CARRY((\inst|REG_A\(6)) # (!\inst|alu1|unidad_logica|aux[5]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(6),
	datad => VCC,
	cin => \inst|alu1|unidad_logica|aux[5]~24\,
	combout => \inst|alu1|unidad_logica|aux[6]~25_combout\,
	cout => \inst|alu1|unidad_logica|aux[6]~26\);

-- Location: FF_X21_Y9_N11
\inst|alu1|unidad_logica|aux[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|alu1|unidad_logica|aux[6]~25_combout\,
	ena => \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|unidad_logica|aux\(6));

-- Location: LCCOMB_X21_Y11_N6
\inst|alu1|unidad_aritmetica|mult|inter[54]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|inter\(54) = (\inst|REG_B\(6) & \inst|REG_A\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|REG_B\(6),
	datad => \inst|REG_A\(6),
	combout => \inst|alu1|unidad_aritmetica|mult|inter\(54));

-- Location: LCCOMB_X19_Y10_N10
\inst|alu1|unidad_logica|salida_aux~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|salida_aux~18_combout\ = (\inst|REG_A\(6) & (((\inst|alu1|Mux16~0_combout\)))) # (!\inst|REG_A\(6) & (((\inst|REG_B\(6) & \inst|alu1|Mux16~0_combout\)) # (!\inst|alu1|Mux17~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(6),
	datab => \inst|REG_B\(6),
	datac => \inst|alu1|Mux16~0_combout\,
	datad => \inst|alu1|Mux17~0_combout\,
	combout => \inst|alu1|unidad_logica|salida_aux~18_combout\);

-- Location: LCCOMB_X19_Y9_N14
\inst|alu1|unidad_logica|salida_aux~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|salida_aux~19_combout\ = (\inst|alu1|unidad_logica|salida_aux[14]~44_combout\ & ((\inst|alu1|unidad_logica|salida_aux~18_combout\ & ((\inst|alu1|unidad_aritmetica|mult|inter\(54)))) # 
-- (!\inst|alu1|unidad_logica|salida_aux~18_combout\ & (\inst|alu1|unidad_logica|aux\(6))))) # (!\inst|alu1|unidad_logica|salida_aux[14]~44_combout\ & (((\inst|alu1|unidad_logica|salida_aux~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_logica|aux\(6),
	datab => \inst|alu1|unidad_aritmetica|mult|inter\(54),
	datac => \inst|alu1|unidad_logica|salida_aux[14]~44_combout\,
	datad => \inst|alu1|unidad_logica|salida_aux~18_combout\,
	combout => \inst|alu1|unidad_logica|salida_aux~19_combout\);

-- Location: FF_X19_Y9_N15
\inst|alu1|unidad_logica|salida_aux[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|alu1|unidad_logica|salida_aux~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|unidad_logica|salida_aux\(6));

-- Location: FF_X19_Y9_N31
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

-- Location: FF_X19_Y9_N21
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

-- Location: LCCOMB_X19_Y9_N30
\inst|alu1|Mux12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux12~1_combout\ = (!\inst|alu1|Mux2~3_combout\ & ((\inst|OP\(2)) # (\inst|alu1|Mux12~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|OP\(2),
	datab => \inst|alu1|Mux2~3_combout\,
	datad => \inst|alu1|Mux12~0_combout\,
	combout => \inst|alu1|Mux12~1_combout\);

-- Location: LCCOMB_X19_Y9_N20
\inst|alu1|Mux9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux9~2_combout\ = (\inst|alu1|Mux12~0_combout\ & ((\inst|alu1|unidad_logica|salida_aux\(6)) # ((!\inst|alu1|Mux12~1_combout\)))) # (!\inst|alu1|Mux12~0_combout\ & (((\inst|alu1|barrel_shifters|salShifters\(6) & \inst|alu1|Mux12~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux12~0_combout\,
	datab => \inst|alu1|unidad_logica|salida_aux\(6),
	datac => \inst|alu1|barrel_shifters|salShifters\(6),
	datad => \inst|alu1|Mux12~1_combout\,
	combout => \inst|alu1|Mux9~2_combout\);

-- Location: LCCOMB_X19_Y9_N4
\inst|alu1|Mux9~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux9~3_combout\ = (\inst|alu1|Mux2~3_combout\ & ((\inst|alu1|Mux9~2_combout\ & (\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~39_combout\)) # (!\inst|alu1|Mux9~2_combout\ & ((\inst|alu1|Mux9~1_combout\))))) # 
-- (!\inst|alu1|Mux2~3_combout\ & (((\inst|alu1|Mux9~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~39_combout\,
	datab => \inst|alu1|Mux9~1_combout\,
	datac => \inst|alu1|Mux2~3_combout\,
	datad => \inst|alu1|Mux9~2_combout\,
	combout => \inst|alu1|Mux9~3_combout\);

-- Location: LCCOMB_X19_Y9_N26
\inst|alu1|Mux9~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux9~4_combout\ = (\inst|OP\(3) & ((\inst|OP\(2)) # ((\inst|alu1|Mux2~3_combout\ & \inst|alu1|Mux9~3_combout\)))) # (!\inst|OP\(3) & (((\inst|alu1|Mux9~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux2~3_combout\,
	datab => \inst|OP\(3),
	datac => \inst|alu1|Mux9~3_combout\,
	datad => \inst|OP\(2),
	combout => \inst|alu1|Mux9~4_combout\);

-- Location: LCCOMB_X23_Y13_N18
\inst|REG_D~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|REG_D~4_combout\ = (!\inst|MAR\(0) & (!\inst|Equal5~1_combout\ & (!\inst|MAR\(1) & \inst|cat[0][6]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MAR\(0),
	datab => \inst|Equal5~1_combout\,
	datac => \inst|MAR\(1),
	datad => \inst|cat[0][6]~q\,
	combout => \inst|REG_D~4_combout\);

-- Location: FF_X23_Y13_N19
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

-- Location: LCCOMB_X23_Y13_N4
\inst|reggy~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~20_combout\ = (\inst|reggy~15_combout\ & ((\inst|REG_D\(6)) # ((\inst|Equal9~0_combout\ & \inst|alu1|unidad_aritmetica|mult|inter\(54))))) # (!\inst|reggy~15_combout\ & (\inst|Equal9~0_combout\ & 
-- (\inst|alu1|unidad_aritmetica|mult|inter\(54))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy~15_combout\,
	datab => \inst|Equal9~0_combout\,
	datac => \inst|alu1|unidad_aritmetica|mult|inter\(54),
	datad => \inst|REG_D\(6),
	combout => \inst|reggy~20_combout\);

-- Location: LCCOMB_X19_Y9_N12
\inst|reggy~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~21_combout\ = (\inst|reggy~20_combout\) # ((\inst|reggy~9_combout\ & \inst|alu1|Mux9~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|reggy~9_combout\,
	datac => \inst|alu1|Mux9~4_combout\,
	datad => \inst|reggy~20_combout\,
	combout => \inst|reggy~21_combout\);

-- Location: FF_X19_Y9_N13
\inst|reggy[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|reggy~21_combout\,
	ena => \inst|reggy[0][11]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy[0][6]~q\);

-- Location: LCCOMB_X16_Y10_N2
\inst|Mux33~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux33~0_combout\ = (\inst|MAR\(0) & ((\inst|reggy[1][6]~q\))) # (!\inst|MAR\(0) & (\inst|reggy[0][6]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy[0][6]~q\,
	datac => \inst|reggy[1][6]~q\,
	datad => \inst|MAR\(0),
	combout => \inst|Mux33~0_combout\);

-- Location: FF_X12_Y14_N3
\inst|REG_B[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|Mux33~0_combout\,
	sclr => \inst|MAR\(1),
	sload => VCC,
	ena => \inst|OP[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|REG_B\(6));

-- Location: LCCOMB_X23_Y11_N24
\inst|alu1|comparador|comparaP:1:comp|gout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|comparador|comparaP:1:comp|gout~0_combout\ = (\inst|REG_A\(1) & (((\inst|REG_A\(0) & !\inst|REG_B\(0))) # (!\inst|REG_B\(1)))) # (!\inst|REG_A\(1) & (\inst|REG_A\(0) & (!\inst|REG_B\(1) & !\inst|REG_B\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(0),
	datab => \inst|REG_A\(1),
	datac => \inst|REG_B\(1),
	datad => \inst|REG_B\(0),
	combout => \inst|alu1|comparador|comparaP:1:comp|gout~0_combout\);

-- Location: LCCOMB_X23_Y11_N18
\inst|alu1|comparador|comparaP:2:comp|gout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|comparador|comparaP:2:comp|gout~0_combout\ = (\inst|REG_B\(2) & (\inst|REG_A\(2) & \inst|alu1|comparador|comparaP:1:comp|gout~0_combout\)) # (!\inst|REG_B\(2) & ((\inst|REG_A\(2)) # (\inst|alu1|comparador|comparaP:1:comp|gout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|REG_B\(2),
	datac => \inst|REG_A\(2),
	datad => \inst|alu1|comparador|comparaP:1:comp|gout~0_combout\,
	combout => \inst|alu1|comparador|comparaP:2:comp|gout~0_combout\);

-- Location: LCCOMB_X23_Y11_N4
\inst|alu1|comparador|comparaP:3:comp|gout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|comparador|comparaP:3:comp|gout~0_combout\ = (\inst|REG_A\(3) & ((\inst|alu1|comparador|comparaP:2:comp|gout~0_combout\) # (!\inst|REG_B\(3)))) # (!\inst|REG_A\(3) & (!\inst|REG_B\(3) & \inst|alu1|comparador|comparaP:2:comp|gout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(3),
	datab => \inst|REG_B\(3),
	datad => \inst|alu1|comparador|comparaP:2:comp|gout~0_combout\,
	combout => \inst|alu1|comparador|comparaP:3:comp|gout~0_combout\);

-- Location: LCCOMB_X21_Y11_N2
\inst|alu1|comparador|comparaP:4:comp|gout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|comparador|comparaP:4:comp|gout~0_combout\ = (\inst|REG_B\(4) & (\inst|REG_A\(4) & \inst|alu1|comparador|comparaP:3:comp|gout~0_combout\)) # (!\inst|REG_B\(4) & ((\inst|REG_A\(4)) # (\inst|alu1|comparador|comparaP:3:comp|gout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(4),
	datab => \inst|REG_A\(4),
	datad => \inst|alu1|comparador|comparaP:3:comp|gout~0_combout\,
	combout => \inst|alu1|comparador|comparaP:4:comp|gout~0_combout\);

-- Location: LCCOMB_X21_Y11_N26
\inst|alu1|comparador|comparaP:5:comp|gout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|comparador|comparaP:5:comp|gout~0_combout\ = (\inst|REG_A\(5) & ((\inst|alu1|comparador|comparaP:4:comp|gout~0_combout\) # (!\inst|REG_B\(5)))) # (!\inst|REG_A\(5) & (!\inst|REG_B\(5) & \inst|alu1|comparador|comparaP:4:comp|gout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|REG_A\(5),
	datac => \inst|REG_B\(5),
	datad => \inst|alu1|comparador|comparaP:4:comp|gout~0_combout\,
	combout => \inst|alu1|comparador|comparaP:5:comp|gout~0_combout\);

-- Location: LCCOMB_X21_Y11_N24
\inst|alu1|comparador|comparaP:6:comp|gout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|comparador|comparaP:6:comp|gout~0_combout\ = (\inst|REG_B\(6) & (\inst|alu1|comparador|comparaP:5:comp|gout~0_combout\ & \inst|REG_A\(6))) # (!\inst|REG_B\(6) & ((\inst|alu1|comparador|comparaP:5:comp|gout~0_combout\) # (\inst|REG_A\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|REG_B\(6),
	datac => \inst|alu1|comparador|comparaP:5:comp|gout~0_combout\,
	datad => \inst|REG_A\(6),
	combout => \inst|alu1|comparador|comparaP:6:comp|gout~0_combout\);

-- Location: LCCOMB_X21_Y11_N30
\inst|alu1|comparador|comparaP:7:comp|gout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|comparador|comparaP:7:comp|gout~0_combout\ = (\inst|REG_A\(7) & ((\inst|alu1|comparador|comparaP:6:comp|gout~0_combout\) # (!\inst|REG_B\(7)))) # (!\inst|REG_A\(7) & (\inst|alu1|comparador|comparaP:6:comp|gout~0_combout\ & !\inst|REG_B\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(7),
	datab => \inst|alu1|comparador|comparaP:6:comp|gout~0_combout\,
	datac => \inst|REG_B\(7),
	combout => \inst|alu1|comparador|comparaP:7:comp|gout~0_combout\);

-- Location: LCCOMB_X21_Y10_N14
\inst|alu1|comparador|comparaP:8:comp|gout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|comparador|comparaP:8:comp|gout~0_combout\ = (\inst|REG_B\(8) & (\inst|alu1|comparador|comparaP:7:comp|gout~0_combout\ & \inst|REG_A\(8))) # (!\inst|REG_B\(8) & ((\inst|alu1|comparador|comparaP:7:comp|gout~0_combout\) # (\inst|REG_A\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(8),
	datac => \inst|alu1|comparador|comparaP:7:comp|gout~0_combout\,
	datad => \inst|REG_A\(8),
	combout => \inst|alu1|comparador|comparaP:8:comp|gout~0_combout\);

-- Location: LCCOMB_X21_Y10_N28
\inst|alu1|comparador|comparaP:9:comp|gout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|comparador|comparaP:9:comp|gout~0_combout\ = (\inst|REG_A\(9) & ((\inst|alu1|comparador|comparaP:8:comp|gout~0_combout\) # (!\inst|REG_B\(9)))) # (!\inst|REG_A\(9) & (\inst|alu1|comparador|comparaP:8:comp|gout~0_combout\ & !\inst|REG_B\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(9),
	datac => \inst|alu1|comparador|comparaP:8:comp|gout~0_combout\,
	datad => \inst|REG_B\(9),
	combout => \inst|alu1|comparador|comparaP:9:comp|gout~0_combout\);

-- Location: LCCOMB_X21_Y10_N18
\inst|alu1|comparador|comparaP:10:comp|gout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|comparador|comparaP:10:comp|gout~0_combout\ = (\inst|REG_B\(10) & (\inst|REG_A\(10) & \inst|alu1|comparador|comparaP:9:comp|gout~0_combout\)) # (!\inst|REG_B\(10) & ((\inst|REG_A\(10)) # (\inst|alu1|comparador|comparaP:9:comp|gout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|REG_B\(10),
	datac => \inst|REG_A\(10),
	datad => \inst|alu1|comparador|comparaP:9:comp|gout~0_combout\,
	combout => \inst|alu1|comparador|comparaP:10:comp|gout~0_combout\);

-- Location: LCCOMB_X21_Y10_N12
\inst|alu1|comparador|comparaP:11:comp|gout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|comparador|comparaP:11:comp|gout~0_combout\ = (\inst|REG_B\(11) & (\inst|REG_A\(11) & \inst|alu1|comparador|comparaP:10:comp|gout~0_combout\)) # (!\inst|REG_B\(11) & ((\inst|REG_A\(11)) # 
-- (\inst|alu1|comparador|comparaP:10:comp|gout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|REG_B\(11),
	datac => \inst|REG_A\(11),
	datad => \inst|alu1|comparador|comparaP:10:comp|gout~0_combout\,
	combout => \inst|alu1|comparador|comparaP:11:comp|gout~0_combout\);

-- Location: LCCOMB_X21_Y10_N2
\inst|alu1|comparador|comparaP:12:comp|gout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|comparador|comparaP:12:comp|gout~0_combout\ = (\inst|alu1|comparador|comparaP:11:comp|gout~0_combout\ & ((\inst|REG_A\(12)) # (!\inst|REG_B\(12)))) # (!\inst|alu1|comparador|comparaP:11:comp|gout~0_combout\ & (\inst|REG_A\(12) & 
-- !\inst|REG_B\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|comparador|comparaP:11:comp|gout~0_combout\,
	datac => \inst|REG_A\(12),
	datad => \inst|REG_B\(12),
	combout => \inst|alu1|comparador|comparaP:12:comp|gout~0_combout\);

-- Location: LCCOMB_X21_Y10_N24
\inst|alu1|comparador|comparaP:13:comp|gout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|comparador|comparaP:13:comp|gout~0_combout\ = (\inst|REG_A\(13) & ((\inst|alu1|comparador|comparaP:12:comp|gout~0_combout\) # (!\inst|REG_B\(13)))) # (!\inst|REG_A\(13) & (!\inst|REG_B\(13) & 
-- \inst|alu1|comparador|comparaP:12:comp|gout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|REG_A\(13),
	datac => \inst|REG_B\(13),
	datad => \inst|alu1|comparador|comparaP:12:comp|gout~0_combout\,
	combout => \inst|alu1|comparador|comparaP:13:comp|gout~0_combout\);

-- Location: LCCOMB_X22_Y12_N22
\inst|alu1|comparador|comparaP:14:comp|gout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|comparador|comparaP:14:comp|gout~0_combout\ = (\inst|REG_B\(14) & (\inst|alu1|comparador|comparaP:13:comp|gout~0_combout\ & \inst|REG_A\(14))) # (!\inst|REG_B\(14) & ((\inst|alu1|comparador|comparaP:13:comp|gout~0_combout\) # 
-- (\inst|REG_A\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(14),
	datab => \inst|alu1|comparador|comparaP:13:comp|gout~0_combout\,
	datac => \inst|REG_A\(14),
	combout => \inst|alu1|comparador|comparaP:14:comp|gout~0_combout\);

-- Location: LCCOMB_X22_Y12_N4
\inst|alu1|comparador|comp3|gout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|comparador|comp3|gout~0_combout\ = (\inst|REG_B\(15) & (\inst|alu1|comparador|comparaP:14:comp|gout~0_combout\ & \inst|REG_A\(15))) # (!\inst|REG_B\(15) & ((\inst|alu1|comparador|comparaP:14:comp|gout~0_combout\) # (\inst|REG_A\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|REG_B\(15),
	datac => \inst|alu1|comparador|comparaP:14:comp|gout~0_combout\,
	datad => \inst|REG_A\(15),
	combout => \inst|alu1|comparador|comp3|gout~0_combout\);

-- Location: LCCOMB_X21_Y12_N26
\inst|alu1|Mux13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux13~1_combout\ = (\inst|alu1|Mux16~0_combout\ & (((\inst|alu1|unidad_aritmetica|suma|sR:2:sP|Suma~0_combout\) # (\inst|alu1|Mux17~0_combout\)))) # (!\inst|alu1|Mux16~0_combout\ & 
-- (\inst|alu1|unidad_aritmetica|mult|multi2|sR:2:sP|Suma~0_combout\ & ((!\inst|alu1|Mux17~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|multi2|sR:2:sP|Suma~0_combout\,
	datab => \inst|alu1|Mux16~0_combout\,
	datac => \inst|alu1|unidad_aritmetica|suma|sR:2:sP|Suma~0_combout\,
	datad => \inst|alu1|Mux17~0_combout\,
	combout => \inst|alu1|Mux13~1_combout\);

-- Location: LCCOMB_X14_Y13_N0
\inst|alu1|unidad_aritmetica|divi|Add1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add1~24_combout\ = (\inst|REG_B\(0) & (\inst|REG_A\(6) $ (VCC))) # (!\inst|REG_B\(0) & ((\inst|REG_A\(6)) # (GND)))
-- \inst|alu1|unidad_aritmetica|divi|Add1~25\ = CARRY((\inst|REG_A\(6)) # (!\inst|REG_B\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(0),
	datab => \inst|REG_A\(6),
	datad => VCC,
	combout => \inst|alu1|unidad_aritmetica|divi|Add1~24_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add1~25\);

-- Location: LCCOMB_X14_Y13_N2
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

-- Location: LCCOMB_X14_Y13_N4
\inst|alu1|unidad_aritmetica|divi|Add1~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add1~28_combout\ = ((\inst|alu1|unidad_aritmetica|divi|Add0~40_combout\ $ (\inst|REG_B\(2) $ (\inst|alu1|unidad_aritmetica|divi|Add1~27\)))) # (GND)
-- \inst|alu1|unidad_aritmetica|divi|Add1~29\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add0~40_combout\ & ((!\inst|alu1|unidad_aritmetica|divi|Add1~27\) # (!\inst|REG_B\(2)))) # (!\inst|alu1|unidad_aritmetica|divi|Add0~40_combout\ & (!\inst|REG_B\(2) & 
-- !\inst|alu1|unidad_aritmetica|divi|Add1~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add0~40_combout\,
	datab => \inst|REG_B\(2),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add1~27\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add1~28_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add1~29\);

-- Location: LCCOMB_X14_Y13_N6
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

-- Location: LCCOMB_X14_Y13_N8
\inst|alu1|unidad_aritmetica|divi|Add1~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add1~32_combout\ = ((\inst|REG_B\(4) $ (\inst|alu1|unidad_aritmetica|divi|Add0~38_combout\ $ (\inst|alu1|unidad_aritmetica|divi|Add1~31\)))) # (GND)
-- \inst|alu1|unidad_aritmetica|divi|Add1~33\ = CARRY((\inst|REG_B\(4) & (\inst|alu1|unidad_aritmetica|divi|Add0~38_combout\ & !\inst|alu1|unidad_aritmetica|divi|Add1~31\)) # (!\inst|REG_B\(4) & ((\inst|alu1|unidad_aritmetica|divi|Add0~38_combout\) # 
-- (!\inst|alu1|unidad_aritmetica|divi|Add1~31\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(4),
	datab => \inst|alu1|unidad_aritmetica|divi|Add0~38_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add1~31\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add1~32_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add1~33\);

-- Location: LCCOMB_X14_Y13_N10
\inst|alu1|unidad_aritmetica|divi|Add1~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add1~34_combout\ = (\inst|REG_B\(5) & ((\inst|alu1|unidad_aritmetica|divi|Add0~37_combout\ & (!\inst|alu1|unidad_aritmetica|divi|Add1~33\)) # (!\inst|alu1|unidad_aritmetica|divi|Add0~37_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add1~33\) # (GND))))) # (!\inst|REG_B\(5) & ((\inst|alu1|unidad_aritmetica|divi|Add0~37_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add1~33\ & VCC)) # (!\inst|alu1|unidad_aritmetica|divi|Add0~37_combout\ & 
-- (!\inst|alu1|unidad_aritmetica|divi|Add1~33\))))
-- \inst|alu1|unidad_aritmetica|divi|Add1~35\ = CARRY((\inst|REG_B\(5) & ((!\inst|alu1|unidad_aritmetica|divi|Add1~33\) # (!\inst|alu1|unidad_aritmetica|divi|Add0~37_combout\))) # (!\inst|REG_B\(5) & (!\inst|alu1|unidad_aritmetica|divi|Add0~37_combout\ & 
-- !\inst|alu1|unidad_aritmetica|divi|Add1~33\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(5),
	datab => \inst|alu1|unidad_aritmetica|divi|Add0~37_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add1~33\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add1~34_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add1~35\);

-- Location: LCCOMB_X14_Y13_N12
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

-- Location: LCCOMB_X14_Y13_N14
\inst|alu1|unidad_aritmetica|divi|Add1~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add1~38_combout\ = (\inst|alu1|unidad_aritmetica|divi|Add0~35_combout\ & ((\inst|REG_B\(7) & (!\inst|alu1|unidad_aritmetica|divi|Add1~37\)) # (!\inst|REG_B\(7) & (\inst|alu1|unidad_aritmetica|divi|Add1~37\ & VCC)))) # 
-- (!\inst|alu1|unidad_aritmetica|divi|Add0~35_combout\ & ((\inst|REG_B\(7) & ((\inst|alu1|unidad_aritmetica|divi|Add1~37\) # (GND))) # (!\inst|REG_B\(7) & (!\inst|alu1|unidad_aritmetica|divi|Add1~37\))))
-- \inst|alu1|unidad_aritmetica|divi|Add1~39\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add0~35_combout\ & (\inst|REG_B\(7) & !\inst|alu1|unidad_aritmetica|divi|Add1~37\)) # (!\inst|alu1|unidad_aritmetica|divi|Add0~35_combout\ & ((\inst|REG_B\(7)) # 
-- (!\inst|alu1|unidad_aritmetica|divi|Add1~37\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add0~35_combout\,
	datab => \inst|REG_B\(7),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add1~37\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add1~38_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add1~39\);

-- Location: LCCOMB_X14_Y13_N16
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

-- Location: LCCOMB_X14_Y13_N18
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

-- Location: LCCOMB_X14_Y13_N20
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

-- Location: LCCOMB_X16_Y13_N26
\inst|alu1|unidad_aritmetica|divi|Add1~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add1~57_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan1~28_combout\ & (!\inst|alu1|unidad_aritmetica|divi|LessThan0~4_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add0~18_combout\))) # 
-- (!\inst|alu1|unidad_aritmetica|divi|LessThan1~28_combout\ & (((\inst|alu1|unidad_aritmetica|divi|Add1~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|LessThan0~4_combout\,
	datab => \inst|alu1|unidad_aritmetica|divi|Add0~18_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|Add1~44_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan1~28_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add1~57_combout\);

-- Location: LCCOMB_X14_Y13_N22
\inst|alu1|unidad_aritmetica|divi|Add1~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add1~46_combout\ = (\inst|REG_B\(11) & ((\inst|alu1|unidad_aritmetica|divi|Add0~31_combout\ & (!\inst|alu1|unidad_aritmetica|divi|Add1~45\)) # (!\inst|alu1|unidad_aritmetica|divi|Add0~31_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add1~45\) # (GND))))) # (!\inst|REG_B\(11) & ((\inst|alu1|unidad_aritmetica|divi|Add0~31_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add1~45\ & VCC)) # (!\inst|alu1|unidad_aritmetica|divi|Add0~31_combout\ & 
-- (!\inst|alu1|unidad_aritmetica|divi|Add1~45\))))
-- \inst|alu1|unidad_aritmetica|divi|Add1~47\ = CARRY((\inst|REG_B\(11) & ((!\inst|alu1|unidad_aritmetica|divi|Add1~45\) # (!\inst|alu1|unidad_aritmetica|divi|Add0~31_combout\))) # (!\inst|REG_B\(11) & (!\inst|alu1|unidad_aritmetica|divi|Add0~31_combout\ & 
-- !\inst|alu1|unidad_aritmetica|divi|Add1~45\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(11),
	datab => \inst|alu1|unidad_aritmetica|divi|Add0~31_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add1~45\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add1~46_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add1~47\);

-- Location: LCCOMB_X14_Y13_N24
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

-- Location: LCCOMB_X14_Y13_N26
\inst|alu1|unidad_aritmetica|divi|Add1~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add1~50_combout\ = \inst|alu1|unidad_aritmetica|divi|Add0~29_combout\ $ (\inst|alu1|unidad_aritmetica|divi|Add1~49\ $ (!\inst|REG_B\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add0~29_combout\,
	datad => \inst|REG_B\(13),
	cin => \inst|alu1|unidad_aritmetica|divi|Add1~49\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add1~50_combout\);

-- Location: LCCOMB_X16_Y13_N12
\inst|alu1|unidad_aritmetica|divi|Add1~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add1~54_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan1~28_combout\ & (!\inst|alu1|unidad_aritmetica|divi|LessThan0~4_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add0~24_combout\))) # 
-- (!\inst|alu1|unidad_aritmetica|divi|LessThan1~28_combout\ & (((\inst|alu1|unidad_aritmetica|divi|Add1~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|LessThan0~4_combout\,
	datab => \inst|alu1|unidad_aritmetica|divi|Add0~24_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|Add1~50_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan1~28_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add1~54_combout\);

-- Location: LCCOMB_X17_Y13_N30
\inst|alu1|unidad_aritmetica|divi|Add1~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add1~55_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan1~28_combout\ & (!\inst|alu1|unidad_aritmetica|divi|LessThan0~4_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add0~22_combout\))) # 
-- (!\inst|alu1|unidad_aritmetica|divi|LessThan1~28_combout\ & (((\inst|alu1|unidad_aritmetica|divi|Add1~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|LessThan0~4_combout\,
	datab => \inst|alu1|unidad_aritmetica|divi|Add0~22_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|Add1~48_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan1~28_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add1~55_combout\);

-- Location: LCCOMB_X14_Y13_N30
\inst|alu1|unidad_aritmetica|divi|Add1~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add1~56_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan1~28_combout\ & (!\inst|alu1|unidad_aritmetica|divi|LessThan0~4_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add0~20_combout\))) # 
-- (!\inst|alu1|unidad_aritmetica|divi|LessThan1~28_combout\ & (((\inst|alu1|unidad_aritmetica|divi|Add1~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|LessThan0~4_combout\,
	datab => \inst|alu1|unidad_aritmetica|divi|Add0~20_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|Add1~46_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan1~28_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add1~56_combout\);

-- Location: LCCOMB_X16_Y13_N4
\inst|alu1|unidad_aritmetica|divi|Add1~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add1~58_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan1~28_combout\ & (!\inst|alu1|unidad_aritmetica|divi|LessThan0~4_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add0~16_combout\))) # 
-- (!\inst|alu1|unidad_aritmetica|divi|LessThan1~28_combout\ & (((\inst|alu1|unidad_aritmetica|divi|Add1~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|LessThan0~4_combout\,
	datab => \inst|alu1|unidad_aritmetica|divi|Add0~16_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|Add1~42_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan1~28_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add1~58_combout\);

-- Location: LCCOMB_X16_Y13_N6
\inst|alu1|unidad_aritmetica|divi|Add1~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add1~59_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan1~28_combout\ & (!\inst|alu1|unidad_aritmetica|divi|LessThan0~4_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add0~14_combout\))) # 
-- (!\inst|alu1|unidad_aritmetica|divi|LessThan1~28_combout\ & (((\inst|alu1|unidad_aritmetica|divi|Add1~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|LessThan0~4_combout\,
	datab => \inst|alu1|unidad_aritmetica|divi|Add0~14_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|Add1~40_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan1~28_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add1~59_combout\);

-- Location: LCCOMB_X18_Y14_N24
\inst|alu1|unidad_aritmetica|divi|Add1~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add1~60_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan1~28_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add0~12_combout\ & (!\inst|alu1|unidad_aritmetica|divi|LessThan0~4_combout\))) # 
-- (!\inst|alu1|unidad_aritmetica|divi|LessThan1~28_combout\ & (((\inst|alu1|unidad_aritmetica|divi|Add1~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|LessThan1~28_combout\,
	datab => \inst|alu1|unidad_aritmetica|divi|Add0~12_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|LessThan0~4_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|Add1~38_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add1~60_combout\);

-- Location: LCCOMB_X18_Y14_N30
\inst|alu1|unidad_aritmetica|divi|Add1~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add1~61_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan1~28_combout\ & (!\inst|alu1|unidad_aritmetica|divi|LessThan0~4_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add0~10_combout\))) # 
-- (!\inst|alu1|unidad_aritmetica|divi|LessThan1~28_combout\ & (((\inst|alu1|unidad_aritmetica|divi|Add1~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|LessThan0~4_combout\,
	datab => \inst|alu1|unidad_aritmetica|divi|Add0~10_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|Add1~36_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan1~28_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add1~61_combout\);

-- Location: LCCOMB_X16_Y13_N20
\inst|alu1|unidad_aritmetica|divi|Add1~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add1~62_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan1~28_combout\ & (!\inst|alu1|unidad_aritmetica|divi|LessThan0~4_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add0~8_combout\))) # 
-- (!\inst|alu1|unidad_aritmetica|divi|LessThan1~28_combout\ & (((\inst|alu1|unidad_aritmetica|divi|Add1~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|LessThan0~4_combout\,
	datab => \inst|alu1|unidad_aritmetica|divi|Add0~8_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|Add1~34_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan1~28_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add1~62_combout\);

-- Location: LCCOMB_X18_Y12_N0
\inst|alu1|unidad_aritmetica|divi|Add1~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add1~63_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan1~28_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add0~6_combout\ & (!\inst|alu1|unidad_aritmetica|divi|LessThan0~4_combout\))) # 
-- (!\inst|alu1|unidad_aritmetica|divi|LessThan1~28_combout\ & (((\inst|alu1|unidad_aritmetica|divi|Add1~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add0~6_combout\,
	datab => \inst|alu1|unidad_aritmetica|divi|LessThan0~4_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|Add1~32_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan1~28_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add1~63_combout\);

-- Location: LCCOMB_X18_Y13_N28
\inst|alu1|unidad_aritmetica|divi|Add1~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add1~64_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan1~28_combout\ & (!\inst|alu1|unidad_aritmetica|divi|LessThan0~4_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add0~4_combout\))) # 
-- (!\inst|alu1|unidad_aritmetica|divi|LessThan1~28_combout\ & (((\inst|alu1|unidad_aritmetica|divi|Add1~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|LessThan0~4_combout\,
	datab => \inst|alu1|unidad_aritmetica|divi|Add0~4_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|Add1~30_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan1~28_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add1~64_combout\);

-- Location: LCCOMB_X16_Y13_N14
\inst|alu1|unidad_aritmetica|divi|Add1~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add1~65_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan1~28_combout\ & (!\inst|alu1|unidad_aritmetica|divi|LessThan0~4_combout\ & ((\inst|alu1|unidad_aritmetica|divi|Add0~2_combout\)))) # 
-- (!\inst|alu1|unidad_aritmetica|divi|LessThan1~28_combout\ & (((\inst|alu1|unidad_aritmetica|divi|Add1~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|LessThan0~4_combout\,
	datab => \inst|alu1|unidad_aritmetica|divi|Add1~28_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|Add0~2_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan1~28_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add1~65_combout\);

-- Location: LCCOMB_X16_Y13_N16
\inst|alu1|unidad_aritmetica|divi|Add1~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add1~52_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan1~28_combout\ & ((\inst|alu1|unidad_aritmetica|divi|Add0~41_combout\))) # (!\inst|alu1|unidad_aritmetica|divi|LessThan1~28_combout\ & 
-- (\inst|alu1|unidad_aritmetica|divi|Add1~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add1~26_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|Add0~41_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan1~28_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add1~52_combout\);

-- Location: LCCOMB_X18_Y14_N16
\inst|alu1|unidad_aritmetica|divi|Add1~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add1~53_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan1~28_combout\ & ((\inst|REG_A\(6)))) # (!\inst|alu1|unidad_aritmetica|divi|LessThan1~28_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add1~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|unidad_aritmetica|divi|Add1~24_combout\,
	datac => \inst|REG_A\(6),
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan1~28_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add1~53_combout\);

-- Location: LCCOMB_X17_Y13_N0
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

-- Location: LCCOMB_X17_Y13_N2
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

-- Location: LCCOMB_X17_Y13_N4
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

-- Location: LCCOMB_X17_Y13_N6
\inst|alu1|unidad_aritmetica|divi|LessThan2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan2~7_cout\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add1~65_combout\ & ((!\inst|alu1|unidad_aritmetica|divi|LessThan2~5_cout\) # (!\inst|REG_B\(3)))) # (!\inst|alu1|unidad_aritmetica|divi|Add1~65_combout\ & 
-- (!\inst|REG_B\(3) & !\inst|alu1|unidad_aritmetica|divi|LessThan2~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add1~65_combout\,
	datab => \inst|REG_B\(3),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan2~5_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan2~7_cout\);

-- Location: LCCOMB_X17_Y13_N8
\inst|alu1|unidad_aritmetica|divi|LessThan2~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan2~9_cout\ = CARRY((\inst|REG_B\(4) & ((!\inst|alu1|unidad_aritmetica|divi|LessThan2~7_cout\) # (!\inst|alu1|unidad_aritmetica|divi|Add1~64_combout\))) # (!\inst|REG_B\(4) & 
-- (!\inst|alu1|unidad_aritmetica|divi|Add1~64_combout\ & !\inst|alu1|unidad_aritmetica|divi|LessThan2~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(4),
	datab => \inst|alu1|unidad_aritmetica|divi|Add1~64_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan2~7_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan2~9_cout\);

-- Location: LCCOMB_X17_Y13_N10
\inst|alu1|unidad_aritmetica|divi|LessThan2~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan2~11_cout\ = CARRY((\inst|REG_B\(5) & (\inst|alu1|unidad_aritmetica|divi|Add1~63_combout\ & !\inst|alu1|unidad_aritmetica|divi|LessThan2~9_cout\)) # (!\inst|REG_B\(5) & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add1~63_combout\) # (!\inst|alu1|unidad_aritmetica|divi|LessThan2~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(5),
	datab => \inst|alu1|unidad_aritmetica|divi|Add1~63_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan2~9_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan2~11_cout\);

-- Location: LCCOMB_X17_Y13_N12
\inst|alu1|unidad_aritmetica|divi|LessThan2~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan2~13_cout\ = CARRY((\inst|REG_B\(6) & ((!\inst|alu1|unidad_aritmetica|divi|LessThan2~11_cout\) # (!\inst|alu1|unidad_aritmetica|divi|Add1~62_combout\))) # (!\inst|REG_B\(6) & 
-- (!\inst|alu1|unidad_aritmetica|divi|Add1~62_combout\ & !\inst|alu1|unidad_aritmetica|divi|LessThan2~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(6),
	datab => \inst|alu1|unidad_aritmetica|divi|Add1~62_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan2~11_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan2~13_cout\);

-- Location: LCCOMB_X17_Y13_N14
\inst|alu1|unidad_aritmetica|divi|LessThan2~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan2~15_cout\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add1~61_combout\ & ((!\inst|alu1|unidad_aritmetica|divi|LessThan2~13_cout\) # (!\inst|REG_B\(7)))) # (!\inst|alu1|unidad_aritmetica|divi|Add1~61_combout\ & 
-- (!\inst|REG_B\(7) & !\inst|alu1|unidad_aritmetica|divi|LessThan2~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add1~61_combout\,
	datab => \inst|REG_B\(7),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan2~13_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan2~15_cout\);

-- Location: LCCOMB_X17_Y13_N16
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

-- Location: LCCOMB_X17_Y13_N18
\inst|alu1|unidad_aritmetica|divi|LessThan2~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan2~19_cout\ = CARRY((\inst|REG_B\(9) & (\inst|alu1|unidad_aritmetica|divi|Add1~59_combout\ & !\inst|alu1|unidad_aritmetica|divi|LessThan2~17_cout\)) # (!\inst|REG_B\(9) & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add1~59_combout\) # (!\inst|alu1|unidad_aritmetica|divi|LessThan2~17_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(9),
	datab => \inst|alu1|unidad_aritmetica|divi|Add1~59_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan2~17_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan2~19_cout\);

-- Location: LCCOMB_X17_Y13_N20
\inst|alu1|unidad_aritmetica|divi|LessThan2~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan2~21_cout\ = CARRY((\inst|REG_B\(10) & ((!\inst|alu1|unidad_aritmetica|divi|LessThan2~19_cout\) # (!\inst|alu1|unidad_aritmetica|divi|Add1~58_combout\))) # (!\inst|REG_B\(10) & 
-- (!\inst|alu1|unidad_aritmetica|divi|Add1~58_combout\ & !\inst|alu1|unidad_aritmetica|divi|LessThan2~19_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(10),
	datab => \inst|alu1|unidad_aritmetica|divi|Add1~58_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan2~19_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan2~21_cout\);

-- Location: LCCOMB_X17_Y13_N22
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

-- Location: LCCOMB_X17_Y13_N24
\inst|alu1|unidad_aritmetica|divi|LessThan2~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan2~25_cout\ = CARRY((\inst|REG_B\(12) & ((!\inst|alu1|unidad_aritmetica|divi|LessThan2~23_cout\) # (!\inst|alu1|unidad_aritmetica|divi|Add1~56_combout\))) # (!\inst|REG_B\(12) & 
-- (!\inst|alu1|unidad_aritmetica|divi|Add1~56_combout\ & !\inst|alu1|unidad_aritmetica|divi|LessThan2~23_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(12),
	datab => \inst|alu1|unidad_aritmetica|divi|Add1~56_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan2~23_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan2~25_cout\);

-- Location: LCCOMB_X17_Y13_N26
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

-- Location: LCCOMB_X17_Y13_N28
\inst|alu1|unidad_aritmetica|divi|LessThan2~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan2~28_combout\ = (\inst|REG_B\(14) & ((!\inst|alu1|unidad_aritmetica|divi|Add1~54_combout\) # (!\inst|alu1|unidad_aritmetica|divi|LessThan2~27_cout\))) # (!\inst|REG_B\(14) & 
-- (!\inst|alu1|unidad_aritmetica|divi|LessThan2~27_cout\ & !\inst|alu1|unidad_aritmetica|divi|Add1~54_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|REG_B\(14),
	datad => \inst|alu1|unidad_aritmetica|divi|Add1~54_combout\,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan2~27_cout\,
	combout => \inst|alu1|unidad_aritmetica|divi|LessThan2~28_combout\);

-- Location: LCCOMB_X16_Y14_N2
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

-- Location: LCCOMB_X16_Y14_N4
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

-- Location: LCCOMB_X16_Y14_N6
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

-- Location: LCCOMB_X16_Y14_N8
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

-- Location: LCCOMB_X16_Y14_N10
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

-- Location: LCCOMB_X16_Y14_N12
\inst|alu1|unidad_aritmetica|divi|Add2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add2~10_combout\ = (\inst|REG_B\(5) & ((\inst|alu1|unidad_aritmetica|divi|Add1~63_combout\ & (!\inst|alu1|unidad_aritmetica|divi|Add2~9\)) # (!\inst|alu1|unidad_aritmetica|divi|Add1~63_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add2~9\) # (GND))))) # (!\inst|REG_B\(5) & ((\inst|alu1|unidad_aritmetica|divi|Add1~63_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add2~9\ & VCC)) # (!\inst|alu1|unidad_aritmetica|divi|Add1~63_combout\ & 
-- (!\inst|alu1|unidad_aritmetica|divi|Add2~9\))))
-- \inst|alu1|unidad_aritmetica|divi|Add2~11\ = CARRY((\inst|REG_B\(5) & ((!\inst|alu1|unidad_aritmetica|divi|Add2~9\) # (!\inst|alu1|unidad_aritmetica|divi|Add1~63_combout\))) # (!\inst|REG_B\(5) & (!\inst|alu1|unidad_aritmetica|divi|Add1~63_combout\ & 
-- !\inst|alu1|unidad_aritmetica|divi|Add2~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(5),
	datab => \inst|alu1|unidad_aritmetica|divi|Add1~63_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add2~9\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add2~10_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add2~11\);

-- Location: LCCOMB_X16_Y14_N14
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

-- Location: LCCOMB_X16_Y14_N16
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

-- Location: LCCOMB_X16_Y14_N18
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

-- Location: LCCOMB_X16_Y14_N20
\inst|alu1|unidad_aritmetica|divi|Add2~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add2~18_combout\ = (\inst|alu1|unidad_aritmetica|divi|Add1~59_combout\ & ((\inst|REG_B\(9) & (!\inst|alu1|unidad_aritmetica|divi|Add2~17\)) # (!\inst|REG_B\(9) & (\inst|alu1|unidad_aritmetica|divi|Add2~17\ & VCC)))) # 
-- (!\inst|alu1|unidad_aritmetica|divi|Add1~59_combout\ & ((\inst|REG_B\(9) & ((\inst|alu1|unidad_aritmetica|divi|Add2~17\) # (GND))) # (!\inst|REG_B\(9) & (!\inst|alu1|unidad_aritmetica|divi|Add2~17\))))
-- \inst|alu1|unidad_aritmetica|divi|Add2~19\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add1~59_combout\ & (\inst|REG_B\(9) & !\inst|alu1|unidad_aritmetica|divi|Add2~17\)) # (!\inst|alu1|unidad_aritmetica|divi|Add1~59_combout\ & ((\inst|REG_B\(9)) # 
-- (!\inst|alu1|unidad_aritmetica|divi|Add2~17\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add1~59_combout\,
	datab => \inst|REG_B\(9),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add2~17\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add2~18_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add2~19\);

-- Location: LCCOMB_X16_Y14_N22
\inst|alu1|unidad_aritmetica|divi|Add2~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add2~20_combout\ = ((\inst|REG_B\(10) $ (\inst|alu1|unidad_aritmetica|divi|Add1~58_combout\ $ (\inst|alu1|unidad_aritmetica|divi|Add2~19\)))) # (GND)
-- \inst|alu1|unidad_aritmetica|divi|Add2~21\ = CARRY((\inst|REG_B\(10) & (\inst|alu1|unidad_aritmetica|divi|Add1~58_combout\ & !\inst|alu1|unidad_aritmetica|divi|Add2~19\)) # (!\inst|REG_B\(10) & ((\inst|alu1|unidad_aritmetica|divi|Add1~58_combout\) # 
-- (!\inst|alu1|unidad_aritmetica|divi|Add2~19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(10),
	datab => \inst|alu1|unidad_aritmetica|divi|Add1~58_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add2~19\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add2~20_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add2~21\);

-- Location: LCCOMB_X16_Y14_N24
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

-- Location: LCCOMB_X16_Y14_N30
\inst|alu1|unidad_aritmetica|divi|Add2~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add2~30_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan2~28_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add1~57_combout\)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan2~28_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add2~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add1~57_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|LessThan2~28_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|Add2~22_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add2~30_combout\);

-- Location: LCCOMB_X16_Y14_N26
\inst|alu1|unidad_aritmetica|divi|Add2~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add2~24_combout\ = ((\inst|REG_B\(12) $ (\inst|alu1|unidad_aritmetica|divi|Add1~56_combout\ $ (\inst|alu1|unidad_aritmetica|divi|Add2~23\)))) # (GND)
-- \inst|alu1|unidad_aritmetica|divi|Add2~25\ = CARRY((\inst|REG_B\(12) & (\inst|alu1|unidad_aritmetica|divi|Add1~56_combout\ & !\inst|alu1|unidad_aritmetica|divi|Add2~23\)) # (!\inst|REG_B\(12) & ((\inst|alu1|unidad_aritmetica|divi|Add1~56_combout\) # 
-- (!\inst|alu1|unidad_aritmetica|divi|Add2~23\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(12),
	datab => \inst|alu1|unidad_aritmetica|divi|Add1~56_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add2~23\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add2~24_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add2~25\);

-- Location: LCCOMB_X16_Y14_N28
\inst|alu1|unidad_aritmetica|divi|Add2~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add2~26_combout\ = \inst|REG_B\(13) $ (\inst|alu1|unidad_aritmetica|divi|Add2~25\ $ (!\inst|alu1|unidad_aritmetica|divi|Add1~55_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(13),
	datad => \inst|alu1|unidad_aritmetica|divi|Add1~55_combout\,
	cin => \inst|alu1|unidad_aritmetica|divi|Add2~25\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add2~26_combout\);

-- Location: LCCOMB_X16_Y14_N0
\inst|alu1|unidad_aritmetica|divi|Add2~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add2~28_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan2~28_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add1~55_combout\)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan2~28_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add2~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add1~55_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|LessThan2~28_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|Add2~26_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add2~28_combout\);

-- Location: LCCOMB_X17_Y14_N0
\inst|alu1|unidad_aritmetica|divi|Add2~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add2~29_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan2~28_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add1~56_combout\)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan2~28_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add2~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add1~56_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|Add2~24_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan2~28_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add2~29_combout\);

-- Location: LCCOMB_X16_Y13_N18
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

-- Location: LCCOMB_X16_Y13_N28
\inst|alu1|unidad_aritmetica|divi|Add2~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add2~32_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan2~28_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add1~59_combout\)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan2~28_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add2~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add1~59_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|Add2~18_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan2~28_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add2~32_combout\);

-- Location: LCCOMB_X18_Y14_N10
\inst|alu1|unidad_aritmetica|divi|Add2~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add2~33_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan2~28_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add1~60_combout\)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan2~28_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add2~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|unidad_aritmetica|divi|Add1~60_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|LessThan2~28_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|Add2~16_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add2~33_combout\);

-- Location: LCCOMB_X18_Y14_N28
\inst|alu1|unidad_aritmetica|divi|Add2~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add2~34_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan2~28_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add1~61_combout\)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan2~28_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add2~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add1~61_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|LessThan2~28_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|Add2~14_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add2~34_combout\);

-- Location: LCCOMB_X18_Y12_N12
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

-- Location: LCCOMB_X18_Y12_N2
\inst|alu1|unidad_aritmetica|divi|Add2~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add2~36_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan2~28_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add1~63_combout\)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan2~28_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add2~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|unidad_aritmetica|divi|Add1~63_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|Add2~10_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan2~28_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add2~36_combout\);

-- Location: LCCOMB_X18_Y13_N0
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

-- Location: LCCOMB_X18_Y13_N14
\inst|alu1|unidad_aritmetica|divi|Add2~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add2~38_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan2~28_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add1~65_combout\)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan2~28_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add2~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add1~65_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|Add2~6_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan2~28_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add2~38_combout\);

-- Location: LCCOMB_X16_Y13_N22
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

-- Location: LCCOMB_X18_Y14_N18
\inst|alu1|unidad_aritmetica|divi|Add2~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add2~40_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan2~28_combout\ & ((\inst|alu1|unidad_aritmetica|divi|Add1~53_combout\))) # (!\inst|alu1|unidad_aritmetica|divi|LessThan2~28_combout\ & 
-- (\inst|alu1|unidad_aritmetica|divi|Add2~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|unidad_aritmetica|divi|Add2~2_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|LessThan2~28_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|Add1~53_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add2~40_combout\);

-- Location: LCCOMB_X18_Y12_N16
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

-- Location: LCCOMB_X17_Y14_N2
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

-- Location: LCCOMB_X17_Y14_N4
\inst|alu1|unidad_aritmetica|divi|LessThan3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan3~3_cout\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add2~41_combout\ & ((!\inst|alu1|unidad_aritmetica|divi|LessThan3~1_cout\) # (!\inst|REG_B\(1)))) # (!\inst|alu1|unidad_aritmetica|divi|Add2~41_combout\ & 
-- (!\inst|REG_B\(1) & !\inst|alu1|unidad_aritmetica|divi|LessThan3~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add2~41_combout\,
	datab => \inst|REG_B\(1),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan3~1_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan3~3_cout\);

-- Location: LCCOMB_X17_Y14_N6
\inst|alu1|unidad_aritmetica|divi|LessThan3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan3~5_cout\ = CARRY((\inst|REG_B\(2) & ((!\inst|alu1|unidad_aritmetica|divi|LessThan3~3_cout\) # (!\inst|alu1|unidad_aritmetica|divi|Add2~40_combout\))) # (!\inst|REG_B\(2) & 
-- (!\inst|alu1|unidad_aritmetica|divi|Add2~40_combout\ & !\inst|alu1|unidad_aritmetica|divi|LessThan3~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(2),
	datab => \inst|alu1|unidad_aritmetica|divi|Add2~40_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan3~3_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan3~5_cout\);

-- Location: LCCOMB_X17_Y14_N8
\inst|alu1|unidad_aritmetica|divi|LessThan3~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan3~7_cout\ = CARRY((\inst|REG_B\(3) & (\inst|alu1|unidad_aritmetica|divi|Add2~39_combout\ & !\inst|alu1|unidad_aritmetica|divi|LessThan3~5_cout\)) # (!\inst|REG_B\(3) & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add2~39_combout\) # (!\inst|alu1|unidad_aritmetica|divi|LessThan3~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(3),
	datab => \inst|alu1|unidad_aritmetica|divi|Add2~39_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan3~5_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan3~7_cout\);

-- Location: LCCOMB_X17_Y14_N10
\inst|alu1|unidad_aritmetica|divi|LessThan3~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan3~9_cout\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add2~38_combout\ & (\inst|REG_B\(4) & !\inst|alu1|unidad_aritmetica|divi|LessThan3~7_cout\)) # (!\inst|alu1|unidad_aritmetica|divi|Add2~38_combout\ & 
-- ((\inst|REG_B\(4)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan3~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add2~38_combout\,
	datab => \inst|REG_B\(4),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan3~7_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan3~9_cout\);

-- Location: LCCOMB_X17_Y14_N12
\inst|alu1|unidad_aritmetica|divi|LessThan3~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan3~11_cout\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add2~37_combout\ & ((!\inst|alu1|unidad_aritmetica|divi|LessThan3~9_cout\) # (!\inst|REG_B\(5)))) # (!\inst|alu1|unidad_aritmetica|divi|Add2~37_combout\ & 
-- (!\inst|REG_B\(5) & !\inst|alu1|unidad_aritmetica|divi|LessThan3~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add2~37_combout\,
	datab => \inst|REG_B\(5),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan3~9_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan3~11_cout\);

-- Location: LCCOMB_X17_Y14_N14
\inst|alu1|unidad_aritmetica|divi|LessThan3~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan3~13_cout\ = CARRY((\inst|REG_B\(6) & ((!\inst|alu1|unidad_aritmetica|divi|LessThan3~11_cout\) # (!\inst|alu1|unidad_aritmetica|divi|Add2~36_combout\))) # (!\inst|REG_B\(6) & 
-- (!\inst|alu1|unidad_aritmetica|divi|Add2~36_combout\ & !\inst|alu1|unidad_aritmetica|divi|LessThan3~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(6),
	datab => \inst|alu1|unidad_aritmetica|divi|Add2~36_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan3~11_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan3~13_cout\);

-- Location: LCCOMB_X17_Y14_N16
\inst|alu1|unidad_aritmetica|divi|LessThan3~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan3~15_cout\ = CARRY((\inst|REG_B\(7) & (\inst|alu1|unidad_aritmetica|divi|Add2~35_combout\ & !\inst|alu1|unidad_aritmetica|divi|LessThan3~13_cout\)) # (!\inst|REG_B\(7) & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add2~35_combout\) # (!\inst|alu1|unidad_aritmetica|divi|LessThan3~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(7),
	datab => \inst|alu1|unidad_aritmetica|divi|Add2~35_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan3~13_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan3~15_cout\);

-- Location: LCCOMB_X17_Y14_N18
\inst|alu1|unidad_aritmetica|divi|LessThan3~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan3~17_cout\ = CARRY((\inst|REG_B\(8) & ((!\inst|alu1|unidad_aritmetica|divi|LessThan3~15_cout\) # (!\inst|alu1|unidad_aritmetica|divi|Add2~34_combout\))) # (!\inst|REG_B\(8) & 
-- (!\inst|alu1|unidad_aritmetica|divi|Add2~34_combout\ & !\inst|alu1|unidad_aritmetica|divi|LessThan3~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(8),
	datab => \inst|alu1|unidad_aritmetica|divi|Add2~34_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan3~15_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan3~17_cout\);

-- Location: LCCOMB_X17_Y14_N20
\inst|alu1|unidad_aritmetica|divi|LessThan3~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan3~19_cout\ = CARRY((\inst|REG_B\(9) & (\inst|alu1|unidad_aritmetica|divi|Add2~33_combout\ & !\inst|alu1|unidad_aritmetica|divi|LessThan3~17_cout\)) # (!\inst|REG_B\(9) & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add2~33_combout\) # (!\inst|alu1|unidad_aritmetica|divi|LessThan3~17_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(9),
	datab => \inst|alu1|unidad_aritmetica|divi|Add2~33_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan3~17_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan3~19_cout\);

-- Location: LCCOMB_X17_Y14_N22
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

-- Location: LCCOMB_X17_Y14_N24
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

-- Location: LCCOMB_X17_Y14_N26
\inst|alu1|unidad_aritmetica|divi|LessThan3~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan3~25_cout\ = CARRY((\inst|REG_B\(12) & ((!\inst|alu1|unidad_aritmetica|divi|LessThan3~23_cout\) # (!\inst|alu1|unidad_aritmetica|divi|Add2~30_combout\))) # (!\inst|REG_B\(12) & 
-- (!\inst|alu1|unidad_aritmetica|divi|Add2~30_combout\ & !\inst|alu1|unidad_aritmetica|divi|LessThan3~23_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(12),
	datab => \inst|alu1|unidad_aritmetica|divi|Add2~30_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan3~23_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan3~25_cout\);

-- Location: LCCOMB_X17_Y14_N28
\inst|alu1|unidad_aritmetica|divi|LessThan3~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan3~27_cout\ = CARRY((\inst|REG_B\(13) & (\inst|alu1|unidad_aritmetica|divi|Add2~29_combout\ & !\inst|alu1|unidad_aritmetica|divi|LessThan3~25_cout\)) # (!\inst|REG_B\(13) & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add2~29_combout\) # (!\inst|alu1|unidad_aritmetica|divi|LessThan3~25_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(13),
	datab => \inst|alu1|unidad_aritmetica|divi|Add2~29_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan3~25_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan3~27_cout\);

-- Location: LCCOMB_X17_Y14_N30
\inst|alu1|unidad_aritmetica|divi|LessThan3~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan3~28_combout\ = (\inst|alu1|unidad_aritmetica|divi|Add2~28_combout\ & (!\inst|alu1|unidad_aritmetica|divi|LessThan3~27_cout\ & \inst|REG_B\(14))) # (!\inst|alu1|unidad_aritmetica|divi|Add2~28_combout\ & 
-- ((\inst|REG_B\(14)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan3~27_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add2~28_combout\,
	datad => \inst|REG_B\(14),
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan3~27_cout\,
	combout => \inst|alu1|unidad_aritmetica|divi|LessThan3~28_combout\);

-- Location: LCCOMB_X17_Y15_N0
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

-- Location: LCCOMB_X17_Y15_N2
\inst|alu1|unidad_aritmetica|divi|Add3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add3~2_combout\ = (\inst|REG_B\(1) & ((\inst|alu1|unidad_aritmetica|divi|Add2~41_combout\ & (!\inst|alu1|unidad_aritmetica|divi|Add3~1\)) # (!\inst|alu1|unidad_aritmetica|divi|Add2~41_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add3~1\) # (GND))))) # (!\inst|REG_B\(1) & ((\inst|alu1|unidad_aritmetica|divi|Add2~41_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add3~1\ & VCC)) # (!\inst|alu1|unidad_aritmetica|divi|Add2~41_combout\ & 
-- (!\inst|alu1|unidad_aritmetica|divi|Add3~1\))))
-- \inst|alu1|unidad_aritmetica|divi|Add3~3\ = CARRY((\inst|REG_B\(1) & ((!\inst|alu1|unidad_aritmetica|divi|Add3~1\) # (!\inst|alu1|unidad_aritmetica|divi|Add2~41_combout\))) # (!\inst|REG_B\(1) & (!\inst|alu1|unidad_aritmetica|divi|Add2~41_combout\ & 
-- !\inst|alu1|unidad_aritmetica|divi|Add3~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(1),
	datab => \inst|alu1|unidad_aritmetica|divi|Add2~41_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add3~1\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add3~2_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add3~3\);

-- Location: LCCOMB_X17_Y15_N4
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

-- Location: LCCOMB_X17_Y15_N6
\inst|alu1|unidad_aritmetica|divi|Add3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add3~6_combout\ = (\inst|alu1|unidad_aritmetica|divi|Add2~39_combout\ & ((\inst|REG_B\(3) & (!\inst|alu1|unidad_aritmetica|divi|Add3~5\)) # (!\inst|REG_B\(3) & (\inst|alu1|unidad_aritmetica|divi|Add3~5\ & VCC)))) # 
-- (!\inst|alu1|unidad_aritmetica|divi|Add2~39_combout\ & ((\inst|REG_B\(3) & ((\inst|alu1|unidad_aritmetica|divi|Add3~5\) # (GND))) # (!\inst|REG_B\(3) & (!\inst|alu1|unidad_aritmetica|divi|Add3~5\))))
-- \inst|alu1|unidad_aritmetica|divi|Add3~7\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add2~39_combout\ & (\inst|REG_B\(3) & !\inst|alu1|unidad_aritmetica|divi|Add3~5\)) # (!\inst|alu1|unidad_aritmetica|divi|Add2~39_combout\ & ((\inst|REG_B\(3)) # 
-- (!\inst|alu1|unidad_aritmetica|divi|Add3~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add2~39_combout\,
	datab => \inst|REG_B\(3),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add3~5\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add3~6_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add3~7\);

-- Location: LCCOMB_X17_Y15_N8
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

-- Location: LCCOMB_X17_Y15_N10
\inst|alu1|unidad_aritmetica|divi|Add3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add3~10_combout\ = (\inst|REG_B\(5) & ((\inst|alu1|unidad_aritmetica|divi|Add2~37_combout\ & (!\inst|alu1|unidad_aritmetica|divi|Add3~9\)) # (!\inst|alu1|unidad_aritmetica|divi|Add2~37_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add3~9\) # (GND))))) # (!\inst|REG_B\(5) & ((\inst|alu1|unidad_aritmetica|divi|Add2~37_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add3~9\ & VCC)) # (!\inst|alu1|unidad_aritmetica|divi|Add2~37_combout\ & 
-- (!\inst|alu1|unidad_aritmetica|divi|Add3~9\))))
-- \inst|alu1|unidad_aritmetica|divi|Add3~11\ = CARRY((\inst|REG_B\(5) & ((!\inst|alu1|unidad_aritmetica|divi|Add3~9\) # (!\inst|alu1|unidad_aritmetica|divi|Add2~37_combout\))) # (!\inst|REG_B\(5) & (!\inst|alu1|unidad_aritmetica|divi|Add2~37_combout\ & 
-- !\inst|alu1|unidad_aritmetica|divi|Add3~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(5),
	datab => \inst|alu1|unidad_aritmetica|divi|Add2~37_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add3~9\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add3~10_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add3~11\);

-- Location: LCCOMB_X17_Y15_N12
\inst|alu1|unidad_aritmetica|divi|Add3~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add3~12_combout\ = ((\inst|alu1|unidad_aritmetica|divi|Add2~36_combout\ $ (\inst|REG_B\(6) $ (\inst|alu1|unidad_aritmetica|divi|Add3~11\)))) # (GND)
-- \inst|alu1|unidad_aritmetica|divi|Add3~13\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add2~36_combout\ & ((!\inst|alu1|unidad_aritmetica|divi|Add3~11\) # (!\inst|REG_B\(6)))) # (!\inst|alu1|unidad_aritmetica|divi|Add2~36_combout\ & (!\inst|REG_B\(6) & 
-- !\inst|alu1|unidad_aritmetica|divi|Add3~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add2~36_combout\,
	datab => \inst|REG_B\(6),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add3~11\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add3~12_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add3~13\);

-- Location: LCCOMB_X17_Y15_N14
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

-- Location: LCCOMB_X17_Y15_N16
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

-- Location: LCCOMB_X17_Y15_N18
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

-- Location: LCCOMB_X17_Y15_N20
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

-- Location: LCCOMB_X17_Y15_N22
\inst|alu1|unidad_aritmetica|divi|Add3~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add3~22_combout\ = (\inst|REG_B\(11) & ((\inst|alu1|unidad_aritmetica|divi|Add2~31_combout\ & (!\inst|alu1|unidad_aritmetica|divi|Add3~21\)) # (!\inst|alu1|unidad_aritmetica|divi|Add2~31_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add3~21\) # (GND))))) # (!\inst|REG_B\(11) & ((\inst|alu1|unidad_aritmetica|divi|Add2~31_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add3~21\ & VCC)) # (!\inst|alu1|unidad_aritmetica|divi|Add2~31_combout\ & 
-- (!\inst|alu1|unidad_aritmetica|divi|Add3~21\))))
-- \inst|alu1|unidad_aritmetica|divi|Add3~23\ = CARRY((\inst|REG_B\(11) & ((!\inst|alu1|unidad_aritmetica|divi|Add3~21\) # (!\inst|alu1|unidad_aritmetica|divi|Add2~31_combout\))) # (!\inst|REG_B\(11) & (!\inst|alu1|unidad_aritmetica|divi|Add2~31_combout\ & 
-- !\inst|alu1|unidad_aritmetica|divi|Add3~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(11),
	datab => \inst|alu1|unidad_aritmetica|divi|Add2~31_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add3~21\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add3~22_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add3~23\);

-- Location: LCCOMB_X17_Y15_N24
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

-- Location: LCCOMB_X17_Y15_N28
\inst|alu1|unidad_aritmetica|divi|Add3~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add3~29_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan3~28_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add2~30_combout\)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan3~28_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add3~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add2~30_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|LessThan3~28_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|Add3~24_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add3~29_combout\);

-- Location: LCCOMB_X17_Y15_N30
\inst|alu1|unidad_aritmetica|divi|Add3~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add3~30_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan3~28_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add2~31_combout\)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan3~28_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add3~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|unidad_aritmetica|divi|Add2~31_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|LessThan3~28_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|Add3~22_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add3~30_combout\);

-- Location: LCCOMB_X16_Y13_N24
\inst|alu1|unidad_aritmetica|divi|Add3~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add3~31_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan3~28_combout\ & ((\inst|alu1|unidad_aritmetica|divi|Add2~32_combout\))) # (!\inst|alu1|unidad_aritmetica|divi|LessThan3~28_combout\ & 
-- (\inst|alu1|unidad_aritmetica|divi|Add3~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add3~20_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|LessThan3~28_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|Add2~32_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add3~31_combout\);

-- Location: LCCOMB_X18_Y14_N8
\inst|alu1|unidad_aritmetica|divi|Add3~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add3~32_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan3~28_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add2~33_combout\)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan3~28_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add3~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add2~33_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|Add3~18_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan3~28_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add3~32_combout\);

-- Location: LCCOMB_X18_Y14_N22
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

-- Location: LCCOMB_X18_Y12_N6
\inst|alu1|unidad_aritmetica|divi|Add3~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add3~34_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan3~28_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add2~35_combout\)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan3~28_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add3~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add2~35_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|Add3~14_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan3~28_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add3~34_combout\);

-- Location: LCCOMB_X18_Y12_N4
\inst|alu1|unidad_aritmetica|divi|Add3~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add3~35_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan3~28_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add2~36_combout\)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan3~28_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add3~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|unidad_aritmetica|divi|Add2~36_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|LessThan3~28_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|Add3~12_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add3~35_combout\);

-- Location: LCCOMB_X18_Y13_N24
\inst|alu1|unidad_aritmetica|divi|Add3~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add3~36_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan3~28_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add2~37_combout\)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan3~28_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add3~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|unidad_aritmetica|divi|Add2~37_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|LessThan3~28_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|Add3~10_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add3~36_combout\);

-- Location: LCCOMB_X18_Y13_N2
\inst|alu1|unidad_aritmetica|divi|Add3~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add3~37_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan3~28_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add2~38_combout\)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan3~28_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add3~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|unidad_aritmetica|divi|Add2~38_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|LessThan3~28_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|Add3~8_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add3~37_combout\);

-- Location: LCCOMB_X16_Y13_N2
\inst|alu1|unidad_aritmetica|divi|Add3~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add3~38_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan3~28_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add2~39_combout\)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan3~28_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add3~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add2~39_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|LessThan3~28_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|Add3~6_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add3~38_combout\);

-- Location: LCCOMB_X18_Y14_N0
\inst|alu1|unidad_aritmetica|divi|Add3~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add3~39_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan3~28_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add2~40_combout\)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan3~28_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add3~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|unidad_aritmetica|divi|Add2~40_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|Add3~4_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan3~28_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add3~39_combout\);

-- Location: LCCOMB_X18_Y12_N10
\inst|alu1|unidad_aritmetica|divi|Add3~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add3~40_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan3~28_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add2~41_combout\)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan3~28_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|unidad_aritmetica|divi|Add2~41_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|Add3~2_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan3~28_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add3~40_combout\);

-- Location: LCCOMB_X18_Y13_N8
\inst|alu1|unidad_aritmetica|divi|Add3~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add3~41_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan3~28_combout\ & (\inst|REG_A\(4))) # (!\inst|alu1|unidad_aritmetica|divi|LessThan3~28_combout\ & ((\inst|alu1|unidad_aritmetica|divi|Add3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|REG_A\(4),
	datac => \inst|alu1|unidad_aritmetica|divi|LessThan3~28_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|Add3~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add3~41_combout\);

-- Location: LCCOMB_X17_Y16_N0
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

-- Location: LCCOMB_X17_Y16_N2
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

-- Location: LCCOMB_X17_Y16_N4
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

-- Location: LCCOMB_X17_Y16_N6
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

-- Location: LCCOMB_X17_Y16_N8
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

-- Location: LCCOMB_X17_Y16_N10
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

-- Location: LCCOMB_X17_Y16_N12
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

-- Location: LCCOMB_X17_Y16_N14
\inst|alu1|unidad_aritmetica|divi|Add4~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add4~14_combout\ = (\inst|alu1|unidad_aritmetica|divi|Add3~35_combout\ & ((\inst|REG_B\(7) & (!\inst|alu1|unidad_aritmetica|divi|Add4~13\)) # (!\inst|REG_B\(7) & (\inst|alu1|unidad_aritmetica|divi|Add4~13\ & VCC)))) # 
-- (!\inst|alu1|unidad_aritmetica|divi|Add3~35_combout\ & ((\inst|REG_B\(7) & ((\inst|alu1|unidad_aritmetica|divi|Add4~13\) # (GND))) # (!\inst|REG_B\(7) & (!\inst|alu1|unidad_aritmetica|divi|Add4~13\))))
-- \inst|alu1|unidad_aritmetica|divi|Add4~15\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add3~35_combout\ & (\inst|REG_B\(7) & !\inst|alu1|unidad_aritmetica|divi|Add4~13\)) # (!\inst|alu1|unidad_aritmetica|divi|Add3~35_combout\ & ((\inst|REG_B\(7)) # 
-- (!\inst|alu1|unidad_aritmetica|divi|Add4~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add3~35_combout\,
	datab => \inst|REG_B\(7),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add4~13\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add4~14_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add4~15\);

-- Location: LCCOMB_X17_Y16_N16
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

-- Location: LCCOMB_X17_Y16_N18
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

-- Location: LCCOMB_X17_Y16_N20
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

-- Location: LCCOMB_X17_Y16_N22
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

-- Location: LCCOMB_X17_Y16_N24
\inst|alu1|unidad_aritmetica|divi|Add4~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add4~24_combout\ = ((\inst|alu1|unidad_aritmetica|divi|Add3~30_combout\ $ (\inst|REG_B\(12) $ (\inst|alu1|unidad_aritmetica|divi|Add4~23\)))) # (GND)
-- \inst|alu1|unidad_aritmetica|divi|Add4~25\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add3~30_combout\ & ((!\inst|alu1|unidad_aritmetica|divi|Add4~23\) # (!\inst|REG_B\(12)))) # (!\inst|alu1|unidad_aritmetica|divi|Add3~30_combout\ & (!\inst|REG_B\(12) & 
-- !\inst|alu1|unidad_aritmetica|divi|Add4~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add3~30_combout\,
	datab => \inst|REG_B\(12),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add4~23\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add4~24_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add4~25\);

-- Location: LCCOMB_X17_Y16_N26
\inst|alu1|unidad_aritmetica|divi|Add4~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add4~26_combout\ = \inst|REG_B\(13) $ (\inst|alu1|unidad_aritmetica|divi|Add4~25\ $ (!\inst|alu1|unidad_aritmetica|divi|Add3~29_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|REG_B\(13),
	datad => \inst|alu1|unidad_aritmetica|divi|Add3~29_combout\,
	cin => \inst|alu1|unidad_aritmetica|divi|Add4~25\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add4~26_combout\);

-- Location: LCCOMB_X17_Y15_N26
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

-- Location: LCCOMB_X18_Y15_N0
\inst|alu1|unidad_aritmetica|divi|Add3~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add3~28_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan3~28_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add2~29_combout\)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan3~28_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add3~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|unidad_aritmetica|divi|Add2~29_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|Add3~26_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan3~28_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add3~28_combout\);

-- Location: LCCOMB_X18_Y15_N2
\inst|alu1|unidad_aritmetica|divi|LessThan4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan4~1_cout\ = CARRY((\inst|REG_B\(0) & !\inst|REG_A\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(0),
	datab => \inst|REG_A\(3),
	datad => VCC,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan4~1_cout\);

-- Location: LCCOMB_X18_Y15_N4
\inst|alu1|unidad_aritmetica|divi|LessThan4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan4~3_cout\ = CARRY((\inst|REG_B\(1) & (\inst|alu1|unidad_aritmetica|divi|Add3~41_combout\ & !\inst|alu1|unidad_aritmetica|divi|LessThan4~1_cout\)) # (!\inst|REG_B\(1) & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add3~41_combout\) # (!\inst|alu1|unidad_aritmetica|divi|LessThan4~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(1),
	datab => \inst|alu1|unidad_aritmetica|divi|Add3~41_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan4~1_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan4~3_cout\);

-- Location: LCCOMB_X18_Y15_N6
\inst|alu1|unidad_aritmetica|divi|LessThan4~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan4~5_cout\ = CARRY((\inst|REG_B\(2) & ((!\inst|alu1|unidad_aritmetica|divi|LessThan4~3_cout\) # (!\inst|alu1|unidad_aritmetica|divi|Add3~40_combout\))) # (!\inst|REG_B\(2) & 
-- (!\inst|alu1|unidad_aritmetica|divi|Add3~40_combout\ & !\inst|alu1|unidad_aritmetica|divi|LessThan4~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(2),
	datab => \inst|alu1|unidad_aritmetica|divi|Add3~40_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan4~3_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan4~5_cout\);

-- Location: LCCOMB_X18_Y15_N8
\inst|alu1|unidad_aritmetica|divi|LessThan4~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan4~7_cout\ = CARRY((\inst|REG_B\(3) & (\inst|alu1|unidad_aritmetica|divi|Add3~39_combout\ & !\inst|alu1|unidad_aritmetica|divi|LessThan4~5_cout\)) # (!\inst|REG_B\(3) & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add3~39_combout\) # (!\inst|alu1|unidad_aritmetica|divi|LessThan4~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(3),
	datab => \inst|alu1|unidad_aritmetica|divi|Add3~39_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan4~5_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan4~7_cout\);

-- Location: LCCOMB_X18_Y15_N10
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

-- Location: LCCOMB_X18_Y15_N12
\inst|alu1|unidad_aritmetica|divi|LessThan4~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan4~11_cout\ = CARRY((\inst|REG_B\(5) & (\inst|alu1|unidad_aritmetica|divi|Add3~37_combout\ & !\inst|alu1|unidad_aritmetica|divi|LessThan4~9_cout\)) # (!\inst|REG_B\(5) & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add3~37_combout\) # (!\inst|alu1|unidad_aritmetica|divi|LessThan4~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(5),
	datab => \inst|alu1|unidad_aritmetica|divi|Add3~37_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan4~9_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan4~11_cout\);

-- Location: LCCOMB_X18_Y15_N14
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

-- Location: LCCOMB_X18_Y15_N16
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

-- Location: LCCOMB_X18_Y15_N18
\inst|alu1|unidad_aritmetica|divi|LessThan4~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan4~17_cout\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add3~34_combout\ & (\inst|REG_B\(8) & !\inst|alu1|unidad_aritmetica|divi|LessThan4~15_cout\)) # (!\inst|alu1|unidad_aritmetica|divi|Add3~34_combout\ & 
-- ((\inst|REG_B\(8)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan4~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add3~34_combout\,
	datab => \inst|REG_B\(8),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan4~15_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan4~17_cout\);

-- Location: LCCOMB_X18_Y15_N20
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

-- Location: LCCOMB_X18_Y15_N22
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

-- Location: LCCOMB_X18_Y15_N24
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

-- Location: LCCOMB_X18_Y15_N26
\inst|alu1|unidad_aritmetica|divi|LessThan4~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan4~25_cout\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add3~30_combout\ & (\inst|REG_B\(12) & !\inst|alu1|unidad_aritmetica|divi|LessThan4~23_cout\)) # (!\inst|alu1|unidad_aritmetica|divi|Add3~30_combout\ & 
-- ((\inst|REG_B\(12)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan4~23_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add3~30_combout\,
	datab => \inst|REG_B\(12),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan4~23_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan4~25_cout\);

-- Location: LCCOMB_X18_Y15_N28
\inst|alu1|unidad_aritmetica|divi|LessThan4~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan4~27_cout\ = CARRY((\inst|REG_B\(13) & (\inst|alu1|unidad_aritmetica|divi|Add3~29_combout\ & !\inst|alu1|unidad_aritmetica|divi|LessThan4~25_cout\)) # (!\inst|REG_B\(13) & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add3~29_combout\) # (!\inst|alu1|unidad_aritmetica|divi|LessThan4~25_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(13),
	datab => \inst|alu1|unidad_aritmetica|divi|Add3~29_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan4~25_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan4~27_cout\);

-- Location: LCCOMB_X18_Y15_N30
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

-- Location: LCCOMB_X17_Y16_N28
\inst|alu1|unidad_aritmetica|divi|Add4~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add4~28_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan4~28_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add3~29_combout\)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan4~28_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add4~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add3~29_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|Add4~26_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan4~28_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add4~28_combout\);

-- Location: LCCOMB_X17_Y12_N30
\inst|alu1|unidad_aritmetica|divi|Add4~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add4~29_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan4~28_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add3~30_combout\)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan4~28_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add4~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|unidad_aritmetica|divi|Add3~30_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|Add4~24_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan4~28_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add4~29_combout\);

-- Location: LCCOMB_X17_Y16_N30
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

-- Location: LCCOMB_X18_Y14_N6
\inst|alu1|unidad_aritmetica|divi|Add4~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add4~31_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan4~28_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add3~32_combout\)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan4~28_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add4~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|unidad_aritmetica|divi|Add3~32_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|LessThan4~28_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|Add4~20_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add4~31_combout\);

-- Location: LCCOMB_X18_Y14_N20
\inst|alu1|unidad_aritmetica|divi|Add4~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add4~32_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan4~28_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add3~33_combout\)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan4~28_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add4~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add3~33_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|LessThan4~28_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|Add4~18_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add4~32_combout\);

-- Location: LCCOMB_X18_Y12_N28
\inst|alu1|unidad_aritmetica|divi|Add4~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add4~33_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan4~28_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add3~34_combout\)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan4~28_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add4~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add3~34_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|LessThan4~28_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|Add4~16_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add4~33_combout\);

-- Location: LCCOMB_X18_Y12_N18
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

-- Location: LCCOMB_X18_Y13_N6
\inst|alu1|unidad_aritmetica|divi|Add4~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add4~35_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan4~28_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add3~36_combout\)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan4~28_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add4~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|unidad_aritmetica|divi|Add3~36_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|LessThan4~28_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|Add4~12_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add4~35_combout\);

-- Location: LCCOMB_X18_Y13_N20
\inst|alu1|unidad_aritmetica|divi|Add4~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add4~36_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan4~28_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add3~37_combout\)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan4~28_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add4~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|unidad_aritmetica|divi|Add3~37_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|LessThan4~28_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|Add4~10_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add4~36_combout\);

-- Location: LCCOMB_X16_Y13_N0
\inst|alu1|unidad_aritmetica|divi|Add4~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add4~37_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan4~28_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add3~38_combout\)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan4~28_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add4~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|unidad_aritmetica|divi|Add3~38_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|Add4~8_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan4~28_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add4~37_combout\);

-- Location: LCCOMB_X18_Y14_N14
\inst|alu1|unidad_aritmetica|divi|Add4~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add4~38_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan4~28_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add3~39_combout\)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan4~28_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add4~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|unidad_aritmetica|divi|Add3~39_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|LessThan4~28_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|Add4~6_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add4~38_combout\);

-- Location: LCCOMB_X18_Y12_N24
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

-- Location: LCCOMB_X18_Y13_N30
\inst|alu1|unidad_aritmetica|divi|Add4~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add4~40_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan4~28_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add3~41_combout\)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan4~28_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add4~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|unidad_aritmetica|divi|Add3~41_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|LessThan4~28_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|Add4~2_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add4~40_combout\);

-- Location: LCCOMB_X19_Y14_N28
\inst|alu1|unidad_aritmetica|divi|Add4~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add4~41_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan4~28_combout\ & (\inst|REG_A\(3))) # (!\inst|alu1|unidad_aritmetica|divi|LessThan4~28_combout\ & ((\inst|alu1|unidad_aritmetica|divi|Add4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|REG_A\(3),
	datac => \inst|alu1|unidad_aritmetica|divi|LessThan4~28_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|Add4~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add4~41_combout\);

-- Location: LCCOMB_X17_Y12_N0
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

-- Location: LCCOMB_X17_Y12_N2
\inst|alu1|unidad_aritmetica|divi|LessThan5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan5~3_cout\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add4~41_combout\ & ((!\inst|alu1|unidad_aritmetica|divi|LessThan5~1_cout\) # (!\inst|REG_B\(1)))) # (!\inst|alu1|unidad_aritmetica|divi|Add4~41_combout\ & 
-- (!\inst|REG_B\(1) & !\inst|alu1|unidad_aritmetica|divi|LessThan5~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add4~41_combout\,
	datab => \inst|REG_B\(1),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan5~1_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan5~3_cout\);

-- Location: LCCOMB_X17_Y12_N4
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

-- Location: LCCOMB_X17_Y12_N6
\inst|alu1|unidad_aritmetica|divi|LessThan5~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan5~7_cout\ = CARRY((\inst|REG_B\(3) & (\inst|alu1|unidad_aritmetica|divi|Add4~39_combout\ & !\inst|alu1|unidad_aritmetica|divi|LessThan5~5_cout\)) # (!\inst|REG_B\(3) & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add4~39_combout\) # (!\inst|alu1|unidad_aritmetica|divi|LessThan5~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(3),
	datab => \inst|alu1|unidad_aritmetica|divi|Add4~39_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan5~5_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan5~7_cout\);

-- Location: LCCOMB_X17_Y12_N8
\inst|alu1|unidad_aritmetica|divi|LessThan5~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan5~9_cout\ = CARRY((\inst|REG_B\(4) & ((!\inst|alu1|unidad_aritmetica|divi|LessThan5~7_cout\) # (!\inst|alu1|unidad_aritmetica|divi|Add4~38_combout\))) # (!\inst|REG_B\(4) & 
-- (!\inst|alu1|unidad_aritmetica|divi|Add4~38_combout\ & !\inst|alu1|unidad_aritmetica|divi|LessThan5~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(4),
	datab => \inst|alu1|unidad_aritmetica|divi|Add4~38_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan5~7_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan5~9_cout\);

-- Location: LCCOMB_X17_Y12_N10
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

-- Location: LCCOMB_X17_Y12_N12
\inst|alu1|unidad_aritmetica|divi|LessThan5~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan5~13_cout\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add4~36_combout\ & (\inst|REG_B\(6) & !\inst|alu1|unidad_aritmetica|divi|LessThan5~11_cout\)) # (!\inst|alu1|unidad_aritmetica|divi|Add4~36_combout\ & 
-- ((\inst|REG_B\(6)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan5~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add4~36_combout\,
	datab => \inst|REG_B\(6),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan5~11_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan5~13_cout\);

-- Location: LCCOMB_X17_Y12_N14
\inst|alu1|unidad_aritmetica|divi|LessThan5~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan5~15_cout\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add4~35_combout\ & ((!\inst|alu1|unidad_aritmetica|divi|LessThan5~13_cout\) # (!\inst|REG_B\(7)))) # (!\inst|alu1|unidad_aritmetica|divi|Add4~35_combout\ & 
-- (!\inst|REG_B\(7) & !\inst|alu1|unidad_aritmetica|divi|LessThan5~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add4~35_combout\,
	datab => \inst|REG_B\(7),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan5~13_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan5~15_cout\);

-- Location: LCCOMB_X17_Y12_N16
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

-- Location: LCCOMB_X17_Y12_N18
\inst|alu1|unidad_aritmetica|divi|LessThan5~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan5~19_cout\ = CARRY((\inst|REG_B\(9) & (\inst|alu1|unidad_aritmetica|divi|Add4~33_combout\ & !\inst|alu1|unidad_aritmetica|divi|LessThan5~17_cout\)) # (!\inst|REG_B\(9) & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add4~33_combout\) # (!\inst|alu1|unidad_aritmetica|divi|LessThan5~17_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(9),
	datab => \inst|alu1|unidad_aritmetica|divi|Add4~33_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan5~17_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan5~19_cout\);

-- Location: LCCOMB_X17_Y12_N20
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

-- Location: LCCOMB_X17_Y12_N22
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

-- Location: LCCOMB_X17_Y12_N24
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

-- Location: LCCOMB_X17_Y12_N26
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

-- Location: LCCOMB_X17_Y12_N28
\inst|alu1|unidad_aritmetica|divi|LessThan5~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan5~28_combout\ = (\inst|REG_B\(14) & ((!\inst|alu1|unidad_aritmetica|divi|Add4~28_combout\) # (!\inst|alu1|unidad_aritmetica|divi|LessThan5~27_cout\))) # (!\inst|REG_B\(14) & 
-- (!\inst|alu1|unidad_aritmetica|divi|LessThan5~27_cout\ & !\inst|alu1|unidad_aritmetica|divi|Add4~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(14),
	datad => \inst|alu1|unidad_aritmetica|divi|Add4~28_combout\,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan5~27_cout\,
	combout => \inst|alu1|unidad_aritmetica|divi|LessThan5~28_combout\);

-- Location: LCCOMB_X22_Y12_N10
\inst|alu1|Mux13~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux13~2_combout\ = (\inst|alu1|Mux13~1_combout\ & (((!\inst|alu1|Mux17~0_combout\)) # (!\inst|alu1|unidad_aritmetica|resta|sR:2:sP|Suma~0_combout\))) # (!\inst|alu1|Mux13~1_combout\ & (((!\inst|alu1|unidad_aritmetica|divi|LessThan5~28_combout\ 
-- & \inst|alu1|Mux17~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux13~1_combout\,
	datab => \inst|alu1|unidad_aritmetica|resta|sR:2:sP|Suma~0_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|LessThan5~28_combout\,
	datad => \inst|alu1|Mux17~0_combout\,
	combout => \inst|alu1|Mux13~2_combout\);

-- Location: LCCOMB_X22_Y12_N24
\inst|alu1|Mux13~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux13~3_combout\ = (\inst|alu1|Mux14~2_combout\ & (\inst|alu1|Mux14~1_combout\ & ((\inst|alu1|Mux13~2_combout\)))) # (!\inst|alu1|Mux14~2_combout\ & (((\inst|alu1|comparador|comp3|gout~0_combout\)) # (!\inst|alu1|Mux14~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux14~2_combout\,
	datab => \inst|alu1|Mux14~1_combout\,
	datac => \inst|alu1|comparador|comp3|gout~0_combout\,
	datad => \inst|alu1|Mux13~2_combout\,
	combout => \inst|alu1|Mux13~3_combout\);

-- Location: LCCOMB_X22_Y12_N6
\inst|alu1|Mux13~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux13~4_combout\ = (\inst|alu1|Mux14~0_combout\ & (((\inst|alu1|Mux13~3_combout\)))) # (!\inst|alu1|Mux14~0_combout\ & ((\inst|alu1|Mux13~3_combout\ & (\inst|alu1|Mux13~0_combout\)) # (!\inst|alu1|Mux13~3_combout\ & 
-- ((\inst|alu1|unidad_logica|salida_aux\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux13~0_combout\,
	datab => \inst|alu1|unidad_logica|salida_aux\(2),
	datac => \inst|alu1|Mux14~0_combout\,
	datad => \inst|alu1|Mux13~3_combout\,
	combout => \inst|alu1|Mux13~4_combout\);

-- Location: LCCOMB_X22_Y12_N0
\inst|alu1|Mux13~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux13~6_combout\ = (\inst|alu1|Mux13~5_combout\ & (\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~31_combout\)) # (!\inst|alu1|Mux13~5_combout\ & ((\inst|alu1|Mux13~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux13~5_combout\,
	datac => \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~31_combout\,
	datad => \inst|alu1|Mux13~4_combout\,
	combout => \inst|alu1|Mux13~6_combout\);

-- Location: LCCOMB_X21_Y13_N10
\inst|reggy~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~28_combout\ = (!\inst|Equal9~0_combout\ & ((\inst|reggy~15_combout\ & (\inst|REG_D\(2))) # (!\inst|reggy~15_combout\ & ((\inst|alu1|Mux13~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy~15_combout\,
	datab => \inst|REG_D\(2),
	datac => \inst|Equal9~0_combout\,
	datad => \inst|alu1|Mux13~6_combout\,
	combout => \inst|reggy~28_combout\);

-- Location: LCCOMB_X21_Y13_N4
\inst|reggy~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~58_combout\ = (\inst|reggy~28_combout\) # ((\inst|Equal9~0_combout\ & (\inst|REG_B\(2) & \inst|REG_A\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal9~0_combout\,
	datab => \inst|REG_B\(2),
	datac => \inst|REG_A\(2),
	datad => \inst|reggy~28_combout\,
	combout => \inst|reggy~58_combout\);

-- Location: FF_X21_Y13_N5
\inst|reggy[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|reggy~58_combout\,
	ena => \inst|reggy[0][11]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy[0][2]~q\);

-- Location: LCCOMB_X19_Y13_N20
\inst|Mux37~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux37~0_combout\ = (\inst|MAR\(0) & ((\inst|reggy[1][2]~q\))) # (!\inst|MAR\(0) & (\inst|reggy[0][2]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MAR\(0),
	datab => \inst|reggy[0][2]~q\,
	datac => \inst|reggy[1][2]~q\,
	combout => \inst|Mux37~0_combout\);

-- Location: FF_X12_Y14_N7
\inst|REG_B[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|Mux37~0_combout\,
	sclr => \inst|MAR\(1),
	sload => VCC,
	ena => \inst|OP[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|REG_B\(2));

-- Location: LCCOMB_X13_Y15_N30
\inst|alu1|unidad_aritmetica|mult|inter[16]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|inter\(16) = (\inst|REG_B\(2) & \inst|REG_A\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|REG_B\(2),
	datad => \inst|REG_A\(0),
	combout => \inst|alu1|unidad_aritmetica|mult|inter\(16));

-- Location: LCCOMB_X13_Y15_N26
\inst|alu1|unidad_aritmetica|mult|multi2|sR:2:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi2|sR:2:sP|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|mult|inter\(16) & (\inst|alu1|unidad_aritmetica|mult|multi1|sR:1:sP|Cout~0_combout\ $ (\inst|alu1|unidad_aritmetica|mult|inter\(2) $ 
-- (\inst|reggy~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|inter\(16),
	datab => \inst|alu1|unidad_aritmetica|mult|multi1|sR:1:sP|Cout~0_combout\,
	datac => \inst|alu1|unidad_aritmetica|mult|inter\(2),
	datad => \inst|reggy~4_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi2|sR:2:sP|Cout~0_combout\);

-- Location: LCCOMB_X13_Y15_N28
\inst|alu1|unidad_aritmetica|mult|multi2|sR:3:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi2|sR:3:sP|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|mult|multi2|sR:2:sP|Cout~0_combout\ $ (\inst|alu1|unidad_aritmetica|mult|multi1|sR:3:sP|Suma~0_combout\ $ (((\inst|REG_B\(2) & \inst|REG_A\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|multi2|sR:2:sP|Cout~0_combout\,
	datab => \inst|REG_B\(2),
	datac => \inst|REG_A\(1),
	datad => \inst|alu1|unidad_aritmetica|mult|multi1|sR:3:sP|Suma~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi2|sR:3:sP|Suma~0_combout\);

-- Location: LCCOMB_X13_Y15_N4
\inst|alu1|unidad_aritmetica|mult|multi3|sR:3:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi3|sR:3:sP|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|mult|multi2|sR:3:sP|Suma~0_combout\ $ (((\inst|REG_A\(0) & \inst|REG_B\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|REG_A\(0),
	datac => \inst|REG_B\(3),
	datad => \inst|alu1|unidad_aritmetica|mult|multi2|sR:3:sP|Suma~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi3|sR:3:sP|Suma~0_combout\);

-- Location: LCCOMB_X13_Y12_N6
\inst|alu1|unidad_aritmetica|resta|sR:2:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|resta|sR:2:sP|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|resta|sR:1:sP|Cout2~0_combout\) # ((\inst|alu1|unidad_aritmetica|suma|Yop~2_combout\ & (\inst|alu1|unidad_aritmetica|resta|sR:1:sP|Cout~0_combout\ & 
-- \inst|alu1|unidad_aritmetica|suma|Xop\(2))) # (!\inst|alu1|unidad_aritmetica|suma|Yop~2_combout\ & ((\inst|alu1|unidad_aritmetica|resta|sR:1:sP|Cout~0_combout\) # (\inst|alu1|unidad_aritmetica|suma|Xop\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|suma|Yop~2_combout\,
	datab => \inst|alu1|unidad_aritmetica|resta|sR:1:sP|Cout~0_combout\,
	datac => \inst|alu1|unidad_aritmetica|suma|Xop\(2),
	datad => \inst|alu1|unidad_aritmetica|resta|sR:1:sP|Cout2~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|resta|sR:2:sP|Cout~0_combout\);

-- Location: LCCOMB_X13_Y11_N16
\inst|alu1|unidad_aritmetica|resta|sR:3:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|resta|sR:3:sP|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|resta|sR:2:sP|Cout~0_combout\ $ (\inst|alu1|unidad_aritmetica|suma|Xop\(3) $ (\inst|alu1|unidad_aritmetica|suma|Yop~3_combout\ $ 
-- (\inst|alu1|unidad_aritmetica|resta|sR:2:sP|Cout2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|resta|sR:2:sP|Cout~0_combout\,
	datab => \inst|alu1|unidad_aritmetica|suma|Xop\(3),
	datac => \inst|alu1|unidad_aritmetica|suma|Yop~3_combout\,
	datad => \inst|alu1|unidad_aritmetica|resta|sR:2:sP|Cout2~4_combout\,
	combout => \inst|alu1|unidad_aritmetica|resta|sR:3:sP|Suma~0_combout\);

-- Location: LCCOMB_X13_Y11_N14
\inst|alu1|unidad_aritmetica|suma|sR:3:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|sR:3:sP|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|suma|sR:2:sP|Cout2~0_combout\ $ (\inst|alu1|unidad_aritmetica|suma|Xop\(3) $ (\inst|alu1|unidad_aritmetica|suma|sR:2:sP|Cout~1_combout\ $ 
-- (\inst|alu1|unidad_aritmetica|suma|Yop~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|suma|sR:2:sP|Cout2~0_combout\,
	datab => \inst|alu1|unidad_aritmetica|suma|Xop\(3),
	datac => \inst|alu1|unidad_aritmetica|suma|sR:2:sP|Cout~1_combout\,
	datad => \inst|alu1|unidad_aritmetica|suma|Yop~3_combout\,
	combout => \inst|alu1|unidad_aritmetica|suma|sR:3:sP|Suma~0_combout\);

-- Location: LCCOMB_X14_Y11_N18
\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~20_combout\ = (\inst|alu1|Mux16~0_combout\ & ((\inst|alu1|Mux17~0_combout\ & (\inst|alu1|unidad_aritmetica|resta|sR:3:sP|Suma~0_combout\)) # (!\inst|alu1|Mux17~0_combout\ & 
-- ((!\inst|alu1|unidad_aritmetica|suma|sR:3:sP|Suma~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|resta|sR:3:sP|Suma~0_combout\,
	datab => \inst|alu1|Mux16~0_combout\,
	datac => \inst|alu1|Mux17~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|suma|sR:3:sP|Suma~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~20_combout\);

-- Location: LCCOMB_X14_Y11_N4
\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~21_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~20_combout\) # ((!\inst|alu1|Mux16~0_combout\ & !\inst|alu1|unidad_aritmetica|mult|multi3|sR:3:sP|Suma~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|Mux16~0_combout\,
	datac => \inst|alu1|unidad_aritmetica|mult|multi3|sR:3:sP|Suma~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~20_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~21_combout\);

-- Location: LCCOMB_X14_Y11_N10
\inst|alu1|Mux12~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux12~2_combout\ = (\inst|alu1|Mux17~0_combout\ & (((\inst|alu1|Mux16~0_combout\)))) # (!\inst|alu1|Mux17~0_combout\ & ((\inst|alu1|Mux16~0_combout\ & (\inst|alu1|unidad_aritmetica|suma|sR:3:sP|Suma~0_combout\)) # (!\inst|alu1|Mux16~0_combout\ 
-- & ((\inst|alu1|unidad_aritmetica|mult|multi3|sR:3:sP|Suma~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|suma|sR:3:sP|Suma~0_combout\,
	datab => \inst|alu1|Mux17~0_combout\,
	datac => \inst|alu1|unidad_aritmetica|mult|multi3|sR:3:sP|Suma~0_combout\,
	datad => \inst|alu1|Mux16~0_combout\,
	combout => \inst|alu1|Mux12~2_combout\);

-- Location: LCCOMB_X14_Y11_N8
\inst|alu1|Mux12~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux12~3_combout\ = (\inst|alu1|Mux17~0_combout\ & ((\inst|alu1|Mux12~2_combout\ & (!\inst|alu1|unidad_aritmetica|resta|sR:3:sP|Suma~0_combout\)) # (!\inst|alu1|Mux12~2_combout\ & ((!\inst|alu1|unidad_aritmetica|divi|LessThan4~28_combout\))))) # 
-- (!\inst|alu1|Mux17~0_combout\ & (((\inst|alu1|Mux12~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|resta|sR:3:sP|Suma~0_combout\,
	datab => \inst|alu1|Mux17~0_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|LessThan4~28_combout\,
	datad => \inst|alu1|Mux12~2_combout\,
	combout => \inst|alu1|Mux12~3_combout\);

-- Location: FF_X21_Y9_N5
\inst|alu1|unidad_logica|aux[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|alu1|unidad_logica|aux[3]~19_combout\,
	ena => \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|unidad_logica|aux\(3));

-- Location: LCCOMB_X23_Y11_N22
\inst|alu1|unidad_logica|salida_aux~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|salida_aux~26_combout\ = (\inst|REG_A\(3) & (((\inst|alu1|Mux16~0_combout\)))) # (!\inst|REG_A\(3) & (((\inst|alu1|Mux16~0_combout\ & \inst|REG_B\(3))) # (!\inst|alu1|Mux17~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux17~0_combout\,
	datab => \inst|REG_A\(3),
	datac => \inst|alu1|Mux16~0_combout\,
	datad => \inst|REG_B\(3),
	combout => \inst|alu1|unidad_logica|salida_aux~26_combout\);

-- Location: LCCOMB_X22_Y11_N14
\inst|alu1|unidad_logica|salida_aux~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|salida_aux~27_combout\ = (\inst|alu1|unidad_logica|salida_aux[14]~44_combout\ & ((\inst|alu1|unidad_logica|salida_aux~26_combout\ & ((\inst|reggy~7_combout\))) # (!\inst|alu1|unidad_logica|salida_aux~26_combout\ & 
-- (\inst|alu1|unidad_logica|aux\(3))))) # (!\inst|alu1|unidad_logica|salida_aux[14]~44_combout\ & (((\inst|alu1|unidad_logica|salida_aux~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_logica|aux\(3),
	datab => \inst|alu1|unidad_logica|salida_aux[14]~44_combout\,
	datac => \inst|reggy~7_combout\,
	datad => \inst|alu1|unidad_logica|salida_aux~26_combout\,
	combout => \inst|alu1|unidad_logica|salida_aux~27_combout\);

-- Location: FF_X22_Y11_N15
\inst|alu1|unidad_logica|salida_aux[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|alu1|unidad_logica|salida_aux~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|unidad_logica|salida_aux\(3));

-- Location: LCCOMB_X22_Y11_N22
\inst|alu1|barrel_shifters|aux[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|barrel_shifters|aux[3]~feeder_combout\ = \inst|REG_A\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|REG_A\(2),
	combout => \inst|alu1|barrel_shifters|aux[3]~feeder_combout\);

-- Location: FF_X22_Y11_N23
\inst|alu1|barrel_shifters|aux[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|alu1|barrel_shifters|aux[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|barrel_shifters|aux\(3));

-- Location: FF_X22_Y11_N11
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

-- Location: LCCOMB_X22_Y11_N10
\inst|alu1|Mux12~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux12~4_combout\ = (\inst|alu1|Mux12~0_combout\ & ((\inst|alu1|unidad_logica|salida_aux\(3)) # ((!\inst|alu1|Mux12~1_combout\)))) # (!\inst|alu1|Mux12~0_combout\ & (((\inst|alu1|barrel_shifters|salShifters\(3) & \inst|alu1|Mux12~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux12~0_combout\,
	datab => \inst|alu1|unidad_logica|salida_aux\(3),
	datac => \inst|alu1|barrel_shifters|salShifters\(3),
	datad => \inst|alu1|Mux12~1_combout\,
	combout => \inst|alu1|Mux12~4_combout\);

-- Location: LCCOMB_X22_Y11_N20
\inst|alu1|Mux12~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux12~5_combout\ = (\inst|alu1|Mux2~3_combout\ & ((\inst|alu1|Mux12~4_combout\ & (\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~33_combout\)) # (!\inst|alu1|Mux12~4_combout\ & ((\inst|alu1|Mux12~3_combout\))))) # 
-- (!\inst|alu1|Mux2~3_combout\ & (((\inst|alu1|Mux12~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~33_combout\,
	datab => \inst|alu1|Mux2~3_combout\,
	datac => \inst|alu1|Mux12~3_combout\,
	datad => \inst|alu1|Mux12~4_combout\,
	combout => \inst|alu1|Mux12~5_combout\);

-- Location: LCCOMB_X22_Y11_N28
\inst|alu1|Mux12~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux12~6_combout\ = (\inst|OP\(3) & ((\inst|OP\(2)) # ((\inst|alu1|Mux2~3_combout\ & \inst|alu1|Mux12~5_combout\)))) # (!\inst|OP\(3) & (((\inst|alu1|Mux12~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|OP\(2),
	datab => \inst|alu1|Mux2~3_combout\,
	datac => \inst|OP\(3),
	datad => \inst|alu1|Mux12~5_combout\,
	combout => \inst|alu1|Mux12~6_combout\);

-- Location: LCCOMB_X22_Y11_N30
\inst|reggy~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~27_combout\ = (\inst|reggy~26_combout\) # ((\inst|reggy~9_combout\ & \inst|alu1|Mux12~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|reggy~9_combout\,
	datac => \inst|reggy~26_combout\,
	datad => \inst|alu1|Mux12~6_combout\,
	combout => \inst|reggy~27_combout\);

-- Location: FF_X21_Y11_N17
\inst|reggy[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~27_combout\,
	sload => VCC,
	ena => \inst|reggy[1][11]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy[1][3]~q\);

-- Location: LCCOMB_X19_Y13_N26
\inst|Mux36~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux36~0_combout\ = (\inst|MAR\(0) & (\inst|reggy[1][3]~q\)) # (!\inst|MAR\(0) & ((\inst|reggy[0][3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MAR\(0),
	datac => \inst|reggy[1][3]~q\,
	datad => \inst|reggy[0][3]~q\,
	combout => \inst|Mux36~0_combout\);

-- Location: FF_X12_Y14_N29
\inst|REG_B[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|Mux36~0_combout\,
	sclr => \inst|MAR\(1),
	sload => VCC,
	ena => \inst|OP[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|REG_B\(3));

-- Location: LCCOMB_X12_Y12_N22
\inst|alu1|unidad_aritmetica|mult|multi3|sR:4:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi3|sR:4:sP|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|mult|multi2|sR:4:sP|Suma~0_combout\ $ (\inst|alu1|unidad_aritmetica|mult|multi3|sR:3:sP|Cout~0_combout\ $ (((\inst|REG_A\(1) & \inst|REG_B\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(1),
	datab => \inst|REG_B\(3),
	datac => \inst|alu1|unidad_aritmetica|mult|multi2|sR:4:sP|Suma~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|mult|multi3|sR:3:sP|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi3|sR:4:sP|Suma~0_combout\);

-- Location: LCCOMB_X12_Y12_N14
\inst|alu1|unidad_aritmetica|mult|multi4|sR:4:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi4|sR:4:sP|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|mult|multi3|sR:4:sP|Suma~0_combout\ $ (((\inst|REG_B\(4) & \inst|REG_A\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|REG_B\(4),
	datac => \inst|alu1|unidad_aritmetica|mult|multi3|sR:4:sP|Suma~0_combout\,
	datad => \inst|REG_A\(0),
	combout => \inst|alu1|unidad_aritmetica|mult|multi4|sR:4:sP|Suma~0_combout\);

-- Location: LCCOMB_X13_Y11_N10
\inst|alu1|unidad_aritmetica|resta|sR:3:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|resta|sR:3:sP|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|resta|sR:2:sP|Cout2~4_combout\) # ((\inst|alu1|unidad_aritmetica|resta|sR:2:sP|Cout~0_combout\ & ((\inst|alu1|unidad_aritmetica|suma|Xop\(3)) # 
-- (!\inst|alu1|unidad_aritmetica|suma|Yop~3_combout\))) # (!\inst|alu1|unidad_aritmetica|resta|sR:2:sP|Cout~0_combout\ & (!\inst|alu1|unidad_aritmetica|suma|Yop~3_combout\ & \inst|alu1|unidad_aritmetica|suma|Xop\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|resta|sR:2:sP|Cout~0_combout\,
	datab => \inst|alu1|unidad_aritmetica|suma|Yop~3_combout\,
	datac => \inst|alu1|unidad_aritmetica|suma|Xop\(3),
	datad => \inst|alu1|unidad_aritmetica|resta|sR:2:sP|Cout2~4_combout\,
	combout => \inst|alu1|unidad_aritmetica|resta|sR:3:sP|Cout~0_combout\);

-- Location: LCCOMB_X13_Y11_N22
\inst|alu1|unidad_aritmetica|resta|sR:4:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|resta|sR:4:sP|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|resta|sR:3:sP|Cout~0_combout\ $ (\inst|alu1|unidad_aritmetica|resta|sR:3:sP|Cout2~4_combout\ $ (\inst|alu1|unidad_aritmetica|suma|Yop~4_combout\ $ 
-- (\inst|alu1|unidad_aritmetica|suma|Xop\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|resta|sR:3:sP|Cout~0_combout\,
	datab => \inst|alu1|unidad_aritmetica|resta|sR:3:sP|Cout2~4_combout\,
	datac => \inst|alu1|unidad_aritmetica|suma|Yop~4_combout\,
	datad => \inst|alu1|unidad_aritmetica|suma|Xop\(4),
	combout => \inst|alu1|unidad_aritmetica|resta|sR:4:sP|Suma~0_combout\);

-- Location: LCCOMB_X12_Y11_N22
\inst|alu1|unidad_aritmetica|suma|sR:4:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|sR:4:sP|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|suma|sR:3:sP|Cout2~0_combout\ $ (\inst|alu1|unidad_aritmetica|suma|Yop~4_combout\ $ (\inst|alu1|unidad_aritmetica|suma|sR:3:sP|Cout~1_combout\ $ 
-- (\inst|alu1|unidad_aritmetica|suma|Xop\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|suma|sR:3:sP|Cout2~0_combout\,
	datab => \inst|alu1|unidad_aritmetica|suma|Yop~4_combout\,
	datac => \inst|alu1|unidad_aritmetica|suma|sR:3:sP|Cout~1_combout\,
	datad => \inst|alu1|unidad_aritmetica|suma|Xop\(4),
	combout => \inst|alu1|unidad_aritmetica|suma|sR:4:sP|Suma~0_combout\);

-- Location: LCCOMB_X16_Y12_N20
\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~18_combout\ = (\inst|alu1|Mux16~0_combout\ & ((\inst|alu1|Mux17~0_combout\ & (\inst|alu1|unidad_aritmetica|resta|sR:4:sP|Suma~0_combout\)) # (!\inst|alu1|Mux17~0_combout\ & 
-- ((!\inst|alu1|unidad_aritmetica|suma|sR:4:sP|Suma~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|resta|sR:4:sP|Suma~0_combout\,
	datab => \inst|alu1|Mux17~0_combout\,
	datac => \inst|alu1|Mux16~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|suma|sR:4:sP|Suma~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~18_combout\);

-- Location: LCCOMB_X16_Y12_N6
\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~19_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~18_combout\) # ((!\inst|alu1|unidad_aritmetica|mult|multi4|sR:4:sP|Suma~0_combout\ & !\inst|alu1|Mux16~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|multi4|sR:4:sP|Suma~0_combout\,
	datac => \inst|alu1|Mux16~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~18_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~19_combout\);

-- Location: LCCOMB_X16_Y12_N12
\inst|alu1|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux11~0_combout\ = (\inst|alu1|Mux16~0_combout\ & ((\inst|alu1|unidad_aritmetica|suma|sR:4:sP|Suma~0_combout\) # ((\inst|alu1|Mux17~0_combout\)))) # (!\inst|alu1|Mux16~0_combout\ & (((!\inst|alu1|Mux17~0_combout\ & 
-- \inst|alu1|unidad_aritmetica|mult|multi4|sR:4:sP|Suma~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|suma|sR:4:sP|Suma~0_combout\,
	datab => \inst|alu1|Mux16~0_combout\,
	datac => \inst|alu1|Mux17~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|mult|multi4|sR:4:sP|Suma~0_combout\,
	combout => \inst|alu1|Mux11~0_combout\);

-- Location: LCCOMB_X16_Y12_N10
\inst|alu1|Mux11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux11~1_combout\ = (\inst|alu1|Mux11~0_combout\ & (((!\inst|alu1|unidad_aritmetica|resta|sR:4:sP|Suma~0_combout\)) # (!\inst|alu1|Mux17~0_combout\))) # (!\inst|alu1|Mux11~0_combout\ & (\inst|alu1|Mux17~0_combout\ & 
-- ((!\inst|alu1|unidad_aritmetica|divi|LessThan3~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101001101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux11~0_combout\,
	datab => \inst|alu1|Mux17~0_combout\,
	datac => \inst|alu1|unidad_aritmetica|resta|sR:4:sP|Suma~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan3~28_combout\,
	combout => \inst|alu1|Mux11~1_combout\);

-- Location: LCCOMB_X21_Y11_N8
\inst|alu1|unidad_logica|salida_aux~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|salida_aux~23_combout\ = (\inst|REG_A\(4) & (((\inst|alu1|Mux16~0_combout\)))) # (!\inst|REG_A\(4) & (((\inst|REG_B\(4) & \inst|alu1|Mux16~0_combout\)) # (!\inst|alu1|Mux17~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(4),
	datab => \inst|REG_A\(4),
	datac => \inst|alu1|Mux17~0_combout\,
	datad => \inst|alu1|Mux16~0_combout\,
	combout => \inst|alu1|unidad_logica|salida_aux~23_combout\);

-- Location: FF_X21_Y9_N7
\inst|alu1|unidad_logica|aux[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|alu1|unidad_logica|aux[4]~21_combout\,
	ena => \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|unidad_logica|aux\(4));

-- Location: LCCOMB_X22_Y11_N24
\inst|alu1|unidad_logica|salida_aux~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|salida_aux~25_combout\ = (\inst|alu1|unidad_logica|salida_aux~23_combout\ & (((\inst|alu1|unidad_logica|salida_aux~24_combout\) # (!\inst|alu1|unidad_logica|salida_aux[14]~44_combout\)))) # 
-- (!\inst|alu1|unidad_logica|salida_aux~23_combout\ & (\inst|alu1|unidad_logica|aux\(4) & (\inst|alu1|unidad_logica|salida_aux[14]~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_logica|salida_aux~23_combout\,
	datab => \inst|alu1|unidad_logica|aux\(4),
	datac => \inst|alu1|unidad_logica|salida_aux[14]~44_combout\,
	datad => \inst|alu1|unidad_logica|salida_aux~24_combout\,
	combout => \inst|alu1|unidad_logica|salida_aux~25_combout\);

-- Location: FF_X22_Y11_N25
\inst|alu1|unidad_logica|salida_aux[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|alu1|unidad_logica|salida_aux~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|unidad_logica|salida_aux\(4));

-- Location: LCCOMB_X23_Y11_N20
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

-- Location: FF_X23_Y11_N21
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

-- Location: FF_X22_Y11_N13
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

-- Location: LCCOMB_X22_Y11_N12
\inst|alu1|Mux11~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux11~2_combout\ = (\inst|alu1|Mux12~0_combout\ & ((\inst|alu1|unidad_logica|salida_aux\(4)) # ((!\inst|alu1|Mux12~1_combout\)))) # (!\inst|alu1|Mux12~0_combout\ & (((\inst|alu1|barrel_shifters|salShifters\(4) & \inst|alu1|Mux12~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux12~0_combout\,
	datab => \inst|alu1|unidad_logica|salida_aux\(4),
	datac => \inst|alu1|barrel_shifters|salShifters\(4),
	datad => \inst|alu1|Mux12~1_combout\,
	combout => \inst|alu1|Mux11~2_combout\);

-- Location: LCCOMB_X22_Y11_N2
\inst|alu1|Mux11~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux11~3_combout\ = (\inst|alu1|Mux2~3_combout\ & ((\inst|alu1|Mux11~2_combout\ & (\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~35_combout\)) # (!\inst|alu1|Mux11~2_combout\ & ((\inst|alu1|Mux11~1_combout\))))) # 
-- (!\inst|alu1|Mux2~3_combout\ & (((\inst|alu1|Mux11~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~35_combout\,
	datab => \inst|alu1|Mux2~3_combout\,
	datac => \inst|alu1|Mux11~1_combout\,
	datad => \inst|alu1|Mux11~2_combout\,
	combout => \inst|alu1|Mux11~3_combout\);

-- Location: LCCOMB_X22_Y11_N0
\inst|alu1|Mux11~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux11~4_combout\ = (\inst|OP\(3) & ((\inst|OP\(2)) # ((\inst|alu1|Mux2~3_combout\ & \inst|alu1|Mux11~3_combout\)))) # (!\inst|OP\(3) & (((\inst|alu1|Mux11~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|OP\(2),
	datab => \inst|alu1|Mux2~3_combout\,
	datac => \inst|OP\(3),
	datad => \inst|alu1|Mux11~3_combout\,
	combout => \inst|alu1|Mux11~4_combout\);

-- Location: LCCOMB_X22_Y11_N6
\inst|reggy~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~25_combout\ = (\inst|reggy~24_combout\) # ((\inst|reggy~9_combout\ & \inst|alu1|Mux11~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|reggy~9_combout\,
	datac => \inst|reggy~24_combout\,
	datad => \inst|alu1|Mux11~4_combout\,
	combout => \inst|reggy~25_combout\);

-- Location: FF_X22_Y11_N7
\inst|reggy[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|reggy~25_combout\,
	ena => \inst|reggy[0][11]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy[0][4]~q\);

-- Location: LCCOMB_X19_Y11_N4
\inst|Mux35~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux35~0_combout\ = (\inst|MAR\(0) & ((\inst|reggy[1][4]~q\))) # (!\inst|MAR\(0) & (\inst|reggy[0][4]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy[0][4]~q\,
	datab => \inst|reggy[1][4]~q\,
	datac => \inst|MAR\(0),
	combout => \inst|Mux35~0_combout\);

-- Location: FF_X13_Y14_N9
\inst|REG_B[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|Mux35~0_combout\,
	sclr => \inst|MAR\(1),
	sload => VCC,
	ena => \inst|OP[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|REG_B\(4));

-- Location: LCCOMB_X12_Y12_N4
\inst|alu1|unidad_aritmetica|mult|multi4|sR:4:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi4|sR:4:sP|Cout~0_combout\ = (\inst|REG_B\(4) & (\inst|alu1|unidad_aritmetica|mult|multi3|sR:4:sP|Suma~0_combout\ & \inst|REG_A\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|REG_B\(4),
	datac => \inst|alu1|unidad_aritmetica|mult|multi3|sR:4:sP|Suma~0_combout\,
	datad => \inst|REG_A\(0),
	combout => \inst|alu1|unidad_aritmetica|mult|multi4|sR:4:sP|Cout~0_combout\);

-- Location: LCCOMB_X12_Y12_N28
\inst|alu1|unidad_aritmetica|mult|multi4|sR:5:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi4|sR:5:sP|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|mult|multi4|sR:4:sP|Cout~0_combout\ $ (\inst|alu1|unidad_aritmetica|mult|multi3|sR:5:sP|Suma~0_combout\ $ (((\inst|REG_A\(1) & \inst|REG_B\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(1),
	datab => \inst|alu1|unidad_aritmetica|mult|multi4|sR:4:sP|Cout~0_combout\,
	datac => \inst|REG_B\(4),
	datad => \inst|alu1|unidad_aritmetica|mult|multi3|sR:5:sP|Suma~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi4|sR:5:sP|Suma~0_combout\);

-- Location: LCCOMB_X12_Y12_N20
\inst|alu1|unidad_aritmetica|mult|multi5|sR:5:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi5|sR:5:sP|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|mult|multi4|sR:5:sP|Suma~0_combout\ $ (((\inst|REG_A\(0) & \inst|REG_B\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|REG_A\(0),
	datac => \inst|REG_B\(5),
	datad => \inst|alu1|unidad_aritmetica|mult|multi4|sR:5:sP|Suma~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi5|sR:5:sP|Suma~0_combout\);

-- Location: LCCOMB_X13_Y11_N20
\inst|alu1|unidad_aritmetica|resta|sR:4:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|resta|sR:4:sP|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|resta|sR:3:sP|Cout2~4_combout\) # ((\inst|alu1|unidad_aritmetica|resta|sR:3:sP|Cout~0_combout\ & ((\inst|alu1|unidad_aritmetica|suma|Xop\(4)) # 
-- (!\inst|alu1|unidad_aritmetica|suma|Yop~4_combout\))) # (!\inst|alu1|unidad_aritmetica|resta|sR:3:sP|Cout~0_combout\ & (\inst|alu1|unidad_aritmetica|suma|Xop\(4) & !\inst|alu1|unidad_aritmetica|suma|Yop~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|resta|sR:3:sP|Cout~0_combout\,
	datab => \inst|alu1|unidad_aritmetica|suma|Xop\(4),
	datac => \inst|alu1|unidad_aritmetica|suma|Yop~4_combout\,
	datad => \inst|alu1|unidad_aritmetica|resta|sR:3:sP|Cout2~4_combout\,
	combout => \inst|alu1|unidad_aritmetica|resta|sR:4:sP|Cout~0_combout\);

-- Location: LCCOMB_X13_Y11_N12
\inst|alu1|unidad_aritmetica|resta|sR:5:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|resta|sR:5:sP|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|suma|Yop~5_combout\ $ (\inst|alu1|unidad_aritmetica|resta|sR:4:sP|Cout~0_combout\ $ (\inst|alu1|unidad_aritmetica|suma|Xop\(5) $ 
-- (\inst|alu1|unidad_aritmetica|resta|sR:4:sP|Cout2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|suma|Yop~5_combout\,
	datab => \inst|alu1|unidad_aritmetica|resta|sR:4:sP|Cout~0_combout\,
	datac => \inst|alu1|unidad_aritmetica|suma|Xop\(5),
	datad => \inst|alu1|unidad_aritmetica|resta|sR:4:sP|Cout2~4_combout\,
	combout => \inst|alu1|unidad_aritmetica|resta|sR:5:sP|Suma~0_combout\);

-- Location: LCCOMB_X12_Y11_N0
\inst|alu1|unidad_aritmetica|suma|sR:5:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|sR:5:sP|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|suma|sR:4:sP|Cout2~0_combout\ $ (\inst|alu1|unidad_aritmetica|suma|Yop~5_combout\ $ (\inst|alu1|unidad_aritmetica|suma|Xop\(5) $ 
-- (\inst|alu1|unidad_aritmetica|suma|sR:4:sP|Cout~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|suma|sR:4:sP|Cout2~0_combout\,
	datab => \inst|alu1|unidad_aritmetica|suma|Yop~5_combout\,
	datac => \inst|alu1|unidad_aritmetica|suma|Xop\(5),
	datad => \inst|alu1|unidad_aritmetica|suma|sR:4:sP|Cout~1_combout\,
	combout => \inst|alu1|unidad_aritmetica|suma|sR:5:sP|Suma~0_combout\);

-- Location: LCCOMB_X12_Y11_N6
\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~16_combout\ = (\inst|alu1|Mux16~0_combout\ & ((\inst|alu1|Mux17~0_combout\ & (\inst|alu1|unidad_aritmetica|resta|sR:5:sP|Suma~0_combout\)) # (!\inst|alu1|Mux17~0_combout\ & 
-- ((!\inst|alu1|unidad_aritmetica|suma|sR:5:sP|Suma~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux16~0_combout\,
	datab => \inst|alu1|Mux17~0_combout\,
	datac => \inst|alu1|unidad_aritmetica|resta|sR:5:sP|Suma~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|suma|sR:5:sP|Suma~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~16_combout\);

-- Location: LCCOMB_X12_Y11_N28
\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~17_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~16_combout\) # ((!\inst|alu1|unidad_aritmetica|mult|multi5|sR:5:sP|Suma~0_combout\ & !\inst|alu1|Mux16~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|unidad_aritmetica|mult|multi5|sR:5:sP|Suma~0_combout\,
	datac => \inst|alu1|Mux16~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~16_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~17_combout\);

-- Location: LCCOMB_X12_Y11_N12
\inst|alu1|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux10~0_combout\ = (\inst|alu1|Mux16~0_combout\ & ((\inst|alu1|unidad_aritmetica|suma|sR:5:sP|Suma~0_combout\) # ((\inst|alu1|Mux17~0_combout\)))) # (!\inst|alu1|Mux16~0_combout\ & (((!\inst|alu1|Mux17~0_combout\ & 
-- \inst|alu1|unidad_aritmetica|mult|multi5|sR:5:sP|Suma~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux16~0_combout\,
	datab => \inst|alu1|unidad_aritmetica|suma|sR:5:sP|Suma~0_combout\,
	datac => \inst|alu1|Mux17~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|mult|multi5|sR:5:sP|Suma~0_combout\,
	combout => \inst|alu1|Mux10~0_combout\);

-- Location: LCCOMB_X12_Y11_N26
\inst|alu1|Mux10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux10~1_combout\ = (\inst|alu1|Mux10~0_combout\ & (((!\inst|alu1|unidad_aritmetica|resta|sR:5:sP|Suma~0_combout\)) # (!\inst|alu1|Mux17~0_combout\))) # (!\inst|alu1|Mux10~0_combout\ & (\inst|alu1|Mux17~0_combout\ & 
-- ((!\inst|alu1|unidad_aritmetica|divi|LessThan2~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101001101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux10~0_combout\,
	datab => \inst|alu1|Mux17~0_combout\,
	datac => \inst|alu1|unidad_aritmetica|resta|sR:5:sP|Suma~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan2~28_combout\,
	combout => \inst|alu1|Mux10~1_combout\);

-- Location: LCCOMB_X21_Y11_N22
\inst|alu1|unidad_logica|salida_aux~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|salida_aux~20_combout\ = (\inst|REG_A\(5) & (((\inst|alu1|Mux16~0_combout\)))) # (!\inst|REG_A\(5) & (((\inst|REG_B\(5) & \inst|alu1|Mux16~0_combout\)) # (!\inst|alu1|Mux17~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux17~0_combout\,
	datab => \inst|REG_A\(5),
	datac => \inst|REG_B\(5),
	datad => \inst|alu1|Mux16~0_combout\,
	combout => \inst|alu1|unidad_logica|salida_aux~20_combout\);

-- Location: FF_X21_Y9_N9
\inst|alu1|unidad_logica|aux[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|alu1|unidad_logica|aux[5]~23_combout\,
	ena => \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|unidad_logica|aux\(5));

-- Location: LCCOMB_X21_Y9_N30
\inst|alu1|unidad_logica|salida_aux~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|salida_aux~22_combout\ = (\inst|alu1|unidad_logica|salida_aux~20_combout\ & ((\inst|alu1|unidad_logica|salida_aux~21_combout\) # ((!\inst|alu1|unidad_logica|salida_aux[14]~44_combout\)))) # 
-- (!\inst|alu1|unidad_logica|salida_aux~20_combout\ & (((\inst|alu1|unidad_logica|aux\(5) & \inst|alu1|unidad_logica|salida_aux[14]~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_logica|salida_aux~20_combout\,
	datab => \inst|alu1|unidad_logica|salida_aux~21_combout\,
	datac => \inst|alu1|unidad_logica|aux\(5),
	datad => \inst|alu1|unidad_logica|salida_aux[14]~44_combout\,
	combout => \inst|alu1|unidad_logica|salida_aux~22_combout\);

-- Location: FF_X21_Y9_N31
\inst|alu1|unidad_logica|salida_aux[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|alu1|unidad_logica|salida_aux~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|unidad_logica|salida_aux\(5));

-- Location: FF_X19_Y9_N9
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

-- Location: FF_X19_Y9_N7
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

-- Location: LCCOMB_X19_Y9_N6
\inst|alu1|Mux10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux10~2_combout\ = (\inst|alu1|Mux12~0_combout\ & ((\inst|alu1|unidad_logica|salida_aux\(5)) # ((!\inst|alu1|Mux12~1_combout\)))) # (!\inst|alu1|Mux12~0_combout\ & (((\inst|alu1|barrel_shifters|salShifters\(5) & \inst|alu1|Mux12~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux12~0_combout\,
	datab => \inst|alu1|unidad_logica|salida_aux\(5),
	datac => \inst|alu1|barrel_shifters|salShifters\(5),
	datad => \inst|alu1|Mux12~1_combout\,
	combout => \inst|alu1|Mux10~2_combout\);

-- Location: LCCOMB_X19_Y9_N18
\inst|alu1|Mux10~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux10~3_combout\ = (\inst|alu1|Mux2~3_combout\ & ((\inst|alu1|Mux10~2_combout\ & (\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~37_combout\)) # (!\inst|alu1|Mux10~2_combout\ & ((\inst|alu1|Mux10~1_combout\))))) # 
-- (!\inst|alu1|Mux2~3_combout\ & (((\inst|alu1|Mux10~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux2~3_combout\,
	datab => \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~37_combout\,
	datac => \inst|alu1|Mux10~1_combout\,
	datad => \inst|alu1|Mux10~2_combout\,
	combout => \inst|alu1|Mux10~3_combout\);

-- Location: LCCOMB_X19_Y9_N24
\inst|alu1|Mux10~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux10~4_combout\ = (\inst|OP\(3) & ((\inst|OP\(2)) # ((\inst|alu1|Mux2~3_combout\ & \inst|alu1|Mux10~3_combout\)))) # (!\inst|OP\(3) & (((\inst|alu1|Mux10~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|OP\(2),
	datab => \inst|OP\(3),
	datac => \inst|alu1|Mux2~3_combout\,
	datad => \inst|alu1|Mux10~3_combout\,
	combout => \inst|alu1|Mux10~4_combout\);

-- Location: LCCOMB_X21_Y13_N22
\inst|reggy~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~23_combout\ = (\inst|reggy~22_combout\) # ((\inst|reggy~9_combout\ & \inst|alu1|Mux10~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|reggy~22_combout\,
	datac => \inst|reggy~9_combout\,
	datad => \inst|alu1|Mux10~4_combout\,
	combout => \inst|reggy~23_combout\);

-- Location: FF_X21_Y13_N23
\inst|reggy[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|reggy~23_combout\,
	ena => \inst|reggy[0][11]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy[0][5]~q\);

-- Location: LCCOMB_X21_Y13_N2
\inst|Mux34~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux34~0_combout\ = (\inst|MAR\(0) & ((\inst|reggy[1][5]~q\))) # (!\inst|MAR\(0) & (\inst|reggy[0][5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy[0][5]~q\,
	datac => \inst|reggy[1][5]~q\,
	datad => \inst|MAR\(0),
	combout => \inst|Mux34~0_combout\);

-- Location: FF_X13_Y14_N11
\inst|REG_B[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|Mux34~0_combout\,
	sclr => \inst|MAR\(1),
	sload => VCC,
	ena => \inst|OP[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|REG_B\(5));

-- Location: LCCOMB_X12_Y11_N14
\inst|alu1|unidad_aritmetica|suma|Yop~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|Yop~5_combout\ = \inst|REG_B\(5) $ (\inst|REG_B\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|REG_B\(5),
	datad => \inst|REG_B\(15),
	combout => \inst|alu1|unidad_aritmetica|suma|Yop~5_combout\);

-- Location: LCCOMB_X13_Y11_N26
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

-- Location: LCCOMB_X16_Y11_N12
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

-- Location: LCCOMB_X16_Y11_N28
\inst|alu1|unidad_aritmetica|resta|sR:6:sP|Cout2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|resta|sR:6:sP|Cout2~4_combout\ = (\inst|alu1|unidad_aritmetica|resta|sR:5:sP|Cout2~4_combout\ & (!\inst|alu1|unidad_aritmetica|suma|Yop~6_combout\ & (\inst|REG_A\(6) $ (\inst|REG_A\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(6),
	datab => \inst|alu1|unidad_aritmetica|resta|sR:5:sP|Cout2~4_combout\,
	datac => \inst|alu1|unidad_aritmetica|suma|Yop~6_combout\,
	datad => \inst|REG_A\(15),
	combout => \inst|alu1|unidad_aritmetica|resta|sR:6:sP|Cout2~4_combout\);

-- Location: LCCOMB_X16_Y11_N20
\inst|alu1|unidad_aritmetica|resta|sR:7:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|resta|sR:7:sP|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|suma|Yop~7_combout\ $ (\inst|alu1|unidad_aritmetica|suma|Xop\(7) $ (\inst|alu1|unidad_aritmetica|resta|sR:6:sP|Cout~0_combout\ $ 
-- (\inst|alu1|unidad_aritmetica|resta|sR:6:sP|Cout2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|suma|Yop~7_combout\,
	datab => \inst|alu1|unidad_aritmetica|suma|Xop\(7),
	datac => \inst|alu1|unidad_aritmetica|resta|sR:6:sP|Cout~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|resta|sR:6:sP|Cout2~4_combout\,
	combout => \inst|alu1|unidad_aritmetica|resta|sR:7:sP|Suma~0_combout\);

-- Location: LCCOMB_X16_Y11_N14
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

-- Location: LCCOMB_X16_Y11_N16
\inst|alu1|unidad_aritmetica|suma|sR:6:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|sR:6:sP|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|suma|sR:5:sP|Cout~1_combout\ & ((\inst|alu1|unidad_aritmetica|suma|Xop\(6)) # (\inst|REG_B\(6) $ (\inst|REG_B\(15))))) # 
-- (!\inst|alu1|unidad_aritmetica|suma|sR:5:sP|Cout~1_combout\ & (\inst|alu1|unidad_aritmetica|suma|Xop\(6) & (\inst|REG_B\(6) $ (\inst|REG_B\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(6),
	datab => \inst|REG_B\(15),
	datac => \inst|alu1|unidad_aritmetica|suma|sR:5:sP|Cout~1_combout\,
	datad => \inst|alu1|unidad_aritmetica|suma|Xop\(6),
	combout => \inst|alu1|unidad_aritmetica|suma|sR:6:sP|Cout~0_combout\);

-- Location: LCCOMB_X16_Y11_N30
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

-- Location: LCCOMB_X16_Y11_N2
\inst|alu1|unidad_aritmetica|suma|sR:7:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|sR:7:sP|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|suma|Yop~7_combout\ $ (\inst|alu1|unidad_aritmetica|suma|sR:6:sP|Cout2~0_combout\ $ (\inst|alu1|unidad_aritmetica|suma|sR:6:sP|Cout~1_combout\ $ 
-- (\inst|alu1|unidad_aritmetica|suma|Xop\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|suma|Yop~7_combout\,
	datab => \inst|alu1|unidad_aritmetica|suma|sR:6:sP|Cout2~0_combout\,
	datac => \inst|alu1|unidad_aritmetica|suma|sR:6:sP|Cout~1_combout\,
	datad => \inst|alu1|unidad_aritmetica|suma|Xop\(7),
	combout => \inst|alu1|unidad_aritmetica|suma|sR:7:sP|Suma~0_combout\);

-- Location: LCCOMB_X14_Y11_N26
\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~12_combout\ = (\inst|alu1|Mux16~0_combout\ & ((\inst|alu1|Mux17~0_combout\ & (\inst|alu1|unidad_aritmetica|resta|sR:7:sP|Suma~0_combout\)) # (!\inst|alu1|Mux17~0_combout\ & 
-- ((!\inst|alu1|unidad_aritmetica|suma|sR:7:sP|Suma~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|resta|sR:7:sP|Suma~0_combout\,
	datab => \inst|alu1|Mux16~0_combout\,
	datac => \inst|alu1|Mux17~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|suma|sR:7:sP|Suma~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~12_combout\);

-- Location: LCCOMB_X12_Y12_N8
\inst|alu1|unidad_aritmetica|mult|multi4|sR:6:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi4|sR:6:sP|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi4|sR:5:sP|Cout~0_combout\ & ((\inst|alu1|unidad_aritmetica|mult|multi3|sR:6:sP|Suma~0_combout\) # ((\inst|REG_B\(4) & \inst|REG_A\(2))))) # 
-- (!\inst|alu1|unidad_aritmetica|mult|multi4|sR:5:sP|Cout~0_combout\ & (\inst|REG_B\(4) & (\inst|REG_A\(2) & \inst|alu1|unidad_aritmetica|mult|multi3|sR:6:sP|Suma~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|multi4|sR:5:sP|Cout~0_combout\,
	datab => \inst|REG_B\(4),
	datac => \inst|REG_A\(2),
	datad => \inst|alu1|unidad_aritmetica|mult|multi3|sR:6:sP|Suma~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi4|sR:6:sP|Cout~0_combout\);

-- Location: LCCOMB_X11_Y12_N4
\inst|alu1|unidad_aritmetica|mult|multi2|sR:6:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi2|sR:6:sP|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi2|sR:5:sP|Cout~0_combout\ & ((\inst|alu1|unidad_aritmetica|mult|multi1|sR:6:sP|Suma~0_combout\) # ((\inst|REG_B\(2) & \inst|REG_A\(4))))) # 
-- (!\inst|alu1|unidad_aritmetica|mult|multi2|sR:5:sP|Cout~0_combout\ & (\inst|REG_B\(2) & (\inst|REG_A\(4) & \inst|alu1|unidad_aritmetica|mult|multi1|sR:6:sP|Suma~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(2),
	datab => \inst|alu1|unidad_aritmetica|mult|multi2|sR:5:sP|Cout~0_combout\,
	datac => \inst|REG_A\(4),
	datad => \inst|alu1|unidad_aritmetica|mult|multi1|sR:6:sP|Suma~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi2|sR:6:sP|Cout~0_combout\);

-- Location: LCCOMB_X13_Y15_N20
\inst|alu1|unidad_aritmetica|mult|inter[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|inter\(7) = (\inst|REG_A\(7) & \inst|REG_B\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|REG_A\(7),
	datad => \inst|REG_B\(0),
	combout => \inst|alu1|unidad_aritmetica|mult|inter\(7));

-- Location: LCCOMB_X12_Y15_N2
\inst|alu1|unidad_aritmetica|mult|multi1|sR:6:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi1|sR:6:sP|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi1|sR:5:sP|Cout~0_combout\ & ((\inst|alu1|unidad_aritmetica|mult|inter\(6)) # ((\inst|REG_B\(1) & \inst|REG_A\(5))))) # 
-- (!\inst|alu1|unidad_aritmetica|mult|multi1|sR:5:sP|Cout~0_combout\ & (\inst|REG_B\(1) & (\inst|REG_A\(5) & \inst|alu1|unidad_aritmetica|mult|inter\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(1),
	datab => \inst|alu1|unidad_aritmetica|mult|multi1|sR:5:sP|Cout~0_combout\,
	datac => \inst|REG_A\(5),
	datad => \inst|alu1|unidad_aritmetica|mult|inter\(6),
	combout => \inst|alu1|unidad_aritmetica|mult|multi1|sR:6:sP|Cout~0_combout\);

-- Location: LCCOMB_X12_Y15_N14
\inst|alu1|unidad_aritmetica|mult|multi1|sR:7:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi1|sR:7:sP|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|mult|inter\(7) $ (\inst|alu1|unidad_aritmetica|mult|multi1|sR:6:sP|Cout~0_combout\ $ (((\inst|REG_B\(1) & \inst|REG_A\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(1),
	datab => \inst|REG_A\(6),
	datac => \inst|alu1|unidad_aritmetica|mult|inter\(7),
	datad => \inst|alu1|unidad_aritmetica|mult|multi1|sR:6:sP|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi1|sR:7:sP|Suma~0_combout\);

-- Location: LCCOMB_X11_Y12_N2
\inst|alu1|unidad_aritmetica|mult|multi2|sR:7:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi2|sR:7:sP|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|mult|multi2|sR:6:sP|Cout~0_combout\ $ (\inst|alu1|unidad_aritmetica|mult|multi1|sR:7:sP|Suma~0_combout\ $ (((\inst|REG_B\(2) & \inst|REG_A\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(2),
	datab => \inst|REG_A\(5),
	datac => \inst|alu1|unidad_aritmetica|mult|multi2|sR:6:sP|Cout~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|mult|multi1|sR:7:sP|Suma~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi2|sR:7:sP|Suma~0_combout\);

-- Location: LCCOMB_X11_Y12_N18
\inst|alu1|unidad_aritmetica|mult|multi3|sR:6:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi3|sR:6:sP|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi2|sR:6:sP|Suma~0_combout\ & ((\inst|alu1|unidad_aritmetica|mult|multi3|sR:5:sP|Cout~0_combout\) # ((\inst|REG_B\(3) & \inst|REG_A\(3))))) # 
-- (!\inst|alu1|unidad_aritmetica|mult|multi2|sR:6:sP|Suma~0_combout\ & (\inst|REG_B\(3) & (\inst|REG_A\(3) & \inst|alu1|unidad_aritmetica|mult|multi3|sR:5:sP|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(3),
	datab => \inst|REG_A\(3),
	datac => \inst|alu1|unidad_aritmetica|mult|multi2|sR:6:sP|Suma~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|mult|multi3|sR:5:sP|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi3|sR:6:sP|Cout~0_combout\);

-- Location: LCCOMB_X11_Y12_N20
\inst|alu1|unidad_aritmetica|mult|multi3|sR:7:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi3|sR:7:sP|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|mult|multi2|sR:7:sP|Suma~0_combout\ $ (\inst|alu1|unidad_aritmetica|mult|multi3|sR:6:sP|Cout~0_combout\ $ (((\inst|REG_B\(3) & \inst|REG_A\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(3),
	datab => \inst|alu1|unidad_aritmetica|mult|multi2|sR:7:sP|Suma~0_combout\,
	datac => \inst|REG_A\(4),
	datad => \inst|alu1|unidad_aritmetica|mult|multi3|sR:6:sP|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi3|sR:7:sP|Suma~0_combout\);

-- Location: LCCOMB_X11_Y12_N14
\inst|alu1|unidad_aritmetica|mult|multi4|sR:7:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi4|sR:7:sP|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|mult|multi4|sR:6:sP|Cout~0_combout\ $ (\inst|alu1|unidad_aritmetica|mult|multi3|sR:7:sP|Suma~0_combout\ $ (((\inst|REG_B\(4) & \inst|REG_A\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(4),
	datab => \inst|REG_A\(3),
	datac => \inst|alu1|unidad_aritmetica|mult|multi4|sR:6:sP|Cout~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|mult|multi3|sR:7:sP|Suma~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi4|sR:7:sP|Suma~0_combout\);

-- Location: LCCOMB_X12_Y12_N0
\inst|alu1|unidad_aritmetica|mult|multi5|sR:6:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi5|sR:6:sP|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi5|sR:5:sP|Cout~0_combout\ & ((\inst|alu1|unidad_aritmetica|mult|multi4|sR:6:sP|Suma~0_combout\) # ((\inst|REG_B\(5) & \inst|REG_A\(1))))) # 
-- (!\inst|alu1|unidad_aritmetica|mult|multi5|sR:5:sP|Cout~0_combout\ & (\inst|REG_B\(5) & (\inst|REG_A\(1) & \inst|alu1|unidad_aritmetica|mult|multi4|sR:6:sP|Suma~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(5),
	datab => \inst|REG_A\(1),
	datac => \inst|alu1|unidad_aritmetica|mult|multi5|sR:5:sP|Cout~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|mult|multi4|sR:6:sP|Suma~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi5|sR:6:sP|Cout~0_combout\);

-- Location: LCCOMB_X12_Y12_N12
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

-- Location: LCCOMB_X14_Y12_N28
\inst|alu1|unidad_aritmetica|mult|multi6|sR:6:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi6|sR:6:sP|Cout~0_combout\ = (\inst|REG_A\(0) & (\inst|REG_B\(6) & \inst|alu1|unidad_aritmetica|mult|multi5|sR:6:sP|Suma~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|REG_A\(0),
	datac => \inst|REG_B\(6),
	datad => \inst|alu1|unidad_aritmetica|mult|multi5|sR:6:sP|Suma~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi6|sR:6:sP|Cout~0_combout\);

-- Location: LCCOMB_X14_Y12_N18
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

-- Location: LCCOMB_X14_Y12_N22
\inst|alu1|unidad_aritmetica|mult|multi7|sR:7:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi7|sR:7:sP|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|mult|multi6|sR:7:sP|Suma~0_combout\ $ (((\inst|REG_A\(0) & \inst|REG_B\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|REG_A\(0),
	datac => \inst|REG_B\(7),
	datad => \inst|alu1|unidad_aritmetica|mult|multi6|sR:7:sP|Suma~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi7|sR:7:sP|Suma~0_combout\);

-- Location: LCCOMB_X14_Y11_N20
\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~13_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~12_combout\) # ((!\inst|alu1|Mux16~0_combout\ & !\inst|alu1|unidad_aritmetica|mult|multi7|sR:7:sP|Suma~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~12_combout\,
	datab => \inst|alu1|Mux16~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|mult|multi7|sR:7:sP|Suma~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~13_combout\);

-- Location: LCCOMB_X17_Y8_N16
\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~41_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~13_combout\ & (!\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~40\)) # 
-- (!\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~13_combout\ & ((\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~40\) # (GND)))
-- \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~42\ = CARRY((!\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~40\) # (!\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~13_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~40\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~41_combout\,
	cout => \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~42\);

-- Location: LCCOMB_X14_Y11_N2
\inst|alu1|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux8~0_combout\ = (\inst|alu1|Mux17~0_combout\ & (((\inst|alu1|Mux16~0_combout\)))) # (!\inst|alu1|Mux17~0_combout\ & ((\inst|alu1|Mux16~0_combout\ & (\inst|alu1|unidad_aritmetica|suma|sR:7:sP|Suma~0_combout\)) # (!\inst|alu1|Mux16~0_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|mult|multi7|sR:7:sP|Suma~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|suma|sR:7:sP|Suma~0_combout\,
	datab => \inst|alu1|unidad_aritmetica|mult|multi7|sR:7:sP|Suma~0_combout\,
	datac => \inst|alu1|Mux17~0_combout\,
	datad => \inst|alu1|Mux16~0_combout\,
	combout => \inst|alu1|Mux8~0_combout\);

-- Location: LCCOMB_X14_Y11_N12
\inst|alu1|Mux8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux8~1_combout\ = (\inst|alu1|Mux17~0_combout\ & ((\inst|alu1|Mux8~0_combout\ & ((!\inst|alu1|unidad_aritmetica|resta|sR:7:sP|Suma~0_combout\))) # (!\inst|alu1|Mux8~0_combout\ & (!\inst|alu1|unidad_aritmetica|divi|LessThan0~4_combout\)))) # 
-- (!\inst|alu1|Mux17~0_combout\ & (((\inst|alu1|Mux8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|LessThan0~4_combout\,
	datab => \inst|alu1|Mux17~0_combout\,
	datac => \inst|alu1|unidad_aritmetica|resta|sR:7:sP|Suma~0_combout\,
	datad => \inst|alu1|Mux8~0_combout\,
	combout => \inst|alu1|Mux8~1_combout\);

-- Location: LCCOMB_X19_Y10_N30
\inst|alu1|unidad_logica|salida_aux~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|salida_aux~16_combout\ = (\inst|REG_B\(7) & \inst|REG_A\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|REG_B\(7),
	datad => \inst|REG_A\(7),
	combout => \inst|alu1|unidad_logica|salida_aux~16_combout\);

-- Location: LCCOMB_X21_Y9_N12
\inst|alu1|unidad_logica|aux[7]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|aux[7]~27_combout\ = (\inst|REG_A\(7) & (!\inst|alu1|unidad_logica|aux[6]~26\ & VCC)) # (!\inst|REG_A\(7) & (\inst|alu1|unidad_logica|aux[6]~26\ $ (GND)))
-- \inst|alu1|unidad_logica|aux[7]~28\ = CARRY((!\inst|REG_A\(7) & !\inst|alu1|unidad_logica|aux[6]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|REG_A\(7),
	datad => VCC,
	cin => \inst|alu1|unidad_logica|aux[6]~26\,
	combout => \inst|alu1|unidad_logica|aux[7]~27_combout\,
	cout => \inst|alu1|unidad_logica|aux[7]~28\);

-- Location: FF_X21_Y9_N13
\inst|alu1|unidad_logica|aux[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|alu1|unidad_logica|aux[7]~27_combout\,
	ena => \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|unidad_logica|aux\(7));

-- Location: LCCOMB_X11_Y10_N8
\inst|alu1|unidad_logica|salida_aux~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|salida_aux~15_combout\ = (\inst|REG_A\(7) & (((\inst|alu1|Mux16~0_combout\)))) # (!\inst|REG_A\(7) & (((\inst|REG_B\(7) & \inst|alu1|Mux16~0_combout\)) # (!\inst|alu1|Mux17~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(7),
	datab => \inst|alu1|Mux16~0_combout\,
	datac => \inst|REG_A\(7),
	datad => \inst|alu1|Mux17~0_combout\,
	combout => \inst|alu1|unidad_logica|salida_aux~15_combout\);

-- Location: LCCOMB_X19_Y9_N16
\inst|alu1|unidad_logica|salida_aux~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|salida_aux~17_combout\ = (\inst|alu1|unidad_logica|salida_aux[14]~44_combout\ & ((\inst|alu1|unidad_logica|salida_aux~15_combout\ & (\inst|alu1|unidad_logica|salida_aux~16_combout\)) # 
-- (!\inst|alu1|unidad_logica|salida_aux~15_combout\ & ((\inst|alu1|unidad_logica|aux\(7)))))) # (!\inst|alu1|unidad_logica|salida_aux[14]~44_combout\ & (((\inst|alu1|unidad_logica|salida_aux~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_logica|salida_aux~16_combout\,
	datab => \inst|alu1|unidad_logica|aux\(7),
	datac => \inst|alu1|unidad_logica|salida_aux[14]~44_combout\,
	datad => \inst|alu1|unidad_logica|salida_aux~15_combout\,
	combout => \inst|alu1|unidad_logica|salida_aux~17_combout\);

-- Location: FF_X19_Y9_N17
\inst|alu1|unidad_logica|salida_aux[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|alu1|unidad_logica|salida_aux~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|unidad_logica|salida_aux\(7));

-- Location: LCCOMB_X19_Y10_N18
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

-- Location: FF_X19_Y10_N19
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

-- Location: FF_X19_Y9_N11
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

-- Location: LCCOMB_X19_Y9_N10
\inst|alu1|Mux8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux8~2_combout\ = (\inst|alu1|Mux12~0_combout\ & ((\inst|alu1|unidad_logica|salida_aux\(7)) # ((!\inst|alu1|Mux12~1_combout\)))) # (!\inst|alu1|Mux12~0_combout\ & (((\inst|alu1|barrel_shifters|salShifters\(7) & \inst|alu1|Mux12~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux12~0_combout\,
	datab => \inst|alu1|unidad_logica|salida_aux\(7),
	datac => \inst|alu1|barrel_shifters|salShifters\(7),
	datad => \inst|alu1|Mux12~1_combout\,
	combout => \inst|alu1|Mux8~2_combout\);

-- Location: LCCOMB_X19_Y9_N28
\inst|alu1|Mux8~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux8~3_combout\ = (\inst|alu1|Mux2~3_combout\ & ((\inst|alu1|Mux8~2_combout\ & (\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~41_combout\)) # (!\inst|alu1|Mux8~2_combout\ & ((\inst|alu1|Mux8~1_combout\))))) # 
-- (!\inst|alu1|Mux2~3_combout\ & (((\inst|alu1|Mux8~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~41_combout\,
	datab => \inst|alu1|Mux8~1_combout\,
	datac => \inst|alu1|Mux2~3_combout\,
	datad => \inst|alu1|Mux8~2_combout\,
	combout => \inst|alu1|Mux8~3_combout\);

-- Location: LCCOMB_X19_Y9_N22
\inst|alu1|Mux8~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux8~4_combout\ = (\inst|OP\(3) & ((\inst|OP\(2)) # ((\inst|alu1|Mux2~3_combout\ & \inst|alu1|Mux8~3_combout\)))) # (!\inst|OP\(3) & (((\inst|alu1|Mux8~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|OP\(2),
	datab => \inst|OP\(3),
	datac => \inst|alu1|Mux2~3_combout\,
	datad => \inst|alu1|Mux8~3_combout\,
	combout => \inst|alu1|Mux8~4_combout\);

-- Location: LCCOMB_X23_Y13_N16
\inst|REG_D~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|REG_D~3_combout\ = (!\inst|MAR\(0) & (!\inst|Equal5~1_combout\ & (!\inst|MAR\(1) & \inst|cat[0][7]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MAR\(0),
	datab => \inst|Equal5~1_combout\,
	datac => \inst|MAR\(1),
	datad => \inst|cat[0][7]~q\,
	combout => \inst|REG_D~3_combout\);

-- Location: FF_X23_Y13_N17
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

-- Location: LCCOMB_X19_Y9_N2
\inst|reggy~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~18_combout\ = (\inst|reggy~15_combout\ & ((\inst|REG_D\(7)) # ((\inst|alu1|unidad_logica|salida_aux~16_combout\ & \inst|Equal9~0_combout\)))) # (!\inst|reggy~15_combout\ & (((\inst|alu1|unidad_logica|salida_aux~16_combout\ & 
-- \inst|Equal9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy~15_combout\,
	datab => \inst|REG_D\(7),
	datac => \inst|alu1|unidad_logica|salida_aux~16_combout\,
	datad => \inst|Equal9~0_combout\,
	combout => \inst|reggy~18_combout\);

-- Location: LCCOMB_X19_Y9_N0
\inst|reggy~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~19_combout\ = (\inst|reggy~18_combout\) # ((\inst|reggy~9_combout\ & \inst|alu1|Mux8~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|reggy~9_combout\,
	datac => \inst|alu1|Mux8~4_combout\,
	datad => \inst|reggy~18_combout\,
	combout => \inst|reggy~19_combout\);

-- Location: FF_X19_Y9_N1
\inst|reggy[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|reggy~19_combout\,
	ena => \inst|reggy[0][11]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy[0][7]~q\);

-- Location: LCCOMB_X16_Y10_N0
\inst|Mux32~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux32~0_combout\ = (\inst|MAR\(0) & ((\inst|reggy[1][7]~q\))) # (!\inst|MAR\(0) & (\inst|reggy[0][7]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy[0][7]~q\,
	datac => \inst|reggy[1][7]~q\,
	datad => \inst|MAR\(0),
	combout => \inst|Mux32~0_combout\);

-- Location: FF_X13_Y14_N21
\inst|REG_B[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|Mux32~0_combout\,
	sclr => \inst|MAR\(1),
	sload => VCC,
	ena => \inst|OP[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|REG_B\(7));

-- Location: LCCOMB_X12_Y15_N20
\inst|alu1|unidad_aritmetica|mult|multi1|sR:7:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi1|sR:7:sP|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|mult|inter\(7) & ((\inst|alu1|unidad_aritmetica|mult|multi1|sR:6:sP|Cout~0_combout\) # ((\inst|REG_B\(1) & \inst|REG_A\(6))))) # 
-- (!\inst|alu1|unidad_aritmetica|mult|inter\(7) & (\inst|REG_B\(1) & (\inst|REG_A\(6) & \inst|alu1|unidad_aritmetica|mult|multi1|sR:6:sP|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(1),
	datab => \inst|REG_A\(6),
	datac => \inst|alu1|unidad_aritmetica|mult|inter\(7),
	datad => \inst|alu1|unidad_aritmetica|mult|multi1|sR:6:sP|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi1|sR:7:sP|Cout~0_combout\);

-- Location: LCCOMB_X11_Y14_N30
\inst|alu1|unidad_aritmetica|mult|multi1|sR:8:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi1|sR:8:sP|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|mult|multi1|sR:7:sP|Cout~0_combout\ $ (((\inst|REG_B\(1) & \inst|REG_A\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|REG_B\(1),
	datac => \inst|alu1|unidad_aritmetica|mult|multi1|sR:7:sP|Cout~0_combout\,
	datad => \inst|REG_A\(7),
	combout => \inst|alu1|unidad_aritmetica|mult|multi1|sR:8:sP|Suma~0_combout\);

-- Location: LCCOMB_X11_Y14_N28
\inst|alu1|unidad_aritmetica|mult|multi2|sR:7:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi2|sR:7:sP|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi1|sR:7:sP|Suma~0_combout\ & ((\inst|alu1|unidad_aritmetica|mult|multi2|sR:6:sP|Cout~0_combout\) # ((\inst|REG_B\(2) & \inst|REG_A\(5))))) # 
-- (!\inst|alu1|unidad_aritmetica|mult|multi1|sR:7:sP|Suma~0_combout\ & (\inst|REG_B\(2) & (\inst|REG_A\(5) & \inst|alu1|unidad_aritmetica|mult|multi2|sR:6:sP|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|multi1|sR:7:sP|Suma~0_combout\,
	datab => \inst|REG_B\(2),
	datac => \inst|REG_A\(5),
	datad => \inst|alu1|unidad_aritmetica|mult|multi2|sR:6:sP|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi2|sR:7:sP|Cout~0_combout\);

-- Location: LCCOMB_X11_Y14_N26
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

-- Location: LCCOMB_X11_Y14_N12
\inst|alu1|unidad_aritmetica|mult|multi1|sR:8:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi1|sR:8:sP|Cout~0_combout\ = (\inst|REG_B\(1) & (\inst|alu1|unidad_aritmetica|mult|multi1|sR:7:sP|Cout~0_combout\ & \inst|REG_A\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|REG_B\(1),
	datac => \inst|alu1|unidad_aritmetica|mult|multi1|sR:7:sP|Cout~0_combout\,
	datad => \inst|REG_A\(7),
	combout => \inst|alu1|unidad_aritmetica|mult|multi1|sR:8:sP|Cout~0_combout\);

-- Location: LCCOMB_X11_Y14_N20
\inst|alu1|unidad_aritmetica|mult|multi2|sR:9:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi2|sR:9:sP|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi2|sR:8:sP|Cout~0_combout\ & ((\inst|alu1|unidad_aritmetica|mult|multi1|sR:8:sP|Cout~0_combout\) # ((\inst|REG_B\(2) & \inst|REG_A\(7))))) # 
-- (!\inst|alu1|unidad_aritmetica|mult|multi2|sR:8:sP|Cout~0_combout\ & (\inst|REG_B\(2) & (\inst|REG_A\(7) & \inst|alu1|unidad_aritmetica|mult|multi1|sR:8:sP|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|multi2|sR:8:sP|Cout~0_combout\,
	datab => \inst|REG_B\(2),
	datac => \inst|REG_A\(7),
	datad => \inst|alu1|unidad_aritmetica|mult|multi1|sR:8:sP|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi2|sR:9:sP|Cout~0_combout\);

-- Location: LCCOMB_X11_Y14_N6
\inst|alu1|unidad_aritmetica|mult|multi2|sR:9:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi2|sR:9:sP|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|mult|multi2|sR:8:sP|Cout~0_combout\ $ (\inst|alu1|unidad_aritmetica|mult|multi1|sR:8:sP|Cout~0_combout\ $ (((\inst|REG_B\(2) & \inst|REG_A\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|multi2|sR:8:sP|Cout~0_combout\,
	datab => \inst|alu1|unidad_aritmetica|mult|multi1|sR:8:sP|Cout~0_combout\,
	datac => \inst|REG_B\(2),
	datad => \inst|REG_A\(7),
	combout => \inst|alu1|unidad_aritmetica|mult|multi2|sR:9:sP|Suma~0_combout\);

-- Location: LCCOMB_X11_Y14_N24
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

-- Location: LCCOMB_X11_Y12_N0
\inst|alu1|unidad_aritmetica|mult|multi3|sR:7:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi3|sR:7:sP|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi2|sR:7:sP|Suma~0_combout\ & ((\inst|alu1|unidad_aritmetica|mult|multi3|sR:6:sP|Cout~0_combout\) # ((\inst|REG_B\(3) & \inst|REG_A\(4))))) # 
-- (!\inst|alu1|unidad_aritmetica|mult|multi2|sR:7:sP|Suma~0_combout\ & (\inst|REG_B\(3) & (\inst|REG_A\(4) & \inst|alu1|unidad_aritmetica|mult|multi3|sR:6:sP|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(3),
	datab => \inst|alu1|unidad_aritmetica|mult|multi2|sR:7:sP|Suma~0_combout\,
	datac => \inst|REG_A\(4),
	datad => \inst|alu1|unidad_aritmetica|mult|multi3|sR:6:sP|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi3|sR:7:sP|Cout~0_combout\);

-- Location: LCCOMB_X11_Y14_N18
\inst|alu1|unidad_aritmetica|mult|multi3|sR:8:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi3|sR:8:sP|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi2|sR:8:sP|Suma~0_combout\ & ((\inst|alu1|unidad_aritmetica|mult|multi3|sR:7:sP|Cout~0_combout\) # ((\inst|REG_B\(3) & \inst|REG_A\(5))))) # 
-- (!\inst|alu1|unidad_aritmetica|mult|multi2|sR:8:sP|Suma~0_combout\ & (\inst|REG_B\(3) & (\inst|alu1|unidad_aritmetica|mult|multi3|sR:7:sP|Cout~0_combout\ & \inst|REG_A\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|multi2|sR:8:sP|Suma~0_combout\,
	datab => \inst|REG_B\(3),
	datac => \inst|alu1|unidad_aritmetica|mult|multi3|sR:7:sP|Cout~0_combout\,
	datad => \inst|REG_A\(5),
	combout => \inst|alu1|unidad_aritmetica|mult|multi3|sR:8:sP|Cout~0_combout\);

-- Location: LCCOMB_X11_Y14_N0
\inst|alu1|unidad_aritmetica|mult|multi3|sR:9:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi3|sR:9:sP|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi2|sR:9:sP|Suma~0_combout\ & ((\inst|alu1|unidad_aritmetica|mult|multi3|sR:8:sP|Cout~0_combout\) # ((\inst|REG_B\(3) & \inst|REG_A\(6))))) # 
-- (!\inst|alu1|unidad_aritmetica|mult|multi2|sR:9:sP|Suma~0_combout\ & (\inst|REG_B\(3) & (\inst|alu1|unidad_aritmetica|mult|multi3|sR:8:sP|Cout~0_combout\ & \inst|REG_A\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|multi2|sR:9:sP|Suma~0_combout\,
	datab => \inst|REG_B\(3),
	datac => \inst|alu1|unidad_aritmetica|mult|multi3|sR:8:sP|Cout~0_combout\,
	datad => \inst|REG_A\(6),
	combout => \inst|alu1|unidad_aritmetica|mult|multi3|sR:9:sP|Cout~0_combout\);

-- Location: LCCOMB_X11_Y14_N4
\inst|alu1|unidad_aritmetica|mult|multi3|sR:10:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi3|sR:10:sP|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi2|sR:9:sP|Cout~0_combout\ & ((\inst|alu1|unidad_aritmetica|mult|multi3|sR:9:sP|Cout~0_combout\) # ((\inst|REG_B\(3) & \inst|REG_A\(7))))) # 
-- (!\inst|alu1|unidad_aritmetica|mult|multi2|sR:9:sP|Cout~0_combout\ & (\inst|REG_B\(3) & (\inst|REG_A\(7) & \inst|alu1|unidad_aritmetica|mult|multi3|sR:9:sP|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|multi2|sR:9:sP|Cout~0_combout\,
	datab => \inst|REG_B\(3),
	datac => \inst|REG_A\(7),
	datad => \inst|alu1|unidad_aritmetica|mult|multi3|sR:9:sP|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi3|sR:10:sP|Cout~0_combout\);

-- Location: LCCOMB_X11_Y14_N14
\inst|alu1|unidad_aritmetica|mult|multi3|sR:10:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi3|sR:10:sP|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|mult|multi2|sR:9:sP|Cout~0_combout\ $ (\inst|alu1|unidad_aritmetica|mult|multi3|sR:9:sP|Cout~0_combout\ $ (((\inst|REG_A\(7) & \inst|REG_B\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(7),
	datab => \inst|REG_B\(3),
	datac => \inst|alu1|unidad_aritmetica|mult|multi2|sR:9:sP|Cout~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|mult|multi3|sR:9:sP|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi3|sR:10:sP|Suma~0_combout\);

-- Location: LCCOMB_X11_Y12_N22
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

-- Location: LCCOMB_X11_Y12_N28
\inst|alu1|unidad_aritmetica|mult|multi4|sR:7:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi4|sR:7:sP|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi4|sR:6:sP|Cout~0_combout\ & ((\inst|alu1|unidad_aritmetica|mult|multi3|sR:7:sP|Suma~0_combout\) # ((\inst|REG_B\(4) & \inst|REG_A\(3))))) # 
-- (!\inst|alu1|unidad_aritmetica|mult|multi4|sR:6:sP|Cout~0_combout\ & (\inst|REG_B\(4) & (\inst|REG_A\(3) & \inst|alu1|unidad_aritmetica|mult|multi3|sR:7:sP|Suma~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(4),
	datab => \inst|REG_A\(3),
	datac => \inst|alu1|unidad_aritmetica|mult|multi4|sR:6:sP|Cout~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|mult|multi3|sR:7:sP|Suma~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi4|sR:7:sP|Cout~0_combout\);

-- Location: LCCOMB_X11_Y12_N6
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

-- Location: LCCOMB_X11_Y14_N8
\inst|alu1|unidad_aritmetica|mult|multi3|sR:9:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi3|sR:9:sP|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|mult|multi2|sR:9:sP|Suma~0_combout\ $ (\inst|alu1|unidad_aritmetica|mult|multi3|sR:8:sP|Cout~0_combout\ $ (((\inst|REG_B\(3) & \inst|REG_A\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|multi2|sR:9:sP|Suma~0_combout\,
	datab => \inst|REG_B\(3),
	datac => \inst|alu1|unidad_aritmetica|mult|multi3|sR:8:sP|Cout~0_combout\,
	datad => \inst|REG_A\(6),
	combout => \inst|alu1|unidad_aritmetica|mult|multi3|sR:9:sP|Suma~0_combout\);

-- Location: LCCOMB_X11_Y11_N28
\inst|alu1|unidad_aritmetica|mult|multi4|sR:9:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi4|sR:9:sP|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi4|sR:8:sP|Cout~0_combout\ & ((\inst|alu1|unidad_aritmetica|mult|multi3|sR:9:sP|Suma~0_combout\) # ((\inst|REG_B\(4) & \inst|REG_A\(5))))) # 
-- (!\inst|alu1|unidad_aritmetica|mult|multi4|sR:8:sP|Cout~0_combout\ & (\inst|REG_B\(4) & (\inst|REG_A\(5) & \inst|alu1|unidad_aritmetica|mult|multi3|sR:9:sP|Suma~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(4),
	datab => \inst|REG_A\(5),
	datac => \inst|alu1|unidad_aritmetica|mult|multi4|sR:8:sP|Cout~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|mult|multi3|sR:9:sP|Suma~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi4|sR:9:sP|Cout~0_combout\);

-- Location: LCCOMB_X11_Y11_N22
\inst|alu1|unidad_aritmetica|mult|multi4|sR:10:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi4|sR:10:sP|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi3|sR:10:sP|Suma~0_combout\ & ((\inst|alu1|unidad_aritmetica|mult|multi4|sR:9:sP|Cout~0_combout\) # ((\inst|REG_B\(4) & \inst|REG_A\(6))))) # 
-- (!\inst|alu1|unidad_aritmetica|mult|multi3|sR:10:sP|Suma~0_combout\ & (\inst|REG_B\(4) & (\inst|REG_A\(6) & \inst|alu1|unidad_aritmetica|mult|multi4|sR:9:sP|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(4),
	datab => \inst|REG_A\(6),
	datac => \inst|alu1|unidad_aritmetica|mult|multi3|sR:10:sP|Suma~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|mult|multi4|sR:9:sP|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi4|sR:10:sP|Cout~0_combout\);

-- Location: LCCOMB_X11_Y14_N16
\inst|alu1|unidad_aritmetica|mult|multi4|sR:11:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi4|sR:11:sP|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|mult|multi3|sR:10:sP|Cout~0_combout\ $ (\inst|alu1|unidad_aritmetica|mult|multi4|sR:10:sP|Cout~0_combout\ $ (((\inst|REG_B\(4) & \inst|REG_A\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(4),
	datab => \inst|alu1|unidad_aritmetica|mult|multi3|sR:10:sP|Cout~0_combout\,
	datac => \inst|REG_A\(7),
	datad => \inst|alu1|unidad_aritmetica|mult|multi4|sR:10:sP|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi4|sR:11:sP|Suma~0_combout\);

-- Location: LCCOMB_X11_Y11_N4
\inst|alu1|unidad_aritmetica|mult|multi4|sR:10:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi4|sR:10:sP|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|mult|multi3|sR:10:sP|Suma~0_combout\ $ (\inst|alu1|unidad_aritmetica|mult|multi4|sR:9:sP|Cout~0_combout\ $ (((\inst|REG_B\(4) & \inst|REG_A\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(4),
	datab => \inst|REG_A\(6),
	datac => \inst|alu1|unidad_aritmetica|mult|multi3|sR:10:sP|Suma~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|mult|multi4|sR:9:sP|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi4|sR:10:sP|Suma~0_combout\);

-- Location: LCCOMB_X12_Y12_N10
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

-- Location: LCCOMB_X11_Y12_N24
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

-- Location: LCCOMB_X11_Y12_N12
\inst|alu1|unidad_aritmetica|mult|multi5|sR:8:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi5|sR:8:sP|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi5|sR:7:sP|Cout~0_combout\ & ((\inst|alu1|unidad_aritmetica|mult|multi4|sR:8:sP|Suma~0_combout\) # ((\inst|REG_B\(5) & \inst|REG_A\(3))))) # 
-- (!\inst|alu1|unidad_aritmetica|mult|multi5|sR:7:sP|Cout~0_combout\ & (\inst|REG_B\(5) & (\inst|REG_A\(3) & \inst|alu1|unidad_aritmetica|mult|multi4|sR:8:sP|Suma~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(5),
	datab => \inst|alu1|unidad_aritmetica|mult|multi5|sR:7:sP|Cout~0_combout\,
	datac => \inst|REG_A\(3),
	datad => \inst|alu1|unidad_aritmetica|mult|multi4|sR:8:sP|Suma~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi5|sR:8:sP|Cout~0_combout\);

-- Location: LCCOMB_X11_Y11_N2
\inst|alu1|unidad_aritmetica|mult|multi4|sR:9:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi4|sR:9:sP|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|mult|multi4|sR:8:sP|Cout~0_combout\ $ (\inst|alu1|unidad_aritmetica|mult|multi3|sR:9:sP|Suma~0_combout\ $ (((\inst|REG_B\(4) & \inst|REG_A\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(4),
	datab => \inst|REG_A\(5),
	datac => \inst|alu1|unidad_aritmetica|mult|multi4|sR:8:sP|Cout~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|mult|multi3|sR:9:sP|Suma~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi4|sR:9:sP|Suma~0_combout\);

-- Location: LCCOMB_X11_Y11_N20
\inst|alu1|unidad_aritmetica|mult|multi5|sR:9:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi5|sR:9:sP|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi5|sR:8:sP|Cout~0_combout\ & ((\inst|alu1|unidad_aritmetica|mult|multi4|sR:9:sP|Suma~0_combout\) # ((\inst|REG_B\(5) & \inst|REG_A\(4))))) # 
-- (!\inst|alu1|unidad_aritmetica|mult|multi5|sR:8:sP|Cout~0_combout\ & (\inst|REG_B\(5) & (\inst|REG_A\(4) & \inst|alu1|unidad_aritmetica|mult|multi4|sR:9:sP|Suma~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(5),
	datab => \inst|REG_A\(4),
	datac => \inst|alu1|unidad_aritmetica|mult|multi5|sR:8:sP|Cout~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|mult|multi4|sR:9:sP|Suma~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi5|sR:9:sP|Cout~0_combout\);

-- Location: LCCOMB_X11_Y11_N6
\inst|alu1|unidad_aritmetica|mult|multi5|sR:10:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi5|sR:10:sP|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi4|sR:10:sP|Suma~0_combout\ & ((\inst|alu1|unidad_aritmetica|mult|multi5|sR:9:sP|Cout~0_combout\) # ((\inst|REG_B\(5) & \inst|REG_A\(5))))) # 
-- (!\inst|alu1|unidad_aritmetica|mult|multi4|sR:10:sP|Suma~0_combout\ & (\inst|REG_B\(5) & (\inst|REG_A\(5) & \inst|alu1|unidad_aritmetica|mult|multi5|sR:9:sP|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(5),
	datab => \inst|REG_A\(5),
	datac => \inst|alu1|unidad_aritmetica|mult|multi4|sR:10:sP|Suma~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|mult|multi5|sR:9:sP|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi5|sR:10:sP|Cout~0_combout\);

-- Location: LCCOMB_X11_Y11_N12
\inst|alu1|unidad_aritmetica|mult|multi5|sR:11:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi5|sR:11:sP|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|mult|multi4|sR:11:sP|Suma~0_combout\ $ (\inst|alu1|unidad_aritmetica|mult|multi5|sR:10:sP|Cout~0_combout\ $ (((\inst|REG_B\(5) & \inst|REG_A\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(5),
	datab => \inst|REG_A\(6),
	datac => \inst|alu1|unidad_aritmetica|mult|multi4|sR:11:sP|Suma~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|mult|multi5|sR:10:sP|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi5|sR:11:sP|Suma~0_combout\);

-- Location: LCCOMB_X11_Y11_N10
\inst|alu1|unidad_aritmetica|mult|multi5|sR:10:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi5|sR:10:sP|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|mult|multi4|sR:10:sP|Suma~0_combout\ $ (\inst|alu1|unidad_aritmetica|mult|multi5|sR:9:sP|Cout~0_combout\ $ (((\inst|REG_B\(5) & \inst|REG_A\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(5),
	datab => \inst|REG_A\(5),
	datac => \inst|alu1|unidad_aritmetica|mult|multi4|sR:10:sP|Suma~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|mult|multi5|sR:9:sP|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi5|sR:10:sP|Suma~0_combout\);

-- Location: LCCOMB_X11_Y12_N26
\inst|alu1|unidad_aritmetica|mult|multi5|sR:9:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi5|sR:9:sP|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|mult|multi5|sR:8:sP|Cout~0_combout\ $ (\inst|alu1|unidad_aritmetica|mult|multi4|sR:9:sP|Suma~0_combout\ $ (((\inst|REG_A\(4) & \inst|REG_B\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|multi5|sR:8:sP|Cout~0_combout\,
	datab => \inst|REG_A\(4),
	datac => \inst|alu1|unidad_aritmetica|mult|multi4|sR:9:sP|Suma~0_combout\,
	datad => \inst|REG_B\(5),
	combout => \inst|alu1|unidad_aritmetica|mult|multi5|sR:9:sP|Suma~0_combout\);

-- Location: LCCOMB_X11_Y12_N16
\inst|alu1|unidad_aritmetica|mult|multi5|sR:8:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi5|sR:8:sP|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|mult|multi5|sR:7:sP|Cout~0_combout\ $ (\inst|alu1|unidad_aritmetica|mult|multi4|sR:8:sP|Suma~0_combout\ $ (((\inst|REG_B\(5) & \inst|REG_A\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(5),
	datab => \inst|alu1|unidad_aritmetica|mult|multi5|sR:7:sP|Cout~0_combout\,
	datac => \inst|REG_A\(3),
	datad => \inst|alu1|unidad_aritmetica|mult|multi4|sR:8:sP|Suma~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi5|sR:8:sP|Suma~0_combout\);

-- Location: LCCOMB_X14_Y12_N6
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

-- Location: LCCOMB_X14_Y12_N12
\inst|alu1|unidad_aritmetica|mult|multi6|sR:8:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi6|sR:8:sP|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi5|sR:8:sP|Suma~0_combout\ & ((\inst|alu1|unidad_aritmetica|mult|multi6|sR:7:sP|Cout~0_combout\) # ((\inst|REG_A\(2) & \inst|REG_B\(6))))) # 
-- (!\inst|alu1|unidad_aritmetica|mult|multi5|sR:8:sP|Suma~0_combout\ & (\inst|REG_A\(2) & (\inst|REG_B\(6) & \inst|alu1|unidad_aritmetica|mult|multi6|sR:7:sP|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(2),
	datab => \inst|alu1|unidad_aritmetica|mult|multi5|sR:8:sP|Suma~0_combout\,
	datac => \inst|REG_B\(6),
	datad => \inst|alu1|unidad_aritmetica|mult|multi6|sR:7:sP|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi6|sR:8:sP|Cout~0_combout\);

-- Location: LCCOMB_X11_Y12_N30
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

-- Location: LCCOMB_X11_Y11_N0
\inst|alu1|unidad_aritmetica|mult|multi6|sR:10:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi6|sR:10:sP|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi5|sR:10:sP|Suma~0_combout\ & ((\inst|alu1|unidad_aritmetica|mult|multi6|sR:9:sP|Cout~0_combout\) # ((\inst|REG_A\(4) & \inst|REG_B\(6))))) # 
-- (!\inst|alu1|unidad_aritmetica|mult|multi5|sR:10:sP|Suma~0_combout\ & (\inst|REG_A\(4) & (\inst|alu1|unidad_aritmetica|mult|multi6|sR:9:sP|Cout~0_combout\ & \inst|REG_B\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|multi5|sR:10:sP|Suma~0_combout\,
	datab => \inst|REG_A\(4),
	datac => \inst|alu1|unidad_aritmetica|mult|multi6|sR:9:sP|Cout~0_combout\,
	datad => \inst|REG_B\(6),
	combout => \inst|alu1|unidad_aritmetica|mult|multi6|sR:10:sP|Cout~0_combout\);

-- Location: LCCOMB_X11_Y11_N8
\inst|alu1|unidad_aritmetica|mult|multi6|sR:11:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi6|sR:11:sP|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|mult|multi5|sR:11:sP|Suma~0_combout\ $ (\inst|alu1|unidad_aritmetica|mult|multi6|sR:10:sP|Cout~0_combout\ $ (((\inst|REG_A\(5) & \inst|REG_B\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|multi5|sR:11:sP|Suma~0_combout\,
	datab => \inst|REG_A\(5),
	datac => \inst|REG_B\(6),
	datad => \inst|alu1|unidad_aritmetica|mult|multi6|sR:10:sP|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi6|sR:11:sP|Suma~0_combout\);

-- Location: LCCOMB_X11_Y11_N14
\inst|alu1|unidad_aritmetica|mult|multi6|sR:10:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi6|sR:10:sP|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|mult|multi5|sR:10:sP|Suma~0_combout\ $ (\inst|alu1|unidad_aritmetica|mult|multi6|sR:9:sP|Cout~0_combout\ $ (((\inst|REG_A\(4) & \inst|REG_B\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|multi5|sR:10:sP|Suma~0_combout\,
	datab => \inst|REG_A\(4),
	datac => \inst|alu1|unidad_aritmetica|mult|multi6|sR:9:sP|Cout~0_combout\,
	datad => \inst|REG_B\(6),
	combout => \inst|alu1|unidad_aritmetica|mult|multi6|sR:10:sP|Suma~0_combout\);

-- Location: LCCOMB_X14_Y12_N4
\inst|alu1|unidad_aritmetica|mult|multi7|sR:7:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi7|sR:7:sP|Cout~0_combout\ = (\inst|REG_A\(0) & (\inst|REG_B\(7) & \inst|alu1|unidad_aritmetica|mult|multi6|sR:7:sP|Suma~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|REG_A\(0),
	datac => \inst|REG_B\(7),
	datad => \inst|alu1|unidad_aritmetica|mult|multi6|sR:7:sP|Suma~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi7|sR:7:sP|Cout~0_combout\);

-- Location: LCCOMB_X14_Y12_N24
\inst|alu1|unidad_aritmetica|mult|multi6|sR:8:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi6|sR:8:sP|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|mult|multi5|sR:8:sP|Suma~0_combout\ $ (\inst|alu1|unidad_aritmetica|mult|multi6|sR:7:sP|Cout~0_combout\ $ (((\inst|REG_A\(2) & \inst|REG_B\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(2),
	datab => \inst|alu1|unidad_aritmetica|mult|multi5|sR:8:sP|Suma~0_combout\,
	datac => \inst|REG_B\(6),
	datad => \inst|alu1|unidad_aritmetica|mult|multi6|sR:7:sP|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi6|sR:8:sP|Suma~0_combout\);

-- Location: LCCOMB_X14_Y12_N30
\inst|alu1|unidad_aritmetica|mult|multi7|sR:8:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi7|sR:8:sP|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi7|sR:7:sP|Cout~0_combout\ & ((\inst|alu1|unidad_aritmetica|mult|multi6|sR:8:sP|Suma~0_combout\) # ((\inst|REG_A\(1) & \inst|REG_B\(7))))) # 
-- (!\inst|alu1|unidad_aritmetica|mult|multi7|sR:7:sP|Cout~0_combout\ & (\inst|REG_A\(1) & (\inst|REG_B\(7) & \inst|alu1|unidad_aritmetica|mult|multi6|sR:8:sP|Suma~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(1),
	datab => \inst|alu1|unidad_aritmetica|mult|multi7|sR:7:sP|Cout~0_combout\,
	datac => \inst|REG_B\(7),
	datad => \inst|alu1|unidad_aritmetica|mult|multi6|sR:8:sP|Suma~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi7|sR:8:sP|Cout~0_combout\);

-- Location: LCCOMB_X14_Y12_N2
\inst|alu1|unidad_aritmetica|mult|multi6|sR:9:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi6|sR:9:sP|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|mult|multi5|sR:9:sP|Suma~0_combout\ $ (\inst|alu1|unidad_aritmetica|mult|multi6|sR:8:sP|Cout~0_combout\ $ (((\inst|REG_A\(3) & \inst|REG_B\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|multi5|sR:9:sP|Suma~0_combout\,
	datab => \inst|REG_A\(3),
	datac => \inst|REG_B\(6),
	datad => \inst|alu1|unidad_aritmetica|mult|multi6|sR:8:sP|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi6|sR:9:sP|Suma~0_combout\);

-- Location: LCCOMB_X14_Y12_N20
\inst|alu1|unidad_aritmetica|mult|multi7|sR:9:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi7|sR:9:sP|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi7|sR:8:sP|Cout~0_combout\ & ((\inst|alu1|unidad_aritmetica|mult|multi6|sR:9:sP|Suma~0_combout\) # ((\inst|REG_A\(2) & \inst|REG_B\(7))))) # 
-- (!\inst|alu1|unidad_aritmetica|mult|multi7|sR:8:sP|Cout~0_combout\ & (\inst|REG_A\(2) & (\inst|REG_B\(7) & \inst|alu1|unidad_aritmetica|mult|multi6|sR:9:sP|Suma~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(2),
	datab => \inst|REG_B\(7),
	datac => \inst|alu1|unidad_aritmetica|mult|multi7|sR:8:sP|Cout~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|mult|multi6|sR:9:sP|Suma~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi7|sR:9:sP|Cout~0_combout\);

-- Location: LCCOMB_X11_Y11_N24
\inst|alu1|unidad_aritmetica|mult|multi7|sR:10:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi7|sR:10:sP|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi6|sR:10:sP|Suma~0_combout\ & ((\inst|alu1|unidad_aritmetica|mult|multi7|sR:9:sP|Cout~0_combout\) # ((\inst|REG_B\(7) & \inst|REG_A\(3))))) # 
-- (!\inst|alu1|unidad_aritmetica|mult|multi6|sR:10:sP|Suma~0_combout\ & (\inst|REG_B\(7) & (\inst|REG_A\(3) & \inst|alu1|unidad_aritmetica|mult|multi7|sR:9:sP|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(7),
	datab => \inst|REG_A\(3),
	datac => \inst|alu1|unidad_aritmetica|mult|multi6|sR:10:sP|Suma~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|mult|multi7|sR:9:sP|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi7|sR:10:sP|Cout~0_combout\);

-- Location: LCCOMB_X11_Y11_N30
\inst|alu1|unidad_aritmetica|mult|multi7|sR:11:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi7|sR:11:sP|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi6|sR:11:sP|Suma~0_combout\ & ((\inst|alu1|unidad_aritmetica|mult|multi7|sR:10:sP|Cout~0_combout\) # ((\inst|REG_B\(7) & \inst|REG_A\(4))))) # 
-- (!\inst|alu1|unidad_aritmetica|mult|multi6|sR:11:sP|Suma~0_combout\ & (\inst|REG_B\(7) & (\inst|REG_A\(4) & \inst|alu1|unidad_aritmetica|mult|multi7|sR:10:sP|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(7),
	datab => \inst|REG_A\(4),
	datac => \inst|alu1|unidad_aritmetica|mult|multi6|sR:11:sP|Suma~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|mult|multi7|sR:10:sP|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi7|sR:11:sP|Cout~0_combout\);

-- Location: LCCOMB_X11_Y11_N18
\inst|alu1|unidad_aritmetica|mult|multi6|sR:11:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi6|sR:11:sP|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi5|sR:11:sP|Suma~0_combout\ & ((\inst|alu1|unidad_aritmetica|mult|multi6|sR:10:sP|Cout~0_combout\) # ((\inst|REG_A\(5) & \inst|REG_B\(6))))) # 
-- (!\inst|alu1|unidad_aritmetica|mult|multi5|sR:11:sP|Suma~0_combout\ & (\inst|REG_A\(5) & (\inst|REG_B\(6) & \inst|alu1|unidad_aritmetica|mult|multi6|sR:10:sP|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|multi5|sR:11:sP|Suma~0_combout\,
	datab => \inst|REG_A\(5),
	datac => \inst|REG_B\(6),
	datad => \inst|alu1|unidad_aritmetica|mult|multi6|sR:10:sP|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi6|sR:11:sP|Cout~0_combout\);

-- Location: LCCOMB_X11_Y14_N2
\inst|alu1|unidad_aritmetica|mult|multi4|sR:11:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi4|sR:11:sP|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi3|sR:10:sP|Cout~0_combout\ & ((\inst|alu1|unidad_aritmetica|mult|multi4|sR:10:sP|Cout~0_combout\) # ((\inst|REG_B\(4) & \inst|REG_A\(7))))) # 
-- (!\inst|alu1|unidad_aritmetica|mult|multi3|sR:10:sP|Cout~0_combout\ & (\inst|REG_B\(4) & (\inst|REG_A\(7) & \inst|alu1|unidad_aritmetica|mult|multi4|sR:10:sP|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(4),
	datab => \inst|alu1|unidad_aritmetica|mult|multi3|sR:10:sP|Cout~0_combout\,
	datac => \inst|REG_A\(7),
	datad => \inst|alu1|unidad_aritmetica|mult|multi4|sR:10:sP|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi4|sR:11:sP|Cout~0_combout\);

-- Location: LCCOMB_X11_Y10_N24
\inst|alu1|unidad_aritmetica|mult|multi5|sR:11:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi5|sR:11:sP|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi5|sR:10:sP|Cout~0_combout\ & ((\inst|alu1|unidad_aritmetica|mult|multi4|sR:11:sP|Suma~0_combout\) # ((\inst|REG_B\(5) & \inst|REG_A\(6))))) # 
-- (!\inst|alu1|unidad_aritmetica|mult|multi5|sR:10:sP|Cout~0_combout\ & (\inst|REG_B\(5) & (\inst|alu1|unidad_aritmetica|mult|multi4|sR:11:sP|Suma~0_combout\ & \inst|REG_A\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(5),
	datab => \inst|alu1|unidad_aritmetica|mult|multi5|sR:10:sP|Cout~0_combout\,
	datac => \inst|alu1|unidad_aritmetica|mult|multi4|sR:11:sP|Suma~0_combout\,
	datad => \inst|REG_A\(6),
	combout => \inst|alu1|unidad_aritmetica|mult|multi5|sR:11:sP|Cout~0_combout\);

-- Location: LCCOMB_X11_Y10_N12
\inst|alu1|unidad_aritmetica|mult|multi5|sR:12:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi5|sR:12:sP|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|mult|multi4|sR:11:sP|Cout~0_combout\ $ (\inst|alu1|unidad_aritmetica|mult|multi5|sR:11:sP|Cout~0_combout\ $ (((\inst|REG_B\(5) & \inst|REG_A\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(5),
	datab => \inst|alu1|unidad_aritmetica|mult|multi4|sR:11:sP|Cout~0_combout\,
	datac => \inst|REG_A\(7),
	datad => \inst|alu1|unidad_aritmetica|mult|multi5|sR:11:sP|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi5|sR:12:sP|Suma~0_combout\);

-- Location: LCCOMB_X11_Y10_N0
\inst|alu1|unidad_aritmetica|mult|multi6|sR:12:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi6|sR:12:sP|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|mult|multi6|sR:11:sP|Cout~0_combout\ $ (\inst|alu1|unidad_aritmetica|mult|multi5|sR:12:sP|Suma~0_combout\ $ (((\inst|REG_B\(6) & \inst|REG_A\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(6),
	datab => \inst|REG_A\(6),
	datac => \inst|alu1|unidad_aritmetica|mult|multi6|sR:11:sP|Cout~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|mult|multi5|sR:12:sP|Suma~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi6|sR:12:sP|Suma~0_combout\);

-- Location: LCCOMB_X11_Y10_N22
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

-- Location: LCCOMB_X11_Y10_N10
\inst|alu1|unidad_aritmetica|mult|multi6|sR:12:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi6|sR:12:sP|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi6|sR:11:sP|Cout~0_combout\ & ((\inst|alu1|unidad_aritmetica|mult|multi5|sR:12:sP|Suma~0_combout\) # ((\inst|REG_B\(6) & \inst|REG_A\(6))))) # 
-- (!\inst|alu1|unidad_aritmetica|mult|multi6|sR:11:sP|Cout~0_combout\ & (\inst|REG_B\(6) & (\inst|REG_A\(6) & \inst|alu1|unidad_aritmetica|mult|multi5|sR:12:sP|Suma~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(6),
	datab => \inst|REG_A\(6),
	datac => \inst|alu1|unidad_aritmetica|mult|multi6|sR:11:sP|Cout~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|mult|multi5|sR:12:sP|Suma~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi6|sR:12:sP|Cout~0_combout\);

-- Location: LCCOMB_X11_Y10_N2
\inst|alu1|unidad_aritmetica|mult|multi5|sR:12:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi5|sR:12:sP|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi4|sR:11:sP|Cout~0_combout\ & ((\inst|alu1|unidad_aritmetica|mult|multi5|sR:11:sP|Cout~0_combout\) # ((\inst|REG_B\(5) & \inst|REG_A\(7))))) # 
-- (!\inst|alu1|unidad_aritmetica|mult|multi4|sR:11:sP|Cout~0_combout\ & (\inst|REG_B\(5) & (\inst|REG_A\(7) & \inst|alu1|unidad_aritmetica|mult|multi5|sR:11:sP|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(5),
	datab => \inst|alu1|unidad_aritmetica|mult|multi4|sR:11:sP|Cout~0_combout\,
	datac => \inst|REG_A\(7),
	datad => \inst|alu1|unidad_aritmetica|mult|multi5|sR:11:sP|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi5|sR:12:sP|Cout~0_combout\);

-- Location: LCCOMB_X11_Y10_N18
\inst|alu1|unidad_aritmetica|mult|multi6|sR:13:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi6|sR:13:sP|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|mult|multi6|sR:12:sP|Cout~0_combout\ $ (\inst|alu1|unidad_aritmetica|mult|multi5|sR:12:sP|Cout~0_combout\ $ (((\inst|REG_B\(6) & \inst|REG_A\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(6),
	datab => \inst|REG_A\(7),
	datac => \inst|alu1|unidad_aritmetica|mult|multi6|sR:12:sP|Cout~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|mult|multi5|sR:12:sP|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi6|sR:13:sP|Suma~0_combout\);

-- Location: LCCOMB_X11_Y10_N16
\inst|alu1|unidad_aritmetica|mult|multi7|sR:13:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi7|sR:13:sP|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi7|sR:12:sP|Cout~0_combout\ & ((\inst|alu1|unidad_aritmetica|mult|multi6|sR:13:sP|Suma~0_combout\) # ((\inst|REG_B\(7) & \inst|REG_A\(6))))) # 
-- (!\inst|alu1|unidad_aritmetica|mult|multi7|sR:12:sP|Cout~0_combout\ & (\inst|REG_B\(7) & (\inst|REG_A\(6) & \inst|alu1|unidad_aritmetica|mult|multi6|sR:13:sP|Suma~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(7),
	datab => \inst|REG_A\(6),
	datac => \inst|alu1|unidad_aritmetica|mult|multi7|sR:12:sP|Cout~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|mult|multi6|sR:13:sP|Suma~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi7|sR:13:sP|Cout~0_combout\);

-- Location: LCCOMB_X11_Y10_N20
\inst|alu1|unidad_aritmetica|mult|multi6|sR:13:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi6|sR:13:sP|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi6|sR:12:sP|Cout~0_combout\ & ((\inst|alu1|unidad_aritmetica|mult|multi5|sR:12:sP|Cout~0_combout\) # ((\inst|REG_B\(6) & \inst|REG_A\(7))))) # 
-- (!\inst|alu1|unidad_aritmetica|mult|multi6|sR:12:sP|Cout~0_combout\ & (\inst|REG_B\(6) & (\inst|REG_A\(7) & \inst|alu1|unidad_aritmetica|mult|multi5|sR:12:sP|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(6),
	datab => \inst|REG_A\(7),
	datac => \inst|alu1|unidad_aritmetica|mult|multi6|sR:12:sP|Cout~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|mult|multi5|sR:12:sP|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi6|sR:13:sP|Cout~0_combout\);

-- Location: LCCOMB_X11_Y10_N30
\inst|alu1|unidad_aritmetica|mult|multi7|sR:14:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi7|sR:14:sP|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi7|sR:13:sP|Cout~0_combout\ & ((\inst|alu1|unidad_aritmetica|mult|multi6|sR:13:sP|Cout~0_combout\) # ((\inst|REG_B\(7) & \inst|REG_A\(7))))) # 
-- (!\inst|alu1|unidad_aritmetica|mult|multi7|sR:13:sP|Cout~0_combout\ & (\inst|REG_B\(7) & (\inst|REG_A\(7) & \inst|alu1|unidad_aritmetica|mult|multi6|sR:13:sP|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(7),
	datab => \inst|alu1|unidad_aritmetica|mult|multi7|sR:13:sP|Cout~0_combout\,
	datac => \inst|REG_A\(7),
	datad => \inst|alu1|unidad_aritmetica|mult|multi6|sR:13:sP|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi7|sR:14:sP|Cout~0_combout\);

-- Location: LCCOMB_X17_Y10_N20
\inst|alu1|unidad_aritmetica|suma|Xop[14]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|Xop\(14) = \inst|REG_A\(14) $ (\inst|REG_A\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|REG_A\(14),
	datad => \inst|REG_A\(15),
	combout => \inst|alu1|unidad_aritmetica|suma|Xop\(14));

-- Location: LCCOMB_X13_Y10_N0
\inst|alu1|unidad_aritmetica|suma|Xop[13]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|Xop\(13) = \inst|REG_A\(15) $ (\inst|REG_A\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|REG_A\(15),
	datad => \inst|REG_A\(13),
	combout => \inst|alu1|unidad_aritmetica|suma|Xop\(13));

-- Location: LCCOMB_X19_Y11_N12
\inst|alu1|unidad_aritmetica|suma|Xop[8]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|Xop\(8) = \inst|REG_A\(8) $ (\inst|REG_A\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(8),
	datad => \inst|REG_A\(15),
	combout => \inst|alu1|unidad_aritmetica|suma|Xop\(8));

-- Location: LCCOMB_X17_Y11_N10
\inst|alu1|unidad_aritmetica|suma|sR:7:sP|Cout2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|sR:7:sP|Cout2~0_combout\ = (\inst|alu1|unidad_aritmetica|suma|sR:6:sP|Cout2~0_combout\ & (\inst|alu1|unidad_aritmetica|suma|Xop\(7) & (\inst|REG_B\(15) $ (\inst|REG_B\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|suma|sR:6:sP|Cout2~0_combout\,
	datab => \inst|REG_B\(15),
	datac => \inst|REG_B\(7),
	datad => \inst|alu1|unidad_aritmetica|suma|Xop\(7),
	combout => \inst|alu1|unidad_aritmetica|suma|sR:7:sP|Cout2~0_combout\);

-- Location: LCCOMB_X19_Y11_N20
\inst|alu1|unidad_aritmetica|suma|sR:8:sP|Cout2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|sR:8:sP|Cout2~0_combout\ = (\inst|alu1|unidad_aritmetica|suma|Xop\(8) & (\inst|alu1|unidad_aritmetica|suma|sR:7:sP|Cout2~0_combout\ & (\inst|REG_B\(8) $ (\inst|REG_B\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|suma|Xop\(8),
	datab => \inst|REG_B\(8),
	datac => \inst|REG_B\(15),
	datad => \inst|alu1|unidad_aritmetica|suma|sR:7:sP|Cout2~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|suma|sR:8:sP|Cout2~0_combout\);

-- Location: LCCOMB_X17_Y11_N12
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

-- Location: LCCOMB_X14_Y11_N0
\inst|alu1|unidad_aritmetica|suma|sR:9:sP|Cout2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|sR:9:sP|Cout2~0_combout\ = (\inst|alu1|unidad_aritmetica|suma|sR:8:sP|Cout2~0_combout\ & (\inst|alu1|unidad_aritmetica|suma|Xop\(9) & (\inst|REG_B\(15) $ (\inst|REG_B\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(15),
	datab => \inst|REG_B\(9),
	datac => \inst|alu1|unidad_aritmetica|suma|sR:8:sP|Cout2~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|suma|Xop\(9),
	combout => \inst|alu1|unidad_aritmetica|suma|sR:9:sP|Cout2~0_combout\);

-- Location: LCCOMB_X16_Y10_N14
\inst|alu1|unidad_aritmetica|suma|Xop[10]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|Xop\(10) = \inst|REG_A\(15) $ (\inst|REG_A\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|REG_A\(15),
	datad => \inst|REG_A\(10),
	combout => \inst|alu1|unidad_aritmetica|suma|Xop\(10));

-- Location: LCCOMB_X14_Y10_N12
\inst|alu1|unidad_aritmetica|suma|sR:10:sP|Cout2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|sR:10:sP|Cout2~0_combout\ = (\inst|alu1|unidad_aritmetica|suma|sR:9:sP|Cout2~0_combout\ & (\inst|alu1|unidad_aritmetica|suma|Xop\(10) & (\inst|REG_B\(10) $ (\inst|REG_B\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|suma|sR:9:sP|Cout2~0_combout\,
	datab => \inst|REG_B\(10),
	datac => \inst|alu1|unidad_aritmetica|suma|Xop\(10),
	datad => \inst|REG_B\(15),
	combout => \inst|alu1|unidad_aritmetica|suma|sR:10:sP|Cout2~0_combout\);

-- Location: LCCOMB_X16_Y10_N30
\inst|alu1|unidad_aritmetica|suma|Xop[11]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|Xop\(11) = \inst|REG_A\(11) $ (\inst|REG_A\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|REG_A\(11),
	datad => \inst|REG_A\(15),
	combout => \inst|alu1|unidad_aritmetica|suma|Xop\(11));

-- Location: LCCOMB_X21_Y10_N16
\inst|alu1|unidad_aritmetica|suma|Yop~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|Yop~0_combout\ = \inst|REG_B\(15) $ (\inst|REG_B\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|REG_B\(15),
	datad => \inst|REG_B\(11),
	combout => \inst|alu1|unidad_aritmetica|suma|Yop~0_combout\);

-- Location: LCCOMB_X13_Y10_N14
\inst|alu1|unidad_aritmetica|suma|Xop[12]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|Xop\(12) = \inst|REG_A\(15) $ (\inst|REG_A\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|REG_A\(15),
	datad => \inst|REG_A\(12),
	combout => \inst|alu1|unidad_aritmetica|suma|Xop\(12));

-- Location: LCCOMB_X14_Y10_N8
\inst|alu1|unidad_aritmetica|suma|Yop~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|Yop~10_combout\ = \inst|REG_B\(10) $ (\inst|REG_B\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|REG_B\(10),
	datac => \inst|REG_B\(15),
	combout => \inst|alu1|unidad_aritmetica|suma|Yop~10_combout\);

-- Location: LCCOMB_X16_Y11_N4
\inst|alu1|unidad_aritmetica|suma|sR:7:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|sR:7:sP|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|suma|sR:6:sP|Cout~1_combout\ & ((\inst|alu1|unidad_aritmetica|suma|Xop\(7)) # (\inst|REG_B\(15) $ (\inst|REG_B\(7))))) # 
-- (!\inst|alu1|unidad_aritmetica|suma|sR:6:sP|Cout~1_combout\ & (\inst|alu1|unidad_aritmetica|suma|Xop\(7) & (\inst|REG_B\(15) $ (\inst|REG_B\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(15),
	datab => \inst|REG_B\(7),
	datac => \inst|alu1|unidad_aritmetica|suma|sR:6:sP|Cout~1_combout\,
	datad => \inst|alu1|unidad_aritmetica|suma|Xop\(7),
	combout => \inst|alu1|unidad_aritmetica|suma|sR:7:sP|Cout~0_combout\);

-- Location: LCCOMB_X17_Y11_N6
\inst|alu1|unidad_aritmetica|suma|sR:7:sP|Cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|sR:7:sP|Cout~1_combout\ = (\inst|alu1|unidad_aritmetica|suma|sR:6:sP|Cout2~0_combout\) # (\inst|alu1|unidad_aritmetica|suma|sR:7:sP|Cout~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|suma|sR:6:sP|Cout2~0_combout\,
	datac => \inst|alu1|unidad_aritmetica|suma|sR:7:sP|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|suma|sR:7:sP|Cout~1_combout\);

-- Location: LCCOMB_X17_Y11_N8
\inst|alu1|unidad_aritmetica|suma|sR:8:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|sR:8:sP|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|suma|Xop\(8) & ((\inst|alu1|unidad_aritmetica|suma|sR:7:sP|Cout~1_combout\) # (\inst|REG_B\(8) $ (\inst|REG_B\(15))))) # (!\inst|alu1|unidad_aritmetica|suma|Xop\(8) 
-- & (\inst|alu1|unidad_aritmetica|suma|sR:7:sP|Cout~1_combout\ & (\inst|REG_B\(8) $ (\inst|REG_B\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(8),
	datab => \inst|REG_B\(15),
	datac => \inst|alu1|unidad_aritmetica|suma|Xop\(8),
	datad => \inst|alu1|unidad_aritmetica|suma|sR:7:sP|Cout~1_combout\,
	combout => \inst|alu1|unidad_aritmetica|suma|sR:8:sP|Cout~0_combout\);

-- Location: LCCOMB_X17_Y11_N28
\inst|alu1|unidad_aritmetica|suma|sR:8:sP|Cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|sR:8:sP|Cout~1_combout\ = (\inst|alu1|unidad_aritmetica|suma|sR:8:sP|Cout~0_combout\) # (\inst|alu1|unidad_aritmetica|suma|sR:7:sP|Cout2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|alu1|unidad_aritmetica|suma|sR:8:sP|Cout~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|suma|sR:7:sP|Cout2~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|suma|sR:8:sP|Cout~1_combout\);

-- Location: LCCOMB_X17_Y11_N18
\inst|alu1|unidad_aritmetica|suma|sR:9:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|sR:9:sP|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|suma|Xop\(9) & ((\inst|alu1|unidad_aritmetica|suma|sR:8:sP|Cout~1_combout\) # (\inst|REG_B\(15) $ (\inst|REG_B\(9))))) # (!\inst|alu1|unidad_aritmetica|suma|Xop\(9) 
-- & (\inst|alu1|unidad_aritmetica|suma|sR:8:sP|Cout~1_combout\ & (\inst|REG_B\(15) $ (\inst|REG_B\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|suma|Xop\(9),
	datab => \inst|REG_B\(15),
	datac => \inst|REG_B\(9),
	datad => \inst|alu1|unidad_aritmetica|suma|sR:8:sP|Cout~1_combout\,
	combout => \inst|alu1|unidad_aritmetica|suma|sR:9:sP|Cout~0_combout\);

-- Location: LCCOMB_X17_Y11_N4
\inst|alu1|unidad_aritmetica|suma|sR:9:sP|Cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|sR:9:sP|Cout~1_combout\ = (\inst|alu1|unidad_aritmetica|suma|sR:8:sP|Cout2~0_combout\) # (\inst|alu1|unidad_aritmetica|suma|sR:9:sP|Cout~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|alu1|unidad_aritmetica|suma|sR:8:sP|Cout2~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|suma|sR:9:sP|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|suma|sR:9:sP|Cout~1_combout\);

-- Location: LCCOMB_X14_Y10_N0
\inst|alu1|unidad_aritmetica|suma|sR:10:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|sR:10:sP|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|suma|Xop\(10) & ((\inst|alu1|unidad_aritmetica|suma|sR:9:sP|Cout~1_combout\) # (\inst|REG_B\(15) $ (\inst|REG_B\(10))))) # 
-- (!\inst|alu1|unidad_aritmetica|suma|Xop\(10) & (\inst|alu1|unidad_aritmetica|suma|sR:9:sP|Cout~1_combout\ & (\inst|REG_B\(15) $ (\inst|REG_B\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(15),
	datab => \inst|REG_B\(10),
	datac => \inst|alu1|unidad_aritmetica|suma|Xop\(10),
	datad => \inst|alu1|unidad_aritmetica|suma|sR:9:sP|Cout~1_combout\,
	combout => \inst|alu1|unidad_aritmetica|suma|sR:10:sP|Cout~0_combout\);

-- Location: LCCOMB_X14_Y10_N2
\inst|alu1|unidad_aritmetica|suma|sR:10:sP|Cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|sR:10:sP|Cout~1_combout\ = (\inst|alu1|unidad_aritmetica|suma|sR:9:sP|Cout2~0_combout\) # (\inst|alu1|unidad_aritmetica|suma|sR:10:sP|Cout~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|alu1|unidad_aritmetica|suma|sR:9:sP|Cout2~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|suma|sR:10:sP|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|suma|sR:10:sP|Cout~1_combout\);

-- Location: LCCOMB_X14_Y10_N10
\inst|alu1|unidad_aritmetica|suma|sR:11:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|sR:11:sP|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|suma|Xop\(11) & ((\inst|alu1|unidad_aritmetica|suma|sR:10:sP|Cout~1_combout\) # (\inst|REG_B\(11) $ (\inst|REG_B\(15))))) # 
-- (!\inst|alu1|unidad_aritmetica|suma|Xop\(11) & (\inst|alu1|unidad_aritmetica|suma|sR:10:sP|Cout~1_combout\ & (\inst|REG_B\(11) $ (\inst|REG_B\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|suma|Xop\(11),
	datab => \inst|REG_B\(11),
	datac => \inst|REG_B\(15),
	datad => \inst|alu1|unidad_aritmetica|suma|sR:10:sP|Cout~1_combout\,
	combout => \inst|alu1|unidad_aritmetica|suma|sR:11:sP|Cout~0_combout\);

-- Location: LCCOMB_X14_Y10_N20
\inst|alu1|unidad_aritmetica|suma|sR:11:sP|Cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|sR:11:sP|Cout~1_combout\ = (\inst|alu1|unidad_aritmetica|suma|sR:11:sP|Cout~0_combout\) # ((\inst|alu1|unidad_aritmetica|suma|Yop~10_combout\ & (\inst|alu1|unidad_aritmetica|suma|Xop\(10) & 
-- \inst|alu1|unidad_aritmetica|suma|sR:9:sP|Cout2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|suma|Yop~10_combout\,
	datab => \inst|alu1|unidad_aritmetica|suma|Xop\(10),
	datac => \inst|alu1|unidad_aritmetica|suma|sR:9:sP|Cout2~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|suma|sR:11:sP|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|suma|sR:11:sP|Cout~1_combout\);

-- Location: LCCOMB_X14_Y10_N6
\inst|alu1|unidad_aritmetica|suma|sR:12:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|sR:12:sP|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|suma|Xop\(12) & ((\inst|alu1|unidad_aritmetica|suma|sR:11:sP|Cout~1_combout\) # (\inst|REG_B\(12) $ (\inst|REG_B\(15))))) # 
-- (!\inst|alu1|unidad_aritmetica|suma|Xop\(12) & (\inst|alu1|unidad_aritmetica|suma|sR:11:sP|Cout~1_combout\ & (\inst|REG_B\(12) $ (\inst|REG_B\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|suma|Xop\(12),
	datab => \inst|REG_B\(12),
	datac => \inst|REG_B\(15),
	datad => \inst|alu1|unidad_aritmetica|suma|sR:11:sP|Cout~1_combout\,
	combout => \inst|alu1|unidad_aritmetica|suma|sR:12:sP|Cout~0_combout\);

-- Location: LCCOMB_X14_Y10_N28
\inst|alu1|unidad_aritmetica|suma|sR:12:sP|Cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|sR:12:sP|Cout~1_combout\ = (\inst|alu1|unidad_aritmetica|suma|sR:12:sP|Cout~0_combout\) # ((\inst|alu1|unidad_aritmetica|suma|sR:10:sP|Cout2~0_combout\ & (\inst|alu1|unidad_aritmetica|suma|Xop\(11) & 
-- \inst|alu1|unidad_aritmetica|suma|Yop~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|suma|sR:10:sP|Cout2~0_combout\,
	datab => \inst|alu1|unidad_aritmetica|suma|Xop\(11),
	datac => \inst|alu1|unidad_aritmetica|suma|Yop~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|suma|sR:12:sP|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|suma|sR:12:sP|Cout~1_combout\);

-- Location: LCCOMB_X13_Y10_N30
\inst|alu1|unidad_aritmetica|suma|sR:13:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|sR:13:sP|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|suma|Xop\(13) & ((\inst|alu1|unidad_aritmetica|suma|sR:12:sP|Cout~1_combout\) # (\inst|REG_B\(15) $ (\inst|REG_B\(13))))) # 
-- (!\inst|alu1|unidad_aritmetica|suma|Xop\(13) & (\inst|alu1|unidad_aritmetica|suma|sR:12:sP|Cout~1_combout\ & (\inst|REG_B\(15) $ (\inst|REG_B\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(15),
	datab => \inst|alu1|unidad_aritmetica|suma|Xop\(13),
	datac => \inst|REG_B\(13),
	datad => \inst|alu1|unidad_aritmetica|suma|sR:12:sP|Cout~1_combout\,
	combout => \inst|alu1|unidad_aritmetica|suma|sR:13:sP|Cout~0_combout\);

-- Location: LCCOMB_X14_Y10_N18
\inst|alu1|unidad_aritmetica|suma|Yop~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|Yop~11_combout\ = \inst|REG_B\(12) $ (\inst|REG_B\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|REG_B\(12),
	datac => \inst|REG_B\(15),
	combout => \inst|alu1|unidad_aritmetica|suma|Yop~11_combout\);

-- Location: LCCOMB_X14_Y10_N22
\inst|alu1|unidad_aritmetica|suma|sR:11:sP|Cout2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|sR:11:sP|Cout2~0_combout\ = (\inst|alu1|unidad_aritmetica|suma|Xop\(11) & (\inst|alu1|unidad_aritmetica|suma|sR:10:sP|Cout2~0_combout\ & (\inst|REG_B\(11) $ (\inst|REG_B\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|suma|Xop\(11),
	datab => \inst|REG_B\(11),
	datac => \inst|REG_B\(15),
	datad => \inst|alu1|unidad_aritmetica|suma|sR:10:sP|Cout2~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|suma|sR:11:sP|Cout2~0_combout\);

-- Location: LCCOMB_X13_Y10_N20
\inst|alu1|unidad_aritmetica|suma|sR:13:sP|Cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|sR:13:sP|Cout~1_combout\ = (\inst|alu1|unidad_aritmetica|suma|sR:13:sP|Cout~0_combout\) # ((\inst|alu1|unidad_aritmetica|suma|Yop~11_combout\ & (\inst|alu1|unidad_aritmetica|suma|Xop\(12) & 
-- \inst|alu1|unidad_aritmetica|suma|sR:11:sP|Cout2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|suma|sR:13:sP|Cout~0_combout\,
	datab => \inst|alu1|unidad_aritmetica|suma|Yop~11_combout\,
	datac => \inst|alu1|unidad_aritmetica|suma|Xop\(12),
	datad => \inst|alu1|unidad_aritmetica|suma|sR:11:sP|Cout2~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|suma|sR:13:sP|Cout~1_combout\);

-- Location: LCCOMB_X13_Y10_N2
\inst|alu1|unidad_aritmetica|suma|sR:14:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|sR:14:sP|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|suma|Xop\(14) & ((\inst|alu1|unidad_aritmetica|suma|sR:13:sP|Cout~1_combout\) # (\inst|REG_B\(15) $ (\inst|REG_B\(14))))) # 
-- (!\inst|alu1|unidad_aritmetica|suma|Xop\(14) & (\inst|alu1|unidad_aritmetica|suma|sR:13:sP|Cout~1_combout\ & (\inst|REG_B\(15) $ (\inst|REG_B\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(15),
	datab => \inst|REG_B\(14),
	datac => \inst|alu1|unidad_aritmetica|suma|Xop\(14),
	datad => \inst|alu1|unidad_aritmetica|suma|sR:13:sP|Cout~1_combout\,
	combout => \inst|alu1|unidad_aritmetica|suma|sR:14:sP|Cout~0_combout\);

-- Location: LCCOMB_X14_Y10_N4
\inst|alu1|unidad_aritmetica|suma|sR:12:sP|Cout2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|sR:12:sP|Cout2~0_combout\ = (\inst|alu1|unidad_aritmetica|suma|sR:11:sP|Cout2~0_combout\ & (\inst|alu1|unidad_aritmetica|suma|Xop\(12) & (\inst|REG_B\(12) $ (\inst|REG_B\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|suma|sR:11:sP|Cout2~0_combout\,
	datab => \inst|REG_B\(12),
	datac => \inst|REG_B\(15),
	datad => \inst|alu1|unidad_aritmetica|suma|Xop\(12),
	combout => \inst|alu1|unidad_aritmetica|suma|sR:12:sP|Cout2~0_combout\);

-- Location: LCCOMB_X13_Y10_N10
\inst|alu1|unidad_aritmetica|suma|sR:13:sP|Cout2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|sR:13:sP|Cout2~4_combout\ = (\inst|alu1|unidad_aritmetica|suma|Xop\(13) & (\inst|alu1|unidad_aritmetica|suma|sR:12:sP|Cout2~0_combout\ & (\inst|REG_B\(15) $ (\inst|REG_B\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(15),
	datab => \inst|alu1|unidad_aritmetica|suma|Xop\(13),
	datac => \inst|REG_B\(13),
	datad => \inst|alu1|unidad_aritmetica|suma|sR:12:sP|Cout2~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|suma|sR:13:sP|Cout2~4_combout\);

-- Location: LCCOMB_X13_Y10_N8
\inst|alu1|unidad_aritmetica|suma|Sfaux~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|Sfaux~0_combout\ = \inst|REG_B\(15) $ (\inst|REG_A\(15) $ (((\inst|alu1|unidad_aritmetica|suma|sR:14:sP|Cout~0_combout\) # (\inst|alu1|unidad_aritmetica|suma|sR:13:sP|Cout2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(15),
	datab => \inst|alu1|unidad_aritmetica|suma|sR:14:sP|Cout~0_combout\,
	datac => \inst|REG_A\(15),
	datad => \inst|alu1|unidad_aritmetica|suma|sR:13:sP|Cout2~4_combout\,
	combout => \inst|alu1|unidad_aritmetica|suma|Sfaux~0_combout\);

-- Location: LCCOMB_X18_Y8_N8
\inst|alu1|Mux2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux2~4_combout\ = (!\inst|alu1|Mux17~0_combout\ & ((\inst|alu1|Mux16~0_combout\ & ((\inst|alu1|unidad_aritmetica|suma|Sfaux~0_combout\))) # (!\inst|alu1|Mux16~0_combout\ & (\inst|alu1|unidad_aritmetica|mult|multi7|sR:14:sP|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux16~0_combout\,
	datab => \inst|alu1|Mux17~0_combout\,
	datac => \inst|alu1|unidad_aritmetica|mult|multi7|sR:14:sP|Cout~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|suma|Sfaux~0_combout\,
	combout => \inst|alu1|Mux2~4_combout\);

-- Location: LCCOMB_X18_Y8_N2
\inst|alu1|Mux2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux2~5_combout\ = (\inst|alu1|Mux16~0_combout\ & (!\inst|alu1|Mux2~4_combout\ & ((\inst|alu1|unidad_aritmetica|resta|Sfaux~0_combout\) # (!\inst|alu1|Mux17~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux16~0_combout\,
	datab => \inst|alu1|Mux17~0_combout\,
	datac => \inst|alu1|Mux2~4_combout\,
	datad => \inst|alu1|unidad_aritmetica|resta|Sfaux~0_combout\,
	combout => \inst|alu1|Mux2~5_combout\);

-- Location: LCCOMB_X18_Y10_N6
\inst|alu1|Mux2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux2~10_combout\ = (\inst|alu1|Mux17~0_combout\ & (((\inst|alu1|Mux16~0_combout\)))) # (!\inst|alu1|Mux17~0_combout\ & ((\inst|alu1|Mux16~0_combout\ & (\inst|alu1|unidad_aritmetica|suma|Sfaux~0_combout\)) # (!\inst|alu1|Mux16~0_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|mult|multi7|sR:14:sP|Cout~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|suma|Sfaux~0_combout\,
	datab => \inst|alu1|Mux17~0_combout\,
	datac => \inst|alu1|unidad_aritmetica|mult|multi7|sR:14:sP|Cout~0_combout\,
	datad => \inst|alu1|Mux16~0_combout\,
	combout => \inst|alu1|Mux2~10_combout\);

-- Location: LCCOMB_X14_Y12_N8
\inst|alu1|unidad_aritmetica|mult|multi7|sR:8:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi7|sR:8:sP|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|mult|multi7|sR:7:sP|Cout~0_combout\ $ (\inst|alu1|unidad_aritmetica|mult|multi6|sR:8:sP|Suma~0_combout\ $ (((\inst|REG_A\(1) & \inst|REG_B\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(1),
	datab => \inst|alu1|unidad_aritmetica|mult|multi7|sR:7:sP|Cout~0_combout\,
	datac => \inst|REG_B\(7),
	datad => \inst|alu1|unidad_aritmetica|mult|multi6|sR:8:sP|Suma~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi7|sR:8:sP|Suma~0_combout\);

-- Location: LCCOMB_X19_Y11_N10
\inst|alu1|unidad_aritmetica|suma|Yop~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|Yop~8_combout\ = \inst|REG_B\(15) $ (\inst|REG_B\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(15),
	datac => \inst|REG_B\(8),
	combout => \inst|alu1|unidad_aritmetica|suma|Yop~8_combout\);

-- Location: LCCOMB_X16_Y11_N26
\inst|alu1|unidad_aritmetica|resta|sR:7:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|resta|sR:7:sP|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|resta|sR:6:sP|Cout2~4_combout\) # ((\inst|alu1|unidad_aritmetica|suma|Yop~7_combout\ & (\inst|alu1|unidad_aritmetica|suma|Xop\(7) & 
-- \inst|alu1|unidad_aritmetica|resta|sR:6:sP|Cout~0_combout\)) # (!\inst|alu1|unidad_aritmetica|suma|Yop~7_combout\ & ((\inst|alu1|unidad_aritmetica|suma|Xop\(7)) # (\inst|alu1|unidad_aritmetica|resta|sR:6:sP|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|suma|Yop~7_combout\,
	datab => \inst|alu1|unidad_aritmetica|suma|Xop\(7),
	datac => \inst|alu1|unidad_aritmetica|resta|sR:6:sP|Cout~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|resta|sR:6:sP|Cout2~4_combout\,
	combout => \inst|alu1|unidad_aritmetica|resta|sR:7:sP|Cout~0_combout\);

-- Location: LCCOMB_X16_Y11_N22
\inst|alu1|unidad_aritmetica|resta|sR:7:sP|Cout2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|resta|sR:7:sP|Cout2~4_combout\ = (!\inst|alu1|unidad_aritmetica|suma|Yop~7_combout\ & (\inst|alu1|unidad_aritmetica|resta|sR:6:sP|Cout2~4_combout\ & (\inst|REG_A\(15) $ (\inst|REG_A\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|suma|Yop~7_combout\,
	datab => \inst|REG_A\(15),
	datac => \inst|REG_A\(7),
	datad => \inst|alu1|unidad_aritmetica|resta|sR:6:sP|Cout2~4_combout\,
	combout => \inst|alu1|unidad_aritmetica|resta|sR:7:sP|Cout2~4_combout\);

-- Location: LCCOMB_X19_Y11_N6
\inst|alu1|unidad_aritmetica|resta|sR:8:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|resta|sR:8:sP|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|suma|Yop~8_combout\ $ (\inst|alu1|unidad_aritmetica|resta|sR:7:sP|Cout~0_combout\ $ (\inst|alu1|unidad_aritmetica|resta|sR:7:sP|Cout2~4_combout\ $ 
-- (\inst|alu1|unidad_aritmetica|suma|Xop\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|suma|Yop~8_combout\,
	datab => \inst|alu1|unidad_aritmetica|resta|sR:7:sP|Cout~0_combout\,
	datac => \inst|alu1|unidad_aritmetica|resta|sR:7:sP|Cout2~4_combout\,
	datad => \inst|alu1|unidad_aritmetica|suma|Xop\(8),
	combout => \inst|alu1|unidad_aritmetica|resta|sR:8:sP|Suma~0_combout\);

-- Location: LCCOMB_X19_Y11_N16
\inst|alu1|unidad_aritmetica|suma|sR:8:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|sR:8:sP|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|suma|Yop~8_combout\ $ (\inst|alu1|unidad_aritmetica|suma|sR:7:sP|Cout2~0_combout\ $ (\inst|alu1|unidad_aritmetica|suma|sR:7:sP|Cout~1_combout\ $ 
-- (\inst|alu1|unidad_aritmetica|suma|Xop\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|suma|Yop~8_combout\,
	datab => \inst|alu1|unidad_aritmetica|suma|sR:7:sP|Cout2~0_combout\,
	datac => \inst|alu1|unidad_aritmetica|suma|sR:7:sP|Cout~1_combout\,
	datad => \inst|alu1|unidad_aritmetica|suma|Xop\(8),
	combout => \inst|alu1|unidad_aritmetica|suma|sR:8:sP|Suma~0_combout\);

-- Location: LCCOMB_X18_Y8_N28
\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~10_combout\ = (\inst|alu1|Mux16~0_combout\ & ((\inst|alu1|Mux17~0_combout\ & (\inst|alu1|unidad_aritmetica|resta|sR:8:sP|Suma~0_combout\)) # (!\inst|alu1|Mux17~0_combout\ & 
-- ((!\inst|alu1|unidad_aritmetica|suma|sR:8:sP|Suma~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|resta|sR:8:sP|Suma~0_combout\,
	datab => \inst|alu1|Mux17~0_combout\,
	datac => \inst|alu1|Mux16~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|suma|sR:8:sP|Suma~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~10_combout\);

-- Location: LCCOMB_X18_Y8_N6
\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~11_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~10_combout\) # ((!\inst|alu1|unidad_aritmetica|mult|multi7|sR:8:sP|Suma~0_combout\ & !\inst|alu1|Mux16~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|multi7|sR:8:sP|Suma~0_combout\,
	datac => \inst|alu1|Mux16~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~10_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~11_combout\);

-- Location: LCCOMB_X17_Y8_N18
\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~43_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~11_combout\ & (\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~42\ $ (GND))) # 
-- (!\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~11_combout\ & (!\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~42\ & VCC))
-- \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~44\ = CARRY((\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~11_combout\ & !\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~11_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~42\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~43_combout\,
	cout => \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~44\);

-- Location: LCCOMB_X18_Y8_N12
\inst|alu1|Mux2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux2~6_combout\ = (\inst|alu1|Mux2~4_combout\) # ((\inst|alu1|Mux16~0_combout\ & (\inst|alu1|Mux17~0_combout\ & !\inst|alu1|unidad_aritmetica|resta|Sfaux~0_combout\)) # (!\inst|alu1|Mux16~0_combout\ & (!\inst|alu1|Mux17~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux16~0_combout\,
	datab => \inst|alu1|Mux17~0_combout\,
	datac => \inst|alu1|Mux2~4_combout\,
	datad => \inst|alu1|unidad_aritmetica|resta|Sfaux~0_combout\,
	combout => \inst|alu1|Mux2~6_combout\);

-- Location: LCCOMB_X18_Y10_N16
\inst|alu1|Mux7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux7~2_combout\ = (\inst|alu1|Mux2~10_combout\ & ((\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~43_combout\) # ((!\inst|alu1|Mux2~6_combout\)))) # (!\inst|alu1|Mux2~10_combout\ & 
-- (((\inst|alu1|unidad_aritmetica|mult|multi7|sR:8:sP|Suma~0_combout\ & \inst|alu1|Mux2~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux2~10_combout\,
	datab => \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~43_combout\,
	datac => \inst|alu1|unidad_aritmetica|mult|multi7|sR:8:sP|Suma~0_combout\,
	datad => \inst|alu1|Mux2~6_combout\,
	combout => \inst|alu1|Mux7~2_combout\);

-- Location: LCCOMB_X18_Y10_N30
\inst|alu1|Mux7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux7~3_combout\ = (\inst|alu1|Mux2~5_combout\ & ((\inst|alu1|Mux7~2_combout\ & (!\inst|alu1|unidad_aritmetica|resta|sR:8:sP|Suma~0_combout\)) # (!\inst|alu1|Mux7~2_combout\ & ((\inst|alu1|unidad_aritmetica|suma|sR:8:sP|Suma~0_combout\))))) # 
-- (!\inst|alu1|Mux2~5_combout\ & (\inst|alu1|Mux7~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux2~5_combout\,
	datab => \inst|alu1|Mux7~2_combout\,
	datac => \inst|alu1|unidad_aritmetica|resta|sR:8:sP|Suma~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|suma|sR:8:sP|Suma~0_combout\,
	combout => \inst|alu1|Mux7~3_combout\);

-- Location: LCCOMB_X22_Y10_N30
\inst|alu1|unidad_logica|salida_aux~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|salida_aux~12_combout\ = (\inst|REG_A\(8) & (((\inst|alu1|Mux16~0_combout\)))) # (!\inst|REG_A\(8) & (((\inst|REG_B\(8) & \inst|alu1|Mux16~0_combout\)) # (!\inst|alu1|Mux17~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(8),
	datab => \inst|alu1|Mux16~0_combout\,
	datac => \inst|REG_A\(8),
	datad => \inst|alu1|Mux17~0_combout\,
	combout => \inst|alu1|unidad_logica|salida_aux~12_combout\);

-- Location: LCCOMB_X21_Y9_N14
\inst|alu1|unidad_logica|aux[8]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|aux[8]~29_combout\ = (\inst|REG_A\(8) & ((\inst|alu1|unidad_logica|aux[7]~28\) # (GND))) # (!\inst|REG_A\(8) & (!\inst|alu1|unidad_logica|aux[7]~28\))
-- \inst|alu1|unidad_logica|aux[8]~30\ = CARRY((\inst|REG_A\(8)) # (!\inst|alu1|unidad_logica|aux[7]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|REG_A\(8),
	datad => VCC,
	cin => \inst|alu1|unidad_logica|aux[7]~28\,
	combout => \inst|alu1|unidad_logica|aux[8]~29_combout\,
	cout => \inst|alu1|unidad_logica|aux[8]~30\);

-- Location: FF_X21_Y9_N15
\inst|alu1|unidad_logica|aux[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|alu1|unidad_logica|aux[8]~29_combout\,
	ena => \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|unidad_logica|aux\(8));

-- Location: LCCOMB_X22_Y9_N16
\inst|alu1|unidad_logica|salida_aux~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|salida_aux~14_combout\ = (\inst|alu1|unidad_logica|salida_aux[14]~44_combout\ & ((\inst|alu1|unidad_logica|salida_aux~12_combout\ & (\inst|alu1|unidad_logica|salida_aux~13_combout\)) # 
-- (!\inst|alu1|unidad_logica|salida_aux~12_combout\ & ((\inst|alu1|unidad_logica|aux\(8)))))) # (!\inst|alu1|unidad_logica|salida_aux[14]~44_combout\ & (((\inst|alu1|unidad_logica|salida_aux~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_logica|salida_aux[14]~44_combout\,
	datab => \inst|alu1|unidad_logica|salida_aux~13_combout\,
	datac => \inst|alu1|unidad_logica|salida_aux~12_combout\,
	datad => \inst|alu1|unidad_logica|aux\(8),
	combout => \inst|alu1|unidad_logica|salida_aux~14_combout\);

-- Location: FF_X22_Y9_N17
\inst|alu1|unidad_logica|salida_aux[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|alu1|unidad_logica|salida_aux~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|unidad_logica|salida_aux\(8));

-- Location: FF_X22_Y9_N9
\inst|alu1|barrel_shifters|aux[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|REG_A\(7),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|barrel_shifters|aux\(8));

-- Location: FF_X22_Y9_N29
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

-- Location: LCCOMB_X22_Y9_N28
\inst|alu1|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux7~0_combout\ = (\inst|alu1|Mux2~2_combout\ & (\inst|alu1|unidad_logica|salida_aux\(8))) # (!\inst|alu1|Mux2~2_combout\ & (((\inst|alu1|barrel_shifters|salShifters\(8) & \inst|OP\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux2~2_combout\,
	datab => \inst|alu1|unidad_logica|salida_aux\(8),
	datac => \inst|alu1|barrel_shifters|salShifters\(8),
	datad => \inst|OP\(2),
	combout => \inst|alu1|Mux7~0_combout\);

-- Location: LCCOMB_X22_Y9_N6
\inst|alu1|Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux7~1_combout\ = (!\inst|alu1|Mux2~3_combout\ & ((\inst|OP\(3) & (\inst|OP\(2))) # (!\inst|OP\(3) & ((\inst|alu1|Mux7~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|OP\(2),
	datab => \inst|OP\(3),
	datac => \inst|alu1|Mux2~3_combout\,
	datad => \inst|alu1|Mux7~0_combout\,
	combout => \inst|alu1|Mux7~1_combout\);

-- Location: LCCOMB_X18_Y10_N12
\inst|alu1|Mux7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux7~4_combout\ = (\inst|alu1|Mux7~1_combout\) # ((\inst|alu1|Mux7~3_combout\ & \inst|alu1|Mux2~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux7~3_combout\,
	datab => \inst|alu1|Mux2~3_combout\,
	datad => \inst|alu1|Mux7~1_combout\,
	combout => \inst|alu1|Mux7~4_combout\);

-- Location: LCCOMB_X18_Y10_N2
\inst|reggy~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~17_combout\ = (\inst|reggy~16_combout\) # ((\inst|reggy~9_combout\ & \inst|alu1|Mux7~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy~9_combout\,
	datac => \inst|reggy~16_combout\,
	datad => \inst|alu1|Mux7~4_combout\,
	combout => \inst|reggy~17_combout\);

-- Location: LCCOMB_X19_Y11_N24
\inst|reggy[1][8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy[1][8]~feeder_combout\ = \inst|reggy~17_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|reggy~17_combout\,
	combout => \inst|reggy[1][8]~feeder_combout\);

-- Location: FF_X19_Y11_N25
\inst|reggy[1][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|reggy[1][8]~feeder_combout\,
	ena => \inst|reggy[1][11]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy[1][8]~q\);

-- Location: LCCOMB_X19_Y11_N30
\inst|Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux15~0_combout\ = (\inst|MAR\(4) & (\inst|reggy[1][8]~q\)) # (!\inst|MAR\(4) & ((\inst|reggy[0][8]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|reggy[1][8]~q\,
	datac => \inst|MAR\(4),
	datad => \inst|reggy[0][8]~q\,
	combout => \inst|Mux15~0_combout\);

-- Location: FF_X19_Y11_N31
\inst|REG_A[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Mux15~0_combout\,
	ena => \inst|OP[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|REG_A\(8));

-- Location: FF_X21_Y11_N5
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

-- Location: FF_X21_Y11_N21
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

-- Location: LCCOMB_X21_Y9_N16
\inst|alu1|unidad_logica|aux[9]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|aux[9]~31_combout\ = (\inst|REG_A\(9) & (!\inst|alu1|unidad_logica|aux[8]~30\ & VCC)) # (!\inst|REG_A\(9) & (\inst|alu1|unidad_logica|aux[8]~30\ $ (GND)))
-- \inst|alu1|unidad_logica|aux[9]~32\ = CARRY((!\inst|REG_A\(9) & !\inst|alu1|unidad_logica|aux[8]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(9),
	datad => VCC,
	cin => \inst|alu1|unidad_logica|aux[8]~30\,
	combout => \inst|alu1|unidad_logica|aux[9]~31_combout\,
	cout => \inst|alu1|unidad_logica|aux[9]~32\);

-- Location: FF_X21_Y9_N17
\inst|alu1|unidad_logica|aux[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|alu1|unidad_logica|aux[9]~31_combout\,
	ena => \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|unidad_logica|aux\(9));

-- Location: LCCOMB_X21_Y11_N28
\inst|alu1|unidad_logica|salida_aux~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|salida_aux~9_combout\ = (\inst|REG_A\(9) & (((\inst|alu1|Mux16~0_combout\)))) # (!\inst|REG_A\(9) & (((\inst|REG_B\(9) & \inst|alu1|Mux16~0_combout\)) # (!\inst|alu1|Mux17~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(9),
	datab => \inst|alu1|Mux16~0_combout\,
	datac => \inst|alu1|Mux17~0_combout\,
	datad => \inst|REG_A\(9),
	combout => \inst|alu1|unidad_logica|salida_aux~9_combout\);

-- Location: LCCOMB_X21_Y11_N18
\inst|alu1|unidad_logica|salida_aux~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|salida_aux~11_combout\ = (\inst|alu1|unidad_logica|salida_aux[14]~44_combout\ & ((\inst|alu1|unidad_logica|salida_aux~9_combout\ & ((\inst|alu1|unidad_logica|salida_aux~10_combout\))) # 
-- (!\inst|alu1|unidad_logica|salida_aux~9_combout\ & (\inst|alu1|unidad_logica|aux\(9))))) # (!\inst|alu1|unidad_logica|salida_aux[14]~44_combout\ & (((\inst|alu1|unidad_logica|salida_aux~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_logica|aux\(9),
	datab => \inst|alu1|unidad_logica|salida_aux[14]~44_combout\,
	datac => \inst|alu1|unidad_logica|salida_aux~9_combout\,
	datad => \inst|alu1|unidad_logica|salida_aux~10_combout\,
	combout => \inst|alu1|unidad_logica|salida_aux~11_combout\);

-- Location: FF_X21_Y11_N19
\inst|alu1|unidad_logica|salida_aux[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|alu1|unidad_logica|salida_aux~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|unidad_logica|salida_aux\(9));

-- Location: LCCOMB_X21_Y11_N20
\inst|alu1|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux6~0_combout\ = (\inst|alu1|Mux2~2_combout\ & (((\inst|alu1|unidad_logica|salida_aux\(9))))) # (!\inst|alu1|Mux2~2_combout\ & (\inst|OP\(2) & (\inst|alu1|barrel_shifters|salShifters\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux2~2_combout\,
	datab => \inst|OP\(2),
	datac => \inst|alu1|barrel_shifters|salShifters\(9),
	datad => \inst|alu1|unidad_logica|salida_aux\(9),
	combout => \inst|alu1|Mux6~0_combout\);

-- Location: LCCOMB_X22_Y11_N26
\inst|alu1|Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux6~1_combout\ = (!\inst|alu1|Mux2~3_combout\ & ((\inst|OP\(3) & (\inst|OP\(2))) # (!\inst|OP\(3) & ((\inst|alu1|Mux6~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|OP\(2),
	datab => \inst|alu1|Mux2~3_combout\,
	datac => \inst|OP\(3),
	datad => \inst|alu1|Mux6~0_combout\,
	combout => \inst|alu1|Mux6~1_combout\);

-- Location: LCCOMB_X19_Y11_N14
\inst|alu1|unidad_aritmetica|resta|sR:8:sP|Cout2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|resta|sR:8:sP|Cout2~4_combout\ = (\inst|alu1|unidad_aritmetica|resta|sR:7:sP|Cout2~4_combout\ & (!\inst|alu1|unidad_aritmetica|suma|Yop~8_combout\ & (\inst|REG_A\(15) $ (\inst|REG_A\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(15),
	datab => \inst|REG_A\(8),
	datac => \inst|alu1|unidad_aritmetica|resta|sR:7:sP|Cout2~4_combout\,
	datad => \inst|alu1|unidad_aritmetica|suma|Yop~8_combout\,
	combout => \inst|alu1|unidad_aritmetica|resta|sR:8:sP|Cout2~4_combout\);

-- Location: LCCOMB_X19_Y11_N28
\inst|alu1|unidad_aritmetica|resta|sR:8:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|resta|sR:8:sP|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|resta|sR:7:sP|Cout2~4_combout\) # ((\inst|alu1|unidad_aritmetica|suma|Yop~8_combout\ & (\inst|alu1|unidad_aritmetica|resta|sR:7:sP|Cout~0_combout\ & 
-- \inst|alu1|unidad_aritmetica|suma|Xop\(8))) # (!\inst|alu1|unidad_aritmetica|suma|Yop~8_combout\ & ((\inst|alu1|unidad_aritmetica|resta|sR:7:sP|Cout~0_combout\) # (\inst|alu1|unidad_aritmetica|suma|Xop\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|suma|Yop~8_combout\,
	datab => \inst|alu1|unidad_aritmetica|resta|sR:7:sP|Cout~0_combout\,
	datac => \inst|alu1|unidad_aritmetica|resta|sR:7:sP|Cout2~4_combout\,
	datad => \inst|alu1|unidad_aritmetica|suma|Xop\(8),
	combout => \inst|alu1|unidad_aritmetica|resta|sR:8:sP|Cout~0_combout\);

-- Location: LCCOMB_X17_Y11_N2
\inst|alu1|unidad_aritmetica|suma|Yop~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|Yop~9_combout\ = \inst|REG_B\(15) $ (\inst|REG_B\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|REG_B\(15),
	datac => \inst|REG_B\(9),
	combout => \inst|alu1|unidad_aritmetica|suma|Yop~9_combout\);

-- Location: LCCOMB_X17_Y11_N26
\inst|alu1|unidad_aritmetica|resta|sR:9:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|resta|sR:9:sP|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|suma|Xop\(9) $ (\inst|alu1|unidad_aritmetica|resta|sR:8:sP|Cout2~4_combout\ $ (\inst|alu1|unidad_aritmetica|resta|sR:8:sP|Cout~0_combout\ $ 
-- (\inst|alu1|unidad_aritmetica|suma|Yop~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|suma|Xop\(9),
	datab => \inst|alu1|unidad_aritmetica|resta|sR:8:sP|Cout2~4_combout\,
	datac => \inst|alu1|unidad_aritmetica|resta|sR:8:sP|Cout~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|suma|Yop~9_combout\,
	combout => \inst|alu1|unidad_aritmetica|resta|sR:9:sP|Suma~0_combout\);

-- Location: LCCOMB_X17_Y11_N24
\inst|alu1|unidad_aritmetica|suma|sR:9:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|sR:9:sP|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|suma|Xop\(9) $ (\inst|alu1|unidad_aritmetica|suma|Yop~9_combout\ $ (\inst|alu1|unidad_aritmetica|suma|sR:8:sP|Cout2~0_combout\ $ 
-- (\inst|alu1|unidad_aritmetica|suma|sR:8:sP|Cout~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|suma|Xop\(9),
	datab => \inst|alu1|unidad_aritmetica|suma|Yop~9_combout\,
	datac => \inst|alu1|unidad_aritmetica|suma|sR:8:sP|Cout2~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|suma|sR:8:sP|Cout~1_combout\,
	combout => \inst|alu1|unidad_aritmetica|suma|sR:9:sP|Suma~0_combout\);

-- Location: LCCOMB_X14_Y12_N10
\inst|alu1|unidad_aritmetica|mult|multi7|sR:9:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi7|sR:9:sP|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|mult|multi7|sR:8:sP|Cout~0_combout\ $ (\inst|alu1|unidad_aritmetica|mult|multi6|sR:9:sP|Suma~0_combout\ $ (((\inst|REG_A\(2) & \inst|REG_B\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(2),
	datab => \inst|REG_B\(7),
	datac => \inst|alu1|unidad_aritmetica|mult|multi7|sR:8:sP|Cout~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|mult|multi6|sR:9:sP|Suma~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi7|sR:9:sP|Suma~0_combout\);

-- Location: LCCOMB_X17_Y11_N14
\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~8_combout\ = (\inst|alu1|Mux16~0_combout\ & ((\inst|alu1|Mux17~0_combout\ & (\inst|alu1|unidad_aritmetica|resta|sR:9:sP|Suma~0_combout\)) # (!\inst|alu1|Mux17~0_combout\ & 
-- ((!\inst|alu1|unidad_aritmetica|suma|sR:9:sP|Suma~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux17~0_combout\,
	datab => \inst|alu1|Mux16~0_combout\,
	datac => \inst|alu1|unidad_aritmetica|resta|sR:9:sP|Suma~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|suma|sR:9:sP|Suma~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~8_combout\);

-- Location: LCCOMB_X17_Y11_N0
\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~9_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~8_combout\) # ((!\inst|alu1|unidad_aritmetica|mult|multi7|sR:9:sP|Suma~0_combout\ & !\inst|alu1|Mux16~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|multi7|sR:9:sP|Suma~0_combout\,
	datab => \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~8_combout\,
	datad => \inst|alu1|Mux16~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~9_combout\);

-- Location: LCCOMB_X17_Y8_N20
\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~45_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~9_combout\ & (!\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~44\)) # 
-- (!\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~9_combout\ & ((\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~44\) # (GND)))
-- \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~46\ = CARRY((!\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~44\) # (!\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~9_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~44\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~45_combout\,
	cout => \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~46\);

-- Location: LCCOMB_X17_Y11_N22
\inst|alu1|Mux6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux6~2_combout\ = (\inst|alu1|Mux2~6_combout\ & ((\inst|alu1|Mux2~10_combout\ & ((\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~45_combout\))) # (!\inst|alu1|Mux2~10_combout\ & 
-- (\inst|alu1|unidad_aritmetica|mult|multi7|sR:9:sP|Suma~0_combout\)))) # (!\inst|alu1|Mux2~6_combout\ & (((\inst|alu1|Mux2~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|multi7|sR:9:sP|Suma~0_combout\,
	datab => \inst|alu1|Mux2~6_combout\,
	datac => \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~45_combout\,
	datad => \inst|alu1|Mux2~10_combout\,
	combout => \inst|alu1|Mux6~2_combout\);

-- Location: LCCOMB_X17_Y11_N16
\inst|alu1|Mux6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux6~3_combout\ = (\inst|alu1|Mux6~2_combout\ & (((!\inst|alu1|Mux2~5_combout\)) # (!\inst|alu1|unidad_aritmetica|resta|sR:9:sP|Suma~0_combout\))) # (!\inst|alu1|Mux6~2_combout\ & (((\inst|alu1|unidad_aritmetica|suma|sR:9:sP|Suma~0_combout\ & 
-- \inst|alu1|Mux2~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|resta|sR:9:sP|Suma~0_combout\,
	datab => \inst|alu1|unidad_aritmetica|suma|sR:9:sP|Suma~0_combout\,
	datac => \inst|alu1|Mux6~2_combout\,
	datad => \inst|alu1|Mux2~5_combout\,
	combout => \inst|alu1|Mux6~3_combout\);

-- Location: LCCOMB_X22_Y11_N18
\inst|alu1|Mux6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux6~4_combout\ = (\inst|alu1|Mux6~1_combout\) # ((\inst|alu1|Mux2~3_combout\ & \inst|alu1|Mux6~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux6~1_combout\,
	datac => \inst|alu1|Mux2~3_combout\,
	datad => \inst|alu1|Mux6~3_combout\,
	combout => \inst|alu1|Mux6~4_combout\);

-- Location: LCCOMB_X22_Y11_N16
\inst|reggy~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~14_combout\ = (\inst|Equal9~0_combout\ & ((\inst|alu1|unidad_logica|salida_aux~10_combout\) # ((\inst|reggy~9_combout\ & \inst|alu1|Mux6~4_combout\)))) # (!\inst|Equal9~0_combout\ & (\inst|reggy~9_combout\ & ((\inst|alu1|Mux6~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal9~0_combout\,
	datab => \inst|reggy~9_combout\,
	datac => \inst|alu1|unidad_logica|salida_aux~10_combout\,
	datad => \inst|alu1|Mux6~4_combout\,
	combout => \inst|reggy~14_combout\);

-- Location: LCCOMB_X19_Y11_N18
\inst|reggy[1][9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy[1][9]~feeder_combout\ = \inst|reggy~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|reggy~14_combout\,
	combout => \inst|reggy[1][9]~feeder_combout\);

-- Location: FF_X19_Y11_N19
\inst|reggy[1][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|reggy[1][9]~feeder_combout\,
	ena => \inst|reggy[1][11]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy[1][9]~q\);

-- Location: LCCOMB_X19_Y11_N8
\inst|Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux14~0_combout\ = (\inst|MAR\(4) & (\inst|reggy[1][9]~q\)) # (!\inst|MAR\(4) & ((\inst|reggy[0][9]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|reggy[1][9]~q\,
	datac => \inst|MAR\(4),
	datad => \inst|reggy[0][9]~q\,
	combout => \inst|Mux14~0_combout\);

-- Location: FF_X19_Y11_N9
\inst|REG_A[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Mux14~0_combout\,
	ena => \inst|OP[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|REG_A\(9));

-- Location: LCCOMB_X21_Y9_N18
\inst|alu1|unidad_logica|aux[10]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|aux[10]~33_combout\ = (\inst|REG_A\(10) & ((\inst|alu1|unidad_logica|aux[9]~32\) # (GND))) # (!\inst|REG_A\(10) & (!\inst|alu1|unidad_logica|aux[9]~32\))
-- \inst|alu1|unidad_logica|aux[10]~34\ = CARRY((\inst|REG_A\(10)) # (!\inst|alu1|unidad_logica|aux[9]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(10),
	datad => VCC,
	cin => \inst|alu1|unidad_logica|aux[9]~32\,
	combout => \inst|alu1|unidad_logica|aux[10]~33_combout\,
	cout => \inst|alu1|unidad_logica|aux[10]~34\);

-- Location: FF_X21_Y9_N19
\inst|alu1|unidad_logica|aux[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|alu1|unidad_logica|aux[10]~33_combout\,
	ena => \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|unidad_logica|aux\(10));

-- Location: LCCOMB_X18_Y9_N14
\inst|alu1|unidad_logica|salida_aux~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|salida_aux~6_combout\ = (\inst|REG_A\(10) & (\inst|alu1|Mux16~0_combout\)) # (!\inst|REG_A\(10) & (((\inst|alu1|Mux16~0_combout\ & \inst|REG_B\(10))) # (!\inst|alu1|Mux17~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110110001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(10),
	datab => \inst|alu1|Mux16~0_combout\,
	datac => \inst|alu1|Mux17~0_combout\,
	datad => \inst|REG_B\(10),
	combout => \inst|alu1|unidad_logica|salida_aux~6_combout\);

-- Location: LCCOMB_X18_Y9_N6
\inst|alu1|unidad_logica|salida_aux~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|salida_aux~8_combout\ = (\inst|alu1|unidad_logica|salida_aux~6_combout\ & ((\inst|alu1|unidad_logica|salida_aux~7_combout\) # ((!\inst|alu1|unidad_logica|salida_aux[14]~44_combout\)))) # 
-- (!\inst|alu1|unidad_logica|salida_aux~6_combout\ & (((\inst|alu1|unidad_logica|aux\(10) & \inst|alu1|unidad_logica|salida_aux[14]~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_logica|salida_aux~7_combout\,
	datab => \inst|alu1|unidad_logica|aux\(10),
	datac => \inst|alu1|unidad_logica|salida_aux~6_combout\,
	datad => \inst|alu1|unidad_logica|salida_aux[14]~44_combout\,
	combout => \inst|alu1|unidad_logica|salida_aux~8_combout\);

-- Location: FF_X18_Y9_N7
\inst|alu1|unidad_logica|salida_aux[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|alu1|unidad_logica|salida_aux~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|unidad_logica|salida_aux\(10));

-- Location: FF_X18_Y9_N9
\inst|alu1|barrel_shifters|aux[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|REG_A\(9),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|barrel_shifters|aux\(10));

-- Location: FF_X18_Y9_N21
\inst|alu1|barrel_shifters|salShifters[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|alu1|barrel_shifters|aux\(10),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|barrel_shifters|salShifters\(10));

-- Location: LCCOMB_X18_Y9_N20
\inst|alu1|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux5~0_combout\ = (\inst|alu1|Mux2~2_combout\ & (\inst|alu1|unidad_logica|salida_aux\(10))) # (!\inst|alu1|Mux2~2_combout\ & (((\inst|OP\(2) & \inst|alu1|barrel_shifters|salShifters\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_logica|salida_aux\(10),
	datab => \inst|OP\(2),
	datac => \inst|alu1|barrel_shifters|salShifters\(10),
	datad => \inst|alu1|Mux2~2_combout\,
	combout => \inst|alu1|Mux5~0_combout\);

-- Location: LCCOMB_X18_Y9_N18
\inst|alu1|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux5~1_combout\ = (!\inst|alu1|Mux2~3_combout\ & ((\inst|OP\(3) & ((\inst|OP\(2)))) # (!\inst|OP\(3) & (\inst|alu1|Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux2~3_combout\,
	datab => \inst|alu1|Mux5~0_combout\,
	datac => \inst|OP\(2),
	datad => \inst|OP\(3),
	combout => \inst|alu1|Mux5~1_combout\);

-- Location: LCCOMB_X14_Y10_N14
\inst|alu1|unidad_aritmetica|suma|sR:10:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|sR:10:sP|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|suma|Yop~10_combout\ $ (\inst|alu1|unidad_aritmetica|suma|Xop\(10) $ (\inst|alu1|unidad_aritmetica|suma|sR:9:sP|Cout2~0_combout\ $ 
-- (\inst|alu1|unidad_aritmetica|suma|sR:9:sP|Cout~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|suma|Yop~10_combout\,
	datab => \inst|alu1|unidad_aritmetica|suma|Xop\(10),
	datac => \inst|alu1|unidad_aritmetica|suma|sR:9:sP|Cout2~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|suma|sR:9:sP|Cout~1_combout\,
	combout => \inst|alu1|unidad_aritmetica|suma|sR:10:sP|Suma~0_combout\);

-- Location: LCCOMB_X17_Y11_N20
\inst|alu1|unidad_aritmetica|resta|sR:9:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|resta|sR:9:sP|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|resta|sR:8:sP|Cout2~4_combout\) # ((\inst|alu1|unidad_aritmetica|suma|Xop\(9) & ((\inst|alu1|unidad_aritmetica|resta|sR:8:sP|Cout~0_combout\) # 
-- (!\inst|alu1|unidad_aritmetica|suma|Yop~9_combout\))) # (!\inst|alu1|unidad_aritmetica|suma|Xop\(9) & (\inst|alu1|unidad_aritmetica|resta|sR:8:sP|Cout~0_combout\ & !\inst|alu1|unidad_aritmetica|suma|Yop~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|suma|Xop\(9),
	datab => \inst|alu1|unidad_aritmetica|resta|sR:8:sP|Cout2~4_combout\,
	datac => \inst|alu1|unidad_aritmetica|resta|sR:8:sP|Cout~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|suma|Yop~9_combout\,
	combout => \inst|alu1|unidad_aritmetica|resta|sR:9:sP|Cout~0_combout\);

-- Location: LCCOMB_X17_Y11_N30
\inst|alu1|unidad_aritmetica|resta|sR:9:sP|Cout2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|resta|sR:9:sP|Cout2~4_combout\ = (\inst|alu1|unidad_aritmetica|resta|sR:8:sP|Cout2~4_combout\ & (!\inst|alu1|unidad_aritmetica|suma|Yop~9_combout\ & (\inst|REG_A\(9) $ (\inst|REG_A\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(9),
	datab => \inst|REG_A\(15),
	datac => \inst|alu1|unidad_aritmetica|resta|sR:8:sP|Cout2~4_combout\,
	datad => \inst|alu1|unidad_aritmetica|suma|Yop~9_combout\,
	combout => \inst|alu1|unidad_aritmetica|resta|sR:9:sP|Cout2~4_combout\);

-- Location: LCCOMB_X16_Y10_N24
\inst|alu1|unidad_aritmetica|resta|sR:10:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|resta|sR:10:sP|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|suma|Yop~10_combout\ $ (\inst|alu1|unidad_aritmetica|resta|sR:9:sP|Cout~0_combout\ $ (\inst|alu1|unidad_aritmetica|suma|Xop\(10) $ 
-- (\inst|alu1|unidad_aritmetica|resta|sR:9:sP|Cout2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|suma|Yop~10_combout\,
	datab => \inst|alu1|unidad_aritmetica|resta|sR:9:sP|Cout~0_combout\,
	datac => \inst|alu1|unidad_aritmetica|suma|Xop\(10),
	datad => \inst|alu1|unidad_aritmetica|resta|sR:9:sP|Cout2~4_combout\,
	combout => \inst|alu1|unidad_aritmetica|resta|sR:10:sP|Suma~0_combout\);

-- Location: LCCOMB_X11_Y11_N26
\inst|alu1|unidad_aritmetica|mult|multi7|sR:10:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi7|sR:10:sP|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|mult|multi6|sR:10:sP|Suma~0_combout\ $ (\inst|alu1|unidad_aritmetica|mult|multi7|sR:9:sP|Cout~0_combout\ $ (((\inst|REG_B\(7) & \inst|REG_A\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(7),
	datab => \inst|REG_A\(3),
	datac => \inst|alu1|unidad_aritmetica|mult|multi6|sR:10:sP|Suma~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|mult|multi7|sR:9:sP|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi7|sR:10:sP|Suma~0_combout\);

-- Location: LCCOMB_X18_Y8_N24
\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~6_combout\ = (\inst|alu1|Mux16~0_combout\ & ((\inst|alu1|Mux17~0_combout\ & ((\inst|alu1|unidad_aritmetica|resta|sR:10:sP|Suma~0_combout\))) # (!\inst|alu1|Mux17~0_combout\ & 
-- (!\inst|alu1|unidad_aritmetica|suma|sR:10:sP|Suma~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux16~0_combout\,
	datab => \inst|alu1|Mux17~0_combout\,
	datac => \inst|alu1|unidad_aritmetica|suma|sR:10:sP|Suma~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|resta|sR:10:sP|Suma~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~6_combout\);

-- Location: LCCOMB_X18_Y8_N18
\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~7_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~6_combout\) # ((!\inst|alu1|unidad_aritmetica|mult|multi7|sR:10:sP|Suma~0_combout\ & !\inst|alu1|Mux16~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|unidad_aritmetica|mult|multi7|sR:10:sP|Suma~0_combout\,
	datac => \inst|alu1|Mux16~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~6_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~7_combout\);

-- Location: LCCOMB_X17_Y8_N22
\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~47_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~7_combout\ & (\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~46\ $ (GND))) # 
-- (!\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~7_combout\ & (!\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~46\ & VCC))
-- \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~48\ = CARRY((\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~7_combout\ & !\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~7_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~46\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~47_combout\,
	cout => \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~48\);

-- Location: LCCOMB_X18_Y8_N30
\inst|alu1|Mux5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux5~2_combout\ = (\inst|alu1|Mux2~6_combout\ & ((\inst|alu1|Mux2~10_combout\ & ((\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~47_combout\))) # (!\inst|alu1|Mux2~10_combout\ & 
-- (\inst|alu1|unidad_aritmetica|mult|multi7|sR:10:sP|Suma~0_combout\)))) # (!\inst|alu1|Mux2~6_combout\ & (((\inst|alu1|Mux2~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux2~6_combout\,
	datab => \inst|alu1|unidad_aritmetica|mult|multi7|sR:10:sP|Suma~0_combout\,
	datac => \inst|alu1|Mux2~10_combout\,
	datad => \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~47_combout\,
	combout => \inst|alu1|Mux5~2_combout\);

-- Location: LCCOMB_X18_Y8_N4
\inst|alu1|Mux5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux5~3_combout\ = (\inst|alu1|Mux5~2_combout\ & (((!\inst|alu1|Mux2~5_combout\) # (!\inst|alu1|unidad_aritmetica|resta|sR:10:sP|Suma~0_combout\)))) # (!\inst|alu1|Mux5~2_combout\ & (\inst|alu1|unidad_aritmetica|suma|sR:10:sP|Suma~0_combout\ & 
-- ((\inst|alu1|Mux2~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|suma|sR:10:sP|Suma~0_combout\,
	datab => \inst|alu1|unidad_aritmetica|resta|sR:10:sP|Suma~0_combout\,
	datac => \inst|alu1|Mux5~2_combout\,
	datad => \inst|alu1|Mux2~5_combout\,
	combout => \inst|alu1|Mux5~3_combout\);

-- Location: LCCOMB_X18_Y9_N8
\inst|alu1|Mux5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux5~4_combout\ = (\inst|alu1|Mux5~1_combout\) # ((\inst|alu1|Mux2~3_combout\ & \inst|alu1|Mux5~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux2~3_combout\,
	datab => \inst|alu1|Mux5~1_combout\,
	datad => \inst|alu1|Mux5~3_combout\,
	combout => \inst|alu1|Mux5~4_combout\);

-- Location: LCCOMB_X18_Y9_N26
\inst|reggy~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~13_combout\ = (\inst|alu1|unidad_logica|salida_aux~7_combout\ & ((\inst|Equal9~0_combout\) # ((\inst|alu1|Mux5~4_combout\ & \inst|reggy~9_combout\)))) # (!\inst|alu1|unidad_logica|salida_aux~7_combout\ & (((\inst|alu1|Mux5~4_combout\ & 
-- \inst|reggy~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_logica|salida_aux~7_combout\,
	datab => \inst|Equal9~0_combout\,
	datac => \inst|alu1|Mux5~4_combout\,
	datad => \inst|reggy~9_combout\,
	combout => \inst|reggy~13_combout\);

-- Location: FF_X18_Y9_N27
\inst|reggy[0][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|reggy~13_combout\,
	ena => \inst|reggy[0][11]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy[0][10]~q\);

-- Location: LCCOMB_X16_Y10_N20
\inst|Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux13~0_combout\ = (\inst|MAR\(4) & ((\inst|reggy[1][10]~q\))) # (!\inst|MAR\(4) & (\inst|reggy[0][10]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|MAR\(4),
	datac => \inst|reggy[0][10]~q\,
	datad => \inst|reggy[1][10]~q\,
	combout => \inst|Mux13~0_combout\);

-- Location: FF_X16_Y10_N21
\inst|REG_A[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Mux13~0_combout\,
	ena => \inst|OP[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|REG_A\(10));

-- Location: LCCOMB_X21_Y9_N20
\inst|alu1|unidad_logica|aux[11]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|aux[11]~35_combout\ = (\inst|REG_A\(11) & (!\inst|alu1|unidad_logica|aux[10]~34\ & VCC)) # (!\inst|REG_A\(11) & (\inst|alu1|unidad_logica|aux[10]~34\ $ (GND)))
-- \inst|alu1|unidad_logica|aux[11]~36\ = CARRY((!\inst|REG_A\(11) & !\inst|alu1|unidad_logica|aux[10]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(11),
	datad => VCC,
	cin => \inst|alu1|unidad_logica|aux[10]~34\,
	combout => \inst|alu1|unidad_logica|aux[11]~35_combout\,
	cout => \inst|alu1|unidad_logica|aux[11]~36\);

-- Location: LCCOMB_X21_Y9_N22
\inst|alu1|unidad_logica|aux[12]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|aux[12]~38_combout\ = (\inst|REG_A\(12) & ((\inst|alu1|unidad_logica|aux[11]~36\) # (GND))) # (!\inst|REG_A\(12) & (!\inst|alu1|unidad_logica|aux[11]~36\))
-- \inst|alu1|unidad_logica|aux[12]~39\ = CARRY((\inst|REG_A\(12)) # (!\inst|alu1|unidad_logica|aux[11]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(12),
	datad => VCC,
	cin => \inst|alu1|unidad_logica|aux[11]~36\,
	combout => \inst|alu1|unidad_logica|aux[12]~38_combout\,
	cout => \inst|alu1|unidad_logica|aux[12]~39\);

-- Location: FF_X21_Y9_N23
\inst|alu1|unidad_logica|aux[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|alu1|unidad_logica|aux[12]~38_combout\,
	ena => \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|unidad_logica|aux\(12));

-- Location: LCCOMB_X19_Y10_N26
\inst|alu1|unidad_logica|salida_aux~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|salida_aux~41_combout\ = (\inst|alu1|unidad_logica|salida_aux~40_combout\ & ((\inst|alu1|unidad_logica|salida_aux~34_combout\) # ((!\inst|alu1|unidad_logica|salida_aux[14]~44_combout\)))) # 
-- (!\inst|alu1|unidad_logica|salida_aux~40_combout\ & (((\inst|alu1|unidad_logica|aux\(12) & \inst|alu1|unidad_logica|salida_aux[14]~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_logica|salida_aux~34_combout\,
	datab => \inst|alu1|unidad_logica|salida_aux~40_combout\,
	datac => \inst|alu1|unidad_logica|aux\(12),
	datad => \inst|alu1|unidad_logica|salida_aux[14]~44_combout\,
	combout => \inst|alu1|unidad_logica|salida_aux~41_combout\);

-- Location: FF_X19_Y10_N27
\inst|alu1|unidad_logica|salida_aux[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|alu1|unidad_logica|salida_aux~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|unidad_logica|salida_aux\(12));

-- Location: LCCOMB_X19_Y10_N14
\inst|alu1|barrel_shifters|aux[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|barrel_shifters|aux[12]~feeder_combout\ = \inst|REG_A\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|REG_A\(11),
	combout => \inst|alu1|barrel_shifters|aux[12]~feeder_combout\);

-- Location: FF_X19_Y10_N15
\inst|alu1|barrel_shifters|aux[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|alu1|barrel_shifters|aux[12]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|barrel_shifters|aux\(12));

-- Location: FF_X19_Y10_N5
\inst|alu1|barrel_shifters|salShifters[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|alu1|barrel_shifters|aux\(12),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|barrel_shifters|salShifters\(12));

-- Location: LCCOMB_X19_Y10_N4
\inst|reggy~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~51_combout\ = (\inst|alu1|Mux2~2_combout\ & (\inst|alu1|unidad_logica|salida_aux\(12))) # (!\inst|alu1|Mux2~2_combout\ & (((\inst|alu1|barrel_shifters|salShifters\(12) & \inst|OP\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_logica|salida_aux\(12),
	datab => \inst|alu1|Mux2~2_combout\,
	datac => \inst|alu1|barrel_shifters|salShifters\(12),
	datad => \inst|OP\(2),
	combout => \inst|reggy~51_combout\);

-- Location: LCCOMB_X19_Y10_N28
\inst|reggy~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~52_combout\ = (\inst|OP\(3) & ((\inst|OP\(2)))) # (!\inst|OP\(3) & (\inst|reggy~51_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|OP\(3),
	datac => \inst|reggy~51_combout\,
	datad => \inst|OP\(2),
	combout => \inst|reggy~52_combout\);

-- Location: LCCOMB_X16_Y10_N8
\inst|alu1|unidad_aritmetica|resta|sR:10:sP|Cout2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|resta|sR:10:sP|Cout2~4_combout\ = (!\inst|alu1|unidad_aritmetica|suma|Yop~10_combout\ & (\inst|alu1|unidad_aritmetica|resta|sR:9:sP|Cout2~4_combout\ & (\inst|REG_A\(10) $ (\inst|REG_A\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|suma|Yop~10_combout\,
	datab => \inst|REG_A\(10),
	datac => \inst|REG_A\(15),
	datad => \inst|alu1|unidad_aritmetica|resta|sR:9:sP|Cout2~4_combout\,
	combout => \inst|alu1|unidad_aritmetica|resta|sR:10:sP|Cout2~4_combout\);

-- Location: LCCOMB_X16_Y10_N12
\inst|alu1|unidad_aritmetica|resta|sR:10:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|resta|sR:10:sP|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|resta|sR:9:sP|Cout2~4_combout\) # ((\inst|alu1|unidad_aritmetica|suma|Yop~10_combout\ & (\inst|alu1|unidad_aritmetica|suma|Xop\(10) & 
-- \inst|alu1|unidad_aritmetica|resta|sR:9:sP|Cout~0_combout\)) # (!\inst|alu1|unidad_aritmetica|suma|Yop~10_combout\ & ((\inst|alu1|unidad_aritmetica|suma|Xop\(10)) # (\inst|alu1|unidad_aritmetica|resta|sR:9:sP|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|suma|Yop~10_combout\,
	datab => \inst|alu1|unidad_aritmetica|suma|Xop\(10),
	datac => \inst|alu1|unidad_aritmetica|resta|sR:9:sP|Cout~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|resta|sR:9:sP|Cout2~4_combout\,
	combout => \inst|alu1|unidad_aritmetica|resta|sR:10:sP|Cout~0_combout\);

-- Location: LCCOMB_X14_Y10_N16
\inst|alu1|unidad_aritmetica|resta|sR:11:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|resta|sR:11:sP|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|resta|sR:10:sP|Cout2~4_combout\) # ((\inst|alu1|unidad_aritmetica|suma|Xop\(11) & ((\inst|alu1|unidad_aritmetica|resta|sR:10:sP|Cout~0_combout\) # 
-- (!\inst|alu1|unidad_aritmetica|suma|Yop~0_combout\))) # (!\inst|alu1|unidad_aritmetica|suma|Xop\(11) & (!\inst|alu1|unidad_aritmetica|suma|Yop~0_combout\ & \inst|alu1|unidad_aritmetica|resta|sR:10:sP|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|suma|Xop\(11),
	datab => \inst|alu1|unidad_aritmetica|suma|Yop~0_combout\,
	datac => \inst|alu1|unidad_aritmetica|resta|sR:10:sP|Cout2~4_combout\,
	datad => \inst|alu1|unidad_aritmetica|resta|sR:10:sP|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|resta|sR:11:sP|Cout~0_combout\);

-- Location: LCCOMB_X16_Y10_N22
\inst|alu1|unidad_aritmetica|resta|sR:11:sP|Cout2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|resta|sR:11:sP|Cout2~4_combout\ = (!\inst|alu1|unidad_aritmetica|suma|Yop~0_combout\ & (\inst|alu1|unidad_aritmetica|resta|sR:10:sP|Cout2~4_combout\ & (\inst|REG_A\(15) $ (\inst|REG_A\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(15),
	datab => \inst|alu1|unidad_aritmetica|suma|Yop~0_combout\,
	datac => \inst|alu1|unidad_aritmetica|resta|sR:10:sP|Cout2~4_combout\,
	datad => \inst|REG_A\(11),
	combout => \inst|alu1|unidad_aritmetica|resta|sR:11:sP|Cout2~4_combout\);

-- Location: LCCOMB_X14_Y10_N24
\inst|alu1|unidad_aritmetica|resta|sR:12:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|resta|sR:12:sP|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|suma|Xop\(12) $ (\inst|alu1|unidad_aritmetica|suma|Yop~11_combout\ $ (\inst|alu1|unidad_aritmetica|resta|sR:11:sP|Cout~0_combout\ $ 
-- (\inst|alu1|unidad_aritmetica|resta|sR:11:sP|Cout2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|suma|Xop\(12),
	datab => \inst|alu1|unidad_aritmetica|suma|Yop~11_combout\,
	datac => \inst|alu1|unidad_aritmetica|resta|sR:11:sP|Cout~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|resta|sR:11:sP|Cout2~4_combout\,
	combout => \inst|alu1|unidad_aritmetica|resta|sR:12:sP|Suma~0_combout\);

-- Location: LCCOMB_X14_Y10_N26
\inst|alu1|unidad_aritmetica|suma|sR:12:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|sR:12:sP|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|suma|Xop\(12) $ (\inst|alu1|unidad_aritmetica|suma|Yop~11_combout\ $ (\inst|alu1|unidad_aritmetica|suma|sR:11:sP|Cout2~0_combout\ $ 
-- (\inst|alu1|unidad_aritmetica|suma|sR:11:sP|Cout~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|suma|Xop\(12),
	datab => \inst|alu1|unidad_aritmetica|suma|Yop~11_combout\,
	datac => \inst|alu1|unidad_aritmetica|suma|sR:11:sP|Cout2~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|suma|sR:11:sP|Cout~1_combout\,
	combout => \inst|alu1|unidad_aritmetica|suma|sR:12:sP|Suma~0_combout\);

-- Location: LCCOMB_X18_Y10_N14
\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~53_combout\ = (\inst|alu1|Mux16~0_combout\ & ((\inst|alu1|Mux17~0_combout\ & (\inst|alu1|unidad_aritmetica|resta|sR:12:sP|Suma~0_combout\)) # (!\inst|alu1|Mux17~0_combout\ & 
-- ((!\inst|alu1|unidad_aritmetica|suma|sR:12:sP|Suma~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|resta|sR:12:sP|Suma~0_combout\,
	datab => \inst|alu1|Mux16~0_combout\,
	datac => \inst|alu1|Mux17~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|suma|sR:12:sP|Suma~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~53_combout\);

-- Location: LCCOMB_X11_Y10_N4
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

-- Location: LCCOMB_X18_Y10_N20
\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~54_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~53_combout\) # ((!\inst|alu1|Mux16~0_combout\ & !\inst|alu1|unidad_aritmetica|mult|multi7|sR:12:sP|Suma~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|Mux16~0_combout\,
	datac => \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~53_combout\,
	datad => \inst|alu1|unidad_aritmetica|mult|multi7|sR:12:sP|Suma~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~54_combout\);

-- Location: LCCOMB_X11_Y11_N16
\inst|alu1|unidad_aritmetica|mult|multi7|sR:11:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi7|sR:11:sP|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|mult|multi6|sR:11:sP|Suma~0_combout\ $ (\inst|alu1|unidad_aritmetica|mult|multi7|sR:10:sP|Cout~0_combout\ $ (((\inst|REG_B\(7) & \inst|REG_A\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(7),
	datab => \inst|REG_A\(4),
	datac => \inst|alu1|unidad_aritmetica|mult|multi6|sR:11:sP|Suma~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|mult|multi7|sR:10:sP|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi7|sR:11:sP|Suma~0_combout\);

-- Location: LCCOMB_X14_Y10_N30
\inst|alu1|unidad_aritmetica|suma|sR:11:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|sR:11:sP|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|suma|sR:10:sP|Cout2~0_combout\ $ (\inst|alu1|unidad_aritmetica|suma|Yop~0_combout\ $ (\inst|alu1|unidad_aritmetica|suma|Xop\(11) $ 
-- (\inst|alu1|unidad_aritmetica|suma|sR:10:sP|Cout~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|suma|sR:10:sP|Cout2~0_combout\,
	datab => \inst|alu1|unidad_aritmetica|suma|Yop~0_combout\,
	datac => \inst|alu1|unidad_aritmetica|suma|Xop\(11),
	datad => \inst|alu1|unidad_aritmetica|suma|sR:10:sP|Cout~1_combout\,
	combout => \inst|alu1|unidad_aritmetica|suma|sR:11:sP|Suma~0_combout\);

-- Location: LCCOMB_X16_Y10_N6
\inst|alu1|unidad_aritmetica|resta|sR:11:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|resta|sR:11:sP|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|suma|Xop\(11) $ (\inst|alu1|unidad_aritmetica|resta|sR:10:sP|Cout2~4_combout\ $ (\inst|alu1|unidad_aritmetica|suma|Yop~0_combout\ $ 
-- (\inst|alu1|unidad_aritmetica|resta|sR:10:sP|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|suma|Xop\(11),
	datab => \inst|alu1|unidad_aritmetica|resta|sR:10:sP|Cout2~4_combout\,
	datac => \inst|alu1|unidad_aritmetica|suma|Yop~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|resta|sR:10:sP|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|resta|sR:11:sP|Suma~0_combout\);

-- Location: LCCOMB_X18_Y8_N16
\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~4_combout\ = (\inst|alu1|Mux16~0_combout\ & ((\inst|alu1|Mux17~0_combout\ & ((\inst|alu1|unidad_aritmetica|resta|sR:11:sP|Suma~0_combout\))) # (!\inst|alu1|Mux17~0_combout\ & 
-- (!\inst|alu1|unidad_aritmetica|suma|sR:11:sP|Suma~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux16~0_combout\,
	datab => \inst|alu1|Mux17~0_combout\,
	datac => \inst|alu1|unidad_aritmetica|suma|sR:11:sP|Suma~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|resta|sR:11:sP|Suma~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~4_combout\);

-- Location: LCCOMB_X18_Y8_N10
\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~5_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~4_combout\) # ((!\inst|alu1|Mux16~0_combout\ & !\inst|alu1|unidad_aritmetica|mult|multi7|sR:11:sP|Suma~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux16~0_combout\,
	datac => \inst|alu1|unidad_aritmetica|mult|multi7|sR:11:sP|Suma~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~4_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~5_combout\);

-- Location: LCCOMB_X17_Y8_N24
\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~49_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~5_combout\ & (!\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~48\)) # 
-- (!\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~5_combout\ & ((\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~48\) # (GND)))
-- \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~50\ = CARRY((!\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~48\) # (!\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~5_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~48\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~49_combout\,
	cout => \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~50\);

-- Location: LCCOMB_X17_Y8_N26
\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~55_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~54_combout\ & (\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~50\ $ (GND))) # 
-- (!\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~54_combout\ & (!\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~50\ & VCC))
-- \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~56\ = CARRY((\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~54_combout\ & !\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~54_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~50\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~55_combout\,
	cout => \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~56\);

-- Location: LCCOMB_X18_Y10_N28
\inst|alu1|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux3~0_combout\ = (\inst|alu1|Mux2~10_combout\ & ((\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~55_combout\) # ((!\inst|alu1|Mux2~6_combout\)))) # (!\inst|alu1|Mux2~10_combout\ & 
-- (((\inst|alu1|unidad_aritmetica|mult|multi7|sR:12:sP|Suma~0_combout\ & \inst|alu1|Mux2~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux2~10_combout\,
	datab => \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~55_combout\,
	datac => \inst|alu1|unidad_aritmetica|mult|multi7|sR:12:sP|Suma~0_combout\,
	datad => \inst|alu1|Mux2~6_combout\,
	combout => \inst|alu1|Mux3~0_combout\);

-- Location: LCCOMB_X18_Y10_N22
\inst|alu1|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux3~1_combout\ = (\inst|alu1|Mux2~5_combout\ & ((\inst|alu1|Mux3~0_combout\ & (!\inst|alu1|unidad_aritmetica|resta|sR:12:sP|Suma~0_combout\)) # (!\inst|alu1|Mux3~0_combout\ & ((\inst|alu1|unidad_aritmetica|suma|sR:12:sP|Suma~0_combout\))))) # 
-- (!\inst|alu1|Mux2~5_combout\ & (((\inst|alu1|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|resta|sR:12:sP|Suma~0_combout\,
	datab => \inst|alu1|unidad_aritmetica|suma|sR:12:sP|Suma~0_combout\,
	datac => \inst|alu1|Mux2~5_combout\,
	datad => \inst|alu1|Mux3~0_combout\,
	combout => \inst|alu1|Mux3~1_combout\);

-- Location: LCCOMB_X22_Y10_N2
\inst|reggy~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~44_combout\ = (!\inst|Equal9~0_combout\ & (\inst|alu1|Mux2~3_combout\ & ((\inst|MAR\(9)) # (!\inst|Equal5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal9~0_combout\,
	datab => \inst|Equal5~0_combout\,
	datac => \inst|alu1|Mux2~3_combout\,
	datad => \inst|MAR\(9),
	combout => \inst|reggy~44_combout\);

-- Location: LCCOMB_X18_Y10_N24
\inst|reggy~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~50_combout\ = (\inst|alu1|Mux3~1_combout\ & ((\inst|reggy~44_combout\) # ((\inst|alu1|unidad_logica|salida_aux~34_combout\ & \inst|Equal9~0_combout\)))) # (!\inst|alu1|Mux3~1_combout\ & (\inst|alu1|unidad_logica|salida_aux~34_combout\ & 
-- ((\inst|Equal9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux3~1_combout\,
	datab => \inst|alu1|unidad_logica|salida_aux~34_combout\,
	datac => \inst|reggy~44_combout\,
	datad => \inst|Equal9~0_combout\,
	combout => \inst|reggy~50_combout\);

-- Location: LCCOMB_X18_Y10_N4
\inst|reggy~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~53_combout\ = (\inst|reggy~50_combout\) # ((\inst|reggy~9_combout\ & (\inst|reggy~52_combout\ & !\inst|alu1|Mux2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy~9_combout\,
	datab => \inst|reggy~52_combout\,
	datac => \inst|alu1|Mux2~3_combout\,
	datad => \inst|reggy~50_combout\,
	combout => \inst|reggy~53_combout\);

-- Location: FF_X18_Y10_N5
\inst|reggy[0][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|reggy~53_combout\,
	ena => \inst|reggy[0][11]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy[0][12]~q\);

-- Location: LCCOMB_X14_Y14_N30
\inst|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux11~0_combout\ = (\inst|MAR\(4) & ((\inst|reggy[1][12]~q\))) # (!\inst|MAR\(4) & (\inst|reggy[0][12]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MAR\(4),
	datac => \inst|reggy[0][12]~q\,
	datad => \inst|reggy[1][12]~q\,
	combout => \inst|Mux11~0_combout\);

-- Location: FF_X14_Y14_N31
\inst|REG_A[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Mux11~0_combout\,
	ena => \inst|OP[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|REG_A\(12));

-- Location: FF_X19_Y10_N23
\inst|alu1|barrel_shifters|aux[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|REG_A\(12),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|barrel_shifters|aux\(13));

-- Location: FF_X19_Y10_N21
\inst|alu1|barrel_shifters|salShifters[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|alu1|barrel_shifters|aux\(13),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|barrel_shifters|salShifters\(13));

-- Location: LCCOMB_X19_Y10_N16
\inst|reggy~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~45_combout\ = (\inst|REG_A\(13) & \inst|REG_B\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|REG_A\(13),
	datad => \inst|REG_B\(13),
	combout => \inst|reggy~45_combout\);

-- Location: LCCOMB_X21_Y9_N24
\inst|alu1|unidad_logica|aux[13]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|aux[13]~40_combout\ = (\inst|REG_A\(13) & (!\inst|alu1|unidad_logica|aux[12]~39\ & VCC)) # (!\inst|REG_A\(13) & (\inst|alu1|unidad_logica|aux[12]~39\ $ (GND)))
-- \inst|alu1|unidad_logica|aux[13]~41\ = CARRY((!\inst|REG_A\(13) & !\inst|alu1|unidad_logica|aux[12]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(13),
	datad => VCC,
	cin => \inst|alu1|unidad_logica|aux[12]~39\,
	combout => \inst|alu1|unidad_logica|aux[13]~40_combout\,
	cout => \inst|alu1|unidad_logica|aux[13]~41\);

-- Location: FF_X21_Y9_N25
\inst|alu1|unidad_logica|aux[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|alu1|unidad_logica|aux[13]~40_combout\,
	ena => \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|unidad_logica|aux\(13));

-- Location: LCCOMB_X19_Y10_N6
\inst|alu1|unidad_logica|salida_aux~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|salida_aux~38_combout\ = (\inst|REG_A\(13) & (\inst|alu1|Mux16~0_combout\)) # (!\inst|REG_A\(13) & (((\inst|alu1|Mux16~0_combout\ & \inst|REG_B\(13))) # (!\inst|alu1|Mux17~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux16~0_combout\,
	datab => \inst|REG_B\(13),
	datac => \inst|REG_A\(13),
	datad => \inst|alu1|Mux17~0_combout\,
	combout => \inst|alu1|unidad_logica|salida_aux~38_combout\);

-- Location: LCCOMB_X19_Y10_N24
\inst|alu1|unidad_logica|salida_aux~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|salida_aux~39_combout\ = (\inst|alu1|unidad_logica|salida_aux[14]~44_combout\ & ((\inst|alu1|unidad_logica|salida_aux~38_combout\ & (\inst|reggy~45_combout\)) # (!\inst|alu1|unidad_logica|salida_aux~38_combout\ & 
-- ((\inst|alu1|unidad_logica|aux\(13)))))) # (!\inst|alu1|unidad_logica|salida_aux[14]~44_combout\ & (((\inst|alu1|unidad_logica|salida_aux~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_logica|salida_aux[14]~44_combout\,
	datab => \inst|reggy~45_combout\,
	datac => \inst|alu1|unidad_logica|aux\(13),
	datad => \inst|alu1|unidad_logica|salida_aux~38_combout\,
	combout => \inst|alu1|unidad_logica|salida_aux~39_combout\);

-- Location: FF_X19_Y10_N25
\inst|alu1|unidad_logica|salida_aux[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|alu1|unidad_logica|salida_aux~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|unidad_logica|salida_aux\(13));

-- Location: LCCOMB_X19_Y10_N20
\inst|reggy~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~47_combout\ = (\inst|alu1|Mux2~2_combout\ & (((\inst|alu1|unidad_logica|salida_aux\(13))))) # (!\inst|alu1|Mux2~2_combout\ & (\inst|OP\(2) & (\inst|alu1|barrel_shifters|salShifters\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|OP\(2),
	datab => \inst|alu1|Mux2~2_combout\,
	datac => \inst|alu1|barrel_shifters|salShifters\(13),
	datad => \inst|alu1|unidad_logica|salida_aux\(13),
	combout => \inst|reggy~47_combout\);

-- Location: LCCOMB_X19_Y10_N0
\inst|reggy~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~48_combout\ = (\inst|OP\(3) & ((\inst|OP\(2)))) # (!\inst|OP\(3) & (\inst|reggy~47_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|reggy~47_combout\,
	datac => \inst|OP\(3),
	datad => \inst|OP\(2),
	combout => \inst|reggy~48_combout\);

-- Location: LCCOMB_X13_Y10_N28
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

-- Location: LCCOMB_X13_Y10_N22
\inst|alu1|unidad_aritmetica|suma|sR:13:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|sR:13:sP|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|suma|sR:12:sP|Cout2~0_combout\ $ (\inst|alu1|unidad_aritmetica|suma|Yop~12_combout\ $ (\inst|alu1|unidad_aritmetica|suma|Xop\(13) $ 
-- (\inst|alu1|unidad_aritmetica|suma|sR:12:sP|Cout~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|suma|sR:12:sP|Cout2~0_combout\,
	datab => \inst|alu1|unidad_aritmetica|suma|Yop~12_combout\,
	datac => \inst|alu1|unidad_aritmetica|suma|Xop\(13),
	datad => \inst|alu1|unidad_aritmetica|suma|sR:12:sP|Cout~1_combout\,
	combout => \inst|alu1|unidad_aritmetica|suma|sR:13:sP|Suma~0_combout\);

-- Location: LCCOMB_X13_Y10_N26
\inst|alu1|unidad_aritmetica|resta|sR:12:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|resta|sR:12:sP|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|resta|sR:11:sP|Cout2~4_combout\) # ((\inst|alu1|unidad_aritmetica|suma|Yop~11_combout\ & (\inst|alu1|unidad_aritmetica|suma|Xop\(12) & 
-- \inst|alu1|unidad_aritmetica|resta|sR:11:sP|Cout~0_combout\)) # (!\inst|alu1|unidad_aritmetica|suma|Yop~11_combout\ & ((\inst|alu1|unidad_aritmetica|suma|Xop\(12)) # (\inst|alu1|unidad_aritmetica|resta|sR:11:sP|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|resta|sR:11:sP|Cout2~4_combout\,
	datab => \inst|alu1|unidad_aritmetica|suma|Yop~11_combout\,
	datac => \inst|alu1|unidad_aritmetica|suma|Xop\(12),
	datad => \inst|alu1|unidad_aritmetica|resta|sR:11:sP|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|resta|sR:12:sP|Cout~0_combout\);

-- Location: LCCOMB_X13_Y10_N18
\inst|alu1|unidad_aritmetica|resta|sR:12:sP|Cout2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|resta|sR:12:sP|Cout2~4_combout\ = (\inst|alu1|unidad_aritmetica|resta|sR:11:sP|Cout2~4_combout\ & (!\inst|alu1|unidad_aritmetica|suma|Yop~11_combout\ & (\inst|REG_A\(15) $ (\inst|REG_A\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|resta|sR:11:sP|Cout2~4_combout\,
	datab => \inst|alu1|unidad_aritmetica|suma|Yop~11_combout\,
	datac => \inst|REG_A\(15),
	datad => \inst|REG_A\(12),
	combout => \inst|alu1|unidad_aritmetica|resta|sR:12:sP|Cout2~4_combout\);

-- Location: LCCOMB_X13_Y10_N12
\inst|alu1|unidad_aritmetica|resta|sR:13:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|resta|sR:13:sP|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|suma|Xop\(13) $ (\inst|alu1|unidad_aritmetica|suma|Yop~12_combout\ $ (\inst|alu1|unidad_aritmetica|resta|sR:12:sP|Cout~0_combout\ $ 
-- (\inst|alu1|unidad_aritmetica|resta|sR:12:sP|Cout2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|suma|Xop\(13),
	datab => \inst|alu1|unidad_aritmetica|suma|Yop~12_combout\,
	datac => \inst|alu1|unidad_aritmetica|resta|sR:12:sP|Cout~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|resta|sR:12:sP|Cout2~4_combout\,
	combout => \inst|alu1|unidad_aritmetica|resta|sR:13:sP|Suma~0_combout\);

-- Location: LCCOMB_X11_Y10_N14
\inst|alu1|unidad_aritmetica|mult|multi7|sR:13:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi7|sR:13:sP|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|mult|multi7|sR:12:sP|Cout~0_combout\ $ (\inst|alu1|unidad_aritmetica|mult|multi6|sR:13:sP|Suma~0_combout\ $ (((\inst|REG_B\(7) & \inst|REG_A\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(7),
	datab => \inst|REG_A\(6),
	datac => \inst|alu1|unidad_aritmetica|mult|multi7|sR:12:sP|Cout~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|mult|multi6|sR:13:sP|Suma~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi7|sR:13:sP|Suma~0_combout\);

-- Location: LCCOMB_X11_Y10_N28
\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~51_combout\ = (\inst|alu1|Mux16~0_combout\ & ((\inst|alu1|Mux17~0_combout\ & (\inst|alu1|unidad_aritmetica|resta|sR:13:sP|Suma~0_combout\)) # (!\inst|alu1|Mux17~0_combout\ & 
-- ((!\inst|alu1|unidad_aritmetica|suma|sR:13:sP|Suma~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|resta|sR:13:sP|Suma~0_combout\,
	datab => \inst|alu1|Mux16~0_combout\,
	datac => \inst|alu1|unidad_aritmetica|suma|sR:13:sP|Suma~0_combout\,
	datad => \inst|alu1|Mux17~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~51_combout\);

-- Location: LCCOMB_X11_Y10_N6
\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~52_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~51_combout\) # ((!\inst|alu1|Mux16~0_combout\ & !\inst|alu1|unidad_aritmetica|mult|multi7|sR:13:sP|Suma~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|Mux16~0_combout\,
	datac => \inst|alu1|unidad_aritmetica|mult|multi7|sR:13:sP|Suma~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~51_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~52_combout\);

-- Location: LCCOMB_X17_Y8_N28
\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~57_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~52_combout\ & (!\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~56\)) # 
-- (!\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~52_combout\ & ((\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~56\) # (GND)))
-- \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~58\ = CARRY((!\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~56\) # (!\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~52_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~52_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~56\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~57_combout\,
	cout => \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~58\);

-- Location: LCCOMB_X18_Y10_N10
\inst|alu1|Mux2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux2~8_combout\ = (\inst|alu1|Mux2~10_combout\ & (((\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~57_combout\) # (!\inst|alu1|Mux2~6_combout\)))) # (!\inst|alu1|Mux2~10_combout\ & 
-- (\inst|alu1|unidad_aritmetica|mult|multi7|sR:13:sP|Suma~0_combout\ & ((\inst|alu1|Mux2~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux2~10_combout\,
	datab => \inst|alu1|unidad_aritmetica|mult|multi7|sR:13:sP|Suma~0_combout\,
	datac => \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~57_combout\,
	datad => \inst|alu1|Mux2~6_combout\,
	combout => \inst|alu1|Mux2~8_combout\);

-- Location: LCCOMB_X18_Y10_N0
\inst|alu1|Mux2~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux2~9_combout\ = (\inst|alu1|Mux2~5_combout\ & ((\inst|alu1|Mux2~8_combout\ & ((!\inst|alu1|unidad_aritmetica|resta|sR:13:sP|Suma~0_combout\))) # (!\inst|alu1|Mux2~8_combout\ & (\inst|alu1|unidad_aritmetica|suma|sR:13:sP|Suma~0_combout\)))) # 
-- (!\inst|alu1|Mux2~5_combout\ & (((\inst|alu1|Mux2~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|suma|sR:13:sP|Suma~0_combout\,
	datab => \inst|alu1|unidad_aritmetica|resta|sR:13:sP|Suma~0_combout\,
	datac => \inst|alu1|Mux2~5_combout\,
	datad => \inst|alu1|Mux2~8_combout\,
	combout => \inst|alu1|Mux2~9_combout\);

-- Location: LCCOMB_X18_Y10_N18
\inst|reggy~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~46_combout\ = (\inst|Equal9~0_combout\ & ((\inst|reggy~45_combout\) # ((\inst|reggy~44_combout\ & \inst|alu1|Mux2~9_combout\)))) # (!\inst|Equal9~0_combout\ & (((\inst|reggy~44_combout\ & \inst|alu1|Mux2~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal9~0_combout\,
	datab => \inst|reggy~45_combout\,
	datac => \inst|reggy~44_combout\,
	datad => \inst|alu1|Mux2~9_combout\,
	combout => \inst|reggy~46_combout\);

-- Location: LCCOMB_X18_Y10_N26
\inst|reggy~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~49_combout\ = (\inst|reggy~46_combout\) # ((\inst|reggy~9_combout\ & (\inst|reggy~48_combout\ & !\inst|alu1|Mux2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy~9_combout\,
	datab => \inst|reggy~48_combout\,
	datac => \inst|alu1|Mux2~3_combout\,
	datad => \inst|reggy~46_combout\,
	combout => \inst|reggy~49_combout\);

-- Location: FF_X18_Y10_N27
\inst|reggy[0][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|reggy~49_combout\,
	ena => \inst|reggy[0][11]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy[0][13]~q\);

-- Location: LCCOMB_X19_Y10_N8
\inst|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux10~0_combout\ = (\inst|MAR\(4) & ((\inst|reggy[1][13]~q\))) # (!\inst|MAR\(4) & (\inst|reggy[0][13]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy[0][13]~q\,
	datab => \inst|MAR\(4),
	datac => \inst|reggy[1][13]~q\,
	combout => \inst|Mux10~0_combout\);

-- Location: FF_X19_Y10_N9
\inst|REG_A[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Mux10~0_combout\,
	ena => \inst|OP[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|REG_A\(13));

-- Location: FF_X17_Y10_N23
\inst|alu1|barrel_shifters|aux[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|REG_A\(13),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|barrel_shifters|aux\(14));

-- Location: FF_X17_Y10_N5
\inst|alu1|barrel_shifters|salShifters[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|alu1|barrel_shifters|aux\(14),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|barrel_shifters|salShifters\(14));

-- Location: LCCOMB_X21_Y9_N26
\inst|alu1|unidad_logica|aux[14]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|aux[14]~42_combout\ = (\inst|REG_A\(14) & ((\inst|alu1|unidad_logica|aux[13]~41\) # (GND))) # (!\inst|REG_A\(14) & (!\inst|alu1|unidad_logica|aux[13]~41\))
-- \inst|alu1|unidad_logica|aux[14]~43\ = CARRY((\inst|REG_A\(14)) # (!\inst|alu1|unidad_logica|aux[13]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|REG_A\(14),
	datad => VCC,
	cin => \inst|alu1|unidad_logica|aux[13]~41\,
	combout => \inst|alu1|unidad_logica|aux[14]~42_combout\,
	cout => \inst|alu1|unidad_logica|aux[14]~43\);

-- Location: FF_X21_Y9_N27
\inst|alu1|unidad_logica|aux[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|alu1|unidad_logica|aux[14]~42_combout\,
	ena => \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|unidad_logica|aux\(14));

-- Location: LCCOMB_X17_Y10_N30
\inst|alu1|unidad_logica|salida_aux~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|salida_aux~35_combout\ = (\inst|REG_A\(14) & \inst|REG_B\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|REG_A\(14),
	datad => \inst|REG_B\(14),
	combout => \inst|alu1|unidad_logica|salida_aux~35_combout\);

-- Location: LCCOMB_X17_Y10_N2
\inst|alu1|unidad_logica|salida_aux~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|salida_aux~42_combout\ = (\inst|REG_A\(14) & (((\inst|alu1|Mux16~0_combout\)))) # (!\inst|REG_A\(14) & (((\inst|alu1|Mux16~0_combout\ & \inst|REG_B\(14))) # (!\inst|alu1|Mux17~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux17~0_combout\,
	datab => \inst|alu1|Mux16~0_combout\,
	datac => \inst|REG_A\(14),
	datad => \inst|REG_B\(14),
	combout => \inst|alu1|unidad_logica|salida_aux~42_combout\);

-- Location: LCCOMB_X17_Y10_N12
\inst|alu1|unidad_logica|salida_aux~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|salida_aux~43_combout\ = (\inst|alu1|unidad_logica|salida_aux[14]~44_combout\ & ((\inst|alu1|unidad_logica|salida_aux~42_combout\ & ((\inst|alu1|unidad_logica|salida_aux~35_combout\))) # 
-- (!\inst|alu1|unidad_logica|salida_aux~42_combout\ & (\inst|alu1|unidad_logica|aux\(14))))) # (!\inst|alu1|unidad_logica|salida_aux[14]~44_combout\ & (((\inst|alu1|unidad_logica|salida_aux~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_logica|aux\(14),
	datab => \inst|alu1|unidad_logica|salida_aux[14]~44_combout\,
	datac => \inst|alu1|unidad_logica|salida_aux~35_combout\,
	datad => \inst|alu1|unidad_logica|salida_aux~42_combout\,
	combout => \inst|alu1|unidad_logica|salida_aux~43_combout\);

-- Location: FF_X17_Y10_N13
\inst|alu1|unidad_logica|salida_aux[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|alu1|unidad_logica|salida_aux~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|unidad_logica|salida_aux\(14));

-- Location: LCCOMB_X17_Y10_N4
\inst|reggy~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~55_combout\ = (\inst|alu1|Mux2~2_combout\ & (((\inst|alu1|unidad_logica|salida_aux\(14))))) # (!\inst|alu1|Mux2~2_combout\ & (\inst|OP\(2) & (\inst|alu1|barrel_shifters|salShifters\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|OP\(2),
	datab => \inst|alu1|Mux2~2_combout\,
	datac => \inst|alu1|barrel_shifters|salShifters\(14),
	datad => \inst|alu1|unidad_logica|salida_aux\(14),
	combout => \inst|reggy~55_combout\);

-- Location: LCCOMB_X17_Y10_N28
\inst|reggy~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~56_combout\ = (\inst|OP\(3) & ((\inst|OP\(2)))) # (!\inst|OP\(3) & (\inst|reggy~55_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|OP\(3),
	datac => \inst|reggy~55_combout\,
	datad => \inst|OP\(2),
	combout => \inst|reggy~56_combout\);

-- Location: LCCOMB_X11_Y10_N26
\inst|alu1|unidad_aritmetica|mult|multi7|sR:14:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi7|sR:14:sP|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|mult|multi6|sR:13:sP|Cout~0_combout\ $ (\inst|alu1|unidad_aritmetica|mult|multi7|sR:13:sP|Cout~0_combout\ $ (((\inst|REG_B\(7) & \inst|REG_A\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(7),
	datab => \inst|alu1|unidad_aritmetica|mult|multi6|sR:13:sP|Cout~0_combout\,
	datac => \inst|REG_A\(7),
	datad => \inst|alu1|unidad_aritmetica|mult|multi7|sR:13:sP|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi7|sR:14:sP|Suma~0_combout\);

-- Location: LCCOMB_X13_Y10_N4
\inst|alu1|unidad_aritmetica|resta|sR:13:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|resta|sR:13:sP|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|resta|sR:12:sP|Cout2~4_combout\) # ((\inst|alu1|unidad_aritmetica|suma|Xop\(13) & ((\inst|alu1|unidad_aritmetica|resta|sR:12:sP|Cout~0_combout\) # 
-- (!\inst|alu1|unidad_aritmetica|suma|Yop~12_combout\))) # (!\inst|alu1|unidad_aritmetica|suma|Xop\(13) & (!\inst|alu1|unidad_aritmetica|suma|Yop~12_combout\ & \inst|alu1|unidad_aritmetica|resta|sR:12:sP|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|suma|Xop\(13),
	datab => \inst|alu1|unidad_aritmetica|suma|Yop~12_combout\,
	datac => \inst|alu1|unidad_aritmetica|resta|sR:12:sP|Cout~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|resta|sR:12:sP|Cout2~4_combout\,
	combout => \inst|alu1|unidad_aritmetica|resta|sR:13:sP|Cout~0_combout\);

-- Location: LCCOMB_X17_Y10_N22
\inst|alu1|unidad_aritmetica|suma|Yop~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|Yop~13_combout\ = \inst|REG_B\(15) $ (\inst|REG_B\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|REG_B\(15),
	datad => \inst|REG_B\(14),
	combout => \inst|alu1|unidad_aritmetica|suma|Yop~13_combout\);

-- Location: LCCOMB_X13_Y10_N16
\inst|alu1|unidad_aritmetica|resta|sR:13:sP|Cout2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|resta|sR:13:sP|Cout2~4_combout\ = (!\inst|alu1|unidad_aritmetica|suma|Yop~12_combout\ & (\inst|alu1|unidad_aritmetica|resta|sR:12:sP|Cout2~4_combout\ & (\inst|REG_A\(13) $ (\inst|REG_A\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(13),
	datab => \inst|alu1|unidad_aritmetica|suma|Yop~12_combout\,
	datac => \inst|REG_A\(15),
	datad => \inst|alu1|unidad_aritmetica|resta|sR:12:sP|Cout2~4_combout\,
	combout => \inst|alu1|unidad_aritmetica|resta|sR:13:sP|Cout2~4_combout\);

-- Location: LCCOMB_X17_Y10_N0
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

-- Location: LCCOMB_X13_Y10_N6
\inst|alu1|unidad_aritmetica|suma|sR:14:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|sR:14:sP|Suma~0_combout\ = \inst|REG_B\(15) $ (\inst|REG_B\(14) $ (\inst|REG_A\(15) $ (\inst|REG_A\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(15),
	datab => \inst|REG_B\(14),
	datac => \inst|REG_A\(15),
	datad => \inst|REG_A\(14),
	combout => \inst|alu1|unidad_aritmetica|suma|sR:14:sP|Suma~0_combout\);

-- Location: LCCOMB_X13_Y10_N24
\inst|alu1|unidad_aritmetica|suma|sR:14:sP|Suma~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|sR:14:sP|Suma~1_combout\ = \inst|alu1|unidad_aritmetica|suma|sR:13:sP|Cout2~4_combout\ $ (\inst|alu1|unidad_aritmetica|suma|sR:14:sP|Suma~0_combout\ $ (((\inst|alu1|unidad_aritmetica|suma|sR:13:sP|Cout~0_combout\) # 
-- (\inst|alu1|unidad_aritmetica|suma|sR:12:sP|Cout2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|suma|sR:13:sP|Cout2~4_combout\,
	datab => \inst|alu1|unidad_aritmetica|suma|sR:14:sP|Suma~0_combout\,
	datac => \inst|alu1|unidad_aritmetica|suma|sR:13:sP|Cout~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|suma|sR:12:sP|Cout2~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|suma|sR:14:sP|Suma~1_combout\);

-- Location: LCCOMB_X17_Y10_N10
\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~59_combout\ = (\inst|alu1|Mux16~0_combout\ & ((\inst|alu1|Mux17~0_combout\ & (\inst|alu1|unidad_aritmetica|resta|sR:14:sP|Suma~0_combout\)) # (!\inst|alu1|Mux17~0_combout\ & 
-- ((!\inst|alu1|unidad_aritmetica|suma|sR:14:sP|Suma~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux17~0_combout\,
	datab => \inst|alu1|unidad_aritmetica|resta|sR:14:sP|Suma~0_combout\,
	datac => \inst|alu1|unidad_aritmetica|suma|sR:14:sP|Suma~1_combout\,
	datad => \inst|alu1|Mux16~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~59_combout\);

-- Location: LCCOMB_X17_Y10_N6
\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~60_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~59_combout\) # ((!\inst|alu1|Mux16~0_combout\ & !\inst|alu1|unidad_aritmetica|mult|multi7|sR:14:sP|Suma~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|Mux16~0_combout\,
	datac => \inst|alu1|unidad_aritmetica|mult|multi7|sR:14:sP|Suma~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~59_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~60_combout\);

-- Location: LCCOMB_X17_Y8_N30
\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~61_combout\ = \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~58\ $ (!\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~60_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~60_combout\,
	cin => \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~58\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~61_combout\);

-- Location: LCCOMB_X17_Y10_N26
\inst|alu1|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux1~0_combout\ = (\inst|alu1|Mux2~6_combout\ & ((\inst|alu1|Mux2~10_combout\ & ((\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~61_combout\))) # (!\inst|alu1|Mux2~10_combout\ & 
-- (\inst|alu1|unidad_aritmetica|mult|multi7|sR:14:sP|Suma~0_combout\)))) # (!\inst|alu1|Mux2~6_combout\ & (((\inst|alu1|Mux2~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux2~6_combout\,
	datab => \inst|alu1|unidad_aritmetica|mult|multi7|sR:14:sP|Suma~0_combout\,
	datac => \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~61_combout\,
	datad => \inst|alu1|Mux2~10_combout\,
	combout => \inst|alu1|Mux1~0_combout\);

-- Location: LCCOMB_X17_Y10_N16
\inst|alu1|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux1~1_combout\ = (\inst|alu1|Mux1~0_combout\ & (((!\inst|alu1|Mux2~5_combout\)) # (!\inst|alu1|unidad_aritmetica|resta|sR:14:sP|Suma~0_combout\))) # (!\inst|alu1|Mux1~0_combout\ & (((\inst|alu1|unidad_aritmetica|suma|sR:14:sP|Suma~1_combout\ & 
-- \inst|alu1|Mux2~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux1~0_combout\,
	datab => \inst|alu1|unidad_aritmetica|resta|sR:14:sP|Suma~0_combout\,
	datac => \inst|alu1|unidad_aritmetica|suma|sR:14:sP|Suma~1_combout\,
	datad => \inst|alu1|Mux2~5_combout\,
	combout => \inst|alu1|Mux1~1_combout\);

-- Location: LCCOMB_X17_Y10_N24
\inst|reggy~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~54_combout\ = (\inst|reggy~44_combout\ & ((\inst|alu1|Mux1~1_combout\) # ((\inst|alu1|unidad_logica|salida_aux~35_combout\ & \inst|Equal9~0_combout\)))) # (!\inst|reggy~44_combout\ & (\inst|alu1|unidad_logica|salida_aux~35_combout\ & 
-- (\inst|Equal9~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy~44_combout\,
	datab => \inst|alu1|unidad_logica|salida_aux~35_combout\,
	datac => \inst|Equal9~0_combout\,
	datad => \inst|alu1|Mux1~1_combout\,
	combout => \inst|reggy~54_combout\);

-- Location: LCCOMB_X17_Y10_N18
\inst|reggy~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~57_combout\ = (\inst|reggy~54_combout\) # ((!\inst|alu1|Mux2~3_combout\ & (\inst|reggy~56_combout\ & \inst|reggy~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux2~3_combout\,
	datab => \inst|reggy~56_combout\,
	datac => \inst|reggy~9_combout\,
	datad => \inst|reggy~54_combout\,
	combout => \inst|reggy~57_combout\);

-- Location: FF_X17_Y10_N19
\inst|reggy[0][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|reggy~57_combout\,
	ena => \inst|reggy[0][11]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy[0][14]~q\);

-- Location: LCCOMB_X14_Y14_N16
\inst|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux9~0_combout\ = (\inst|MAR\(4) & ((\inst|reggy[1][14]~q\))) # (!\inst|MAR\(4) & (\inst|reggy[0][14]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy[0][14]~q\,
	datab => \inst|reggy[1][14]~q\,
	datac => \inst|MAR\(4),
	combout => \inst|Mux9~0_combout\);

-- Location: FF_X14_Y14_N17
\inst|REG_A[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Mux9~0_combout\,
	ena => \inst|OP[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|REG_A\(14));

-- Location: FF_X22_Y9_N15
\inst|alu1|barrel_shifters|aux[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|REG_A\(14),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|barrel_shifters|aux\(15));

-- Location: FF_X22_Y9_N21
\inst|alu1|barrel_shifters|salShifters[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|alu1|barrel_shifters|aux\(15),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|barrel_shifters|salShifters\(15));

-- Location: LCCOMB_X22_Y9_N20
\inst|alu1|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux0~1_combout\ = (\inst|OP\(2) & (\inst|alu1|barrel_shifters|salShifters\(15) & (\inst|OP\(0) $ (\inst|OP\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|OP\(2),
	datab => \inst|OP\(0),
	datac => \inst|alu1|barrel_shifters|salShifters\(15),
	datad => \inst|OP\(1),
	combout => \inst|alu1|Mux0~1_combout\);

-- Location: LCCOMB_X22_Y10_N24
\inst|alu1|unidad_logica|salida_aux~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|salida_aux~36_combout\ = (\inst|REG_A\(15) & (((\inst|alu1|Mux16~0_combout\)))) # (!\inst|REG_A\(15) & (((\inst|REG_B\(15) & \inst|alu1|Mux16~0_combout\)) # (!\inst|alu1|Mux17~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux17~0_combout\,
	datab => \inst|REG_B\(15),
	datac => \inst|REG_A\(15),
	datad => \inst|alu1|Mux16~0_combout\,
	combout => \inst|alu1|unidad_logica|salida_aux~36_combout\);

-- Location: LCCOMB_X21_Y9_N28
\inst|alu1|unidad_logica|aux[15]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|aux[15]~44_combout\ = \inst|REG_A\(15) $ (\inst|alu1|unidad_logica|aux[14]~43\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|REG_A\(15),
	cin => \inst|alu1|unidad_logica|aux[14]~43\,
	combout => \inst|alu1|unidad_logica|aux[15]~44_combout\);

-- Location: FF_X21_Y9_N29
\inst|alu1|unidad_logica|aux[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|alu1|unidad_logica|aux[15]~44_combout\,
	ena => \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|unidad_logica|aux\(15));

-- Location: LCCOMB_X22_Y9_N18
\inst|alu1|unidad_logica|salida_aux~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|salida_aux~37_combout\ = (\inst|alu1|unidad_logica|salida_aux~36_combout\ & ((\inst|alu1|unidad_aritmetica|suma|s0|Cout~1_combout\) # ((!\inst|alu1|unidad_logica|salida_aux[14]~44_combout\)))) # 
-- (!\inst|alu1|unidad_logica|salida_aux~36_combout\ & (((\inst|alu1|unidad_logica|salida_aux[14]~44_combout\ & \inst|alu1|unidad_logica|aux\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_logica|salida_aux~36_combout\,
	datab => \inst|alu1|unidad_aritmetica|suma|s0|Cout~1_combout\,
	datac => \inst|alu1|unidad_logica|salida_aux[14]~44_combout\,
	datad => \inst|alu1|unidad_logica|aux\(15),
	combout => \inst|alu1|unidad_logica|salida_aux~37_combout\);

-- Location: FF_X22_Y9_N19
\inst|alu1|unidad_logica|salida_aux[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|alu1|unidad_logica|salida_aux~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|unidad_logica|salida_aux\(15));

-- Location: LCCOMB_X22_Y9_N10
\inst|alu1|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux0~0_combout\ = (\inst|alu1|unidad_logica|salida_aux\(15) & (\inst|OP\(2) $ (((\inst|OP\(0)) # (\inst|OP\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|OP\(2),
	datab => \inst|OP\(0),
	datac => \inst|OP\(1),
	datad => \inst|alu1|unidad_logica|salida_aux\(15),
	combout => \inst|alu1|Mux0~0_combout\);

-- Location: LCCOMB_X22_Y9_N0
\inst|alu1|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux0~2_combout\ = (\inst|OP\(3) & (\inst|OP\(2))) # (!\inst|OP\(3) & (((\inst|alu1|Mux0~1_combout\) # (\inst|alu1|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|OP\(2),
	datab => \inst|alu1|Mux0~1_combout\,
	datac => \inst|OP\(3),
	datad => \inst|alu1|Mux0~0_combout\,
	combout => \inst|alu1|Mux0~2_combout\);

-- Location: LCCOMB_X22_Y10_N6
\inst|reggy~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~39_combout\ = (\inst|alu1|Mux0~2_combout\) # ((!\inst|alu1|Mux16~0_combout\ & (\inst|REG_B\(15) $ (\inst|REG_A\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux16~0_combout\,
	datab => \inst|REG_B\(15),
	datac => \inst|REG_A\(15),
	datad => \inst|alu1|Mux0~2_combout\,
	combout => \inst|reggy~39_combout\);

-- Location: LCCOMB_X22_Y9_N22
\inst|reggy[1][15]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy[1][15]~35_combout\ = (!\inst|MAR\(10) & (!\inst|MAR\(11) & (\inst|alu1|unidad_aritmetica|suma|s0|Cout~1_combout\ & \inst|MAR\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MAR\(10),
	datab => \inst|MAR\(11),
	datac => \inst|alu1|unidad_aritmetica|suma|s0|Cout~1_combout\,
	datad => \inst|MAR\(8),
	combout => \inst|reggy[1][15]~35_combout\);

-- Location: LCCOMB_X22_Y10_N0
\inst|reggy[0][15]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy[0][15]~36_combout\ = (\inst|MAR\(9) & ((\inst|reggy[1][15]~35_combout\) # ((\inst|Equal5~0_combout\ & \inst|alu1|Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MAR\(9),
	datab => \inst|Equal5~0_combout\,
	datac => \inst|reggy[1][15]~35_combout\,
	datad => \inst|alu1|Mux0~2_combout\,
	combout => \inst|reggy[0][15]~36_combout\);

-- Location: LCCOMB_X22_Y10_N8
\inst|reggy~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~38_combout\ = (\inst|alu1|Mux16~0_combout\ & ((\inst|alu1|Mux17~0_combout\ & ((!\inst|alu1|unidad_aritmetica|resta|Sfaux~0_combout\))) # (!\inst|alu1|Mux17~0_combout\ & (\inst|alu1|unidad_aritmetica|suma|Sfaux~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux17~0_combout\,
	datab => \inst|alu1|Mux16~0_combout\,
	datac => \inst|alu1|unidad_aritmetica|suma|Sfaux~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|resta|Sfaux~0_combout\,
	combout => \inst|reggy~38_combout\);

-- Location: LCCOMB_X22_Y10_N18
\inst|reggy[0][15]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy[0][15]~37_combout\ = (\inst|MAR\(10) & (!\inst|MAR\(11))) # (!\inst|MAR\(10) & ((\inst|MAR\(11)) # ((!\inst|MAR\(9)) # (!\inst|MAR\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MAR\(10),
	datab => \inst|MAR\(11),
	datac => \inst|MAR\(8),
	datad => \inst|MAR\(9),
	combout => \inst|reggy[0][15]~37_combout\);

-- Location: LCCOMB_X22_Y10_N4
\inst|reggy[1][15]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy[1][15]~40_combout\ = (\inst|reggy[0][15]~36_combout\) # ((\inst|reggy[0][15]~37_combout\ & ((\inst|reggy~39_combout\) # (\inst|reggy~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy~39_combout\,
	datab => \inst|reggy[0][15]~36_combout\,
	datac => \inst|reggy~38_combout\,
	datad => \inst|reggy[0][15]~37_combout\,
	combout => \inst|reggy[1][15]~40_combout\);

-- Location: LCCOMB_X22_Y14_N24
\inst|reggy[1][15]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy[1][15]~41_combout\ = (\inst|MAR\(4) & ((\inst|reggy[1][15]~40_combout\))) # (!\inst|MAR\(4) & (\inst|reggy[1][15]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|MAR\(4),
	datac => \inst|reggy[1][15]~q\,
	datad => \inst|reggy[1][15]~40_combout\,
	combout => \inst|reggy[1][15]~41_combout\);

-- Location: FF_X22_Y14_N25
\inst|reggy[1][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|reggy[1][15]~41_combout\,
	ena => \inst|reggy[0][15]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy[1][15]~q\);

-- Location: LCCOMB_X14_Y14_N26
\inst|Mux24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux24~0_combout\ = (\inst|MAR\(0) & (\inst|reggy[1][15]~q\)) # (!\inst|MAR\(0) & ((\inst|reggy[0][15]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|reggy[1][15]~q\,
	datac => \inst|reggy[0][15]~q\,
	datad => \inst|MAR\(0),
	combout => \inst|Mux24~0_combout\);

-- Location: FF_X12_Y14_N25
\inst|REG_B[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|Mux24~0_combout\,
	sclr => \inst|MAR\(1),
	sload => VCC,
	ena => \inst|OP[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|REG_B\(15));

-- Location: LCCOMB_X17_Y10_N14
\inst|alu1|unidad_aritmetica|resta|sR:14:sP|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|resta|sR:14:sP|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|resta|sR:13:sP|Cout2~4_combout\) # ((\inst|alu1|unidad_aritmetica|suma|Yop~13_combout\ & (\inst|alu1|unidad_aritmetica|suma|Xop\(14) & 
-- \inst|alu1|unidad_aritmetica|resta|sR:13:sP|Cout~0_combout\)) # (!\inst|alu1|unidad_aritmetica|suma|Yop~13_combout\ & ((\inst|alu1|unidad_aritmetica|suma|Xop\(14)) # (\inst|alu1|unidad_aritmetica|resta|sR:13:sP|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|suma|Yop~13_combout\,
	datab => \inst|alu1|unidad_aritmetica|suma|Xop\(14),
	datac => \inst|alu1|unidad_aritmetica|resta|sR:13:sP|Cout~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|resta|sR:13:sP|Cout2~4_combout\,
	combout => \inst|alu1|unidad_aritmetica|resta|sR:14:sP|Cout~0_combout\);

-- Location: LCCOMB_X17_Y10_N8
\inst|alu1|unidad_aritmetica|resta|Sfaux~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|resta|Sfaux~0_combout\ = \inst|REG_B\(15) $ (\inst|alu1|unidad_aritmetica|resta|sR:14:sP|Cout~0_combout\ $ (\inst|REG_A\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|REG_B\(15),
	datac => \inst|alu1|unidad_aritmetica|resta|sR:14:sP|Cout~0_combout\,
	datad => \inst|REG_A\(15),
	combout => \inst|alu1|unidad_aritmetica|resta|Sfaux~0_combout\);

-- Location: LCCOMB_X22_Y10_N26
\inst|alu1|unidad_aritmetica|Mux15~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|Mux15~3_combout\ = (\inst|alu1|unidad_aritmetica|resta|Sfaux~0_combout\ & (\inst|REG_B\(0) $ (((\inst|REG_A\(0)))))) # (!\inst|alu1|unidad_aritmetica|resta|Sfaux~0_combout\ & 
-- (((\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(0),
	datab => \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~27_combout\,
	datac => \inst|REG_A\(0),
	datad => \inst|alu1|unidad_aritmetica|resta|Sfaux~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|Mux15~3_combout\);

-- Location: LCCOMB_X19_Y14_N0
\inst|alu1|unidad_aritmetica|divi|Add5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add5~0_combout\ = (\inst|REG_B\(0) & (\inst|REG_A\(2) $ (VCC))) # (!\inst|REG_B\(0) & ((\inst|REG_A\(2)) # (GND)))
-- \inst|alu1|unidad_aritmetica|divi|Add5~1\ = CARRY((\inst|REG_A\(2)) # (!\inst|REG_B\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(0),
	datab => \inst|REG_A\(2),
	datad => VCC,
	combout => \inst|alu1|unidad_aritmetica|divi|Add5~0_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add5~1\);

-- Location: LCCOMB_X19_Y14_N2
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

-- Location: LCCOMB_X19_Y14_N4
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

-- Location: LCCOMB_X19_Y14_N6
\inst|alu1|unidad_aritmetica|divi|Add5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add5~6_combout\ = (\inst|REG_B\(3) & ((\inst|alu1|unidad_aritmetica|divi|Add4~39_combout\ & (!\inst|alu1|unidad_aritmetica|divi|Add5~5\)) # (!\inst|alu1|unidad_aritmetica|divi|Add4~39_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add5~5\) # (GND))))) # (!\inst|REG_B\(3) & ((\inst|alu1|unidad_aritmetica|divi|Add4~39_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add5~5\ & VCC)) # (!\inst|alu1|unidad_aritmetica|divi|Add4~39_combout\ & 
-- (!\inst|alu1|unidad_aritmetica|divi|Add5~5\))))
-- \inst|alu1|unidad_aritmetica|divi|Add5~7\ = CARRY((\inst|REG_B\(3) & ((!\inst|alu1|unidad_aritmetica|divi|Add5~5\) # (!\inst|alu1|unidad_aritmetica|divi|Add4~39_combout\))) # (!\inst|REG_B\(3) & (!\inst|alu1|unidad_aritmetica|divi|Add4~39_combout\ & 
-- !\inst|alu1|unidad_aritmetica|divi|Add5~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(3),
	datab => \inst|alu1|unidad_aritmetica|divi|Add4~39_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add5~5\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add5~6_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add5~7\);

-- Location: LCCOMB_X19_Y14_N8
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

-- Location: LCCOMB_X19_Y14_N10
\inst|alu1|unidad_aritmetica|divi|Add5~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add5~10_combout\ = (\inst|alu1|unidad_aritmetica|divi|Add4~37_combout\ & ((\inst|REG_B\(5) & (!\inst|alu1|unidad_aritmetica|divi|Add5~9\)) # (!\inst|REG_B\(5) & (\inst|alu1|unidad_aritmetica|divi|Add5~9\ & VCC)))) # 
-- (!\inst|alu1|unidad_aritmetica|divi|Add4~37_combout\ & ((\inst|REG_B\(5) & ((\inst|alu1|unidad_aritmetica|divi|Add5~9\) # (GND))) # (!\inst|REG_B\(5) & (!\inst|alu1|unidad_aritmetica|divi|Add5~9\))))
-- \inst|alu1|unidad_aritmetica|divi|Add5~11\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add4~37_combout\ & (\inst|REG_B\(5) & !\inst|alu1|unidad_aritmetica|divi|Add5~9\)) # (!\inst|alu1|unidad_aritmetica|divi|Add4~37_combout\ & ((\inst|REG_B\(5)) # 
-- (!\inst|alu1|unidad_aritmetica|divi|Add5~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add4~37_combout\,
	datab => \inst|REG_B\(5),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add5~9\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add5~10_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add5~11\);

-- Location: LCCOMB_X19_Y14_N12
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

-- Location: LCCOMB_X19_Y14_N14
\inst|alu1|unidad_aritmetica|divi|Add5~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add5~14_combout\ = (\inst|alu1|unidad_aritmetica|divi|Add4~35_combout\ & ((\inst|REG_B\(7) & (!\inst|alu1|unidad_aritmetica|divi|Add5~13\)) # (!\inst|REG_B\(7) & (\inst|alu1|unidad_aritmetica|divi|Add5~13\ & VCC)))) # 
-- (!\inst|alu1|unidad_aritmetica|divi|Add4~35_combout\ & ((\inst|REG_B\(7) & ((\inst|alu1|unidad_aritmetica|divi|Add5~13\) # (GND))) # (!\inst|REG_B\(7) & (!\inst|alu1|unidad_aritmetica|divi|Add5~13\))))
-- \inst|alu1|unidad_aritmetica|divi|Add5~15\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add4~35_combout\ & (\inst|REG_B\(7) & !\inst|alu1|unidad_aritmetica|divi|Add5~13\)) # (!\inst|alu1|unidad_aritmetica|divi|Add4~35_combout\ & ((\inst|REG_B\(7)) # 
-- (!\inst|alu1|unidad_aritmetica|divi|Add5~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add4~35_combout\,
	datab => \inst|REG_B\(7),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add5~13\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add5~14_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add5~15\);

-- Location: LCCOMB_X19_Y14_N16
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

-- Location: LCCOMB_X19_Y14_N18
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

-- Location: LCCOMB_X19_Y14_N20
\inst|alu1|unidad_aritmetica|divi|Add5~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add5~20_combout\ = ((\inst|REG_B\(10) $ (\inst|alu1|unidad_aritmetica|divi|Add4~32_combout\ $ (\inst|alu1|unidad_aritmetica|divi|Add5~19\)))) # (GND)
-- \inst|alu1|unidad_aritmetica|divi|Add5~21\ = CARRY((\inst|REG_B\(10) & (\inst|alu1|unidad_aritmetica|divi|Add4~32_combout\ & !\inst|alu1|unidad_aritmetica|divi|Add5~19\)) # (!\inst|REG_B\(10) & ((\inst|alu1|unidad_aritmetica|divi|Add4~32_combout\) # 
-- (!\inst|alu1|unidad_aritmetica|divi|Add5~19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(10),
	datab => \inst|alu1|unidad_aritmetica|divi|Add4~32_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add5~19\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add5~20_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add5~21\);

-- Location: LCCOMB_X19_Y14_N22
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

-- Location: LCCOMB_X19_Y14_N24
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

-- Location: LCCOMB_X19_Y14_N30
\inst|alu1|unidad_aritmetica|divi|Add5~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add5~29_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan5~28_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add4~30_combout\)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan5~28_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add5~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add4~30_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|LessThan5~28_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|Add5~24_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add5~29_combout\);

-- Location: LCCOMB_X18_Y14_N12
\inst|alu1|unidad_aritmetica|divi|Add5~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add5~30_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan5~28_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add4~31_combout\)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan5~28_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add5~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add4~31_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|Add5~22_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan5~28_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add5~30_combout\);

-- Location: LCCOMB_X19_Y13_N30
\inst|alu1|unidad_aritmetica|divi|Add5~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add5~31_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan5~28_combout\ & ((\inst|alu1|unidad_aritmetica|divi|Add4~32_combout\))) # (!\inst|alu1|unidad_aritmetica|divi|LessThan5~28_combout\ & 
-- (\inst|alu1|unidad_aritmetica|divi|Add5~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add5~20_combout\,
	datab => \inst|alu1|unidad_aritmetica|divi|Add4~32_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan5~28_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add5~31_combout\);

-- Location: LCCOMB_X18_Y12_N14
\inst|alu1|unidad_aritmetica|divi|Add5~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add5~32_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan5~28_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add4~33_combout\)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan5~28_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add5~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|unidad_aritmetica|divi|Add4~33_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|Add5~18_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan5~28_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add5~32_combout\);

-- Location: LCCOMB_X18_Y12_N8
\inst|alu1|unidad_aritmetica|divi|Add5~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add5~33_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan5~28_combout\ & ((\inst|alu1|unidad_aritmetica|divi|Add4~34_combout\))) # (!\inst|alu1|unidad_aritmetica|divi|LessThan5~28_combout\ & 
-- (\inst|alu1|unidad_aritmetica|divi|Add5~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add5~16_combout\,
	datab => \inst|alu1|unidad_aritmetica|divi|Add4~34_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan5~28_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add5~33_combout\);

-- Location: LCCOMB_X18_Y13_N16
\inst|alu1|unidad_aritmetica|divi|Add5~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add5~34_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan5~28_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add4~35_combout\)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan5~28_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add5~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add4~35_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|LessThan5~28_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|Add5~14_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add5~34_combout\);

-- Location: LCCOMB_X18_Y13_N22
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

-- Location: LCCOMB_X16_Y13_N30
\inst|alu1|unidad_aritmetica|divi|Add5~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add5~36_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan5~28_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add4~37_combout\)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan5~28_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add5~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|unidad_aritmetica|divi|Add4~37_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|LessThan5~28_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|Add5~10_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add5~36_combout\);

-- Location: LCCOMB_X18_Y14_N2
\inst|alu1|unidad_aritmetica|divi|Add5~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add5~37_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan5~28_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add4~38_combout\)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan5~28_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add5~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|unidad_aritmetica|divi|Add4~38_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|Add5~8_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan5~28_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add5~37_combout\);

-- Location: LCCOMB_X18_Y12_N22
\inst|alu1|unidad_aritmetica|divi|Add5~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add5~38_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan5~28_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add4~39_combout\)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan5~28_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add5~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|unidad_aritmetica|divi|Add4~39_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|Add5~6_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan5~28_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add5~38_combout\);

-- Location: LCCOMB_X18_Y13_N4
\inst|alu1|unidad_aritmetica|divi|Add5~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add5~39_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan5~28_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add4~40_combout\)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan5~28_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add5~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add4~40_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|LessThan5~28_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|Add5~4_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add5~39_combout\);

-- Location: LCCOMB_X19_Y13_N8
\inst|alu1|unidad_aritmetica|divi|Add5~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add5~40_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan5~28_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add4~41_combout\)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan5~28_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add5~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|unidad_aritmetica|divi|Add4~41_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|Add5~2_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan5~28_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add5~40_combout\);

-- Location: LCCOMB_X18_Y11_N0
\inst|alu1|unidad_aritmetica|divi|Add5~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add5~41_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan5~28_combout\ & (\inst|REG_A\(2))) # (!\inst|alu1|unidad_aritmetica|divi|LessThan5~28_combout\ & ((\inst|alu1|unidad_aritmetica|divi|Add5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|REG_A\(2),
	datac => \inst|alu1|unidad_aritmetica|divi|Add5~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan5~28_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add5~41_combout\);

-- Location: LCCOMB_X18_Y11_N4
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

-- Location: LCCOMB_X18_Y11_N6
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

-- Location: LCCOMB_X18_Y11_N8
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

-- Location: LCCOMB_X18_Y11_N10
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

-- Location: LCCOMB_X18_Y11_N12
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

-- Location: LCCOMB_X18_Y11_N14
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

-- Location: LCCOMB_X18_Y11_N16
\inst|alu1|unidad_aritmetica|divi|Add6~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add6~12_combout\ = ((\inst|alu1|unidad_aritmetica|divi|Add5~36_combout\ $ (\inst|REG_B\(6) $ (\inst|alu1|unidad_aritmetica|divi|Add6~11\)))) # (GND)
-- \inst|alu1|unidad_aritmetica|divi|Add6~13\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add5~36_combout\ & ((!\inst|alu1|unidad_aritmetica|divi|Add6~11\) # (!\inst|REG_B\(6)))) # (!\inst|alu1|unidad_aritmetica|divi|Add5~36_combout\ & (!\inst|REG_B\(6) & 
-- !\inst|alu1|unidad_aritmetica|divi|Add6~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add5~36_combout\,
	datab => \inst|REG_B\(6),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add6~11\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add6~12_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add6~13\);

-- Location: LCCOMB_X18_Y11_N18
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

-- Location: LCCOMB_X18_Y11_N20
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

-- Location: LCCOMB_X18_Y11_N22
\inst|alu1|unidad_aritmetica|divi|Add6~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add6~18_combout\ = (\inst|REG_B\(9) & ((\inst|alu1|unidad_aritmetica|divi|Add5~33_combout\ & (!\inst|alu1|unidad_aritmetica|divi|Add6~17\)) # (!\inst|alu1|unidad_aritmetica|divi|Add5~33_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add6~17\) # (GND))))) # (!\inst|REG_B\(9) & ((\inst|alu1|unidad_aritmetica|divi|Add5~33_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add6~17\ & VCC)) # (!\inst|alu1|unidad_aritmetica|divi|Add5~33_combout\ & 
-- (!\inst|alu1|unidad_aritmetica|divi|Add6~17\))))
-- \inst|alu1|unidad_aritmetica|divi|Add6~19\ = CARRY((\inst|REG_B\(9) & ((!\inst|alu1|unidad_aritmetica|divi|Add6~17\) # (!\inst|alu1|unidad_aritmetica|divi|Add5~33_combout\))) # (!\inst|REG_B\(9) & (!\inst|alu1|unidad_aritmetica|divi|Add5~33_combout\ & 
-- !\inst|alu1|unidad_aritmetica|divi|Add6~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(9),
	datab => \inst|alu1|unidad_aritmetica|divi|Add5~33_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add6~17\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add6~18_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add6~19\);

-- Location: LCCOMB_X18_Y11_N24
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

-- Location: LCCOMB_X18_Y11_N26
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

-- Location: LCCOMB_X18_Y11_N28
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

-- Location: LCCOMB_X18_Y11_N30
\inst|alu1|unidad_aritmetica|divi|Add6~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add6~26_combout\ = \inst|REG_B\(13) $ (\inst|alu1|unidad_aritmetica|divi|Add6~25\ $ (!\inst|alu1|unidad_aritmetica|divi|Add5~29_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|REG_B\(13),
	datad => \inst|alu1|unidad_aritmetica|divi|Add5~29_combout\,
	cin => \inst|alu1|unidad_aritmetica|divi|Add6~25\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add6~26_combout\);

-- Location: LCCOMB_X19_Y14_N26
\inst|alu1|unidad_aritmetica|divi|Add5~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add5~26_combout\ = \inst|REG_B\(13) $ (\inst|alu1|unidad_aritmetica|divi|Add5~25\ $ (!\inst|alu1|unidad_aritmetica|divi|Add4~29_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(13),
	datad => \inst|alu1|unidad_aritmetica|divi|Add4~29_combout\,
	cin => \inst|alu1|unidad_aritmetica|divi|Add5~25\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add5~26_combout\);

-- Location: LCCOMB_X19_Y12_N0
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

-- Location: LCCOMB_X19_Y12_N2
\inst|alu1|unidad_aritmetica|divi|LessThan6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan6~1_cout\ = CARRY((!\inst|REG_A\(1) & \inst|REG_B\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(1),
	datab => \inst|REG_B\(0),
	datad => VCC,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan6~1_cout\);

-- Location: LCCOMB_X19_Y12_N4
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

-- Location: LCCOMB_X19_Y12_N6
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

-- Location: LCCOMB_X19_Y12_N8
\inst|alu1|unidad_aritmetica|divi|LessThan6~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan6~7_cout\ = CARRY((\inst|REG_B\(3) & (\inst|alu1|unidad_aritmetica|divi|Add5~39_combout\ & !\inst|alu1|unidad_aritmetica|divi|LessThan6~5_cout\)) # (!\inst|REG_B\(3) & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add5~39_combout\) # (!\inst|alu1|unidad_aritmetica|divi|LessThan6~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(3),
	datab => \inst|alu1|unidad_aritmetica|divi|Add5~39_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan6~5_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan6~7_cout\);

-- Location: LCCOMB_X19_Y12_N10
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

-- Location: LCCOMB_X19_Y12_N12
\inst|alu1|unidad_aritmetica|divi|LessThan6~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan6~11_cout\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add5~37_combout\ & ((!\inst|alu1|unidad_aritmetica|divi|LessThan6~9_cout\) # (!\inst|REG_B\(5)))) # (!\inst|alu1|unidad_aritmetica|divi|Add5~37_combout\ & 
-- (!\inst|REG_B\(5) & !\inst|alu1|unidad_aritmetica|divi|LessThan6~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add5~37_combout\,
	datab => \inst|REG_B\(5),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan6~9_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan6~11_cout\);

-- Location: LCCOMB_X19_Y12_N14
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

-- Location: LCCOMB_X19_Y12_N16
\inst|alu1|unidad_aritmetica|divi|LessThan6~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan6~15_cout\ = CARRY((\inst|REG_B\(7) & (\inst|alu1|unidad_aritmetica|divi|Add5~35_combout\ & !\inst|alu1|unidad_aritmetica|divi|LessThan6~13_cout\)) # (!\inst|REG_B\(7) & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add5~35_combout\) # (!\inst|alu1|unidad_aritmetica|divi|LessThan6~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(7),
	datab => \inst|alu1|unidad_aritmetica|divi|Add5~35_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan6~13_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan6~15_cout\);

-- Location: LCCOMB_X19_Y12_N18
\inst|alu1|unidad_aritmetica|divi|LessThan6~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan6~17_cout\ = CARRY((\inst|REG_B\(8) & ((!\inst|alu1|unidad_aritmetica|divi|LessThan6~15_cout\) # (!\inst|alu1|unidad_aritmetica|divi|Add5~34_combout\))) # (!\inst|REG_B\(8) & 
-- (!\inst|alu1|unidad_aritmetica|divi|Add5~34_combout\ & !\inst|alu1|unidad_aritmetica|divi|LessThan6~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(8),
	datab => \inst|alu1|unidad_aritmetica|divi|Add5~34_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan6~15_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan6~17_cout\);

-- Location: LCCOMB_X19_Y12_N20
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

-- Location: LCCOMB_X19_Y12_N22
\inst|alu1|unidad_aritmetica|divi|LessThan6~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan6~21_cout\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add5~32_combout\ & (\inst|REG_B\(10) & !\inst|alu1|unidad_aritmetica|divi|LessThan6~19_cout\)) # (!\inst|alu1|unidad_aritmetica|divi|Add5~32_combout\ & 
-- ((\inst|REG_B\(10)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan6~19_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add5~32_combout\,
	datab => \inst|REG_B\(10),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan6~19_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan6~21_cout\);

-- Location: LCCOMB_X19_Y12_N24
\inst|alu1|unidad_aritmetica|divi|LessThan6~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan6~23_cout\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add5~31_combout\ & ((!\inst|alu1|unidad_aritmetica|divi|LessThan6~21_cout\) # (!\inst|REG_B\(11)))) # (!\inst|alu1|unidad_aritmetica|divi|Add5~31_combout\ & 
-- (!\inst|REG_B\(11) & !\inst|alu1|unidad_aritmetica|divi|LessThan6~21_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add5~31_combout\,
	datab => \inst|REG_B\(11),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan6~21_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan6~23_cout\);

-- Location: LCCOMB_X19_Y12_N26
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

-- Location: LCCOMB_X19_Y12_N28
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

-- Location: LCCOMB_X19_Y12_N30
\inst|alu1|unidad_aritmetica|divi|LessThan6~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan6~28_combout\ = (\inst|REG_B\(14) & ((!\inst|alu1|unidad_aritmetica|divi|Add5~28_combout\) # (!\inst|alu1|unidad_aritmetica|divi|LessThan6~27_cout\))) # (!\inst|REG_B\(14) & 
-- (!\inst|alu1|unidad_aritmetica|divi|LessThan6~27_cout\ & !\inst|alu1|unidad_aritmetica|divi|Add5~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(14),
	datad => \inst|alu1|unidad_aritmetica|divi|Add5~28_combout\,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan6~27_cout\,
	combout => \inst|alu1|unidad_aritmetica|divi|LessThan6~28_combout\);

-- Location: LCCOMB_X18_Y11_N2
\inst|alu1|unidad_aritmetica|divi|Add6~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add6~28_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan6~28_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add5~29_combout\)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan6~28_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add6~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|unidad_aritmetica|divi|Add5~29_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|Add6~26_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan6~28_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add6~28_combout\);

-- Location: LCCOMB_X21_Y13_N28
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

-- Location: LCCOMB_X19_Y13_N14
\inst|alu1|unidad_aritmetica|divi|Add6~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add6~30_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan6~28_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add5~31_combout\)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan6~28_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add6~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add5~31_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|Add6~22_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan6~28_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add6~30_combout\);

-- Location: LCCOMB_X21_Y13_N18
\inst|alu1|unidad_aritmetica|divi|Add6~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add6~31_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan6~28_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add5~32_combout\)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan6~28_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add6~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add5~32_combout\,
	datab => \inst|alu1|unidad_aritmetica|divi|Add6~20_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan6~28_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add6~31_combout\);

-- Location: LCCOMB_X21_Y13_N8
\inst|alu1|unidad_aritmetica|divi|Add6~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add6~32_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan6~28_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add5~33_combout\)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan6~28_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add6~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|unidad_aritmetica|divi|Add5~33_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|Add6~18_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan6~28_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add6~32_combout\);

-- Location: LCCOMB_X18_Y13_N26
\inst|alu1|unidad_aritmetica|divi|Add6~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add6~33_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan6~28_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add5~34_combout\)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan6~28_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add6~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|unidad_aritmetica|divi|Add5~34_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|Add6~16_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan6~28_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add6~33_combout\);

-- Location: LCCOMB_X18_Y13_N12
\inst|alu1|unidad_aritmetica|divi|Add6~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add6~34_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan6~28_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add5~35_combout\)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan6~28_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add6~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add5~35_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|Add6~14_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan6~28_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add6~34_combout\);

-- Location: LCCOMB_X21_Y13_N6
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

-- Location: LCCOMB_X21_Y13_N12
\inst|alu1|unidad_aritmetica|divi|Add6~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add6~36_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan6~28_combout\ & ((\inst|alu1|unidad_aritmetica|divi|Add5~37_combout\))) # (!\inst|alu1|unidad_aritmetica|divi|LessThan6~28_combout\ & 
-- (\inst|alu1|unidad_aritmetica|divi|Add6~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add6~10_combout\,
	datab => \inst|alu1|unidad_aritmetica|divi|Add5~37_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan6~28_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add6~36_combout\);

-- Location: LCCOMB_X18_Y12_N20
\inst|alu1|unidad_aritmetica|divi|Add6~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add6~37_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan6~28_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add5~38_combout\)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan6~28_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add6~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add5~38_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|LessThan6~28_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|Add6~8_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add6~37_combout\);

-- Location: LCCOMB_X18_Y13_N18
\inst|alu1|unidad_aritmetica|divi|Add6~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add6~38_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan6~28_combout\ & ((\inst|alu1|unidad_aritmetica|divi|Add5~39_combout\))) # (!\inst|alu1|unidad_aritmetica|divi|LessThan6~28_combout\ & 
-- (\inst|alu1|unidad_aritmetica|divi|Add6~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add6~6_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|Add5~39_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan6~28_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add6~38_combout\);

-- Location: LCCOMB_X19_Y13_N24
\inst|alu1|unidad_aritmetica|divi|Add6~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add6~39_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan6~28_combout\ & ((\inst|alu1|unidad_aritmetica|divi|Add5~40_combout\))) # (!\inst|alu1|unidad_aritmetica|divi|LessThan6~28_combout\ & 
-- (\inst|alu1|unidad_aritmetica|divi|Add6~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add6~4_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|Add5~40_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan6~28_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add6~39_combout\);

-- Location: LCCOMB_X21_Y13_N14
\inst|alu1|unidad_aritmetica|divi|Add6~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add6~40_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan6~28_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add5~41_combout\)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan6~28_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add6~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|unidad_aritmetica|divi|Add5~41_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|Add6~2_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan6~28_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add6~40_combout\);

-- Location: LCCOMB_X21_Y13_N16
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

-- Location: LCCOMB_X22_Y13_N2
\inst|alu1|unidad_aritmetica|divi|LessThan7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan7~1_cout\ = CARRY((\inst|REG_B\(0) & !\inst|REG_A\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(0),
	datab => \inst|REG_A\(0),
	datad => VCC,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan7~1_cout\);

-- Location: LCCOMB_X22_Y13_N4
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

-- Location: LCCOMB_X22_Y13_N6
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

-- Location: LCCOMB_X22_Y13_N8
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

-- Location: LCCOMB_X22_Y13_N10
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

-- Location: LCCOMB_X22_Y13_N12
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

-- Location: LCCOMB_X22_Y13_N14
\inst|alu1|unidad_aritmetica|divi|LessThan7~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan7~13_cout\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add6~36_combout\ & (\inst|REG_B\(6) & !\inst|alu1|unidad_aritmetica|divi|LessThan7~11_cout\)) # (!\inst|alu1|unidad_aritmetica|divi|Add6~36_combout\ & 
-- ((\inst|REG_B\(6)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan7~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add6~36_combout\,
	datab => \inst|REG_B\(6),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan7~11_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan7~13_cout\);

-- Location: LCCOMB_X22_Y13_N16
\inst|alu1|unidad_aritmetica|divi|LessThan7~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan7~15_cout\ = CARRY((\inst|REG_B\(7) & (\inst|alu1|unidad_aritmetica|divi|Add6~35_combout\ & !\inst|alu1|unidad_aritmetica|divi|LessThan7~13_cout\)) # (!\inst|REG_B\(7) & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add6~35_combout\) # (!\inst|alu1|unidad_aritmetica|divi|LessThan7~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(7),
	datab => \inst|alu1|unidad_aritmetica|divi|Add6~35_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan7~13_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan7~15_cout\);

-- Location: LCCOMB_X22_Y13_N18
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

-- Location: LCCOMB_X22_Y13_N20
\inst|alu1|unidad_aritmetica|divi|LessThan7~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan7~19_cout\ = CARRY((\inst|REG_B\(9) & (\inst|alu1|unidad_aritmetica|divi|Add6~33_combout\ & !\inst|alu1|unidad_aritmetica|divi|LessThan7~17_cout\)) # (!\inst|REG_B\(9) & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add6~33_combout\) # (!\inst|alu1|unidad_aritmetica|divi|LessThan7~17_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(9),
	datab => \inst|alu1|unidad_aritmetica|divi|Add6~33_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan7~17_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan7~19_cout\);

-- Location: LCCOMB_X22_Y13_N22
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

-- Location: LCCOMB_X22_Y13_N24
\inst|alu1|unidad_aritmetica|divi|LessThan7~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan7~23_cout\ = CARRY((\inst|REG_B\(11) & (\inst|alu1|unidad_aritmetica|divi|Add6~31_combout\ & !\inst|alu1|unidad_aritmetica|divi|LessThan7~21_cout\)) # (!\inst|REG_B\(11) & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add6~31_combout\) # (!\inst|alu1|unidad_aritmetica|divi|LessThan7~21_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(11),
	datab => \inst|alu1|unidad_aritmetica|divi|Add6~31_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan7~21_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan7~23_cout\);

-- Location: LCCOMB_X22_Y13_N26
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

-- Location: LCCOMB_X22_Y13_N28
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

-- Location: LCCOMB_X22_Y13_N30
\inst|alu1|unidad_aritmetica|divi|LessThan7~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan7~28_combout\ = (\inst|REG_B\(14) & ((!\inst|alu1|unidad_aritmetica|divi|Add6~28_combout\) # (!\inst|alu1|unidad_aritmetica|divi|LessThan7~27_cout\))) # (!\inst|REG_B\(14) & 
-- (!\inst|alu1|unidad_aritmetica|divi|LessThan7~27_cout\ & !\inst|alu1|unidad_aritmetica|divi|Add6~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(14),
	datad => \inst|alu1|unidad_aritmetica|divi|Add6~28_combout\,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan7~27_cout\,
	combout => \inst|alu1|unidad_aritmetica|divi|LessThan7~28_combout\);

-- Location: LCCOMB_X22_Y10_N22
\inst|alu1|unidad_aritmetica|Mux15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|Mux15~1_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi7|sR:14:sP|Cout~0_combout\ & (((\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~27_combout\)))) # 
-- (!\inst|alu1|unidad_aritmetica|mult|multi7|sR:14:sP|Cout~0_combout\ & (\inst|REG_B\(0) & ((\inst|REG_A\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(0),
	datab => \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~27_combout\,
	datac => \inst|REG_A\(0),
	datad => \inst|alu1|unidad_aritmetica|mult|multi7|sR:14:sP|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|Mux15~1_combout\);

-- Location: LCCOMB_X22_Y10_N20
\inst|alu1|unidad_aritmetica|Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|Mux15~0_combout\ = (\inst|alu1|unidad_aritmetica|suma|Sfaux~0_combout\ & (((\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~27_combout\)))) # (!\inst|alu1|unidad_aritmetica|suma|Sfaux~0_combout\ & (\inst|REG_A\(0) $ 
-- ((\inst|REG_B\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|suma|Sfaux~0_combout\,
	datab => \inst|REG_A\(0),
	datac => \inst|REG_B\(0),
	datad => \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~27_combout\,
	combout => \inst|alu1|unidad_aritmetica|Mux15~0_combout\);

-- Location: LCCOMB_X22_Y10_N16
\inst|alu1|unidad_aritmetica|Mux15~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|Mux15~2_combout\ = (\inst|alu1|Mux17~0_combout\ & (\inst|alu1|Mux16~0_combout\)) # (!\inst|alu1|Mux17~0_combout\ & ((\inst|alu1|Mux16~0_combout\ & ((\inst|alu1|unidad_aritmetica|Mux15~0_combout\))) # 
-- (!\inst|alu1|Mux16~0_combout\ & (\inst|alu1|unidad_aritmetica|Mux15~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux17~0_combout\,
	datab => \inst|alu1|Mux16~0_combout\,
	datac => \inst|alu1|unidad_aritmetica|Mux15~1_combout\,
	datad => \inst|alu1|unidad_aritmetica|Mux15~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|Mux15~2_combout\);

-- Location: LCCOMB_X22_Y13_N0
\inst|alu1|unidad_aritmetica|Mux15~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|Mux15~4_combout\ = (\inst|alu1|Mux17~0_combout\ & ((\inst|alu1|unidad_aritmetica|Mux15~2_combout\ & (\inst|alu1|unidad_aritmetica|Mux15~3_combout\)) # (!\inst|alu1|unidad_aritmetica|Mux15~2_combout\ & 
-- ((!\inst|alu1|unidad_aritmetica|divi|LessThan7~28_combout\))))) # (!\inst|alu1|Mux17~0_combout\ & (((\inst|alu1|unidad_aritmetica|Mux15~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|Mux15~3_combout\,
	datab => \inst|alu1|Mux17~0_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|LessThan7~28_combout\,
	datad => \inst|alu1|unidad_aritmetica|Mux15~2_combout\,
	combout => \inst|alu1|unidad_aritmetica|Mux15~4_combout\);

-- Location: LCCOMB_X22_Y12_N2
\inst|alu1|Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux15~0_combout\ = (\inst|OP\(1) & (\inst|OP\(0) & (!\inst|OP\(2) & \inst|OP\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|OP\(1),
	datab => \inst|OP\(0),
	datac => \inst|OP\(2),
	datad => \inst|OP\(3),
	combout => \inst|alu1|Mux15~0_combout\);

-- Location: LCCOMB_X23_Y11_N10
\inst|alu1|comparador|comparaP:1:comp|lout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|comparador|comparaP:1:comp|lout~0_combout\ = (\inst|REG_A\(1) & (!\inst|REG_A\(0) & (\inst|REG_B\(1) & \inst|REG_B\(0)))) # (!\inst|REG_A\(1) & ((\inst|REG_B\(1)) # ((!\inst|REG_A\(0) & \inst|REG_B\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(0),
	datab => \inst|REG_A\(1),
	datac => \inst|REG_B\(1),
	datad => \inst|REG_B\(0),
	combout => \inst|alu1|comparador|comparaP:1:comp|lout~0_combout\);

-- Location: LCCOMB_X23_Y11_N28
\inst|alu1|comparador|comparaP:2:comp|lout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|comparador|comparaP:2:comp|lout~0_combout\ = (\inst|REG_B\(2) & ((\inst|alu1|comparador|comparaP:1:comp|lout~0_combout\) # (!\inst|REG_A\(2)))) # (!\inst|REG_B\(2) & (!\inst|REG_A\(2) & \inst|alu1|comparador|comparaP:1:comp|lout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|REG_B\(2),
	datac => \inst|REG_A\(2),
	datad => \inst|alu1|comparador|comparaP:1:comp|lout~0_combout\,
	combout => \inst|alu1|comparador|comparaP:2:comp|lout~0_combout\);

-- Location: LCCOMB_X23_Y11_N6
\inst|alu1|comparador|comparaP:3:comp|lout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|comparador|comparaP:3:comp|lout~0_combout\ = (\inst|REG_A\(3) & (\inst|REG_B\(3) & \inst|alu1|comparador|comparaP:2:comp|lout~0_combout\)) # (!\inst|REG_A\(3) & ((\inst|REG_B\(3)) # (\inst|alu1|comparador|comparaP:2:comp|lout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(3),
	datab => \inst|REG_B\(3),
	datad => \inst|alu1|comparador|comparaP:2:comp|lout~0_combout\,
	combout => \inst|alu1|comparador|comparaP:3:comp|lout~0_combout\);

-- Location: LCCOMB_X21_Y11_N0
\inst|alu1|comparador|comparaP:4:comp|lout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|comparador|comparaP:4:comp|lout~0_combout\ = (\inst|REG_B\(4) & ((\inst|alu1|comparador|comparaP:3:comp|lout~0_combout\) # (!\inst|REG_A\(4)))) # (!\inst|REG_B\(4) & (!\inst|REG_A\(4) & \inst|alu1|comparador|comparaP:3:comp|lout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(4),
	datab => \inst|REG_A\(4),
	datad => \inst|alu1|comparador|comparaP:3:comp|lout~0_combout\,
	combout => \inst|alu1|comparador|comparaP:4:comp|lout~0_combout\);

-- Location: LCCOMB_X21_Y11_N10
\inst|alu1|comparador|comparaP:5:comp|lout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|comparador|comparaP:5:comp|lout~0_combout\ = (\inst|REG_A\(5) & (\inst|REG_B\(5) & \inst|alu1|comparador|comparaP:4:comp|lout~0_combout\)) # (!\inst|REG_A\(5) & ((\inst|REG_B\(5)) # (\inst|alu1|comparador|comparaP:4:comp|lout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|REG_A\(5),
	datac => \inst|REG_B\(5),
	datad => \inst|alu1|comparador|comparaP:4:comp|lout~0_combout\,
	combout => \inst|alu1|comparador|comparaP:5:comp|lout~0_combout\);

-- Location: LCCOMB_X21_Y11_N16
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

-- Location: LCCOMB_X21_Y11_N14
\inst|alu1|comparador|comparaP:7:comp|lout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|comparador|comparaP:7:comp|lout~0_combout\ = (\inst|REG_A\(7) & (\inst|REG_B\(7) & \inst|alu1|comparador|comparaP:6:comp|lout~0_combout\)) # (!\inst|REG_A\(7) & ((\inst|REG_B\(7)) # (\inst|alu1|comparador|comparaP:6:comp|lout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(7),
	datac => \inst|REG_B\(7),
	datad => \inst|alu1|comparador|comparaP:6:comp|lout~0_combout\,
	combout => \inst|alu1|comparador|comparaP:7:comp|lout~0_combout\);

-- Location: LCCOMB_X21_Y10_N26
\inst|alu1|comparador|comparaP:8:comp|lout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|comparador|comparaP:8:comp|lout~0_combout\ = (\inst|REG_B\(8) & ((\inst|alu1|comparador|comparaP:7:comp|lout~0_combout\) # (!\inst|REG_A\(8)))) # (!\inst|REG_B\(8) & (\inst|alu1|comparador|comparaP:7:comp|lout~0_combout\ & !\inst|REG_A\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(8),
	datac => \inst|alu1|comparador|comparaP:7:comp|lout~0_combout\,
	datad => \inst|REG_A\(8),
	combout => \inst|alu1|comparador|comparaP:8:comp|lout~0_combout\);

-- Location: LCCOMB_X21_Y10_N20
\inst|alu1|comparador|comparaP:9:comp|lout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|comparador|comparaP:9:comp|lout~0_combout\ = (\inst|alu1|comparador|comparaP:8:comp|lout~0_combout\ & ((\inst|REG_B\(9)) # (!\inst|REG_A\(9)))) # (!\inst|alu1|comparador|comparaP:8:comp|lout~0_combout\ & (!\inst|REG_A\(9) & \inst|REG_B\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|comparador|comparaP:8:comp|lout~0_combout\,
	datac => \inst|REG_A\(9),
	datad => \inst|REG_B\(9),
	combout => \inst|alu1|comparador|comparaP:9:comp|lout~0_combout\);

-- Location: LCCOMB_X21_Y10_N6
\inst|alu1|comparador|comparaP:10:comp|lout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|comparador|comparaP:10:comp|lout~0_combout\ = (\inst|REG_B\(10) & ((\inst|alu1|comparador|comparaP:9:comp|lout~0_combout\) # (!\inst|REG_A\(10)))) # (!\inst|REG_B\(10) & (!\inst|REG_A\(10) & 
-- \inst|alu1|comparador|comparaP:9:comp|lout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|REG_B\(10),
	datac => \inst|REG_A\(10),
	datad => \inst|alu1|comparador|comparaP:9:comp|lout~0_combout\,
	combout => \inst|alu1|comparador|comparaP:10:comp|lout~0_combout\);

-- Location: LCCOMB_X21_Y10_N0
\inst|alu1|comparador|comparaP:11:comp|lout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|comparador|comparaP:11:comp|lout~0_combout\ = (\inst|REG_B\(11) & ((\inst|alu1|comparador|comparaP:10:comp|lout~0_combout\) # (!\inst|REG_A\(11)))) # (!\inst|REG_B\(11) & (!\inst|REG_A\(11) & 
-- \inst|alu1|comparador|comparaP:10:comp|lout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|REG_B\(11),
	datac => \inst|REG_A\(11),
	datad => \inst|alu1|comparador|comparaP:10:comp|lout~0_combout\,
	combout => \inst|alu1|comparador|comparaP:11:comp|lout~0_combout\);

-- Location: LCCOMB_X21_Y10_N22
\inst|alu1|comparador|comparaP:12:comp|lout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|comparador|comparaP:12:comp|lout~0_combout\ = (\inst|REG_A\(12) & (\inst|REG_B\(12) & \inst|alu1|comparador|comparaP:11:comp|lout~0_combout\)) # (!\inst|REG_A\(12) & ((\inst|REG_B\(12)) # 
-- (\inst|alu1|comparador|comparaP:11:comp|lout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(12),
	datac => \inst|REG_B\(12),
	datad => \inst|alu1|comparador|comparaP:11:comp|lout~0_combout\,
	combout => \inst|alu1|comparador|comparaP:12:comp|lout~0_combout\);

-- Location: LCCOMB_X21_Y10_N4
\inst|alu1|comparador|comparaP:13:comp|lout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|comparador|comparaP:13:comp|lout~0_combout\ = (\inst|alu1|comparador|comparaP:12:comp|lout~0_combout\ & ((\inst|REG_B\(13)) # (!\inst|REG_A\(13)))) # (!\inst|alu1|comparador|comparaP:12:comp|lout~0_combout\ & (!\inst|REG_A\(13) & 
-- \inst|REG_B\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|comparador|comparaP:12:comp|lout~0_combout\,
	datab => \inst|REG_A\(13),
	datac => \inst|REG_B\(13),
	combout => \inst|alu1|comparador|comparaP:13:comp|lout~0_combout\);

-- Location: LCCOMB_X22_Y12_N26
\inst|alu1|comparador|comparaP:14:comp|lout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|comparador|comparaP:14:comp|lout~0_combout\ = (\inst|REG_B\(14) & ((\inst|alu1|comparador|comparaP:13:comp|lout~0_combout\) # (!\inst|REG_A\(14)))) # (!\inst|REG_B\(14) & (!\inst|REG_A\(14) & 
-- \inst|alu1|comparador|comparaP:13:comp|lout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(14),
	datac => \inst|REG_A\(14),
	datad => \inst|alu1|comparador|comparaP:13:comp|lout~0_combout\,
	combout => \inst|alu1|comparador|comparaP:14:comp|lout~0_combout\);

-- Location: LCCOMB_X22_Y12_N12
\inst|alu1|Mux15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux15~1_combout\ = (\inst|alu1|Mux15~0_combout\ & ((\inst|REG_A\(15) & (\inst|alu1|comparador|comparaP:14:comp|lout~0_combout\ & \inst|REG_B\(15))) # (!\inst|REG_A\(15) & ((\inst|alu1|comparador|comparaP:14:comp|lout~0_combout\) # 
-- (\inst|REG_B\(15))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux15~0_combout\,
	datab => \inst|REG_A\(15),
	datac => \inst|alu1|comparador|comparaP:14:comp|lout~0_combout\,
	datad => \inst|REG_B\(15),
	combout => \inst|alu1|Mux15~1_combout\);

-- Location: LCCOMB_X22_Y12_N14
\inst|alu1|Mux15~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux15~2_combout\ = (!\inst|OP\(3) & (\inst|OP\(2) $ (((\inst|OP\(1)) # (\inst|OP\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|OP\(1),
	datab => \inst|OP\(0),
	datac => \inst|OP\(2),
	datad => \inst|OP\(3),
	combout => \inst|alu1|Mux15~2_combout\);

-- Location: LCCOMB_X23_Y12_N12
\inst|alu1|unidad_logica|aux[0]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|aux[0]~37_combout\ = (\inst|alu1|Mux17~0_combout\ & ((\inst|alu1|Mux16~0_combout\ & ((\inst|alu1|unidad_logica|aux\(0)))) # (!\inst|alu1|Mux16~0_combout\ & (\inst|REG_A\(0))))) # (!\inst|alu1|Mux17~0_combout\ & 
-- (((\inst|alu1|unidad_logica|aux\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(0),
	datab => \inst|alu1|Mux17~0_combout\,
	datac => \inst|alu1|unidad_logica|aux\(0),
	datad => \inst|alu1|Mux16~0_combout\,
	combout => \inst|alu1|unidad_logica|aux[0]~37_combout\);

-- Location: FF_X23_Y12_N13
\inst|alu1|unidad_logica|aux[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|alu1|unidad_logica|aux[0]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|unidad_logica|aux\(0));

-- Location: LCCOMB_X23_Y12_N18
\inst|alu1|unidad_logica|salida_aux~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|salida_aux~32_combout\ = (\inst|REG_A\(0) & (((\inst|alu1|Mux16~0_combout\)))) # (!\inst|REG_A\(0) & (((\inst|REG_B\(0) & \inst|alu1|Mux16~0_combout\)) # (!\inst|alu1|Mux17~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(0),
	datab => \inst|alu1|Mux17~0_combout\,
	datac => \inst|REG_A\(0),
	datad => \inst|alu1|Mux16~0_combout\,
	combout => \inst|alu1|unidad_logica|salida_aux~32_combout\);

-- Location: LCCOMB_X23_Y12_N0
\inst|alu1|comparador|comp0|lout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|comparador|comp0|lout~0_combout\ = (\inst|REG_B\(0) & \inst|REG_A\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(0),
	datac => \inst|REG_A\(0),
	combout => \inst|alu1|comparador|comp0|lout~0_combout\);

-- Location: LCCOMB_X23_Y12_N26
\inst|alu1|unidad_logica|salida_aux~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|salida_aux~33_combout\ = (\inst|alu1|unidad_logica|salida_aux~32_combout\ & (((\inst|alu1|comparador|comp0|lout~0_combout\) # (!\inst|alu1|unidad_logica|salida_aux[14]~44_combout\)))) # 
-- (!\inst|alu1|unidad_logica|salida_aux~32_combout\ & (\inst|alu1|unidad_logica|aux\(0) & ((\inst|alu1|unidad_logica|salida_aux[14]~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_logica|aux\(0),
	datab => \inst|alu1|unidad_logica|salida_aux~32_combout\,
	datac => \inst|alu1|comparador|comp0|lout~0_combout\,
	datad => \inst|alu1|unidad_logica|salida_aux[14]~44_combout\,
	combout => \inst|alu1|unidad_logica|salida_aux~33_combout\);

-- Location: FF_X23_Y12_N27
\inst|alu1|unidad_logica|salida_aux[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|alu1|unidad_logica|salida_aux~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|unidad_logica|salida_aux\(0));

-- Location: LCCOMB_X22_Y12_N16
\inst|alu1|Mux15~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux15~3_combout\ = (\inst|OP\(3) & ((\inst|OP\(2)) # ((\inst|alu1|Mux15~2_combout\ & \inst|alu1|unidad_logica|salida_aux\(0))))) # (!\inst|OP\(3) & (\inst|alu1|Mux15~2_combout\ & ((\inst|alu1|unidad_logica|salida_aux\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|OP\(3),
	datab => \inst|alu1|Mux15~2_combout\,
	datac => \inst|OP\(2),
	datad => \inst|alu1|unidad_logica|salida_aux\(0),
	combout => \inst|alu1|Mux15~3_combout\);

-- Location: LCCOMB_X23_Y13_N28
\inst|REG_D~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|REG_D~10_combout\ = (!\inst|Equal5~1_combout\ & ((\inst|MAR\(0)) # ((\inst|cat[0][0]~q\ & !\inst|MAR\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MAR\(0),
	datab => \inst|cat[0][0]~q\,
	datac => \inst|MAR\(1),
	datad => \inst|Equal5~1_combout\,
	combout => \inst|REG_D~10_combout\);

-- Location: FF_X23_Y13_N29
\inst|REG_D[0]\ : dffeas
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
	q => \inst|REG_D\(0));

-- Location: LCCOMB_X23_Y13_N6
\inst|reggy~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~31_combout\ = (\inst|reggy~15_combout\ & ((\inst|REG_D\(0)) # ((\inst|alu1|comparador|comp0|lout~0_combout\ & \inst|Equal9~0_combout\)))) # (!\inst|reggy~15_combout\ & (\inst|alu1|comparador|comp0|lout~0_combout\ & (\inst|Equal9~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy~15_combout\,
	datab => \inst|alu1|comparador|comp0|lout~0_combout\,
	datac => \inst|Equal9~0_combout\,
	datad => \inst|REG_D\(0),
	combout => \inst|reggy~31_combout\);

-- Location: LCCOMB_X23_Y13_N24
\inst|reggy~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~32_combout\ = (\inst|reggy~31_combout\) # ((\inst|reggy~9_combout\ & ((\inst|alu1|Mux15~1_combout\) # (\inst|alu1|Mux15~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux15~1_combout\,
	datab => \inst|reggy~9_combout\,
	datac => \inst|alu1|Mux15~3_combout\,
	datad => \inst|reggy~31_combout\,
	combout => \inst|reggy~32_combout\);

-- Location: LCCOMB_X21_Y13_N30
\inst|reggy~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~33_combout\ = (\inst|reggy~32_combout\) # ((\inst|reggy~9_combout\ & (\inst|alu1|Mux2~3_combout\ & \inst|alu1|unidad_aritmetica|Mux15~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy~9_combout\,
	datab => \inst|alu1|Mux2~3_combout\,
	datac => \inst|alu1|unidad_aritmetica|Mux15~4_combout\,
	datad => \inst|reggy~32_combout\,
	combout => \inst|reggy~33_combout\);

-- Location: FF_X21_Y13_N13
\inst|reggy[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~33_combout\,
	sload => VCC,
	ena => \inst|reggy[1][11]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy[1][0]~q\);

-- Location: LCCOMB_X19_Y13_N28
\inst|Mux39~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux39~0_combout\ = (\inst|MAR\(0) & (\inst|reggy[1][0]~q\)) # (!\inst|MAR\(0) & ((\inst|reggy[0][0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|reggy[1][0]~q\,
	datac => \inst|reggy[0][0]~q\,
	datad => \inst|MAR\(0),
	combout => \inst|Mux39~0_combout\);

-- Location: FF_X12_Y14_N15
\inst|REG_B[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|Mux39~0_combout\,
	sclr => \inst|MAR\(1),
	sload => VCC,
	ena => \inst|OP[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|REG_B\(0));

-- Location: LCCOMB_X21_Y12_N22
\inst|alu1|unidad_aritmetica|mult|multi1|sR:1:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi1|sR:1:sP|Suma~0_combout\ = (\inst|REG_B\(0) & (\inst|REG_A\(1) $ (((\inst|REG_B\(1) & \inst|REG_A\(0)))))) # (!\inst|REG_B\(0) & (((\inst|REG_B\(1) & \inst|REG_A\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(0),
	datab => \inst|REG_A\(1),
	datac => \inst|REG_B\(1),
	datad => \inst|REG_A\(0),
	combout => \inst|alu1|unidad_aritmetica|mult|multi1|sR:1:sP|Suma~0_combout\);

-- Location: LCCOMB_X13_Y12_N10
\inst|alu1|unidad_aritmetica|resta|sR:1:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|resta|sR:1:sP|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|resta|s0|Cout~0_combout\ $ (\inst|alu1|unidad_aritmetica|resta|s0|Cout2~0_combout\ $ (\inst|alu1|unidad_aritmetica|suma|Yop~1_combout\ $ 
-- (\inst|alu1|unidad_aritmetica|suma|Xop\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|resta|s0|Cout~0_combout\,
	datab => \inst|alu1|unidad_aritmetica|resta|s0|Cout2~0_combout\,
	datac => \inst|alu1|unidad_aritmetica|suma|Yop~1_combout\,
	datad => \inst|alu1|unidad_aritmetica|suma|Xop\(1),
	combout => \inst|alu1|unidad_aritmetica|resta|sR:1:sP|Suma~0_combout\);

-- Location: LCCOMB_X13_Y12_N12
\inst|alu1|unidad_aritmetica|suma|sR:1:sP|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|sR:1:sP|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|suma|s0|Cout~0_combout\ $ (\inst|alu1|unidad_aritmetica|suma|s0|Cout2~0_combout\ $ (\inst|alu1|unidad_aritmetica|suma|Yop~1_combout\ $ 
-- (\inst|alu1|unidad_aritmetica|suma|Xop\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|suma|s0|Cout~0_combout\,
	datab => \inst|alu1|unidad_aritmetica|suma|s0|Cout2~0_combout\,
	datac => \inst|alu1|unidad_aritmetica|suma|Yop~1_combout\,
	datad => \inst|alu1|unidad_aritmetica|suma|Xop\(1),
	combout => \inst|alu1|unidad_aritmetica|suma|sR:1:sP|Suma~0_combout\);

-- Location: LCCOMB_X21_Y12_N12
\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~24_combout\ = (\inst|alu1|Mux17~0_combout\ & (\inst|alu1|unidad_aritmetica|resta|sR:1:sP|Suma~0_combout\)) # (!\inst|alu1|Mux17~0_combout\ & 
-- ((!\inst|alu1|unidad_aritmetica|suma|sR:1:sP|Suma~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|resta|sR:1:sP|Suma~0_combout\,
	datac => \inst|alu1|unidad_aritmetica|suma|sR:1:sP|Suma~0_combout\,
	datad => \inst|alu1|Mux17~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~24_combout\);

-- Location: LCCOMB_X21_Y12_N20
\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~25_combout\ = (\inst|alu1|Mux16~0_combout\ & ((\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~24_combout\))) # (!\inst|alu1|Mux16~0_combout\ & 
-- (!\inst|alu1|unidad_aritmetica|mult|multi1|sR:1:sP|Suma~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|Mux16~0_combout\,
	datac => \inst|alu1|unidad_aritmetica|mult|multi1|sR:1:sP|Suma~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~24_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~25_combout\);

-- Location: FF_X23_Y12_N23
\inst|alu1|barrel_shifters|aux[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|REG_A\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|barrel_shifters|aux\(1));

-- Location: FF_X23_Y12_N25
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

-- Location: LCCOMB_X23_Y12_N24
\inst|alu1|Mux14~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux14~3_combout\ = (\inst|OP\(2) & \inst|alu1|barrel_shifters|salShifters\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|OP\(2),
	datac => \inst|alu1|barrel_shifters|salShifters\(1),
	combout => \inst|alu1|Mux14~3_combout\);

-- Location: FF_X21_Y9_N1
\inst|alu1|unidad_logica|aux[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|alu1|unidad_logica|aux[1]~15_combout\,
	ena => \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|unidad_logica|aux\(1));

-- Location: LCCOMB_X21_Y12_N16
\inst|alu1|unidad_logica|salida_aux~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|salida_aux~30_combout\ = (\inst|REG_A\(1) & (((\inst|alu1|Mux16~0_combout\)))) # (!\inst|REG_A\(1) & (((\inst|alu1|Mux16~0_combout\ & \inst|REG_B\(1))) # (!\inst|alu1|Mux17~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux17~0_combout\,
	datab => \inst|alu1|Mux16~0_combout\,
	datac => \inst|REG_B\(1),
	datad => \inst|REG_A\(1),
	combout => \inst|alu1|unidad_logica|salida_aux~30_combout\);

-- Location: LCCOMB_X21_Y12_N8
\inst|alu1|unidad_logica|salida_aux~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|salida_aux~31_combout\ = (\inst|alu1|unidad_logica|salida_aux~30_combout\ & (((\inst|reggy~4_combout\) # (!\inst|alu1|unidad_logica|salida_aux[14]~44_combout\)))) # (!\inst|alu1|unidad_logica|salida_aux~30_combout\ & 
-- (\inst|alu1|unidad_logica|aux\(1) & ((\inst|alu1|unidad_logica|salida_aux[14]~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_logica|aux\(1),
	datab => \inst|alu1|unidad_logica|salida_aux~30_combout\,
	datac => \inst|reggy~4_combout\,
	datad => \inst|alu1|unidad_logica|salida_aux[14]~44_combout\,
	combout => \inst|alu1|unidad_logica|salida_aux~31_combout\);

-- Location: FF_X21_Y12_N9
\inst|alu1|unidad_logica|salida_aux[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|alu1|unidad_logica|salida_aux~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|unidad_logica|salida_aux\(1));

-- Location: LCCOMB_X22_Y12_N8
\inst|alu1|comparador|comp3|eout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|comparador|comp3|eout~0_combout\ = (\inst|alu1|comparador|comparaP:14:comp|gout~0_combout\) # ((\inst|alu1|comparador|comparaP:14:comp|lout~0_combout\) # (\inst|REG_B\(15) $ (\inst|REG_A\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|comparador|comparaP:14:comp|gout~0_combout\,
	datab => \inst|REG_B\(15),
	datac => \inst|alu1|comparador|comparaP:14:comp|lout~0_combout\,
	datad => \inst|REG_A\(15),
	combout => \inst|alu1|comparador|comp3|eout~0_combout\);

-- Location: LCCOMB_X21_Y12_N18
\inst|alu1|Mux14~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux14~4_combout\ = (\inst|alu1|Mux16~0_combout\ & (((\inst|alu1|unidad_aritmetica|suma|sR:1:sP|Suma~0_combout\) # (\inst|alu1|Mux17~0_combout\)))) # (!\inst|alu1|Mux16~0_combout\ & 
-- (\inst|alu1|unidad_aritmetica|mult|multi1|sR:1:sP|Suma~0_combout\ & ((!\inst|alu1|Mux17~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|multi1|sR:1:sP|Suma~0_combout\,
	datab => \inst|alu1|Mux16~0_combout\,
	datac => \inst|alu1|unidad_aritmetica|suma|sR:1:sP|Suma~0_combout\,
	datad => \inst|alu1|Mux17~0_combout\,
	combout => \inst|alu1|Mux14~4_combout\);

-- Location: LCCOMB_X21_Y12_N24
\inst|alu1|Mux14~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux14~5_combout\ = (\inst|alu1|Mux17~0_combout\ & ((\inst|alu1|Mux14~4_combout\ & ((!\inst|alu1|unidad_aritmetica|resta|sR:1:sP|Suma~0_combout\))) # (!\inst|alu1|Mux14~4_combout\ & (!\inst|alu1|unidad_aritmetica|divi|LessThan6~28_combout\)))) # 
-- (!\inst|alu1|Mux17~0_combout\ & (\inst|alu1|Mux14~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux17~0_combout\,
	datab => \inst|alu1|Mux14~4_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|LessThan6~28_combout\,
	datad => \inst|alu1|unidad_aritmetica|resta|sR:1:sP|Suma~0_combout\,
	combout => \inst|alu1|Mux14~5_combout\);

-- Location: LCCOMB_X21_Y12_N10
\inst|alu1|Mux14~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux14~6_combout\ = (\inst|alu1|Mux14~2_combout\ & (\inst|alu1|Mux14~1_combout\ & ((\inst|alu1|Mux14~5_combout\)))) # (!\inst|alu1|Mux14~2_combout\ & (((!\inst|alu1|comparador|comp3|eout~0_combout\)) # (!\inst|alu1|Mux14~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux14~2_combout\,
	datab => \inst|alu1|Mux14~1_combout\,
	datac => \inst|alu1|comparador|comp3|eout~0_combout\,
	datad => \inst|alu1|Mux14~5_combout\,
	combout => \inst|alu1|Mux14~6_combout\);

-- Location: LCCOMB_X21_Y12_N28
\inst|alu1|Mux14~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux14~7_combout\ = (\inst|alu1|Mux14~0_combout\ & (((\inst|alu1|Mux14~6_combout\)))) # (!\inst|alu1|Mux14~0_combout\ & ((\inst|alu1|Mux14~6_combout\ & (\inst|alu1|Mux14~3_combout\)) # (!\inst|alu1|Mux14~6_combout\ & 
-- ((\inst|alu1|unidad_logica|salida_aux\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux14~0_combout\,
	datab => \inst|alu1|Mux14~3_combout\,
	datac => \inst|alu1|unidad_logica|salida_aux\(1),
	datad => \inst|alu1|Mux14~6_combout\,
	combout => \inst|alu1|Mux14~7_combout\);

-- Location: LCCOMB_X21_Y12_N30
\inst|alu1|Mux14~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux14~8_combout\ = (\inst|alu1|Mux13~5_combout\ & (\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~29_combout\)) # (!\inst|alu1|Mux13~5_combout\ & ((\inst|alu1|Mux14~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~29_combout\,
	datac => \inst|alu1|Mux13~5_combout\,
	datad => \inst|alu1|Mux14~7_combout\,
	combout => \inst|alu1|Mux14~8_combout\);

-- Location: LCCOMB_X24_Y14_N20
\inst|reggu[0][0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggu[0][0]~2_combout\ = (\inst|Equal6~0_combout\ & (\inst|enable~q\ & (\rst~input_o\ & \inst|pr_state.state2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal6~0_combout\,
	datab => \inst|enable~q\,
	datac => \rst~input_o\,
	datad => \inst|pr_state.state2~q\,
	combout => \inst|reggu[0][0]~2_combout\);

-- Location: FF_X21_Y12_N31
\inst|reggu[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|alu1|Mux14~8_combout\,
	ena => \inst|reggu[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggu[0][1]~q\);

-- Location: LCCOMB_X23_Y13_N12
\inst|alu1|Mux15~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux15~4_combout\ = (\inst|alu1|Mux15~1_combout\) # ((\inst|alu1|Mux15~3_combout\) # ((\inst|alu1|Mux2~3_combout\ & \inst|alu1|unidad_aritmetica|Mux15~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux15~1_combout\,
	datab => \inst|alu1|Mux2~3_combout\,
	datac => \inst|alu1|unidad_aritmetica|Mux15~4_combout\,
	datad => \inst|alu1|Mux15~3_combout\,
	combout => \inst|alu1|Mux15~4_combout\);

-- Location: FF_X23_Y13_N13
\inst|reggu[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|alu1|Mux15~4_combout\,
	ena => \inst|reggu[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggu[0][0]~q\);

-- Location: LCCOMB_X23_Y14_N26
\inst|OFFSET[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|OFFSET[1]~0_combout\ = (\inst|MAR\(0) & (((\inst|reggu[0][0]~q\)))) # (!\inst|MAR\(0) & ((\inst|reggu[0][1]~q\) # ((!\inst|MAR\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggu[0][1]~q\,
	datab => \inst|MAR\(1),
	datac => \inst|MAR\(0),
	datad => \inst|reggu[0][0]~q\,
	combout => \inst|OFFSET[1]~0_combout\);

-- Location: LCCOMB_X22_Y14_N16
\inst|Selector32~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector32~0_combout\ = (\inst|OFFSET[1]~0_combout\ & (!\inst|MAR\(4))) # (!\inst|OFFSET[1]~0_combout\ & ((\inst|PC\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|MAR\(4),
	datac => \inst|PC\(0),
	datad => \inst|OFFSET[1]~0_combout\,
	combout => \inst|Selector32~0_combout\);

-- Location: LCCOMB_X24_Y14_N14
\inst|OFFSET[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|OFFSET[3]~1_combout\ = (\inst|reggy[1][11]~5_combout\ & (\inst|pr_state.state0~q\ & (\inst|Equal7~0_combout\ & !\inst|pr_state.state3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy[1][11]~5_combout\,
	datab => \inst|pr_state.state0~q\,
	datac => \inst|Equal7~0_combout\,
	datad => \inst|pr_state.state3~q\,
	combout => \inst|OFFSET[3]~1_combout\);

-- Location: FF_X22_Y14_N17
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
	ena => \inst|OFFSET[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|OFFSET\(0));

-- Location: LCCOMB_X24_Y14_N30
\inst|PC[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|PC[3]~6_combout\ = (\inst|enable~q\ & (!\inst|pr_state.state1~q\ & ((\inst|Equal7~0_combout\) # (!\inst|pr_state.state2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pr_state.state2~q\,
	datab => \inst|enable~q\,
	datac => \inst|pr_state.state1~q\,
	datad => \inst|Equal7~0_combout\,
	combout => \inst|PC[3]~6_combout\);

-- Location: FF_X23_Y14_N15
\inst|PC[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|PC[0]~4_combout\,
	asdata => \inst|OFFSET\(0),
	clrn => \rst~inputclkctrl_outclk\,
	sclr => \inst|pr_state.state3~q\,
	sload => \inst|pr_state.state2~q\,
	ena => \inst|PC[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC\(0));

-- Location: LCCOMB_X23_Y14_N16
\inst|PC[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|PC[1]~7_combout\ = (\inst|PC\(1) & (!\inst|PC[0]~5\)) # (!\inst|PC\(1) & ((\inst|PC[0]~5\) # (GND)))
-- \inst|PC[1]~8\ = CARRY((!\inst|PC[0]~5\) # (!\inst|PC\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|PC\(1),
	datad => VCC,
	cin => \inst|PC[0]~5\,
	combout => \inst|PC[1]~7_combout\,
	cout => \inst|PC[1]~8\);

-- Location: LCCOMB_X22_Y14_N6
\inst|Selector31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector31~0_combout\ = (\inst|OFFSET[1]~0_combout\ & ((!\inst|MAR\(4)))) # (!\inst|OFFSET[1]~0_combout\ & (\inst|PC\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|OFFSET[1]~0_combout\,
	datac => \inst|PC\(1),
	datad => \inst|MAR\(4),
	combout => \inst|Selector31~0_combout\);

-- Location: FF_X22_Y14_N7
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
	ena => \inst|OFFSET[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|OFFSET\(1));

-- Location: FF_X23_Y14_N17
\inst|PC[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|PC[1]~7_combout\,
	asdata => \inst|OFFSET\(1),
	clrn => \rst~inputclkctrl_outclk\,
	sclr => \inst|pr_state.state3~q\,
	sload => \inst|pr_state.state2~q\,
	ena => \inst|PC[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC\(1));

-- Location: LCCOMB_X23_Y14_N18
\inst|PC[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|PC[2]~9_combout\ = (\inst|PC\(2) & (\inst|PC[1]~8\ $ (GND))) # (!\inst|PC\(2) & (!\inst|PC[1]~8\ & VCC))
-- \inst|PC[2]~10\ = CARRY((\inst|PC\(2) & !\inst|PC[1]~8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|PC\(2),
	datad => VCC,
	cin => \inst|PC[1]~8\,
	combout => \inst|PC[2]~9_combout\,
	cout => \inst|PC[2]~10\);

-- Location: LCCOMB_X22_Y14_N4
\inst|Selector30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector30~0_combout\ = (\inst|OFFSET[1]~0_combout\ & ((!\inst|MAR\(4)))) # (!\inst|OFFSET[1]~0_combout\ & (\inst|PC\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|OFFSET[1]~0_combout\,
	datac => \inst|PC\(2),
	datad => \inst|MAR\(4),
	combout => \inst|Selector30~0_combout\);

-- Location: FF_X22_Y14_N5
\inst|OFFSET[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Selector30~0_combout\,
	sclr => \inst|pr_state.state2~q\,
	ena => \inst|OFFSET[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|OFFSET\(2));

-- Location: FF_X23_Y14_N19
\inst|PC[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|PC[2]~9_combout\,
	asdata => \inst|OFFSET\(2),
	clrn => \rst~inputclkctrl_outclk\,
	sclr => \inst|pr_state.state3~q\,
	sload => \inst|pr_state.state2~q\,
	ena => \inst|PC[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC\(2));

-- Location: LCCOMB_X23_Y14_N20
\inst|PC[3]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|PC[3]~11_combout\ = \inst|PC[2]~10\ $ (\inst|PC\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|PC\(3),
	cin => \inst|PC[2]~10\,
	combout => \inst|PC[3]~11_combout\);

-- Location: LCCOMB_X22_Y14_N26
\inst|Selector29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector29~0_combout\ = (\inst|OFFSET[1]~0_combout\ & (!\inst|MAR\(4))) # (!\inst|OFFSET[1]~0_combout\ & ((\inst|PC\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|MAR\(4),
	datac => \inst|PC\(3),
	datad => \inst|OFFSET[1]~0_combout\,
	combout => \inst|Selector29~0_combout\);

-- Location: FF_X22_Y14_N27
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
	ena => \inst|OFFSET[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|OFFSET\(3));

-- Location: FF_X23_Y14_N21
\inst|PC[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|PC[3]~11_combout\,
	asdata => \inst|OFFSET\(3),
	clrn => \rst~inputclkctrl_outclk\,
	sclr => \inst|pr_state.state3~q\,
	sload => \inst|pr_state.state2~q\,
	ena => \inst|PC[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC\(3));

-- Location: LCCOMB_X23_Y14_N6
\inst|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux1~0_combout\ = (\inst|PC\(3) & (\inst|PC\(0) & (\inst|PC\(2) $ (!\inst|PC\(1))))) # (!\inst|PC\(3) & (((\inst|PC\(2) & !\inst|PC\(0))) # (!\inst|PC\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010001110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC\(3),
	datab => \inst|PC\(2),
	datac => \inst|PC\(0),
	datad => \inst|PC\(1),
	combout => \inst|Mux1~0_combout\);

-- Location: FF_X23_Y14_N7
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

-- Location: FF_X22_Y9_N13
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
	ena => \inst|OP[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|OP\(2));

-- Location: LCCOMB_X22_Y9_N30
\inst|alu1|Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux2~3_combout\ = (\inst|OP\(2) & (\inst|OP\(0) & (!\inst|OP\(3) & \inst|OP\(1)))) # (!\inst|OP\(2) & (\inst|OP\(3) & ((!\inst|OP\(1)) # (!\inst|OP\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|OP\(2),
	datab => \inst|OP\(0),
	datac => \inst|OP\(3),
	datad => \inst|OP\(1),
	combout => \inst|alu1|Mux2~3_combout\);

-- Location: FF_X21_Y9_N21
\inst|alu1|unidad_logica|aux[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|alu1|unidad_logica|aux[11]~35_combout\,
	ena => \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|unidad_logica|aux\(11));

-- Location: LCCOMB_X18_Y9_N22
\inst|alu1|unidad_logica|salida_aux~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|salida_aux~4_combout\ = (\inst|REG_A\(11) & (((\inst|alu1|Mux16~0_combout\)))) # (!\inst|REG_A\(11) & (((\inst|REG_B\(11) & \inst|alu1|Mux16~0_combout\)) # (!\inst|alu1|Mux17~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(11),
	datab => \inst|alu1|Mux17~0_combout\,
	datac => \inst|alu1|Mux16~0_combout\,
	datad => \inst|REG_A\(11),
	combout => \inst|alu1|unidad_logica|salida_aux~4_combout\);

-- Location: LCCOMB_X18_Y9_N16
\inst|alu1|unidad_logica|salida_aux~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|salida_aux~5_combout\ = (\inst|alu1|unidad_logica|salida_aux[14]~44_combout\ & ((\inst|alu1|unidad_logica|salida_aux~4_combout\ & ((\inst|reggy~6_combout\))) # (!\inst|alu1|unidad_logica|salida_aux~4_combout\ & 
-- (\inst|alu1|unidad_logica|aux\(11))))) # (!\inst|alu1|unidad_logica|salida_aux[14]~44_combout\ & (((\inst|alu1|unidad_logica|salida_aux~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_logica|aux\(11),
	datab => \inst|alu1|unidad_logica|salida_aux[14]~44_combout\,
	datac => \inst|alu1|unidad_logica|salida_aux~4_combout\,
	datad => \inst|reggy~6_combout\,
	combout => \inst|alu1|unidad_logica|salida_aux~5_combout\);

-- Location: FF_X18_Y9_N17
\inst|alu1|unidad_logica|salida_aux[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|alu1|unidad_logica|salida_aux~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|unidad_logica|salida_aux\(11));

-- Location: FF_X18_Y9_N5
\inst|alu1|barrel_shifters|aux[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|REG_A\(10),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|barrel_shifters|aux\(11));

-- Location: FF_X18_Y9_N11
\inst|alu1|barrel_shifters|salShifters[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|alu1|barrel_shifters|aux\(11),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|barrel_shifters|salShifters\(11));

-- Location: LCCOMB_X18_Y9_N10
\inst|alu1|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux4~0_combout\ = (\inst|alu1|Mux2~2_combout\ & (((\inst|alu1|unidad_logica|salida_aux\(11))))) # (!\inst|alu1|Mux2~2_combout\ & (\inst|OP\(2) & ((\inst|alu1|barrel_shifters|salShifters\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|OP\(2),
	datab => \inst|alu1|unidad_logica|salida_aux\(11),
	datac => \inst|alu1|barrel_shifters|salShifters\(11),
	datad => \inst|alu1|Mux2~2_combout\,
	combout => \inst|alu1|Mux4~0_combout\);

-- Location: LCCOMB_X18_Y9_N24
\inst|alu1|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux4~1_combout\ = (!\inst|alu1|Mux2~3_combout\ & ((\inst|OP\(3) & (\inst|OP\(2))) # (!\inst|OP\(3) & ((\inst|alu1|Mux4~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|OP\(3),
	datab => \inst|OP\(2),
	datac => \inst|alu1|Mux2~3_combout\,
	datad => \inst|alu1|Mux4~0_combout\,
	combout => \inst|alu1|Mux4~1_combout\);

-- Location: LCCOMB_X18_Y8_N22
\inst|alu1|Mux4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux4~2_combout\ = (\inst|alu1|Mux2~10_combout\ & (((\inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~49_combout\) # (!\inst|alu1|Mux2~6_combout\)))) # (!\inst|alu1|Mux2~10_combout\ & 
-- (\inst|alu1|unidad_aritmetica|mult|multi7|sR:11:sP|Suma~0_combout\ & ((\inst|alu1|Mux2~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|multi7|sR:11:sP|Suma~0_combout\,
	datab => \inst|alu1|unidad_aritmetica|mult|multi7|negativo|Add0~49_combout\,
	datac => \inst|alu1|Mux2~10_combout\,
	datad => \inst|alu1|Mux2~6_combout\,
	combout => \inst|alu1|Mux4~2_combout\);

-- Location: LCCOMB_X18_Y8_N0
\inst|alu1|Mux4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux4~3_combout\ = (\inst|alu1|Mux4~2_combout\ & (((!\inst|alu1|Mux2~5_combout\)) # (!\inst|alu1|unidad_aritmetica|resta|sR:11:sP|Suma~0_combout\))) # (!\inst|alu1|Mux4~2_combout\ & (((\inst|alu1|unidad_aritmetica|suma|sR:11:sP|Suma~0_combout\ & 
-- \inst|alu1|Mux2~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux4~2_combout\,
	datab => \inst|alu1|unidad_aritmetica|resta|sR:11:sP|Suma~0_combout\,
	datac => \inst|alu1|unidad_aritmetica|suma|sR:11:sP|Suma~0_combout\,
	datad => \inst|alu1|Mux2~5_combout\,
	combout => \inst|alu1|Mux4~3_combout\);

-- Location: LCCOMB_X18_Y9_N4
\inst|alu1|Mux4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux4~4_combout\ = (\inst|alu1|Mux4~1_combout\) # ((\inst|alu1|Mux2~3_combout\ & \inst|alu1|Mux4~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux2~3_combout\,
	datab => \inst|alu1|Mux4~1_combout\,
	datad => \inst|alu1|Mux4~3_combout\,
	combout => \inst|alu1|Mux4~4_combout\);

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


