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

-- DATE "11/24/2022 23:26:36"

-- 
-- Device: Altera EP4CE6E22C8 Package TQFP144
-- 

-- 
-- This VHDL file should be used for Active-HDL (VHDL) only
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
	R : OUT std_logic_vector(15 DOWNTO 0)
	);
END practica2;

-- Design Ports Information
-- sign_flag	=>  Location: PIN_58,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
-- R[15]	=>  Location: PIN_115,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[14]	=>  Location: PIN_65,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[13]	=>  Location: PIN_73,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[12]	=>  Location: PIN_103,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[11]	=>  Location: PIN_98,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[10]	=>  Location: PIN_66,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[9]	=>  Location: PIN_105,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[8]	=>  Location: PIN_87,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[7]	=>  Location: PIN_84,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[6]	=>  Location: PIN_104,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[5]	=>  Location: PIN_85,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[4]	=>  Location: PIN_99,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[3]	=>  Location: PIN_106,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[2]	=>  Location: PIN_100,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[1]	=>  Location: PIN_112,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[0]	=>  Location: PIN_127,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
SIGNAL \ecuacion[1]~input_o\ : std_logic;
SIGNAL \ecuacion[0]~input_o\ : std_logic;
SIGNAL \inst|pr_state~11_combout\ : std_logic;
SIGNAL \inst|LessThan2~0_combout\ : std_logic;
SIGNAL \inst|LessThan2~1_combout\ : std_logic;
SIGNAL \inst|Mux43~0_combout\ : std_logic;
SIGNAL \inst|LessThan1~0_combout\ : std_logic;
SIGNAL \inst|LessThan0~0_combout\ : std_logic;
SIGNAL \inst|salida[3]~12_combout\ : std_logic;
SIGNAL \inst|salida[3]~13_combout\ : std_logic;
SIGNAL \inst|Add0~16\ : std_logic;
SIGNAL \inst|Add0~18_combout\ : std_logic;
SIGNAL \inst|PC[6]~11_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \inst|Add0~19\ : std_logic;
SIGNAL \inst|Add0~20_combout\ : std_logic;
SIGNAL \inst|PC[7]~10_combout\ : std_logic;
SIGNAL \inst|Add0~21\ : std_logic;
SIGNAL \inst|Add0~22_combout\ : std_logic;
SIGNAL \inst|PC[8]~9_combout\ : std_logic;
SIGNAL \inst|Add0~23\ : std_logic;
SIGNAL \inst|Add0~24_combout\ : std_logic;
SIGNAL \inst|PC[9]~8_combout\ : std_logic;
SIGNAL \inst|Add0~25\ : std_logic;
SIGNAL \inst|Add0~26_combout\ : std_logic;
SIGNAL \inst|PC[10]~7_combout\ : std_logic;
SIGNAL \inst|LessThan0~1_combout\ : std_logic;
SIGNAL \inst|LessThan0~2_combout\ : std_logic;
SIGNAL \inst|pr_state~10_combout\ : std_logic;
SIGNAL \inst|PC[13]~2_combout\ : std_logic;
SIGNAL \inst|PC[13]~3_combout\ : std_logic;
SIGNAL \inst|pr_state~12_combout\ : std_logic;
SIGNAL \inst|LessThan1~1_combout\ : std_logic;
SIGNAL \inst|Selector0~0_combout\ : std_logic;
SIGNAL \inst|LessThan0~3_combout\ : std_logic;
SIGNAL \inst|Selector0~1_combout\ : std_logic;
SIGNAL \inst|Selector0~2_combout\ : std_logic;
SIGNAL \inst|Selector0~3_combout\ : std_logic;
SIGNAL \inst|pr_state.state0~q\ : std_logic;
SIGNAL \inst|MAR[4]~7_combout\ : std_logic;
SIGNAL \inst|PC[13]~4_combout\ : std_logic;
SIGNAL \inst|Add0~27\ : std_logic;
SIGNAL \inst|Add0~28_combout\ : std_logic;
SIGNAL \inst|PC[11]~6_combout\ : std_logic;
SIGNAL \inst|Add0~29\ : std_logic;
SIGNAL \inst|Add0~30_combout\ : std_logic;
SIGNAL \inst|PC[12]~5_combout\ : std_logic;
SIGNAL \inst|Add0~31\ : std_logic;
SIGNAL \inst|Add0~32_combout\ : std_logic;
SIGNAL \inst|PC[13]~12_combout\ : std_logic;
SIGNAL \inst|PC[9]~0_combout\ : std_logic;
SIGNAL \inst|PC[9]~1_combout\ : std_logic;
SIGNAL \inst|Add0~0_combout\ : std_logic;
SIGNAL \inst|Add0~8_combout\ : std_logic;
SIGNAL \inst|Add0~1\ : std_logic;
SIGNAL \inst|Add0~2_combout\ : std_logic;
SIGNAL \inst|Add0~7_combout\ : std_logic;
SIGNAL \inst|Add0~3\ : std_logic;
SIGNAL \inst|Add0~4_combout\ : std_logic;
SIGNAL \inst|Add0~6_combout\ : std_logic;
SIGNAL \inst|Add0~5\ : std_logic;
SIGNAL \inst|Add0~9_combout\ : std_logic;
SIGNAL \inst|Add0~11_combout\ : std_logic;
SIGNAL \inst|Add0~10\ : std_logic;
SIGNAL \inst|Add0~12_combout\ : std_logic;
SIGNAL \inst|Add0~14_combout\ : std_logic;
SIGNAL \inst|Add0~13\ : std_logic;
SIGNAL \inst|Add0~15_combout\ : std_logic;
SIGNAL \inst|Add0~17_combout\ : std_logic;
SIGNAL \inst|pr_state~13_combout\ : std_logic;
SIGNAL \inst|pr_state~14_combout\ : std_logic;
SIGNAL \inst|pr_state~15_combout\ : std_logic;
SIGNAL \inst|pr_state.state1~q\ : std_logic;
SIGNAL \inst|pr_state.state2~q\ : std_logic;
SIGNAL \inst|Mux48~1_combout\ : std_logic;
SIGNAL \inst|Mux39~3_combout\ : std_logic;
SIGNAL \inst|MAR[0]~4_combout\ : std_logic;
SIGNAL \inst|Mux48~2_combout\ : std_logic;
SIGNAL \inst|Mux48~3_combout\ : std_logic;
SIGNAL \inst|MAR[4]~8_combout\ : std_logic;
SIGNAL \inst|Mux47~2_combout\ : std_logic;
SIGNAL \inst|Mux39~4_combout\ : std_logic;
SIGNAL \inst|MAR[1]~3_combout\ : std_logic;
SIGNAL \inst|Mux47~3_combout\ : std_logic;
SIGNAL \inst|Mux47~5_combout\ : std_logic;
SIGNAL \inst|Mux46~0_combout\ : std_logic;
SIGNAL \inst|MAR[2]~5_combout\ : std_logic;
SIGNAL \inst|Mux45~0_combout\ : std_logic;
SIGNAL \inst|Mux46~1_combout\ : std_logic;
SIGNAL \inst|Mux45~1_combout\ : std_logic;
SIGNAL \inst|Mux47~4_combout\ : std_logic;
SIGNAL \inst|MAR[3]~6_combout\ : std_logic;
SIGNAL \inst|Mux45~2_combout\ : std_logic;
SIGNAL \inst|Mux49~0_combout\ : std_logic;
SIGNAL \inst|Mux41~1_combout\ : std_logic;
SIGNAL \inst|Mux41~0_combout\ : std_logic;
SIGNAL \inst|Mux41~2_combout\ : std_logic;
SIGNAL \inst|Mux38~3_combout\ : std_logic;
SIGNAL \inst|Mux38~0_combout\ : std_logic;
SIGNAL \inst|Mux38~1_combout\ : std_logic;
SIGNAL \inst|Mux38~2_combout\ : std_logic;
SIGNAL \inst|Mux38~4_combout\ : std_logic;
SIGNAL \inst|Mux2~0_combout\ : std_logic;
SIGNAL \inst|Mux2~1_combout\ : std_logic;
SIGNAL \inst|Mux48~0_combout\ : std_logic;
SIGNAL \inst|Mux39~0_combout\ : std_logic;
SIGNAL \inst|MAR[10]~2_combout\ : std_logic;
SIGNAL \inst|Mux39~1_combout\ : std_logic;
SIGNAL \inst|Mux39~2_combout\ : std_logic;
SIGNAL \inst|Equal0~0_combout\ : std_logic;
SIGNAL \inst|REG_D[9]~0_combout\ : std_logic;
SIGNAL \inst|OP[2]~0_combout\ : std_logic;
SIGNAL \inst|reggy~22_combout\ : std_logic;
SIGNAL \inst|reggy~37_combout\ : std_logic;
SIGNAL \inst|reggy~38_combout\ : std_logic;
SIGNAL \inst|Mux43~2_combout\ : std_logic;
SIGNAL \inst|Mux43~1_combout\ : std_logic;
SIGNAL \inst|MAR[5]~0_combout\ : std_logic;
SIGNAL \inst|Mux43~3_combout\ : std_logic;
SIGNAL \inst|Mux43~4_combout\ : std_logic;
SIGNAL \inst|flag~2_combout\ : std_logic;
SIGNAL \inst|Mux44~1_combout\ : std_logic;
SIGNAL \inst|Mux44~0_combout\ : std_logic;
SIGNAL \inst|MAR[4]~1_combout\ : std_logic;
SIGNAL \inst|Mux44~2_combout\ : std_logic;
SIGNAL \inst|Mux44~3_combout\ : std_logic;
SIGNAL \inst|Mux4~0_combout\ : std_logic;
SIGNAL \inst|Decoder0~7_combout\ : std_logic;
SIGNAL \inst|reggy[7][9]~q\ : std_logic;
SIGNAL \inst|Decoder0~4_combout\ : std_logic;
SIGNAL \inst|reggy[5][9]~q\ : std_logic;
SIGNAL \inst|Decoder0~6_combout\ : std_logic;
SIGNAL \inst|reggy[4][9]~q\ : std_logic;
SIGNAL \inst|Decoder0~5_combout\ : std_logic;
SIGNAL \inst|reggy[6][9]~q\ : std_logic;
SIGNAL \inst|Mux55~0_combout\ : std_logic;
SIGNAL \inst|Mux55~1_combout\ : std_logic;
SIGNAL \inst|Decoder0~3_combout\ : std_logic;
SIGNAL \inst|reggy[3][9]~q\ : std_logic;
SIGNAL \inst|Decoder0~1_combout\ : std_logic;
SIGNAL \inst|reggy[1][9]~q\ : std_logic;
SIGNAL \inst|Decoder0~2_combout\ : std_logic;
SIGNAL \inst|reggy[0][9]~q\ : std_logic;
SIGNAL \inst|Mux55~2_combout\ : std_logic;
SIGNAL \inst|Mux55~3_combout\ : std_logic;
SIGNAL \inst|Mux55~4_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|salida[9]~33_combout\ : std_logic;
SIGNAL \inst|alu1|Mux10~1_combout\ : std_logic;
SIGNAL \inst|reggy~29_combout\ : std_logic;
SIGNAL \inst|reggy[1][7]~q\ : std_logic;
SIGNAL \inst|reggy[0][7]~feeder_combout\ : std_logic;
SIGNAL \inst|reggy[0][7]~q\ : std_logic;
SIGNAL \inst|Mux57~2_combout\ : std_logic;
SIGNAL \inst|Decoder0~0_combout\ : std_logic;
SIGNAL \inst|reggy[2][7]~q\ : std_logic;
SIGNAL \inst|reggy[3][7]~q\ : std_logic;
SIGNAL \inst|Mux57~3_combout\ : std_logic;
SIGNAL \inst|reggy[4][7]~q\ : std_logic;
SIGNAL \inst|Mux57~0_combout\ : std_logic;
SIGNAL \inst|reggy[5][7]~q\ : std_logic;
SIGNAL \inst|reggy[7][7]~q\ : std_logic;
SIGNAL \inst|Mux57~1_combout\ : std_logic;
SIGNAL \inst|Mux57~4_combout\ : std_logic;
SIGNAL \inst|alu1|Mux11~0_combout\ : std_logic;
SIGNAL \inst|alu1|Mux10~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|salida~11_combout\ : std_logic;
SIGNAL \inst|reggy~35_combout\ : std_logic;
SIGNAL \inst|reggy~42_combout\ : std_logic;
SIGNAL \inst|Mux54~0_combout\ : std_logic;
SIGNAL \inst|reggy[6][0]~q\ : std_logic;
SIGNAL \inst|reggy[4][0]~q\ : std_logic;
SIGNAL \inst|Mux64~0_combout\ : std_logic;
SIGNAL \inst|reggy[5][0]~q\ : std_logic;
SIGNAL \inst|reggy[7][0]~q\ : std_logic;
SIGNAL \inst|Mux64~1_combout\ : std_logic;
SIGNAL \inst|reggy[0][0]~feeder_combout\ : std_logic;
SIGNAL \inst|reggy[0][0]~q\ : std_logic;
SIGNAL \inst|reggy[1][0]~q\ : std_logic;
SIGNAL \inst|Mux64~2_combout\ : std_logic;
SIGNAL \inst|reggy[3][0]~q\ : std_logic;
SIGNAL \inst|Mux64~3_combout\ : std_logic;
SIGNAL \inst|Mux64~4_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|aux[0]~9_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|salida~4_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|salida~6_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|salida~7_combout\ : std_logic;
SIGNAL \inst|reggy~12_combout\ : std_logic;
SIGNAL \inst|reggy~13_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~31_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~4_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~5_combout\ : std_logic;
SIGNAL \inst|reggy[3][5]~q\ : std_logic;
SIGNAL \inst|reggy[0][5]~feeder_combout\ : std_logic;
SIGNAL \inst|reggy[0][5]~q\ : std_logic;
SIGNAL \inst|reggy[1][5]~q\ : std_logic;
SIGNAL \inst|Mux59~2_combout\ : std_logic;
SIGNAL \inst|Mux59~3_combout\ : std_logic;
SIGNAL \inst|reggy[4][5]~q\ : std_logic;
SIGNAL \inst|reggy[6][5]~q\ : std_logic;
SIGNAL \inst|Mux59~0_combout\ : std_logic;
SIGNAL \inst|reggy[5][5]~q\ : std_logic;
SIGNAL \inst|reggy[7][5]~q\ : std_logic;
SIGNAL \inst|Mux59~1_combout\ : std_logic;
SIGNAL \inst|Mux59~4_combout\ : std_logic;
SIGNAL \inst|reggy[2][4]~q\ : std_logic;
SIGNAL \inst|reggy[3][4]~q\ : std_logic;
SIGNAL \inst|reggy[1][4]~q\ : std_logic;
SIGNAL \inst|reggy[0][4]~feeder_combout\ : std_logic;
SIGNAL \inst|reggy[0][4]~q\ : std_logic;
SIGNAL \inst|Mux70~0_combout\ : std_logic;
SIGNAL \inst|Mux70~1_combout\ : std_logic;
SIGNAL \inst|reggy[7][4]~q\ : std_logic;
SIGNAL \inst|reggy[6][4]~q\ : std_logic;
SIGNAL \inst|Mux70~2_combout\ : std_logic;
SIGNAL \inst|reggy[5][4]~q\ : std_logic;
SIGNAL \inst|Mux70~3_combout\ : std_logic;
SIGNAL \inst|salida[4]~7_combout\ : std_logic;
SIGNAL \inst|reggy[6][3]~q\ : std_logic;
SIGNAL \inst|reggy[4][3]~q\ : std_logic;
SIGNAL \inst|Mux61~0_combout\ : std_logic;
SIGNAL \inst|reggy[5][3]~q\ : std_logic;
SIGNAL \inst|reggy[7][3]~q\ : std_logic;
SIGNAL \inst|Mux61~1_combout\ : std_logic;
SIGNAL \inst|reggy[1][3]~q\ : std_logic;
SIGNAL \inst|reggy[0][3]~feeder_combout\ : std_logic;
SIGNAL \inst|reggy[0][3]~q\ : std_logic;
SIGNAL \inst|Mux61~2_combout\ : std_logic;
SIGNAL \inst|reggy[3][3]~q\ : std_logic;
SIGNAL \inst|Mux61~3_combout\ : std_logic;
SIGNAL \inst|Mux61~4_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|salida~21_combout\ : std_logic;
SIGNAL \inst|reggy[6][1]~q\ : std_logic;
SIGNAL \inst|reggy[4][1]~feeder_combout\ : std_logic;
SIGNAL \inst|reggy[4][1]~q\ : std_logic;
SIGNAL \inst|Mux73~2_combout\ : std_logic;
SIGNAL \inst|reggy[7][1]~q\ : std_logic;
SIGNAL \inst|reggy[5][1]~q\ : std_logic;
SIGNAL \inst|Mux73~3_combout\ : std_logic;
SIGNAL \inst|reggy[1][1]~q\ : std_logic;
SIGNAL \inst|reggy[0][1]~feeder_combout\ : std_logic;
SIGNAL \inst|reggy[0][1]~q\ : std_logic;
SIGNAL \inst|Mux73~0_combout\ : std_logic;
SIGNAL \inst|reggy[3][1]~q\ : std_logic;
SIGNAL \inst|Mux73~1_combout\ : std_logic;
SIGNAL \inst|salida[1]~4_combout\ : std_logic;
SIGNAL \inst|REG_A[1]~feeder_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|aux[1]~11\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|aux[2]~12_combout\ : std_logic;
SIGNAL \inst|reggy[4][2]~q\ : std_logic;
SIGNAL \inst|reggy[6][2]~q\ : std_logic;
SIGNAL \inst|Mux62~0_combout\ : std_logic;
SIGNAL \inst|reggy[7][2]~q\ : std_logic;
SIGNAL \inst|Mux62~1_combout\ : std_logic;
SIGNAL \inst|reggy[0][2]~feeder_combout\ : std_logic;
SIGNAL \inst|reggy[0][2]~q\ : std_logic;
SIGNAL \inst|reggy[1][2]~q\ : std_logic;
SIGNAL \inst|Mux62~2_combout\ : std_logic;
SIGNAL \inst|reggy[3][2]~q\ : std_logic;
SIGNAL \inst|reggy[2][2]~q\ : std_logic;
SIGNAL \inst|Mux62~3_combout\ : std_logic;
SIGNAL \inst|Mux62~4_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|salida~18_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|salida~19_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|salida~20_combout\ : std_logic;
SIGNAL \inst|alu1|barrel_shifters|aux[2]~feeder_combout\ : std_logic;
SIGNAL \inst|reggy~45_combout\ : std_logic;
SIGNAL \inst|reggy~46_combout\ : std_logic;
SIGNAL \inst|Mux52~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|s1|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|s1|Cout2~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|s0|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|s1|Cout~1_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|s2|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|s2|Suma~1_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|salida~5_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi1|s1|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi2|s2|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~13_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi1|s1|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|Yop[1]~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|s1|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~14_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~6\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~16\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~17_combout\ : std_logic;
SIGNAL \inst|reggy~31_combout\ : std_logic;
SIGNAL \inst|reggy~49_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan0~1_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add0~1\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add0~4\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add0~5_combout\ : std_logic;
SIGNAL \inst|reggy[4][6]~q\ : std_logic;
SIGNAL \inst|reggy[6][6]~q\ : std_logic;
SIGNAL \inst|Mux58~0_combout\ : std_logic;
SIGNAL \inst|reggy[5][6]~q\ : std_logic;
SIGNAL \inst|reggy[7][6]~q\ : std_logic;
SIGNAL \inst|Mux58~1_combout\ : std_logic;
SIGNAL \inst|reggy[1][6]~q\ : std_logic;
SIGNAL \inst|reggy[0][6]~feeder_combout\ : std_logic;
SIGNAL \inst|reggy[0][6]~q\ : std_logic;
SIGNAL \inst|Mux58~2_combout\ : std_logic;
SIGNAL \inst|reggy[3][6]~q\ : std_logic;
SIGNAL \inst|Mux58~3_combout\ : std_logic;
SIGNAL \inst|Mux58~4_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan0~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add0~19_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add0~3_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add0~20_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add0~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan0~2_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add0~2_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add1~1\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add1~3\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add1~7\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add1~8_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add0~6\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add0~8\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add0~10\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add0~12\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add0~13_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add0~15_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add0~11_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add0~16_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add0~9_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add0~17_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add0~7_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add0~18_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan1~1_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan1~3_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan1~5_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan1~7_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan1~9_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan1~11_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan1~13_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan1~14_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add1~19_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add1~6_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add1~20_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add1~2_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add1~4_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add1~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add1~5_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add2~1\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add2~3\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add2~5\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add2~10\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add2~11_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add1~9\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add1~11\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add1~13\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add1~14_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add1~16_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add1~12_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add1~17_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add1~10_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add1~18_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan2~1_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan2~3_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan2~5_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan2~7_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan2~9_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan2~11_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan2~13_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan2~14_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add2~19_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add2~12\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add2~14\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add2~15_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add2~17_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add2~13_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add2~18_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add2~9_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add2~20_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add2~4_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add2~6_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add2~2_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add2~7_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add2~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add2~8_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan3~1_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan3~3_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan3~5_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan3~7_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan3~9_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan3~11_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan3~13_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan3~14_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add3~1\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add3~3\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add3~5\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add3~7\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add3~13\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add3~14_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add3~19_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add3~12_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add3~20_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add3~6_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add3~8_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add3~4_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add3~9_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add3~2_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add3~10_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add3~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add3~11_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add4~1\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add4~3\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add4~5\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add4~7\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add4~9\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add4~16\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add4~17_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add3~15\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add3~16_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add3~18_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan4~1_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan4~3_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan4~5_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan4~7_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan4~9_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan4~11_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan4~13_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan4~14_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add4~19_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add4~15_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add4~20_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add4~8_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add4~10_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add4~6_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add4~11_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add4~4_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add4~12_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add4~2_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add4~13_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add4~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add4~14_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan5~1_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan5~3_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan5~5_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan5~7_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan5~9_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan5~11_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan5~13_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan5~14_combout\ : std_logic;
SIGNAL \inst|reggy~50_combout\ : std_logic;
SIGNAL \inst|reggy~51_combout\ : std_logic;
SIGNAL \inst|reggy~52_combout\ : std_logic;
SIGNAL \inst|reggy~72_combout\ : std_logic;
SIGNAL \inst|reggy[5][2]~q\ : std_logic;
SIGNAL \inst|Mux72~2_combout\ : std_logic;
SIGNAL \inst|Mux72~3_combout\ : std_logic;
SIGNAL \inst|Mux72~0_combout\ : std_logic;
SIGNAL \inst|Mux72~1_combout\ : std_logic;
SIGNAL \inst|salida[2]~5_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|aux[2]~13\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|aux[3]~14_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|salida~22_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|salida~23_combout\ : std_logic;
SIGNAL \inst|Mux51~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi2|s2|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi1|s2|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi1|s3|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi2|s3|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi3|s3|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|s1|Cout~2_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|s2|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|s3|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|s2|Cout2~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|s3|Suma~combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~12_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~18\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~19_combout\ : std_logic;
SIGNAL \inst|reggy~53_combout\ : std_logic;
SIGNAL \inst|reggy~54_combout\ : std_logic;
SIGNAL \inst|reggy~55_combout\ : std_logic;
SIGNAL \inst|reggy~56_combout\ : std_logic;
SIGNAL \inst|reggy~73_combout\ : std_logic;
SIGNAL \inst|reggy[2][3]~q\ : std_logic;
SIGNAL \inst|Mux71~0_combout\ : std_logic;
SIGNAL \inst|Mux71~1_combout\ : std_logic;
SIGNAL \inst|Mux71~2_combout\ : std_logic;
SIGNAL \inst|Mux71~3_combout\ : std_logic;
SIGNAL \inst|salida[3]~6_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|aux[3]~15\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|aux[4]~16_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|salida~24_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|salida~25_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|salida~26_combout\ : std_logic;
SIGNAL \inst|alu1|barrel_shifters|aux[4]~feeder_combout\ : std_logic;
SIGNAL \inst|Mux50~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|s2|Cout~combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|s3|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|s3|Cout~combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|s3|Cout2~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|s4|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi3|s3|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi1|s3|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi1|s4|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi2|s3|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi2|s4|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi3|s4|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi4|s4|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~11_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~20\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~21_combout\ : std_logic;
SIGNAL \inst|reggy~57_combout\ : std_logic;
SIGNAL \inst|reggy~58_combout\ : std_logic;
SIGNAL \inst|reggy~59_combout\ : std_logic;
SIGNAL \inst|reggy~60_combout\ : std_logic;
SIGNAL \inst|reggy~74_combout\ : std_logic;
SIGNAL \inst|reggy[4][4]~q\ : std_logic;
SIGNAL \inst|Mux60~0_combout\ : std_logic;
SIGNAL \inst|Mux60~1_combout\ : std_logic;
SIGNAL \inst|Mux60~2_combout\ : std_logic;
SIGNAL \inst|Mux60~3_combout\ : std_logic;
SIGNAL \inst|Mux60~4_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|s4|Cout2~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|s5|Cout2~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|s6|Cout2~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|s7|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|s4|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|s4|Cout~combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|s5|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|s5|Cout~combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|s6|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|s6|Cout~combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|s7|Cout~1_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|s7|Cout~2_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|s8|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|Sfaux~1_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|s0|Suma~0_combout\ : std_logic;
SIGNAL \inst|reggy~15_combout\ : std_logic;
SIGNAL \inst|reggy~75_combout\ : std_logic;
SIGNAL \inst|reggy~14_combout\ : std_logic;
SIGNAL \inst|reggy~16_combout\ : std_logic;
SIGNAL \inst|reggy~17_combout\ : std_logic;
SIGNAL \inst|reggy~18_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add5~1\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add5~3\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add5~5\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add5~7\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add5~9\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add5~10_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add5~12_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add5~8_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add5~13_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add5~6_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add5~14_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add5~4_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add5~15_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add5~2_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add5~16_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add5~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add5~17_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add6~1\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add6~3\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add6~5\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add6~7\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add6~9\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add6~11\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add6~12_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add5~11\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add5~18_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add5~20_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan6~1_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan6~3_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan6~5_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan6~7_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan6~9_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan6~11_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan6~13_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan6~14_combout\ : std_logic;
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
SIGNAL \inst|reggy~19_combout\ : std_logic;
SIGNAL \inst|reggy~20_combout\ : std_logic;
SIGNAL \inst|reggy~21_combout\ : std_logic;
SIGNAL \inst|reggy[2][0]~q\ : std_logic;
SIGNAL \inst|Mux74~0_combout\ : std_logic;
SIGNAL \inst|Mux74~1_combout\ : std_logic;
SIGNAL \inst|Mux74~2_combout\ : std_logic;
SIGNAL \inst|Mux74~3_combout\ : std_logic;
SIGNAL \inst|salida[0]~3_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|aux[1]~10_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|salida~16_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|salida~17_combout\ : std_logic;
SIGNAL \inst|Mux53~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~15_combout\ : std_logic;
SIGNAL \inst|reggy~43_combout\ : std_logic;
SIGNAL \inst|reggy~44_combout\ : std_logic;
SIGNAL \inst|reggy~47_combout\ : std_logic;
SIGNAL \inst|reggy~48_combout\ : std_logic;
SIGNAL \inst|reggy~71_combout\ : std_logic;
SIGNAL \inst|reggy[2][1]~q\ : std_logic;
SIGNAL \inst|Mux63~2_combout\ : std_logic;
SIGNAL \inst|Mux63~3_combout\ : std_logic;
SIGNAL \inst|Mux63~0_combout\ : std_logic;
SIGNAL \inst|Mux63~1_combout\ : std_logic;
SIGNAL \inst|Mux63~4_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi1|s4|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi1|s5|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi2|s4|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi1|s5|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi2|s5|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi2|s6|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi2|s5|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi3|s4|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi3|s5|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi3|s6|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi2|s6|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi3|s7|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi3|s7|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi4|s4|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi3|s5|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi4|s5|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi3|s6|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi4|s6|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi4|s7|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi4|s8|Cout~0_combout\ : std_logic;
SIGNAL \inst|reggy~32_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi4|s5|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|s5|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|s5|Suma~1_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~10_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~22\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~23_combout\ : std_logic;
SIGNAL \inst|reggy~63_combout\ : std_logic;
SIGNAL \inst|reggy~64_combout\ : std_logic;
SIGNAL \inst|alu1|barrel_shifters|aux[5]~feeder_combout\ : std_logic;
SIGNAL \inst|reggy~61_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|aux[4]~17\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|aux[5]~18_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|salida~27_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|salida~28_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|salida~29_combout\ : std_logic;
SIGNAL \inst|reggy~62_combout\ : std_logic;
SIGNAL \inst|reggy~65_combout\ : std_logic;
SIGNAL \inst|reggy[2][5]~q\ : std_logic;
SIGNAL \inst|Mux69~0_combout\ : std_logic;
SIGNAL \inst|Mux69~1_combout\ : std_logic;
SIGNAL \inst|Mux69~2_combout\ : std_logic;
SIGNAL \inst|Mux69~3_combout\ : std_logic;
SIGNAL \inst|salida[5]~8_combout\ : std_logic;
SIGNAL \inst|REG_A[5]~feeder_combout\ : std_logic;
SIGNAL \inst|reggy~66_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|salida~30_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|aux[5]~19\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|aux[6]~20_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|salida~31_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|salida~32_combout\ : std_logic;
SIGNAL \inst|reggy~67_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|s6|Suma~combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi4|s6|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~9_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~24\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~25_combout\ : std_logic;
SIGNAL \inst|reggy~68_combout\ : std_logic;
SIGNAL \inst|reggy~69_combout\ : std_logic;
SIGNAL \inst|reggy~70_combout\ : std_logic;
SIGNAL \inst|reggy[2][6]~q\ : std_logic;
SIGNAL \inst|Mux68~0_combout\ : std_logic;
SIGNAL \inst|Mux68~1_combout\ : std_logic;
SIGNAL \inst|Mux68~2_combout\ : std_logic;
SIGNAL \inst|Mux68~3_combout\ : std_logic;
SIGNAL \inst|salida[6]~9_combout\ : std_logic;
SIGNAL \inst|REG_A[6]~feeder_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|aux[6]~21\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|aux[7]~22_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|salida~12_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|salida~13_combout\ : std_logic;
SIGNAL \inst|reggy~28_combout\ : std_logic;
SIGNAL \inst|reggy~30_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|s7|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|s7|Suma~1_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi4|s7|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~8_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~26\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~27_combout\ : std_logic;
SIGNAL \inst|reggy~33_combout\ : std_logic;
SIGNAL \inst|reggy~34_combout\ : std_logic;
SIGNAL \inst|reggy~36_combout\ : std_logic;
SIGNAL \inst|reggy[6][7]~q\ : std_logic;
SIGNAL \inst|Mux67~2_combout\ : std_logic;
SIGNAL \inst|Mux67~3_combout\ : std_logic;
SIGNAL \inst|Mux67~0_combout\ : std_logic;
SIGNAL \inst|Mux67~1_combout\ : std_logic;
SIGNAL \inst|salida[7]~2_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi4|s8|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|s8|Suma~combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~7_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~28\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~29_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|Mux1~0_combout\ : std_logic;
SIGNAL \inst|reggy[7][8]~q\ : std_logic;
SIGNAL \inst|reggy[5][8]~q\ : std_logic;
SIGNAL \inst|reggy[6][8]~q\ : std_logic;
SIGNAL \inst|reggy[4][8]~q\ : std_logic;
SIGNAL \inst|Mux56~0_combout\ : std_logic;
SIGNAL \inst|Mux56~1_combout\ : std_logic;
SIGNAL \inst|reggy[3][8]~q\ : std_logic;
SIGNAL \inst|reggy[1][8]~q\ : std_logic;
SIGNAL \inst|reggy[0][8]~feeder_combout\ : std_logic;
SIGNAL \inst|reggy[0][8]~q\ : std_logic;
SIGNAL \inst|Mux56~2_combout\ : std_logic;
SIGNAL \inst|Mux56~3_combout\ : std_logic;
SIGNAL \inst|Mux56~4_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|aux[7]~23\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|aux[8]~24_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|salida~8_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|salida~9_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|salida~10_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|Mux1~1_combout\ : std_logic;
SIGNAL \inst|reggy~25_combout\ : std_logic;
SIGNAL \inst|reggy~26_combout\ : std_logic;
SIGNAL \inst|reggy~23_combout\ : std_logic;
SIGNAL \inst|reggy~24_combout\ : std_logic;
SIGNAL \inst|reggy~27_combout\ : std_logic;
SIGNAL \inst|reggy[2][8]~q\ : std_logic;
SIGNAL \inst|Mux66~0_combout\ : std_logic;
SIGNAL \inst|Mux66~1_combout\ : std_logic;
SIGNAL \inst|Mux66~2_combout\ : std_logic;
SIGNAL \inst|Mux66~3_combout\ : std_logic;
SIGNAL \inst|salida[8]~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|aux[8]~25\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|aux[9]~26_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|s0|Cout~1_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|salida~14_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|salida~15_combout\ : std_logic;
SIGNAL \inst|reggy~39_combout\ : std_logic;
SIGNAL \inst|reggy~40_combout\ : std_logic;
SIGNAL \inst|reggy~41_combout\ : std_logic;
SIGNAL \inst|reggy[2][9]~q\ : std_logic;
SIGNAL \inst|Mux65~0_combout\ : std_logic;
SIGNAL \inst|Mux65~1_combout\ : std_logic;
SIGNAL \inst|Mux65~2_combout\ : std_logic;
SIGNAL \inst|Mux65~3_combout\ : std_logic;
SIGNAL \inst|salida[9]~1_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|Sfaux~0_combout\ : std_logic;
SIGNAL \inst|flag~3_combout\ : std_logic;
SIGNAL \inst|flag~4_combout\ : std_logic;
SIGNAL \inst|flag~q\ : std_logic;
SIGNAL \inst|salida[8]~15_combout\ : std_logic;
SIGNAL \inst|salida[8]~14_combout\ : std_logic;
SIGNAL \inst|salida[9]~feeder_combout\ : std_logic;
SIGNAL \inst|salida[2]~feeder_combout\ : std_logic;
SIGNAL \inst1|s[12]~3_combout\ : std_logic;
SIGNAL \inst|salida[8]~feeder_combout\ : std_logic;
SIGNAL \inst1|s[12]~27_combout\ : std_logic;
SIGNAL \inst1|digitos~34_combout\ : std_logic;
SIGNAL \inst1|digitos~33_combout\ : std_logic;
SIGNAL \inst1|digitos~9_combout\ : std_logic;
SIGNAL \inst1|digitos~10_combout\ : std_logic;
SIGNAL \inst1|digitos~8_combout\ : std_logic;
SIGNAL \inst1|digitos~35_combout\ : std_logic;
SIGNAL \inst1|digitos~11_combout\ : std_logic;
SIGNAL \inst1|digitos~12_combout\ : std_logic;
SIGNAL \inst1|digitos~13_combout\ : std_logic;
SIGNAL \inst1|digitos~14_combout\ : std_logic;
SIGNAL \inst1|s[12]~15_combout\ : std_logic;
SIGNAL \inst1|digitos~36_combout\ : std_logic;
SIGNAL \inst1|digitos~37_combout\ : std_logic;
SIGNAL \inst1|digitos~38_combout\ : std_logic;
SIGNAL \inst1|digitos~39_combout\ : std_logic;
SIGNAL \inst1|digitos~15_combout\ : std_logic;
SIGNAL \inst1|digitos~17_combout\ : std_logic;
SIGNAL \inst1|digitos~18_combout\ : std_logic;
SIGNAL \inst1|digitos~20_combout\ : std_logic;
SIGNAL \inst1|digitos~19_combout\ : std_logic;
SIGNAL \inst1|digitos~21_combout\ : std_logic;
SIGNAL \inst1|digitos~16_combout\ : std_logic;
SIGNAL \inst1|digitos~22_combout\ : std_logic;
SIGNAL \inst1|LessThan9~0_combout\ : std_logic;
SIGNAL \inst1|s[11]~16_combout\ : std_logic;
SIGNAL \inst1|s[10]~17_combout\ : std_logic;
SIGNAL \inst1|s[9]~18_combout\ : std_logic;
SIGNAL \inst1|digitos~25_combout\ : std_logic;
SIGNAL \inst1|digitos~24_combout\ : std_logic;
SIGNAL \inst1|digitos~26_combout\ : std_logic;
SIGNAL \inst1|digitos~28_combout\ : std_logic;
SIGNAL \inst|salida[4]~feeder_combout\ : std_logic;
SIGNAL \inst1|digitos~27_combout\ : std_logic;
SIGNAL \inst1|digitos~29_combout\ : std_logic;
SIGNAL \inst1|digitos~23_combout\ : std_logic;
SIGNAL \inst1|s[8]~19_combout\ : std_logic;
SIGNAL \inst1|s[7]~20_combout\ : std_logic;
SIGNAL \inst1|s[6]~21_combout\ : std_logic;
SIGNAL \inst1|s[5]~22_combout\ : std_logic;
SIGNAL \inst1|digitos~32_combout\ : std_logic;
SIGNAL \inst1|digitos~31_combout\ : std_logic;
SIGNAL \inst1|digitos~30_combout\ : std_logic;
SIGNAL \inst1|s[4]~23_combout\ : std_logic;
SIGNAL \inst1|s[3]~24_combout\ : std_logic;
SIGNAL \inst1|s[2]~25_combout\ : std_logic;
SIGNAL \inst1|s[1]~26_combout\ : std_logic;
SIGNAL \inst|salida\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst|alu1|barrel_shifters|aux\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst|alu1|unidad_aritmetica|suma|Xop\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \inst|MAR\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst|alu1|unidad_logica|aux\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \inst|REG_B\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst|REG_A\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst|OP\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|PC\ : std_logic_vector(13 DOWNTO 0);
SIGNAL \inst|alu1|unidad_logica|salida\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst|REG_D\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst|alu1|unidad_aritmetica|mult|inter\ : std_logic_vector(24 DOWNTO 0);
SIGNAL \inst|alu1|barrel_shifters|salShifters\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst|alu1|unidad_aritmetica|suma|Yop\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \ALT_INV_rst~input_o\ : std_logic;
SIGNAL \inst|ALT_INV_PC\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|ALT_INV_pr_state.state2~q\ : std_logic;
SIGNAL \inst1|ALT_INV_s[1]~26_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_s[4]~23_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_s[8]~19_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_s[9]~18_combout\ : std_logic;

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
R <= ww_R;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_rst~input_o\ <= NOT \rst~input_o\;
\inst|ALT_INV_PC\(3) <= NOT \inst|PC\(3);
\inst|ALT_INV_PC\(0) <= NOT \inst|PC\(0);
\inst|ALT_INV_pr_state.state2~q\ <= NOT \inst|pr_state.state2~q\;
\inst1|ALT_INV_s[1]~26_combout\ <= NOT \inst1|s[1]~26_combout\;
\inst1|ALT_INV_s[4]~23_combout\ <= NOT \inst1|s[4]~23_combout\;
\inst1|ALT_INV_s[8]~19_combout\ <= NOT \inst1|s[8]~19_combout\;
\inst1|ALT_INV_s[9]~18_combout\ <= NOT \inst1|s[9]~18_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X21_Y0_N9
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
	devoe => ww_devoe,
	o => \g~output_o\);

-- Location: IOOBUF_X28_Y24_N23
\R[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \R[15]~output_o\);

-- Location: IOOBUF_X28_Y0_N23
\R[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \R[14]~output_o\);

-- Location: IOOBUF_X34_Y2_N23
\R[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \R[13]~output_o\);

-- Location: IOOBUF_X34_Y18_N16
\R[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|s[12]~27_combout\,
	devoe => ww_devoe,
	o => \R[12]~output_o\);

-- Location: IOOBUF_X34_Y17_N23
\R[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|s[11]~16_combout\,
	devoe => ww_devoe,
	o => \R[11]~output_o\);

-- Location: IOOBUF_X28_Y0_N2
\R[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|s[10]~17_combout\,
	devoe => ww_devoe,
	o => \R[10]~output_o\);

-- Location: IOOBUF_X34_Y19_N16
\R[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|ALT_INV_s[9]~18_combout\,
	devoe => ww_devoe,
	o => \R[9]~output_o\);

-- Location: IOOBUF_X34_Y10_N9
\R[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|ALT_INV_s[8]~19_combout\,
	devoe => ww_devoe,
	o => \R[8]~output_o\);

-- Location: IOOBUF_X34_Y9_N16
\R[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|s[7]~20_combout\,
	devoe => ww_devoe,
	o => \R[7]~output_o\);

-- Location: IOOBUF_X34_Y18_N2
\R[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|s[6]~21_combout\,
	devoe => ww_devoe,
	o => \R[6]~output_o\);

-- Location: IOOBUF_X34_Y9_N9
\R[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|s[5]~22_combout\,
	devoe => ww_devoe,
	o => \R[5]~output_o\);

-- Location: IOOBUF_X34_Y17_N16
\R[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|ALT_INV_s[4]~23_combout\,
	devoe => ww_devoe,
	o => \R[4]~output_o\);

-- Location: IOOBUF_X34_Y20_N9
\R[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|s[3]~24_combout\,
	devoe => ww_devoe,
	o => \R[3]~output_o\);

-- Location: IOOBUF_X34_Y17_N2
\R[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|s[2]~25_combout\,
	devoe => ww_devoe,
	o => \R[2]~output_o\);

-- Location: IOOBUF_X28_Y24_N2
\R[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|ALT_INV_s[1]~26_combout\,
	devoe => ww_devoe,
	o => \R[1]~output_o\);

-- Location: IOOBUF_X16_Y24_N9
\R[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|salida\(6),
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

-- Location: LCCOMB_X22_Y10_N24
\inst|pr_state~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|pr_state~11_combout\ = (!\ecuacion[1]~input_o\ & !\ecuacion[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ecuacion[1]~input_o\,
	datad => \ecuacion[0]~input_o\,
	combout => \inst|pr_state~11_combout\);

-- Location: LCCOMB_X22_Y9_N20
\inst|LessThan2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan2~0_combout\ = (\inst|PC\(1) & \inst|PC\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|PC\(1),
	datad => \inst|PC\(0),
	combout => \inst|LessThan2~0_combout\);

-- Location: LCCOMB_X22_Y7_N20
\inst|LessThan2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan2~1_combout\ = (!\inst|PC\(4) & (!\inst|PC\(3) & ((!\inst|LessThan2~0_combout\) # (!\inst|PC\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC\(4),
	datab => \inst|PC\(3),
	datac => \inst|PC\(2),
	datad => \inst|LessThan2~0_combout\,
	combout => \inst|LessThan2~1_combout\);

-- Location: LCCOMB_X24_Y9_N28
\inst|Mux43~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux43~0_combout\ = (!\inst|PC\(1) & !\inst|PC\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|PC\(1),
	datad => \inst|PC\(2),
	combout => \inst|Mux43~0_combout\);

-- Location: LCCOMB_X23_Y8_N2
\inst|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan1~0_combout\ = (((!\inst|PC\(0) & \inst|Mux43~0_combout\)) # (!\inst|PC\(4))) # (!\inst|PC\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC\(3),
	datab => \inst|PC\(4),
	datac => \inst|PC\(0),
	datad => \inst|Mux43~0_combout\,
	combout => \inst|LessThan1~0_combout\);

-- Location: LCCOMB_X22_Y7_N10
\inst|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan0~0_combout\ = (!\inst|PC\(4) & (((!\inst|PC\(2) & !\inst|LessThan2~0_combout\)) # (!\inst|PC\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC\(4),
	datab => \inst|PC\(3),
	datac => \inst|PC\(2),
	datad => \inst|LessThan2~0_combout\,
	combout => \inst|LessThan0~0_combout\);

-- Location: LCCOMB_X22_Y7_N16
\inst|salida[3]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|salida[3]~12_combout\ = (\ecuacion[0]~input_o\ & (\inst|LessThan1~0_combout\)) # (!\ecuacion[0]~input_o\ & ((\inst|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ecuacion[0]~input_o\,
	datac => \inst|LessThan1~0_combout\,
	datad => \inst|LessThan0~0_combout\,
	combout => \inst|salida[3]~12_combout\);

-- Location: LCCOMB_X22_Y7_N14
\inst|salida[3]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|salida[3]~13_combout\ = (\inst|PC\(5) & (\inst|LessThan2~1_combout\ & (\ecuacion[1]~input_o\))) # (!\inst|PC\(5) & (((\ecuacion[1]~input_o\) # (\inst|salida[3]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC\(5),
	datab => \inst|LessThan2~1_combout\,
	datac => \ecuacion[1]~input_o\,
	datad => \inst|salida[3]~12_combout\,
	combout => \inst|salida[3]~13_combout\);

-- Location: LCCOMB_X23_Y8_N14
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

-- Location: LCCOMB_X23_Y8_N16
\inst|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~18_combout\ = (\inst|PC\(6) & (\inst|Add0~16\ $ (GND))) # (!\inst|PC\(6) & (!\inst|Add0~16\ & VCC))
-- \inst|Add0~19\ = CARRY((\inst|PC\(6) & !\inst|Add0~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|PC\(6),
	datad => VCC,
	cin => \inst|Add0~16\,
	combout => \inst|Add0~18_combout\,
	cout => \inst|Add0~19\);

-- Location: LCCOMB_X22_Y8_N6
\inst|PC[6]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|PC[6]~11_combout\ = (\inst|PC\(6)) # ((\inst|Add0~18_combout\ & (\inst|PC[13]~4_combout\ & \inst|PC[9]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~18_combout\,
	datab => \inst|PC[13]~4_combout\,
	datac => \inst|PC\(6),
	datad => \inst|PC[9]~1_combout\,
	combout => \inst|PC[6]~11_combout\);

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

-- Location: FF_X22_Y8_N7
\inst|PC[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|PC[6]~11_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC\(6));

-- Location: LCCOMB_X23_Y8_N18
\inst|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~20_combout\ = (\inst|PC\(7) & (!\inst|Add0~19\)) # (!\inst|PC\(7) & ((\inst|Add0~19\) # (GND)))
-- \inst|Add0~21\ = CARRY((!\inst|Add0~19\) # (!\inst|PC\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC\(7),
	datad => VCC,
	cin => \inst|Add0~19\,
	combout => \inst|Add0~20_combout\,
	cout => \inst|Add0~21\);

-- Location: LCCOMB_X22_Y8_N12
\inst|PC[7]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|PC[7]~10_combout\ = (\inst|PC\(7)) # ((\inst|Add0~20_combout\ & (\inst|PC[13]~4_combout\ & \inst|PC[9]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~20_combout\,
	datab => \inst|PC[13]~4_combout\,
	datac => \inst|PC\(7),
	datad => \inst|PC[9]~1_combout\,
	combout => \inst|PC[7]~10_combout\);

-- Location: FF_X22_Y8_N13
\inst|PC[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|PC[7]~10_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC\(7));

-- Location: LCCOMB_X23_Y8_N20
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

-- Location: LCCOMB_X22_Y8_N18
\inst|PC[8]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|PC[8]~9_combout\ = (\inst|PC\(8)) # ((\inst|Add0~22_combout\ & (\inst|PC[9]~1_combout\ & \inst|PC[13]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~22_combout\,
	datab => \inst|PC[9]~1_combout\,
	datac => \inst|PC\(8),
	datad => \inst|PC[13]~4_combout\,
	combout => \inst|PC[8]~9_combout\);

-- Location: FF_X22_Y8_N19
\inst|PC[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|PC[8]~9_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC\(8));

-- Location: LCCOMB_X23_Y8_N22
\inst|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~24_combout\ = (\inst|PC\(9) & (!\inst|Add0~23\)) # (!\inst|PC\(9) & ((\inst|Add0~23\) # (GND)))
-- \inst|Add0~25\ = CARRY((!\inst|Add0~23\) # (!\inst|PC\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC\(9),
	datad => VCC,
	cin => \inst|Add0~23\,
	combout => \inst|Add0~24_combout\,
	cout => \inst|Add0~25\);

-- Location: LCCOMB_X22_Y8_N2
\inst|PC[9]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|PC[9]~8_combout\ = (\inst|PC\(9)) # ((\inst|PC[9]~1_combout\ & (\inst|PC[13]~4_combout\ & \inst|Add0~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC[9]~1_combout\,
	datab => \inst|PC[13]~4_combout\,
	datac => \inst|PC\(9),
	datad => \inst|Add0~24_combout\,
	combout => \inst|PC[9]~8_combout\);

-- Location: FF_X22_Y8_N3
\inst|PC[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|PC[9]~8_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC\(9));

-- Location: LCCOMB_X23_Y8_N24
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

-- Location: LCCOMB_X22_Y8_N16
\inst|PC[10]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|PC[10]~7_combout\ = (\inst|PC\(10)) # ((\inst|Add0~26_combout\ & (\inst|PC[13]~4_combout\ & \inst|PC[9]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~26_combout\,
	datab => \inst|PC[13]~4_combout\,
	datac => \inst|PC\(10),
	datad => \inst|PC[9]~1_combout\,
	combout => \inst|PC[10]~7_combout\);

-- Location: FF_X22_Y8_N17
\inst|PC[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|PC[10]~7_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC\(10));

-- Location: LCCOMB_X22_Y8_N8
\inst|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan0~1_combout\ = (!\inst|PC\(11) & (!\inst|PC\(12) & (!\inst|PC\(9) & !\inst|PC\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC\(11),
	datab => \inst|PC\(12),
	datac => \inst|PC\(9),
	datad => \inst|PC\(10),
	combout => \inst|LessThan0~1_combout\);

-- Location: LCCOMB_X22_Y8_N4
\inst|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan0~2_combout\ = (!\inst|PC\(7) & (!\inst|PC\(8) & (\inst|LessThan0~1_combout\ & !\inst|PC\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC\(7),
	datab => \inst|PC\(8),
	datac => \inst|LessThan0~1_combout\,
	datad => \inst|PC\(6),
	combout => \inst|LessThan0~2_combout\);

-- Location: LCCOMB_X22_Y10_N20
\inst|pr_state~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|pr_state~10_combout\ = (!\inst|PC\(13) & \inst|LessThan0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|PC\(13),
	datad => \inst|LessThan0~2_combout\,
	combout => \inst|pr_state~10_combout\);

-- Location: LCCOMB_X22_Y10_N4
\inst|PC[13]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|PC[13]~2_combout\ = ((!\inst|salida[3]~13_combout\ & ((\inst|PC\(5)) # (\inst|pr_state~11_combout\)))) # (!\inst|pr_state~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|salida[3]~13_combout\,
	datab => \inst|pr_state~10_combout\,
	datac => \inst|PC\(5),
	datad => \inst|pr_state~11_combout\,
	combout => \inst|PC[13]~2_combout\);

-- Location: LCCOMB_X22_Y7_N30
\inst|PC[13]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|PC[13]~3_combout\ = (\inst|LessThan1~0_combout\ & (((\ecuacion[0]~input_o\ & !\inst|LessThan0~0_combout\)))) # (!\inst|LessThan1~0_combout\ & ((\ecuacion[1]~input_o\) # ((\ecuacion[0]~input_o\ & !\inst|LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan1~0_combout\,
	datab => \ecuacion[1]~input_o\,
	datac => \ecuacion[0]~input_o\,
	datad => \inst|LessThan0~0_combout\,
	combout => \inst|PC[13]~3_combout\);

-- Location: LCCOMB_X22_Y7_N22
\inst|pr_state~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|pr_state~12_combout\ = (\inst|PC\(13)) # (((\inst|PC\(5) & !\inst|LessThan2~1_combout\)) # (!\inst|LessThan0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC\(13),
	datab => \inst|LessThan0~2_combout\,
	datac => \inst|PC\(5),
	datad => \inst|LessThan2~1_combout\,
	combout => \inst|pr_state~12_combout\);

-- Location: LCCOMB_X22_Y7_N18
\inst|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan1~1_combout\ = (!\inst|PC\(5) & (\inst|LessThan1~0_combout\ & \inst|LessThan0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC\(5),
	datac => \inst|LessThan1~0_combout\,
	datad => \inst|LessThan0~2_combout\,
	combout => \inst|LessThan1~1_combout\);

-- Location: LCCOMB_X22_Y7_N12
\inst|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector0~0_combout\ = (!\ecuacion[0]~input_o\ & ((\inst|pr_state~12_combout\) # (\inst|LessThan1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ecuacion[0]~input_o\,
	datac => \inst|pr_state~12_combout\,
	datad => \inst|LessThan1~1_combout\,
	combout => \inst|Selector0~0_combout\);

-- Location: LCCOMB_X22_Y7_N6
\inst|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan0~3_combout\ = (\inst|LessThan0~2_combout\ & (!\inst|PC\(5) & \inst|LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|LessThan0~2_combout\,
	datac => \inst|PC\(5),
	datad => \inst|LessThan0~0_combout\,
	combout => \inst|LessThan0~3_combout\);

-- Location: LCCOMB_X22_Y7_N24
\inst|Selector0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector0~1_combout\ = (\inst|PC\(13)) # ((\ecuacion[0]~input_o\ & ((\inst|LessThan0~3_combout\) # (!\inst|LessThan1~1_combout\))) # (!\ecuacion[0]~input_o\ & ((!\inst|LessThan0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC\(13),
	datab => \inst|LessThan1~1_combout\,
	datac => \ecuacion[0]~input_o\,
	datad => \inst|LessThan0~3_combout\,
	combout => \inst|Selector0~1_combout\);

-- Location: LCCOMB_X22_Y7_N26
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

-- Location: LCCOMB_X22_Y10_N0
\inst|Selector0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector0~3_combout\ = (!\inst|pr_state.state2~q\ & !\inst|Selector0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pr_state.state2~q\,
	datad => \inst|Selector0~2_combout\,
	combout => \inst|Selector0~3_combout\);

-- Location: FF_X22_Y10_N1
\inst|pr_state.state0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Selector0~3_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|pr_state.state0~q\);

-- Location: LCCOMB_X22_Y10_N8
\inst|MAR[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|MAR[4]~7_combout\ = (!\inst|pr_state.state0~q\ & ((!\ecuacion[1]~input_o\) # (!\ecuacion[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ecuacion[0]~input_o\,
	datab => \ecuacion[1]~input_o\,
	datad => \inst|pr_state.state0~q\,
	combout => \inst|MAR[4]~7_combout\);

-- Location: LCCOMB_X22_Y7_N0
\inst|PC[13]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|PC[13]~4_combout\ = (!\inst|PC[13]~2_combout\ & (\inst|MAR[4]~7_combout\ & ((\inst|salida[3]~13_combout\) # (!\inst|PC[13]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC[13]~2_combout\,
	datab => \inst|salida[3]~13_combout\,
	datac => \inst|PC[13]~3_combout\,
	datad => \inst|MAR[4]~7_combout\,
	combout => \inst|PC[13]~4_combout\);

-- Location: LCCOMB_X23_Y8_N26
\inst|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~28_combout\ = (\inst|PC\(11) & (!\inst|Add0~27\)) # (!\inst|PC\(11) & ((\inst|Add0~27\) # (GND)))
-- \inst|Add0~29\ = CARRY((!\inst|Add0~27\) # (!\inst|PC\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC\(11),
	datad => VCC,
	cin => \inst|Add0~27\,
	combout => \inst|Add0~28_combout\,
	cout => \inst|Add0~29\);

-- Location: LCCOMB_X22_Y8_N26
\inst|PC[11]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|PC[11]~6_combout\ = (\inst|PC\(11)) # ((\inst|PC[9]~1_combout\ & (\inst|PC[13]~4_combout\ & \inst|Add0~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC[9]~1_combout\,
	datab => \inst|PC[13]~4_combout\,
	datac => \inst|PC\(11),
	datad => \inst|Add0~28_combout\,
	combout => \inst|PC[11]~6_combout\);

-- Location: FF_X22_Y8_N27
\inst|PC[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|PC[11]~6_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC\(11));

-- Location: LCCOMB_X23_Y8_N28
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

-- Location: LCCOMB_X22_Y8_N28
\inst|PC[12]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|PC[12]~5_combout\ = (\inst|PC\(12)) # ((\inst|Add0~30_combout\ & (\inst|PC[13]~4_combout\ & \inst|PC[9]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~30_combout\,
	datab => \inst|PC[13]~4_combout\,
	datac => \inst|PC\(12),
	datad => \inst|PC[9]~1_combout\,
	combout => \inst|PC[12]~5_combout\);

-- Location: FF_X22_Y8_N29
\inst|PC[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|PC[12]~5_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC\(12));

-- Location: LCCOMB_X23_Y8_N30
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

-- Location: LCCOMB_X22_Y8_N22
\inst|PC[13]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|PC[13]~12_combout\ = (\inst|PC\(13)) # ((\inst|Add0~32_combout\ & (\inst|PC[9]~1_combout\ & \inst|PC[13]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~32_combout\,
	datab => \inst|PC[9]~1_combout\,
	datac => \inst|PC\(13),
	datad => \inst|PC[13]~4_combout\,
	combout => \inst|PC[13]~12_combout\);

-- Location: FF_X22_Y8_N23
\inst|PC[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|PC[13]~12_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC\(13));

-- Location: LCCOMB_X22_Y7_N28
\inst|PC[9]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|PC[9]~0_combout\ = (\inst|PC\(5)) # (((!\inst|LessThan0~0_combout\) # (!\ecuacion[0]~input_o\)) # (!\inst|LessThan0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC\(5),
	datab => \inst|LessThan0~2_combout\,
	datac => \ecuacion[0]~input_o\,
	datad => \inst|LessThan0~0_combout\,
	combout => \inst|PC[9]~0_combout\);

-- Location: LCCOMB_X22_Y7_N4
\inst|PC[9]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|PC[9]~1_combout\ = (\inst|PC\(13)) # ((\ecuacion[1]~input_o\ & ((!\inst|LessThan1~1_combout\))) # (!\ecuacion[1]~input_o\ & (\inst|PC[9]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC\(13),
	datab => \inst|PC[9]~0_combout\,
	datac => \ecuacion[1]~input_o\,
	datad => \inst|LessThan1~1_combout\,
	combout => \inst|PC[9]~1_combout\);

-- Location: LCCOMB_X23_Y8_N4
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

-- Location: LCCOMB_X22_Y8_N0
\inst|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~8_combout\ = (\inst|PC[9]~1_combout\ & \inst|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|PC[9]~1_combout\,
	datad => \inst|Add0~0_combout\,
	combout => \inst|Add0~8_combout\);

-- Location: FF_X22_Y8_N1
\inst|PC[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Add0~8_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \inst|PC[13]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC\(0));

-- Location: LCCOMB_X23_Y8_N6
\inst|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~2_combout\ = (\inst|PC\(1) & (!\inst|Add0~1\)) # (!\inst|PC\(1) & ((\inst|Add0~1\) # (GND)))
-- \inst|Add0~3\ = CARRY((!\inst|Add0~1\) # (!\inst|PC\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC\(1),
	datad => VCC,
	cin => \inst|Add0~1\,
	combout => \inst|Add0~2_combout\,
	cout => \inst|Add0~3\);

-- Location: LCCOMB_X22_Y8_N14
\inst|Add0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~7_combout\ = (\inst|PC[9]~1_combout\ & (\inst|Add0~2_combout\)) # (!\inst|PC[9]~1_combout\ & ((\ecuacion[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~2_combout\,
	datab => \ecuacion[1]~input_o\,
	datad => \inst|PC[9]~1_combout\,
	combout => \inst|Add0~7_combout\);

-- Location: FF_X22_Y8_N15
\inst|PC[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Add0~7_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \inst|PC[13]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC\(1));

-- Location: LCCOMB_X23_Y8_N8
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

-- Location: LCCOMB_X22_Y8_N24
\inst|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~6_combout\ = (\inst|PC[9]~1_combout\ & ((\inst|Add0~4_combout\))) # (!\inst|PC[9]~1_combout\ & (!\ecuacion[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ecuacion[1]~input_o\,
	datac => \inst|Add0~4_combout\,
	datad => \inst|PC[9]~1_combout\,
	combout => \inst|Add0~6_combout\);

-- Location: FF_X22_Y8_N25
\inst|PC[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Add0~6_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \inst|PC[13]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC\(2));

-- Location: LCCOMB_X23_Y8_N10
\inst|Add0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~9_combout\ = (\inst|PC\(3) & (!\inst|Add0~5\)) # (!\inst|PC\(3) & ((\inst|Add0~5\) # (GND)))
-- \inst|Add0~10\ = CARRY((!\inst|Add0~5\) # (!\inst|PC\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC\(3),
	datad => VCC,
	cin => \inst|Add0~5\,
	combout => \inst|Add0~9_combout\,
	cout => \inst|Add0~10\);

-- Location: LCCOMB_X22_Y8_N10
\inst|Add0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~11_combout\ = (\inst|Add0~9_combout\) # (!\inst|PC[9]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Add0~9_combout\,
	datad => \inst|PC[9]~1_combout\,
	combout => \inst|Add0~11_combout\);

-- Location: FF_X22_Y8_N11
\inst|PC[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Add0~11_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \inst|PC[13]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC\(3));

-- Location: LCCOMB_X23_Y8_N12
\inst|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~12_combout\ = (\inst|PC\(4) & (\inst|Add0~10\ $ (GND))) # (!\inst|PC\(4) & (!\inst|Add0~10\ & VCC))
-- \inst|Add0~13\ = CARRY((\inst|PC\(4) & !\inst|Add0~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|PC\(4),
	datad => VCC,
	cin => \inst|Add0~10\,
	combout => \inst|Add0~12_combout\,
	cout => \inst|Add0~13\);

-- Location: LCCOMB_X22_Y8_N20
\inst|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~14_combout\ = (\inst|PC[9]~1_combout\ & ((\inst|Add0~12_combout\))) # (!\inst|PC[9]~1_combout\ & (\ecuacion[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ecuacion[1]~input_o\,
	datac => \inst|Add0~12_combout\,
	datad => \inst|PC[9]~1_combout\,
	combout => \inst|Add0~14_combout\);

-- Location: FF_X22_Y8_N21
\inst|PC[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Add0~14_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \inst|PC[13]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC\(4));

-- Location: LCCOMB_X22_Y8_N30
\inst|Add0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~17_combout\ = (\inst|Add0~15_combout\ & \inst|PC[9]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Add0~15_combout\,
	datad => \inst|PC[9]~1_combout\,
	combout => \inst|Add0~17_combout\);

-- Location: FF_X22_Y8_N31
\inst|PC[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Add0~17_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \inst|PC[13]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC\(5));

-- Location: LCCOMB_X22_Y7_N8
\inst|pr_state~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|pr_state~13_combout\ = (!\inst|PC\(5) & (\ecuacion[0]~input_o\ & (\inst|LessThan1~0_combout\ & \inst|LessThan0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC\(5),
	datab => \ecuacion[0]~input_o\,
	datac => \inst|LessThan1~0_combout\,
	datad => \inst|LessThan0~2_combout\,
	combout => \inst|pr_state~13_combout\);

-- Location: LCCOMB_X22_Y7_N2
\inst|pr_state~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|pr_state~14_combout\ = (!\inst|PC\(13) & ((\inst|LessThan0~3_combout\ & (\inst|pr_state~11_combout\)) # (!\inst|LessThan0~3_combout\ & ((\inst|pr_state~13_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pr_state~11_combout\,
	datab => \inst|pr_state~13_combout\,
	datac => \inst|PC\(13),
	datad => \inst|LessThan0~3_combout\,
	combout => \inst|pr_state~14_combout\);

-- Location: LCCOMB_X22_Y10_N12
\inst|pr_state~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|pr_state~15_combout\ = (!\inst|pr_state.state0~q\ & ((\inst|pr_state~14_combout\) # ((\ecuacion[1]~input_o\ & !\inst|Selector0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pr_state~14_combout\,
	datab => \ecuacion[1]~input_o\,
	datac => \inst|Selector0~0_combout\,
	datad => \inst|pr_state.state0~q\,
	combout => \inst|pr_state~15_combout\);

-- Location: FF_X22_Y10_N13
\inst|pr_state.state1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|pr_state~15_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|pr_state.state1~q\);

-- Location: FF_X22_Y10_N7
\inst|pr_state.state2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|pr_state.state1~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|pr_state.state2~q\);

-- Location: LCCOMB_X23_Y9_N24
\inst|Mux48~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux48~1_combout\ = \inst|PC\(2) $ (((\inst|PC\(1)) # (\inst|PC\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|PC\(1),
	datac => \inst|PC\(5),
	datad => \inst|PC\(2),
	combout => \inst|Mux48~1_combout\);

-- Location: LCCOMB_X23_Y9_N10
\inst|Mux39~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux39~3_combout\ = (!\inst|PC\(4) & (\inst|PC\(1) & \inst|PC\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|PC\(4),
	datac => \inst|PC\(1),
	datad => \inst|PC\(2),
	combout => \inst|Mux39~3_combout\);

-- Location: LCCOMB_X23_Y9_N8
\inst|MAR[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|MAR[0]~4_combout\ = (\inst|PC\(3) & ((\inst|Mux39~3_combout\))) # (!\inst|PC\(3) & (\inst|Mux48~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC\(3),
	datab => \inst|Mux48~1_combout\,
	datad => \inst|Mux39~3_combout\,
	combout => \inst|MAR[0]~4_combout\);

-- Location: LCCOMB_X22_Y9_N16
\inst|Mux48~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux48~2_combout\ = (\inst|PC\(1) & (((\inst|PC\(2) & !\inst|PC\(3))) # (!\inst|PC\(4)))) # (!\inst|PC\(1) & (\inst|PC\(3) $ (((\inst|PC\(2) & !\inst|PC\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110110001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC\(2),
	datab => \inst|PC\(1),
	datac => \inst|PC\(4),
	datad => \inst|PC\(3),
	combout => \inst|Mux48~2_combout\);

-- Location: LCCOMB_X22_Y9_N6
\inst|Mux48~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux48~3_combout\ = (\inst|PC\(5)) # (\inst|Mux48~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC\(5),
	datad => \inst|Mux48~2_combout\,
	combout => \inst|Mux48~3_combout\);

-- Location: LCCOMB_X22_Y10_N30
\inst|MAR[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|MAR[4]~8_combout\ = (!\rst~input_o\ & (!\inst|pr_state.state0~q\ & ((!\ecuacion[1]~input_o\) # (!\ecuacion[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ecuacion[0]~input_o\,
	datab => \ecuacion[1]~input_o\,
	datac => \rst~input_o\,
	datad => \inst|pr_state.state0~q\,
	combout => \inst|MAR[4]~8_combout\);

-- Location: FF_X23_Y9_N9
\inst|MAR[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|MAR[0]~4_combout\,
	asdata => \inst|Mux48~3_combout\,
	sload => \inst|ALT_INV_PC\(0),
	ena => \inst|MAR[4]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MAR\(0));

-- Location: LCCOMB_X23_Y9_N28
\inst|Mux47~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux47~2_combout\ = (\inst|PC\(1) & (\inst|PC\(5) $ (\inst|PC\(2)))) # (!\inst|PC\(1) & (\inst|PC\(5) & \inst|PC\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|PC\(1),
	datac => \inst|PC\(5),
	datad => \inst|PC\(2),
	combout => \inst|Mux47~2_combout\);

-- Location: LCCOMB_X23_Y9_N6
\inst|Mux39~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux39~4_combout\ = \inst|PC\(2) $ (((!\inst|PC\(4) & !\inst|PC\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|PC\(4),
	datac => \inst|PC\(1),
	datad => \inst|PC\(2),
	combout => \inst|Mux39~4_combout\);

-- Location: LCCOMB_X23_Y9_N26
\inst|MAR[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|MAR[1]~3_combout\ = (\inst|PC\(3) & ((\inst|Mux39~4_combout\))) # (!\inst|PC\(3) & (\inst|Mux47~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC\(3),
	datab => \inst|Mux47~2_combout\,
	datad => \inst|Mux39~4_combout\,
	combout => \inst|MAR[1]~3_combout\);

-- Location: LCCOMB_X24_Y9_N24
\inst|Mux47~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux47~3_combout\ = (\inst|PC\(4) & (!\inst|PC\(1) & (\inst|PC\(3) $ (\inst|PC\(2))))) # (!\inst|PC\(4) & (\inst|PC\(1) & (\inst|PC\(3) $ (\inst|PC\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC\(4),
	datab => \inst|PC\(1),
	datac => \inst|PC\(3),
	datad => \inst|PC\(2),
	combout => \inst|Mux47~3_combout\);

-- Location: LCCOMB_X24_Y9_N30
\inst|Mux47~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux47~5_combout\ = (\inst|PC\(5) & (((\inst|PC\(1))) # (!\inst|PC\(2)))) # (!\inst|PC\(5) & (((\inst|Mux47~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC\(5),
	datab => \inst|PC\(2),
	datac => \inst|PC\(1),
	datad => \inst|Mux47~3_combout\,
	combout => \inst|Mux47~5_combout\);

-- Location: FF_X23_Y9_N27
\inst|MAR[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|MAR[1]~3_combout\,
	asdata => \inst|Mux47~5_combout\,
	sload => \inst|ALT_INV_PC\(0),
	ena => \inst|MAR[4]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MAR\(1));

-- Location: LCCOMB_X24_Y9_N18
\inst|Mux46~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux46~0_combout\ = (\inst|PC\(1) & (\inst|PC\(4) & (\inst|PC\(3) & \inst|PC\(2)))) # (!\inst|PC\(1) & (!\inst|PC\(3) & (\inst|PC\(4) $ (\inst|PC\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC\(4),
	datab => \inst|PC\(1),
	datac => \inst|PC\(3),
	datad => \inst|PC\(2),
	combout => \inst|Mux46~0_combout\);

-- Location: LCCOMB_X24_Y9_N6
\inst|MAR[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|MAR[2]~5_combout\ = (\inst|PC\(5) & ((\inst|Mux43~0_combout\))) # (!\inst|PC\(5) & (\inst|Mux46~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC\(5),
	datab => \inst|Mux46~0_combout\,
	datad => \inst|Mux43~0_combout\,
	combout => \inst|MAR[2]~5_combout\);

-- Location: LCCOMB_X24_Y9_N12
\inst|Mux45~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux45~0_combout\ = (!\inst|PC\(3) & !\inst|PC\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|PC\(3),
	datad => \inst|PC\(5),
	combout => \inst|Mux45~0_combout\);

-- Location: LCCOMB_X24_Y9_N14
\inst|Mux46~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux46~1_combout\ = (!\inst|PC\(4) & (\inst|Mux45~0_combout\ & (\inst|PC\(2) $ (!\inst|PC\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC\(4),
	datab => \inst|PC\(2),
	datac => \inst|PC\(1),
	datad => \inst|Mux45~0_combout\,
	combout => \inst|Mux46~1_combout\);

-- Location: FF_X24_Y9_N7
\inst|MAR[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|MAR[2]~5_combout\,
	asdata => \inst|Mux46~1_combout\,
	sload => \inst|PC\(0),
	ena => \inst|MAR[4]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MAR\(2));

-- Location: LCCOMB_X23_Y9_N4
\inst|Mux45~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux45~1_combout\ = (\inst|PC\(5) & (\inst|PC\(1) & ((!\inst|PC\(2))))) # (!\inst|PC\(5) & (!\inst|PC\(1) & (\inst|PC\(4) & \inst|PC\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC\(5),
	datab => \inst|PC\(1),
	datac => \inst|PC\(4),
	datad => \inst|PC\(2),
	combout => \inst|Mux45~1_combout\);

-- Location: LCCOMB_X23_Y9_N2
\inst|Mux47~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux47~4_combout\ = (\inst|PC\(2) & (\inst|PC\(4) $ (\inst|PC\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|PC\(4),
	datac => \inst|PC\(1),
	datad => \inst|PC\(2),
	combout => \inst|Mux47~4_combout\);

-- Location: LCCOMB_X23_Y9_N20
\inst|MAR[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|MAR[3]~6_combout\ = (\inst|PC\(3) & ((\inst|Mux47~4_combout\))) # (!\inst|PC\(3) & (\inst|Mux45~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC\(3),
	datab => \inst|Mux45~1_combout\,
	datad => \inst|Mux47~4_combout\,
	combout => \inst|MAR[3]~6_combout\);

-- Location: LCCOMB_X24_Y9_N20
\inst|Mux45~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux45~2_combout\ = (\inst|PC\(4) & (!\inst|PC\(2) & (\inst|PC\(1) & \inst|Mux45~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC\(4),
	datab => \inst|PC\(2),
	datac => \inst|PC\(1),
	datad => \inst|Mux45~0_combout\,
	combout => \inst|Mux45~2_combout\);

-- Location: FF_X23_Y9_N21
\inst|MAR[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|MAR[3]~6_combout\,
	asdata => \inst|Mux45~2_combout\,
	sload => \inst|ALT_INV_PC\(0),
	ena => \inst|MAR[4]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MAR\(3));

-- Location: LCCOMB_X22_Y12_N6
\inst|Mux49~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux49~0_combout\ = (\inst|MAR\(2) & (((\inst|MAR\(1) & !\inst|MAR\(3))))) # (!\inst|MAR\(2) & (\inst|MAR\(3) & (\inst|MAR\(0) $ (\inst|MAR\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MAR\(0),
	datab => \inst|MAR\(1),
	datac => \inst|MAR\(2),
	datad => \inst|MAR\(3),
	combout => \inst|Mux49~0_combout\);

-- Location: LCCOMB_X22_Y9_N26
\inst|Mux41~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux41~1_combout\ = (\inst|PC\(1) & (!\inst|PC\(5) & !\inst|PC\(2))) # (!\inst|PC\(1) & ((\inst|PC\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010000110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC\(5),
	datab => \inst|PC\(1),
	datac => \inst|PC\(2),
	combout => \inst|Mux41~1_combout\);

-- Location: LCCOMB_X22_Y9_N12
\inst|Mux41~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux41~0_combout\ = (\inst|PC\(2) & (\inst|PC\(4) & !\inst|PC\(3))) # (!\inst|PC\(2) & (!\inst|PC\(4) & \inst|PC\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC\(2),
	datab => \inst|PC\(4),
	datad => \inst|PC\(3),
	combout => \inst|Mux41~0_combout\);

-- Location: LCCOMB_X22_Y9_N22
\inst|Mux41~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux41~2_combout\ = (\inst|PC\(0)) # ((\inst|PC\(5) & (!\inst|Mux41~1_combout\)) # (!\inst|PC\(5) & ((\inst|Mux41~1_combout\) # (!\inst|Mux41~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111011011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC\(5),
	datab => \inst|PC\(0),
	datac => \inst|Mux41~1_combout\,
	datad => \inst|Mux41~0_combout\,
	combout => \inst|Mux41~2_combout\);

-- Location: FF_X22_Y9_N23
\inst|MAR[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Mux41~2_combout\,
	ena => \inst|MAR[4]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MAR\(8));

-- Location: LCCOMB_X22_Y9_N28
\inst|Mux38~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux38~3_combout\ = \inst|PC\(2) $ (\inst|PC\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC\(2),
	datac => \inst|PC\(3),
	combout => \inst|Mux38~3_combout\);

-- Location: LCCOMB_X22_Y9_N18
\inst|Mux38~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux38~0_combout\ = (\inst|PC\(1) & ((\inst|PC\(5)) # ((\inst|PC\(3)) # (!\inst|PC\(4))))) # (!\inst|PC\(1) & ((\inst|PC\(3) & ((\inst|PC\(4)))) # (!\inst|PC\(3) & (!\inst|PC\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC\(5),
	datab => \inst|PC\(1),
	datac => \inst|PC\(4),
	datad => \inst|PC\(3),
	combout => \inst|Mux38~0_combout\);

-- Location: LCCOMB_X22_Y9_N2
\inst|Mux38~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux38~1_combout\ = (\inst|PC\(2) & ((!\inst|PC\(5)))) # (!\inst|PC\(2) & ((\inst|PC\(5)) # (!\inst|PC\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC\(2),
	datab => \inst|PC\(3),
	datad => \inst|PC\(5),
	combout => \inst|Mux38~1_combout\);

-- Location: LCCOMB_X22_Y9_N4
\inst|Mux38~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux38~2_combout\ = (\inst|Mux38~1_combout\) # (\inst|PC\(1) $ (((\inst|PC\(5)) # (!\inst|PC\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC\(5),
	datab => \inst|PC\(4),
	datac => \inst|PC\(1),
	datad => \inst|Mux38~1_combout\,
	combout => \inst|Mux38~2_combout\);

-- Location: LCCOMB_X22_Y9_N24
\inst|Mux38~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux38~4_combout\ = (\inst|PC\(0) & (((\inst|Mux38~0_combout\)) # (!\inst|Mux38~3_combout\))) # (!\inst|PC\(0) & (((\inst|Mux38~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux38~3_combout\,
	datab => \inst|Mux38~0_combout\,
	datac => \inst|Mux38~2_combout\,
	datad => \inst|PC\(0),
	combout => \inst|Mux38~4_combout\);

-- Location: FF_X22_Y9_N25
\inst|MAR[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Mux38~4_combout\,
	ena => \inst|MAR[4]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MAR\(11));

-- Location: LCCOMB_X22_Y10_N6
\inst|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux2~0_combout\ = (\inst|PC\(4) & ((\inst|PC\(5)) # (\inst|PC\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC\(5),
	datab => \inst|PC\(4),
	datad => \inst|PC\(1),
	combout => \inst|Mux2~0_combout\);

-- Location: LCCOMB_X22_Y9_N14
\inst|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux2~1_combout\ = (\inst|PC\(3) & (!\inst|PC\(5) & (!\inst|PC\(2) & !\inst|Mux2~0_combout\))) # (!\inst|PC\(3) & (\inst|PC\(2) & (\inst|PC\(5) $ (\inst|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC\(5),
	datab => \inst|PC\(3),
	datac => \inst|PC\(2),
	datad => \inst|Mux2~0_combout\,
	combout => \inst|Mux2~1_combout\);

-- Location: FF_X22_Y9_N15
\inst|MAR[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Mux2~1_combout\,
	ena => \inst|MAR[4]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MAR\(9));

-- Location: LCCOMB_X24_Y9_N2
\inst|Mux48~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux48~0_combout\ = (!\inst|PC\(1) & \inst|PC\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|PC\(1),
	datad => \inst|PC\(2),
	combout => \inst|Mux48~0_combout\);

-- Location: LCCOMB_X24_Y9_N16
\inst|Mux39~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux39~0_combout\ = (\inst|PC\(4) & (\inst|PC\(2) $ (((\inst|PC\(1)) # (\inst|PC\(3)))))) # (!\inst|PC\(4) & ((\inst|PC\(1) & (\inst|PC\(3) $ (\inst|PC\(2)))) # (!\inst|PC\(1) & ((\inst|PC\(2)) # (!\inst|PC\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011111101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC\(4),
	datab => \inst|PC\(1),
	datac => \inst|PC\(3),
	datad => \inst|PC\(2),
	combout => \inst|Mux39~0_combout\);

-- Location: LCCOMB_X24_Y9_N8
\inst|MAR[10]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|MAR[10]~2_combout\ = (\inst|PC\(5) & (!\inst|Mux48~0_combout\)) # (!\inst|PC\(5) & ((\inst|Mux39~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC\(5),
	datab => \inst|Mux48~0_combout\,
	datad => \inst|Mux39~0_combout\,
	combout => \inst|MAR[10]~2_combout\);

-- Location: LCCOMB_X24_Y9_N4
\inst|Mux39~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux39~1_combout\ = (\inst|PC\(4) & ((\inst|PC\(2)) # (\inst|PC\(5) $ (!\inst|PC\(1))))) # (!\inst|PC\(4) & ((\inst|PC\(1)) # (\inst|PC\(5) $ (!\inst|PC\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110111111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC\(5),
	datab => \inst|PC\(2),
	datac => \inst|PC\(1),
	datad => \inst|PC\(4),
	combout => \inst|Mux39~1_combout\);

-- Location: LCCOMB_X24_Y9_N22
\inst|Mux39~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux39~2_combout\ = (\inst|Mux39~1_combout\) # (\inst|PC\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Mux39~1_combout\,
	datac => \inst|PC\(3),
	combout => \inst|Mux39~2_combout\);

-- Location: FF_X24_Y9_N9
\inst|MAR[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|MAR[10]~2_combout\,
	asdata => \inst|Mux39~2_combout\,
	sload => \inst|PC\(0),
	ena => \inst|MAR[4]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MAR\(10));

-- Location: LCCOMB_X22_Y9_N30
\inst|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~0_combout\ = (\inst|MAR\(8) & (\inst|MAR\(11) & (!\inst|MAR\(9) & \inst|MAR\(10))))

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
	combout => \inst|Equal0~0_combout\);

-- Location: LCCOMB_X22_Y10_N10
\inst|REG_D[9]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|REG_D[9]~0_combout\ = (!\rst~input_o\ & (\inst|Equal0~0_combout\ & \inst|pr_state.state1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datac => \inst|Equal0~0_combout\,
	datad => \inst|pr_state.state1~q\,
	combout => \inst|REG_D[9]~0_combout\);

-- Location: FF_X22_Y12_N7
\inst|REG_D[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Mux49~0_combout\,
	ena => \inst|REG_D[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|REG_D\(9));

-- Location: LCCOMB_X22_Y10_N26
\inst|OP[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|OP[2]~0_combout\ = (!\rst~input_o\ & (!\inst|Equal0~0_combout\ & \inst|pr_state.state1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datac => \inst|Equal0~0_combout\,
	datad => \inst|pr_state.state1~q\,
	combout => \inst|OP[2]~0_combout\);

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
	ena => \inst|OP[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|OP\(0));

-- Location: FF_X22_Y9_N21
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
	ena => \inst|OP[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|OP\(2));

-- Location: FF_X22_Y9_N13
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
	ena => \inst|OP[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|OP\(3));

-- Location: FF_X22_Y9_N31
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
	ena => \inst|OP[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|OP\(1));

-- Location: LCCOMB_X22_Y14_N30
\inst|reggy~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~22_combout\ = (!\inst|OP\(2) & (!\inst|OP\(3) & ((\inst|OP\(0)) # (\inst|OP\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|OP\(0),
	datab => \inst|OP\(2),
	datac => \inst|OP\(3),
	datad => \inst|OP\(1),
	combout => \inst|reggy~22_combout\);

-- Location: LCCOMB_X22_Y14_N20
\inst|reggy~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~37_combout\ = (\inst|OP\(0) & ((\inst|OP\(1) & ((\inst|OP\(3)))) # (!\inst|OP\(1) & (\inst|OP\(2))))) # (!\inst|OP\(0) & (\inst|OP\(2) & ((\inst|OP\(3)) # (\inst|OP\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|OP\(0),
	datab => \inst|OP\(2),
	datac => \inst|OP\(3),
	datad => \inst|OP\(1),
	combout => \inst|reggy~37_combout\);

-- Location: LCCOMB_X22_Y14_N22
\inst|reggy~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~38_combout\ = (\inst|OP\(2) & (!\inst|OP\(3) & ((!\inst|OP\(1)) # (!\inst|OP\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|OP\(0),
	datab => \inst|OP\(2),
	datac => \inst|OP\(3),
	datad => \inst|OP\(1),
	combout => \inst|reggy~38_combout\);

-- Location: LCCOMB_X23_Y9_N16
\inst|Mux43~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux43~2_combout\ = (\inst|PC\(4) & (\inst|PC\(1) & \inst|PC\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|PC\(4),
	datac => \inst|PC\(1),
	datad => \inst|PC\(2),
	combout => \inst|Mux43~2_combout\);

-- Location: LCCOMB_X23_Y9_N18
\inst|Mux43~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux43~1_combout\ = (\inst|PC\(5) & (!\inst|PC\(1) & ((!\inst|PC\(2))))) # (!\inst|PC\(5) & (\inst|PC\(2) $ (((\inst|PC\(1)) # (\inst|PC\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC\(5),
	datab => \inst|PC\(1),
	datac => \inst|PC\(4),
	datad => \inst|PC\(2),
	combout => \inst|Mux43~1_combout\);

-- Location: LCCOMB_X23_Y9_N0
\inst|MAR[5]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|MAR[5]~0_combout\ = (\inst|PC\(3) & (\inst|Mux43~2_combout\)) # (!\inst|PC\(3) & ((\inst|Mux43~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC\(3),
	datab => \inst|Mux43~2_combout\,
	datad => \inst|Mux43~1_combout\,
	combout => \inst|MAR[5]~0_combout\);

-- Location: LCCOMB_X24_Y9_N10
\inst|Mux43~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux43~3_combout\ = (\inst|PC\(3) & (!\inst|PC\(4) & (!\inst|PC\(1) & !\inst|PC\(2)))) # (!\inst|PC\(3) & (\inst|PC\(2) & ((\inst|PC\(4)) # (\inst|PC\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC\(4),
	datab => \inst|PC\(1),
	datac => \inst|PC\(3),
	datad => \inst|PC\(2),
	combout => \inst|Mux43~3_combout\);

-- Location: LCCOMB_X24_Y9_N0
\inst|Mux43~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux43~4_combout\ = (\inst|PC\(5) & (\inst|PC\(2) $ ((\inst|PC\(1))))) # (!\inst|PC\(5) & (((\inst|Mux43~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC\(5),
	datab => \inst|PC\(2),
	datac => \inst|PC\(1),
	datad => \inst|Mux43~3_combout\,
	combout => \inst|Mux43~4_combout\);

-- Location: FF_X23_Y9_N1
\inst|MAR[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|MAR[5]~0_combout\,
	asdata => \inst|Mux43~4_combout\,
	sload => \inst|ALT_INV_PC\(0),
	ena => \inst|MAR[4]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MAR\(5));

-- Location: LCCOMB_X22_Y10_N14
\inst|flag~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|flag~2_combout\ = (\inst|pr_state.state2~q\ & !\rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pr_state.state2~q\,
	datac => \rst~input_o\,
	combout => \inst|flag~2_combout\);

-- Location: LCCOMB_X23_Y9_N22
\inst|Mux44~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux44~1_combout\ = (\inst|PC\(4) & ((\inst|PC\(2)) # (!\inst|PC\(1)))) # (!\inst|PC\(4) & ((\inst|PC\(1)) # (!\inst|PC\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|PC\(4),
	datac => \inst|PC\(1),
	datad => \inst|PC\(2),
	combout => \inst|Mux44~1_combout\);

-- Location: LCCOMB_X24_Y9_N26
\inst|Mux44~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux44~0_combout\ = (\inst|PC\(5) & (!\inst|PC\(2) & (\inst|PC\(1)))) # (!\inst|PC\(5) & ((\inst|PC\(2) & (\inst|PC\(1) $ (\inst|PC\(4)))) # (!\inst|PC\(2) & (!\inst|PC\(1) & !\inst|PC\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010001100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC\(5),
	datab => \inst|PC\(2),
	datac => \inst|PC\(1),
	datad => \inst|PC\(4),
	combout => \inst|Mux44~0_combout\);

-- Location: LCCOMB_X23_Y9_N30
\inst|MAR[4]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|MAR[4]~1_combout\ = (\inst|PC\(3) & (!\inst|Mux44~1_combout\)) # (!\inst|PC\(3) & ((\inst|Mux44~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux44~1_combout\,
	datab => \inst|Mux44~0_combout\,
	datad => \inst|PC\(3),
	combout => \inst|MAR[4]~1_combout\);

-- Location: LCCOMB_X23_Y9_N12
\inst|Mux44~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux44~2_combout\ = (\inst|PC\(3) & (!\inst|PC\(4) & (!\inst|PC\(1) & !\inst|PC\(2)))) # (!\inst|PC\(3) & ((\inst|PC\(2)) # ((\inst|PC\(4) & \inst|PC\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC\(3),
	datab => \inst|PC\(4),
	datac => \inst|PC\(1),
	datad => \inst|PC\(2),
	combout => \inst|Mux44~2_combout\);

-- Location: LCCOMB_X23_Y9_N14
\inst|Mux44~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux44~3_combout\ = (\inst|PC\(5) & (((!\inst|PC\(2)) # (!\inst|PC\(1))))) # (!\inst|PC\(5) & (\inst|Mux44~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux44~2_combout\,
	datab => \inst|PC\(1),
	datac => \inst|PC\(5),
	datad => \inst|PC\(2),
	combout => \inst|Mux44~3_combout\);

-- Location: FF_X23_Y9_N31
\inst|MAR[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|MAR[4]~1_combout\,
	asdata => \inst|Mux44~3_combout\,
	sload => \inst|ALT_INV_PC\(0),
	ena => \inst|MAR[4]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MAR\(4));

-- Location: LCCOMB_X23_Y8_N0
\inst|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux4~0_combout\ = (\inst|PC\(0) & (\inst|PC\(2) & (\inst|PC\(1) $ (\inst|PC\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC\(1),
	datab => \inst|PC\(4),
	datac => \inst|PC\(0),
	datad => \inst|PC\(2),
	combout => \inst|Mux4~0_combout\);

-- Location: FF_X23_Y8_N1
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
	ena => \inst|MAR[4]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MAR\(6));

-- Location: LCCOMB_X19_Y13_N6
\inst|Decoder0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Decoder0~7_combout\ = (\inst|MAR\(5) & (\inst|flag~2_combout\ & (\inst|MAR\(4) & \inst|MAR\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MAR\(5),
	datab => \inst|flag~2_combout\,
	datac => \inst|MAR\(4),
	datad => \inst|MAR\(6),
	combout => \inst|Decoder0~7_combout\);

-- Location: FF_X23_Y13_N11
\inst|reggy[7][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~41_combout\,
	sload => VCC,
	ena => \inst|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy[7][9]~q\);

-- Location: LCCOMB_X23_Y14_N20
\inst|Decoder0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Decoder0~4_combout\ = (\inst|flag~2_combout\ & (!\inst|MAR\(5) & (\inst|MAR\(4) & \inst|MAR\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|flag~2_combout\,
	datab => \inst|MAR\(5),
	datac => \inst|MAR\(4),
	datad => \inst|MAR\(6),
	combout => \inst|Decoder0~4_combout\);

-- Location: FF_X23_Y14_N25
\inst|reggy[5][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~41_combout\,
	sload => VCC,
	ena => \inst|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy[5][9]~q\);

-- Location: LCCOMB_X19_Y14_N14
\inst|Decoder0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Decoder0~6_combout\ = (!\inst|MAR\(5) & (!\inst|MAR\(4) & (\inst|flag~2_combout\ & \inst|MAR\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MAR\(5),
	datab => \inst|MAR\(4),
	datac => \inst|flag~2_combout\,
	datad => \inst|MAR\(6),
	combout => \inst|Decoder0~6_combout\);

-- Location: FF_X19_Y14_N27
\inst|reggy[4][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~41_combout\,
	sload => VCC,
	ena => \inst|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy[4][9]~q\);

-- Location: LCCOMB_X19_Y13_N24
\inst|Decoder0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Decoder0~5_combout\ = (\inst|MAR\(5) & (\inst|flag~2_combout\ & (!\inst|MAR\(4) & \inst|MAR\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MAR\(5),
	datab => \inst|flag~2_combout\,
	datac => \inst|MAR\(4),
	datad => \inst|MAR\(6),
	combout => \inst|Decoder0~5_combout\);

-- Location: FF_X19_Y14_N21
\inst|reggy[6][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~41_combout\,
	sload => VCC,
	ena => \inst|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy[6][9]~q\);

-- Location: LCCOMB_X19_Y14_N26
\inst|Mux55~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux55~0_combout\ = (\inst|MAR\(1) & ((\inst|MAR\(0)) # ((\inst|reggy[6][9]~q\)))) # (!\inst|MAR\(1) & (!\inst|MAR\(0) & (\inst|reggy[4][9]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MAR\(1),
	datab => \inst|MAR\(0),
	datac => \inst|reggy[4][9]~q\,
	datad => \inst|reggy[6][9]~q\,
	combout => \inst|Mux55~0_combout\);

-- Location: LCCOMB_X23_Y14_N24
\inst|Mux55~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux55~1_combout\ = (\inst|MAR\(0) & ((\inst|Mux55~0_combout\ & (\inst|reggy[7][9]~q\)) # (!\inst|Mux55~0_combout\ & ((\inst|reggy[5][9]~q\))))) # (!\inst|MAR\(0) & (((\inst|Mux55~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MAR\(0),
	datab => \inst|reggy[7][9]~q\,
	datac => \inst|reggy[5][9]~q\,
	datad => \inst|Mux55~0_combout\,
	combout => \inst|Mux55~1_combout\);

-- Location: LCCOMB_X23_Y14_N30
\inst|Decoder0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Decoder0~3_combout\ = (\inst|flag~2_combout\ & (\inst|MAR\(5) & (\inst|MAR\(4) & !\inst|MAR\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|flag~2_combout\,
	datab => \inst|MAR\(5),
	datac => \inst|MAR\(4),
	datad => \inst|MAR\(6),
	combout => \inst|Decoder0~3_combout\);

-- Location: FF_X23_Y14_N27
\inst|reggy[3][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~41_combout\,
	sload => VCC,
	ena => \inst|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy[3][9]~q\);

-- Location: LCCOMB_X19_Y14_N12
\inst|Decoder0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Decoder0~1_combout\ = (!\inst|MAR\(5) & (\inst|MAR\(4) & (\inst|flag~2_combout\ & !\inst|MAR\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MAR\(5),
	datab => \inst|MAR\(4),
	datac => \inst|flag~2_combout\,
	datad => \inst|MAR\(6),
	combout => \inst|Decoder0~1_combout\);

-- Location: FF_X21_Y14_N25
\inst|reggy[1][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~41_combout\,
	sload => VCC,
	ena => \inst|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy[1][9]~q\);

-- Location: LCCOMB_X23_Y14_N28
\inst|Decoder0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Decoder0~2_combout\ = (\inst|flag~2_combout\ & (!\inst|MAR\(5) & (!\inst|MAR\(4) & !\inst|MAR\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|flag~2_combout\,
	datab => \inst|MAR\(5),
	datac => \inst|MAR\(4),
	datad => \inst|MAR\(6),
	combout => \inst|Decoder0~2_combout\);

-- Location: FF_X22_Y14_N15
\inst|reggy[0][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~41_combout\,
	sload => VCC,
	ena => \inst|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy[0][9]~q\);

-- Location: LCCOMB_X21_Y14_N24
\inst|Mux55~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux55~2_combout\ = (\inst|MAR\(0) & ((\inst|MAR\(1)) # ((\inst|reggy[1][9]~q\)))) # (!\inst|MAR\(0) & (!\inst|MAR\(1) & ((\inst|reggy[0][9]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MAR\(0),
	datab => \inst|MAR\(1),
	datac => \inst|reggy[1][9]~q\,
	datad => \inst|reggy[0][9]~q\,
	combout => \inst|Mux55~2_combout\);

-- Location: LCCOMB_X21_Y14_N26
\inst|Mux55~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux55~3_combout\ = (\inst|MAR\(1) & ((\inst|Mux55~2_combout\ & (\inst|reggy[3][9]~q\)) # (!\inst|Mux55~2_combout\ & ((\inst|reggy[2][9]~q\))))) # (!\inst|MAR\(1) & (((\inst|Mux55~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy[3][9]~q\,
	datab => \inst|MAR\(1),
	datac => \inst|reggy[2][9]~q\,
	datad => \inst|Mux55~2_combout\,
	combout => \inst|Mux55~3_combout\);

-- Location: LCCOMB_X22_Y12_N28
\inst|Mux55~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux55~4_combout\ = (\inst|MAR\(2) & (\inst|Mux55~1_combout\)) # (!\inst|MAR\(2) & ((\inst|Mux55~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|MAR\(2),
	datac => \inst|Mux55~1_combout\,
	datad => \inst|Mux55~3_combout\,
	combout => \inst|Mux55~4_combout\);

-- Location: FF_X22_Y12_N29
\inst|REG_B[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Mux55~4_combout\,
	ena => \inst|OP[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|REG_B\(9));

-- Location: LCCOMB_X22_Y14_N6
\inst|alu1|unidad_logica|salida[9]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|salida[9]~33_combout\ = (\inst|OP\(2) & (!\inst|OP\(0) & (!\inst|OP\(3)))) # (!\inst|OP\(2) & (!\inst|OP\(1) & ((\inst|OP\(0)) # (\inst|OP\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|OP\(0),
	datab => \inst|OP\(2),
	datac => \inst|OP\(3),
	datad => \inst|OP\(1),
	combout => \inst|alu1|unidad_logica|salida[9]~33_combout\);

-- Location: LCCOMB_X18_Y12_N10
\inst|alu1|Mux10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux10~1_combout\ = \inst|OP\(0) $ (\inst|OP\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|OP\(0),
	datad => \inst|OP\(1),
	combout => \inst|alu1|Mux10~1_combout\);

-- Location: LCCOMB_X19_Y13_N16
\inst|reggy~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~29_combout\ = \inst|OP\(2) $ (((\inst|OP\(0)) # (\inst|OP\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|OP\(2),
	datac => \inst|OP\(0),
	datad => \inst|OP\(1),
	combout => \inst|reggy~29_combout\);

-- Location: FF_X21_Y14_N19
\inst|reggy[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~36_combout\,
	sload => VCC,
	ena => \inst|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy[1][7]~q\);

-- Location: LCCOMB_X24_Y14_N14
\inst|reggy[0][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy[0][7]~feeder_combout\ = \inst|reggy~36_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|reggy~36_combout\,
	combout => \inst|reggy[0][7]~feeder_combout\);

-- Location: FF_X24_Y14_N15
\inst|reggy[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|reggy[0][7]~feeder_combout\,
	ena => \inst|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy[0][7]~q\);

-- Location: LCCOMB_X21_Y14_N18
\inst|Mux57~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux57~2_combout\ = (\inst|MAR\(0) & ((\inst|MAR\(1)) # ((\inst|reggy[1][7]~q\)))) # (!\inst|MAR\(0) & (!\inst|MAR\(1) & ((\inst|reggy[0][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MAR\(0),
	datab => \inst|MAR\(1),
	datac => \inst|reggy[1][7]~q\,
	datad => \inst|reggy[0][7]~q\,
	combout => \inst|Mux57~2_combout\);

-- Location: LCCOMB_X19_Y13_N2
\inst|Decoder0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Decoder0~0_combout\ = (\inst|MAR\(5) & (\inst|flag~2_combout\ & (!\inst|MAR\(4) & !\inst|MAR\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MAR\(5),
	datab => \inst|flag~2_combout\,
	datac => \inst|MAR\(4),
	datad => \inst|MAR\(6),
	combout => \inst|Decoder0~0_combout\);

-- Location: FF_X21_Y14_N13
\inst|reggy[2][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~36_combout\,
	sload => VCC,
	ena => \inst|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy[2][7]~q\);

-- Location: FF_X23_Y14_N13
\inst|reggy[3][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~36_combout\,
	sload => VCC,
	ena => \inst|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy[3][7]~q\);

-- Location: LCCOMB_X21_Y14_N12
\inst|Mux57~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux57~3_combout\ = (\inst|Mux57~2_combout\ & (((\inst|reggy[3][7]~q\)) # (!\inst|MAR\(1)))) # (!\inst|Mux57~2_combout\ & (\inst|MAR\(1) & (\inst|reggy[2][7]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux57~2_combout\,
	datab => \inst|MAR\(1),
	datac => \inst|reggy[2][7]~q\,
	datad => \inst|reggy[3][7]~q\,
	combout => \inst|Mux57~3_combout\);

-- Location: FF_X19_Y14_N3
\inst|reggy[4][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~36_combout\,
	sload => VCC,
	ena => \inst|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy[4][7]~q\);

-- Location: LCCOMB_X19_Y14_N2
\inst|Mux57~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux57~0_combout\ = (\inst|MAR\(1) & ((\inst|MAR\(0)) # ((\inst|reggy[6][7]~q\)))) # (!\inst|MAR\(1) & (!\inst|MAR\(0) & (\inst|reggy[4][7]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MAR\(1),
	datab => \inst|MAR\(0),
	datac => \inst|reggy[4][7]~q\,
	datad => \inst|reggy[6][7]~q\,
	combout => \inst|Mux57~0_combout\);

-- Location: FF_X23_Y14_N15
\inst|reggy[5][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~36_combout\,
	sload => VCC,
	ena => \inst|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy[5][7]~q\);

-- Location: FF_X18_Y12_N27
\inst|reggy[7][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|reggy~36_combout\,
	ena => \inst|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy[7][7]~q\);

-- Location: LCCOMB_X23_Y14_N14
\inst|Mux57~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux57~1_combout\ = (\inst|MAR\(0) & ((\inst|Mux57~0_combout\ & ((\inst|reggy[7][7]~q\))) # (!\inst|Mux57~0_combout\ & (\inst|reggy[5][7]~q\)))) # (!\inst|MAR\(0) & (\inst|Mux57~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MAR\(0),
	datab => \inst|Mux57~0_combout\,
	datac => \inst|reggy[5][7]~q\,
	datad => \inst|reggy[7][7]~q\,
	combout => \inst|Mux57~1_combout\);

-- Location: LCCOMB_X23_Y13_N4
\inst|Mux57~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux57~4_combout\ = (\inst|MAR\(2) & ((\inst|Mux57~1_combout\))) # (!\inst|MAR\(2) & (\inst|Mux57~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MAR\(2),
	datab => \inst|Mux57~3_combout\,
	datac => \inst|Mux57~1_combout\,
	combout => \inst|Mux57~4_combout\);

-- Location: FF_X23_Y13_N5
\inst|REG_B[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Mux57~4_combout\,
	ena => \inst|OP[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|REG_B\(7));

-- Location: LCCOMB_X22_Y9_N0
\inst|alu1|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux11~0_combout\ = (!\inst|OP\(0) & ((\inst|OP\(3) & ((!\inst|OP\(2)))) # (!\inst|OP\(3) & ((\inst|OP\(1)) # (\inst|OP\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|OP\(3),
	datab => \inst|OP\(0),
	datac => \inst|OP\(1),
	datad => \inst|OP\(2),
	combout => \inst|alu1|Mux11~0_combout\);

-- Location: LCCOMB_X22_Y9_N8
\inst|alu1|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux10~0_combout\ = (!\inst|OP\(2) & (\inst|OP\(1) $ (\inst|OP\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|OP\(1),
	datab => \inst|OP\(2),
	datac => \inst|OP\(0),
	combout => \inst|alu1|Mux10~0_combout\);

-- Location: LCCOMB_X23_Y10_N22
\inst|alu1|unidad_logica|salida~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|salida~11_combout\ = (\inst|REG_B\(7) & \inst|REG_A\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|REG_B\(7),
	datad => \inst|REG_A\(7),
	combout => \inst|alu1|unidad_logica|salida~11_combout\);

-- Location: LCCOMB_X18_Y12_N28
\inst|reggy~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~35_combout\ = (\inst|OP\(2) & (((\inst|OP\(3)) # (!\inst|OP\(1))) # (!\inst|OP\(0)))) # (!\inst|OP\(2) & (((\inst|OP\(0) & \inst|OP\(1))) # (!\inst|OP\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|OP\(0),
	datab => \inst|OP\(2),
	datac => \inst|OP\(3),
	datad => \inst|OP\(1),
	combout => \inst|reggy~35_combout\);

-- Location: LCCOMB_X19_Y11_N26
\inst|reggy~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~42_combout\ = (\inst|reggy~35_combout\ & (!\inst|Equal0~0_combout\ & ((\inst|OP\(2)) # (\inst|reggy~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|OP\(2),
	datab => \inst|reggy~35_combout\,
	datac => \inst|reggy~29_combout\,
	datad => \inst|Equal0~0_combout\,
	combout => \inst|reggy~42_combout\);

-- Location: LCCOMB_X22_Y13_N0
\inst|Mux54~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux54~0_combout\ = (\inst|MAR\(1) & (((!\inst|MAR\(3) & \inst|MAR\(0))) # (!\inst|MAR\(2)))) # (!\inst|MAR\(1) & (!\inst|MAR\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MAR\(3),
	datab => \inst|MAR\(0),
	datac => \inst|MAR\(2),
	datad => \inst|MAR\(1),
	combout => \inst|Mux54~0_combout\);

-- Location: FF_X22_Y13_N1
\inst|REG_D[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Mux54~0_combout\,
	ena => \inst|REG_D[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|REG_D\(0));

-- Location: FF_X19_Y14_N29
\inst|reggy[6][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~21_combout\,
	sload => VCC,
	ena => \inst|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy[6][0]~q\);

-- Location: FF_X19_Y14_N7
\inst|reggy[4][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~21_combout\,
	sload => VCC,
	ena => \inst|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy[4][0]~q\);

-- Location: LCCOMB_X19_Y14_N6
\inst|Mux64~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux64~0_combout\ = (\inst|MAR\(0) & (((\inst|MAR\(1))))) # (!\inst|MAR\(0) & ((\inst|MAR\(1) & (\inst|reggy[6][0]~q\)) # (!\inst|MAR\(1) & ((\inst|reggy[4][0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy[6][0]~q\,
	datab => \inst|MAR\(0),
	datac => \inst|reggy[4][0]~q\,
	datad => \inst|MAR\(1),
	combout => \inst|Mux64~0_combout\);

-- Location: FF_X23_Y14_N19
\inst|reggy[5][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~21_combout\,
	sload => VCC,
	ena => \inst|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy[5][0]~q\);

-- Location: FF_X22_Y14_N1
\inst|reggy[7][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|reggy~21_combout\,
	ena => \inst|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy[7][0]~q\);

-- Location: LCCOMB_X23_Y14_N18
\inst|Mux64~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux64~1_combout\ = (\inst|MAR\(0) & ((\inst|Mux64~0_combout\ & ((\inst|reggy[7][0]~q\))) # (!\inst|Mux64~0_combout\ & (\inst|reggy[5][0]~q\)))) # (!\inst|MAR\(0) & (\inst|Mux64~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MAR\(0),
	datab => \inst|Mux64~0_combout\,
	datac => \inst|reggy[5][0]~q\,
	datad => \inst|reggy[7][0]~q\,
	combout => \inst|Mux64~1_combout\);

-- Location: LCCOMB_X22_Y14_N8
\inst|reggy[0][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy[0][0]~feeder_combout\ = \inst|reggy~21_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|reggy~21_combout\,
	combout => \inst|reggy[0][0]~feeder_combout\);

-- Location: FF_X22_Y14_N9
\inst|reggy[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|reggy[0][0]~feeder_combout\,
	ena => \inst|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy[0][0]~q\);

-- Location: FF_X21_Y14_N7
\inst|reggy[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~21_combout\,
	sload => VCC,
	ena => \inst|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy[1][0]~q\);

-- Location: LCCOMB_X21_Y14_N6
\inst|Mux64~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux64~2_combout\ = (\inst|MAR\(0) & (((\inst|reggy[1][0]~q\) # (\inst|MAR\(1))))) # (!\inst|MAR\(0) & (\inst|reggy[0][0]~q\ & ((!\inst|MAR\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MAR\(0),
	datab => \inst|reggy[0][0]~q\,
	datac => \inst|reggy[1][0]~q\,
	datad => \inst|MAR\(1),
	combout => \inst|Mux64~2_combout\);

-- Location: FF_X23_Y14_N9
\inst|reggy[3][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~21_combout\,
	sload => VCC,
	ena => \inst|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy[3][0]~q\);

-- Location: LCCOMB_X21_Y14_N4
\inst|Mux64~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux64~3_combout\ = (\inst|Mux64~2_combout\ & (((\inst|reggy[3][0]~q\)) # (!\inst|MAR\(1)))) # (!\inst|Mux64~2_combout\ & (\inst|MAR\(1) & (\inst|reggy[2][0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux64~2_combout\,
	datab => \inst|MAR\(1),
	datac => \inst|reggy[2][0]~q\,
	datad => \inst|reggy[3][0]~q\,
	combout => \inst|Mux64~3_combout\);

-- Location: LCCOMB_X21_Y14_N20
\inst|Mux64~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux64~4_combout\ = (\inst|MAR\(2) & (\inst|Mux64~1_combout\)) # (!\inst|MAR\(2) & ((\inst|Mux64~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Mux64~1_combout\,
	datac => \inst|Mux64~3_combout\,
	datad => \inst|MAR\(2),
	combout => \inst|Mux64~4_combout\);

-- Location: FF_X21_Y13_N31
\inst|REG_B[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|Mux64~4_combout\,
	sload => VCC,
	ena => \inst|OP[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|REG_B\(0));

-- Location: LCCOMB_X21_Y10_N14
\inst|alu1|unidad_logica|aux[0]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|aux[0]~9_combout\ = (\inst|alu1|Mux11~0_combout\ & ((\inst|alu1|Mux10~0_combout\ & (\inst|REG_A\(0))) # (!\inst|alu1|Mux10~0_combout\ & ((\inst|alu1|unidad_logica|aux\(0)))))) # (!\inst|alu1|Mux11~0_combout\ & 
-- (((\inst|alu1|unidad_logica|aux\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(0),
	datab => \inst|alu1|Mux11~0_combout\,
	datac => \inst|alu1|unidad_logica|aux\(0),
	datad => \inst|alu1|Mux10~0_combout\,
	combout => \inst|alu1|unidad_logica|aux[0]~9_combout\);

-- Location: FF_X21_Y10_N15
\inst|alu1|unidad_logica|aux[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|alu1|unidad_logica|aux[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|unidad_logica|aux\(0));

-- Location: LCCOMB_X21_Y10_N10
\inst|alu1|unidad_logica|salida~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|salida~4_combout\ = (\inst|REG_A\(0) & \inst|REG_B\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|REG_A\(0),
	datad => \inst|REG_B\(0),
	combout => \inst|alu1|unidad_logica|salida~4_combout\);

-- Location: LCCOMB_X21_Y10_N0
\inst|alu1|unidad_logica|salida~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|salida~6_combout\ = (\inst|alu1|Mux10~0_combout\ & (((\inst|alu1|unidad_logica|aux\(0))) # (!\inst|alu1|Mux11~0_combout\))) # (!\inst|alu1|Mux10~0_combout\ & (!\inst|alu1|Mux11~0_combout\ & 
-- ((\inst|alu1|unidad_logica|salida~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux10~0_combout\,
	datab => \inst|alu1|Mux11~0_combout\,
	datac => \inst|alu1|unidad_logica|aux\(0),
	datad => \inst|alu1|unidad_logica|salida~4_combout\,
	combout => \inst|alu1|unidad_logica|salida~6_combout\);

-- Location: LCCOMB_X21_Y10_N24
\inst|alu1|unidad_logica|salida~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|salida~7_combout\ = (\inst|alu1|unidad_logica|salida[9]~33_combout\ & ((\inst|REG_A\(0) & ((!\inst|alu1|unidad_logica|salida~6_combout\))) # (!\inst|REG_A\(0) & ((\inst|REG_B\(0)) # (\inst|alu1|unidad_logica|salida~6_combout\))))) 
-- # (!\inst|alu1|unidad_logica|salida[9]~33_combout\ & (((\inst|alu1|unidad_logica|salida~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(0),
	datab => \inst|alu1|unidad_logica|salida[9]~33_combout\,
	datac => \inst|REG_A\(0),
	datad => \inst|alu1|unidad_logica|salida~6_combout\,
	combout => \inst|alu1|unidad_logica|salida~7_combout\);

-- Location: FF_X21_Y10_N25
\inst|alu1|unidad_logica|salida[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|alu1|unidad_logica|salida~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|unidad_logica|salida\(0));

-- Location: LCCOMB_X22_Y14_N4
\inst|reggy~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~12_combout\ = (\inst|OP\(2) & (!\inst|OP\(0) & ((!\inst|OP\(1))))) # (!\inst|OP\(2) & (!\inst|OP\(3) & ((\inst|OP\(0)) # (\inst|OP\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001101000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|OP\(0),
	datab => \inst|OP\(2),
	datac => \inst|OP\(3),
	datad => \inst|OP\(1),
	combout => \inst|reggy~12_combout\);

-- Location: LCCOMB_X22_Y14_N2
\inst|reggy~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~13_combout\ = (\inst|OP\(2) & ((\inst|OP\(3)) # ((\inst|OP\(0) & \inst|OP\(1))))) # (!\inst|OP\(2) & (\inst|OP\(0) & (\inst|OP\(3) & \inst|OP\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|OP\(0),
	datab => \inst|OP\(2),
	datac => \inst|OP\(3),
	datad => \inst|OP\(1),
	combout => \inst|reggy~13_combout\);

-- Location: LCCOMB_X21_Y10_N6
\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~31_combout\ = (!\inst|OP\(2) & (\inst|OP\(1) & !\inst|OP\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|OP\(2),
	datab => \inst|OP\(1),
	datad => \inst|OP\(0),
	combout => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~31_combout\);

-- Location: LCCOMB_X19_Y12_N28
\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~4_combout\ = (\inst|REG_A\(0) & (\inst|REG_B\(0) $ (!\inst|alu1|Mux10~0_combout\))) # (!\inst|REG_A\(0) & (\inst|REG_B\(0) & !\inst|alu1|Mux10~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|REG_A\(0),
	datac => \inst|REG_B\(0),
	datad => \inst|alu1|Mux10~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~4_combout\);

-- Location: LCCOMB_X19_Y12_N2
\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~5_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~31_combout\ & (!\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~4_combout\ & VCC)) # 
-- (!\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~31_combout\ & (\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~4_combout\ $ (GND)))
-- \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~6\ = CARRY((!\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~31_combout\ & !\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~31_combout\,
	datab => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~4_combout\,
	datad => VCC,
	combout => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~5_combout\,
	cout => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~6\);

-- Location: LCCOMB_X23_Y10_N18
\inst|alu1|unidad_aritmetica|suma|Xop[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|Xop\(7) = \inst|REG_A\(9) $ (\inst|REG_A\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|REG_A\(9),
	datad => \inst|REG_A\(7),
	combout => \inst|alu1|unidad_aritmetica|suma|Xop\(7));

-- Location: FF_X18_Y14_N5
\inst|reggy[3][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~65_combout\,
	sload => VCC,
	ena => \inst|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy[3][5]~q\);

-- Location: LCCOMB_X18_Y14_N22
\inst|reggy[0][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy[0][5]~feeder_combout\ = \inst|reggy~65_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|reggy~65_combout\,
	combout => \inst|reggy[0][5]~feeder_combout\);

-- Location: FF_X18_Y14_N23
\inst|reggy[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|reggy[0][5]~feeder_combout\,
	ena => \inst|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy[0][5]~q\);

-- Location: FF_X17_Y13_N9
\inst|reggy[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~65_combout\,
	sload => VCC,
	ena => \inst|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy[1][5]~q\);

-- Location: LCCOMB_X17_Y13_N8
\inst|Mux59~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux59~2_combout\ = (\inst|MAR\(0) & (((\inst|reggy[1][5]~q\) # (\inst|MAR\(1))))) # (!\inst|MAR\(0) & (\inst|reggy[0][5]~q\ & ((!\inst|MAR\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy[0][5]~q\,
	datab => \inst|MAR\(0),
	datac => \inst|reggy[1][5]~q\,
	datad => \inst|MAR\(1),
	combout => \inst|Mux59~2_combout\);

-- Location: LCCOMB_X17_Y13_N14
\inst|Mux59~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux59~3_combout\ = (\inst|Mux59~2_combout\ & ((\inst|reggy[3][5]~q\) # ((!\inst|MAR\(1))))) # (!\inst|Mux59~2_combout\ & (((\inst|reggy[2][5]~q\ & \inst|MAR\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy[3][5]~q\,
	datab => \inst|Mux59~2_combout\,
	datac => \inst|reggy[2][5]~q\,
	datad => \inst|MAR\(1),
	combout => \inst|Mux59~3_combout\);

-- Location: FF_X18_Y13_N19
\inst|reggy[4][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~65_combout\,
	sload => VCC,
	ena => \inst|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy[4][5]~q\);

-- Location: FF_X19_Y13_N29
\inst|reggy[6][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~65_combout\,
	sload => VCC,
	ena => \inst|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy[6][5]~q\);

-- Location: LCCOMB_X18_Y13_N18
\inst|Mux59~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux59~0_combout\ = (\inst|MAR\(1) & ((\inst|MAR\(0)) # ((\inst|reggy[6][5]~q\)))) # (!\inst|MAR\(1) & (!\inst|MAR\(0) & (\inst|reggy[4][5]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MAR\(1),
	datab => \inst|MAR\(0),
	datac => \inst|reggy[4][5]~q\,
	datad => \inst|reggy[6][5]~q\,
	combout => \inst|Mux59~0_combout\);

-- Location: FF_X18_Y13_N9
\inst|reggy[5][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~65_combout\,
	sload => VCC,
	ena => \inst|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy[5][5]~q\);

-- Location: FF_X19_Y13_N19
\inst|reggy[7][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|reggy~65_combout\,
	ena => \inst|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy[7][5]~q\);

-- Location: LCCOMB_X18_Y13_N8
\inst|Mux59~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux59~1_combout\ = (\inst|MAR\(0) & ((\inst|Mux59~0_combout\ & ((\inst|reggy[7][5]~q\))) # (!\inst|Mux59~0_combout\ & (\inst|reggy[5][5]~q\)))) # (!\inst|MAR\(0) & (\inst|Mux59~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MAR\(0),
	datab => \inst|Mux59~0_combout\,
	datac => \inst|reggy[5][5]~q\,
	datad => \inst|reggy[7][5]~q\,
	combout => \inst|Mux59~1_combout\);

-- Location: LCCOMB_X18_Y13_N30
\inst|Mux59~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux59~4_combout\ = (\inst|MAR\(2) & ((\inst|Mux59~1_combout\))) # (!\inst|MAR\(2) & (\inst|Mux59~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux59~3_combout\,
	datac => \inst|MAR\(2),
	datad => \inst|Mux59~1_combout\,
	combout => \inst|Mux59~4_combout\);

-- Location: FF_X21_Y13_N9
\inst|REG_B[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|Mux59~4_combout\,
	sload => VCC,
	ena => \inst|OP[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|REG_B\(5));

-- Location: LCCOMB_X24_Y10_N28
\inst|alu1|unidad_aritmetica|suma|Xop[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|Xop\(5) = \inst|REG_A\(5) $ (\inst|REG_A\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(5),
	datad => \inst|REG_A\(9),
	combout => \inst|alu1|unidad_aritmetica|suma|Xop\(5));

-- Location: FF_X17_Y13_N13
\inst|reggy[2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~74_combout\,
	sload => VCC,
	ena => \inst|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy[2][4]~q\);

-- Location: FF_X18_Y14_N13
\inst|reggy[3][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~74_combout\,
	sload => VCC,
	ena => \inst|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy[3][4]~q\);

-- Location: FF_X17_Y13_N3
\inst|reggy[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~74_combout\,
	sload => VCC,
	ena => \inst|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy[1][4]~q\);

-- Location: LCCOMB_X18_Y14_N30
\inst|reggy[0][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy[0][4]~feeder_combout\ = \inst|reggy~74_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|reggy~74_combout\,
	combout => \inst|reggy[0][4]~feeder_combout\);

-- Location: FF_X18_Y14_N31
\inst|reggy[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|reggy[0][4]~feeder_combout\,
	ena => \inst|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy[0][4]~q\);

-- Location: LCCOMB_X17_Y13_N24
\inst|Mux70~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux70~0_combout\ = (\inst|MAR\(4) & ((\inst|MAR\(5)) # ((\inst|reggy[1][4]~q\)))) # (!\inst|MAR\(4) & (!\inst|MAR\(5) & ((\inst|reggy[0][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MAR\(4),
	datab => \inst|MAR\(5),
	datac => \inst|reggy[1][4]~q\,
	datad => \inst|reggy[0][4]~q\,
	combout => \inst|Mux70~0_combout\);

-- Location: LCCOMB_X18_Y14_N12
\inst|Mux70~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux70~1_combout\ = (\inst|MAR\(5) & ((\inst|Mux70~0_combout\ & ((\inst|reggy[3][4]~q\))) # (!\inst|Mux70~0_combout\ & (\inst|reggy[2][4]~q\)))) # (!\inst|MAR\(5) & (((\inst|Mux70~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy[2][4]~q\,
	datab => \inst|MAR\(5),
	datac => \inst|reggy[3][4]~q\,
	datad => \inst|Mux70~0_combout\,
	combout => \inst|Mux70~1_combout\);

-- Location: FF_X19_Y13_N27
\inst|reggy[7][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|reggy~74_combout\,
	ena => \inst|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy[7][4]~q\);

-- Location: FF_X19_Y13_N13
\inst|reggy[6][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~74_combout\,
	sload => VCC,
	ena => \inst|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy[6][4]~q\);

-- Location: LCCOMB_X19_Y13_N12
\inst|Mux70~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux70~2_combout\ = (\inst|MAR\(4) & (((\inst|MAR\(5))))) # (!\inst|MAR\(4) & ((\inst|MAR\(5) & ((\inst|reggy[6][4]~q\))) # (!\inst|MAR\(5) & (\inst|reggy[4][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MAR\(4),
	datab => \inst|reggy[4][4]~q\,
	datac => \inst|reggy[6][4]~q\,
	datad => \inst|MAR\(5),
	combout => \inst|Mux70~2_combout\);

-- Location: FF_X18_Y13_N7
\inst|reggy[5][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~74_combout\,
	sload => VCC,
	ena => \inst|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy[5][4]~q\);

-- Location: LCCOMB_X18_Y13_N26
\inst|Mux70~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux70~3_combout\ = (\inst|MAR\(4) & ((\inst|Mux70~2_combout\ & (\inst|reggy[7][4]~q\)) # (!\inst|Mux70~2_combout\ & ((\inst|reggy[5][4]~q\))))) # (!\inst|MAR\(4) & (((\inst|Mux70~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MAR\(4),
	datab => \inst|reggy[7][4]~q\,
	datac => \inst|Mux70~2_combout\,
	datad => \inst|reggy[5][4]~q\,
	combout => \inst|Mux70~3_combout\);

-- Location: LCCOMB_X17_Y14_N12
\inst|salida[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|salida[4]~7_combout\ = (\inst|MAR\(6) & ((\inst|Mux70~3_combout\))) # (!\inst|MAR\(6) & (\inst|Mux70~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Mux70~1_combout\,
	datac => \inst|MAR\(6),
	datad => \inst|Mux70~3_combout\,
	combout => \inst|salida[4]~7_combout\);

-- Location: FF_X17_Y14_N13
\inst|REG_A[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|salida[4]~7_combout\,
	ena => \inst|OP[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|REG_A\(4));

-- Location: FF_X19_Y14_N5
\inst|reggy[6][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~73_combout\,
	sload => VCC,
	ena => \inst|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy[6][3]~q\);

-- Location: FF_X19_Y14_N11
\inst|reggy[4][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~73_combout\,
	sload => VCC,
	ena => \inst|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy[4][3]~q\);

-- Location: LCCOMB_X19_Y14_N10
\inst|Mux61~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux61~0_combout\ = (\inst|MAR\(0) & (((\inst|MAR\(1))))) # (!\inst|MAR\(0) & ((\inst|MAR\(1) & (\inst|reggy[6][3]~q\)) # (!\inst|MAR\(1) & ((\inst|reggy[4][3]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy[6][3]~q\,
	datab => \inst|MAR\(0),
	datac => \inst|reggy[4][3]~q\,
	datad => \inst|MAR\(1),
	combout => \inst|Mux61~0_combout\);

-- Location: FF_X18_Y13_N1
\inst|reggy[5][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~73_combout\,
	sload => VCC,
	ena => \inst|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy[5][3]~q\);

-- Location: FF_X19_Y11_N11
\inst|reggy[7][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|reggy~73_combout\,
	ena => \inst|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy[7][3]~q\);

-- Location: LCCOMB_X18_Y13_N0
\inst|Mux61~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux61~1_combout\ = (\inst|Mux61~0_combout\ & (((\inst|reggy[7][3]~q\)) # (!\inst|MAR\(0)))) # (!\inst|Mux61~0_combout\ & (\inst|MAR\(0) & (\inst|reggy[5][3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux61~0_combout\,
	datab => \inst|MAR\(0),
	datac => \inst|reggy[5][3]~q\,
	datad => \inst|reggy[7][3]~q\,
	combout => \inst|Mux61~1_combout\);

-- Location: FF_X17_Y13_N5
\inst|reggy[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~73_combout\,
	sload => VCC,
	ena => \inst|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy[1][3]~q\);

-- Location: LCCOMB_X18_Y14_N6
\inst|reggy[0][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy[0][3]~feeder_combout\ = \inst|reggy~73_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|reggy~73_combout\,
	combout => \inst|reggy[0][3]~feeder_combout\);

-- Location: FF_X18_Y14_N7
\inst|reggy[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|reggy[0][3]~feeder_combout\,
	ena => \inst|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy[0][3]~q\);

-- Location: LCCOMB_X17_Y13_N4
\inst|Mux61~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux61~2_combout\ = (\inst|MAR\(1) & (\inst|MAR\(0))) # (!\inst|MAR\(1) & ((\inst|MAR\(0) & (\inst|reggy[1][3]~q\)) # (!\inst|MAR\(0) & ((\inst|reggy[0][3]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MAR\(1),
	datab => \inst|MAR\(0),
	datac => \inst|reggy[1][3]~q\,
	datad => \inst|reggy[0][3]~q\,
	combout => \inst|Mux61~2_combout\);

-- Location: FF_X16_Y13_N31
\inst|reggy[3][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~73_combout\,
	sload => VCC,
	ena => \inst|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy[3][3]~q\);

-- Location: LCCOMB_X17_Y13_N18
\inst|Mux61~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux61~3_combout\ = (\inst|MAR\(1) & ((\inst|Mux61~2_combout\ & ((\inst|reggy[3][3]~q\))) # (!\inst|Mux61~2_combout\ & (\inst|reggy[2][3]~q\)))) # (!\inst|MAR\(1) & (\inst|Mux61~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MAR\(1),
	datab => \inst|Mux61~2_combout\,
	datac => \inst|reggy[2][3]~q\,
	datad => \inst|reggy[3][3]~q\,
	combout => \inst|Mux61~3_combout\);

-- Location: LCCOMB_X17_Y13_N26
\inst|Mux61~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux61~4_combout\ = (\inst|MAR\(2) & (\inst|Mux61~1_combout\)) # (!\inst|MAR\(2) & ((\inst|Mux61~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MAR\(2),
	datac => \inst|Mux61~1_combout\,
	datad => \inst|Mux61~3_combout\,
	combout => \inst|Mux61~4_combout\);

-- Location: FF_X21_Y13_N27
\inst|REG_B[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|Mux61~4_combout\,
	sload => VCC,
	ena => \inst|OP[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|REG_B\(3));

-- Location: LCCOMB_X26_Y13_N0
\inst|alu1|unidad_logica|salida~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|salida~21_combout\ = (\inst|REG_B\(3) & \inst|REG_A\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(3),
	datad => \inst|REG_A\(3),
	combout => \inst|alu1|unidad_logica|salida~21_combout\);

-- Location: FF_X19_Y13_N1
\inst|reggy[6][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~71_combout\,
	sload => VCC,
	ena => \inst|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy[6][1]~q\);

-- Location: LCCOMB_X18_Y11_N24
\inst|reggy[4][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy[4][1]~feeder_combout\ = \inst|reggy~71_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|reggy~71_combout\,
	combout => \inst|reggy[4][1]~feeder_combout\);

-- Location: FF_X18_Y11_N25
\inst|reggy[4][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|reggy[4][1]~feeder_combout\,
	ena => \inst|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy[4][1]~q\);

-- Location: LCCOMB_X19_Y13_N0
\inst|Mux73~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux73~2_combout\ = (\inst|MAR\(5) & ((\inst|MAR\(4)) # ((\inst|reggy[6][1]~q\)))) # (!\inst|MAR\(5) & (!\inst|MAR\(4) & ((\inst|reggy[4][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MAR\(5),
	datab => \inst|MAR\(4),
	datac => \inst|reggy[6][1]~q\,
	datad => \inst|reggy[4][1]~q\,
	combout => \inst|Mux73~2_combout\);

-- Location: FF_X19_Y11_N19
\inst|reggy[7][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|reggy~71_combout\,
	ena => \inst|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy[7][1]~q\);

-- Location: FF_X18_Y13_N25
\inst|reggy[5][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~71_combout\,
	sload => VCC,
	ena => \inst|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy[5][1]~q\);

-- Location: LCCOMB_X19_Y13_N10
\inst|Mux73~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux73~3_combout\ = (\inst|Mux73~2_combout\ & ((\inst|reggy[7][1]~q\) # ((!\inst|MAR\(4))))) # (!\inst|Mux73~2_combout\ & (((\inst|MAR\(4) & \inst|reggy[5][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux73~2_combout\,
	datab => \inst|reggy[7][1]~q\,
	datac => \inst|MAR\(4),
	datad => \inst|reggy[5][1]~q\,
	combout => \inst|Mux73~3_combout\);

-- Location: FF_X22_Y11_N21
\inst|reggy[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~71_combout\,
	sload => VCC,
	ena => \inst|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy[1][1]~q\);

-- Location: LCCOMB_X18_Y14_N20
\inst|reggy[0][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy[0][1]~feeder_combout\ = \inst|reggy~71_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|reggy~71_combout\,
	combout => \inst|reggy[0][1]~feeder_combout\);

-- Location: FF_X18_Y14_N21
\inst|reggy[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|reggy[0][1]~feeder_combout\,
	ena => \inst|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy[0][1]~q\);

-- Location: LCCOMB_X21_Y14_N10
\inst|Mux73~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux73~0_combout\ = (\inst|MAR\(4) & ((\inst|reggy[1][1]~q\) # ((\inst|MAR\(5))))) # (!\inst|MAR\(4) & (((\inst|reggy[0][1]~q\ & !\inst|MAR\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy[1][1]~q\,
	datab => \inst|MAR\(4),
	datac => \inst|reggy[0][1]~q\,
	datad => \inst|MAR\(5),
	combout => \inst|Mux73~0_combout\);

-- Location: FF_X18_Y14_N19
\inst|reggy[3][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~71_combout\,
	sload => VCC,
	ena => \inst|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy[3][1]~q\);

-- Location: LCCOMB_X18_Y14_N18
\inst|Mux73~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux73~1_combout\ = (\inst|Mux73~0_combout\ & (((\inst|reggy[3][1]~q\) # (!\inst|MAR\(5))))) # (!\inst|Mux73~0_combout\ & (\inst|reggy[2][1]~q\ & ((\inst|MAR\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy[2][1]~q\,
	datab => \inst|Mux73~0_combout\,
	datac => \inst|reggy[3][1]~q\,
	datad => \inst|MAR\(5),
	combout => \inst|Mux73~1_combout\);

-- Location: LCCOMB_X17_Y14_N10
\inst|salida[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|salida[1]~4_combout\ = (\inst|MAR\(6) & (\inst|Mux73~3_combout\)) # (!\inst|MAR\(6) & ((\inst|Mux73~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux73~3_combout\,
	datab => \inst|MAR\(6),
	datad => \inst|Mux73~1_combout\,
	combout => \inst|salida[1]~4_combout\);

-- Location: LCCOMB_X19_Y10_N20
\inst|REG_A[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|REG_A[1]~feeder_combout\ = \inst|salida[1]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|salida[1]~4_combout\,
	combout => \inst|REG_A[1]~feeder_combout\);

-- Location: FF_X19_Y10_N21
\inst|REG_A[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|REG_A[1]~feeder_combout\,
	ena => \inst|OP[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|REG_A\(1));

-- Location: LCCOMB_X21_Y12_N0
\inst|alu1|unidad_logica|aux[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|aux[1]~10_combout\ = (\inst|REG_A\(0) & (!\inst|REG_A\(1) & VCC)) # (!\inst|REG_A\(0) & (\inst|REG_A\(1) $ (GND)))
-- \inst|alu1|unidad_logica|aux[1]~11\ = CARRY((!\inst|REG_A\(0) & !\inst|REG_A\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(0),
	datab => \inst|REG_A\(1),
	datad => VCC,
	combout => \inst|alu1|unidad_logica|aux[1]~10_combout\,
	cout => \inst|alu1|unidad_logica|aux[1]~11\);

-- Location: LCCOMB_X21_Y12_N2
\inst|alu1|unidad_logica|aux[2]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|aux[2]~12_combout\ = (\inst|REG_A\(2) & ((\inst|alu1|unidad_logica|aux[1]~11\) # (GND))) # (!\inst|REG_A\(2) & (!\inst|alu1|unidad_logica|aux[1]~11\))
-- \inst|alu1|unidad_logica|aux[2]~13\ = CARRY((\inst|REG_A\(2)) # (!\inst|alu1|unidad_logica|aux[1]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(2),
	datad => VCC,
	cin => \inst|alu1|unidad_logica|aux[1]~11\,
	combout => \inst|alu1|unidad_logica|aux[2]~12_combout\,
	cout => \inst|alu1|unidad_logica|aux[2]~13\);

-- Location: FF_X21_Y12_N3
\inst|alu1|unidad_logica|aux[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|alu1|unidad_logica|aux[2]~12_combout\,
	ena => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|unidad_logica|aux\(2));

-- Location: FF_X18_Y13_N5
\inst|reggy[4][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~72_combout\,
	sload => VCC,
	ena => \inst|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy[4][2]~q\);

-- Location: FF_X19_Y13_N9
\inst|reggy[6][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~72_combout\,
	sload => VCC,
	ena => \inst|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy[6][2]~q\);

-- Location: LCCOMB_X18_Y13_N4
\inst|Mux62~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux62~0_combout\ = (\inst|MAR\(1) & ((\inst|MAR\(0)) # ((\inst|reggy[6][2]~q\)))) # (!\inst|MAR\(1) & (!\inst|MAR\(0) & (\inst|reggy[4][2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MAR\(1),
	datab => \inst|MAR\(0),
	datac => \inst|reggy[4][2]~q\,
	datad => \inst|reggy[6][2]~q\,
	combout => \inst|Mux62~0_combout\);

-- Location: FF_X19_Y13_N15
\inst|reggy[7][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|reggy~72_combout\,
	ena => \inst|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy[7][2]~q\);

-- Location: LCCOMB_X18_Y13_N14
\inst|Mux62~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux62~1_combout\ = (\inst|Mux62~0_combout\ & (((\inst|reggy[7][2]~q\)) # (!\inst|MAR\(0)))) # (!\inst|Mux62~0_combout\ & (\inst|MAR\(0) & (\inst|reggy[5][2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux62~0_combout\,
	datab => \inst|MAR\(0),
	datac => \inst|reggy[5][2]~q\,
	datad => \inst|reggy[7][2]~q\,
	combout => \inst|Mux62~1_combout\);

-- Location: LCCOMB_X18_Y14_N28
\inst|reggy[0][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy[0][2]~feeder_combout\ = \inst|reggy~72_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|reggy~72_combout\,
	combout => \inst|reggy[0][2]~feeder_combout\);

-- Location: FF_X18_Y14_N29
\inst|reggy[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|reggy[0][2]~feeder_combout\,
	ena => \inst|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy[0][2]~q\);

-- Location: FF_X17_Y13_N23
\inst|reggy[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~72_combout\,
	sload => VCC,
	ena => \inst|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy[1][2]~q\);

-- Location: LCCOMB_X17_Y13_N22
\inst|Mux62~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux62~2_combout\ = (\inst|MAR\(0) & (((\inst|reggy[1][2]~q\) # (\inst|MAR\(1))))) # (!\inst|MAR\(0) & (\inst|reggy[0][2]~q\ & ((!\inst|MAR\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy[0][2]~q\,
	datab => \inst|MAR\(0),
	datac => \inst|reggy[1][2]~q\,
	datad => \inst|MAR\(1),
	combout => \inst|Mux62~2_combout\);

-- Location: FF_X16_Y13_N29
\inst|reggy[3][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~72_combout\,
	sload => VCC,
	ena => \inst|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy[3][2]~q\);

-- Location: FF_X17_Y13_N29
\inst|reggy[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~72_combout\,
	sload => VCC,
	ena => \inst|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy[2][2]~q\);

-- Location: LCCOMB_X17_Y13_N28
\inst|Mux62~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux62~3_combout\ = (\inst|Mux62~2_combout\ & ((\inst|reggy[3][2]~q\) # ((!\inst|MAR\(1))))) # (!\inst|Mux62~2_combout\ & (((\inst|reggy[2][2]~q\ & \inst|MAR\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux62~2_combout\,
	datab => \inst|reggy[3][2]~q\,
	datac => \inst|reggy[2][2]~q\,
	datad => \inst|MAR\(1),
	combout => \inst|Mux62~3_combout\);

-- Location: LCCOMB_X17_Y13_N20
\inst|Mux62~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux62~4_combout\ = (\inst|MAR\(2) & (\inst|Mux62~1_combout\)) # (!\inst|MAR\(2) & ((\inst|Mux62~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MAR\(2),
	datac => \inst|Mux62~1_combout\,
	datad => \inst|Mux62~3_combout\,
	combout => \inst|Mux62~4_combout\);

-- Location: FF_X21_Y13_N1
\inst|REG_B[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|Mux62~4_combout\,
	sload => VCC,
	ena => \inst|OP[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|REG_B\(2));

-- Location: LCCOMB_X21_Y10_N16
\inst|alu1|unidad_logica|salida~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|salida~18_combout\ = (\inst|REG_B\(2) & \inst|REG_A\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|REG_B\(2),
	datac => \inst|REG_A\(2),
	combout => \inst|alu1|unidad_logica|salida~18_combout\);

-- Location: LCCOMB_X21_Y10_N26
\inst|alu1|unidad_logica|salida~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|salida~19_combout\ = (\inst|alu1|Mux10~0_combout\ & ((\inst|alu1|unidad_logica|aux\(2)) # ((!\inst|alu1|Mux11~0_combout\)))) # (!\inst|alu1|Mux10~0_combout\ & (((!\inst|alu1|Mux11~0_combout\ & 
-- \inst|alu1|unidad_logica|salida~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux10~0_combout\,
	datab => \inst|alu1|unidad_logica|aux\(2),
	datac => \inst|alu1|Mux11~0_combout\,
	datad => \inst|alu1|unidad_logica|salida~18_combout\,
	combout => \inst|alu1|unidad_logica|salida~19_combout\);

-- Location: LCCOMB_X21_Y10_N4
\inst|alu1|unidad_logica|salida~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|salida~20_combout\ = (\inst|alu1|unidad_logica|salida~19_combout\ & (((!\inst|REG_A\(2))) # (!\inst|alu1|unidad_logica|salida[9]~33_combout\))) # (!\inst|alu1|unidad_logica|salida~19_combout\ & 
-- (\inst|alu1|unidad_logica|salida[9]~33_combout\ & ((\inst|REG_A\(2)) # (\inst|REG_B\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_logica|salida~19_combout\,
	datab => \inst|alu1|unidad_logica|salida[9]~33_combout\,
	datac => \inst|REG_A\(2),
	datad => \inst|REG_B\(2),
	combout => \inst|alu1|unidad_logica|salida~20_combout\);

-- Location: FF_X21_Y10_N5
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

-- Location: LCCOMB_X18_Y11_N28
\inst|alu1|barrel_shifters|aux[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|barrel_shifters|aux[2]~feeder_combout\ = \inst|REG_A\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|REG_A\(1),
	combout => \inst|alu1|barrel_shifters|aux[2]~feeder_combout\);

-- Location: FF_X18_Y11_N29
\inst|alu1|barrel_shifters|aux[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|alu1|barrel_shifters|aux[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|barrel_shifters|aux\(2));

-- Location: FF_X18_Y11_N3
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

-- Location: LCCOMB_X19_Y11_N2
\inst|reggy~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~45_combout\ = (\inst|reggy~35_combout\ & !\inst|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|reggy~35_combout\,
	datad => \inst|Equal0~0_combout\,
	combout => \inst|reggy~45_combout\);

-- Location: LCCOMB_X19_Y11_N24
\inst|reggy~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~46_combout\ = (\inst|Equal0~0_combout\) # ((\inst|reggy~29_combout\ & \inst|reggy~35_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|reggy~29_combout\,
	datac => \inst|reggy~35_combout\,
	datad => \inst|Equal0~0_combout\,
	combout => \inst|reggy~46_combout\);

-- Location: LCCOMB_X22_Y12_N10
\inst|Mux52~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux52~0_combout\ = (\inst|MAR\(2)) # ((\inst|MAR\(0) & (\inst|MAR\(1))) # (!\inst|MAR\(0) & ((\inst|MAR\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MAR\(0),
	datab => \inst|MAR\(1),
	datac => \inst|MAR\(2),
	datad => \inst|MAR\(3),
	combout => \inst|Mux52~0_combout\);

-- Location: FF_X22_Y12_N11
\inst|REG_D[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Mux52~0_combout\,
	ena => \inst|REG_D[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|REG_D\(2));

-- Location: LCCOMB_X19_Y10_N6
\inst|alu1|unidad_aritmetica|suma|s1|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|s1|Cout~0_combout\ = (!\inst|REG_B\(0) & (\inst|REG_A\(9) & (!\inst|REG_A\(0) & \inst|REG_B\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(0),
	datab => \inst|REG_A\(9),
	datac => \inst|REG_A\(0),
	datad => \inst|REG_B\(9),
	combout => \inst|alu1|unidad_aritmetica|suma|s1|Cout~0_combout\);

-- Location: LCCOMB_X19_Y10_N22
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

-- Location: LCCOMB_X19_Y10_N4
\inst|alu1|unidad_aritmetica|suma|s1|Cout2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|s1|Cout2~0_combout\ = (\inst|alu1|unidad_aritmetica|suma|s1|Cout~0_combout\ & (\inst|alu1|unidad_aritmetica|suma|Xop\(1) & (\inst|REG_B\(9) $ (\inst|REG_B\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|suma|s1|Cout~0_combout\,
	datab => \inst|REG_B\(9),
	datac => \inst|alu1|unidad_aritmetica|suma|Xop\(1),
	datad => \inst|REG_B\(1),
	combout => \inst|alu1|unidad_aritmetica|suma|s1|Cout2~0_combout\);

-- Location: LCCOMB_X19_Y10_N2
\inst|alu1|unidad_aritmetica|suma|s0|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|s0|Cout~0_combout\ = (\inst|REG_B\(0) & ((\inst|REG_A\(9)) # ((\inst|REG_A\(0))))) # (!\inst|REG_B\(0) & ((\inst|REG_B\(9)) # ((\inst|REG_A\(9) & !\inst|REG_A\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(0),
	datab => \inst|REG_A\(9),
	datac => \inst|REG_A\(0),
	datad => \inst|REG_B\(9),
	combout => \inst|alu1|unidad_aritmetica|suma|s0|Cout~0_combout\);

-- Location: LCCOMB_X19_Y10_N8
\inst|alu1|unidad_aritmetica|suma|s1|Cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|s1|Cout~1_combout\ = (\inst|alu1|unidad_aritmetica|suma|s0|Cout~0_combout\ & ((\inst|alu1|unidad_aritmetica|suma|Xop\(1)) # (\inst|REG_B\(1) $ (\inst|REG_B\(9))))) # (!\inst|alu1|unidad_aritmetica|suma|s0|Cout~0_combout\ 
-- & (\inst|alu1|unidad_aritmetica|suma|Xop\(1) & (\inst|REG_B\(1) $ (\inst|REG_B\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(1),
	datab => \inst|alu1|unidad_aritmetica|suma|s0|Cout~0_combout\,
	datac => \inst|alu1|unidad_aritmetica|suma|Xop\(1),
	datad => \inst|REG_B\(9),
	combout => \inst|alu1|unidad_aritmetica|suma|s1|Cout~1_combout\);

-- Location: LCCOMB_X19_Y10_N10
\inst|alu1|unidad_aritmetica|suma|s2|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|s2|Suma~0_combout\ = \inst|REG_B\(2) $ (\inst|REG_A\(9) $ (\inst|REG_A\(2) $ (\inst|REG_B\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(2),
	datab => \inst|REG_A\(9),
	datac => \inst|REG_A\(2),
	datad => \inst|REG_B\(9),
	combout => \inst|alu1|unidad_aritmetica|suma|s2|Suma~0_combout\);

-- Location: LCCOMB_X19_Y10_N24
\inst|alu1|unidad_aritmetica|suma|s2|Suma~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|s2|Suma~1_combout\ = \inst|alu1|unidad_aritmetica|suma|s1|Cout2~0_combout\ $ (\inst|alu1|unidad_aritmetica|suma|s2|Suma~0_combout\ $ (((\inst|alu1|unidad_aritmetica|suma|s1|Cout~0_combout\) # 
-- (\inst|alu1|unidad_aritmetica|suma|s1|Cout~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|suma|s1|Cout~0_combout\,
	datab => \inst|alu1|unidad_aritmetica|suma|s1|Cout2~0_combout\,
	datac => \inst|alu1|unidad_aritmetica|suma|s1|Cout~1_combout\,
	datad => \inst|alu1|unidad_aritmetica|suma|s2|Suma~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|suma|s2|Suma~1_combout\);

-- Location: LCCOMB_X25_Y12_N18
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

-- Location: LCCOMB_X22_Y12_N24
\inst|alu1|unidad_aritmetica|mult|inter[10]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|inter\(10) = (\inst|REG_B\(2) & \inst|REG_A\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|REG_B\(2),
	datad => \inst|REG_A\(0),
	combout => \inst|alu1|unidad_aritmetica|mult|inter\(10));

-- Location: LCCOMB_X25_Y12_N24
\inst|alu1|unidad_aritmetica|mult|multi1|s1|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi1|s1|Cout~0_combout\ = (\inst|REG_B\(1) & (\inst|REG_B\(0) & (\inst|REG_A\(0) & \inst|REG_A\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(1),
	datab => \inst|REG_B\(0),
	datac => \inst|REG_A\(0),
	datad => \inst|REG_A\(1),
	combout => \inst|alu1|unidad_aritmetica|mult|multi1|s1|Cout~0_combout\);

-- Location: LCCOMB_X25_Y12_N10
\inst|alu1|unidad_aritmetica|mult|inter[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|inter\(2) = (\inst|REG_B\(0) & \inst|REG_A\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|REG_B\(0),
	datad => \inst|REG_A\(2),
	combout => \inst|alu1|unidad_aritmetica|mult|inter\(2));

-- Location: LCCOMB_X22_Y12_N18
\inst|alu1|unidad_aritmetica|mult|multi2|s2|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi2|s2|Suma~0_combout\ = \inst|alu1|unidad_logica|salida~5_combout\ $ (\inst|alu1|unidad_aritmetica|mult|inter\(10) $ (\inst|alu1|unidad_aritmetica|mult|multi1|s1|Cout~0_combout\ $ 
-- (\inst|alu1|unidad_aritmetica|mult|inter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_logica|salida~5_combout\,
	datab => \inst|alu1|unidad_aritmetica|mult|inter\(10),
	datac => \inst|alu1|unidad_aritmetica|mult|multi1|s1|Cout~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|mult|inter\(2),
	combout => \inst|alu1|unidad_aritmetica|mult|multi2|s2|Suma~0_combout\);

-- Location: LCCOMB_X22_Y12_N4
\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~13_combout\ = (\inst|alu1|Mux10~0_combout\ & ((\inst|alu1|unidad_aritmetica|mult|multi2|s2|Suma~0_combout\))) # (!\inst|alu1|Mux10~0_combout\ & (\inst|alu1|unidad_aritmetica|suma|s2|Suma~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux10~0_combout\,
	datac => \inst|alu1|unidad_aritmetica|suma|s2|Suma~1_combout\,
	datad => \inst|alu1|unidad_aritmetica|mult|multi2|s2|Suma~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~13_combout\);

-- Location: LCCOMB_X19_Y11_N6
\inst|alu1|unidad_aritmetica|mult|multi1|s1|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi1|s1|Suma~0_combout\ = (\inst|REG_B\(0) & (\inst|REG_A\(1) $ (((\inst|REG_A\(0) & \inst|REG_B\(1)))))) # (!\inst|REG_B\(0) & (\inst|REG_A\(0) & ((\inst|REG_B\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(0),
	datab => \inst|REG_A\(0),
	datac => \inst|REG_A\(1),
	datad => \inst|REG_B\(1),
	combout => \inst|alu1|unidad_aritmetica|mult|multi1|s1|Suma~0_combout\);

-- Location: LCCOMB_X19_Y10_N16
\inst|alu1|unidad_aritmetica|suma|Yop[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|Yop[1]~0_combout\ = \inst|REG_B\(1) $ (\inst|REG_B\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(1),
	datad => \inst|REG_B\(9),
	combout => \inst|alu1|unidad_aritmetica|suma|Yop[1]~0_combout\);

-- Location: LCCOMB_X19_Y10_N30
\inst|alu1|unidad_aritmetica|suma|s1|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|s1|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|suma|s1|Cout~0_combout\ $ (\inst|alu1|unidad_aritmetica|suma|s0|Cout~0_combout\ $ (\inst|alu1|unidad_aritmetica|suma|Xop\(1) $ 
-- (\inst|alu1|unidad_aritmetica|suma|Yop[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|suma|s1|Cout~0_combout\,
	datab => \inst|alu1|unidad_aritmetica|suma|s0|Cout~0_combout\,
	datac => \inst|alu1|unidad_aritmetica|suma|Xop\(1),
	datad => \inst|alu1|unidad_aritmetica|suma|Yop[1]~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|suma|s1|Suma~0_combout\);

-- Location: LCCOMB_X19_Y11_N4
\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~14_combout\ = (\inst|alu1|Mux10~0_combout\ & (\inst|alu1|unidad_aritmetica|mult|multi1|s1|Suma~0_combout\)) # (!\inst|alu1|Mux10~0_combout\ & ((\inst|alu1|unidad_aritmetica|suma|s1|Suma~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|multi1|s1|Suma~0_combout\,
	datab => \inst|alu1|Mux10~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|suma|s1|Suma~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~14_combout\);

-- Location: LCCOMB_X19_Y12_N4
\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~15_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~14_combout\ & ((\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~6\) # (GND))) # 
-- (!\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~14_combout\ & (!\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~6\))
-- \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~16\ = CARRY((\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~14_combout\) # (!\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~6\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~14_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~6\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~15_combout\,
	cout => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~16\);

-- Location: LCCOMB_X19_Y12_N6
\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~17_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~13_combout\ & (!\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~16\ & VCC)) # 
-- (!\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~13_combout\ & (\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~16\ $ (GND)))
-- \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~18\ = CARRY((!\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~13_combout\ & !\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~13_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~16\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~17_combout\,
	cout => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~18\);

-- Location: LCCOMB_X23_Y10_N6
\inst|reggy~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~31_combout\ = (\inst|alu1|Mux10~0_combout\ & (((\inst|alu1|Mux11~0_combout\) # (\inst|alu1|unidad_aritmetica|mult|multi4|s8|Cout~0_combout\)))) # (!\inst|alu1|Mux10~0_combout\ & (\inst|alu1|unidad_aritmetica|suma|Sfaux~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux10~0_combout\,
	datab => \inst|alu1|unidad_aritmetica|suma|Sfaux~1_combout\,
	datac => \inst|alu1|Mux11~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|mult|multi4|s8|Cout~0_combout\,
	combout => \inst|reggy~31_combout\);

-- Location: LCCOMB_X18_Y11_N26
\inst|reggy~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~49_combout\ = (\inst|reggy~31_combout\ & (((\inst|reggy~32_combout\)))) # (!\inst|reggy~31_combout\ & ((\inst|reggy~32_combout\ & (\inst|alu1|unidad_aritmetica|mult|multi2|s2|Suma~0_combout\)) # (!\inst|reggy~32_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|suma|s2|Suma~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|multi2|s2|Suma~0_combout\,
	datab => \inst|alu1|unidad_aritmetica|suma|s2|Suma~1_combout\,
	datac => \inst|reggy~31_combout\,
	datad => \inst|reggy~32_combout\,
	combout => \inst|reggy~49_combout\);

-- Location: LCCOMB_X21_Y13_N0
\inst|alu1|unidad_aritmetica|divi|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan0~1_combout\ = (\inst|REG_B\(3)) # ((\inst|REG_B\(4)) # ((\inst|REG_B\(2)) # (\inst|REG_B\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(3),
	datab => \inst|REG_B\(4),
	datac => \inst|REG_B\(2),
	datad => \inst|REG_B\(5),
	combout => \inst|alu1|unidad_aritmetica|divi|LessThan0~1_combout\);

-- Location: LCCOMB_X21_Y13_N4
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

-- Location: LCCOMB_X21_Y13_N6
\inst|alu1|unidad_aritmetica|divi|Add0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add0~3_combout\ = (\inst|REG_B\(1) & ((\inst|alu1|unidad_aritmetica|divi|Add0~1\) # (GND))) # (!\inst|REG_B\(1) & (!\inst|alu1|unidad_aritmetica|divi|Add0~1\))
-- \inst|alu1|unidad_aritmetica|divi|Add0~4\ = CARRY((\inst|REG_B\(1)) # (!\inst|alu1|unidad_aritmetica|divi|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(1),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add0~1\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add0~3_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add0~4\);

-- Location: LCCOMB_X21_Y13_N8
\inst|alu1|unidad_aritmetica|divi|Add0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add0~5_combout\ = (\inst|REG_B\(2) & (!\inst|alu1|unidad_aritmetica|divi|Add0~4\ & VCC)) # (!\inst|REG_B\(2) & (\inst|alu1|unidad_aritmetica|divi|Add0~4\ $ (GND)))
-- \inst|alu1|unidad_aritmetica|divi|Add0~6\ = CARRY((!\inst|REG_B\(2) & !\inst|alu1|unidad_aritmetica|divi|Add0~4\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(2),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add0~4\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add0~5_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add0~6\);

-- Location: FF_X18_Y13_N13
\inst|reggy[4][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~70_combout\,
	sload => VCC,
	ena => \inst|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy[4][6]~q\);

-- Location: FF_X19_Y13_N21
\inst|reggy[6][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~70_combout\,
	sload => VCC,
	ena => \inst|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy[6][6]~q\);

-- Location: LCCOMB_X18_Y13_N12
\inst|Mux58~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux58~0_combout\ = (\inst|MAR\(1) & ((\inst|MAR\(0)) # ((\inst|reggy[6][6]~q\)))) # (!\inst|MAR\(1) & (!\inst|MAR\(0) & (\inst|reggy[4][6]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MAR\(1),
	datab => \inst|MAR\(0),
	datac => \inst|reggy[4][6]~q\,
	datad => \inst|reggy[6][6]~q\,
	combout => \inst|Mux58~0_combout\);

-- Location: FF_X18_Y13_N11
\inst|reggy[5][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~70_combout\,
	sload => VCC,
	ena => \inst|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy[5][6]~q\);

-- Location: FF_X19_Y13_N23
\inst|reggy[7][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|reggy~70_combout\,
	ena => \inst|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy[7][6]~q\);

-- Location: LCCOMB_X18_Y13_N10
\inst|Mux58~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux58~1_combout\ = (\inst|Mux58~0_combout\ & (((\inst|reggy[7][6]~q\)) # (!\inst|MAR\(0)))) # (!\inst|Mux58~0_combout\ & (\inst|MAR\(0) & (\inst|reggy[5][6]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux58~0_combout\,
	datab => \inst|MAR\(0),
	datac => \inst|reggy[5][6]~q\,
	datad => \inst|reggy[7][6]~q\,
	combout => \inst|Mux58~1_combout\);

-- Location: FF_X21_Y14_N31
\inst|reggy[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~70_combout\,
	sload => VCC,
	ena => \inst|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy[1][6]~q\);

-- Location: LCCOMB_X18_Y14_N26
\inst|reggy[0][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy[0][6]~feeder_combout\ = \inst|reggy~70_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|reggy~70_combout\,
	combout => \inst|reggy[0][6]~feeder_combout\);

-- Location: FF_X18_Y14_N27
\inst|reggy[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|reggy[0][6]~feeder_combout\,
	ena => \inst|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy[0][6]~q\);

-- Location: LCCOMB_X21_Y14_N30
\inst|Mux58~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux58~2_combout\ = (\inst|MAR\(0) & ((\inst|MAR\(1)) # ((\inst|reggy[1][6]~q\)))) # (!\inst|MAR\(0) & (!\inst|MAR\(1) & ((\inst|reggy[0][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MAR\(0),
	datab => \inst|MAR\(1),
	datac => \inst|reggy[1][6]~q\,
	datad => \inst|reggy[0][6]~q\,
	combout => \inst|Mux58~2_combout\);

-- Location: FF_X18_Y14_N15
\inst|reggy[3][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~70_combout\,
	sload => VCC,
	ena => \inst|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy[3][6]~q\);

-- Location: LCCOMB_X21_Y14_N8
\inst|Mux58~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux58~3_combout\ = (\inst|Mux58~2_combout\ & (((\inst|reggy[3][6]~q\)) # (!\inst|MAR\(1)))) # (!\inst|Mux58~2_combout\ & (\inst|MAR\(1) & (\inst|reggy[2][6]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux58~2_combout\,
	datab => \inst|MAR\(1),
	datac => \inst|reggy[2][6]~q\,
	datad => \inst|reggy[3][6]~q\,
	combout => \inst|Mux58~3_combout\);

-- Location: LCCOMB_X23_Y13_N30
\inst|Mux58~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux58~4_combout\ = (\inst|MAR\(2) & (\inst|Mux58~1_combout\)) # (!\inst|MAR\(2) & ((\inst|Mux58~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MAR\(2),
	datac => \inst|Mux58~1_combout\,
	datad => \inst|Mux58~3_combout\,
	combout => \inst|Mux58~4_combout\);

-- Location: FF_X23_Y13_N31
\inst|REG_B[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Mux58~4_combout\,
	ena => \inst|OP[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|REG_B\(6));

-- Location: LCCOMB_X21_Y13_N30
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

-- Location: LCCOMB_X21_Y13_N20
\inst|alu1|unidad_aritmetica|divi|Add0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add0~19_combout\ = (!\inst|REG_B\(1) & (!\inst|alu1|unidad_aritmetica|divi|LessThan0~1_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add0~5_combout\ & !\inst|alu1|unidad_aritmetica|divi|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(1),
	datab => \inst|alu1|unidad_aritmetica|divi|LessThan0~1_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|Add0~5_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan0~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add0~19_combout\);

-- Location: LCCOMB_X21_Y13_N2
\inst|alu1|unidad_aritmetica|divi|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add0~20_combout\ = (!\inst|REG_B\(1) & (!\inst|alu1|unidad_aritmetica|divi|LessThan0~0_combout\ & (!\inst|alu1|unidad_aritmetica|divi|LessThan0~1_combout\ & \inst|alu1|unidad_aritmetica|divi|Add0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(1),
	datab => \inst|alu1|unidad_aritmetica|divi|LessThan0~0_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|LessThan0~1_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|Add0~3_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add0~20_combout\);

-- Location: LCCOMB_X21_Y13_N28
\inst|alu1|unidad_aritmetica|divi|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan0~2_combout\ = (\inst|REG_B\(1)) # ((\inst|alu1|unidad_aritmetica|divi|LessThan0~1_combout\) # (\inst|alu1|unidad_aritmetica|divi|LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(1),
	datab => \inst|alu1|unidad_aritmetica|divi|LessThan0~1_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan0~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|LessThan0~2_combout\);

-- Location: LCCOMB_X21_Y13_N26
\inst|alu1|unidad_aritmetica|divi|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add0~2_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan0~2_combout\ & (\inst|REG_A\(7))) # (!\inst|alu1|unidad_aritmetica|divi|LessThan0~2_combout\ & ((\inst|alu1|unidad_aritmetica|divi|Add0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(7),
	datab => \inst|alu1|unidad_aritmetica|divi|Add0~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan0~2_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add0~2_combout\);

-- Location: LCCOMB_X22_Y13_N12
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

-- Location: LCCOMB_X22_Y13_N14
\inst|alu1|unidad_aritmetica|divi|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add1~2_combout\ = (\inst|alu1|unidad_aritmetica|divi|Add0~2_combout\ & ((\inst|REG_B\(1) & (!\inst|alu1|unidad_aritmetica|divi|Add1~1\)) # (!\inst|REG_B\(1) & (\inst|alu1|unidad_aritmetica|divi|Add1~1\ & VCC)))) # 
-- (!\inst|alu1|unidad_aritmetica|divi|Add0~2_combout\ & ((\inst|REG_B\(1) & ((\inst|alu1|unidad_aritmetica|divi|Add1~1\) # (GND))) # (!\inst|REG_B\(1) & (!\inst|alu1|unidad_aritmetica|divi|Add1~1\))))
-- \inst|alu1|unidad_aritmetica|divi|Add1~3\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add0~2_combout\ & (\inst|REG_B\(1) & !\inst|alu1|unidad_aritmetica|divi|Add1~1\)) # (!\inst|alu1|unidad_aritmetica|divi|Add0~2_combout\ & ((\inst|REG_B\(1)) # 
-- (!\inst|alu1|unidad_aritmetica|divi|Add1~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add0~2_combout\,
	datab => \inst|REG_B\(1),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add1~1\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add1~2_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add1~3\);

-- Location: LCCOMB_X22_Y13_N16
\inst|alu1|unidad_aritmetica|divi|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add1~6_combout\ = ((\inst|alu1|unidad_aritmetica|divi|Add0~20_combout\ $ (\inst|REG_B\(2) $ (\inst|alu1|unidad_aritmetica|divi|Add1~3\)))) # (GND)
-- \inst|alu1|unidad_aritmetica|divi|Add1~7\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add0~20_combout\ & ((!\inst|alu1|unidad_aritmetica|divi|Add1~3\) # (!\inst|REG_B\(2)))) # (!\inst|alu1|unidad_aritmetica|divi|Add0~20_combout\ & (!\inst|REG_B\(2) & 
-- !\inst|alu1|unidad_aritmetica|divi|Add1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add0~20_combout\,
	datab => \inst|REG_B\(2),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add1~3\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add1~6_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add1~7\);

-- Location: LCCOMB_X22_Y13_N18
\inst|alu1|unidad_aritmetica|divi|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add1~8_combout\ = (\inst|REG_B\(3) & ((\inst|alu1|unidad_aritmetica|divi|Add0~19_combout\ & (!\inst|alu1|unidad_aritmetica|divi|Add1~7\)) # (!\inst|alu1|unidad_aritmetica|divi|Add0~19_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add1~7\) # (GND))))) # (!\inst|REG_B\(3) & ((\inst|alu1|unidad_aritmetica|divi|Add0~19_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add1~7\ & VCC)) # (!\inst|alu1|unidad_aritmetica|divi|Add0~19_combout\ & 
-- (!\inst|alu1|unidad_aritmetica|divi|Add1~7\))))
-- \inst|alu1|unidad_aritmetica|divi|Add1~9\ = CARRY((\inst|REG_B\(3) & ((!\inst|alu1|unidad_aritmetica|divi|Add1~7\) # (!\inst|alu1|unidad_aritmetica|divi|Add0~19_combout\))) # (!\inst|REG_B\(3) & (!\inst|alu1|unidad_aritmetica|divi|Add0~19_combout\ & 
-- !\inst|alu1|unidad_aritmetica|divi|Add1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(3),
	datab => \inst|alu1|unidad_aritmetica|divi|Add0~19_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add1~7\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add1~8_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add1~9\);

-- Location: LCCOMB_X21_Y13_N10
\inst|alu1|unidad_aritmetica|divi|Add0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add0~7_combout\ = (\inst|REG_B\(3) & ((\inst|alu1|unidad_aritmetica|divi|Add0~6\) # (GND))) # (!\inst|REG_B\(3) & (!\inst|alu1|unidad_aritmetica|divi|Add0~6\))
-- \inst|alu1|unidad_aritmetica|divi|Add0~8\ = CARRY((\inst|REG_B\(3)) # (!\inst|alu1|unidad_aritmetica|divi|Add0~6\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(3),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add0~6\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add0~7_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add0~8\);

-- Location: LCCOMB_X21_Y13_N12
\inst|alu1|unidad_aritmetica|divi|Add0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add0~9_combout\ = (\inst|REG_B\(4) & (!\inst|alu1|unidad_aritmetica|divi|Add0~8\ & VCC)) # (!\inst|REG_B\(4) & (\inst|alu1|unidad_aritmetica|divi|Add0~8\ $ (GND)))
-- \inst|alu1|unidad_aritmetica|divi|Add0~10\ = CARRY((!\inst|REG_B\(4) & !\inst|alu1|unidad_aritmetica|divi|Add0~8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(4),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add0~8\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add0~9_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add0~10\);

-- Location: LCCOMB_X21_Y13_N14
\inst|alu1|unidad_aritmetica|divi|Add0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add0~11_combout\ = (\inst|REG_B\(5) & ((\inst|alu1|unidad_aritmetica|divi|Add0~10\) # (GND))) # (!\inst|REG_B\(5) & (!\inst|alu1|unidad_aritmetica|divi|Add0~10\))
-- \inst|alu1|unidad_aritmetica|divi|Add0~12\ = CARRY((\inst|REG_B\(5)) # (!\inst|alu1|unidad_aritmetica|divi|Add0~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(5),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add0~10\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add0~11_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add0~12\);

-- Location: LCCOMB_X21_Y13_N16
\inst|alu1|unidad_aritmetica|divi|Add0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add0~13_combout\ = \inst|alu1|unidad_aritmetica|divi|Add0~12\ $ (\inst|REG_B\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|REG_B\(6),
	cin => \inst|alu1|unidad_aritmetica|divi|Add0~12\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add0~13_combout\);

-- Location: LCCOMB_X22_Y13_N2
\inst|alu1|unidad_aritmetica|divi|Add0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add0~15_combout\ = (\inst|alu1|unidad_aritmetica|divi|Add0~13_combout\ & (!\inst|REG_B\(1) & (!\inst|alu1|unidad_aritmetica|divi|LessThan0~1_combout\ & !\inst|alu1|unidad_aritmetica|divi|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add0~13_combout\,
	datab => \inst|REG_B\(1),
	datac => \inst|alu1|unidad_aritmetica|divi|LessThan0~1_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan0~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add0~15_combout\);

-- Location: LCCOMB_X23_Y13_N2
\inst|alu1|unidad_aritmetica|divi|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add0~16_combout\ = (!\inst|alu1|unidad_aritmetica|divi|LessThan0~0_combout\ & (!\inst|alu1|unidad_aritmetica|divi|LessThan0~1_combout\ & (!\inst|REG_B\(1) & \inst|alu1|unidad_aritmetica|divi|Add0~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|LessThan0~0_combout\,
	datab => \inst|alu1|unidad_aritmetica|divi|LessThan0~1_combout\,
	datac => \inst|REG_B\(1),
	datad => \inst|alu1|unidad_aritmetica|divi|Add0~11_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add0~16_combout\);

-- Location: LCCOMB_X21_Y13_N24
\inst|alu1|unidad_aritmetica|divi|Add0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add0~17_combout\ = (!\inst|REG_B\(1) & (!\inst|alu1|unidad_aritmetica|divi|LessThan0~0_combout\ & (!\inst|alu1|unidad_aritmetica|divi|LessThan0~1_combout\ & \inst|alu1|unidad_aritmetica|divi|Add0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(1),
	datab => \inst|alu1|unidad_aritmetica|divi|LessThan0~0_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|LessThan0~1_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|Add0~9_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add0~17_combout\);

-- Location: LCCOMB_X21_Y13_N18
\inst|alu1|unidad_aritmetica|divi|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add0~18_combout\ = (!\inst|REG_B\(1) & (!\inst|alu1|unidad_aritmetica|divi|LessThan0~0_combout\ & (!\inst|alu1|unidad_aritmetica|divi|LessThan0~1_combout\ & \inst|alu1|unidad_aritmetica|divi|Add0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(1),
	datab => \inst|alu1|unidad_aritmetica|divi|LessThan0~0_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|LessThan0~1_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|Add0~7_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add0~18_combout\);

-- Location: LCCOMB_X23_Y13_N10
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

-- Location: LCCOMB_X23_Y13_N12
\inst|alu1|unidad_aritmetica|divi|LessThan1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan1~3_cout\ = CARRY((\inst|REG_B\(1) & (\inst|alu1|unidad_aritmetica|divi|Add0~2_combout\ & !\inst|alu1|unidad_aritmetica|divi|LessThan1~1_cout\)) # (!\inst|REG_B\(1) & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add0~2_combout\) # (!\inst|alu1|unidad_aritmetica|divi|LessThan1~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(1),
	datab => \inst|alu1|unidad_aritmetica|divi|Add0~2_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan1~1_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan1~3_cout\);

-- Location: LCCOMB_X23_Y13_N14
\inst|alu1|unidad_aritmetica|divi|LessThan1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan1~5_cout\ = CARRY((\inst|REG_B\(2) & ((!\inst|alu1|unidad_aritmetica|divi|LessThan1~3_cout\) # (!\inst|alu1|unidad_aritmetica|divi|Add0~20_combout\))) # (!\inst|REG_B\(2) & 
-- (!\inst|alu1|unidad_aritmetica|divi|Add0~20_combout\ & !\inst|alu1|unidad_aritmetica|divi|LessThan1~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(2),
	datab => \inst|alu1|unidad_aritmetica|divi|Add0~20_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan1~3_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan1~5_cout\);

-- Location: LCCOMB_X23_Y13_N16
\inst|alu1|unidad_aritmetica|divi|LessThan1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan1~7_cout\ = CARRY((\inst|REG_B\(3) & (\inst|alu1|unidad_aritmetica|divi|Add0~19_combout\ & !\inst|alu1|unidad_aritmetica|divi|LessThan1~5_cout\)) # (!\inst|REG_B\(3) & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add0~19_combout\) # (!\inst|alu1|unidad_aritmetica|divi|LessThan1~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(3),
	datab => \inst|alu1|unidad_aritmetica|divi|Add0~19_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan1~5_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan1~7_cout\);

-- Location: LCCOMB_X23_Y13_N18
\inst|alu1|unidad_aritmetica|divi|LessThan1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan1~9_cout\ = CARRY((\inst|REG_B\(4) & ((!\inst|alu1|unidad_aritmetica|divi|LessThan1~7_cout\) # (!\inst|alu1|unidad_aritmetica|divi|Add0~18_combout\))) # (!\inst|REG_B\(4) & 
-- (!\inst|alu1|unidad_aritmetica|divi|Add0~18_combout\ & !\inst|alu1|unidad_aritmetica|divi|LessThan1~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(4),
	datab => \inst|alu1|unidad_aritmetica|divi|Add0~18_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan1~7_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan1~9_cout\);

-- Location: LCCOMB_X23_Y13_N20
\inst|alu1|unidad_aritmetica|divi|LessThan1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan1~11_cout\ = CARRY((\inst|REG_B\(5) & (\inst|alu1|unidad_aritmetica|divi|Add0~17_combout\ & !\inst|alu1|unidad_aritmetica|divi|LessThan1~9_cout\)) # (!\inst|REG_B\(5) & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add0~17_combout\) # (!\inst|alu1|unidad_aritmetica|divi|LessThan1~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(5),
	datab => \inst|alu1|unidad_aritmetica|divi|Add0~17_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan1~9_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan1~11_cout\);

-- Location: LCCOMB_X23_Y13_N22
\inst|alu1|unidad_aritmetica|divi|LessThan1~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan1~13_cout\ = CARRY((\inst|REG_B\(6) & ((!\inst|alu1|unidad_aritmetica|divi|LessThan1~11_cout\) # (!\inst|alu1|unidad_aritmetica|divi|Add0~16_combout\))) # (!\inst|REG_B\(6) & 
-- (!\inst|alu1|unidad_aritmetica|divi|Add0~16_combout\ & !\inst|alu1|unidad_aritmetica|divi|LessThan1~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(6),
	datab => \inst|alu1|unidad_aritmetica|divi|Add0~16_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan1~11_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan1~13_cout\);

-- Location: LCCOMB_X23_Y13_N24
\inst|alu1|unidad_aritmetica|divi|LessThan1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan1~14_combout\ = (\inst|REG_B\(7) & ((\inst|alu1|unidad_aritmetica|divi|LessThan1~13_cout\) # (!\inst|alu1|unidad_aritmetica|divi|Add0~15_combout\))) # (!\inst|REG_B\(7) & 
-- (\inst|alu1|unidad_aritmetica|divi|LessThan1~13_cout\ & !\inst|alu1|unidad_aritmetica|divi|Add0~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|REG_B\(7),
	datad => \inst|alu1|unidad_aritmetica|divi|Add0~15_combout\,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan1~13_cout\,
	combout => \inst|alu1|unidad_aritmetica|divi|LessThan1~14_combout\);

-- Location: LCCOMB_X23_Y13_N0
\inst|alu1|unidad_aritmetica|divi|Add1~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add1~19_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan1~14_combout\ & ((\inst|alu1|unidad_aritmetica|divi|Add0~19_combout\))) # (!\inst|alu1|unidad_aritmetica|divi|LessThan1~14_combout\ & 
-- (\inst|alu1|unidad_aritmetica|divi|Add1~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|unidad_aritmetica|divi|Add1~8_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|Add0~19_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan1~14_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add1~19_combout\);

-- Location: LCCOMB_X23_Y13_N26
\inst|alu1|unidad_aritmetica|divi|Add1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add1~20_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan1~14_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add0~20_combout\)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan1~14_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|unidad_aritmetica|divi|Add0~20_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|Add1~6_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan1~14_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add1~20_combout\);

-- Location: LCCOMB_X23_Y13_N8
\inst|alu1|unidad_aritmetica|divi|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add1~4_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan1~14_combout\ & ((\inst|alu1|unidad_aritmetica|divi|Add0~2_combout\))) # (!\inst|alu1|unidad_aritmetica|divi|LessThan1~14_combout\ & 
-- (\inst|alu1|unidad_aritmetica|divi|Add1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add1~2_combout\,
	datab => \inst|alu1|unidad_aritmetica|divi|Add0~2_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan1~14_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add1~4_combout\);

-- Location: LCCOMB_X23_Y13_N6
\inst|alu1|unidad_aritmetica|divi|Add1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add1~5_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan1~14_combout\ & ((\inst|REG_A\(6)))) # (!\inst|alu1|unidad_aritmetica|divi|LessThan1~14_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add1~0_combout\,
	datab => \inst|REG_A\(6),
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan1~14_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add1~5_combout\);

-- Location: LCCOMB_X24_Y13_N2
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

-- Location: LCCOMB_X24_Y13_N4
\inst|alu1|unidad_aritmetica|divi|Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add2~2_combout\ = (\inst|REG_B\(1) & ((\inst|alu1|unidad_aritmetica|divi|Add1~5_combout\ & (!\inst|alu1|unidad_aritmetica|divi|Add2~1\)) # (!\inst|alu1|unidad_aritmetica|divi|Add1~5_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add2~1\) # (GND))))) # (!\inst|REG_B\(1) & ((\inst|alu1|unidad_aritmetica|divi|Add1~5_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add2~1\ & VCC)) # (!\inst|alu1|unidad_aritmetica|divi|Add1~5_combout\ & 
-- (!\inst|alu1|unidad_aritmetica|divi|Add2~1\))))
-- \inst|alu1|unidad_aritmetica|divi|Add2~3\ = CARRY((\inst|REG_B\(1) & ((!\inst|alu1|unidad_aritmetica|divi|Add2~1\) # (!\inst|alu1|unidad_aritmetica|divi|Add1~5_combout\))) # (!\inst|REG_B\(1) & (!\inst|alu1|unidad_aritmetica|divi|Add1~5_combout\ & 
-- !\inst|alu1|unidad_aritmetica|divi|Add2~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(1),
	datab => \inst|alu1|unidad_aritmetica|divi|Add1~5_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add2~1\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add2~2_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add2~3\);

-- Location: LCCOMB_X24_Y13_N6
\inst|alu1|unidad_aritmetica|divi|Add2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add2~4_combout\ = ((\inst|alu1|unidad_aritmetica|divi|Add1~4_combout\ $ (\inst|REG_B\(2) $ (\inst|alu1|unidad_aritmetica|divi|Add2~3\)))) # (GND)
-- \inst|alu1|unidad_aritmetica|divi|Add2~5\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add1~4_combout\ & ((!\inst|alu1|unidad_aritmetica|divi|Add2~3\) # (!\inst|REG_B\(2)))) # (!\inst|alu1|unidad_aritmetica|divi|Add1~4_combout\ & (!\inst|REG_B\(2) & 
-- !\inst|alu1|unidad_aritmetica|divi|Add2~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add1~4_combout\,
	datab => \inst|REG_B\(2),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add2~3\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add2~4_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add2~5\);

-- Location: LCCOMB_X24_Y13_N8
\inst|alu1|unidad_aritmetica|divi|Add2~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add2~9_combout\ = (\inst|alu1|unidad_aritmetica|divi|Add1~20_combout\ & ((\inst|REG_B\(3) & (!\inst|alu1|unidad_aritmetica|divi|Add2~5\)) # (!\inst|REG_B\(3) & (\inst|alu1|unidad_aritmetica|divi|Add2~5\ & VCC)))) # 
-- (!\inst|alu1|unidad_aritmetica|divi|Add1~20_combout\ & ((\inst|REG_B\(3) & ((\inst|alu1|unidad_aritmetica|divi|Add2~5\) # (GND))) # (!\inst|REG_B\(3) & (!\inst|alu1|unidad_aritmetica|divi|Add2~5\))))
-- \inst|alu1|unidad_aritmetica|divi|Add2~10\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add1~20_combout\ & (\inst|REG_B\(3) & !\inst|alu1|unidad_aritmetica|divi|Add2~5\)) # (!\inst|alu1|unidad_aritmetica|divi|Add1~20_combout\ & ((\inst|REG_B\(3)) # 
-- (!\inst|alu1|unidad_aritmetica|divi|Add2~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add1~20_combout\,
	datab => \inst|REG_B\(3),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add2~5\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add2~9_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add2~10\);

-- Location: LCCOMB_X24_Y13_N10
\inst|alu1|unidad_aritmetica|divi|Add2~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add2~11_combout\ = ((\inst|alu1|unidad_aritmetica|divi|Add1~19_combout\ $ (\inst|REG_B\(4) $ (\inst|alu1|unidad_aritmetica|divi|Add2~10\)))) # (GND)
-- \inst|alu1|unidad_aritmetica|divi|Add2~12\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add1~19_combout\ & ((!\inst|alu1|unidad_aritmetica|divi|Add2~10\) # (!\inst|REG_B\(4)))) # (!\inst|alu1|unidad_aritmetica|divi|Add1~19_combout\ & (!\inst|REG_B\(4) & 
-- !\inst|alu1|unidad_aritmetica|divi|Add2~10\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add1~19_combout\,
	datab => \inst|REG_B\(4),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add2~10\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add2~11_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add2~12\);

-- Location: LCCOMB_X22_Y13_N20
\inst|alu1|unidad_aritmetica|divi|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add1~10_combout\ = ((\inst|REG_B\(4) $ (\inst|alu1|unidad_aritmetica|divi|Add0~18_combout\ $ (\inst|alu1|unidad_aritmetica|divi|Add1~9\)))) # (GND)
-- \inst|alu1|unidad_aritmetica|divi|Add1~11\ = CARRY((\inst|REG_B\(4) & (\inst|alu1|unidad_aritmetica|divi|Add0~18_combout\ & !\inst|alu1|unidad_aritmetica|divi|Add1~9\)) # (!\inst|REG_B\(4) & ((\inst|alu1|unidad_aritmetica|divi|Add0~18_combout\) # 
-- (!\inst|alu1|unidad_aritmetica|divi|Add1~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(4),
	datab => \inst|alu1|unidad_aritmetica|divi|Add0~18_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add1~9\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add1~10_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add1~11\);

-- Location: LCCOMB_X22_Y13_N22
\inst|alu1|unidad_aritmetica|divi|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add1~12_combout\ = (\inst|REG_B\(5) & ((\inst|alu1|unidad_aritmetica|divi|Add0~17_combout\ & (!\inst|alu1|unidad_aritmetica|divi|Add1~11\)) # (!\inst|alu1|unidad_aritmetica|divi|Add0~17_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add1~11\) # (GND))))) # (!\inst|REG_B\(5) & ((\inst|alu1|unidad_aritmetica|divi|Add0~17_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add1~11\ & VCC)) # (!\inst|alu1|unidad_aritmetica|divi|Add0~17_combout\ & 
-- (!\inst|alu1|unidad_aritmetica|divi|Add1~11\))))
-- \inst|alu1|unidad_aritmetica|divi|Add1~13\ = CARRY((\inst|REG_B\(5) & ((!\inst|alu1|unidad_aritmetica|divi|Add1~11\) # (!\inst|alu1|unidad_aritmetica|divi|Add0~17_combout\))) # (!\inst|REG_B\(5) & (!\inst|alu1|unidad_aritmetica|divi|Add0~17_combout\ & 
-- !\inst|alu1|unidad_aritmetica|divi|Add1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(5),
	datab => \inst|alu1|unidad_aritmetica|divi|Add0~17_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add1~11\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add1~12_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add1~13\);

-- Location: LCCOMB_X22_Y13_N24
\inst|alu1|unidad_aritmetica|divi|Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add1~14_combout\ = \inst|REG_B\(6) $ (\inst|alu1|unidad_aritmetica|divi|Add1~13\ $ (\inst|alu1|unidad_aritmetica|divi|Add0~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|REG_B\(6),
	datad => \inst|alu1|unidad_aritmetica|divi|Add0~16_combout\,
	cin => \inst|alu1|unidad_aritmetica|divi|Add1~13\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add1~14_combout\);

-- Location: LCCOMB_X25_Y13_N2
\inst|alu1|unidad_aritmetica|divi|Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add1~16_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan1~14_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add0~16_combout\)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan1~14_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add1~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add0~16_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|Add1~14_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan1~14_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add1~16_combout\);

-- Location: LCCOMB_X25_Y13_N28
\inst|alu1|unidad_aritmetica|divi|Add1~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add1~17_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan1~14_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add0~17_combout\)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan1~14_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add1~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|unidad_aritmetica|divi|Add0~17_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|Add1~12_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan1~14_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add1~17_combout\);

-- Location: LCCOMB_X22_Y13_N8
\inst|alu1|unidad_aritmetica|divi|Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add1~18_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan1~14_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add0~18_combout\)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan1~14_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add1~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add0~18_combout\,
	datab => \inst|alu1|unidad_aritmetica|divi|Add1~10_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan1~14_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add1~18_combout\);

-- Location: LCCOMB_X25_Y13_N10
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

-- Location: LCCOMB_X25_Y13_N12
\inst|alu1|unidad_aritmetica|divi|LessThan2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan2~3_cout\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add1~5_combout\ & ((!\inst|alu1|unidad_aritmetica|divi|LessThan2~1_cout\) # (!\inst|REG_B\(1)))) # (!\inst|alu1|unidad_aritmetica|divi|Add1~5_combout\ & 
-- (!\inst|REG_B\(1) & !\inst|alu1|unidad_aritmetica|divi|LessThan2~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add1~5_combout\,
	datab => \inst|REG_B\(1),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan2~1_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan2~3_cout\);

-- Location: LCCOMB_X25_Y13_N14
\inst|alu1|unidad_aritmetica|divi|LessThan2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan2~5_cout\ = CARRY((\inst|REG_B\(2) & ((!\inst|alu1|unidad_aritmetica|divi|LessThan2~3_cout\) # (!\inst|alu1|unidad_aritmetica|divi|Add1~4_combout\))) # (!\inst|REG_B\(2) & 
-- (!\inst|alu1|unidad_aritmetica|divi|Add1~4_combout\ & !\inst|alu1|unidad_aritmetica|divi|LessThan2~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(2),
	datab => \inst|alu1|unidad_aritmetica|divi|Add1~4_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan2~3_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan2~5_cout\);

-- Location: LCCOMB_X25_Y13_N16
\inst|alu1|unidad_aritmetica|divi|LessThan2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan2~7_cout\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add1~20_combout\ & ((!\inst|alu1|unidad_aritmetica|divi|LessThan2~5_cout\) # (!\inst|REG_B\(3)))) # (!\inst|alu1|unidad_aritmetica|divi|Add1~20_combout\ & 
-- (!\inst|REG_B\(3) & !\inst|alu1|unidad_aritmetica|divi|LessThan2~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add1~20_combout\,
	datab => \inst|REG_B\(3),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan2~5_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan2~7_cout\);

-- Location: LCCOMB_X25_Y13_N18
\inst|alu1|unidad_aritmetica|divi|LessThan2~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan2~9_cout\ = CARRY((\inst|REG_B\(4) & ((!\inst|alu1|unidad_aritmetica|divi|LessThan2~7_cout\) # (!\inst|alu1|unidad_aritmetica|divi|Add1~19_combout\))) # (!\inst|REG_B\(4) & 
-- (!\inst|alu1|unidad_aritmetica|divi|Add1~19_combout\ & !\inst|alu1|unidad_aritmetica|divi|LessThan2~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(4),
	datab => \inst|alu1|unidad_aritmetica|divi|Add1~19_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan2~7_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan2~9_cout\);

-- Location: LCCOMB_X25_Y13_N20
\inst|alu1|unidad_aritmetica|divi|LessThan2~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan2~11_cout\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add1~18_combout\ & ((!\inst|alu1|unidad_aritmetica|divi|LessThan2~9_cout\) # (!\inst|REG_B\(5)))) # (!\inst|alu1|unidad_aritmetica|divi|Add1~18_combout\ & 
-- (!\inst|REG_B\(5) & !\inst|alu1|unidad_aritmetica|divi|LessThan2~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add1~18_combout\,
	datab => \inst|REG_B\(5),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan2~9_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan2~11_cout\);

-- Location: LCCOMB_X25_Y13_N22
\inst|alu1|unidad_aritmetica|divi|LessThan2~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan2~13_cout\ = CARRY((\inst|REG_B\(6) & ((!\inst|alu1|unidad_aritmetica|divi|LessThan2~11_cout\) # (!\inst|alu1|unidad_aritmetica|divi|Add1~17_combout\))) # (!\inst|REG_B\(6) & 
-- (!\inst|alu1|unidad_aritmetica|divi|Add1~17_combout\ & !\inst|alu1|unidad_aritmetica|divi|LessThan2~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(6),
	datab => \inst|alu1|unidad_aritmetica|divi|Add1~17_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan2~11_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan2~13_cout\);

-- Location: LCCOMB_X25_Y13_N24
\inst|alu1|unidad_aritmetica|divi|LessThan2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan2~14_combout\ = (\inst|REG_B\(7) & ((\inst|alu1|unidad_aritmetica|divi|LessThan2~13_cout\) # (!\inst|alu1|unidad_aritmetica|divi|Add1~16_combout\))) # (!\inst|REG_B\(7) & 
-- (\inst|alu1|unidad_aritmetica|divi|LessThan2~13_cout\ & !\inst|alu1|unidad_aritmetica|divi|Add1~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|REG_B\(7),
	datad => \inst|alu1|unidad_aritmetica|divi|Add1~16_combout\,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan2~13_cout\,
	combout => \inst|alu1|unidad_aritmetica|divi|LessThan2~14_combout\);

-- Location: LCCOMB_X25_Y13_N4
\inst|alu1|unidad_aritmetica|divi|Add2~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add2~19_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan2~14_combout\ & ((\inst|alu1|unidad_aritmetica|divi|Add1~19_combout\))) # (!\inst|alu1|unidad_aritmetica|divi|LessThan2~14_combout\ & 
-- (\inst|alu1|unidad_aritmetica|divi|Add2~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add2~11_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|Add1~19_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan2~14_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add2~19_combout\);

-- Location: LCCOMB_X24_Y13_N12
\inst|alu1|unidad_aritmetica|divi|Add2~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add2~13_combout\ = (\inst|alu1|unidad_aritmetica|divi|Add1~18_combout\ & ((\inst|REG_B\(5) & (!\inst|alu1|unidad_aritmetica|divi|Add2~12\)) # (!\inst|REG_B\(5) & (\inst|alu1|unidad_aritmetica|divi|Add2~12\ & VCC)))) # 
-- (!\inst|alu1|unidad_aritmetica|divi|Add1~18_combout\ & ((\inst|REG_B\(5) & ((\inst|alu1|unidad_aritmetica|divi|Add2~12\) # (GND))) # (!\inst|REG_B\(5) & (!\inst|alu1|unidad_aritmetica|divi|Add2~12\))))
-- \inst|alu1|unidad_aritmetica|divi|Add2~14\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add1~18_combout\ & (\inst|REG_B\(5) & !\inst|alu1|unidad_aritmetica|divi|Add2~12\)) # (!\inst|alu1|unidad_aritmetica|divi|Add1~18_combout\ & ((\inst|REG_B\(5)) # 
-- (!\inst|alu1|unidad_aritmetica|divi|Add2~12\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add1~18_combout\,
	datab => \inst|REG_B\(5),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add2~12\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add2~13_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add2~14\);

-- Location: LCCOMB_X24_Y13_N14
\inst|alu1|unidad_aritmetica|divi|Add2~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add2~15_combout\ = \inst|REG_B\(6) $ (\inst|alu1|unidad_aritmetica|divi|Add2~14\ $ (\inst|alu1|unidad_aritmetica|divi|Add1~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|REG_B\(6),
	datad => \inst|alu1|unidad_aritmetica|divi|Add1~17_combout\,
	cin => \inst|alu1|unidad_aritmetica|divi|Add2~14\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add2~15_combout\);

-- Location: LCCOMB_X25_Y11_N16
\inst|alu1|unidad_aritmetica|divi|Add2~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add2~17_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan2~14_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add1~17_combout\)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan2~14_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add2~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add1~17_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|LessThan2~14_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|Add2~15_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add2~17_combout\);

-- Location: LCCOMB_X25_Y11_N22
\inst|alu1|unidad_aritmetica|divi|Add2~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add2~18_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan2~14_combout\ & ((\inst|alu1|unidad_aritmetica|divi|Add1~18_combout\))) # (!\inst|alu1|unidad_aritmetica|divi|LessThan2~14_combout\ & 
-- (\inst|alu1|unidad_aritmetica|divi|Add2~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add2~13_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|LessThan2~14_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|Add1~18_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add2~18_combout\);

-- Location: LCCOMB_X25_Y13_N26
\inst|alu1|unidad_aritmetica|divi|Add2~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add2~20_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan2~14_combout\ & ((\inst|alu1|unidad_aritmetica|divi|Add1~20_combout\))) # (!\inst|alu1|unidad_aritmetica|divi|LessThan2~14_combout\ & 
-- (\inst|alu1|unidad_aritmetica|divi|Add2~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add2~9_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|Add1~20_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan2~14_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add2~20_combout\);

-- Location: LCCOMB_X25_Y13_N30
\inst|alu1|unidad_aritmetica|divi|Add2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add2~6_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan2~14_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add1~4_combout\)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan2~14_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|unidad_aritmetica|divi|Add1~4_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|Add2~4_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan2~14_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add2~6_combout\);

-- Location: LCCOMB_X25_Y13_N0
\inst|alu1|unidad_aritmetica|divi|Add2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add2~7_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan2~14_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add1~5_combout\)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan2~14_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add1~5_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|Add2~2_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan2~14_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add2~7_combout\);

-- Location: LCCOMB_X25_Y13_N6
\inst|alu1|unidad_aritmetica|divi|Add2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add2~8_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan2~14_combout\ & ((\inst|REG_A\(5)))) # (!\inst|alu1|unidad_aritmetica|divi|LessThan2~14_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add2~0_combout\,
	datac => \inst|REG_A\(5),
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan2~14_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add2~8_combout\);

-- Location: LCCOMB_X25_Y11_N0
\inst|alu1|unidad_aritmetica|divi|LessThan3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan3~1_cout\ = CARRY((!\inst|REG_A\(4) & \inst|REG_B\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(4),
	datab => \inst|REG_B\(0),
	datad => VCC,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan3~1_cout\);

-- Location: LCCOMB_X25_Y11_N2
\inst|alu1|unidad_aritmetica|divi|LessThan3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan3~3_cout\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add2~8_combout\ & ((!\inst|alu1|unidad_aritmetica|divi|LessThan3~1_cout\) # (!\inst|REG_B\(1)))) # (!\inst|alu1|unidad_aritmetica|divi|Add2~8_combout\ & 
-- (!\inst|REG_B\(1) & !\inst|alu1|unidad_aritmetica|divi|LessThan3~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add2~8_combout\,
	datab => \inst|REG_B\(1),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan3~1_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan3~3_cout\);

-- Location: LCCOMB_X25_Y11_N4
\inst|alu1|unidad_aritmetica|divi|LessThan3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan3~5_cout\ = CARRY((\inst|REG_B\(2) & ((!\inst|alu1|unidad_aritmetica|divi|LessThan3~3_cout\) # (!\inst|alu1|unidad_aritmetica|divi|Add2~7_combout\))) # (!\inst|REG_B\(2) & 
-- (!\inst|alu1|unidad_aritmetica|divi|Add2~7_combout\ & !\inst|alu1|unidad_aritmetica|divi|LessThan3~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(2),
	datab => \inst|alu1|unidad_aritmetica|divi|Add2~7_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan3~3_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan3~5_cout\);

-- Location: LCCOMB_X25_Y11_N6
\inst|alu1|unidad_aritmetica|divi|LessThan3~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan3~7_cout\ = CARRY((\inst|REG_B\(3) & (\inst|alu1|unidad_aritmetica|divi|Add2~6_combout\ & !\inst|alu1|unidad_aritmetica|divi|LessThan3~5_cout\)) # (!\inst|REG_B\(3) & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add2~6_combout\) # (!\inst|alu1|unidad_aritmetica|divi|LessThan3~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(3),
	datab => \inst|alu1|unidad_aritmetica|divi|Add2~6_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan3~5_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan3~7_cout\);

-- Location: LCCOMB_X25_Y11_N8
\inst|alu1|unidad_aritmetica|divi|LessThan3~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan3~9_cout\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add2~20_combout\ & (\inst|REG_B\(4) & !\inst|alu1|unidad_aritmetica|divi|LessThan3~7_cout\)) # (!\inst|alu1|unidad_aritmetica|divi|Add2~20_combout\ & 
-- ((\inst|REG_B\(4)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan3~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add2~20_combout\,
	datab => \inst|REG_B\(4),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan3~7_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan3~9_cout\);

-- Location: LCCOMB_X25_Y11_N10
\inst|alu1|unidad_aritmetica|divi|LessThan3~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan3~11_cout\ = CARRY((\inst|REG_B\(5) & (\inst|alu1|unidad_aritmetica|divi|Add2~19_combout\ & !\inst|alu1|unidad_aritmetica|divi|LessThan3~9_cout\)) # (!\inst|REG_B\(5) & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add2~19_combout\) # (!\inst|alu1|unidad_aritmetica|divi|LessThan3~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(5),
	datab => \inst|alu1|unidad_aritmetica|divi|Add2~19_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan3~9_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan3~11_cout\);

-- Location: LCCOMB_X25_Y11_N12
\inst|alu1|unidad_aritmetica|divi|LessThan3~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan3~13_cout\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add2~18_combout\ & (\inst|REG_B\(6) & !\inst|alu1|unidad_aritmetica|divi|LessThan3~11_cout\)) # (!\inst|alu1|unidad_aritmetica|divi|Add2~18_combout\ & 
-- ((\inst|REG_B\(6)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan3~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add2~18_combout\,
	datab => \inst|REG_B\(6),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan3~11_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan3~13_cout\);

-- Location: LCCOMB_X25_Y11_N14
\inst|alu1|unidad_aritmetica|divi|LessThan3~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan3~14_combout\ = (\inst|REG_B\(7) & ((\inst|alu1|unidad_aritmetica|divi|LessThan3~13_cout\) # (!\inst|alu1|unidad_aritmetica|divi|Add2~17_combout\))) # (!\inst|REG_B\(7) & 
-- (\inst|alu1|unidad_aritmetica|divi|LessThan3~13_cout\ & !\inst|alu1|unidad_aritmetica|divi|Add2~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(7),
	datad => \inst|alu1|unidad_aritmetica|divi|Add2~17_combout\,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan3~13_cout\,
	combout => \inst|alu1|unidad_aritmetica|divi|LessThan3~14_combout\);

-- Location: LCCOMB_X26_Y13_N4
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

-- Location: LCCOMB_X26_Y13_N6
\inst|alu1|unidad_aritmetica|divi|Add3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add3~2_combout\ = (\inst|REG_B\(1) & ((\inst|alu1|unidad_aritmetica|divi|Add2~8_combout\ & (!\inst|alu1|unidad_aritmetica|divi|Add3~1\)) # (!\inst|alu1|unidad_aritmetica|divi|Add2~8_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add3~1\) # (GND))))) # (!\inst|REG_B\(1) & ((\inst|alu1|unidad_aritmetica|divi|Add2~8_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add3~1\ & VCC)) # (!\inst|alu1|unidad_aritmetica|divi|Add2~8_combout\ & 
-- (!\inst|alu1|unidad_aritmetica|divi|Add3~1\))))
-- \inst|alu1|unidad_aritmetica|divi|Add3~3\ = CARRY((\inst|REG_B\(1) & ((!\inst|alu1|unidad_aritmetica|divi|Add3~1\) # (!\inst|alu1|unidad_aritmetica|divi|Add2~8_combout\))) # (!\inst|REG_B\(1) & (!\inst|alu1|unidad_aritmetica|divi|Add2~8_combout\ & 
-- !\inst|alu1|unidad_aritmetica|divi|Add3~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(1),
	datab => \inst|alu1|unidad_aritmetica|divi|Add2~8_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add3~1\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add3~2_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add3~3\);

-- Location: LCCOMB_X26_Y13_N8
\inst|alu1|unidad_aritmetica|divi|Add3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add3~4_combout\ = ((\inst|alu1|unidad_aritmetica|divi|Add2~7_combout\ $ (\inst|REG_B\(2) $ (\inst|alu1|unidad_aritmetica|divi|Add3~3\)))) # (GND)
-- \inst|alu1|unidad_aritmetica|divi|Add3~5\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add2~7_combout\ & ((!\inst|alu1|unidad_aritmetica|divi|Add3~3\) # (!\inst|REG_B\(2)))) # (!\inst|alu1|unidad_aritmetica|divi|Add2~7_combout\ & (!\inst|REG_B\(2) & 
-- !\inst|alu1|unidad_aritmetica|divi|Add3~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add2~7_combout\,
	datab => \inst|REG_B\(2),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add3~3\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add3~4_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add3~5\);

-- Location: LCCOMB_X26_Y13_N10
\inst|alu1|unidad_aritmetica|divi|Add3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add3~6_combout\ = (\inst|REG_B\(3) & ((\inst|alu1|unidad_aritmetica|divi|Add2~6_combout\ & (!\inst|alu1|unidad_aritmetica|divi|Add3~5\)) # (!\inst|alu1|unidad_aritmetica|divi|Add2~6_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add3~5\) # (GND))))) # (!\inst|REG_B\(3) & ((\inst|alu1|unidad_aritmetica|divi|Add2~6_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add3~5\ & VCC)) # (!\inst|alu1|unidad_aritmetica|divi|Add2~6_combout\ & 
-- (!\inst|alu1|unidad_aritmetica|divi|Add3~5\))))
-- \inst|alu1|unidad_aritmetica|divi|Add3~7\ = CARRY((\inst|REG_B\(3) & ((!\inst|alu1|unidad_aritmetica|divi|Add3~5\) # (!\inst|alu1|unidad_aritmetica|divi|Add2~6_combout\))) # (!\inst|REG_B\(3) & (!\inst|alu1|unidad_aritmetica|divi|Add2~6_combout\ & 
-- !\inst|alu1|unidad_aritmetica|divi|Add3~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(3),
	datab => \inst|alu1|unidad_aritmetica|divi|Add2~6_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add3~5\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add3~6_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add3~7\);

-- Location: LCCOMB_X26_Y13_N12
\inst|alu1|unidad_aritmetica|divi|Add3~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add3~12_combout\ = ((\inst|alu1|unidad_aritmetica|divi|Add2~20_combout\ $ (\inst|REG_B\(4) $ (\inst|alu1|unidad_aritmetica|divi|Add3~7\)))) # (GND)
-- \inst|alu1|unidad_aritmetica|divi|Add3~13\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add2~20_combout\ & ((!\inst|alu1|unidad_aritmetica|divi|Add3~7\) # (!\inst|REG_B\(4)))) # (!\inst|alu1|unidad_aritmetica|divi|Add2~20_combout\ & (!\inst|REG_B\(4) & 
-- !\inst|alu1|unidad_aritmetica|divi|Add3~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add2~20_combout\,
	datab => \inst|REG_B\(4),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add3~7\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add3~12_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add3~13\);

-- Location: LCCOMB_X26_Y13_N14
\inst|alu1|unidad_aritmetica|divi|Add3~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add3~14_combout\ = (\inst|REG_B\(5) & ((\inst|alu1|unidad_aritmetica|divi|Add2~19_combout\ & (!\inst|alu1|unidad_aritmetica|divi|Add3~13\)) # (!\inst|alu1|unidad_aritmetica|divi|Add2~19_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add3~13\) # (GND))))) # (!\inst|REG_B\(5) & ((\inst|alu1|unidad_aritmetica|divi|Add2~19_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add3~13\ & VCC)) # (!\inst|alu1|unidad_aritmetica|divi|Add2~19_combout\ & 
-- (!\inst|alu1|unidad_aritmetica|divi|Add3~13\))))
-- \inst|alu1|unidad_aritmetica|divi|Add3~15\ = CARRY((\inst|REG_B\(5) & ((!\inst|alu1|unidad_aritmetica|divi|Add3~13\) # (!\inst|alu1|unidad_aritmetica|divi|Add2~19_combout\))) # (!\inst|REG_B\(5) & (!\inst|alu1|unidad_aritmetica|divi|Add2~19_combout\ & 
-- !\inst|alu1|unidad_aritmetica|divi|Add3~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(5),
	datab => \inst|alu1|unidad_aritmetica|divi|Add2~19_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add3~13\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add3~14_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add3~15\);

-- Location: LCCOMB_X25_Y11_N18
\inst|alu1|unidad_aritmetica|divi|Add3~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add3~19_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan3~14_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add2~19_combout\)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan3~14_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add3~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|unidad_aritmetica|divi|Add2~19_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|LessThan3~14_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|Add3~14_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add3~19_combout\);

-- Location: LCCOMB_X26_Y11_N4
\inst|alu1|unidad_aritmetica|divi|Add3~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add3~20_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan3~14_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add2~20_combout\)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan3~14_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add3~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add2~20_combout\,
	datab => \inst|alu1|unidad_aritmetica|divi|Add3~12_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan3~14_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add3~20_combout\);

-- Location: LCCOMB_X25_Y11_N20
\inst|alu1|unidad_aritmetica|divi|Add3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add3~8_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan3~14_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add2~6_combout\)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan3~14_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add3~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|unidad_aritmetica|divi|Add2~6_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|LessThan3~14_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|Add3~6_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add3~8_combout\);

-- Location: LCCOMB_X25_Y11_N30
\inst|alu1|unidad_aritmetica|divi|Add3~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add3~9_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan3~14_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add2~7_combout\)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan3~14_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add3~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|unidad_aritmetica|divi|Add2~7_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|LessThan3~14_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|Add3~4_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add3~9_combout\);

-- Location: LCCOMB_X25_Y11_N28
\inst|alu1|unidad_aritmetica|divi|Add3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add3~10_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan3~14_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add2~8_combout\)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan3~14_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add2~8_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|LessThan3~14_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|Add3~2_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add3~10_combout\);

-- Location: LCCOMB_X25_Y11_N26
\inst|alu1|unidad_aritmetica|divi|Add3~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add3~11_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan3~14_combout\ & ((\inst|REG_A\(4)))) # (!\inst|alu1|unidad_aritmetica|divi|LessThan3~14_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add3~0_combout\,
	datab => \inst|REG_A\(4),
	datac => \inst|alu1|unidad_aritmetica|divi|LessThan3~14_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add3~11_combout\);

-- Location: LCCOMB_X26_Y11_N6
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

-- Location: LCCOMB_X26_Y11_N8
\inst|alu1|unidad_aritmetica|divi|Add4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add4~2_combout\ = (\inst|alu1|unidad_aritmetica|divi|Add3~11_combout\ & ((\inst|REG_B\(1) & (!\inst|alu1|unidad_aritmetica|divi|Add4~1\)) # (!\inst|REG_B\(1) & (\inst|alu1|unidad_aritmetica|divi|Add4~1\ & VCC)))) # 
-- (!\inst|alu1|unidad_aritmetica|divi|Add3~11_combout\ & ((\inst|REG_B\(1) & ((\inst|alu1|unidad_aritmetica|divi|Add4~1\) # (GND))) # (!\inst|REG_B\(1) & (!\inst|alu1|unidad_aritmetica|divi|Add4~1\))))
-- \inst|alu1|unidad_aritmetica|divi|Add4~3\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add3~11_combout\ & (\inst|REG_B\(1) & !\inst|alu1|unidad_aritmetica|divi|Add4~1\)) # (!\inst|alu1|unidad_aritmetica|divi|Add3~11_combout\ & ((\inst|REG_B\(1)) # 
-- (!\inst|alu1|unidad_aritmetica|divi|Add4~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add3~11_combout\,
	datab => \inst|REG_B\(1),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add4~1\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add4~2_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add4~3\);

-- Location: LCCOMB_X26_Y11_N10
\inst|alu1|unidad_aritmetica|divi|Add4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add4~4_combout\ = ((\inst|REG_B\(2) $ (\inst|alu1|unidad_aritmetica|divi|Add3~10_combout\ $ (\inst|alu1|unidad_aritmetica|divi|Add4~3\)))) # (GND)
-- \inst|alu1|unidad_aritmetica|divi|Add4~5\ = CARRY((\inst|REG_B\(2) & (\inst|alu1|unidad_aritmetica|divi|Add3~10_combout\ & !\inst|alu1|unidad_aritmetica|divi|Add4~3\)) # (!\inst|REG_B\(2) & ((\inst|alu1|unidad_aritmetica|divi|Add3~10_combout\) # 
-- (!\inst|alu1|unidad_aritmetica|divi|Add4~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(2),
	datab => \inst|alu1|unidad_aritmetica|divi|Add3~10_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add4~3\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add4~4_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add4~5\);

-- Location: LCCOMB_X26_Y11_N12
\inst|alu1|unidad_aritmetica|divi|Add4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add4~6_combout\ = (\inst|REG_B\(3) & ((\inst|alu1|unidad_aritmetica|divi|Add3~9_combout\ & (!\inst|alu1|unidad_aritmetica|divi|Add4~5\)) # (!\inst|alu1|unidad_aritmetica|divi|Add3~9_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add4~5\) # (GND))))) # (!\inst|REG_B\(3) & ((\inst|alu1|unidad_aritmetica|divi|Add3~9_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add4~5\ & VCC)) # (!\inst|alu1|unidad_aritmetica|divi|Add3~9_combout\ & 
-- (!\inst|alu1|unidad_aritmetica|divi|Add4~5\))))
-- \inst|alu1|unidad_aritmetica|divi|Add4~7\ = CARRY((\inst|REG_B\(3) & ((!\inst|alu1|unidad_aritmetica|divi|Add4~5\) # (!\inst|alu1|unidad_aritmetica|divi|Add3~9_combout\))) # (!\inst|REG_B\(3) & (!\inst|alu1|unidad_aritmetica|divi|Add3~9_combout\ & 
-- !\inst|alu1|unidad_aritmetica|divi|Add4~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(3),
	datab => \inst|alu1|unidad_aritmetica|divi|Add3~9_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add4~5\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add4~6_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add4~7\);

-- Location: LCCOMB_X26_Y11_N14
\inst|alu1|unidad_aritmetica|divi|Add4~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add4~8_combout\ = ((\inst|REG_B\(4) $ (\inst|alu1|unidad_aritmetica|divi|Add3~8_combout\ $ (\inst|alu1|unidad_aritmetica|divi|Add4~7\)))) # (GND)
-- \inst|alu1|unidad_aritmetica|divi|Add4~9\ = CARRY((\inst|REG_B\(4) & (\inst|alu1|unidad_aritmetica|divi|Add3~8_combout\ & !\inst|alu1|unidad_aritmetica|divi|Add4~7\)) # (!\inst|REG_B\(4) & ((\inst|alu1|unidad_aritmetica|divi|Add3~8_combout\) # 
-- (!\inst|alu1|unidad_aritmetica|divi|Add4~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(4),
	datab => \inst|alu1|unidad_aritmetica|divi|Add3~8_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add4~7\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add4~8_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add4~9\);

-- Location: LCCOMB_X26_Y11_N16
\inst|alu1|unidad_aritmetica|divi|Add4~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add4~15_combout\ = (\inst|REG_B\(5) & ((\inst|alu1|unidad_aritmetica|divi|Add3~20_combout\ & (!\inst|alu1|unidad_aritmetica|divi|Add4~9\)) # (!\inst|alu1|unidad_aritmetica|divi|Add3~20_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add4~9\) # (GND))))) # (!\inst|REG_B\(5) & ((\inst|alu1|unidad_aritmetica|divi|Add3~20_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add4~9\ & VCC)) # (!\inst|alu1|unidad_aritmetica|divi|Add3~20_combout\ & 
-- (!\inst|alu1|unidad_aritmetica|divi|Add4~9\))))
-- \inst|alu1|unidad_aritmetica|divi|Add4~16\ = CARRY((\inst|REG_B\(5) & ((!\inst|alu1|unidad_aritmetica|divi|Add4~9\) # (!\inst|alu1|unidad_aritmetica|divi|Add3~20_combout\))) # (!\inst|REG_B\(5) & (!\inst|alu1|unidad_aritmetica|divi|Add3~20_combout\ & 
-- !\inst|alu1|unidad_aritmetica|divi|Add4~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(5),
	datab => \inst|alu1|unidad_aritmetica|divi|Add3~20_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add4~9\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add4~15_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add4~16\);

-- Location: LCCOMB_X26_Y11_N18
\inst|alu1|unidad_aritmetica|divi|Add4~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add4~17_combout\ = \inst|REG_B\(6) $ (\inst|alu1|unidad_aritmetica|divi|Add4~16\ $ (\inst|alu1|unidad_aritmetica|divi|Add3~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|REG_B\(6),
	datad => \inst|alu1|unidad_aritmetica|divi|Add3~19_combout\,
	cin => \inst|alu1|unidad_aritmetica|divi|Add4~16\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add4~17_combout\);

-- Location: LCCOMB_X26_Y13_N16
\inst|alu1|unidad_aritmetica|divi|Add3~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add3~16_combout\ = \inst|REG_B\(6) $ (\inst|alu1|unidad_aritmetica|divi|Add3~15\ $ (\inst|alu1|unidad_aritmetica|divi|Add2~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(6),
	datad => \inst|alu1|unidad_aritmetica|divi|Add2~18_combout\,
	cin => \inst|alu1|unidad_aritmetica|divi|Add3~15\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add3~16_combout\);

-- Location: LCCOMB_X25_Y11_N24
\inst|alu1|unidad_aritmetica|divi|Add3~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add3~18_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan3~14_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add2~18_combout\)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan3~14_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add3~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add2~18_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|LessThan3~14_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|Add3~16_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add3~18_combout\);

-- Location: LCCOMB_X24_Y11_N8
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

-- Location: LCCOMB_X24_Y11_N10
\inst|alu1|unidad_aritmetica|divi|LessThan4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan4~3_cout\ = CARRY((\inst|REG_B\(1) & (\inst|alu1|unidad_aritmetica|divi|Add3~11_combout\ & !\inst|alu1|unidad_aritmetica|divi|LessThan4~1_cout\)) # (!\inst|REG_B\(1) & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add3~11_combout\) # (!\inst|alu1|unidad_aritmetica|divi|LessThan4~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(1),
	datab => \inst|alu1|unidad_aritmetica|divi|Add3~11_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan4~1_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan4~3_cout\);

-- Location: LCCOMB_X24_Y11_N12
\inst|alu1|unidad_aritmetica|divi|LessThan4~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan4~5_cout\ = CARRY((\inst|REG_B\(2) & ((!\inst|alu1|unidad_aritmetica|divi|LessThan4~3_cout\) # (!\inst|alu1|unidad_aritmetica|divi|Add3~10_combout\))) # (!\inst|REG_B\(2) & 
-- (!\inst|alu1|unidad_aritmetica|divi|Add3~10_combout\ & !\inst|alu1|unidad_aritmetica|divi|LessThan4~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(2),
	datab => \inst|alu1|unidad_aritmetica|divi|Add3~10_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan4~3_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan4~5_cout\);

-- Location: LCCOMB_X24_Y11_N14
\inst|alu1|unidad_aritmetica|divi|LessThan4~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan4~7_cout\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add3~9_combout\ & ((!\inst|alu1|unidad_aritmetica|divi|LessThan4~5_cout\) # (!\inst|REG_B\(3)))) # (!\inst|alu1|unidad_aritmetica|divi|Add3~9_combout\ & 
-- (!\inst|REG_B\(3) & !\inst|alu1|unidad_aritmetica|divi|LessThan4~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add3~9_combout\,
	datab => \inst|REG_B\(3),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan4~5_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan4~7_cout\);

-- Location: LCCOMB_X24_Y11_N16
\inst|alu1|unidad_aritmetica|divi|LessThan4~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan4~9_cout\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add3~8_combout\ & (\inst|REG_B\(4) & !\inst|alu1|unidad_aritmetica|divi|LessThan4~7_cout\)) # (!\inst|alu1|unidad_aritmetica|divi|Add3~8_combout\ & 
-- ((\inst|REG_B\(4)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan4~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add3~8_combout\,
	datab => \inst|REG_B\(4),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan4~7_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan4~9_cout\);

-- Location: LCCOMB_X24_Y11_N18
\inst|alu1|unidad_aritmetica|divi|LessThan4~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan4~11_cout\ = CARRY((\inst|REG_B\(5) & (\inst|alu1|unidad_aritmetica|divi|Add3~20_combout\ & !\inst|alu1|unidad_aritmetica|divi|LessThan4~9_cout\)) # (!\inst|REG_B\(5) & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add3~20_combout\) # (!\inst|alu1|unidad_aritmetica|divi|LessThan4~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(5),
	datab => \inst|alu1|unidad_aritmetica|divi|Add3~20_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan4~9_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan4~11_cout\);

-- Location: LCCOMB_X24_Y11_N20
\inst|alu1|unidad_aritmetica|divi|LessThan4~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan4~13_cout\ = CARRY((\inst|REG_B\(6) & ((!\inst|alu1|unidad_aritmetica|divi|LessThan4~11_cout\) # (!\inst|alu1|unidad_aritmetica|divi|Add3~19_combout\))) # (!\inst|REG_B\(6) & 
-- (!\inst|alu1|unidad_aritmetica|divi|Add3~19_combout\ & !\inst|alu1|unidad_aritmetica|divi|LessThan4~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(6),
	datab => \inst|alu1|unidad_aritmetica|divi|Add3~19_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan4~11_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan4~13_cout\);

-- Location: LCCOMB_X24_Y11_N22
\inst|alu1|unidad_aritmetica|divi|LessThan4~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan4~14_combout\ = (\inst|REG_B\(7) & ((\inst|alu1|unidad_aritmetica|divi|LessThan4~13_cout\) # (!\inst|alu1|unidad_aritmetica|divi|Add3~18_combout\))) # (!\inst|REG_B\(7) & 
-- (\inst|alu1|unidad_aritmetica|divi|LessThan4~13_cout\ & !\inst|alu1|unidad_aritmetica|divi|Add3~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|REG_B\(7),
	datad => \inst|alu1|unidad_aritmetica|divi|Add3~18_combout\,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan4~13_cout\,
	combout => \inst|alu1|unidad_aritmetica|divi|LessThan4~14_combout\);

-- Location: LCCOMB_X23_Y11_N2
\inst|alu1|unidad_aritmetica|divi|Add4~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add4~19_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan4~14_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add3~19_combout\)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan4~14_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add4~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add3~19_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|Add4~17_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan4~14_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add4~19_combout\);

-- Location: LCCOMB_X26_Y11_N2
\inst|alu1|unidad_aritmetica|divi|Add4~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add4~20_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan4~14_combout\ & ((\inst|alu1|unidad_aritmetica|divi|Add3~20_combout\))) # (!\inst|alu1|unidad_aritmetica|divi|LessThan4~14_combout\ & 
-- (\inst|alu1|unidad_aritmetica|divi|Add4~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|unidad_aritmetica|divi|Add4~15_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|Add3~20_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan4~14_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add4~20_combout\);

-- Location: LCCOMB_X23_Y11_N28
\inst|alu1|unidad_aritmetica|divi|Add4~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add4~10_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan4~14_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add3~8_combout\)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan4~14_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add4~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add3~8_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|Add4~8_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan4~14_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add4~10_combout\);

-- Location: LCCOMB_X24_Y11_N0
\inst|alu1|unidad_aritmetica|divi|Add4~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add4~11_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan4~14_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add3~9_combout\)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan4~14_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add4~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add3~9_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|LessThan4~14_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|Add4~6_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add4~11_combout\);

-- Location: LCCOMB_X24_Y11_N30
\inst|alu1|unidad_aritmetica|divi|Add4~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add4~12_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan4~14_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add3~10_combout\)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan4~14_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add4~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|unidad_aritmetica|divi|Add3~10_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|LessThan4~14_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|Add4~4_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add4~12_combout\);

-- Location: LCCOMB_X24_Y11_N4
\inst|alu1|unidad_aritmetica|divi|Add4~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add4~13_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan4~14_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add3~11_combout\)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan4~14_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add4~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|unidad_aritmetica|divi|Add3~11_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|LessThan4~14_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|Add4~2_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add4~13_combout\);

-- Location: LCCOMB_X24_Y11_N26
\inst|alu1|unidad_aritmetica|divi|Add4~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add4~14_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan4~14_combout\ & (\inst|REG_A\(3))) # (!\inst|alu1|unidad_aritmetica|divi|LessThan4~14_combout\ & ((\inst|alu1|unidad_aritmetica|divi|Add4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|REG_A\(3),
	datac => \inst|alu1|unidad_aritmetica|divi|LessThan4~14_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|Add4~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add4~14_combout\);

-- Location: LCCOMB_X23_Y11_N12
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

-- Location: LCCOMB_X23_Y11_N14
\inst|alu1|unidad_aritmetica|divi|LessThan5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan5~3_cout\ = CARRY((\inst|REG_B\(1) & (\inst|alu1|unidad_aritmetica|divi|Add4~14_combout\ & !\inst|alu1|unidad_aritmetica|divi|LessThan5~1_cout\)) # (!\inst|REG_B\(1) & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add4~14_combout\) # (!\inst|alu1|unidad_aritmetica|divi|LessThan5~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(1),
	datab => \inst|alu1|unidad_aritmetica|divi|Add4~14_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan5~1_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan5~3_cout\);

-- Location: LCCOMB_X23_Y11_N16
\inst|alu1|unidad_aritmetica|divi|LessThan5~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan5~5_cout\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add4~13_combout\ & (\inst|REG_B\(2) & !\inst|alu1|unidad_aritmetica|divi|LessThan5~3_cout\)) # (!\inst|alu1|unidad_aritmetica|divi|Add4~13_combout\ & 
-- ((\inst|REG_B\(2)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan5~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add4~13_combout\,
	datab => \inst|REG_B\(2),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan5~3_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan5~5_cout\);

-- Location: LCCOMB_X23_Y11_N18
\inst|alu1|unidad_aritmetica|divi|LessThan5~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan5~7_cout\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add4~12_combout\ & ((!\inst|alu1|unidad_aritmetica|divi|LessThan5~5_cout\) # (!\inst|REG_B\(3)))) # (!\inst|alu1|unidad_aritmetica|divi|Add4~12_combout\ & 
-- (!\inst|REG_B\(3) & !\inst|alu1|unidad_aritmetica|divi|LessThan5~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add4~12_combout\,
	datab => \inst|REG_B\(3),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan5~5_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan5~7_cout\);

-- Location: LCCOMB_X23_Y11_N20
\inst|alu1|unidad_aritmetica|divi|LessThan5~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan5~9_cout\ = CARRY((\inst|REG_B\(4) & ((!\inst|alu1|unidad_aritmetica|divi|LessThan5~7_cout\) # (!\inst|alu1|unidad_aritmetica|divi|Add4~11_combout\))) # (!\inst|REG_B\(4) & 
-- (!\inst|alu1|unidad_aritmetica|divi|Add4~11_combout\ & !\inst|alu1|unidad_aritmetica|divi|LessThan5~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(4),
	datab => \inst|alu1|unidad_aritmetica|divi|Add4~11_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan5~7_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan5~9_cout\);

-- Location: LCCOMB_X23_Y11_N22
\inst|alu1|unidad_aritmetica|divi|LessThan5~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan5~11_cout\ = CARRY((\inst|REG_B\(5) & (\inst|alu1|unidad_aritmetica|divi|Add4~10_combout\ & !\inst|alu1|unidad_aritmetica|divi|LessThan5~9_cout\)) # (!\inst|REG_B\(5) & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add4~10_combout\) # (!\inst|alu1|unidad_aritmetica|divi|LessThan5~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(5),
	datab => \inst|alu1|unidad_aritmetica|divi|Add4~10_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan5~9_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan5~11_cout\);

-- Location: LCCOMB_X23_Y11_N24
\inst|alu1|unidad_aritmetica|divi|LessThan5~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan5~13_cout\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add4~20_combout\ & (\inst|REG_B\(6) & !\inst|alu1|unidad_aritmetica|divi|LessThan5~11_cout\)) # (!\inst|alu1|unidad_aritmetica|divi|Add4~20_combout\ & 
-- ((\inst|REG_B\(6)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan5~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add4~20_combout\,
	datab => \inst|REG_B\(6),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan5~11_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan5~13_cout\);

-- Location: LCCOMB_X23_Y11_N26
\inst|alu1|unidad_aritmetica|divi|LessThan5~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan5~14_combout\ = (\inst|REG_B\(7) & ((\inst|alu1|unidad_aritmetica|divi|LessThan5~13_cout\) # (!\inst|alu1|unidad_aritmetica|divi|Add4~19_combout\))) # (!\inst|REG_B\(7) & 
-- (\inst|alu1|unidad_aritmetica|divi|LessThan5~13_cout\ & !\inst|alu1|unidad_aritmetica|divi|Add4~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|REG_B\(7),
	datad => \inst|alu1|unidad_aritmetica|divi|Add4~19_combout\,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan5~13_cout\,
	combout => \inst|alu1|unidad_aritmetica|divi|LessThan5~14_combout\);

-- Location: LCCOMB_X18_Y11_N20
\inst|reggy~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~50_combout\ = (\inst|reggy~31_combout\ & ((\inst|reggy~49_combout\ & ((!\inst|alu1|unidad_aritmetica|divi|LessThan5~14_combout\))) # (!\inst|reggy~49_combout\ & (\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~17_combout\)))) # 
-- (!\inst|reggy~31_combout\ & (((\inst|reggy~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~17_combout\,
	datab => \inst|reggy~31_combout\,
	datac => \inst|reggy~49_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan5~14_combout\,
	combout => \inst|reggy~50_combout\);

-- Location: LCCOMB_X18_Y11_N18
\inst|reggy~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~51_combout\ = (\inst|reggy~45_combout\ & (\inst|reggy~46_combout\)) # (!\inst|reggy~45_combout\ & ((\inst|reggy~46_combout\ & (\inst|REG_D\(2))) # (!\inst|reggy~46_combout\ & ((\inst|reggy~50_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy~45_combout\,
	datab => \inst|reggy~46_combout\,
	datac => \inst|REG_D\(2),
	datad => \inst|reggy~50_combout\,
	combout => \inst|reggy~51_combout\);

-- Location: LCCOMB_X18_Y11_N2
\inst|reggy~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~52_combout\ = (\inst|reggy~42_combout\ & ((\inst|reggy~51_combout\ & (\inst|alu1|unidad_logica|salida\(2))) # (!\inst|reggy~51_combout\ & ((\inst|alu1|barrel_shifters|salShifters\(2)))))) # (!\inst|reggy~42_combout\ & 
-- (((\inst|reggy~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy~42_combout\,
	datab => \inst|alu1|unidad_logica|salida\(2),
	datac => \inst|alu1|barrel_shifters|salShifters\(2),
	datad => \inst|reggy~51_combout\,
	combout => \inst|reggy~52_combout\);

-- Location: LCCOMB_X19_Y13_N14
\inst|reggy~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~72_combout\ = (\inst|reggy~52_combout\) # ((\inst|reggy~35_combout\ & (!\inst|Equal0~0_combout\ & \inst|OP\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy~35_combout\,
	datab => \inst|Equal0~0_combout\,
	datac => \inst|OP\(3),
	datad => \inst|reggy~52_combout\,
	combout => \inst|reggy~72_combout\);

-- Location: FF_X18_Y13_N15
\inst|reggy[5][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~72_combout\,
	sload => VCC,
	ena => \inst|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy[5][2]~q\);

-- Location: LCCOMB_X19_Y13_N8
\inst|Mux72~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux72~2_combout\ = (\inst|MAR\(4) & (((\inst|MAR\(5))))) # (!\inst|MAR\(4) & ((\inst|MAR\(5) & ((\inst|reggy[6][2]~q\))) # (!\inst|MAR\(5) & (\inst|reggy[4][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MAR\(4),
	datab => \inst|reggy[4][2]~q\,
	datac => \inst|reggy[6][2]~q\,
	datad => \inst|MAR\(5),
	combout => \inst|Mux72~2_combout\);

-- Location: LCCOMB_X18_Y13_N2
\inst|Mux72~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux72~3_combout\ = (\inst|MAR\(4) & ((\inst|Mux72~2_combout\ & ((\inst|reggy[7][2]~q\))) # (!\inst|Mux72~2_combout\ & (\inst|reggy[5][2]~q\)))) # (!\inst|MAR\(4) & (((\inst|Mux72~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MAR\(4),
	datab => \inst|reggy[5][2]~q\,
	datac => \inst|Mux72~2_combout\,
	datad => \inst|reggy[7][2]~q\,
	combout => \inst|Mux72~3_combout\);

-- Location: LCCOMB_X17_Y13_N16
\inst|Mux72~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux72~0_combout\ = (\inst|MAR\(4) & ((\inst|MAR\(5)) # ((\inst|reggy[1][2]~q\)))) # (!\inst|MAR\(4) & (!\inst|MAR\(5) & ((\inst|reggy[0][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MAR\(4),
	datab => \inst|MAR\(5),
	datac => \inst|reggy[1][2]~q\,
	datad => \inst|reggy[0][2]~q\,
	combout => \inst|Mux72~0_combout\);

-- Location: LCCOMB_X16_Y13_N28
\inst|Mux72~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux72~1_combout\ = (\inst|MAR\(5) & ((\inst|Mux72~0_combout\ & (\inst|reggy[3][2]~q\)) # (!\inst|Mux72~0_combout\ & ((\inst|reggy[2][2]~q\))))) # (!\inst|MAR\(5) & (\inst|Mux72~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MAR\(5),
	datab => \inst|Mux72~0_combout\,
	datac => \inst|reggy[3][2]~q\,
	datad => \inst|reggy[2][2]~q\,
	combout => \inst|Mux72~1_combout\);

-- Location: LCCOMB_X17_Y14_N30
\inst|salida[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|salida[2]~5_combout\ = (\inst|MAR\(6) & (\inst|Mux72~3_combout\)) # (!\inst|MAR\(6) & ((\inst|Mux72~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Mux72~3_combout\,
	datac => \inst|MAR\(6),
	datad => \inst|Mux72~1_combout\,
	combout => \inst|salida[2]~5_combout\);

-- Location: FF_X17_Y14_N31
\inst|REG_A[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|salida[2]~5_combout\,
	ena => \inst|OP[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|REG_A\(2));

-- Location: LCCOMB_X21_Y12_N4
\inst|alu1|unidad_logica|aux[3]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|aux[3]~14_combout\ = (\inst|REG_A\(3) & (!\inst|alu1|unidad_logica|aux[2]~13\ & VCC)) # (!\inst|REG_A\(3) & (\inst|alu1|unidad_logica|aux[2]~13\ $ (GND)))
-- \inst|alu1|unidad_logica|aux[3]~15\ = CARRY((!\inst|REG_A\(3) & !\inst|alu1|unidad_logica|aux[2]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|REG_A\(3),
	datad => VCC,
	cin => \inst|alu1|unidad_logica|aux[2]~13\,
	combout => \inst|alu1|unidad_logica|aux[3]~14_combout\,
	cout => \inst|alu1|unidad_logica|aux[3]~15\);

-- Location: FF_X21_Y12_N5
\inst|alu1|unidad_logica|aux[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|alu1|unidad_logica|aux[3]~14_combout\,
	ena => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|unidad_logica|aux\(3));

-- Location: LCCOMB_X26_Y13_N26
\inst|alu1|unidad_logica|salida~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|salida~22_combout\ = (\inst|alu1|Mux11~0_combout\ & (((\inst|alu1|unidad_logica|aux\(3) & \inst|alu1|Mux10~0_combout\)))) # (!\inst|alu1|Mux11~0_combout\ & ((\inst|alu1|unidad_logica|salida~21_combout\) # 
-- ((\inst|alu1|Mux10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux11~0_combout\,
	datab => \inst|alu1|unidad_logica|salida~21_combout\,
	datac => \inst|alu1|unidad_logica|aux\(3),
	datad => \inst|alu1|Mux10~0_combout\,
	combout => \inst|alu1|unidad_logica|salida~22_combout\);

-- Location: LCCOMB_X26_Y13_N30
\inst|alu1|unidad_logica|salida~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|salida~23_combout\ = (\inst|REG_A\(3) & (\inst|alu1|unidad_logica|salida[9]~33_combout\ $ ((\inst|alu1|unidad_logica|salida~22_combout\)))) # (!\inst|REG_A\(3) & ((\inst|alu1|unidad_logica|salida~22_combout\) # 
-- ((\inst|alu1|unidad_logica|salida[9]~33_combout\ & \inst|REG_B\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(3),
	datab => \inst|alu1|unidad_logica|salida[9]~33_combout\,
	datac => \inst|alu1|unidad_logica|salida~22_combout\,
	datad => \inst|REG_B\(3),
	combout => \inst|alu1|unidad_logica|salida~23_combout\);

-- Location: FF_X26_Y13_N31
\inst|alu1|unidad_logica|salida[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|alu1|unidad_logica|salida~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|unidad_logica|salida\(3));

-- Location: FF_X19_Y11_N5
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

-- Location: FF_X19_Y11_N31
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

-- Location: LCCOMB_X22_Y12_N20
\inst|Mux51~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux51~0_combout\ = (\inst|MAR\(0) & (\inst|MAR\(1) & (!\inst|MAR\(2) & !\inst|MAR\(3)))) # (!\inst|MAR\(0) & (!\inst|MAR\(1) & (\inst|MAR\(2) $ (\inst|MAR\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MAR\(0),
	datab => \inst|MAR\(1),
	datac => \inst|MAR\(2),
	datad => \inst|MAR\(3),
	combout => \inst|Mux51~0_combout\);

-- Location: FF_X22_Y12_N21
\inst|REG_D[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Mux51~0_combout\,
	ena => \inst|REG_D[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|REG_D\(3));

-- Location: LCCOMB_X25_Y12_N12
\inst|alu1|unidad_aritmetica|mult|multi2|s2|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi2|s2|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|mult|inter\(10) & (\inst|alu1|unidad_aritmetica|mult|inter\(2) $ (\inst|alu1|unidad_aritmetica|mult|multi1|s1|Cout~0_combout\ $ 
-- (\inst|alu1|unidad_logica|salida~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|inter\(2),
	datab => \inst|alu1|unidad_aritmetica|mult|multi1|s1|Cout~0_combout\,
	datac => \inst|alu1|unidad_aritmetica|mult|inter\(10),
	datad => \inst|alu1|unidad_logica|salida~5_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi2|s2|Cout~0_combout\);

-- Location: LCCOMB_X25_Y12_N8
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

-- Location: LCCOMB_X25_Y12_N26
\inst|alu1|unidad_aritmetica|mult|multi1|s2|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi1|s2|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi1|s1|Cout~0_combout\ & ((\inst|alu1|unidad_aritmetica|mult|inter\(2)) # ((\inst|REG_A\(1) & \inst|REG_B\(1))))) # 
-- (!\inst|alu1|unidad_aritmetica|mult|multi1|s1|Cout~0_combout\ & (\inst|REG_A\(1) & (\inst|REG_B\(1) & \inst|alu1|unidad_aritmetica|mult|inter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(1),
	datab => \inst|alu1|unidad_aritmetica|mult|multi1|s1|Cout~0_combout\,
	datac => \inst|REG_B\(1),
	datad => \inst|alu1|unidad_aritmetica|mult|inter\(2),
	combout => \inst|alu1|unidad_aritmetica|mult|multi1|s2|Cout~0_combout\);

-- Location: LCCOMB_X25_Y12_N20
\inst|alu1|unidad_aritmetica|mult|multi1|s3|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi1|s3|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|mult|inter\(3) $ (\inst|alu1|unidad_aritmetica|mult|multi1|s2|Cout~0_combout\ $ (((\inst|REG_B\(1) & \inst|REG_A\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(1),
	datab => \inst|alu1|unidad_aritmetica|mult|inter\(3),
	datac => \inst|alu1|unidad_aritmetica|mult|multi1|s2|Cout~0_combout\,
	datad => \inst|REG_A\(2),
	combout => \inst|alu1|unidad_aritmetica|mult|multi1|s3|Suma~0_combout\);

-- Location: LCCOMB_X25_Y12_N16
\inst|alu1|unidad_aritmetica|mult|multi2|s3|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi2|s3|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|mult|multi2|s2|Cout~0_combout\ $ (\inst|alu1|unidad_aritmetica|mult|multi1|s3|Suma~0_combout\ $ (((\inst|REG_A\(1) & \inst|REG_B\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|multi2|s2|Cout~0_combout\,
	datab => \inst|REG_A\(1),
	datac => \inst|REG_B\(2),
	datad => \inst|alu1|unidad_aritmetica|mult|multi1|s3|Suma~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi2|s3|Suma~0_combout\);

-- Location: LCCOMB_X22_Y12_N22
\inst|alu1|unidad_aritmetica|mult|multi3|s3|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi3|s3|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|mult|multi2|s3|Suma~0_combout\ $ (((\inst|REG_A\(0) & \inst|REG_B\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(0),
	datac => \inst|alu1|unidad_aritmetica|mult|multi2|s3|Suma~0_combout\,
	datad => \inst|REG_B\(3),
	combout => \inst|alu1|unidad_aritmetica|mult|multi3|s3|Suma~0_combout\);

-- Location: LCCOMB_X19_Y10_N18
\inst|alu1|unidad_aritmetica|suma|s1|Cout~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|s1|Cout~2_combout\ = (\inst|alu1|unidad_aritmetica|suma|s1|Cout~1_combout\) # (\inst|alu1|unidad_aritmetica|suma|s1|Cout~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|alu1|unidad_aritmetica|suma|s1|Cout~1_combout\,
	datad => \inst|alu1|unidad_aritmetica|suma|s1|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|suma|s1|Cout~2_combout\);

-- Location: LCCOMB_X19_Y10_N14
\inst|alu1|unidad_aritmetica|suma|Xop[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|Xop\(2) = \inst|REG_A\(9) $ (\inst|REG_A\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|REG_A\(9),
	datad => \inst|REG_A\(2),
	combout => \inst|alu1|unidad_aritmetica|suma|Xop\(2));

-- Location: LCCOMB_X19_Y10_N12
\inst|alu1|unidad_aritmetica|suma|s2|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|s2|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|suma|s1|Cout~2_combout\ & ((\inst|alu1|unidad_aritmetica|suma|Xop\(2)) # (\inst|REG_B\(2) $ (\inst|REG_B\(9))))) # (!\inst|alu1|unidad_aritmetica|suma|s1|Cout~2_combout\ 
-- & (\inst|alu1|unidad_aritmetica|suma|Xop\(2) & (\inst|REG_B\(2) $ (\inst|REG_B\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(2),
	datab => \inst|alu1|unidad_aritmetica|suma|s1|Cout~2_combout\,
	datac => \inst|alu1|unidad_aritmetica|suma|Xop\(2),
	datad => \inst|REG_B\(9),
	combout => \inst|alu1|unidad_aritmetica|suma|s2|Cout~0_combout\);

-- Location: LCCOMB_X22_Y12_N8
\inst|alu1|unidad_aritmetica|suma|s3|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|s3|Suma~0_combout\ = \inst|REG_B\(3) $ (\inst|REG_B\(9) $ (\inst|REG_A\(3) $ (\inst|REG_A\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(3),
	datab => \inst|REG_B\(9),
	datac => \inst|REG_A\(3),
	datad => \inst|REG_A\(9),
	combout => \inst|alu1|unidad_aritmetica|suma|s3|Suma~0_combout\);

-- Location: LCCOMB_X19_Y10_N28
\inst|alu1|unidad_aritmetica|suma|s2|Cout2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|s2|Cout2~0_combout\ = (\inst|alu1|unidad_aritmetica|suma|Xop\(2) & (\inst|alu1|unidad_aritmetica|suma|s1|Cout2~0_combout\ & (\inst|REG_B\(2) $ (\inst|REG_B\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|suma|Xop\(2),
	datab => \inst|REG_B\(2),
	datac => \inst|alu1|unidad_aritmetica|suma|s1|Cout2~0_combout\,
	datad => \inst|REG_B\(9),
	combout => \inst|alu1|unidad_aritmetica|suma|s2|Cout2~0_combout\);

-- Location: LCCOMB_X19_Y10_N0
\inst|alu1|unidad_aritmetica|suma|s3|Suma\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|s3|Suma~combout\ = \inst|alu1|unidad_aritmetica|suma|s3|Suma~0_combout\ $ (\inst|alu1|unidad_aritmetica|suma|s2|Cout2~0_combout\ $ (((\inst|alu1|unidad_aritmetica|suma|s2|Cout~0_combout\) # 
-- (\inst|alu1|unidad_aritmetica|suma|s1|Cout2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|suma|s2|Cout~0_combout\,
	datab => \inst|alu1|unidad_aritmetica|suma|s1|Cout2~0_combout\,
	datac => \inst|alu1|unidad_aritmetica|suma|s3|Suma~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|suma|s2|Cout2~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|suma|s3|Suma~combout\);

-- Location: LCCOMB_X19_Y11_N14
\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~12_combout\ = (\inst|alu1|Mux10~0_combout\ & (\inst|alu1|unidad_aritmetica|mult|multi3|s3|Suma~0_combout\)) # (!\inst|alu1|Mux10~0_combout\ & ((\inst|alu1|unidad_aritmetica|suma|s3|Suma~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|multi3|s3|Suma~0_combout\,
	datab => \inst|alu1|Mux10~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|suma|s3|Suma~combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~12_combout\);

-- Location: LCCOMB_X19_Y12_N8
\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~19_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~12_combout\ & ((\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~18\) # (GND))) # 
-- (!\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~12_combout\ & (!\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~18\))
-- \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~20\ = CARRY((\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~12_combout\) # (!\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~12_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~18\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~19_combout\,
	cout => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~20\);

-- Location: LCCOMB_X19_Y11_N22
\inst|reggy~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~53_combout\ = (\inst|reggy~32_combout\ & (((\inst|reggy~31_combout\)))) # (!\inst|reggy~32_combout\ & ((\inst|reggy~31_combout\ & (\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~19_combout\)) # (!\inst|reggy~31_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|suma|s3|Suma~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~19_combout\,
	datab => \inst|alu1|unidad_aritmetica|suma|s3|Suma~combout\,
	datac => \inst|reggy~32_combout\,
	datad => \inst|reggy~31_combout\,
	combout => \inst|reggy~53_combout\);

-- Location: LCCOMB_X19_Y11_N8
\inst|reggy~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~54_combout\ = (\inst|reggy~32_combout\ & ((\inst|reggy~53_combout\ & (!\inst|alu1|unidad_aritmetica|divi|LessThan4~14_combout\)) # (!\inst|reggy~53_combout\ & ((\inst|alu1|unidad_aritmetica|mult|multi3|s3|Suma~0_combout\))))) # 
-- (!\inst|reggy~32_combout\ & (((\inst|reggy~53_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|LessThan4~14_combout\,
	datab => \inst|reggy~32_combout\,
	datac => \inst|reggy~53_combout\,
	datad => \inst|alu1|unidad_aritmetica|mult|multi3|s3|Suma~0_combout\,
	combout => \inst|reggy~54_combout\);

-- Location: LCCOMB_X19_Y11_N28
\inst|reggy~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~55_combout\ = (\inst|reggy~45_combout\ & (((\inst|reggy~46_combout\)))) # (!\inst|reggy~45_combout\ & ((\inst|reggy~46_combout\ & (\inst|REG_D\(3))) # (!\inst|reggy~46_combout\ & ((\inst|reggy~54_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy~45_combout\,
	datab => \inst|REG_D\(3),
	datac => \inst|reggy~54_combout\,
	datad => \inst|reggy~46_combout\,
	combout => \inst|reggy~55_combout\);

-- Location: LCCOMB_X19_Y11_N30
\inst|reggy~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~56_combout\ = (\inst|reggy~42_combout\ & ((\inst|reggy~55_combout\ & (\inst|alu1|unidad_logica|salida\(3))) # (!\inst|reggy~55_combout\ & ((\inst|alu1|barrel_shifters|salShifters\(3)))))) # (!\inst|reggy~42_combout\ & 
-- (((\inst|reggy~55_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_logica|salida\(3),
	datab => \inst|reggy~42_combout\,
	datac => \inst|alu1|barrel_shifters|salShifters\(3),
	datad => \inst|reggy~55_combout\,
	combout => \inst|reggy~56_combout\);

-- Location: LCCOMB_X19_Y11_N10
\inst|reggy~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~73_combout\ = (\inst|reggy~56_combout\) # ((\inst|reggy~35_combout\ & (\inst|OP\(3) & !\inst|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy~35_combout\,
	datab => \inst|OP\(3),
	datac => \inst|reggy~56_combout\,
	datad => \inst|Equal0~0_combout\,
	combout => \inst|reggy~73_combout\);

-- Location: FF_X17_Y13_N19
\inst|reggy[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~73_combout\,
	sload => VCC,
	ena => \inst|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy[2][3]~q\);

-- Location: LCCOMB_X17_Y13_N6
\inst|Mux71~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux71~0_combout\ = (\inst|MAR\(4) & ((\inst|MAR\(5)) # ((\inst|reggy[1][3]~q\)))) # (!\inst|MAR\(4) & (!\inst|MAR\(5) & ((\inst|reggy[0][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MAR\(4),
	datab => \inst|MAR\(5),
	datac => \inst|reggy[1][3]~q\,
	datad => \inst|reggy[0][3]~q\,
	combout => \inst|Mux71~0_combout\);

-- Location: LCCOMB_X16_Y13_N30
\inst|Mux71~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux71~1_combout\ = (\inst|MAR\(5) & ((\inst|Mux71~0_combout\ & ((\inst|reggy[3][3]~q\))) # (!\inst|Mux71~0_combout\ & (\inst|reggy[2][3]~q\)))) # (!\inst|MAR\(5) & (((\inst|Mux71~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MAR\(5),
	datab => \inst|reggy[2][3]~q\,
	datac => \inst|reggy[3][3]~q\,
	datad => \inst|Mux71~0_combout\,
	combout => \inst|Mux71~1_combout\);

-- Location: LCCOMB_X19_Y14_N4
\inst|Mux71~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux71~2_combout\ = (\inst|MAR\(5) & ((\inst|MAR\(4)) # ((\inst|reggy[6][3]~q\)))) # (!\inst|MAR\(5) & (!\inst|MAR\(4) & ((\inst|reggy[4][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MAR\(5),
	datab => \inst|MAR\(4),
	datac => \inst|reggy[6][3]~q\,
	datad => \inst|reggy[4][3]~q\,
	combout => \inst|Mux71~2_combout\);

-- Location: LCCOMB_X18_Y14_N16
\inst|Mux71~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux71~3_combout\ = (\inst|MAR\(4) & ((\inst|Mux71~2_combout\ & ((\inst|reggy[7][3]~q\))) # (!\inst|Mux71~2_combout\ & (\inst|reggy[5][3]~q\)))) # (!\inst|MAR\(4) & (((\inst|Mux71~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MAR\(4),
	datab => \inst|reggy[5][3]~q\,
	datac => \inst|reggy[7][3]~q\,
	datad => \inst|Mux71~2_combout\,
	combout => \inst|Mux71~3_combout\);

-- Location: LCCOMB_X17_Y14_N6
\inst|salida[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|salida[3]~6_combout\ = (\inst|MAR\(6) & ((\inst|Mux71~3_combout\))) # (!\inst|MAR\(6) & (\inst|Mux71~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux71~1_combout\,
	datab => \inst|MAR\(6),
	datad => \inst|Mux71~3_combout\,
	combout => \inst|salida[3]~6_combout\);

-- Location: FF_X25_Y12_N9
\inst|REG_A[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|salida[3]~6_combout\,
	sload => VCC,
	ena => \inst|OP[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|REG_A\(3));

-- Location: LCCOMB_X21_Y12_N6
\inst|alu1|unidad_logica|aux[4]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|aux[4]~16_combout\ = (\inst|REG_A\(4) & ((\inst|alu1|unidad_logica|aux[3]~15\) # (GND))) # (!\inst|REG_A\(4) & (!\inst|alu1|unidad_logica|aux[3]~15\))
-- \inst|alu1|unidad_logica|aux[4]~17\ = CARRY((\inst|REG_A\(4)) # (!\inst|alu1|unidad_logica|aux[3]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(4),
	datad => VCC,
	cin => \inst|alu1|unidad_logica|aux[3]~15\,
	combout => \inst|alu1|unidad_logica|aux[4]~16_combout\,
	cout => \inst|alu1|unidad_logica|aux[4]~17\);

-- Location: FF_X21_Y12_N7
\inst|alu1|unidad_logica|aux[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|alu1|unidad_logica|aux[4]~16_combout\,
	ena => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|unidad_logica|aux\(4));

-- Location: LCCOMB_X26_Y13_N22
\inst|alu1|unidad_logica|salida~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|salida~24_combout\ = (\inst|REG_A\(4) & \inst|REG_B\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(4),
	datad => \inst|REG_B\(4),
	combout => \inst|alu1|unidad_logica|salida~24_combout\);

-- Location: LCCOMB_X26_Y13_N20
\inst|alu1|unidad_logica|salida~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|salida~25_combout\ = (\inst|alu1|Mux11~0_combout\ & (\inst|alu1|unidad_logica|aux\(4) & ((\inst|alu1|Mux10~0_combout\)))) # (!\inst|alu1|Mux11~0_combout\ & (((\inst|alu1|unidad_logica|salida~24_combout\) # 
-- (\inst|alu1|Mux10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux11~0_combout\,
	datab => \inst|alu1|unidad_logica|aux\(4),
	datac => \inst|alu1|unidad_logica|salida~24_combout\,
	datad => \inst|alu1|Mux10~0_combout\,
	combout => \inst|alu1|unidad_logica|salida~25_combout\);

-- Location: LCCOMB_X26_Y13_N2
\inst|alu1|unidad_logica|salida~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|salida~26_combout\ = (\inst|REG_A\(4) & (\inst|alu1|unidad_logica|salida[9]~33_combout\ $ (((\inst|alu1|unidad_logica|salida~25_combout\))))) # (!\inst|REG_A\(4) & ((\inst|alu1|unidad_logica|salida~25_combout\) # 
-- ((\inst|alu1|unidad_logica|salida[9]~33_combout\ & \inst|REG_B\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(4),
	datab => \inst|alu1|unidad_logica|salida[9]~33_combout\,
	datac => \inst|REG_B\(4),
	datad => \inst|alu1|unidad_logica|salida~25_combout\,
	combout => \inst|alu1|unidad_logica|salida~26_combout\);

-- Location: FF_X26_Y13_N3
\inst|alu1|unidad_logica|salida[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|alu1|unidad_logica|salida~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|unidad_logica|salida\(4));

-- Location: LCCOMB_X26_Y13_N28
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

-- Location: FF_X26_Y13_N29
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

-- Location: FF_X22_Y13_N27
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

-- Location: LCCOMB_X22_Y13_N4
\inst|Mux50~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux50~0_combout\ = (\inst|MAR\(3) & (!\inst|MAR\(0) & (!\inst|MAR\(2) & !\inst|MAR\(1)))) # (!\inst|MAR\(3) & (\inst|MAR\(0) & (\inst|MAR\(2) $ (\inst|MAR\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MAR\(3),
	datab => \inst|MAR\(0),
	datac => \inst|MAR\(2),
	datad => \inst|MAR\(1),
	combout => \inst|Mux50~0_combout\);

-- Location: FF_X22_Y13_N5
\inst|REG_D[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Mux50~0_combout\,
	ena => \inst|REG_D[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|REG_D\(4));

-- Location: LCCOMB_X19_Y10_N26
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

-- Location: LCCOMB_X22_Y12_N26
\inst|alu1|unidad_aritmetica|suma|Xop[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|Xop\(3) = \inst|REG_A\(3) $ (\inst|REG_A\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|REG_A\(3),
	datad => \inst|REG_A\(9),
	combout => \inst|alu1|unidad_aritmetica|suma|Xop\(3));

-- Location: LCCOMB_X23_Y12_N0
\inst|alu1|unidad_aritmetica|suma|s3|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|s3|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|suma|s2|Cout~combout\ & ((\inst|alu1|unidad_aritmetica|suma|Xop\(3)) # (\inst|REG_B\(3) $ (\inst|REG_B\(9))))) # (!\inst|alu1|unidad_aritmetica|suma|s2|Cout~combout\ & 
-- (\inst|alu1|unidad_aritmetica|suma|Xop\(3) & (\inst|REG_B\(3) $ (\inst|REG_B\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(3),
	datab => \inst|alu1|unidad_aritmetica|suma|s2|Cout~combout\,
	datac => \inst|alu1|unidad_aritmetica|suma|Xop\(3),
	datad => \inst|REG_B\(9),
	combout => \inst|alu1|unidad_aritmetica|suma|s3|Cout~0_combout\);

-- Location: LCCOMB_X23_Y12_N10
\inst|alu1|unidad_aritmetica|suma|s3|Cout\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|s3|Cout~combout\ = (\inst|alu1|unidad_aritmetica|suma|s2|Cout2~0_combout\) # (\inst|alu1|unidad_aritmetica|suma|s3|Cout~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|alu1|unidad_aritmetica|suma|s2|Cout2~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|suma|s3|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|suma|s3|Cout~combout\);

-- Location: LCCOMB_X23_Y12_N14
\inst|alu1|unidad_aritmetica|suma|Yop[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|Yop\(4) = \inst|REG_B\(4) $ (\inst|REG_B\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(4),
	datad => \inst|REG_B\(9),
	combout => \inst|alu1|unidad_aritmetica|suma|Yop\(4));

-- Location: LCCOMB_X17_Y14_N22
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

-- Location: LCCOMB_X23_Y12_N28
\inst|alu1|unidad_aritmetica|suma|s3|Cout2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|s3|Cout2~0_combout\ = (\inst|alu1|unidad_aritmetica|suma|s2|Cout2~0_combout\ & (\inst|alu1|unidad_aritmetica|suma|Xop\(3) & (\inst|REG_B\(3) $ (\inst|REG_B\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(3),
	datab => \inst|alu1|unidad_aritmetica|suma|s2|Cout2~0_combout\,
	datac => \inst|alu1|unidad_aritmetica|suma|Xop\(3),
	datad => \inst|REG_B\(9),
	combout => \inst|alu1|unidad_aritmetica|suma|s3|Cout2~0_combout\);

-- Location: LCCOMB_X23_Y12_N8
\inst|alu1|unidad_aritmetica|suma|s4|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|s4|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|suma|s3|Cout~combout\ $ (\inst|alu1|unidad_aritmetica|suma|Yop\(4) $ (\inst|alu1|unidad_aritmetica|suma|Xop\(4) $ (\inst|alu1|unidad_aritmetica|suma|s3|Cout2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|suma|s3|Cout~combout\,
	datab => \inst|alu1|unidad_aritmetica|suma|Yop\(4),
	datac => \inst|alu1|unidad_aritmetica|suma|Xop\(4),
	datad => \inst|alu1|unidad_aritmetica|suma|s3|Cout2~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|suma|s4|Suma~0_combout\);

-- Location: LCCOMB_X25_Y12_N30
\inst|alu1|unidad_aritmetica|mult|multi3|s3|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi3|s3|Cout~0_combout\ = (\inst|REG_B\(3) & (\inst|REG_A\(0) & \inst|alu1|unidad_aritmetica|mult|multi2|s3|Suma~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(3),
	datac => \inst|REG_A\(0),
	datad => \inst|alu1|unidad_aritmetica|mult|multi2|s3|Suma~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi3|s3|Cout~0_combout\);

-- Location: LCCOMB_X25_Y12_N0
\inst|alu1|unidad_aritmetica|mult|multi1|s3|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi1|s3|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|mult|inter\(3) & ((\inst|alu1|unidad_aritmetica|mult|multi1|s2|Cout~0_combout\) # ((\inst|REG_B\(1) & \inst|REG_A\(2))))) # 
-- (!\inst|alu1|unidad_aritmetica|mult|inter\(3) & (\inst|REG_B\(1) & (\inst|alu1|unidad_aritmetica|mult|multi1|s2|Cout~0_combout\ & \inst|REG_A\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(1),
	datab => \inst|alu1|unidad_aritmetica|mult|inter\(3),
	datac => \inst|alu1|unidad_aritmetica|mult|multi1|s2|Cout~0_combout\,
	datad => \inst|REG_A\(2),
	combout => \inst|alu1|unidad_aritmetica|mult|multi1|s3|Cout~0_combout\);

-- Location: LCCOMB_X26_Y13_N24
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

-- Location: LCCOMB_X25_Y12_N22
\inst|alu1|unidad_aritmetica|mult|multi1|s4|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi1|s4|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|mult|multi1|s3|Cout~0_combout\ $ (\inst|alu1|unidad_aritmetica|mult|inter\(4) $ (((\inst|REG_A\(3) & \inst|REG_B\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(3),
	datab => \inst|alu1|unidad_aritmetica|mult|multi1|s3|Cout~0_combout\,
	datac => \inst|REG_B\(1),
	datad => \inst|alu1|unidad_aritmetica|mult|inter\(4),
	combout => \inst|alu1|unidad_aritmetica|mult|multi1|s4|Suma~0_combout\);

-- Location: LCCOMB_X25_Y12_N2
\inst|alu1|unidad_aritmetica|mult|multi2|s3|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi2|s3|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi2|s2|Cout~0_combout\ & ((\inst|alu1|unidad_aritmetica|mult|multi1|s3|Suma~0_combout\) # ((\inst|REG_B\(2) & \inst|REG_A\(1))))) # 
-- (!\inst|alu1|unidad_aritmetica|mult|multi2|s2|Cout~0_combout\ & (\inst|REG_B\(2) & (\inst|REG_A\(1) & \inst|alu1|unidad_aritmetica|mult|multi1|s3|Suma~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|multi2|s2|Cout~0_combout\,
	datab => \inst|REG_B\(2),
	datac => \inst|REG_A\(1),
	datad => \inst|alu1|unidad_aritmetica|mult|multi1|s3|Suma~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi2|s3|Cout~0_combout\);

-- Location: LCCOMB_X25_Y12_N14
\inst|alu1|unidad_aritmetica|mult|multi2|s4|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi2|s4|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|mult|multi1|s4|Suma~0_combout\ $ (\inst|alu1|unidad_aritmetica|mult|multi2|s3|Cout~0_combout\ $ (((\inst|REG_B\(2) & \inst|REG_A\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|multi1|s4|Suma~0_combout\,
	datab => \inst|alu1|unidad_aritmetica|mult|multi2|s3|Cout~0_combout\,
	datac => \inst|REG_B\(2),
	datad => \inst|REG_A\(2),
	combout => \inst|alu1|unidad_aritmetica|mult|multi2|s4|Suma~0_combout\);

-- Location: LCCOMB_X25_Y12_N6
\inst|alu1|unidad_aritmetica|mult|multi3|s4|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi3|s4|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|mult|multi3|s3|Cout~0_combout\ $ (\inst|alu1|unidad_aritmetica|mult|multi2|s4|Suma~0_combout\ $ (((\inst|REG_A\(1) & \inst|REG_B\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|multi3|s3|Cout~0_combout\,
	datab => \inst|REG_A\(1),
	datac => \inst|alu1|unidad_aritmetica|mult|multi2|s4|Suma~0_combout\,
	datad => \inst|REG_B\(3),
	combout => \inst|alu1|unidad_aritmetica|mult|multi3|s4|Suma~0_combout\);

-- Location: LCCOMB_X24_Y12_N26
\inst|alu1|unidad_aritmetica|mult|multi4|s4|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi4|s4|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|mult|multi3|s4|Suma~0_combout\ $ (((\inst|REG_B\(4) & \inst|REG_A\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(4),
	datac => \inst|REG_A\(0),
	datad => \inst|alu1|unidad_aritmetica|mult|multi3|s4|Suma~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi4|s4|Suma~0_combout\);

-- Location: LCCOMB_X23_Y12_N2
\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~11_combout\ = (\inst|alu1|Mux10~0_combout\ & ((\inst|alu1|unidad_aritmetica|mult|multi4|s4|Suma~0_combout\))) # (!\inst|alu1|Mux10~0_combout\ & (\inst|alu1|unidad_aritmetica|suma|s4|Suma~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux10~0_combout\,
	datac => \inst|alu1|unidad_aritmetica|suma|s4|Suma~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|mult|multi4|s4|Suma~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~11_combout\);

-- Location: LCCOMB_X19_Y12_N10
\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~21_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~11_combout\ & (!\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~20\ & VCC)) # 
-- (!\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~11_combout\ & (\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~20\ $ (GND)))
-- \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~22\ = CARRY((!\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~11_combout\ & !\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~11_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~20\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~21_combout\,
	cout => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~22\);

-- Location: LCCOMB_X23_Y12_N20
\inst|reggy~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~57_combout\ = (\inst|reggy~32_combout\ & ((\inst|alu1|unidad_aritmetica|mult|multi4|s4|Suma~0_combout\) # ((\inst|reggy~31_combout\)))) # (!\inst|reggy~32_combout\ & (((\inst|alu1|unidad_aritmetica|suma|s4|Suma~0_combout\ & 
-- !\inst|reggy~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy~32_combout\,
	datab => \inst|alu1|unidad_aritmetica|mult|multi4|s4|Suma~0_combout\,
	datac => \inst|alu1|unidad_aritmetica|suma|s4|Suma~0_combout\,
	datad => \inst|reggy~31_combout\,
	combout => \inst|reggy~57_combout\);

-- Location: LCCOMB_X23_Y12_N6
\inst|reggy~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~58_combout\ = (\inst|reggy~31_combout\ & ((\inst|reggy~57_combout\ & ((!\inst|alu1|unidad_aritmetica|divi|LessThan3~14_combout\))) # (!\inst|reggy~57_combout\ & (\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~21_combout\)))) # 
-- (!\inst|reggy~31_combout\ & (((\inst|reggy~57_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~21_combout\,
	datab => \inst|reggy~31_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|LessThan3~14_combout\,
	datad => \inst|reggy~57_combout\,
	combout => \inst|reggy~58_combout\);

-- Location: LCCOMB_X22_Y13_N10
\inst|reggy~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~59_combout\ = (\inst|reggy~45_combout\ & (\inst|reggy~46_combout\)) # (!\inst|reggy~45_combout\ & ((\inst|reggy~46_combout\ & (\inst|REG_D\(4))) # (!\inst|reggy~46_combout\ & ((\inst|reggy~58_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy~45_combout\,
	datab => \inst|reggy~46_combout\,
	datac => \inst|REG_D\(4),
	datad => \inst|reggy~58_combout\,
	combout => \inst|reggy~59_combout\);

-- Location: LCCOMB_X22_Y13_N26
\inst|reggy~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~60_combout\ = (\inst|reggy~42_combout\ & ((\inst|reggy~59_combout\ & (\inst|alu1|unidad_logica|salida\(4))) # (!\inst|reggy~59_combout\ & ((\inst|alu1|barrel_shifters|salShifters\(4)))))) # (!\inst|reggy~42_combout\ & 
-- (((\inst|reggy~59_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy~42_combout\,
	datab => \inst|alu1|unidad_logica|salida\(4),
	datac => \inst|alu1|barrel_shifters|salShifters\(4),
	datad => \inst|reggy~59_combout\,
	combout => \inst|reggy~60_combout\);

-- Location: LCCOMB_X19_Y13_N26
\inst|reggy~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~74_combout\ = (\inst|reggy~60_combout\) # ((\inst|reggy~35_combout\ & (!\inst|Equal0~0_combout\ & \inst|OP\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy~35_combout\,
	datab => \inst|Equal0~0_combout\,
	datac => \inst|OP\(3),
	datad => \inst|reggy~60_combout\,
	combout => \inst|reggy~74_combout\);

-- Location: FF_X18_Y13_N29
\inst|reggy[4][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~74_combout\,
	sload => VCC,
	ena => \inst|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy[4][4]~q\);

-- Location: LCCOMB_X18_Y13_N28
\inst|Mux60~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux60~0_combout\ = (\inst|MAR\(1) & ((\inst|MAR\(0)) # ((\inst|reggy[6][4]~q\)))) # (!\inst|MAR\(1) & (!\inst|MAR\(0) & (\inst|reggy[4][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MAR\(1),
	datab => \inst|MAR\(0),
	datac => \inst|reggy[4][4]~q\,
	datad => \inst|reggy[6][4]~q\,
	combout => \inst|Mux60~0_combout\);

-- Location: LCCOMB_X18_Y13_N6
\inst|Mux60~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux60~1_combout\ = (\inst|MAR\(0) & ((\inst|Mux60~0_combout\ & ((\inst|reggy[7][4]~q\))) # (!\inst|Mux60~0_combout\ & (\inst|reggy[5][4]~q\)))) # (!\inst|MAR\(0) & (\inst|Mux60~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MAR\(0),
	datab => \inst|Mux60~0_combout\,
	datac => \inst|reggy[5][4]~q\,
	datad => \inst|reggy[7][4]~q\,
	combout => \inst|Mux60~1_combout\);

-- Location: LCCOMB_X17_Y13_N2
\inst|Mux60~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux60~2_combout\ = (\inst|MAR\(0) & (((\inst|reggy[1][4]~q\) # (\inst|MAR\(1))))) # (!\inst|MAR\(0) & (\inst|reggy[0][4]~q\ & ((!\inst|MAR\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy[0][4]~q\,
	datab => \inst|MAR\(0),
	datac => \inst|reggy[1][4]~q\,
	datad => \inst|MAR\(1),
	combout => \inst|Mux60~2_combout\);

-- Location: LCCOMB_X17_Y13_N12
\inst|Mux60~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux60~3_combout\ = (\inst|Mux60~2_combout\ & ((\inst|reggy[3][4]~q\) # ((!\inst|MAR\(1))))) # (!\inst|Mux60~2_combout\ & (((\inst|reggy[2][4]~q\ & \inst|MAR\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy[3][4]~q\,
	datab => \inst|Mux60~2_combout\,
	datac => \inst|reggy[2][4]~q\,
	datad => \inst|MAR\(1),
	combout => \inst|Mux60~3_combout\);

-- Location: LCCOMB_X18_Y13_N16
\inst|Mux60~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux60~4_combout\ = (\inst|MAR\(2) & (\inst|Mux60~1_combout\)) # (!\inst|MAR\(2) & ((\inst|Mux60~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|MAR\(2),
	datac => \inst|Mux60~1_combout\,
	datad => \inst|Mux60~3_combout\,
	combout => \inst|Mux60~4_combout\);

-- Location: FF_X21_Y13_N5
\inst|REG_B[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|Mux60~4_combout\,
	sload => VCC,
	ena => \inst|OP[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|REG_B\(4));

-- Location: LCCOMB_X23_Y12_N18
\inst|alu1|unidad_aritmetica|suma|s4|Cout2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|s4|Cout2~0_combout\ = (\inst|alu1|unidad_aritmetica|suma|Xop\(4) & (\inst|alu1|unidad_aritmetica|suma|s3|Cout2~0_combout\ & (\inst|REG_B\(4) $ (\inst|REG_B\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(4),
	datab => \inst|REG_B\(9),
	datac => \inst|alu1|unidad_aritmetica|suma|Xop\(4),
	datad => \inst|alu1|unidad_aritmetica|suma|s3|Cout2~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|suma|s4|Cout2~0_combout\);

-- Location: LCCOMB_X24_Y10_N22
\inst|alu1|unidad_aritmetica|suma|s5|Cout2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|s5|Cout2~0_combout\ = (\inst|alu1|unidad_aritmetica|suma|Xop\(5) & (\inst|alu1|unidad_aritmetica|suma|s4|Cout2~0_combout\ & (\inst|REG_B\(5) $ (\inst|REG_B\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(5),
	datab => \inst|alu1|unidad_aritmetica|suma|Xop\(5),
	datac => \inst|REG_B\(9),
	datad => \inst|alu1|unidad_aritmetica|suma|s4|Cout2~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|suma|s5|Cout2~0_combout\);

-- Location: LCCOMB_X24_Y10_N4
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

-- Location: LCCOMB_X24_Y10_N26
\inst|alu1|unidad_aritmetica|suma|s6|Cout2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|s6|Cout2~0_combout\ = (\inst|alu1|unidad_aritmetica|suma|s5|Cout2~0_combout\ & (\inst|alu1|unidad_aritmetica|suma|Xop\(6) & (\inst|REG_B\(9) $ (\inst|REG_B\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|suma|s5|Cout2~0_combout\,
	datab => \inst|REG_B\(9),
	datac => \inst|REG_B\(6),
	datad => \inst|alu1|unidad_aritmetica|suma|Xop\(6),
	combout => \inst|alu1|unidad_aritmetica|suma|s6|Cout2~0_combout\);

-- Location: LCCOMB_X23_Y10_N28
\inst|alu1|unidad_aritmetica|suma|s7|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|s7|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|suma|s6|Cout2~0_combout\ & (\inst|REG_B\(9) $ (\inst|REG_B\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(9),
	datac => \inst|REG_B\(7),
	datad => \inst|alu1|unidad_aritmetica|suma|s6|Cout2~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|suma|s7|Cout~0_combout\);

-- Location: LCCOMB_X23_Y12_N16
\inst|alu1|unidad_aritmetica|suma|s4|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|s4|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|suma|Xop\(4) & ((\inst|alu1|unidad_aritmetica|suma|s3|Cout~combout\) # (\inst|REG_B\(4) $ (\inst|REG_B\(9))))) # (!\inst|alu1|unidad_aritmetica|suma|Xop\(4) & 
-- (\inst|alu1|unidad_aritmetica|suma|s3|Cout~combout\ & (\inst|REG_B\(4) $ (\inst|REG_B\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(4),
	datab => \inst|REG_B\(9),
	datac => \inst|alu1|unidad_aritmetica|suma|Xop\(4),
	datad => \inst|alu1|unidad_aritmetica|suma|s3|Cout~combout\,
	combout => \inst|alu1|unidad_aritmetica|suma|s4|Cout~0_combout\);

-- Location: LCCOMB_X23_Y12_N22
\inst|alu1|unidad_aritmetica|suma|s4|Cout\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|s4|Cout~combout\ = (\inst|alu1|unidad_aritmetica|suma|s4|Cout~0_combout\) # (\inst|alu1|unidad_aritmetica|suma|s3|Cout2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|unidad_aritmetica|suma|s4|Cout~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|suma|s3|Cout2~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|suma|s4|Cout~combout\);

-- Location: LCCOMB_X24_Y10_N16
\inst|alu1|unidad_aritmetica|suma|s5|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|s5|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|suma|s4|Cout~combout\ & ((\inst|alu1|unidad_aritmetica|suma|Xop\(5)) # (\inst|REG_B\(5) $ (\inst|REG_B\(9))))) # (!\inst|alu1|unidad_aritmetica|suma|s4|Cout~combout\ & 
-- (\inst|alu1|unidad_aritmetica|suma|Xop\(5) & (\inst|REG_B\(5) $ (\inst|REG_B\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(5),
	datab => \inst|REG_B\(9),
	datac => \inst|alu1|unidad_aritmetica|suma|s4|Cout~combout\,
	datad => \inst|alu1|unidad_aritmetica|suma|Xop\(5),
	combout => \inst|alu1|unidad_aritmetica|suma|s5|Cout~0_combout\);

-- Location: LCCOMB_X24_Y10_N2
\inst|alu1|unidad_aritmetica|suma|s5|Cout\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|s5|Cout~combout\ = (\inst|alu1|unidad_aritmetica|suma|s4|Cout2~0_combout\) # (\inst|alu1|unidad_aritmetica|suma|s5|Cout~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|suma|s4|Cout2~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|suma|s5|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|suma|s5|Cout~combout\);

-- Location: LCCOMB_X24_Y10_N12
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

-- Location: LCCOMB_X24_Y10_N10
\inst|alu1|unidad_aritmetica|suma|s6|Cout\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|s6|Cout~combout\ = (\inst|alu1|unidad_aritmetica|suma|s5|Cout2~0_combout\) # (\inst|alu1|unidad_aritmetica|suma|s6|Cout~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|alu1|unidad_aritmetica|suma|s5|Cout2~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|suma|s6|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|suma|s6|Cout~combout\);

-- Location: LCCOMB_X23_Y10_N10
\inst|alu1|unidad_aritmetica|suma|s7|Cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|s7|Cout~1_combout\ = (\inst|alu1|unidad_aritmetica|suma|Xop\(7) & ((\inst|alu1|unidad_aritmetica|suma|s6|Cout~combout\) # (\inst|REG_B\(9) $ (\inst|REG_B\(7))))) # (!\inst|alu1|unidad_aritmetica|suma|Xop\(7) & 
-- (\inst|alu1|unidad_aritmetica|suma|s6|Cout~combout\ & (\inst|REG_B\(9) $ (\inst|REG_B\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(9),
	datab => \inst|alu1|unidad_aritmetica|suma|Xop\(7),
	datac => \inst|alu1|unidad_aritmetica|suma|s6|Cout~combout\,
	datad => \inst|REG_B\(7),
	combout => \inst|alu1|unidad_aritmetica|suma|s7|Cout~1_combout\);

-- Location: LCCOMB_X23_Y10_N24
\inst|alu1|unidad_aritmetica|suma|s7|Cout~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|s7|Cout~2_combout\ = (\inst|alu1|unidad_aritmetica|suma|s6|Cout2~0_combout\) # (\inst|alu1|unidad_aritmetica|suma|s7|Cout~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|unidad_aritmetica|suma|s6|Cout2~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|suma|s7|Cout~1_combout\,
	combout => \inst|alu1|unidad_aritmetica|suma|s7|Cout~2_combout\);

-- Location: LCCOMB_X23_Y10_N14
\inst|alu1|unidad_aritmetica|suma|s8|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|s8|Cout~0_combout\ = (\inst|REG_B\(9) & ((\inst|alu1|unidad_aritmetica|suma|s7|Cout~0_combout\) # ((\inst|REG_A\(9)) # (\inst|alu1|unidad_aritmetica|suma|s7|Cout~2_combout\)))) # (!\inst|REG_B\(9) & (\inst|REG_A\(9) & 
-- ((\inst|alu1|unidad_aritmetica|suma|s7|Cout~0_combout\) # (\inst|alu1|unidad_aritmetica|suma|s7|Cout~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(9),
	datab => \inst|alu1|unidad_aritmetica|suma|s7|Cout~0_combout\,
	datac => \inst|REG_A\(9),
	datad => \inst|alu1|unidad_aritmetica|suma|s7|Cout~2_combout\,
	combout => \inst|alu1|unidad_aritmetica|suma|s8|Cout~0_combout\);

-- Location: LCCOMB_X23_Y10_N0
\inst|alu1|unidad_aritmetica|suma|Sfaux~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|Sfaux~1_combout\ = \inst|alu1|unidad_aritmetica|suma|Sfaux~0_combout\ $ (((\inst|alu1|unidad_aritmetica|suma|s8|Cout~0_combout\) # ((\inst|alu1|unidad_aritmetica|suma|Xop\(7) & 
-- \inst|alu1|unidad_aritmetica|suma|s7|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|suma|Sfaux~0_combout\,
	datab => \inst|alu1|unidad_aritmetica|suma|Xop\(7),
	datac => \inst|alu1|unidad_aritmetica|suma|s8|Cout~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|suma|s7|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|suma|Sfaux~1_combout\);

-- Location: LCCOMB_X21_Y10_N18
\inst|alu1|unidad_aritmetica|suma|s0|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|s0|Suma~0_combout\ = \inst|REG_A\(0) $ (\inst|REG_B\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|REG_A\(0),
	datad => \inst|REG_B\(0),
	combout => \inst|alu1|unidad_aritmetica|suma|s0|Suma~0_combout\);

-- Location: LCCOMB_X21_Y10_N8
\inst|reggy~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~15_combout\ = (!\inst|alu1|Mux10~0_combout\ & ((\inst|alu1|unidad_aritmetica|suma|Sfaux~1_combout\ & (\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~5_combout\)) # (!\inst|alu1|unidad_aritmetica|suma|Sfaux~1_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|suma|s0|Suma~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux10~0_combout\,
	datab => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~5_combout\,
	datac => \inst|alu1|unidad_aritmetica|suma|Sfaux~1_combout\,
	datad => \inst|alu1|unidad_aritmetica|suma|s0|Suma~0_combout\,
	combout => \inst|reggy~15_combout\);

-- Location: LCCOMB_X21_Y10_N20
\inst|reggy~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~75_combout\ = (!\inst|OP\(2) & (!\inst|OP\(1) & \inst|OP\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|OP\(2),
	datab => \inst|OP\(1),
	datad => \inst|OP\(0),
	combout => \inst|reggy~75_combout\);

-- Location: LCCOMB_X21_Y10_N28
\inst|reggy~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~14_combout\ = (\inst|reggy~75_combout\ & ((\inst|alu1|unidad_aritmetica|mult|multi4|s8|Cout~0_combout\ & ((\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~5_combout\))) # (!\inst|alu1|unidad_aritmetica|mult|multi4|s8|Cout~0_combout\ & 
-- (\inst|alu1|unidad_logica|salida~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_logica|salida~4_combout\,
	datab => \inst|reggy~75_combout\,
	datac => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~5_combout\,
	datad => \inst|alu1|unidad_aritmetica|mult|multi4|s8|Cout~0_combout\,
	combout => \inst|reggy~14_combout\);

-- Location: LCCOMB_X22_Y14_N24
\inst|reggy~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~16_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~31_combout\) # ((!\inst|Equal0~0_combout\ & ((\inst|reggy~15_combout\) # (\inst|reggy~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~31_combout\,
	datab => \inst|Equal0~0_combout\,
	datac => \inst|reggy~15_combout\,
	datad => \inst|reggy~14_combout\,
	combout => \inst|reggy~16_combout\);

-- Location: LCCOMB_X22_Y14_N26
\inst|reggy~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~17_combout\ = (\inst|reggy~13_combout\ & ((\inst|reggy~16_combout\) # ((!\inst|Equal0~0_combout\ & \inst|OP\(3))))) # (!\inst|reggy~13_combout\ & (((\inst|OP\(3) & \inst|reggy~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy~13_combout\,
	datab => \inst|Equal0~0_combout\,
	datac => \inst|OP\(3),
	datad => \inst|reggy~16_combout\,
	combout => \inst|reggy~17_combout\);

-- Location: LCCOMB_X22_Y14_N12
\inst|reggy~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~18_combout\ = (\inst|OP\(3) & ((\inst|OP\(2)) # ((\inst|OP\(0) & \inst|OP\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|OP\(0),
	datab => \inst|OP\(2),
	datac => \inst|OP\(3),
	datad => \inst|OP\(1),
	combout => \inst|reggy~18_combout\);

-- Location: LCCOMB_X22_Y11_N18
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

-- Location: LCCOMB_X22_Y11_N20
\inst|alu1|unidad_aritmetica|divi|Add5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add5~2_combout\ = (\inst|alu1|unidad_aritmetica|divi|Add4~14_combout\ & ((\inst|REG_B\(1) & (!\inst|alu1|unidad_aritmetica|divi|Add5~1\)) # (!\inst|REG_B\(1) & (\inst|alu1|unidad_aritmetica|divi|Add5~1\ & VCC)))) # 
-- (!\inst|alu1|unidad_aritmetica|divi|Add4~14_combout\ & ((\inst|REG_B\(1) & ((\inst|alu1|unidad_aritmetica|divi|Add5~1\) # (GND))) # (!\inst|REG_B\(1) & (!\inst|alu1|unidad_aritmetica|divi|Add5~1\))))
-- \inst|alu1|unidad_aritmetica|divi|Add5~3\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add4~14_combout\ & (\inst|REG_B\(1) & !\inst|alu1|unidad_aritmetica|divi|Add5~1\)) # (!\inst|alu1|unidad_aritmetica|divi|Add4~14_combout\ & ((\inst|REG_B\(1)) # 
-- (!\inst|alu1|unidad_aritmetica|divi|Add5~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add4~14_combout\,
	datab => \inst|REG_B\(1),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add5~1\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add5~2_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add5~3\);

-- Location: LCCOMB_X22_Y11_N22
\inst|alu1|unidad_aritmetica|divi|Add5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add5~4_combout\ = ((\inst|REG_B\(2) $ (\inst|alu1|unidad_aritmetica|divi|Add4~13_combout\ $ (\inst|alu1|unidad_aritmetica|divi|Add5~3\)))) # (GND)
-- \inst|alu1|unidad_aritmetica|divi|Add5~5\ = CARRY((\inst|REG_B\(2) & (\inst|alu1|unidad_aritmetica|divi|Add4~13_combout\ & !\inst|alu1|unidad_aritmetica|divi|Add5~3\)) # (!\inst|REG_B\(2) & ((\inst|alu1|unidad_aritmetica|divi|Add4~13_combout\) # 
-- (!\inst|alu1|unidad_aritmetica|divi|Add5~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(2),
	datab => \inst|alu1|unidad_aritmetica|divi|Add4~13_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add5~3\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add5~4_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add5~5\);

-- Location: LCCOMB_X22_Y11_N24
\inst|alu1|unidad_aritmetica|divi|Add5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add5~6_combout\ = (\inst|alu1|unidad_aritmetica|divi|Add4~12_combout\ & ((\inst|REG_B\(3) & (!\inst|alu1|unidad_aritmetica|divi|Add5~5\)) # (!\inst|REG_B\(3) & (\inst|alu1|unidad_aritmetica|divi|Add5~5\ & VCC)))) # 
-- (!\inst|alu1|unidad_aritmetica|divi|Add4~12_combout\ & ((\inst|REG_B\(3) & ((\inst|alu1|unidad_aritmetica|divi|Add5~5\) # (GND))) # (!\inst|REG_B\(3) & (!\inst|alu1|unidad_aritmetica|divi|Add5~5\))))
-- \inst|alu1|unidad_aritmetica|divi|Add5~7\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add4~12_combout\ & (\inst|REG_B\(3) & !\inst|alu1|unidad_aritmetica|divi|Add5~5\)) # (!\inst|alu1|unidad_aritmetica|divi|Add4~12_combout\ & ((\inst|REG_B\(3)) # 
-- (!\inst|alu1|unidad_aritmetica|divi|Add5~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add4~12_combout\,
	datab => \inst|REG_B\(3),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add5~5\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add5~6_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add5~7\);

-- Location: LCCOMB_X22_Y11_N26
\inst|alu1|unidad_aritmetica|divi|Add5~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add5~8_combout\ = ((\inst|alu1|unidad_aritmetica|divi|Add4~11_combout\ $ (\inst|REG_B\(4) $ (\inst|alu1|unidad_aritmetica|divi|Add5~7\)))) # (GND)
-- \inst|alu1|unidad_aritmetica|divi|Add5~9\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add4~11_combout\ & ((!\inst|alu1|unidad_aritmetica|divi|Add5~7\) # (!\inst|REG_B\(4)))) # (!\inst|alu1|unidad_aritmetica|divi|Add4~11_combout\ & (!\inst|REG_B\(4) & 
-- !\inst|alu1|unidad_aritmetica|divi|Add5~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add4~11_combout\,
	datab => \inst|REG_B\(4),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add5~7\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add5~8_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add5~9\);

-- Location: LCCOMB_X22_Y11_N28
\inst|alu1|unidad_aritmetica|divi|Add5~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add5~10_combout\ = (\inst|REG_B\(5) & ((\inst|alu1|unidad_aritmetica|divi|Add4~10_combout\ & (!\inst|alu1|unidad_aritmetica|divi|Add5~9\)) # (!\inst|alu1|unidad_aritmetica|divi|Add4~10_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add5~9\) # (GND))))) # (!\inst|REG_B\(5) & ((\inst|alu1|unidad_aritmetica|divi|Add4~10_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add5~9\ & VCC)) # (!\inst|alu1|unidad_aritmetica|divi|Add4~10_combout\ & 
-- (!\inst|alu1|unidad_aritmetica|divi|Add5~9\))))
-- \inst|alu1|unidad_aritmetica|divi|Add5~11\ = CARRY((\inst|REG_B\(5) & ((!\inst|alu1|unidad_aritmetica|divi|Add5~9\) # (!\inst|alu1|unidad_aritmetica|divi|Add4~10_combout\))) # (!\inst|REG_B\(5) & (!\inst|alu1|unidad_aritmetica|divi|Add4~10_combout\ & 
-- !\inst|alu1|unidad_aritmetica|divi|Add5~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(5),
	datab => \inst|alu1|unidad_aritmetica|divi|Add4~10_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add5~9\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add5~10_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add5~11\);

-- Location: LCCOMB_X23_Y11_N0
\inst|alu1|unidad_aritmetica|divi|Add5~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add5~12_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan5~14_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add4~10_combout\)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan5~14_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add5~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|unidad_aritmetica|divi|Add4~10_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|LessThan5~14_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|Add5~10_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add5~12_combout\);

-- Location: LCCOMB_X23_Y11_N6
\inst|alu1|unidad_aritmetica|divi|Add5~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add5~13_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan5~14_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add4~11_combout\)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan5~14_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add5~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|unidad_aritmetica|divi|Add4~11_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|Add5~8_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan5~14_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add5~13_combout\);

-- Location: LCCOMB_X23_Y11_N4
\inst|alu1|unidad_aritmetica|divi|Add5~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add5~14_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan5~14_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add4~12_combout\)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan5~14_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add5~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add4~12_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|LessThan5~14_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|Add5~6_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add5~14_combout\);

-- Location: LCCOMB_X23_Y11_N30
\inst|alu1|unidad_aritmetica|divi|Add5~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add5~15_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan5~14_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add4~13_combout\)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan5~14_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add5~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add4~13_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|LessThan5~14_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|Add5~4_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add5~15_combout\);

-- Location: LCCOMB_X23_Y11_N8
\inst|alu1|unidad_aritmetica|divi|Add5~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add5~16_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan5~14_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add4~14_combout\)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan5~14_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add5~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|unidad_aritmetica|divi|Add4~14_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|LessThan5~14_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|Add5~2_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add5~16_combout\);

-- Location: LCCOMB_X23_Y11_N10
\inst|alu1|unidad_aritmetica|divi|Add5~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add5~17_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan5~14_combout\ & (\inst|REG_A\(2))) # (!\inst|alu1|unidad_aritmetica|divi|LessThan5~14_combout\ & ((\inst|alu1|unidad_aritmetica|divi|Add5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|REG_A\(2),
	datac => \inst|alu1|unidad_aritmetica|divi|LessThan5~14_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|Add5~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add5~17_combout\);

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
-- \inst|alu1|unidad_aritmetica|divi|Add6~2_combout\ = (\inst|REG_B\(1) & ((\inst|alu1|unidad_aritmetica|divi|Add5~17_combout\ & (!\inst|alu1|unidad_aritmetica|divi|Add6~1\)) # (!\inst|alu1|unidad_aritmetica|divi|Add5~17_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add6~1\) # (GND))))) # (!\inst|REG_B\(1) & ((\inst|alu1|unidad_aritmetica|divi|Add5~17_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add6~1\ & VCC)) # (!\inst|alu1|unidad_aritmetica|divi|Add5~17_combout\ & 
-- (!\inst|alu1|unidad_aritmetica|divi|Add6~1\))))
-- \inst|alu1|unidad_aritmetica|divi|Add6~3\ = CARRY((\inst|REG_B\(1) & ((!\inst|alu1|unidad_aritmetica|divi|Add6~1\) # (!\inst|alu1|unidad_aritmetica|divi|Add5~17_combout\))) # (!\inst|REG_B\(1) & (!\inst|alu1|unidad_aritmetica|divi|Add5~17_combout\ & 
-- !\inst|alu1|unidad_aritmetica|divi|Add6~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(1),
	datab => \inst|alu1|unidad_aritmetica|divi|Add5~17_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add6~1\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add6~2_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add6~3\);

-- Location: LCCOMB_X18_Y11_N8
\inst|alu1|unidad_aritmetica|divi|Add6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add6~4_combout\ = ((\inst|alu1|unidad_aritmetica|divi|Add5~16_combout\ $ (\inst|REG_B\(2) $ (\inst|alu1|unidad_aritmetica|divi|Add6~3\)))) # (GND)
-- \inst|alu1|unidad_aritmetica|divi|Add6~5\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add5~16_combout\ & ((!\inst|alu1|unidad_aritmetica|divi|Add6~3\) # (!\inst|REG_B\(2)))) # (!\inst|alu1|unidad_aritmetica|divi|Add5~16_combout\ & (!\inst|REG_B\(2) & 
-- !\inst|alu1|unidad_aritmetica|divi|Add6~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add5~16_combout\,
	datab => \inst|REG_B\(2),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add6~3\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add6~4_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add6~5\);

-- Location: LCCOMB_X18_Y11_N10
\inst|alu1|unidad_aritmetica|divi|Add6~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add6~6_combout\ = (\inst|REG_B\(3) & ((\inst|alu1|unidad_aritmetica|divi|Add5~15_combout\ & (!\inst|alu1|unidad_aritmetica|divi|Add6~5\)) # (!\inst|alu1|unidad_aritmetica|divi|Add5~15_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add6~5\) # (GND))))) # (!\inst|REG_B\(3) & ((\inst|alu1|unidad_aritmetica|divi|Add5~15_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add6~5\ & VCC)) # (!\inst|alu1|unidad_aritmetica|divi|Add5~15_combout\ & 
-- (!\inst|alu1|unidad_aritmetica|divi|Add6~5\))))
-- \inst|alu1|unidad_aritmetica|divi|Add6~7\ = CARRY((\inst|REG_B\(3) & ((!\inst|alu1|unidad_aritmetica|divi|Add6~5\) # (!\inst|alu1|unidad_aritmetica|divi|Add5~15_combout\))) # (!\inst|REG_B\(3) & (!\inst|alu1|unidad_aritmetica|divi|Add5~15_combout\ & 
-- !\inst|alu1|unidad_aritmetica|divi|Add6~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(3),
	datab => \inst|alu1|unidad_aritmetica|divi|Add5~15_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add6~5\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add6~6_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add6~7\);

-- Location: LCCOMB_X18_Y11_N12
\inst|alu1|unidad_aritmetica|divi|Add6~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add6~8_combout\ = ((\inst|REG_B\(4) $ (\inst|alu1|unidad_aritmetica|divi|Add5~14_combout\ $ (\inst|alu1|unidad_aritmetica|divi|Add6~7\)))) # (GND)
-- \inst|alu1|unidad_aritmetica|divi|Add6~9\ = CARRY((\inst|REG_B\(4) & (\inst|alu1|unidad_aritmetica|divi|Add5~14_combout\ & !\inst|alu1|unidad_aritmetica|divi|Add6~7\)) # (!\inst|REG_B\(4) & ((\inst|alu1|unidad_aritmetica|divi|Add5~14_combout\) # 
-- (!\inst|alu1|unidad_aritmetica|divi|Add6~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(4),
	datab => \inst|alu1|unidad_aritmetica|divi|Add5~14_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add6~7\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add6~8_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add6~9\);

-- Location: LCCOMB_X18_Y11_N14
\inst|alu1|unidad_aritmetica|divi|Add6~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add6~10_combout\ = (\inst|REG_B\(5) & ((\inst|alu1|unidad_aritmetica|divi|Add5~13_combout\ & (!\inst|alu1|unidad_aritmetica|divi|Add6~9\)) # (!\inst|alu1|unidad_aritmetica|divi|Add5~13_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add6~9\) # (GND))))) # (!\inst|REG_B\(5) & ((\inst|alu1|unidad_aritmetica|divi|Add5~13_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add6~9\ & VCC)) # (!\inst|alu1|unidad_aritmetica|divi|Add5~13_combout\ & 
-- (!\inst|alu1|unidad_aritmetica|divi|Add6~9\))))
-- \inst|alu1|unidad_aritmetica|divi|Add6~11\ = CARRY((\inst|REG_B\(5) & ((!\inst|alu1|unidad_aritmetica|divi|Add6~9\) # (!\inst|alu1|unidad_aritmetica|divi|Add5~13_combout\))) # (!\inst|REG_B\(5) & (!\inst|alu1|unidad_aritmetica|divi|Add5~13_combout\ & 
-- !\inst|alu1|unidad_aritmetica|divi|Add6~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(5),
	datab => \inst|alu1|unidad_aritmetica|divi|Add5~13_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add6~9\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add6~10_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add6~11\);

-- Location: LCCOMB_X18_Y11_N16
\inst|alu1|unidad_aritmetica|divi|Add6~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add6~12_combout\ = \inst|REG_B\(6) $ (\inst|alu1|unidad_aritmetica|divi|Add6~11\ $ (\inst|alu1|unidad_aritmetica|divi|Add5~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(6),
	datad => \inst|alu1|unidad_aritmetica|divi|Add5~12_combout\,
	cin => \inst|alu1|unidad_aritmetica|divi|Add6~11\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add6~12_combout\);

-- Location: LCCOMB_X22_Y11_N30
\inst|alu1|unidad_aritmetica|divi|Add5~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add5~18_combout\ = \inst|alu1|unidad_aritmetica|divi|Add4~20_combout\ $ (\inst|alu1|unidad_aritmetica|divi|Add5~11\ $ (\inst|REG_B\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|unidad_aritmetica|divi|Add4~20_combout\,
	datad => \inst|REG_B\(6),
	cin => \inst|alu1|unidad_aritmetica|divi|Add5~11\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add5~18_combout\);

-- Location: LCCOMB_X22_Y11_N0
\inst|alu1|unidad_aritmetica|divi|Add5~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add5~20_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan5~14_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add4~20_combout\)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan5~14_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add5~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|unidad_aritmetica|divi|Add4~20_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|Add5~18_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan5~14_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add5~20_combout\);

-- Location: LCCOMB_X22_Y11_N2
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

-- Location: LCCOMB_X22_Y11_N4
\inst|alu1|unidad_aritmetica|divi|LessThan6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan6~3_cout\ = CARRY((\inst|REG_B\(1) & (\inst|alu1|unidad_aritmetica|divi|Add5~17_combout\ & !\inst|alu1|unidad_aritmetica|divi|LessThan6~1_cout\)) # (!\inst|REG_B\(1) & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add5~17_combout\) # (!\inst|alu1|unidad_aritmetica|divi|LessThan6~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(1),
	datab => \inst|alu1|unidad_aritmetica|divi|Add5~17_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan6~1_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan6~3_cout\);

-- Location: LCCOMB_X22_Y11_N6
\inst|alu1|unidad_aritmetica|divi|LessThan6~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan6~5_cout\ = CARRY((\inst|REG_B\(2) & ((!\inst|alu1|unidad_aritmetica|divi|LessThan6~3_cout\) # (!\inst|alu1|unidad_aritmetica|divi|Add5~16_combout\))) # (!\inst|REG_B\(2) & 
-- (!\inst|alu1|unidad_aritmetica|divi|Add5~16_combout\ & !\inst|alu1|unidad_aritmetica|divi|LessThan6~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(2),
	datab => \inst|alu1|unidad_aritmetica|divi|Add5~16_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan6~3_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan6~5_cout\);

-- Location: LCCOMB_X22_Y11_N8
\inst|alu1|unidad_aritmetica|divi|LessThan6~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan6~7_cout\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add5~15_combout\ & ((!\inst|alu1|unidad_aritmetica|divi|LessThan6~5_cout\) # (!\inst|REG_B\(3)))) # (!\inst|alu1|unidad_aritmetica|divi|Add5~15_combout\ & 
-- (!\inst|REG_B\(3) & !\inst|alu1|unidad_aritmetica|divi|LessThan6~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add5~15_combout\,
	datab => \inst|REG_B\(3),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan6~5_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan6~7_cout\);

-- Location: LCCOMB_X22_Y11_N10
\inst|alu1|unidad_aritmetica|divi|LessThan6~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan6~9_cout\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add5~14_combout\ & (\inst|REG_B\(4) & !\inst|alu1|unidad_aritmetica|divi|LessThan6~7_cout\)) # (!\inst|alu1|unidad_aritmetica|divi|Add5~14_combout\ & 
-- ((\inst|REG_B\(4)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan6~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add5~14_combout\,
	datab => \inst|REG_B\(4),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan6~7_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan6~9_cout\);

-- Location: LCCOMB_X22_Y11_N12
\inst|alu1|unidad_aritmetica|divi|LessThan6~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan6~11_cout\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add5~13_combout\ & ((!\inst|alu1|unidad_aritmetica|divi|LessThan6~9_cout\) # (!\inst|REG_B\(5)))) # (!\inst|alu1|unidad_aritmetica|divi|Add5~13_combout\ & 
-- (!\inst|REG_B\(5) & !\inst|alu1|unidad_aritmetica|divi|LessThan6~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add5~13_combout\,
	datab => \inst|REG_B\(5),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan6~9_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan6~11_cout\);

-- Location: LCCOMB_X22_Y11_N14
\inst|alu1|unidad_aritmetica|divi|LessThan6~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan6~13_cout\ = CARRY((\inst|REG_B\(6) & ((!\inst|alu1|unidad_aritmetica|divi|LessThan6~11_cout\) # (!\inst|alu1|unidad_aritmetica|divi|Add5~12_combout\))) # (!\inst|REG_B\(6) & 
-- (!\inst|alu1|unidad_aritmetica|divi|Add5~12_combout\ & !\inst|alu1|unidad_aritmetica|divi|LessThan6~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(6),
	datab => \inst|alu1|unidad_aritmetica|divi|Add5~12_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan6~11_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan6~13_cout\);

-- Location: LCCOMB_X22_Y11_N16
\inst|alu1|unidad_aritmetica|divi|LessThan6~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan6~14_combout\ = (\inst|REG_B\(7) & ((\inst|alu1|unidad_aritmetica|divi|LessThan6~13_cout\) # (!\inst|alu1|unidad_aritmetica|divi|Add5~20_combout\))) # (!\inst|REG_B\(7) & 
-- (\inst|alu1|unidad_aritmetica|divi|LessThan6~13_cout\ & !\inst|alu1|unidad_aritmetica|divi|Add5~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|REG_B\(7),
	datad => \inst|alu1|unidad_aritmetica|divi|Add5~20_combout\,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan6~13_cout\,
	combout => \inst|alu1|unidad_aritmetica|divi|LessThan6~14_combout\);

-- Location: LCCOMB_X21_Y11_N2
\inst|alu1|unidad_aritmetica|divi|Add6~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add6~14_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan6~14_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add5~12_combout\)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan6~14_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add6~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add5~12_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|Add6~12_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan6~14_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add6~14_combout\);

-- Location: LCCOMB_X21_Y11_N0
\inst|alu1|unidad_aritmetica|divi|Add6~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add6~15_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan6~14_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add5~13_combout\)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan6~14_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add6~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add5~13_combout\,
	datab => \inst|alu1|unidad_aritmetica|divi|LessThan6~14_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|Add6~10_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add6~15_combout\);

-- Location: LCCOMB_X21_Y11_N4
\inst|alu1|unidad_aritmetica|divi|Add6~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add6~16_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan6~14_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add5~14_combout\)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan6~14_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add6~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add5~14_combout\,
	datab => \inst|alu1|unidad_aritmetica|divi|LessThan6~14_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|Add6~8_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add6~16_combout\);

-- Location: LCCOMB_X21_Y11_N6
\inst|alu1|unidad_aritmetica|divi|Add6~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add6~17_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan6~14_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add5~15_combout\)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan6~14_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add6~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add5~15_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|Add6~6_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan6~14_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add6~17_combout\);

-- Location: LCCOMB_X21_Y11_N8
\inst|alu1|unidad_aritmetica|divi|Add6~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add6~18_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan6~14_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add5~16_combout\)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan6~14_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add6~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|unidad_aritmetica|divi|Add5~16_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|Add6~4_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan6~14_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add6~18_combout\);

-- Location: LCCOMB_X21_Y11_N30
\inst|alu1|unidad_aritmetica|divi|Add6~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add6~19_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan6~14_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add5~17_combout\)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan6~14_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add6~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add5~17_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|Add6~2_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan6~14_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add6~19_combout\);

-- Location: LCCOMB_X21_Y11_N28
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

-- Location: LCCOMB_X21_Y11_N10
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

-- Location: LCCOMB_X21_Y11_N12
\inst|alu1|unidad_aritmetica|divi|LessThan7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan7~3_cout\ = CARRY((\inst|REG_B\(1) & (\inst|alu1|unidad_aritmetica|divi|Add6~20_combout\ & !\inst|alu1|unidad_aritmetica|divi|LessThan7~1_cout\)) # (!\inst|REG_B\(1) & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add6~20_combout\) # (!\inst|alu1|unidad_aritmetica|divi|LessThan7~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(1),
	datab => \inst|alu1|unidad_aritmetica|divi|Add6~20_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan7~1_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan7~3_cout\);

-- Location: LCCOMB_X21_Y11_N14
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

-- Location: LCCOMB_X21_Y11_N16
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

-- Location: LCCOMB_X21_Y11_N18
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

-- Location: LCCOMB_X21_Y11_N20
\inst|alu1|unidad_aritmetica|divi|LessThan7~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan7~11_cout\ = CARRY((\inst|REG_B\(5) & (\inst|alu1|unidad_aritmetica|divi|Add6~16_combout\ & !\inst|alu1|unidad_aritmetica|divi|LessThan7~9_cout\)) # (!\inst|REG_B\(5) & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add6~16_combout\) # (!\inst|alu1|unidad_aritmetica|divi|LessThan7~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(5),
	datab => \inst|alu1|unidad_aritmetica|divi|Add6~16_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan7~9_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan7~11_cout\);

-- Location: LCCOMB_X21_Y11_N22
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

-- Location: LCCOMB_X21_Y11_N24
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

-- Location: LCCOMB_X22_Y14_N18
\inst|reggy~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~19_combout\ = (!\inst|reggy~18_combout\ & (!\inst|reggy~15_combout\ & (\inst|alu1|unidad_aritmetica|divi|LessThan7~14_combout\ & !\inst|reggy~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy~18_combout\,
	datab => \inst|reggy~15_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|LessThan7~14_combout\,
	datad => \inst|reggy~14_combout\,
	combout => \inst|reggy~19_combout\);

-- Location: LCCOMB_X22_Y14_N28
\inst|reggy~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~20_combout\ = (\inst|alu1|unidad_logica|salida\(0) & ((\inst|reggy~12_combout\) # ((\inst|reggy~17_combout\ & !\inst|reggy~19_combout\)))) # (!\inst|alu1|unidad_logica|salida\(0) & (((\inst|reggy~17_combout\ & !\inst|reggy~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_logica|salida\(0),
	datab => \inst|reggy~12_combout\,
	datac => \inst|reggy~17_combout\,
	datad => \inst|reggy~19_combout\,
	combout => \inst|reggy~20_combout\);

-- Location: LCCOMB_X22_Y14_N0
\inst|reggy~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~21_combout\ = (\inst|Equal0~0_combout\ & (\inst|REG_D\(0))) # (!\inst|Equal0~0_combout\ & ((\inst|reggy~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|REG_D\(0),
	datac => \inst|Equal0~0_combout\,
	datad => \inst|reggy~20_combout\,
	combout => \inst|reggy~21_combout\);

-- Location: FF_X21_Y14_N5
\inst|reggy[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~21_combout\,
	sload => VCC,
	ena => \inst|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy[2][0]~q\);

-- Location: LCCOMB_X22_Y14_N10
\inst|Mux74~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux74~0_combout\ = (\inst|MAR\(5) & (((\inst|MAR\(4))))) # (!\inst|MAR\(5) & ((\inst|MAR\(4) & ((\inst|reggy[1][0]~q\))) # (!\inst|MAR\(4) & (\inst|reggy[0][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MAR\(5),
	datab => \inst|reggy[0][0]~q\,
	datac => \inst|MAR\(4),
	datad => \inst|reggy[1][0]~q\,
	combout => \inst|Mux74~0_combout\);

-- Location: LCCOMB_X23_Y14_N8
\inst|Mux74~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux74~1_combout\ = (\inst|MAR\(5) & ((\inst|Mux74~0_combout\ & ((\inst|reggy[3][0]~q\))) # (!\inst|Mux74~0_combout\ & (\inst|reggy[2][0]~q\)))) # (!\inst|MAR\(5) & (((\inst|Mux74~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy[2][0]~q\,
	datab => \inst|MAR\(5),
	datac => \inst|reggy[3][0]~q\,
	datad => \inst|Mux74~0_combout\,
	combout => \inst|Mux74~1_combout\);

-- Location: LCCOMB_X19_Y14_N28
\inst|Mux74~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux74~2_combout\ = (\inst|MAR\(5) & ((\inst|MAR\(4)) # ((\inst|reggy[6][0]~q\)))) # (!\inst|MAR\(5) & (!\inst|MAR\(4) & ((\inst|reggy[4][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MAR\(5),
	datab => \inst|MAR\(4),
	datac => \inst|reggy[6][0]~q\,
	datad => \inst|reggy[4][0]~q\,
	combout => \inst|Mux74~2_combout\);

-- Location: LCCOMB_X23_Y14_N16
\inst|Mux74~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux74~3_combout\ = (\inst|MAR\(4) & ((\inst|Mux74~2_combout\ & ((\inst|reggy[7][0]~q\))) # (!\inst|Mux74~2_combout\ & (\inst|reggy[5][0]~q\)))) # (!\inst|MAR\(4) & (((\inst|Mux74~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MAR\(4),
	datab => \inst|reggy[5][0]~q\,
	datac => \inst|Mux74~2_combout\,
	datad => \inst|reggy[7][0]~q\,
	combout => \inst|Mux74~3_combout\);

-- Location: LCCOMB_X17_Y14_N16
\inst|salida[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|salida[0]~3_combout\ = (\inst|MAR\(6) & ((\inst|Mux74~3_combout\))) # (!\inst|MAR\(6) & (\inst|Mux74~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux74~1_combout\,
	datab => \inst|MAR\(6),
	datad => \inst|Mux74~3_combout\,
	combout => \inst|salida[0]~3_combout\);

-- Location: FF_X19_Y10_N17
\inst|REG_A[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|salida[0]~3_combout\,
	sload => VCC,
	ena => \inst|OP[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|REG_A\(0));

-- Location: FF_X21_Y12_N1
\inst|alu1|unidad_logica|aux[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|alu1|unidad_logica|aux[1]~10_combout\,
	ena => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|unidad_logica|aux\(1));

-- Location: LCCOMB_X21_Y12_N20
\inst|alu1|unidad_logica|salida~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|salida~16_combout\ = (\inst|alu1|Mux11~0_combout\ & (\inst|alu1|unidad_logica|aux\(1) & (\inst|alu1|Mux10~0_combout\))) # (!\inst|alu1|Mux11~0_combout\ & (((\inst|alu1|Mux10~0_combout\) # 
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
	combout => \inst|alu1|unidad_logica|salida~16_combout\);

-- Location: LCCOMB_X21_Y11_N26
\inst|alu1|unidad_logica|salida~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|salida~17_combout\ = (\inst|alu1|unidad_logica|salida[9]~33_combout\ & ((\inst|alu1|unidad_logica|salida~16_combout\ & ((!\inst|REG_A\(1)))) # (!\inst|alu1|unidad_logica|salida~16_combout\ & ((\inst|REG_B\(1)) # 
-- (\inst|REG_A\(1)))))) # (!\inst|alu1|unidad_logica|salida[9]~33_combout\ & (((\inst|alu1|unidad_logica|salida~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(1),
	datab => \inst|alu1|unidad_logica|salida[9]~33_combout\,
	datac => \inst|alu1|unidad_logica|salida~16_combout\,
	datad => \inst|REG_A\(1),
	combout => \inst|alu1|unidad_logica|salida~17_combout\);

-- Location: FF_X21_Y11_N27
\inst|alu1|unidad_logica|salida[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|alu1|unidad_logica|salida~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|unidad_logica|salida\(1));

-- Location: FF_X19_Y11_N15
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

-- Location: FF_X19_Y11_N13
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

-- Location: LCCOMB_X22_Y12_N12
\inst|Mux53~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux53~0_combout\ = (\inst|MAR\(2) & (\inst|MAR\(0) & (!\inst|MAR\(1) & !\inst|MAR\(3)))) # (!\inst|MAR\(2) & (\inst|MAR\(3) $ (((\inst|MAR\(0) & \inst|MAR\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MAR\(0),
	datab => \inst|MAR\(1),
	datac => \inst|MAR\(2),
	datad => \inst|MAR\(3),
	combout => \inst|Mux53~0_combout\);

-- Location: FF_X22_Y12_N13
\inst|REG_D[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Mux53~0_combout\,
	ena => \inst|REG_D[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|REG_D\(1));

-- Location: LCCOMB_X19_Y11_N16
\inst|reggy~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~43_combout\ = (\inst|reggy~32_combout\ & (((\inst|reggy~31_combout\)))) # (!\inst|reggy~32_combout\ & ((\inst|reggy~31_combout\ & (\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~15_combout\)) # (!\inst|reggy~31_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|suma|s1|Suma~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~15_combout\,
	datab => \inst|alu1|unidad_aritmetica|suma|s1|Suma~0_combout\,
	datac => \inst|reggy~32_combout\,
	datad => \inst|reggy~31_combout\,
	combout => \inst|reggy~43_combout\);

-- Location: LCCOMB_X19_Y11_N20
\inst|reggy~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~44_combout\ = (\inst|reggy~43_combout\ & (((!\inst|alu1|unidad_aritmetica|divi|LessThan6~14_combout\) # (!\inst|reggy~32_combout\)))) # (!\inst|reggy~43_combout\ & (\inst|alu1|unidad_aritmetica|mult|multi1|s1|Suma~0_combout\ & 
-- (\inst|reggy~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|multi1|s1|Suma~0_combout\,
	datab => \inst|reggy~43_combout\,
	datac => \inst|reggy~32_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan6~14_combout\,
	combout => \inst|reggy~44_combout\);

-- Location: LCCOMB_X19_Y11_N0
\inst|reggy~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~47_combout\ = (\inst|reggy~45_combout\ & (\inst|reggy~46_combout\)) # (!\inst|reggy~45_combout\ & ((\inst|reggy~46_combout\ & (\inst|REG_D\(1))) # (!\inst|reggy~46_combout\ & ((\inst|reggy~44_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy~45_combout\,
	datab => \inst|reggy~46_combout\,
	datac => \inst|REG_D\(1),
	datad => \inst|reggy~44_combout\,
	combout => \inst|reggy~47_combout\);

-- Location: LCCOMB_X19_Y11_N12
\inst|reggy~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~48_combout\ = (\inst|reggy~42_combout\ & ((\inst|reggy~47_combout\ & (\inst|alu1|unidad_logica|salida\(1))) # (!\inst|reggy~47_combout\ & ((\inst|alu1|barrel_shifters|salShifters\(1)))))) # (!\inst|reggy~42_combout\ & 
-- (((\inst|reggy~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy~42_combout\,
	datab => \inst|alu1|unidad_logica|salida\(1),
	datac => \inst|alu1|barrel_shifters|salShifters\(1),
	datad => \inst|reggy~47_combout\,
	combout => \inst|reggy~48_combout\);

-- Location: LCCOMB_X19_Y11_N18
\inst|reggy~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~71_combout\ = (\inst|reggy~48_combout\) # ((!\inst|Equal0~0_combout\ & (\inst|OP\(3) & \inst|reggy~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~0_combout\,
	datab => \inst|OP\(3),
	datac => \inst|reggy~35_combout\,
	datad => \inst|reggy~48_combout\,
	combout => \inst|reggy~71_combout\);

-- Location: FF_X21_Y11_N5
\inst|reggy[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~71_combout\,
	sload => VCC,
	ena => \inst|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy[2][1]~q\);

-- Location: LCCOMB_X21_Y14_N22
\inst|Mux63~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux63~2_combout\ = (\inst|MAR\(0) & ((\inst|reggy[1][1]~q\) # ((\inst|MAR\(1))))) # (!\inst|MAR\(0) & (((\inst|reggy[0][1]~q\ & !\inst|MAR\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy[1][1]~q\,
	datab => \inst|reggy[0][1]~q\,
	datac => \inst|MAR\(0),
	datad => \inst|MAR\(1),
	combout => \inst|Mux63~2_combout\);

-- Location: LCCOMB_X21_Y14_N28
\inst|Mux63~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux63~3_combout\ = (\inst|Mux63~2_combout\ & (((\inst|reggy[3][1]~q\) # (!\inst|MAR\(1))))) # (!\inst|Mux63~2_combout\ & (\inst|reggy[2][1]~q\ & ((\inst|MAR\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy[2][1]~q\,
	datab => \inst|reggy[3][1]~q\,
	datac => \inst|Mux63~2_combout\,
	datad => \inst|MAR\(1),
	combout => \inst|Mux63~3_combout\);

-- Location: LCCOMB_X19_Y13_N4
\inst|Mux63~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux63~0_combout\ = (\inst|MAR\(0) & (((\inst|MAR\(1))))) # (!\inst|MAR\(0) & ((\inst|MAR\(1) & (\inst|reggy[6][1]~q\)) # (!\inst|MAR\(1) & ((\inst|reggy[4][1]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MAR\(0),
	datab => \inst|reggy[6][1]~q\,
	datac => \inst|MAR\(1),
	datad => \inst|reggy[4][1]~q\,
	combout => \inst|Mux63~0_combout\);

-- Location: LCCOMB_X18_Y13_N24
\inst|Mux63~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux63~1_combout\ = (\inst|MAR\(0) & ((\inst|Mux63~0_combout\ & (\inst|reggy[7][1]~q\)) # (!\inst|Mux63~0_combout\ & ((\inst|reggy[5][1]~q\))))) # (!\inst|MAR\(0) & (((\inst|Mux63~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy[7][1]~q\,
	datab => \inst|MAR\(0),
	datac => \inst|reggy[5][1]~q\,
	datad => \inst|Mux63~0_combout\,
	combout => \inst|Mux63~1_combout\);

-- Location: LCCOMB_X21_Y13_N22
\inst|Mux63~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux63~4_combout\ = (\inst|MAR\(2) & ((\inst|Mux63~1_combout\))) # (!\inst|MAR\(2) & (\inst|Mux63~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MAR\(2),
	datac => \inst|Mux63~3_combout\,
	datad => \inst|Mux63~1_combout\,
	combout => \inst|Mux63~4_combout\);

-- Location: FF_X21_Y13_N23
\inst|REG_B[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Mux63~4_combout\,
	ena => \inst|OP[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|REG_B\(1));

-- Location: LCCOMB_X26_Y11_N20
\inst|alu1|unidad_aritmetica|mult|multi1|s4|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi1|s4|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|mult|inter\(4) & ((\inst|alu1|unidad_aritmetica|mult|multi1|s3|Cout~0_combout\) # ((\inst|REG_A\(3) & \inst|REG_B\(1))))) # 
-- (!\inst|alu1|unidad_aritmetica|mult|inter\(4) & (\inst|REG_A\(3) & (\inst|alu1|unidad_aritmetica|mult|multi1|s3|Cout~0_combout\ & \inst|REG_B\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(3),
	datab => \inst|alu1|unidad_aritmetica|mult|inter\(4),
	datac => \inst|alu1|unidad_aritmetica|mult|multi1|s3|Cout~0_combout\,
	datad => \inst|REG_B\(1),
	combout => \inst|alu1|unidad_aritmetica|mult|multi1|s4|Cout~0_combout\);

-- Location: LCCOMB_X26_Y11_N26
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

-- Location: LCCOMB_X25_Y12_N28
\inst|alu1|unidad_aritmetica|mult|multi2|s4|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi2|s4|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi1|s4|Suma~0_combout\ & ((\inst|alu1|unidad_aritmetica|mult|multi2|s3|Cout~0_combout\) # ((\inst|REG_B\(2) & \inst|REG_A\(2))))) # 
-- (!\inst|alu1|unidad_aritmetica|mult|multi1|s4|Suma~0_combout\ & (\inst|alu1|unidad_aritmetica|mult|multi2|s3|Cout~0_combout\ & (\inst|REG_B\(2) & \inst|REG_A\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|multi1|s4|Suma~0_combout\,
	datab => \inst|alu1|unidad_aritmetica|mult|multi2|s3|Cout~0_combout\,
	datac => \inst|REG_B\(2),
	datad => \inst|REG_A\(2),
	combout => \inst|alu1|unidad_aritmetica|mult|multi2|s4|Cout~0_combout\);

-- Location: LCCOMB_X26_Y11_N0
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

-- Location: LCCOMB_X26_Y11_N28
\inst|alu1|unidad_aritmetica|mult|multi2|s5|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi2|s5|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi2|s4|Cout~0_combout\ & ((\inst|alu1|unidad_aritmetica|mult|multi1|s5|Suma~0_combout\) # ((\inst|REG_A\(3) & \inst|REG_B\(2))))) # 
-- (!\inst|alu1|unidad_aritmetica|mult|multi2|s4|Cout~0_combout\ & (\inst|REG_A\(3) & (\inst|REG_B\(2) & \inst|alu1|unidad_aritmetica|mult|multi1|s5|Suma~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(3),
	datab => \inst|REG_B\(2),
	datac => \inst|alu1|unidad_aritmetica|mult|multi2|s4|Cout~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|mult|multi1|s5|Suma~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi2|s5|Cout~0_combout\);

-- Location: LCCOMB_X26_Y11_N24
\inst|alu1|unidad_aritmetica|mult|multi2|s6|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi2|s6|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|mult|multi1|s5|Cout~0_combout\ $ (\inst|alu1|unidad_aritmetica|mult|multi2|s5|Cout~0_combout\ $ (((\inst|REG_A\(4) & \inst|REG_B\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|multi1|s5|Cout~0_combout\,
	datab => \inst|REG_A\(4),
	datac => \inst|REG_B\(2),
	datad => \inst|alu1|unidad_aritmetica|mult|multi2|s5|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi2|s6|Suma~0_combout\);

-- Location: LCCOMB_X26_Y11_N22
\inst|alu1|unidad_aritmetica|mult|multi2|s5|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi2|s5|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|mult|multi2|s4|Cout~0_combout\ $ (\inst|alu1|unidad_aritmetica|mult|multi1|s5|Suma~0_combout\ $ (((\inst|REG_A\(3) & \inst|REG_B\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(3),
	datab => \inst|REG_B\(2),
	datac => \inst|alu1|unidad_aritmetica|mult|multi2|s4|Cout~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|mult|multi1|s5|Suma~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi2|s5|Suma~0_combout\);

-- Location: LCCOMB_X25_Y12_N4
\inst|alu1|unidad_aritmetica|mult|multi3|s4|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi3|s4|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi3|s3|Cout~0_combout\ & ((\inst|alu1|unidad_aritmetica|mult|multi2|s4|Suma~0_combout\) # ((\inst|REG_A\(1) & \inst|REG_B\(3))))) # 
-- (!\inst|alu1|unidad_aritmetica|mult|multi3|s3|Cout~0_combout\ & (\inst|REG_A\(1) & (\inst|alu1|unidad_aritmetica|mult|multi2|s4|Suma~0_combout\ & \inst|REG_B\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|multi3|s3|Cout~0_combout\,
	datab => \inst|REG_A\(1),
	datac => \inst|alu1|unidad_aritmetica|mult|multi2|s4|Suma~0_combout\,
	datad => \inst|REG_B\(3),
	combout => \inst|alu1|unidad_aritmetica|mult|multi3|s4|Cout~0_combout\);

-- Location: LCCOMB_X24_Y12_N20
\inst|alu1|unidad_aritmetica|mult|multi3|s5|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi3|s5|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi2|s5|Suma~0_combout\ & ((\inst|alu1|unidad_aritmetica|mult|multi3|s4|Cout~0_combout\) # ((\inst|REG_A\(2) & \inst|REG_B\(3))))) # 
-- (!\inst|alu1|unidad_aritmetica|mult|multi2|s5|Suma~0_combout\ & (\inst|REG_A\(2) & (\inst|REG_B\(3) & \inst|alu1|unidad_aritmetica|mult|multi3|s4|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(2),
	datab => \inst|REG_B\(3),
	datac => \inst|alu1|unidad_aritmetica|mult|multi2|s5|Suma~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|mult|multi3|s4|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi3|s5|Cout~0_combout\);

-- Location: LCCOMB_X24_Y12_N10
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

-- Location: LCCOMB_X26_Y11_N30
\inst|alu1|unidad_aritmetica|mult|multi2|s6|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi2|s6|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi1|s5|Cout~0_combout\ & ((\inst|alu1|unidad_aritmetica|mult|multi2|s5|Cout~0_combout\) # ((\inst|REG_A\(4) & \inst|REG_B\(2))))) # 
-- (!\inst|alu1|unidad_aritmetica|mult|multi1|s5|Cout~0_combout\ & (\inst|REG_A\(4) & (\inst|REG_B\(2) & \inst|alu1|unidad_aritmetica|mult|multi2|s5|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|multi1|s5|Cout~0_combout\,
	datab => \inst|REG_A\(4),
	datac => \inst|REG_B\(2),
	datad => \inst|alu1|unidad_aritmetica|mult|multi2|s5|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi2|s6|Cout~0_combout\);

-- Location: LCCOMB_X24_Y12_N12
\inst|alu1|unidad_aritmetica|mult|multi3|s7|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi3|s7|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi3|s6|Cout~0_combout\ & ((\inst|alu1|unidad_aritmetica|mult|multi2|s6|Cout~0_combout\) # ((\inst|REG_A\(4) & \inst|REG_B\(3))))) # 
-- (!\inst|alu1|unidad_aritmetica|mult|multi3|s6|Cout~0_combout\ & (\inst|REG_A\(4) & (\inst|REG_B\(3) & \inst|alu1|unidad_aritmetica|mult|multi2|s6|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|multi3|s6|Cout~0_combout\,
	datab => \inst|REG_A\(4),
	datac => \inst|REG_B\(3),
	datad => \inst|alu1|unidad_aritmetica|mult|multi2|s6|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi3|s7|Cout~0_combout\);

-- Location: LCCOMB_X24_Y12_N30
\inst|alu1|unidad_aritmetica|mult|multi3|s7|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi3|s7|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|mult|multi3|s6|Cout~0_combout\ $ (\inst|alu1|unidad_aritmetica|mult|multi2|s6|Cout~0_combout\ $ (((\inst|REG_A\(4) & \inst|REG_B\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|multi3|s6|Cout~0_combout\,
	datab => \inst|REG_A\(4),
	datac => \inst|REG_B\(3),
	datad => \inst|alu1|unidad_aritmetica|mult|multi2|s6|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi3|s7|Suma~0_combout\);

-- Location: LCCOMB_X24_Y12_N8
\inst|alu1|unidad_aritmetica|mult|multi4|s4|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi4|s4|Cout~0_combout\ = (\inst|REG_B\(4) & (\inst|REG_A\(0) & \inst|alu1|unidad_aritmetica|mult|multi3|s4|Suma~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(4),
	datac => \inst|REG_A\(0),
	datad => \inst|alu1|unidad_aritmetica|mult|multi3|s4|Suma~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi4|s4|Cout~0_combout\);

-- Location: LCCOMB_X24_Y12_N18
\inst|alu1|unidad_aritmetica|mult|multi3|s5|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi3|s5|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|mult|multi2|s5|Suma~0_combout\ $ (\inst|alu1|unidad_aritmetica|mult|multi3|s4|Cout~0_combout\ $ (((\inst|REG_A\(2) & \inst|REG_B\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(2),
	datab => \inst|REG_B\(3),
	datac => \inst|alu1|unidad_aritmetica|mult|multi2|s5|Suma~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|mult|multi3|s4|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi3|s5|Suma~0_combout\);

-- Location: LCCOMB_X24_Y12_N14
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

-- Location: LCCOMB_X24_Y12_N0
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

-- Location: LCCOMB_X24_Y12_N24
\inst|alu1|unidad_aritmetica|mult|multi4|s6|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi4|s6|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi4|s5|Cout~0_combout\ & ((\inst|alu1|unidad_aritmetica|mult|multi3|s6|Suma~0_combout\) # ((\inst|REG_A\(2) & \inst|REG_B\(4))))) # 
-- (!\inst|alu1|unidad_aritmetica|mult|multi4|s5|Cout~0_combout\ & (\inst|REG_A\(2) & (\inst|REG_B\(4) & \inst|alu1|unidad_aritmetica|mult|multi3|s6|Suma~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(2),
	datab => \inst|REG_B\(4),
	datac => \inst|alu1|unidad_aritmetica|mult|multi4|s5|Cout~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|mult|multi3|s6|Suma~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi4|s6|Cout~0_combout\);

-- Location: LCCOMB_X24_Y12_N22
\inst|alu1|unidad_aritmetica|mult|multi4|s7|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi4|s7|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi3|s7|Suma~0_combout\ & ((\inst|alu1|unidad_aritmetica|mult|multi4|s6|Cout~0_combout\) # ((\inst|REG_B\(4) & \inst|REG_A\(3))))) # 
-- (!\inst|alu1|unidad_aritmetica|mult|multi3|s7|Suma~0_combout\ & (\inst|REG_B\(4) & (\inst|REG_A\(3) & \inst|alu1|unidad_aritmetica|mult|multi4|s6|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|multi3|s7|Suma~0_combout\,
	datab => \inst|REG_B\(4),
	datac => \inst|REG_A\(3),
	datad => \inst|alu1|unidad_aritmetica|mult|multi4|s6|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi4|s7|Cout~0_combout\);

-- Location: LCCOMB_X24_Y12_N4
\inst|alu1|unidad_aritmetica|mult|multi4|s8|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi4|s8|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi3|s7|Cout~0_combout\ & ((\inst|alu1|unidad_aritmetica|mult|multi4|s7|Cout~0_combout\) # ((\inst|REG_A\(4) & \inst|REG_B\(4))))) # 
-- (!\inst|alu1|unidad_aritmetica|mult|multi3|s7|Cout~0_combout\ & (\inst|REG_A\(4) & (\inst|alu1|unidad_aritmetica|mult|multi4|s7|Cout~0_combout\ & \inst|REG_B\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|multi3|s7|Cout~0_combout\,
	datab => \inst|REG_A\(4),
	datac => \inst|alu1|unidad_aritmetica|mult|multi4|s7|Cout~0_combout\,
	datad => \inst|REG_B\(4),
	combout => \inst|alu1|unidad_aritmetica|mult|multi4|s8|Cout~0_combout\);

-- Location: LCCOMB_X24_Y10_N0
\inst|reggy~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~32_combout\ = (\inst|alu1|Mux10~0_combout\ & ((\inst|alu1|Mux11~0_combout\) # (!\inst|alu1|unidad_aritmetica|mult|multi4|s8|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|Mux10~0_combout\,
	datac => \inst|alu1|unidad_aritmetica|mult|multi4|s8|Cout~0_combout\,
	datad => \inst|alu1|Mux11~0_combout\,
	combout => \inst|reggy~32_combout\);

-- Location: LCCOMB_X24_Y12_N16
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

-- Location: LCCOMB_X23_Y12_N4
\inst|alu1|unidad_aritmetica|suma|s5|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|s5|Suma~0_combout\ = \inst|REG_A\(5) $ (\inst|REG_B\(9) $ (\inst|REG_B\(5) $ (\inst|REG_A\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(5),
	datab => \inst|REG_B\(9),
	datac => \inst|REG_B\(5),
	datad => \inst|REG_A\(9),
	combout => \inst|alu1|unidad_aritmetica|suma|s5|Suma~0_combout\);

-- Location: LCCOMB_X23_Y12_N26
\inst|alu1|unidad_aritmetica|suma|s5|Suma~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|s5|Suma~1_combout\ = \inst|alu1|unidad_aritmetica|suma|s4|Cout2~0_combout\ $ (\inst|alu1|unidad_aritmetica|suma|s5|Suma~0_combout\ $ (((\inst|alu1|unidad_aritmetica|suma|s3|Cout2~0_combout\) # 
-- (\inst|alu1|unidad_aritmetica|suma|s4|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|suma|s4|Cout2~0_combout\,
	datab => \inst|alu1|unidad_aritmetica|suma|s3|Cout2~0_combout\,
	datac => \inst|alu1|unidad_aritmetica|suma|s5|Suma~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|suma|s4|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|suma|s5|Suma~1_combout\);

-- Location: LCCOMB_X23_Y12_N24
\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~10_combout\ = (\inst|alu1|Mux10~0_combout\ & ((\inst|alu1|unidad_aritmetica|mult|multi4|s5|Suma~0_combout\))) # (!\inst|alu1|Mux10~0_combout\ & (\inst|alu1|unidad_aritmetica|suma|s5|Suma~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux10~0_combout\,
	datac => \inst|alu1|unidad_aritmetica|suma|s5|Suma~1_combout\,
	datad => \inst|alu1|unidad_aritmetica|mult|multi4|s5|Suma~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~10_combout\);

-- Location: LCCOMB_X19_Y12_N12
\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~23_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~10_combout\ & ((\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~22\) # (GND))) # 
-- (!\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~10_combout\ & (!\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~22\))
-- \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~24\ = CARRY((\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~10_combout\) # (!\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~10_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~22\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~23_combout\,
	cout => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~24\);

-- Location: LCCOMB_X23_Y12_N12
\inst|reggy~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~63_combout\ = (\inst|reggy~32_combout\ & (((\inst|reggy~31_combout\)))) # (!\inst|reggy~32_combout\ & ((\inst|reggy~31_combout\ & ((\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~23_combout\))) # (!\inst|reggy~31_combout\ & 
-- (\inst|alu1|unidad_aritmetica|suma|s5|Suma~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|suma|s5|Suma~1_combout\,
	datab => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~23_combout\,
	datac => \inst|reggy~32_combout\,
	datad => \inst|reggy~31_combout\,
	combout => \inst|reggy~63_combout\);

-- Location: LCCOMB_X23_Y12_N30
\inst|reggy~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~64_combout\ = (\inst|reggy~32_combout\ & ((\inst|reggy~63_combout\ & ((!\inst|alu1|unidad_aritmetica|divi|LessThan2~14_combout\))) # (!\inst|reggy~63_combout\ & (\inst|alu1|unidad_aritmetica|mult|multi4|s5|Suma~0_combout\)))) # 
-- (!\inst|reggy~32_combout\ & (((\inst|reggy~63_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy~32_combout\,
	datab => \inst|alu1|unidad_aritmetica|mult|multi4|s5|Suma~0_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|LessThan2~14_combout\,
	datad => \inst|reggy~63_combout\,
	combout => \inst|reggy~64_combout\);

-- Location: LCCOMB_X18_Y12_N22
\inst|alu1|barrel_shifters|aux[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|barrel_shifters|aux[5]~feeder_combout\ = \inst|REG_A\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|REG_A\(4),
	combout => \inst|alu1|barrel_shifters|aux[5]~feeder_combout\);

-- Location: FF_X18_Y12_N23
\inst|alu1|barrel_shifters|aux[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|alu1|barrel_shifters|aux[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|barrel_shifters|aux\(5));

-- Location: FF_X18_Y12_N5
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

-- Location: LCCOMB_X18_Y12_N4
\inst|reggy~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~61_combout\ = (\inst|OP\(2) & (\inst|alu1|barrel_shifters|salShifters\(5) & ((\inst|OP\(0)) # (\inst|OP\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|OP\(0),
	datab => \inst|OP\(2),
	datac => \inst|alu1|barrel_shifters|salShifters\(5),
	datad => \inst|OP\(1),
	combout => \inst|reggy~61_combout\);

-- Location: LCCOMB_X21_Y12_N8
\inst|alu1|unidad_logica|aux[5]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|aux[5]~18_combout\ = (\inst|REG_A\(5) & (!\inst|alu1|unidad_logica|aux[4]~17\ & VCC)) # (!\inst|REG_A\(5) & (\inst|alu1|unidad_logica|aux[4]~17\ $ (GND)))
-- \inst|alu1|unidad_logica|aux[5]~19\ = CARRY((!\inst|REG_A\(5) & !\inst|alu1|unidad_logica|aux[4]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(5),
	datad => VCC,
	cin => \inst|alu1|unidad_logica|aux[4]~17\,
	combout => \inst|alu1|unidad_logica|aux[5]~18_combout\,
	cout => \inst|alu1|unidad_logica|aux[5]~19\);

-- Location: FF_X21_Y12_N9
\inst|alu1|unidad_logica|aux[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|alu1|unidad_logica|aux[5]~18_combout\,
	ena => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|unidad_logica|aux\(5));

-- Location: LCCOMB_X21_Y12_N18
\inst|alu1|unidad_logica|salida~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|salida~27_combout\ = (\inst|REG_B\(5) & \inst|REG_A\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|REG_B\(5),
	datad => \inst|REG_A\(5),
	combout => \inst|alu1|unidad_logica|salida~27_combout\);

-- Location: LCCOMB_X21_Y12_N28
\inst|alu1|unidad_logica|salida~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|salida~28_combout\ = (\inst|alu1|Mux10~0_combout\ & ((\inst|alu1|unidad_logica|aux\(5)) # ((!\inst|alu1|Mux11~0_combout\)))) # (!\inst|alu1|Mux10~0_combout\ & (((\inst|alu1|unidad_logica|salida~27_combout\ & 
-- !\inst|alu1|Mux11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_logica|aux\(5),
	datab => \inst|alu1|unidad_logica|salida~27_combout\,
	datac => \inst|alu1|Mux10~0_combout\,
	datad => \inst|alu1|Mux11~0_combout\,
	combout => \inst|alu1|unidad_logica|salida~28_combout\);

-- Location: LCCOMB_X21_Y12_N30
\inst|alu1|unidad_logica|salida~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|salida~29_combout\ = (\inst|alu1|unidad_logica|salida[9]~33_combout\ & ((\inst|REG_A\(5) & ((!\inst|alu1|unidad_logica|salida~28_combout\))) # (!\inst|REG_A\(5) & ((\inst|REG_B\(5)) # 
-- (\inst|alu1|unidad_logica|salida~28_combout\))))) # (!\inst|alu1|unidad_logica|salida[9]~33_combout\ & (((\inst|alu1|unidad_logica|salida~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_logica|salida[9]~33_combout\,
	datab => \inst|REG_A\(5),
	datac => \inst|REG_B\(5),
	datad => \inst|alu1|unidad_logica|salida~28_combout\,
	combout => \inst|alu1|unidad_logica|salida~29_combout\);

-- Location: FF_X21_Y12_N31
\inst|alu1|unidad_logica|salida[5]\ : dffeas
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
	q => \inst|alu1|unidad_logica|salida\(5));

-- Location: LCCOMB_X18_Y12_N8
\inst|reggy~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~62_combout\ = (\inst|OP\(3)) # ((\inst|reggy~61_combout\) # ((\inst|reggy~29_combout\ & \inst|alu1|unidad_logica|salida\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy~29_combout\,
	datab => \inst|OP\(3),
	datac => \inst|reggy~61_combout\,
	datad => \inst|alu1|unidad_logica|salida\(5),
	combout => \inst|reggy~62_combout\);

-- Location: LCCOMB_X19_Y13_N18
\inst|reggy~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~65_combout\ = (!\inst|Equal0~0_combout\ & ((\inst|reggy~35_combout\ & ((\inst|reggy~62_combout\))) # (!\inst|reggy~35_combout\ & (\inst|reggy~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy~64_combout\,
	datab => \inst|Equal0~0_combout\,
	datac => \inst|reggy~62_combout\,
	datad => \inst|reggy~35_combout\,
	combout => \inst|reggy~65_combout\);

-- Location: FF_X17_Y13_N15
\inst|reggy[2][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~65_combout\,
	sload => VCC,
	ena => \inst|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy[2][5]~q\);

-- Location: LCCOMB_X17_Y13_N10
\inst|Mux69~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux69~0_combout\ = (\inst|MAR\(4) & ((\inst|MAR\(5)) # ((\inst|reggy[1][5]~q\)))) # (!\inst|MAR\(4) & (!\inst|MAR\(5) & (\inst|reggy[0][5]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MAR\(4),
	datab => \inst|MAR\(5),
	datac => \inst|reggy[0][5]~q\,
	datad => \inst|reggy[1][5]~q\,
	combout => \inst|Mux69~0_combout\);

-- Location: LCCOMB_X18_Y14_N4
\inst|Mux69~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux69~1_combout\ = (\inst|MAR\(5) & ((\inst|Mux69~0_combout\ & ((\inst|reggy[3][5]~q\))) # (!\inst|Mux69~0_combout\ & (\inst|reggy[2][5]~q\)))) # (!\inst|MAR\(5) & (((\inst|Mux69~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy[2][5]~q\,
	datab => \inst|MAR\(5),
	datac => \inst|reggy[3][5]~q\,
	datad => \inst|Mux69~0_combout\,
	combout => \inst|Mux69~1_combout\);

-- Location: LCCOMB_X19_Y13_N28
\inst|Mux69~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux69~2_combout\ = (\inst|MAR\(4) & (((\inst|MAR\(5))))) # (!\inst|MAR\(4) & ((\inst|MAR\(5) & ((\inst|reggy[6][5]~q\))) # (!\inst|MAR\(5) & (\inst|reggy[4][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MAR\(4),
	datab => \inst|reggy[4][5]~q\,
	datac => \inst|reggy[6][5]~q\,
	datad => \inst|MAR\(5),
	combout => \inst|Mux69~2_combout\);

-- Location: LCCOMB_X18_Y13_N20
\inst|Mux69~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux69~3_combout\ = (\inst|MAR\(4) & ((\inst|Mux69~2_combout\ & ((\inst|reggy[7][5]~q\))) # (!\inst|Mux69~2_combout\ & (\inst|reggy[5][5]~q\)))) # (!\inst|MAR\(4) & (\inst|Mux69~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MAR\(4),
	datab => \inst|Mux69~2_combout\,
	datac => \inst|reggy[5][5]~q\,
	datad => \inst|reggy[7][5]~q\,
	combout => \inst|Mux69~3_combout\);

-- Location: LCCOMB_X17_Y14_N14
\inst|salida[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|salida[5]~8_combout\ = (\inst|MAR\(6) & ((\inst|Mux69~3_combout\))) # (!\inst|MAR\(6) & (\inst|Mux69~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux69~1_combout\,
	datab => \inst|MAR\(6),
	datad => \inst|Mux69~3_combout\,
	combout => \inst|salida[5]~8_combout\);

-- Location: LCCOMB_X25_Y13_N8
\inst|REG_A[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|REG_A[5]~feeder_combout\ = \inst|salida[5]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|salida[5]~8_combout\,
	combout => \inst|REG_A[5]~feeder_combout\);

-- Location: FF_X25_Y13_N9
\inst|REG_A[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|REG_A[5]~feeder_combout\,
	ena => \inst|OP[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|REG_A\(5));

-- Location: FF_X19_Y12_N13
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

-- Location: FF_X18_Y12_N17
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

-- Location: LCCOMB_X18_Y12_N16
\inst|reggy~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~66_combout\ = (\inst|OP\(2) & (\inst|alu1|barrel_shifters|salShifters\(6) & ((\inst|OP\(0)) # (\inst|OP\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|OP\(0),
	datab => \inst|OP\(2),
	datac => \inst|alu1|barrel_shifters|salShifters\(6),
	datad => \inst|OP\(1),
	combout => \inst|reggy~66_combout\);

-- Location: LCCOMB_X21_Y12_N26
\inst|alu1|unidad_logica|salida~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|salida~30_combout\ = (\inst|REG_B\(6) & \inst|REG_A\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(6),
	datac => \inst|REG_A\(6),
	combout => \inst|alu1|unidad_logica|salida~30_combout\);

-- Location: LCCOMB_X21_Y12_N10
\inst|alu1|unidad_logica|aux[6]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|aux[6]~20_combout\ = (\inst|REG_A\(6) & ((\inst|alu1|unidad_logica|aux[5]~19\) # (GND))) # (!\inst|REG_A\(6) & (!\inst|alu1|unidad_logica|aux[5]~19\))
-- \inst|alu1|unidad_logica|aux[6]~21\ = CARRY((\inst|REG_A\(6)) # (!\inst|alu1|unidad_logica|aux[5]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(6),
	datad => VCC,
	cin => \inst|alu1|unidad_logica|aux[5]~19\,
	combout => \inst|alu1|unidad_logica|aux[6]~20_combout\,
	cout => \inst|alu1|unidad_logica|aux[6]~21\);

-- Location: FF_X21_Y12_N11
\inst|alu1|unidad_logica|aux[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|alu1|unidad_logica|aux[6]~20_combout\,
	ena => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|unidad_logica|aux\(6));

-- Location: LCCOMB_X21_Y12_N22
\inst|alu1|unidad_logica|salida~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|salida~31_combout\ = (\inst|alu1|Mux10~0_combout\ & (((\inst|alu1|unidad_logica|aux\(6)) # (!\inst|alu1|Mux11~0_combout\)))) # (!\inst|alu1|Mux10~0_combout\ & (\inst|alu1|unidad_logica|salida~30_combout\ & 
-- ((!\inst|alu1|Mux11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_logica|salida~30_combout\,
	datab => \inst|alu1|unidad_logica|aux\(6),
	datac => \inst|alu1|Mux10~0_combout\,
	datad => \inst|alu1|Mux11~0_combout\,
	combout => \inst|alu1|unidad_logica|salida~31_combout\);

-- Location: LCCOMB_X21_Y12_N24
\inst|alu1|unidad_logica|salida~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|salida~32_combout\ = (\inst|REG_A\(6) & ((\inst|alu1|unidad_logica|salida~31_combout\ $ (\inst|alu1|unidad_logica|salida[9]~33_combout\)))) # (!\inst|REG_A\(6) & ((\inst|alu1|unidad_logica|salida~31_combout\) # ((\inst|REG_B\(6) & 
-- \inst|alu1|unidad_logica|salida[9]~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(6),
	datab => \inst|REG_A\(6),
	datac => \inst|alu1|unidad_logica|salida~31_combout\,
	datad => \inst|alu1|unidad_logica|salida[9]~33_combout\,
	combout => \inst|alu1|unidad_logica|salida~32_combout\);

-- Location: FF_X21_Y12_N25
\inst|alu1|unidad_logica|salida[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|alu1|unidad_logica|salida~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|unidad_logica|salida\(6));

-- Location: LCCOMB_X18_Y12_N14
\inst|reggy~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~67_combout\ = (\inst|reggy~66_combout\) # ((\inst|OP\(3)) # ((\inst|reggy~29_combout\ & \inst|alu1|unidad_logica|salida\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy~29_combout\,
	datab => \inst|reggy~66_combout\,
	datac => \inst|OP\(3),
	datad => \inst|alu1|unidad_logica|salida\(6),
	combout => \inst|reggy~67_combout\);

-- Location: LCCOMB_X24_Y10_N8
\inst|alu1|unidad_aritmetica|suma|Yop[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|Yop\(6) = \inst|REG_B\(6) $ (\inst|REG_B\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|REG_B\(6),
	datad => \inst|REG_B\(9),
	combout => \inst|alu1|unidad_aritmetica|suma|Yop\(6));

-- Location: LCCOMB_X24_Y10_N6
\inst|alu1|unidad_aritmetica|suma|s6|Suma\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|s6|Suma~combout\ = \inst|alu1|unidad_aritmetica|suma|s5|Cout2~0_combout\ $ (\inst|alu1|unidad_aritmetica|suma|Yop\(6) $ (\inst|alu1|unidad_aritmetica|suma|Xop\(6) $ (\inst|alu1|unidad_aritmetica|suma|s5|Cout~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|suma|s5|Cout2~0_combout\,
	datab => \inst|alu1|unidad_aritmetica|suma|Yop\(6),
	datac => \inst|alu1|unidad_aritmetica|suma|Xop\(6),
	datad => \inst|alu1|unidad_aritmetica|suma|s5|Cout~combout\,
	combout => \inst|alu1|unidad_aritmetica|suma|s6|Suma~combout\);

-- Location: LCCOMB_X24_Y12_N6
\inst|alu1|unidad_aritmetica|mult|multi4|s6|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi4|s6|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|mult|multi4|s5|Cout~0_combout\ $ (\inst|alu1|unidad_aritmetica|mult|multi3|s6|Suma~0_combout\ $ (((\inst|REG_A\(2) & \inst|REG_B\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(2),
	datab => \inst|REG_B\(4),
	datac => \inst|alu1|unidad_aritmetica|mult|multi4|s5|Cout~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|mult|multi3|s6|Suma~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi4|s6|Suma~0_combout\);

-- Location: LCCOMB_X19_Y12_N22
\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~9_combout\ = (\inst|alu1|Mux10~0_combout\ & ((\inst|alu1|unidad_aritmetica|mult|multi4|s6|Suma~0_combout\))) # (!\inst|alu1|Mux10~0_combout\ & (\inst|alu1|unidad_aritmetica|suma|s6|Suma~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux10~0_combout\,
	datac => \inst|alu1|unidad_aritmetica|suma|s6|Suma~combout\,
	datad => \inst|alu1|unidad_aritmetica|mult|multi4|s6|Suma~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~9_combout\);

-- Location: LCCOMB_X19_Y12_N14
\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~25_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~9_combout\ & (!\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~24\ & VCC)) # 
-- (!\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~9_combout\ & (\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~24\ $ (GND)))
-- \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~26\ = CARRY((!\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~9_combout\ & !\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~9_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~24\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~25_combout\,
	cout => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~26\);

-- Location: LCCOMB_X19_Y12_N0
\inst|reggy~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~68_combout\ = (\inst|reggy~31_combout\ & (((\inst|reggy~32_combout\)))) # (!\inst|reggy~31_combout\ & ((\inst|reggy~32_combout\ & (\inst|alu1|unidad_aritmetica|mult|multi4|s6|Suma~0_combout\)) # (!\inst|reggy~32_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|suma|s6|Suma~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|multi4|s6|Suma~0_combout\,
	datab => \inst|alu1|unidad_aritmetica|suma|s6|Suma~combout\,
	datac => \inst|reggy~31_combout\,
	datad => \inst|reggy~32_combout\,
	combout => \inst|reggy~68_combout\);

-- Location: LCCOMB_X19_Y12_N30
\inst|reggy~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~69_combout\ = (\inst|reggy~31_combout\ & ((\inst|reggy~68_combout\ & (!\inst|alu1|unidad_aritmetica|divi|LessThan1~14_combout\)) # (!\inst|reggy~68_combout\ & ((\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~25_combout\))))) # 
-- (!\inst|reggy~31_combout\ & (((\inst|reggy~68_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|LessThan1~14_combout\,
	datab => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~25_combout\,
	datac => \inst|reggy~31_combout\,
	datad => \inst|reggy~68_combout\,
	combout => \inst|reggy~69_combout\);

-- Location: LCCOMB_X19_Y13_N22
\inst|reggy~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~70_combout\ = (!\inst|Equal0~0_combout\ & ((\inst|reggy~35_combout\ & (\inst|reggy~67_combout\)) # (!\inst|reggy~35_combout\ & ((\inst|reggy~69_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy~67_combout\,
	datab => \inst|Equal0~0_combout\,
	datac => \inst|reggy~35_combout\,
	datad => \inst|reggy~69_combout\,
	combout => \inst|reggy~70_combout\);

-- Location: FF_X21_Y14_N9
\inst|reggy[2][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~70_combout\,
	sload => VCC,
	ena => \inst|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy[2][6]~q\);

-- Location: LCCOMB_X18_Y14_N24
\inst|Mux68~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux68~0_combout\ = (\inst|MAR\(4) & ((\inst|MAR\(5)) # ((\inst|reggy[1][6]~q\)))) # (!\inst|MAR\(4) & (!\inst|MAR\(5) & (\inst|reggy[0][6]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MAR\(4),
	datab => \inst|MAR\(5),
	datac => \inst|reggy[0][6]~q\,
	datad => \inst|reggy[1][6]~q\,
	combout => \inst|Mux68~0_combout\);

-- Location: LCCOMB_X18_Y14_N14
\inst|Mux68~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux68~1_combout\ = (\inst|MAR\(5) & ((\inst|Mux68~0_combout\ & ((\inst|reggy[3][6]~q\))) # (!\inst|Mux68~0_combout\ & (\inst|reggy[2][6]~q\)))) # (!\inst|MAR\(5) & (((\inst|Mux68~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy[2][6]~q\,
	datab => \inst|MAR\(5),
	datac => \inst|reggy[3][6]~q\,
	datad => \inst|Mux68~0_combout\,
	combout => \inst|Mux68~1_combout\);

-- Location: LCCOMB_X19_Y13_N20
\inst|Mux68~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux68~2_combout\ = (\inst|MAR\(4) & (((\inst|MAR\(5))))) # (!\inst|MAR\(4) & ((\inst|MAR\(5) & ((\inst|reggy[6][6]~q\))) # (!\inst|MAR\(5) & (\inst|reggy[4][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MAR\(4),
	datab => \inst|reggy[4][6]~q\,
	datac => \inst|reggy[6][6]~q\,
	datad => \inst|MAR\(5),
	combout => \inst|Mux68~2_combout\);

-- Location: LCCOMB_X18_Y13_N22
\inst|Mux68~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux68~3_combout\ = (\inst|MAR\(4) & ((\inst|Mux68~2_combout\ & (\inst|reggy[7][6]~q\)) # (!\inst|Mux68~2_combout\ & ((\inst|reggy[5][6]~q\))))) # (!\inst|MAR\(4) & (((\inst|Mux68~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MAR\(4),
	datab => \inst|reggy[7][6]~q\,
	datac => \inst|Mux68~2_combout\,
	datad => \inst|reggy[5][6]~q\,
	combout => \inst|Mux68~3_combout\);

-- Location: LCCOMB_X17_Y14_N24
\inst|salida[6]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|salida[6]~9_combout\ = (\inst|MAR\(6) & ((\inst|Mux68~3_combout\))) # (!\inst|MAR\(6) & (\inst|Mux68~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux68~1_combout\,
	datab => \inst|MAR\(6),
	datad => \inst|Mux68~3_combout\,
	combout => \inst|salida[6]~9_combout\);

-- Location: LCCOMB_X23_Y13_N28
\inst|REG_A[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|REG_A[6]~feeder_combout\ = \inst|salida[6]~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|salida[6]~9_combout\,
	combout => \inst|REG_A[6]~feeder_combout\);

-- Location: FF_X23_Y13_N29
\inst|REG_A[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|REG_A[6]~feeder_combout\,
	ena => \inst|OP[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|REG_A\(6));

-- Location: LCCOMB_X21_Y12_N12
\inst|alu1|unidad_logica|aux[7]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|aux[7]~22_combout\ = (\inst|REG_A\(7) & (!\inst|alu1|unidad_logica|aux[6]~21\ & VCC)) # (!\inst|REG_A\(7) & (\inst|alu1|unidad_logica|aux[6]~21\ $ (GND)))
-- \inst|alu1|unidad_logica|aux[7]~23\ = CARRY((!\inst|REG_A\(7) & !\inst|alu1|unidad_logica|aux[6]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|REG_A\(7),
	datad => VCC,
	cin => \inst|alu1|unidad_logica|aux[6]~21\,
	combout => \inst|alu1|unidad_logica|aux[7]~22_combout\,
	cout => \inst|alu1|unidad_logica|aux[7]~23\);

-- Location: FF_X21_Y12_N13
\inst|alu1|unidad_logica|aux[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|alu1|unidad_logica|aux[7]~22_combout\,
	ena => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|unidad_logica|aux\(7));

-- Location: LCCOMB_X23_Y10_N20
\inst|alu1|unidad_logica|salida~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|salida~12_combout\ = (\inst|alu1|Mux11~0_combout\ & (\inst|alu1|Mux10~0_combout\ & ((\inst|alu1|unidad_logica|aux\(7))))) # (!\inst|alu1|Mux11~0_combout\ & ((\inst|alu1|Mux10~0_combout\) # 
-- ((\inst|alu1|unidad_logica|salida~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux11~0_combout\,
	datab => \inst|alu1|Mux10~0_combout\,
	datac => \inst|alu1|unidad_logica|salida~11_combout\,
	datad => \inst|alu1|unidad_logica|aux\(7),
	combout => \inst|alu1|unidad_logica|salida~12_combout\);

-- Location: LCCOMB_X23_Y10_N8
\inst|alu1|unidad_logica|salida~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|salida~13_combout\ = (\inst|alu1|unidad_logica|salida~12_combout\ & (((!\inst|REG_A\(7)) # (!\inst|alu1|unidad_logica|salida[9]~33_combout\)))) # (!\inst|alu1|unidad_logica|salida~12_combout\ & 
-- (\inst|alu1|unidad_logica|salida[9]~33_combout\ & ((\inst|REG_B\(7)) # (\inst|REG_A\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(7),
	datab => \inst|alu1|unidad_logica|salida~12_combout\,
	datac => \inst|alu1|unidad_logica|salida[9]~33_combout\,
	datad => \inst|REG_A\(7),
	combout => \inst|alu1|unidad_logica|salida~13_combout\);

-- Location: FF_X23_Y10_N9
\inst|alu1|unidad_logica|salida[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|alu1|unidad_logica|salida~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|unidad_logica|salida\(7));

-- Location: FF_X21_Y12_N27
\inst|alu1|barrel_shifters|aux[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|REG_A\(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|barrel_shifters|aux\(7));

-- Location: FF_X18_Y12_N21
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

-- Location: LCCOMB_X18_Y12_N20
\inst|reggy~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~28_combout\ = (\inst|OP\(2) & (\inst|alu1|barrel_shifters|salShifters\(7) & ((\inst|OP\(0)) # (\inst|OP\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|OP\(0),
	datab => \inst|OP\(2),
	datac => \inst|alu1|barrel_shifters|salShifters\(7),
	datad => \inst|OP\(1),
	combout => \inst|reggy~28_combout\);

-- Location: LCCOMB_X18_Y12_N24
\inst|reggy~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~30_combout\ = (\inst|OP\(3)) # ((\inst|reggy~28_combout\) # ((\inst|reggy~29_combout\ & \inst|alu1|unidad_logica|salida\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy~29_combout\,
	datab => \inst|OP\(3),
	datac => \inst|alu1|unidad_logica|salida\(7),
	datad => \inst|reggy~28_combout\,
	combout => \inst|reggy~30_combout\);

-- Location: LCCOMB_X23_Y10_N30
\inst|alu1|unidad_aritmetica|suma|s7|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|s7|Suma~0_combout\ = \inst|REG_B\(9) $ (\inst|REG_A\(7) $ (\inst|REG_A\(9) $ (\inst|REG_B\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(9),
	datab => \inst|REG_A\(7),
	datac => \inst|REG_A\(9),
	datad => \inst|REG_B\(7),
	combout => \inst|alu1|unidad_aritmetica|suma|s7|Suma~0_combout\);

-- Location: LCCOMB_X24_Y10_N24
\inst|alu1|unidad_aritmetica|suma|s7|Suma~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|s7|Suma~1_combout\ = \inst|alu1|unidad_aritmetica|suma|s7|Suma~0_combout\ $ (\inst|alu1|unidad_aritmetica|suma|s6|Cout2~0_combout\ $ (((\inst|alu1|unidad_aritmetica|suma|s6|Cout~0_combout\) # 
-- (\inst|alu1|unidad_aritmetica|suma|s5|Cout2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|suma|s6|Cout~0_combout\,
	datab => \inst|alu1|unidad_aritmetica|suma|s7|Suma~0_combout\,
	datac => \inst|alu1|unidad_aritmetica|suma|s6|Cout2~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|suma|s5|Cout2~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|suma|s7|Suma~1_combout\);

-- Location: LCCOMB_X24_Y12_N28
\inst|alu1|unidad_aritmetica|mult|multi4|s7|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi4|s7|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|mult|multi3|s7|Suma~0_combout\ $ (\inst|alu1|unidad_aritmetica|mult|multi4|s6|Cout~0_combout\ $ (((\inst|REG_B\(4) & \inst|REG_A\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|multi3|s7|Suma~0_combout\,
	datab => \inst|REG_B\(4),
	datac => \inst|REG_A\(3),
	datad => \inst|alu1|unidad_aritmetica|mult|multi4|s6|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi4|s7|Suma~0_combout\);

-- Location: LCCOMB_X24_Y10_N30
\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~8_combout\ = (\inst|alu1|Mux10~0_combout\ & ((\inst|alu1|unidad_aritmetica|mult|multi4|s7|Suma~0_combout\))) # (!\inst|alu1|Mux10~0_combout\ & (\inst|alu1|unidad_aritmetica|suma|s7|Suma~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|unidad_aritmetica|suma|s7|Suma~1_combout\,
	datac => \inst|alu1|Mux10~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|mult|multi4|s7|Suma~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~8_combout\);

-- Location: LCCOMB_X19_Y12_N16
\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~27_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~8_combout\ & ((\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~26\) # (GND))) # 
-- (!\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~8_combout\ & (!\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~26\))
-- \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~28\ = CARRY((\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~8_combout\) # (!\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~8_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~26\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~27_combout\,
	cout => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~28\);

-- Location: LCCOMB_X24_Y10_N14
\inst|reggy~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~33_combout\ = (\inst|reggy~32_combout\ & ((\inst|alu1|unidad_aritmetica|mult|multi4|s7|Suma~0_combout\) # ((\inst|reggy~31_combout\)))) # (!\inst|reggy~32_combout\ & (((!\inst|reggy~31_combout\ & 
-- \inst|alu1|unidad_aritmetica|suma|s7|Suma~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|multi4|s7|Suma~0_combout\,
	datab => \inst|reggy~32_combout\,
	datac => \inst|reggy~31_combout\,
	datad => \inst|alu1|unidad_aritmetica|suma|s7|Suma~1_combout\,
	combout => \inst|reggy~33_combout\);

-- Location: LCCOMB_X18_Y12_N18
\inst|reggy~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~34_combout\ = (\inst|reggy~33_combout\ & (((!\inst|reggy~31_combout\)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan0~2_combout\))) # (!\inst|reggy~33_combout\ & (((\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~27_combout\ & 
-- \inst|reggy~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|LessThan0~2_combout\,
	datab => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~27_combout\,
	datac => \inst|reggy~33_combout\,
	datad => \inst|reggy~31_combout\,
	combout => \inst|reggy~34_combout\);

-- Location: LCCOMB_X18_Y12_N26
\inst|reggy~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~36_combout\ = (!\inst|Equal0~0_combout\ & ((\inst|reggy~35_combout\ & (\inst|reggy~30_combout\)) # (!\inst|reggy~35_combout\ & ((\inst|reggy~34_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy~30_combout\,
	datab => \inst|reggy~35_combout\,
	datac => \inst|Equal0~0_combout\,
	datad => \inst|reggy~34_combout\,
	combout => \inst|reggy~36_combout\);

-- Location: FF_X19_Y14_N17
\inst|reggy[6][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~36_combout\,
	sload => VCC,
	ena => \inst|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy[6][7]~q\);

-- Location: LCCOMB_X19_Y14_N16
\inst|Mux67~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux67~2_combout\ = (\inst|MAR\(5) & ((\inst|MAR\(4)) # ((\inst|reggy[6][7]~q\)))) # (!\inst|MAR\(5) & (!\inst|MAR\(4) & ((\inst|reggy[4][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MAR\(5),
	datab => \inst|MAR\(4),
	datac => \inst|reggy[6][7]~q\,
	datad => \inst|reggy[4][7]~q\,
	combout => \inst|Mux67~2_combout\);

-- Location: LCCOMB_X23_Y14_N4
\inst|Mux67~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux67~3_combout\ = (\inst|MAR\(4) & ((\inst|Mux67~2_combout\ & ((\inst|reggy[7][7]~q\))) # (!\inst|Mux67~2_combout\ & (\inst|reggy[5][7]~q\)))) # (!\inst|MAR\(4) & (\inst|Mux67~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MAR\(4),
	datab => \inst|Mux67~2_combout\,
	datac => \inst|reggy[5][7]~q\,
	datad => \inst|reggy[7][7]~q\,
	combout => \inst|Mux67~3_combout\);

-- Location: LCCOMB_X21_Y14_N0
\inst|Mux67~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux67~0_combout\ = (\inst|MAR\(5) & (((\inst|MAR\(4))))) # (!\inst|MAR\(5) & ((\inst|MAR\(4) & ((\inst|reggy[1][7]~q\))) # (!\inst|MAR\(4) & (\inst|reggy[0][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy[0][7]~q\,
	datab => \inst|MAR\(5),
	datac => \inst|MAR\(4),
	datad => \inst|reggy[1][7]~q\,
	combout => \inst|Mux67~0_combout\);

-- Location: LCCOMB_X23_Y14_N12
\inst|Mux67~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux67~1_combout\ = (\inst|Mux67~0_combout\ & (((\inst|reggy[3][7]~q\)) # (!\inst|MAR\(5)))) # (!\inst|Mux67~0_combout\ & (\inst|MAR\(5) & ((\inst|reggy[2][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux67~0_combout\,
	datab => \inst|MAR\(5),
	datac => \inst|reggy[3][7]~q\,
	datad => \inst|reggy[2][7]~q\,
	combout => \inst|Mux67~1_combout\);

-- Location: LCCOMB_X24_Y14_N20
\inst|salida[7]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|salida[7]~2_combout\ = (\inst|MAR\(6) & (\inst|Mux67~3_combout\)) # (!\inst|MAR\(6) & ((\inst|Mux67~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MAR\(6),
	datab => \inst|Mux67~3_combout\,
	datad => \inst|Mux67~1_combout\,
	combout => \inst|salida[7]~2_combout\);

-- Location: FF_X21_Y13_N29
\inst|REG_A[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|salida[7]~2_combout\,
	sload => VCC,
	ena => \inst|OP[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|REG_A\(7));

-- Location: FF_X19_Y12_N19
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

-- Location: FF_X18_Y12_N31
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

-- Location: LCCOMB_X24_Y12_N2
\inst|alu1|unidad_aritmetica|mult|multi4|s8|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi4|s8|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|mult|multi3|s7|Cout~0_combout\ $ (\inst|alu1|unidad_aritmetica|mult|multi4|s7|Cout~0_combout\ $ (((\inst|REG_A\(4) & \inst|REG_B\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|multi3|s7|Cout~0_combout\,
	datab => \inst|REG_A\(4),
	datac => \inst|alu1|unidad_aritmetica|mult|multi4|s7|Cout~0_combout\,
	datad => \inst|REG_B\(4),
	combout => \inst|alu1|unidad_aritmetica|mult|multi4|s8|Suma~0_combout\);

-- Location: LCCOMB_X23_Y10_N16
\inst|alu1|unidad_aritmetica|suma|s8|Suma\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|s8|Suma~combout\ = \inst|alu1|unidad_aritmetica|suma|Sfaux~0_combout\ $ (\inst|alu1|unidad_aritmetica|suma|s7|Cout~2_combout\ $ (((\inst|alu1|unidad_aritmetica|suma|Xop\(7) & 
-- \inst|alu1|unidad_aritmetica|suma|s7|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|suma|Sfaux~0_combout\,
	datab => \inst|alu1|unidad_aritmetica|suma|Xop\(7),
	datac => \inst|alu1|unidad_aritmetica|suma|s7|Cout~2_combout\,
	datad => \inst|alu1|unidad_aritmetica|suma|s7|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|suma|s8|Suma~combout\);

-- Location: LCCOMB_X19_Y12_N24
\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~7_combout\ = (\inst|alu1|Mux10~0_combout\ & (\inst|alu1|unidad_aritmetica|mult|multi4|s8|Suma~0_combout\)) # (!\inst|alu1|Mux10~0_combout\ & ((\inst|alu1|unidad_aritmetica|suma|s8|Suma~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux10~0_combout\,
	datac => \inst|alu1|unidad_aritmetica|mult|multi4|s8|Suma~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|suma|s8|Suma~combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~7_combout\);

-- Location: LCCOMB_X19_Y12_N18
\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~29_combout\ = \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~28\ $ (\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~7_combout\,
	cin => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~28\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~29_combout\);

-- Location: LCCOMB_X19_Y12_N20
\inst|alu1|unidad_aritmetica|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|Mux1~0_combout\ = (\inst|reggy~75_combout\ & ((\inst|alu1|unidad_aritmetica|mult|multi4|s8|Cout~0_combout\ & ((\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~29_combout\))) # 
-- (!\inst|alu1|unidad_aritmetica|mult|multi4|s8|Cout~0_combout\ & (\inst|alu1|unidad_aritmetica|mult|multi4|s8|Suma~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|multi4|s8|Cout~0_combout\,
	datab => \inst|reggy~75_combout\,
	datac => \inst|alu1|unidad_aritmetica|mult|multi4|s8|Suma~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~29_combout\,
	combout => \inst|alu1|unidad_aritmetica|Mux1~0_combout\);

-- Location: FF_X18_Y12_N7
\inst|reggy[7][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|reggy~27_combout\,
	ena => \inst|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy[7][8]~q\);

-- Location: FF_X23_Y14_N23
\inst|reggy[5][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~27_combout\,
	sload => VCC,
	ena => \inst|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy[5][8]~q\);

-- Location: FF_X19_Y14_N19
\inst|reggy[6][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~27_combout\,
	sload => VCC,
	ena => \inst|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy[6][8]~q\);

-- Location: FF_X19_Y14_N1
\inst|reggy[4][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~27_combout\,
	sload => VCC,
	ena => \inst|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy[4][8]~q\);

-- Location: LCCOMB_X19_Y14_N0
\inst|Mux56~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux56~0_combout\ = (\inst|MAR\(0) & (((\inst|MAR\(1))))) # (!\inst|MAR\(0) & ((\inst|MAR\(1) & (\inst|reggy[6][8]~q\)) # (!\inst|MAR\(1) & ((\inst|reggy[4][8]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy[6][8]~q\,
	datab => \inst|MAR\(0),
	datac => \inst|reggy[4][8]~q\,
	datad => \inst|MAR\(1),
	combout => \inst|Mux56~0_combout\);

-- Location: LCCOMB_X23_Y14_N22
\inst|Mux56~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux56~1_combout\ = (\inst|MAR\(0) & ((\inst|Mux56~0_combout\ & (\inst|reggy[7][8]~q\)) # (!\inst|Mux56~0_combout\ & ((\inst|reggy[5][8]~q\))))) # (!\inst|MAR\(0) & (((\inst|Mux56~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MAR\(0),
	datab => \inst|reggy[7][8]~q\,
	datac => \inst|reggy[5][8]~q\,
	datad => \inst|Mux56~0_combout\,
	combout => \inst|Mux56~1_combout\);

-- Location: FF_X18_Y14_N11
\inst|reggy[3][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~27_combout\,
	sload => VCC,
	ena => \inst|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy[3][8]~q\);

-- Location: FF_X21_Y14_N15
\inst|reggy[1][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~27_combout\,
	sload => VCC,
	ena => \inst|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy[1][8]~q\);

-- Location: LCCOMB_X18_Y14_N8
\inst|reggy[0][8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy[0][8]~feeder_combout\ = \inst|reggy~27_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|reggy~27_combout\,
	combout => \inst|reggy[0][8]~feeder_combout\);

-- Location: FF_X18_Y14_N9
\inst|reggy[0][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|reggy[0][8]~feeder_combout\,
	ena => \inst|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy[0][8]~q\);

-- Location: LCCOMB_X21_Y14_N14
\inst|Mux56~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux56~2_combout\ = (\inst|MAR\(0) & ((\inst|MAR\(1)) # ((\inst|reggy[1][8]~q\)))) # (!\inst|MAR\(0) & (!\inst|MAR\(1) & ((\inst|reggy[0][8]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MAR\(0),
	datab => \inst|MAR\(1),
	datac => \inst|reggy[1][8]~q\,
	datad => \inst|reggy[0][8]~q\,
	combout => \inst|Mux56~2_combout\);

-- Location: LCCOMB_X21_Y14_N16
\inst|Mux56~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux56~3_combout\ = (\inst|Mux56~2_combout\ & ((\inst|reggy[3][8]~q\) # ((!\inst|MAR\(1))))) # (!\inst|Mux56~2_combout\ & (((\inst|reggy[2][8]~q\ & \inst|MAR\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy[3][8]~q\,
	datab => \inst|Mux56~2_combout\,
	datac => \inst|reggy[2][8]~q\,
	datad => \inst|MAR\(1),
	combout => \inst|Mux56~3_combout\);

-- Location: LCCOMB_X21_Y14_N2
\inst|Mux56~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux56~4_combout\ = (\inst|MAR\(2) & (\inst|Mux56~1_combout\)) # (!\inst|MAR\(2) & ((\inst|Mux56~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux56~1_combout\,
	datab => \inst|Mux56~3_combout\,
	datad => \inst|MAR\(2),
	combout => \inst|Mux56~4_combout\);

-- Location: FF_X21_Y10_N23
\inst|REG_B[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|Mux56~4_combout\,
	sload => VCC,
	ena => \inst|OP[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|REG_B\(8));

-- Location: LCCOMB_X21_Y12_N14
\inst|alu1|unidad_logica|aux[8]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|aux[8]~24_combout\ = (\inst|REG_A\(8) & ((\inst|alu1|unidad_logica|aux[7]~23\) # (GND))) # (!\inst|REG_A\(8) & (!\inst|alu1|unidad_logica|aux[7]~23\))
-- \inst|alu1|unidad_logica|aux[8]~25\ = CARRY((\inst|REG_A\(8)) # (!\inst|alu1|unidad_logica|aux[7]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_A\(8),
	datad => VCC,
	cin => \inst|alu1|unidad_logica|aux[7]~23\,
	combout => \inst|alu1|unidad_logica|aux[8]~24_combout\,
	cout => \inst|alu1|unidad_logica|aux[8]~25\);

-- Location: FF_X21_Y12_N15
\inst|alu1|unidad_logica|aux[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|alu1|unidad_logica|aux[8]~24_combout\,
	ena => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|unidad_logica|aux\(8));

-- Location: LCCOMB_X21_Y10_N22
\inst|alu1|unidad_logica|salida~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|salida~8_combout\ = (\inst|REG_A\(8) & \inst|REG_B\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|REG_A\(8),
	datac => \inst|REG_B\(8),
	combout => \inst|alu1|unidad_logica|salida~8_combout\);

-- Location: LCCOMB_X21_Y10_N12
\inst|alu1|unidad_logica|salida~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|salida~9_combout\ = (\inst|alu1|Mux10~0_combout\ & ((\inst|alu1|unidad_logica|aux\(8)) # ((!\inst|alu1|Mux11~0_combout\)))) # (!\inst|alu1|Mux10~0_combout\ & (((!\inst|alu1|Mux11~0_combout\ & 
-- \inst|alu1|unidad_logica|salida~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux10~0_combout\,
	datab => \inst|alu1|unidad_logica|aux\(8),
	datac => \inst|alu1|Mux11~0_combout\,
	datad => \inst|alu1|unidad_logica|salida~8_combout\,
	combout => \inst|alu1|unidad_logica|salida~9_combout\);

-- Location: LCCOMB_X21_Y10_N30
\inst|alu1|unidad_logica|salida~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|salida~10_combout\ = (\inst|alu1|unidad_logica|salida[9]~33_combout\ & ((\inst|REG_A\(8) & ((!\inst|alu1|unidad_logica|salida~9_combout\))) # (!\inst|REG_A\(8) & ((\inst|REG_B\(8)) # 
-- (\inst|alu1|unidad_logica|salida~9_combout\))))) # (!\inst|alu1|unidad_logica|salida[9]~33_combout\ & (((\inst|alu1|unidad_logica|salida~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(8),
	datab => \inst|alu1|unidad_logica|salida[9]~33_combout\,
	datac => \inst|REG_A\(8),
	datad => \inst|alu1|unidad_logica|salida~9_combout\,
	combout => \inst|alu1|unidad_logica|salida~10_combout\);

-- Location: FF_X21_Y10_N31
\inst|alu1|unidad_logica|salida[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|alu1|unidad_logica|salida~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|unidad_logica|salida\(8));

-- Location: LCCOMB_X19_Y12_N26
\inst|alu1|unidad_aritmetica|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|Mux1~1_combout\ = (!\inst|alu1|Mux10~0_combout\ & ((\inst|alu1|unidad_aritmetica|suma|Sfaux~1_combout\ & (\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~29_combout\)) # 
-- (!\inst|alu1|unidad_aritmetica|suma|Sfaux~1_combout\ & ((\inst|alu1|unidad_aritmetica|suma|s8|Suma~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux10~0_combout\,
	datab => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~29_combout\,
	datac => \inst|alu1|unidad_aritmetica|suma|Sfaux~1_combout\,
	datad => \inst|alu1|unidad_aritmetica|suma|s8|Suma~combout\,
	combout => \inst|alu1|unidad_aritmetica|Mux1~1_combout\);

-- Location: LCCOMB_X18_Y12_N2
\inst|reggy~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~25_combout\ = (\inst|OP\(1) & ((\inst|alu1|unidad_aritmetica|Mux1~0_combout\) # ((\inst|alu1|unidad_aritmetica|Mux1~1_combout\)))) # (!\inst|OP\(1) & (((\inst|alu1|unidad_logica|salida\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|Mux1~0_combout\,
	datab => \inst|OP\(1),
	datac => \inst|alu1|unidad_logica|salida\(8),
	datad => \inst|alu1|unidad_aritmetica|Mux1~1_combout\,
	combout => \inst|reggy~25_combout\);

-- Location: LCCOMB_X18_Y12_N30
\inst|reggy~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~26_combout\ = (\inst|OP\(3)) # ((\inst|alu1|Mux10~1_combout\ & (\inst|alu1|barrel_shifters|salShifters\(8))) # (!\inst|alu1|Mux10~1_combout\ & ((\inst|reggy~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux10~1_combout\,
	datab => \inst|OP\(3),
	datac => \inst|alu1|barrel_shifters|salShifters\(8),
	datad => \inst|reggy~25_combout\,
	combout => \inst|reggy~26_combout\);

-- Location: LCCOMB_X18_Y12_N12
\inst|reggy~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~23_combout\ = (\inst|alu1|unidad_aritmetica|Mux1~0_combout\) # ((\inst|alu1|unidad_aritmetica|Mux1~1_combout\) # ((\inst|OP\(0) & \inst|OP\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|OP\(0),
	datab => \inst|OP\(1),
	datac => \inst|alu1|unidad_aritmetica|Mux1~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|Mux1~1_combout\,
	combout => \inst|reggy~23_combout\);

-- Location: LCCOMB_X18_Y12_N0
\inst|reggy~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~24_combout\ = (\inst|reggy~22_combout\ & ((\inst|alu1|unidad_logica|salida\(8)) # ((\inst|OP\(3) & \inst|reggy~23_combout\)))) # (!\inst|reggy~22_combout\ & (\inst|OP\(3) & ((\inst|reggy~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy~22_combout\,
	datab => \inst|OP\(3),
	datac => \inst|alu1|unidad_logica|salida\(8),
	datad => \inst|reggy~23_combout\,
	combout => \inst|reggy~24_combout\);

-- Location: LCCOMB_X18_Y12_N6
\inst|reggy~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~27_combout\ = (!\inst|Equal0~0_combout\ & ((\inst|reggy~24_combout\) # ((\inst|OP\(2) & \inst|reggy~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~0_combout\,
	datab => \inst|OP\(2),
	datac => \inst|reggy~26_combout\,
	datad => \inst|reggy~24_combout\,
	combout => \inst|reggy~27_combout\);

-- Location: FF_X21_Y14_N17
\inst|reggy[2][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~27_combout\,
	sload => VCC,
	ena => \inst|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy[2][8]~q\);

-- Location: LCCOMB_X19_Y14_N24
\inst|Mux66~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux66~0_combout\ = (\inst|MAR\(4) & (((\inst|reggy[1][8]~q\) # (\inst|MAR\(5))))) # (!\inst|MAR\(4) & (\inst|reggy[0][8]~q\ & ((!\inst|MAR\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy[0][8]~q\,
	datab => \inst|reggy[1][8]~q\,
	datac => \inst|MAR\(4),
	datad => \inst|MAR\(5),
	combout => \inst|Mux66~0_combout\);

-- Location: LCCOMB_X18_Y14_N10
\inst|Mux66~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux66~1_combout\ = (\inst|MAR\(5) & ((\inst|Mux66~0_combout\ & ((\inst|reggy[3][8]~q\))) # (!\inst|Mux66~0_combout\ & (\inst|reggy[2][8]~q\)))) # (!\inst|MAR\(5) & (((\inst|Mux66~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy[2][8]~q\,
	datab => \inst|MAR\(5),
	datac => \inst|reggy[3][8]~q\,
	datad => \inst|Mux66~0_combout\,
	combout => \inst|Mux66~1_combout\);

-- Location: LCCOMB_X19_Y14_N18
\inst|Mux66~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux66~2_combout\ = (\inst|MAR\(5) & ((\inst|MAR\(4)) # ((\inst|reggy[6][8]~q\)))) # (!\inst|MAR\(5) & (!\inst|MAR\(4) & ((\inst|reggy[4][8]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MAR\(5),
	datab => \inst|MAR\(4),
	datac => \inst|reggy[6][8]~q\,
	datad => \inst|reggy[4][8]~q\,
	combout => \inst|Mux66~2_combout\);

-- Location: LCCOMB_X19_Y14_N30
\inst|Mux66~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux66~3_combout\ = (\inst|MAR\(4) & ((\inst|Mux66~2_combout\ & ((\inst|reggy[7][8]~q\))) # (!\inst|Mux66~2_combout\ & (\inst|reggy[5][8]~q\)))) # (!\inst|MAR\(4) & (((\inst|Mux66~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy[5][8]~q\,
	datab => \inst|MAR\(4),
	datac => \inst|reggy[7][8]~q\,
	datad => \inst|Mux66~2_combout\,
	combout => \inst|Mux66~3_combout\);

-- Location: LCCOMB_X17_Y14_N18
\inst|salida[8]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|salida[8]~0_combout\ = (\inst|MAR\(6) & ((\inst|Mux66~3_combout\))) # (!\inst|MAR\(6) & (\inst|Mux66~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux66~1_combout\,
	datac => \inst|MAR\(6),
	datad => \inst|Mux66~3_combout\,
	combout => \inst|salida[8]~0_combout\);

-- Location: FF_X17_Y14_N19
\inst|REG_A[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|salida[8]~0_combout\,
	ena => \inst|OP[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|REG_A\(8));

-- Location: LCCOMB_X21_Y12_N16
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

-- Location: FF_X21_Y12_N17
\inst|alu1|unidad_logica|aux[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|alu1|unidad_logica|aux[9]~26_combout\,
	ena => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|unidad_logica|aux\(9));

-- Location: LCCOMB_X24_Y10_N20
\inst|alu1|unidad_aritmetica|suma|s0|Cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|s0|Cout~1_combout\ = (\inst|REG_B\(9) & \inst|REG_A\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|REG_B\(9),
	datad => \inst|REG_A\(9),
	combout => \inst|alu1|unidad_aritmetica|suma|s0|Cout~1_combout\);

-- Location: LCCOMB_X24_Y10_N18
\inst|alu1|unidad_logica|salida~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|salida~14_combout\ = (\inst|alu1|Mux11~0_combout\ & (\inst|alu1|unidad_logica|aux\(9) & (\inst|alu1|Mux10~0_combout\))) # (!\inst|alu1|Mux11~0_combout\ & (((\inst|alu1|Mux10~0_combout\) # 
-- (\inst|alu1|unidad_aritmetica|suma|s0|Cout~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_logica|aux\(9),
	datab => \inst|alu1|Mux11~0_combout\,
	datac => \inst|alu1|Mux10~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|suma|s0|Cout~1_combout\,
	combout => \inst|alu1|unidad_logica|salida~14_combout\);

-- Location: LCCOMB_X23_Y10_N4
\inst|alu1|unidad_logica|salida~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|salida~15_combout\ = (\inst|alu1|unidad_logica|salida[9]~33_combout\ & ((\inst|REG_A\(9) & ((!\inst|alu1|unidad_logica|salida~14_combout\))) # (!\inst|REG_A\(9) & ((\inst|REG_B\(9)) # 
-- (\inst|alu1|unidad_logica|salida~14_combout\))))) # (!\inst|alu1|unidad_logica|salida[9]~33_combout\ & (((\inst|alu1|unidad_logica|salida~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(9),
	datab => \inst|alu1|unidad_logica|salida[9]~33_combout\,
	datac => \inst|REG_A\(9),
	datad => \inst|alu1|unidad_logica|salida~14_combout\,
	combout => \inst|alu1|unidad_logica|salida~15_combout\);

-- Location: FF_X23_Y10_N5
\inst|alu1|unidad_logica|salida[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|alu1|unidad_logica|salida~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|unidad_logica|salida\(9));

-- Location: LCCOMB_X22_Y14_N16
\inst|reggy~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~39_combout\ = (\inst|alu1|unidad_logica|salida\(9) & ((\inst|reggy~22_combout\ & (!\inst|reggy~37_combout\)) # (!\inst|reggy~22_combout\ & ((\inst|reggy~38_combout\))))) # (!\inst|alu1|unidad_logica|salida\(9) & (((\inst|reggy~37_combout\ & 
-- \inst|reggy~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy~22_combout\,
	datab => \inst|reggy~37_combout\,
	datac => \inst|reggy~38_combout\,
	datad => \inst|alu1|unidad_logica|salida\(9),
	combout => \inst|reggy~39_combout\);

-- Location: FF_X21_Y10_N7
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

-- Location: FF_X22_Y10_N19
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

-- Location: LCCOMB_X22_Y10_N18
\inst|reggy~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~40_combout\ = (\inst|reggy~39_combout\ & ((\inst|alu1|barrel_shifters|salShifters\(9)) # (!\inst|reggy~37_combout\))) # (!\inst|reggy~39_combout\ & ((\inst|reggy~37_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|reggy~39_combout\,
	datac => \inst|alu1|barrel_shifters|salShifters\(9),
	datad => \inst|reggy~37_combout\,
	combout => \inst|reggy~40_combout\);

-- Location: LCCOMB_X22_Y10_N2
\inst|reggy~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~41_combout\ = (\inst|Equal0~0_combout\ & (\inst|REG_D\(9))) # (!\inst|Equal0~0_combout\ & (((\inst|reggy~40_combout\) # (\inst|flag~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_D\(9),
	datab => \inst|reggy~40_combout\,
	datac => \inst|Equal0~0_combout\,
	datad => \inst|flag~q\,
	combout => \inst|reggy~41_combout\);

-- Location: FF_X21_Y14_N27
\inst|reggy[2][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|reggy~41_combout\,
	sload => VCC,
	ena => \inst|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reggy[2][9]~q\);

-- Location: LCCOMB_X22_Y14_N14
\inst|Mux65~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux65~0_combout\ = (\inst|MAR\(5) & (\inst|MAR\(4))) # (!\inst|MAR\(5) & ((\inst|MAR\(4) & ((\inst|reggy[1][9]~q\))) # (!\inst|MAR\(4) & (\inst|reggy[0][9]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MAR\(5),
	datab => \inst|MAR\(4),
	datac => \inst|reggy[0][9]~q\,
	datad => \inst|reggy[1][9]~q\,
	combout => \inst|Mux65~0_combout\);

-- Location: LCCOMB_X23_Y14_N26
\inst|Mux65~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux65~1_combout\ = (\inst|MAR\(5) & ((\inst|Mux65~0_combout\ & ((\inst|reggy[3][9]~q\))) # (!\inst|Mux65~0_combout\ & (\inst|reggy[2][9]~q\)))) # (!\inst|MAR\(5) & (((\inst|Mux65~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy[2][9]~q\,
	datab => \inst|MAR\(5),
	datac => \inst|reggy[3][9]~q\,
	datad => \inst|Mux65~0_combout\,
	combout => \inst|Mux65~1_combout\);

-- Location: LCCOMB_X19_Y14_N20
\inst|Mux65~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux65~2_combout\ = (\inst|MAR\(5) & ((\inst|MAR\(4)) # ((\inst|reggy[6][9]~q\)))) # (!\inst|MAR\(5) & (!\inst|MAR\(4) & ((\inst|reggy[4][9]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MAR\(5),
	datab => \inst|MAR\(4),
	datac => \inst|reggy[6][9]~q\,
	datad => \inst|reggy[4][9]~q\,
	combout => \inst|Mux65~2_combout\);

-- Location: LCCOMB_X23_Y14_N10
\inst|Mux65~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux65~3_combout\ = (\inst|MAR\(4) & ((\inst|Mux65~2_combout\ & (\inst|reggy[7][9]~q\)) # (!\inst|Mux65~2_combout\ & ((\inst|reggy[5][9]~q\))))) # (!\inst|MAR\(4) & (((\inst|Mux65~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MAR\(4),
	datab => \inst|reggy[7][9]~q\,
	datac => \inst|Mux65~2_combout\,
	datad => \inst|reggy[5][9]~q\,
	combout => \inst|Mux65~3_combout\);

-- Location: LCCOMB_X17_Y14_N4
\inst|salida[9]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|salida[9]~1_combout\ = (\inst|MAR\(6) & ((\inst|Mux65~3_combout\))) # (!\inst|MAR\(6) & (\inst|Mux65~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Mux65~1_combout\,
	datac => \inst|MAR\(6),
	datad => \inst|Mux65~3_combout\,
	combout => \inst|salida[9]~1_combout\);

-- Location: FF_X17_Y14_N5
\inst|REG_A[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|salida[9]~1_combout\,
	ena => \inst|OP[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|REG_A\(9));

-- Location: LCCOMB_X23_Y10_N12
\inst|alu1|unidad_aritmetica|suma|Sfaux~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|Sfaux~0_combout\ = \inst|REG_A\(9) $ (\inst|REG_B\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|REG_A\(9),
	datac => \inst|REG_B\(9),
	combout => \inst|alu1|unidad_aritmetica|suma|Sfaux~0_combout\);

-- Location: LCCOMB_X23_Y10_N26
\inst|flag~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|flag~3_combout\ = (\inst|flag~2_combout\ & ((\inst|alu1|Mux10~0_combout\ & (\inst|alu1|unidad_aritmetica|suma|Sfaux~0_combout\)) # (!\inst|alu1|Mux10~0_combout\ & ((\inst|alu1|unidad_aritmetica|suma|Sfaux~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|suma|Sfaux~0_combout\,
	datab => \inst|flag~2_combout\,
	datac => \inst|alu1|Mux10~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|suma|Sfaux~1_combout\,
	combout => \inst|flag~3_combout\);

-- Location: LCCOMB_X22_Y10_N28
\inst|flag~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|flag~4_combout\ = (\inst|flag~3_combout\) # ((\inst|flag~q\ & ((\rst~input_o\) # (!\inst|pr_state.state2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pr_state.state2~q\,
	datab => \rst~input_o\,
	datac => \inst|flag~q\,
	datad => \inst|flag~3_combout\,
	combout => \inst|flag~4_combout\);

-- Location: FF_X22_Y10_N29
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

-- Location: LCCOMB_X22_Y10_N16
\inst|salida[8]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|salida[8]~15_combout\ = ((\inst|salida[3]~13_combout\ & (!\inst|PC\(13) & \inst|LessThan0~2_combout\))) # (!\inst|MAR[4]~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|salida[3]~13_combout\,
	datab => \inst|MAR[4]~7_combout\,
	datac => \inst|PC\(13),
	datad => \inst|LessThan0~2_combout\,
	combout => \inst|salida[8]~15_combout\);

-- Location: LCCOMB_X22_Y10_N22
\inst|salida[8]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|salida[8]~14_combout\ = (!\rst~input_o\ & (((!\inst|Equal0~0_combout\ & \inst|pr_state.state2~q\)) # (!\inst|salida[8]~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~0_combout\,
	datab => \inst|salida[8]~15_combout\,
	datac => \rst~input_o\,
	datad => \inst|pr_state.state2~q\,
	combout => \inst|salida[8]~14_combout\);

-- Location: FF_X17_Y14_N7
\inst|salida[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|salida[3]~6_combout\,
	asdata => \inst|reggy[0][3]~q\,
	sload => \inst|ALT_INV_pr_state.state2~q\,
	ena => \inst|salida[8]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|salida\(3));

-- Location: LCCOMB_X17_Y14_N20
\inst|salida[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|salida[9]~feeder_combout\ = \inst|salida[9]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|salida[9]~1_combout\,
	combout => \inst|salida[9]~feeder_combout\);

-- Location: FF_X17_Y14_N21
\inst|salida[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|salida[9]~feeder_combout\,
	asdata => \inst|reggy[0][9]~q\,
	sload => \inst|ALT_INV_pr_state.state2~q\,
	ena => \inst|salida[8]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|salida\(9));

-- Location: FF_X17_Y14_N11
\inst|salida[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|salida[1]~4_combout\,
	asdata => \inst|reggy[0][1]~q\,
	sload => \inst|ALT_INV_pr_state.state2~q\,
	ena => \inst|salida[8]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|salida\(1));

-- Location: LCCOMB_X17_Y14_N28
\inst|salida[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|salida[2]~feeder_combout\ = \inst|salida[2]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|salida[2]~5_combout\,
	combout => \inst|salida[2]~feeder_combout\);

-- Location: FF_X17_Y14_N29
\inst|salida[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|salida[2]~feeder_combout\,
	asdata => \inst|reggy[0][2]~q\,
	sload => \inst|ALT_INV_pr_state.state2~q\,
	ena => \inst|salida[8]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|salida\(2));

-- Location: LCCOMB_X28_Y14_N12
\inst1|s[12]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s[12]~3_combout\ = (\inst|salida\(9) & (\inst|salida\(1) & ((\inst|salida\(3)) # (\inst|salida\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|salida\(3),
	datab => \inst|salida\(9),
	datac => \inst|salida\(1),
	datad => \inst|salida\(2),
	combout => \inst1|s[12]~3_combout\);

-- Location: FF_X17_Y14_N17
\inst|salida[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|salida[0]~3_combout\,
	asdata => \inst|reggy[0][0]~q\,
	sload => \inst|ALT_INV_pr_state.state2~q\,
	ena => \inst|salida[8]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|salida\(0));

-- Location: LCCOMB_X17_Y14_N26
\inst|salida[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|salida[8]~feeder_combout\ = \inst|salida[8]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|salida[8]~0_combout\,
	combout => \inst|salida[8]~feeder_combout\);

-- Location: FF_X17_Y14_N27
\inst|salida[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|salida[8]~feeder_combout\,
	asdata => \inst|reggy[0][8]~q\,
	sload => \inst|ALT_INV_pr_state.state2~q\,
	ena => \inst|salida[8]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|salida\(8));

-- Location: FF_X24_Y14_N21
\inst|salida[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|salida[7]~2_combout\,
	asdata => \inst|reggy[0][7]~q\,
	sload => \inst|ALT_INV_pr_state.state2~q\,
	ena => \inst|salida[8]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|salida\(7));

-- Location: LCCOMB_X28_Y14_N30
\inst1|s[12]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s[12]~27_combout\ = (\inst1|s[12]~3_combout\ & (\inst|salida\(0) & (\inst|salida\(8) & \inst|salida\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s[12]~3_combout\,
	datab => \inst|salida\(0),
	datac => \inst|salida\(8),
	datad => \inst|salida\(7),
	combout => \inst1|s[12]~27_combout\);

-- Location: LCCOMB_X28_Y14_N14
\inst1|digitos~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|digitos~34_combout\ = ((!\inst|salida\(8) & !\inst|salida\(7))) # (!\inst|salida\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|salida\(8),
	datac => \inst|salida\(9),
	datad => \inst|salida\(7),
	combout => \inst1|digitos~34_combout\);

-- Location: LCCOMB_X28_Y14_N24
\inst1|digitos~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|digitos~33_combout\ = (\inst|salida\(8) & ((\inst|salida\(0) & ((\inst|salida\(7)) # (!\inst|salida\(9)))) # (!\inst|salida\(0) & (!\inst|salida\(9) & \inst|salida\(7))))) # (!\inst|salida\(8) & (((\inst|salida\(9) & !\inst|salida\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|salida\(8),
	datab => \inst|salida\(0),
	datac => \inst|salida\(9),
	datad => \inst|salida\(7),
	combout => \inst1|digitos~33_combout\);

-- Location: LCCOMB_X28_Y14_N10
\inst1|digitos~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|digitos~9_combout\ = (\inst|salida\(8) & (!\inst|salida\(0) & (\inst|salida\(9) $ (!\inst|salida\(7))))) # (!\inst|salida\(8) & (\inst|salida\(0) & (\inst|salida\(9) & !\inst|salida\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|salida\(8),
	datab => \inst|salida\(0),
	datac => \inst|salida\(9),
	datad => \inst|salida\(7),
	combout => \inst1|digitos~9_combout\);

-- Location: LCCOMB_X28_Y14_N20
\inst1|digitos~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|digitos~10_combout\ = (\inst|salida\(8) & ((\inst|salida\(0) & ((\inst|salida\(7)) # (!\inst|salida\(9)))) # (!\inst|salida\(0) & ((\inst|salida\(9)) # (!\inst|salida\(7)))))) # (!\inst|salida\(8) & (\inst|salida\(0) $ (((\inst|salida\(7)) # 
-- (!\inst|salida\(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100101101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|salida\(8),
	datab => \inst|salida\(0),
	datac => \inst|salida\(9),
	datad => \inst|salida\(7),
	combout => \inst1|digitos~10_combout\);

-- Location: LCCOMB_X28_Y14_N28
\inst1|digitos~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|digitos~8_combout\ = (\inst|salida\(9) & (!\inst|salida\(7) & ((\inst|salida\(8)) # (!\inst|salida\(0))))) # (!\inst|salida\(9) & (\inst|salida\(7) & ((\inst|salida\(0)) # (!\inst|salida\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|salida\(8),
	datab => \inst|salida\(0),
	datac => \inst|salida\(9),
	datad => \inst|salida\(7),
	combout => \inst1|digitos~8_combout\);

-- Location: LCCOMB_X28_Y14_N0
\inst1|digitos~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|digitos~35_combout\ = \inst1|digitos~9_combout\ $ ((((\inst1|digitos~10_combout\ & !\inst|salida\(1))) # (!\inst1|digitos~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|digitos~9_combout\,
	datab => \inst1|digitos~10_combout\,
	datac => \inst|salida\(1),
	datad => \inst1|digitos~8_combout\,
	combout => \inst1|digitos~35_combout\);

-- Location: LCCOMB_X28_Y14_N26
\inst1|digitos~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|digitos~11_combout\ = (\inst1|digitos~9_combout\ & (\inst1|digitos~10_combout\ $ ((\inst|salida\(1))))) # (!\inst1|digitos~9_combout\ & (!\inst1|digitos~10_combout\ & ((\inst|salida\(1)) # (!\inst1|digitos~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100000111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|digitos~9_combout\,
	datab => \inst1|digitos~10_combout\,
	datac => \inst|salida\(1),
	datad => \inst1|digitos~8_combout\,
	combout => \inst1|digitos~11_combout\);

-- Location: LCCOMB_X28_Y14_N8
\inst1|digitos~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|digitos~12_combout\ = (\inst1|digitos~8_combout\ & (((\inst1|digitos~10_combout\ & !\inst|salida\(1))))) # (!\inst1|digitos~8_combout\ & (\inst1|digitos~9_combout\ & ((\inst|salida\(1)) # (!\inst1|digitos~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|digitos~9_combout\,
	datab => \inst1|digitos~10_combout\,
	datac => \inst|salida\(1),
	datad => \inst1|digitos~8_combout\,
	combout => \inst1|digitos~12_combout\);

-- Location: LCCOMB_X28_Y14_N18
\inst1|digitos~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|digitos~13_combout\ = (\inst1|digitos~9_combout\ & (((\inst|salida\(1))))) # (!\inst1|digitos~9_combout\ & ((\inst|salida\(1) & ((\inst1|digitos~8_combout\))) # (!\inst|salida\(1) & ((\inst1|digitos~10_combout\) # (!\inst1|digitos~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|digitos~9_combout\,
	datab => \inst1|digitos~10_combout\,
	datac => \inst|salida\(1),
	datad => \inst1|digitos~8_combout\,
	combout => \inst1|digitos~13_combout\);

-- Location: LCCOMB_X28_Y17_N12
\inst1|digitos~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|digitos~14_combout\ = \inst1|digitos~12_combout\ $ ((((!\inst|salida\(2) & \inst1|digitos~13_combout\)) # (!\inst1|digitos~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001110011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|digitos~11_combout\,
	datab => \inst1|digitos~12_combout\,
	datac => \inst|salida\(2),
	datad => \inst1|digitos~13_combout\,
	combout => \inst1|digitos~14_combout\);

-- Location: LCCOMB_X29_Y14_N16
\inst1|s[12]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s[12]~15_combout\ = (\inst1|digitos~34_combout\ & (\inst1|digitos~33_combout\ & ((!\inst1|digitos~14_combout\) # (!\inst1|digitos~35_combout\)))) # (!\inst1|digitos~34_combout\ & ((\inst1|digitos~33_combout\ & (!\inst1|digitos~35_combout\ & 
-- !\inst1|digitos~14_combout\)) # (!\inst1|digitos~33_combout\ & (\inst1|digitos~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|digitos~34_combout\,
	datab => \inst1|digitos~33_combout\,
	datac => \inst1|digitos~35_combout\,
	datad => \inst1|digitos~14_combout\,
	combout => \inst1|s[12]~15_combout\);

-- Location: LCCOMB_X28_Y14_N6
\inst1|digitos~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|digitos~36_combout\ = (\inst|salida\(1) & (\inst|salida\(7) & ((\inst|salida\(0)) # (\inst|salida\(9))))) # (!\inst|salida\(1) & (\inst|salida\(9) & ((\inst|salida\(7)) # (!\inst|salida\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|salida\(1),
	datab => \inst|salida\(0),
	datac => \inst|salida\(9),
	datad => \inst|salida\(7),
	combout => \inst1|digitos~36_combout\);

-- Location: LCCOMB_X28_Y14_N4
\inst1|digitos~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|digitos~37_combout\ = (\inst|salida\(8) & (\inst1|digitos~36_combout\ & (\inst|salida\(7) $ (\inst|salida\(9))))) # (!\inst|salida\(8) & (\inst|salida\(9) & ((\inst1|digitos~36_combout\) # (!\inst|salida\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|salida\(8),
	datab => \inst|salida\(7),
	datac => \inst|salida\(9),
	datad => \inst1|digitos~36_combout\,
	combout => \inst1|digitos~37_combout\);

-- Location: LCCOMB_X28_Y14_N2
\inst1|digitos~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|digitos~38_combout\ = (\inst|salida\(0) & (((\inst|salida\(7))))) # (!\inst|salida\(0) & ((\inst|salida\(1) & (!\inst|salida\(9))) # (!\inst|salida\(1) & ((!\inst|salida\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|salida\(1),
	datab => \inst|salida\(0),
	datac => \inst|salida\(9),
	datad => \inst|salida\(7),
	combout => \inst1|digitos~38_combout\);

-- Location: LCCOMB_X28_Y14_N16
\inst1|digitos~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|digitos~39_combout\ = (\inst|salida\(8) & (\inst1|digitos~38_combout\ & ((\inst|salida\(9)) # (!\inst|salida\(7))))) # (!\inst|salida\(8) & (\inst|salida\(7) & ((\inst1|digitos~38_combout\) # (\inst|salida\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|salida\(8),
	datab => \inst1|digitos~38_combout\,
	datac => \inst|salida\(9),
	datad => \inst|salida\(7),
	combout => \inst1|digitos~39_combout\);

-- Location: LCCOMB_X29_Y14_N10
\inst1|digitos~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|digitos~15_combout\ = \inst1|digitos~39_combout\ $ (((\inst1|digitos~37_combout\ & !\inst1|digitos~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|digitos~37_combout\,
	datac => \inst1|digitos~39_combout\,
	datad => \inst1|digitos~14_combout\,
	combout => \inst1|digitos~15_combout\);

-- Location: LCCOMB_X29_Y14_N14
\inst1|digitos~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|digitos~17_combout\ = (\inst1|digitos~33_combout\ & (\inst1|digitos~14_combout\ & (\inst1|digitos~34_combout\ $ (!\inst1|digitos~35_combout\)))) # (!\inst1|digitos~33_combout\ & (!\inst1|digitos~34_combout\ & (\inst1|digitos~35_combout\ & 
-- !\inst1|digitos~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|digitos~34_combout\,
	datab => \inst1|digitos~33_combout\,
	datac => \inst1|digitos~35_combout\,
	datad => \inst1|digitos~14_combout\,
	combout => \inst1|digitos~17_combout\);

-- Location: LCCOMB_X28_Y17_N2
\inst1|digitos~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|digitos~18_combout\ = (\inst1|digitos~12_combout\ & ((\inst|salida\(2) $ (\inst1|digitos~13_combout\)))) # (!\inst1|digitos~12_combout\ & (!\inst1|digitos~13_combout\ & ((\inst|salida\(2)) # (!\inst1|digitos~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|digitos~11_combout\,
	datab => \inst1|digitos~12_combout\,
	datac => \inst|salida\(2),
	datad => \inst1|digitos~13_combout\,
	combout => \inst1|digitos~18_combout\);

-- Location: LCCOMB_X28_Y17_N26
\inst1|digitos~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|digitos~20_combout\ = (\inst1|digitos~11_combout\ & ((\inst|salida\(2)) # ((!\inst1|digitos~12_combout\ & \inst1|digitos~13_combout\)))) # (!\inst1|digitos~11_combout\ & (\inst1|digitos~12_combout\ $ ((!\inst|salida\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|digitos~11_combout\,
	datab => \inst1|digitos~12_combout\,
	datac => \inst|salida\(2),
	datad => \inst1|digitos~13_combout\,
	combout => \inst1|digitos~20_combout\);

-- Location: LCCOMB_X28_Y17_N28
\inst1|digitos~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|digitos~19_combout\ = (\inst1|digitos~11_combout\ & (((!\inst|salida\(2) & \inst1|digitos~13_combout\)))) # (!\inst1|digitos~11_combout\ & (\inst1|digitos~12_combout\ & ((\inst|salida\(2)) # (!\inst1|digitos~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|digitos~11_combout\,
	datab => \inst1|digitos~12_combout\,
	datac => \inst|salida\(2),
	datad => \inst1|digitos~13_combout\,
	combout => \inst1|digitos~19_combout\);

-- Location: LCCOMB_X28_Y17_N0
\inst1|digitos~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|digitos~21_combout\ = \inst1|digitos~19_combout\ $ ((((!\inst|salida\(3) & \inst1|digitos~20_combout\)) # (!\inst1|digitos~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110001110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|salida\(3),
	datab => \inst1|digitos~18_combout\,
	datac => \inst1|digitos~20_combout\,
	datad => \inst1|digitos~19_combout\,
	combout => \inst1|digitos~21_combout\);

-- Location: LCCOMB_X29_Y14_N28
\inst1|digitos~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|digitos~16_combout\ = (\inst1|digitos~33_combout\ & ((\inst1|digitos~34_combout\ & (!\inst1|digitos~35_combout\ & \inst1|digitos~14_combout\)) # (!\inst1|digitos~34_combout\ & (\inst1|digitos~35_combout\ & !\inst1|digitos~14_combout\)))) # 
-- (!\inst1|digitos~33_combout\ & (\inst1|digitos~14_combout\ $ (((\inst1|digitos~34_combout\) # (!\inst1|digitos~35_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100001100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|digitos~34_combout\,
	datab => \inst1|digitos~33_combout\,
	datac => \inst1|digitos~35_combout\,
	datad => \inst1|digitos~14_combout\,
	combout => \inst1|digitos~16_combout\);

-- Location: LCCOMB_X29_Y14_N8
\inst1|digitos~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|digitos~22_combout\ = \inst1|digitos~17_combout\ $ ((((\inst1|digitos~21_combout\ & !\inst1|digitos~16_combout\)) # (!\inst1|digitos~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|digitos~15_combout\,
	datab => \inst1|digitos~17_combout\,
	datac => \inst1|digitos~21_combout\,
	datad => \inst1|digitos~16_combout\,
	combout => \inst1|digitos~22_combout\);

-- Location: LCCOMB_X29_Y14_N6
\inst1|LessThan9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan9~0_combout\ = (!\inst1|digitos~34_combout\ & ((\inst1|digitos~33_combout\) # (!\inst1|digitos~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|digitos~34_combout\,
	datac => \inst1|digitos~35_combout\,
	datad => \inst1|digitos~33_combout\,
	combout => \inst1|LessThan9~0_combout\);

-- Location: LCCOMB_X29_Y14_N4
\inst1|s[11]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s[11]~16_combout\ = (!\inst1|s[12]~15_combout\ & (\inst1|digitos~22_combout\ & \inst1|LessThan9~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|s[12]~15_combout\,
	datac => \inst1|digitos~22_combout\,
	datad => \inst1|LessThan9~0_combout\,
	combout => \inst1|s[11]~16_combout\);

-- Location: LCCOMB_X29_Y14_N26
\inst1|s[10]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s[10]~17_combout\ = (\inst1|s[12]~15_combout\ & ((!\inst1|LessThan9~0_combout\) # (!\inst1|digitos~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|s[12]~15_combout\,
	datac => \inst1|digitos~22_combout\,
	datad => \inst1|LessThan9~0_combout\,
	combout => \inst1|s[10]~17_combout\);

-- Location: LCCOMB_X29_Y14_N0
\inst1|s[9]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s[9]~18_combout\ = (\inst1|digitos~22_combout\ & ((!\inst1|LessThan9~0_combout\) # (!\inst1|s[12]~15_combout\))) # (!\inst1|digitos~22_combout\ & ((\inst1|LessThan9~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|s[12]~15_combout\,
	datac => \inst1|digitos~22_combout\,
	datad => \inst1|LessThan9~0_combout\,
	combout => \inst1|s[9]~18_combout\);

-- Location: LCCOMB_X29_Y14_N22
\inst1|digitos~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|digitos~25_combout\ = (\inst1|digitos~15_combout\ & (((\inst1|digitos~21_combout\ & !\inst1|digitos~16_combout\)))) # (!\inst1|digitos~15_combout\ & (\inst1|digitos~17_combout\ & ((\inst1|digitos~16_combout\) # (!\inst1|digitos~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|digitos~15_combout\,
	datab => \inst1|digitos~17_combout\,
	datac => \inst1|digitos~21_combout\,
	datad => \inst1|digitos~16_combout\,
	combout => \inst1|digitos~25_combout\);

-- Location: LCCOMB_X29_Y14_N20
\inst1|digitos~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|digitos~24_combout\ = (\inst1|digitos~15_combout\ & (\inst1|digitos~21_combout\ & ((\inst1|digitos~17_combout\) # (\inst1|digitos~16_combout\)))) # (!\inst1|digitos~15_combout\ & (\inst1|digitos~17_combout\ $ ((!\inst1|digitos~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000111000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|digitos~15_combout\,
	datab => \inst1|digitos~17_combout\,
	datac => \inst1|digitos~21_combout\,
	datad => \inst1|digitos~16_combout\,
	combout => \inst1|digitos~24_combout\);

-- Location: LCCOMB_X28_Y17_N10
\inst1|digitos~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|digitos~26_combout\ = (\inst|salida\(3) & (((!\inst1|digitos~20_combout\)))) # (!\inst|salida\(3) & ((\inst1|digitos~20_combout\ & ((\inst1|digitos~19_combout\))) # (!\inst1|digitos~20_combout\ & (!\inst1|digitos~18_combout\ & 
-- !\inst1|digitos~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|salida\(3),
	datab => \inst1|digitos~18_combout\,
	datac => \inst1|digitos~20_combout\,
	datad => \inst1|digitos~19_combout\,
	combout => \inst1|digitos~26_combout\);

-- Location: LCCOMB_X28_Y17_N14
\inst1|digitos~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|digitos~28_combout\ = (\inst|salida\(3) & ((\inst1|digitos~18_combout\) # ((\inst1|digitos~19_combout\)))) # (!\inst|salida\(3) & (!\inst1|digitos~19_combout\ & ((\inst1|digitos~20_combout\) # (!\inst1|digitos~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|salida\(3),
	datab => \inst1|digitos~18_combout\,
	datac => \inst1|digitos~20_combout\,
	datad => \inst1|digitos~19_combout\,
	combout => \inst1|digitos~28_combout\);

-- Location: LCCOMB_X17_Y14_N8
\inst|salida[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|salida[4]~feeder_combout\ = \inst|salida[4]~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|salida[4]~7_combout\,
	combout => \inst|salida[4]~feeder_combout\);

-- Location: FF_X17_Y14_N9
\inst|salida[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|salida[4]~feeder_combout\,
	asdata => \inst|reggy[0][4]~q\,
	sload => \inst|ALT_INV_pr_state.state2~q\,
	ena => \inst|salida[8]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|salida\(4));

-- Location: LCCOMB_X28_Y17_N16
\inst1|digitos~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|digitos~27_combout\ = (\inst1|digitos~18_combout\ & (!\inst|salida\(3) & (\inst1|digitos~20_combout\))) # (!\inst1|digitos~18_combout\ & (\inst1|digitos~19_combout\ & ((\inst|salida\(3)) # (!\inst1|digitos~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|salida\(3),
	datab => \inst1|digitos~18_combout\,
	datac => \inst1|digitos~20_combout\,
	datad => \inst1|digitos~19_combout\,
	combout => \inst1|digitos~27_combout\);

-- Location: LCCOMB_X28_Y17_N20
\inst1|digitos~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|digitos~29_combout\ = \inst1|digitos~27_combout\ $ ((((\inst1|digitos~28_combout\ & !\inst|salida\(4))) # (!\inst1|digitos~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001001011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|digitos~26_combout\,
	datab => \inst1|digitos~28_combout\,
	datac => \inst|salida\(4),
	datad => \inst1|digitos~27_combout\,
	combout => \inst1|digitos~29_combout\);

-- Location: LCCOMB_X29_Y14_N18
\inst1|digitos~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|digitos~23_combout\ = (\inst1|digitos~17_combout\ & ((\inst1|digitos~21_combout\ $ (\inst1|digitos~16_combout\)))) # (!\inst1|digitos~17_combout\ & (\inst1|digitos~16_combout\ & ((!\inst1|digitos~21_combout\) # (!\inst1|digitos~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|digitos~15_combout\,
	datab => \inst1|digitos~17_combout\,
	datac => \inst1|digitos~21_combout\,
	datad => \inst1|digitos~16_combout\,
	combout => \inst1|digitos~23_combout\);

-- Location: LCCOMB_X29_Y14_N12
\inst1|s[8]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s[8]~19_combout\ = \inst1|digitos~25_combout\ $ ((((!\inst1|digitos~24_combout\ & \inst1|digitos~29_combout\)) # (!\inst1|digitos~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|digitos~25_combout\,
	datab => \inst1|digitos~24_combout\,
	datac => \inst1|digitos~29_combout\,
	datad => \inst1|digitos~23_combout\,
	combout => \inst1|s[8]~19_combout\);

-- Location: LCCOMB_X29_Y14_N30
\inst1|s[7]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s[7]~20_combout\ = (\inst1|digitos~23_combout\ & (((!\inst1|digitos~24_combout\ & \inst1|digitos~29_combout\)))) # (!\inst1|digitos~23_combout\ & (\inst1|digitos~25_combout\ & ((\inst1|digitos~24_combout\) # (!\inst1|digitos~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|digitos~25_combout\,
	datab => \inst1|digitos~24_combout\,
	datac => \inst1|digitos~29_combout\,
	datad => \inst1|digitos~23_combout\,
	combout => \inst1|s[7]~20_combout\);

-- Location: LCCOMB_X29_Y14_N24
\inst1|s[6]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s[6]~21_combout\ = (\inst1|digitos~25_combout\ & (\inst1|digitos~24_combout\ $ ((\inst1|digitos~29_combout\)))) # (!\inst1|digitos~25_combout\ & (\inst1|digitos~24_combout\ & ((!\inst1|digitos~23_combout\) # (!\inst1|digitos~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|digitos~25_combout\,
	datab => \inst1|digitos~24_combout\,
	datac => \inst1|digitos~29_combout\,
	datad => \inst1|digitos~23_combout\,
	combout => \inst1|s[6]~21_combout\);

-- Location: LCCOMB_X29_Y14_N2
\inst1|s[5]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s[5]~22_combout\ = (\inst1|digitos~25_combout\ & (((\inst1|digitos~29_combout\)))) # (!\inst1|digitos~25_combout\ & ((\inst1|digitos~29_combout\ & (\inst1|digitos~24_combout\ & \inst1|digitos~23_combout\)) # (!\inst1|digitos~29_combout\ & 
-- ((!\inst1|digitos~23_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|digitos~25_combout\,
	datab => \inst1|digitos~24_combout\,
	datac => \inst1|digitos~29_combout\,
	datad => \inst1|digitos~23_combout\,
	combout => \inst1|s[5]~22_combout\);

-- Location: LCCOMB_X28_Y17_N6
\inst1|digitos~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|digitos~32_combout\ = (\inst1|digitos~26_combout\ & ((\inst|salida\(4)) # ((\inst1|digitos~28_combout\ & !\inst1|digitos~27_combout\)))) # (!\inst1|digitos~26_combout\ & ((\inst|salida\(4) $ (!\inst1|digitos~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|digitos~26_combout\,
	datab => \inst1|digitos~28_combout\,
	datac => \inst|salida\(4),
	datad => \inst1|digitos~27_combout\,
	combout => \inst1|digitos~32_combout\);

-- Location: LCCOMB_X28_Y17_N24
\inst1|digitos~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|digitos~31_combout\ = (\inst1|digitos~26_combout\ & (\inst1|digitos~28_combout\ & (!\inst|salida\(4)))) # (!\inst1|digitos~26_combout\ & (\inst1|digitos~27_combout\ & ((\inst|salida\(4)) # (!\inst1|digitos~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|digitos~26_combout\,
	datab => \inst1|digitos~28_combout\,
	datac => \inst|salida\(4),
	datad => \inst1|digitos~27_combout\,
	combout => \inst1|digitos~31_combout\);

-- Location: FF_X17_Y14_N15
\inst|salida[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|salida[5]~8_combout\,
	asdata => \inst|reggy[0][5]~q\,
	sload => \inst|ALT_INV_pr_state.state2~q\,
	ena => \inst|salida[8]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|salida\(5));

-- Location: LCCOMB_X28_Y17_N18
\inst1|digitos~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|digitos~30_combout\ = (\inst1|digitos~28_combout\ & (((!\inst|salida\(4) & \inst1|digitos~27_combout\)))) # (!\inst1|digitos~28_combout\ & ((\inst|salida\(4)) # ((!\inst1|digitos~26_combout\ & !\inst1|digitos~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|digitos~26_combout\,
	datab => \inst1|digitos~28_combout\,
	datac => \inst|salida\(4),
	datad => \inst1|digitos~27_combout\,
	combout => \inst1|digitos~30_combout\);

-- Location: LCCOMB_X28_Y17_N8
\inst1|s[4]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s[4]~23_combout\ = \inst1|digitos~31_combout\ $ ((((\inst1|digitos~32_combout\ & !\inst|salida\(5))) # (!\inst1|digitos~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|digitos~32_combout\,
	datab => \inst1|digitos~31_combout\,
	datac => \inst|salida\(5),
	datad => \inst1|digitos~30_combout\,
	combout => \inst1|s[4]~23_combout\);

-- Location: LCCOMB_X28_Y17_N30
\inst1|s[3]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s[3]~24_combout\ = (\inst1|digitos~30_combout\ & (\inst1|digitos~32_combout\ & ((!\inst|salida\(5))))) # (!\inst1|digitos~30_combout\ & (\inst1|digitos~31_combout\ & ((\inst|salida\(5)) # (!\inst1|digitos~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|digitos~32_combout\,
	datab => \inst1|digitos~31_combout\,
	datac => \inst|salida\(5),
	datad => \inst1|digitos~30_combout\,
	combout => \inst1|s[3]~24_combout\);

-- Location: LCCOMB_X28_Y17_N4
\inst1|s[2]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s[2]~25_combout\ = (\inst1|digitos~32_combout\ & (\inst1|digitos~31_combout\ & (!\inst|salida\(5)))) # (!\inst1|digitos~32_combout\ & ((\inst|salida\(5)) # ((!\inst1|digitos~31_combout\ & !\inst1|digitos~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100001011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|digitos~32_combout\,
	datab => \inst1|digitos~31_combout\,
	datac => \inst|salida\(5),
	datad => \inst1|digitos~30_combout\,
	combout => \inst1|s[2]~25_combout\);

-- Location: LCCOMB_X28_Y17_N22
\inst1|s[1]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s[1]~26_combout\ = (\inst1|digitos~31_combout\ & (((\inst|salida\(5))))) # (!\inst1|digitos~31_combout\ & ((\inst|salida\(5) & ((\inst1|digitos~30_combout\))) # (!\inst|salida\(5) & ((\inst1|digitos~32_combout\) # (!\inst1|digitos~30_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|digitos~32_combout\,
	datab => \inst1|digitos~31_combout\,
	datac => \inst|salida\(5),
	datad => \inst1|digitos~30_combout\,
	combout => \inst1|s[1]~26_combout\);

-- Location: FF_X17_Y14_N25
\inst|salida[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|salida[6]~9_combout\,
	asdata => \inst|reggy[0][6]~q\,
	sload => \inst|ALT_INV_pr_state.state2~q\,
	ena => \inst|salida[8]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|salida\(6));

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


