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

-- DATE "11/21/2022 21:54:32"

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
	d1 : OUT std_logic;
	clk : IN std_logic;
	rst : IN std_logic;
	ec : IN std_logic_vector(1 DOWNTO 0);
	d2 : OUT std_logic;
	d4 : OUT std_logic;
	c : OUT std_logic;
	d : OUT std_logic;
	e : OUT std_logic;
	f : OUT std_logic;
	g : OUT std_logic;
	d3 : OUT std_logic;
	a : OUT std_logic;
	b : OUT std_logic;
	pin_name1 : OUT std_logic;
	sal_prueb : OUT std_logic_vector(9 DOWNTO 0);
	rst_clk : IN std_logic
	);
END practica2;

-- Design Ports Information
-- d1	=>  Location: PIN_38,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d2	=>  Location: PIN_39,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d4	=>  Location: PIN_43,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c	=>  Location: PIN_32,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d	=>  Location: PIN_33,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- e	=>  Location: PIN_44,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f	=>  Location: PIN_46,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- g	=>  Location: PIN_49,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d3	=>  Location: PIN_42,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a	=>  Location: PIN_30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b	=>  Location: PIN_31,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pin_name1	=>  Location: PIN_105,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sal_prueb[9]	=>  Location: PIN_58,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sal_prueb[8]	=>  Location: PIN_76,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sal_prueb[7]	=>  Location: PIN_66,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sal_prueb[6]	=>  Location: PIN_64,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sal_prueb[5]	=>  Location: PIN_60,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sal_prueb[4]	=>  Location: PIN_50,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sal_prueb[3]	=>  Location: PIN_54,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sal_prueb[2]	=>  Location: PIN_55,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sal_prueb[1]	=>  Location: PIN_53,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sal_prueb[0]	=>  Location: PIN_59,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst_clk	=>  Location: PIN_24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ec[0]	=>  Location: PIN_51,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ec[1]	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_91,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_74,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_d1 : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_ec : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_d2 : std_logic;
SIGNAL ww_d4 : std_logic;
SIGNAL ww_c : std_logic;
SIGNAL ww_d : std_logic;
SIGNAL ww_e : std_logic;
SIGNAL ww_f : std_logic;
SIGNAL ww_g : std_logic;
SIGNAL ww_d3 : std_logic;
SIGNAL ww_a : std_logic;
SIGNAL ww_b : std_logic;
SIGNAL ww_pin_name1 : std_logic;
SIGNAL ww_sal_prueb : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_rst_clk : std_logic;
SIGNAL \inst|fec|salida~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|Equal0~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rst_clk~input_o\ : std_logic;
SIGNAL \d1~output_o\ : std_logic;
SIGNAL \d2~output_o\ : std_logic;
SIGNAL \d4~output_o\ : std_logic;
SIGNAL \c~output_o\ : std_logic;
SIGNAL \d~output_o\ : std_logic;
SIGNAL \e~output_o\ : std_logic;
SIGNAL \f~output_o\ : std_logic;
SIGNAL \g~output_o\ : std_logic;
SIGNAL \d3~output_o\ : std_logic;
SIGNAL \a~output_o\ : std_logic;
SIGNAL \b~output_o\ : std_logic;
SIGNAL \pin_name1~output_o\ : std_logic;
SIGNAL \sal_prueb[9]~output_o\ : std_logic;
SIGNAL \sal_prueb[8]~output_o\ : std_logic;
SIGNAL \sal_prueb[7]~output_o\ : std_logic;
SIGNAL \sal_prueb[6]~output_o\ : std_logic;
SIGNAL \sal_prueb[5]~output_o\ : std_logic;
SIGNAL \sal_prueb[4]~output_o\ : std_logic;
SIGNAL \sal_prueb[3]~output_o\ : std_logic;
SIGNAL \sal_prueb[2]~output_o\ : std_logic;
SIGNAL \sal_prueb[1]~output_o\ : std_logic;
SIGNAL \sal_prueb[0]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst|fec|Add0~0_combout\ : std_logic;
SIGNAL \inst|fec|Add0~1\ : std_logic;
SIGNAL \inst|fec|Add0~2_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \inst|fec|Add0~3\ : std_logic;
SIGNAL \inst|fec|Add0~4_combout\ : std_logic;
SIGNAL \inst|fec|Add0~5\ : std_logic;
SIGNAL \inst|fec|Add0~6_combout\ : std_logic;
SIGNAL \inst|fec|Add0~7\ : std_logic;
SIGNAL \inst|fec|Add0~8_combout\ : std_logic;
SIGNAL \inst|fec|Add0~9\ : std_logic;
SIGNAL \inst|fec|Add0~10_combout\ : std_logic;
SIGNAL \inst|fec|Add0~11\ : std_logic;
SIGNAL \inst|fec|Add0~12_combout\ : std_logic;
SIGNAL \inst|fec|Add0~13\ : std_logic;
SIGNAL \inst|fec|Add0~14_combout\ : std_logic;
SIGNAL \inst|fec|cuenta~4_combout\ : std_logic;
SIGNAL \inst|fec|Add0~15\ : std_logic;
SIGNAL \inst|fec|Add0~16_combout\ : std_logic;
SIGNAL \inst|fec|Add0~17\ : std_logic;
SIGNAL \inst|fec|Add0~18_combout\ : std_logic;
SIGNAL \inst|fec|Add0~19\ : std_logic;
SIGNAL \inst|fec|Add0~20_combout\ : std_logic;
SIGNAL \inst|fec|Add0~21\ : std_logic;
SIGNAL \inst|fec|Add0~22_combout\ : std_logic;
SIGNAL \inst|fec|cuenta~3_combout\ : std_logic;
SIGNAL \inst|fec|Add0~23\ : std_logic;
SIGNAL \inst|fec|Add0~24_combout\ : std_logic;
SIGNAL \inst|fec|cuenta~2_combout\ : std_logic;
SIGNAL \inst|fec|Add0~25\ : std_logic;
SIGNAL \inst|fec|Add0~26_combout\ : std_logic;
SIGNAL \inst|fec|cuenta~1_combout\ : std_logic;
SIGNAL \inst|fec|Equal0~3_combout\ : std_logic;
SIGNAL \inst|fec|Add0~27\ : std_logic;
SIGNAL \inst|fec|Add0~28_combout\ : std_logic;
SIGNAL \inst|fec|Add0~29\ : std_logic;
SIGNAL \inst|fec|Add0~30_combout\ : std_logic;
SIGNAL \inst|fec|Add0~31\ : std_logic;
SIGNAL \inst|fec|Add0~32_combout\ : std_logic;
SIGNAL \inst|fec|cuenta~0_combout\ : std_logic;
SIGNAL \inst|fec|Add0~33\ : std_logic;
SIGNAL \inst|fec|Add0~34_combout\ : std_logic;
SIGNAL \inst|fec|Add0~35\ : std_logic;
SIGNAL \inst|fec|Add0~36_combout\ : std_logic;
SIGNAL \inst|fec|Add0~37\ : std_logic;
SIGNAL \inst|fec|Add0~38_combout\ : std_logic;
SIGNAL \inst|fec|Add0~39\ : std_logic;
SIGNAL \inst|fec|Add0~40_combout\ : std_logic;
SIGNAL \inst|fec|Add0~41\ : std_logic;
SIGNAL \inst|fec|Add0~42_combout\ : std_logic;
SIGNAL \inst|fec|Add0~43\ : std_logic;
SIGNAL \inst|fec|Add0~44_combout\ : std_logic;
SIGNAL \inst|fec|Add0~45\ : std_logic;
SIGNAL \inst|fec|Add0~46_combout\ : std_logic;
SIGNAL \inst|fec|Add0~47\ : std_logic;
SIGNAL \inst|fec|Add0~48_combout\ : std_logic;
SIGNAL \inst|fec|Add0~49\ : std_logic;
SIGNAL \inst|fec|Add0~50_combout\ : std_logic;
SIGNAL \inst|fec|Equal0~0_combout\ : std_logic;
SIGNAL \inst|fec|Equal0~2_combout\ : std_logic;
SIGNAL \inst|fec|Equal0~1_combout\ : std_logic;
SIGNAL \inst|fec|Equal0~4_combout\ : std_logic;
SIGNAL \inst|fec|cuenta~5_combout\ : std_logic;
SIGNAL \inst|fec|Equal0~6_combout\ : std_logic;
SIGNAL \inst|fec|Equal0~5_combout\ : std_logic;
SIGNAL \inst|fec|Equal0~7_combout\ : std_logic;
SIGNAL \inst|fec|salida~0_combout\ : std_logic;
SIGNAL \inst|fec|salida~feeder_combout\ : std_logic;
SIGNAL \inst|fec|salida~q\ : std_logic;
SIGNAL \inst|fec|salida~clkctrl_outclk\ : std_logic;
SIGNAL \inst|disp|contador[0]~1_combout\ : std_logic;
SIGNAL \inst|disp|contador[1]~0_combout\ : std_logic;
SIGNAL \inst|disp|Mux3~0_combout\ : std_logic;
SIGNAL \inst|disp|Mux1~0_combout\ : std_logic;
SIGNAL \inst|disp|Mux1~1_combout\ : std_logic;
SIGNAL \inst|addr[2]~1_combout\ : std_logic;
SIGNAL \inst|addr[1]~0_combout\ : std_logic;
SIGNAL \inst|addr[3]~2_combout\ : std_logic;
SIGNAL \inst|addr[0]~3_combout\ : std_logic;
SIGNAL \inst|Equal0~0_combout\ : std_logic;
SIGNAL \inst|Equal0~0clkctrl_outclk\ : std_logic;
SIGNAL \ec[0]~input_o\ : std_logic;
SIGNAL \ec[1]~input_o\ : std_logic;
SIGNAL \inst|Mux25~0_combout\ : std_logic;
SIGNAL \inst|Mux211~4_combout\ : std_logic;
SIGNAL \inst|Mux211~2_combout\ : std_logic;
SIGNAL \inst|Mux178~0_combout\ : std_logic;
SIGNAL \inst|Mux211~3_combout\ : std_logic;
SIGNAL \inst|Mux211~11_combout\ : std_logic;
SIGNAL \inst|Mux211~7_combout\ : std_logic;
SIGNAL \inst|Mux211~6_combout\ : std_logic;
SIGNAL \inst|Mux211~9_combout\ : std_logic;
SIGNAL \inst|Mux211~5_combout\ : std_logic;
SIGNAL \inst|Mux211~8_combout\ : std_logic;
SIGNAL \inst|Mux211~10_combout\ : std_logic;
SIGNAL \inst|Mux212~4_combout\ : std_logic;
SIGNAL \inst|Mux26~0_combout\ : std_logic;
SIGNAL \inst|Mux212~5_combout\ : std_logic;
SIGNAL \inst|Mux212~2_combout\ : std_logic;
SIGNAL \inst|Mux212~3_combout\ : std_logic;
SIGNAL \inst|MREG[1]~0_combout\ : std_logic;
SIGNAL \inst|Mux212~6_combout\ : std_logic;
SIGNAL \inst|Mux212~7_combout\ : std_logic;
SIGNAL \inst|Mux212~8_combout\ : std_logic;
SIGNAL \inst|MREG[22]~15_combout\ : std_logic;
SIGNAL \inst|registro[4][9]~22_combout\ : std_logic;
SIGNAL \inst|registro[4][6]~11_combout\ : std_logic;
SIGNAL \inst|registro[4][6]~12_combout\ : std_logic;
SIGNAL \inst|registro[4][9]~q\ : std_logic;
SIGNAL \inst|Mux14~1_combout\ : std_logic;
SIGNAL \inst|registro[3][9]~20_combout\ : std_logic;
SIGNAL \inst|Mux210~0_combout\ : std_logic;
SIGNAL \inst|Mux157~0_combout\ : std_logic;
SIGNAL \inst|registro[3][7]~15_combout\ : std_logic;
SIGNAL \inst|registro[3][9]~q\ : std_logic;
SIGNAL \inst|registro[5][9]~19_combout\ : std_logic;
SIGNAL \inst|MREG[22]~34_combout\ : std_logic;
SIGNAL \inst|registro[5][6]~14_combout\ : std_logic;
SIGNAL \inst|registro[5][9]~q\ : std_logic;
SIGNAL \inst|Mux14~0_combout\ : std_logic;
SIGNAL \inst|MREG[22]~14_combout\ : std_logic;
SIGNAL \inst|Mux190~0_combout\ : std_logic;
SIGNAL \inst|Mux190~1_combout\ : std_logic;
SIGNAL \inst|registro[2][9]~21_combout\ : std_logic;
SIGNAL \inst|registro[2][3]~10_combout\ : std_logic;
SIGNAL \inst|registro[2][3]~13_combout\ : std_logic;
SIGNAL \inst|registro[2][9]~q\ : std_logic;
SIGNAL \inst|MREG[23]~6_combout\ : std_logic;
SIGNAL \inst|registro[1][9]~23_combout\ : std_logic;
SIGNAL \inst|registro[1][7]~16_combout\ : std_logic;
SIGNAL \inst|registro[1][9]~q\ : std_logic;
SIGNAL \inst|MREG[9]~16_combout\ : std_logic;
SIGNAL \inst|MREG[9]~35_combout\ : std_logic;
SIGNAL \inst|MREG[22]~17_combout\ : std_logic;
SIGNAL \inst|MREG[9]~20_combout\ : std_logic;
SIGNAL \inst|MREG[9]~18_combout\ : std_logic;
SIGNAL \inst|MREG[9]~19_combout\ : std_logic;
SIGNAL \inst|MREG[9]~21_combout\ : std_logic;
SIGNAL \inst|MREG[9]~33_combout\ : std_logic;
SIGNAL \inst|MREG[9]~32_combout\ : std_logic;
SIGNAL \inst|Mux200~0_combout\ : std_logic;
SIGNAL \inst|Mux200~1_combout\ : std_logic;
SIGNAL \inst|Mux200~2_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|salida~2_combout\ : std_logic;
SIGNAL \inst|Mux213~1_combout\ : std_logic;
SIGNAL \inst|Mux213~2_combout\ : std_logic;
SIGNAL \inst|Mux213~3_combout\ : std_logic;
SIGNAL \inst|Mux213~5_combout\ : std_logic;
SIGNAL \inst|Mux213~4_combout\ : std_logic;
SIGNAL \inst|Mux213~0_combout\ : std_logic;
SIGNAL \inst|Mux213~6_combout\ : std_logic;
SIGNAL \inst|Mux210~1_combout\ : std_logic;
SIGNAL \inst|Mux210~3_combout\ : std_logic;
SIGNAL \inst|Mux210~4_combout\ : std_logic;
SIGNAL \inst|Mux210~2_combout\ : std_logic;
SIGNAL \inst|Mux210~5_combout\ : std_logic;
SIGNAL \inst|Mux178~1_combout\ : std_logic;
SIGNAL \inst|Mux96~0_combout\ : std_logic;
SIGNAL \inst|Mux210~6_combout\ : std_logic;
SIGNAL \inst|alu1|Mux1~4_combout\ : std_logic;
SIGNAL \inst|alu1|Mux3~15_combout\ : std_logic;
SIGNAL \inst|registro[3][8]~q\ : std_logic;
SIGNAL \inst|registro[5][8]~q\ : std_logic;
SIGNAL \inst|Mux15~0_combout\ : std_logic;
SIGNAL \inst|Mux201~0_combout\ : std_logic;
SIGNAL \inst|registro[4][8]~q\ : std_logic;
SIGNAL \inst|Mux15~1_combout\ : std_logic;
SIGNAL \inst|Mux201~1_combout\ : std_logic;
SIGNAL \inst|Mux201~2_combout\ : std_logic;
SIGNAL \inst|alu1|Mux10~0_combout\ : std_logic;
SIGNAL \inst|alu1|Mux11~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|salida~4_combout\ : std_logic;
SIGNAL \inst|alu1|Mux3~8_combout\ : std_logic;
SIGNAL \inst|Mux18~0_combout\ : std_logic;
SIGNAL \inst|registro[5][5]~q\ : std_logic;
SIGNAL \inst|Mux18~1_combout\ : std_logic;
SIGNAL \inst|registro[2][5]~q\ : std_logic;
SIGNAL \inst|Mux204~0_combout\ : std_logic;
SIGNAL \inst|registro[3][5]~q\ : std_logic;
SIGNAL \inst|Mux204~1_combout\ : std_logic;
SIGNAL \inst|Mux204~2_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|salida~13_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|salida~14_combout\ : std_logic;
SIGNAL \inst|Mux40~0_combout\ : std_logic;
SIGNAL \inst|Mux157~1_combout\ : std_logic;
SIGNAL \inst|Mux154~0_combout\ : std_logic;
SIGNAL \inst|Mux1~0_combout\ : std_logic;
SIGNAL \inst|Mux72~2_combout\ : std_logic;
SIGNAL \inst|Mux186~0_combout\ : std_logic;
SIGNAL \inst|Mux186~1_combout\ : std_logic;
SIGNAL \inst|Mux187~1_combout\ : std_logic;
SIGNAL \inst|Mux187~4_combout\ : std_logic;
SIGNAL \inst|Mux187~5_combout\ : std_logic;
SIGNAL \inst|addr2[2]~feeder_combout\ : std_logic;
SIGNAL \inst|Mux187~0_combout\ : std_logic;
SIGNAL \inst|Mux187~2_combout\ : std_logic;
SIGNAL \inst|Mux187~3_combout\ : std_logic;
SIGNAL \inst|Mux3~2_combout\ : std_logic;
SIGNAL \inst|Mux74~0_combout\ : std_logic;
SIGNAL \inst|Mux188~0_combout\ : std_logic;
SIGNAL \inst|Mux42~4_combout\ : std_logic;
SIGNAL \inst|Mux156~0_combout\ : std_logic;
SIGNAL \inst|Mux188~1_combout\ : std_logic;
SIGNAL \inst|Mux157~2_combout\ : std_logic;
SIGNAL \inst|Mux43~2_combout\ : std_logic;
SIGNAL \inst|addr2[0]~0_combout\ : std_logic;
SIGNAL \inst|Mux75~0_combout\ : std_logic;
SIGNAL \inst|val2|codigos~18_combout\ : std_logic;
SIGNAL \inst|MREG[8]~36_combout\ : std_logic;
SIGNAL \inst|MREG[8]~29_combout\ : std_logic;
SIGNAL \inst|registro[2][3]~q\ : std_logic;
SIGNAL \inst|MREG[8]~31_combout\ : std_logic;
SIGNAL \inst|registro[3][3]~q\ : std_logic;
SIGNAL \inst|MREG[8]~30_combout\ : std_logic;
SIGNAL \inst|Mux206~1_combout\ : std_logic;
SIGNAL \inst|registro[4][2]~17_combout\ : std_logic;
SIGNAL \inst|registro[4][2]~18_combout\ : std_logic;
SIGNAL \inst|registro[4][3]~q\ : std_logic;
SIGNAL \inst|Mux206~0_combout\ : std_logic;
SIGNAL \inst|Mux206~2_combout\ : std_logic;
SIGNAL \inst|Mux206~3_combout\ : std_logic;
SIGNAL \inst|MREG[8]~27_combout\ : std_logic;
SIGNAL \inst|MREG[8]~26_combout\ : std_logic;
SIGNAL \inst|MREG[8]~25_combout\ : std_logic;
SIGNAL \inst|MREG[8]~28_combout\ : std_logic;
SIGNAL \inst|val2|codigos~15_combout\ : std_logic;
SIGNAL \inst|registro[2][0]~q\ : std_logic;
SIGNAL \inst|registro[3][0]~q\ : std_logic;
SIGNAL \inst|Mux209~1_combout\ : std_logic;
SIGNAL \inst|registro[4][0]~q\ : std_logic;
SIGNAL \inst|Mux209~0_combout\ : std_logic;
SIGNAL \inst|registro[5][0]~feeder_combout\ : std_logic;
SIGNAL \inst|registro[5][0]~q\ : std_logic;
SIGNAL \inst|Mux209~2_combout\ : std_logic;
SIGNAL \inst|Mux209~3_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|salida~27_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|salida~26_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|aux[0]~27_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|salida~28_combout\ : std_logic;
SIGNAL \inst|alu1|Mux9~0_combout\ : std_logic;
SIGNAL \inst|alu1|Mux0~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~8_combout\ : std_logic;
SIGNAL \inst|alu1|Mux9~1_combout\ : std_logic;
SIGNAL \inst|registro[3][7]~q\ : std_logic;
SIGNAL \inst|registro[2][7]~q\ : std_logic;
SIGNAL \inst|Mux202~0_combout\ : std_logic;
SIGNAL \inst|registro[4][7]~q\ : std_logic;
SIGNAL \inst|Mux16~0_combout\ : std_logic;
SIGNAL \inst|Mux202~1_combout\ : std_logic;
SIGNAL \inst|Mux202~2_combout\ : std_logic;
SIGNAL \inst|registro[3][6]~q\ : std_logic;
SIGNAL \inst|Mux203~0_combout\ : std_logic;
SIGNAL \inst|registro[4][6]~q\ : std_logic;
SIGNAL \inst|Mux17~0_combout\ : std_logic;
SIGNAL \inst|registro[5][6]~q\ : std_logic;
SIGNAL \inst|Mux17~1_combout\ : std_logic;
SIGNAL \inst|Mux203~1_combout\ : std_logic;
SIGNAL \inst|Mux203~2_combout\ : std_logic;
SIGNAL \inst|registro[4][4]~q\ : std_logic;
SIGNAL \inst|Mux205~0_combout\ : std_logic;
SIGNAL \inst|registro[5][4]~q\ : std_logic;
SIGNAL \inst|registro[2][4]~q\ : std_logic;
SIGNAL \inst|registro[3][4]~q\ : std_logic;
SIGNAL \inst|Mux205~1_combout\ : std_logic;
SIGNAL \inst|Mux205~2_combout\ : std_logic;
SIGNAL \inst|val2|codigos~19_combout\ : std_logic;
SIGNAL \inst|Mux205~3_combout\ : std_logic;
SIGNAL \inst|registro[2][2]~feeder_combout\ : std_logic;
SIGNAL \inst|registro[2][2]~q\ : std_logic;
SIGNAL \inst|registro[3][2]~q\ : std_logic;
SIGNAL \inst|Mux207~1_combout\ : std_logic;
SIGNAL \inst|registro[5][2]~q\ : std_logic;
SIGNAL \inst|registro[4][2]~q\ : std_logic;
SIGNAL \inst|Mux207~0_combout\ : std_logic;
SIGNAL \inst|Mux207~2_combout\ : std_logic;
SIGNAL \inst|val2|codigos~17_combout\ : std_logic;
SIGNAL \inst|Mux207~3_combout\ : std_logic;
SIGNAL \inst|registro[1][1]~feeder_combout\ : std_logic;
SIGNAL \inst|registro[1][1]~q\ : std_logic;
SIGNAL \inst|MREG[15]~24_combout\ : std_logic;
SIGNAL \inst|MREG[15]~22_combout\ : std_logic;
SIGNAL \inst|MREG[15]~23_combout\ : std_logic;
SIGNAL \inst|registro[2][1]~q\ : std_logic;
SIGNAL \inst|Mux198~0_combout\ : std_logic;
SIGNAL \inst|registro[5][1]~q\ : std_logic;
SIGNAL \inst|registro[3][1]~q\ : std_logic;
SIGNAL \inst|Mux198~1_combout\ : std_logic;
SIGNAL \inst|Mux198~2_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|resta|s1|Suma~combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi1|s1|Suma~combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~7_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~10_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~11_combout\ : std_logic;
SIGNAL \inst|alu1|Mux8~3_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|s1|Suma~combout\ : std_logic;
SIGNAL \inst|alu1|Mux8~1_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan0~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add0~1\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add0~3\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add0~5\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add0~7\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add0~9\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add0~10_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan0~1_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add0~15_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add0~8_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add0~16_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add0~6_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add0~17_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add0~4_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add0~18_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add0~2_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add0~19_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan0~2_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add0~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add0~20_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add1~1\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add1~3\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add1~5\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add1~7\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add1~9\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add1~11\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add1~12_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add0~11\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add0~12_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add0~14_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan1~1_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan1~3_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan1~5_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan1~7_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan1~9_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan1~11_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan1~13_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan1~14_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add1~14_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add1~10_combout\ : std_logic;
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
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan2~1_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan2~3_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan2~5_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan2~7_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan2~9_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan2~11_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan2~13_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan2~14_combout\ : std_logic;
SIGNAL \inst|alu1|Mux8~2_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|salida~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|aux[1]~9_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|Equal1~4_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|salida~24_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|salida~25_combout\ : std_logic;
SIGNAL \inst|alu1|Mux6~11_combout\ : std_logic;
SIGNAL \inst|alu1|barrel_shifters|aux[1]~feeder_combout\ : std_logic;
SIGNAL \inst|alu1|Mux3~7_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi1|s1|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi1|s2|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi1|s3|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi1|s4|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi1|s5|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi1|s4|Suma~combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi2|s2|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi1|s3|Suma~combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi2|s3|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi2|s4|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi1|s5|Suma~combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi2|s5|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi2|s6|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi2|s5|Suma~combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi2|s4|Suma~combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi2|s3|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi3|s3|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi3|s4|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi3|s5|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi2|s6|Suma~combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi3|s6|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi3|s7|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi3|s7|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi3|s5|Suma~combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi4|s4|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi4|s5|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi3|s6|Suma~combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi4|s6|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi4|s7|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi4|s8|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|Mux3~14_combout\ : std_logic;
SIGNAL \inst|alu1|Mux6~4_combout\ : std_logic;
SIGNAL \inst|alu1|Mux8~0_combout\ : std_logic;
SIGNAL \inst|alu1|Mux8~4_combout\ : std_logic;
SIGNAL \inst|registro[4][1]~q\ : std_logic;
SIGNAL \inst|Mux208~0_combout\ : std_logic;
SIGNAL \inst|Mux208~1_combout\ : std_logic;
SIGNAL \inst|Mux208~2_combout\ : std_logic;
SIGNAL \inst|val2|codigos~16_combout\ : std_logic;
SIGNAL \inst|Mux208~3_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|resta|s1|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|resta|s2|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|resta|s3|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|resta|s4|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|resta|s5|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|resta|s6|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|resta|s7|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|Mux9~4_combout\ : std_logic;
SIGNAL \inst|alu1|Mux9~2_combout\ : std_logic;
SIGNAL \inst|alu1|Mux9~3_combout\ : std_logic;
SIGNAL \inst|alu1|Mux9~4_combout\ : std_logic;
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
SIGNAL \inst|alu1|Mux9~5_combout\ : std_logic;
SIGNAL \inst|alu1|Mux9~6_combout\ : std_logic;
SIGNAL \inst|alu1|Mux9~7_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|Mux9~5_combout\ : std_logic;
SIGNAL \inst|alu1|Mux9~8_combout\ : std_logic;
SIGNAL \inst|alu1|Mux9~9_combout\ : std_logic;
SIGNAL \inst|alu1|Mux9~10_combout\ : std_logic;
SIGNAL \inst|alu1|Mux9~11_combout\ : std_logic;
SIGNAL \inst|registro[1][0]~q\ : std_logic;
SIGNAL \inst|Mux199~0_combout\ : std_logic;
SIGNAL \inst|Mux199~1_combout\ : std_logic;
SIGNAL \inst|MREG[14]~2_combout\ : std_logic;
SIGNAL \inst|Mux70~0_combout\ : std_logic;
SIGNAL \inst|Mux152~0_combout\ : std_logic;
SIGNAL \inst|addr1[1]~0_combout\ : std_logic;
SIGNAL \inst|Mux38~2_combout\ : std_logic;
SIGNAL \inst|Mux185~0_combout\ : std_logic;
SIGNAL \inst|Mux185~1_combout\ : std_logic;
SIGNAL \inst|Mux69~0_combout\ : std_logic;
SIGNAL \inst|Mux183~0_combout\ : std_logic;
SIGNAL \inst|Mux199~2_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|s1|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|Mux7~1_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi2|s2|Suma~combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|resta|s2|Suma~combout\ : std_logic;
SIGNAL \inst|alu1|Mux7~2_combout\ : std_logic;
SIGNAL \inst|alu1|Mux7~3_combout\ : std_logic;
SIGNAL \inst|alu1|Mux7~4_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~6_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~12\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~13_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|salida~22_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|aux[1]~10\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|aux[2]~11_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|salida~21_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|salida~23_combout\ : std_logic;
SIGNAL \inst|alu1|Mux7~0_combout\ : std_logic;
SIGNAL \inst|alu1|Mux7~5_combout\ : std_logic;
SIGNAL \inst|registro[1][2]~q\ : std_logic;
SIGNAL \inst|Mux197~0_combout\ : std_logic;
SIGNAL \inst|Mux197~1_combout\ : std_logic;
SIGNAL \inst|MREG[16]~1_combout\ : std_logic;
SIGNAL \inst|Mux197~2_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|s2|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|Mux6~6_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi3|s3|Suma~combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|resta|s3|Suma~combout\ : std_logic;
SIGNAL \inst|alu1|Mux6~7_combout\ : std_logic;
SIGNAL \inst|alu1|Mux6~8_combout\ : std_logic;
SIGNAL \inst|alu1|Mux6~9_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|aux[2]~12\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|aux[3]~13_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|salida~19_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|salida~20_combout\ : std_logic;
SIGNAL \inst|alu1|Mux6~5_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~5_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~14\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~15_combout\ : std_logic;
SIGNAL \inst|alu1|Mux6~10_combout\ : std_logic;
SIGNAL \inst|registro[5][3]~q\ : std_logic;
SIGNAL \inst|Mux196~0_combout\ : std_logic;
SIGNAL \inst|Mux196~1_combout\ : std_logic;
SIGNAL \inst|registro[1][3]~q\ : std_logic;
SIGNAL \inst|Mux196~2_combout\ : std_logic;
SIGNAL \inst|alu1|barrel_shifters|aux[4]~feeder_combout\ : std_logic;
SIGNAL \inst|alu1|Mux5~3_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|aux[3]~14\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|aux[4]~15_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|salida~17_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|salida~16_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|salida~18_combout\ : std_logic;
SIGNAL \inst|alu1|Mux5~2_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi4|s4|Suma~combout\ : std_logic;
SIGNAL \inst|alu1|Mux3~5_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|resta|s4|Suma~combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~4_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~16\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~17_combout\ : std_logic;
SIGNAL \inst|alu1|Mux3~6_combout\ : std_logic;
SIGNAL \inst|alu1|Mux5~0_combout\ : std_logic;
SIGNAL \inst|alu1|Mux3~4_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|s3|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|s4|Suma~combout\ : std_logic;
SIGNAL \inst|alu1|Mux5~1_combout\ : std_logic;
SIGNAL \inst|alu1|Mux5~4_combout\ : std_logic;
SIGNAL \inst|registro[1][4]~q\ : std_logic;
SIGNAL \inst|Mux195~0_combout\ : std_logic;
SIGNAL \inst|Mux195~1_combout\ : std_logic;
SIGNAL \inst|Mux195~2_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|aux[4]~16\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|aux[5]~17_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|salida~15_combout\ : std_logic;
SIGNAL \inst|alu1|Mux4~2_combout\ : std_logic;
SIGNAL \inst|alu1|Mux4~3_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|s4|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|s5|Suma~combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|resta|s5|Suma~combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi4|s5|Suma~combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~3_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~18\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~19_combout\ : std_logic;
SIGNAL \inst|alu1|Mux4~0_combout\ : std_logic;
SIGNAL \inst|alu1|Mux4~1_combout\ : std_logic;
SIGNAL \inst|alu1|Mux4~4_combout\ : std_logic;
SIGNAL \inst|registro[4][5]~q\ : std_logic;
SIGNAL \inst|Mux194~0_combout\ : std_logic;
SIGNAL \inst|Mux194~1_combout\ : std_logic;
SIGNAL \inst|MREG[19]~5_combout\ : std_logic;
SIGNAL \inst|registro[1][5]~q\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|aux[5]~18\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|aux[6]~19_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|salida~10_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|salida~11_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|salida~12_combout\ : std_logic;
SIGNAL \inst|alu1|Mux3~11_combout\ : std_logic;
SIGNAL \inst|alu1|Mux3~12_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|resta|s6|Suma~combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|s5|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|s6|Suma~combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi4|s6|Suma~combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~2_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~20\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~21_combout\ : std_logic;
SIGNAL \inst|alu1|Mux3~9_combout\ : std_logic;
SIGNAL \inst|alu1|Mux3~10_combout\ : std_logic;
SIGNAL \inst|alu1|Mux3~13_combout\ : std_logic;
SIGNAL \inst|registro[2][6]~q\ : std_logic;
SIGNAL \inst|Mux193~0_combout\ : std_logic;
SIGNAL \inst|Mux193~1_combout\ : std_logic;
SIGNAL \inst|MREG[20]~4_combout\ : std_logic;
SIGNAL \inst|registro[1][6]~q\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|aux[6]~20\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|aux[7]~21_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|salida~7_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|salida~8_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|salida~9_combout\ : std_logic;
SIGNAL \inst|alu1|Mux2~2_combout\ : std_logic;
SIGNAL \inst|alu1|Mux2~3_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|resta|s7|Suma~combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|s6|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|s7|Suma~combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi4|s7|Suma~combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~1_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~22\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~23_combout\ : std_logic;
SIGNAL \inst|alu1|Mux2~0_combout\ : std_logic;
SIGNAL \inst|alu1|Mux2~1_combout\ : std_logic;
SIGNAL \inst|alu1|Mux2~4_combout\ : std_logic;
SIGNAL \inst|registro[5][7]~q\ : std_logic;
SIGNAL \inst|Mux16~1_combout\ : std_logic;
SIGNAL \inst|Mux192~0_combout\ : std_logic;
SIGNAL \inst|Mux192~1_combout\ : std_logic;
SIGNAL \inst|MREG[21]~3_combout\ : std_logic;
SIGNAL \inst|registro[1][7]~q\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|aux[7]~22\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|aux[8]~23_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|salida~5_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|salida~6_combout\ : std_logic;
SIGNAL \inst|alu1|barrel_shifters|aux[8]~feeder_combout\ : std_logic;
SIGNAL \inst|alu1|Mux1~0_combout\ : std_logic;
SIGNAL \inst|alu1|Mux1~1_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|Mux1~1_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi4|s8|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~24\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~25_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|Mux1~2_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|Mux1~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|Mux1~3_combout\ : std_logic;
SIGNAL \inst|alu1|Mux1~2_combout\ : std_logic;
SIGNAL \inst|alu1|Mux1~3_combout\ : std_logic;
SIGNAL \inst|alu1|Mux1~5_combout\ : std_logic;
SIGNAL \inst|registro[2][8]~q\ : std_logic;
SIGNAL \inst|Mux191~0_combout\ : std_logic;
SIGNAL \inst|Mux191~1_combout\ : std_logic;
SIGNAL \inst|MREG[22]~7_combout\ : std_logic;
SIGNAL \inst|registro[1][8]~q\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|aux[8]~24\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|aux[9]~25_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|salida~1_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|salida~3_combout\ : std_logic;
SIGNAL \inst|alu1|Mux0~2_combout\ : std_logic;
SIGNAL \inst|alu1|barrel_shifters|aux[9]~feeder_combout\ : std_logic;
SIGNAL \inst|alu1|Mux0~1_combout\ : std_logic;
SIGNAL \inst|alu1|Mux0~3_combout\ : std_logic;
SIGNAL \inst|conv|digitos~18_combout\ : std_logic;
SIGNAL \inst|conv|digitos~1_combout\ : std_logic;
SIGNAL \inst|conv|digitos~0_combout\ : std_logic;
SIGNAL \inst|conv|digitos~2_combout\ : std_logic;
SIGNAL \inst|conv|digitos~17_combout\ : std_logic;
SIGNAL \inst|conv|digitos~16_combout\ : std_logic;
SIGNAL \inst|conv|digitos~3_combout\ : std_logic;
SIGNAL \inst|conv|digitos~5_combout\ : std_logic;
SIGNAL \inst|conv|digitos~4_combout\ : std_logic;
SIGNAL \inst|conv|digitos~15_combout\ : std_logic;
SIGNAL \inst|conv|digitos~19_combout\ : std_logic;
SIGNAL \inst|conv|digitos~20_combout\ : std_logic;
SIGNAL \inst|conv|digitos~21_combout\ : std_logic;
SIGNAL \inst|conv|digitos~6_combout\ : std_logic;
SIGNAL \inst|conv|digitos~7_combout\ : std_logic;
SIGNAL \inst|conv|digitos~8_combout\ : std_logic;
SIGNAL \inst|conv|digitos~22_combout\ : std_logic;
SIGNAL \inst|conv|digitos~23_combout\ : std_logic;
SIGNAL \inst|conv|digitos~25_combout\ : std_logic;
SIGNAL \inst|conv|digitos~24_combout\ : std_logic;
SIGNAL \inst|conv|digitos~11_combout\ : std_logic;
SIGNAL \inst|conv|digitos~9_combout\ : std_logic;
SIGNAL \inst|conv|digitos~10_combout\ : std_logic;
SIGNAL \inst|conv|digitos~26_combout\ : std_logic;
SIGNAL \inst|conv|s[6]~7_combout\ : std_logic;
SIGNAL \inst|conv|digitos~12_combout\ : std_logic;
SIGNAL \inst|conv|digitos~14_combout\ : std_logic;
SIGNAL \inst|conv|digitos~13_combout\ : std_logic;
SIGNAL \inst|conv|s[2]~5_combout\ : std_logic;
SIGNAL \inst|conv|LessThan3~0_combout\ : std_logic;
SIGNAL \inst|conv|LessThan9~0_combout\ : std_logic;
SIGNAL \inst|conv|digitos~27_combout\ : std_logic;
SIGNAL \inst|conv|s[10]~6_combout\ : std_logic;
SIGNAL \inst|disp|Mux5~2_combout\ : std_logic;
SIGNAL \inst|disp|Mux5~3_combout\ : std_logic;
SIGNAL \inst|conv|s[5]~4_combout\ : std_logic;
SIGNAL \inst|conv|s[1]~2_combout\ : std_logic;
SIGNAL \inst|conv|s[9]~3_combout\ : std_logic;
SIGNAL \inst|disp|Mux6~2_combout\ : std_logic;
SIGNAL \inst|disp|Mux6~3_combout\ : std_logic;
SIGNAL \inst|conv|s[7]~10_combout\ : std_logic;
SIGNAL \inst|conv|s[3]~8_combout\ : std_logic;
SIGNAL \inst|conv|s[11]~9_combout\ : std_logic;
SIGNAL \inst|disp|Mux4~2_combout\ : std_logic;
SIGNAL \inst|disp|Mux4~3_combout\ : std_logic;
SIGNAL \inst|conv|s[4]~0_combout\ : std_logic;
SIGNAL \inst|conv|s[8]~1_combout\ : std_logic;
SIGNAL \inst|conv|LessThan9~1_combout\ : std_logic;
SIGNAL \inst|disp|Mux7~0_combout\ : std_logic;
SIGNAL \inst|disp|Mux7~1_combout\ : std_logic;
SIGNAL \inst|disp|Mux12~0_combout\ : std_logic;
SIGNAL \inst|disp|Mux11~0_combout\ : std_logic;
SIGNAL \inst|disp|Mux10~0_combout\ : std_logic;
SIGNAL \inst|disp|Mux9~0_combout\ : std_logic;
SIGNAL \inst|disp|Mux8~0_combout\ : std_logic;
SIGNAL \inst|disp|Mux1~2_combout\ : std_logic;
SIGNAL \inst|disp|Mux14~0_combout\ : std_logic;
SIGNAL \inst|disp|Mux13~0_combout\ : std_logic;
SIGNAL \inst|MREG\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \inst|alu1|unidad_logica|aux\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \inst|alu1|unidad_aritmetica|mult|inter\ : std_logic_vector(24 DOWNTO 0);
SIGNAL \inst|addr1\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|addr2\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|disp|arreglo\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|alu1|barrel_shifters|salShifters\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst|disp|tmp\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|alu1|unidad_logica|salida\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst|disp|contador\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst|addr\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|alu1|barrel_shifters|aux\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst|fec|cuenta\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \inst|bcd_f\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst|alu1|ALT_INV_Mux0~3_combout\ : std_logic;
SIGNAL \inst|disp|ALT_INV_Mux8~0_combout\ : std_logic;
SIGNAL \ALT_INV_ec[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_ec[0]~input_o\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

d1 <= ww_d1;
ww_clk <= clk;
ww_rst <= rst;
ww_ec <= ec;
d2 <= ww_d2;
d4 <= ww_d4;
c <= ww_c;
d <= ww_d;
e <= ww_e;
f <= ww_f;
g <= ww_g;
d3 <= ww_d3;
a <= ww_a;
b <= ww_b;
pin_name1 <= ww_pin_name1;
sal_prueb <= ww_sal_prueb;
ww_rst_clk <= rst_clk;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst|fec|salida~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst|fec|salida~q\);

\inst|Equal0~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst|Equal0~0_combout\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\inst|alu1|ALT_INV_Mux0~3_combout\ <= NOT \inst|alu1|Mux0~3_combout\;
\inst|disp|ALT_INV_Mux8~0_combout\ <= NOT \inst|disp|Mux8~0_combout\;
\ALT_INV_ec[1]~input_o\ <= NOT \ec[1]~input_o\;
\ALT_INV_ec[0]~input_o\ <= NOT \ec[0]~input_o\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X1_Y0_N23
\d1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|disp|arreglo\(0),
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
	i => \inst|disp|arreglo\(1),
	devoe => ww_devoe,
	o => \d2~output_o\);

-- Location: IOOBUF_X5_Y0_N23
\d4~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|disp|arreglo\(3),
	devoe => ww_devoe,
	o => \d4~output_o\);

-- Location: IOOBUF_X0_Y6_N16
\c~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|disp|Mux12~0_combout\,
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
	i => \inst|disp|Mux11~0_combout\,
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
	i => \inst|disp|Mux10~0_combout\,
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
	i => \inst|disp|Mux9~0_combout\,
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
	i => \inst|disp|ALT_INV_Mux8~0_combout\,
	devoe => ww_devoe,
	o => \g~output_o\);

-- Location: IOOBUF_X3_Y0_N2
\d3~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|disp|arreglo\(2),
	devoe => ww_devoe,
	o => \d3~output_o\);

-- Location: IOOBUF_X0_Y8_N16
\a~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|disp|Mux14~0_combout\,
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
	i => \inst|disp|Mux13~0_combout\,
	devoe => ww_devoe,
	o => \b~output_o\);

-- Location: IOOBUF_X34_Y19_N16
\pin_name1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \pin_name1~output_o\);

-- Location: IOOBUF_X21_Y0_N9
\sal_prueb[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|alu1|ALT_INV_Mux0~3_combout\,
	devoe => ww_devoe,
	o => \sal_prueb[9]~output_o\);

-- Location: IOOBUF_X34_Y4_N23
\sal_prueb[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|alu1|Mux1~5_combout\,
	devoe => ww_devoe,
	o => \sal_prueb[8]~output_o\);

-- Location: IOOBUF_X28_Y0_N2
\sal_prueb[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|alu1|Mux2~4_combout\,
	devoe => ww_devoe,
	o => \sal_prueb[7]~output_o\);

-- Location: IOOBUF_X25_Y0_N2
\sal_prueb[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|alu1|Mux3~13_combout\,
	devoe => ww_devoe,
	o => \sal_prueb[6]~output_o\);

-- Location: IOOBUF_X23_Y0_N9
\sal_prueb[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|alu1|Mux4~4_combout\,
	devoe => ww_devoe,
	o => \sal_prueb[5]~output_o\);

-- Location: IOOBUF_X13_Y0_N2
\sal_prueb[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|alu1|Mux5~4_combout\,
	devoe => ww_devoe,
	o => \sal_prueb[4]~output_o\);

-- Location: IOOBUF_X18_Y0_N23
\sal_prueb[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|alu1|Mux6~10_combout\,
	devoe => ww_devoe,
	o => \sal_prueb[3]~output_o\);

-- Location: IOOBUF_X18_Y0_N16
\sal_prueb[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|alu1|Mux7~5_combout\,
	devoe => ww_devoe,
	o => \sal_prueb[2]~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\sal_prueb[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|alu1|Mux8~4_combout\,
	devoe => ww_devoe,
	o => \sal_prueb[1]~output_o\);

-- Location: IOOBUF_X23_Y0_N16
\sal_prueb[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|alu1|Mux9~11_combout\,
	devoe => ww_devoe,
	o => \sal_prueb[0]~output_o\);

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

-- Location: LCCOMB_X32_Y10_N6
\inst|fec|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|fec|Add0~0_combout\ = \inst|fec|cuenta\(0) $ (VCC)
-- \inst|fec|Add0~1\ = CARRY(\inst|fec|cuenta\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|fec|cuenta\(0),
	datad => VCC,
	combout => \inst|fec|Add0~0_combout\,
	cout => \inst|fec|Add0~1\);

-- Location: LCCOMB_X32_Y10_N8
\inst|fec|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|fec|Add0~2_combout\ = (\inst|fec|cuenta\(1) & (!\inst|fec|Add0~1\)) # (!\inst|fec|cuenta\(1) & ((\inst|fec|Add0~1\) # (GND)))
-- \inst|fec|Add0~3\ = CARRY((!\inst|fec|Add0~1\) # (!\inst|fec|cuenta\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|fec|cuenta\(1),
	datad => VCC,
	cin => \inst|fec|Add0~1\,
	combout => \inst|fec|Add0~2_combout\,
	cout => \inst|fec|Add0~3\);

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

-- Location: FF_X32_Y10_N9
\inst|fec|cuenta[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|fec|Add0~2_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|fec|cuenta\(1));

-- Location: LCCOMB_X32_Y10_N10
\inst|fec|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|fec|Add0~4_combout\ = (\inst|fec|cuenta\(2) & (\inst|fec|Add0~3\ $ (GND))) # (!\inst|fec|cuenta\(2) & (!\inst|fec|Add0~3\ & VCC))
-- \inst|fec|Add0~5\ = CARRY((\inst|fec|cuenta\(2) & !\inst|fec|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|fec|cuenta\(2),
	datad => VCC,
	cin => \inst|fec|Add0~3\,
	combout => \inst|fec|Add0~4_combout\,
	cout => \inst|fec|Add0~5\);

-- Location: FF_X32_Y10_N11
\inst|fec|cuenta[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|fec|Add0~4_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|fec|cuenta\(2));

-- Location: LCCOMB_X32_Y10_N12
\inst|fec|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|fec|Add0~6_combout\ = (\inst|fec|cuenta\(3) & (!\inst|fec|Add0~5\)) # (!\inst|fec|cuenta\(3) & ((\inst|fec|Add0~5\) # (GND)))
-- \inst|fec|Add0~7\ = CARRY((!\inst|fec|Add0~5\) # (!\inst|fec|cuenta\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|fec|cuenta\(3),
	datad => VCC,
	cin => \inst|fec|Add0~5\,
	combout => \inst|fec|Add0~6_combout\,
	cout => \inst|fec|Add0~7\);

-- Location: FF_X32_Y10_N13
\inst|fec|cuenta[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|fec|Add0~6_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|fec|cuenta\(3));

-- Location: LCCOMB_X32_Y10_N14
\inst|fec|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|fec|Add0~8_combout\ = (\inst|fec|cuenta\(4) & (\inst|fec|Add0~7\ $ (GND))) # (!\inst|fec|cuenta\(4) & (!\inst|fec|Add0~7\ & VCC))
-- \inst|fec|Add0~9\ = CARRY((\inst|fec|cuenta\(4) & !\inst|fec|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|fec|cuenta\(4),
	datad => VCC,
	cin => \inst|fec|Add0~7\,
	combout => \inst|fec|Add0~8_combout\,
	cout => \inst|fec|Add0~9\);

-- Location: FF_X32_Y10_N15
\inst|fec|cuenta[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|fec|Add0~8_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|fec|cuenta\(4));

-- Location: LCCOMB_X32_Y10_N16
\inst|fec|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|fec|Add0~10_combout\ = (\inst|fec|cuenta\(5) & (!\inst|fec|Add0~9\)) # (!\inst|fec|cuenta\(5) & ((\inst|fec|Add0~9\) # (GND)))
-- \inst|fec|Add0~11\ = CARRY((!\inst|fec|Add0~9\) # (!\inst|fec|cuenta\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|fec|cuenta\(5),
	datad => VCC,
	cin => \inst|fec|Add0~9\,
	combout => \inst|fec|Add0~10_combout\,
	cout => \inst|fec|Add0~11\);

-- Location: FF_X32_Y10_N17
\inst|fec|cuenta[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|fec|Add0~10_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|fec|cuenta\(5));

-- Location: LCCOMB_X32_Y10_N18
\inst|fec|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|fec|Add0~12_combout\ = (\inst|fec|cuenta\(6) & (\inst|fec|Add0~11\ $ (GND))) # (!\inst|fec|cuenta\(6) & (!\inst|fec|Add0~11\ & VCC))
-- \inst|fec|Add0~13\ = CARRY((\inst|fec|cuenta\(6) & !\inst|fec|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|fec|cuenta\(6),
	datad => VCC,
	cin => \inst|fec|Add0~11\,
	combout => \inst|fec|Add0~12_combout\,
	cout => \inst|fec|Add0~13\);

-- Location: FF_X32_Y10_N19
\inst|fec|cuenta[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|fec|Add0~12_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|fec|cuenta\(6));

-- Location: LCCOMB_X32_Y10_N20
\inst|fec|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|fec|Add0~14_combout\ = (\inst|fec|cuenta\(7) & (!\inst|fec|Add0~13\)) # (!\inst|fec|cuenta\(7) & ((\inst|fec|Add0~13\) # (GND)))
-- \inst|fec|Add0~15\ = CARRY((!\inst|fec|Add0~13\) # (!\inst|fec|cuenta\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|fec|cuenta\(7),
	datad => VCC,
	cin => \inst|fec|Add0~13\,
	combout => \inst|fec|Add0~14_combout\,
	cout => \inst|fec|Add0~15\);

-- Location: LCCOMB_X31_Y10_N22
\inst|fec|cuenta~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|fec|cuenta~4_combout\ = (\inst|fec|Add0~14_combout\ & ((!\inst|fec|Equal0~7_combout\) # (!\inst|fec|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|fec|Equal0~4_combout\,
	datac => \inst|fec|Add0~14_combout\,
	datad => \inst|fec|Equal0~7_combout\,
	combout => \inst|fec|cuenta~4_combout\);

-- Location: FF_X31_Y10_N23
\inst|fec|cuenta[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|fec|cuenta~4_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|fec|cuenta\(7));

-- Location: LCCOMB_X32_Y10_N22
\inst|fec|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|fec|Add0~16_combout\ = (\inst|fec|cuenta\(8) & (\inst|fec|Add0~15\ $ (GND))) # (!\inst|fec|cuenta\(8) & (!\inst|fec|Add0~15\ & VCC))
-- \inst|fec|Add0~17\ = CARRY((\inst|fec|cuenta\(8) & !\inst|fec|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|fec|cuenta\(8),
	datad => VCC,
	cin => \inst|fec|Add0~15\,
	combout => \inst|fec|Add0~16_combout\,
	cout => \inst|fec|Add0~17\);

-- Location: FF_X32_Y10_N23
\inst|fec|cuenta[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|fec|Add0~16_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|fec|cuenta\(8));

-- Location: LCCOMB_X32_Y10_N24
\inst|fec|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|fec|Add0~18_combout\ = (\inst|fec|cuenta\(9) & (!\inst|fec|Add0~17\)) # (!\inst|fec|cuenta\(9) & ((\inst|fec|Add0~17\) # (GND)))
-- \inst|fec|Add0~19\ = CARRY((!\inst|fec|Add0~17\) # (!\inst|fec|cuenta\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|fec|cuenta\(9),
	datad => VCC,
	cin => \inst|fec|Add0~17\,
	combout => \inst|fec|Add0~18_combout\,
	cout => \inst|fec|Add0~19\);

-- Location: FF_X32_Y10_N25
\inst|fec|cuenta[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|fec|Add0~18_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|fec|cuenta\(9));

-- Location: LCCOMB_X32_Y10_N26
\inst|fec|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|fec|Add0~20_combout\ = (\inst|fec|cuenta\(10) & (\inst|fec|Add0~19\ $ (GND))) # (!\inst|fec|cuenta\(10) & (!\inst|fec|Add0~19\ & VCC))
-- \inst|fec|Add0~21\ = CARRY((\inst|fec|cuenta\(10) & !\inst|fec|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|fec|cuenta\(10),
	datad => VCC,
	cin => \inst|fec|Add0~19\,
	combout => \inst|fec|Add0~20_combout\,
	cout => \inst|fec|Add0~21\);

-- Location: FF_X32_Y10_N27
\inst|fec|cuenta[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|fec|Add0~20_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|fec|cuenta\(10));

-- Location: LCCOMB_X32_Y10_N28
\inst|fec|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|fec|Add0~22_combout\ = (\inst|fec|cuenta\(11) & (!\inst|fec|Add0~21\)) # (!\inst|fec|cuenta\(11) & ((\inst|fec|Add0~21\) # (GND)))
-- \inst|fec|Add0~23\ = CARRY((!\inst|fec|Add0~21\) # (!\inst|fec|cuenta\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|fec|cuenta\(11),
	datad => VCC,
	cin => \inst|fec|Add0~21\,
	combout => \inst|fec|Add0~22_combout\,
	cout => \inst|fec|Add0~23\);

-- Location: LCCOMB_X32_Y10_N2
\inst|fec|cuenta~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|fec|cuenta~3_combout\ = (\inst|fec|Add0~22_combout\ & ((!\inst|fec|Equal0~4_combout\) # (!\inst|fec|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|fec|Equal0~7_combout\,
	datac => \inst|fec|Equal0~4_combout\,
	datad => \inst|fec|Add0~22_combout\,
	combout => \inst|fec|cuenta~3_combout\);

-- Location: FF_X32_Y10_N3
\inst|fec|cuenta[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|fec|cuenta~3_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|fec|cuenta\(11));

-- Location: LCCOMB_X32_Y10_N30
\inst|fec|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|fec|Add0~24_combout\ = (\inst|fec|cuenta\(12) & (\inst|fec|Add0~23\ $ (GND))) # (!\inst|fec|cuenta\(12) & (!\inst|fec|Add0~23\ & VCC))
-- \inst|fec|Add0~25\ = CARRY((\inst|fec|cuenta\(12) & !\inst|fec|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|fec|cuenta\(12),
	datad => VCC,
	cin => \inst|fec|Add0~23\,
	combout => \inst|fec|Add0~24_combout\,
	cout => \inst|fec|Add0~25\);

-- Location: LCCOMB_X32_Y10_N0
\inst|fec|cuenta~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|fec|cuenta~2_combout\ = (\inst|fec|Add0~24_combout\ & ((!\inst|fec|Equal0~4_combout\) # (!\inst|fec|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|fec|Equal0~7_combout\,
	datac => \inst|fec|Add0~24_combout\,
	datad => \inst|fec|Equal0~4_combout\,
	combout => \inst|fec|cuenta~2_combout\);

-- Location: FF_X32_Y10_N1
\inst|fec|cuenta[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|fec|cuenta~2_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|fec|cuenta\(12));

-- Location: LCCOMB_X32_Y9_N0
\inst|fec|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|fec|Add0~26_combout\ = (\inst|fec|cuenta\(13) & (!\inst|fec|Add0~25\)) # (!\inst|fec|cuenta\(13) & ((\inst|fec|Add0~25\) # (GND)))
-- \inst|fec|Add0~27\ = CARRY((!\inst|fec|Add0~25\) # (!\inst|fec|cuenta\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|fec|cuenta\(13),
	datad => VCC,
	cin => \inst|fec|Add0~25\,
	combout => \inst|fec|Add0~26_combout\,
	cout => \inst|fec|Add0~27\);

-- Location: LCCOMB_X32_Y9_N30
\inst|fec|cuenta~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|fec|cuenta~1_combout\ = (\inst|fec|Add0~26_combout\ & ((!\inst|fec|Equal0~4_combout\) # (!\inst|fec|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|fec|Equal0~7_combout\,
	datac => \inst|fec|Equal0~4_combout\,
	datad => \inst|fec|Add0~26_combout\,
	combout => \inst|fec|cuenta~1_combout\);

-- Location: FF_X32_Y9_N31
\inst|fec|cuenta[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|fec|cuenta~1_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|fec|cuenta\(13));

-- Location: LCCOMB_X31_Y10_N26
\inst|fec|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|fec|Equal0~3_combout\ = (\inst|fec|cuenta\(11) & (\inst|fec|cuenta\(12) & (\inst|fec|cuenta\(13) & !\inst|fec|cuenta\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|fec|cuenta\(11),
	datab => \inst|fec|cuenta\(12),
	datac => \inst|fec|cuenta\(13),
	datad => \inst|fec|cuenta\(10),
	combout => \inst|fec|Equal0~3_combout\);

-- Location: LCCOMB_X32_Y9_N2
\inst|fec|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|fec|Add0~28_combout\ = (\inst|fec|cuenta\(14) & (\inst|fec|Add0~27\ $ (GND))) # (!\inst|fec|cuenta\(14) & (!\inst|fec|Add0~27\ & VCC))
-- \inst|fec|Add0~29\ = CARRY((\inst|fec|cuenta\(14) & !\inst|fec|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|fec|cuenta\(14),
	datad => VCC,
	cin => \inst|fec|Add0~27\,
	combout => \inst|fec|Add0~28_combout\,
	cout => \inst|fec|Add0~29\);

-- Location: FF_X32_Y9_N3
\inst|fec|cuenta[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|fec|Add0~28_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|fec|cuenta\(14));

-- Location: LCCOMB_X32_Y9_N4
\inst|fec|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|fec|Add0~30_combout\ = (\inst|fec|cuenta\(15) & (!\inst|fec|Add0~29\)) # (!\inst|fec|cuenta\(15) & ((\inst|fec|Add0~29\) # (GND)))
-- \inst|fec|Add0~31\ = CARRY((!\inst|fec|Add0~29\) # (!\inst|fec|cuenta\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|fec|cuenta\(15),
	datad => VCC,
	cin => \inst|fec|Add0~29\,
	combout => \inst|fec|Add0~30_combout\,
	cout => \inst|fec|Add0~31\);

-- Location: FF_X32_Y9_N5
\inst|fec|cuenta[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|fec|Add0~30_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|fec|cuenta\(15));

-- Location: LCCOMB_X32_Y9_N6
\inst|fec|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|fec|Add0~32_combout\ = (\inst|fec|cuenta\(16) & (\inst|fec|Add0~31\ $ (GND))) # (!\inst|fec|cuenta\(16) & (!\inst|fec|Add0~31\ & VCC))
-- \inst|fec|Add0~33\ = CARRY((\inst|fec|cuenta\(16) & !\inst|fec|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|fec|cuenta\(16),
	datad => VCC,
	cin => \inst|fec|Add0~31\,
	combout => \inst|fec|Add0~32_combout\,
	cout => \inst|fec|Add0~33\);

-- Location: LCCOMB_X32_Y9_N26
\inst|fec|cuenta~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|fec|cuenta~0_combout\ = (\inst|fec|Add0~32_combout\ & ((!\inst|fec|Equal0~4_combout\) # (!\inst|fec|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|fec|Equal0~7_combout\,
	datac => \inst|fec|Equal0~4_combout\,
	datad => \inst|fec|Add0~32_combout\,
	combout => \inst|fec|cuenta~0_combout\);

-- Location: FF_X32_Y9_N27
\inst|fec|cuenta[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|fec|cuenta~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|fec|cuenta\(16));

-- Location: LCCOMB_X32_Y9_N8
\inst|fec|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|fec|Add0~34_combout\ = (\inst|fec|cuenta\(17) & (!\inst|fec|Add0~33\)) # (!\inst|fec|cuenta\(17) & ((\inst|fec|Add0~33\) # (GND)))
-- \inst|fec|Add0~35\ = CARRY((!\inst|fec|Add0~33\) # (!\inst|fec|cuenta\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|fec|cuenta\(17),
	datad => VCC,
	cin => \inst|fec|Add0~33\,
	combout => \inst|fec|Add0~34_combout\,
	cout => \inst|fec|Add0~35\);

-- Location: FF_X32_Y9_N9
\inst|fec|cuenta[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|fec|Add0~34_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|fec|cuenta\(17));

-- Location: LCCOMB_X32_Y9_N10
\inst|fec|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|fec|Add0~36_combout\ = (\inst|fec|cuenta\(18) & (\inst|fec|Add0~35\ $ (GND))) # (!\inst|fec|cuenta\(18) & (!\inst|fec|Add0~35\ & VCC))
-- \inst|fec|Add0~37\ = CARRY((\inst|fec|cuenta\(18) & !\inst|fec|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|fec|cuenta\(18),
	datad => VCC,
	cin => \inst|fec|Add0~35\,
	combout => \inst|fec|Add0~36_combout\,
	cout => \inst|fec|Add0~37\);

-- Location: FF_X32_Y9_N11
\inst|fec|cuenta[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|fec|Add0~36_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|fec|cuenta\(18));

-- Location: LCCOMB_X32_Y9_N12
\inst|fec|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|fec|Add0~38_combout\ = (\inst|fec|cuenta\(19) & (!\inst|fec|Add0~37\)) # (!\inst|fec|cuenta\(19) & ((\inst|fec|Add0~37\) # (GND)))
-- \inst|fec|Add0~39\ = CARRY((!\inst|fec|Add0~37\) # (!\inst|fec|cuenta\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|fec|cuenta\(19),
	datad => VCC,
	cin => \inst|fec|Add0~37\,
	combout => \inst|fec|Add0~38_combout\,
	cout => \inst|fec|Add0~39\);

-- Location: FF_X32_Y9_N13
\inst|fec|cuenta[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|fec|Add0~38_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|fec|cuenta\(19));

-- Location: LCCOMB_X32_Y9_N14
\inst|fec|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|fec|Add0~40_combout\ = (\inst|fec|cuenta\(20) & (\inst|fec|Add0~39\ $ (GND))) # (!\inst|fec|cuenta\(20) & (!\inst|fec|Add0~39\ & VCC))
-- \inst|fec|Add0~41\ = CARRY((\inst|fec|cuenta\(20) & !\inst|fec|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|fec|cuenta\(20),
	datad => VCC,
	cin => \inst|fec|Add0~39\,
	combout => \inst|fec|Add0~40_combout\,
	cout => \inst|fec|Add0~41\);

-- Location: FF_X32_Y9_N15
\inst|fec|cuenta[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|fec|Add0~40_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|fec|cuenta\(20));

-- Location: LCCOMB_X32_Y9_N16
\inst|fec|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|fec|Add0~42_combout\ = (\inst|fec|cuenta\(21) & (!\inst|fec|Add0~41\)) # (!\inst|fec|cuenta\(21) & ((\inst|fec|Add0~41\) # (GND)))
-- \inst|fec|Add0~43\ = CARRY((!\inst|fec|Add0~41\) # (!\inst|fec|cuenta\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|fec|cuenta\(21),
	datad => VCC,
	cin => \inst|fec|Add0~41\,
	combout => \inst|fec|Add0~42_combout\,
	cout => \inst|fec|Add0~43\);

-- Location: FF_X32_Y9_N17
\inst|fec|cuenta[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|fec|Add0~42_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|fec|cuenta\(21));

-- Location: LCCOMB_X32_Y9_N18
\inst|fec|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|fec|Add0~44_combout\ = (\inst|fec|cuenta\(22) & (\inst|fec|Add0~43\ $ (GND))) # (!\inst|fec|cuenta\(22) & (!\inst|fec|Add0~43\ & VCC))
-- \inst|fec|Add0~45\ = CARRY((\inst|fec|cuenta\(22) & !\inst|fec|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|fec|cuenta\(22),
	datad => VCC,
	cin => \inst|fec|Add0~43\,
	combout => \inst|fec|Add0~44_combout\,
	cout => \inst|fec|Add0~45\);

-- Location: FF_X32_Y9_N19
\inst|fec|cuenta[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|fec|Add0~44_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|fec|cuenta\(22));

-- Location: LCCOMB_X32_Y9_N20
\inst|fec|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|fec|Add0~46_combout\ = (\inst|fec|cuenta\(23) & (!\inst|fec|Add0~45\)) # (!\inst|fec|cuenta\(23) & ((\inst|fec|Add0~45\) # (GND)))
-- \inst|fec|Add0~47\ = CARRY((!\inst|fec|Add0~45\) # (!\inst|fec|cuenta\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|fec|cuenta\(23),
	datad => VCC,
	cin => \inst|fec|Add0~45\,
	combout => \inst|fec|Add0~46_combout\,
	cout => \inst|fec|Add0~47\);

-- Location: FF_X32_Y9_N21
\inst|fec|cuenta[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|fec|Add0~46_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|fec|cuenta\(23));

-- Location: LCCOMB_X32_Y9_N22
\inst|fec|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|fec|Add0~48_combout\ = (\inst|fec|cuenta\(24) & (\inst|fec|Add0~47\ $ (GND))) # (!\inst|fec|cuenta\(24) & (!\inst|fec|Add0~47\ & VCC))
-- \inst|fec|Add0~49\ = CARRY((\inst|fec|cuenta\(24) & !\inst|fec|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|fec|cuenta\(24),
	datad => VCC,
	cin => \inst|fec|Add0~47\,
	combout => \inst|fec|Add0~48_combout\,
	cout => \inst|fec|Add0~49\);

-- Location: FF_X32_Y9_N23
\inst|fec|cuenta[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|fec|Add0~48_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|fec|cuenta\(24));

-- Location: LCCOMB_X32_Y9_N24
\inst|fec|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|fec|Add0~50_combout\ = \inst|fec|Add0~49\ $ (\inst|fec|cuenta\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|fec|cuenta\(25),
	cin => \inst|fec|Add0~49\,
	combout => \inst|fec|Add0~50_combout\);

-- Location: FF_X32_Y9_N25
\inst|fec|cuenta[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|fec|Add0~50_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|fec|cuenta\(25));

-- Location: LCCOMB_X31_Y9_N0
\inst|fec|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|fec|Equal0~0_combout\ = (!\inst|fec|cuenta\(23) & (!\inst|fec|cuenta\(24) & (!\inst|fec|cuenta\(25) & !\inst|fec|cuenta\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|fec|cuenta\(23),
	datab => \inst|fec|cuenta\(24),
	datac => \inst|fec|cuenta\(25),
	datad => \inst|fec|cuenta\(22),
	combout => \inst|fec|Equal0~0_combout\);

-- Location: LCCOMB_X32_Y9_N28
\inst|fec|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|fec|Equal0~2_combout\ = (\inst|fec|cuenta\(16) & (!\inst|fec|cuenta\(15) & (!\inst|fec|cuenta\(17) & !\inst|fec|cuenta\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|fec|cuenta\(16),
	datab => \inst|fec|cuenta\(15),
	datac => \inst|fec|cuenta\(17),
	datad => \inst|fec|cuenta\(14),
	combout => \inst|fec|Equal0~2_combout\);

-- Location: LCCOMB_X31_Y9_N2
\inst|fec|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|fec|Equal0~1_combout\ = (!\inst|fec|cuenta\(21) & (!\inst|fec|cuenta\(20) & (!\inst|fec|cuenta\(19) & !\inst|fec|cuenta\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|fec|cuenta\(21),
	datab => \inst|fec|cuenta\(20),
	datac => \inst|fec|cuenta\(19),
	datad => \inst|fec|cuenta\(18),
	combout => \inst|fec|Equal0~1_combout\);

-- Location: LCCOMB_X31_Y10_N24
\inst|fec|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|fec|Equal0~4_combout\ = (\inst|fec|Equal0~3_combout\ & (\inst|fec|Equal0~0_combout\ & (\inst|fec|Equal0~2_combout\ & \inst|fec|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|fec|Equal0~3_combout\,
	datab => \inst|fec|Equal0~0_combout\,
	datac => \inst|fec|Equal0~2_combout\,
	datad => \inst|fec|Equal0~1_combout\,
	combout => \inst|fec|Equal0~4_combout\);

-- Location: LCCOMB_X32_Y10_N4
\inst|fec|cuenta~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|fec|cuenta~5_combout\ = (\inst|fec|Add0~0_combout\ & ((!\inst|fec|Equal0~4_combout\) # (!\inst|fec|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|fec|Add0~0_combout\,
	datab => \inst|fec|Equal0~7_combout\,
	datad => \inst|fec|Equal0~4_combout\,
	combout => \inst|fec|cuenta~5_combout\);

-- Location: FF_X32_Y10_N5
\inst|fec|cuenta[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|fec|cuenta~5_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|fec|cuenta\(0));

-- Location: LCCOMB_X31_Y10_N14
\inst|fec|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|fec|Equal0~6_combout\ = (!\inst|fec|cuenta\(2) & (!\inst|fec|cuenta\(3) & (!\inst|fec|cuenta\(4) & !\inst|fec|cuenta\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|fec|cuenta\(2),
	datab => \inst|fec|cuenta\(3),
	datac => \inst|fec|cuenta\(4),
	datad => \inst|fec|cuenta\(5),
	combout => \inst|fec|Equal0~6_combout\);

-- Location: LCCOMB_X31_Y10_N20
\inst|fec|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|fec|Equal0~5_combout\ = (\inst|fec|cuenta\(7) & (!\inst|fec|cuenta\(6) & (!\inst|fec|cuenta\(8) & !\inst|fec|cuenta\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|fec|cuenta\(7),
	datab => \inst|fec|cuenta\(6),
	datac => \inst|fec|cuenta\(8),
	datad => \inst|fec|cuenta\(9),
	combout => \inst|fec|Equal0~5_combout\);

-- Location: LCCOMB_X31_Y10_N28
\inst|fec|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|fec|Equal0~7_combout\ = (!\inst|fec|cuenta\(0) & (!\inst|fec|cuenta\(1) & (\inst|fec|Equal0~6_combout\ & \inst|fec|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|fec|cuenta\(0),
	datab => \inst|fec|cuenta\(1),
	datac => \inst|fec|Equal0~6_combout\,
	datad => \inst|fec|Equal0~5_combout\,
	combout => \inst|fec|Equal0~7_combout\);

-- Location: LCCOMB_X31_Y10_N30
\inst|fec|salida~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|fec|salida~0_combout\ = \inst|fec|salida~q\ $ (((\inst|fec|Equal0~7_combout\ & \inst|fec|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|fec|Equal0~7_combout\,
	datac => \inst|fec|salida~q\,
	datad => \inst|fec|Equal0~4_combout\,
	combout => \inst|fec|salida~0_combout\);

-- Location: LCCOMB_X31_Y10_N12
\inst|fec|salida~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|fec|salida~feeder_combout\ = \inst|fec|salida~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|fec|salida~0_combout\,
	combout => \inst|fec|salida~feeder_combout\);

-- Location: FF_X31_Y10_N13
\inst|fec|salida\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|fec|salida~feeder_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|fec|salida~q\);

-- Location: CLKCTRL_G7
\inst|fec|salida~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst|fec|salida~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst|fec|salida~clkctrl_outclk\);

-- Location: LCCOMB_X13_Y6_N20
\inst|disp|contador[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|disp|contador[0]~1_combout\ = !\inst|disp|contador\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|disp|contador\(0),
	combout => \inst|disp|contador[0]~1_combout\);

-- Location: FF_X13_Y6_N21
\inst|disp|contador[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|fec|salida~clkctrl_outclk\,
	d => \inst|disp|contador[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|disp|contador\(0));

-- Location: LCCOMB_X13_Y6_N6
\inst|disp|contador[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|disp|contador[1]~0_combout\ = \inst|disp|contador\(1) $ (\inst|disp|contador\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|disp|contador\(1),
	datad => \inst|disp|contador\(0),
	combout => \inst|disp|contador[1]~0_combout\);

-- Location: FF_X13_Y6_N7
\inst|disp|contador[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|fec|salida~clkctrl_outclk\,
	d => \inst|disp|contador[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|disp|contador\(1));

-- Location: LCCOMB_X13_Y6_N28
\inst|disp|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|disp|Mux3~0_combout\ = (!\inst|disp|contador\(1) & !\inst|disp|contador\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|disp|contador\(1),
	datab => \inst|disp|contador\(0),
	combout => \inst|disp|Mux3~0_combout\);

-- Location: FF_X13_Y6_N29
\inst|disp|arreglo[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|fec|salida~clkctrl_outclk\,
	d => \inst|disp|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|disp|arreglo\(0));

-- Location: LCCOMB_X13_Y6_N22
\inst|disp|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|disp|Mux1~0_combout\ = (!\inst|disp|contador\(1) & \inst|disp|contador\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|disp|contador\(1),
	datad => \inst|disp|contador\(0),
	combout => \inst|disp|Mux1~0_combout\);

-- Location: FF_X13_Y6_N23
\inst|disp|arreglo[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|fec|salida~clkctrl_outclk\,
	d => \inst|disp|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|disp|arreglo\(1));

-- Location: LCCOMB_X13_Y6_N16
\inst|disp|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|disp|Mux1~1_combout\ = (\inst|disp|contador\(1) & \inst|disp|contador\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|disp|contador\(1),
	datad => \inst|disp|contador\(0),
	combout => \inst|disp|Mux1~1_combout\);

-- Location: FF_X13_Y6_N17
\inst|disp|arreglo[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|fec|salida~clkctrl_outclk\,
	d => \inst|disp|Mux1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|disp|arreglo\(3));

-- Location: LCCOMB_X24_Y4_N14
\inst|addr[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|addr[2]~1_combout\ = (\inst|addr\(1) & ((\inst|addr\(2) & ((\inst|addr\(3)) # (!\inst|addr\(0)))) # (!\inst|addr\(2) & ((\inst|addr\(0)))))) # (!\inst|addr\(1) & (((\inst|addr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|addr\(3),
	datab => \inst|addr\(1),
	datac => \inst|addr\(2),
	datad => \inst|addr\(0),
	combout => \inst|addr[2]~1_combout\);

-- Location: FF_X24_Y4_N15
\inst|addr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|fec|salida~q\,
	d => \inst|addr[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|addr\(2));

-- Location: LCCOMB_X24_Y4_N28
\inst|addr[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|addr[1]~0_combout\ = (\inst|addr\(1) & (((\inst|addr\(3) & \inst|addr\(2))) # (!\inst|addr\(0)))) # (!\inst|addr\(1) & (((\inst|addr\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|addr\(1),
	datab => \inst|addr\(3),
	datac => \inst|addr\(2),
	datad => \inst|addr\(0),
	combout => \inst|addr[1]~0_combout\);

-- Location: FF_X24_Y4_N31
\inst|addr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|fec|salida~q\,
	asdata => \inst|addr[1]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|addr\(1));

-- Location: LCCOMB_X24_Y4_N12
\inst|addr[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|addr[3]~2_combout\ = (\inst|addr\(3)) # ((\inst|addr\(1) & (\inst|addr\(2) & \inst|addr\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|addr\(1),
	datab => \inst|addr\(2),
	datac => \inst|addr\(3),
	datad => \inst|addr\(0),
	combout => \inst|addr[3]~2_combout\);

-- Location: FF_X24_Y4_N13
\inst|addr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|fec|salida~q\,
	d => \inst|addr[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|addr\(3));

-- Location: LCCOMB_X24_Y4_N22
\inst|addr[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|addr[0]~3_combout\ = ((\inst|addr\(3) & (\inst|addr\(2) & \inst|addr\(1)))) # (!\inst|addr\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|addr\(3),
	datab => \inst|addr\(2),
	datac => \inst|addr\(1),
	datad => \inst|addr\(0),
	combout => \inst|addr[0]~3_combout\);

-- Location: FF_X24_Y4_N11
\inst|addr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|fec|salida~clkctrl_outclk\,
	asdata => \inst|addr[0]~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|addr\(0));

-- Location: LCCOMB_X24_Y4_N0
\inst|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~0_combout\ = (\inst|addr\(0) & (\inst|addr\(2) & (\inst|addr\(1) & \inst|addr\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|addr\(0),
	datab => \inst|addr\(2),
	datac => \inst|addr\(1),
	datad => \inst|addr\(3),
	combout => \inst|Equal0~0_combout\);

-- Location: CLKCTRL_G6
\inst|Equal0~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst|Equal0~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst|Equal0~0clkctrl_outclk\);

-- Location: IOIBUF_X16_Y0_N22
\ec[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ec(0),
	o => \ec[0]~input_o\);

-- Location: IOIBUF_X16_Y0_N8
\ec[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ec(1),
	o => \ec[1]~input_o\);

-- Location: LCCOMB_X24_Y4_N26
\inst|Mux25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux25~0_combout\ = (!\inst|addr\(0) & ((!\inst|addr\(1)) # (!\inst|addr\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|addr\(2),
	datac => \inst|addr\(1),
	datad => \inst|addr\(0),
	combout => \inst|Mux25~0_combout\);

-- Location: LCCOMB_X24_Y3_N26
\inst|Mux211~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux211~4_combout\ = (\ec[0]~input_o\ & ((\inst|addr\(3)) # ((\ec[1]~input_o\) # (!\inst|Mux25~0_combout\)))) # (!\ec[0]~input_o\ & (!\inst|addr\(3) & (\ec[1]~input_o\ & !\inst|Mux25~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ec[0]~input_o\,
	datab => \inst|addr\(3),
	datac => \ec[1]~input_o\,
	datad => \inst|Mux25~0_combout\,
	combout => \inst|Mux211~4_combout\);

-- Location: LCCOMB_X24_Y3_N30
\inst|Mux211~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux211~2_combout\ = (\inst|addr\(1) & ((\inst|addr\(2)) # (\inst|addr\(3)))) # (!\inst|addr\(1) & (\inst|addr\(2) & \inst|addr\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|addr\(1),
	datab => \inst|addr\(2),
	datad => \inst|addr\(3),
	combout => \inst|Mux211~2_combout\);

-- Location: LCCOMB_X24_Y4_N24
\inst|Mux178~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux178~0_combout\ = (!\inst|addr\(2) & (!\inst|addr\(3) & (!\inst|addr\(1) & \inst|addr\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|addr\(2),
	datab => \inst|addr\(3),
	datac => \inst|addr\(1),
	datad => \inst|addr\(0),
	combout => \inst|Mux178~0_combout\);

-- Location: LCCOMB_X24_Y3_N20
\inst|Mux211~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux211~3_combout\ = (\ec[1]~input_o\ & ((\inst|Mux178~0_combout\))) # (!\ec[1]~input_o\ & (\inst|Mux211~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux211~2_combout\,
	datab => \ec[1]~input_o\,
	datac => \inst|Mux178~0_combout\,
	combout => \inst|Mux211~3_combout\);

-- Location: LCCOMB_X24_Y4_N30
\inst|Mux211~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux211~11_combout\ = (\ec[1]~input_o\ & (((!\inst|addr\(2) & !\inst|addr\(1))))) # (!\ec[1]~input_o\ & (\inst|addr\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|addr\(0),
	datab => \inst|addr\(2),
	datac => \inst|addr\(1),
	datad => \ec[1]~input_o\,
	combout => \inst|Mux211~11_combout\);

-- Location: LCCOMB_X24_Y3_N28
\inst|Mux211~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux211~7_combout\ = (\inst|Mux211~4_combout\ & (((!\inst|addr\(3))) # (!\inst|Mux211~3_combout\))) # (!\inst|Mux211~4_combout\ & ((\inst|addr\(3) $ (\inst|Mux211~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111101111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux211~4_combout\,
	datab => \inst|Mux211~3_combout\,
	datac => \inst|addr\(3),
	datad => \inst|Mux211~11_combout\,
	combout => \inst|Mux211~7_combout\);

-- Location: LCCOMB_X24_Y3_N10
\inst|Mux211~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux211~6_combout\ = (\ec[0]~input_o\ & ((\ec[1]~input_o\) # ((\inst|Mux25~0_combout\ & !\inst|addr\(3))))) # (!\ec[0]~input_o\ & (\ec[1]~input_o\ & ((\inst|Mux25~0_combout\) # (\inst|addr\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ec[0]~input_o\,
	datab => \ec[1]~input_o\,
	datac => \inst|Mux25~0_combout\,
	datad => \inst|addr\(3),
	combout => \inst|Mux211~6_combout\);

-- Location: LCCOMB_X24_Y3_N8
\inst|Mux211~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux211~9_combout\ = (!\inst|Mux211~6_combout\ & (\inst|Mux211~7_combout\ $ (\inst|Mux211~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux211~7_combout\,
	datab => \inst|Mux211~3_combout\,
	datac => \inst|Mux211~6_combout\,
	combout => \inst|Mux211~9_combout\);

-- Location: LCCOMB_X24_Y3_N16
\inst|Mux211~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux211~5_combout\ = (\inst|Mux211~4_combout\ & ((\inst|Mux211~3_combout\) # ((\inst|Mux211~11_combout\ & \inst|addr\(3))))) # (!\inst|Mux211~4_combout\ & (((\inst|Mux211~11_combout\ & \inst|addr\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux211~4_combout\,
	datab => \inst|Mux211~3_combout\,
	datac => \inst|Mux211~11_combout\,
	datad => \inst|addr\(3),
	combout => \inst|Mux211~5_combout\);

-- Location: LCCOMB_X24_Y3_N22
\inst|Mux211~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux211~8_combout\ = (\inst|Mux211~7_combout\ & ((\inst|Mux211~3_combout\) # (!\inst|Mux211~6_combout\))) # (!\inst|Mux211~7_combout\ & (\inst|Mux211~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux211~7_combout\,
	datac => \inst|Mux211~6_combout\,
	datad => \inst|Mux211~3_combout\,
	combout => \inst|Mux211~8_combout\);

-- Location: LCCOMB_X24_Y3_N24
\inst|Mux211~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux211~10_combout\ = (\inst|Mux211~5_combout\ & ((\inst|Mux211~8_combout\ & (\inst|Mux211~9_combout\)) # (!\inst|Mux211~8_combout\ & ((\inst|MREG\(2)))))) # (!\inst|Mux211~5_combout\ & ((\inst|Mux211~9_combout\ & ((!\inst|Mux211~8_combout\))) # 
-- (!\inst|Mux211~9_combout\ & (\inst|MREG\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux211~9_combout\,
	datab => \inst|Mux211~5_combout\,
	datac => \inst|MREG\(2),
	datad => \inst|Mux211~8_combout\,
	combout => \inst|Mux211~10_combout\);

-- Location: FF_X24_Y3_N25
\inst|MREG[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|fec|salida~clkctrl_outclk\,
	d => \inst|Mux211~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MREG\(2));

-- Location: LCCOMB_X18_Y5_N22
\inst|Mux212~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux212~4_combout\ = (\inst|MREG\(1)) # ((!\inst|addr\(3) & (\inst|addr\(0) $ (\inst|addr\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MREG\(1),
	datab => \inst|addr\(0),
	datac => \inst|addr\(3),
	datad => \inst|addr\(1),
	combout => \inst|Mux212~4_combout\);

-- Location: LCCOMB_X18_Y5_N20
\inst|Mux26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux26~0_combout\ = (\inst|addr\(3) & (((\inst|MREG\(1))))) # (!\inst|addr\(3) & (!\inst|addr\(1) & ((\inst|addr\(0)) # (\inst|MREG\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|addr\(3),
	datab => \inst|addr\(0),
	datac => \inst|addr\(1),
	datad => \inst|MREG\(1),
	combout => \inst|Mux26~0_combout\);

-- Location: LCCOMB_X18_Y5_N16
\inst|Mux212~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux212~5_combout\ = (\ec[0]~input_o\ & ((\inst|Mux26~0_combout\))) # (!\ec[0]~input_o\ & (\inst|Mux212~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux212~4_combout\,
	datab => \inst|Mux26~0_combout\,
	datad => \ec[0]~input_o\,
	combout => \inst|Mux212~5_combout\);

-- Location: LCCOMB_X18_Y5_N28
\inst|Mux212~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux212~2_combout\ = (\inst|addr\(0) & ((\inst|MREG\(1)) # (\ec[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MREG\(1),
	datab => \inst|addr\(0),
	datad => \ec[0]~input_o\,
	combout => \inst|Mux212~2_combout\);

-- Location: LCCOMB_X18_Y5_N6
\inst|Mux212~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux212~3_combout\ = (\inst|addr\(3) & ((\inst|addr\(1) & (\inst|MREG\(1))) # (!\inst|addr\(1) & ((\inst|Mux212~2_combout\))))) # (!\inst|addr\(3) & (\inst|MREG\(1) & (!\inst|Mux212~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MREG\(1),
	datab => \inst|Mux212~2_combout\,
	datac => \inst|addr\(1),
	datad => \inst|addr\(3),
	combout => \inst|Mux212~3_combout\);

-- Location: LCCOMB_X18_Y5_N8
\inst|MREG[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|MREG[1]~0_combout\ = (\inst|addr\(2) & (\inst|Mux212~5_combout\)) # (!\inst|addr\(2) & ((\inst|Mux212~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux212~5_combout\,
	datab => \inst|Mux212~3_combout\,
	datad => \inst|addr\(2),
	combout => \inst|MREG[1]~0_combout\);

-- Location: LCCOMB_X18_Y5_N14
\inst|Mux212~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux212~6_combout\ = (\inst|MREG\(1) & ((\inst|addr\(3) & (\inst|addr\(1))) # (!\inst|addr\(3) & ((!\inst|addr\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|addr\(3),
	datab => \inst|addr\(1),
	datac => \inst|addr\(0),
	datad => \inst|MREG\(1),
	combout => \inst|Mux212~6_combout\);

-- Location: LCCOMB_X18_Y5_N4
\inst|Mux212~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux212~7_combout\ = (!\ec[0]~input_o\ & ((\inst|addr\(2) & ((\inst|Mux26~0_combout\))) # (!\inst|addr\(2) & (\inst|Mux212~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux212~6_combout\,
	datab => \inst|addr\(2),
	datac => \inst|Mux26~0_combout\,
	datad => \ec[0]~input_o\,
	combout => \inst|Mux212~7_combout\);

-- Location: LCCOMB_X18_Y5_N24
\inst|Mux212~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux212~8_combout\ = ((\inst|Mux178~0_combout\) # (!\ec[0]~input_o\)) # (!\ec[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ec[1]~input_o\,
	datac => \inst|Mux178~0_combout\,
	datad => \ec[0]~input_o\,
	combout => \inst|Mux212~8_combout\);

-- Location: FF_X18_Y5_N9
\inst|MREG[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|fec|salida~clkctrl_outclk\,
	d => \inst|MREG[1]~0_combout\,
	asdata => \inst|Mux212~7_combout\,
	sload => \ec[1]~input_o\,
	ena => \inst|Mux212~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MREG\(1));

-- Location: LCCOMB_X24_Y5_N22
\inst|MREG[22]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|MREG[22]~15_combout\ = (\ec[1]~input_o\ & (((!\inst|addr\(0) & !\ec[0]~input_o\)))) # (!\ec[1]~input_o\ & (\ec[0]~input_o\ & ((\inst|addr\(2)) # (!\inst|addr\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ec[1]~input_o\,
	datab => \inst|addr\(2),
	datac => \inst|addr\(0),
	datad => \ec[0]~input_o\,
	combout => \inst|MREG[22]~15_combout\);

-- Location: LCCOMB_X19_Y5_N18
\inst|registro[4][9]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|registro[4][9]~22_combout\ = !\inst|alu1|Mux0~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|alu1|Mux0~3_combout\,
	combout => \inst|registro[4][9]~22_combout\);

-- Location: LCCOMB_X19_Y5_N28
\inst|registro[4][6]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|registro[4][6]~11_combout\ = (\inst|addr\(1) & (\inst|addr\(0) & (\inst|addr\(2) & !\inst|addr\(3)))) # (!\inst|addr\(1) & (!\inst|addr\(0) & (!\inst|addr\(2) & \inst|addr\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|addr\(1),
	datab => \inst|addr\(0),
	datac => \inst|addr\(2),
	datad => \inst|addr\(3),
	combout => \inst|registro[4][6]~11_combout\);

-- Location: LCCOMB_X19_Y5_N6
\inst|registro[4][6]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|registro[4][6]~12_combout\ = (\inst|registro[4][6]~11_combout\ & ((\ec[0]~input_o\ & (\inst|addr\(1) & !\ec[1]~input_o\)) # (!\ec[0]~input_o\ & ((\inst|addr\(1)) # (!\ec[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ec[0]~input_o\,
	datab => \inst|registro[4][6]~11_combout\,
	datac => \inst|addr\(1),
	datad => \ec[1]~input_o\,
	combout => \inst|registro[4][6]~12_combout\);

-- Location: FF_X19_Y5_N19
\inst|registro[4][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|fec|salida~clkctrl_outclk\,
	d => \inst|registro[4][9]~22_combout\,
	ena => \inst|registro[4][6]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|registro[4][9]~q\);

-- Location: LCCOMB_X19_Y5_N4
\inst|Mux14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux14~1_combout\ = (\inst|addr\(3) & \inst|registro[4][9]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|addr\(3),
	datad => \inst|registro[4][9]~q\,
	combout => \inst|Mux14~1_combout\);

-- Location: LCCOMB_X23_Y6_N30
\inst|registro[3][9]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|registro[3][9]~20_combout\ = !\inst|alu1|Mux0~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|alu1|Mux0~3_combout\,
	combout => \inst|registro[3][9]~20_combout\);

-- Location: LCCOMB_X19_Y5_N8
\inst|Mux210~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux210~0_combout\ = (\inst|addr\(2) & \inst|addr\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|addr\(2),
	datad => \inst|addr\(1),
	combout => \inst|Mux210~0_combout\);

-- Location: LCCOMB_X24_Y6_N12
\inst|Mux157~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux157~0_combout\ = (!\inst|addr\(0) & !\inst|addr\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|addr\(0),
	datad => \inst|addr\(3),
	combout => \inst|Mux157~0_combout\);

-- Location: LCCOMB_X24_Y6_N6
\inst|registro[3][7]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|registro[3][7]~15_combout\ = (\inst|Mux210~0_combout\ & (\inst|Mux157~0_combout\ & ((!\ec[0]~input_o\) # (!\ec[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux210~0_combout\,
	datab => \ec[1]~input_o\,
	datac => \inst|Mux157~0_combout\,
	datad => \ec[0]~input_o\,
	combout => \inst|registro[3][7]~15_combout\);

-- Location: FF_X23_Y6_N31
\inst|registro[3][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|fec|salida~clkctrl_outclk\,
	d => \inst|registro[3][9]~20_combout\,
	ena => \inst|registro[3][7]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|registro[3][9]~q\);

-- Location: LCCOMB_X19_Y5_N30
\inst|registro[5][9]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|registro[5][9]~19_combout\ = !\inst|alu1|Mux0~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|alu1|Mux0~3_combout\,
	combout => \inst|registro[5][9]~19_combout\);

-- Location: LCCOMB_X19_Y4_N4
\inst|MREG[22]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|MREG[22]~34_combout\ = (!\inst|addr\(0) & (\ec[1]~input_o\ $ (\ec[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ec[1]~input_o\,
	datab => \inst|addr\(0),
	datad => \ec[0]~input_o\,
	combout => \inst|MREG[22]~34_combout\);

-- Location: LCCOMB_X19_Y4_N6
\inst|registro[5][6]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|registro[5][6]~14_combout\ = (!\inst|addr\(2) & (\inst|addr\(3) & (\inst|MREG[22]~34_combout\ & !\inst|addr\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|addr\(2),
	datab => \inst|addr\(3),
	datac => \inst|MREG[22]~34_combout\,
	datad => \inst|addr\(1),
	combout => \inst|registro[5][6]~14_combout\);

-- Location: FF_X19_Y5_N31
\inst|registro[5][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|fec|salida~clkctrl_outclk\,
	d => \inst|registro[5][9]~19_combout\,
	ena => \inst|registro[5][6]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|registro[5][9]~q\);

-- Location: LCCOMB_X19_Y5_N24
\inst|Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux14~0_combout\ = (\inst|registro[5][9]~q\ & \inst|addr\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|registro[5][9]~q\,
	datad => \inst|addr\(3),
	combout => \inst|Mux14~0_combout\);

-- Location: LCCOMB_X25_Y6_N8
\inst|MREG[22]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|MREG[22]~14_combout\ = (\ec[1]~input_o\ & (\inst|addr\(2))) # (!\ec[1]~input_o\ & ((\ec[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ec[1]~input_o\,
	datac => \inst|addr\(2),
	datad => \ec[0]~input_o\,
	combout => \inst|MREG[22]~14_combout\);

-- Location: LCCOMB_X19_Y5_N10
\inst|Mux190~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux190~0_combout\ = (\ec[1]~input_o\ & ((\inst|Mux14~0_combout\) # ((\inst|MREG[22]~14_combout\)))) # (!\ec[1]~input_o\ & (((!\inst|MREG[22]~14_combout\ & \inst|registro[4][9]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ec[1]~input_o\,
	datab => \inst|Mux14~0_combout\,
	datac => \inst|MREG[22]~14_combout\,
	datad => \inst|registro[4][9]~q\,
	combout => \inst|Mux190~0_combout\);

-- Location: LCCOMB_X24_Y5_N28
\inst|Mux190~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux190~1_combout\ = (\inst|Mux190~0_combout\ & (((\inst|registro[3][9]~q\) # (!\inst|MREG[22]~14_combout\)))) # (!\inst|Mux190~0_combout\ & (\inst|Mux14~1_combout\ & ((\inst|MREG[22]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux14~1_combout\,
	datab => \inst|registro[3][9]~q\,
	datac => \inst|Mux190~0_combout\,
	datad => \inst|MREG[22]~14_combout\,
	combout => \inst|Mux190~1_combout\);

-- Location: LCCOMB_X25_Y6_N26
\inst|registro[2][9]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|registro[2][9]~21_combout\ = !\inst|alu1|Mux0~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|alu1|Mux0~3_combout\,
	combout => \inst|registro[2][9]~21_combout\);

-- Location: LCCOMB_X24_Y4_N10
\inst|registro[2][3]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|registro[2][3]~10_combout\ = (!\inst|addr\(3) & ((!\ec[0]~input_o\) # (!\ec[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ec[1]~input_o\,
	datab => \ec[0]~input_o\,
	datad => \inst|addr\(3),
	combout => \inst|registro[2][3]~10_combout\);

-- Location: LCCOMB_X25_Y6_N6
\inst|registro[2][3]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|registro[2][3]~13_combout\ = (\inst|addr\(0) & (\inst|addr\(2) & (\inst|registro[2][3]~10_combout\ & !\inst|addr\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|addr\(0),
	datab => \inst|addr\(2),
	datac => \inst|registro[2][3]~10_combout\,
	datad => \inst|addr\(1),
	combout => \inst|registro[2][3]~13_combout\);

-- Location: FF_X25_Y6_N27
\inst|registro[2][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|fec|salida~clkctrl_outclk\,
	d => \inst|registro[2][9]~21_combout\,
	ena => \inst|registro[2][3]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|registro[2][9]~q\);

-- Location: LCCOMB_X24_Y5_N26
\inst|MREG[23]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|MREG[23]~6_combout\ = (\inst|MREG[22]~15_combout\ & ((\inst|registro[2][9]~q\))) # (!\inst|MREG[22]~15_combout\ & (\inst|Mux190~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MREG[22]~15_combout\,
	datab => \inst|Mux190~1_combout\,
	datad => \inst|registro[2][9]~q\,
	combout => \inst|MREG[23]~6_combout\);

-- Location: LCCOMB_X25_Y5_N20
\inst|registro[1][9]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|registro[1][9]~23_combout\ = !\inst|alu1|Mux0~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|alu1|Mux0~3_combout\,
	combout => \inst|registro[1][9]~23_combout\);

-- Location: LCCOMB_X24_Y4_N8
\inst|registro[1][7]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|registro[1][7]~16_combout\ = (\inst|addr\(0) & (\inst|addr\(1) & (\inst|registro[2][3]~10_combout\ & !\inst|addr\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|addr\(0),
	datab => \inst|addr\(1),
	datac => \inst|registro[2][3]~10_combout\,
	datad => \inst|addr\(2),
	combout => \inst|registro[1][7]~16_combout\);

-- Location: FF_X25_Y5_N21
\inst|registro[1][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|fec|salida~clkctrl_outclk\,
	d => \inst|registro[1][9]~23_combout\,
	ena => \inst|registro[1][7]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|registro[1][9]~q\);

-- Location: LCCOMB_X24_Y5_N24
\inst|MREG[9]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|MREG[9]~16_combout\ = (\ec[1]~input_o\ & (!\ec[0]~input_o\ & (\inst|addr\(2) $ (\inst|addr\(1))))) # (!\ec[1]~input_o\ & ((\inst|addr\(2) $ (\inst|addr\(1))) # (!\ec[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ec[1]~input_o\,
	datab => \inst|addr\(2),
	datac => \inst|addr\(1),
	datad => \ec[0]~input_o\,
	combout => \inst|MREG[9]~16_combout\);

-- Location: LCCOMB_X24_Y5_N10
\inst|MREG[9]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|MREG[9]~35_combout\ = (\ec[1]~input_o\ & ((\ec[0]~input_o\) # ((\inst|MREG[9]~16_combout\ & \inst|addr\(0))))) # (!\ec[1]~input_o\ & (\inst|MREG[9]~16_combout\ & (\inst|addr\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ec[1]~input_o\,
	datab => \inst|MREG[9]~16_combout\,
	datac => \inst|addr\(0),
	datad => \ec[0]~input_o\,
	combout => \inst|MREG[9]~35_combout\);

-- Location: LCCOMB_X24_Y4_N2
\inst|MREG[22]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|MREG[22]~17_combout\ = (\inst|addr\(2) & ((\ec[1]~input_o\ & (!\inst|addr\(0) & !\ec[0]~input_o\)) # (!\ec[1]~input_o\ & ((!\ec[0]~input_o\) # (!\inst|addr\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ec[1]~input_o\,
	datab => \inst|addr\(0),
	datac => \inst|addr\(2),
	datad => \ec[0]~input_o\,
	combout => \inst|MREG[22]~17_combout\);

-- Location: LCCOMB_X24_Y4_N4
\inst|MREG[9]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|MREG[9]~20_combout\ = (\inst|addr\(3) & (((\inst|addr\(1)) # (\inst|addr\(2))))) # (!\inst|addr\(3) & (!\inst|addr\(0) & ((!\inst|addr\(2)) # (!\inst|addr\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|addr\(0),
	datab => \inst|addr\(3),
	datac => \inst|addr\(1),
	datad => \inst|addr\(2),
	combout => \inst|MREG[9]~20_combout\);

-- Location: LCCOMB_X24_Y4_N20
\inst|MREG[9]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|MREG[9]~18_combout\ = (\inst|addr\(3) & ((\inst|addr\(1)) # ((\inst|addr\(2)) # (\inst|addr\(0))))) # (!\inst|addr\(3) & (\inst|addr\(0) $ (((!\inst|addr\(2)) # (!\inst|addr\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|addr\(1),
	datab => \inst|addr\(2),
	datac => \inst|addr\(3),
	datad => \inst|addr\(0),
	combout => \inst|MREG[9]~18_combout\);

-- Location: LCCOMB_X24_Y4_N16
\inst|MREG[9]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|MREG[9]~19_combout\ = (\ec[1]~input_o\ & (((!\inst|Mux178~0_combout\ & \ec[0]~input_o\)))) # (!\ec[1]~input_o\ & (\inst|MREG[9]~18_combout\ & ((!\ec[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MREG[9]~18_combout\,
	datab => \inst|Mux178~0_combout\,
	datac => \ec[1]~input_o\,
	datad => \ec[0]~input_o\,
	combout => \inst|MREG[9]~19_combout\);

-- Location: LCCOMB_X24_Y4_N18
\inst|MREG[9]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|MREG[9]~21_combout\ = (!\inst|MREG[9]~19_combout\ & ((\ec[1]~input_o\ $ (!\ec[0]~input_o\)) # (!\inst|MREG[9]~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ec[1]~input_o\,
	datab => \inst|MREG[9]~20_combout\,
	datac => \inst|MREG[9]~19_combout\,
	datad => \ec[0]~input_o\,
	combout => \inst|MREG[9]~21_combout\);

-- Location: FF_X24_Y5_N27
\inst|MREG[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|fec|salida~clkctrl_outclk\,
	d => \inst|MREG[23]~6_combout\,
	asdata => \inst|registro[1][9]~q\,
	sclr => \inst|MREG[9]~35_combout\,
	sload => \inst|MREG[22]~17_combout\,
	ena => \inst|MREG[9]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MREG\(23));

-- Location: LCCOMB_X25_Y6_N2
\inst|MREG[9]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|MREG[9]~33_combout\ = (\ec[0]~input_o\ & ((\ec[1]~input_o\) # ((!\inst|addr\(2) & \inst|addr\(0))))) # (!\ec[0]~input_o\ & (\ec[1]~input_o\ & (!\inst|addr\(2) & \inst|addr\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ec[0]~input_o\,
	datab => \ec[1]~input_o\,
	datac => \inst|addr\(2),
	datad => \inst|addr\(0),
	combout => \inst|MREG[9]~33_combout\);

-- Location: LCCOMB_X24_Y4_N6
\inst|MREG[9]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|MREG[9]~32_combout\ = (\ec[0]~input_o\ & (((\ec[1]~input_o\) # (\inst|addr\(2))) # (!\inst|addr\(0)))) # (!\ec[0]~input_o\ & (((!\inst|addr\(0) & \ec[1]~input_o\)) # (!\inst|addr\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|addr\(0),
	datab => \ec[0]~input_o\,
	datac => \ec[1]~input_o\,
	datad => \inst|addr\(2),
	combout => \inst|MREG[9]~32_combout\);

-- Location: LCCOMB_X24_Y5_N4
\inst|Mux200~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux200~0_combout\ = (\inst|MREG[9]~33_combout\ & (((\inst|MREG[9]~32_combout\)))) # (!\inst|MREG[9]~33_combout\ & ((\inst|MREG[9]~32_combout\ & (\inst|registro[3][9]~q\)) # (!\inst|MREG[9]~32_combout\ & ((\inst|registro[2][9]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MREG[9]~33_combout\,
	datab => \inst|registro[3][9]~q\,
	datac => \inst|MREG[9]~32_combout\,
	datad => \inst|registro[2][9]~q\,
	combout => \inst|Mux200~0_combout\);

-- Location: LCCOMB_X24_Y5_N18
\inst|Mux200~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux200~1_combout\ = (\inst|Mux200~0_combout\ & ((\inst|Mux14~1_combout\) # ((!\inst|MREG[9]~33_combout\)))) # (!\inst|Mux200~0_combout\ & (((\inst|MREG[9]~33_combout\ & \inst|Mux14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux14~1_combout\,
	datab => \inst|Mux200~0_combout\,
	datac => \inst|MREG[9]~33_combout\,
	datad => \inst|Mux14~0_combout\,
	combout => \inst|Mux200~1_combout\);

-- Location: LCCOMB_X24_Y5_N20
\inst|Mux200~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux200~2_combout\ = (\inst|Mux200~1_combout\ & (!\inst|MREG[9]~35_combout\ & ((!\inst|addr\(2)) # (!\inst|MREG[22]~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MREG[22]~34_combout\,
	datab => \inst|Mux200~1_combout\,
	datac => \inst|MREG[9]~35_combout\,
	datad => \inst|addr\(2),
	combout => \inst|Mux200~2_combout\);

-- Location: FF_X24_Y5_N21
\inst|MREG[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|fec|salida~clkctrl_outclk\,
	d => \inst|Mux200~2_combout\,
	ena => \inst|MREG[9]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MREG\(13));

-- Location: LCCOMB_X24_Y5_N30
\inst|alu1|unidad_logica|salida~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|salida~2_combout\ = (\inst|MREG\(23) & \inst|MREG\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|MREG\(23),
	datad => \inst|MREG\(13),
	combout => \inst|alu1|unidad_logica|salida~2_combout\);

-- Location: LCCOMB_X19_Y4_N0
\inst|Mux213~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux213~1_combout\ = (\ec[0]~input_o\ & ((\ec[1]~input_o\))) # (!\ec[0]~input_o\ & (\inst|addr\(0) & !\ec[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ec[0]~input_o\,
	datac => \inst|addr\(0),
	datad => \ec[1]~input_o\,
	combout => \inst|Mux213~1_combout\);

-- Location: LCCOMB_X19_Y4_N18
\inst|Mux213~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux213~2_combout\ = (\ec[0]~input_o\ & (((\inst|addr\(0)) # (\ec[1]~input_o\)))) # (!\ec[0]~input_o\ & (!\inst|addr\(3) & (\inst|addr\(0) & \ec[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ec[0]~input_o\,
	datab => \inst|addr\(3),
	datac => \inst|addr\(0),
	datad => \ec[1]~input_o\,
	combout => \inst|Mux213~2_combout\);

-- Location: LCCOMB_X19_Y4_N12
\inst|Mux213~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux213~3_combout\ = (\inst|addr\(2) & (!\inst|addr\(3) & \inst|addr\(1))) # (!\inst|addr\(2) & (\inst|addr\(3) & !\inst|addr\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|addr\(2),
	datac => \inst|addr\(3),
	datad => \inst|addr\(1),
	combout => \inst|Mux213~3_combout\);

-- Location: LCCOMB_X19_Y4_N16
\inst|Mux213~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux213~5_combout\ = (\inst|Mux213~2_combout\ & ((\inst|Mux213~1_combout\ & (\inst|Mux178~0_combout\)) # (!\inst|Mux213~1_combout\ & ((\inst|Mux213~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux213~1_combout\,
	datab => \inst|Mux213~2_combout\,
	datac => \inst|Mux178~0_combout\,
	datad => \inst|Mux213~3_combout\,
	combout => \inst|Mux213~5_combout\);

-- Location: LCCOMB_X19_Y4_N30
\inst|Mux213~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux213~4_combout\ = \inst|Mux213~1_combout\ $ (((\inst|Mux213~2_combout\) # (\inst|Mux213~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux213~1_combout\,
	datab => \inst|Mux213~2_combout\,
	datad => \inst|Mux213~3_combout\,
	combout => \inst|Mux213~4_combout\);

-- Location: LCCOMB_X19_Y4_N10
\inst|Mux213~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux213~0_combout\ = (\inst|addr\(3) & (((!\inst|addr\(2) & !\inst|addr\(1))) # (!\inst|MREG\(0)))) # (!\inst|addr\(3) & (\inst|addr\(2) & (!\inst|addr\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|addr\(2),
	datab => \inst|addr\(1),
	datac => \inst|addr\(3),
	datad => \inst|MREG\(0),
	combout => \inst|Mux213~0_combout\);

-- Location: LCCOMB_X19_Y4_N24
\inst|Mux213~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux213~6_combout\ = (\inst|Mux213~4_combout\ & (\inst|Mux213~5_combout\ $ (((!\inst|Mux213~0_combout\))))) # (!\inst|Mux213~4_combout\ & (!\inst|Mux213~5_combout\ & (\inst|MREG\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux213~5_combout\,
	datab => \inst|Mux213~4_combout\,
	datac => \inst|MREG\(0),
	datad => \inst|Mux213~0_combout\,
	combout => \inst|Mux213~6_combout\);

-- Location: FF_X19_Y4_N25
\inst|MREG[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|fec|salida~clkctrl_outclk\,
	d => \inst|Mux213~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MREG\(0));

-- Location: LCCOMB_X19_Y5_N14
\inst|Mux210~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux210~1_combout\ = (!\inst|addr\(3) & ((\inst|Mux210~0_combout\ & (\ec[0]~input_o\)) # (!\inst|Mux210~0_combout\ & ((\inst|addr\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ec[0]~input_o\,
	datab => \inst|Mux210~0_combout\,
	datac => \inst|addr\(0),
	datad => \inst|addr\(3),
	combout => \inst|Mux210~1_combout\);

-- Location: LCCOMB_X18_Y5_N12
\inst|Mux210~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux210~3_combout\ = (\inst|addr\(0) & (((\inst|addr\(1))))) # (!\inst|addr\(0) & ((\inst|addr\(3)) # ((!\inst|addr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|addr\(3),
	datab => \inst|addr\(2),
	datac => \inst|addr\(1),
	datad => \inst|addr\(0),
	combout => \inst|Mux210~3_combout\);

-- Location: LCCOMB_X18_Y5_N30
\inst|Mux210~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux210~4_combout\ = (\inst|Mux210~3_combout\) # ((!\inst|addr\(1) & ((\inst|addr\(2)) # (!\ec[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|addr\(1),
	datab => \inst|Mux210~3_combout\,
	datac => \inst|addr\(2),
	datad => \ec[0]~input_o\,
	combout => \inst|Mux210~4_combout\);

-- Location: LCCOMB_X18_Y5_N18
\inst|Mux210~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux210~2_combout\ = (\inst|addr\(3) & (!\inst|addr\(0) & (!\inst|addr\(2) & !\inst|addr\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|addr\(3),
	datab => \inst|addr\(0),
	datac => \inst|addr\(2),
	datad => \inst|addr\(1),
	combout => \inst|Mux210~2_combout\);

-- Location: LCCOMB_X18_Y5_N0
\inst|Mux210~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux210~5_combout\ = (\inst|Mux210~1_combout\) # ((\inst|Mux210~2_combout\) # ((\inst|Mux210~4_combout\ & \inst|MREG\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux210~1_combout\,
	datab => \inst|Mux210~4_combout\,
	datac => \inst|Mux210~2_combout\,
	datad => \inst|MREG\(3),
	combout => \inst|Mux210~5_combout\);

-- Location: LCCOMB_X24_Y6_N2
\inst|Mux178~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux178~1_combout\ = (!\inst|addr\(1) & !\inst|addr\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|addr\(1),
	datad => \inst|addr\(2),
	combout => \inst|Mux178~1_combout\);

-- Location: LCCOMB_X18_Y5_N26
\inst|Mux96~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux96~0_combout\ = (\inst|MREG\(3)) # ((\inst|addr\(3) & (\inst|Mux178~1_combout\)) # (!\inst|addr\(3) & ((!\inst|Mux25~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|addr\(3),
	datab => \inst|Mux178~1_combout\,
	datac => \inst|Mux25~0_combout\,
	datad => \inst|MREG\(3),
	combout => \inst|Mux96~0_combout\);

-- Location: LCCOMB_X18_Y5_N10
\inst|Mux210~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux210~6_combout\ = (\ec[1]~input_o\ & (((!\ec[0]~input_o\ & \inst|Mux96~0_combout\)))) # (!\ec[1]~input_o\ & (\inst|Mux210~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux210~5_combout\,
	datab => \ec[0]~input_o\,
	datac => \inst|Mux96~0_combout\,
	datad => \ec[1]~input_o\,
	combout => \inst|Mux210~6_combout\);

-- Location: FF_X18_Y5_N11
\inst|MREG[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|fec|salida~clkctrl_outclk\,
	d => \inst|Mux210~6_combout\,
	ena => \inst|Mux212~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MREG\(3));

-- Location: LCCOMB_X22_Y3_N2
\inst|alu1|Mux1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux1~4_combout\ = (!\inst|MREG\(3) & (!\inst|MREG\(2) & ((\inst|MREG\(0)) # (\inst|MREG\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MREG\(0),
	datab => \inst|MREG\(3),
	datac => \inst|MREG\(2),
	datad => \inst|MREG\(1),
	combout => \inst|alu1|Mux1~4_combout\);

-- Location: LCCOMB_X22_Y4_N18
\inst|alu1|Mux3~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux3~15_combout\ = (\inst|MREG\(2) & ((\inst|MREG\(0)) # ((\inst|MREG\(3))))) # (!\inst|MREG\(2) & ((\inst|MREG\(1)) # ((!\inst|MREG\(0) & !\inst|MREG\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MREG\(2),
	datab => \inst|MREG\(0),
	datac => \inst|MREG\(1),
	datad => \inst|MREG\(3),
	combout => \inst|alu1|Mux3~15_combout\);

-- Location: FF_X23_Y6_N15
\inst|registro[3][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|fec|salida~clkctrl_outclk\,
	asdata => \inst|alu1|Mux1~5_combout\,
	sload => VCC,
	ena => \inst|registro[3][7]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|registro[3][8]~q\);

-- Location: FF_X19_Y5_N21
\inst|registro[5][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|fec|salida~clkctrl_outclk\,
	asdata => \inst|alu1|Mux1~5_combout\,
	sload => VCC,
	ena => \inst|registro[5][6]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|registro[5][8]~q\);

-- Location: LCCOMB_X19_Y5_N20
\inst|Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux15~0_combout\ = (\inst|registro[5][8]~q\ & \inst|addr\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|registro[5][8]~q\,
	datad => \inst|addr\(3),
	combout => \inst|Mux15~0_combout\);

-- Location: LCCOMB_X25_Y6_N12
\inst|Mux201~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux201~0_combout\ = (\inst|MREG[9]~33_combout\ & ((\inst|Mux15~0_combout\) # ((\inst|MREG[9]~32_combout\)))) # (!\inst|MREG[9]~33_combout\ & (((\inst|registro[2][8]~q\ & !\inst|MREG[9]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux15~0_combout\,
	datab => \inst|MREG[9]~33_combout\,
	datac => \inst|registro[2][8]~q\,
	datad => \inst|MREG[9]~32_combout\,
	combout => \inst|Mux201~0_combout\);

-- Location: FF_X19_Y5_N27
\inst|registro[4][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|fec|salida~clkctrl_outclk\,
	asdata => \inst|alu1|Mux1~5_combout\,
	sload => VCC,
	ena => \inst|registro[4][6]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|registro[4][8]~q\);

-- Location: LCCOMB_X24_Y6_N18
\inst|Mux15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux15~1_combout\ = (\inst|addr\(3) & \inst|registro[4][8]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|addr\(3),
	datad => \inst|registro[4][8]~q\,
	combout => \inst|Mux15~1_combout\);

-- Location: LCCOMB_X25_Y6_N14
\inst|Mux201~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux201~1_combout\ = (\inst|MREG[9]~32_combout\ & ((\inst|Mux201~0_combout\ & ((\inst|Mux15~1_combout\))) # (!\inst|Mux201~0_combout\ & (\inst|registro[3][8]~q\)))) # (!\inst|MREG[9]~32_combout\ & (((\inst|Mux201~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|registro[3][8]~q\,
	datab => \inst|MREG[9]~32_combout\,
	datac => \inst|Mux201~0_combout\,
	datad => \inst|Mux15~1_combout\,
	combout => \inst|Mux201~1_combout\);

-- Location: LCCOMB_X24_Y5_N12
\inst|Mux201~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux201~2_combout\ = (!\inst|MREG[9]~35_combout\ & (\inst|Mux201~1_combout\ & ((!\inst|addr\(2)) # (!\inst|MREG[22]~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MREG[22]~34_combout\,
	datab => \inst|addr\(2),
	datac => \inst|MREG[9]~35_combout\,
	datad => \inst|Mux201~1_combout\,
	combout => \inst|Mux201~2_combout\);

-- Location: FF_X24_Y5_N13
\inst|MREG[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|fec|salida~clkctrl_outclk\,
	d => \inst|Mux201~2_combout\,
	ena => \inst|MREG[9]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MREG\(12));

-- Location: LCCOMB_X22_Y3_N28
\inst|alu1|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux10~0_combout\ = (\inst|MREG\(2)) # (\inst|MREG\(0) $ (!\inst|MREG\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MREG\(0),
	datac => \inst|MREG\(2),
	datad => \inst|MREG\(1),
	combout => \inst|alu1|Mux10~0_combout\);

-- Location: LCCOMB_X25_Y5_N10
\inst|alu1|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux11~0_combout\ = (!\inst|MREG\(0) & ((\inst|MREG\(3) & ((!\inst|MREG\(2)))) # (!\inst|MREG\(3) & ((\inst|MREG\(1)) # (\inst|MREG\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MREG\(3),
	datab => \inst|MREG\(1),
	datac => \inst|MREG\(0),
	datad => \inst|MREG\(2),
	combout => \inst|alu1|Mux11~0_combout\);

-- Location: LCCOMB_X23_Y5_N18
\inst|alu1|unidad_logica|salida~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|salida~4_combout\ = (\inst|MREG\(22) & (((\inst|alu1|Mux10~0_combout\)))) # (!\inst|MREG\(22) & (((\inst|MREG\(12) & \inst|alu1|Mux10~0_combout\)) # (!\inst|alu1|Mux11~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MREG\(12),
	datab => \inst|alu1|Mux10~0_combout\,
	datac => \inst|alu1|Mux11~0_combout\,
	datad => \inst|MREG\(22),
	combout => \inst|alu1|unidad_logica|salida~4_combout\);

-- Location: LCCOMB_X22_Y3_N16
\inst|alu1|Mux3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux3~8_combout\ = (\inst|MREG\(3) & (!\inst|MREG\(2) & ((!\inst|MREG\(0)) # (!\inst|MREG\(1))))) # (!\inst|MREG\(3) & (\inst|MREG\(1) & (\inst|MREG\(2) & \inst|MREG\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MREG\(3),
	datab => \inst|MREG\(1),
	datac => \inst|MREG\(2),
	datad => \inst|MREG\(0),
	combout => \inst|alu1|Mux3~8_combout\);

-- Location: LCCOMB_X23_Y6_N20
\inst|Mux18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux18~0_combout\ = (\inst|addr\(3) & \inst|registro[4][5]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|addr\(3),
	datac => \inst|registro[4][5]~q\,
	combout => \inst|Mux18~0_combout\);

-- Location: FF_X19_Y6_N5
\inst|registro[5][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|fec|salida~clkctrl_outclk\,
	asdata => \inst|alu1|Mux4~4_combout\,
	sload => VCC,
	ena => \inst|registro[5][6]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|registro[5][5]~q\);

-- Location: LCCOMB_X19_Y6_N4
\inst|Mux18~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux18~1_combout\ = (\inst|registro[5][5]~q\ & \inst|addr\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|registro[5][5]~q\,
	datad => \inst|addr\(3),
	combout => \inst|Mux18~1_combout\);

-- Location: FF_X25_Y6_N5
\inst|registro[2][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|fec|salida~clkctrl_outclk\,
	asdata => \inst|alu1|Mux4~4_combout\,
	sload => VCC,
	ena => \inst|registro[2][3]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|registro[2][5]~q\);

-- Location: LCCOMB_X25_Y6_N4
\inst|Mux204~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux204~0_combout\ = (\inst|MREG[9]~33_combout\ & ((\inst|Mux18~1_combout\) # ((\inst|MREG[9]~32_combout\)))) # (!\inst|MREG[9]~33_combout\ & (((\inst|registro[2][5]~q\ & !\inst|MREG[9]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux18~1_combout\,
	datab => \inst|MREG[9]~33_combout\,
	datac => \inst|registro[2][5]~q\,
	datad => \inst|MREG[9]~32_combout\,
	combout => \inst|Mux204~0_combout\);

-- Location: FF_X25_Y6_N19
\inst|registro[3][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|fec|salida~clkctrl_outclk\,
	asdata => \inst|alu1|Mux4~4_combout\,
	sload => VCC,
	ena => \inst|registro[3][7]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|registro[3][5]~q\);

-- Location: LCCOMB_X25_Y6_N16
\inst|Mux204~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux204~1_combout\ = (\inst|MREG[9]~32_combout\ & ((\inst|Mux204~0_combout\ & (\inst|Mux18~0_combout\)) # (!\inst|Mux204~0_combout\ & ((\inst|registro[3][5]~q\))))) # (!\inst|MREG[9]~32_combout\ & (((\inst|Mux204~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux18~0_combout\,
	datab => \inst|MREG[9]~32_combout\,
	datac => \inst|Mux204~0_combout\,
	datad => \inst|registro[3][5]~q\,
	combout => \inst|Mux204~1_combout\);

-- Location: LCCOMB_X24_Y8_N26
\inst|Mux204~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux204~2_combout\ = (!\inst|MREG[9]~35_combout\ & (\inst|Mux204~1_combout\ & ((!\inst|MREG[22]~34_combout\) # (!\inst|addr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MREG[9]~35_combout\,
	datab => \inst|Mux204~1_combout\,
	datac => \inst|addr\(2),
	datad => \inst|MREG[22]~34_combout\,
	combout => \inst|Mux204~2_combout\);

-- Location: FF_X24_Y8_N27
\inst|MREG[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|fec|salida~clkctrl_outclk\,
	d => \inst|Mux204~2_combout\,
	ena => \inst|MREG[9]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MREG\(9));

-- Location: LCCOMB_X21_Y7_N10
\inst|alu1|unidad_logica|salida~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|salida~13_combout\ = (\inst|MREG\(19) & (\inst|alu1|Mux10~0_combout\)) # (!\inst|MREG\(19) & (((\inst|alu1|Mux10~0_combout\ & \inst|MREG\(9))) # (!\inst|alu1|Mux11~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux10~0_combout\,
	datab => \inst|MREG\(9),
	datac => \inst|alu1|Mux11~0_combout\,
	datad => \inst|MREG\(19),
	combout => \inst|alu1|unidad_logica|salida~13_combout\);

-- Location: LCCOMB_X21_Y7_N4
\inst|alu1|unidad_logica|salida~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|salida~14_combout\ = (\inst|MREG\(9) & \inst|MREG\(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|MREG\(9),
	datad => \inst|MREG\(19),
	combout => \inst|alu1|unidad_logica|salida~14_combout\);

-- Location: LCCOMB_X24_Y6_N24
\inst|Mux40~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux40~0_combout\ = (\inst|Mux157~0_combout\ & ((\inst|Mux210~0_combout\ & (\inst|addr2\(3))) # (!\inst|Mux210~0_combout\ & ((!\inst|Mux178~1_combout\))))) # (!\inst|Mux157~0_combout\ & (\inst|addr2\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux157~0_combout\,
	datab => \inst|addr2\(3),
	datac => \inst|Mux178~1_combout\,
	datad => \inst|Mux210~0_combout\,
	combout => \inst|Mux40~0_combout\);

-- Location: LCCOMB_X24_Y6_N14
\inst|Mux157~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux157~1_combout\ = (!\inst|addr\(1) & (!\inst|addr\(3) & (!\inst|addr\(0) & !\inst|addr\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|addr\(1),
	datab => \inst|addr\(3),
	datac => \inst|addr\(0),
	datad => \inst|addr\(2),
	combout => \inst|Mux157~1_combout\);

-- Location: LCCOMB_X24_Y6_N22
\inst|Mux154~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux154~0_combout\ = (\inst|Mux157~1_combout\) # (\inst|addr2\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Mux157~1_combout\,
	datad => \inst|addr2\(3),
	combout => \inst|Mux154~0_combout\);

-- Location: LCCOMB_X24_Y6_N26
\inst|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux1~0_combout\ = (\inst|addr2\(3) & ((\inst|addr\(3)) # (!\inst|Mux25~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|addr2\(3),
	datac => \inst|Mux25~0_combout\,
	datad => \inst|addr\(3),
	combout => \inst|Mux1~0_combout\);

-- Location: LCCOMB_X24_Y6_N10
\inst|Mux72~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux72~2_combout\ = (\inst|Mux157~0_combout\ & (\inst|addr\(2) & ((\inst|addr2\(3)) # (!\inst|addr\(1))))) # (!\inst|Mux157~0_combout\ & (((\inst|addr2\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|addr\(1),
	datab => \inst|addr\(2),
	datac => \inst|Mux157~0_combout\,
	datad => \inst|addr2\(3),
	combout => \inst|Mux72~2_combout\);

-- Location: LCCOMB_X24_Y6_N28
\inst|Mux186~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux186~0_combout\ = (\ec[1]~input_o\ & (((\inst|Mux72~2_combout\) # (\ec[0]~input_o\)))) # (!\ec[1]~input_o\ & (\inst|Mux1~0_combout\ & ((!\ec[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ec[1]~input_o\,
	datab => \inst|Mux1~0_combout\,
	datac => \inst|Mux72~2_combout\,
	datad => \ec[0]~input_o\,
	combout => \inst|Mux186~0_combout\);

-- Location: LCCOMB_X24_Y6_N16
\inst|Mux186~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux186~1_combout\ = (\inst|Mux186~0_combout\ & (((\inst|Mux154~0_combout\) # (!\ec[0]~input_o\)))) # (!\inst|Mux186~0_combout\ & (\inst|Mux40~0_combout\ & ((\ec[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux40~0_combout\,
	datab => \inst|Mux154~0_combout\,
	datac => \inst|Mux186~0_combout\,
	datad => \ec[0]~input_o\,
	combout => \inst|Mux186~1_combout\);

-- Location: FF_X24_Y6_N17
\inst|addr2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|fec|salida~clkctrl_outclk\,
	d => \inst|Mux186~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|addr2\(3));

-- Location: LCCOMB_X25_Y7_N6
\inst|Mux187~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux187~1_combout\ = (!\ec[0]~input_o\ & !\inst|addr\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ec[0]~input_o\,
	datad => \inst|addr\(0),
	combout => \inst|Mux187~1_combout\);

-- Location: LCCOMB_X25_Y7_N24
\inst|Mux187~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux187~4_combout\ = (\inst|Mux187~1_combout\ & ((\inst|addr\(1) & ((!\inst|addr\(2)))) # (!\inst|addr\(1) & ((\inst|addr\(2)) # (!\ec[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ec[1]~input_o\,
	datab => \inst|Mux187~1_combout\,
	datac => \inst|addr\(1),
	datad => \inst|addr\(2),
	combout => \inst|Mux187~4_combout\);

-- Location: LCCOMB_X25_Y7_N2
\inst|Mux187~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux187~5_combout\ = (\inst|Mux187~4_combout\) # (((\inst|addr2\(2) & !\inst|Mux25~0_combout\)) # (!\inst|registro[2][3]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux187~4_combout\,
	datab => \inst|addr2\(2),
	datac => \inst|registro[2][3]~10_combout\,
	datad => \inst|Mux25~0_combout\,
	combout => \inst|Mux187~5_combout\);

-- Location: LCCOMB_X25_Y7_N0
\inst|addr2[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|addr2[2]~feeder_combout\ = \inst|Mux187~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux187~5_combout\,
	combout => \inst|addr2[2]~feeder_combout\);

-- Location: LCCOMB_X25_Y7_N16
\inst|Mux187~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux187~0_combout\ = (\ec[1]~input_o\ & \ec[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ec[1]~input_o\,
	datad => \ec[0]~input_o\,
	combout => \inst|Mux187~0_combout\);

-- Location: LCCOMB_X25_Y7_N12
\inst|Mux187~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux187~2_combout\ = ((!\ec[1]~input_o\ & ((!\inst|addr\(2)) # (!\inst|addr\(1))))) # (!\ec[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|addr\(1),
	datab => \ec[1]~input_o\,
	datac => \ec[0]~input_o\,
	datad => \inst|addr\(2),
	combout => \inst|Mux187~2_combout\);

-- Location: LCCOMB_X25_Y7_N14
\inst|Mux187~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux187~3_combout\ = (\inst|Mux157~1_combout\ & ((\inst|Mux187~0_combout\) # ((!\inst|addr\(3) & \inst|Mux187~2_combout\)))) # (!\inst|Mux157~1_combout\ & (((!\inst|addr\(3) & \inst|Mux187~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux157~1_combout\,
	datab => \inst|Mux187~0_combout\,
	datac => \inst|addr\(3),
	datad => \inst|Mux187~2_combout\,
	combout => \inst|Mux187~3_combout\);

-- Location: FF_X25_Y7_N1
\inst|addr2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|fec|salida~clkctrl_outclk\,
	d => \inst|addr2[2]~feeder_combout\,
	ena => \inst|Mux187~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|addr2\(2));

-- Location: LCCOMB_X25_Y8_N12
\inst|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux3~2_combout\ = (\inst|Mux157~0_combout\ & (\inst|addr\(2) & ((\inst|addr2\(1)) # (!\inst|addr\(1))))) # (!\inst|Mux157~0_combout\ & (\inst|addr2\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|addr2\(1),
	datab => \inst|addr\(1),
	datac => \inst|addr\(2),
	datad => \inst|Mux157~0_combout\,
	combout => \inst|Mux3~2_combout\);

-- Location: LCCOMB_X25_Y8_N18
\inst|Mux74~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux74~0_combout\ = (\inst|Mux157~0_combout\ & (\inst|addr\(1) & ((\inst|addr2\(1)) # (!\inst|addr\(2))))) # (!\inst|Mux157~0_combout\ & (\inst|addr2\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|addr2\(1),
	datab => \inst|addr\(1),
	datac => \inst|addr\(2),
	datad => \inst|Mux157~0_combout\,
	combout => \inst|Mux74~0_combout\);

-- Location: LCCOMB_X25_Y8_N24
\inst|Mux188~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux188~0_combout\ = (\ec[1]~input_o\ & (((\inst|Mux74~0_combout\) # (\ec[0]~input_o\)))) # (!\ec[1]~input_o\ & (\inst|Mux3~2_combout\ & ((!\ec[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux3~2_combout\,
	datab => \ec[1]~input_o\,
	datac => \inst|Mux74~0_combout\,
	datad => \ec[0]~input_o\,
	combout => \inst|Mux188~0_combout\);

-- Location: LCCOMB_X25_Y8_N14
\inst|Mux42~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux42~4_combout\ = (\inst|addr2\(1) & (((\inst|addr\(2) & \inst|addr\(1))) # (!\inst|Mux157~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux157~0_combout\,
	datab => \inst|addr\(2),
	datac => \inst|addr2\(1),
	datad => \inst|addr\(1),
	combout => \inst|Mux42~4_combout\);

-- Location: LCCOMB_X25_Y8_N10
\inst|Mux156~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux156~0_combout\ = (\inst|addr2\(1)) # (\inst|Mux157~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|addr2\(1),
	datac => \inst|Mux157~1_combout\,
	combout => \inst|Mux156~0_combout\);

-- Location: LCCOMB_X25_Y8_N30
\inst|Mux188~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux188~1_combout\ = (\ec[0]~input_o\ & ((\inst|Mux188~0_combout\ & ((\inst|Mux156~0_combout\))) # (!\inst|Mux188~0_combout\ & (\inst|Mux42~4_combout\)))) # (!\ec[0]~input_o\ & (\inst|Mux188~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ec[0]~input_o\,
	datab => \inst|Mux188~0_combout\,
	datac => \inst|Mux42~4_combout\,
	datad => \inst|Mux156~0_combout\,
	combout => \inst|Mux188~1_combout\);

-- Location: FF_X25_Y8_N31
\inst|addr2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|fec|salida~clkctrl_outclk\,
	d => \inst|Mux188~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|addr2\(1));

-- Location: LCCOMB_X25_Y8_N22
\inst|Mux157~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux157~2_combout\ = (\inst|Mux157~1_combout\) # (\inst|addr2\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Mux157~1_combout\,
	datad => \inst|addr2\(0),
	combout => \inst|Mux157~2_combout\);

-- Location: LCCOMB_X25_Y8_N8
\inst|Mux43~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux43~2_combout\ = (\inst|Mux157~0_combout\ & (\inst|addr\(2) & ((\inst|addr2\(0)) # (!\inst|addr\(1))))) # (!\inst|Mux157~0_combout\ & (\inst|addr2\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux157~0_combout\,
	datab => \inst|addr2\(0),
	datac => \inst|addr\(2),
	datad => \inst|addr\(1),
	combout => \inst|Mux43~2_combout\);

-- Location: LCCOMB_X25_Y8_N28
\inst|addr2[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|addr2[0]~0_combout\ = (\ec[1]~input_o\ & (\inst|Mux157~2_combout\)) # (!\ec[1]~input_o\ & ((\inst|Mux43~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux157~2_combout\,
	datab => \inst|Mux43~2_combout\,
	datad => \ec[1]~input_o\,
	combout => \inst|addr2[0]~0_combout\);

-- Location: LCCOMB_X25_Y8_N0
\inst|Mux75~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux75~0_combout\ = (\inst|Mux157~0_combout\ & (\inst|addr\(1) & ((\inst|addr2\(0)) # (!\inst|addr\(2))))) # (!\inst|Mux157~0_combout\ & (\inst|addr2\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux157~0_combout\,
	datab => \inst|addr2\(0),
	datac => \inst|addr\(2),
	datad => \inst|addr\(1),
	combout => \inst|Mux75~0_combout\);

-- Location: FF_X25_Y8_N29
\inst|addr2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|fec|salida~clkctrl_outclk\,
	d => \inst|addr2[0]~0_combout\,
	asdata => \inst|Mux75~0_combout\,
	sload => \ALT_INV_ec[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|addr2\(0));

-- Location: LCCOMB_X25_Y8_N26
\inst|val2|codigos~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|val2|codigos~18_combout\ = (!\inst|addr2\(1) & (!\inst|addr2\(0) & (\inst|addr2\(3) $ (\inst|addr2\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|addr2\(3),
	datab => \inst|addr2\(2),
	datac => \inst|addr2\(1),
	datad => \inst|addr2\(0),
	combout => \inst|val2|codigos~18_combout\);

-- Location: LCCOMB_X24_Y6_N4
\inst|MREG[8]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|MREG[8]~36_combout\ = (\ec[1]~input_o\ & ((\ec[0]~input_o\) # ((!\inst|addr\(3) & !\inst|Mux210~0_combout\)))) # (!\ec[1]~input_o\ & (!\inst|addr\(3) & ((!\inst|Mux210~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ec[1]~input_o\,
	datab => \inst|addr\(3),
	datac => \ec[0]~input_o\,
	datad => \inst|Mux210~0_combout\,
	combout => \inst|MREG[8]~36_combout\);

-- Location: LCCOMB_X23_Y6_N0
\inst|MREG[8]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|MREG[8]~29_combout\ = (\inst|addr\(0) & (\inst|addr\(3) & ((\ec[0]~input_o\) # (\ec[1]~input_o\)))) # (!\inst|addr\(0) & (!\inst|addr\(3) & ((\ec[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|addr\(0),
	datab => \inst|addr\(3),
	datac => \ec[0]~input_o\,
	datad => \ec[1]~input_o\,
	combout => \inst|MREG[8]~29_combout\);

-- Location: FF_X22_Y6_N7
\inst|registro[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|fec|salida~clkctrl_outclk\,
	asdata => \inst|alu1|Mux6~10_combout\,
	sload => VCC,
	ena => \inst|registro[2][3]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|registro[2][3]~q\);

-- Location: LCCOMB_X23_Y6_N28
\inst|MREG[8]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|MREG[8]~31_combout\ = (\ec[1]~input_o\ & (((\inst|addr\(0))) # (!\inst|addr\(3)))) # (!\ec[1]~input_o\ & (!\inst|addr\(3) & (!\ec[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ec[1]~input_o\,
	datab => \inst|addr\(3),
	datac => \ec[0]~input_o\,
	datad => \inst|addr\(0),
	combout => \inst|MREG[8]~31_combout\);

-- Location: FF_X23_Y6_N13
\inst|registro[3][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|fec|salida~clkctrl_outclk\,
	asdata => \inst|alu1|Mux6~10_combout\,
	sload => VCC,
	ena => \inst|registro[3][7]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|registro[3][3]~q\);

-- Location: LCCOMB_X23_Y6_N18
\inst|MREG[8]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|MREG[8]~30_combout\ = (\ec[1]~input_o\ & (\inst|addr\(3) $ (((!\inst|addr\(0)))))) # (!\ec[1]~input_o\ & (\ec[0]~input_o\ & (\inst|addr\(3) $ (!\inst|addr\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ec[1]~input_o\,
	datab => \inst|addr\(3),
	datac => \ec[0]~input_o\,
	datad => \inst|addr\(0),
	combout => \inst|MREG[8]~30_combout\);

-- Location: LCCOMB_X23_Y6_N12
\inst|Mux206~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux206~1_combout\ = (\inst|MREG[8]~31_combout\ & ((\inst|registro[2][3]~q\) # ((\inst|MREG[8]~30_combout\)))) # (!\inst|MREG[8]~31_combout\ & (((\inst|registro[3][3]~q\ & !\inst|MREG[8]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|registro[2][3]~q\,
	datab => \inst|MREG[8]~31_combout\,
	datac => \inst|registro[3][3]~q\,
	datad => \inst|MREG[8]~30_combout\,
	combout => \inst|Mux206~1_combout\);

-- Location: LCCOMB_X21_Y6_N20
\inst|registro[4][2]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|registro[4][2]~17_combout\ = (\inst|addr\(3) & ((\ec[1]~input_o\) # ((\inst|addr\(0)) # (\ec[0]~input_o\)))) # (!\inst|addr\(3) & (((\ec[1]~input_o\ & \ec[0]~input_o\)) # (!\inst|addr\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ec[1]~input_o\,
	datab => \inst|addr\(3),
	datac => \inst|addr\(0),
	datad => \ec[0]~input_o\,
	combout => \inst|registro[4][2]~17_combout\);

-- Location: LCCOMB_X21_Y6_N10
\inst|registro[4][2]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|registro[4][2]~18_combout\ = (!\inst|registro[4][2]~17_combout\ & ((\inst|addr\(2) & (\inst|addr\(0) & \inst|addr\(1))) # (!\inst|addr\(2) & (!\inst|addr\(0) & !\inst|addr\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|addr\(2),
	datab => \inst|addr\(0),
	datac => \inst|addr\(1),
	datad => \inst|registro[4][2]~17_combout\,
	combout => \inst|registro[4][2]~18_combout\);

-- Location: FF_X21_Y6_N29
\inst|registro[4][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|fec|salida~clkctrl_outclk\,
	asdata => \inst|alu1|Mux6~10_combout\,
	sload => VCC,
	ena => \inst|registro[4][2]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|registro[4][3]~q\);

-- Location: LCCOMB_X23_Y6_N26
\inst|Mux206~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux206~0_combout\ = (\inst|registro[4][3]~q\ & \inst|addr\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|registro[4][3]~q\,
	datac => \inst|addr\(3),
	combout => \inst|Mux206~0_combout\);

-- Location: LCCOMB_X23_Y6_N16
\inst|Mux206~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux206~2_combout\ = (\inst|MREG[8]~29_combout\ & ((\inst|Mux206~1_combout\ & (\inst|Mux206~0_combout\)) # (!\inst|Mux206~1_combout\ & ((\inst|registro[5][3]~q\))))) # (!\inst|MREG[8]~29_combout\ & (\inst|Mux206~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MREG[8]~29_combout\,
	datab => \inst|Mux206~1_combout\,
	datac => \inst|Mux206~0_combout\,
	datad => \inst|registro[5][3]~q\,
	combout => \inst|Mux206~2_combout\);

-- Location: LCCOMB_X24_Y8_N20
\inst|Mux206~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux206~3_combout\ = (\inst|MREG[8]~36_combout\ & (\inst|val2|codigos~18_combout\)) # (!\inst|MREG[8]~36_combout\ & ((\inst|Mux206~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|val2|codigos~18_combout\,
	datac => \inst|MREG[8]~36_combout\,
	datad => \inst|Mux206~2_combout\,
	combout => \inst|Mux206~3_combout\);

-- Location: LCCOMB_X19_Y4_N26
\inst|MREG[8]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|MREG[8]~27_combout\ = (\inst|addr\(2) & ((\inst|addr\(1)) # ((\inst|addr\(3) & \inst|addr\(0))))) # (!\inst|addr\(2) & (\inst|addr\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|addr\(3),
	datab => \inst|addr\(1),
	datac => \inst|addr\(0),
	datad => \inst|addr\(2),
	combout => \inst|MREG[8]~27_combout\);

-- Location: LCCOMB_X25_Y7_N26
\inst|MREG[8]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|MREG[8]~26_combout\ = (\inst|Mux178~1_combout\ & (((!\inst|Mux187~0_combout\) # (!\inst|addr\(3))))) # (!\inst|Mux178~1_combout\ & (\inst|registro[2][3]~10_combout\ & ((!\inst|Mux187~0_combout\) # (!\inst|addr\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux178~1_combout\,
	datab => \inst|registro[2][3]~10_combout\,
	datac => \inst|addr\(3),
	datad => \inst|Mux187~0_combout\,
	combout => \inst|MREG[8]~26_combout\);

-- Location: LCCOMB_X19_Y4_N20
\inst|MREG[8]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|MREG[8]~25_combout\ = (\ec[1]~input_o\) # (\ec[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ec[1]~input_o\,
	datad => \ec[0]~input_o\,
	combout => \inst|MREG[8]~25_combout\);

-- Location: LCCOMB_X19_Y8_N6
\inst|MREG[8]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|MREG[8]~28_combout\ = (\inst|MREG[8]~26_combout\ & ((\inst|MREG[8]~27_combout\ & ((\inst|MREG[8]~25_combout\) # (!\inst|addr\(0)))) # (!\inst|MREG[8]~27_combout\ & (\inst|addr\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MREG[8]~27_combout\,
	datab => \inst|addr\(0),
	datac => \inst|MREG[8]~26_combout\,
	datad => \inst|MREG[8]~25_combout\,
	combout => \inst|MREG[8]~28_combout\);

-- Location: FF_X24_Y8_N21
\inst|MREG[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|fec|salida~clkctrl_outclk\,
	d => \inst|Mux206~3_combout\,
	ena => \inst|MREG[8]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MREG\(7));

-- Location: LCCOMB_X25_Y8_N4
\inst|val2|codigos~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|val2|codigos~15_combout\ = (\inst|addr2\(2) & ((\inst|addr2\(0) & (\inst|addr2\(3))) # (!\inst|addr2\(0) & ((\inst|addr2\(1)))))) # (!\inst|addr2\(2) & (\inst|addr2\(3) & (!\inst|addr2\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|addr2\(3),
	datab => \inst|addr2\(2),
	datac => \inst|addr2\(1),
	datad => \inst|addr2\(0),
	combout => \inst|val2|codigos~15_combout\);

-- Location: FF_X22_Y6_N11
\inst|registro[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|fec|salida~clkctrl_outclk\,
	asdata => \inst|alu1|Mux9~11_combout\,
	sload => VCC,
	ena => \inst|registro[2][3]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|registro[2][0]~q\);

-- Location: FF_X23_Y6_N23
\inst|registro[3][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|fec|salida~clkctrl_outclk\,
	asdata => \inst|alu1|Mux9~11_combout\,
	sload => VCC,
	ena => \inst|registro[3][7]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|registro[3][0]~q\);

-- Location: LCCOMB_X23_Y6_N22
\inst|Mux209~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux209~1_combout\ = (\inst|MREG[8]~30_combout\ & (((!\inst|MREG[8]~31_combout\)))) # (!\inst|MREG[8]~30_combout\ & ((\inst|MREG[8]~31_combout\ & (\inst|registro[2][0]~q\)) # (!\inst|MREG[8]~31_combout\ & ((\inst|registro[3][0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|registro[2][0]~q\,
	datab => \inst|MREG[8]~30_combout\,
	datac => \inst|registro[3][0]~q\,
	datad => \inst|MREG[8]~31_combout\,
	combout => \inst|Mux209~1_combout\);

-- Location: FF_X21_Y6_N1
\inst|registro[4][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|fec|salida~clkctrl_outclk\,
	asdata => \inst|alu1|Mux9~11_combout\,
	sload => VCC,
	ena => \inst|registro[4][2]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|registro[4][0]~q\);

-- Location: LCCOMB_X19_Y6_N12
\inst|Mux209~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux209~0_combout\ = (\inst|registro[4][0]~q\) # (!\inst|addr\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|addr\(3),
	datad => \inst|registro[4][0]~q\,
	combout => \inst|Mux209~0_combout\);

-- Location: LCCOMB_X19_Y6_N6
\inst|registro[5][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|registro[5][0]~feeder_combout\ = \inst|alu1|Mux9~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|alu1|Mux9~11_combout\,
	combout => \inst|registro[5][0]~feeder_combout\);

-- Location: FF_X19_Y6_N7
\inst|registro[5][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|fec|salida~clkctrl_outclk\,
	d => \inst|registro[5][0]~feeder_combout\,
	ena => \inst|registro[5][6]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|registro[5][0]~q\);

-- Location: LCCOMB_X19_Y6_N2
\inst|Mux209~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux209~2_combout\ = (\inst|Mux209~1_combout\ & (((\inst|registro[5][0]~q\) # (!\inst|MREG[8]~29_combout\)))) # (!\inst|Mux209~1_combout\ & (\inst|Mux209~0_combout\ & (\inst|MREG[8]~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux209~1_combout\,
	datab => \inst|Mux209~0_combout\,
	datac => \inst|MREG[8]~29_combout\,
	datad => \inst|registro[5][0]~q\,
	combout => \inst|Mux209~2_combout\);

-- Location: LCCOMB_X19_Y8_N14
\inst|Mux209~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux209~3_combout\ = (\inst|MREG[8]~36_combout\ & (!\inst|val2|codigos~15_combout\)) # (!\inst|MREG[8]~36_combout\ & ((\inst|Mux209~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|val2|codigos~15_combout\,
	datab => \inst|Mux209~2_combout\,
	datac => \inst|MREG[8]~36_combout\,
	combout => \inst|Mux209~3_combout\);

-- Location: FF_X19_Y8_N15
\inst|MREG[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|fec|salida~clkctrl_outclk\,
	d => \inst|Mux209~3_combout\,
	ena => \inst|MREG[8]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MREG\(4));

-- Location: LCCOMB_X21_Y7_N30
\inst|alu1|unidad_logica|salida~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|salida~27_combout\ = (\inst|MREG\(14) & \inst|MREG\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MREG\(14),
	datad => \inst|MREG\(4),
	combout => \inst|alu1|unidad_logica|salida~27_combout\);

-- Location: LCCOMB_X21_Y7_N16
\inst|alu1|unidad_logica|salida~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|salida~26_combout\ = (\inst|MREG\(14) & (\inst|alu1|Mux10~0_combout\)) # (!\inst|MREG\(14) & (((\inst|alu1|Mux10~0_combout\ & \inst|MREG\(4))) # (!\inst|alu1|Mux11~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux10~0_combout\,
	datab => \inst|alu1|Mux11~0_combout\,
	datac => \inst|MREG\(4),
	datad => \inst|MREG\(14),
	combout => \inst|alu1|unidad_logica|salida~26_combout\);

-- Location: LCCOMB_X21_Y7_N22
\inst|alu1|unidad_logica|aux[0]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|aux[0]~27_combout\ = (\inst|alu1|Mux10~0_combout\ & (((\inst|alu1|unidad_logica|aux\(0))))) # (!\inst|alu1|Mux10~0_combout\ & ((\inst|alu1|Mux11~0_combout\ & ((\inst|MREG\(14)))) # (!\inst|alu1|Mux11~0_combout\ & 
-- (\inst|alu1|unidad_logica|aux\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux10~0_combout\,
	datab => \inst|alu1|Mux11~0_combout\,
	datac => \inst|alu1|unidad_logica|aux\(0),
	datad => \inst|MREG\(14),
	combout => \inst|alu1|unidad_logica|aux[0]~27_combout\);

-- Location: FF_X21_Y7_N23
\inst|alu1|unidad_logica|aux[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|fec|salida~clkctrl_outclk\,
	d => \inst|alu1|unidad_logica|aux[0]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|unidad_logica|aux\(0));

-- Location: LCCOMB_X21_Y7_N12
\inst|alu1|unidad_logica|salida~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|salida~28_combout\ = (\inst|alu1|unidad_logica|salida~26_combout\ & ((\inst|alu1|unidad_logica|salida~27_combout\) # ((!\inst|alu1|Mux3~15_combout\)))) # (!\inst|alu1|unidad_logica|salida~26_combout\ & 
-- (((\inst|alu1|unidad_logica|aux\(0) & \inst|alu1|Mux3~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_logica|salida~27_combout\,
	datab => \inst|alu1|unidad_logica|salida~26_combout\,
	datac => \inst|alu1|unidad_logica|aux\(0),
	datad => \inst|alu1|Mux3~15_combout\,
	combout => \inst|alu1|unidad_logica|salida~28_combout\);

-- Location: FF_X21_Y7_N13
\inst|alu1|unidad_logica|salida[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|fec|salida~clkctrl_outclk\,
	d => \inst|alu1|unidad_logica|salida~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|unidad_logica|salida\(0));

-- Location: LCCOMB_X19_Y6_N16
\inst|alu1|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux9~0_combout\ = (\inst|alu1|unidad_logica|salida\(0) & \inst|alu1|Mux1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|alu1|unidad_logica|salida\(0),
	datad => \inst|alu1|Mux1~4_combout\,
	combout => \inst|alu1|Mux9~0_combout\);

-- Location: LCCOMB_X22_Y3_N4
\inst|alu1|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux0~0_combout\ = (!\inst|MREG\(2) & ((!\inst|MREG\(1)) # (!\inst|MREG\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MREG\(0),
	datac => \inst|MREG\(2),
	datad => \inst|MREG\(1),
	combout => \inst|alu1|Mux0~0_combout\);

-- Location: LCCOMB_X21_Y4_N14
\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~8_combout\ = (\inst|MREG\(4) & (\inst|MREG\(14) $ (\inst|alu1|Mux10~0_combout\))) # (!\inst|MREG\(4) & (\inst|MREG\(14) & \inst|alu1|Mux10~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MREG\(4),
	datab => \inst|MREG\(14),
	datad => \inst|alu1|Mux10~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~8_combout\);

-- Location: LCCOMB_X21_Y4_N4
\inst|alu1|Mux9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux9~1_combout\ = (\inst|MREG\(4) & (\inst|MREG\(14) $ (\inst|alu1|Mux10~0_combout\))) # (!\inst|MREG\(4) & (\inst|MREG\(14) & \inst|alu1|Mux10~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MREG\(4),
	datab => \inst|MREG\(14),
	datad => \inst|alu1|Mux10~0_combout\,
	combout => \inst|alu1|Mux9~1_combout\);

-- Location: FF_X25_Y6_N31
\inst|registro[3][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|fec|salida~clkctrl_outclk\,
	asdata => \inst|alu1|Mux2~4_combout\,
	sload => VCC,
	ena => \inst|registro[3][7]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|registro[3][7]~q\);

-- Location: FF_X25_Y6_N1
\inst|registro[2][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|fec|salida~clkctrl_outclk\,
	asdata => \inst|alu1|Mux2~4_combout\,
	sload => VCC,
	ena => \inst|registro[2][3]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|registro[2][7]~q\);

-- Location: LCCOMB_X25_Y6_N0
\inst|Mux202~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux202~0_combout\ = (\inst|MREG[9]~33_combout\ & ((\inst|Mux16~1_combout\) # ((\inst|MREG[9]~32_combout\)))) # (!\inst|MREG[9]~33_combout\ & (((\inst|registro[2][7]~q\ & !\inst|MREG[9]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux16~1_combout\,
	datab => \inst|MREG[9]~33_combout\,
	datac => \inst|registro[2][7]~q\,
	datad => \inst|MREG[9]~32_combout\,
	combout => \inst|Mux202~0_combout\);

-- Location: FF_X19_Y5_N17
\inst|registro[4][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|fec|salida~clkctrl_outclk\,
	asdata => \inst|alu1|Mux2~4_combout\,
	sload => VCC,
	ena => \inst|registro[4][6]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|registro[4][7]~q\);

-- Location: LCCOMB_X19_Y6_N30
\inst|Mux16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux16~0_combout\ = (\inst|addr\(3) & \inst|registro[4][7]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|addr\(3),
	datad => \inst|registro[4][7]~q\,
	combout => \inst|Mux16~0_combout\);

-- Location: LCCOMB_X25_Y6_N24
\inst|Mux202~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux202~1_combout\ = (\inst|MREG[9]~32_combout\ & ((\inst|Mux202~0_combout\ & ((\inst|Mux16~0_combout\))) # (!\inst|Mux202~0_combout\ & (\inst|registro[3][7]~q\)))) # (!\inst|MREG[9]~32_combout\ & (((\inst|Mux202~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|registro[3][7]~q\,
	datab => \inst|MREG[9]~32_combout\,
	datac => \inst|Mux202~0_combout\,
	datad => \inst|Mux16~0_combout\,
	combout => \inst|Mux202~1_combout\);

-- Location: LCCOMB_X24_Y8_N28
\inst|Mux202~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux202~2_combout\ = (!\inst|MREG[9]~35_combout\ & (\inst|Mux202~1_combout\ & ((!\inst|MREG[22]~34_combout\) # (!\inst|addr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MREG[9]~35_combout\,
	datab => \inst|addr\(2),
	datac => \inst|Mux202~1_combout\,
	datad => \inst|MREG[22]~34_combout\,
	combout => \inst|Mux202~2_combout\);

-- Location: FF_X24_Y8_N29
\inst|MREG[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|fec|salida~clkctrl_outclk\,
	d => \inst|Mux202~2_combout\,
	ena => \inst|MREG[9]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MREG\(11));

-- Location: FF_X25_Y6_N23
\inst|registro[3][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|fec|salida~clkctrl_outclk\,
	asdata => \inst|alu1|Mux3~13_combout\,
	sload => VCC,
	ena => \inst|registro[3][7]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|registro[3][6]~q\);

-- Location: LCCOMB_X25_Y6_N20
\inst|Mux203~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux203~0_combout\ = (\inst|MREG[9]~33_combout\ & (((\inst|MREG[9]~32_combout\)))) # (!\inst|MREG[9]~33_combout\ & ((\inst|MREG[9]~32_combout\ & (\inst|registro[3][6]~q\)) # (!\inst|MREG[9]~32_combout\ & ((\inst|registro[2][6]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|registro[3][6]~q\,
	datab => \inst|MREG[9]~33_combout\,
	datac => \inst|registro[2][6]~q\,
	datad => \inst|MREG[9]~32_combout\,
	combout => \inst|Mux203~0_combout\);

-- Location: FF_X19_Y5_N1
\inst|registro[4][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|fec|salida~clkctrl_outclk\,
	asdata => \inst|alu1|Mux3~13_combout\,
	sload => VCC,
	ena => \inst|registro[4][6]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|registro[4][6]~q\);

-- Location: LCCOMB_X19_Y5_N2
\inst|Mux17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux17~0_combout\ = (\inst|addr\(3) & \inst|registro[4][6]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|addr\(3),
	datad => \inst|registro[4][6]~q\,
	combout => \inst|Mux17~0_combout\);

-- Location: FF_X19_Y5_N13
\inst|registro[5][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|fec|salida~clkctrl_outclk\,
	asdata => \inst|alu1|Mux3~13_combout\,
	sload => VCC,
	ena => \inst|registro[5][6]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|registro[5][6]~q\);

-- Location: LCCOMB_X19_Y5_N12
\inst|Mux17~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux17~1_combout\ = (\inst|registro[5][6]~q\ & \inst|addr\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|registro[5][6]~q\,
	datad => \inst|addr\(3),
	combout => \inst|Mux17~1_combout\);

-- Location: LCCOMB_X25_Y6_N10
\inst|Mux203~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux203~1_combout\ = (\inst|Mux203~0_combout\ & ((\inst|Mux17~0_combout\) # ((!\inst|MREG[9]~33_combout\)))) # (!\inst|Mux203~0_combout\ & (((\inst|Mux17~1_combout\ & \inst|MREG[9]~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux203~0_combout\,
	datab => \inst|Mux17~0_combout\,
	datac => \inst|Mux17~1_combout\,
	datad => \inst|MREG[9]~33_combout\,
	combout => \inst|Mux203~1_combout\);

-- Location: LCCOMB_X24_Y8_N18
\inst|Mux203~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux203~2_combout\ = (!\inst|MREG[9]~35_combout\ & (\inst|Mux203~1_combout\ & ((!\inst|MREG[22]~34_combout\) # (!\inst|addr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MREG[9]~35_combout\,
	datab => \inst|Mux203~1_combout\,
	datac => \inst|addr\(2),
	datad => \inst|MREG[22]~34_combout\,
	combout => \inst|Mux203~2_combout\);

-- Location: FF_X24_Y8_N19
\inst|MREG[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|fec|salida~clkctrl_outclk\,
	d => \inst|Mux203~2_combout\,
	ena => \inst|MREG[9]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MREG\(10));

-- Location: FF_X21_Y6_N15
\inst|registro[4][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|fec|salida~clkctrl_outclk\,
	asdata => \inst|alu1|Mux5~4_combout\,
	sload => VCC,
	ena => \inst|registro[4][2]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|registro[4][4]~q\);

-- Location: LCCOMB_X23_Y6_N6
\inst|Mux205~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux205~0_combout\ = (\inst|addr\(3) & \inst|registro[4][4]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|addr\(3),
	datad => \inst|registro[4][4]~q\,
	combout => \inst|Mux205~0_combout\);

-- Location: FF_X21_Y5_N27
\inst|registro[5][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|fec|salida~clkctrl_outclk\,
	d => \inst|alu1|Mux5~4_combout\,
	ena => \inst|registro[5][6]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|registro[5][4]~q\);

-- Location: FF_X19_Y6_N21
\inst|registro[2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|fec|salida~clkctrl_outclk\,
	asdata => \inst|alu1|Mux5~4_combout\,
	sload => VCC,
	ena => \inst|registro[2][3]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|registro[2][4]~q\);

-- Location: FF_X23_Y6_N3
\inst|registro[3][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|fec|salida~clkctrl_outclk\,
	asdata => \inst|alu1|Mux5~4_combout\,
	sload => VCC,
	ena => \inst|registro[3][7]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|registro[3][4]~q\);

-- Location: LCCOMB_X23_Y6_N2
\inst|Mux205~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux205~1_combout\ = (\inst|MREG[8]~31_combout\ & ((\inst|registro[2][4]~q\) # ((\inst|MREG[8]~30_combout\)))) # (!\inst|MREG[8]~31_combout\ & (((\inst|registro[3][4]~q\ & !\inst|MREG[8]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|registro[2][4]~q\,
	datab => \inst|MREG[8]~31_combout\,
	datac => \inst|registro[3][4]~q\,
	datad => \inst|MREG[8]~30_combout\,
	combout => \inst|Mux205~1_combout\);

-- Location: LCCOMB_X23_Y6_N8
\inst|Mux205~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux205~2_combout\ = (\inst|Mux205~1_combout\ & ((\inst|Mux205~0_combout\) # ((!\inst|MREG[8]~29_combout\)))) # (!\inst|Mux205~1_combout\ & (((\inst|registro[5][4]~q\ & \inst|MREG[8]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux205~0_combout\,
	datab => \inst|registro[5][4]~q\,
	datac => \inst|Mux205~1_combout\,
	datad => \inst|MREG[8]~29_combout\,
	combout => \inst|Mux205~2_combout\);

-- Location: LCCOMB_X25_Y8_N16
\inst|val2|codigos~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|val2|codigos~19_combout\ = (!\inst|addr2\(1) & ((\inst|addr2\(3) & (!\inst|addr2\(2) & !\inst|addr2\(0))) # (!\inst|addr2\(3) & (\inst|addr2\(2) & \inst|addr2\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|addr2\(3),
	datab => \inst|addr2\(2),
	datac => \inst|addr2\(1),
	datad => \inst|addr2\(0),
	combout => \inst|val2|codigos~19_combout\);

-- Location: LCCOMB_X21_Y8_N20
\inst|Mux205~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux205~3_combout\ = (\inst|MREG[8]~36_combout\ & ((\inst|val2|codigos~19_combout\))) # (!\inst|MREG[8]~36_combout\ & (\inst|Mux205~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|MREG[8]~36_combout\,
	datac => \inst|Mux205~2_combout\,
	datad => \inst|val2|codigos~19_combout\,
	combout => \inst|Mux205~3_combout\);

-- Location: FF_X21_Y8_N21
\inst|MREG[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|fec|salida~clkctrl_outclk\,
	d => \inst|Mux205~3_combout\,
	ena => \inst|MREG[8]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MREG\(8));

-- Location: LCCOMB_X19_Y6_N10
\inst|registro[2][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|registro[2][2]~feeder_combout\ = \inst|alu1|Mux7~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|alu1|Mux7~5_combout\,
	combout => \inst|registro[2][2]~feeder_combout\);

-- Location: FF_X19_Y6_N11
\inst|registro[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|fec|salida~clkctrl_outclk\,
	d => \inst|registro[2][2]~feeder_combout\,
	ena => \inst|registro[2][3]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|registro[2][2]~q\);

-- Location: FF_X23_Y6_N11
\inst|registro[3][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|fec|salida~clkctrl_outclk\,
	asdata => \inst|alu1|Mux7~5_combout\,
	sload => VCC,
	ena => \inst|registro[3][7]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|registro[3][2]~q\);

-- Location: LCCOMB_X23_Y6_N10
\inst|Mux207~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux207~1_combout\ = (\inst|MREG[8]~31_combout\ & (\inst|registro[2][2]~q\ & ((!\inst|MREG[8]~30_combout\)))) # (!\inst|MREG[8]~31_combout\ & (((\inst|registro[3][2]~q\) # (\inst|MREG[8]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|registro[2][2]~q\,
	datab => \inst|MREG[8]~31_combout\,
	datac => \inst|registro[3][2]~q\,
	datad => \inst|MREG[8]~30_combout\,
	combout => \inst|Mux207~1_combout\);

-- Location: FF_X19_Y6_N29
\inst|registro[5][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|fec|salida~clkctrl_outclk\,
	asdata => \inst|alu1|Mux7~5_combout\,
	sload => VCC,
	ena => \inst|registro[5][6]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|registro[5][2]~q\);

-- Location: FF_X21_Y6_N25
\inst|registro[4][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|fec|salida~clkctrl_outclk\,
	asdata => \inst|alu1|Mux7~5_combout\,
	sload => VCC,
	ena => \inst|registro[4][2]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|registro[4][2]~q\);

-- Location: LCCOMB_X23_Y6_N14
\inst|Mux207~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux207~0_combout\ = (\inst|registro[4][2]~q\) # (!\inst|addr\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|addr\(3),
	datad => \inst|registro[4][2]~q\,
	combout => \inst|Mux207~0_combout\);

-- Location: LCCOMB_X23_Y6_N4
\inst|Mux207~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux207~2_combout\ = (\inst|Mux207~1_combout\ & ((\inst|registro[5][2]~q\) # ((!\inst|MREG[8]~29_combout\)))) # (!\inst|Mux207~1_combout\ & (((\inst|Mux207~0_combout\ & \inst|MREG[8]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux207~1_combout\,
	datab => \inst|registro[5][2]~q\,
	datac => \inst|Mux207~0_combout\,
	datad => \inst|MREG[8]~29_combout\,
	combout => \inst|Mux207~2_combout\);

-- Location: LCCOMB_X25_Y8_N20
\inst|val2|codigos~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|val2|codigos~17_combout\ = (\inst|addr2\(3) & ((\inst|addr2\(1) & (!\inst|addr2\(2))) # (!\inst|addr2\(1) & ((!\inst|addr2\(0)))))) # (!\inst|addr2\(3) & ((\inst|addr2\(2)) # ((\inst|addr2\(1) & \inst|addr2\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010001101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|addr2\(3),
	datab => \inst|addr2\(2),
	datac => \inst|addr2\(1),
	datad => \inst|addr2\(0),
	combout => \inst|val2|codigos~17_combout\);

-- Location: LCCOMB_X19_Y8_N2
\inst|Mux207~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux207~3_combout\ = (\inst|MREG[8]~36_combout\ & ((\inst|val2|codigos~17_combout\))) # (!\inst|MREG[8]~36_combout\ & (\inst|Mux207~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|MREG[8]~36_combout\,
	datac => \inst|Mux207~2_combout\,
	datad => \inst|val2|codigos~17_combout\,
	combout => \inst|Mux207~3_combout\);

-- Location: FF_X19_Y8_N3
\inst|MREG[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|fec|salida~clkctrl_outclk\,
	d => \inst|Mux207~3_combout\,
	ena => \inst|MREG[8]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MREG\(6));

-- Location: LCCOMB_X21_Y6_N22
\inst|registro[1][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|registro[1][1]~feeder_combout\ = \inst|alu1|Mux8~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|alu1|Mux8~4_combout\,
	combout => \inst|registro[1][1]~feeder_combout\);

-- Location: FF_X21_Y6_N23
\inst|registro[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|fec|salida~clkctrl_outclk\,
	d => \inst|registro[1][1]~feeder_combout\,
	ena => \inst|registro[1][7]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|registro[1][1]~q\);

-- Location: LCCOMB_X19_Y4_N22
\inst|MREG[15]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|MREG[15]~24_combout\ = (!\inst|addr\(3) & (((!\ec[1]~input_o\ & !\ec[0]~input_o\)) # (!\inst|addr\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ec[1]~input_o\,
	datab => \inst|addr\(3),
	datac => \inst|addr\(0),
	datad => \ec[0]~input_o\,
	combout => \inst|MREG[15]~24_combout\);

-- Location: LCCOMB_X21_Y6_N26
\inst|MREG[15]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|MREG[15]~22_combout\ = (\ec[1]~input_o\ & (\inst|addr\(3))) # (!\ec[1]~input_o\ & (\ec[0]~input_o\ & ((!\inst|addr\(0)) # (!\inst|addr\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ec[1]~input_o\,
	datab => \inst|addr\(3),
	datac => \inst|addr\(0),
	datad => \ec[0]~input_o\,
	combout => \inst|MREG[15]~22_combout\);

-- Location: LCCOMB_X21_Y6_N4
\inst|MREG[15]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|MREG[15]~23_combout\ = (\ec[1]~input_o\ & ((\inst|addr\(0)) # (!\inst|addr\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|addr\(3),
	datac => \inst|addr\(0),
	datad => \ec[1]~input_o\,
	combout => \inst|MREG[15]~23_combout\);

-- Location: FF_X22_Y6_N9
\inst|registro[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|fec|salida~clkctrl_outclk\,
	asdata => \inst|alu1|Mux8~4_combout\,
	sload => VCC,
	ena => \inst|registro[2][3]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|registro[2][1]~q\);

-- Location: LCCOMB_X21_Y6_N12
\inst|Mux198~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux198~0_combout\ = (\inst|MREG[15]~22_combout\ & ((\inst|MREG[15]~23_combout\) # ((\inst|registro[2][1]~q\)))) # (!\inst|MREG[15]~22_combout\ & (!\inst|MREG[15]~23_combout\ & (\inst|registro[4][1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MREG[15]~22_combout\,
	datab => \inst|MREG[15]~23_combout\,
	datac => \inst|registro[4][1]~q\,
	datad => \inst|registro[2][1]~q\,
	combout => \inst|Mux198~0_combout\);

-- Location: FF_X21_Y4_N29
\inst|registro[5][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|fec|salida~clkctrl_outclk\,
	d => \inst|alu1|Mux8~4_combout\,
	ena => \inst|registro[5][6]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|registro[5][1]~q\);

-- Location: FF_X23_Y6_N25
\inst|registro[3][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|fec|salida~clkctrl_outclk\,
	asdata => \inst|alu1|Mux8~4_combout\,
	sload => VCC,
	ena => \inst|registro[3][7]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|registro[3][1]~q\);

-- Location: LCCOMB_X21_Y6_N18
\inst|Mux198~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux198~1_combout\ = (\inst|Mux198~0_combout\ & (((\inst|registro[5][1]~q\)) # (!\inst|MREG[15]~23_combout\))) # (!\inst|Mux198~0_combout\ & (\inst|MREG[15]~23_combout\ & ((\inst|registro[3][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux198~0_combout\,
	datab => \inst|MREG[15]~23_combout\,
	datac => \inst|registro[5][1]~q\,
	datad => \inst|registro[3][1]~q\,
	combout => \inst|Mux198~1_combout\);

-- Location: LCCOMB_X19_Y8_N28
\inst|Mux198~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux198~2_combout\ = (!\inst|MREG[8]~36_combout\ & ((\inst|MREG[15]~24_combout\ & (\inst|registro[1][1]~q\)) # (!\inst|MREG[15]~24_combout\ & ((\inst|Mux198~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|registro[1][1]~q\,
	datab => \inst|MREG[15]~24_combout\,
	datac => \inst|MREG[8]~36_combout\,
	datad => \inst|Mux198~1_combout\,
	combout => \inst|Mux198~2_combout\);

-- Location: FF_X19_Y8_N29
\inst|MREG[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|fec|salida~clkctrl_outclk\,
	d => \inst|Mux198~2_combout\,
	ena => \inst|MREG[8]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MREG\(15));

-- Location: LCCOMB_X21_Y8_N6
\inst|alu1|unidad_aritmetica|resta|s1|Suma\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|resta|s1|Suma~combout\ = \inst|MREG\(5) $ (\inst|MREG\(15) $ (((\inst|MREG\(14)) # (!\inst|MREG\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011001011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MREG\(5),
	datab => \inst|MREG\(4),
	datac => \inst|MREG\(14),
	datad => \inst|MREG\(15),
	combout => \inst|alu1|unidad_aritmetica|resta|s1|Suma~combout\);

-- Location: LCCOMB_X21_Y8_N24
\inst|alu1|unidad_aritmetica|mult|multi1|s1|Suma\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi1|s1|Suma~combout\ = (\inst|MREG\(5) & (\inst|MREG\(14) $ (((\inst|MREG\(4) & \inst|MREG\(15)))))) # (!\inst|MREG\(5) & (\inst|MREG\(4) & ((\inst|MREG\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MREG\(5),
	datab => \inst|MREG\(4),
	datac => \inst|MREG\(14),
	datad => \inst|MREG\(15),
	combout => \inst|alu1|unidad_aritmetica|mult|multi1|s1|Suma~combout\);

-- Location: LCCOMB_X21_Y8_N22
\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~7_combout\ = (\inst|alu1|Mux10~0_combout\ & (\inst|alu1|unidad_aritmetica|resta|s1|Suma~combout\)) # (!\inst|alu1|Mux10~0_combout\ & ((!\inst|alu1|unidad_aritmetica|mult|multi1|s1|Suma~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|resta|s1|Suma~combout\,
	datab => \inst|alu1|unidad_aritmetica|mult|multi1|s1|Suma~combout\,
	datad => \inst|alu1|Mux10~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~7_combout\);

-- Location: LCCOMB_X22_Y5_N2
\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~10_cout\ = CARRY(!\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~8_combout\,
	datad => VCC,
	cout => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~10_cout\);

-- Location: LCCOMB_X22_Y5_N4
\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~11_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~7_combout\ & (!\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~10_cout\)) # 
-- (!\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~7_combout\ & ((\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~10_cout\) # (GND)))
-- \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~12\ = CARRY((!\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~10_cout\) # (!\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~7_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~10_cout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~11_combout\,
	cout => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~12\);

-- Location: LCCOMB_X21_Y4_N18
\inst|alu1|Mux8~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux8~3_combout\ = (\inst|alu1|Mux3~8_combout\ & (\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~11_combout\)) # (!\inst|alu1|Mux3~8_combout\ & ((\inst|MREG\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~11_combout\,
	datab => \inst|alu1|Mux3~8_combout\,
	datad => \inst|MREG\(3),
	combout => \inst|alu1|Mux8~3_combout\);

-- Location: LCCOMB_X21_Y8_N12
\inst|alu1|unidad_aritmetica|suma|s1|Suma\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|s1|Suma~combout\ = \inst|MREG\(15) $ (\inst|MREG\(5) $ (((\inst|MREG\(4) & \inst|MREG\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MREG\(4),
	datab => \inst|MREG\(15),
	datac => \inst|MREG\(14),
	datad => \inst|MREG\(5),
	combout => \inst|alu1|unidad_aritmetica|suma|s1|Suma~combout\);

-- Location: LCCOMB_X21_Y8_N2
\inst|alu1|Mux8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux8~1_combout\ = (\inst|alu1|Mux11~0_combout\ & (((\inst|alu1|Mux10~0_combout\)))) # (!\inst|alu1|Mux11~0_combout\ & ((\inst|alu1|Mux10~0_combout\ & (\inst|alu1|unidad_aritmetica|suma|s1|Suma~combout\)) # (!\inst|alu1|Mux10~0_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|mult|multi1|s1|Suma~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|suma|s1|Suma~combout\,
	datab => \inst|alu1|unidad_aritmetica|mult|multi1|s1|Suma~combout\,
	datac => \inst|alu1|Mux11~0_combout\,
	datad => \inst|alu1|Mux10~0_combout\,
	combout => \inst|alu1|Mux8~1_combout\);

-- Location: LCCOMB_X23_Y8_N8
\inst|alu1|unidad_aritmetica|divi|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan0~0_combout\ = (\inst|MREG\(6)) # ((\inst|MREG\(5)) # ((!\inst|MREG\(17) & \inst|MREG\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MREG\(17),
	datab => \inst|MREG\(6),
	datac => \inst|MREG\(5),
	datad => \inst|MREG\(4),
	combout => \inst|alu1|unidad_aritmetica|divi|LessThan0~0_combout\);

-- Location: LCCOMB_X24_Y8_N4
\inst|alu1|unidad_aritmetica|divi|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add0~0_combout\ = (\inst|MREG\(4) & (\inst|MREG\(17) $ (VCC))) # (!\inst|MREG\(4) & ((\inst|MREG\(17)) # (GND)))
-- \inst|alu1|unidad_aritmetica|divi|Add0~1\ = CARRY((\inst|MREG\(17)) # (!\inst|MREG\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MREG\(4),
	datab => \inst|MREG\(17),
	datad => VCC,
	combout => \inst|alu1|unidad_aritmetica|divi|Add0~0_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add0~1\);

-- Location: LCCOMB_X24_Y8_N6
\inst|alu1|unidad_aritmetica|divi|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add0~2_combout\ = (\inst|MREG\(5) & ((\inst|alu1|unidad_aritmetica|divi|Add0~1\) # (GND))) # (!\inst|MREG\(5) & (!\inst|alu1|unidad_aritmetica|divi|Add0~1\))
-- \inst|alu1|unidad_aritmetica|divi|Add0~3\ = CARRY((\inst|MREG\(5)) # (!\inst|alu1|unidad_aritmetica|divi|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MREG\(5),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add0~1\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add0~2_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add0~3\);

-- Location: LCCOMB_X24_Y8_N8
\inst|alu1|unidad_aritmetica|divi|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add0~4_combout\ = (\inst|MREG\(6) & (!\inst|alu1|unidad_aritmetica|divi|Add0~3\ & VCC)) # (!\inst|MREG\(6) & (\inst|alu1|unidad_aritmetica|divi|Add0~3\ $ (GND)))
-- \inst|alu1|unidad_aritmetica|divi|Add0~5\ = CARRY((!\inst|MREG\(6) & !\inst|alu1|unidad_aritmetica|divi|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MREG\(6),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add0~3\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add0~4_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add0~5\);

-- Location: LCCOMB_X24_Y8_N10
\inst|alu1|unidad_aritmetica|divi|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add0~6_combout\ = (\inst|MREG\(7) & ((\inst|alu1|unidad_aritmetica|divi|Add0~5\) # (GND))) # (!\inst|MREG\(7) & (!\inst|alu1|unidad_aritmetica|divi|Add0~5\))
-- \inst|alu1|unidad_aritmetica|divi|Add0~7\ = CARRY((\inst|MREG\(7)) # (!\inst|alu1|unidad_aritmetica|divi|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|MREG\(7),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add0~5\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add0~6_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add0~7\);

-- Location: LCCOMB_X24_Y8_N12
\inst|alu1|unidad_aritmetica|divi|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add0~8_combout\ = (\inst|MREG\(8) & (!\inst|alu1|unidad_aritmetica|divi|Add0~7\ & VCC)) # (!\inst|MREG\(8) & (\inst|alu1|unidad_aritmetica|divi|Add0~7\ $ (GND)))
-- \inst|alu1|unidad_aritmetica|divi|Add0~9\ = CARRY((!\inst|MREG\(8) & !\inst|alu1|unidad_aritmetica|divi|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MREG\(8),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add0~7\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add0~8_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add0~9\);

-- Location: LCCOMB_X24_Y8_N14
\inst|alu1|unidad_aritmetica|divi|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add0~10_combout\ = (\inst|MREG\(9) & ((\inst|alu1|unidad_aritmetica|divi|Add0~9\) # (GND))) # (!\inst|MREG\(9) & (!\inst|alu1|unidad_aritmetica|divi|Add0~9\))
-- \inst|alu1|unidad_aritmetica|divi|Add0~11\ = CARRY((\inst|MREG\(9)) # (!\inst|alu1|unidad_aritmetica|divi|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MREG\(9),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add0~9\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add0~10_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add0~11\);

-- Location: LCCOMB_X24_Y8_N24
\inst|alu1|unidad_aritmetica|divi|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan0~1_combout\ = (\inst|MREG\(9)) # ((\inst|MREG\(10)) # ((\inst|MREG\(8)) # (\inst|MREG\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MREG\(9),
	datab => \inst|MREG\(10),
	datac => \inst|MREG\(8),
	datad => \inst|MREG\(7),
	combout => \inst|alu1|unidad_aritmetica|divi|LessThan0~1_combout\);

-- Location: LCCOMB_X23_Y8_N2
\inst|alu1|unidad_aritmetica|divi|Add0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add0~15_combout\ = (!\inst|MREG\(11) & (!\inst|alu1|unidad_aritmetica|divi|LessThan0~0_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add0~10_combout\ & !\inst|alu1|unidad_aritmetica|divi|LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MREG\(11),
	datab => \inst|alu1|unidad_aritmetica|divi|LessThan0~0_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|Add0~10_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan0~1_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add0~15_combout\);

-- Location: LCCOMB_X24_Y8_N22
\inst|alu1|unidad_aritmetica|divi|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add0~16_combout\ = (!\inst|alu1|unidad_aritmetica|divi|LessThan0~0_combout\ & (!\inst|alu1|unidad_aritmetica|divi|LessThan0~1_combout\ & (!\inst|MREG\(11) & \inst|alu1|unidad_aritmetica|divi|Add0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|LessThan0~0_combout\,
	datab => \inst|alu1|unidad_aritmetica|divi|LessThan0~1_combout\,
	datac => \inst|MREG\(11),
	datad => \inst|alu1|unidad_aritmetica|divi|Add0~8_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add0~16_combout\);

-- Location: LCCOMB_X23_Y8_N0
\inst|alu1|unidad_aritmetica|divi|Add0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add0~17_combout\ = (!\inst|MREG\(11) & (!\inst|alu1|unidad_aritmetica|divi|LessThan0~0_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add0~6_combout\ & !\inst|alu1|unidad_aritmetica|divi|LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MREG\(11),
	datab => \inst|alu1|unidad_aritmetica|divi|LessThan0~0_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|Add0~6_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan0~1_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add0~17_combout\);

-- Location: LCCOMB_X24_Y8_N0
\inst|alu1|unidad_aritmetica|divi|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add0~18_combout\ = (!\inst|alu1|unidad_aritmetica|divi|LessThan0~0_combout\ & (!\inst|MREG\(11) & (\inst|alu1|unidad_aritmetica|divi|Add0~4_combout\ & !\inst|alu1|unidad_aritmetica|divi|LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|LessThan0~0_combout\,
	datab => \inst|MREG\(11),
	datac => \inst|alu1|unidad_aritmetica|divi|Add0~4_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan0~1_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add0~18_combout\);

-- Location: LCCOMB_X24_Y8_N30
\inst|alu1|unidad_aritmetica|divi|Add0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add0~19_combout\ = (!\inst|alu1|unidad_aritmetica|divi|LessThan0~0_combout\ & (!\inst|alu1|unidad_aritmetica|divi|LessThan0~1_combout\ & (!\inst|MREG\(11) & \inst|alu1|unidad_aritmetica|divi|Add0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|LessThan0~0_combout\,
	datab => \inst|alu1|unidad_aritmetica|divi|LessThan0~1_combout\,
	datac => \inst|MREG\(11),
	datad => \inst|alu1|unidad_aritmetica|divi|Add0~2_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add0~19_combout\);

-- Location: LCCOMB_X23_Y8_N26
\inst|alu1|unidad_aritmetica|divi|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan0~2_combout\ = (\inst|MREG\(11)) # ((\inst|alu1|unidad_aritmetica|divi|LessThan0~0_combout\) # (\inst|alu1|unidad_aritmetica|divi|LessThan0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MREG\(11),
	datac => \inst|alu1|unidad_aritmetica|divi|LessThan0~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan0~1_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|LessThan0~2_combout\);

-- Location: LCCOMB_X23_Y8_N6
\inst|alu1|unidad_aritmetica|divi|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add0~20_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan0~2_combout\ & (\inst|MREG\(17))) # (!\inst|alu1|unidad_aritmetica|divi|LessThan0~2_combout\ & ((\inst|alu1|unidad_aritmetica|divi|Add0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MREG\(17),
	datac => \inst|alu1|unidad_aritmetica|divi|LessThan0~2_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|Add0~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add0~20_combout\);

-- Location: LCCOMB_X24_Y7_N12
\inst|alu1|unidad_aritmetica|divi|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add1~0_combout\ = (\inst|MREG\(16) & ((GND) # (!\inst|MREG\(4)))) # (!\inst|MREG\(16) & (\inst|MREG\(4) $ (GND)))
-- \inst|alu1|unidad_aritmetica|divi|Add1~1\ = CARRY((\inst|MREG\(16)) # (!\inst|MREG\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MREG\(16),
	datab => \inst|MREG\(4),
	datad => VCC,
	combout => \inst|alu1|unidad_aritmetica|divi|Add1~0_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add1~1\);

-- Location: LCCOMB_X24_Y7_N14
\inst|alu1|unidad_aritmetica|divi|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add1~2_combout\ = (\inst|alu1|unidad_aritmetica|divi|Add0~20_combout\ & ((\inst|MREG\(5) & (!\inst|alu1|unidad_aritmetica|divi|Add1~1\)) # (!\inst|MREG\(5) & (\inst|alu1|unidad_aritmetica|divi|Add1~1\ & VCC)))) # 
-- (!\inst|alu1|unidad_aritmetica|divi|Add0~20_combout\ & ((\inst|MREG\(5) & ((\inst|alu1|unidad_aritmetica|divi|Add1~1\) # (GND))) # (!\inst|MREG\(5) & (!\inst|alu1|unidad_aritmetica|divi|Add1~1\))))
-- \inst|alu1|unidad_aritmetica|divi|Add1~3\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add0~20_combout\ & (\inst|MREG\(5) & !\inst|alu1|unidad_aritmetica|divi|Add1~1\)) # (!\inst|alu1|unidad_aritmetica|divi|Add0~20_combout\ & ((\inst|MREG\(5)) # 
-- (!\inst|alu1|unidad_aritmetica|divi|Add1~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add0~20_combout\,
	datab => \inst|MREG\(5),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add1~1\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add1~2_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add1~3\);

-- Location: LCCOMB_X24_Y7_N16
\inst|alu1|unidad_aritmetica|divi|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add1~4_combout\ = ((\inst|alu1|unidad_aritmetica|divi|Add0~19_combout\ $ (\inst|MREG\(6) $ (\inst|alu1|unidad_aritmetica|divi|Add1~3\)))) # (GND)
-- \inst|alu1|unidad_aritmetica|divi|Add1~5\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add0~19_combout\ & ((!\inst|alu1|unidad_aritmetica|divi|Add1~3\) # (!\inst|MREG\(6)))) # (!\inst|alu1|unidad_aritmetica|divi|Add0~19_combout\ & (!\inst|MREG\(6) & 
-- !\inst|alu1|unidad_aritmetica|divi|Add1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add0~19_combout\,
	datab => \inst|MREG\(6),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add1~3\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add1~4_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add1~5\);

-- Location: LCCOMB_X24_Y7_N18
\inst|alu1|unidad_aritmetica|divi|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add1~6_combout\ = (\inst|MREG\(7) & ((\inst|alu1|unidad_aritmetica|divi|Add0~18_combout\ & (!\inst|alu1|unidad_aritmetica|divi|Add1~5\)) # (!\inst|alu1|unidad_aritmetica|divi|Add0~18_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add1~5\) # (GND))))) # (!\inst|MREG\(7) & ((\inst|alu1|unidad_aritmetica|divi|Add0~18_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add1~5\ & VCC)) # (!\inst|alu1|unidad_aritmetica|divi|Add0~18_combout\ & 
-- (!\inst|alu1|unidad_aritmetica|divi|Add1~5\))))
-- \inst|alu1|unidad_aritmetica|divi|Add1~7\ = CARRY((\inst|MREG\(7) & ((!\inst|alu1|unidad_aritmetica|divi|Add1~5\) # (!\inst|alu1|unidad_aritmetica|divi|Add0~18_combout\))) # (!\inst|MREG\(7) & (!\inst|alu1|unidad_aritmetica|divi|Add0~18_combout\ & 
-- !\inst|alu1|unidad_aritmetica|divi|Add1~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MREG\(7),
	datab => \inst|alu1|unidad_aritmetica|divi|Add0~18_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add1~5\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add1~6_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add1~7\);

-- Location: LCCOMB_X24_Y7_N20
\inst|alu1|unidad_aritmetica|divi|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add1~8_combout\ = ((\inst|alu1|unidad_aritmetica|divi|Add0~17_combout\ $ (\inst|MREG\(8) $ (\inst|alu1|unidad_aritmetica|divi|Add1~7\)))) # (GND)
-- \inst|alu1|unidad_aritmetica|divi|Add1~9\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add0~17_combout\ & ((!\inst|alu1|unidad_aritmetica|divi|Add1~7\) # (!\inst|MREG\(8)))) # (!\inst|alu1|unidad_aritmetica|divi|Add0~17_combout\ & (!\inst|MREG\(8) & 
-- !\inst|alu1|unidad_aritmetica|divi|Add1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add0~17_combout\,
	datab => \inst|MREG\(8),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add1~7\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add1~8_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add1~9\);

-- Location: LCCOMB_X24_Y7_N22
\inst|alu1|unidad_aritmetica|divi|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add1~10_combout\ = (\inst|alu1|unidad_aritmetica|divi|Add0~16_combout\ & ((\inst|MREG\(9) & (!\inst|alu1|unidad_aritmetica|divi|Add1~9\)) # (!\inst|MREG\(9) & (\inst|alu1|unidad_aritmetica|divi|Add1~9\ & VCC)))) # 
-- (!\inst|alu1|unidad_aritmetica|divi|Add0~16_combout\ & ((\inst|MREG\(9) & ((\inst|alu1|unidad_aritmetica|divi|Add1~9\) # (GND))) # (!\inst|MREG\(9) & (!\inst|alu1|unidad_aritmetica|divi|Add1~9\))))
-- \inst|alu1|unidad_aritmetica|divi|Add1~11\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add0~16_combout\ & (\inst|MREG\(9) & !\inst|alu1|unidad_aritmetica|divi|Add1~9\)) # (!\inst|alu1|unidad_aritmetica|divi|Add0~16_combout\ & ((\inst|MREG\(9)) # 
-- (!\inst|alu1|unidad_aritmetica|divi|Add1~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add0~16_combout\,
	datab => \inst|MREG\(9),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add1~9\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add1~10_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add1~11\);

-- Location: LCCOMB_X24_Y7_N24
\inst|alu1|unidad_aritmetica|divi|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add1~12_combout\ = \inst|alu1|unidad_aritmetica|divi|Add0~15_combout\ $ (\inst|alu1|unidad_aritmetica|divi|Add1~11\ $ (\inst|MREG\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add0~15_combout\,
	datad => \inst|MREG\(10),
	cin => \inst|alu1|unidad_aritmetica|divi|Add1~11\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add1~12_combout\);

-- Location: LCCOMB_X24_Y8_N16
\inst|alu1|unidad_aritmetica|divi|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add0~12_combout\ = \inst|alu1|unidad_aritmetica|divi|Add0~11\ $ (\inst|MREG\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|MREG\(10),
	cin => \inst|alu1|unidad_aritmetica|divi|Add0~11\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add0~12_combout\);

-- Location: LCCOMB_X23_Y8_N28
\inst|alu1|unidad_aritmetica|divi|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add0~14_combout\ = (!\inst|alu1|unidad_aritmetica|divi|LessThan0~0_combout\ & (!\inst|alu1|unidad_aritmetica|divi|LessThan0~1_combout\ & (!\inst|MREG\(11) & \inst|alu1|unidad_aritmetica|divi|Add0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|LessThan0~0_combout\,
	datab => \inst|alu1|unidad_aritmetica|divi|LessThan0~1_combout\,
	datac => \inst|MREG\(11),
	datad => \inst|alu1|unidad_aritmetica|divi|Add0~12_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add0~14_combout\);

-- Location: LCCOMB_X23_Y8_N10
\inst|alu1|unidad_aritmetica|divi|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan1~1_cout\ = CARRY((!\inst|MREG\(16) & \inst|MREG\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MREG\(16),
	datab => \inst|MREG\(4),
	datad => VCC,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan1~1_cout\);

-- Location: LCCOMB_X23_Y8_N12
\inst|alu1|unidad_aritmetica|divi|LessThan1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan1~3_cout\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add0~20_combout\ & ((!\inst|alu1|unidad_aritmetica|divi|LessThan1~1_cout\) # (!\inst|MREG\(5)))) # (!\inst|alu1|unidad_aritmetica|divi|Add0~20_combout\ & 
-- (!\inst|MREG\(5) & !\inst|alu1|unidad_aritmetica|divi|LessThan1~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add0~20_combout\,
	datab => \inst|MREG\(5),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan1~1_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan1~3_cout\);

-- Location: LCCOMB_X23_Y8_N14
\inst|alu1|unidad_aritmetica|divi|LessThan1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan1~5_cout\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add0~19_combout\ & (\inst|MREG\(6) & !\inst|alu1|unidad_aritmetica|divi|LessThan1~3_cout\)) # (!\inst|alu1|unidad_aritmetica|divi|Add0~19_combout\ & 
-- ((\inst|MREG\(6)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan1~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add0~19_combout\,
	datab => \inst|MREG\(6),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan1~3_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan1~5_cout\);

-- Location: LCCOMB_X23_Y8_N16
\inst|alu1|unidad_aritmetica|divi|LessThan1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan1~7_cout\ = CARRY((\inst|MREG\(7) & (\inst|alu1|unidad_aritmetica|divi|Add0~18_combout\ & !\inst|alu1|unidad_aritmetica|divi|LessThan1~5_cout\)) # (!\inst|MREG\(7) & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add0~18_combout\) # (!\inst|alu1|unidad_aritmetica|divi|LessThan1~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MREG\(7),
	datab => \inst|alu1|unidad_aritmetica|divi|Add0~18_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan1~5_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan1~7_cout\);

-- Location: LCCOMB_X23_Y8_N18
\inst|alu1|unidad_aritmetica|divi|LessThan1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan1~9_cout\ = CARRY((\inst|MREG\(8) & ((!\inst|alu1|unidad_aritmetica|divi|LessThan1~7_cout\) # (!\inst|alu1|unidad_aritmetica|divi|Add0~17_combout\))) # (!\inst|MREG\(8) & 
-- (!\inst|alu1|unidad_aritmetica|divi|Add0~17_combout\ & !\inst|alu1|unidad_aritmetica|divi|LessThan1~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MREG\(8),
	datab => \inst|alu1|unidad_aritmetica|divi|Add0~17_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan1~7_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan1~9_cout\);

-- Location: LCCOMB_X23_Y8_N20
\inst|alu1|unidad_aritmetica|divi|LessThan1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan1~11_cout\ = CARRY((\inst|MREG\(9) & (\inst|alu1|unidad_aritmetica|divi|Add0~16_combout\ & !\inst|alu1|unidad_aritmetica|divi|LessThan1~9_cout\)) # (!\inst|MREG\(9) & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add0~16_combout\) # (!\inst|alu1|unidad_aritmetica|divi|LessThan1~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MREG\(9),
	datab => \inst|alu1|unidad_aritmetica|divi|Add0~16_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan1~9_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan1~11_cout\);

-- Location: LCCOMB_X23_Y8_N22
\inst|alu1|unidad_aritmetica|divi|LessThan1~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan1~13_cout\ = CARRY((\inst|MREG\(10) & ((!\inst|alu1|unidad_aritmetica|divi|LessThan1~11_cout\) # (!\inst|alu1|unidad_aritmetica|divi|Add0~15_combout\))) # (!\inst|MREG\(10) & 
-- (!\inst|alu1|unidad_aritmetica|divi|Add0~15_combout\ & !\inst|alu1|unidad_aritmetica|divi|LessThan1~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MREG\(10),
	datab => \inst|alu1|unidad_aritmetica|divi|Add0~15_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan1~11_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan1~13_cout\);

-- Location: LCCOMB_X23_Y8_N24
\inst|alu1|unidad_aritmetica|divi|LessThan1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan1~14_combout\ = (\inst|MREG\(11) & ((\inst|alu1|unidad_aritmetica|divi|LessThan1~13_cout\) # (!\inst|alu1|unidad_aritmetica|divi|Add0~14_combout\))) # (!\inst|MREG\(11) & 
-- (\inst|alu1|unidad_aritmetica|divi|LessThan1~13_cout\ & !\inst|alu1|unidad_aritmetica|divi|Add0~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MREG\(11),
	datad => \inst|alu1|unidad_aritmetica|divi|Add0~14_combout\,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan1~13_cout\,
	combout => \inst|alu1|unidad_aritmetica|divi|LessThan1~14_combout\);

-- Location: LCCOMB_X22_Y7_N24
\inst|alu1|unidad_aritmetica|divi|Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add1~14_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan1~14_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add0~15_combout\)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan1~14_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add1~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|unidad_aritmetica|divi|Add0~15_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|Add1~12_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan1~14_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add1~14_combout\);

-- Location: LCCOMB_X22_Y7_N18
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

-- Location: LCCOMB_X22_Y7_N20
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

-- Location: LCCOMB_X23_Y8_N4
\inst|alu1|unidad_aritmetica|divi|Add1~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add1~17_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan1~14_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add0~18_combout\)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan1~14_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|unidad_aritmetica|divi|LessThan1~14_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|Add0~18_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|Add1~6_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add1~17_combout\);

-- Location: LCCOMB_X23_Y7_N28
\inst|alu1|unidad_aritmetica|divi|Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add1~18_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan1~14_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add0~19_combout\)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan1~14_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|unidad_aritmetica|divi|Add0~19_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|LessThan1~14_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|Add1~4_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add1~18_combout\);

-- Location: LCCOMB_X23_Y7_N2
\inst|alu1|unidad_aritmetica|divi|Add1~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add1~19_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan1~14_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add0~20_combout\)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan1~14_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add0~20_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|LessThan1~14_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|Add1~2_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add1~19_combout\);

-- Location: LCCOMB_X23_Y8_N30
\inst|alu1|unidad_aritmetica|divi|Add1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add1~20_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan1~14_combout\ & (\inst|MREG\(16))) # (!\inst|alu1|unidad_aritmetica|divi|LessThan1~14_combout\ & ((\inst|alu1|unidad_aritmetica|divi|Add1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MREG\(16),
	datac => \inst|alu1|unidad_aritmetica|divi|Add1~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan1~14_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add1~20_combout\);

-- Location: LCCOMB_X22_Y7_N2
\inst|alu1|unidad_aritmetica|divi|LessThan2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan2~1_cout\ = CARRY((!\inst|MREG\(15) & \inst|MREG\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MREG\(15),
	datab => \inst|MREG\(4),
	datad => VCC,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan2~1_cout\);

-- Location: LCCOMB_X22_Y7_N4
\inst|alu1|unidad_aritmetica|divi|LessThan2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan2~3_cout\ = CARRY((\inst|MREG\(5) & (\inst|alu1|unidad_aritmetica|divi|Add1~20_combout\ & !\inst|alu1|unidad_aritmetica|divi|LessThan2~1_cout\)) # (!\inst|MREG\(5) & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add1~20_combout\) # (!\inst|alu1|unidad_aritmetica|divi|LessThan2~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MREG\(5),
	datab => \inst|alu1|unidad_aritmetica|divi|Add1~20_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan2~1_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan2~3_cout\);

-- Location: LCCOMB_X22_Y7_N6
\inst|alu1|unidad_aritmetica|divi|LessThan2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan2~5_cout\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add1~19_combout\ & (\inst|MREG\(6) & !\inst|alu1|unidad_aritmetica|divi|LessThan2~3_cout\)) # (!\inst|alu1|unidad_aritmetica|divi|Add1~19_combout\ & 
-- ((\inst|MREG\(6)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan2~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add1~19_combout\,
	datab => \inst|MREG\(6),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan2~3_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan2~5_cout\);

-- Location: LCCOMB_X22_Y7_N8
\inst|alu1|unidad_aritmetica|divi|LessThan2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan2~7_cout\ = CARRY((\inst|MREG\(7) & (\inst|alu1|unidad_aritmetica|divi|Add1~18_combout\ & !\inst|alu1|unidad_aritmetica|divi|LessThan2~5_cout\)) # (!\inst|MREG\(7) & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add1~18_combout\) # (!\inst|alu1|unidad_aritmetica|divi|LessThan2~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MREG\(7),
	datab => \inst|alu1|unidad_aritmetica|divi|Add1~18_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan2~5_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan2~7_cout\);

-- Location: LCCOMB_X22_Y7_N10
\inst|alu1|unidad_aritmetica|divi|LessThan2~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan2~9_cout\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add1~17_combout\ & (\inst|MREG\(8) & !\inst|alu1|unidad_aritmetica|divi|LessThan2~7_cout\)) # (!\inst|alu1|unidad_aritmetica|divi|Add1~17_combout\ & 
-- ((\inst|MREG\(8)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan2~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add1~17_combout\,
	datab => \inst|MREG\(8),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan2~7_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan2~9_cout\);

-- Location: LCCOMB_X22_Y7_N12
\inst|alu1|unidad_aritmetica|divi|LessThan2~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan2~11_cout\ = CARRY((\inst|MREG\(9) & (\inst|alu1|unidad_aritmetica|divi|Add1~16_combout\ & !\inst|alu1|unidad_aritmetica|divi|LessThan2~9_cout\)) # (!\inst|MREG\(9) & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add1~16_combout\) # (!\inst|alu1|unidad_aritmetica|divi|LessThan2~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MREG\(9),
	datab => \inst|alu1|unidad_aritmetica|divi|Add1~16_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan2~9_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan2~11_cout\);

-- Location: LCCOMB_X22_Y7_N14
\inst|alu1|unidad_aritmetica|divi|LessThan2~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan2~13_cout\ = CARRY((\inst|MREG\(10) & ((!\inst|alu1|unidad_aritmetica|divi|LessThan2~11_cout\) # (!\inst|alu1|unidad_aritmetica|divi|Add1~15_combout\))) # (!\inst|MREG\(10) & 
-- (!\inst|alu1|unidad_aritmetica|divi|Add1~15_combout\ & !\inst|alu1|unidad_aritmetica|divi|LessThan2~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MREG\(10),
	datab => \inst|alu1|unidad_aritmetica|divi|Add1~15_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan2~11_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan2~13_cout\);

-- Location: LCCOMB_X22_Y7_N16
\inst|alu1|unidad_aritmetica|divi|LessThan2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan2~14_combout\ = (\inst|MREG\(11) & ((\inst|alu1|unidad_aritmetica|divi|LessThan2~13_cout\) # (!\inst|alu1|unidad_aritmetica|divi|Add1~14_combout\))) # (!\inst|MREG\(11) & 
-- (\inst|alu1|unidad_aritmetica|divi|LessThan2~13_cout\ & !\inst|alu1|unidad_aritmetica|divi|Add1~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|MREG\(11),
	datad => \inst|alu1|unidad_aritmetica|divi|Add1~14_combout\,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan2~13_cout\,
	combout => \inst|alu1|unidad_aritmetica|divi|LessThan2~14_combout\);

-- Location: LCCOMB_X21_Y4_N26
\inst|alu1|Mux8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux8~2_combout\ = (\inst|alu1|Mux11~0_combout\ & ((\inst|alu1|Mux8~1_combout\ & (!\inst|alu1|unidad_aritmetica|resta|s1|Suma~combout\)) # (!\inst|alu1|Mux8~1_combout\ & ((!\inst|alu1|unidad_aritmetica|divi|LessThan2~14_combout\))))) # 
-- (!\inst|alu1|Mux11~0_combout\ & (((\inst|alu1|Mux8~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux11~0_combout\,
	datab => \inst|alu1|unidad_aritmetica|resta|s1|Suma~combout\,
	datac => \inst|alu1|Mux8~1_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan2~14_combout\,
	combout => \inst|alu1|Mux8~2_combout\);

-- Location: LCCOMB_X19_Y8_N0
\inst|alu1|unidad_logica|salida~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|salida~0_combout\ = (\inst|MREG\(5) & \inst|MREG\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MREG\(5),
	datad => \inst|MREG\(15),
	combout => \inst|alu1|unidad_logica|salida~0_combout\);

-- Location: LCCOMB_X23_Y5_N0
\inst|alu1|unidad_logica|aux[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|aux[1]~9_combout\ = (\inst|MREG\(14) & (!\inst|MREG\(15) & VCC)) # (!\inst|MREG\(14) & (\inst|MREG\(15) $ (GND)))
-- \inst|alu1|unidad_logica|aux[1]~10\ = CARRY((!\inst|MREG\(14) & !\inst|MREG\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MREG\(14),
	datab => \inst|MREG\(15),
	datad => VCC,
	combout => \inst|alu1|unidad_logica|aux[1]~9_combout\,
	cout => \inst|alu1|unidad_logica|aux[1]~10\);

-- Location: LCCOMB_X25_Y5_N16
\inst|alu1|unidad_logica|Equal1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|Equal1~4_combout\ = (\inst|MREG\(1) & (!\inst|MREG\(0) & !\inst|MREG\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|MREG\(1),
	datac => \inst|MREG\(0),
	datad => \inst|MREG\(2),
	combout => \inst|alu1|unidad_logica|Equal1~4_combout\);

-- Location: FF_X23_Y5_N1
\inst|alu1|unidad_logica|aux[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|fec|salida~clkctrl_outclk\,
	d => \inst|alu1|unidad_logica|aux[1]~9_combout\,
	ena => \inst|alu1|unidad_logica|Equal1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|unidad_logica|aux\(1));

-- Location: LCCOMB_X21_Y8_N16
\inst|alu1|unidad_logica|salida~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|salida~24_combout\ = (\inst|MREG\(15) & (\inst|alu1|Mux10~0_combout\)) # (!\inst|MREG\(15) & (((\inst|alu1|Mux10~0_combout\ & \inst|MREG\(5))) # (!\inst|alu1|Mux11~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110110001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MREG\(15),
	datab => \inst|alu1|Mux10~0_combout\,
	datac => \inst|alu1|Mux11~0_combout\,
	datad => \inst|MREG\(5),
	combout => \inst|alu1|unidad_logica|salida~24_combout\);

-- Location: LCCOMB_X21_Y8_N14
\inst|alu1|unidad_logica|salida~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|salida~25_combout\ = (\inst|alu1|Mux3~15_combout\ & ((\inst|alu1|unidad_logica|salida~24_combout\ & (\inst|alu1|unidad_logica|salida~0_combout\)) # (!\inst|alu1|unidad_logica|salida~24_combout\ & 
-- ((\inst|alu1|unidad_logica|aux\(1)))))) # (!\inst|alu1|Mux3~15_combout\ & (((\inst|alu1|unidad_logica|salida~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux3~15_combout\,
	datab => \inst|alu1|unidad_logica|salida~0_combout\,
	datac => \inst|alu1|unidad_logica|aux\(1),
	datad => \inst|alu1|unidad_logica|salida~24_combout\,
	combout => \inst|alu1|unidad_logica|salida~25_combout\);

-- Location: FF_X21_Y8_N15
\inst|alu1|unidad_logica|salida[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|fec|salida~clkctrl_outclk\,
	d => \inst|alu1|unidad_logica|salida~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|unidad_logica|salida\(1));

-- Location: LCCOMB_X22_Y3_N0
\inst|alu1|Mux6~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux6~11_combout\ = (\inst|MREG\(0) & ((\inst|MREG\(3) & ((\inst|MREG\(2)) # (\inst|MREG\(1)))) # (!\inst|MREG\(3) & ((!\inst|MREG\(1)) # (!\inst|MREG\(2)))))) # (!\inst|MREG\(0) & ((\inst|MREG\(2)) # ((!\inst|MREG\(3) & \inst|MREG\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MREG\(0),
	datab => \inst|MREG\(3),
	datac => \inst|MREG\(2),
	datad => \inst|MREG\(1),
	combout => \inst|alu1|Mux6~11_combout\);

-- Location: LCCOMB_X21_Y4_N30
\inst|alu1|barrel_shifters|aux[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|barrel_shifters|aux[1]~feeder_combout\ = \inst|MREG\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|MREG\(14),
	combout => \inst|alu1|barrel_shifters|aux[1]~feeder_combout\);

-- Location: FF_X21_Y4_N31
\inst|alu1|barrel_shifters|aux[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|fec|salida~clkctrl_outclk\,
	d => \inst|alu1|barrel_shifters|aux[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|barrel_shifters|aux\(1));

-- Location: FF_X21_Y4_N21
\inst|alu1|barrel_shifters|salShifters[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|fec|salida~clkctrl_outclk\,
	asdata => \inst|alu1|barrel_shifters|aux\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|barrel_shifters|salShifters\(1));

-- Location: LCCOMB_X25_Y5_N30
\inst|alu1|Mux3~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux3~7_combout\ = \inst|MREG\(2) $ (((\inst|MREG\(1)) # (\inst|MREG\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|MREG\(1),
	datac => \inst|MREG\(0),
	datad => \inst|MREG\(2),
	combout => \inst|alu1|Mux3~7_combout\);

-- Location: LCCOMB_X18_Y8_N28
\inst|alu1|unidad_aritmetica|mult|inter[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|inter\(4) = (\inst|MREG\(4) & \inst|MREG\(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|MREG\(4),
	datad => \inst|MREG\(18),
	combout => \inst|alu1|unidad_aritmetica|mult|inter\(4));

-- Location: LCCOMB_X19_Y8_N4
\inst|alu1|unidad_aritmetica|mult|multi1|s1|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi1|s1|Cout~0_combout\ = (\inst|MREG\(5) & (\inst|MREG\(4) & (\inst|MREG\(14) & \inst|MREG\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MREG\(5),
	datab => \inst|MREG\(4),
	datac => \inst|MREG\(14),
	datad => \inst|MREG\(15),
	combout => \inst|alu1|unidad_aritmetica|mult|multi1|s1|Cout~0_combout\);

-- Location: LCCOMB_X19_Y8_N26
\inst|alu1|unidad_aritmetica|mult|inter[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|inter\(2) = (\inst|MREG\(4) & \inst|MREG\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|MREG\(4),
	datac => \inst|MREG\(16),
	combout => \inst|alu1|unidad_aritmetica|mult|inter\(2));

-- Location: LCCOMB_X18_Y8_N10
\inst|alu1|unidad_aritmetica|mult|multi1|s2|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi1|s2|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi1|s1|Cout~0_combout\ & ((\inst|alu1|unidad_aritmetica|mult|inter\(2)) # ((\inst|MREG\(15) & \inst|MREG\(5))))) # 
-- (!\inst|alu1|unidad_aritmetica|mult|multi1|s1|Cout~0_combout\ & (\inst|MREG\(15) & (\inst|MREG\(5) & \inst|alu1|unidad_aritmetica|mult|inter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|multi1|s1|Cout~0_combout\,
	datab => \inst|MREG\(15),
	datac => \inst|MREG\(5),
	datad => \inst|alu1|unidad_aritmetica|mult|inter\(2),
	combout => \inst|alu1|unidad_aritmetica|mult|multi1|s2|Cout~0_combout\);

-- Location: LCCOMB_X19_Y8_N24
\inst|alu1|unidad_aritmetica|mult|inter[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|inter\(3) = (\inst|MREG\(4) & \inst|MREG\(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|MREG\(4),
	datad => \inst|MREG\(17),
	combout => \inst|alu1|unidad_aritmetica|mult|inter\(3));

-- Location: LCCOMB_X18_Y8_N20
\inst|alu1|unidad_aritmetica|mult|multi1|s3|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi1|s3|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi1|s2|Cout~0_combout\ & ((\inst|alu1|unidad_aritmetica|mult|inter\(3)) # ((\inst|MREG\(5) & \inst|MREG\(16))))) # 
-- (!\inst|alu1|unidad_aritmetica|mult|multi1|s2|Cout~0_combout\ & (\inst|MREG\(5) & (\inst|MREG\(16) & \inst|alu1|unidad_aritmetica|mult|inter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|multi1|s2|Cout~0_combout\,
	datab => \inst|MREG\(5),
	datac => \inst|MREG\(16),
	datad => \inst|alu1|unidad_aritmetica|mult|inter\(3),
	combout => \inst|alu1|unidad_aritmetica|mult|multi1|s3|Cout~0_combout\);

-- Location: LCCOMB_X18_Y8_N2
\inst|alu1|unidad_aritmetica|mult|multi1|s4|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi1|s4|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|mult|inter\(4) & ((\inst|alu1|unidad_aritmetica|mult|multi1|s3|Cout~0_combout\) # ((\inst|MREG\(17) & \inst|MREG\(5))))) # 
-- (!\inst|alu1|unidad_aritmetica|mult|inter\(4) & (\inst|MREG\(17) & (\inst|MREG\(5) & \inst|alu1|unidad_aritmetica|mult|multi1|s3|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MREG\(17),
	datab => \inst|alu1|unidad_aritmetica|mult|inter\(4),
	datac => \inst|MREG\(5),
	datad => \inst|alu1|unidad_aritmetica|mult|multi1|s3|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi1|s4|Cout~0_combout\);

-- Location: LCCOMB_X18_Y8_N8
\inst|alu1|unidad_aritmetica|mult|multi1|s5|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi1|s5|Cout~0_combout\ = (\inst|MREG\(18) & (\inst|MREG\(5) & \inst|alu1|unidad_aritmetica|mult|multi1|s4|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|MREG\(18),
	datac => \inst|MREG\(5),
	datad => \inst|alu1|unidad_aritmetica|mult|multi1|s4|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi1|s5|Cout~0_combout\);

-- Location: LCCOMB_X18_Y8_N4
\inst|alu1|unidad_aritmetica|mult|multi1|s4|Suma\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi1|s4|Suma~combout\ = \inst|alu1|unidad_aritmetica|mult|inter\(4) $ (\inst|alu1|unidad_aritmetica|mult|multi1|s3|Cout~0_combout\ $ (((\inst|MREG\(17) & \inst|MREG\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MREG\(17),
	datab => \inst|alu1|unidad_aritmetica|mult|inter\(4),
	datac => \inst|MREG\(5),
	datad => \inst|alu1|unidad_aritmetica|mult|multi1|s3|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi1|s4|Suma~combout\);

-- Location: LCCOMB_X19_Y8_N18
\inst|alu1|unidad_aritmetica|mult|inter[10]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|inter\(10) = (\inst|MREG\(14) & \inst|MREG\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|MREG\(14),
	datad => \inst|MREG\(6),
	combout => \inst|alu1|unidad_aritmetica|mult|inter\(10));

-- Location: LCCOMB_X19_Y8_N10
\inst|alu1|unidad_aritmetica|mult|multi2|s2|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi2|s2|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|mult|inter\(10) & (\inst|alu1|unidad_aritmetica|mult|inter\(2) $ (\inst|alu1|unidad_aritmetica|mult|multi1|s1|Cout~0_combout\ $ 
-- (\inst|alu1|unidad_logica|salida~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|inter\(2),
	datab => \inst|alu1|unidad_aritmetica|mult|inter\(10),
	datac => \inst|alu1|unidad_aritmetica|mult|multi1|s1|Cout~0_combout\,
	datad => \inst|alu1|unidad_logica|salida~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi2|s2|Cout~0_combout\);

-- Location: LCCOMB_X18_Y8_N6
\inst|alu1|unidad_aritmetica|mult|multi1|s3|Suma\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi1|s3|Suma~combout\ = \inst|alu1|unidad_aritmetica|mult|multi1|s2|Cout~0_combout\ $ (\inst|alu1|unidad_aritmetica|mult|inter\(3) $ (((\inst|MREG\(5) & \inst|MREG\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|multi1|s2|Cout~0_combout\,
	datab => \inst|MREG\(5),
	datac => \inst|MREG\(16),
	datad => \inst|alu1|unidad_aritmetica|mult|inter\(3),
	combout => \inst|alu1|unidad_aritmetica|mult|multi1|s3|Suma~combout\);

-- Location: LCCOMB_X18_Y8_N24
\inst|alu1|unidad_aritmetica|mult|multi2|s3|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi2|s3|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi2|s2|Cout~0_combout\ & ((\inst|alu1|unidad_aritmetica|mult|multi1|s3|Suma~combout\) # ((\inst|MREG\(6) & \inst|MREG\(15))))) # 
-- (!\inst|alu1|unidad_aritmetica|mult|multi2|s2|Cout~0_combout\ & (\inst|MREG\(6) & (\inst|MREG\(15) & \inst|alu1|unidad_aritmetica|mult|multi1|s3|Suma~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MREG\(6),
	datab => \inst|MREG\(15),
	datac => \inst|alu1|unidad_aritmetica|mult|multi2|s2|Cout~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|mult|multi1|s3|Suma~combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi2|s3|Cout~0_combout\);

-- Location: LCCOMB_X18_Y8_N26
\inst|alu1|unidad_aritmetica|mult|multi2|s4|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi2|s4|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi1|s4|Suma~combout\ & ((\inst|alu1|unidad_aritmetica|mult|multi2|s3|Cout~0_combout\) # ((\inst|MREG\(6) & \inst|MREG\(16))))) # 
-- (!\inst|alu1|unidad_aritmetica|mult|multi1|s4|Suma~combout\ & (\inst|MREG\(6) & (\inst|MREG\(16) & \inst|alu1|unidad_aritmetica|mult|multi2|s3|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MREG\(6),
	datab => \inst|MREG\(16),
	datac => \inst|alu1|unidad_aritmetica|mult|multi1|s4|Suma~combout\,
	datad => \inst|alu1|unidad_aritmetica|mult|multi2|s3|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi2|s4|Cout~0_combout\);

-- Location: LCCOMB_X22_Y8_N20
\inst|alu1|unidad_aritmetica|mult|multi1|s5|Suma\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi1|s5|Suma~combout\ = \inst|alu1|unidad_aritmetica|mult|multi1|s4|Cout~0_combout\ $ (((\inst|MREG\(5) & \inst|MREG\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|MREG\(5),
	datac => \inst|MREG\(18),
	datad => \inst|alu1|unidad_aritmetica|mult|multi1|s4|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi1|s5|Suma~combout\);

-- Location: LCCOMB_X22_Y8_N2
\inst|alu1|unidad_aritmetica|mult|multi2|s5|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi2|s5|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi2|s4|Cout~0_combout\ & ((\inst|alu1|unidad_aritmetica|mult|multi1|s5|Suma~combout\) # ((\inst|MREG\(6) & \inst|MREG\(17))))) # 
-- (!\inst|alu1|unidad_aritmetica|mult|multi2|s4|Cout~0_combout\ & (\inst|MREG\(6) & (\inst|MREG\(17) & \inst|alu1|unidad_aritmetica|mult|multi1|s5|Suma~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MREG\(6),
	datab => \inst|MREG\(17),
	datac => \inst|alu1|unidad_aritmetica|mult|multi2|s4|Cout~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|mult|multi1|s5|Suma~combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi2|s5|Cout~0_combout\);

-- Location: LCCOMB_X22_Y8_N24
\inst|alu1|unidad_aritmetica|mult|multi2|s6|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi2|s6|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi1|s5|Cout~0_combout\ & ((\inst|alu1|unidad_aritmetica|mult|multi2|s5|Cout~0_combout\) # ((\inst|MREG\(18) & \inst|MREG\(6))))) # 
-- (!\inst|alu1|unidad_aritmetica|mult|multi1|s5|Cout~0_combout\ & (\inst|MREG\(18) & (\inst|MREG\(6) & \inst|alu1|unidad_aritmetica|mult|multi2|s5|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MREG\(18),
	datab => \inst|MREG\(6),
	datac => \inst|alu1|unidad_aritmetica|mult|multi1|s5|Cout~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|mult|multi2|s5|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi2|s6|Cout~0_combout\);

-- Location: LCCOMB_X22_Y8_N22
\inst|alu1|unidad_aritmetica|mult|multi2|s5|Suma\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi2|s5|Suma~combout\ = \inst|alu1|unidad_aritmetica|mult|multi2|s4|Cout~0_combout\ $ (\inst|alu1|unidad_aritmetica|mult|multi1|s5|Suma~combout\ $ (((\inst|MREG\(6) & \inst|MREG\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MREG\(6),
	datab => \inst|MREG\(17),
	datac => \inst|alu1|unidad_aritmetica|mult|multi2|s4|Cout~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|mult|multi1|s5|Suma~combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi2|s5|Suma~combout\);

-- Location: LCCOMB_X18_Y8_N14
\inst|alu1|unidad_aritmetica|mult|multi2|s4|Suma\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi2|s4|Suma~combout\ = \inst|alu1|unidad_aritmetica|mult|multi1|s4|Suma~combout\ $ (\inst|alu1|unidad_aritmetica|mult|multi2|s3|Cout~0_combout\ $ (((\inst|MREG\(6) & \inst|MREG\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MREG\(6),
	datab => \inst|MREG\(16),
	datac => \inst|alu1|unidad_aritmetica|mult|multi1|s4|Suma~combout\,
	datad => \inst|alu1|unidad_aritmetica|mult|multi2|s3|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi2|s4|Suma~combout\);

-- Location: LCCOMB_X18_Y8_N0
\inst|alu1|unidad_aritmetica|mult|multi2|s3|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi2|s3|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|mult|multi2|s2|Cout~0_combout\ $ (((\inst|MREG\(15) & \inst|MREG\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|MREG\(15),
	datac => \inst|alu1|unidad_aritmetica|mult|multi2|s2|Cout~0_combout\,
	datad => \inst|MREG\(6),
	combout => \inst|alu1|unidad_aritmetica|mult|multi2|s3|Suma~0_combout\);

-- Location: LCCOMB_X18_Y8_N18
\inst|alu1|unidad_aritmetica|mult|multi3|s3|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi3|s3|Cout~0_combout\ = (\inst|MREG\(14) & (\inst|MREG\(7) & (\inst|alu1|unidad_aritmetica|mult|multi1|s3|Suma~combout\ $ (\inst|alu1|unidad_aritmetica|mult|multi2|s3|Suma~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|multi1|s3|Suma~combout\,
	datab => \inst|MREG\(14),
	datac => \inst|MREG\(7),
	datad => \inst|alu1|unidad_aritmetica|mult|multi2|s3|Suma~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi3|s3|Cout~0_combout\);

-- Location: LCCOMB_X18_Y8_N16
\inst|alu1|unidad_aritmetica|mult|multi3|s4|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi3|s4|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi2|s4|Suma~combout\ & ((\inst|alu1|unidad_aritmetica|mult|multi3|s3|Cout~0_combout\) # ((\inst|MREG\(7) & \inst|MREG\(15))))) # 
-- (!\inst|alu1|unidad_aritmetica|mult|multi2|s4|Suma~combout\ & (\inst|MREG\(7) & (\inst|MREG\(15) & \inst|alu1|unidad_aritmetica|mult|multi3|s3|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MREG\(7),
	datab => \inst|MREG\(15),
	datac => \inst|alu1|unidad_aritmetica|mult|multi2|s4|Suma~combout\,
	datad => \inst|alu1|unidad_aritmetica|mult|multi3|s3|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi3|s4|Cout~0_combout\);

-- Location: LCCOMB_X22_Y8_N8
\inst|alu1|unidad_aritmetica|mult|multi3|s5|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi3|s5|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi2|s5|Suma~combout\ & ((\inst|alu1|unidad_aritmetica|mult|multi3|s4|Cout~0_combout\) # ((\inst|MREG\(7) & \inst|MREG\(16))))) # 
-- (!\inst|alu1|unidad_aritmetica|mult|multi2|s5|Suma~combout\ & (\inst|MREG\(7) & (\inst|MREG\(16) & \inst|alu1|unidad_aritmetica|mult|multi3|s4|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MREG\(7),
	datab => \inst|MREG\(16),
	datac => \inst|alu1|unidad_aritmetica|mult|multi2|s5|Suma~combout\,
	datad => \inst|alu1|unidad_aritmetica|mult|multi3|s4|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi3|s5|Cout~0_combout\);

-- Location: LCCOMB_X22_Y8_N0
\inst|alu1|unidad_aritmetica|mult|multi2|s6|Suma\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi2|s6|Suma~combout\ = \inst|alu1|unidad_aritmetica|mult|multi1|s5|Cout~0_combout\ $ (\inst|alu1|unidad_aritmetica|mult|multi2|s5|Cout~0_combout\ $ (((\inst|MREG\(18) & \inst|MREG\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MREG\(18),
	datab => \inst|MREG\(6),
	datac => \inst|alu1|unidad_aritmetica|mult|multi1|s5|Cout~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|mult|multi2|s5|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi2|s6|Suma~combout\);

-- Location: LCCOMB_X22_Y8_N6
\inst|alu1|unidad_aritmetica|mult|multi3|s6|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi3|s6|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi3|s5|Cout~0_combout\ & ((\inst|alu1|unidad_aritmetica|mult|multi2|s6|Suma~combout\) # ((\inst|MREG\(7) & \inst|MREG\(17))))) # 
-- (!\inst|alu1|unidad_aritmetica|mult|multi3|s5|Cout~0_combout\ & (\inst|MREG\(7) & (\inst|MREG\(17) & \inst|alu1|unidad_aritmetica|mult|multi2|s6|Suma~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MREG\(7),
	datab => \inst|MREG\(17),
	datac => \inst|alu1|unidad_aritmetica|mult|multi3|s5|Cout~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|mult|multi2|s6|Suma~combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi3|s6|Cout~0_combout\);

-- Location: LCCOMB_X22_Y8_N10
\inst|alu1|unidad_aritmetica|mult|multi3|s7|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi3|s7|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi2|s6|Cout~0_combout\ & ((\inst|alu1|unidad_aritmetica|mult|multi3|s6|Cout~0_combout\) # ((\inst|MREG\(18) & \inst|MREG\(7))))) # 
-- (!\inst|alu1|unidad_aritmetica|mult|multi2|s6|Cout~0_combout\ & (\inst|MREG\(18) & (\inst|MREG\(7) & \inst|alu1|unidad_aritmetica|mult|multi3|s6|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MREG\(18),
	datab => \inst|alu1|unidad_aritmetica|mult|multi2|s6|Cout~0_combout\,
	datac => \inst|MREG\(7),
	datad => \inst|alu1|unidad_aritmetica|mult|multi3|s6|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi3|s7|Cout~0_combout\);

-- Location: LCCOMB_X22_Y8_N14
\inst|alu1|unidad_aritmetica|mult|multi3|s7|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi3|s7|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|mult|multi2|s6|Cout~0_combout\ $ (\inst|alu1|unidad_aritmetica|mult|multi3|s6|Cout~0_combout\ $ (((\inst|MREG\(18) & \inst|MREG\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MREG\(18),
	datab => \inst|alu1|unidad_aritmetica|mult|multi2|s6|Cout~0_combout\,
	datac => \inst|MREG\(7),
	datad => \inst|alu1|unidad_aritmetica|mult|multi3|s6|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi3|s7|Suma~0_combout\);

-- Location: LCCOMB_X22_Y8_N30
\inst|alu1|unidad_aritmetica|mult|multi3|s5|Suma\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi3|s5|Suma~combout\ = \inst|alu1|unidad_aritmetica|mult|multi2|s5|Suma~combout\ $ (\inst|alu1|unidad_aritmetica|mult|multi3|s4|Cout~0_combout\ $ (((\inst|MREG\(7) & \inst|MREG\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MREG\(7),
	datab => \inst|MREG\(16),
	datac => \inst|alu1|unidad_aritmetica|mult|multi2|s5|Suma~combout\,
	datad => \inst|alu1|unidad_aritmetica|mult|multi3|s4|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi3|s5|Suma~combout\);

-- Location: LCCOMB_X21_Y8_N18
\inst|alu1|unidad_aritmetica|mult|inter[20]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|inter\(20) = (\inst|MREG\(14) & \inst|MREG\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|MREG\(14),
	datad => \inst|MREG\(8),
	combout => \inst|alu1|unidad_aritmetica|mult|inter\(20));

-- Location: LCCOMB_X24_Y8_N2
\inst|alu1|unidad_aritmetica|mult|inter[16]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|inter\(16) = (\inst|MREG\(7) & \inst|MREG\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|MREG\(7),
	datad => \inst|MREG\(15),
	combout => \inst|alu1|unidad_aritmetica|mult|inter\(16));

-- Location: LCCOMB_X18_Y8_N22
\inst|alu1|unidad_aritmetica|mult|multi4|s4|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi4|s4|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|mult|inter\(20) & (\inst|alu1|unidad_aritmetica|mult|inter\(16) $ (\inst|alu1|unidad_aritmetica|mult|multi2|s4|Suma~combout\ $ 
-- (\inst|alu1|unidad_aritmetica|mult|multi3|s3|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|inter\(20),
	datab => \inst|alu1|unidad_aritmetica|mult|inter\(16),
	datac => \inst|alu1|unidad_aritmetica|mult|multi2|s4|Suma~combout\,
	datad => \inst|alu1|unidad_aritmetica|mult|multi3|s3|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi4|s4|Cout~0_combout\);

-- Location: LCCOMB_X22_Y8_N4
\inst|alu1|unidad_aritmetica|mult|multi4|s5|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi4|s5|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi3|s5|Suma~combout\ & ((\inst|alu1|unidad_aritmetica|mult|multi4|s4|Cout~0_combout\) # ((\inst|MREG\(8) & \inst|MREG\(15))))) # 
-- (!\inst|alu1|unidad_aritmetica|mult|multi3|s5|Suma~combout\ & (\inst|MREG\(8) & (\inst|MREG\(15) & \inst|alu1|unidad_aritmetica|mult|multi4|s4|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MREG\(8),
	datab => \inst|MREG\(15),
	datac => \inst|alu1|unidad_aritmetica|mult|multi3|s5|Suma~combout\,
	datad => \inst|alu1|unidad_aritmetica|mult|multi4|s4|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi4|s5|Cout~0_combout\);

-- Location: LCCOMB_X22_Y8_N12
\inst|alu1|unidad_aritmetica|mult|multi3|s6|Suma\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi3|s6|Suma~combout\ = \inst|alu1|unidad_aritmetica|mult|multi3|s5|Cout~0_combout\ $ (\inst|alu1|unidad_aritmetica|mult|multi2|s6|Suma~combout\ $ (((\inst|MREG\(7) & \inst|MREG\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MREG\(7),
	datab => \inst|MREG\(17),
	datac => \inst|alu1|unidad_aritmetica|mult|multi3|s5|Cout~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|mult|multi2|s6|Suma~combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi3|s6|Suma~combout\);

-- Location: LCCOMB_X22_Y8_N18
\inst|alu1|unidad_aritmetica|mult|multi4|s6|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi4|s6|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi4|s5|Cout~0_combout\ & ((\inst|alu1|unidad_aritmetica|mult|multi3|s6|Suma~combout\) # ((\inst|MREG\(8) & \inst|MREG\(16))))) # 
-- (!\inst|alu1|unidad_aritmetica|mult|multi4|s5|Cout~0_combout\ & (\inst|MREG\(8) & (\inst|MREG\(16) & \inst|alu1|unidad_aritmetica|mult|multi3|s6|Suma~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MREG\(8),
	datab => \inst|MREG\(16),
	datac => \inst|alu1|unidad_aritmetica|mult|multi4|s5|Cout~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|mult|multi3|s6|Suma~combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi4|s6|Cout~0_combout\);

-- Location: LCCOMB_X22_Y8_N28
\inst|alu1|unidad_aritmetica|mult|multi4|s7|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi4|s7|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi3|s7|Suma~0_combout\ & ((\inst|alu1|unidad_aritmetica|mult|multi4|s6|Cout~0_combout\) # ((\inst|MREG\(8) & \inst|MREG\(17))))) # 
-- (!\inst|alu1|unidad_aritmetica|mult|multi3|s7|Suma~0_combout\ & (\inst|MREG\(8) & (\inst|MREG\(17) & \inst|alu1|unidad_aritmetica|mult|multi4|s6|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MREG\(8),
	datab => \inst|MREG\(17),
	datac => \inst|alu1|unidad_aritmetica|mult|multi3|s7|Suma~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|mult|multi4|s6|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi4|s7|Cout~0_combout\);

-- Location: LCCOMB_X22_Y8_N26
\inst|alu1|unidad_aritmetica|mult|multi4|s8|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi4|s8|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi3|s7|Cout~0_combout\ & ((\inst|alu1|unidad_aritmetica|mult|multi4|s7|Cout~0_combout\) # ((\inst|MREG\(18) & \inst|MREG\(8))))) # 
-- (!\inst|alu1|unidad_aritmetica|mult|multi3|s7|Cout~0_combout\ & (\inst|MREG\(18) & (\inst|MREG\(8) & \inst|alu1|unidad_aritmetica|mult|multi4|s7|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|multi3|s7|Cout~0_combout\,
	datab => \inst|MREG\(18),
	datac => \inst|MREG\(8),
	datad => \inst|alu1|unidad_aritmetica|mult|multi4|s7|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi4|s8|Cout~0_combout\);

-- Location: LCCOMB_X21_Y4_N16
\inst|alu1|Mux3~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux3~14_combout\ = (\inst|alu1|Mux10~0_combout\ & (!\inst|alu1|unidad_aritmetica|resta|s7|Cout~0_combout\ & (\inst|alu1|Mux11~0_combout\))) # (!\inst|alu1|Mux10~0_combout\ & (((!\inst|alu1|Mux11~0_combout\ & 
-- \inst|alu1|unidad_aritmetica|mult|multi4|s8|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|resta|s7|Cout~0_combout\,
	datab => \inst|alu1|Mux10~0_combout\,
	datac => \inst|alu1|Mux11~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|mult|multi4|s8|Cout~0_combout\,
	combout => \inst|alu1|Mux3~14_combout\);

-- Location: LCCOMB_X21_Y4_N6
\inst|alu1|Mux6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux6~4_combout\ = (\inst|alu1|Mux3~8_combout\ & ((\inst|alu1|Mux3~14_combout\))) # (!\inst|alu1|Mux3~8_combout\ & (\inst|alu1|Mux3~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux3~7_combout\,
	datab => \inst|alu1|Mux3~8_combout\,
	datad => \inst|alu1|Mux3~14_combout\,
	combout => \inst|alu1|Mux6~4_combout\);

-- Location: LCCOMB_X21_Y4_N20
\inst|alu1|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux8~0_combout\ = (\inst|alu1|Mux6~11_combout\ & ((\inst|alu1|Mux6~4_combout\ & (\inst|alu1|unidad_logica|salida\(1))) # (!\inst|alu1|Mux6~4_combout\ & ((\inst|alu1|barrel_shifters|salShifters\(1)))))) # (!\inst|alu1|Mux6~11_combout\ & 
-- (((\inst|alu1|Mux6~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_logica|salida\(1),
	datab => \inst|alu1|Mux6~11_combout\,
	datac => \inst|alu1|barrel_shifters|salShifters\(1),
	datad => \inst|alu1|Mux6~4_combout\,
	combout => \inst|alu1|Mux8~0_combout\);

-- Location: LCCOMB_X21_Y4_N28
\inst|alu1|Mux8~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux8~4_combout\ = (\inst|alu1|Mux3~8_combout\ & ((\inst|alu1|Mux8~0_combout\ & (\inst|alu1|Mux8~3_combout\)) # (!\inst|alu1|Mux8~0_combout\ & ((\inst|alu1|Mux8~2_combout\))))) # (!\inst|alu1|Mux3~8_combout\ & ((\inst|alu1|Mux8~3_combout\) # 
-- ((\inst|alu1|Mux8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux3~8_combout\,
	datab => \inst|alu1|Mux8~3_combout\,
	datac => \inst|alu1|Mux8~2_combout\,
	datad => \inst|alu1|Mux8~0_combout\,
	combout => \inst|alu1|Mux8~4_combout\);

-- Location: FF_X21_Y6_N13
\inst|registro[4][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|fec|salida~clkctrl_outclk\,
	asdata => \inst|alu1|Mux8~4_combout\,
	sload => VCC,
	ena => \inst|registro[4][2]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|registro[4][1]~q\);

-- Location: LCCOMB_X19_Y6_N8
\inst|Mux208~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux208~0_combout\ = (\inst|registro[4][1]~q\) # (!\inst|addr\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|addr\(3),
	datad => \inst|registro[4][1]~q\,
	combout => \inst|Mux208~0_combout\);

-- Location: LCCOMB_X23_Y6_N24
\inst|Mux208~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux208~1_combout\ = (\inst|MREG[8]~30_combout\ & (((\inst|MREG[8]~31_combout\)))) # (!\inst|MREG[8]~30_combout\ & ((\inst|MREG[8]~31_combout\ & (\inst|registro[2][1]~q\)) # (!\inst|MREG[8]~31_combout\ & ((\inst|registro[3][1]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|registro[2][1]~q\,
	datab => \inst|MREG[8]~30_combout\,
	datac => \inst|registro[3][1]~q\,
	datad => \inst|MREG[8]~31_combout\,
	combout => \inst|Mux208~1_combout\);

-- Location: LCCOMB_X19_Y6_N26
\inst|Mux208~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux208~2_combout\ = (\inst|MREG[8]~29_combout\ & ((\inst|Mux208~1_combout\ & (\inst|Mux208~0_combout\)) # (!\inst|Mux208~1_combout\ & ((\inst|registro[5][1]~q\))))) # (!\inst|MREG[8]~29_combout\ & (((\inst|Mux208~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux208~0_combout\,
	datab => \inst|registro[5][1]~q\,
	datac => \inst|MREG[8]~29_combout\,
	datad => \inst|Mux208~1_combout\,
	combout => \inst|Mux208~2_combout\);

-- Location: LCCOMB_X25_Y8_N6
\inst|val2|codigos~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|val2|codigos~16_combout\ = (\inst|addr2\(0) & (!\inst|addr2\(1) & (\inst|addr2\(3) $ (\inst|addr2\(2))))) # (!\inst|addr2\(0) & (\inst|addr2\(3) & (!\inst|addr2\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|addr2\(3),
	datab => \inst|addr2\(2),
	datac => \inst|addr2\(1),
	datad => \inst|addr2\(0),
	combout => \inst|val2|codigos~16_combout\);

-- Location: LCCOMB_X19_Y8_N12
\inst|Mux208~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux208~3_combout\ = (\inst|MREG[8]~36_combout\ & ((\inst|val2|codigos~16_combout\))) # (!\inst|MREG[8]~36_combout\ & (\inst|Mux208~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux208~2_combout\,
	datab => \inst|MREG[8]~36_combout\,
	datac => \inst|val2|codigos~16_combout\,
	combout => \inst|Mux208~3_combout\);

-- Location: FF_X19_Y8_N13
\inst|MREG[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|fec|salida~clkctrl_outclk\,
	d => \inst|Mux208~3_combout\,
	ena => \inst|MREG[8]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MREG\(5));

-- Location: LCCOMB_X24_Y7_N4
\inst|alu1|unidad_aritmetica|resta|s1|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|resta|s1|Cout~0_combout\ = (\inst|MREG\(5) & (\inst|MREG\(15) & ((\inst|MREG\(14)) # (!\inst|MREG\(4))))) # (!\inst|MREG\(5) & ((\inst|MREG\(14)) # ((\inst|MREG\(15)) # (!\inst|MREG\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MREG\(14),
	datab => \inst|MREG\(5),
	datac => \inst|MREG\(15),
	datad => \inst|MREG\(4),
	combout => \inst|alu1|unidad_aritmetica|resta|s1|Cout~0_combout\);

-- Location: LCCOMB_X23_Y7_N24
\inst|alu1|unidad_aritmetica|resta|s2|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|resta|s2|Cout~0_combout\ = (\inst|MREG\(6) & (\inst|MREG\(16) & \inst|alu1|unidad_aritmetica|resta|s1|Cout~0_combout\)) # (!\inst|MREG\(6) & ((\inst|MREG\(16)) # (\inst|alu1|unidad_aritmetica|resta|s1|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|MREG\(6),
	datac => \inst|MREG\(16),
	datad => \inst|alu1|unidad_aritmetica|resta|s1|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|resta|s2|Cout~0_combout\);

-- Location: LCCOMB_X23_Y7_N6
\inst|alu1|unidad_aritmetica|resta|s3|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|resta|s3|Cout~0_combout\ = (\inst|MREG\(17) & ((\inst|alu1|unidad_aritmetica|resta|s2|Cout~0_combout\) # (!\inst|MREG\(7)))) # (!\inst|MREG\(17) & (!\inst|MREG\(7) & \inst|alu1|unidad_aritmetica|resta|s2|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|MREG\(17),
	datac => \inst|MREG\(7),
	datad => \inst|alu1|unidad_aritmetica|resta|s2|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|resta|s3|Cout~0_combout\);

-- Location: LCCOMB_X23_Y7_N8
\inst|alu1|unidad_aritmetica|resta|s4|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|resta|s4|Cout~0_combout\ = (\inst|MREG\(8) & (\inst|MREG\(18) & \inst|alu1|unidad_aritmetica|resta|s3|Cout~0_combout\)) # (!\inst|MREG\(8) & ((\inst|MREG\(18)) # (\inst|alu1|unidad_aritmetica|resta|s3|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MREG\(8),
	datac => \inst|MREG\(18),
	datad => \inst|alu1|unidad_aritmetica|resta|s3|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|resta|s4|Cout~0_combout\);

-- Location: LCCOMB_X23_Y7_N26
\inst|alu1|unidad_aritmetica|resta|s5|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|resta|s5|Cout~0_combout\ = (\inst|MREG\(9) & (\inst|alu1|unidad_aritmetica|resta|s4|Cout~0_combout\ & \inst|MREG\(19))) # (!\inst|MREG\(9) & ((\inst|alu1|unidad_aritmetica|resta|s4|Cout~0_combout\) # (\inst|MREG\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MREG\(9),
	datac => \inst|alu1|unidad_aritmetica|resta|s4|Cout~0_combout\,
	datad => \inst|MREG\(19),
	combout => \inst|alu1|unidad_aritmetica|resta|s5|Cout~0_combout\);

-- Location: LCCOMB_X23_Y7_N4
\inst|alu1|unidad_aritmetica|resta|s6|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|resta|s6|Cout~0_combout\ = (\inst|MREG\(10) & (\inst|alu1|unidad_aritmetica|resta|s5|Cout~0_combout\ & \inst|MREG\(20))) # (!\inst|MREG\(10) & ((\inst|alu1|unidad_aritmetica|resta|s5|Cout~0_combout\) # (\inst|MREG\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|MREG\(10),
	datac => \inst|alu1|unidad_aritmetica|resta|s5|Cout~0_combout\,
	datad => \inst|MREG\(20),
	combout => \inst|alu1|unidad_aritmetica|resta|s6|Cout~0_combout\);

-- Location: LCCOMB_X22_Y4_N2
\inst|alu1|unidad_aritmetica|resta|s7|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|resta|s7|Cout~0_combout\ = (\inst|MREG\(21) & ((\inst|alu1|unidad_aritmetica|resta|s6|Cout~0_combout\) # (!\inst|MREG\(11)))) # (!\inst|MREG\(21) & (!\inst|MREG\(11) & \inst|alu1|unidad_aritmetica|resta|s6|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|MREG\(21),
	datac => \inst|MREG\(11),
	datad => \inst|alu1|unidad_aritmetica|resta|s6|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|resta|s7|Cout~0_combout\);

-- Location: LCCOMB_X22_Y4_N8
\inst|alu1|unidad_aritmetica|Mux9~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|Mux9~4_combout\ = (\inst|MREG\(14) & (\inst|MREG\(4) $ (((\inst|alu1|Mux10~0_combout\) # (\inst|alu1|unidad_aritmetica|resta|s7|Cout~0_combout\))))) # (!\inst|MREG\(14) & (\inst|MREG\(4) & ((\inst|alu1|Mux10~0_combout\) # 
-- (\inst|alu1|unidad_aritmetica|resta|s7|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MREG\(14),
	datab => \inst|alu1|Mux10~0_combout\,
	datac => \inst|MREG\(4),
	datad => \inst|alu1|unidad_aritmetica|resta|s7|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|Mux9~4_combout\);

-- Location: LCCOMB_X21_Y4_N10
\inst|alu1|Mux9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux9~2_combout\ = (\inst|alu1|Mux11~0_combout\ & (\inst|alu1|Mux10~0_combout\ & (!\inst|alu1|unidad_aritmetica|Mux9~4_combout\))) # (!\inst|alu1|Mux11~0_combout\ & (!\inst|alu1|Mux10~0_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|mult|multi4|s8|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux11~0_combout\,
	datab => \inst|alu1|Mux10~0_combout\,
	datac => \inst|alu1|unidad_aritmetica|Mux9~4_combout\,
	datad => \inst|alu1|unidad_aritmetica|mult|multi4|s8|Cout~0_combout\,
	combout => \inst|alu1|Mux9~2_combout\);

-- Location: LCCOMB_X21_Y4_N22
\inst|alu1|Mux9~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux9~3_combout\ = (\inst|alu1|Mux11~0_combout\ & (((!\inst|alu1|Mux9~2_combout\)))) # (!\inst|alu1|Mux11~0_combout\ & ((\inst|alu1|Mux9~2_combout\ & (\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~8_combout\)) # 
-- (!\inst|alu1|Mux9~2_combout\ & ((\inst|alu1|Mux9~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux11~0_combout\,
	datab => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~8_combout\,
	datac => \inst|alu1|Mux9~1_combout\,
	datad => \inst|alu1|Mux9~2_combout\,
	combout => \inst|alu1|Mux9~3_combout\);

-- Location: LCCOMB_X21_Y6_N6
\inst|alu1|Mux9~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux9~4_combout\ = (\inst|alu1|Mux10~0_combout\ & (((\inst|alu1|Mux9~1_combout\)))) # (!\inst|alu1|Mux10~0_combout\ & ((\inst|alu1|unidad_aritmetica|mult|multi4|s8|Cout~0_combout\ & 
-- (\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~8_combout\)) # (!\inst|alu1|unidad_aritmetica|mult|multi4|s8|Cout~0_combout\ & ((\inst|alu1|Mux9~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~8_combout\,
	datab => \inst|alu1|Mux10~0_combout\,
	datac => \inst|alu1|unidad_aritmetica|mult|multi4|s8|Cout~0_combout\,
	datad => \inst|alu1|Mux9~1_combout\,
	combout => \inst|alu1|Mux9~4_combout\);

-- Location: LCCOMB_X23_Y7_N10
\inst|alu1|unidad_aritmetica|divi|Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add2~0_combout\ = (\inst|MREG\(15) & ((GND) # (!\inst|MREG\(4)))) # (!\inst|MREG\(15) & (\inst|MREG\(4) $ (GND)))
-- \inst|alu1|unidad_aritmetica|divi|Add2~1\ = CARRY((\inst|MREG\(15)) # (!\inst|MREG\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MREG\(15),
	datab => \inst|MREG\(4),
	datad => VCC,
	combout => \inst|alu1|unidad_aritmetica|divi|Add2~0_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add2~1\);

-- Location: LCCOMB_X23_Y7_N12
\inst|alu1|unidad_aritmetica|divi|Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add2~2_combout\ = (\inst|MREG\(5) & ((\inst|alu1|unidad_aritmetica|divi|Add1~20_combout\ & (!\inst|alu1|unidad_aritmetica|divi|Add2~1\)) # (!\inst|alu1|unidad_aritmetica|divi|Add1~20_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add2~1\) # (GND))))) # (!\inst|MREG\(5) & ((\inst|alu1|unidad_aritmetica|divi|Add1~20_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add2~1\ & VCC)) # (!\inst|alu1|unidad_aritmetica|divi|Add1~20_combout\ & 
-- (!\inst|alu1|unidad_aritmetica|divi|Add2~1\))))
-- \inst|alu1|unidad_aritmetica|divi|Add2~3\ = CARRY((\inst|MREG\(5) & ((!\inst|alu1|unidad_aritmetica|divi|Add2~1\) # (!\inst|alu1|unidad_aritmetica|divi|Add1~20_combout\))) # (!\inst|MREG\(5) & (!\inst|alu1|unidad_aritmetica|divi|Add1~20_combout\ & 
-- !\inst|alu1|unidad_aritmetica|divi|Add2~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MREG\(5),
	datab => \inst|alu1|unidad_aritmetica|divi|Add1~20_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add2~1\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add2~2_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add2~3\);

-- Location: LCCOMB_X23_Y7_N14
\inst|alu1|unidad_aritmetica|divi|Add2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add2~4_combout\ = ((\inst|MREG\(6) $ (\inst|alu1|unidad_aritmetica|divi|Add1~19_combout\ $ (\inst|alu1|unidad_aritmetica|divi|Add2~3\)))) # (GND)
-- \inst|alu1|unidad_aritmetica|divi|Add2~5\ = CARRY((\inst|MREG\(6) & (\inst|alu1|unidad_aritmetica|divi|Add1~19_combout\ & !\inst|alu1|unidad_aritmetica|divi|Add2~3\)) # (!\inst|MREG\(6) & ((\inst|alu1|unidad_aritmetica|divi|Add1~19_combout\) # 
-- (!\inst|alu1|unidad_aritmetica|divi|Add2~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MREG\(6),
	datab => \inst|alu1|unidad_aritmetica|divi|Add1~19_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add2~3\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add2~4_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add2~5\);

-- Location: LCCOMB_X23_Y7_N16
\inst|alu1|unidad_aritmetica|divi|Add2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add2~6_combout\ = (\inst|MREG\(7) & ((\inst|alu1|unidad_aritmetica|divi|Add1~18_combout\ & (!\inst|alu1|unidad_aritmetica|divi|Add2~5\)) # (!\inst|alu1|unidad_aritmetica|divi|Add1~18_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add2~5\) # (GND))))) # (!\inst|MREG\(7) & ((\inst|alu1|unidad_aritmetica|divi|Add1~18_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add2~5\ & VCC)) # (!\inst|alu1|unidad_aritmetica|divi|Add1~18_combout\ & 
-- (!\inst|alu1|unidad_aritmetica|divi|Add2~5\))))
-- \inst|alu1|unidad_aritmetica|divi|Add2~7\ = CARRY((\inst|MREG\(7) & ((!\inst|alu1|unidad_aritmetica|divi|Add2~5\) # (!\inst|alu1|unidad_aritmetica|divi|Add1~18_combout\))) # (!\inst|MREG\(7) & (!\inst|alu1|unidad_aritmetica|divi|Add1~18_combout\ & 
-- !\inst|alu1|unidad_aritmetica|divi|Add2~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MREG\(7),
	datab => \inst|alu1|unidad_aritmetica|divi|Add1~18_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add2~5\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add2~6_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add2~7\);

-- Location: LCCOMB_X23_Y7_N18
\inst|alu1|unidad_aritmetica|divi|Add2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add2~8_combout\ = ((\inst|MREG\(8) $ (\inst|alu1|unidad_aritmetica|divi|Add1~17_combout\ $ (\inst|alu1|unidad_aritmetica|divi|Add2~7\)))) # (GND)
-- \inst|alu1|unidad_aritmetica|divi|Add2~9\ = CARRY((\inst|MREG\(8) & (\inst|alu1|unidad_aritmetica|divi|Add1~17_combout\ & !\inst|alu1|unidad_aritmetica|divi|Add2~7\)) # (!\inst|MREG\(8) & ((\inst|alu1|unidad_aritmetica|divi|Add1~17_combout\) # 
-- (!\inst|alu1|unidad_aritmetica|divi|Add2~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MREG\(8),
	datab => \inst|alu1|unidad_aritmetica|divi|Add1~17_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add2~7\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add2~8_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add2~9\);

-- Location: LCCOMB_X23_Y7_N20
\inst|alu1|unidad_aritmetica|divi|Add2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add2~10_combout\ = (\inst|MREG\(9) & ((\inst|alu1|unidad_aritmetica|divi|Add1~16_combout\ & (!\inst|alu1|unidad_aritmetica|divi|Add2~9\)) # (!\inst|alu1|unidad_aritmetica|divi|Add1~16_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add2~9\) # (GND))))) # (!\inst|MREG\(9) & ((\inst|alu1|unidad_aritmetica|divi|Add1~16_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add2~9\ & VCC)) # (!\inst|alu1|unidad_aritmetica|divi|Add1~16_combout\ & 
-- (!\inst|alu1|unidad_aritmetica|divi|Add2~9\))))
-- \inst|alu1|unidad_aritmetica|divi|Add2~11\ = CARRY((\inst|MREG\(9) & ((!\inst|alu1|unidad_aritmetica|divi|Add2~9\) # (!\inst|alu1|unidad_aritmetica|divi|Add1~16_combout\))) # (!\inst|MREG\(9) & (!\inst|alu1|unidad_aritmetica|divi|Add1~16_combout\ & 
-- !\inst|alu1|unidad_aritmetica|divi|Add2~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MREG\(9),
	datab => \inst|alu1|unidad_aritmetica|divi|Add1~16_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add2~9\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add2~10_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add2~11\);

-- Location: LCCOMB_X23_Y7_N22
\inst|alu1|unidad_aritmetica|divi|Add2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add2~12_combout\ = \inst|MREG\(10) $ (\inst|alu1|unidad_aritmetica|divi|Add2~11\ $ (\inst|alu1|unidad_aritmetica|divi|Add1~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|MREG\(10),
	datad => \inst|alu1|unidad_aritmetica|divi|Add1~15_combout\,
	cin => \inst|alu1|unidad_aritmetica|divi|Add2~11\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add2~12_combout\);

-- Location: LCCOMB_X22_Y7_N22
\inst|alu1|unidad_aritmetica|divi|Add2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add2~14_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan2~14_combout\ & ((\inst|alu1|unidad_aritmetica|divi|Add1~15_combout\))) # (!\inst|alu1|unidad_aritmetica|divi|LessThan2~14_combout\ & 
-- (\inst|alu1|unidad_aritmetica|divi|Add2~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|unidad_aritmetica|divi|Add2~12_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|Add1~15_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan2~14_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add2~14_combout\);

-- Location: LCCOMB_X22_Y7_N0
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

-- Location: LCCOMB_X22_Y7_N26
\inst|alu1|unidad_aritmetica|divi|Add2~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add2~16_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan2~14_combout\ & ((\inst|alu1|unidad_aritmetica|divi|Add1~17_combout\))) # (!\inst|alu1|unidad_aritmetica|divi|LessThan2~14_combout\ & 
-- (\inst|alu1|unidad_aritmetica|divi|Add2~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|unidad_aritmetica|divi|Add2~8_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|Add1~17_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan2~14_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add2~16_combout\);

-- Location: LCCOMB_X23_Y7_N0
\inst|alu1|unidad_aritmetica|divi|Add2~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add2~17_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan2~14_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add1~18_combout\)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan2~14_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add2~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|unidad_aritmetica|divi|Add1~18_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|LessThan2~14_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|Add2~6_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add2~17_combout\);

-- Location: LCCOMB_X23_Y7_N30
\inst|alu1|unidad_aritmetica|divi|Add2~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add2~18_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan2~14_combout\ & ((\inst|alu1|unidad_aritmetica|divi|Add1~19_combout\))) # (!\inst|alu1|unidad_aritmetica|divi|LessThan2~14_combout\ & 
-- (\inst|alu1|unidad_aritmetica|divi|Add2~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|unidad_aritmetica|divi|Add2~4_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|LessThan2~14_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|Add1~19_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add2~18_combout\);

-- Location: LCCOMB_X22_Y7_N28
\inst|alu1|unidad_aritmetica|divi|Add2~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add2~19_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan2~14_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add1~20_combout\)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan2~14_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|unidad_aritmetica|divi|Add1~20_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|Add2~2_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan2~14_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add2~19_combout\);

-- Location: LCCOMB_X22_Y7_N30
\inst|alu1|unidad_aritmetica|divi|Add2~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add2~20_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan2~14_combout\ & (\inst|MREG\(15))) # (!\inst|alu1|unidad_aritmetica|divi|LessThan2~14_combout\ & ((\inst|alu1|unidad_aritmetica|divi|Add2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MREG\(15),
	datac => \inst|alu1|unidad_aritmetica|divi|Add2~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan2~14_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add2~20_combout\);

-- Location: LCCOMB_X22_Y6_N4
\inst|alu1|unidad_aritmetica|divi|LessThan3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan3~1_cout\ = CARRY((!\inst|MREG\(14) & \inst|MREG\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MREG\(14),
	datab => \inst|MREG\(4),
	datad => VCC,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan3~1_cout\);

-- Location: LCCOMB_X22_Y6_N6
\inst|alu1|unidad_aritmetica|divi|LessThan3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan3~3_cout\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add2~20_combout\ & ((!\inst|alu1|unidad_aritmetica|divi|LessThan3~1_cout\) # (!\inst|MREG\(5)))) # (!\inst|alu1|unidad_aritmetica|divi|Add2~20_combout\ & 
-- (!\inst|MREG\(5) & !\inst|alu1|unidad_aritmetica|divi|LessThan3~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add2~20_combout\,
	datab => \inst|MREG\(5),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan3~1_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan3~3_cout\);

-- Location: LCCOMB_X22_Y6_N8
\inst|alu1|unidad_aritmetica|divi|LessThan3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan3~5_cout\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add2~19_combout\ & (\inst|MREG\(6) & !\inst|alu1|unidad_aritmetica|divi|LessThan3~3_cout\)) # (!\inst|alu1|unidad_aritmetica|divi|Add2~19_combout\ & 
-- ((\inst|MREG\(6)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan3~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add2~19_combout\,
	datab => \inst|MREG\(6),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan3~3_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan3~5_cout\);

-- Location: LCCOMB_X22_Y6_N10
\inst|alu1|unidad_aritmetica|divi|LessThan3~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan3~7_cout\ = CARRY((\inst|MREG\(7) & (\inst|alu1|unidad_aritmetica|divi|Add2~18_combout\ & !\inst|alu1|unidad_aritmetica|divi|LessThan3~5_cout\)) # (!\inst|MREG\(7) & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add2~18_combout\) # (!\inst|alu1|unidad_aritmetica|divi|LessThan3~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MREG\(7),
	datab => \inst|alu1|unidad_aritmetica|divi|Add2~18_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan3~5_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan3~7_cout\);

-- Location: LCCOMB_X22_Y6_N12
\inst|alu1|unidad_aritmetica|divi|LessThan3~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan3~9_cout\ = CARRY((\inst|MREG\(8) & ((!\inst|alu1|unidad_aritmetica|divi|LessThan3~7_cout\) # (!\inst|alu1|unidad_aritmetica|divi|Add2~17_combout\))) # (!\inst|MREG\(8) & 
-- (!\inst|alu1|unidad_aritmetica|divi|Add2~17_combout\ & !\inst|alu1|unidad_aritmetica|divi|LessThan3~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MREG\(8),
	datab => \inst|alu1|unidad_aritmetica|divi|Add2~17_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan3~7_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan3~9_cout\);

-- Location: LCCOMB_X22_Y6_N14
\inst|alu1|unidad_aritmetica|divi|LessThan3~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan3~11_cout\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add2~16_combout\ & ((!\inst|alu1|unidad_aritmetica|divi|LessThan3~9_cout\) # (!\inst|MREG\(9)))) # (!\inst|alu1|unidad_aritmetica|divi|Add2~16_combout\ & 
-- (!\inst|MREG\(9) & !\inst|alu1|unidad_aritmetica|divi|LessThan3~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add2~16_combout\,
	datab => \inst|MREG\(9),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan3~9_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan3~11_cout\);

-- Location: LCCOMB_X22_Y6_N16
\inst|alu1|unidad_aritmetica|divi|LessThan3~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan3~13_cout\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add2~15_combout\ & (\inst|MREG\(10) & !\inst|alu1|unidad_aritmetica|divi|LessThan3~11_cout\)) # (!\inst|alu1|unidad_aritmetica|divi|Add2~15_combout\ & 
-- ((\inst|MREG\(10)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan3~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add2~15_combout\,
	datab => \inst|MREG\(10),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan3~11_cout\,
	cout => \inst|alu1|unidad_aritmetica|divi|LessThan3~13_cout\);

-- Location: LCCOMB_X22_Y6_N18
\inst|alu1|unidad_aritmetica|divi|LessThan3~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan3~14_combout\ = (\inst|MREG\(11) & ((\inst|alu1|unidad_aritmetica|divi|LessThan3~13_cout\) # (!\inst|alu1|unidad_aritmetica|divi|Add2~14_combout\))) # (!\inst|MREG\(11) & 
-- (\inst|alu1|unidad_aritmetica|divi|LessThan3~13_cout\ & !\inst|alu1|unidad_aritmetica|divi|Add2~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MREG\(11),
	datad => \inst|alu1|unidad_aritmetica|divi|Add2~14_combout\,
	cin => \inst|alu1|unidad_aritmetica|divi|LessThan3~13_cout\,
	combout => \inst|alu1|unidad_aritmetica|divi|LessThan3~14_combout\);

-- Location: LCCOMB_X22_Y6_N20
\inst|alu1|Mux9~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux9~5_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan3~14_combout\ & ((\inst|alu1|Mux11~0_combout\ & (!\inst|alu1|Mux10~0_combout\)) # (!\inst|alu1|Mux11~0_combout\ & ((!\inst|alu1|Mux9~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux11~0_combout\,
	datab => \inst|alu1|Mux10~0_combout\,
	datac => \inst|alu1|Mux9~4_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan3~14_combout\,
	combout => \inst|alu1|Mux9~5_combout\);

-- Location: LCCOMB_X22_Y6_N30
\inst|alu1|Mux9~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux9~6_combout\ = (\inst|MREG\(3) & (((\inst|alu1|Mux9~3_combout\ & !\inst|alu1|Mux9~5_combout\)) # (!\inst|alu1|Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux0~0_combout\,
	datab => \inst|MREG\(3),
	datac => \inst|alu1|Mux9~3_combout\,
	datad => \inst|alu1|Mux9~5_combout\,
	combout => \inst|alu1|Mux9~6_combout\);

-- Location: LCCOMB_X21_Y6_N16
\inst|alu1|Mux9~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux9~7_combout\ = (\inst|MREG\(1) & (\inst|MREG\(4) $ (((\inst|MREG\(14)))))) # (!\inst|MREG\(1) & (((\inst|alu1|unidad_logica|salida\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MREG\(1),
	datab => \inst|MREG\(4),
	datac => \inst|alu1|unidad_logica|salida\(0),
	datad => \inst|MREG\(14),
	combout => \inst|alu1|Mux9~7_combout\);

-- Location: LCCOMB_X21_Y8_N10
\inst|alu1|unidad_aritmetica|Mux9~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|Mux9~5_combout\ = (\inst|MREG\(4) & (\inst|MREG\(14) $ (((\inst|alu1|Mux10~0_combout\ & \inst|alu1|unidad_aritmetica|mult|multi4|s8|Cout~0_combout\))))) # (!\inst|MREG\(4) & (\inst|alu1|Mux10~0_combout\ & (\inst|MREG\(14) & 
-- \inst|alu1|unidad_aritmetica|mult|multi4|s8|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MREG\(4),
	datab => \inst|alu1|Mux10~0_combout\,
	datac => \inst|MREG\(14),
	datad => \inst|alu1|unidad_aritmetica|mult|multi4|s8|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|Mux9~5_combout\);

-- Location: LCCOMB_X22_Y6_N28
\inst|alu1|Mux9~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux9~8_combout\ = (\inst|alu1|Mux11~0_combout\ & ((\inst|alu1|Mux10~0_combout\ & (!\inst|alu1|unidad_aritmetica|Mux9~4_combout\)) # (!\inst|alu1|Mux10~0_combout\ & ((\inst|alu1|unidad_aritmetica|divi|LessThan3~14_combout\))))) # 
-- (!\inst|alu1|Mux11~0_combout\ & (\inst|alu1|Mux10~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux11~0_combout\,
	datab => \inst|alu1|Mux10~0_combout\,
	datac => \inst|alu1|unidad_aritmetica|Mux9~4_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan3~14_combout\,
	combout => \inst|alu1|Mux9~8_combout\);

-- Location: LCCOMB_X22_Y6_N2
\inst|alu1|Mux9~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux9~9_combout\ = (\inst|alu1|Mux11~0_combout\ & (((!\inst|alu1|Mux9~8_combout\)))) # (!\inst|alu1|Mux11~0_combout\ & ((\inst|alu1|Mux9~8_combout\ & ((\inst|alu1|Mux9~7_combout\))) # (!\inst|alu1|Mux9~8_combout\ & 
-- (\inst|alu1|unidad_aritmetica|Mux9~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux11~0_combout\,
	datab => \inst|alu1|unidad_aritmetica|Mux9~5_combout\,
	datac => \inst|alu1|Mux9~7_combout\,
	datad => \inst|alu1|Mux9~8_combout\,
	combout => \inst|alu1|Mux9~9_combout\);

-- Location: LCCOMB_X22_Y6_N24
\inst|alu1|Mux9~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux9~10_combout\ = (\inst|MREG\(1) & (\inst|MREG\(0) & ((\inst|alu1|Mux9~9_combout\)))) # (!\inst|MREG\(1) & (!\inst|MREG\(0) & (\inst|alu1|Mux9~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MREG\(1),
	datab => \inst|MREG\(0),
	datac => \inst|alu1|Mux9~7_combout\,
	datad => \inst|alu1|Mux9~9_combout\,
	combout => \inst|alu1|Mux9~10_combout\);

-- Location: LCCOMB_X22_Y6_N26
\inst|alu1|Mux9~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux9~11_combout\ = (\inst|alu1|Mux9~0_combout\) # ((\inst|alu1|Mux9~6_combout\) # ((\inst|MREG\(2) & \inst|alu1|Mux9~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MREG\(2),
	datab => \inst|alu1|Mux9~0_combout\,
	datac => \inst|alu1|Mux9~6_combout\,
	datad => \inst|alu1|Mux9~10_combout\,
	combout => \inst|alu1|Mux9~11_combout\);

-- Location: FF_X22_Y6_N27
\inst|registro[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|fec|salida~clkctrl_outclk\,
	d => \inst|alu1|Mux9~11_combout\,
	ena => \inst|registro[1][7]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|registro[1][0]~q\);

-- Location: LCCOMB_X21_Y6_N0
\inst|Mux199~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux199~0_combout\ = (\inst|MREG[15]~23_combout\ & ((\inst|registro[3][0]~q\) # ((\inst|MREG[15]~22_combout\)))) # (!\inst|MREG[15]~23_combout\ & (((\inst|registro[4][0]~q\ & !\inst|MREG[15]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|registro[3][0]~q\,
	datab => \inst|MREG[15]~23_combout\,
	datac => \inst|registro[4][0]~q\,
	datad => \inst|MREG[15]~22_combout\,
	combout => \inst|Mux199~0_combout\);

-- Location: LCCOMB_X21_Y6_N2
\inst|Mux199~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux199~1_combout\ = (\inst|MREG[15]~22_combout\ & ((\inst|Mux199~0_combout\ & (\inst|registro[5][0]~q\)) # (!\inst|Mux199~0_combout\ & ((\inst|registro[2][0]~q\))))) # (!\inst|MREG[15]~22_combout\ & (((\inst|Mux199~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|registro[5][0]~q\,
	datab => \inst|MREG[15]~22_combout\,
	datac => \inst|registro[2][0]~q\,
	datad => \inst|Mux199~0_combout\,
	combout => \inst|Mux199~1_combout\);

-- Location: LCCOMB_X19_Y8_N30
\inst|MREG[14]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|MREG[14]~2_combout\ = (\inst|MREG[15]~24_combout\ & (\inst|registro[1][0]~q\)) # (!\inst|MREG[15]~24_combout\ & ((\inst|Mux199~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|registro[1][0]~q\,
	datab => \inst|MREG[15]~24_combout\,
	datad => \inst|Mux199~1_combout\,
	combout => \inst|MREG[14]~2_combout\);

-- Location: LCCOMB_X24_Y6_N8
\inst|Mux70~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux70~0_combout\ = (\inst|Mux157~0_combout\ & ((\inst|Mux210~0_combout\ & (\inst|addr1\(1))) # (!\inst|Mux210~0_combout\ & ((!\inst|Mux178~1_combout\))))) # (!\inst|Mux157~0_combout\ & (\inst|addr1\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux157~0_combout\,
	datab => \inst|addr1\(1),
	datac => \inst|Mux178~1_combout\,
	datad => \inst|Mux210~0_combout\,
	combout => \inst|Mux70~0_combout\);

-- Location: LCCOMB_X24_Y6_N30
\inst|Mux152~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux152~0_combout\ = (\inst|Mux157~1_combout\) # (\inst|addr1\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Mux157~1_combout\,
	datad => \inst|addr1\(1),
	combout => \inst|Mux152~0_combout\);

-- Location: LCCOMB_X24_Y6_N20
\inst|addr1[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|addr1[1]~0_combout\ = (\ec[0]~input_o\ & ((\inst|Mux152~0_combout\))) # (!\ec[0]~input_o\ & (\inst|Mux70~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ec[0]~input_o\,
	datab => \inst|Mux70~0_combout\,
	datad => \inst|Mux152~0_combout\,
	combout => \inst|addr1[1]~0_combout\);

-- Location: LCCOMB_X24_Y6_N0
\inst|Mux38~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux38~2_combout\ = (\inst|Mux157~0_combout\ & (\inst|addr\(2) & ((\inst|addr1\(1)) # (!\inst|addr\(1))))) # (!\inst|Mux157~0_combout\ & (((\inst|addr1\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux157~0_combout\,
	datab => \inst|addr\(2),
	datac => \inst|addr\(1),
	datad => \inst|addr1\(1),
	combout => \inst|Mux38~2_combout\);

-- Location: FF_X24_Y6_N21
\inst|addr1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|fec|salida~clkctrl_outclk\,
	d => \inst|addr1[1]~0_combout\,
	asdata => \inst|Mux38~2_combout\,
	sload => \ALT_INV_ec[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|addr1\(1));

-- Location: LCCOMB_X25_Y7_N20
\inst|Mux185~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux185~0_combout\ = (\inst|Mux187~1_combout\ & ((\inst|addr\(1) & (!\ec[1]~input_o\ & !\inst|addr\(2))) # (!\inst|addr\(1) & ((\inst|addr\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ec[1]~input_o\,
	datab => \inst|Mux187~1_combout\,
	datac => \inst|addr\(1),
	datad => \inst|addr\(2),
	combout => \inst|Mux185~0_combout\);

-- Location: LCCOMB_X25_Y7_N18
\inst|Mux185~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux185~1_combout\ = (\inst|Mux185~0_combout\) # (((!\inst|Mux25~0_combout\ & \inst|addr1\(0))) # (!\inst|registro[2][3]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux185~0_combout\,
	datab => \inst|registro[2][3]~10_combout\,
	datac => \inst|Mux25~0_combout\,
	datad => \inst|addr1\(0),
	combout => \inst|Mux185~1_combout\);

-- Location: FF_X25_Y7_N7
\inst|addr1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|fec|salida~clkctrl_outclk\,
	asdata => \inst|Mux185~1_combout\,
	sload => VCC,
	ena => \inst|Mux187~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|addr1\(0));

-- Location: LCCOMB_X25_Y7_N30
\inst|Mux69~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux69~0_combout\ = (\inst|addr\(3)) # ((\inst|addr\(0)) # ((\inst|addr\(1) & \inst|addr\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|addr\(3),
	datab => \inst|addr\(1),
	datac => \inst|addr\(0),
	datad => \inst|addr\(2),
	combout => \inst|Mux69~0_combout\);

-- Location: LCCOMB_X25_Y7_N28
\inst|Mux183~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux183~0_combout\ = (\inst|Mux187~0_combout\ & (((\inst|addr1\(2)) # (\inst|Mux157~1_combout\)))) # (!\inst|Mux187~0_combout\ & (\inst|Mux69~0_combout\ & (\inst|addr1\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux69~0_combout\,
	datab => \inst|Mux187~0_combout\,
	datac => \inst|addr1\(2),
	datad => \inst|Mux157~1_combout\,
	combout => \inst|Mux183~0_combout\);

-- Location: FF_X25_Y7_N29
\inst|addr1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|fec|salida~clkctrl_outclk\,
	d => \inst|Mux183~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|addr1\(2));

-- Location: LCCOMB_X25_Y7_N22
\inst|Mux199~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux199~2_combout\ = ((!\inst|addr1\(1) & !\inst|addr1\(0))) # (!\inst|addr1\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|addr1\(1),
	datab => \inst|addr1\(0),
	datad => \inst|addr1\(2),
	combout => \inst|Mux199~2_combout\);

-- Location: FF_X19_Y8_N31
\inst|MREG[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|fec|salida~clkctrl_outclk\,
	d => \inst|MREG[14]~2_combout\,
	asdata => \inst|Mux199~2_combout\,
	sload => \inst|MREG[8]~36_combout\,
	ena => \inst|MREG[8]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MREG\(14));

-- Location: LCCOMB_X18_Y8_N30
\inst|alu1|unidad_aritmetica|suma|s1|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|s1|Cout~0_combout\ = (\inst|MREG\(15) & ((\inst|MREG\(5)) # ((\inst|MREG\(14) & \inst|MREG\(4))))) # (!\inst|MREG\(15) & (\inst|MREG\(14) & (\inst|MREG\(5) & \inst|MREG\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MREG\(14),
	datab => \inst|MREG\(15),
	datac => \inst|MREG\(5),
	datad => \inst|MREG\(4),
	combout => \inst|alu1|unidad_aritmetica|suma|s1|Cout~0_combout\);

-- Location: LCCOMB_X19_Y7_N30
\inst|alu1|Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux7~1_combout\ = \inst|MREG\(16) $ (\inst|alu1|unidad_aritmetica|suma|s1|Cout~0_combout\ $ (\inst|MREG\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|MREG\(16),
	datac => \inst|alu1|unidad_aritmetica|suma|s1|Cout~0_combout\,
	datad => \inst|MREG\(6),
	combout => \inst|alu1|Mux7~1_combout\);

-- Location: LCCOMB_X19_Y8_N20
\inst|alu1|unidad_aritmetica|mult|multi2|s2|Suma\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi2|s2|Suma~combout\ = \inst|alu1|unidad_aritmetica|mult|inter\(2) $ (\inst|alu1|unidad_logica|salida~0_combout\ $ (\inst|alu1|unidad_aritmetica|mult|multi1|s1|Cout~0_combout\ $ 
-- (\inst|alu1|unidad_aritmetica|mult|inter\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|inter\(2),
	datab => \inst|alu1|unidad_logica|salida~0_combout\,
	datac => \inst|alu1|unidad_aritmetica|mult|multi1|s1|Cout~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|mult|inter\(10),
	combout => \inst|alu1|unidad_aritmetica|mult|multi2|s2|Suma~combout\);

-- Location: LCCOMB_X19_Y7_N24
\inst|alu1|unidad_aritmetica|resta|s2|Suma\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|resta|s2|Suma~combout\ = \inst|MREG\(6) $ (\inst|alu1|unidad_aritmetica|resta|s1|Cout~0_combout\ $ (\inst|MREG\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|MREG\(6),
	datac => \inst|alu1|unidad_aritmetica|resta|s1|Cout~0_combout\,
	datad => \inst|MREG\(16),
	combout => \inst|alu1|unidad_aritmetica|resta|s2|Suma~combout\);

-- Location: LCCOMB_X19_Y7_N20
\inst|alu1|Mux7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux7~2_combout\ = (\inst|alu1|Mux10~0_combout\ & (((\inst|alu1|unidad_aritmetica|resta|s2|Suma~combout\)) # (!\inst|alu1|Mux11~0_combout\))) # (!\inst|alu1|Mux10~0_combout\ & (\inst|alu1|Mux11~0_combout\ & 
-- (\inst|alu1|unidad_aritmetica|divi|LessThan1~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux10~0_combout\,
	datab => \inst|alu1|Mux11~0_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|LessThan1~14_combout\,
	datad => \inst|alu1|unidad_aritmetica|resta|s2|Suma~combout\,
	combout => \inst|alu1|Mux7~2_combout\);

-- Location: LCCOMB_X19_Y7_N6
\inst|alu1|Mux7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux7~3_combout\ = (\inst|alu1|Mux11~0_combout\ & (((!\inst|alu1|Mux7~2_combout\)))) # (!\inst|alu1|Mux11~0_combout\ & ((\inst|alu1|Mux7~2_combout\ & (\inst|alu1|Mux7~1_combout\)) # (!\inst|alu1|Mux7~2_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|mult|multi2|s2|Suma~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux7~1_combout\,
	datab => \inst|alu1|Mux11~0_combout\,
	datac => \inst|alu1|unidad_aritmetica|mult|multi2|s2|Suma~combout\,
	datad => \inst|alu1|Mux7~2_combout\,
	combout => \inst|alu1|Mux7~3_combout\);

-- Location: LCCOMB_X19_Y7_N4
\inst|alu1|Mux7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux7~4_combout\ = (\inst|alu1|Mux3~8_combout\ & ((\inst|alu1|Mux7~3_combout\))) # (!\inst|alu1|Mux3~8_combout\ & (\inst|MREG\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MREG\(3),
	datab => \inst|alu1|Mux3~8_combout\,
	datad => \inst|alu1|Mux7~3_combout\,
	combout => \inst|alu1|Mux7~4_combout\);

-- Location: LCCOMB_X19_Y7_N26
\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~6_combout\ = (\inst|alu1|Mux10~0_combout\ & ((\inst|alu1|unidad_aritmetica|resta|s2|Suma~combout\))) # (!\inst|alu1|Mux10~0_combout\ & (!\inst|alu1|unidad_aritmetica|mult|multi2|s2|Suma~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux10~0_combout\,
	datac => \inst|alu1|unidad_aritmetica|mult|multi2|s2|Suma~combout\,
	datad => \inst|alu1|unidad_aritmetica|resta|s2|Suma~combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~6_combout\);

-- Location: LCCOMB_X22_Y5_N6
\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~13_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~6_combout\ & (\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~12\ $ (GND))) # 
-- (!\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~6_combout\ & (!\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~12\ & VCC))
-- \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~14\ = CARRY((\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~6_combout\ & !\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~6_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~12\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~13_combout\,
	cout => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~14\);

-- Location: LCCOMB_X19_Y7_N12
\inst|alu1|unidad_logica|salida~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|salida~22_combout\ = (\inst|MREG\(6) & \inst|MREG\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|MREG\(6),
	datad => \inst|MREG\(16),
	combout => \inst|alu1|unidad_logica|salida~22_combout\);

-- Location: LCCOMB_X23_Y5_N2
\inst|alu1|unidad_logica|aux[2]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|aux[2]~11_combout\ = (\inst|MREG\(16) & ((\inst|alu1|unidad_logica|aux[1]~10\) # (GND))) # (!\inst|MREG\(16) & (!\inst|alu1|unidad_logica|aux[1]~10\))
-- \inst|alu1|unidad_logica|aux[2]~12\ = CARRY((\inst|MREG\(16)) # (!\inst|alu1|unidad_logica|aux[1]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MREG\(16),
	datad => VCC,
	cin => \inst|alu1|unidad_logica|aux[1]~10\,
	combout => \inst|alu1|unidad_logica|aux[2]~11_combout\,
	cout => \inst|alu1|unidad_logica|aux[2]~12\);

-- Location: FF_X23_Y5_N3
\inst|alu1|unidad_logica|aux[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|fec|salida~clkctrl_outclk\,
	d => \inst|alu1|unidad_logica|aux[2]~11_combout\,
	ena => \inst|alu1|unidad_logica|Equal1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|unidad_logica|aux\(2));

-- Location: LCCOMB_X19_Y7_N18
\inst|alu1|unidad_logica|salida~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|salida~21_combout\ = (\inst|MREG\(16) & (\inst|alu1|Mux10~0_combout\)) # (!\inst|MREG\(16) & (((\inst|alu1|Mux10~0_combout\ & \inst|MREG\(6))) # (!\inst|alu1|Mux11~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux10~0_combout\,
	datab => \inst|alu1|Mux11~0_combout\,
	datac => \inst|MREG\(6),
	datad => \inst|MREG\(16),
	combout => \inst|alu1|unidad_logica|salida~21_combout\);

-- Location: LCCOMB_X21_Y7_N6
\inst|alu1|unidad_logica|salida~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|salida~23_combout\ = (\inst|alu1|unidad_logica|salida~21_combout\ & ((\inst|alu1|unidad_logica|salida~22_combout\) # ((!\inst|alu1|Mux3~15_combout\)))) # (!\inst|alu1|unidad_logica|salida~21_combout\ & 
-- (((\inst|alu1|unidad_logica|aux\(2) & \inst|alu1|Mux3~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_logica|salida~22_combout\,
	datab => \inst|alu1|unidad_logica|aux\(2),
	datac => \inst|alu1|unidad_logica|salida~21_combout\,
	datad => \inst|alu1|Mux3~15_combout\,
	combout => \inst|alu1|unidad_logica|salida~23_combout\);

-- Location: FF_X21_Y7_N7
\inst|alu1|unidad_logica|salida[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|fec|salida~clkctrl_outclk\,
	d => \inst|alu1|unidad_logica|salida~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|unidad_logica|salida\(2));

-- Location: FF_X21_Y4_N7
\inst|alu1|barrel_shifters|aux[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|fec|salida~clkctrl_outclk\,
	asdata => \inst|MREG\(15),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|barrel_shifters|aux\(2));

-- Location: FF_X21_Y4_N25
\inst|alu1|barrel_shifters|salShifters[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|fec|salida~clkctrl_outclk\,
	asdata => \inst|alu1|barrel_shifters|aux\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|barrel_shifters|salShifters\(2));

-- Location: LCCOMB_X21_Y4_N24
\inst|alu1|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux7~0_combout\ = (\inst|alu1|Mux6~11_combout\ & ((\inst|alu1|Mux6~4_combout\ & (\inst|alu1|unidad_logica|salida\(2))) # (!\inst|alu1|Mux6~4_combout\ & ((\inst|alu1|barrel_shifters|salShifters\(2)))))) # (!\inst|alu1|Mux6~11_combout\ & 
-- (((\inst|alu1|Mux6~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_logica|salida\(2),
	datab => \inst|alu1|Mux6~11_combout\,
	datac => \inst|alu1|barrel_shifters|salShifters\(2),
	datad => \inst|alu1|Mux6~4_combout\,
	combout => \inst|alu1|Mux7~0_combout\);

-- Location: LCCOMB_X21_Y6_N8
\inst|alu1|Mux7~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux7~5_combout\ = (\inst|alu1|Mux7~0_combout\ & (((\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~13_combout\) # (!\inst|alu1|Mux3~8_combout\)))) # (!\inst|alu1|Mux7~0_combout\ & (\inst|alu1|Mux7~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux7~4_combout\,
	datab => \inst|alu1|Mux3~8_combout\,
	datac => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~13_combout\,
	datad => \inst|alu1|Mux7~0_combout\,
	combout => \inst|alu1|Mux7~5_combout\);

-- Location: FF_X21_Y6_N9
\inst|registro[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|fec|salida~clkctrl_outclk\,
	d => \inst|alu1|Mux7~5_combout\,
	ena => \inst|registro[1][7]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|registro[1][2]~q\);

-- Location: LCCOMB_X21_Y6_N24
\inst|Mux197~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux197~0_combout\ = (\inst|MREG[15]~22_combout\ & (\inst|MREG[15]~23_combout\)) # (!\inst|MREG[15]~22_combout\ & ((\inst|MREG[15]~23_combout\ & ((\inst|registro[3][2]~q\))) # (!\inst|MREG[15]~23_combout\ & (\inst|registro[4][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MREG[15]~22_combout\,
	datab => \inst|MREG[15]~23_combout\,
	datac => \inst|registro[4][2]~q\,
	datad => \inst|registro[3][2]~q\,
	combout => \inst|Mux197~0_combout\);

-- Location: LCCOMB_X19_Y6_N28
\inst|Mux197~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux197~1_combout\ = (\inst|MREG[15]~22_combout\ & ((\inst|Mux197~0_combout\ & ((\inst|registro[5][2]~q\))) # (!\inst|Mux197~0_combout\ & (\inst|registro[2][2]~q\)))) # (!\inst|MREG[15]~22_combout\ & (((\inst|Mux197~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|registro[2][2]~q\,
	datab => \inst|MREG[15]~22_combout\,
	datac => \inst|registro[5][2]~q\,
	datad => \inst|Mux197~0_combout\,
	combout => \inst|Mux197~1_combout\);

-- Location: LCCOMB_X19_Y8_N8
\inst|MREG[16]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|MREG[16]~1_combout\ = (\inst|MREG[15]~24_combout\ & (\inst|registro[1][2]~q\)) # (!\inst|MREG[15]~24_combout\ & ((\inst|Mux197~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|registro[1][2]~q\,
	datab => \inst|Mux197~1_combout\,
	datad => \inst|MREG[15]~24_combout\,
	combout => \inst|MREG[16]~1_combout\);

-- Location: LCCOMB_X25_Y7_N4
\inst|Mux197~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux197~2_combout\ = (\inst|addr1\(1) & (\inst|addr1\(0) & !\inst|addr1\(2))) # (!\inst|addr1\(1) & (!\inst|addr1\(0) & \inst|addr1\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|addr1\(1),
	datab => \inst|addr1\(0),
	datad => \inst|addr1\(2),
	combout => \inst|Mux197~2_combout\);

-- Location: FF_X19_Y8_N9
\inst|MREG[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|fec|salida~clkctrl_outclk\,
	d => \inst|MREG[16]~1_combout\,
	asdata => \inst|Mux197~2_combout\,
	sload => \inst|MREG[8]~36_combout\,
	ena => \inst|MREG[8]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MREG\(16));

-- Location: LCCOMB_X19_Y7_N16
\inst|alu1|unidad_aritmetica|suma|s2|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|s2|Cout~0_combout\ = (\inst|MREG\(16) & ((\inst|alu1|unidad_aritmetica|suma|s1|Cout~0_combout\) # (\inst|MREG\(6)))) # (!\inst|MREG\(16) & (\inst|alu1|unidad_aritmetica|suma|s1|Cout~0_combout\ & \inst|MREG\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|MREG\(16),
	datac => \inst|alu1|unidad_aritmetica|suma|s1|Cout~0_combout\,
	datad => \inst|MREG\(6),
	combout => \inst|alu1|unidad_aritmetica|suma|s2|Cout~0_combout\);

-- Location: LCCOMB_X19_Y7_N22
\inst|alu1|Mux6~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux6~6_combout\ = \inst|MREG\(7) $ (\inst|alu1|unidad_aritmetica|suma|s2|Cout~0_combout\ $ (\inst|MREG\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MREG\(7),
	datab => \inst|alu1|unidad_aritmetica|suma|s2|Cout~0_combout\,
	datad => \inst|MREG\(17),
	combout => \inst|alu1|Mux6~6_combout\);

-- Location: LCCOMB_X18_Y8_N12
\inst|alu1|unidad_aritmetica|mult|multi3|s3|Suma\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi3|s3|Suma~combout\ = \inst|alu1|unidad_aritmetica|mult|multi1|s3|Suma~combout\ $ (\inst|alu1|unidad_aritmetica|mult|multi2|s3|Suma~0_combout\ $ (((\inst|MREG\(14) & \inst|MREG\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|multi1|s3|Suma~combout\,
	datab => \inst|MREG\(14),
	datac => \inst|MREG\(7),
	datad => \inst|alu1|unidad_aritmetica|mult|multi2|s3|Suma~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi3|s3|Suma~combout\);

-- Location: LCCOMB_X19_Y7_N28
\inst|alu1|unidad_aritmetica|resta|s3|Suma\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|resta|s3|Suma~combout\ = \inst|MREG\(17) $ (\inst|alu1|unidad_aritmetica|resta|s2|Cout~0_combout\ $ (\inst|MREG\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MREG\(17),
	datab => \inst|alu1|unidad_aritmetica|resta|s2|Cout~0_combout\,
	datad => \inst|MREG\(7),
	combout => \inst|alu1|unidad_aritmetica|resta|s3|Suma~combout\);

-- Location: LCCOMB_X19_Y7_N0
\inst|alu1|Mux6~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux6~7_combout\ = (\inst|alu1|Mux11~0_combout\ & ((\inst|alu1|Mux10~0_combout\ & ((\inst|alu1|unidad_aritmetica|resta|s3|Suma~combout\))) # (!\inst|alu1|Mux10~0_combout\ & (\inst|alu1|unidad_aritmetica|divi|LessThan0~2_combout\)))) # 
-- (!\inst|alu1|Mux11~0_combout\ & (((\inst|alu1|Mux10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|LessThan0~2_combout\,
	datab => \inst|alu1|Mux11~0_combout\,
	datac => \inst|alu1|Mux10~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|resta|s3|Suma~combout\,
	combout => \inst|alu1|Mux6~7_combout\);

-- Location: LCCOMB_X19_Y7_N10
\inst|alu1|Mux6~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux6~8_combout\ = (\inst|alu1|Mux11~0_combout\ & (((!\inst|alu1|Mux6~7_combout\)))) # (!\inst|alu1|Mux11~0_combout\ & ((\inst|alu1|Mux6~7_combout\ & (\inst|alu1|Mux6~6_combout\)) # (!\inst|alu1|Mux6~7_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|mult|multi3|s3|Suma~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux6~6_combout\,
	datab => \inst|alu1|Mux11~0_combout\,
	datac => \inst|alu1|unidad_aritmetica|mult|multi3|s3|Suma~combout\,
	datad => \inst|alu1|Mux6~7_combout\,
	combout => \inst|alu1|Mux6~8_combout\);

-- Location: LCCOMB_X19_Y7_N8
\inst|alu1|Mux6~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux6~9_combout\ = (\inst|alu1|Mux3~8_combout\ & ((\inst|alu1|Mux6~8_combout\))) # (!\inst|alu1|Mux3~8_combout\ & (\inst|MREG\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MREG\(3),
	datab => \inst|alu1|Mux3~8_combout\,
	datad => \inst|alu1|Mux6~8_combout\,
	combout => \inst|alu1|Mux6~9_combout\);

-- Location: LCCOMB_X23_Y5_N4
\inst|alu1|unidad_logica|aux[3]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|aux[3]~13_combout\ = (\inst|MREG\(17) & (!\inst|alu1|unidad_logica|aux[2]~12\ & VCC)) # (!\inst|MREG\(17) & (\inst|alu1|unidad_logica|aux[2]~12\ $ (GND)))
-- \inst|alu1|unidad_logica|aux[3]~14\ = CARRY((!\inst|MREG\(17) & !\inst|alu1|unidad_logica|aux[2]~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MREG\(17),
	datad => VCC,
	cin => \inst|alu1|unidad_logica|aux[2]~12\,
	combout => \inst|alu1|unidad_logica|aux[3]~13_combout\,
	cout => \inst|alu1|unidad_logica|aux[3]~14\);

-- Location: FF_X23_Y5_N5
\inst|alu1|unidad_logica|aux[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|fec|salida~clkctrl_outclk\,
	d => \inst|alu1|unidad_logica|aux[3]~13_combout\,
	ena => \inst|alu1|unidad_logica|Equal1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|unidad_logica|aux\(3));

-- Location: LCCOMB_X21_Y8_N0
\inst|alu1|unidad_logica|salida~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|salida~19_combout\ = (\inst|MREG\(17) & (((\inst|alu1|Mux10~0_combout\)))) # (!\inst|MREG\(17) & (((\inst|MREG\(7) & \inst|alu1|Mux10~0_combout\)) # (!\inst|alu1|Mux11~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MREG\(7),
	datab => \inst|alu1|Mux10~0_combout\,
	datac => \inst|alu1|Mux11~0_combout\,
	datad => \inst|MREG\(17),
	combout => \inst|alu1|unidad_logica|salida~19_combout\);

-- Location: LCCOMB_X21_Y8_N26
\inst|alu1|unidad_aritmetica|mult|inter[18]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|inter\(18) = (\inst|MREG\(7) & \inst|MREG\(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|MREG\(7),
	datad => \inst|MREG\(17),
	combout => \inst|alu1|unidad_aritmetica|mult|inter\(18));

-- Location: LCCOMB_X21_Y8_N8
\inst|alu1|unidad_logica|salida~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|salida~20_combout\ = (\inst|alu1|unidad_logica|salida~19_combout\ & (((\inst|alu1|unidad_aritmetica|mult|inter\(18)) # (!\inst|alu1|Mux3~15_combout\)))) # (!\inst|alu1|unidad_logica|salida~19_combout\ & 
-- (\inst|alu1|unidad_logica|aux\(3) & (\inst|alu1|Mux3~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_logica|aux\(3),
	datab => \inst|alu1|unidad_logica|salida~19_combout\,
	datac => \inst|alu1|Mux3~15_combout\,
	datad => \inst|alu1|unidad_aritmetica|mult|inter\(18),
	combout => \inst|alu1|unidad_logica|salida~20_combout\);

-- Location: FF_X21_Y8_N9
\inst|alu1|unidad_logica|salida[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|fec|salida~clkctrl_outclk\,
	d => \inst|alu1|unidad_logica|salida~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|unidad_logica|salida\(3));

-- Location: FF_X21_Y4_N19
\inst|alu1|barrel_shifters|aux[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|fec|salida~clkctrl_outclk\,
	asdata => \inst|MREG\(16),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|barrel_shifters|aux\(3));

-- Location: FF_X21_Y4_N9
\inst|alu1|barrel_shifters|salShifters[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|fec|salida~clkctrl_outclk\,
	asdata => \inst|alu1|barrel_shifters|aux\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|barrel_shifters|salShifters\(3));

-- Location: LCCOMB_X21_Y4_N8
\inst|alu1|Mux6~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux6~5_combout\ = (\inst|alu1|Mux6~11_combout\ & ((\inst|alu1|Mux6~4_combout\ & (\inst|alu1|unidad_logica|salida\(3))) # (!\inst|alu1|Mux6~4_combout\ & ((\inst|alu1|barrel_shifters|salShifters\(3)))))) # (!\inst|alu1|Mux6~11_combout\ & 
-- (((\inst|alu1|Mux6~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_logica|salida\(3),
	datab => \inst|alu1|Mux6~11_combout\,
	datac => \inst|alu1|barrel_shifters|salShifters\(3),
	datad => \inst|alu1|Mux6~4_combout\,
	combout => \inst|alu1|Mux6~5_combout\);

-- Location: LCCOMB_X19_Y7_N14
\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~5_combout\ = (\inst|alu1|Mux10~0_combout\ & ((\inst|alu1|unidad_aritmetica|resta|s3|Suma~combout\))) # (!\inst|alu1|Mux10~0_combout\ & (!\inst|alu1|unidad_aritmetica|mult|multi3|s3|Suma~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|multi3|s3|Suma~combout\,
	datac => \inst|alu1|Mux10~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|resta|s3|Suma~combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~5_combout\);

-- Location: LCCOMB_X22_Y5_N8
\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~15_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~5_combout\ & (!\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~14\)) # 
-- (!\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~5_combout\ & ((\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~14\) # (GND)))
-- \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~16\ = CARRY((!\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~14\) # (!\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~5_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~14\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~15_combout\,
	cout => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~16\);

-- Location: LCCOMB_X21_Y4_N12
\inst|alu1|Mux6~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux6~10_combout\ = (\inst|alu1|Mux6~5_combout\ & (((\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~15_combout\) # (!\inst|alu1|Mux3~8_combout\)))) # (!\inst|alu1|Mux6~5_combout\ & (\inst|alu1|Mux6~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux6~9_combout\,
	datab => \inst|alu1|Mux3~8_combout\,
	datac => \inst|alu1|Mux6~5_combout\,
	datad => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~15_combout\,
	combout => \inst|alu1|Mux6~10_combout\);

-- Location: FF_X21_Y4_N13
\inst|registro[5][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|fec|salida~clkctrl_outclk\,
	d => \inst|alu1|Mux6~10_combout\,
	ena => \inst|registro[5][6]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|registro[5][3]~q\);

-- Location: LCCOMB_X21_Y6_N28
\inst|Mux196~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux196~0_combout\ = (\inst|MREG[15]~22_combout\ & ((\inst|MREG[15]~23_combout\) # ((\inst|registro[2][3]~q\)))) # (!\inst|MREG[15]~22_combout\ & (!\inst|MREG[15]~23_combout\ & (\inst|registro[4][3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MREG[15]~22_combout\,
	datab => \inst|MREG[15]~23_combout\,
	datac => \inst|registro[4][3]~q\,
	datad => \inst|registro[2][3]~q\,
	combout => \inst|Mux196~0_combout\);

-- Location: LCCOMB_X21_Y6_N30
\inst|Mux196~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux196~1_combout\ = (\inst|Mux196~0_combout\ & ((\inst|registro[5][3]~q\) # ((!\inst|MREG[15]~23_combout\)))) # (!\inst|Mux196~0_combout\ & (((\inst|MREG[15]~23_combout\ & \inst|registro[3][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|registro[5][3]~q\,
	datab => \inst|Mux196~0_combout\,
	datac => \inst|MREG[15]~23_combout\,
	datad => \inst|registro[3][3]~q\,
	combout => \inst|Mux196~1_combout\);

-- Location: FF_X22_Y6_N17
\inst|registro[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|fec|salida~clkctrl_outclk\,
	asdata => \inst|alu1|Mux6~10_combout\,
	sload => VCC,
	ena => \inst|registro[1][7]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|registro[1][3]~q\);

-- Location: LCCOMB_X19_Y8_N22
\inst|Mux196~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux196~2_combout\ = (!\inst|MREG[8]~36_combout\ & ((\inst|MREG[15]~24_combout\ & ((\inst|registro[1][3]~q\))) # (!\inst|MREG[15]~24_combout\ & (\inst|Mux196~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux196~1_combout\,
	datab => \inst|MREG[15]~24_combout\,
	datac => \inst|MREG[8]~36_combout\,
	datad => \inst|registro[1][3]~q\,
	combout => \inst|Mux196~2_combout\);

-- Location: FF_X19_Y8_N23
\inst|MREG[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|fec|salida~clkctrl_outclk\,
	d => \inst|Mux196~2_combout\,
	ena => \inst|MREG[8]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MREG\(17));

-- Location: LCCOMB_X24_Y5_N6
\inst|alu1|barrel_shifters|aux[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|barrel_shifters|aux[4]~feeder_combout\ = \inst|MREG\(17)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|MREG\(17),
	combout => \inst|alu1|barrel_shifters|aux[4]~feeder_combout\);

-- Location: FF_X24_Y5_N7
\inst|alu1|barrel_shifters|aux[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|fec|salida~clkctrl_outclk\,
	d => \inst|alu1|barrel_shifters|aux[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|barrel_shifters|aux\(4));

-- Location: FF_X25_Y5_N27
\inst|alu1|barrel_shifters|salShifters[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|fec|salida~clkctrl_outclk\,
	asdata => \inst|alu1|barrel_shifters|aux\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|barrel_shifters|salShifters\(4));

-- Location: LCCOMB_X25_Y5_N26
\inst|alu1|Mux5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux5~3_combout\ = (\inst|MREG\(3)) # ((\inst|MREG\(2) & (\inst|alu1|barrel_shifters|salShifters\(4) & !\inst|alu1|Mux3~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MREG\(3),
	datab => \inst|MREG\(2),
	datac => \inst|alu1|barrel_shifters|salShifters\(4),
	datad => \inst|alu1|Mux3~7_combout\,
	combout => \inst|alu1|Mux5~3_combout\);

-- Location: LCCOMB_X23_Y5_N6
\inst|alu1|unidad_logica|aux[4]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|aux[4]~15_combout\ = (\inst|MREG\(18) & ((\inst|alu1|unidad_logica|aux[3]~14\) # (GND))) # (!\inst|MREG\(18) & (!\inst|alu1|unidad_logica|aux[3]~14\))
-- \inst|alu1|unidad_logica|aux[4]~16\ = CARRY((\inst|MREG\(18)) # (!\inst|alu1|unidad_logica|aux[3]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|MREG\(18),
	datad => VCC,
	cin => \inst|alu1|unidad_logica|aux[3]~14\,
	combout => \inst|alu1|unidad_logica|aux[4]~15_combout\,
	cout => \inst|alu1|unidad_logica|aux[4]~16\);

-- Location: FF_X23_Y5_N7
\inst|alu1|unidad_logica|aux[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|fec|salida~clkctrl_outclk\,
	d => \inst|alu1|unidad_logica|aux[4]~15_combout\,
	ena => \inst|alu1|unidad_logica|Equal1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|unidad_logica|aux\(4));

-- Location: LCCOMB_X25_Y5_N18
\inst|alu1|unidad_logica|salida~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|salida~17_combout\ = (\inst|MREG\(18) & \inst|MREG\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|MREG\(18),
	datad => \inst|MREG\(8),
	combout => \inst|alu1|unidad_logica|salida~17_combout\);

-- Location: LCCOMB_X25_Y5_N28
\inst|alu1|unidad_logica|salida~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|salida~16_combout\ = (\inst|MREG\(18) & (((\inst|alu1|Mux10~0_combout\)))) # (!\inst|MREG\(18) & (((\inst|MREG\(8) & \inst|alu1|Mux10~0_combout\)) # (!\inst|alu1|Mux11~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MREG\(8),
	datab => \inst|alu1|Mux10~0_combout\,
	datac => \inst|MREG\(18),
	datad => \inst|alu1|Mux11~0_combout\,
	combout => \inst|alu1|unidad_logica|salida~16_combout\);

-- Location: LCCOMB_X24_Y5_N14
\inst|alu1|unidad_logica|salida~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|salida~18_combout\ = (\inst|alu1|Mux3~15_combout\ & ((\inst|alu1|unidad_logica|salida~16_combout\ & ((\inst|alu1|unidad_logica|salida~17_combout\))) # (!\inst|alu1|unidad_logica|salida~16_combout\ & 
-- (\inst|alu1|unidad_logica|aux\(4))))) # (!\inst|alu1|Mux3~15_combout\ & (((\inst|alu1|unidad_logica|salida~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_logica|aux\(4),
	datab => \inst|alu1|unidad_logica|salida~17_combout\,
	datac => \inst|alu1|Mux3~15_combout\,
	datad => \inst|alu1|unidad_logica|salida~16_combout\,
	combout => \inst|alu1|unidad_logica|salida~18_combout\);

-- Location: FF_X24_Y5_N15
\inst|alu1|unidad_logica|salida[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|fec|salida~clkctrl_outclk\,
	d => \inst|alu1|unidad_logica|salida~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|unidad_logica|salida\(4));

-- Location: LCCOMB_X25_Y5_N24
\inst|alu1|Mux5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux5~2_combout\ = (\inst|alu1|unidad_logica|salida\(4) & (\inst|MREG\(2) $ (((\inst|MREG\(1)) # (\inst|MREG\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_logica|salida\(4),
	datab => \inst|MREG\(1),
	datac => \inst|MREG\(0),
	datad => \inst|MREG\(2),
	combout => \inst|alu1|Mux5~2_combout\);

-- Location: LCCOMB_X21_Y8_N30
\inst|alu1|unidad_aritmetica|mult|multi4|s4|Suma\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi4|s4|Suma~combout\ = \inst|alu1|unidad_aritmetica|mult|multi3|s3|Cout~0_combout\ $ (\inst|alu1|unidad_aritmetica|mult|inter\(16) $ (\inst|alu1|unidad_aritmetica|mult|multi2|s4|Suma~combout\ $ 
-- (\inst|alu1|unidad_aritmetica|mult|inter\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|multi3|s3|Cout~0_combout\,
	datab => \inst|alu1|unidad_aritmetica|mult|inter\(16),
	datac => \inst|alu1|unidad_aritmetica|mult|multi2|s4|Suma~combout\,
	datad => \inst|alu1|unidad_aritmetica|mult|inter\(20),
	combout => \inst|alu1|unidad_aritmetica|mult|multi4|s4|Suma~combout\);

-- Location: LCCOMB_X21_Y5_N14
\inst|alu1|Mux3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux3~5_combout\ = (\inst|alu1|Mux10~0_combout\ & (\inst|alu1|Mux11~0_combout\ & !\inst|alu1|unidad_aritmetica|resta|s7|Cout~0_combout\)) # (!\inst|alu1|Mux10~0_combout\ & (!\inst|alu1|Mux11~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000110011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux10~0_combout\,
	datab => \inst|alu1|Mux11~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|resta|s7|Cout~0_combout\,
	combout => \inst|alu1|Mux3~5_combout\);

-- Location: LCCOMB_X21_Y8_N28
\inst|alu1|unidad_aritmetica|resta|s4|Suma\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|resta|s4|Suma~combout\ = \inst|MREG\(8) $ (\inst|alu1|unidad_aritmetica|resta|s3|Cout~0_combout\ $ (\inst|MREG\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|MREG\(8),
	datac => \inst|alu1|unidad_aritmetica|resta|s3|Cout~0_combout\,
	datad => \inst|MREG\(18),
	combout => \inst|alu1|unidad_aritmetica|resta|s4|Suma~combout\);

-- Location: LCCOMB_X21_Y8_N4
\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~4_combout\ = (\inst|alu1|Mux10~0_combout\ & ((\inst|alu1|unidad_aritmetica|resta|s4|Suma~combout\))) # (!\inst|alu1|Mux10~0_combout\ & (!\inst|alu1|unidad_aritmetica|mult|multi4|s4|Suma~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|Mux10~0_combout\,
	datac => \inst|alu1|unidad_aritmetica|mult|multi4|s4|Suma~combout\,
	datad => \inst|alu1|unidad_aritmetica|resta|s4|Suma~combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~4_combout\);

-- Location: LCCOMB_X22_Y5_N10
\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~17_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~4_combout\ & (\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~16\ $ (GND))) # 
-- (!\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~4_combout\ & (!\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~16\ & VCC))
-- \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~18\ = CARRY((\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~4_combout\ & !\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~4_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~16\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~17_combout\,
	cout => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~18\);

-- Location: LCCOMB_X21_Y5_N20
\inst|alu1|Mux3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux3~6_combout\ = (\inst|alu1|Mux10~0_combout\ & (\inst|alu1|Mux11~0_combout\)) # (!\inst|alu1|Mux10~0_combout\ & (!\inst|alu1|Mux11~0_combout\ & \inst|alu1|unidad_aritmetica|mult|multi4|s8|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux10~0_combout\,
	datac => \inst|alu1|Mux11~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|mult|multi4|s8|Cout~0_combout\,
	combout => \inst|alu1|Mux3~6_combout\);

-- Location: LCCOMB_X21_Y5_N6
\inst|alu1|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux5~0_combout\ = (\inst|alu1|Mux3~5_combout\ & ((\inst|alu1|Mux3~6_combout\ & ((\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~17_combout\))) # (!\inst|alu1|Mux3~6_combout\ & 
-- (\inst|alu1|unidad_aritmetica|mult|multi4|s4|Suma~combout\)))) # (!\inst|alu1|Mux3~5_combout\ & (((\inst|alu1|Mux3~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|multi4|s4|Suma~combout\,
	datab => \inst|alu1|Mux3~5_combout\,
	datac => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~17_combout\,
	datad => \inst|alu1|Mux3~6_combout\,
	combout => \inst|alu1|Mux5~0_combout\);

-- Location: LCCOMB_X22_Y4_N28
\inst|alu1|Mux3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux3~4_combout\ = (\inst|alu1|Mux10~0_combout\ & ((\inst|alu1|unidad_aritmetica|resta|s7|Cout~0_combout\) # (!\inst|alu1|Mux11~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|Mux10~0_combout\,
	datac => \inst|alu1|Mux11~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|resta|s7|Cout~0_combout\,
	combout => \inst|alu1|Mux3~4_combout\);

-- Location: LCCOMB_X21_Y7_N2
\inst|alu1|unidad_aritmetica|suma|s3|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|s3|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|suma|s2|Cout~0_combout\ & ((\inst|MREG\(7)) # (\inst|MREG\(17)))) # (!\inst|alu1|unidad_aritmetica|suma|s2|Cout~0_combout\ & (\inst|MREG\(7) & \inst|MREG\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|suma|s2|Cout~0_combout\,
	datac => \inst|MREG\(7),
	datad => \inst|MREG\(17),
	combout => \inst|alu1|unidad_aritmetica|suma|s3|Cout~0_combout\);

-- Location: LCCOMB_X21_Y7_N24
\inst|alu1|unidad_aritmetica|suma|s4|Suma\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|s4|Suma~combout\ = \inst|MREG\(18) $ (\inst|MREG\(8) $ (\inst|alu1|unidad_aritmetica|suma|s3|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|MREG\(18),
	datac => \inst|MREG\(8),
	datad => \inst|alu1|unidad_aritmetica|suma|s3|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|suma|s4|Suma~combout\);

-- Location: LCCOMB_X21_Y5_N28
\inst|alu1|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux5~1_combout\ = (\inst|alu1|Mux5~0_combout\ & (((!\inst|alu1|unidad_aritmetica|resta|s4|Suma~combout\)) # (!\inst|alu1|Mux3~4_combout\))) # (!\inst|alu1|Mux5~0_combout\ & (\inst|alu1|Mux3~4_combout\ & 
-- (\inst|alu1|unidad_aritmetica|suma|s4|Suma~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux5~0_combout\,
	datab => \inst|alu1|Mux3~4_combout\,
	datac => \inst|alu1|unidad_aritmetica|suma|s4|Suma~combout\,
	datad => \inst|alu1|unidad_aritmetica|resta|s4|Suma~combout\,
	combout => \inst|alu1|Mux5~1_combout\);

-- Location: LCCOMB_X21_Y5_N26
\inst|alu1|Mux5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux5~4_combout\ = (\inst|alu1|Mux3~8_combout\ & (((\inst|alu1|Mux5~1_combout\)))) # (!\inst|alu1|Mux3~8_combout\ & ((\inst|alu1|Mux5~3_combout\) # ((\inst|alu1|Mux5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux3~8_combout\,
	datab => \inst|alu1|Mux5~3_combout\,
	datac => \inst|alu1|Mux5~2_combout\,
	datad => \inst|alu1|Mux5~1_combout\,
	combout => \inst|alu1|Mux5~4_combout\);

-- Location: FF_X21_Y5_N15
\inst|registro[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|fec|salida~clkctrl_outclk\,
	asdata => \inst|alu1|Mux5~4_combout\,
	sload => VCC,
	ena => \inst|registro[1][7]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|registro[1][4]~q\);

-- Location: LCCOMB_X21_Y6_N14
\inst|Mux195~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux195~0_combout\ = (\inst|MREG[15]~22_combout\ & (\inst|MREG[15]~23_combout\)) # (!\inst|MREG[15]~22_combout\ & ((\inst|MREG[15]~23_combout\ & ((\inst|registro[3][4]~q\))) # (!\inst|MREG[15]~23_combout\ & (\inst|registro[4][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MREG[15]~22_combout\,
	datab => \inst|MREG[15]~23_combout\,
	datac => \inst|registro[4][4]~q\,
	datad => \inst|registro[3][4]~q\,
	combout => \inst|Mux195~0_combout\);

-- Location: LCCOMB_X19_Y6_N20
\inst|Mux195~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux195~1_combout\ = (\inst|Mux195~0_combout\ & ((\inst|registro[5][4]~q\) # ((!\inst|MREG[15]~22_combout\)))) # (!\inst|Mux195~0_combout\ & (((\inst|registro[2][4]~q\ & \inst|MREG[15]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux195~0_combout\,
	datab => \inst|registro[5][4]~q\,
	datac => \inst|registro[2][4]~q\,
	datad => \inst|MREG[15]~22_combout\,
	combout => \inst|Mux195~1_combout\);

-- Location: LCCOMB_X19_Y8_N16
\inst|Mux195~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux195~2_combout\ = (!\inst|MREG[8]~36_combout\ & ((\inst|MREG[15]~24_combout\ & (\inst|registro[1][4]~q\)) # (!\inst|MREG[15]~24_combout\ & ((\inst|Mux195~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|registro[1][4]~q\,
	datab => \inst|Mux195~1_combout\,
	datac => \inst|MREG[8]~36_combout\,
	datad => \inst|MREG[15]~24_combout\,
	combout => \inst|Mux195~2_combout\);

-- Location: FF_X19_Y8_N17
\inst|MREG[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|fec|salida~clkctrl_outclk\,
	d => \inst|Mux195~2_combout\,
	ena => \inst|MREG[8]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MREG\(18));

-- Location: LCCOMB_X23_Y5_N8
\inst|alu1|unidad_logica|aux[5]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|aux[5]~17_combout\ = (\inst|MREG\(19) & (!\inst|alu1|unidad_logica|aux[4]~16\ & VCC)) # (!\inst|MREG\(19) & (\inst|alu1|unidad_logica|aux[4]~16\ $ (GND)))
-- \inst|alu1|unidad_logica|aux[5]~18\ = CARRY((!\inst|MREG\(19) & !\inst|alu1|unidad_logica|aux[4]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|MREG\(19),
	datad => VCC,
	cin => \inst|alu1|unidad_logica|aux[4]~16\,
	combout => \inst|alu1|unidad_logica|aux[5]~17_combout\,
	cout => \inst|alu1|unidad_logica|aux[5]~18\);

-- Location: FF_X23_Y5_N9
\inst|alu1|unidad_logica|aux[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|fec|salida~clkctrl_outclk\,
	d => \inst|alu1|unidad_logica|aux[5]~17_combout\,
	ena => \inst|alu1|unidad_logica|Equal1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|unidad_logica|aux\(5));

-- Location: LCCOMB_X21_Y7_N26
\inst|alu1|unidad_logica|salida~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|salida~15_combout\ = (\inst|alu1|unidad_logica|salida~13_combout\ & ((\inst|alu1|unidad_logica|salida~14_combout\) # ((!\inst|alu1|Mux3~15_combout\)))) # (!\inst|alu1|unidad_logica|salida~13_combout\ & 
-- (((\inst|alu1|unidad_logica|aux\(5) & \inst|alu1|Mux3~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_logica|salida~13_combout\,
	datab => \inst|alu1|unidad_logica|salida~14_combout\,
	datac => \inst|alu1|unidad_logica|aux\(5),
	datad => \inst|alu1|Mux3~15_combout\,
	combout => \inst|alu1|unidad_logica|salida~15_combout\);

-- Location: FF_X21_Y7_N27
\inst|alu1|unidad_logica|salida[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|fec|salida~clkctrl_outclk\,
	d => \inst|alu1|unidad_logica|salida~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|unidad_logica|salida\(5));

-- Location: LCCOMB_X22_Y3_N30
\inst|alu1|Mux4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux4~2_combout\ = (\inst|alu1|unidad_logica|salida\(5) & (\inst|MREG\(2) $ (((\inst|MREG\(0)) # (\inst|MREG\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MREG\(0),
	datab => \inst|MREG\(1),
	datac => \inst|MREG\(2),
	datad => \inst|alu1|unidad_logica|salida\(5),
	combout => \inst|alu1|Mux4~2_combout\);

-- Location: FF_X25_Y5_N23
\inst|alu1|barrel_shifters|aux[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|fec|salida~clkctrl_outclk\,
	asdata => \inst|MREG\(18),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|barrel_shifters|aux\(5));

-- Location: FF_X25_Y5_N1
\inst|alu1|barrel_shifters|salShifters[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|fec|salida~clkctrl_outclk\,
	asdata => \inst|alu1|barrel_shifters|aux\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|barrel_shifters|salShifters\(5));

-- Location: LCCOMB_X25_Y5_N0
\inst|alu1|Mux4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux4~3_combout\ = (\inst|MREG\(3)) # ((\inst|MREG\(2) & (\inst|alu1|barrel_shifters|salShifters\(5) & !\inst|alu1|Mux3~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MREG\(3),
	datab => \inst|MREG\(2),
	datac => \inst|alu1|barrel_shifters|salShifters\(5),
	datad => \inst|alu1|Mux3~7_combout\,
	combout => \inst|alu1|Mux4~3_combout\);

-- Location: LCCOMB_X21_Y7_N20
\inst|alu1|unidad_aritmetica|suma|s4|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|s4|Cout~0_combout\ = (\inst|MREG\(18) & ((\inst|MREG\(8)) # (\inst|alu1|unidad_aritmetica|suma|s3|Cout~0_combout\))) # (!\inst|MREG\(18) & (\inst|MREG\(8) & \inst|alu1|unidad_aritmetica|suma|s3|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|MREG\(18),
	datac => \inst|MREG\(8),
	datad => \inst|alu1|unidad_aritmetica|suma|s3|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|suma|s4|Cout~0_combout\);

-- Location: LCCOMB_X21_Y7_N0
\inst|alu1|unidad_aritmetica|suma|s5|Suma\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|s5|Suma~combout\ = \inst|MREG\(19) $ (\inst|MREG\(9) $ (\inst|alu1|unidad_aritmetica|suma|s4|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|MREG\(19),
	datac => \inst|MREG\(9),
	datad => \inst|alu1|unidad_aritmetica|suma|s4|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|suma|s5|Suma~combout\);

-- Location: LCCOMB_X21_Y7_N8
\inst|alu1|unidad_aritmetica|resta|s5|Suma\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|resta|s5|Suma~combout\ = \inst|MREG\(9) $ (\inst|alu1|unidad_aritmetica|resta|s4|Cout~0_combout\ $ (\inst|MREG\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|MREG\(9),
	datac => \inst|alu1|unidad_aritmetica|resta|s4|Cout~0_combout\,
	datad => \inst|MREG\(19),
	combout => \inst|alu1|unidad_aritmetica|resta|s5|Suma~combout\);

-- Location: LCCOMB_X21_Y7_N18
\inst|alu1|unidad_aritmetica|mult|multi4|s5|Suma\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi4|s5|Suma~combout\ = \inst|alu1|unidad_aritmetica|mult|multi3|s5|Suma~combout\ $ (\inst|alu1|unidad_aritmetica|mult|multi4|s4|Cout~0_combout\ $ (((\inst|MREG\(8) & \inst|MREG\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MREG\(8),
	datab => \inst|MREG\(15),
	datac => \inst|alu1|unidad_aritmetica|mult|multi3|s5|Suma~combout\,
	datad => \inst|alu1|unidad_aritmetica|mult|multi4|s4|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi4|s5|Suma~combout\);

-- Location: LCCOMB_X21_Y7_N28
\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~3_combout\ = (\inst|alu1|Mux10~0_combout\ & (\inst|alu1|unidad_aritmetica|resta|s5|Suma~combout\)) # (!\inst|alu1|Mux10~0_combout\ & ((!\inst|alu1|unidad_aritmetica|mult|multi4|s5|Suma~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux10~0_combout\,
	datac => \inst|alu1|unidad_aritmetica|resta|s5|Suma~combout\,
	datad => \inst|alu1|unidad_aritmetica|mult|multi4|s5|Suma~combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~3_combout\);

-- Location: LCCOMB_X22_Y5_N12
\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~19_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~3_combout\ & (!\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~18\)) # 
-- (!\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~3_combout\ & ((\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~18\) # (GND)))
-- \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~20\ = CARRY((!\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~18\) # (!\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~3_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~18\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~19_combout\,
	cout => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~20\);

-- Location: LCCOMB_X21_Y5_N10
\inst|alu1|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux4~0_combout\ = (\inst|alu1|Mux3~5_combout\ & ((\inst|alu1|Mux3~6_combout\ & ((\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~19_combout\))) # (!\inst|alu1|Mux3~6_combout\ & 
-- (\inst|alu1|unidad_aritmetica|mult|multi4|s5|Suma~combout\)))) # (!\inst|alu1|Mux3~5_combout\ & (((\inst|alu1|Mux3~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|multi4|s5|Suma~combout\,
	datab => \inst|alu1|Mux3~5_combout\,
	datac => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~19_combout\,
	datad => \inst|alu1|Mux3~6_combout\,
	combout => \inst|alu1|Mux4~0_combout\);

-- Location: LCCOMB_X21_Y5_N8
\inst|alu1|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux4~1_combout\ = (\inst|alu1|Mux3~4_combout\ & ((\inst|alu1|Mux4~0_combout\ & ((!\inst|alu1|unidad_aritmetica|resta|s5|Suma~combout\))) # (!\inst|alu1|Mux4~0_combout\ & (\inst|alu1|unidad_aritmetica|suma|s5|Suma~combout\)))) # 
-- (!\inst|alu1|Mux3~4_combout\ & (((\inst|alu1|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|suma|s5|Suma~combout\,
	datab => \inst|alu1|unidad_aritmetica|resta|s5|Suma~combout\,
	datac => \inst|alu1|Mux3~4_combout\,
	datad => \inst|alu1|Mux4~0_combout\,
	combout => \inst|alu1|Mux4~1_combout\);

-- Location: LCCOMB_X25_Y5_N14
\inst|alu1|Mux4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux4~4_combout\ = (\inst|alu1|Mux3~8_combout\ & (((\inst|alu1|Mux4~1_combout\)))) # (!\inst|alu1|Mux3~8_combout\ & ((\inst|alu1|Mux4~2_combout\) # ((\inst|alu1|Mux4~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux4~2_combout\,
	datab => \inst|alu1|Mux4~3_combout\,
	datac => \inst|alu1|Mux3~8_combout\,
	datad => \inst|alu1|Mux4~1_combout\,
	combout => \inst|alu1|Mux4~4_combout\);

-- Location: FF_X19_Y5_N3
\inst|registro[4][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|fec|salida~clkctrl_outclk\,
	asdata => \inst|alu1|Mux4~4_combout\,
	sload => VCC,
	ena => \inst|registro[4][6]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|registro[4][5]~q\);

-- Location: LCCOMB_X19_Y6_N14
\inst|Mux194~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux194~0_combout\ = (\ec[1]~input_o\ & (((\inst|Mux18~1_combout\) # (\inst|MREG[22]~14_combout\)))) # (!\ec[1]~input_o\ & (\inst|registro[4][5]~q\ & ((!\inst|MREG[22]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ec[1]~input_o\,
	datab => \inst|registro[4][5]~q\,
	datac => \inst|Mux18~1_combout\,
	datad => \inst|MREG[22]~14_combout\,
	combout => \inst|Mux194~0_combout\);

-- Location: LCCOMB_X25_Y6_N18
\inst|Mux194~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux194~1_combout\ = (\inst|Mux194~0_combout\ & (((\inst|registro[3][5]~q\)) # (!\inst|MREG[22]~14_combout\))) # (!\inst|Mux194~0_combout\ & (\inst|MREG[22]~14_combout\ & ((\inst|Mux18~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux194~0_combout\,
	datab => \inst|MREG[22]~14_combout\,
	datac => \inst|registro[3][5]~q\,
	datad => \inst|Mux18~0_combout\,
	combout => \inst|Mux194~1_combout\);

-- Location: LCCOMB_X24_Y5_N0
\inst|MREG[19]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|MREG[19]~5_combout\ = (\inst|MREG[22]~15_combout\ & ((\inst|registro[2][5]~q\))) # (!\inst|MREG[22]~15_combout\ & (\inst|Mux194~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MREG[22]~15_combout\,
	datab => \inst|Mux194~1_combout\,
	datad => \inst|registro[2][5]~q\,
	combout => \inst|MREG[19]~5_combout\);

-- Location: FF_X25_Y5_N15
\inst|registro[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|fec|salida~clkctrl_outclk\,
	d => \inst|alu1|Mux4~4_combout\,
	ena => \inst|registro[1][7]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|registro[1][5]~q\);

-- Location: FF_X24_Y5_N1
\inst|MREG[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|fec|salida~clkctrl_outclk\,
	d => \inst|MREG[19]~5_combout\,
	asdata => \inst|registro[1][5]~q\,
	sclr => \inst|MREG[9]~35_combout\,
	sload => \inst|MREG[22]~17_combout\,
	ena => \inst|MREG[9]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MREG\(19));

-- Location: LCCOMB_X23_Y5_N10
\inst|alu1|unidad_logica|aux[6]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|aux[6]~19_combout\ = (\inst|MREG\(20) & ((\inst|alu1|unidad_logica|aux[5]~18\) # (GND))) # (!\inst|MREG\(20) & (!\inst|alu1|unidad_logica|aux[5]~18\))
-- \inst|alu1|unidad_logica|aux[6]~20\ = CARRY((\inst|MREG\(20)) # (!\inst|alu1|unidad_logica|aux[5]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MREG\(20),
	datad => VCC,
	cin => \inst|alu1|unidad_logica|aux[5]~18\,
	combout => \inst|alu1|unidad_logica|aux[6]~19_combout\,
	cout => \inst|alu1|unidad_logica|aux[6]~20\);

-- Location: FF_X23_Y5_N11
\inst|alu1|unidad_logica|aux[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|fec|salida~clkctrl_outclk\,
	d => \inst|alu1|unidad_logica|aux[6]~19_combout\,
	ena => \inst|alu1|unidad_logica|Equal1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|unidad_logica|aux\(6));

-- Location: LCCOMB_X22_Y4_N6
\inst|alu1|unidad_logica|salida~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|salida~10_combout\ = (\inst|MREG\(20) & (((\inst|alu1|Mux10~0_combout\)))) # (!\inst|MREG\(20) & (((\inst|MREG\(10) & \inst|alu1|Mux10~0_combout\)) # (!\inst|alu1|Mux11~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MREG\(20),
	datab => \inst|MREG\(10),
	datac => \inst|alu1|Mux11~0_combout\,
	datad => \inst|alu1|Mux10~0_combout\,
	combout => \inst|alu1|unidad_logica|salida~10_combout\);

-- Location: LCCOMB_X22_Y4_N30
\inst|alu1|unidad_logica|salida~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|salida~11_combout\ = (\inst|MREG\(10) & \inst|MREG\(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|MREG\(10),
	datad => \inst|MREG\(20),
	combout => \inst|alu1|unidad_logica|salida~11_combout\);

-- Location: LCCOMB_X22_Y4_N4
\inst|alu1|unidad_logica|salida~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|salida~12_combout\ = (\inst|alu1|unidad_logica|salida~10_combout\ & (((\inst|alu1|unidad_logica|salida~11_combout\) # (!\inst|alu1|Mux3~15_combout\)))) # (!\inst|alu1|unidad_logica|salida~10_combout\ & 
-- (\inst|alu1|unidad_logica|aux\(6) & ((\inst|alu1|Mux3~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_logica|aux\(6),
	datab => \inst|alu1|unidad_logica|salida~10_combout\,
	datac => \inst|alu1|unidad_logica|salida~11_combout\,
	datad => \inst|alu1|Mux3~15_combout\,
	combout => \inst|alu1|unidad_logica|salida~12_combout\);

-- Location: FF_X22_Y4_N5
\inst|alu1|unidad_logica|salida[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|fec|salida~clkctrl_outclk\,
	d => \inst|alu1|unidad_logica|salida~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|unidad_logica|salida\(6));

-- Location: LCCOMB_X22_Y4_N16
\inst|alu1|Mux3~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux3~11_combout\ = (\inst|alu1|unidad_logica|salida\(6) & (\inst|MREG\(2) $ (((\inst|MREG\(0)) # (\inst|MREG\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MREG\(2),
	datab => \inst|MREG\(0),
	datac => \inst|alu1|unidad_logica|salida\(6),
	datad => \inst|MREG\(1),
	combout => \inst|alu1|Mux3~11_combout\);

-- Location: FF_X25_Y5_N9
\inst|alu1|barrel_shifters|aux[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|fec|salida~clkctrl_outclk\,
	asdata => \inst|MREG\(19),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|barrel_shifters|aux\(6));

-- Location: FF_X25_Y5_N3
\inst|alu1|barrel_shifters|salShifters[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|fec|salida~clkctrl_outclk\,
	asdata => \inst|alu1|barrel_shifters|aux\(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|barrel_shifters|salShifters\(6));

-- Location: LCCOMB_X25_Y5_N2
\inst|alu1|Mux3~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux3~12_combout\ = (\inst|MREG\(3)) # ((\inst|MREG\(2) & (\inst|alu1|barrel_shifters|salShifters\(6) & !\inst|alu1|Mux3~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MREG\(3),
	datab => \inst|MREG\(2),
	datac => \inst|alu1|barrel_shifters|salShifters\(6),
	datad => \inst|alu1|Mux3~7_combout\,
	combout => \inst|alu1|Mux3~12_combout\);

-- Location: LCCOMB_X23_Y5_N26
\inst|alu1|unidad_aritmetica|resta|s6|Suma\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|resta|s6|Suma~combout\ = \inst|MREG\(10) $ (\inst|alu1|unidad_aritmetica|resta|s5|Cout~0_combout\ $ (\inst|MREG\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|MREG\(10),
	datac => \inst|alu1|unidad_aritmetica|resta|s5|Cout~0_combout\,
	datad => \inst|MREG\(20),
	combout => \inst|alu1|unidad_aritmetica|resta|s6|Suma~combout\);

-- Location: LCCOMB_X21_Y7_N14
\inst|alu1|unidad_aritmetica|suma|s5|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|s5|Cout~0_combout\ = (\inst|MREG\(19) & ((\inst|MREG\(9)) # (\inst|alu1|unidad_aritmetica|suma|s4|Cout~0_combout\))) # (!\inst|MREG\(19) & (\inst|MREG\(9) & \inst|alu1|unidad_aritmetica|suma|s4|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|MREG\(19),
	datac => \inst|MREG\(9),
	datad => \inst|alu1|unidad_aritmetica|suma|s4|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|suma|s5|Cout~0_combout\);

-- Location: LCCOMB_X22_Y4_N0
\inst|alu1|unidad_aritmetica|suma|s6|Suma\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|s6|Suma~combout\ = \inst|MREG\(10) $ (\inst|MREG\(20) $ (\inst|alu1|unidad_aritmetica|suma|s5|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|MREG\(10),
	datac => \inst|MREG\(20),
	datad => \inst|alu1|unidad_aritmetica|suma|s5|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|suma|s6|Suma~combout\);

-- Location: LCCOMB_X23_Y5_N20
\inst|alu1|unidad_aritmetica|mult|multi4|s6|Suma\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi4|s6|Suma~combout\ = \inst|alu1|unidad_aritmetica|mult|multi4|s5|Cout~0_combout\ $ (\inst|alu1|unidad_aritmetica|mult|multi3|s6|Suma~combout\ $ (((\inst|MREG\(16) & \inst|MREG\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MREG\(16),
	datab => \inst|MREG\(8),
	datac => \inst|alu1|unidad_aritmetica|mult|multi4|s5|Cout~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|mult|multi3|s6|Suma~combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi4|s6|Suma~combout\);

-- Location: LCCOMB_X23_Y5_N22
\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~2_combout\ = (\inst|alu1|Mux10~0_combout\ & (\inst|alu1|unidad_aritmetica|resta|s6|Suma~combout\)) # (!\inst|alu1|Mux10~0_combout\ & ((!\inst|alu1|unidad_aritmetica|mult|multi4|s6|Suma~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|Mux10~0_combout\,
	datac => \inst|alu1|unidad_aritmetica|resta|s6|Suma~combout\,
	datad => \inst|alu1|unidad_aritmetica|mult|multi4|s6|Suma~combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~2_combout\);

-- Location: LCCOMB_X22_Y5_N14
\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~21_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~2_combout\ & (\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~20\ $ (GND))) # 
-- (!\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~2_combout\ & (!\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~20\ & VCC))
-- \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~22\ = CARRY((\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~2_combout\ & !\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~2_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~20\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~21_combout\,
	cout => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~22\);

-- Location: LCCOMB_X21_Y5_N24
\inst|alu1|Mux3~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux3~9_combout\ = (\inst|alu1|Mux3~6_combout\ & (((\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~21_combout\) # (!\inst|alu1|Mux3~5_combout\)))) # (!\inst|alu1|Mux3~6_combout\ & 
-- (\inst|alu1|unidad_aritmetica|mult|multi4|s6|Suma~combout\ & (\inst|alu1|Mux3~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|multi4|s6|Suma~combout\,
	datab => \inst|alu1|Mux3~6_combout\,
	datac => \inst|alu1|Mux3~5_combout\,
	datad => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~21_combout\,
	combout => \inst|alu1|Mux3~9_combout\);

-- Location: LCCOMB_X21_Y5_N18
\inst|alu1|Mux3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux3~10_combout\ = (\inst|alu1|Mux3~4_combout\ & ((\inst|alu1|Mux3~9_combout\ & (!\inst|alu1|unidad_aritmetica|resta|s6|Suma~combout\)) # (!\inst|alu1|Mux3~9_combout\ & ((\inst|alu1|unidad_aritmetica|suma|s6|Suma~combout\))))) # 
-- (!\inst|alu1|Mux3~4_combout\ & (((\inst|alu1|Mux3~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|resta|s6|Suma~combout\,
	datab => \inst|alu1|unidad_aritmetica|suma|s6|Suma~combout\,
	datac => \inst|alu1|Mux3~4_combout\,
	datad => \inst|alu1|Mux3~9_combout\,
	combout => \inst|alu1|Mux3~10_combout\);

-- Location: LCCOMB_X21_Y5_N0
\inst|alu1|Mux3~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux3~13_combout\ = (\inst|alu1|Mux3~8_combout\ & (((\inst|alu1|Mux3~10_combout\)))) # (!\inst|alu1|Mux3~8_combout\ & ((\inst|alu1|Mux3~11_combout\) # ((\inst|alu1|Mux3~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux3~8_combout\,
	datab => \inst|alu1|Mux3~11_combout\,
	datac => \inst|alu1|Mux3~12_combout\,
	datad => \inst|alu1|Mux3~10_combout\,
	combout => \inst|alu1|Mux3~13_combout\);

-- Location: FF_X25_Y6_N21
\inst|registro[2][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|fec|salida~clkctrl_outclk\,
	asdata => \inst|alu1|Mux3~13_combout\,
	sload => VCC,
	ena => \inst|registro[2][3]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|registro[2][6]~q\);

-- Location: LCCOMB_X19_Y5_N0
\inst|Mux193~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux193~0_combout\ = (\ec[1]~input_o\ & ((\inst|Mux17~1_combout\) # ((\inst|MREG[22]~14_combout\)))) # (!\ec[1]~input_o\ & (((\inst|registro[4][6]~q\ & !\inst|MREG[22]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ec[1]~input_o\,
	datab => \inst|Mux17~1_combout\,
	datac => \inst|registro[4][6]~q\,
	datad => \inst|MREG[22]~14_combout\,
	combout => \inst|Mux193~0_combout\);

-- Location: LCCOMB_X25_Y6_N22
\inst|Mux193~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux193~1_combout\ = (\inst|Mux193~0_combout\ & (((\inst|registro[3][6]~q\)) # (!\inst|MREG[22]~14_combout\))) # (!\inst|Mux193~0_combout\ & (\inst|MREG[22]~14_combout\ & ((\inst|Mux17~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux193~0_combout\,
	datab => \inst|MREG[22]~14_combout\,
	datac => \inst|registro[3][6]~q\,
	datad => \inst|Mux17~0_combout\,
	combout => \inst|Mux193~1_combout\);

-- Location: LCCOMB_X24_Y5_N2
\inst|MREG[20]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|MREG[20]~4_combout\ = (\inst|MREG[22]~15_combout\ & (\inst|registro[2][6]~q\)) # (!\inst|MREG[22]~15_combout\ & ((\inst|Mux193~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MREG[22]~15_combout\,
	datab => \inst|registro[2][6]~q\,
	datad => \inst|Mux193~1_combout\,
	combout => \inst|MREG[20]~4_combout\);

-- Location: FF_X21_Y5_N1
\inst|registro[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|fec|salida~clkctrl_outclk\,
	d => \inst|alu1|Mux3~13_combout\,
	ena => \inst|registro[1][7]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|registro[1][6]~q\);

-- Location: FF_X24_Y5_N3
\inst|MREG[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|fec|salida~clkctrl_outclk\,
	d => \inst|MREG[20]~4_combout\,
	asdata => \inst|registro[1][6]~q\,
	sclr => \inst|MREG[9]~35_combout\,
	sload => \inst|MREG[22]~17_combout\,
	ena => \inst|MREG[9]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MREG\(20));

-- Location: LCCOMB_X23_Y5_N12
\inst|alu1|unidad_logica|aux[7]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|aux[7]~21_combout\ = (\inst|MREG\(21) & (!\inst|alu1|unidad_logica|aux[6]~20\ & VCC)) # (!\inst|MREG\(21) & (\inst|alu1|unidad_logica|aux[6]~20\ $ (GND)))
-- \inst|alu1|unidad_logica|aux[7]~22\ = CARRY((!\inst|MREG\(21) & !\inst|alu1|unidad_logica|aux[6]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MREG\(21),
	datad => VCC,
	cin => \inst|alu1|unidad_logica|aux[6]~20\,
	combout => \inst|alu1|unidad_logica|aux[7]~21_combout\,
	cout => \inst|alu1|unidad_logica|aux[7]~22\);

-- Location: FF_X23_Y5_N13
\inst|alu1|unidad_logica|aux[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|fec|salida~clkctrl_outclk\,
	d => \inst|alu1|unidad_logica|aux[7]~21_combout\,
	ena => \inst|alu1|unidad_logica|Equal1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|unidad_logica|aux\(7));

-- Location: LCCOMB_X22_Y4_N20
\inst|alu1|unidad_logica|salida~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|salida~7_combout\ = (\inst|MREG\(21) & (\inst|alu1|Mux10~0_combout\)) # (!\inst|MREG\(21) & (((\inst|alu1|Mux10~0_combout\ & \inst|MREG\(11))) # (!\inst|alu1|Mux11~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux10~0_combout\,
	datab => \inst|MREG\(11),
	datac => \inst|alu1|Mux11~0_combout\,
	datad => \inst|MREG\(21),
	combout => \inst|alu1|unidad_logica|salida~7_combout\);

-- Location: LCCOMB_X22_Y4_N14
\inst|alu1|unidad_logica|salida~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|salida~8_combout\ = (\inst|MREG\(11) & \inst|MREG\(21))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MREG\(11),
	datad => \inst|MREG\(21),
	combout => \inst|alu1|unidad_logica|salida~8_combout\);

-- Location: LCCOMB_X22_Y4_N12
\inst|alu1|unidad_logica|salida~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|salida~9_combout\ = (\inst|alu1|unidad_logica|salida~7_combout\ & (((\inst|alu1|unidad_logica|salida~8_combout\) # (!\inst|alu1|Mux3~15_combout\)))) # (!\inst|alu1|unidad_logica|salida~7_combout\ & 
-- (\inst|alu1|unidad_logica|aux\(7) & ((\inst|alu1|Mux3~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_logica|aux\(7),
	datab => \inst|alu1|unidad_logica|salida~7_combout\,
	datac => \inst|alu1|unidad_logica|salida~8_combout\,
	datad => \inst|alu1|Mux3~15_combout\,
	combout => \inst|alu1|unidad_logica|salida~9_combout\);

-- Location: FF_X22_Y4_N13
\inst|alu1|unidad_logica|salida[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|fec|salida~clkctrl_outclk\,
	d => \inst|alu1|unidad_logica|salida~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|unidad_logica|salida\(7));

-- Location: FF_X22_Y4_N15
\inst|alu1|barrel_shifters|aux[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|fec|salida~clkctrl_outclk\,
	asdata => \inst|MREG\(20),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|barrel_shifters|aux\(7));

-- Location: FF_X22_Y4_N27
\inst|alu1|barrel_shifters|salShifters[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|fec|salida~clkctrl_outclk\,
	asdata => \inst|alu1|barrel_shifters|aux\(7),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|barrel_shifters|salShifters\(7));

-- Location: LCCOMB_X22_Y4_N26
\inst|alu1|Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux2~2_combout\ = (\inst|alu1|barrel_shifters|salShifters\(7) & (\inst|MREG\(2) & ((\inst|MREG\(1)) # (\inst|MREG\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MREG\(1),
	datab => \inst|MREG\(0),
	datac => \inst|alu1|barrel_shifters|salShifters\(7),
	datad => \inst|MREG\(2),
	combout => \inst|alu1|Mux2~2_combout\);

-- Location: LCCOMB_X21_Y4_N0
\inst|alu1|Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux2~3_combout\ = (\inst|MREG\(3)) # ((\inst|alu1|Mux2~2_combout\) # ((\inst|alu1|unidad_logica|salida\(7) & \inst|alu1|Mux3~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MREG\(3),
	datab => \inst|alu1|unidad_logica|salida\(7),
	datac => \inst|alu1|Mux3~7_combout\,
	datad => \inst|alu1|Mux2~2_combout\,
	combout => \inst|alu1|Mux2~3_combout\);

-- Location: LCCOMB_X21_Y5_N12
\inst|alu1|unidad_aritmetica|resta|s7|Suma\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|resta|s7|Suma~combout\ = \inst|MREG\(21) $ (\inst|MREG\(11) $ (\inst|alu1|unidad_aritmetica|resta|s6|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|MREG\(21),
	datac => \inst|MREG\(11),
	datad => \inst|alu1|unidad_aritmetica|resta|s6|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|resta|s7|Suma~combout\);

-- Location: LCCOMB_X22_Y4_N10
\inst|alu1|unidad_aritmetica|suma|s6|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|s6|Cout~0_combout\ = (\inst|MREG\(10) & ((\inst|MREG\(20)) # (\inst|alu1|unidad_aritmetica|suma|s5|Cout~0_combout\))) # (!\inst|MREG\(10) & (\inst|MREG\(20) & \inst|alu1|unidad_aritmetica|suma|s5|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|MREG\(10),
	datac => \inst|MREG\(20),
	datad => \inst|alu1|unidad_aritmetica|suma|s5|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|suma|s6|Cout~0_combout\);

-- Location: LCCOMB_X22_Y4_N24
\inst|alu1|unidad_aritmetica|suma|s7|Suma\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|s7|Suma~combout\ = \inst|MREG\(21) $ (\inst|MREG\(11) $ (\inst|alu1|unidad_aritmetica|suma|s6|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|MREG\(21),
	datac => \inst|MREG\(11),
	datad => \inst|alu1|unidad_aritmetica|suma|s6|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|suma|s7|Suma~combout\);

-- Location: LCCOMB_X21_Y5_N30
\inst|alu1|unidad_aritmetica|mult|multi4|s7|Suma\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi4|s7|Suma~combout\ = \inst|alu1|unidad_aritmetica|mult|multi3|s7|Suma~0_combout\ $ (\inst|alu1|unidad_aritmetica|mult|multi4|s6|Cout~0_combout\ $ (((\inst|MREG\(17) & \inst|MREG\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MREG\(17),
	datab => \inst|MREG\(8),
	datac => \inst|alu1|unidad_aritmetica|mult|multi3|s7|Suma~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|mult|multi4|s6|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi4|s7|Suma~combout\);

-- Location: LCCOMB_X21_Y5_N4
\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~1_combout\ = (\inst|alu1|Mux10~0_combout\ & ((\inst|alu1|unidad_aritmetica|resta|s7|Suma~combout\))) # (!\inst|alu1|Mux10~0_combout\ & (!\inst|alu1|unidad_aritmetica|mult|multi4|s7|Suma~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux10~0_combout\,
	datac => \inst|alu1|unidad_aritmetica|mult|multi4|s7|Suma~combout\,
	datad => \inst|alu1|unidad_aritmetica|resta|s7|Suma~combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~1_combout\);

-- Location: LCCOMB_X22_Y5_N16
\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~23_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~1_combout\ & (!\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~22\)) # 
-- (!\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~1_combout\ & ((\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~22\) # (GND)))
-- \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~24\ = CARRY((!\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~22\) # (!\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~1_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~22\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~23_combout\,
	cout => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~24\);

-- Location: LCCOMB_X21_Y5_N2
\inst|alu1|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux2~0_combout\ = (\inst|alu1|Mux3~6_combout\ & (((\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~23_combout\) # (!\inst|alu1|Mux3~5_combout\)))) # (!\inst|alu1|Mux3~6_combout\ & 
-- (\inst|alu1|unidad_aritmetica|mult|multi4|s7|Suma~combout\ & (\inst|alu1|Mux3~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|multi4|s7|Suma~combout\,
	datab => \inst|alu1|Mux3~6_combout\,
	datac => \inst|alu1|Mux3~5_combout\,
	datad => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~23_combout\,
	combout => \inst|alu1|Mux2~0_combout\);

-- Location: LCCOMB_X21_Y5_N16
\inst|alu1|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux2~1_combout\ = (\inst|alu1|Mux3~4_combout\ & ((\inst|alu1|Mux2~0_combout\ & (!\inst|alu1|unidad_aritmetica|resta|s7|Suma~combout\)) # (!\inst|alu1|Mux2~0_combout\ & ((\inst|alu1|unidad_aritmetica|suma|s7|Suma~combout\))))) # 
-- (!\inst|alu1|Mux3~4_combout\ & (((\inst|alu1|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|resta|s7|Suma~combout\,
	datab => \inst|alu1|Mux3~4_combout\,
	datac => \inst|alu1|unidad_aritmetica|suma|s7|Suma~combout\,
	datad => \inst|alu1|Mux2~0_combout\,
	combout => \inst|alu1|Mux2~1_combout\);

-- Location: LCCOMB_X21_Y5_N22
\inst|alu1|Mux2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux2~4_combout\ = (\inst|alu1|Mux3~8_combout\ & ((\inst|alu1|Mux2~1_combout\))) # (!\inst|alu1|Mux3~8_combout\ & (\inst|alu1|Mux2~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux3~8_combout\,
	datab => \inst|alu1|Mux2~3_combout\,
	datad => \inst|alu1|Mux2~1_combout\,
	combout => \inst|alu1|Mux2~4_combout\);

-- Location: FF_X19_Y5_N23
\inst|registro[5][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|fec|salida~clkctrl_outclk\,
	asdata => \inst|alu1|Mux2~4_combout\,
	sload => VCC,
	ena => \inst|registro[5][6]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|registro[5][7]~q\);

-- Location: LCCOMB_X19_Y5_N22
\inst|Mux16~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux16~1_combout\ = (\inst|registro[5][7]~q\ & \inst|addr\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|registro[5][7]~q\,
	datad => \inst|addr\(3),
	combout => \inst|Mux16~1_combout\);

-- Location: LCCOMB_X19_Y5_N16
\inst|Mux192~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux192~0_combout\ = (\ec[1]~input_o\ & ((\inst|Mux16~1_combout\) # ((\inst|MREG[22]~14_combout\)))) # (!\ec[1]~input_o\ & (((\inst|registro[4][7]~q\ & !\inst|MREG[22]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux16~1_combout\,
	datab => \ec[1]~input_o\,
	datac => \inst|registro[4][7]~q\,
	datad => \inst|MREG[22]~14_combout\,
	combout => \inst|Mux192~0_combout\);

-- Location: LCCOMB_X25_Y6_N30
\inst|Mux192~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux192~1_combout\ = (\inst|Mux192~0_combout\ & (((\inst|registro[3][7]~q\)) # (!\inst|MREG[22]~14_combout\))) # (!\inst|Mux192~0_combout\ & (\inst|MREG[22]~14_combout\ & ((\inst|Mux16~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux192~0_combout\,
	datab => \inst|MREG[22]~14_combout\,
	datac => \inst|registro[3][7]~q\,
	datad => \inst|Mux16~0_combout\,
	combout => \inst|Mux192~1_combout\);

-- Location: LCCOMB_X24_Y5_N8
\inst|MREG[21]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|MREG[21]~3_combout\ = (\inst|MREG[22]~15_combout\ & ((\inst|registro[2][7]~q\))) # (!\inst|MREG[22]~15_combout\ & (\inst|Mux192~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MREG[22]~15_combout\,
	datab => \inst|Mux192~1_combout\,
	datad => \inst|registro[2][7]~q\,
	combout => \inst|MREG[21]~3_combout\);

-- Location: FF_X21_Y5_N23
\inst|registro[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|fec|salida~clkctrl_outclk\,
	d => \inst|alu1|Mux2~4_combout\,
	ena => \inst|registro[1][7]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|registro[1][7]~q\);

-- Location: FF_X24_Y5_N9
\inst|MREG[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|fec|salida~clkctrl_outclk\,
	d => \inst|MREG[21]~3_combout\,
	asdata => \inst|registro[1][7]~q\,
	sclr => \inst|MREG[9]~35_combout\,
	sload => \inst|MREG[22]~17_combout\,
	ena => \inst|MREG[9]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MREG\(21));

-- Location: LCCOMB_X23_Y5_N14
\inst|alu1|unidad_logica|aux[8]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|aux[8]~23_combout\ = (\inst|MREG\(22) & ((\inst|alu1|unidad_logica|aux[7]~22\) # (GND))) # (!\inst|MREG\(22) & (!\inst|alu1|unidad_logica|aux[7]~22\))
-- \inst|alu1|unidad_logica|aux[8]~24\ = CARRY((\inst|MREG\(22)) # (!\inst|alu1|unidad_logica|aux[7]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|MREG\(22),
	datad => VCC,
	cin => \inst|alu1|unidad_logica|aux[7]~22\,
	combout => \inst|alu1|unidad_logica|aux[8]~23_combout\,
	cout => \inst|alu1|unidad_logica|aux[8]~24\);

-- Location: FF_X23_Y5_N15
\inst|alu1|unidad_logica|aux[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|fec|salida~clkctrl_outclk\,
	d => \inst|alu1|unidad_logica|aux[8]~23_combout\,
	ena => \inst|alu1|unidad_logica|Equal1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|unidad_logica|aux\(8));

-- Location: LCCOMB_X23_Y9_N28
\inst|alu1|unidad_logica|salida~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|salida~5_combout\ = (\inst|MREG\(12) & \inst|MREG\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|MREG\(12),
	datad => \inst|MREG\(22),
	combout => \inst|alu1|unidad_logica|salida~5_combout\);

-- Location: LCCOMB_X23_Y5_N24
\inst|alu1|unidad_logica|salida~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|salida~6_combout\ = (\inst|alu1|Mux3~15_combout\ & ((\inst|alu1|unidad_logica|salida~4_combout\ & ((\inst|alu1|unidad_logica|salida~5_combout\))) # (!\inst|alu1|unidad_logica|salida~4_combout\ & 
-- (\inst|alu1|unidad_logica|aux\(8))))) # (!\inst|alu1|Mux3~15_combout\ & (\inst|alu1|unidad_logica|salida~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux3~15_combout\,
	datab => \inst|alu1|unidad_logica|salida~4_combout\,
	datac => \inst|alu1|unidad_logica|aux\(8),
	datad => \inst|alu1|unidad_logica|salida~5_combout\,
	combout => \inst|alu1|unidad_logica|salida~6_combout\);

-- Location: FF_X23_Y5_N25
\inst|alu1|unidad_logica|salida[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|fec|salida~clkctrl_outclk\,
	d => \inst|alu1|unidad_logica|salida~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|unidad_logica|salida\(8));

-- Location: LCCOMB_X25_Y5_N4
\inst|alu1|barrel_shifters|aux[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|barrel_shifters|aux[8]~feeder_combout\ = \inst|MREG\(21)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|MREG\(21),
	combout => \inst|alu1|barrel_shifters|aux[8]~feeder_combout\);

-- Location: FF_X25_Y5_N5
\inst|alu1|barrel_shifters|aux[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|fec|salida~clkctrl_outclk\,
	d => \inst|alu1|barrel_shifters|aux[8]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|barrel_shifters|aux\(8));

-- Location: FF_X25_Y5_N13
\inst|alu1|barrel_shifters|salShifters[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|fec|salida~clkctrl_outclk\,
	asdata => \inst|alu1|barrel_shifters|aux\(8),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|barrel_shifters|salShifters\(8));

-- Location: LCCOMB_X25_Y5_N12
\inst|alu1|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux1~0_combout\ = (\inst|MREG\(0) & (((\inst|alu1|barrel_shifters|salShifters\(8) & !\inst|MREG\(1))))) # (!\inst|MREG\(0) & ((\inst|MREG\(1) & ((\inst|alu1|barrel_shifters|salShifters\(8)))) # (!\inst|MREG\(1) & 
-- (\inst|alu1|unidad_logica|salida\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_logica|salida\(8),
	datab => \inst|MREG\(0),
	datac => \inst|alu1|barrel_shifters|salShifters\(8),
	datad => \inst|MREG\(1),
	combout => \inst|alu1|Mux1~0_combout\);

-- Location: LCCOMB_X25_Y5_N6
\inst|alu1|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux1~1_combout\ = (\inst|MREG\(0) & \inst|MREG\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|MREG\(0),
	datad => \inst|MREG\(1),
	combout => \inst|alu1|Mux1~1_combout\);

-- Location: LCCOMB_X22_Y4_N22
\inst|alu1|unidad_aritmetica|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|Mux1~1_combout\ = (\inst|alu1|Mux10~0_combout\ & ((\inst|MREG\(21) & ((\inst|MREG\(11)) # (\inst|alu1|unidad_aritmetica|suma|s6|Cout~0_combout\))) # (!\inst|MREG\(21) & (\inst|MREG\(11) & 
-- \inst|alu1|unidad_aritmetica|suma|s6|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux10~0_combout\,
	datab => \inst|MREG\(21),
	datac => \inst|MREG\(11),
	datad => \inst|alu1|unidad_aritmetica|suma|s6|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|Mux1~1_combout\);

-- Location: LCCOMB_X22_Y8_N16
\inst|alu1|unidad_aritmetica|mult|multi4|s8|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi4|s8|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|mult|multi4|s7|Cout~0_combout\ $ (\inst|alu1|unidad_aritmetica|mult|multi3|s7|Cout~0_combout\ $ (((\inst|MREG\(18) & \inst|MREG\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MREG\(18),
	datab => \inst|alu1|unidad_aritmetica|mult|multi4|s7|Cout~0_combout\,
	datac => \inst|MREG\(8),
	datad => \inst|alu1|unidad_aritmetica|mult|multi3|s7|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi4|s8|Suma~0_combout\);

-- Location: LCCOMB_X22_Y5_N28
\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~0_combout\ = (\inst|alu1|Mux10~0_combout\ & (\inst|alu1|unidad_aritmetica|resta|s7|Cout~0_combout\)) # (!\inst|alu1|Mux10~0_combout\ & ((!\inst|alu1|unidad_aritmetica|mult|multi4|s8|Suma~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux10~0_combout\,
	datac => \inst|alu1|unidad_aritmetica|resta|s7|Cout~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|mult|multi4|s8|Suma~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~0_combout\);

-- Location: LCCOMB_X22_Y5_N18
\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~25_combout\ = \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~24\ $ (!\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~0_combout\,
	cin => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~24\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~25_combout\);

-- Location: LCCOMB_X22_Y5_N22
\inst|alu1|unidad_aritmetica|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|Mux1~2_combout\ = (!\inst|alu1|Mux10~0_combout\ & ((\inst|alu1|unidad_aritmetica|mult|multi4|s8|Cout~0_combout\ & ((\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~25_combout\))) # 
-- (!\inst|alu1|unidad_aritmetica|mult|multi4|s8|Cout~0_combout\ & (\inst|alu1|unidad_aritmetica|mult|multi4|s8|Suma~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux10~0_combout\,
	datab => \inst|alu1|unidad_aritmetica|mult|multi4|s8|Suma~0_combout\,
	datac => \inst|alu1|unidad_aritmetica|mult|multi4|s8|Cout~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~25_combout\,
	combout => \inst|alu1|unidad_aritmetica|Mux1~2_combout\);

-- Location: LCCOMB_X22_Y5_N20
\inst|alu1|unidad_aritmetica|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|Mux1~0_combout\ = (!\inst|alu1|unidad_aritmetica|resta|s7|Cout~0_combout\ & (\inst|alu1|Mux10~0_combout\ & (\inst|alu1|Mux11~0_combout\ & \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|resta|s7|Cout~0_combout\,
	datab => \inst|alu1|Mux10~0_combout\,
	datac => \inst|alu1|Mux11~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~25_combout\,
	combout => \inst|alu1|unidad_aritmetica|Mux1~0_combout\);

-- Location: LCCOMB_X22_Y5_N24
\inst|alu1|unidad_aritmetica|Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|Mux1~3_combout\ = (\inst|alu1|unidad_aritmetica|Mux1~0_combout\) # ((!\inst|alu1|Mux11~0_combout\ & ((\inst|alu1|unidad_aritmetica|Mux1~1_combout\) # (\inst|alu1|unidad_aritmetica|Mux1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|Mux1~1_combout\,
	datab => \inst|alu1|Mux11~0_combout\,
	datac => \inst|alu1|unidad_aritmetica|Mux1~2_combout\,
	datad => \inst|alu1|unidad_aritmetica|Mux1~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|Mux1~3_combout\);

-- Location: LCCOMB_X22_Y5_N30
\inst|alu1|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux1~2_combout\ = (\inst|MREG\(2) & ((\inst|alu1|Mux1~0_combout\) # ((\inst|alu1|Mux1~1_combout\ & \inst|alu1|unidad_aritmetica|Mux1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux1~0_combout\,
	datab => \inst|MREG\(2),
	datac => \inst|alu1|Mux1~1_combout\,
	datad => \inst|alu1|unidad_aritmetica|Mux1~3_combout\,
	combout => \inst|alu1|Mux1~2_combout\);

-- Location: LCCOMB_X22_Y5_N0
\inst|alu1|Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux1~3_combout\ = (\inst|MREG\(3) & ((\inst|alu1|unidad_aritmetica|Mux1~3_combout\) # (!\inst|alu1|Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|Mux0~0_combout\,
	datac => \inst|MREG\(3),
	datad => \inst|alu1|unidad_aritmetica|Mux1~3_combout\,
	combout => \inst|alu1|Mux1~3_combout\);

-- Location: LCCOMB_X22_Y5_N26
\inst|alu1|Mux1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux1~5_combout\ = (\inst|alu1|Mux1~2_combout\) # ((\inst|alu1|Mux1~3_combout\) # ((\inst|alu1|Mux1~4_combout\ & \inst|alu1|unidad_logica|salida\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux1~4_combout\,
	datab => \inst|alu1|unidad_logica|salida\(8),
	datac => \inst|alu1|Mux1~2_combout\,
	datad => \inst|alu1|Mux1~3_combout\,
	combout => \inst|alu1|Mux1~5_combout\);

-- Location: FF_X25_Y6_N13
\inst|registro[2][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|fec|salida~clkctrl_outclk\,
	asdata => \inst|alu1|Mux1~5_combout\,
	sload => VCC,
	ena => \inst|registro[2][3]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|registro[2][8]~q\);

-- Location: LCCOMB_X19_Y5_N26
\inst|Mux191~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux191~0_combout\ = (\ec[1]~input_o\ & ((\inst|Mux15~0_combout\) # ((\inst|MREG[22]~14_combout\)))) # (!\ec[1]~input_o\ & (((\inst|registro[4][8]~q\ & !\inst|MREG[22]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ec[1]~input_o\,
	datab => \inst|Mux15~0_combout\,
	datac => \inst|registro[4][8]~q\,
	datad => \inst|MREG[22]~14_combout\,
	combout => \inst|Mux191~0_combout\);

-- Location: LCCOMB_X25_Y6_N28
\inst|Mux191~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux191~1_combout\ = (\inst|Mux191~0_combout\ & ((\inst|registro[3][8]~q\) # ((!\inst|MREG[22]~14_combout\)))) # (!\inst|Mux191~0_combout\ & (((\inst|MREG[22]~14_combout\ & \inst|Mux15~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|registro[3][8]~q\,
	datab => \inst|Mux191~0_combout\,
	datac => \inst|MREG[22]~14_combout\,
	datad => \inst|Mux15~1_combout\,
	combout => \inst|Mux191~1_combout\);

-- Location: LCCOMB_X24_Y5_N16
\inst|MREG[22]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|MREG[22]~7_combout\ = (\inst|MREG[22]~15_combout\ & (\inst|registro[2][8]~q\)) # (!\inst|MREG[22]~15_combout\ & ((\inst|Mux191~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MREG[22]~15_combout\,
	datab => \inst|registro[2][8]~q\,
	datad => \inst|Mux191~1_combout\,
	combout => \inst|MREG[22]~7_combout\);

-- Location: FF_X22_Y5_N27
\inst|registro[1][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|fec|salida~clkctrl_outclk\,
	d => \inst|alu1|Mux1~5_combout\,
	ena => \inst|registro[1][7]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|registro[1][8]~q\);

-- Location: FF_X24_Y5_N17
\inst|MREG[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|fec|salida~clkctrl_outclk\,
	d => \inst|MREG[22]~7_combout\,
	asdata => \inst|registro[1][8]~q\,
	sclr => \inst|MREG[9]~35_combout\,
	sload => \inst|MREG[22]~17_combout\,
	ena => \inst|MREG[9]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MREG\(22));

-- Location: LCCOMB_X23_Y5_N16
\inst|alu1|unidad_logica|aux[9]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|aux[9]~25_combout\ = \inst|alu1|unidad_logica|aux[8]~24\ $ (\inst|MREG\(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|MREG\(23),
	cin => \inst|alu1|unidad_logica|aux[8]~24\,
	combout => \inst|alu1|unidad_logica|aux[9]~25_combout\);

-- Location: FF_X23_Y5_N17
\inst|alu1|unidad_logica|aux[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|fec|salida~clkctrl_outclk\,
	d => \inst|alu1|unidad_logica|aux[9]~25_combout\,
	ena => \inst|alu1|unidad_logica|Equal1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|unidad_logica|aux\(9));

-- Location: LCCOMB_X23_Y5_N28
\inst|alu1|unidad_logica|salida~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|salida~1_combout\ = (\inst|MREG\(23) & (((\inst|alu1|Mux10~0_combout\)))) # (!\inst|MREG\(23) & (((\inst|alu1|Mux10~0_combout\ & \inst|MREG\(13))) # (!\inst|alu1|Mux11~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux11~0_combout\,
	datab => \inst|alu1|Mux10~0_combout\,
	datac => \inst|MREG\(13),
	datad => \inst|MREG\(23),
	combout => \inst|alu1|unidad_logica|salida~1_combout\);

-- Location: LCCOMB_X23_Y5_N30
\inst|alu1|unidad_logica|salida~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|salida~3_combout\ = (\inst|alu1|Mux3~15_combout\ & ((\inst|alu1|unidad_logica|salida~1_combout\ & (\inst|alu1|unidad_logica|salida~2_combout\)) # (!\inst|alu1|unidad_logica|salida~1_combout\ & 
-- ((\inst|alu1|unidad_logica|aux\(9)))))) # (!\inst|alu1|Mux3~15_combout\ & (((\inst|alu1|unidad_logica|salida~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_logica|salida~2_combout\,
	datab => \inst|alu1|unidad_logica|aux\(9),
	datac => \inst|alu1|Mux3~15_combout\,
	datad => \inst|alu1|unidad_logica|salida~1_combout\,
	combout => \inst|alu1|unidad_logica|salida~3_combout\);

-- Location: FF_X23_Y5_N31
\inst|alu1|unidad_logica|salida[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|fec|salida~clkctrl_outclk\,
	d => \inst|alu1|unidad_logica|salida~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|unidad_logica|salida\(9));

-- Location: LCCOMB_X22_Y3_N12
\inst|alu1|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux0~2_combout\ = (\inst|MREG\(2) & ((\inst|MREG\(1) & ((\inst|MREG\(0)))) # (!\inst|MREG\(1) & (!\inst|alu1|unidad_logica|salida\(9) & !\inst|MREG\(0))))) # (!\inst|MREG\(2) & (((!\inst|MREG\(1) & !\inst|MREG\(0))) # 
-- (!\inst|alu1|unidad_logica|salida\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110100010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MREG\(2),
	datab => \inst|MREG\(1),
	datac => \inst|alu1|unidad_logica|salida\(9),
	datad => \inst|MREG\(0),
	combout => \inst|alu1|Mux0~2_combout\);

-- Location: LCCOMB_X23_Y3_N0
\inst|alu1|barrel_shifters|aux[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|barrel_shifters|aux[9]~feeder_combout\ = \inst|MREG\(22)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|MREG\(22),
	combout => \inst|alu1|barrel_shifters|aux[9]~feeder_combout\);

-- Location: FF_X23_Y3_N1
\inst|alu1|barrel_shifters|aux[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|fec|salida~clkctrl_outclk\,
	d => \inst|alu1|barrel_shifters|aux[9]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|barrel_shifters|aux\(9));

-- Location: FF_X22_Y3_N19
\inst|alu1|barrel_shifters|salShifters[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|fec|salida~clkctrl_outclk\,
	asdata => \inst|alu1|barrel_shifters|aux\(9),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|barrel_shifters|salShifters\(9));

-- Location: LCCOMB_X22_Y3_N18
\inst|alu1|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux0~1_combout\ = (\inst|MREG\(2) & (!\inst|alu1|barrel_shifters|salShifters\(9) & (\inst|MREG\(1) $ (\inst|MREG\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MREG\(2),
	datab => \inst|MREG\(1),
	datac => \inst|alu1|barrel_shifters|salShifters\(9),
	datad => \inst|MREG\(0),
	combout => \inst|alu1|Mux0~1_combout\);

-- Location: LCCOMB_X22_Y3_N26
\inst|alu1|Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux0~3_combout\ = (\inst|MREG\(3) & (((\inst|alu1|Mux0~0_combout\)))) # (!\inst|MREG\(3) & ((\inst|alu1|Mux0~2_combout\) # ((\inst|alu1|Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux0~2_combout\,
	datab => \inst|MREG\(3),
	datac => \inst|alu1|Mux0~0_combout\,
	datad => \inst|alu1|Mux0~1_combout\,
	combout => \inst|alu1|Mux0~3_combout\);

-- Location: LCCOMB_X16_Y6_N14
\inst|conv|digitos~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|conv|digitos~18_combout\ = (\inst|alu1|Mux0~3_combout\) # ((!\inst|alu1|Mux1~5_combout\ & !\inst|alu1|Mux2~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux0~3_combout\,
	datac => \inst|alu1|Mux1~5_combout\,
	datad => \inst|alu1|Mux2~4_combout\,
	combout => \inst|conv|digitos~18_combout\);

-- Location: LCCOMB_X22_Y6_N22
\inst|conv|digitos~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|conv|digitos~1_combout\ = (\inst|alu1|Mux9~11_combout\ & (\inst|alu1|Mux1~5_combout\ $ (((!\inst|alu1|Mux0~3_combout\ & !\inst|alu1|Mux2~4_combout\))))) # (!\inst|alu1|Mux9~11_combout\ & ((\inst|alu1|Mux0~3_combout\ & ((!\inst|alu1|Mux1~5_combout\) 
-- # (!\inst|alu1|Mux2~4_combout\))) # (!\inst|alu1|Mux0~3_combout\ & ((\inst|alu1|Mux2~4_combout\) # (\inst|alu1|Mux1~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux0~3_combout\,
	datab => \inst|alu1|Mux2~4_combout\,
	datac => \inst|alu1|Mux9~11_combout\,
	datad => \inst|alu1|Mux1~5_combout\,
	combout => \inst|conv|digitos~1_combout\);

-- Location: LCCOMB_X22_Y6_N0
\inst|conv|digitos~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|conv|digitos~0_combout\ = (\inst|alu1|Mux9~11_combout\ & (!\inst|alu1|Mux0~3_combout\ & (!\inst|alu1|Mux2~4_combout\ & !\inst|alu1|Mux1~5_combout\))) # (!\inst|alu1|Mux9~11_combout\ & (\inst|alu1|Mux1~5_combout\ & (\inst|alu1|Mux0~3_combout\ $ 
-- (\inst|alu1|Mux2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux0~3_combout\,
	datab => \inst|alu1|Mux2~4_combout\,
	datac => \inst|alu1|Mux9~11_combout\,
	datad => \inst|alu1|Mux1~5_combout\,
	combout => \inst|conv|digitos~0_combout\);

-- Location: LCCOMB_X18_Y6_N16
\inst|conv|digitos~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|conv|digitos~2_combout\ = (\inst|alu1|Mux2~4_combout\ & (\inst|alu1|Mux0~3_combout\ & ((\inst|alu1|Mux9~11_combout\) # (!\inst|alu1|Mux1~5_combout\)))) # (!\inst|alu1|Mux2~4_combout\ & (!\inst|alu1|Mux0~3_combout\ & ((\inst|alu1|Mux1~5_combout\) # 
-- (!\inst|alu1|Mux9~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000110001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux2~4_combout\,
	datab => \inst|alu1|Mux0~3_combout\,
	datac => \inst|alu1|Mux9~11_combout\,
	datad => \inst|alu1|Mux1~5_combout\,
	combout => \inst|conv|digitos~2_combout\);

-- Location: LCCOMB_X17_Y6_N0
\inst|conv|digitos~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|conv|digitos~17_combout\ = \inst|conv|digitos~0_combout\ $ ((((\inst|conv|digitos~1_combout\ & !\inst|alu1|Mux8~4_combout\)) # (!\inst|conv|digitos~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|conv|digitos~1_combout\,
	datab => \inst|alu1|Mux8~4_combout\,
	datac => \inst|conv|digitos~0_combout\,
	datad => \inst|conv|digitos~2_combout\,
	combout => \inst|conv|digitos~17_combout\);

-- Location: LCCOMB_X16_Y6_N4
\inst|conv|digitos~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|conv|digitos~16_combout\ = (\inst|alu1|Mux0~3_combout\ & (\inst|alu1|Mux1~5_combout\ & ((\inst|alu1|Mux2~4_combout\) # (\inst|alu1|Mux9~11_combout\)))) # (!\inst|alu1|Mux0~3_combout\ & ((\inst|alu1|Mux1~5_combout\ & (\inst|alu1|Mux2~4_combout\ & 
-- \inst|alu1|Mux9~11_combout\)) # (!\inst|alu1|Mux1~5_combout\ & (!\inst|alu1|Mux2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100110000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux0~3_combout\,
	datab => \inst|alu1|Mux1~5_combout\,
	datac => \inst|alu1|Mux2~4_combout\,
	datad => \inst|alu1|Mux9~11_combout\,
	combout => \inst|conv|digitos~16_combout\);

-- Location: LCCOMB_X18_Y6_N26
\inst|conv|digitos~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|conv|digitos~3_combout\ = (\inst|conv|digitos~2_combout\ & (\inst|conv|digitos~1_combout\ & (!\inst|alu1|Mux8~4_combout\))) # (!\inst|conv|digitos~2_combout\ & (\inst|conv|digitos~0_combout\ & ((\inst|alu1|Mux8~4_combout\) # 
-- (!\inst|conv|digitos~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|conv|digitos~1_combout\,
	datab => \inst|alu1|Mux8~4_combout\,
	datac => \inst|conv|digitos~0_combout\,
	datad => \inst|conv|digitos~2_combout\,
	combout => \inst|conv|digitos~3_combout\);

-- Location: LCCOMB_X18_Y6_N30
\inst|conv|digitos~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|conv|digitos~5_combout\ = (\inst|alu1|Mux8~4_combout\ & (((!\inst|conv|digitos~1_combout\)))) # (!\inst|alu1|Mux8~4_combout\ & ((\inst|conv|digitos~0_combout\ & (\inst|conv|digitos~1_combout\)) # (!\inst|conv|digitos~0_combout\ & 
-- (!\inst|conv|digitos~1_combout\ & !\inst|conv|digitos~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101001001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux8~4_combout\,
	datab => \inst|conv|digitos~0_combout\,
	datac => \inst|conv|digitos~1_combout\,
	datad => \inst|conv|digitos~2_combout\,
	combout => \inst|conv|digitos~5_combout\);

-- Location: LCCOMB_X18_Y6_N0
\inst|conv|digitos~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|conv|digitos~4_combout\ = (\inst|alu1|Mux8~4_combout\ & (((\inst|conv|digitos~0_combout\) # (\inst|conv|digitos~2_combout\)))) # (!\inst|alu1|Mux8~4_combout\ & (!\inst|conv|digitos~0_combout\ & ((\inst|conv|digitos~1_combout\) # 
-- (!\inst|conv|digitos~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|conv|digitos~1_combout\,
	datab => \inst|alu1|Mux8~4_combout\,
	datac => \inst|conv|digitos~0_combout\,
	datad => \inst|conv|digitos~2_combout\,
	combout => \inst|conv|digitos~4_combout\);

-- Location: LCCOMB_X18_Y6_N6
\inst|conv|digitos~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|conv|digitos~15_combout\ = \inst|conv|digitos~3_combout\ $ ((((!\inst|alu1|Mux7~5_combout\ & \inst|conv|digitos~4_combout\)) # (!\inst|conv|digitos~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010110100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|conv|digitos~3_combout\,
	datab => \inst|alu1|Mux7~5_combout\,
	datac => \inst|conv|digitos~5_combout\,
	datad => \inst|conv|digitos~4_combout\,
	combout => \inst|conv|digitos~15_combout\);

-- Location: LCCOMB_X17_Y6_N30
\inst|conv|digitos~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|conv|digitos~19_combout\ = (\inst|conv|digitos~16_combout\ & (\inst|conv|digitos~15_combout\ & (\inst|conv|digitos~18_combout\ $ (!\inst|conv|digitos~17_combout\)))) # (!\inst|conv|digitos~16_combout\ & (!\inst|conv|digitos~18_combout\ & 
-- (\inst|conv|digitos~17_combout\ & !\inst|conv|digitos~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|conv|digitos~18_combout\,
	datab => \inst|conv|digitos~17_combout\,
	datac => \inst|conv|digitos~16_combout\,
	datad => \inst|conv|digitos~15_combout\,
	combout => \inst|conv|digitos~19_combout\);

-- Location: LCCOMB_X17_Y6_N8
\inst|conv|digitos~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|conv|digitos~20_combout\ = (\inst|conv|digitos~18_combout\ & (!\inst|conv|digitos~17_combout\ & ((!\inst|conv|digitos~15_combout\) # (!\inst|conv|digitos~16_combout\)))) # (!\inst|conv|digitos~18_combout\ & (\inst|conv|digitos~17_combout\ & 
-- ((\inst|conv|digitos~16_combout\) # (\inst|conv|digitos~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|conv|digitos~18_combout\,
	datab => \inst|conv|digitos~17_combout\,
	datac => \inst|conv|digitos~16_combout\,
	datad => \inst|conv|digitos~15_combout\,
	combout => \inst|conv|digitos~20_combout\);

-- Location: LCCOMB_X17_Y6_N22
\inst|conv|digitos~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|conv|digitos~21_combout\ = (\inst|conv|digitos~16_combout\ & ((\inst|conv|digitos~18_combout\ & (!\inst|conv|digitos~17_combout\ & \inst|conv|digitos~15_combout\)) # (!\inst|conv|digitos~18_combout\ & (\inst|conv|digitos~17_combout\ & 
-- !\inst|conv|digitos~15_combout\)))) # (!\inst|conv|digitos~16_combout\ & (\inst|conv|digitos~15_combout\ $ (((\inst|conv|digitos~18_combout\) # (!\inst|conv|digitos~17_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010001001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|conv|digitos~18_combout\,
	datab => \inst|conv|digitos~17_combout\,
	datac => \inst|conv|digitos~16_combout\,
	datad => \inst|conv|digitos~15_combout\,
	combout => \inst|conv|digitos~21_combout\);

-- Location: LCCOMB_X18_Y6_N4
\inst|conv|digitos~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|conv|digitos~6_combout\ = (\inst|conv|digitos~5_combout\ & (((!\inst|alu1|Mux7~5_combout\ & \inst|conv|digitos~4_combout\)))) # (!\inst|conv|digitos~5_combout\ & (\inst|conv|digitos~3_combout\ & ((\inst|alu1|Mux7~5_combout\) # 
-- (!\inst|conv|digitos~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|conv|digitos~3_combout\,
	datab => \inst|alu1|Mux7~5_combout\,
	datac => \inst|conv|digitos~5_combout\,
	datad => \inst|conv|digitos~4_combout\,
	combout => \inst|conv|digitos~6_combout\);

-- Location: LCCOMB_X18_Y6_N14
\inst|conv|digitos~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|conv|digitos~7_combout\ = (\inst|conv|digitos~3_combout\ & (\inst|alu1|Mux7~5_combout\)) # (!\inst|conv|digitos~3_combout\ & ((\inst|alu1|Mux7~5_combout\ & (\inst|conv|digitos~5_combout\)) # (!\inst|alu1|Mux7~5_combout\ & 
-- ((\inst|conv|digitos~4_combout\) # (!\inst|conv|digitos~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|conv|digitos~3_combout\,
	datab => \inst|alu1|Mux7~5_combout\,
	datac => \inst|conv|digitos~5_combout\,
	datad => \inst|conv|digitos~4_combout\,
	combout => \inst|conv|digitos~7_combout\);

-- Location: LCCOMB_X18_Y6_N20
\inst|conv|digitos~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|conv|digitos~8_combout\ = (\inst|conv|digitos~3_combout\ & (\inst|alu1|Mux7~5_combout\ $ (((\inst|conv|digitos~4_combout\))))) # (!\inst|conv|digitos~3_combout\ & (!\inst|conv|digitos~4_combout\ & ((\inst|alu1|Mux7~5_combout\) # 
-- (!\inst|conv|digitos~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|conv|digitos~3_combout\,
	datab => \inst|alu1|Mux7~5_combout\,
	datac => \inst|conv|digitos~5_combout\,
	datad => \inst|conv|digitos~4_combout\,
	combout => \inst|conv|digitos~8_combout\);

-- Location: LCCOMB_X18_Y6_N28
\inst|conv|digitos~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|conv|digitos~22_combout\ = \inst|conv|digitos~6_combout\ $ ((((!\inst|alu1|Mux6~10_combout\ & \inst|conv|digitos~7_combout\)) # (!\inst|conv|digitos~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux6~10_combout\,
	datab => \inst|conv|digitos~6_combout\,
	datac => \inst|conv|digitos~7_combout\,
	datad => \inst|conv|digitos~8_combout\,
	combout => \inst|conv|digitos~22_combout\);

-- Location: LCCOMB_X17_Y6_N12
\inst|conv|digitos~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|conv|digitos~23_combout\ = (\inst|conv|digitos~19_combout\ & ((\inst|conv|digitos~21_combout\ $ (\inst|conv|digitos~22_combout\)))) # (!\inst|conv|digitos~19_combout\ & (\inst|conv|digitos~21_combout\ & ((!\inst|conv|digitos~22_combout\) # 
-- (!\inst|conv|digitos~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|conv|digitos~19_combout\,
	datab => \inst|conv|digitos~20_combout\,
	datac => \inst|conv|digitos~21_combout\,
	datad => \inst|conv|digitos~22_combout\,
	combout => \inst|conv|digitos~23_combout\);

-- Location: LCCOMB_X17_Y6_N16
\inst|conv|digitos~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|conv|digitos~25_combout\ = (\inst|conv|digitos~20_combout\ & (((!\inst|conv|digitos~21_combout\ & \inst|conv|digitos~22_combout\)))) # (!\inst|conv|digitos~20_combout\ & (\inst|conv|digitos~19_combout\ & ((\inst|conv|digitos~21_combout\) # 
-- (!\inst|conv|digitos~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|conv|digitos~19_combout\,
	datab => \inst|conv|digitos~20_combout\,
	datac => \inst|conv|digitos~21_combout\,
	datad => \inst|conv|digitos~22_combout\,
	combout => \inst|conv|digitos~25_combout\);

-- Location: LCCOMB_X17_Y6_N14
\inst|conv|digitos~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|conv|digitos~24_combout\ = (\inst|conv|digitos~19_combout\ & (((\inst|conv|digitos~22_combout\)))) # (!\inst|conv|digitos~19_combout\ & ((\inst|conv|digitos~20_combout\ & (\inst|conv|digitos~21_combout\ & \inst|conv|digitos~22_combout\)) # 
-- (!\inst|conv|digitos~20_combout\ & ((!\inst|conv|digitos~22_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|conv|digitos~19_combout\,
	datab => \inst|conv|digitos~20_combout\,
	datac => \inst|conv|digitos~21_combout\,
	datad => \inst|conv|digitos~22_combout\,
	combout => \inst|conv|digitos~24_combout\);

-- Location: LCCOMB_X18_Y6_N10
\inst|conv|digitos~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|conv|digitos~11_combout\ = (\inst|alu1|Mux6~10_combout\ & ((\inst|conv|digitos~6_combout\) # ((\inst|conv|digitos~8_combout\)))) # (!\inst|alu1|Mux6~10_combout\ & (!\inst|conv|digitos~6_combout\ & ((\inst|conv|digitos~7_combout\) # 
-- (!\inst|conv|digitos~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux6~10_combout\,
	datab => \inst|conv|digitos~6_combout\,
	datac => \inst|conv|digitos~7_combout\,
	datad => \inst|conv|digitos~8_combout\,
	combout => \inst|conv|digitos~11_combout\);

-- Location: LCCOMB_X18_Y6_N22
\inst|conv|digitos~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|conv|digitos~9_combout\ = (\inst|conv|digitos~8_combout\ & (!\inst|alu1|Mux6~10_combout\ & ((\inst|conv|digitos~7_combout\)))) # (!\inst|conv|digitos~8_combout\ & (\inst|conv|digitos~6_combout\ & ((\inst|alu1|Mux6~10_combout\) # 
-- (!\inst|conv|digitos~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux6~10_combout\,
	datab => \inst|conv|digitos~6_combout\,
	datac => \inst|conv|digitos~7_combout\,
	datad => \inst|conv|digitos~8_combout\,
	combout => \inst|conv|digitos~9_combout\);

-- Location: LCCOMB_X18_Y6_N8
\inst|conv|digitos~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|conv|digitos~10_combout\ = (\inst|alu1|Mux6~10_combout\ & (((!\inst|conv|digitos~7_combout\)))) # (!\inst|alu1|Mux6~10_combout\ & ((\inst|conv|digitos~6_combout\ & (\inst|conv|digitos~7_combout\)) # (!\inst|conv|digitos~6_combout\ & 
-- (!\inst|conv|digitos~7_combout\ & !\inst|conv|digitos~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101001001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux6~10_combout\,
	datab => \inst|conv|digitos~6_combout\,
	datac => \inst|conv|digitos~7_combout\,
	datad => \inst|conv|digitos~8_combout\,
	combout => \inst|conv|digitos~10_combout\);

-- Location: LCCOMB_X18_Y6_N18
\inst|conv|digitos~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|conv|digitos~26_combout\ = \inst|conv|digitos~9_combout\ $ ((((\inst|conv|digitos~11_combout\ & !\inst|alu1|Mux5~4_combout\)) # (!\inst|conv|digitos~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|conv|digitos~11_combout\,
	datab => \inst|alu1|Mux5~4_combout\,
	datac => \inst|conv|digitos~9_combout\,
	datad => \inst|conv|digitos~10_combout\,
	combout => \inst|conv|digitos~26_combout\);

-- Location: LCCOMB_X17_Y6_N24
\inst|conv|s[6]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|conv|s[6]~7_combout\ = (\inst|conv|digitos~25_combout\ & ((\inst|conv|digitos~24_combout\ $ (\inst|conv|digitos~26_combout\)))) # (!\inst|conv|digitos~25_combout\ & (\inst|conv|digitos~24_combout\ & ((!\inst|conv|digitos~26_combout\) # 
-- (!\inst|conv|digitos~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|conv|digitos~23_combout\,
	datab => \inst|conv|digitos~25_combout\,
	datac => \inst|conv|digitos~24_combout\,
	datad => \inst|conv|digitos~26_combout\,
	combout => \inst|conv|s[6]~7_combout\);

-- Location: LCCOMB_X17_Y6_N20
\inst|bcd_f[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|bcd_f\(6) = (GLOBAL(\inst|Equal0~0clkctrl_outclk\) & ((\inst|conv|s[6]~7_combout\))) # (!GLOBAL(\inst|Equal0~0clkctrl_outclk\) & (\inst|bcd_f\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|bcd_f\(6),
	datac => \inst|Equal0~0clkctrl_outclk\,
	datad => \inst|conv|s[6]~7_combout\,
	combout => \inst|bcd_f\(6));

-- Location: LCCOMB_X18_Y6_N12
\inst|conv|digitos~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|conv|digitos~12_combout\ = (\inst|conv|digitos~9_combout\ & (\inst|alu1|Mux5~4_combout\ $ (((\inst|conv|digitos~11_combout\))))) # (!\inst|conv|digitos~9_combout\ & (!\inst|conv|digitos~11_combout\ & ((\inst|alu1|Mux5~4_combout\) # 
-- (!\inst|conv|digitos~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|conv|digitos~9_combout\,
	datab => \inst|alu1|Mux5~4_combout\,
	datac => \inst|conv|digitos~10_combout\,
	datad => \inst|conv|digitos~11_combout\,
	combout => \inst|conv|digitos~12_combout\);

-- Location: LCCOMB_X18_Y6_N24
\inst|conv|digitos~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|conv|digitos~14_combout\ = (\inst|alu1|Mux5~4_combout\ & ((\inst|conv|digitos~10_combout\) # ((\inst|conv|digitos~9_combout\)))) # (!\inst|alu1|Mux5~4_combout\ & (!\inst|conv|digitos~9_combout\ & ((\inst|conv|digitos~11_combout\) # 
-- (!\inst|conv|digitos~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux5~4_combout\,
	datab => \inst|conv|digitos~10_combout\,
	datac => \inst|conv|digitos~9_combout\,
	datad => \inst|conv|digitos~11_combout\,
	combout => \inst|conv|digitos~14_combout\);

-- Location: LCCOMB_X18_Y6_N2
\inst|conv|digitos~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|conv|digitos~13_combout\ = (\inst|conv|digitos~10_combout\ & (\inst|conv|digitos~11_combout\ & (!\inst|alu1|Mux5~4_combout\))) # (!\inst|conv|digitos~10_combout\ & (\inst|conv|digitos~9_combout\ & ((\inst|alu1|Mux5~4_combout\) # 
-- (!\inst|conv|digitos~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|conv|digitos~11_combout\,
	datab => \inst|alu1|Mux5~4_combout\,
	datac => \inst|conv|digitos~9_combout\,
	datad => \inst|conv|digitos~10_combout\,
	combout => \inst|conv|digitos~13_combout\);

-- Location: LCCOMB_X13_Y6_N0
\inst|conv|s[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|conv|s[2]~5_combout\ = (\inst|alu1|Mux4~4_combout\ & (((!\inst|conv|digitos~14_combout\)))) # (!\inst|alu1|Mux4~4_combout\ & ((\inst|conv|digitos~14_combout\ & ((\inst|conv|digitos~13_combout\))) # (!\inst|conv|digitos~14_combout\ & 
-- (!\inst|conv|digitos~12_combout\ & !\inst|conv|digitos~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux4~4_combout\,
	datab => \inst|conv|digitos~12_combout\,
	datac => \inst|conv|digitos~14_combout\,
	datad => \inst|conv|digitos~13_combout\,
	combout => \inst|conv|s[2]~5_combout\);

-- Location: LCCOMB_X13_Y6_N8
\inst|bcd_f[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|bcd_f\(2) = (GLOBAL(\inst|Equal0~0clkctrl_outclk\) & ((\inst|conv|s[2]~5_combout\))) # (!GLOBAL(\inst|Equal0~0clkctrl_outclk\) & (\inst|bcd_f\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|bcd_f\(2),
	datac => \inst|Equal0~0clkctrl_outclk\,
	datad => \inst|conv|s[2]~5_combout\,
	combout => \inst|bcd_f\(2));

-- Location: LCCOMB_X16_Y6_N24
\inst|conv|LessThan3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|conv|LessThan3~0_combout\ = (\inst|conv|digitos~16_combout\) # (!\inst|conv|digitos~17_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|conv|digitos~16_combout\,
	datac => \inst|conv|digitos~17_combout\,
	combout => \inst|conv|LessThan3~0_combout\);

-- Location: LCCOMB_X16_Y6_N30
\inst|conv|LessThan9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|conv|LessThan9~0_combout\ = (\inst|conv|digitos~18_combout\ & (\inst|conv|digitos~16_combout\ & ((!\inst|conv|digitos~15_combout\) # (!\inst|conv|digitos~17_combout\)))) # (!\inst|conv|digitos~18_combout\ & ((\inst|conv|digitos~16_combout\ & 
-- (!\inst|conv|digitos~17_combout\ & !\inst|conv|digitos~15_combout\)) # (!\inst|conv|digitos~16_combout\ & (\inst|conv|digitos~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|conv|digitos~18_combout\,
	datab => \inst|conv|digitos~16_combout\,
	datac => \inst|conv|digitos~17_combout\,
	datad => \inst|conv|digitos~15_combout\,
	combout => \inst|conv|LessThan9~0_combout\);

-- Location: LCCOMB_X17_Y6_N28
\inst|conv|digitos~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|conv|digitos~27_combout\ = \inst|conv|digitos~19_combout\ $ ((((!\inst|conv|digitos~21_combout\ & \inst|conv|digitos~22_combout\)) # (!\inst|conv|digitos~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010110011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|conv|digitos~19_combout\,
	datab => \inst|conv|digitos~20_combout\,
	datac => \inst|conv|digitos~21_combout\,
	datad => \inst|conv|digitos~22_combout\,
	combout => \inst|conv|digitos~27_combout\);

-- Location: LCCOMB_X16_Y6_N20
\inst|conv|s[10]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|conv|s[10]~6_combout\ = (\inst|conv|LessThan9~0_combout\ & ((\inst|conv|digitos~18_combout\) # ((!\inst|conv|digitos~27_combout\) # (!\inst|conv|LessThan3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|conv|digitos~18_combout\,
	datab => \inst|conv|LessThan3~0_combout\,
	datac => \inst|conv|LessThan9~0_combout\,
	datad => \inst|conv|digitos~27_combout\,
	combout => \inst|conv|s[10]~6_combout\);

-- Location: LCCOMB_X16_Y6_N8
\inst|bcd_f[10]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|bcd_f\(10) = (GLOBAL(\inst|Equal0~0clkctrl_outclk\) & ((\inst|conv|s[10]~6_combout\))) # (!GLOBAL(\inst|Equal0~0clkctrl_outclk\) & (\inst|bcd_f\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|bcd_f\(10),
	datac => \inst|Equal0~0clkctrl_outclk\,
	datad => \inst|conv|s[10]~6_combout\,
	combout => \inst|bcd_f\(10));

-- Location: LCCOMB_X13_Y6_N12
\inst|disp|Mux5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|disp|Mux5~2_combout\ = (\inst|disp|contador\(0) & ((\inst|disp|contador\(1) & (\inst|bcd_f\(2))) # (!\inst|disp|contador\(1) & ((\inst|bcd_f\(10))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|disp|contador\(0),
	datab => \inst|bcd_f\(2),
	datac => \inst|disp|contador\(1),
	datad => \inst|bcd_f\(10),
	combout => \inst|disp|Mux5~2_combout\);

-- Location: LCCOMB_X13_Y6_N30
\inst|disp|Mux5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|disp|Mux5~3_combout\ = (\inst|disp|Mux5~2_combout\) # ((\inst|bcd_f\(6) & (!\inst|disp|contador\(0) & \inst|disp|contador\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|bcd_f\(6),
	datab => \inst|disp|contador\(0),
	datac => \inst|disp|contador\(1),
	datad => \inst|disp|Mux5~2_combout\,
	combout => \inst|disp|Mux5~3_combout\);

-- Location: FF_X13_Y6_N31
\inst|disp|tmp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|fec|salida~clkctrl_outclk\,
	d => \inst|disp|Mux5~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|disp|tmp\(2));

-- Location: LCCOMB_X17_Y6_N10
\inst|conv|s[5]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|conv|s[5]~4_combout\ = (\inst|conv|digitos~23_combout\ & (\inst|conv|digitos~26_combout\ & ((\inst|conv|digitos~25_combout\) # (\inst|conv|digitos~24_combout\)))) # (!\inst|conv|digitos~23_combout\ & (\inst|conv|digitos~25_combout\ $ 
-- (((!\inst|conv|digitos~26_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|conv|digitos~23_combout\,
	datab => \inst|conv|digitos~25_combout\,
	datac => \inst|conv|digitos~24_combout\,
	datad => \inst|conv|digitos~26_combout\,
	combout => \inst|conv|s[5]~4_combout\);

-- Location: LCCOMB_X17_Y6_N26
\inst|bcd_f[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|bcd_f\(5) = (GLOBAL(\inst|Equal0~0clkctrl_outclk\) & ((\inst|conv|s[5]~4_combout\))) # (!GLOBAL(\inst|Equal0~0clkctrl_outclk\) & (\inst|bcd_f\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|bcd_f\(5),
	datac => \inst|Equal0~0clkctrl_outclk\,
	datad => \inst|conv|s[5]~4_combout\,
	combout => \inst|bcd_f\(5));

-- Location: LCCOMB_X14_Y6_N6
\inst|conv|s[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|conv|s[1]~2_combout\ = (\inst|alu1|Mux4~4_combout\ & ((\inst|conv|digitos~12_combout\) # ((\inst|conv|digitos~13_combout\)))) # (!\inst|alu1|Mux4~4_combout\ & (!\inst|conv|digitos~13_combout\ & ((\inst|conv|digitos~14_combout\) # 
-- (!\inst|conv|digitos~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux4~4_combout\,
	datab => \inst|conv|digitos~12_combout\,
	datac => \inst|conv|digitos~13_combout\,
	datad => \inst|conv|digitos~14_combout\,
	combout => \inst|conv|s[1]~2_combout\);

-- Location: LCCOMB_X14_Y6_N16
\inst|bcd_f[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|bcd_f\(1) = (GLOBAL(\inst|Equal0~0clkctrl_outclk\) & ((!\inst|conv|s[1]~2_combout\))) # (!GLOBAL(\inst|Equal0~0clkctrl_outclk\) & (\inst|bcd_f\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|bcd_f\(1),
	datac => \inst|Equal0~0clkctrl_outclk\,
	datad => \inst|conv|s[1]~2_combout\,
	combout => \inst|bcd_f\(1));

-- Location: LCCOMB_X16_Y6_N6
\inst|conv|s[9]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|conv|s[9]~3_combout\ = (\inst|conv|digitos~18_combout\ & (((\inst|conv|digitos~27_combout\)))) # (!\inst|conv|digitos~18_combout\ & ((\inst|conv|LessThan3~0_combout\ & ((!\inst|conv|digitos~27_combout\) # (!\inst|conv|LessThan9~0_combout\))) # 
-- (!\inst|conv|LessThan3~0_combout\ & ((\inst|conv|digitos~27_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|conv|digitos~18_combout\,
	datab => \inst|conv|LessThan3~0_combout\,
	datac => \inst|conv|LessThan9~0_combout\,
	datad => \inst|conv|digitos~27_combout\,
	combout => \inst|conv|s[9]~3_combout\);

-- Location: LCCOMB_X16_Y6_N10
\inst|bcd_f[9]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|bcd_f\(9) = (GLOBAL(\inst|Equal0~0clkctrl_outclk\) & ((!\inst|conv|s[9]~3_combout\))) # (!GLOBAL(\inst|Equal0~0clkctrl_outclk\) & (\inst|bcd_f\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|bcd_f\(9),
	datac => \inst|Equal0~0clkctrl_outclk\,
	datad => \inst|conv|s[9]~3_combout\,
	combout => \inst|bcd_f\(9));

-- Location: LCCOMB_X14_Y6_N10
\inst|disp|Mux6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|disp|Mux6~2_combout\ = (\inst|disp|contador\(0) & ((\inst|disp|contador\(1) & (\inst|bcd_f\(1))) # (!\inst|disp|contador\(1) & ((\inst|bcd_f\(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|bcd_f\(1),
	datab => \inst|disp|contador\(1),
	datac => \inst|bcd_f\(9),
	datad => \inst|disp|contador\(0),
	combout => \inst|disp|Mux6~2_combout\);

-- Location: LCCOMB_X14_Y6_N22
\inst|disp|Mux6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|disp|Mux6~3_combout\ = (\inst|disp|Mux6~2_combout\) # ((\inst|disp|contador\(1) & (!\inst|disp|contador\(0) & \inst|bcd_f\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|disp|contador\(1),
	datab => \inst|disp|contador\(0),
	datac => \inst|bcd_f\(5),
	datad => \inst|disp|Mux6~2_combout\,
	combout => \inst|disp|Mux6~3_combout\);

-- Location: FF_X14_Y6_N23
\inst|disp|tmp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|fec|salida~clkctrl_outclk\,
	d => \inst|disp|Mux6~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|disp|tmp\(1));

-- Location: LCCOMB_X17_Y6_N2
\inst|conv|s[7]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|conv|s[7]~10_combout\ = (\inst|conv|digitos~23_combout\ & (((!\inst|conv|digitos~24_combout\ & \inst|conv|digitos~26_combout\)))) # (!\inst|conv|digitos~23_combout\ & (\inst|conv|digitos~25_combout\ & ((\inst|conv|digitos~24_combout\) # 
-- (!\inst|conv|digitos~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|conv|digitos~23_combout\,
	datab => \inst|conv|digitos~25_combout\,
	datac => \inst|conv|digitos~24_combout\,
	datad => \inst|conv|digitos~26_combout\,
	combout => \inst|conv|s[7]~10_combout\);

-- Location: LCCOMB_X17_Y6_N18
\inst|bcd_f[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|bcd_f\(7) = (GLOBAL(\inst|Equal0~0clkctrl_outclk\) & ((\inst|conv|s[7]~10_combout\))) # (!GLOBAL(\inst|Equal0~0clkctrl_outclk\) & (\inst|bcd_f\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|bcd_f\(7),
	datac => \inst|Equal0~0clkctrl_outclk\,
	datad => \inst|conv|s[7]~10_combout\,
	combout => \inst|bcd_f\(7));

-- Location: LCCOMB_X13_Y6_N18
\inst|conv|s[3]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|conv|s[3]~8_combout\ = (\inst|conv|digitos~12_combout\ & (((!\inst|alu1|Mux4~4_combout\ & \inst|conv|digitos~14_combout\)))) # (!\inst|conv|digitos~12_combout\ & (\inst|conv|digitos~13_combout\ & ((\inst|alu1|Mux4~4_combout\) # 
-- (!\inst|conv|digitos~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|conv|digitos~13_combout\,
	datab => \inst|alu1|Mux4~4_combout\,
	datac => \inst|conv|digitos~14_combout\,
	datad => \inst|conv|digitos~12_combout\,
	combout => \inst|conv|s[3]~8_combout\);

-- Location: LCCOMB_X13_Y6_N10
\inst|bcd_f[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|bcd_f\(3) = (GLOBAL(\inst|Equal0~0clkctrl_outclk\) & ((\inst|conv|s[3]~8_combout\))) # (!GLOBAL(\inst|Equal0~0clkctrl_outclk\) & (\inst|bcd_f\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|bcd_f\(3),
	datac => \inst|Equal0~0clkctrl_outclk\,
	datad => \inst|conv|s[3]~8_combout\,
	combout => \inst|bcd_f\(3));

-- Location: LCCOMB_X16_Y6_N18
\inst|conv|s[11]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|conv|s[11]~9_combout\ = (!\inst|conv|digitos~18_combout\ & (\inst|conv|LessThan3~0_combout\ & (!\inst|conv|LessThan9~0_combout\ & \inst|conv|digitos~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|conv|digitos~18_combout\,
	datab => \inst|conv|LessThan3~0_combout\,
	datac => \inst|conv|LessThan9~0_combout\,
	datad => \inst|conv|digitos~27_combout\,
	combout => \inst|conv|s[11]~9_combout\);

-- Location: LCCOMB_X16_Y6_N22
\inst|bcd_f[11]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|bcd_f\(11) = (GLOBAL(\inst|Equal0~0clkctrl_outclk\) & ((\inst|conv|s[11]~9_combout\))) # (!GLOBAL(\inst|Equal0~0clkctrl_outclk\) & (\inst|bcd_f\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|bcd_f\(11),
	datac => \inst|Equal0~0clkctrl_outclk\,
	datad => \inst|conv|s[11]~9_combout\,
	combout => \inst|bcd_f\(11));

-- Location: LCCOMB_X13_Y6_N2
\inst|disp|Mux4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|disp|Mux4~2_combout\ = (\inst|disp|contador\(0) & ((\inst|disp|contador\(1) & (\inst|bcd_f\(3))) # (!\inst|disp|contador\(1) & ((\inst|bcd_f\(11))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|disp|contador\(1),
	datab => \inst|disp|contador\(0),
	datac => \inst|bcd_f\(3),
	datad => \inst|bcd_f\(11),
	combout => \inst|disp|Mux4~2_combout\);

-- Location: LCCOMB_X13_Y6_N24
\inst|disp|Mux4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|disp|Mux4~3_combout\ = (\inst|disp|Mux4~2_combout\) # ((\inst|bcd_f\(7) & (!\inst|disp|contador\(0) & \inst|disp|contador\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|bcd_f\(7),
	datab => \inst|disp|contador\(0),
	datac => \inst|disp|contador\(1),
	datad => \inst|disp|Mux4~2_combout\,
	combout => \inst|disp|Mux4~3_combout\);

-- Location: FF_X13_Y6_N25
\inst|disp|tmp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|fec|salida~clkctrl_outclk\,
	d => \inst|disp|Mux4~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|disp|tmp\(3));

-- Location: LCCOMB_X14_Y6_N18
\inst|bcd_f[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|bcd_f\(0) = (GLOBAL(\inst|Equal0~0clkctrl_outclk\) & (\inst|alu1|Mux3~13_combout\)) # (!GLOBAL(\inst|Equal0~0clkctrl_outclk\) & ((\inst|bcd_f\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|Mux3~13_combout\,
	datac => \inst|Equal0~0clkctrl_outclk\,
	datad => \inst|bcd_f\(0),
	combout => \inst|bcd_f\(0));

-- Location: LCCOMB_X14_Y6_N12
\inst|conv|s[4]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|conv|s[4]~0_combout\ = \inst|conv|digitos~13_combout\ $ ((((!\inst|alu1|Mux4~4_combout\ & \inst|conv|digitos~14_combout\)) # (!\inst|conv|digitos~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux4~4_combout\,
	datab => \inst|conv|digitos~12_combout\,
	datac => \inst|conv|digitos~13_combout\,
	datad => \inst|conv|digitos~14_combout\,
	combout => \inst|conv|s[4]~0_combout\);

-- Location: LCCOMB_X14_Y6_N0
\inst|bcd_f[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|bcd_f\(4) = (GLOBAL(\inst|Equal0~0clkctrl_outclk\) & ((!\inst|conv|s[4]~0_combout\))) # (!GLOBAL(\inst|Equal0~0clkctrl_outclk\) & (\inst|bcd_f\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|bcd_f\(4),
	datac => \inst|Equal0~0clkctrl_outclk\,
	datad => \inst|conv|s[4]~0_combout\,
	combout => \inst|bcd_f\(4));

-- Location: LCCOMB_X17_Y6_N6
\inst|conv|s[8]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|conv|s[8]~1_combout\ = \inst|conv|digitos~25_combout\ $ ((((!\inst|conv|digitos~24_combout\ & \inst|conv|digitos~26_combout\)) # (!\inst|conv|digitos~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001110011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|conv|digitos~23_combout\,
	datab => \inst|conv|digitos~25_combout\,
	datac => \inst|conv|digitos~24_combout\,
	datad => \inst|conv|digitos~26_combout\,
	combout => \inst|conv|s[8]~1_combout\);

-- Location: LCCOMB_X17_Y6_N4
\inst|bcd_f[8]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|bcd_f\(8) = (GLOBAL(\inst|Equal0~0clkctrl_outclk\) & ((!\inst|conv|s[8]~1_combout\))) # (!GLOBAL(\inst|Equal0~0clkctrl_outclk\) & (\inst|bcd_f\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|bcd_f\(8),
	datac => \inst|Equal0~0clkctrl_outclk\,
	datad => \inst|conv|s[8]~1_combout\,
	combout => \inst|bcd_f\(8));

-- Location: LCCOMB_X16_Y6_N28
\inst|conv|LessThan9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|conv|LessThan9~1_combout\ = (!\inst|conv|digitos~18_combout\ & (\inst|conv|LessThan3~0_combout\ & ((\inst|conv|LessThan9~0_combout\) # (!\inst|conv|digitos~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|conv|digitos~18_combout\,
	datab => \inst|conv|LessThan3~0_combout\,
	datac => \inst|conv|LessThan9~0_combout\,
	datad => \inst|conv|digitos~27_combout\,
	combout => \inst|conv|LessThan9~1_combout\);

-- Location: LCCOMB_X16_Y6_N16
\inst|bcd_f[12]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|bcd_f\(12) = (GLOBAL(\inst|Equal0~0clkctrl_outclk\) & ((\inst|conv|LessThan9~1_combout\))) # (!GLOBAL(\inst|Equal0~0clkctrl_outclk\) & (\inst|bcd_f\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|bcd_f\(12),
	datac => \inst|Equal0~0clkctrl_outclk\,
	datad => \inst|conv|LessThan9~1_combout\,
	combout => \inst|bcd_f\(12));

-- Location: LCCOMB_X14_Y6_N20
\inst|disp|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|disp|Mux7~0_combout\ = (\inst|disp|contador\(0) & ((\inst|disp|contador\(1)) # ((\inst|bcd_f\(8))))) # (!\inst|disp|contador\(0) & (!\inst|disp|contador\(1) & ((\inst|bcd_f\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|disp|contador\(0),
	datab => \inst|disp|contador\(1),
	datac => \inst|bcd_f\(8),
	datad => \inst|bcd_f\(12),
	combout => \inst|disp|Mux7~0_combout\);

-- Location: LCCOMB_X14_Y6_N4
\inst|disp|Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|disp|Mux7~1_combout\ = (\inst|disp|contador\(1) & ((\inst|disp|Mux7~0_combout\ & (\inst|bcd_f\(0))) # (!\inst|disp|Mux7~0_combout\ & ((\inst|bcd_f\(4)))))) # (!\inst|disp|contador\(1) & (((\inst|disp|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|bcd_f\(0),
	datab => \inst|bcd_f\(4),
	datac => \inst|disp|contador\(1),
	datad => \inst|disp|Mux7~0_combout\,
	combout => \inst|disp|Mux7~1_combout\);

-- Location: FF_X14_Y6_N5
\inst|disp|tmp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|fec|salida~clkctrl_outclk\,
	d => \inst|disp|Mux7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|disp|tmp\(0));

-- Location: LCCOMB_X7_Y4_N16
\inst|disp|Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|disp|Mux12~0_combout\ = (\inst|disp|tmp\(2) & (((\inst|disp|tmp\(3))))) # (!\inst|disp|tmp\(2) & (\inst|disp|tmp\(1) & ((\inst|disp|tmp\(3)) # (!\inst|disp|tmp\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|disp|tmp\(2),
	datab => \inst|disp|tmp\(1),
	datac => \inst|disp|tmp\(3),
	datad => \inst|disp|tmp\(0),
	combout => \inst|disp|Mux12~0_combout\);

-- Location: LCCOMB_X7_Y4_N22
\inst|disp|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|disp|Mux11~0_combout\ = (\inst|disp|tmp\(1) & ((\inst|disp|tmp\(3)) # ((\inst|disp|tmp\(2) & \inst|disp|tmp\(0))))) # (!\inst|disp|tmp\(1) & (\inst|disp|tmp\(2) $ (((!\inst|disp|tmp\(3) & \inst|disp|tmp\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|disp|tmp\(2),
	datab => \inst|disp|tmp\(1),
	datac => \inst|disp|tmp\(3),
	datad => \inst|disp|tmp\(0),
	combout => \inst|disp|Mux11~0_combout\);

-- Location: LCCOMB_X7_Y4_N12
\inst|disp|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|disp|Mux10~0_combout\ = (\inst|disp|tmp\(0)) # ((\inst|disp|tmp\(1) & ((\inst|disp|tmp\(3)))) # (!\inst|disp|tmp\(1) & (\inst|disp|tmp\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|disp|tmp\(2),
	datab => \inst|disp|tmp\(1),
	datac => \inst|disp|tmp\(3),
	datad => \inst|disp|tmp\(0),
	combout => \inst|disp|Mux10~0_combout\);

-- Location: LCCOMB_X7_Y4_N30
\inst|disp|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|disp|Mux9~0_combout\ = (\inst|disp|tmp\(2) & ((\inst|disp|tmp\(3)) # ((\inst|disp|tmp\(1) & \inst|disp|tmp\(0))))) # (!\inst|disp|tmp\(2) & ((\inst|disp|tmp\(1)) # ((!\inst|disp|tmp\(3) & \inst|disp|tmp\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|disp|tmp\(2),
	datab => \inst|disp|tmp\(1),
	datac => \inst|disp|tmp\(3),
	datad => \inst|disp|tmp\(0),
	combout => \inst|disp|Mux9~0_combout\);

-- Location: LCCOMB_X7_Y4_N24
\inst|disp|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|disp|Mux8~0_combout\ = (\inst|disp|tmp\(2) & (((!\inst|disp|tmp\(0))) # (!\inst|disp|tmp\(1)))) # (!\inst|disp|tmp\(2) & ((\inst|disp|tmp\(1)) # ((\inst|disp|tmp\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|disp|tmp\(2),
	datab => \inst|disp|tmp\(1),
	datac => \inst|disp|tmp\(3),
	datad => \inst|disp|tmp\(0),
	combout => \inst|disp|Mux8~0_combout\);

-- Location: LCCOMB_X13_Y6_N26
\inst|disp|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|disp|Mux1~2_combout\ = (\inst|disp|contador\(1) & !\inst|disp|contador\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|disp|contador\(1),
	datad => \inst|disp|contador\(0),
	combout => \inst|disp|Mux1~2_combout\);

-- Location: FF_X13_Y6_N27
\inst|disp|arreglo[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|fec|salida~clkctrl_outclk\,
	d => \inst|disp|Mux1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|disp|arreglo\(2));

-- Location: LCCOMB_X7_Y4_N10
\inst|disp|Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|disp|Mux14~0_combout\ = (\inst|disp|tmp\(1) & (((\inst|disp|tmp\(3))))) # (!\inst|disp|tmp\(1) & (\inst|disp|tmp\(2) $ (((!\inst|disp|tmp\(3) & \inst|disp|tmp\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|disp|tmp\(2),
	datab => \inst|disp|tmp\(1),
	datac => \inst|disp|tmp\(3),
	datad => \inst|disp|tmp\(0),
	combout => \inst|disp|Mux14~0_combout\);

-- Location: LCCOMB_X7_Y4_N4
\inst|disp|Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|disp|Mux13~0_combout\ = (\inst|disp|tmp\(2) & ((\inst|disp|tmp\(3)) # (\inst|disp|tmp\(1) $ (\inst|disp|tmp\(0))))) # (!\inst|disp|tmp\(2) & (\inst|disp|tmp\(1) & (\inst|disp|tmp\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|disp|tmp\(2),
	datab => \inst|disp|tmp\(1),
	datac => \inst|disp|tmp\(3),
	datad => \inst|disp|tmp\(0),
	combout => \inst|disp|Mux13~0_combout\);

-- Location: IOIBUF_X0_Y11_N15
\rst_clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst_clk,
	o => \rst_clk~input_o\);

ww_d1 <= \d1~output_o\;

ww_d2 <= \d2~output_o\;

ww_d4 <= \d4~output_o\;

ww_c <= \c~output_o\;

ww_d <= \d~output_o\;

ww_e <= \e~output_o\;

ww_f <= \f~output_o\;

ww_g <= \g~output_o\;

ww_d3 <= \d3~output_o\;

ww_a <= \a~output_o\;

ww_b <= \b~output_o\;

ww_pin_name1 <= \pin_name1~output_o\;

ww_sal_prueb(9) <= \sal_prueb[9]~output_o\;

ww_sal_prueb(8) <= \sal_prueb[8]~output_o\;

ww_sal_prueb(7) <= \sal_prueb[7]~output_o\;

ww_sal_prueb(6) <= \sal_prueb[6]~output_o\;

ww_sal_prueb(5) <= \sal_prueb[5]~output_o\;

ww_sal_prueb(4) <= \sal_prueb[4]~output_o\;

ww_sal_prueb(3) <= \sal_prueb[3]~output_o\;

ww_sal_prueb(2) <= \sal_prueb[2]~output_o\;

ww_sal_prueb(1) <= \sal_prueb[1]~output_o\;

ww_sal_prueb(0) <= \sal_prueb[0]~output_o\;
END structure;


