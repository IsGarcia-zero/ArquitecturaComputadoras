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

-- DATE "12/18/2022 14:55:29"

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

ENTITY 	teclado IS
    PORT (
	d1 : OUT std_logic;
	clk : IN std_logic;
	rst : IN std_logic;
	rw : IN std_logic;
	pop : IN std_logic;
	rows : IN std_logic_vector(1 TO 4);
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
	columns : OUT std_logic_vector(1 TO 4)
	);
END teclado;

-- Design Ports Information
-- d1	=>  Location: PIN_38,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rw	=>  Location: PIN_121,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pop	=>  Location: PIN_24,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
-- columns[1]	=>  Location: PIN_114,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- columns[2]	=>  Location: PIN_115,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- columns[3]	=>  Location: PIN_119,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- columns[4]	=>  Location: PIN_120,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_91,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_73,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rows[2]	=>  Location: PIN_111,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rows[1]	=>  Location: PIN_110,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rows[4]	=>  Location: PIN_113,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rows[3]	=>  Location: PIN_112,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF teclado IS
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
SIGNAL ww_rw : std_logic;
SIGNAL ww_pop : std_logic;
SIGNAL ww_rows : std_logic_vector(1 TO 4);
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
SIGNAL ww_columns : std_logic_vector(1 TO 4);
SIGNAL \inst4|salida~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rw~input_o\ : std_logic;
SIGNAL \pop~input_o\ : std_logic;
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
SIGNAL \columns[1]~output_o\ : std_logic;
SIGNAL \columns[2]~output_o\ : std_logic;
SIGNAL \columns[3]~output_o\ : std_logic;
SIGNAL \columns[4]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst4|Add0~0_combout\ : std_logic;
SIGNAL \inst4|cuenta~5_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \inst4|Add0~1\ : std_logic;
SIGNAL \inst4|Add0~2_combout\ : std_logic;
SIGNAL \inst4|Equal0~7_combout\ : std_logic;
SIGNAL \inst4|Add0~3\ : std_logic;
SIGNAL \inst4|Add0~4_combout\ : std_logic;
SIGNAL \inst4|Add0~5\ : std_logic;
SIGNAL \inst4|Add0~6_combout\ : std_logic;
SIGNAL \inst4|Add0~7\ : std_logic;
SIGNAL \inst4|Add0~8_combout\ : std_logic;
SIGNAL \inst4|Add0~9\ : std_logic;
SIGNAL \inst4|Add0~10_combout\ : std_logic;
SIGNAL \inst4|Add0~11\ : std_logic;
SIGNAL \inst4|Add0~12_combout\ : std_logic;
SIGNAL \inst4|Add0~13\ : std_logic;
SIGNAL \inst4|Add0~14_combout\ : std_logic;
SIGNAL \inst4|cuenta~4_combout\ : std_logic;
SIGNAL \inst4|Add0~15\ : std_logic;
SIGNAL \inst4|Add0~16_combout\ : std_logic;
SIGNAL \inst4|Add0~17\ : std_logic;
SIGNAL \inst4|Add0~18_combout\ : std_logic;
SIGNAL \inst4|Equal0~5_combout\ : std_logic;
SIGNAL \inst4|Equal0~6_combout\ : std_logic;
SIGNAL \inst4|Add0~19\ : std_logic;
SIGNAL \inst4|Add0~20_combout\ : std_logic;
SIGNAL \inst4|Add0~21\ : std_logic;
SIGNAL \inst4|Add0~22_combout\ : std_logic;
SIGNAL \inst4|cuenta~3_combout\ : std_logic;
SIGNAL \inst4|Add0~23\ : std_logic;
SIGNAL \inst4|Add0~24_combout\ : std_logic;
SIGNAL \inst4|cuenta~2_combout\ : std_logic;
SIGNAL \inst4|Add0~25\ : std_logic;
SIGNAL \inst4|Add0~26_combout\ : std_logic;
SIGNAL \inst4|cuenta~1_combout\ : std_logic;
SIGNAL \inst4|Add0~27\ : std_logic;
SIGNAL \inst4|Add0~28_combout\ : std_logic;
SIGNAL \inst4|Add0~29\ : std_logic;
SIGNAL \inst4|Add0~30_combout\ : std_logic;
SIGNAL \inst4|Add0~31\ : std_logic;
SIGNAL \inst4|Add0~32_combout\ : std_logic;
SIGNAL \inst4|cuenta~0_combout\ : std_logic;
SIGNAL \inst4|Add0~33\ : std_logic;
SIGNAL \inst4|Add0~34_combout\ : std_logic;
SIGNAL \inst4|Equal0~2_combout\ : std_logic;
SIGNAL \inst4|Equal0~3_combout\ : std_logic;
SIGNAL \inst4|Add0~35\ : std_logic;
SIGNAL \inst4|Add0~36_combout\ : std_logic;
SIGNAL \inst4|Add0~37\ : std_logic;
SIGNAL \inst4|Add0~38_combout\ : std_logic;
SIGNAL \inst4|Add0~39\ : std_logic;
SIGNAL \inst4|Add0~40_combout\ : std_logic;
SIGNAL \inst4|Add0~41\ : std_logic;
SIGNAL \inst4|Add0~42_combout\ : std_logic;
SIGNAL \inst4|Equal0~1_combout\ : std_logic;
SIGNAL \inst4|Add0~43\ : std_logic;
SIGNAL \inst4|Add0~44_combout\ : std_logic;
SIGNAL \inst4|Add0~45\ : std_logic;
SIGNAL \inst4|Add0~46_combout\ : std_logic;
SIGNAL \inst4|Add0~47\ : std_logic;
SIGNAL \inst4|Add0~48_combout\ : std_logic;
SIGNAL \inst4|Add0~49\ : std_logic;
SIGNAL \inst4|Add0~50_combout\ : std_logic;
SIGNAL \inst4|Equal0~0_combout\ : std_logic;
SIGNAL \inst4|Equal0~4_combout\ : std_logic;
SIGNAL \inst4|Equal0~8_combout\ : std_logic;
SIGNAL \inst4|salida~0_combout\ : std_logic;
SIGNAL \inst4|salida~feeder_combout\ : std_logic;
SIGNAL \inst4|salida~q\ : std_logic;
SIGNAL \inst4|salida~clkctrl_outclk\ : std_logic;
SIGNAL \inst1|contador[0]~1_combout\ : std_logic;
SIGNAL \inst1|contador[1]~0_combout\ : std_logic;
SIGNAL \inst1|Mux3~0_combout\ : std_logic;
SIGNAL \inst1|Mux1~0_combout\ : std_logic;
SIGNAL \inst1|Mux1~1_combout\ : std_logic;
SIGNAL \inst1|Mux1~2_combout\ : std_logic;
SIGNAL \inst|Mux49~0_combout\ : std_logic;
SIGNAL \inst|count[0]~4_combout\ : std_logic;
SIGNAL \inst|count[1]~3_combout\ : std_logic;
SIGNAL \inst|count[2]~2_combout\ : std_logic;
SIGNAL \inst|count[3]~0_combout\ : std_logic;
SIGNAL \inst|count[3]~1_combout\ : std_logic;
SIGNAL \inst|LessThan0~0_combout\ : std_logic;
SIGNAL \inst|Mux48~0_combout\ : std_logic;
SIGNAL \inst|Mux51~0_combout\ : std_logic;
SIGNAL \inst|Mux50~0_combout\ : std_logic;
SIGNAL \inst|Mux40~0_combout\ : std_logic;
SIGNAL \inst|keys_double[2]~13_combout\ : std_logic;
SIGNAL \inst|keys_double[5]~14_combout\ : std_logic;
SIGNAL \inst|keys_double[15]~8_combout\ : std_logic;
SIGNAL \rows[1]~input_o\ : std_logic;
SIGNAL \inst|Mux18~0_combout\ : std_logic;
SIGNAL \inst|keys_int[8]~1_combout\ : std_logic;
SIGNAL \inst|keys_double[15]~9_combout\ : std_logic;
SIGNAL \inst|Mux19~0_combout\ : std_logic;
SIGNAL \inst|keys_int[9]~2_combout\ : std_logic;
SIGNAL \inst|Mux26~0_combout\ : std_logic;
SIGNAL \inst|keys_int[11]~3_combout\ : std_logic;
SIGNAL \inst|Mux34~0_combout\ : std_logic;
SIGNAL \inst|keys_double[15]~10_combout\ : std_logic;
SIGNAL \inst|Mux17~0_combout\ : std_logic;
SIGNAL \inst|keys_int[0]~0_combout\ : std_logic;
SIGNAL \inst|keys_double[2]~11_combout\ : std_logic;
SIGNAL \inst|keys_double[2]~12_combout\ : std_logic;
SIGNAL \inst|keys_double[2]~15_combout\ : std_logic;
SIGNAL \inst|process_1~1_combout\ : std_logic;
SIGNAL \rows[4]~input_o\ : std_logic;
SIGNAL \inst|Mux31~0_combout\ : std_logic;
SIGNAL \inst|keys_double[3]~26_combout\ : std_logic;
SIGNAL \inst|keys_double[3]~23_combout\ : std_logic;
SIGNAL \rows[3]~input_o\ : std_logic;
SIGNAL \inst|Mux25~0_combout\ : std_logic;
SIGNAL \inst|Mux28~0_combout\ : std_logic;
SIGNAL \inst|Mux23~0_combout\ : std_logic;
SIGNAL \inst|keys_double[9]~61_combout\ : std_logic;
SIGNAL \inst|Mux41~0_combout\ : std_logic;
SIGNAL \inst|keys_double[3]~22_combout\ : std_logic;
SIGNAL \inst|keys_double[9]~62_combout\ : std_logic;
SIGNAL \inst|Mux24~0_combout\ : std_logic;
SIGNAL \inst|keys_double[8]~58_combout\ : std_logic;
SIGNAL \inst|keys_double[9]~60_combout\ : std_logic;
SIGNAL \inst|keys_double[9]~63_combout\ : std_logic;
SIGNAL \inst|keys_double[9]~64_combout\ : std_logic;
SIGNAL \inst|process_1~7_combout\ : std_logic;
SIGNAL \inst|Mux43~0_combout\ : std_logic;
SIGNAL \inst|keys_double[10]~30_combout\ : std_logic;
SIGNAL \inst|keys_double[13]~36_combout\ : std_logic;
SIGNAL \inst|keys_double[13]~35_combout\ : std_logic;
SIGNAL \inst|keys_double[12]~76_combout\ : std_logic;
SIGNAL \inst|keys_double[12]~77_combout\ : std_logic;
SIGNAL \inst|keys_double[12]~78_combout\ : std_logic;
SIGNAL \inst|keys_double[12]~79_combout\ : std_logic;
SIGNAL \inst|keys_double[12]~80_combout\ : std_logic;
SIGNAL \inst|process_1~10_combout\ : std_logic;
SIGNAL \inst|keys_double[10]~68_combout\ : std_logic;
SIGNAL \inst|keys_double[10]~65_combout\ : std_logic;
SIGNAL \inst|keys_double[10]~66_combout\ : std_logic;
SIGNAL \inst|keys_double[10]~67_combout\ : std_logic;
SIGNAL \inst|keys_double[10]~69_combout\ : std_logic;
SIGNAL \inst|keys_double[10]~70_combout\ : std_logic;
SIGNAL \inst|process_1~8_combout\ : std_logic;
SIGNAL \rows[2]~input_o\ : std_logic;
SIGNAL \inst|rows_int[2]~feeder_combout\ : std_logic;
SIGNAL \inst|Mux21~0_combout\ : std_logic;
SIGNAL \inst|keys_double[5]~46_combout\ : std_logic;
SIGNAL \inst|Mux27~0_combout\ : std_logic;
SIGNAL \inst|keys_double[11]~71_combout\ : std_logic;
SIGNAL \inst|Mux22~0_combout\ : std_logic;
SIGNAL \inst|Mux20~0_combout\ : std_logic;
SIGNAL \inst|keys_double[11]~72_combout\ : std_logic;
SIGNAL \inst|keys_double[11]~73_combout\ : std_logic;
SIGNAL \inst|keys_double[11]~74_combout\ : std_logic;
SIGNAL \inst|keys_double[11]~75_combout\ : std_logic;
SIGNAL \inst|process_1~9_combout\ : std_logic;
SIGNAL \inst|Add10~0_combout\ : std_logic;
SIGNAL \inst|keys_double[6]~48_combout\ : std_logic;
SIGNAL \inst|keys_double[6]~49_combout\ : std_logic;
SIGNAL \inst|keys_double[6]~50_combout\ : std_logic;
SIGNAL \inst|keys_double[6]~51_combout\ : std_logic;
SIGNAL \inst|keys_double[6]~52_combout\ : std_logic;
SIGNAL \inst|process_1~4_combout\ : std_logic;
SIGNAL \inst|keys_double[1]~5_combout\ : std_logic;
SIGNAL \inst|Mux32~0_combout\ : std_logic;
SIGNAL \inst|keys_double[4]~6_combout\ : std_logic;
SIGNAL \inst|keys_double[0]~1_combout\ : std_logic;
SIGNAL \inst|Mux39~0_combout\ : std_logic;
SIGNAL \inst|keys_double[0]~2_combout\ : std_logic;
SIGNAL \inst|keys_double[7]~53_combout\ : std_logic;
SIGNAL \inst|keys_double[0]~0_combout\ : std_logic;
SIGNAL \inst|keys_double[7]~54_combout\ : std_logic;
SIGNAL \inst|keys_double[7]~55_combout\ : std_logic;
SIGNAL \inst|process_1~5_combout\ : std_logic;
SIGNAL \inst|Mux37~0_combout\ : std_logic;
SIGNAL \inst|keys_double[5]~45_combout\ : std_logic;
SIGNAL \inst|keys_double[5]~44_combout\ : std_logic;
SIGNAL \inst|keys_double[5]~47_combout\ : std_logic;
SIGNAL \inst|process_1~3_combout\ : std_logic;
SIGNAL \inst|keys_double[8]~56_combout\ : std_logic;
SIGNAL \inst|keys_double[8]~57_combout\ : std_logic;
SIGNAL \inst|keys_double[8]~59_combout\ : std_logic;
SIGNAL \inst|process_1~6_combout\ : std_logic;
SIGNAL \inst|Add6~0_combout\ : std_logic;
SIGNAL \inst|Add8~0_combout\ : std_logic;
SIGNAL \inst|Mux16~0_combout\ : std_logic;
SIGNAL \inst|Mux30~0_combout\ : std_logic;
SIGNAL \inst|Mux29~0_combout\ : std_logic;
SIGNAL \inst|Mux32~1_combout\ : std_logic;
SIGNAL \inst|keys_double[0]~16_combout\ : std_logic;
SIGNAL \inst|keys_double[0]~17_combout\ : std_logic;
SIGNAL \inst|keys_double[0]~18_combout\ : std_logic;
SIGNAL \inst|keys_double[1]~19_combout\ : std_logic;
SIGNAL \inst|keys_double[1]~20_combout\ : std_logic;
SIGNAL \inst|keys_double[1]~21_combout\ : std_logic;
SIGNAL \inst|presses~0_combout\ : std_logic;
SIGNAL \inst|keys_double[4]~3_combout\ : std_logic;
SIGNAL \inst|keys_double[4]~4_combout\ : std_logic;
SIGNAL \inst|keys_double[4]~7_combout\ : std_logic;
SIGNAL \inst|process_1~0_combout\ : std_logic;
SIGNAL \inst|keys_double[3]~24_combout\ : std_logic;
SIGNAL \inst|keys_double[3]~27_combout\ : std_logic;
SIGNAL \inst|keys_double[3]~25_combout\ : std_logic;
SIGNAL \inst|keys_double[3]~28_combout\ : std_logic;
SIGNAL \inst|keys_double[3]~29_combout\ : std_logic;
SIGNAL \inst|process_1~2_combout\ : std_logic;
SIGNAL \inst|Add3~0_combout\ : std_logic;
SIGNAL \inst|keys_double[13]~31_combout\ : std_logic;
SIGNAL \inst|keys_double[13]~32_combout\ : std_logic;
SIGNAL \inst|keys_double[15]~33_combout\ : std_logic;
SIGNAL \inst|keys_double[13]~34_combout\ : std_logic;
SIGNAL \inst|keys_double[13]~37_combout\ : std_logic;
SIGNAL \inst|keys_double[13]~38_combout\ : std_logic;
SIGNAL \inst|keys_double[14]~39_combout\ : std_logic;
SIGNAL \inst|keys_double[14]~40_combout\ : std_logic;
SIGNAL \inst|keys_double[14]~41_combout\ : std_logic;
SIGNAL \inst|keys_double[14]~42_combout\ : std_logic;
SIGNAL \inst|keys_double[14]~43_combout\ : std_logic;
SIGNAL \inst|Add13~0_combout\ : std_logic;
SIGNAL \inst|Add12~0_combout\ : std_logic;
SIGNAL \inst|Add14~0_combout\ : std_logic;
SIGNAL \inst|Add10~1_combout\ : std_logic;
SIGNAL \inst|Add6~1_combout\ : std_logic;
SIGNAL \inst|Add8~1\ : std_logic;
SIGNAL \inst|Add8~2_combout\ : std_logic;
SIGNAL \inst|Add13~1_combout\ : std_logic;
SIGNAL \inst|process_1~11_combout\ : std_logic;
SIGNAL \inst|Add2~0_combout\ : std_logic;
SIGNAL \inst|Add3~1_combout\ : std_logic;
SIGNAL \inst|Add3~2_combout\ : std_logic;
SIGNAL \inst|Add12~1\ : std_logic;
SIGNAL \inst|Add12~2_combout\ : std_logic;
SIGNAL \inst|Add14~1\ : std_logic;
SIGNAL \inst|Add14~2_combout\ : std_logic;
SIGNAL \inst|keys_double[15]~81_combout\ : std_logic;
SIGNAL \inst|keys_double[15]~82_combout\ : std_logic;
SIGNAL \inst|keys_double[15]~83_combout\ : std_logic;
SIGNAL \inst|LessThan1~0_combout\ : std_logic;
SIGNAL \inst|Add10~2_combout\ : std_logic;
SIGNAL \inst|Add6~2_combout\ : std_logic;
SIGNAL \inst|Add8~3\ : std_logic;
SIGNAL \inst|Add8~5\ : std_logic;
SIGNAL \inst|Add8~6_combout\ : std_logic;
SIGNAL \inst|Add12~3\ : std_logic;
SIGNAL \inst|Add12~5\ : std_logic;
SIGNAL \inst|Add12~6_combout\ : std_logic;
SIGNAL \inst|Add8~4_combout\ : std_logic;
SIGNAL \inst|Add12~4_combout\ : std_logic;
SIGNAL \inst|Add14~3\ : std_logic;
SIGNAL \inst|Add14~5\ : std_logic;
SIGNAL \inst|Add14~6_combout\ : std_logic;
SIGNAL \inst|Add14~4_combout\ : std_logic;
SIGNAL \inst|Add14~7\ : std_logic;
SIGNAL \inst|Add14~8_combout\ : std_logic;
SIGNAL \inst|LessThan1~1_combout\ : std_logic;
SIGNAL \inst|Add15~1\ : std_logic;
SIGNAL \inst|Add15~3\ : std_logic;
SIGNAL \inst|Add15~4_combout\ : std_logic;
SIGNAL \inst|Add15~0_combout\ : std_logic;
SIGNAL \inst|Add15~2_combout\ : std_logic;
SIGNAL \inst|LessThan1~2_combout\ : std_logic;
SIGNAL \inst|Add15~5\ : std_logic;
SIGNAL \inst|Add15~6_combout\ : std_logic;
SIGNAL \inst|Mux4~0_combout\ : std_logic;
SIGNAL \inst|Add15~7\ : std_logic;
SIGNAL \inst|Add15~8_combout\ : std_logic;
SIGNAL \inst|Mux2~0_combout\ : std_logic;
SIGNAL \inst|keys_stored[0]~0_combout\ : std_logic;
SIGNAL \inst|keys_stored[0]~1_combout\ : std_logic;
SIGNAL \inst|row_debounce:2:debounce_keys|flipflops[0]~feeder_combout\ : std_logic;
SIGNAL \inst|row_debounce:2:debounce_keys|flipflops[1]~feeder_combout\ : std_logic;
SIGNAL \inst|row_debounce:2:debounce_keys|count[0]~19_combout\ : std_logic;
SIGNAL \inst|row_debounce:2:debounce_keys|counter_set~combout\ : std_logic;
SIGNAL \inst|row_debounce:2:debounce_keys|count[18]~31_combout\ : std_logic;
SIGNAL \inst|row_debounce:2:debounce_keys|count[0]~20\ : std_logic;
SIGNAL \inst|row_debounce:2:debounce_keys|count[1]~21_combout\ : std_logic;
SIGNAL \inst|row_debounce:2:debounce_keys|count[1]~22\ : std_logic;
SIGNAL \inst|row_debounce:2:debounce_keys|count[2]~23_combout\ : std_logic;
SIGNAL \inst|row_debounce:2:debounce_keys|count[2]~24\ : std_logic;
SIGNAL \inst|row_debounce:2:debounce_keys|count[3]~25_combout\ : std_logic;
SIGNAL \inst|row_debounce:2:debounce_keys|count[3]~26\ : std_logic;
SIGNAL \inst|row_debounce:2:debounce_keys|count[4]~27_combout\ : std_logic;
SIGNAL \inst|row_debounce:2:debounce_keys|count[4]~28\ : std_logic;
SIGNAL \inst|row_debounce:2:debounce_keys|count[5]~29_combout\ : std_logic;
SIGNAL \inst|row_debounce:2:debounce_keys|count[5]~30\ : std_logic;
SIGNAL \inst|row_debounce:2:debounce_keys|count[6]~32_combout\ : std_logic;
SIGNAL \inst|row_debounce:2:debounce_keys|count[6]~33\ : std_logic;
SIGNAL \inst|row_debounce:2:debounce_keys|count[7]~34_combout\ : std_logic;
SIGNAL \inst|row_debounce:2:debounce_keys|count[7]~35\ : std_logic;
SIGNAL \inst|row_debounce:2:debounce_keys|count[8]~36_combout\ : std_logic;
SIGNAL \inst|row_debounce:2:debounce_keys|count[8]~37\ : std_logic;
SIGNAL \inst|row_debounce:2:debounce_keys|count[9]~38_combout\ : std_logic;
SIGNAL \inst|row_debounce:2:debounce_keys|count[9]~39\ : std_logic;
SIGNAL \inst|row_debounce:2:debounce_keys|count[10]~40_combout\ : std_logic;
SIGNAL \inst|row_debounce:2:debounce_keys|count[10]~41\ : std_logic;
SIGNAL \inst|row_debounce:2:debounce_keys|count[11]~42_combout\ : std_logic;
SIGNAL \inst|row_debounce:2:debounce_keys|count[11]~43\ : std_logic;
SIGNAL \inst|row_debounce:2:debounce_keys|count[12]~44_combout\ : std_logic;
SIGNAL \inst|row_debounce:2:debounce_keys|count[12]~45\ : std_logic;
SIGNAL \inst|row_debounce:2:debounce_keys|count[13]~46_combout\ : std_logic;
SIGNAL \inst|row_debounce:2:debounce_keys|count[13]~47\ : std_logic;
SIGNAL \inst|row_debounce:2:debounce_keys|count[14]~48_combout\ : std_logic;
SIGNAL \inst|row_debounce:2:debounce_keys|count[14]~49\ : std_logic;
SIGNAL \inst|row_debounce:2:debounce_keys|count[15]~50_combout\ : std_logic;
SIGNAL \inst|row_debounce:2:debounce_keys|count[15]~51\ : std_logic;
SIGNAL \inst|row_debounce:2:debounce_keys|count[16]~52_combout\ : std_logic;
SIGNAL \inst|row_debounce:2:debounce_keys|result~3_combout\ : std_logic;
SIGNAL \inst|row_debounce:2:debounce_keys|count[16]~53\ : std_logic;
SIGNAL \inst|row_debounce:2:debounce_keys|count[17]~54_combout\ : std_logic;
SIGNAL \inst|row_debounce:2:debounce_keys|count[17]~55\ : std_logic;
SIGNAL \inst|row_debounce:2:debounce_keys|count[18]~56_combout\ : std_logic;
SIGNAL \inst|row_debounce:2:debounce_keys|result~0_combout\ : std_logic;
SIGNAL \inst|row_debounce:2:debounce_keys|result~1_combout\ : std_logic;
SIGNAL \inst|row_debounce:2:debounce_keys|result~2_combout\ : std_logic;
SIGNAL \inst|row_debounce:2:debounce_keys|result~4_combout\ : std_logic;
SIGNAL \inst|row_debounce:2:debounce_keys|result~5_combout\ : std_logic;
SIGNAL \inst|row_debounce:2:debounce_keys|result~q\ : std_logic;
SIGNAL \inst|Mux3~0_combout\ : std_logic;
SIGNAL \inst|row_debounce:3:debounce_keys|flipflops[0]~feeder_combout\ : std_logic;
SIGNAL \inst|row_debounce:3:debounce_keys|flipflops[1]~feeder_combout\ : std_logic;
SIGNAL \inst|row_debounce:3:debounce_keys|count[0]~19_combout\ : std_logic;
SIGNAL \inst|row_debounce:3:debounce_keys|counter_set~combout\ : std_logic;
SIGNAL \inst|row_debounce:3:debounce_keys|count[18]~31_combout\ : std_logic;
SIGNAL \inst|row_debounce:3:debounce_keys|count[0]~20\ : std_logic;
SIGNAL \inst|row_debounce:3:debounce_keys|count[1]~21_combout\ : std_logic;
SIGNAL \inst|row_debounce:3:debounce_keys|count[1]~22\ : std_logic;
SIGNAL \inst|row_debounce:3:debounce_keys|count[2]~23_combout\ : std_logic;
SIGNAL \inst|row_debounce:3:debounce_keys|count[2]~24\ : std_logic;
SIGNAL \inst|row_debounce:3:debounce_keys|count[3]~25_combout\ : std_logic;
SIGNAL \inst|row_debounce:3:debounce_keys|count[3]~26\ : std_logic;
SIGNAL \inst|row_debounce:3:debounce_keys|count[4]~27_combout\ : std_logic;
SIGNAL \inst|row_debounce:3:debounce_keys|count[4]~28\ : std_logic;
SIGNAL \inst|row_debounce:3:debounce_keys|count[5]~29_combout\ : std_logic;
SIGNAL \inst|row_debounce:3:debounce_keys|count[5]~30\ : std_logic;
SIGNAL \inst|row_debounce:3:debounce_keys|count[6]~32_combout\ : std_logic;
SIGNAL \inst|row_debounce:3:debounce_keys|count[6]~33\ : std_logic;
SIGNAL \inst|row_debounce:3:debounce_keys|count[7]~34_combout\ : std_logic;
SIGNAL \inst|row_debounce:3:debounce_keys|count[7]~35\ : std_logic;
SIGNAL \inst|row_debounce:3:debounce_keys|count[8]~36_combout\ : std_logic;
SIGNAL \inst|row_debounce:3:debounce_keys|count[8]~37\ : std_logic;
SIGNAL \inst|row_debounce:3:debounce_keys|count[9]~38_combout\ : std_logic;
SIGNAL \inst|row_debounce:3:debounce_keys|count[9]~39\ : std_logic;
SIGNAL \inst|row_debounce:3:debounce_keys|count[10]~40_combout\ : std_logic;
SIGNAL \inst|row_debounce:3:debounce_keys|count[10]~41\ : std_logic;
SIGNAL \inst|row_debounce:3:debounce_keys|count[11]~42_combout\ : std_logic;
SIGNAL \inst|row_debounce:3:debounce_keys|count[11]~43\ : std_logic;
SIGNAL \inst|row_debounce:3:debounce_keys|count[12]~44_combout\ : std_logic;
SIGNAL \inst|row_debounce:3:debounce_keys|count[12]~45\ : std_logic;
SIGNAL \inst|row_debounce:3:debounce_keys|count[13]~46_combout\ : std_logic;
SIGNAL \inst|row_debounce:3:debounce_keys|count[13]~47\ : std_logic;
SIGNAL \inst|row_debounce:3:debounce_keys|count[14]~48_combout\ : std_logic;
SIGNAL \inst|row_debounce:3:debounce_keys|count[14]~49\ : std_logic;
SIGNAL \inst|row_debounce:3:debounce_keys|count[15]~50_combout\ : std_logic;
SIGNAL \inst|row_debounce:3:debounce_keys|count[15]~51\ : std_logic;
SIGNAL \inst|row_debounce:3:debounce_keys|count[16]~52_combout\ : std_logic;
SIGNAL \inst|row_debounce:3:debounce_keys|result~3_combout\ : std_logic;
SIGNAL \inst|row_debounce:3:debounce_keys|count[16]~53\ : std_logic;
SIGNAL \inst|row_debounce:3:debounce_keys|count[17]~54_combout\ : std_logic;
SIGNAL \inst|row_debounce:3:debounce_keys|count[17]~55\ : std_logic;
SIGNAL \inst|row_debounce:3:debounce_keys|count[18]~56_combout\ : std_logic;
SIGNAL \inst|row_debounce:3:debounce_keys|result~1_combout\ : std_logic;
SIGNAL \inst|row_debounce:3:debounce_keys|result~0_combout\ : std_logic;
SIGNAL \inst|row_debounce:3:debounce_keys|result~2_combout\ : std_logic;
SIGNAL \inst|row_debounce:3:debounce_keys|result~4_combout\ : std_logic;
SIGNAL \inst|row_debounce:3:debounce_keys|result~5_combout\ : std_logic;
SIGNAL \inst|row_debounce:3:debounce_keys|result~q\ : std_logic;
SIGNAL \inst|Mux7~0_combout\ : std_logic;
SIGNAL \inst|row_debounce:7:debounce_keys|flipflops[0]~feeder_combout\ : std_logic;
SIGNAL \inst|row_debounce:7:debounce_keys|flipflops[1]~feeder_combout\ : std_logic;
SIGNAL \inst|row_debounce:7:debounce_keys|count[0]~19_combout\ : std_logic;
SIGNAL \inst|row_debounce:7:debounce_keys|counter_set~combout\ : std_logic;
SIGNAL \inst|row_debounce:7:debounce_keys|count[18]~31_combout\ : std_logic;
SIGNAL \inst|row_debounce:7:debounce_keys|count[0]~20\ : std_logic;
SIGNAL \inst|row_debounce:7:debounce_keys|count[1]~21_combout\ : std_logic;
SIGNAL \inst|row_debounce:7:debounce_keys|count[1]~22\ : std_logic;
SIGNAL \inst|row_debounce:7:debounce_keys|count[2]~23_combout\ : std_logic;
SIGNAL \inst|row_debounce:7:debounce_keys|count[2]~24\ : std_logic;
SIGNAL \inst|row_debounce:7:debounce_keys|count[3]~25_combout\ : std_logic;
SIGNAL \inst|row_debounce:7:debounce_keys|count[3]~26\ : std_logic;
SIGNAL \inst|row_debounce:7:debounce_keys|count[4]~27_combout\ : std_logic;
SIGNAL \inst|row_debounce:7:debounce_keys|count[4]~28\ : std_logic;
SIGNAL \inst|row_debounce:7:debounce_keys|count[5]~29_combout\ : std_logic;
SIGNAL \inst|row_debounce:7:debounce_keys|count[5]~30\ : std_logic;
SIGNAL \inst|row_debounce:7:debounce_keys|count[6]~32_combout\ : std_logic;
SIGNAL \inst|row_debounce:7:debounce_keys|count[6]~33\ : std_logic;
SIGNAL \inst|row_debounce:7:debounce_keys|count[7]~34_combout\ : std_logic;
SIGNAL \inst|row_debounce:7:debounce_keys|count[7]~35\ : std_logic;
SIGNAL \inst|row_debounce:7:debounce_keys|count[8]~36_combout\ : std_logic;
SIGNAL \inst|row_debounce:7:debounce_keys|count[8]~37\ : std_logic;
SIGNAL \inst|row_debounce:7:debounce_keys|count[9]~38_combout\ : std_logic;
SIGNAL \inst|row_debounce:7:debounce_keys|count[9]~39\ : std_logic;
SIGNAL \inst|row_debounce:7:debounce_keys|count[10]~40_combout\ : std_logic;
SIGNAL \inst|row_debounce:7:debounce_keys|count[10]~41\ : std_logic;
SIGNAL \inst|row_debounce:7:debounce_keys|count[11]~42_combout\ : std_logic;
SIGNAL \inst|row_debounce:7:debounce_keys|count[11]~43\ : std_logic;
SIGNAL \inst|row_debounce:7:debounce_keys|count[12]~44_combout\ : std_logic;
SIGNAL \inst|row_debounce:7:debounce_keys|count[12]~45\ : std_logic;
SIGNAL \inst|row_debounce:7:debounce_keys|count[13]~46_combout\ : std_logic;
SIGNAL \inst|row_debounce:7:debounce_keys|count[13]~47\ : std_logic;
SIGNAL \inst|row_debounce:7:debounce_keys|count[14]~48_combout\ : std_logic;
SIGNAL \inst|row_debounce:7:debounce_keys|count[14]~49\ : std_logic;
SIGNAL \inst|row_debounce:7:debounce_keys|count[15]~50_combout\ : std_logic;
SIGNAL \inst|row_debounce:7:debounce_keys|count[15]~51\ : std_logic;
SIGNAL \inst|row_debounce:7:debounce_keys|count[16]~52_combout\ : std_logic;
SIGNAL \inst|row_debounce:7:debounce_keys|result~3_combout\ : std_logic;
SIGNAL \inst|row_debounce:7:debounce_keys|count[16]~53\ : std_logic;
SIGNAL \inst|row_debounce:7:debounce_keys|count[17]~54_combout\ : std_logic;
SIGNAL \inst|row_debounce:7:debounce_keys|result~1_combout\ : std_logic;
SIGNAL \inst|row_debounce:7:debounce_keys|result~0_combout\ : std_logic;
SIGNAL \inst|row_debounce:7:debounce_keys|result~2_combout\ : std_logic;
SIGNAL \inst|row_debounce:7:debounce_keys|count[17]~55\ : std_logic;
SIGNAL \inst|row_debounce:7:debounce_keys|count[18]~56_combout\ : std_logic;
SIGNAL \inst|row_debounce:7:debounce_keys|result~4_combout\ : std_logic;
SIGNAL \inst|row_debounce:7:debounce_keys|result~5_combout\ : std_logic;
SIGNAL \inst|row_debounce:7:debounce_keys|result~q\ : std_logic;
SIGNAL \inst|LessThan1~3_combout\ : std_logic;
SIGNAL \inst|Mux1~0_combout\ : std_logic;
SIGNAL \inst|row_debounce:1:debounce_keys|flipflops[0]~feeder_combout\ : std_logic;
SIGNAL \inst|row_debounce:1:debounce_keys|flipflops[1]~feeder_combout\ : std_logic;
SIGNAL \inst|row_debounce:1:debounce_keys|count[0]~19_combout\ : std_logic;
SIGNAL \inst|row_debounce:1:debounce_keys|counter_set~combout\ : std_logic;
SIGNAL \inst|row_debounce:1:debounce_keys|count[18]~31_combout\ : std_logic;
SIGNAL \inst|row_debounce:1:debounce_keys|count[0]~20\ : std_logic;
SIGNAL \inst|row_debounce:1:debounce_keys|count[1]~21_combout\ : std_logic;
SIGNAL \inst|row_debounce:1:debounce_keys|count[1]~22\ : std_logic;
SIGNAL \inst|row_debounce:1:debounce_keys|count[2]~23_combout\ : std_logic;
SIGNAL \inst|row_debounce:1:debounce_keys|count[2]~24\ : std_logic;
SIGNAL \inst|row_debounce:1:debounce_keys|count[3]~25_combout\ : std_logic;
SIGNAL \inst|row_debounce:1:debounce_keys|count[3]~26\ : std_logic;
SIGNAL \inst|row_debounce:1:debounce_keys|count[4]~27_combout\ : std_logic;
SIGNAL \inst|row_debounce:1:debounce_keys|count[4]~28\ : std_logic;
SIGNAL \inst|row_debounce:1:debounce_keys|count[5]~29_combout\ : std_logic;
SIGNAL \inst|row_debounce:1:debounce_keys|count[5]~30\ : std_logic;
SIGNAL \inst|row_debounce:1:debounce_keys|count[6]~32_combout\ : std_logic;
SIGNAL \inst|row_debounce:1:debounce_keys|count[6]~33\ : std_logic;
SIGNAL \inst|row_debounce:1:debounce_keys|count[7]~34_combout\ : std_logic;
SIGNAL \inst|row_debounce:1:debounce_keys|count[7]~35\ : std_logic;
SIGNAL \inst|row_debounce:1:debounce_keys|count[8]~36_combout\ : std_logic;
SIGNAL \inst|row_debounce:1:debounce_keys|count[8]~37\ : std_logic;
SIGNAL \inst|row_debounce:1:debounce_keys|count[9]~38_combout\ : std_logic;
SIGNAL \inst|row_debounce:1:debounce_keys|count[9]~39\ : std_logic;
SIGNAL \inst|row_debounce:1:debounce_keys|count[10]~40_combout\ : std_logic;
SIGNAL \inst|row_debounce:1:debounce_keys|count[10]~41\ : std_logic;
SIGNAL \inst|row_debounce:1:debounce_keys|count[11]~42_combout\ : std_logic;
SIGNAL \inst|row_debounce:1:debounce_keys|count[11]~43\ : std_logic;
SIGNAL \inst|row_debounce:1:debounce_keys|count[12]~44_combout\ : std_logic;
SIGNAL \inst|row_debounce:1:debounce_keys|count[12]~45\ : std_logic;
SIGNAL \inst|row_debounce:1:debounce_keys|count[13]~46_combout\ : std_logic;
SIGNAL \inst|row_debounce:1:debounce_keys|count[13]~47\ : std_logic;
SIGNAL \inst|row_debounce:1:debounce_keys|count[14]~48_combout\ : std_logic;
SIGNAL \inst|row_debounce:1:debounce_keys|count[14]~49\ : std_logic;
SIGNAL \inst|row_debounce:1:debounce_keys|count[15]~50_combout\ : std_logic;
SIGNAL \inst|row_debounce:1:debounce_keys|count[15]~51\ : std_logic;
SIGNAL \inst|row_debounce:1:debounce_keys|count[16]~52_combout\ : std_logic;
SIGNAL \inst|row_debounce:1:debounce_keys|result~3_combout\ : std_logic;
SIGNAL \inst|row_debounce:1:debounce_keys|count[16]~53\ : std_logic;
SIGNAL \inst|row_debounce:1:debounce_keys|count[17]~54_combout\ : std_logic;
SIGNAL \inst|row_debounce:1:debounce_keys|count[17]~55\ : std_logic;
SIGNAL \inst|row_debounce:1:debounce_keys|count[18]~56_combout\ : std_logic;
SIGNAL \inst|row_debounce:1:debounce_keys|result~1_combout\ : std_logic;
SIGNAL \inst|row_debounce:1:debounce_keys|result~0_combout\ : std_logic;
SIGNAL \inst|row_debounce:1:debounce_keys|result~2_combout\ : std_logic;
SIGNAL \inst|row_debounce:1:debounce_keys|result~4_combout\ : std_logic;
SIGNAL \inst|row_debounce:1:debounce_keys|result~5_combout\ : std_logic;
SIGNAL \inst|row_debounce:1:debounce_keys|result~q\ : std_logic;
SIGNAL \inst|Mux4~1_combout\ : std_logic;
SIGNAL \inst|row_debounce:4:debounce_keys|flipflops[0]~feeder_combout\ : std_logic;
SIGNAL \inst|row_debounce:4:debounce_keys|flipflops[1]~feeder_combout\ : std_logic;
SIGNAL \inst|row_debounce:4:debounce_keys|count[0]~19_combout\ : std_logic;
SIGNAL \inst|row_debounce:4:debounce_keys|counter_set~combout\ : std_logic;
SIGNAL \inst|row_debounce:4:debounce_keys|count[18]~31_combout\ : std_logic;
SIGNAL \inst|row_debounce:4:debounce_keys|count[0]~20\ : std_logic;
SIGNAL \inst|row_debounce:4:debounce_keys|count[1]~21_combout\ : std_logic;
SIGNAL \inst|row_debounce:4:debounce_keys|count[1]~22\ : std_logic;
SIGNAL \inst|row_debounce:4:debounce_keys|count[2]~23_combout\ : std_logic;
SIGNAL \inst|row_debounce:4:debounce_keys|count[2]~24\ : std_logic;
SIGNAL \inst|row_debounce:4:debounce_keys|count[3]~25_combout\ : std_logic;
SIGNAL \inst|row_debounce:4:debounce_keys|count[3]~26\ : std_logic;
SIGNAL \inst|row_debounce:4:debounce_keys|count[4]~27_combout\ : std_logic;
SIGNAL \inst|row_debounce:4:debounce_keys|count[4]~28\ : std_logic;
SIGNAL \inst|row_debounce:4:debounce_keys|count[5]~29_combout\ : std_logic;
SIGNAL \inst|row_debounce:4:debounce_keys|count[5]~30\ : std_logic;
SIGNAL \inst|row_debounce:4:debounce_keys|count[6]~32_combout\ : std_logic;
SIGNAL \inst|row_debounce:4:debounce_keys|count[6]~33\ : std_logic;
SIGNAL \inst|row_debounce:4:debounce_keys|count[7]~34_combout\ : std_logic;
SIGNAL \inst|row_debounce:4:debounce_keys|count[7]~35\ : std_logic;
SIGNAL \inst|row_debounce:4:debounce_keys|count[8]~36_combout\ : std_logic;
SIGNAL \inst|row_debounce:4:debounce_keys|count[8]~37\ : std_logic;
SIGNAL \inst|row_debounce:4:debounce_keys|count[9]~38_combout\ : std_logic;
SIGNAL \inst|row_debounce:4:debounce_keys|count[9]~39\ : std_logic;
SIGNAL \inst|row_debounce:4:debounce_keys|count[10]~40_combout\ : std_logic;
SIGNAL \inst|row_debounce:4:debounce_keys|count[10]~41\ : std_logic;
SIGNAL \inst|row_debounce:4:debounce_keys|count[11]~42_combout\ : std_logic;
SIGNAL \inst|row_debounce:4:debounce_keys|count[11]~43\ : std_logic;
SIGNAL \inst|row_debounce:4:debounce_keys|count[12]~44_combout\ : std_logic;
SIGNAL \inst|row_debounce:4:debounce_keys|count[12]~45\ : std_logic;
SIGNAL \inst|row_debounce:4:debounce_keys|count[13]~46_combout\ : std_logic;
SIGNAL \inst|row_debounce:4:debounce_keys|count[13]~47\ : std_logic;
SIGNAL \inst|row_debounce:4:debounce_keys|count[14]~48_combout\ : std_logic;
SIGNAL \inst|row_debounce:4:debounce_keys|count[14]~49\ : std_logic;
SIGNAL \inst|row_debounce:4:debounce_keys|count[15]~50_combout\ : std_logic;
SIGNAL \inst|row_debounce:4:debounce_keys|count[15]~51\ : std_logic;
SIGNAL \inst|row_debounce:4:debounce_keys|count[16]~52_combout\ : std_logic;
SIGNAL \inst|row_debounce:4:debounce_keys|result~3_combout\ : std_logic;
SIGNAL \inst|row_debounce:4:debounce_keys|count[16]~53\ : std_logic;
SIGNAL \inst|row_debounce:4:debounce_keys|count[17]~54_combout\ : std_logic;
SIGNAL \inst|row_debounce:4:debounce_keys|count[17]~55\ : std_logic;
SIGNAL \inst|row_debounce:4:debounce_keys|count[18]~56_combout\ : std_logic;
SIGNAL \inst|row_debounce:4:debounce_keys|result~0_combout\ : std_logic;
SIGNAL \inst|row_debounce:4:debounce_keys|result~1_combout\ : std_logic;
SIGNAL \inst|row_debounce:4:debounce_keys|result~2_combout\ : std_logic;
SIGNAL \inst|row_debounce:4:debounce_keys|result~4_combout\ : std_logic;
SIGNAL \inst|row_debounce:4:debounce_keys|result~5_combout\ : std_logic;
SIGNAL \inst|row_debounce:4:debounce_keys|result~q\ : std_logic;
SIGNAL \inst|Mux6~0_combout\ : std_logic;
SIGNAL \inst|row_debounce:6:debounce_keys|flipflops[0]~feeder_combout\ : std_logic;
SIGNAL \inst|row_debounce:6:debounce_keys|flipflops[1]~feeder_combout\ : std_logic;
SIGNAL \inst|row_debounce:6:debounce_keys|count[0]~19_combout\ : std_logic;
SIGNAL \inst|row_debounce:6:debounce_keys|counter_set~combout\ : std_logic;
SIGNAL \inst|row_debounce:6:debounce_keys|count[18]~31_combout\ : std_logic;
SIGNAL \inst|row_debounce:6:debounce_keys|count[0]~20\ : std_logic;
SIGNAL \inst|row_debounce:6:debounce_keys|count[1]~21_combout\ : std_logic;
SIGNAL \inst|row_debounce:6:debounce_keys|count[1]~22\ : std_logic;
SIGNAL \inst|row_debounce:6:debounce_keys|count[2]~23_combout\ : std_logic;
SIGNAL \inst|row_debounce:6:debounce_keys|count[2]~24\ : std_logic;
SIGNAL \inst|row_debounce:6:debounce_keys|count[3]~25_combout\ : std_logic;
SIGNAL \inst|row_debounce:6:debounce_keys|count[3]~26\ : std_logic;
SIGNAL \inst|row_debounce:6:debounce_keys|count[4]~27_combout\ : std_logic;
SIGNAL \inst|row_debounce:6:debounce_keys|count[4]~28\ : std_logic;
SIGNAL \inst|row_debounce:6:debounce_keys|count[5]~29_combout\ : std_logic;
SIGNAL \inst|row_debounce:6:debounce_keys|count[5]~30\ : std_logic;
SIGNAL \inst|row_debounce:6:debounce_keys|count[6]~32_combout\ : std_logic;
SIGNAL \inst|row_debounce:6:debounce_keys|count[6]~33\ : std_logic;
SIGNAL \inst|row_debounce:6:debounce_keys|count[7]~34_combout\ : std_logic;
SIGNAL \inst|row_debounce:6:debounce_keys|count[7]~35\ : std_logic;
SIGNAL \inst|row_debounce:6:debounce_keys|count[8]~36_combout\ : std_logic;
SIGNAL \inst|row_debounce:6:debounce_keys|count[8]~37\ : std_logic;
SIGNAL \inst|row_debounce:6:debounce_keys|count[9]~38_combout\ : std_logic;
SIGNAL \inst|row_debounce:6:debounce_keys|count[9]~39\ : std_logic;
SIGNAL \inst|row_debounce:6:debounce_keys|count[10]~40_combout\ : std_logic;
SIGNAL \inst|row_debounce:6:debounce_keys|count[10]~41\ : std_logic;
SIGNAL \inst|row_debounce:6:debounce_keys|count[11]~42_combout\ : std_logic;
SIGNAL \inst|row_debounce:6:debounce_keys|count[11]~43\ : std_logic;
SIGNAL \inst|row_debounce:6:debounce_keys|count[12]~44_combout\ : std_logic;
SIGNAL \inst|row_debounce:6:debounce_keys|count[12]~45\ : std_logic;
SIGNAL \inst|row_debounce:6:debounce_keys|count[13]~46_combout\ : std_logic;
SIGNAL \inst|row_debounce:6:debounce_keys|count[13]~47\ : std_logic;
SIGNAL \inst|row_debounce:6:debounce_keys|count[14]~48_combout\ : std_logic;
SIGNAL \inst|row_debounce:6:debounce_keys|count[14]~49\ : std_logic;
SIGNAL \inst|row_debounce:6:debounce_keys|count[15]~50_combout\ : std_logic;
SIGNAL \inst|row_debounce:6:debounce_keys|count[15]~51\ : std_logic;
SIGNAL \inst|row_debounce:6:debounce_keys|count[16]~52_combout\ : std_logic;
SIGNAL \inst|row_debounce:6:debounce_keys|result~3_combout\ : std_logic;
SIGNAL \inst|row_debounce:6:debounce_keys|count[16]~53\ : std_logic;
SIGNAL \inst|row_debounce:6:debounce_keys|count[17]~54_combout\ : std_logic;
SIGNAL \inst|row_debounce:6:debounce_keys|count[17]~55\ : std_logic;
SIGNAL \inst|row_debounce:6:debounce_keys|count[18]~56_combout\ : std_logic;
SIGNAL \inst|row_debounce:6:debounce_keys|result~0_combout\ : std_logic;
SIGNAL \inst|row_debounce:6:debounce_keys|result~1_combout\ : std_logic;
SIGNAL \inst|row_debounce:6:debounce_keys|result~2_combout\ : std_logic;
SIGNAL \inst|row_debounce:6:debounce_keys|result~4_combout\ : std_logic;
SIGNAL \inst|row_debounce:6:debounce_keys|result~5_combout\ : std_logic;
SIGNAL \inst|row_debounce:6:debounce_keys|result~q\ : std_logic;
SIGNAL \inst|Mux14~0_combout\ : std_logic;
SIGNAL \inst|Mux15~0_combout\ : std_logic;
SIGNAL \inst|row_debounce:15:debounce_keys|flipflops[0]~feeder_combout\ : std_logic;
SIGNAL \inst|row_debounce:15:debounce_keys|flipflops[1]~feeder_combout\ : std_logic;
SIGNAL \inst|row_debounce:15:debounce_keys|count[0]~19_combout\ : std_logic;
SIGNAL \inst|row_debounce:15:debounce_keys|counter_set~combout\ : std_logic;
SIGNAL \inst|row_debounce:15:debounce_keys|count[18]~31_combout\ : std_logic;
SIGNAL \inst|row_debounce:15:debounce_keys|count[0]~20\ : std_logic;
SIGNAL \inst|row_debounce:15:debounce_keys|count[1]~21_combout\ : std_logic;
SIGNAL \inst|row_debounce:15:debounce_keys|count[1]~22\ : std_logic;
SIGNAL \inst|row_debounce:15:debounce_keys|count[2]~23_combout\ : std_logic;
SIGNAL \inst|row_debounce:15:debounce_keys|count[2]~24\ : std_logic;
SIGNAL \inst|row_debounce:15:debounce_keys|count[3]~25_combout\ : std_logic;
SIGNAL \inst|row_debounce:15:debounce_keys|count[3]~26\ : std_logic;
SIGNAL \inst|row_debounce:15:debounce_keys|count[4]~27_combout\ : std_logic;
SIGNAL \inst|row_debounce:15:debounce_keys|count[4]~28\ : std_logic;
SIGNAL \inst|row_debounce:15:debounce_keys|count[5]~29_combout\ : std_logic;
SIGNAL \inst|row_debounce:15:debounce_keys|count[5]~30\ : std_logic;
SIGNAL \inst|row_debounce:15:debounce_keys|count[6]~32_combout\ : std_logic;
SIGNAL \inst|row_debounce:15:debounce_keys|count[6]~33\ : std_logic;
SIGNAL \inst|row_debounce:15:debounce_keys|count[7]~34_combout\ : std_logic;
SIGNAL \inst|row_debounce:15:debounce_keys|count[7]~35\ : std_logic;
SIGNAL \inst|row_debounce:15:debounce_keys|count[8]~36_combout\ : std_logic;
SIGNAL \inst|row_debounce:15:debounce_keys|count[8]~37\ : std_logic;
SIGNAL \inst|row_debounce:15:debounce_keys|count[9]~38_combout\ : std_logic;
SIGNAL \inst|row_debounce:15:debounce_keys|count[9]~39\ : std_logic;
SIGNAL \inst|row_debounce:15:debounce_keys|count[10]~40_combout\ : std_logic;
SIGNAL \inst|row_debounce:15:debounce_keys|count[10]~41\ : std_logic;
SIGNAL \inst|row_debounce:15:debounce_keys|count[11]~42_combout\ : std_logic;
SIGNAL \inst|row_debounce:15:debounce_keys|count[11]~43\ : std_logic;
SIGNAL \inst|row_debounce:15:debounce_keys|count[12]~44_combout\ : std_logic;
SIGNAL \inst|row_debounce:15:debounce_keys|count[12]~45\ : std_logic;
SIGNAL \inst|row_debounce:15:debounce_keys|count[13]~46_combout\ : std_logic;
SIGNAL \inst|row_debounce:15:debounce_keys|count[13]~47\ : std_logic;
SIGNAL \inst|row_debounce:15:debounce_keys|count[14]~48_combout\ : std_logic;
SIGNAL \inst|row_debounce:15:debounce_keys|count[14]~49\ : std_logic;
SIGNAL \inst|row_debounce:15:debounce_keys|count[15]~50_combout\ : std_logic;
SIGNAL \inst|row_debounce:15:debounce_keys|count[15]~51\ : std_logic;
SIGNAL \inst|row_debounce:15:debounce_keys|count[16]~52_combout\ : std_logic;
SIGNAL \inst|row_debounce:15:debounce_keys|result~3_combout\ : std_logic;
SIGNAL \inst|row_debounce:15:debounce_keys|count[16]~53\ : std_logic;
SIGNAL \inst|row_debounce:15:debounce_keys|count[17]~54_combout\ : std_logic;
SIGNAL \inst|row_debounce:15:debounce_keys|count[17]~55\ : std_logic;
SIGNAL \inst|row_debounce:15:debounce_keys|count[18]~56_combout\ : std_logic;
SIGNAL \inst|row_debounce:15:debounce_keys|result~1_combout\ : std_logic;
SIGNAL \inst|row_debounce:15:debounce_keys|result~0_combout\ : std_logic;
SIGNAL \inst|row_debounce:15:debounce_keys|result~2_combout\ : std_logic;
SIGNAL \inst|row_debounce:15:debounce_keys|result~4_combout\ : std_logic;
SIGNAL \inst|row_debounce:15:debounce_keys|result~5_combout\ : std_logic;
SIGNAL \inst|row_debounce:15:debounce_keys|result~q\ : std_logic;
SIGNAL \inst|Mux8~0_combout\ : std_logic;
SIGNAL \inst|row_debounce:8:debounce_keys|flipflops[0]~feeder_combout\ : std_logic;
SIGNAL \inst|row_debounce:8:debounce_keys|flipflops[1]~feeder_combout\ : std_logic;
SIGNAL \inst|row_debounce:8:debounce_keys|count[0]~19_combout\ : std_logic;
SIGNAL \inst|row_debounce:8:debounce_keys|counter_set~combout\ : std_logic;
SIGNAL \inst|row_debounce:8:debounce_keys|count[18]~31_combout\ : std_logic;
SIGNAL \inst|row_debounce:8:debounce_keys|count[0]~20\ : std_logic;
SIGNAL \inst|row_debounce:8:debounce_keys|count[1]~21_combout\ : std_logic;
SIGNAL \inst|row_debounce:8:debounce_keys|count[1]~22\ : std_logic;
SIGNAL \inst|row_debounce:8:debounce_keys|count[2]~23_combout\ : std_logic;
SIGNAL \inst|row_debounce:8:debounce_keys|count[2]~24\ : std_logic;
SIGNAL \inst|row_debounce:8:debounce_keys|count[3]~25_combout\ : std_logic;
SIGNAL \inst|row_debounce:8:debounce_keys|count[3]~26\ : std_logic;
SIGNAL \inst|row_debounce:8:debounce_keys|count[4]~27_combout\ : std_logic;
SIGNAL \inst|row_debounce:8:debounce_keys|count[4]~28\ : std_logic;
SIGNAL \inst|row_debounce:8:debounce_keys|count[5]~29_combout\ : std_logic;
SIGNAL \inst|row_debounce:8:debounce_keys|count[5]~30\ : std_logic;
SIGNAL \inst|row_debounce:8:debounce_keys|count[6]~32_combout\ : std_logic;
SIGNAL \inst|row_debounce:8:debounce_keys|count[6]~33\ : std_logic;
SIGNAL \inst|row_debounce:8:debounce_keys|count[7]~34_combout\ : std_logic;
SIGNAL \inst|row_debounce:8:debounce_keys|count[7]~35\ : std_logic;
SIGNAL \inst|row_debounce:8:debounce_keys|count[8]~36_combout\ : std_logic;
SIGNAL \inst|row_debounce:8:debounce_keys|count[8]~37\ : std_logic;
SIGNAL \inst|row_debounce:8:debounce_keys|count[9]~38_combout\ : std_logic;
SIGNAL \inst|row_debounce:8:debounce_keys|count[9]~39\ : std_logic;
SIGNAL \inst|row_debounce:8:debounce_keys|count[10]~40_combout\ : std_logic;
SIGNAL \inst|row_debounce:8:debounce_keys|count[10]~41\ : std_logic;
SIGNAL \inst|row_debounce:8:debounce_keys|count[11]~42_combout\ : std_logic;
SIGNAL \inst|row_debounce:8:debounce_keys|count[11]~43\ : std_logic;
SIGNAL \inst|row_debounce:8:debounce_keys|count[12]~44_combout\ : std_logic;
SIGNAL \inst|row_debounce:8:debounce_keys|count[12]~45\ : std_logic;
SIGNAL \inst|row_debounce:8:debounce_keys|count[13]~46_combout\ : std_logic;
SIGNAL \inst|row_debounce:8:debounce_keys|count[13]~47\ : std_logic;
SIGNAL \inst|row_debounce:8:debounce_keys|count[14]~48_combout\ : std_logic;
SIGNAL \inst|row_debounce:8:debounce_keys|count[14]~49\ : std_logic;
SIGNAL \inst|row_debounce:8:debounce_keys|count[15]~50_combout\ : std_logic;
SIGNAL \inst|row_debounce:8:debounce_keys|count[15]~51\ : std_logic;
SIGNAL \inst|row_debounce:8:debounce_keys|count[16]~52_combout\ : std_logic;
SIGNAL \inst|row_debounce:8:debounce_keys|result~3_combout\ : std_logic;
SIGNAL \inst|row_debounce:8:debounce_keys|count[16]~53\ : std_logic;
SIGNAL \inst|row_debounce:8:debounce_keys|count[17]~54_combout\ : std_logic;
SIGNAL \inst|row_debounce:8:debounce_keys|result~1_combout\ : std_logic;
SIGNAL \inst|row_debounce:8:debounce_keys|result~0_combout\ : std_logic;
SIGNAL \inst|row_debounce:8:debounce_keys|result~2_combout\ : std_logic;
SIGNAL \inst|row_debounce:8:debounce_keys|count[17]~55\ : std_logic;
SIGNAL \inst|row_debounce:8:debounce_keys|count[18]~56_combout\ : std_logic;
SIGNAL \inst|row_debounce:8:debounce_keys|result~4_combout\ : std_logic;
SIGNAL \inst|row_debounce:8:debounce_keys|result~5_combout\ : std_logic;
SIGNAL \inst|row_debounce:8:debounce_keys|result~q\ : std_logic;
SIGNAL \inst|Mux14~1_combout\ : std_logic;
SIGNAL \inst|row_debounce:14:debounce_keys|flipflops[0]~feeder_combout\ : std_logic;
SIGNAL \inst|row_debounce:14:debounce_keys|count[0]~19_combout\ : std_logic;
SIGNAL \inst|row_debounce:14:debounce_keys|counter_set~combout\ : std_logic;
SIGNAL \inst|row_debounce:14:debounce_keys|count[18]~31_combout\ : std_logic;
SIGNAL \inst|row_debounce:14:debounce_keys|count[0]~20\ : std_logic;
SIGNAL \inst|row_debounce:14:debounce_keys|count[1]~21_combout\ : std_logic;
SIGNAL \inst|row_debounce:14:debounce_keys|count[1]~22\ : std_logic;
SIGNAL \inst|row_debounce:14:debounce_keys|count[2]~23_combout\ : std_logic;
SIGNAL \inst|row_debounce:14:debounce_keys|count[2]~24\ : std_logic;
SIGNAL \inst|row_debounce:14:debounce_keys|count[3]~25_combout\ : std_logic;
SIGNAL \inst|row_debounce:14:debounce_keys|count[3]~26\ : std_logic;
SIGNAL \inst|row_debounce:14:debounce_keys|count[4]~27_combout\ : std_logic;
SIGNAL \inst|row_debounce:14:debounce_keys|count[4]~28\ : std_logic;
SIGNAL \inst|row_debounce:14:debounce_keys|count[5]~29_combout\ : std_logic;
SIGNAL \inst|row_debounce:14:debounce_keys|count[5]~30\ : std_logic;
SIGNAL \inst|row_debounce:14:debounce_keys|count[6]~32_combout\ : std_logic;
SIGNAL \inst|row_debounce:14:debounce_keys|count[6]~33\ : std_logic;
SIGNAL \inst|row_debounce:14:debounce_keys|count[7]~34_combout\ : std_logic;
SIGNAL \inst|row_debounce:14:debounce_keys|count[7]~35\ : std_logic;
SIGNAL \inst|row_debounce:14:debounce_keys|count[8]~36_combout\ : std_logic;
SIGNAL \inst|row_debounce:14:debounce_keys|count[8]~37\ : std_logic;
SIGNAL \inst|row_debounce:14:debounce_keys|count[9]~38_combout\ : std_logic;
SIGNAL \inst|row_debounce:14:debounce_keys|count[9]~39\ : std_logic;
SIGNAL \inst|row_debounce:14:debounce_keys|count[10]~40_combout\ : std_logic;
SIGNAL \inst|row_debounce:14:debounce_keys|count[10]~41\ : std_logic;
SIGNAL \inst|row_debounce:14:debounce_keys|count[11]~42_combout\ : std_logic;
SIGNAL \inst|row_debounce:14:debounce_keys|count[11]~43\ : std_logic;
SIGNAL \inst|row_debounce:14:debounce_keys|count[12]~44_combout\ : std_logic;
SIGNAL \inst|row_debounce:14:debounce_keys|count[12]~45\ : std_logic;
SIGNAL \inst|row_debounce:14:debounce_keys|count[13]~46_combout\ : std_logic;
SIGNAL \inst|row_debounce:14:debounce_keys|count[13]~47\ : std_logic;
SIGNAL \inst|row_debounce:14:debounce_keys|count[14]~48_combout\ : std_logic;
SIGNAL \inst|row_debounce:14:debounce_keys|count[14]~49\ : std_logic;
SIGNAL \inst|row_debounce:14:debounce_keys|count[15]~50_combout\ : std_logic;
SIGNAL \inst|row_debounce:14:debounce_keys|count[15]~51\ : std_logic;
SIGNAL \inst|row_debounce:14:debounce_keys|count[16]~52_combout\ : std_logic;
SIGNAL \inst|row_debounce:14:debounce_keys|result~3_combout\ : std_logic;
SIGNAL \inst|row_debounce:14:debounce_keys|count[16]~53\ : std_logic;
SIGNAL \inst|row_debounce:14:debounce_keys|count[17]~54_combout\ : std_logic;
SIGNAL \inst|row_debounce:14:debounce_keys|count[17]~55\ : std_logic;
SIGNAL \inst|row_debounce:14:debounce_keys|count[18]~56_combout\ : std_logic;
SIGNAL \inst|row_debounce:14:debounce_keys|result~1_combout\ : std_logic;
SIGNAL \inst|row_debounce:14:debounce_keys|result~0_combout\ : std_logic;
SIGNAL \inst|row_debounce:14:debounce_keys|result~2_combout\ : std_logic;
SIGNAL \inst|row_debounce:14:debounce_keys|result~4_combout\ : std_logic;
SIGNAL \inst|row_debounce:14:debounce_keys|result~5_combout\ : std_logic;
SIGNAL \inst|row_debounce:14:debounce_keys|result~q\ : std_logic;
SIGNAL \inst|Mux0~0_combout\ : std_logic;
SIGNAL \inst|row_debounce:0:debounce_keys|flipflops[0]~feeder_combout\ : std_logic;
SIGNAL \inst|row_debounce:0:debounce_keys|flipflops[1]~feeder_combout\ : std_logic;
SIGNAL \inst|row_debounce:0:debounce_keys|count[0]~19_combout\ : std_logic;
SIGNAL \inst|row_debounce:0:debounce_keys|counter_set~combout\ : std_logic;
SIGNAL \inst|row_debounce:0:debounce_keys|count[18]~31_combout\ : std_logic;
SIGNAL \inst|row_debounce:0:debounce_keys|count[0]~20\ : std_logic;
SIGNAL \inst|row_debounce:0:debounce_keys|count[1]~21_combout\ : std_logic;
SIGNAL \inst|row_debounce:0:debounce_keys|count[1]~22\ : std_logic;
SIGNAL \inst|row_debounce:0:debounce_keys|count[2]~23_combout\ : std_logic;
SIGNAL \inst|row_debounce:0:debounce_keys|count[2]~24\ : std_logic;
SIGNAL \inst|row_debounce:0:debounce_keys|count[3]~25_combout\ : std_logic;
SIGNAL \inst|row_debounce:0:debounce_keys|count[3]~26\ : std_logic;
SIGNAL \inst|row_debounce:0:debounce_keys|count[4]~27_combout\ : std_logic;
SIGNAL \inst|row_debounce:0:debounce_keys|count[4]~28\ : std_logic;
SIGNAL \inst|row_debounce:0:debounce_keys|count[5]~29_combout\ : std_logic;
SIGNAL \inst|row_debounce:0:debounce_keys|count[5]~30\ : std_logic;
SIGNAL \inst|row_debounce:0:debounce_keys|count[6]~32_combout\ : std_logic;
SIGNAL \inst|row_debounce:0:debounce_keys|count[6]~33\ : std_logic;
SIGNAL \inst|row_debounce:0:debounce_keys|count[7]~34_combout\ : std_logic;
SIGNAL \inst|row_debounce:0:debounce_keys|count[7]~35\ : std_logic;
SIGNAL \inst|row_debounce:0:debounce_keys|count[8]~36_combout\ : std_logic;
SIGNAL \inst|row_debounce:0:debounce_keys|count[8]~37\ : std_logic;
SIGNAL \inst|row_debounce:0:debounce_keys|count[9]~38_combout\ : std_logic;
SIGNAL \inst|row_debounce:0:debounce_keys|count[9]~39\ : std_logic;
SIGNAL \inst|row_debounce:0:debounce_keys|count[10]~40_combout\ : std_logic;
SIGNAL \inst|row_debounce:0:debounce_keys|count[10]~41\ : std_logic;
SIGNAL \inst|row_debounce:0:debounce_keys|count[11]~42_combout\ : std_logic;
SIGNAL \inst|row_debounce:0:debounce_keys|count[11]~43\ : std_logic;
SIGNAL \inst|row_debounce:0:debounce_keys|count[12]~44_combout\ : std_logic;
SIGNAL \inst|row_debounce:0:debounce_keys|count[12]~45\ : std_logic;
SIGNAL \inst|row_debounce:0:debounce_keys|count[13]~46_combout\ : std_logic;
SIGNAL \inst|row_debounce:0:debounce_keys|count[13]~47\ : std_logic;
SIGNAL \inst|row_debounce:0:debounce_keys|count[14]~48_combout\ : std_logic;
SIGNAL \inst|row_debounce:0:debounce_keys|count[14]~49\ : std_logic;
SIGNAL \inst|row_debounce:0:debounce_keys|count[15]~50_combout\ : std_logic;
SIGNAL \inst|row_debounce:0:debounce_keys|count[15]~51\ : std_logic;
SIGNAL \inst|row_debounce:0:debounce_keys|count[16]~52_combout\ : std_logic;
SIGNAL \inst|row_debounce:0:debounce_keys|result~3_combout\ : std_logic;
SIGNAL \inst|row_debounce:0:debounce_keys|count[16]~53\ : std_logic;
SIGNAL \inst|row_debounce:0:debounce_keys|count[17]~54_combout\ : std_logic;
SIGNAL \inst|row_debounce:0:debounce_keys|count[17]~55\ : std_logic;
SIGNAL \inst|row_debounce:0:debounce_keys|count[18]~56_combout\ : std_logic;
SIGNAL \inst|row_debounce:0:debounce_keys|result~1_combout\ : std_logic;
SIGNAL \inst|row_debounce:0:debounce_keys|result~0_combout\ : std_logic;
SIGNAL \inst|row_debounce:0:debounce_keys|result~2_combout\ : std_logic;
SIGNAL \inst|row_debounce:0:debounce_keys|result~4_combout\ : std_logic;
SIGNAL \inst|row_debounce:0:debounce_keys|result~5_combout\ : std_logic;
SIGNAL \inst|row_debounce:0:debounce_keys|result~q\ : std_logic;
SIGNAL \inst|Mux9~0_combout\ : std_logic;
SIGNAL \inst|row_debounce:9:debounce_keys|count[0]~19_combout\ : std_logic;
SIGNAL \inst|row_debounce:9:debounce_keys|counter_set~combout\ : std_logic;
SIGNAL \inst|row_debounce:9:debounce_keys|count[18]~31_combout\ : std_logic;
SIGNAL \inst|row_debounce:9:debounce_keys|count[0]~20\ : std_logic;
SIGNAL \inst|row_debounce:9:debounce_keys|count[1]~21_combout\ : std_logic;
SIGNAL \inst|row_debounce:9:debounce_keys|count[1]~22\ : std_logic;
SIGNAL \inst|row_debounce:9:debounce_keys|count[2]~23_combout\ : std_logic;
SIGNAL \inst|row_debounce:9:debounce_keys|count[2]~24\ : std_logic;
SIGNAL \inst|row_debounce:9:debounce_keys|count[3]~25_combout\ : std_logic;
SIGNAL \inst|row_debounce:9:debounce_keys|count[3]~26\ : std_logic;
SIGNAL \inst|row_debounce:9:debounce_keys|count[4]~27_combout\ : std_logic;
SIGNAL \inst|row_debounce:9:debounce_keys|count[4]~28\ : std_logic;
SIGNAL \inst|row_debounce:9:debounce_keys|count[5]~29_combout\ : std_logic;
SIGNAL \inst|row_debounce:9:debounce_keys|count[5]~30\ : std_logic;
SIGNAL \inst|row_debounce:9:debounce_keys|count[6]~32_combout\ : std_logic;
SIGNAL \inst|row_debounce:9:debounce_keys|count[6]~33\ : std_logic;
SIGNAL \inst|row_debounce:9:debounce_keys|count[7]~34_combout\ : std_logic;
SIGNAL \inst|row_debounce:9:debounce_keys|count[7]~35\ : std_logic;
SIGNAL \inst|row_debounce:9:debounce_keys|count[8]~36_combout\ : std_logic;
SIGNAL \inst|row_debounce:9:debounce_keys|count[8]~37\ : std_logic;
SIGNAL \inst|row_debounce:9:debounce_keys|count[9]~38_combout\ : std_logic;
SIGNAL \inst|row_debounce:9:debounce_keys|count[9]~39\ : std_logic;
SIGNAL \inst|row_debounce:9:debounce_keys|count[10]~40_combout\ : std_logic;
SIGNAL \inst|row_debounce:9:debounce_keys|count[10]~41\ : std_logic;
SIGNAL \inst|row_debounce:9:debounce_keys|count[11]~42_combout\ : std_logic;
SIGNAL \inst|row_debounce:9:debounce_keys|count[11]~43\ : std_logic;
SIGNAL \inst|row_debounce:9:debounce_keys|count[12]~44_combout\ : std_logic;
SIGNAL \inst|row_debounce:9:debounce_keys|count[12]~45\ : std_logic;
SIGNAL \inst|row_debounce:9:debounce_keys|count[13]~46_combout\ : std_logic;
SIGNAL \inst|row_debounce:9:debounce_keys|count[13]~47\ : std_logic;
SIGNAL \inst|row_debounce:9:debounce_keys|count[14]~48_combout\ : std_logic;
SIGNAL \inst|row_debounce:9:debounce_keys|count[14]~49\ : std_logic;
SIGNAL \inst|row_debounce:9:debounce_keys|count[15]~50_combout\ : std_logic;
SIGNAL \inst|row_debounce:9:debounce_keys|count[15]~51\ : std_logic;
SIGNAL \inst|row_debounce:9:debounce_keys|count[16]~52_combout\ : std_logic;
SIGNAL \inst|row_debounce:9:debounce_keys|result~3_combout\ : std_logic;
SIGNAL \inst|row_debounce:9:debounce_keys|count[16]~53\ : std_logic;
SIGNAL \inst|row_debounce:9:debounce_keys|count[17]~54_combout\ : std_logic;
SIGNAL \inst|row_debounce:9:debounce_keys|result~0_combout\ : std_logic;
SIGNAL \inst|row_debounce:9:debounce_keys|result~1_combout\ : std_logic;
SIGNAL \inst|row_debounce:9:debounce_keys|result~2_combout\ : std_logic;
SIGNAL \inst|row_debounce:9:debounce_keys|count[17]~55\ : std_logic;
SIGNAL \inst|row_debounce:9:debounce_keys|count[18]~56_combout\ : std_logic;
SIGNAL \inst|row_debounce:9:debounce_keys|result~4_combout\ : std_logic;
SIGNAL \inst|row_debounce:9:debounce_keys|result~5_combout\ : std_logic;
SIGNAL \inst|row_debounce:9:debounce_keys|result~q\ : std_logic;
SIGNAL \inst|Equal8~1_combout\ : std_logic;
SIGNAL \inst|Mux11~0_combout\ : std_logic;
SIGNAL \inst|row_debounce:11:debounce_keys|flipflops[0]~feeder_combout\ : std_logic;
SIGNAL \inst|row_debounce:11:debounce_keys|count[0]~19_combout\ : std_logic;
SIGNAL \inst|row_debounce:11:debounce_keys|counter_set~combout\ : std_logic;
SIGNAL \inst|row_debounce:11:debounce_keys|count[18]~31_combout\ : std_logic;
SIGNAL \inst|row_debounce:11:debounce_keys|count[0]~20\ : std_logic;
SIGNAL \inst|row_debounce:11:debounce_keys|count[1]~21_combout\ : std_logic;
SIGNAL \inst|row_debounce:11:debounce_keys|count[1]~22\ : std_logic;
SIGNAL \inst|row_debounce:11:debounce_keys|count[2]~23_combout\ : std_logic;
SIGNAL \inst|row_debounce:11:debounce_keys|count[2]~24\ : std_logic;
SIGNAL \inst|row_debounce:11:debounce_keys|count[3]~25_combout\ : std_logic;
SIGNAL \inst|row_debounce:11:debounce_keys|count[3]~26\ : std_logic;
SIGNAL \inst|row_debounce:11:debounce_keys|count[4]~27_combout\ : std_logic;
SIGNAL \inst|row_debounce:11:debounce_keys|count[4]~28\ : std_logic;
SIGNAL \inst|row_debounce:11:debounce_keys|count[5]~29_combout\ : std_logic;
SIGNAL \inst|row_debounce:11:debounce_keys|count[5]~30\ : std_logic;
SIGNAL \inst|row_debounce:11:debounce_keys|count[6]~32_combout\ : std_logic;
SIGNAL \inst|row_debounce:11:debounce_keys|count[6]~33\ : std_logic;
SIGNAL \inst|row_debounce:11:debounce_keys|count[7]~34_combout\ : std_logic;
SIGNAL \inst|row_debounce:11:debounce_keys|count[7]~35\ : std_logic;
SIGNAL \inst|row_debounce:11:debounce_keys|count[8]~36_combout\ : std_logic;
SIGNAL \inst|row_debounce:11:debounce_keys|count[8]~37\ : std_logic;
SIGNAL \inst|row_debounce:11:debounce_keys|count[9]~38_combout\ : std_logic;
SIGNAL \inst|row_debounce:11:debounce_keys|count[9]~39\ : std_logic;
SIGNAL \inst|row_debounce:11:debounce_keys|count[10]~40_combout\ : std_logic;
SIGNAL \inst|row_debounce:11:debounce_keys|count[10]~41\ : std_logic;
SIGNAL \inst|row_debounce:11:debounce_keys|count[11]~42_combout\ : std_logic;
SIGNAL \inst|row_debounce:11:debounce_keys|count[11]~43\ : std_logic;
SIGNAL \inst|row_debounce:11:debounce_keys|count[12]~44_combout\ : std_logic;
SIGNAL \inst|row_debounce:11:debounce_keys|count[12]~45\ : std_logic;
SIGNAL \inst|row_debounce:11:debounce_keys|count[13]~46_combout\ : std_logic;
SIGNAL \inst|row_debounce:11:debounce_keys|count[13]~47\ : std_logic;
SIGNAL \inst|row_debounce:11:debounce_keys|count[14]~48_combout\ : std_logic;
SIGNAL \inst|row_debounce:11:debounce_keys|count[14]~49\ : std_logic;
SIGNAL \inst|row_debounce:11:debounce_keys|count[15]~50_combout\ : std_logic;
SIGNAL \inst|row_debounce:11:debounce_keys|count[15]~51\ : std_logic;
SIGNAL \inst|row_debounce:11:debounce_keys|count[16]~52_combout\ : std_logic;
SIGNAL \inst|row_debounce:11:debounce_keys|result~3_combout\ : std_logic;
SIGNAL \inst|row_debounce:11:debounce_keys|count[16]~53\ : std_logic;
SIGNAL \inst|row_debounce:11:debounce_keys|count[17]~54_combout\ : std_logic;
SIGNAL \inst|row_debounce:11:debounce_keys|count[17]~55\ : std_logic;
SIGNAL \inst|row_debounce:11:debounce_keys|count[18]~56_combout\ : std_logic;
SIGNAL \inst|row_debounce:11:debounce_keys|result~1_combout\ : std_logic;
SIGNAL \inst|row_debounce:11:debounce_keys|result~0_combout\ : std_logic;
SIGNAL \inst|row_debounce:11:debounce_keys|result~2_combout\ : std_logic;
SIGNAL \inst|row_debounce:11:debounce_keys|result~4_combout\ : std_logic;
SIGNAL \inst|row_debounce:11:debounce_keys|result~5_combout\ : std_logic;
SIGNAL \inst|row_debounce:11:debounce_keys|result~q\ : std_logic;
SIGNAL \inst|Mux10~0_combout\ : std_logic;
SIGNAL \inst|Mux10~1_combout\ : std_logic;
SIGNAL \inst|row_debounce:10:debounce_keys|flipflops[0]~feeder_combout\ : std_logic;
SIGNAL \inst|row_debounce:10:debounce_keys|flipflops[1]~feeder_combout\ : std_logic;
SIGNAL \inst|row_debounce:10:debounce_keys|count[0]~19_combout\ : std_logic;
SIGNAL \inst|row_debounce:10:debounce_keys|counter_set~combout\ : std_logic;
SIGNAL \inst|row_debounce:10:debounce_keys|count[18]~31_combout\ : std_logic;
SIGNAL \inst|row_debounce:10:debounce_keys|count[0]~20\ : std_logic;
SIGNAL \inst|row_debounce:10:debounce_keys|count[1]~21_combout\ : std_logic;
SIGNAL \inst|row_debounce:10:debounce_keys|count[1]~22\ : std_logic;
SIGNAL \inst|row_debounce:10:debounce_keys|count[2]~23_combout\ : std_logic;
SIGNAL \inst|row_debounce:10:debounce_keys|count[2]~24\ : std_logic;
SIGNAL \inst|row_debounce:10:debounce_keys|count[3]~25_combout\ : std_logic;
SIGNAL \inst|row_debounce:10:debounce_keys|count[3]~26\ : std_logic;
SIGNAL \inst|row_debounce:10:debounce_keys|count[4]~27_combout\ : std_logic;
SIGNAL \inst|row_debounce:10:debounce_keys|count[4]~28\ : std_logic;
SIGNAL \inst|row_debounce:10:debounce_keys|count[5]~29_combout\ : std_logic;
SIGNAL \inst|row_debounce:10:debounce_keys|count[5]~30\ : std_logic;
SIGNAL \inst|row_debounce:10:debounce_keys|count[6]~32_combout\ : std_logic;
SIGNAL \inst|row_debounce:10:debounce_keys|count[6]~33\ : std_logic;
SIGNAL \inst|row_debounce:10:debounce_keys|count[7]~34_combout\ : std_logic;
SIGNAL \inst|row_debounce:10:debounce_keys|count[7]~35\ : std_logic;
SIGNAL \inst|row_debounce:10:debounce_keys|count[8]~36_combout\ : std_logic;
SIGNAL \inst|row_debounce:10:debounce_keys|count[8]~37\ : std_logic;
SIGNAL \inst|row_debounce:10:debounce_keys|count[9]~38_combout\ : std_logic;
SIGNAL \inst|row_debounce:10:debounce_keys|count[9]~39\ : std_logic;
SIGNAL \inst|row_debounce:10:debounce_keys|count[10]~40_combout\ : std_logic;
SIGNAL \inst|row_debounce:10:debounce_keys|count[10]~41\ : std_logic;
SIGNAL \inst|row_debounce:10:debounce_keys|count[11]~42_combout\ : std_logic;
SIGNAL \inst|row_debounce:10:debounce_keys|count[11]~43\ : std_logic;
SIGNAL \inst|row_debounce:10:debounce_keys|count[12]~44_combout\ : std_logic;
SIGNAL \inst|row_debounce:10:debounce_keys|count[12]~45\ : std_logic;
SIGNAL \inst|row_debounce:10:debounce_keys|count[13]~46_combout\ : std_logic;
SIGNAL \inst|row_debounce:10:debounce_keys|count[13]~47\ : std_logic;
SIGNAL \inst|row_debounce:10:debounce_keys|count[14]~48_combout\ : std_logic;
SIGNAL \inst|row_debounce:10:debounce_keys|count[14]~49\ : std_logic;
SIGNAL \inst|row_debounce:10:debounce_keys|count[15]~50_combout\ : std_logic;
SIGNAL \inst|row_debounce:10:debounce_keys|count[15]~51\ : std_logic;
SIGNAL \inst|row_debounce:10:debounce_keys|count[16]~52_combout\ : std_logic;
SIGNAL \inst|row_debounce:10:debounce_keys|result~3_combout\ : std_logic;
SIGNAL \inst|row_debounce:10:debounce_keys|count[16]~53\ : std_logic;
SIGNAL \inst|row_debounce:10:debounce_keys|count[17]~54_combout\ : std_logic;
SIGNAL \inst|row_debounce:10:debounce_keys|count[17]~55\ : std_logic;
SIGNAL \inst|row_debounce:10:debounce_keys|count[18]~56_combout\ : std_logic;
SIGNAL \inst|row_debounce:10:debounce_keys|result~1_combout\ : std_logic;
SIGNAL \inst|row_debounce:10:debounce_keys|result~0_combout\ : std_logic;
SIGNAL \inst|row_debounce:10:debounce_keys|result~2_combout\ : std_logic;
SIGNAL \inst|row_debounce:10:debounce_keys|result~4_combout\ : std_logic;
SIGNAL \inst|row_debounce:10:debounce_keys|result~5_combout\ : std_logic;
SIGNAL \inst|row_debounce:10:debounce_keys|result~q\ : std_logic;
SIGNAL \inst|Mux12~0_combout\ : std_logic;
SIGNAL \inst|row_debounce:12:debounce_keys|flipflops[0]~feeder_combout\ : std_logic;
SIGNAL \inst|row_debounce:12:debounce_keys|count[0]~19_combout\ : std_logic;
SIGNAL \inst|row_debounce:12:debounce_keys|counter_set~combout\ : std_logic;
SIGNAL \inst|row_debounce:12:debounce_keys|count[18]~31_combout\ : std_logic;
SIGNAL \inst|row_debounce:12:debounce_keys|count[0]~20\ : std_logic;
SIGNAL \inst|row_debounce:12:debounce_keys|count[1]~21_combout\ : std_logic;
SIGNAL \inst|row_debounce:12:debounce_keys|count[1]~22\ : std_logic;
SIGNAL \inst|row_debounce:12:debounce_keys|count[2]~23_combout\ : std_logic;
SIGNAL \inst|row_debounce:12:debounce_keys|count[2]~24\ : std_logic;
SIGNAL \inst|row_debounce:12:debounce_keys|count[3]~25_combout\ : std_logic;
SIGNAL \inst|row_debounce:12:debounce_keys|count[3]~26\ : std_logic;
SIGNAL \inst|row_debounce:12:debounce_keys|count[4]~27_combout\ : std_logic;
SIGNAL \inst|row_debounce:12:debounce_keys|count[4]~28\ : std_logic;
SIGNAL \inst|row_debounce:12:debounce_keys|count[5]~29_combout\ : std_logic;
SIGNAL \inst|row_debounce:12:debounce_keys|count[5]~30\ : std_logic;
SIGNAL \inst|row_debounce:12:debounce_keys|count[6]~32_combout\ : std_logic;
SIGNAL \inst|row_debounce:12:debounce_keys|count[6]~33\ : std_logic;
SIGNAL \inst|row_debounce:12:debounce_keys|count[7]~34_combout\ : std_logic;
SIGNAL \inst|row_debounce:12:debounce_keys|count[7]~35\ : std_logic;
SIGNAL \inst|row_debounce:12:debounce_keys|count[8]~36_combout\ : std_logic;
SIGNAL \inst|row_debounce:12:debounce_keys|count[8]~37\ : std_logic;
SIGNAL \inst|row_debounce:12:debounce_keys|count[9]~38_combout\ : std_logic;
SIGNAL \inst|row_debounce:12:debounce_keys|count[9]~39\ : std_logic;
SIGNAL \inst|row_debounce:12:debounce_keys|count[10]~40_combout\ : std_logic;
SIGNAL \inst|row_debounce:12:debounce_keys|count[10]~41\ : std_logic;
SIGNAL \inst|row_debounce:12:debounce_keys|count[11]~42_combout\ : std_logic;
SIGNAL \inst|row_debounce:12:debounce_keys|count[11]~43\ : std_logic;
SIGNAL \inst|row_debounce:12:debounce_keys|count[12]~44_combout\ : std_logic;
SIGNAL \inst|row_debounce:12:debounce_keys|count[12]~45\ : std_logic;
SIGNAL \inst|row_debounce:12:debounce_keys|count[13]~46_combout\ : std_logic;
SIGNAL \inst|row_debounce:12:debounce_keys|count[13]~47\ : std_logic;
SIGNAL \inst|row_debounce:12:debounce_keys|count[14]~48_combout\ : std_logic;
SIGNAL \inst|row_debounce:12:debounce_keys|count[14]~49\ : std_logic;
SIGNAL \inst|row_debounce:12:debounce_keys|count[15]~50_combout\ : std_logic;
SIGNAL \inst|row_debounce:12:debounce_keys|count[15]~51\ : std_logic;
SIGNAL \inst|row_debounce:12:debounce_keys|count[16]~52_combout\ : std_logic;
SIGNAL \inst|row_debounce:12:debounce_keys|result~3_combout\ : std_logic;
SIGNAL \inst|row_debounce:12:debounce_keys|count[16]~53\ : std_logic;
SIGNAL \inst|row_debounce:12:debounce_keys|count[17]~54_combout\ : std_logic;
SIGNAL \inst|row_debounce:12:debounce_keys|count[17]~55\ : std_logic;
SIGNAL \inst|row_debounce:12:debounce_keys|count[18]~56_combout\ : std_logic;
SIGNAL \inst|row_debounce:12:debounce_keys|result~0_combout\ : std_logic;
SIGNAL \inst|row_debounce:12:debounce_keys|result~1_combout\ : std_logic;
SIGNAL \inst|row_debounce:12:debounce_keys|result~2_combout\ : std_logic;
SIGNAL \inst|row_debounce:12:debounce_keys|result~4_combout\ : std_logic;
SIGNAL \inst|row_debounce:12:debounce_keys|result~5_combout\ : std_logic;
SIGNAL \inst|row_debounce:12:debounce_keys|result~q\ : std_logic;
SIGNAL \inst|Mux13~0_combout\ : std_logic;
SIGNAL \inst|row_debounce:13:debounce_keys|flipflops[0]~feeder_combout\ : std_logic;
SIGNAL \inst|row_debounce:13:debounce_keys|flipflops[1]~feeder_combout\ : std_logic;
SIGNAL \inst|row_debounce:13:debounce_keys|count[0]~19_combout\ : std_logic;
SIGNAL \inst|row_debounce:13:debounce_keys|counter_set~combout\ : std_logic;
SIGNAL \inst|row_debounce:13:debounce_keys|count[18]~31_combout\ : std_logic;
SIGNAL \inst|row_debounce:13:debounce_keys|count[0]~20\ : std_logic;
SIGNAL \inst|row_debounce:13:debounce_keys|count[1]~21_combout\ : std_logic;
SIGNAL \inst|row_debounce:13:debounce_keys|count[1]~22\ : std_logic;
SIGNAL \inst|row_debounce:13:debounce_keys|count[2]~23_combout\ : std_logic;
SIGNAL \inst|row_debounce:13:debounce_keys|count[2]~24\ : std_logic;
SIGNAL \inst|row_debounce:13:debounce_keys|count[3]~25_combout\ : std_logic;
SIGNAL \inst|row_debounce:13:debounce_keys|count[3]~26\ : std_logic;
SIGNAL \inst|row_debounce:13:debounce_keys|count[4]~27_combout\ : std_logic;
SIGNAL \inst|row_debounce:13:debounce_keys|count[4]~28\ : std_logic;
SIGNAL \inst|row_debounce:13:debounce_keys|count[5]~29_combout\ : std_logic;
SIGNAL \inst|row_debounce:13:debounce_keys|count[5]~30\ : std_logic;
SIGNAL \inst|row_debounce:13:debounce_keys|count[6]~32_combout\ : std_logic;
SIGNAL \inst|row_debounce:13:debounce_keys|count[6]~33\ : std_logic;
SIGNAL \inst|row_debounce:13:debounce_keys|count[7]~34_combout\ : std_logic;
SIGNAL \inst|row_debounce:13:debounce_keys|count[7]~35\ : std_logic;
SIGNAL \inst|row_debounce:13:debounce_keys|count[8]~36_combout\ : std_logic;
SIGNAL \inst|row_debounce:13:debounce_keys|count[8]~37\ : std_logic;
SIGNAL \inst|row_debounce:13:debounce_keys|count[9]~38_combout\ : std_logic;
SIGNAL \inst|row_debounce:13:debounce_keys|count[9]~39\ : std_logic;
SIGNAL \inst|row_debounce:13:debounce_keys|count[10]~40_combout\ : std_logic;
SIGNAL \inst|row_debounce:13:debounce_keys|count[10]~41\ : std_logic;
SIGNAL \inst|row_debounce:13:debounce_keys|count[11]~42_combout\ : std_logic;
SIGNAL \inst|row_debounce:13:debounce_keys|count[11]~43\ : std_logic;
SIGNAL \inst|row_debounce:13:debounce_keys|count[12]~44_combout\ : std_logic;
SIGNAL \inst|row_debounce:13:debounce_keys|count[12]~45\ : std_logic;
SIGNAL \inst|row_debounce:13:debounce_keys|count[13]~46_combout\ : std_logic;
SIGNAL \inst|row_debounce:13:debounce_keys|count[13]~47\ : std_logic;
SIGNAL \inst|row_debounce:13:debounce_keys|count[14]~48_combout\ : std_logic;
SIGNAL \inst|row_debounce:13:debounce_keys|count[14]~49\ : std_logic;
SIGNAL \inst|row_debounce:13:debounce_keys|count[15]~50_combout\ : std_logic;
SIGNAL \inst|row_debounce:13:debounce_keys|count[15]~51\ : std_logic;
SIGNAL \inst|row_debounce:13:debounce_keys|count[16]~52_combout\ : std_logic;
SIGNAL \inst|row_debounce:13:debounce_keys|result~3_combout\ : std_logic;
SIGNAL \inst|row_debounce:13:debounce_keys|count[16]~53\ : std_logic;
SIGNAL \inst|row_debounce:13:debounce_keys|count[17]~54_combout\ : std_logic;
SIGNAL \inst|row_debounce:13:debounce_keys|count[17]~55\ : std_logic;
SIGNAL \inst|row_debounce:13:debounce_keys|count[18]~56_combout\ : std_logic;
SIGNAL \inst|row_debounce:13:debounce_keys|result~0_combout\ : std_logic;
SIGNAL \inst|row_debounce:13:debounce_keys|result~1_combout\ : std_logic;
SIGNAL \inst|row_debounce:13:debounce_keys|result~2_combout\ : std_logic;
SIGNAL \inst|row_debounce:13:debounce_keys|result~4_combout\ : std_logic;
SIGNAL \inst|row_debounce:13:debounce_keys|result~5_combout\ : std_logic;
SIGNAL \inst|row_debounce:13:debounce_keys|result~q\ : std_logic;
SIGNAL \inst|Equal6~0_combout\ : std_logic;
SIGNAL \inst|Equal8~2_combout\ : std_logic;
SIGNAL \inst|Equal12~0_combout\ : std_logic;
SIGNAL \inst|row_debounce:5:debounce_keys|count[0]~19_combout\ : std_logic;
SIGNAL \inst|Mux5~0_combout\ : std_logic;
SIGNAL \inst|Mux5~1_combout\ : std_logic;
SIGNAL \inst|row_debounce:5:debounce_keys|flipflops[0]~feeder_combout\ : std_logic;
SIGNAL \inst|row_debounce:5:debounce_keys|flipflops[1]~feeder_combout\ : std_logic;
SIGNAL \inst|row_debounce:5:debounce_keys|counter_set~combout\ : std_logic;
SIGNAL \inst|row_debounce:5:debounce_keys|count[18]~31_combout\ : std_logic;
SIGNAL \inst|row_debounce:5:debounce_keys|count[0]~20\ : std_logic;
SIGNAL \inst|row_debounce:5:debounce_keys|count[1]~21_combout\ : std_logic;
SIGNAL \inst|row_debounce:5:debounce_keys|count[1]~22\ : std_logic;
SIGNAL \inst|row_debounce:5:debounce_keys|count[2]~23_combout\ : std_logic;
SIGNAL \inst|row_debounce:5:debounce_keys|count[2]~24\ : std_logic;
SIGNAL \inst|row_debounce:5:debounce_keys|count[3]~25_combout\ : std_logic;
SIGNAL \inst|row_debounce:5:debounce_keys|count[3]~26\ : std_logic;
SIGNAL \inst|row_debounce:5:debounce_keys|count[4]~27_combout\ : std_logic;
SIGNAL \inst|row_debounce:5:debounce_keys|count[4]~28\ : std_logic;
SIGNAL \inst|row_debounce:5:debounce_keys|count[5]~29_combout\ : std_logic;
SIGNAL \inst|row_debounce:5:debounce_keys|count[5]~30\ : std_logic;
SIGNAL \inst|row_debounce:5:debounce_keys|count[6]~32_combout\ : std_logic;
SIGNAL \inst|row_debounce:5:debounce_keys|count[6]~33\ : std_logic;
SIGNAL \inst|row_debounce:5:debounce_keys|count[7]~34_combout\ : std_logic;
SIGNAL \inst|row_debounce:5:debounce_keys|count[7]~35\ : std_logic;
SIGNAL \inst|row_debounce:5:debounce_keys|count[8]~36_combout\ : std_logic;
SIGNAL \inst|row_debounce:5:debounce_keys|count[8]~37\ : std_logic;
SIGNAL \inst|row_debounce:5:debounce_keys|count[9]~38_combout\ : std_logic;
SIGNAL \inst|row_debounce:5:debounce_keys|count[9]~39\ : std_logic;
SIGNAL \inst|row_debounce:5:debounce_keys|count[10]~40_combout\ : std_logic;
SIGNAL \inst|row_debounce:5:debounce_keys|count[10]~41\ : std_logic;
SIGNAL \inst|row_debounce:5:debounce_keys|count[11]~42_combout\ : std_logic;
SIGNAL \inst|row_debounce:5:debounce_keys|count[11]~43\ : std_logic;
SIGNAL \inst|row_debounce:5:debounce_keys|count[12]~44_combout\ : std_logic;
SIGNAL \inst|row_debounce:5:debounce_keys|count[12]~45\ : std_logic;
SIGNAL \inst|row_debounce:5:debounce_keys|count[13]~46_combout\ : std_logic;
SIGNAL \inst|row_debounce:5:debounce_keys|count[13]~47\ : std_logic;
SIGNAL \inst|row_debounce:5:debounce_keys|count[14]~48_combout\ : std_logic;
SIGNAL \inst|row_debounce:5:debounce_keys|count[14]~49\ : std_logic;
SIGNAL \inst|row_debounce:5:debounce_keys|count[15]~50_combout\ : std_logic;
SIGNAL \inst|row_debounce:5:debounce_keys|count[15]~51\ : std_logic;
SIGNAL \inst|row_debounce:5:debounce_keys|count[16]~52_combout\ : std_logic;
SIGNAL \inst|row_debounce:5:debounce_keys|result~3_combout\ : std_logic;
SIGNAL \inst|row_debounce:5:debounce_keys|count[16]~53\ : std_logic;
SIGNAL \inst|row_debounce:5:debounce_keys|count[17]~54_combout\ : std_logic;
SIGNAL \inst|row_debounce:5:debounce_keys|result~0_combout\ : std_logic;
SIGNAL \inst|row_debounce:5:debounce_keys|result~1_combout\ : std_logic;
SIGNAL \inst|row_debounce:5:debounce_keys|result~2_combout\ : std_logic;
SIGNAL \inst|row_debounce:5:debounce_keys|count[17]~55\ : std_logic;
SIGNAL \inst|row_debounce:5:debounce_keys|count[18]~56_combout\ : std_logic;
SIGNAL \inst|row_debounce:5:debounce_keys|result~4_combout\ : std_logic;
SIGNAL \inst|row_debounce:5:debounce_keys|result~5_combout\ : std_logic;
SIGNAL \inst|row_debounce:5:debounce_keys|result~q\ : std_logic;
SIGNAL \inst|Equal13~0_combout\ : std_logic;
SIGNAL \inst|Equal11~0_combout\ : std_logic;
SIGNAL \inst|Equal11~1_combout\ : std_logic;
SIGNAL \inst|Equal8~0_combout\ : std_logic;
SIGNAL \inst|Equal0~1_combout\ : std_logic;
SIGNAL \inst|Equal0~2_combout\ : std_logic;
SIGNAL \inst|Equal7~0_combout\ : std_logic;
SIGNAL \inst|WideOr0~0_combout\ : std_logic;
SIGNAL \inst|WideOr0~1_combout\ : std_logic;
SIGNAL \inst|WideOr0~2_combout\ : std_logic;
SIGNAL \inst|WideOr0~3_combout\ : std_logic;
SIGNAL \inst|WideOr0~combout\ : std_logic;
SIGNAL \inst2|aux[3]~feeder_combout\ : std_logic;
SIGNAL \inst|Equal0~0_combout\ : std_logic;
SIGNAL \inst|Equal15~0_combout\ : std_logic;
SIGNAL \inst|Equal15~1_combout\ : std_logic;
SIGNAL \inst2|cont~4_combout\ : std_logic;
SIGNAL \inst2|deb[0]~18_combout\ : std_logic;
SIGNAL \inst2|deb[0]~19\ : std_logic;
SIGNAL \inst2|deb[1]~22_combout\ : std_logic;
SIGNAL \inst2|Add0~0_combout\ : std_logic;
SIGNAL \inst2|tot~2_combout\ : std_logic;
SIGNAL \inst2|Add0~1\ : std_logic;
SIGNAL \inst2|Add0~2_combout\ : std_logic;
SIGNAL \inst2|tot~0_combout\ : std_logic;
SIGNAL \inst2|Add0~3\ : std_logic;
SIGNAL \inst2|Add0~4_combout\ : std_logic;
SIGNAL \inst2|tot~1_combout\ : std_logic;
SIGNAL \inst2|Add0~5\ : std_logic;
SIGNAL \inst2|Add0~6_combout\ : std_logic;
SIGNAL \inst2|Add0~7\ : std_logic;
SIGNAL \inst2|Add0~8_combout\ : std_logic;
SIGNAL \inst2|tot~3_combout\ : std_logic;
SIGNAL \inst2|Add0~9\ : std_logic;
SIGNAL \inst2|Add0~10_combout\ : std_logic;
SIGNAL \inst2|Add0~11\ : std_logic;
SIGNAL \inst2|Add0~12_combout\ : std_logic;
SIGNAL \inst2|Add0~13\ : std_logic;
SIGNAL \inst2|Add0~14_combout\ : std_logic;
SIGNAL \inst2|tot~4_combout\ : std_logic;
SIGNAL \inst2|Add0~15\ : std_logic;
SIGNAL \inst2|Add0~16_combout\ : std_logic;
SIGNAL \inst2|Add0~17\ : std_logic;
SIGNAL \inst2|Add0~18_combout\ : std_logic;
SIGNAL \inst2|Add0~19\ : std_logic;
SIGNAL \inst2|Add0~20_combout\ : std_logic;
SIGNAL \inst2|Add0~21\ : std_logic;
SIGNAL \inst2|Add0~22_combout\ : std_logic;
SIGNAL \inst2|Add0~23\ : std_logic;
SIGNAL \inst2|Add0~24_combout\ : std_logic;
SIGNAL \inst2|Add0~25\ : std_logic;
SIGNAL \inst2|Add0~26_combout\ : std_logic;
SIGNAL \inst2|Add0~27\ : std_logic;
SIGNAL \inst2|Add0~28_combout\ : std_logic;
SIGNAL \inst2|Add0~29\ : std_logic;
SIGNAL \inst2|Add0~30_combout\ : std_logic;
SIGNAL \inst2|Add0~31\ : std_logic;
SIGNAL \inst2|Add0~32_combout\ : std_logic;
SIGNAL \inst2|Add0~33\ : std_logic;
SIGNAL \inst2|Add0~34_combout\ : std_logic;
SIGNAL \inst2|Add0~35\ : std_logic;
SIGNAL \inst2|Add0~36_combout\ : std_logic;
SIGNAL \inst2|Add0~37\ : std_logic;
SIGNAL \inst2|Add0~38_combout\ : std_logic;
SIGNAL \inst2|Add0~39\ : std_logic;
SIGNAL \inst2|Add0~40_combout\ : std_logic;
SIGNAL \inst2|Add0~41\ : std_logic;
SIGNAL \inst2|Add0~42_combout\ : std_logic;
SIGNAL \inst2|Add0~43\ : std_logic;
SIGNAL \inst2|Add0~44_combout\ : std_logic;
SIGNAL \inst2|Add0~45\ : std_logic;
SIGNAL \inst2|Add0~46_combout\ : std_logic;
SIGNAL \inst2|Add0~47\ : std_logic;
SIGNAL \inst2|Add0~48_combout\ : std_logic;
SIGNAL \inst2|Add0~49\ : std_logic;
SIGNAL \inst2|Add0~50_combout\ : std_logic;
SIGNAL \inst2|Equal3~7_combout\ : std_logic;
SIGNAL \inst2|Equal3~5_combout\ : std_logic;
SIGNAL \inst2|Equal3~6_combout\ : std_logic;
SIGNAL \inst2|Equal3~3_combout\ : std_logic;
SIGNAL \inst2|Equal3~1_combout\ : std_logic;
SIGNAL \inst2|Equal3~2_combout\ : std_logic;
SIGNAL \inst2|Equal3~0_combout\ : std_logic;
SIGNAL \inst2|Equal3~4_combout\ : std_logic;
SIGNAL \inst2|Equal3~8_combout\ : std_logic;
SIGNAL \inst2|deb[7]~21_combout\ : std_logic;
SIGNAL \inst2|deb[1]~23\ : std_logic;
SIGNAL \inst2|deb[2]~24_combout\ : std_logic;
SIGNAL \inst2|deb[2]~25\ : std_logic;
SIGNAL \inst2|deb[3]~26_combout\ : std_logic;
SIGNAL \inst2|deb[3]~27\ : std_logic;
SIGNAL \inst2|deb[4]~28_combout\ : std_logic;
SIGNAL \inst2|deb[4]~29\ : std_logic;
SIGNAL \inst2|deb[5]~30_combout\ : std_logic;
SIGNAL \inst2|deb[5]~31\ : std_logic;
SIGNAL \inst2|deb[6]~32_combout\ : std_logic;
SIGNAL \inst2|deb[6]~33\ : std_logic;
SIGNAL \inst2|deb[7]~34_combout\ : std_logic;
SIGNAL \inst2|deb[7]~35\ : std_logic;
SIGNAL \inst2|deb[8]~36_combout\ : std_logic;
SIGNAL \inst2|deb[8]~37\ : std_logic;
SIGNAL \inst2|deb[9]~38_combout\ : std_logic;
SIGNAL \inst2|deb[9]~39\ : std_logic;
SIGNAL \inst2|deb[10]~40_combout\ : std_logic;
SIGNAL \inst2|deb[10]~41\ : std_logic;
SIGNAL \inst2|deb[11]~42_combout\ : std_logic;
SIGNAL \inst2|deb[11]~43\ : std_logic;
SIGNAL \inst2|deb[12]~44_combout\ : std_logic;
SIGNAL \inst2|deb[12]~45\ : std_logic;
SIGNAL \inst2|deb[13]~46_combout\ : std_logic;
SIGNAL \inst2|deb~15_combout\ : std_logic;
SIGNAL \inst2|deb~14_combout\ : std_logic;
SIGNAL \inst2|deb~16_combout\ : std_logic;
SIGNAL \inst2|deb~17_combout\ : std_logic;
SIGNAL \inst2|deb~20_combout\ : std_logic;
SIGNAL \inst|Equal4~0_combout\ : std_logic;
SIGNAL \inst|WideOr3~1_combout\ : std_logic;
SIGNAL \inst|Equal6~1_combout\ : std_logic;
SIGNAL \inst|Equal0~3_combout\ : std_logic;
SIGNAL \inst|WideOr3~0_combout\ : std_logic;
SIGNAL \inst|WideOr3~2_combout\ : std_logic;
SIGNAL \inst|Equal2~0_combout\ : std_logic;
SIGNAL \inst|Equal10~0_combout\ : std_logic;
SIGNAL \inst|Equal14~0_combout\ : std_logic;
SIGNAL \inst|Equal5~0_combout\ : std_logic;
SIGNAL \inst|WideOr1~3_combout\ : std_logic;
SIGNAL \inst|Equal1~0_combout\ : std_logic;
SIGNAL \inst|Equal9~0_combout\ : std_logic;
SIGNAL \inst|WideOr2~0_combout\ : std_logic;
SIGNAL \inst|WideOr2~1_combout\ : std_logic;
SIGNAL \inst|Equal12~1_combout\ : std_logic;
SIGNAL \inst|Equal11~2_combout\ : std_logic;
SIGNAL \inst|WideOr1~0_combout\ : std_logic;
SIGNAL \inst|WideOr1~1_combout\ : std_logic;
SIGNAL \inst|WideOr1~2_combout\ : std_logic;
SIGNAL \inst|WideOr1~4_combout\ : std_logic;
SIGNAL \inst2|process_0~0_combout\ : std_logic;
SIGNAL \inst2|process_0~1_combout\ : std_logic;
SIGNAL \inst2|cont~3_combout\ : std_logic;
SIGNAL \inst2|cont~2_combout\ : std_logic;
SIGNAL \inst2|aux[3]~9_combout\ : std_logic;
SIGNAL \inst2|aux[3]~10_combout\ : std_logic;
SIGNAL \inst2|aux~17_combout\ : std_logic;
SIGNAL \inst2|aux[7]~1_combout\ : std_logic;
SIGNAL \inst2|aux[7]~2_combout\ : std_logic;
SIGNAL \inst2|aux~18_combout\ : std_logic;
SIGNAL \inst2|aux[11]~4_combout\ : std_logic;
SIGNAL \inst2|aux[11]~5_combout\ : std_logic;
SIGNAL \inst2|aux~19_combout\ : std_logic;
SIGNAL \inst2|aux[15]~7_combout\ : std_logic;
SIGNAL \inst2|aux[15]~8_combout\ : std_logic;
SIGNAL \inst1|Mux4~0_combout\ : std_logic;
SIGNAL \inst1|Mux4~1_combout\ : std_logic;
SIGNAL \inst2|aux[2]~feeder_combout\ : std_logic;
SIGNAL \inst2|aux~14_combout\ : std_logic;
SIGNAL \inst2|aux~15_combout\ : std_logic;
SIGNAL \inst2|aux~16_combout\ : std_logic;
SIGNAL \inst1|Mux5~0_combout\ : std_logic;
SIGNAL \inst1|Mux5~1_combout\ : std_logic;
SIGNAL \inst2|aux[1]~feeder_combout\ : std_logic;
SIGNAL \inst2|aux~12_combout\ : std_logic;
SIGNAL \inst2|aux~11_combout\ : std_logic;
SIGNAL \inst2|aux~13_combout\ : std_logic;
SIGNAL \inst1|Mux6~0_combout\ : std_logic;
SIGNAL \inst1|Mux6~1_combout\ : std_logic;
SIGNAL \inst2|aux[0]~feeder_combout\ : std_logic;
SIGNAL \inst2|aux~0_combout\ : std_logic;
SIGNAL \inst2|aux~3_combout\ : std_logic;
SIGNAL \inst2|aux~6_combout\ : std_logic;
SIGNAL \inst1|Mux7~0_combout\ : std_logic;
SIGNAL \inst1|Mux7~1_combout\ : std_logic;
SIGNAL \inst1|Mux14~0_combout\ : std_logic;
SIGNAL \inst1|Mux13~0_combout\ : std_logic;
SIGNAL \inst1|Mux12~0_combout\ : std_logic;
SIGNAL \inst1|Mux11~0_combout\ : std_logic;
SIGNAL \inst1|Mux10~0_combout\ : std_logic;
SIGNAL \inst1|Mux9~0_combout\ : std_logic;
SIGNAL \inst1|Mux8~0_combout\ : std_logic;
SIGNAL \inst|row_debounce:13:debounce_keys|flipflops\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst4|cuenta\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \inst2|deb\ : std_logic_vector(13 DOWNTO 0);
SIGNAL \inst|row_debounce:4:debounce_keys|count\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \inst2|aux\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst|row_debounce:2:debounce_keys|count\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \inst|row_debounce:3:debounce_keys|count\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \inst|keys_double\ : std_logic_vector(0 TO 15);
SIGNAL \inst|row_debounce:5:debounce_keys|count\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \inst|row_debounce:14:debounce_keys|count\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \inst|row_debounce:6:debounce_keys|count\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \inst2|tot\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \inst|row_debounce:7:debounce_keys|count\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \inst|row_debounce:1:debounce_keys|count\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \inst|row_debounce:15:debounce_keys|count\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \inst|row_debounce:8:debounce_keys|count\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \inst|row_debounce:0:debounce_keys|count\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \inst|row_debounce:12:debounce_keys|count\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \inst|row_debounce:10:debounce_keys|count\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \inst|row_debounce:11:debounce_keys|count\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \inst|row_debounce:13:debounce_keys|count\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \inst|row_debounce:9:debounce_keys|count\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \inst1|arreglo\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|tmp\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|columns\ : std_logic_vector(1 TO 4);
SIGNAL \inst1|contador\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst|row_debounce:11:debounce_keys|flipflops\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst|count\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst2|cont\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst|row_debounce:4:debounce_keys|flipflops\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst|row_debounce:2:debounce_keys|flipflops\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst|row_debounce:3:debounce_keys|flipflops\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst|row_debounce:5:debounce_keys|flipflops\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst|row_debounce:6:debounce_keys|flipflops\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst|row_debounce:7:debounce_keys|flipflops\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst|row_debounce:1:debounce_keys|flipflops\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst|row_debounce:14:debounce_keys|flipflops\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst|row_debounce:15:debounce_keys|flipflops\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst|row_debounce:8:debounce_keys|flipflops\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst|row_debounce:12:debounce_keys|flipflops\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst|row_debounce:0:debounce_keys|flipflops\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst|row_debounce:10:debounce_keys|flipflops\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst|row_debounce:9:debounce_keys|flipflops\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst|keys_stored\ : std_logic_vector(0 TO 15);
SIGNAL \inst|keys_int\ : std_logic_vector(0 TO 15);
SIGNAL \inst|rows_int\ : std_logic_vector(1 TO 4);
SIGNAL \inst|ALT_INV_columns\ : std_logic_vector(4 DOWNTO 1);
SIGNAL \inst1|ALT_INV_Mux8~0_combout\ : std_logic;

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
ww_rw <= rw;
ww_pop <= pop;
ww_rows <= rows;
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
columns <= ww_columns;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst4|salida~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst4|salida~q\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\inst|ALT_INV_columns\(4) <= NOT \inst|columns\(4);
\inst|ALT_INV_columns\(3) <= NOT \inst|columns\(3);
\inst|ALT_INV_columns\(2) <= NOT \inst|columns\(2);
\inst|ALT_INV_columns\(1) <= NOT \inst|columns\(1);
\inst1|ALT_INV_Mux8~0_combout\ <= NOT \inst1|Mux8~0_combout\;
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
	i => \inst1|arreglo\(0),
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
	i => \inst1|arreglo\(1),
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
	i => \inst1|arreglo\(2),
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
	i => \inst1|arreglo\(3),
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
	i => \inst1|Mux14~0_combout\,
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
	i => \inst1|Mux13~0_combout\,
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
	i => \inst1|Mux12~0_combout\,
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
	i => \inst1|Mux11~0_combout\,
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
	i => \inst1|Mux10~0_combout\,
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
	i => \inst1|Mux9~0_combout\,
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
	i => \inst1|ALT_INV_Mux8~0_combout\,
	devoe => ww_devoe,
	o => \g~output_o\);

-- Location: IOOBUF_X28_Y24_N16
\columns[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_columns\(1),
	devoe => ww_devoe,
	o => \columns[1]~output_o\);

-- Location: IOOBUF_X28_Y24_N23
\columns[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_columns\(2),
	devoe => ww_devoe,
	o => \columns[2]~output_o\);

-- Location: IOOBUF_X23_Y24_N2
\columns[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_columns\(3),
	devoe => ww_devoe,
	o => \columns[3]~output_o\);

-- Location: IOOBUF_X23_Y24_N9
\columns[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_columns\(4),
	devoe => ww_devoe,
	o => \columns[4]~output_o\);

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

-- Location: LCCOMB_X31_Y9_N6
\inst4|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add0~0_combout\ = \inst4|cuenta\(0) $ (VCC)
-- \inst4|Add0~1\ = CARRY(\inst4|cuenta\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|cuenta\(0),
	datad => VCC,
	combout => \inst4|Add0~0_combout\,
	cout => \inst4|Add0~1\);

-- Location: LCCOMB_X31_Y9_N4
\inst4|cuenta~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|cuenta~5_combout\ = (\inst4|Add0~0_combout\ & !\inst4|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Add0~0_combout\,
	datad => \inst4|Equal0~8_combout\,
	combout => \inst4|cuenta~5_combout\);

-- Location: IOIBUF_X34_Y2_N22
\rst~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: FF_X31_Y9_N5
\inst4|cuenta[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst4|cuenta~5_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|cuenta\(0));

-- Location: LCCOMB_X31_Y9_N8
\inst4|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add0~2_combout\ = (\inst4|cuenta\(1) & (!\inst4|Add0~1\)) # (!\inst4|cuenta\(1) & ((\inst4|Add0~1\) # (GND)))
-- \inst4|Add0~3\ = CARRY((!\inst4|Add0~1\) # (!\inst4|cuenta\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|cuenta\(1),
	datad => VCC,
	cin => \inst4|Add0~1\,
	combout => \inst4|Add0~2_combout\,
	cout => \inst4|Add0~3\);

-- Location: FF_X31_Y9_N9
\inst4|cuenta[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst4|Add0~2_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|cuenta\(1));

-- Location: LCCOMB_X30_Y9_N22
\inst4|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Equal0~7_combout\ = (!\inst4|cuenta\(0) & !\inst4|cuenta\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|cuenta\(0),
	datad => \inst4|cuenta\(1),
	combout => \inst4|Equal0~7_combout\);

-- Location: LCCOMB_X31_Y9_N10
\inst4|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add0~4_combout\ = (\inst4|cuenta\(2) & (\inst4|Add0~3\ $ (GND))) # (!\inst4|cuenta\(2) & (!\inst4|Add0~3\ & VCC))
-- \inst4|Add0~5\ = CARRY((\inst4|cuenta\(2) & !\inst4|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|cuenta\(2),
	datad => VCC,
	cin => \inst4|Add0~3\,
	combout => \inst4|Add0~4_combout\,
	cout => \inst4|Add0~5\);

-- Location: FF_X31_Y9_N11
\inst4|cuenta[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst4|Add0~4_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|cuenta\(2));

-- Location: LCCOMB_X31_Y9_N12
\inst4|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add0~6_combout\ = (\inst4|cuenta\(3) & (!\inst4|Add0~5\)) # (!\inst4|cuenta\(3) & ((\inst4|Add0~5\) # (GND)))
-- \inst4|Add0~7\ = CARRY((!\inst4|Add0~5\) # (!\inst4|cuenta\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|cuenta\(3),
	datad => VCC,
	cin => \inst4|Add0~5\,
	combout => \inst4|Add0~6_combout\,
	cout => \inst4|Add0~7\);

-- Location: FF_X31_Y9_N13
\inst4|cuenta[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst4|Add0~6_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|cuenta\(3));

-- Location: LCCOMB_X31_Y9_N14
\inst4|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add0~8_combout\ = (\inst4|cuenta\(4) & (\inst4|Add0~7\ $ (GND))) # (!\inst4|cuenta\(4) & (!\inst4|Add0~7\ & VCC))
-- \inst4|Add0~9\ = CARRY((\inst4|cuenta\(4) & !\inst4|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|cuenta\(4),
	datad => VCC,
	cin => \inst4|Add0~7\,
	combout => \inst4|Add0~8_combout\,
	cout => \inst4|Add0~9\);

-- Location: FF_X31_Y9_N15
\inst4|cuenta[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst4|Add0~8_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|cuenta\(4));

-- Location: LCCOMB_X31_Y9_N16
\inst4|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add0~10_combout\ = (\inst4|cuenta\(5) & (!\inst4|Add0~9\)) # (!\inst4|cuenta\(5) & ((\inst4|Add0~9\) # (GND)))
-- \inst4|Add0~11\ = CARRY((!\inst4|Add0~9\) # (!\inst4|cuenta\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|cuenta\(5),
	datad => VCC,
	cin => \inst4|Add0~9\,
	combout => \inst4|Add0~10_combout\,
	cout => \inst4|Add0~11\);

-- Location: FF_X31_Y9_N17
\inst4|cuenta[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst4|Add0~10_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|cuenta\(5));

-- Location: LCCOMB_X31_Y9_N18
\inst4|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add0~12_combout\ = (\inst4|cuenta\(6) & (\inst4|Add0~11\ $ (GND))) # (!\inst4|cuenta\(6) & (!\inst4|Add0~11\ & VCC))
-- \inst4|Add0~13\ = CARRY((\inst4|cuenta\(6) & !\inst4|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|cuenta\(6),
	datad => VCC,
	cin => \inst4|Add0~11\,
	combout => \inst4|Add0~12_combout\,
	cout => \inst4|Add0~13\);

-- Location: FF_X31_Y9_N19
\inst4|cuenta[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst4|Add0~12_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|cuenta\(6));

-- Location: LCCOMB_X31_Y9_N20
\inst4|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add0~14_combout\ = (\inst4|cuenta\(7) & (!\inst4|Add0~13\)) # (!\inst4|cuenta\(7) & ((\inst4|Add0~13\) # (GND)))
-- \inst4|Add0~15\ = CARRY((!\inst4|Add0~13\) # (!\inst4|cuenta\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|cuenta\(7),
	datad => VCC,
	cin => \inst4|Add0~13\,
	combout => \inst4|Add0~14_combout\,
	cout => \inst4|Add0~15\);

-- Location: LCCOMB_X31_Y9_N2
\inst4|cuenta~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|cuenta~4_combout\ = (\inst4|Add0~14_combout\ & !\inst4|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|Add0~14_combout\,
	datad => \inst4|Equal0~8_combout\,
	combout => \inst4|cuenta~4_combout\);

-- Location: FF_X31_Y9_N3
\inst4|cuenta[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst4|cuenta~4_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|cuenta\(7));

-- Location: LCCOMB_X31_Y9_N22
\inst4|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add0~16_combout\ = (\inst4|cuenta\(8) & (\inst4|Add0~15\ $ (GND))) # (!\inst4|cuenta\(8) & (!\inst4|Add0~15\ & VCC))
-- \inst4|Add0~17\ = CARRY((\inst4|cuenta\(8) & !\inst4|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|cuenta\(8),
	datad => VCC,
	cin => \inst4|Add0~15\,
	combout => \inst4|Add0~16_combout\,
	cout => \inst4|Add0~17\);

-- Location: FF_X31_Y9_N23
\inst4|cuenta[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst4|Add0~16_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|cuenta\(8));

-- Location: LCCOMB_X31_Y9_N24
\inst4|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add0~18_combout\ = (\inst4|cuenta\(9) & (!\inst4|Add0~17\)) # (!\inst4|cuenta\(9) & ((\inst4|Add0~17\) # (GND)))
-- \inst4|Add0~19\ = CARRY((!\inst4|Add0~17\) # (!\inst4|cuenta\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|cuenta\(9),
	datad => VCC,
	cin => \inst4|Add0~17\,
	combout => \inst4|Add0~18_combout\,
	cout => \inst4|Add0~19\);

-- Location: FF_X31_Y9_N25
\inst4|cuenta[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst4|Add0~18_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|cuenta\(9));

-- Location: LCCOMB_X30_Y9_N18
\inst4|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Equal0~5_combout\ = (\inst4|cuenta\(7) & (!\inst4|cuenta\(8) & (!\inst4|cuenta\(9) & !\inst4|cuenta\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|cuenta\(7),
	datab => \inst4|cuenta\(8),
	datac => \inst4|cuenta\(9),
	datad => \inst4|cuenta\(6),
	combout => \inst4|Equal0~5_combout\);

-- Location: LCCOMB_X30_Y9_N30
\inst4|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Equal0~6_combout\ = (!\inst4|cuenta\(3) & (!\inst4|cuenta\(4) & (!\inst4|cuenta\(2) & !\inst4|cuenta\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|cuenta\(3),
	datab => \inst4|cuenta\(4),
	datac => \inst4|cuenta\(2),
	datad => \inst4|cuenta\(5),
	combout => \inst4|Equal0~6_combout\);

-- Location: LCCOMB_X31_Y9_N26
\inst4|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add0~20_combout\ = (\inst4|cuenta\(10) & (\inst4|Add0~19\ $ (GND))) # (!\inst4|cuenta\(10) & (!\inst4|Add0~19\ & VCC))
-- \inst4|Add0~21\ = CARRY((\inst4|cuenta\(10) & !\inst4|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|cuenta\(10),
	datad => VCC,
	cin => \inst4|Add0~19\,
	combout => \inst4|Add0~20_combout\,
	cout => \inst4|Add0~21\);

-- Location: FF_X31_Y9_N27
\inst4|cuenta[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst4|Add0~20_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|cuenta\(10));

-- Location: LCCOMB_X31_Y9_N28
\inst4|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add0~22_combout\ = (\inst4|cuenta\(11) & (!\inst4|Add0~21\)) # (!\inst4|cuenta\(11) & ((\inst4|Add0~21\) # (GND)))
-- \inst4|Add0~23\ = CARRY((!\inst4|Add0~21\) # (!\inst4|cuenta\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|cuenta\(11),
	datad => VCC,
	cin => \inst4|Add0~21\,
	combout => \inst4|Add0~22_combout\,
	cout => \inst4|Add0~23\);

-- Location: LCCOMB_X30_Y9_N16
\inst4|cuenta~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|cuenta~3_combout\ = (!\inst4|Equal0~8_combout\ & \inst4|Add0~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Equal0~8_combout\,
	datac => \inst4|Add0~22_combout\,
	combout => \inst4|cuenta~3_combout\);

-- Location: FF_X30_Y9_N17
\inst4|cuenta[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst4|cuenta~3_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|cuenta\(11));

-- Location: LCCOMB_X31_Y9_N30
\inst4|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add0~24_combout\ = (\inst4|cuenta\(12) & (\inst4|Add0~23\ $ (GND))) # (!\inst4|cuenta\(12) & (!\inst4|Add0~23\ & VCC))
-- \inst4|Add0~25\ = CARRY((\inst4|cuenta\(12) & !\inst4|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|cuenta\(12),
	datad => VCC,
	cin => \inst4|Add0~23\,
	combout => \inst4|Add0~24_combout\,
	cout => \inst4|Add0~25\);

-- Location: LCCOMB_X31_Y9_N0
\inst4|cuenta~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|cuenta~2_combout\ = (\inst4|Add0~24_combout\ & !\inst4|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|Add0~24_combout\,
	datad => \inst4|Equal0~8_combout\,
	combout => \inst4|cuenta~2_combout\);

-- Location: FF_X31_Y9_N1
\inst4|cuenta[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst4|cuenta~2_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|cuenta\(12));

-- Location: LCCOMB_X31_Y8_N0
\inst4|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add0~26_combout\ = (\inst4|cuenta\(13) & (!\inst4|Add0~25\)) # (!\inst4|cuenta\(13) & ((\inst4|Add0~25\) # (GND)))
-- \inst4|Add0~27\ = CARRY((!\inst4|Add0~25\) # (!\inst4|cuenta\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|cuenta\(13),
	datad => VCC,
	cin => \inst4|Add0~25\,
	combout => \inst4|Add0~26_combout\,
	cout => \inst4|Add0~27\);

-- Location: LCCOMB_X30_Y9_N26
\inst4|cuenta~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|cuenta~1_combout\ = (!\inst4|Equal0~8_combout\ & \inst4|Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Equal0~8_combout\,
	datad => \inst4|Add0~26_combout\,
	combout => \inst4|cuenta~1_combout\);

-- Location: FF_X30_Y9_N27
\inst4|cuenta[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst4|cuenta~1_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|cuenta\(13));

-- Location: LCCOMB_X31_Y8_N2
\inst4|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add0~28_combout\ = (\inst4|cuenta\(14) & (\inst4|Add0~27\ $ (GND))) # (!\inst4|cuenta\(14) & (!\inst4|Add0~27\ & VCC))
-- \inst4|Add0~29\ = CARRY((\inst4|cuenta\(14) & !\inst4|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|cuenta\(14),
	datad => VCC,
	cin => \inst4|Add0~27\,
	combout => \inst4|Add0~28_combout\,
	cout => \inst4|Add0~29\);

-- Location: FF_X31_Y8_N3
\inst4|cuenta[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst4|Add0~28_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|cuenta\(14));

-- Location: LCCOMB_X31_Y8_N4
\inst4|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add0~30_combout\ = (\inst4|cuenta\(15) & (!\inst4|Add0~29\)) # (!\inst4|cuenta\(15) & ((\inst4|Add0~29\) # (GND)))
-- \inst4|Add0~31\ = CARRY((!\inst4|Add0~29\) # (!\inst4|cuenta\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|cuenta\(15),
	datad => VCC,
	cin => \inst4|Add0~29\,
	combout => \inst4|Add0~30_combout\,
	cout => \inst4|Add0~31\);

-- Location: FF_X31_Y8_N5
\inst4|cuenta[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst4|Add0~30_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|cuenta\(15));

-- Location: LCCOMB_X31_Y8_N6
\inst4|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add0~32_combout\ = (\inst4|cuenta\(16) & (\inst4|Add0~31\ $ (GND))) # (!\inst4|cuenta\(16) & (!\inst4|Add0~31\ & VCC))
-- \inst4|Add0~33\ = CARRY((\inst4|cuenta\(16) & !\inst4|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|cuenta\(16),
	datad => VCC,
	cin => \inst4|Add0~31\,
	combout => \inst4|Add0~32_combout\,
	cout => \inst4|Add0~33\);

-- Location: LCCOMB_X31_Y8_N28
\inst4|cuenta~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|cuenta~0_combout\ = (!\inst4|Equal0~8_combout\ & \inst4|Add0~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|Equal0~8_combout\,
	datad => \inst4|Add0~32_combout\,
	combout => \inst4|cuenta~0_combout\);

-- Location: FF_X31_Y8_N29
\inst4|cuenta[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst4|cuenta~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|cuenta\(16));

-- Location: LCCOMB_X31_Y8_N8
\inst4|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add0~34_combout\ = (\inst4|cuenta\(17) & (!\inst4|Add0~33\)) # (!\inst4|cuenta\(17) & ((\inst4|Add0~33\) # (GND)))
-- \inst4|Add0~35\ = CARRY((!\inst4|Add0~33\) # (!\inst4|cuenta\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|cuenta\(17),
	datad => VCC,
	cin => \inst4|Add0~33\,
	combout => \inst4|Add0~34_combout\,
	cout => \inst4|Add0~35\);

-- Location: FF_X31_Y8_N9
\inst4|cuenta[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst4|Add0~34_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|cuenta\(17));

-- Location: LCCOMB_X31_Y8_N30
\inst4|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Equal0~2_combout\ = (!\inst4|cuenta\(14) & (!\inst4|cuenta\(17) & (!\inst4|cuenta\(15) & \inst4|cuenta\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|cuenta\(14),
	datab => \inst4|cuenta\(17),
	datac => \inst4|cuenta\(15),
	datad => \inst4|cuenta\(16),
	combout => \inst4|Equal0~2_combout\);

-- Location: LCCOMB_X30_Y9_N14
\inst4|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Equal0~3_combout\ = (\inst4|cuenta\(13) & (\inst4|cuenta\(11) & (\inst4|cuenta\(12) & !\inst4|cuenta\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|cuenta\(13),
	datab => \inst4|cuenta\(11),
	datac => \inst4|cuenta\(12),
	datad => \inst4|cuenta\(10),
	combout => \inst4|Equal0~3_combout\);

-- Location: LCCOMB_X31_Y8_N10
\inst4|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add0~36_combout\ = (\inst4|cuenta\(18) & (\inst4|Add0~35\ $ (GND))) # (!\inst4|cuenta\(18) & (!\inst4|Add0~35\ & VCC))
-- \inst4|Add0~37\ = CARRY((\inst4|cuenta\(18) & !\inst4|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|cuenta\(18),
	datad => VCC,
	cin => \inst4|Add0~35\,
	combout => \inst4|Add0~36_combout\,
	cout => \inst4|Add0~37\);

-- Location: FF_X31_Y8_N11
\inst4|cuenta[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst4|Add0~36_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|cuenta\(18));

-- Location: LCCOMB_X31_Y8_N12
\inst4|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add0~38_combout\ = (\inst4|cuenta\(19) & (!\inst4|Add0~37\)) # (!\inst4|cuenta\(19) & ((\inst4|Add0~37\) # (GND)))
-- \inst4|Add0~39\ = CARRY((!\inst4|Add0~37\) # (!\inst4|cuenta\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|cuenta\(19),
	datad => VCC,
	cin => \inst4|Add0~37\,
	combout => \inst4|Add0~38_combout\,
	cout => \inst4|Add0~39\);

-- Location: FF_X31_Y8_N13
\inst4|cuenta[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst4|Add0~38_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|cuenta\(19));

-- Location: LCCOMB_X31_Y8_N14
\inst4|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add0~40_combout\ = (\inst4|cuenta\(20) & (\inst4|Add0~39\ $ (GND))) # (!\inst4|cuenta\(20) & (!\inst4|Add0~39\ & VCC))
-- \inst4|Add0~41\ = CARRY((\inst4|cuenta\(20) & !\inst4|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|cuenta\(20),
	datad => VCC,
	cin => \inst4|Add0~39\,
	combout => \inst4|Add0~40_combout\,
	cout => \inst4|Add0~41\);

-- Location: FF_X31_Y8_N15
\inst4|cuenta[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst4|Add0~40_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|cuenta\(20));

-- Location: LCCOMB_X31_Y8_N16
\inst4|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add0~42_combout\ = (\inst4|cuenta\(21) & (!\inst4|Add0~41\)) # (!\inst4|cuenta\(21) & ((\inst4|Add0~41\) # (GND)))
-- \inst4|Add0~43\ = CARRY((!\inst4|Add0~41\) # (!\inst4|cuenta\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|cuenta\(21),
	datad => VCC,
	cin => \inst4|Add0~41\,
	combout => \inst4|Add0~42_combout\,
	cout => \inst4|Add0~43\);

-- Location: FF_X31_Y8_N17
\inst4|cuenta[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst4|Add0~42_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|cuenta\(21));

-- Location: LCCOMB_X31_Y8_N26
\inst4|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Equal0~1_combout\ = (!\inst4|cuenta\(18) & (!\inst4|cuenta\(21) & (!\inst4|cuenta\(20) & !\inst4|cuenta\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|cuenta\(18),
	datab => \inst4|cuenta\(21),
	datac => \inst4|cuenta\(20),
	datad => \inst4|cuenta\(19),
	combout => \inst4|Equal0~1_combout\);

-- Location: LCCOMB_X31_Y8_N18
\inst4|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add0~44_combout\ = (\inst4|cuenta\(22) & (\inst4|Add0~43\ $ (GND))) # (!\inst4|cuenta\(22) & (!\inst4|Add0~43\ & VCC))
-- \inst4|Add0~45\ = CARRY((\inst4|cuenta\(22) & !\inst4|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|cuenta\(22),
	datad => VCC,
	cin => \inst4|Add0~43\,
	combout => \inst4|Add0~44_combout\,
	cout => \inst4|Add0~45\);

-- Location: FF_X31_Y8_N19
\inst4|cuenta[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst4|Add0~44_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|cuenta\(22));

-- Location: LCCOMB_X31_Y8_N20
\inst4|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add0~46_combout\ = (\inst4|cuenta\(23) & (!\inst4|Add0~45\)) # (!\inst4|cuenta\(23) & ((\inst4|Add0~45\) # (GND)))
-- \inst4|Add0~47\ = CARRY((!\inst4|Add0~45\) # (!\inst4|cuenta\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|cuenta\(23),
	datad => VCC,
	cin => \inst4|Add0~45\,
	combout => \inst4|Add0~46_combout\,
	cout => \inst4|Add0~47\);

-- Location: FF_X31_Y8_N21
\inst4|cuenta[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst4|Add0~46_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|cuenta\(23));

-- Location: LCCOMB_X31_Y8_N22
\inst4|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add0~48_combout\ = (\inst4|cuenta\(24) & (\inst4|Add0~47\ $ (GND))) # (!\inst4|cuenta\(24) & (!\inst4|Add0~47\ & VCC))
-- \inst4|Add0~49\ = CARRY((\inst4|cuenta\(24) & !\inst4|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|cuenta\(24),
	datad => VCC,
	cin => \inst4|Add0~47\,
	combout => \inst4|Add0~48_combout\,
	cout => \inst4|Add0~49\);

-- Location: FF_X31_Y8_N23
\inst4|cuenta[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst4|Add0~48_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|cuenta\(24));

-- Location: LCCOMB_X31_Y8_N24
\inst4|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add0~50_combout\ = \inst4|Add0~49\ $ (\inst4|cuenta\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst4|cuenta\(25),
	cin => \inst4|Add0~49\,
	combout => \inst4|Add0~50_combout\);

-- Location: FF_X31_Y8_N25
\inst4|cuenta[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst4|Add0~50_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|cuenta\(25));

-- Location: LCCOMB_X30_Y9_N20
\inst4|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Equal0~0_combout\ = (!\inst4|cuenta\(25) & (!\inst4|cuenta\(22) & (!\inst4|cuenta\(24) & !\inst4|cuenta\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|cuenta\(25),
	datab => \inst4|cuenta\(22),
	datac => \inst4|cuenta\(24),
	datad => \inst4|cuenta\(23),
	combout => \inst4|Equal0~0_combout\);

-- Location: LCCOMB_X30_Y9_N28
\inst4|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Equal0~4_combout\ = (\inst4|Equal0~2_combout\ & (\inst4|Equal0~3_combout\ & (\inst4|Equal0~1_combout\ & \inst4|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Equal0~2_combout\,
	datab => \inst4|Equal0~3_combout\,
	datac => \inst4|Equal0~1_combout\,
	datad => \inst4|Equal0~0_combout\,
	combout => \inst4|Equal0~4_combout\);

-- Location: LCCOMB_X30_Y9_N12
\inst4|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Equal0~8_combout\ = (\inst4|Equal0~7_combout\ & (\inst4|Equal0~5_combout\ & (\inst4|Equal0~6_combout\ & \inst4|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Equal0~7_combout\,
	datab => \inst4|Equal0~5_combout\,
	datac => \inst4|Equal0~6_combout\,
	datad => \inst4|Equal0~4_combout\,
	combout => \inst4|Equal0~8_combout\);

-- Location: LCCOMB_X30_Y9_N10
\inst4|salida~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|salida~0_combout\ = \inst4|salida~q\ $ (\inst4|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|salida~q\,
	datad => \inst4|Equal0~8_combout\,
	combout => \inst4|salida~0_combout\);

-- Location: LCCOMB_X30_Y9_N24
\inst4|salida~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|salida~feeder_combout\ = \inst4|salida~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|salida~0_combout\,
	combout => \inst4|salida~feeder_combout\);

-- Location: FF_X30_Y9_N25
\inst4|salida\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst4|salida~feeder_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|salida~q\);

-- Location: CLKCTRL_G6
\inst4|salida~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst4|salida~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst4|salida~clkctrl_outclk\);

-- Location: LCCOMB_X19_Y3_N24
\inst1|contador[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|contador[0]~1_combout\ = !\inst1|contador\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|contador\(0),
	combout => \inst1|contador[0]~1_combout\);

-- Location: FF_X19_Y3_N25
\inst1|contador[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|salida~clkctrl_outclk\,
	d => \inst1|contador[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|contador\(0));

-- Location: LCCOMB_X19_Y3_N6
\inst1|contador[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|contador[1]~0_combout\ = \inst1|contador\(1) $ (\inst1|contador\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|contador\(1),
	datad => \inst1|contador\(0),
	combout => \inst1|contador[1]~0_combout\);

-- Location: FF_X19_Y3_N7
\inst1|contador[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|salida~clkctrl_outclk\,
	d => \inst1|contador[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|contador\(1));

-- Location: LCCOMB_X19_Y3_N20
\inst1|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux3~0_combout\ = (!\inst1|contador\(1) & !\inst1|contador\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|contador\(1),
	datad => \inst1|contador\(0),
	combout => \inst1|Mux3~0_combout\);

-- Location: FF_X19_Y3_N21
\inst1|arreglo[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|salida~clkctrl_outclk\,
	d => \inst1|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|arreglo\(0));

-- Location: LCCOMB_X19_Y3_N18
\inst1|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux1~0_combout\ = (!\inst1|contador\(1) & \inst1|contador\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|contador\(1),
	datad => \inst1|contador\(0),
	combout => \inst1|Mux1~0_combout\);

-- Location: FF_X19_Y3_N19
\inst1|arreglo[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|salida~clkctrl_outclk\,
	d => \inst1|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|arreglo\(1));

-- Location: LCCOMB_X19_Y3_N12
\inst1|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux1~1_combout\ = (\inst1|contador\(1) & !\inst1|contador\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|contador\(1),
	datad => \inst1|contador\(0),
	combout => \inst1|Mux1~1_combout\);

-- Location: FF_X19_Y3_N13
\inst1|arreglo[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|salida~clkctrl_outclk\,
	d => \inst1|Mux1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|arreglo\(2));

-- Location: LCCOMB_X18_Y3_N28
\inst1|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux1~2_combout\ = (\inst1|contador\(1) & \inst1|contador\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|contador\(1),
	datad => \inst1|contador\(0),
	combout => \inst1|Mux1~2_combout\);

-- Location: FF_X18_Y3_N29
\inst1|arreglo[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|salida~clkctrl_outclk\,
	d => \inst1|Mux1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|arreglo\(3));

-- Location: LCCOMB_X28_Y12_N2
\inst|Mux49~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux49~0_combout\ = (\inst|columns\(2) & (!\inst|columns\(4) & (!\inst|columns\(1) & \inst|columns\(3)))) # (!\inst|columns\(2) & (!\inst|columns\(3) & ((\inst|columns\(4)) # (\inst|columns\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|columns\(4),
	datab => \inst|columns\(1),
	datac => \inst|columns\(2),
	datad => \inst|columns\(3),
	combout => \inst|Mux49~0_combout\);

-- Location: LCCOMB_X29_Y10_N30
\inst|count[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|count[0]~4_combout\ = \inst|count\(0) $ (\rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|count\(0),
	datad => \rst~input_o\,
	combout => \inst|count[0]~4_combout\);

-- Location: FF_X29_Y10_N31
\inst|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|count[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count\(0));

-- Location: LCCOMB_X29_Y10_N12
\inst|count[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|count[1]~3_combout\ = \inst|count\(1) $ (((\inst|count\(0) & \rst~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(0),
	datab => \rst~input_o\,
	datac => \inst|count\(1),
	combout => \inst|count[1]~3_combout\);

-- Location: FF_X29_Y10_N13
\inst|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|count[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count\(1));

-- Location: LCCOMB_X29_Y10_N18
\inst|count[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|count[2]~2_combout\ = \inst|count\(2) $ (((\inst|count\(0) & (\rst~input_o\ & \inst|count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(0),
	datab => \rst~input_o\,
	datac => \inst|count\(2),
	datad => \inst|count\(1),
	combout => \inst|count[2]~2_combout\);

-- Location: FF_X29_Y10_N19
\inst|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|count[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count\(2));

-- Location: LCCOMB_X29_Y10_N10
\inst|count[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|count[3]~0_combout\ = (\inst|count\(1) & (\rst~input_o\ & (\inst|count\(0) & \inst|count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(1),
	datab => \rst~input_o\,
	datac => \inst|count\(0),
	datad => \inst|count\(2),
	combout => \inst|count[3]~0_combout\);

-- Location: LCCOMB_X29_Y10_N28
\inst|count[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|count[3]~1_combout\ = \inst|count\(3) $ (\inst|count[3]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|count\(3),
	datad => \inst|count[3]~0_combout\,
	combout => \inst|count[3]~1_combout\);

-- Location: FF_X29_Y10_N29
\inst|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|count[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count\(3));

-- Location: LCCOMB_X29_Y10_N4
\inst|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan0~0_combout\ = (\inst|count\(1) & (\inst|count\(2) & (\inst|count\(0) & \inst|count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(1),
	datab => \inst|count\(2),
	datac => \inst|count\(0),
	datad => \inst|count\(3),
	combout => \inst|LessThan0~0_combout\);

-- Location: FF_X28_Y12_N3
\inst|columns[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Mux49~0_combout\,
	clrn => \rst~input_o\,
	ena => \inst|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|columns\(2));

-- Location: LCCOMB_X28_Y12_N24
\inst|Mux48~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux48~0_combout\ = (\inst|columns\(1) & (!\inst|columns\(4) & (\inst|columns\(2) $ (\inst|columns\(3))))) # (!\inst|columns\(1) & (((!\inst|columns\(2) & !\inst|columns\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|columns\(4),
	datab => \inst|columns\(2),
	datac => \inst|columns\(1),
	datad => \inst|columns\(3),
	combout => \inst|Mux48~0_combout\);

-- Location: FF_X28_Y12_N25
\inst|columns[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Mux48~0_combout\,
	clrn => \rst~input_o\,
	ena => \inst|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|columns\(1));

-- Location: LCCOMB_X28_Y12_N14
\inst|Mux51~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux51~0_combout\ = (\inst|columns\(2) & (!\inst|columns\(1) & (\inst|columns\(3) $ (\inst|columns\(4))))) # (!\inst|columns\(2) & (\inst|columns\(3) & ((!\inst|columns\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|columns\(3),
	datab => \inst|columns\(1),
	datac => \inst|columns\(4),
	datad => \inst|columns\(2),
	combout => \inst|Mux51~0_combout\);

-- Location: FF_X28_Y12_N15
\inst|columns[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Mux51~0_combout\,
	clrn => \rst~input_o\,
	ena => \inst|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|columns\(4));

-- Location: LCCOMB_X28_Y12_N12
\inst|Mux50~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux50~0_combout\ = (!\inst|columns\(3) & (\inst|columns\(2) $ (((\inst|columns\(4) & \inst|columns\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|columns\(4),
	datab => \inst|columns\(1),
	datac => \inst|columns\(3),
	datad => \inst|columns\(2),
	combout => \inst|Mux50~0_combout\);

-- Location: FF_X28_Y12_N13
\inst|columns[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Mux50~0_combout\,
	clrn => \rst~input_o\,
	ena => \inst|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|columns\(3));

-- Location: LCCOMB_X28_Y12_N20
\inst|Mux40~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux40~0_combout\ = (\inst|columns\(3) & ((\inst|columns\(1)) # ((\inst|columns\(4)) # (!\inst|columns\(2))))) # (!\inst|columns\(3) & ((\inst|columns\(1) & ((\inst|columns\(4)) # (!\inst|columns\(2)))) # (!\inst|columns\(1) & (\inst|columns\(4) $ 
-- (\inst|columns\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|columns\(3),
	datab => \inst|columns\(1),
	datac => \inst|columns\(4),
	datad => \inst|columns\(2),
	combout => \inst|Mux40~0_combout\);

-- Location: LCCOMB_X28_Y12_N18
\inst|keys_double[2]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|keys_double[2]~13_combout\ = (\inst|columns\(2) & ((\inst|columns\(3) & (!\inst|columns\(1) & !\inst|columns\(4))) # (!\inst|columns\(3) & (\inst|columns\(1) $ (\inst|columns\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|columns\(3),
	datab => \inst|columns\(1),
	datac => \inst|columns\(4),
	datad => \inst|columns\(2),
	combout => \inst|keys_double[2]~13_combout\);

-- Location: LCCOMB_X28_Y12_N28
\inst|keys_double[5]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|keys_double[5]~14_combout\ = (\inst|Mux40~0_combout\) # ((\inst|keys_double[2]~13_combout\) # (!\inst|LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Mux40~0_combout\,
	datac => \inst|LessThan0~0_combout\,
	datad => \inst|keys_double[2]~13_combout\,
	combout => \inst|keys_double[5]~14_combout\);

-- Location: LCCOMB_X25_Y11_N2
\inst|keys_double[15]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|keys_double[15]~8_combout\ = (\inst|columns\(2) & (!\inst|Mux40~0_combout\ & \inst|LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|columns\(2),
	datac => \inst|Mux40~0_combout\,
	datad => \inst|LessThan0~0_combout\,
	combout => \inst|keys_double[15]~8_combout\);

-- Location: IOIBUF_X30_Y24_N1
\rows[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rows(1),
	o => \rows[1]~input_o\);

-- Location: FF_X26_Y11_N9
\inst|rows_int[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rows[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|rows_int\(1));

-- Location: LCCOMB_X25_Y11_N24
\inst|Mux18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux18~0_combout\ = (!\inst|rows_int\(1) & \inst|columns\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|rows_int\(1),
	datad => \inst|columns\(2),
	combout => \inst|Mux18~0_combout\);

-- Location: LCCOMB_X28_Y12_N6
\inst|keys_int[8]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|keys_int[8]~1_combout\ = (!\inst|columns\(4) & (!\inst|columns\(1) & (\inst|LessThan0~0_combout\ & !\inst|columns\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|columns\(4),
	datab => \inst|columns\(1),
	datac => \inst|LessThan0~0_combout\,
	datad => \inst|columns\(3),
	combout => \inst|keys_int[8]~1_combout\);

-- Location: FF_X25_Y12_N9
\inst|keys_int[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|Mux18~0_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \inst|keys_int[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|keys_int\(2));

-- Location: LCCOMB_X26_Y10_N16
\inst|keys_double[15]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|keys_double[15]~9_combout\ = (\inst|columns\(1) & (!\inst|columns\(3) & !\inst|columns\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|columns\(1),
	datac => \inst|columns\(3),
	datad => \inst|columns\(4),
	combout => \inst|keys_double[15]~9_combout\);

-- Location: LCCOMB_X26_Y10_N12
\inst|Mux19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux19~0_combout\ = (\inst|columns\(3) & !\inst|rows_int\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|columns\(3),
	datac => \inst|rows_int\(1),
	combout => \inst|Mux19~0_combout\);

-- Location: LCCOMB_X26_Y10_N0
\inst|keys_int[9]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|keys_int[9]~2_combout\ = (!\inst|columns\(1) & (!\inst|columns\(2) & (\inst|LessThan0~0_combout\ & !\inst|columns\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|columns\(1),
	datab => \inst|columns\(2),
	datac => \inst|LessThan0~0_combout\,
	datad => \inst|columns\(4),
	combout => \inst|keys_int[9]~2_combout\);

-- Location: FF_X26_Y10_N13
\inst|keys_int[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Mux19~0_combout\,
	clrn => \rst~input_o\,
	ena => \inst|keys_int[9]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|keys_int\(3));

-- Location: LCCOMB_X25_Y10_N2
\inst|Mux26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux26~0_combout\ = (!\inst|rows_int\(1) & \inst|columns\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|rows_int\(1),
	datad => \inst|columns\(4),
	combout => \inst|Mux26~0_combout\);

-- Location: LCCOMB_X28_Y12_N26
\inst|keys_int[11]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|keys_int[11]~3_combout\ = (!\inst|columns\(3) & (!\inst|columns\(1) & (\inst|LessThan0~0_combout\ & !\inst|columns\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|columns\(3),
	datab => \inst|columns\(1),
	datac => \inst|LessThan0~0_combout\,
	datad => \inst|columns\(2),
	combout => \inst|keys_int[11]~3_combout\);

-- Location: FF_X25_Y10_N3
\inst|keys_int[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Mux26~0_combout\,
	clrn => \rst~input_o\,
	ena => \inst|keys_int[11]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|keys_int\(10));

-- Location: LCCOMB_X26_Y10_N10
\inst|Mux34~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux34~0_combout\ = (\inst|columns\(3) & (\inst|keys_int\(3))) # (!\inst|columns\(3) & ((\inst|keys_int\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|keys_int\(3),
	datac => \inst|columns\(3),
	datad => \inst|keys_int\(10),
	combout => \inst|Mux34~0_combout\);

-- Location: LCCOMB_X28_Y11_N20
\inst|keys_double[15]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|keys_double[15]~10_combout\ = (!\inst|columns\(1) & (\inst|columns\(3) $ (\inst|columns\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|columns\(1),
	datac => \inst|columns\(3),
	datad => \inst|columns\(4),
	combout => \inst|keys_double[15]~10_combout\);

-- Location: LCCOMB_X26_Y12_N14
\inst|Mux17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux17~0_combout\ = (\inst|columns\(1) & !\inst|rows_int\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|columns\(1),
	datac => \inst|rows_int\(1),
	combout => \inst|Mux17~0_combout\);

-- Location: LCCOMB_X28_Y12_N22
\inst|keys_int[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|keys_int[0]~0_combout\ = (!\inst|columns\(4) & (!\inst|columns\(2) & (\inst|LessThan0~0_combout\ & !\inst|columns\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|columns\(4),
	datab => \inst|columns\(2),
	datac => \inst|LessThan0~0_combout\,
	datad => \inst|columns\(3),
	combout => \inst|keys_int[0]~0_combout\);

-- Location: FF_X26_Y12_N15
\inst|keys_int[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Mux17~0_combout\,
	clrn => \rst~input_o\,
	ena => \inst|keys_int[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|keys_int\(1));

-- Location: LCCOMB_X26_Y11_N2
\inst|keys_double[2]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|keys_double[2]~11_combout\ = (\inst|keys_double[15]~9_combout\ & (((!\inst|Mux34~0_combout\ & \inst|keys_double[15]~10_combout\)) # (!\inst|keys_int\(1)))) # (!\inst|keys_double[15]~9_combout\ & (!\inst|Mux34~0_combout\ & 
-- (\inst|keys_double[15]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|keys_double[15]~9_combout\,
	datab => \inst|Mux34~0_combout\,
	datac => \inst|keys_double[15]~10_combout\,
	datad => \inst|keys_int\(1),
	combout => \inst|keys_double[2]~11_combout\);

-- Location: LCCOMB_X26_Y11_N16
\inst|keys_double[2]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|keys_double[2]~12_combout\ = (\inst|keys_double[15]~8_combout\ & (!\inst|keys_int\(2) & (!\inst|rows_int\(1) & \inst|keys_double[2]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|keys_double[15]~8_combout\,
	datab => \inst|keys_int\(2),
	datac => \inst|rows_int\(1),
	datad => \inst|keys_double[2]~11_combout\,
	combout => \inst|keys_double[2]~12_combout\);

-- Location: LCCOMB_X26_Y12_N30
\inst|keys_double[2]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|keys_double[2]~15_combout\ = (\inst|keys_double[2]~12_combout\) # ((\inst|keys_double[5]~14_combout\ & \inst|keys_double\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|keys_double[5]~14_combout\,
	datac => \inst|keys_double\(2),
	datad => \inst|keys_double[2]~12_combout\,
	combout => \inst|keys_double[2]~15_combout\);

-- Location: FF_X26_Y12_N31
\inst|keys_double[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|keys_double[2]~15_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|keys_double\(2));

-- Location: LCCOMB_X26_Y12_N8
\inst|process_1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|process_1~1_combout\ = (\inst|keys_double\(2)) # (\inst|keys_int\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|keys_double\(2),
	datad => \inst|keys_int\(2),
	combout => \inst|process_1~1_combout\);

-- Location: IOIBUF_X28_Y24_N8
\rows[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rows(4),
	o => \rows[4]~input_o\);

-- Location: FF_X28_Y11_N11
\inst|rows_int[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rows[4]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|rows_int\(4));

-- Location: LCCOMB_X25_Y11_N14
\inst|Mux31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux31~0_combout\ = (!\inst|rows_int\(4) & \inst|columns\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|rows_int\(4),
	datad => \inst|columns\(2),
	combout => \inst|Mux31~0_combout\);

-- Location: FF_X25_Y11_N15
\inst|keys_int[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Mux31~0_combout\,
	clrn => \rst~input_o\,
	ena => \inst|keys_int[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|keys_int\(15));

-- Location: LCCOMB_X26_Y10_N22
\inst|keys_double[3]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|keys_double[3]~26_combout\ = (!\inst|columns\(2) & (\inst|columns\(1) $ (\inst|columns\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|columns\(2),
	datac => \inst|columns\(1),
	datad => \inst|columns\(4),
	combout => \inst|keys_double[3]~26_combout\);

-- Location: LCCOMB_X26_Y10_N20
\inst|keys_double[3]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|keys_double[3]~23_combout\ = (\inst|columns\(2) & (!\inst|columns\(1) & !\inst|columns\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|columns\(2),
	datac => \inst|columns\(1),
	datad => \inst|columns\(4),
	combout => \inst|keys_double[3]~23_combout\);

-- Location: IOIBUF_X28_Y24_N1
\rows[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rows(3),
	o => \rows[3]~input_o\);

-- Location: FF_X28_Y11_N17
\inst|rows_int[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rows[3]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|rows_int\(3));

-- Location: LCCOMB_X23_Y11_N16
\inst|Mux25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux25~0_combout\ = (\inst|columns\(3) & !\inst|rows_int\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|columns\(3),
	datac => \inst|rows_int\(3),
	combout => \inst|Mux25~0_combout\);

-- Location: FF_X23_Y11_N17
\inst|keys_int[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Mux25~0_combout\,
	clrn => \rst~input_o\,
	ena => \inst|keys_int[9]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|keys_int\(9));

-- Location: LCCOMB_X28_Y11_N14
\inst|Mux28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux28~0_combout\ = (!\inst|rows_int\(3) & \inst|columns\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|rows_int\(3),
	datad => \inst|columns\(4),
	combout => \inst|Mux28~0_combout\);

-- Location: FF_X28_Y11_N15
\inst|keys_int[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Mux28~0_combout\,
	clrn => \rst~input_o\,
	ena => \inst|keys_int[11]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|keys_int\(12));

-- Location: LCCOMB_X28_Y11_N16
\inst|Mux23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux23~0_combout\ = (\inst|columns\(1) & !\inst|rows_int\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|columns\(1),
	datac => \inst|rows_int\(3),
	combout => \inst|Mux23~0_combout\);

-- Location: FF_X24_Y11_N1
\inst|keys_int[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|Mux23~0_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \inst|keys_int[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|keys_int\(7));

-- Location: LCCOMB_X23_Y11_N14
\inst|keys_double[9]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|keys_double[9]~61_combout\ = (!\inst|rows_int\(3) & ((\inst|columns\(1) & ((!\inst|keys_int\(7)))) # (!\inst|columns\(1) & (!\inst|keys_int\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|rows_int\(3),
	datab => \inst|columns\(1),
	datac => \inst|keys_int\(12),
	datad => \inst|keys_int\(7),
	combout => \inst|keys_double[9]~61_combout\);

-- Location: LCCOMB_X26_Y10_N26
\inst|Mux41~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux41~0_combout\ = (\inst|columns\(1) & ((\inst|columns\(2)) # ((\inst|columns\(4)) # (!\inst|columns\(3))))) # (!\inst|columns\(1) & ((\inst|columns\(2) & ((\inst|columns\(4)) # (!\inst|columns\(3)))) # (!\inst|columns\(2) & (\inst|columns\(3) $ 
-- (\inst|columns\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|columns\(1),
	datab => \inst|columns\(2),
	datac => \inst|columns\(3),
	datad => \inst|columns\(4),
	combout => \inst|Mux41~0_combout\);

-- Location: LCCOMB_X25_Y10_N22
\inst|keys_double[3]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|keys_double[3]~22_combout\ = (\inst|Mux41~0_combout\) # (!\inst|LessThan0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|LessThan0~0_combout\,
	datad => \inst|Mux41~0_combout\,
	combout => \inst|keys_double[3]~22_combout\);

-- Location: LCCOMB_X23_Y11_N20
\inst|keys_double[9]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|keys_double[9]~62_combout\ = (\inst|keys_double\(9)) # ((!\inst|keys_int\(9) & (\inst|keys_double[9]~61_combout\ & !\inst|keys_double[3]~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|keys_double\(9),
	datab => \inst|keys_int\(9),
	datac => \inst|keys_double[9]~61_combout\,
	datad => \inst|keys_double[3]~22_combout\,
	combout => \inst|keys_double[9]~62_combout\);

-- Location: LCCOMB_X25_Y11_N18
\inst|Mux24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux24~0_combout\ = (!\inst|rows_int\(3) & \inst|columns\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|rows_int\(3),
	datad => \inst|columns\(2),
	combout => \inst|Mux24~0_combout\);

-- Location: FF_X25_Y11_N19
\inst|keys_int[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Mux24~0_combout\,
	clrn => \rst~input_o\,
	ena => \inst|keys_int[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|keys_int\(8));

-- Location: LCCOMB_X23_Y11_N10
\inst|keys_double[8]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|keys_double[8]~58_combout\ = (!\inst|rows_int\(3) & !\inst|keys_int\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|rows_int\(3),
	datac => \inst|keys_int\(8),
	combout => \inst|keys_double[8]~58_combout\);

-- Location: LCCOMB_X23_Y11_N12
\inst|keys_double[9]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|keys_double[9]~60_combout\ = (\inst|keys_double\(9)) # ((\inst|keys_double[8]~58_combout\ & (!\inst|keys_int\(9) & !\inst|keys_double[3]~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|keys_double[8]~58_combout\,
	datab => \inst|keys_int\(9),
	datac => \inst|keys_double\(9),
	datad => \inst|keys_double[3]~22_combout\,
	combout => \inst|keys_double[9]~60_combout\);

-- Location: LCCOMB_X23_Y11_N26
\inst|keys_double[9]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|keys_double[9]~63_combout\ = (\inst|keys_double[3]~26_combout\ & ((\inst|keys_double[9]~62_combout\) # ((\inst|keys_double[3]~23_combout\ & \inst|keys_double[9]~60_combout\)))) # (!\inst|keys_double[3]~26_combout\ & (\inst|keys_double[3]~23_combout\ 
-- & ((\inst|keys_double[9]~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|keys_double[3]~26_combout\,
	datab => \inst|keys_double[3]~23_combout\,
	datac => \inst|keys_double[9]~62_combout\,
	datad => \inst|keys_double[9]~60_combout\,
	combout => \inst|keys_double[9]~63_combout\);

-- Location: LCCOMB_X23_Y11_N22
\inst|keys_double[9]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|keys_double[9]~64_combout\ = (\inst|keys_double[9]~63_combout\ & ((\inst|columns\(3)) # ((\inst|keys_double\(9) & \inst|keys_double[3]~22_combout\)))) # (!\inst|keys_double[9]~63_combout\ & (((\inst|keys_double\(9) & 
-- \inst|keys_double[3]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|keys_double[9]~63_combout\,
	datab => \inst|columns\(3),
	datac => \inst|keys_double\(9),
	datad => \inst|keys_double[3]~22_combout\,
	combout => \inst|keys_double[9]~64_combout\);

-- Location: FF_X23_Y11_N23
\inst|keys_double[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|keys_double[9]~64_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|keys_double\(9));

-- Location: LCCOMB_X23_Y11_N8
\inst|process_1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|process_1~7_combout\ = (\inst|keys_double\(9)) # (\inst|keys_int\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|keys_double\(9),
	datad => \inst|keys_int\(9),
	combout => \inst|process_1~7_combout\);

-- Location: LCCOMB_X26_Y10_N28
\inst|Mux43~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux43~0_combout\ = (\inst|columns\(1) & ((\inst|columns\(2)) # ((\inst|columns\(3)) # (!\inst|columns\(4))))) # (!\inst|columns\(1) & ((\inst|columns\(2) & ((\inst|columns\(3)) # (!\inst|columns\(4)))) # (!\inst|columns\(2) & (\inst|columns\(3) $ 
-- (\inst|columns\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|columns\(1),
	datab => \inst|columns\(2),
	datac => \inst|columns\(3),
	datad => \inst|columns\(4),
	combout => \inst|Mux43~0_combout\);

-- Location: LCCOMB_X25_Y10_N0
\inst|keys_double[10]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|keys_double[10]~30_combout\ = (\inst|Mux43~0_combout\) # (!\inst|LessThan0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|LessThan0~0_combout\,
	datad => \inst|Mux43~0_combout\,
	combout => \inst|keys_double[10]~30_combout\);

-- Location: LCCOMB_X25_Y10_N4
\inst|keys_double[13]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|keys_double[13]~36_combout\ = (!\inst|columns\(2) & (\inst|columns\(3) $ (\inst|columns\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|columns\(3),
	datac => \inst|columns\(2),
	datad => \inst|columns\(1),
	combout => \inst|keys_double[13]~36_combout\);

-- Location: LCCOMB_X28_Y11_N30
\inst|keys_double[13]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|keys_double[13]~35_combout\ = (!\inst|columns\(1) & (!\inst|columns\(3) & \inst|columns\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|columns\(1),
	datac => \inst|columns\(3),
	datad => \inst|columns\(2),
	combout => \inst|keys_double[13]~35_combout\);

-- Location: LCCOMB_X23_Y11_N4
\inst|keys_double[12]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|keys_double[12]~76_combout\ = (\inst|keys_double\(12)) # ((!\inst|keys_double[10]~30_combout\ & (!\inst|keys_int\(12) & \inst|keys_double[8]~58_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|keys_double[10]~30_combout\,
	datab => \inst|keys_double\(12),
	datac => \inst|keys_int\(12),
	datad => \inst|keys_double[8]~58_combout\,
	combout => \inst|keys_double[12]~76_combout\);

-- Location: LCCOMB_X23_Y11_N18
\inst|keys_double[12]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|keys_double[12]~77_combout\ = (!\inst|rows_int\(3) & ((\inst|columns\(3) & (!\inst|keys_int\(9))) # (!\inst|columns\(3) & ((!\inst|keys_int\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|rows_int\(3),
	datab => \inst|keys_int\(9),
	datac => \inst|keys_int\(7),
	datad => \inst|columns\(3),
	combout => \inst|keys_double[12]~77_combout\);

-- Location: LCCOMB_X23_Y11_N28
\inst|keys_double[12]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|keys_double[12]~78_combout\ = (\inst|keys_double\(12)) # ((!\inst|keys_double[10]~30_combout\ & (!\inst|keys_int\(12) & \inst|keys_double[12]~77_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|keys_double[10]~30_combout\,
	datab => \inst|keys_double\(12),
	datac => \inst|keys_int\(12),
	datad => \inst|keys_double[12]~77_combout\,
	combout => \inst|keys_double[12]~78_combout\);

-- Location: LCCOMB_X23_Y11_N2
\inst|keys_double[12]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|keys_double[12]~79_combout\ = (\inst|keys_double[13]~36_combout\ & ((\inst|keys_double[12]~78_combout\) # ((\inst|keys_double[13]~35_combout\ & \inst|keys_double[12]~76_combout\)))) # (!\inst|keys_double[13]~36_combout\ & 
-- (\inst|keys_double[13]~35_combout\ & (\inst|keys_double[12]~76_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|keys_double[13]~36_combout\,
	datab => \inst|keys_double[13]~35_combout\,
	datac => \inst|keys_double[12]~76_combout\,
	datad => \inst|keys_double[12]~78_combout\,
	combout => \inst|keys_double[12]~79_combout\);

-- Location: LCCOMB_X23_Y11_N6
\inst|keys_double[12]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|keys_double[12]~80_combout\ = (\inst|keys_double[10]~30_combout\ & ((\inst|keys_double\(12)) # ((\inst|columns\(4) & \inst|keys_double[12]~79_combout\)))) # (!\inst|keys_double[10]~30_combout\ & (\inst|columns\(4) & 
-- ((\inst|keys_double[12]~79_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|keys_double[10]~30_combout\,
	datab => \inst|columns\(4),
	datac => \inst|keys_double\(12),
	datad => \inst|keys_double[12]~79_combout\,
	combout => \inst|keys_double[12]~80_combout\);

-- Location: FF_X23_Y11_N7
\inst|keys_double[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|keys_double[12]~80_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|keys_double\(12));

-- Location: LCCOMB_X24_Y11_N24
\inst|process_1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|process_1~10_combout\ = (\inst|keys_double\(12)) # (\inst|keys_int\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|keys_double\(12),
	datad => \inst|keys_int\(12),
	combout => \inst|process_1~10_combout\);

-- Location: LCCOMB_X25_Y10_N8
\inst|keys_double[10]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|keys_double[10]~68_combout\ = (!\inst|keys_int\(2) & (!\inst|rows_int\(1) & (!\inst|keys_int\(10) & !\inst|keys_double[10]~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|keys_int\(2),
	datab => \inst|rows_int\(1),
	datac => \inst|keys_int\(10),
	datad => \inst|keys_double[10]~30_combout\,
	combout => \inst|keys_double[10]~68_combout\);

-- Location: LCCOMB_X26_Y10_N4
\inst|keys_double[10]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|keys_double[10]~65_combout\ = (!\inst|rows_int\(1) & ((\inst|columns\(3) & ((!\inst|keys_int\(3)))) # (!\inst|columns\(3) & (!\inst|keys_int\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|rows_int\(1),
	datab => \inst|keys_int\(1),
	datac => \inst|columns\(3),
	datad => \inst|keys_int\(3),
	combout => \inst|keys_double[10]~65_combout\);

-- Location: LCCOMB_X26_Y10_N18
\inst|keys_double[10]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|keys_double[10]~66_combout\ = (!\inst|keys_int\(10) & (\inst|LessThan0~0_combout\ & (\inst|keys_double[10]~65_combout\ & !\inst|Mux43~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|keys_int\(10),
	datab => \inst|LessThan0~0_combout\,
	datac => \inst|keys_double[10]~65_combout\,
	datad => \inst|Mux43~0_combout\,
	combout => \inst|keys_double[10]~66_combout\);

-- Location: LCCOMB_X25_Y10_N6
\inst|keys_double[10]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|keys_double[10]~67_combout\ = (\inst|keys_double[13]~36_combout\ & ((\inst|keys_double\(10)) # (\inst|keys_double[10]~66_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|keys_double\(10),
	datab => \inst|keys_double[13]~36_combout\,
	datad => \inst|keys_double[10]~66_combout\,
	combout => \inst|keys_double[10]~67_combout\);

-- Location: LCCOMB_X25_Y10_N18
\inst|keys_double[10]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|keys_double[10]~69_combout\ = (\inst|keys_double[10]~67_combout\) # ((\inst|keys_double[13]~35_combout\ & ((\inst|keys_double\(10)) # (\inst|keys_double[10]~68_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|keys_double\(10),
	datab => \inst|keys_double[13]~35_combout\,
	datac => \inst|keys_double[10]~68_combout\,
	datad => \inst|keys_double[10]~67_combout\,
	combout => \inst|keys_double[10]~69_combout\);

-- Location: LCCOMB_X25_Y11_N30
\inst|keys_double[10]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|keys_double[10]~70_combout\ = (\inst|keys_double[10]~30_combout\ & ((\inst|keys_double\(10)) # ((\inst|columns\(4) & \inst|keys_double[10]~69_combout\)))) # (!\inst|keys_double[10]~30_combout\ & (\inst|columns\(4) & 
-- ((\inst|keys_double[10]~69_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|keys_double[10]~30_combout\,
	datab => \inst|columns\(4),
	datac => \inst|keys_double\(10),
	datad => \inst|keys_double[10]~69_combout\,
	combout => \inst|keys_double[10]~70_combout\);

-- Location: FF_X25_Y11_N31
\inst|keys_double[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|keys_double[10]~70_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|keys_double\(10));

-- Location: LCCOMB_X24_Y11_N8
\inst|process_1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|process_1~8_combout\ = (\inst|keys_double\(10)) # (\inst|keys_int\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|keys_double\(10),
	datad => \inst|keys_int\(10),
	combout => \inst|process_1~8_combout\);

-- Location: IOIBUF_X30_Y24_N22
\rows[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rows(2),
	o => \rows[2]~input_o\);

-- Location: LCCOMB_X29_Y11_N28
\inst|rows_int[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|rows_int[2]~feeder_combout\ = \rows[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rows[2]~input_o\,
	combout => \inst|rows_int[2]~feeder_combout\);

-- Location: FF_X29_Y11_N29
\inst|rows_int[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|rows_int[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|rows_int\(2));

-- Location: LCCOMB_X28_Y11_N10
\inst|Mux21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux21~0_combout\ = (\inst|columns\(2) & !\inst|rows_int\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|columns\(2),
	datad => \inst|rows_int\(2),
	combout => \inst|Mux21~0_combout\);

-- Location: FF_X25_Y11_N25
\inst|keys_int[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|Mux21~0_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \inst|keys_int[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|keys_int\(5));

-- Location: LCCOMB_X26_Y11_N4
\inst|keys_double[5]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|keys_double[5]~46_combout\ = (!\inst|keys_int\(5) & !\inst|rows_int\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|keys_int\(5),
	datad => \inst|rows_int\(2),
	combout => \inst|keys_double[5]~46_combout\);

-- Location: LCCOMB_X28_Y11_N4
\inst|Mux27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux27~0_combout\ = (\inst|columns\(4) & !\inst|rows_int\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|columns\(4),
	datad => \inst|rows_int\(2),
	combout => \inst|Mux27~0_combout\);

-- Location: FF_X28_Y11_N5
\inst|keys_int[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Mux27~0_combout\,
	clrn => \rst~input_o\,
	ena => \inst|keys_int[11]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|keys_int\(11));

-- Location: LCCOMB_X25_Y11_N28
\inst|keys_double[11]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|keys_double[11]~71_combout\ = (\inst|keys_double\(11)) # ((\inst|keys_double[5]~46_combout\ & (!\inst|keys_int\(11) & !\inst|keys_double[10]~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|keys_double[5]~46_combout\,
	datab => \inst|keys_int\(11),
	datac => \inst|keys_double[10]~30_combout\,
	datad => \inst|keys_double\(11),
	combout => \inst|keys_double[11]~71_combout\);

-- Location: LCCOMB_X26_Y11_N22
\inst|Mux22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux22~0_combout\ = (\inst|columns\(3) & !\inst|rows_int\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|columns\(3),
	datad => \inst|rows_int\(2),
	combout => \inst|Mux22~0_combout\);

-- Location: FF_X26_Y11_N23
\inst|keys_int[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Mux22~0_combout\,
	clrn => \rst~input_o\,
	ena => \inst|keys_int[9]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|keys_int\(6));

-- Location: LCCOMB_X26_Y12_N24
\inst|Mux20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux20~0_combout\ = (\inst|columns\(1) & !\inst|rows_int\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|columns\(1),
	datad => \inst|rows_int\(2),
	combout => \inst|Mux20~0_combout\);

-- Location: FF_X26_Y12_N25
\inst|keys_int[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Mux20~0_combout\,
	clrn => \rst~input_o\,
	ena => \inst|keys_int[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|keys_int\(4));

-- Location: LCCOMB_X26_Y11_N10
\inst|keys_double[11]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|keys_double[11]~72_combout\ = (!\inst|rows_int\(2) & ((\inst|columns\(3) & (!\inst|keys_int\(6))) # (!\inst|columns\(3) & ((!\inst|keys_int\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|keys_int\(6),
	datab => \inst|columns\(3),
	datac => \inst|keys_int\(4),
	datad => \inst|rows_int\(2),
	combout => \inst|keys_double[11]~72_combout\);

-- Location: LCCOMB_X25_Y11_N22
\inst|keys_double[11]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|keys_double[11]~73_combout\ = (\inst|keys_double\(11)) # ((!\inst|keys_double[10]~30_combout\ & (!\inst|keys_int\(11) & \inst|keys_double[11]~72_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|keys_double[10]~30_combout\,
	datab => \inst|keys_int\(11),
	datac => \inst|keys_double[11]~72_combout\,
	datad => \inst|keys_double\(11),
	combout => \inst|keys_double[11]~73_combout\);

-- Location: LCCOMB_X25_Y11_N16
\inst|keys_double[11]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|keys_double[11]~74_combout\ = (\inst|keys_double[13]~36_combout\ & ((\inst|keys_double[11]~73_combout\) # ((\inst|keys_double[11]~71_combout\ & \inst|keys_double[13]~35_combout\)))) # (!\inst|keys_double[13]~36_combout\ & 
-- (\inst|keys_double[11]~71_combout\ & ((\inst|keys_double[13]~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|keys_double[13]~36_combout\,
	datab => \inst|keys_double[11]~71_combout\,
	datac => \inst|keys_double[11]~73_combout\,
	datad => \inst|keys_double[13]~35_combout\,
	combout => \inst|keys_double[11]~74_combout\);

-- Location: LCCOMB_X25_Y11_N12
\inst|keys_double[11]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|keys_double[11]~75_combout\ = (\inst|keys_double[10]~30_combout\ & ((\inst|keys_double\(11)) # ((\inst|columns\(4) & \inst|keys_double[11]~74_combout\)))) # (!\inst|keys_double[10]~30_combout\ & (\inst|columns\(4) & 
-- ((\inst|keys_double[11]~74_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|keys_double[10]~30_combout\,
	datab => \inst|columns\(4),
	datac => \inst|keys_double\(11),
	datad => \inst|keys_double[11]~74_combout\,
	combout => \inst|keys_double[11]~75_combout\);

-- Location: FF_X25_Y11_N13
\inst|keys_double[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|keys_double[11]~75_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|keys_double\(11));

-- Location: LCCOMB_X24_Y11_N10
\inst|process_1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|process_1~9_combout\ = (\inst|keys_double\(11)) # (\inst|keys_int\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|keys_double\(11),
	datad => \inst|keys_int\(11),
	combout => \inst|process_1~9_combout\);

-- Location: LCCOMB_X24_Y11_N26
\inst|Add10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add10~0_combout\ = \inst|process_1~7_combout\ $ (\inst|process_1~10_combout\ $ (\inst|process_1~8_combout\ $ (\inst|process_1~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|process_1~7_combout\,
	datab => \inst|process_1~10_combout\,
	datac => \inst|process_1~8_combout\,
	datad => \inst|process_1~9_combout\,
	combout => \inst|Add10~0_combout\);

-- Location: LCCOMB_X26_Y11_N26
\inst|keys_double[6]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|keys_double[6]~48_combout\ = (\inst|keys_double\(6)) # ((!\inst|keys_int\(6) & (\inst|keys_double[5]~46_combout\ & !\inst|keys_double[3]~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|keys_int\(6),
	datab => \inst|keys_double[5]~46_combout\,
	datac => \inst|keys_double[3]~22_combout\,
	datad => \inst|keys_double\(6),
	combout => \inst|keys_double[6]~48_combout\);

-- Location: LCCOMB_X28_Y11_N26
\inst|keys_double[6]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|keys_double[6]~49_combout\ = (!\inst|rows_int\(2) & ((\inst|columns\(1) & (!\inst|keys_int\(4))) # (!\inst|columns\(1) & ((!\inst|keys_int\(11))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|rows_int\(2),
	datab => \inst|keys_int\(4),
	datac => \inst|columns\(1),
	datad => \inst|keys_int\(11),
	combout => \inst|keys_double[6]~49_combout\);

-- Location: LCCOMB_X26_Y11_N20
\inst|keys_double[6]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|keys_double[6]~50_combout\ = (\inst|keys_double\(6)) # ((!\inst|keys_int\(6) & (\inst|keys_double[6]~49_combout\ & !\inst|keys_double[3]~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|keys_int\(6),
	datab => \inst|keys_double[6]~49_combout\,
	datac => \inst|keys_double[3]~22_combout\,
	datad => \inst|keys_double\(6),
	combout => \inst|keys_double[6]~50_combout\);

-- Location: LCCOMB_X26_Y11_N6
\inst|keys_double[6]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|keys_double[6]~51_combout\ = (\inst|keys_double[6]~48_combout\ & ((\inst|keys_double[3]~23_combout\) # ((\inst|keys_double[3]~26_combout\ & \inst|keys_double[6]~50_combout\)))) # (!\inst|keys_double[6]~48_combout\ & (\inst|keys_double[3]~26_combout\ 
-- & ((\inst|keys_double[6]~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|keys_double[6]~48_combout\,
	datab => \inst|keys_double[3]~26_combout\,
	datac => \inst|keys_double[3]~23_combout\,
	datad => \inst|keys_double[6]~50_combout\,
	combout => \inst|keys_double[6]~51_combout\);

-- Location: LCCOMB_X26_Y11_N24
\inst|keys_double[6]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|keys_double[6]~52_combout\ = (\inst|keys_double[3]~22_combout\ & ((\inst|keys_double\(6)) # ((\inst|columns\(3) & \inst|keys_double[6]~51_combout\)))) # (!\inst|keys_double[3]~22_combout\ & (\inst|columns\(3) & ((\inst|keys_double[6]~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|keys_double[3]~22_combout\,
	datab => \inst|columns\(3),
	datac => \inst|keys_double\(6),
	datad => \inst|keys_double[6]~51_combout\,
	combout => \inst|keys_double[6]~52_combout\);

-- Location: FF_X26_Y11_N25
\inst|keys_double[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|keys_double[6]~52_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|keys_double\(6));

-- Location: LCCOMB_X26_Y11_N30
\inst|process_1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|process_1~4_combout\ = (\inst|keys_int\(6)) # (\inst|keys_double\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|keys_int\(6),
	datad => \inst|keys_double\(6),
	combout => \inst|process_1~4_combout\);

-- Location: LCCOMB_X28_Y12_N30
\inst|keys_double[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|keys_double[1]~5_combout\ = (\inst|columns\(1) & ((\inst|columns\(3) & (!\inst|columns\(4) & !\inst|columns\(2))) # (!\inst|columns\(3) & (\inst|columns\(4) $ (\inst|columns\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|columns\(3),
	datab => \inst|columns\(1),
	datac => \inst|columns\(4),
	datad => \inst|columns\(2),
	combout => \inst|keys_double[1]~5_combout\);

-- Location: LCCOMB_X28_Y12_N0
\inst|Mux32~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux32~0_combout\ = (\inst|columns\(3) & (((\inst|columns\(4)) # (\inst|columns\(2))) # (!\inst|columns\(1)))) # (!\inst|columns\(3) & ((\inst|columns\(1) & (\inst|columns\(4) $ (!\inst|columns\(2)))) # (!\inst|columns\(1) & ((\inst|columns\(4)) # 
-- (\inst|columns\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|columns\(3),
	datab => \inst|columns\(1),
	datac => \inst|columns\(4),
	datad => \inst|columns\(2),
	combout => \inst|Mux32~0_combout\);

-- Location: LCCOMB_X28_Y12_N4
\inst|keys_double[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|keys_double[4]~6_combout\ = (\inst|keys_double[1]~5_combout\) # ((\inst|Mux32~0_combout\) # (!\inst|LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|keys_double[1]~5_combout\,
	datac => \inst|LessThan0~0_combout\,
	datad => \inst|Mux32~0_combout\,
	combout => \inst|keys_double[4]~6_combout\);

-- Location: LCCOMB_X28_Y11_N8
\inst|keys_double[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|keys_double[0]~1_combout\ = (\inst|columns\(2) & (!\inst|columns\(3) & !\inst|columns\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|columns\(2),
	datac => \inst|columns\(3),
	datad => \inst|columns\(4),
	combout => \inst|keys_double[0]~1_combout\);

-- Location: LCCOMB_X23_Y11_N0
\inst|Mux39~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux39~0_combout\ = (\inst|columns\(3) & ((\inst|keys_int\(9)))) # (!\inst|columns\(3) & (\inst|keys_int\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|keys_int\(12),
	datac => \inst|columns\(3),
	datad => \inst|keys_int\(9),
	combout => \inst|Mux39~0_combout\);

-- Location: LCCOMB_X28_Y11_N6
\inst|keys_double[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|keys_double[0]~2_combout\ = (!\inst|columns\(2) & (\inst|columns\(3) $ (\inst|columns\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|columns\(2),
	datac => \inst|columns\(3),
	datad => \inst|columns\(4),
	combout => \inst|keys_double[0]~2_combout\);

-- Location: LCCOMB_X23_Y11_N30
\inst|keys_double[7]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|keys_double[7]~53_combout\ = (\inst|keys_double[0]~1_combout\ & (((!\inst|Mux39~0_combout\ & \inst|keys_double[0]~2_combout\)) # (!\inst|keys_int\(8)))) # (!\inst|keys_double[0]~1_combout\ & (!\inst|Mux39~0_combout\ & 
-- ((\inst|keys_double[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|keys_double[0]~1_combout\,
	datab => \inst|Mux39~0_combout\,
	datac => \inst|keys_int\(8),
	datad => \inst|keys_double[0]~2_combout\,
	combout => \inst|keys_double[7]~53_combout\);

-- Location: LCCOMB_X28_Y12_N10
\inst|keys_double[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|keys_double[0]~0_combout\ = (\inst|columns\(1) & (\inst|LessThan0~0_combout\ & !\inst|Mux32~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|columns\(1),
	datac => \inst|LessThan0~0_combout\,
	datad => \inst|Mux32~0_combout\,
	combout => \inst|keys_double[0]~0_combout\);

-- Location: LCCOMB_X23_Y11_N24
\inst|keys_double[7]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|keys_double[7]~54_combout\ = (!\inst|rows_int\(3) & (!\inst|keys_int\(7) & (\inst|keys_double[7]~53_combout\ & \inst|keys_double[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|rows_int\(3),
	datab => \inst|keys_int\(7),
	datac => \inst|keys_double[7]~53_combout\,
	datad => \inst|keys_double[0]~0_combout\,
	combout => \inst|keys_double[7]~54_combout\);

-- Location: LCCOMB_X24_Y11_N6
\inst|keys_double[7]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|keys_double[7]~55_combout\ = (\inst|keys_double[7]~54_combout\) # ((\inst|keys_double[4]~6_combout\ & \inst|keys_double\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|keys_double[4]~6_combout\,
	datac => \inst|keys_double\(7),
	datad => \inst|keys_double[7]~54_combout\,
	combout => \inst|keys_double[7]~55_combout\);

-- Location: FF_X24_Y11_N7
\inst|keys_double[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|keys_double[7]~55_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|keys_double\(7));

-- Location: LCCOMB_X24_Y11_N0
\inst|process_1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|process_1~5_combout\ = (\inst|keys_int\(7)) # (\inst|keys_double\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|keys_int\(7),
	datad => \inst|keys_double\(7),
	combout => \inst|process_1~5_combout\);

-- Location: LCCOMB_X28_Y11_N0
\inst|Mux37~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux37~0_combout\ = (\inst|columns\(3) & ((\inst|keys_int\(6)))) # (!\inst|columns\(3) & (\inst|keys_int\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|keys_int\(11),
	datac => \inst|columns\(3),
	datad => \inst|keys_int\(6),
	combout => \inst|Mux37~0_combout\);

-- Location: LCCOMB_X28_Y11_N12
\inst|keys_double[5]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|keys_double[5]~45_combout\ = (\inst|keys_double[15]~10_combout\ & (((!\inst|keys_int\(4) & \inst|keys_double[15]~9_combout\)) # (!\inst|Mux37~0_combout\))) # (!\inst|keys_double[15]~10_combout\ & (!\inst|keys_int\(4) & 
-- (\inst|keys_double[15]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|keys_double[15]~10_combout\,
	datab => \inst|keys_int\(4),
	datac => \inst|keys_double[15]~9_combout\,
	datad => \inst|Mux37~0_combout\,
	combout => \inst|keys_double[5]~45_combout\);

-- Location: LCCOMB_X25_Y11_N0
\inst|keys_double[5]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|keys_double[5]~44_combout\ = (\inst|keys_double\(5) & ((\inst|keys_double[2]~13_combout\) # ((\inst|Mux40~0_combout\) # (!\inst|LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|keys_double[2]~13_combout\,
	datab => \inst|keys_double\(5),
	datac => \inst|Mux40~0_combout\,
	datad => \inst|LessThan0~0_combout\,
	combout => \inst|keys_double[5]~44_combout\);

-- Location: LCCOMB_X25_Y11_N26
\inst|keys_double[5]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|keys_double[5]~47_combout\ = (\inst|keys_double[5]~44_combout\) # ((\inst|keys_double[5]~46_combout\ & (\inst|keys_double[15]~8_combout\ & \inst|keys_double[5]~45_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|keys_double[5]~46_combout\,
	datab => \inst|keys_double[15]~8_combout\,
	datac => \inst|keys_double[5]~45_combout\,
	datad => \inst|keys_double[5]~44_combout\,
	combout => \inst|keys_double[5]~47_combout\);

-- Location: FF_X25_Y11_N27
\inst|keys_double[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|keys_double[5]~47_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|keys_double\(5));

-- Location: LCCOMB_X25_Y11_N4
\inst|process_1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|process_1~3_combout\ = (\inst|keys_double\(5)) # (\inst|keys_int\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|keys_double\(5),
	datad => \inst|keys_int\(5),
	combout => \inst|process_1~3_combout\);

-- Location: LCCOMB_X25_Y11_N6
\inst|keys_double[8]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|keys_double[8]~56_combout\ = (\inst|keys_double\(8) & ((\inst|keys_double[2]~13_combout\) # ((\inst|Mux40~0_combout\) # (!\inst|LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|keys_double[2]~13_combout\,
	datab => \inst|LessThan0~0_combout\,
	datac => \inst|Mux40~0_combout\,
	datad => \inst|keys_double\(8),
	combout => \inst|keys_double[8]~56_combout\);

-- Location: LCCOMB_X26_Y11_N12
\inst|keys_double[8]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|keys_double[8]~57_combout\ = (\inst|keys_double[15]~9_combout\ & (((\inst|keys_double[15]~10_combout\ & !\inst|Mux39~0_combout\)) # (!\inst|keys_int\(7)))) # (!\inst|keys_double[15]~9_combout\ & (((\inst|keys_double[15]~10_combout\ & 
-- !\inst|Mux39~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|keys_double[15]~9_combout\,
	datab => \inst|keys_int\(7),
	datac => \inst|keys_double[15]~10_combout\,
	datad => \inst|Mux39~0_combout\,
	combout => \inst|keys_double[8]~57_combout\);

-- Location: LCCOMB_X25_Y11_N20
\inst|keys_double[8]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|keys_double[8]~59_combout\ = (\inst|keys_double[8]~56_combout\) # ((\inst|keys_double[15]~8_combout\ & (\inst|keys_double[8]~57_combout\ & \inst|keys_double[8]~58_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|keys_double[8]~56_combout\,
	datab => \inst|keys_double[15]~8_combout\,
	datac => \inst|keys_double[8]~57_combout\,
	datad => \inst|keys_double[8]~58_combout\,
	combout => \inst|keys_double[8]~59_combout\);

-- Location: FF_X25_Y11_N21
\inst|keys_double[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|keys_double[8]~59_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|keys_double\(8));

-- Location: LCCOMB_X24_Y11_N12
\inst|process_1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|process_1~6_combout\ = (\inst|keys_double\(8)) # (\inst|keys_int\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|keys_double\(8),
	datad => \inst|keys_int\(8),
	combout => \inst|process_1~6_combout\);

-- Location: LCCOMB_X24_Y11_N2
\inst|Add6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add6~0_combout\ = \inst|process_1~4_combout\ $ (\inst|process_1~5_combout\ $ (\inst|process_1~3_combout\ $ (\inst|process_1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|process_1~4_combout\,
	datab => \inst|process_1~5_combout\,
	datac => \inst|process_1~3_combout\,
	datad => \inst|process_1~6_combout\,
	combout => \inst|Add6~0_combout\);

-- Location: LCCOMB_X24_Y11_N14
\inst|Add8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add8~0_combout\ = (\inst|Add10~0_combout\ & (\inst|Add6~0_combout\ $ (VCC))) # (!\inst|Add10~0_combout\ & (\inst|Add6~0_combout\ & VCC))
-- \inst|Add8~1\ = CARRY((\inst|Add10~0_combout\ & \inst|Add6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add10~0_combout\,
	datab => \inst|Add6~0_combout\,
	datad => VCC,
	combout => \inst|Add8~0_combout\,
	cout => \inst|Add8~1\);

-- Location: LCCOMB_X26_Y12_N20
\inst|Mux16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux16~0_combout\ = (\inst|columns\(1) & !\inst|rows_int\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|columns\(1),
	datac => \inst|rows_int\(4),
	combout => \inst|Mux16~0_combout\);

-- Location: FF_X26_Y12_N21
\inst|keys_int[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Mux16~0_combout\,
	clrn => \rst~input_o\,
	ena => \inst|keys_int[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|keys_int\(0));

-- Location: LCCOMB_X26_Y10_N6
\inst|Mux30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux30~0_combout\ = (!\inst|rows_int\(4) & \inst|columns\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|rows_int\(4),
	datac => \inst|columns\(3),
	combout => \inst|Mux30~0_combout\);

-- Location: FF_X26_Y10_N7
\inst|keys_int[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Mux30~0_combout\,
	clrn => \rst~input_o\,
	ena => \inst|keys_int[9]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|keys_int\(14));

-- Location: LCCOMB_X25_Y10_N20
\inst|Mux29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux29~0_combout\ = (!\inst|rows_int\(4) & \inst|columns\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|rows_int\(4),
	datad => \inst|columns\(4),
	combout => \inst|Mux29~0_combout\);

-- Location: FF_X25_Y10_N21
\inst|keys_int[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Mux29~0_combout\,
	clrn => \rst~input_o\,
	ena => \inst|keys_int[11]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|keys_int\(13));

-- Location: LCCOMB_X28_Y11_N24
\inst|Mux32~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux32~1_combout\ = (\inst|columns\(3) & (\inst|keys_int\(14))) # (!\inst|columns\(3) & ((\inst|keys_int\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|keys_int\(14),
	datac => \inst|columns\(3),
	datad => \inst|keys_int\(13),
	combout => \inst|Mux32~1_combout\);

-- Location: LCCOMB_X28_Y11_N2
\inst|keys_double[0]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|keys_double[0]~16_combout\ = (\inst|keys_double[0]~2_combout\ & (((!\inst|keys_int\(15) & \inst|keys_double[0]~1_combout\)) # (!\inst|Mux32~1_combout\))) # (!\inst|keys_double[0]~2_combout\ & (!\inst|keys_int\(15) & 
-- (\inst|keys_double[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|keys_double[0]~2_combout\,
	datab => \inst|keys_int\(15),
	datac => \inst|keys_double[0]~1_combout\,
	datad => \inst|Mux32~1_combout\,
	combout => \inst|keys_double[0]~16_combout\);

-- Location: LCCOMB_X28_Y11_N28
\inst|keys_double[0]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|keys_double[0]~17_combout\ = (!\inst|rows_int\(4) & (\inst|keys_double[0]~0_combout\ & (!\inst|keys_int\(0) & \inst|keys_double[0]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|rows_int\(4),
	datab => \inst|keys_double[0]~0_combout\,
	datac => \inst|keys_int\(0),
	datad => \inst|keys_double[0]~16_combout\,
	combout => \inst|keys_double[0]~17_combout\);

-- Location: LCCOMB_X26_Y12_N2
\inst|keys_double[0]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|keys_double[0]~18_combout\ = (\inst|keys_double[0]~17_combout\) # ((\inst|keys_double[4]~6_combout\ & \inst|keys_double\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|keys_double[4]~6_combout\,
	datac => \inst|keys_double\(0),
	datad => \inst|keys_double[0]~17_combout\,
	combout => \inst|keys_double[0]~18_combout\);

-- Location: FF_X26_Y12_N3
\inst|keys_double[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|keys_double[0]~18_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|keys_double\(0));

-- Location: LCCOMB_X26_Y11_N14
\inst|keys_double[1]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|keys_double[1]~19_combout\ = (\inst|keys_double[0]~2_combout\ & (((!\inst|keys_int\(2) & \inst|keys_double[0]~1_combout\)) # (!\inst|Mux34~0_combout\))) # (!\inst|keys_double[0]~2_combout\ & (!\inst|keys_int\(2) & 
-- ((\inst|keys_double[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|keys_double[0]~2_combout\,
	datab => \inst|keys_int\(2),
	datac => \inst|Mux34~0_combout\,
	datad => \inst|keys_double[0]~1_combout\,
	combout => \inst|keys_double[1]~19_combout\);

-- Location: LCCOMB_X26_Y12_N10
\inst|keys_double[1]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|keys_double[1]~20_combout\ = (!\inst|keys_int\(1) & (!\inst|rows_int\(1) & (\inst|keys_double[0]~0_combout\ & \inst|keys_double[1]~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|keys_int\(1),
	datab => \inst|rows_int\(1),
	datac => \inst|keys_double[0]~0_combout\,
	datad => \inst|keys_double[1]~19_combout\,
	combout => \inst|keys_double[1]~20_combout\);

-- Location: LCCOMB_X26_Y12_N16
\inst|keys_double[1]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|keys_double[1]~21_combout\ = (\inst|keys_double[1]~20_combout\) # ((\inst|keys_double[4]~6_combout\ & \inst|keys_double\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|keys_double[4]~6_combout\,
	datac => \inst|keys_double\(1),
	datad => \inst|keys_double[1]~20_combout\,
	combout => \inst|keys_double[1]~21_combout\);

-- Location: FF_X26_Y12_N17
\inst|keys_double[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|keys_double[1]~21_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|keys_double\(1));

-- Location: LCCOMB_X26_Y12_N22
\inst|presses~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|presses~0_combout\ = (\inst|keys_double\(0) & (((!\inst|keys_int\(1) & !\inst|keys_double\(1))))) # (!\inst|keys_double\(0) & (\inst|keys_int\(0) $ (((\inst|keys_int\(1)) # (\inst|keys_double\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|keys_double\(0),
	datab => \inst|keys_int\(0),
	datac => \inst|keys_int\(1),
	datad => \inst|keys_double\(1),
	combout => \inst|presses~0_combout\);

-- Location: LCCOMB_X28_Y11_N22
\inst|keys_double[4]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|keys_double[4]~3_combout\ = (\inst|keys_double[0]~2_combout\ & (((!\inst|keys_int\(5) & \inst|keys_double[0]~1_combout\)) # (!\inst|Mux37~0_combout\))) # (!\inst|keys_double[0]~2_combout\ & (!\inst|keys_int\(5) & (\inst|keys_double[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|keys_double[0]~2_combout\,
	datab => \inst|keys_int\(5),
	datac => \inst|keys_double[0]~1_combout\,
	datad => \inst|Mux37~0_combout\,
	combout => \inst|keys_double[4]~3_combout\);

-- Location: LCCOMB_X28_Y12_N16
\inst|keys_double[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|keys_double[4]~4_combout\ = (!\inst|keys_int\(4) & (\inst|keys_double[4]~3_combout\ & (!\inst|rows_int\(2) & \inst|keys_double[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|keys_int\(4),
	datab => \inst|keys_double[4]~3_combout\,
	datac => \inst|rows_int\(2),
	datad => \inst|keys_double[0]~0_combout\,
	combout => \inst|keys_double[4]~4_combout\);

-- Location: LCCOMB_X26_Y12_N26
\inst|keys_double[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|keys_double[4]~7_combout\ = (\inst|keys_double[4]~4_combout\) # ((\inst|keys_double[4]~6_combout\ & \inst|keys_double\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|keys_double[4]~6_combout\,
	datac => \inst|keys_double\(4),
	datad => \inst|keys_double[4]~4_combout\,
	combout => \inst|keys_double[4]~7_combout\);

-- Location: FF_X26_Y12_N27
\inst|keys_double[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|keys_double[4]~7_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|keys_double\(4));

-- Location: LCCOMB_X26_Y12_N0
\inst|process_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|process_1~0_combout\ = (\inst|keys_double\(4)) # (\inst|keys_int\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|keys_double\(4),
	datad => \inst|keys_int\(4),
	combout => \inst|process_1~0_combout\);

-- Location: LCCOMB_X26_Y10_N30
\inst|keys_double[3]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|keys_double[3]~24_combout\ = (!\inst|rows_int\(1) & (\inst|LessThan0~0_combout\ & (!\inst|Mux41~0_combout\ & !\inst|keys_int\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|rows_int\(1),
	datab => \inst|LessThan0~0_combout\,
	datac => \inst|Mux41~0_combout\,
	datad => \inst|keys_int\(3),
	combout => \inst|keys_double[3]~24_combout\);

-- Location: LCCOMB_X26_Y10_N8
\inst|keys_double[3]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|keys_double[3]~27_combout\ = (\inst|keys_double[3]~24_combout\ & ((\inst|columns\(1) & (!\inst|keys_int\(1))) # (!\inst|columns\(1) & ((!\inst|keys_int\(10))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|keys_double[3]~24_combout\,
	datab => \inst|keys_int\(1),
	datac => \inst|columns\(1),
	datad => \inst|keys_int\(10),
	combout => \inst|keys_double[3]~27_combout\);

-- Location: LCCOMB_X26_Y10_N24
\inst|keys_double[3]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|keys_double[3]~25_combout\ = (\inst|keys_double[3]~23_combout\ & ((\inst|keys_double\(3)) # ((!\inst|keys_int\(2) & \inst|keys_double[3]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|keys_int\(2),
	datab => \inst|keys_double[3]~23_combout\,
	datac => \inst|keys_double[3]~24_combout\,
	datad => \inst|keys_double\(3),
	combout => \inst|keys_double[3]~25_combout\);

-- Location: LCCOMB_X26_Y10_N14
\inst|keys_double[3]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|keys_double[3]~28_combout\ = (\inst|keys_double[3]~25_combout\) # ((\inst|keys_double[3]~26_combout\ & ((\inst|keys_double\(3)) # (\inst|keys_double[3]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|keys_double[3]~26_combout\,
	datab => \inst|keys_double\(3),
	datac => \inst|keys_double[3]~27_combout\,
	datad => \inst|keys_double[3]~25_combout\,
	combout => \inst|keys_double[3]~28_combout\);

-- Location: LCCOMB_X26_Y12_N12
\inst|keys_double[3]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|keys_double[3]~29_combout\ = (\inst|columns\(3) & ((\inst|keys_double[3]~28_combout\) # ((\inst|keys_double[3]~22_combout\ & \inst|keys_double\(3))))) # (!\inst|columns\(3) & (\inst|keys_double[3]~22_combout\ & (\inst|keys_double\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|columns\(3),
	datab => \inst|keys_double[3]~22_combout\,
	datac => \inst|keys_double\(3),
	datad => \inst|keys_double[3]~28_combout\,
	combout => \inst|keys_double[3]~29_combout\);

-- Location: FF_X26_Y12_N13
\inst|keys_double[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|keys_double[3]~29_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|keys_double\(3));

-- Location: LCCOMB_X26_Y12_N6
\inst|process_1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|process_1~2_combout\ = (\inst|keys_double\(3)) # (\inst|keys_int\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|keys_double\(3),
	datad => \inst|keys_int\(3),
	combout => \inst|process_1~2_combout\);

-- Location: LCCOMB_X26_Y12_N4
\inst|Add3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add3~0_combout\ = \inst|presses~0_combout\ $ (\inst|process_1~0_combout\ $ (\inst|process_1~1_combout\ $ (\inst|process_1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|presses~0_combout\,
	datab => \inst|process_1~0_combout\,
	datac => \inst|process_1~1_combout\,
	datad => \inst|process_1~2_combout\,
	combout => \inst|Add3~0_combout\);

-- Location: LCCOMB_X25_Y10_N26
\inst|keys_double[13]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|keys_double[13]~31_combout\ = (!\inst|rows_int\(4) & ((\inst|columns\(3) & ((!\inst|keys_int\(14)))) # (!\inst|columns\(3) & (!\inst|keys_int\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|columns\(3),
	datab => \inst|keys_int\(0),
	datac => \inst|rows_int\(4),
	datad => \inst|keys_int\(14),
	combout => \inst|keys_double[13]~31_combout\);

-- Location: LCCOMB_X25_Y10_N12
\inst|keys_double[13]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|keys_double[13]~32_combout\ = (\inst|keys_double\(13)) # ((\inst|keys_double[13]~31_combout\ & (!\inst|keys_int\(13) & !\inst|keys_double[10]~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|keys_double[13]~31_combout\,
	datab => \inst|keys_int\(13),
	datac => \inst|keys_double\(13),
	datad => \inst|keys_double[10]~30_combout\,
	combout => \inst|keys_double[13]~32_combout\);

-- Location: LCCOMB_X26_Y11_N8
\inst|keys_double[15]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|keys_double[15]~33_combout\ = (!\inst|rows_int\(4) & !\inst|keys_int\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|rows_int\(4),
	datad => \inst|keys_int\(15),
	combout => \inst|keys_double[15]~33_combout\);

-- Location: LCCOMB_X25_Y10_N10
\inst|keys_double[13]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|keys_double[13]~34_combout\ = (\inst|keys_double\(13)) # ((!\inst|keys_int\(13) & (\inst|keys_double[15]~33_combout\ & !\inst|keys_double[10]~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|keys_int\(13),
	datab => \inst|keys_double\(13),
	datac => \inst|keys_double[15]~33_combout\,
	datad => \inst|keys_double[10]~30_combout\,
	combout => \inst|keys_double[13]~34_combout\);

-- Location: LCCOMB_X25_Y10_N30
\inst|keys_double[13]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|keys_double[13]~37_combout\ = (\inst|keys_double[13]~32_combout\ & ((\inst|keys_double[13]~36_combout\) # ((\inst|keys_double[13]~35_combout\ & \inst|keys_double[13]~34_combout\)))) # (!\inst|keys_double[13]~32_combout\ & 
-- (((\inst|keys_double[13]~35_combout\ & \inst|keys_double[13]~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|keys_double[13]~32_combout\,
	datab => \inst|keys_double[13]~36_combout\,
	datac => \inst|keys_double[13]~35_combout\,
	datad => \inst|keys_double[13]~34_combout\,
	combout => \inst|keys_double[13]~37_combout\);

-- Location: LCCOMB_X25_Y10_N14
\inst|keys_double[13]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|keys_double[13]~38_combout\ = (\inst|keys_double[13]~37_combout\ & ((\inst|columns\(4)) # ((\inst|keys_double\(13) & \inst|keys_double[10]~30_combout\)))) # (!\inst|keys_double[13]~37_combout\ & (((\inst|keys_double\(13) & 
-- \inst|keys_double[10]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|keys_double[13]~37_combout\,
	datab => \inst|columns\(4),
	datac => \inst|keys_double\(13),
	datad => \inst|keys_double[10]~30_combout\,
	combout => \inst|keys_double[13]~38_combout\);

-- Location: FF_X25_Y10_N15
\inst|keys_double[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|keys_double[13]~38_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|keys_double\(13));

-- Location: LCCOMB_X25_Y10_N24
\inst|keys_double[14]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|keys_double[14]~39_combout\ = (!\inst|rows_int\(4) & ((\inst|columns\(1) & ((!\inst|keys_int\(0)))) # (!\inst|columns\(1) & (!\inst|keys_int\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|rows_int\(4),
	datab => \inst|keys_int\(13),
	datac => \inst|keys_int\(0),
	datad => \inst|columns\(1),
	combout => \inst|keys_double[14]~39_combout\);

-- Location: LCCOMB_X26_Y10_N2
\inst|keys_double[14]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|keys_double[14]~40_combout\ = (\inst|keys_double\(14)) # ((!\inst|keys_int\(14) & (\inst|keys_double[14]~39_combout\ & !\inst|keys_double[3]~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|keys_int\(14),
	datab => \inst|keys_double[14]~39_combout\,
	datac => \inst|keys_double\(14),
	datad => \inst|keys_double[3]~22_combout\,
	combout => \inst|keys_double[14]~40_combout\);

-- Location: LCCOMB_X26_Y11_N0
\inst|keys_double[14]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|keys_double[14]~41_combout\ = (\inst|keys_double\(14)) # ((\inst|keys_double[15]~33_combout\ & (!\inst|keys_double[3]~22_combout\ & !\inst|keys_int\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|keys_double[15]~33_combout\,
	datab => \inst|keys_double\(14),
	datac => \inst|keys_double[3]~22_combout\,
	datad => \inst|keys_int\(14),
	combout => \inst|keys_double[14]~41_combout\);

-- Location: LCCOMB_X26_Y11_N18
\inst|keys_double[14]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|keys_double[14]~42_combout\ = (\inst|keys_double[3]~23_combout\ & ((\inst|keys_double[14]~41_combout\) # ((\inst|keys_double[3]~26_combout\ & \inst|keys_double[14]~40_combout\)))) # (!\inst|keys_double[3]~23_combout\ & 
-- (\inst|keys_double[3]~26_combout\ & (\inst|keys_double[14]~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|keys_double[3]~23_combout\,
	datab => \inst|keys_double[3]~26_combout\,
	datac => \inst|keys_double[14]~40_combout\,
	datad => \inst|keys_double[14]~41_combout\,
	combout => \inst|keys_double[14]~42_combout\);

-- Location: LCCOMB_X26_Y11_N28
\inst|keys_double[14]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|keys_double[14]~43_combout\ = (\inst|keys_double[3]~22_combout\ & ((\inst|keys_double\(14)) # ((\inst|columns\(3) & \inst|keys_double[14]~42_combout\)))) # (!\inst|keys_double[3]~22_combout\ & (\inst|columns\(3) & 
-- ((\inst|keys_double[14]~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|keys_double[3]~22_combout\,
	datab => \inst|columns\(3),
	datac => \inst|keys_double\(14),
	datad => \inst|keys_double[14]~42_combout\,
	combout => \inst|keys_double[14]~43_combout\);

-- Location: FF_X26_Y11_N29
\inst|keys_double[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|keys_double[14]~43_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|keys_double\(14));

-- Location: LCCOMB_X25_Y10_N16
\inst|Add13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add13~0_combout\ = (\inst|keys_int\(14) & (!\inst|keys_int\(13) & (!\inst|keys_double\(13)))) # (!\inst|keys_int\(14) & (\inst|keys_double\(14) $ (((\inst|keys_int\(13)) # (\inst|keys_double\(13))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|keys_int\(14),
	datab => \inst|keys_int\(13),
	datac => \inst|keys_double\(13),
	datad => \inst|keys_double\(14),
	combout => \inst|Add13~0_combout\);

-- Location: LCCOMB_X25_Y12_N0
\inst|Add12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add12~0_combout\ = (\inst|Add3~0_combout\ & (\inst|Add13~0_combout\ $ (VCC))) # (!\inst|Add3~0_combout\ & (\inst|Add13~0_combout\ & VCC))
-- \inst|Add12~1\ = CARRY((\inst|Add3~0_combout\ & \inst|Add13~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add3~0_combout\,
	datab => \inst|Add13~0_combout\,
	datad => VCC,
	combout => \inst|Add12~0_combout\,
	cout => \inst|Add12~1\);

-- Location: LCCOMB_X25_Y12_N10
\inst|Add14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add14~0_combout\ = (\inst|Add8~0_combout\ & (\inst|Add12~0_combout\ $ (VCC))) # (!\inst|Add8~0_combout\ & (\inst|Add12~0_combout\ & VCC))
-- \inst|Add14~1\ = CARRY((\inst|Add8~0_combout\ & \inst|Add12~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add8~0_combout\,
	datab => \inst|Add12~0_combout\,
	datad => VCC,
	combout => \inst|Add14~0_combout\,
	cout => \inst|Add14~1\);

-- Location: LCCOMB_X24_Y11_N22
\inst|Add10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add10~1_combout\ = (\inst|process_1~7_combout\ & ((\inst|process_1~10_combout\ & ((!\inst|process_1~9_combout\) # (!\inst|process_1~8_combout\))) # (!\inst|process_1~10_combout\ & ((\inst|process_1~8_combout\) # (\inst|process_1~9_combout\))))) # 
-- (!\inst|process_1~7_combout\ & ((\inst|process_1~10_combout\ & ((\inst|process_1~8_combout\) # (\inst|process_1~9_combout\))) # (!\inst|process_1~10_combout\ & (\inst|process_1~8_combout\ & \inst|process_1~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|process_1~7_combout\,
	datab => \inst|process_1~10_combout\,
	datac => \inst|process_1~8_combout\,
	datad => \inst|process_1~9_combout\,
	combout => \inst|Add10~1_combout\);

-- Location: LCCOMB_X24_Y11_N28
\inst|Add6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add6~1_combout\ = (\inst|process_1~4_combout\ & ((\inst|process_1~5_combout\ & ((!\inst|process_1~6_combout\) # (!\inst|process_1~3_combout\))) # (!\inst|process_1~5_combout\ & ((\inst|process_1~3_combout\) # (\inst|process_1~6_combout\))))) # 
-- (!\inst|process_1~4_combout\ & ((\inst|process_1~5_combout\ & ((\inst|process_1~3_combout\) # (\inst|process_1~6_combout\))) # (!\inst|process_1~5_combout\ & (\inst|process_1~3_combout\ & \inst|process_1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|process_1~4_combout\,
	datab => \inst|process_1~5_combout\,
	datac => \inst|process_1~3_combout\,
	datad => \inst|process_1~6_combout\,
	combout => \inst|Add6~1_combout\);

-- Location: LCCOMB_X24_Y11_N16
\inst|Add8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add8~2_combout\ = (\inst|Add10~1_combout\ & ((\inst|Add6~1_combout\ & (\inst|Add8~1\ & VCC)) # (!\inst|Add6~1_combout\ & (!\inst|Add8~1\)))) # (!\inst|Add10~1_combout\ & ((\inst|Add6~1_combout\ & (!\inst|Add8~1\)) # (!\inst|Add6~1_combout\ & 
-- ((\inst|Add8~1\) # (GND)))))
-- \inst|Add8~3\ = CARRY((\inst|Add10~1_combout\ & (!\inst|Add6~1_combout\ & !\inst|Add8~1\)) # (!\inst|Add10~1_combout\ & ((!\inst|Add8~1\) # (!\inst|Add6~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add10~1_combout\,
	datab => \inst|Add6~1_combout\,
	datad => VCC,
	cin => \inst|Add8~1\,
	combout => \inst|Add8~2_combout\,
	cout => \inst|Add8~3\);

-- Location: LCCOMB_X25_Y10_N28
\inst|Add13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add13~1_combout\ = (\inst|keys_int\(14) & ((\inst|keys_int\(13)) # ((\inst|keys_double\(13))))) # (!\inst|keys_int\(14) & (\inst|keys_double\(14) & ((\inst|keys_int\(13)) # (\inst|keys_double\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|keys_int\(14),
	datab => \inst|keys_int\(13),
	datac => \inst|keys_double\(13),
	datad => \inst|keys_double\(14),
	combout => \inst|Add13~1_combout\);

-- Location: LCCOMB_X26_Y12_N18
\inst|process_1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|process_1~11_combout\ = (\inst|keys_int\(1)) # (\inst|keys_double\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|keys_int\(1),
	datad => \inst|keys_double\(1),
	combout => \inst|process_1~11_combout\);

-- Location: LCCOMB_X25_Y12_N30
\inst|Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add2~0_combout\ = (\inst|process_1~1_combout\ & ((\inst|keys_int\(0)) # ((\inst|keys_double\(0)) # (\inst|process_1~11_combout\)))) # (!\inst|process_1~1_combout\ & (\inst|process_1~11_combout\ & ((\inst|keys_int\(0)) # (\inst|keys_double\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|keys_int\(0),
	datab => \inst|keys_double\(0),
	datac => \inst|process_1~1_combout\,
	datad => \inst|process_1~11_combout\,
	combout => \inst|Add2~0_combout\);

-- Location: LCCOMB_X26_Y12_N28
\inst|Add3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add3~1_combout\ = (\inst|process_1~0_combout\ & ((\inst|process_1~2_combout\) # (\inst|presses~0_combout\ $ (\inst|process_1~1_combout\)))) # (!\inst|process_1~0_combout\ & (\inst|process_1~2_combout\ & (\inst|presses~0_combout\ $ 
-- (\inst|process_1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|presses~0_combout\,
	datab => \inst|process_1~0_combout\,
	datac => \inst|process_1~1_combout\,
	datad => \inst|process_1~2_combout\,
	combout => \inst|Add3~1_combout\);

-- Location: LCCOMB_X25_Y12_N8
\inst|Add3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add3~2_combout\ = \inst|Add2~0_combout\ $ (\inst|Add3~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add2~0_combout\,
	datad => \inst|Add3~1_combout\,
	combout => \inst|Add3~2_combout\);

-- Location: LCCOMB_X25_Y12_N2
\inst|Add12~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add12~2_combout\ = (\inst|Add13~1_combout\ & ((\inst|Add3~2_combout\ & (\inst|Add12~1\ & VCC)) # (!\inst|Add3~2_combout\ & (!\inst|Add12~1\)))) # (!\inst|Add13~1_combout\ & ((\inst|Add3~2_combout\ & (!\inst|Add12~1\)) # (!\inst|Add3~2_combout\ & 
-- ((\inst|Add12~1\) # (GND)))))
-- \inst|Add12~3\ = CARRY((\inst|Add13~1_combout\ & (!\inst|Add3~2_combout\ & !\inst|Add12~1\)) # (!\inst|Add13~1_combout\ & ((!\inst|Add12~1\) # (!\inst|Add3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add13~1_combout\,
	datab => \inst|Add3~2_combout\,
	datad => VCC,
	cin => \inst|Add12~1\,
	combout => \inst|Add12~2_combout\,
	cout => \inst|Add12~3\);

-- Location: LCCOMB_X25_Y12_N12
\inst|Add14~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add14~2_combout\ = (\inst|Add8~2_combout\ & ((\inst|Add12~2_combout\ & (\inst|Add14~1\ & VCC)) # (!\inst|Add12~2_combout\ & (!\inst|Add14~1\)))) # (!\inst|Add8~2_combout\ & ((\inst|Add12~2_combout\ & (!\inst|Add14~1\)) # (!\inst|Add12~2_combout\ & 
-- ((\inst|Add14~1\) # (GND)))))
-- \inst|Add14~3\ = CARRY((\inst|Add8~2_combout\ & (!\inst|Add12~2_combout\ & !\inst|Add14~1\)) # (!\inst|Add8~2_combout\ & ((!\inst|Add14~1\) # (!\inst|Add12~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add8~2_combout\,
	datab => \inst|Add12~2_combout\,
	datad => VCC,
	cin => \inst|Add14~1\,
	combout => \inst|Add14~2_combout\,
	cout => \inst|Add14~3\);

-- Location: LCCOMB_X25_Y11_N10
\inst|keys_double[15]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|keys_double[15]~81_combout\ = (\inst|keys_double\(15) & (((\inst|Mux40~0_combout\) # (\inst|keys_double[2]~13_combout\)) # (!\inst|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|keys_double\(15),
	datab => \inst|LessThan0~0_combout\,
	datac => \inst|Mux40~0_combout\,
	datad => \inst|keys_double[2]~13_combout\,
	combout => \inst|keys_double[15]~81_combout\);

-- Location: LCCOMB_X28_Y11_N18
\inst|keys_double[15]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|keys_double[15]~82_combout\ = (\inst|keys_int\(0) & (((\inst|keys_double[15]~10_combout\ & !\inst|Mux32~1_combout\)))) # (!\inst|keys_int\(0) & ((\inst|keys_double[15]~9_combout\) # ((\inst|keys_double[15]~10_combout\ & !\inst|Mux32~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|keys_int\(0),
	datab => \inst|keys_double[15]~9_combout\,
	datac => \inst|keys_double[15]~10_combout\,
	datad => \inst|Mux32~1_combout\,
	combout => \inst|keys_double[15]~82_combout\);

-- Location: LCCOMB_X25_Y11_N8
\inst|keys_double[15]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|keys_double[15]~83_combout\ = (\inst|keys_double[15]~81_combout\) # ((\inst|keys_double[15]~8_combout\ & (\inst|keys_double[15]~33_combout\ & \inst|keys_double[15]~82_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|keys_double[15]~81_combout\,
	datab => \inst|keys_double[15]~8_combout\,
	datac => \inst|keys_double[15]~33_combout\,
	datad => \inst|keys_double[15]~82_combout\,
	combout => \inst|keys_double[15]~83_combout\);

-- Location: FF_X25_Y11_N9
\inst|keys_double[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|keys_double[15]~83_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|keys_double\(15));

-- Location: LCCOMB_X24_Y12_N12
\inst|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan1~0_combout\ = (!\inst|keys_int\(15) & (!\inst|keys_double\(15) & ((!\inst|Add14~2_combout\) # (!\inst|Add14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|keys_int\(15),
	datab => \inst|Add14~0_combout\,
	datac => \inst|Add14~2_combout\,
	datad => \inst|keys_double\(15),
	combout => \inst|LessThan1~0_combout\);

-- Location: LCCOMB_X24_Y11_N30
\inst|Add10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add10~2_combout\ = (\inst|process_1~7_combout\ & (\inst|process_1~8_combout\ & (\inst|process_1~9_combout\ & \inst|process_1~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|process_1~7_combout\,
	datab => \inst|process_1~8_combout\,
	datac => \inst|process_1~9_combout\,
	datad => \inst|process_1~10_combout\,
	combout => \inst|Add10~2_combout\);

-- Location: LCCOMB_X24_Y11_N4
\inst|Add6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add6~2_combout\ = (\inst|process_1~6_combout\ & (\inst|process_1~5_combout\ & (\inst|process_1~3_combout\ & \inst|process_1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|process_1~6_combout\,
	datab => \inst|process_1~5_combout\,
	datac => \inst|process_1~3_combout\,
	datad => \inst|process_1~4_combout\,
	combout => \inst|Add6~2_combout\);

-- Location: LCCOMB_X24_Y11_N18
\inst|Add8~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add8~4_combout\ = ((\inst|Add10~2_combout\ $ (\inst|Add6~2_combout\ $ (!\inst|Add8~3\)))) # (GND)
-- \inst|Add8~5\ = CARRY((\inst|Add10~2_combout\ & ((\inst|Add6~2_combout\) # (!\inst|Add8~3\))) # (!\inst|Add10~2_combout\ & (\inst|Add6~2_combout\ & !\inst|Add8~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add10~2_combout\,
	datab => \inst|Add6~2_combout\,
	datad => VCC,
	cin => \inst|Add8~3\,
	combout => \inst|Add8~4_combout\,
	cout => \inst|Add8~5\);

-- Location: LCCOMB_X24_Y11_N20
\inst|Add8~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add8~6_combout\ = \inst|Add8~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst|Add8~5\,
	combout => \inst|Add8~6_combout\);

-- Location: LCCOMB_X25_Y12_N4
\inst|Add12~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add12~4_combout\ = (\inst|Add12~3\ & (\inst|Add2~0_combout\ & (\inst|Add3~1_combout\ & VCC))) # (!\inst|Add12~3\ & ((((\inst|Add2~0_combout\ & \inst|Add3~1_combout\)))))
-- \inst|Add12~5\ = CARRY((\inst|Add2~0_combout\ & (\inst|Add3~1_combout\ & !\inst|Add12~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add2~0_combout\,
	datab => \inst|Add3~1_combout\,
	datad => VCC,
	cin => \inst|Add12~3\,
	combout => \inst|Add12~4_combout\,
	cout => \inst|Add12~5\);

-- Location: LCCOMB_X25_Y12_N6
\inst|Add12~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add12~6_combout\ = \inst|Add12~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst|Add12~5\,
	combout => \inst|Add12~6_combout\);

-- Location: LCCOMB_X25_Y12_N14
\inst|Add14~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add14~4_combout\ = ((\inst|Add8~4_combout\ $ (\inst|Add12~4_combout\ $ (!\inst|Add14~3\)))) # (GND)
-- \inst|Add14~5\ = CARRY((\inst|Add8~4_combout\ & ((\inst|Add12~4_combout\) # (!\inst|Add14~3\))) # (!\inst|Add8~4_combout\ & (\inst|Add12~4_combout\ & !\inst|Add14~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add8~4_combout\,
	datab => \inst|Add12~4_combout\,
	datad => VCC,
	cin => \inst|Add14~3\,
	combout => \inst|Add14~4_combout\,
	cout => \inst|Add14~5\);

-- Location: LCCOMB_X25_Y12_N16
\inst|Add14~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add14~6_combout\ = (\inst|Add8~6_combout\ & ((\inst|Add12~6_combout\ & (\inst|Add14~5\ & VCC)) # (!\inst|Add12~6_combout\ & (!\inst|Add14~5\)))) # (!\inst|Add8~6_combout\ & ((\inst|Add12~6_combout\ & (!\inst|Add14~5\)) # (!\inst|Add12~6_combout\ & 
-- ((\inst|Add14~5\) # (GND)))))
-- \inst|Add14~7\ = CARRY((\inst|Add8~6_combout\ & (!\inst|Add12~6_combout\ & !\inst|Add14~5\)) # (!\inst|Add8~6_combout\ & ((!\inst|Add14~5\) # (!\inst|Add12~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add8~6_combout\,
	datab => \inst|Add12~6_combout\,
	datad => VCC,
	cin => \inst|Add14~5\,
	combout => \inst|Add14~6_combout\,
	cout => \inst|Add14~7\);

-- Location: LCCOMB_X25_Y12_N18
\inst|Add14~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add14~8_combout\ = !\inst|Add14~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst|Add14~7\,
	combout => \inst|Add14~8_combout\);

-- Location: LCCOMB_X24_Y12_N2
\inst|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan1~1_combout\ = (\inst|LessThan1~0_combout\ & (!\inst|Add14~6_combout\ & (!\inst|Add14~4_combout\ & !\inst|Add14~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan1~0_combout\,
	datab => \inst|Add14~6_combout\,
	datac => \inst|Add14~4_combout\,
	datad => \inst|Add14~8_combout\,
	combout => \inst|LessThan1~1_combout\);

-- Location: LCCOMB_X25_Y12_N20
\inst|Add15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add15~0_combout\ = \inst|Add14~0_combout\ $ (VCC)
-- \inst|Add15~1\ = CARRY(\inst|Add14~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add14~0_combout\,
	datad => VCC,
	combout => \inst|Add15~0_combout\,
	cout => \inst|Add15~1\);

-- Location: LCCOMB_X25_Y12_N22
\inst|Add15~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add15~2_combout\ = (\inst|Add14~2_combout\ & (!\inst|Add15~1\)) # (!\inst|Add14~2_combout\ & ((\inst|Add15~1\) # (GND)))
-- \inst|Add15~3\ = CARRY((!\inst|Add15~1\) # (!\inst|Add14~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add14~2_combout\,
	datad => VCC,
	cin => \inst|Add15~1\,
	combout => \inst|Add15~2_combout\,
	cout => \inst|Add15~3\);

-- Location: LCCOMB_X25_Y12_N24
\inst|Add15~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add15~4_combout\ = (\inst|Add14~4_combout\ & (\inst|Add15~3\ $ (GND))) # (!\inst|Add14~4_combout\ & (!\inst|Add15~3\ & VCC))
-- \inst|Add15~5\ = CARRY((\inst|Add14~4_combout\ & !\inst|Add15~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|Add14~4_combout\,
	datad => VCC,
	cin => \inst|Add15~3\,
	combout => \inst|Add15~4_combout\,
	cout => \inst|Add15~5\);

-- Location: LCCOMB_X23_Y12_N16
\inst|LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan1~2_combout\ = (\inst|Add15~0_combout\ & (!\inst|Add15~2_combout\ & ((\inst|keys_int\(15)) # (\inst|keys_double\(15))))) # (!\inst|Add15~0_combout\ & ((\inst|keys_int\(15)) # ((\inst|keys_double\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add15~0_combout\,
	datab => \inst|keys_int\(15),
	datac => \inst|keys_double\(15),
	datad => \inst|Add15~2_combout\,
	combout => \inst|LessThan1~2_combout\);

-- Location: LCCOMB_X25_Y12_N26
\inst|Add15~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add15~6_combout\ = (\inst|Add14~6_combout\ & (!\inst|Add15~5\)) # (!\inst|Add14~6_combout\ & ((\inst|Add15~5\) # (GND)))
-- \inst|Add15~7\ = CARRY((!\inst|Add15~5\) # (!\inst|Add14~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|Add14~6_combout\,
	datad => VCC,
	cin => \inst|Add15~5\,
	combout => \inst|Add15~6_combout\,
	cout => \inst|Add15~7\);

-- Location: LCCOMB_X24_Y12_N8
\inst|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux4~0_combout\ = (!\inst|Add15~4_combout\ & (\inst|LessThan1~2_combout\ & !\inst|Add15~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add15~4_combout\,
	datac => \inst|LessThan1~2_combout\,
	datad => \inst|Add15~6_combout\,
	combout => \inst|Mux4~0_combout\);

-- Location: LCCOMB_X25_Y12_N28
\inst|Add15~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add15~8_combout\ = \inst|Add15~7\ $ (!\inst|Add14~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|Add14~8_combout\,
	cin => \inst|Add15~7\,
	combout => \inst|Add15~8_combout\);

-- Location: LCCOMB_X24_Y12_N26
\inst|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux2~0_combout\ = (\inst|process_1~1_combout\ & ((\inst|LessThan1~1_combout\) # ((\inst|Mux4~0_combout\ & !\inst|Add15~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|process_1~1_combout\,
	datab => \inst|LessThan1~1_combout\,
	datac => \inst|Mux4~0_combout\,
	datad => \inst|Add15~8_combout\,
	combout => \inst|Mux2~0_combout\);

-- Location: LCCOMB_X23_Y12_N14
\inst|keys_stored[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|keys_stored[0]~0_combout\ = (\rst~input_o\ & (!\inst|columns\(4) & !\inst|columns\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst~input_o\,
	datac => \inst|columns\(4),
	datad => \inst|columns\(3),
	combout => \inst|keys_stored[0]~0_combout\);

-- Location: LCCOMB_X28_Y12_N8
\inst|keys_stored[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|keys_stored[0]~1_combout\ = (\inst|keys_stored[0]~0_combout\ & (!\inst|columns\(2) & (\inst|LessThan0~0_combout\ & !\inst|columns\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|keys_stored[0]~0_combout\,
	datab => \inst|columns\(2),
	datac => \inst|LessThan0~0_combout\,
	datad => \inst|columns\(1),
	combout => \inst|keys_stored[0]~1_combout\);

-- Location: FF_X24_Y12_N27
\inst|keys_stored[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Mux2~0_combout\,
	ena => \inst|keys_stored[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|keys_stored\(2));

-- Location: LCCOMB_X25_Y7_N10
\inst|row_debounce:2:debounce_keys|flipflops[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:2:debounce_keys|flipflops[0]~feeder_combout\ = \inst|keys_stored\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|keys_stored\(2),
	combout => \inst|row_debounce:2:debounce_keys|flipflops[0]~feeder_combout\);

-- Location: FF_X25_Y7_N11
\inst|row_debounce:2:debounce_keys|flipflops[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:2:debounce_keys|flipflops[0]~feeder_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:2:debounce_keys|flipflops\(0));

-- Location: LCCOMB_X25_Y7_N16
\inst|row_debounce:2:debounce_keys|flipflops[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:2:debounce_keys|flipflops[1]~feeder_combout\ = \inst|row_debounce:2:debounce_keys|flipflops\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|row_debounce:2:debounce_keys|flipflops\(0),
	combout => \inst|row_debounce:2:debounce_keys|flipflops[1]~feeder_combout\);

-- Location: FF_X25_Y7_N17
\inst|row_debounce:2:debounce_keys|flipflops[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:2:debounce_keys|flipflops[1]~feeder_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:2:debounce_keys|flipflops\(1));

-- Location: LCCOMB_X29_Y8_N14
\inst|row_debounce:2:debounce_keys|count[0]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:2:debounce_keys|count[0]~19_combout\ = \inst|row_debounce:2:debounce_keys|count\(0) $ (VCC)
-- \inst|row_debounce:2:debounce_keys|count[0]~20\ = CARRY(\inst|row_debounce:2:debounce_keys|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:2:debounce_keys|count\(0),
	datad => VCC,
	combout => \inst|row_debounce:2:debounce_keys|count[0]~19_combout\,
	cout => \inst|row_debounce:2:debounce_keys|count[0]~20\);

-- Location: LCCOMB_X29_Y7_N24
\inst|row_debounce:2:debounce_keys|counter_set\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:2:debounce_keys|counter_set~combout\ = \inst|row_debounce:2:debounce_keys|flipflops\(0) $ (\inst|row_debounce:2:debounce_keys|flipflops\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|row_debounce:2:debounce_keys|flipflops\(0),
	datad => \inst|row_debounce:2:debounce_keys|flipflops\(1),
	combout => \inst|row_debounce:2:debounce_keys|counter_set~combout\);

-- Location: LCCOMB_X29_Y7_N22
\inst|row_debounce:2:debounce_keys|count[18]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:2:debounce_keys|count[18]~31_combout\ = (\rst~input_o\ & \inst|row_debounce:2:debounce_keys|result~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst~input_o\,
	datac => \inst|row_debounce:2:debounce_keys|result~4_combout\,
	combout => \inst|row_debounce:2:debounce_keys|count[18]~31_combout\);

-- Location: FF_X29_Y8_N15
\inst|row_debounce:2:debounce_keys|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:2:debounce_keys|count[0]~19_combout\,
	sclr => \inst|row_debounce:2:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:2:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:2:debounce_keys|count\(0));

-- Location: LCCOMB_X29_Y8_N16
\inst|row_debounce:2:debounce_keys|count[1]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:2:debounce_keys|count[1]~21_combout\ = (\inst|row_debounce:2:debounce_keys|count\(1) & (!\inst|row_debounce:2:debounce_keys|count[0]~20\)) # (!\inst|row_debounce:2:debounce_keys|count\(1) & 
-- ((\inst|row_debounce:2:debounce_keys|count[0]~20\) # (GND)))
-- \inst|row_debounce:2:debounce_keys|count[1]~22\ = CARRY((!\inst|row_debounce:2:debounce_keys|count[0]~20\) # (!\inst|row_debounce:2:debounce_keys|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:2:debounce_keys|count\(1),
	datad => VCC,
	cin => \inst|row_debounce:2:debounce_keys|count[0]~20\,
	combout => \inst|row_debounce:2:debounce_keys|count[1]~21_combout\,
	cout => \inst|row_debounce:2:debounce_keys|count[1]~22\);

-- Location: FF_X29_Y8_N17
\inst|row_debounce:2:debounce_keys|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:2:debounce_keys|count[1]~21_combout\,
	sclr => \inst|row_debounce:2:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:2:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:2:debounce_keys|count\(1));

-- Location: LCCOMB_X29_Y8_N18
\inst|row_debounce:2:debounce_keys|count[2]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:2:debounce_keys|count[2]~23_combout\ = (\inst|row_debounce:2:debounce_keys|count\(2) & (\inst|row_debounce:2:debounce_keys|count[1]~22\ $ (GND))) # (!\inst|row_debounce:2:debounce_keys|count\(2) & 
-- (!\inst|row_debounce:2:debounce_keys|count[1]~22\ & VCC))
-- \inst|row_debounce:2:debounce_keys|count[2]~24\ = CARRY((\inst|row_debounce:2:debounce_keys|count\(2) & !\inst|row_debounce:2:debounce_keys|count[1]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:2:debounce_keys|count\(2),
	datad => VCC,
	cin => \inst|row_debounce:2:debounce_keys|count[1]~22\,
	combout => \inst|row_debounce:2:debounce_keys|count[2]~23_combout\,
	cout => \inst|row_debounce:2:debounce_keys|count[2]~24\);

-- Location: FF_X29_Y8_N19
\inst|row_debounce:2:debounce_keys|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:2:debounce_keys|count[2]~23_combout\,
	sclr => \inst|row_debounce:2:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:2:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:2:debounce_keys|count\(2));

-- Location: LCCOMB_X29_Y8_N20
\inst|row_debounce:2:debounce_keys|count[3]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:2:debounce_keys|count[3]~25_combout\ = (\inst|row_debounce:2:debounce_keys|count\(3) & (!\inst|row_debounce:2:debounce_keys|count[2]~24\)) # (!\inst|row_debounce:2:debounce_keys|count\(3) & 
-- ((\inst|row_debounce:2:debounce_keys|count[2]~24\) # (GND)))
-- \inst|row_debounce:2:debounce_keys|count[3]~26\ = CARRY((!\inst|row_debounce:2:debounce_keys|count[2]~24\) # (!\inst|row_debounce:2:debounce_keys|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:2:debounce_keys|count\(3),
	datad => VCC,
	cin => \inst|row_debounce:2:debounce_keys|count[2]~24\,
	combout => \inst|row_debounce:2:debounce_keys|count[3]~25_combout\,
	cout => \inst|row_debounce:2:debounce_keys|count[3]~26\);

-- Location: FF_X29_Y8_N21
\inst|row_debounce:2:debounce_keys|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:2:debounce_keys|count[3]~25_combout\,
	sclr => \inst|row_debounce:2:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:2:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:2:debounce_keys|count\(3));

-- Location: LCCOMB_X29_Y8_N22
\inst|row_debounce:2:debounce_keys|count[4]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:2:debounce_keys|count[4]~27_combout\ = (\inst|row_debounce:2:debounce_keys|count\(4) & (\inst|row_debounce:2:debounce_keys|count[3]~26\ $ (GND))) # (!\inst|row_debounce:2:debounce_keys|count\(4) & 
-- (!\inst|row_debounce:2:debounce_keys|count[3]~26\ & VCC))
-- \inst|row_debounce:2:debounce_keys|count[4]~28\ = CARRY((\inst|row_debounce:2:debounce_keys|count\(4) & !\inst|row_debounce:2:debounce_keys|count[3]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:2:debounce_keys|count\(4),
	datad => VCC,
	cin => \inst|row_debounce:2:debounce_keys|count[3]~26\,
	combout => \inst|row_debounce:2:debounce_keys|count[4]~27_combout\,
	cout => \inst|row_debounce:2:debounce_keys|count[4]~28\);

-- Location: FF_X29_Y8_N23
\inst|row_debounce:2:debounce_keys|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:2:debounce_keys|count[4]~27_combout\,
	sclr => \inst|row_debounce:2:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:2:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:2:debounce_keys|count\(4));

-- Location: LCCOMB_X29_Y8_N24
\inst|row_debounce:2:debounce_keys|count[5]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:2:debounce_keys|count[5]~29_combout\ = (\inst|row_debounce:2:debounce_keys|count\(5) & (!\inst|row_debounce:2:debounce_keys|count[4]~28\)) # (!\inst|row_debounce:2:debounce_keys|count\(5) & 
-- ((\inst|row_debounce:2:debounce_keys|count[4]~28\) # (GND)))
-- \inst|row_debounce:2:debounce_keys|count[5]~30\ = CARRY((!\inst|row_debounce:2:debounce_keys|count[4]~28\) # (!\inst|row_debounce:2:debounce_keys|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:2:debounce_keys|count\(5),
	datad => VCC,
	cin => \inst|row_debounce:2:debounce_keys|count[4]~28\,
	combout => \inst|row_debounce:2:debounce_keys|count[5]~29_combout\,
	cout => \inst|row_debounce:2:debounce_keys|count[5]~30\);

-- Location: FF_X29_Y8_N25
\inst|row_debounce:2:debounce_keys|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:2:debounce_keys|count[5]~29_combout\,
	sclr => \inst|row_debounce:2:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:2:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:2:debounce_keys|count\(5));

-- Location: LCCOMB_X29_Y8_N26
\inst|row_debounce:2:debounce_keys|count[6]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:2:debounce_keys|count[6]~32_combout\ = (\inst|row_debounce:2:debounce_keys|count\(6) & (\inst|row_debounce:2:debounce_keys|count[5]~30\ $ (GND))) # (!\inst|row_debounce:2:debounce_keys|count\(6) & 
-- (!\inst|row_debounce:2:debounce_keys|count[5]~30\ & VCC))
-- \inst|row_debounce:2:debounce_keys|count[6]~33\ = CARRY((\inst|row_debounce:2:debounce_keys|count\(6) & !\inst|row_debounce:2:debounce_keys|count[5]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:2:debounce_keys|count\(6),
	datad => VCC,
	cin => \inst|row_debounce:2:debounce_keys|count[5]~30\,
	combout => \inst|row_debounce:2:debounce_keys|count[6]~32_combout\,
	cout => \inst|row_debounce:2:debounce_keys|count[6]~33\);

-- Location: FF_X29_Y8_N27
\inst|row_debounce:2:debounce_keys|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:2:debounce_keys|count[6]~32_combout\,
	sclr => \inst|row_debounce:2:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:2:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:2:debounce_keys|count\(6));

-- Location: LCCOMB_X29_Y8_N28
\inst|row_debounce:2:debounce_keys|count[7]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:2:debounce_keys|count[7]~34_combout\ = (\inst|row_debounce:2:debounce_keys|count\(7) & (!\inst|row_debounce:2:debounce_keys|count[6]~33\)) # (!\inst|row_debounce:2:debounce_keys|count\(7) & 
-- ((\inst|row_debounce:2:debounce_keys|count[6]~33\) # (GND)))
-- \inst|row_debounce:2:debounce_keys|count[7]~35\ = CARRY((!\inst|row_debounce:2:debounce_keys|count[6]~33\) # (!\inst|row_debounce:2:debounce_keys|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:2:debounce_keys|count\(7),
	datad => VCC,
	cin => \inst|row_debounce:2:debounce_keys|count[6]~33\,
	combout => \inst|row_debounce:2:debounce_keys|count[7]~34_combout\,
	cout => \inst|row_debounce:2:debounce_keys|count[7]~35\);

-- Location: FF_X29_Y8_N29
\inst|row_debounce:2:debounce_keys|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:2:debounce_keys|count[7]~34_combout\,
	sclr => \inst|row_debounce:2:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:2:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:2:debounce_keys|count\(7));

-- Location: LCCOMB_X29_Y8_N30
\inst|row_debounce:2:debounce_keys|count[8]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:2:debounce_keys|count[8]~36_combout\ = (\inst|row_debounce:2:debounce_keys|count\(8) & (\inst|row_debounce:2:debounce_keys|count[7]~35\ $ (GND))) # (!\inst|row_debounce:2:debounce_keys|count\(8) & 
-- (!\inst|row_debounce:2:debounce_keys|count[7]~35\ & VCC))
-- \inst|row_debounce:2:debounce_keys|count[8]~37\ = CARRY((\inst|row_debounce:2:debounce_keys|count\(8) & !\inst|row_debounce:2:debounce_keys|count[7]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:2:debounce_keys|count\(8),
	datad => VCC,
	cin => \inst|row_debounce:2:debounce_keys|count[7]~35\,
	combout => \inst|row_debounce:2:debounce_keys|count[8]~36_combout\,
	cout => \inst|row_debounce:2:debounce_keys|count[8]~37\);

-- Location: FF_X29_Y8_N31
\inst|row_debounce:2:debounce_keys|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:2:debounce_keys|count[8]~36_combout\,
	sclr => \inst|row_debounce:2:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:2:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:2:debounce_keys|count\(8));

-- Location: LCCOMB_X29_Y7_N0
\inst|row_debounce:2:debounce_keys|count[9]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:2:debounce_keys|count[9]~38_combout\ = (\inst|row_debounce:2:debounce_keys|count\(9) & (!\inst|row_debounce:2:debounce_keys|count[8]~37\)) # (!\inst|row_debounce:2:debounce_keys|count\(9) & 
-- ((\inst|row_debounce:2:debounce_keys|count[8]~37\) # (GND)))
-- \inst|row_debounce:2:debounce_keys|count[9]~39\ = CARRY((!\inst|row_debounce:2:debounce_keys|count[8]~37\) # (!\inst|row_debounce:2:debounce_keys|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:2:debounce_keys|count\(9),
	datad => VCC,
	cin => \inst|row_debounce:2:debounce_keys|count[8]~37\,
	combout => \inst|row_debounce:2:debounce_keys|count[9]~38_combout\,
	cout => \inst|row_debounce:2:debounce_keys|count[9]~39\);

-- Location: FF_X29_Y7_N1
\inst|row_debounce:2:debounce_keys|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:2:debounce_keys|count[9]~38_combout\,
	sclr => \inst|row_debounce:2:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:2:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:2:debounce_keys|count\(9));

-- Location: LCCOMB_X29_Y7_N2
\inst|row_debounce:2:debounce_keys|count[10]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:2:debounce_keys|count[10]~40_combout\ = (\inst|row_debounce:2:debounce_keys|count\(10) & (\inst|row_debounce:2:debounce_keys|count[9]~39\ $ (GND))) # (!\inst|row_debounce:2:debounce_keys|count\(10) & 
-- (!\inst|row_debounce:2:debounce_keys|count[9]~39\ & VCC))
-- \inst|row_debounce:2:debounce_keys|count[10]~41\ = CARRY((\inst|row_debounce:2:debounce_keys|count\(10) & !\inst|row_debounce:2:debounce_keys|count[9]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:2:debounce_keys|count\(10),
	datad => VCC,
	cin => \inst|row_debounce:2:debounce_keys|count[9]~39\,
	combout => \inst|row_debounce:2:debounce_keys|count[10]~40_combout\,
	cout => \inst|row_debounce:2:debounce_keys|count[10]~41\);

-- Location: FF_X29_Y7_N3
\inst|row_debounce:2:debounce_keys|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:2:debounce_keys|count[10]~40_combout\,
	sclr => \inst|row_debounce:2:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:2:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:2:debounce_keys|count\(10));

-- Location: LCCOMB_X29_Y7_N4
\inst|row_debounce:2:debounce_keys|count[11]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:2:debounce_keys|count[11]~42_combout\ = (\inst|row_debounce:2:debounce_keys|count\(11) & (!\inst|row_debounce:2:debounce_keys|count[10]~41\)) # (!\inst|row_debounce:2:debounce_keys|count\(11) & 
-- ((\inst|row_debounce:2:debounce_keys|count[10]~41\) # (GND)))
-- \inst|row_debounce:2:debounce_keys|count[11]~43\ = CARRY((!\inst|row_debounce:2:debounce_keys|count[10]~41\) # (!\inst|row_debounce:2:debounce_keys|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:2:debounce_keys|count\(11),
	datad => VCC,
	cin => \inst|row_debounce:2:debounce_keys|count[10]~41\,
	combout => \inst|row_debounce:2:debounce_keys|count[11]~42_combout\,
	cout => \inst|row_debounce:2:debounce_keys|count[11]~43\);

-- Location: FF_X29_Y7_N5
\inst|row_debounce:2:debounce_keys|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:2:debounce_keys|count[11]~42_combout\,
	sclr => \inst|row_debounce:2:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:2:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:2:debounce_keys|count\(11));

-- Location: LCCOMB_X29_Y7_N6
\inst|row_debounce:2:debounce_keys|count[12]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:2:debounce_keys|count[12]~44_combout\ = (\inst|row_debounce:2:debounce_keys|count\(12) & (\inst|row_debounce:2:debounce_keys|count[11]~43\ $ (GND))) # (!\inst|row_debounce:2:debounce_keys|count\(12) & 
-- (!\inst|row_debounce:2:debounce_keys|count[11]~43\ & VCC))
-- \inst|row_debounce:2:debounce_keys|count[12]~45\ = CARRY((\inst|row_debounce:2:debounce_keys|count\(12) & !\inst|row_debounce:2:debounce_keys|count[11]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:2:debounce_keys|count\(12),
	datad => VCC,
	cin => \inst|row_debounce:2:debounce_keys|count[11]~43\,
	combout => \inst|row_debounce:2:debounce_keys|count[12]~44_combout\,
	cout => \inst|row_debounce:2:debounce_keys|count[12]~45\);

-- Location: FF_X29_Y7_N7
\inst|row_debounce:2:debounce_keys|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:2:debounce_keys|count[12]~44_combout\,
	sclr => \inst|row_debounce:2:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:2:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:2:debounce_keys|count\(12));

-- Location: LCCOMB_X29_Y7_N8
\inst|row_debounce:2:debounce_keys|count[13]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:2:debounce_keys|count[13]~46_combout\ = (\inst|row_debounce:2:debounce_keys|count\(13) & (!\inst|row_debounce:2:debounce_keys|count[12]~45\)) # (!\inst|row_debounce:2:debounce_keys|count\(13) & 
-- ((\inst|row_debounce:2:debounce_keys|count[12]~45\) # (GND)))
-- \inst|row_debounce:2:debounce_keys|count[13]~47\ = CARRY((!\inst|row_debounce:2:debounce_keys|count[12]~45\) # (!\inst|row_debounce:2:debounce_keys|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:2:debounce_keys|count\(13),
	datad => VCC,
	cin => \inst|row_debounce:2:debounce_keys|count[12]~45\,
	combout => \inst|row_debounce:2:debounce_keys|count[13]~46_combout\,
	cout => \inst|row_debounce:2:debounce_keys|count[13]~47\);

-- Location: FF_X29_Y7_N9
\inst|row_debounce:2:debounce_keys|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:2:debounce_keys|count[13]~46_combout\,
	sclr => \inst|row_debounce:2:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:2:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:2:debounce_keys|count\(13));

-- Location: LCCOMB_X29_Y7_N10
\inst|row_debounce:2:debounce_keys|count[14]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:2:debounce_keys|count[14]~48_combout\ = (\inst|row_debounce:2:debounce_keys|count\(14) & (\inst|row_debounce:2:debounce_keys|count[13]~47\ $ (GND))) # (!\inst|row_debounce:2:debounce_keys|count\(14) & 
-- (!\inst|row_debounce:2:debounce_keys|count[13]~47\ & VCC))
-- \inst|row_debounce:2:debounce_keys|count[14]~49\ = CARRY((\inst|row_debounce:2:debounce_keys|count\(14) & !\inst|row_debounce:2:debounce_keys|count[13]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:2:debounce_keys|count\(14),
	datad => VCC,
	cin => \inst|row_debounce:2:debounce_keys|count[13]~47\,
	combout => \inst|row_debounce:2:debounce_keys|count[14]~48_combout\,
	cout => \inst|row_debounce:2:debounce_keys|count[14]~49\);

-- Location: FF_X29_Y7_N11
\inst|row_debounce:2:debounce_keys|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:2:debounce_keys|count[14]~48_combout\,
	sclr => \inst|row_debounce:2:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:2:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:2:debounce_keys|count\(14));

-- Location: LCCOMB_X29_Y7_N12
\inst|row_debounce:2:debounce_keys|count[15]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:2:debounce_keys|count[15]~50_combout\ = (\inst|row_debounce:2:debounce_keys|count\(15) & (!\inst|row_debounce:2:debounce_keys|count[14]~49\)) # (!\inst|row_debounce:2:debounce_keys|count\(15) & 
-- ((\inst|row_debounce:2:debounce_keys|count[14]~49\) # (GND)))
-- \inst|row_debounce:2:debounce_keys|count[15]~51\ = CARRY((!\inst|row_debounce:2:debounce_keys|count[14]~49\) # (!\inst|row_debounce:2:debounce_keys|count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:2:debounce_keys|count\(15),
	datad => VCC,
	cin => \inst|row_debounce:2:debounce_keys|count[14]~49\,
	combout => \inst|row_debounce:2:debounce_keys|count[15]~50_combout\,
	cout => \inst|row_debounce:2:debounce_keys|count[15]~51\);

-- Location: FF_X29_Y7_N13
\inst|row_debounce:2:debounce_keys|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:2:debounce_keys|count[15]~50_combout\,
	sclr => \inst|row_debounce:2:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:2:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:2:debounce_keys|count\(15));

-- Location: LCCOMB_X29_Y7_N14
\inst|row_debounce:2:debounce_keys|count[16]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:2:debounce_keys|count[16]~52_combout\ = (\inst|row_debounce:2:debounce_keys|count\(16) & (\inst|row_debounce:2:debounce_keys|count[15]~51\ $ (GND))) # (!\inst|row_debounce:2:debounce_keys|count\(16) & 
-- (!\inst|row_debounce:2:debounce_keys|count[15]~51\ & VCC))
-- \inst|row_debounce:2:debounce_keys|count[16]~53\ = CARRY((\inst|row_debounce:2:debounce_keys|count\(16) & !\inst|row_debounce:2:debounce_keys|count[15]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:2:debounce_keys|count\(16),
	datad => VCC,
	cin => \inst|row_debounce:2:debounce_keys|count[15]~51\,
	combout => \inst|row_debounce:2:debounce_keys|count[16]~52_combout\,
	cout => \inst|row_debounce:2:debounce_keys|count[16]~53\);

-- Location: FF_X29_Y7_N15
\inst|row_debounce:2:debounce_keys|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:2:debounce_keys|count[16]~52_combout\,
	sclr => \inst|row_debounce:2:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:2:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:2:debounce_keys|count\(16));

-- Location: LCCOMB_X29_Y7_N28
\inst|row_debounce:2:debounce_keys|result~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:2:debounce_keys|result~3_combout\ = ((\inst|row_debounce:2:debounce_keys|flipflops\(1) $ (\inst|row_debounce:2:debounce_keys|flipflops\(0))) # (!\inst|row_debounce:2:debounce_keys|count\(15))) # 
-- (!\inst|row_debounce:2:debounce_keys|count\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:2:debounce_keys|flipflops\(1),
	datab => \inst|row_debounce:2:debounce_keys|count\(16),
	datac => \inst|row_debounce:2:debounce_keys|flipflops\(0),
	datad => \inst|row_debounce:2:debounce_keys|count\(15),
	combout => \inst|row_debounce:2:debounce_keys|result~3_combout\);

-- Location: LCCOMB_X29_Y7_N16
\inst|row_debounce:2:debounce_keys|count[17]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:2:debounce_keys|count[17]~54_combout\ = (\inst|row_debounce:2:debounce_keys|count\(17) & (!\inst|row_debounce:2:debounce_keys|count[16]~53\)) # (!\inst|row_debounce:2:debounce_keys|count\(17) & 
-- ((\inst|row_debounce:2:debounce_keys|count[16]~53\) # (GND)))
-- \inst|row_debounce:2:debounce_keys|count[17]~55\ = CARRY((!\inst|row_debounce:2:debounce_keys|count[16]~53\) # (!\inst|row_debounce:2:debounce_keys|count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:2:debounce_keys|count\(17),
	datad => VCC,
	cin => \inst|row_debounce:2:debounce_keys|count[16]~53\,
	combout => \inst|row_debounce:2:debounce_keys|count[17]~54_combout\,
	cout => \inst|row_debounce:2:debounce_keys|count[17]~55\);

-- Location: FF_X29_Y7_N17
\inst|row_debounce:2:debounce_keys|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:2:debounce_keys|count[17]~54_combout\,
	sclr => \inst|row_debounce:2:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:2:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:2:debounce_keys|count\(17));

-- Location: LCCOMB_X29_Y7_N18
\inst|row_debounce:2:debounce_keys|count[18]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:2:debounce_keys|count[18]~56_combout\ = \inst|row_debounce:2:debounce_keys|count[17]~55\ $ (!\inst|row_debounce:2:debounce_keys|count\(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|row_debounce:2:debounce_keys|count\(18),
	cin => \inst|row_debounce:2:debounce_keys|count[17]~55\,
	combout => \inst|row_debounce:2:debounce_keys|count[18]~56_combout\);

-- Location: FF_X29_Y7_N19
\inst|row_debounce:2:debounce_keys|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:2:debounce_keys|count[18]~56_combout\,
	sclr => \inst|row_debounce:2:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:2:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:2:debounce_keys|count\(18));

-- Location: LCCOMB_X29_Y8_N12
\inst|row_debounce:2:debounce_keys|result~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:2:debounce_keys|result~0_combout\ = ((!\inst|row_debounce:2:debounce_keys|count\(7) & (!\inst|row_debounce:2:debounce_keys|count\(6) & !\inst|row_debounce:2:debounce_keys|count\(5)))) # (!\inst|row_debounce:2:debounce_keys|count\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:2:debounce_keys|count\(8),
	datab => \inst|row_debounce:2:debounce_keys|count\(7),
	datac => \inst|row_debounce:2:debounce_keys|count\(6),
	datad => \inst|row_debounce:2:debounce_keys|count\(5),
	combout => \inst|row_debounce:2:debounce_keys|result~0_combout\);

-- Location: LCCOMB_X29_Y7_N20
\inst|row_debounce:2:debounce_keys|result~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:2:debounce_keys|result~1_combout\ = (!\inst|row_debounce:2:debounce_keys|count\(12) & (!\inst|row_debounce:2:debounce_keys|count\(10) & (!\inst|row_debounce:2:debounce_keys|count\(11) & !\inst|row_debounce:2:debounce_keys|count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:2:debounce_keys|count\(12),
	datab => \inst|row_debounce:2:debounce_keys|count\(10),
	datac => \inst|row_debounce:2:debounce_keys|count\(11),
	datad => \inst|row_debounce:2:debounce_keys|count\(9),
	combout => \inst|row_debounce:2:debounce_keys|result~1_combout\);

-- Location: LCCOMB_X29_Y7_N30
\inst|row_debounce:2:debounce_keys|result~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:2:debounce_keys|result~2_combout\ = (!\inst|row_debounce:2:debounce_keys|count\(14) & (((\inst|row_debounce:2:debounce_keys|result~0_combout\ & \inst|row_debounce:2:debounce_keys|result~1_combout\)) # 
-- (!\inst|row_debounce:2:debounce_keys|count\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:2:debounce_keys|result~0_combout\,
	datab => \inst|row_debounce:2:debounce_keys|result~1_combout\,
	datac => \inst|row_debounce:2:debounce_keys|count\(13),
	datad => \inst|row_debounce:2:debounce_keys|count\(14),
	combout => \inst|row_debounce:2:debounce_keys|result~2_combout\);

-- Location: LCCOMB_X29_Y7_N26
\inst|row_debounce:2:debounce_keys|result~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:2:debounce_keys|result~4_combout\ = (\inst|row_debounce:2:debounce_keys|result~3_combout\) # (((\inst|row_debounce:2:debounce_keys|result~2_combout\) # (!\inst|row_debounce:2:debounce_keys|count\(17))) # 
-- (!\inst|row_debounce:2:debounce_keys|count\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:2:debounce_keys|result~3_combout\,
	datab => \inst|row_debounce:2:debounce_keys|count\(18),
	datac => \inst|row_debounce:2:debounce_keys|result~2_combout\,
	datad => \inst|row_debounce:2:debounce_keys|count\(17),
	combout => \inst|row_debounce:2:debounce_keys|result~4_combout\);

-- Location: LCCOMB_X25_Y7_N12
\inst|row_debounce:2:debounce_keys|result~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:2:debounce_keys|result~5_combout\ = (\inst|row_debounce:2:debounce_keys|result~4_combout\ & ((\inst|row_debounce:2:debounce_keys|result~q\))) # (!\inst|row_debounce:2:debounce_keys|result~4_combout\ & 
-- (\inst|row_debounce:2:debounce_keys|flipflops\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:2:debounce_keys|result~4_combout\,
	datab => \inst|row_debounce:2:debounce_keys|flipflops\(1),
	datac => \inst|row_debounce:2:debounce_keys|result~q\,
	combout => \inst|row_debounce:2:debounce_keys|result~5_combout\);

-- Location: FF_X24_Y7_N7
\inst|row_debounce:2:debounce_keys|result\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|row_debounce:2:debounce_keys|result~5_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:2:debounce_keys|result~q\);

-- Location: LCCOMB_X24_Y12_N4
\inst|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux3~0_combout\ = (\inst|process_1~2_combout\ & ((\inst|LessThan1~1_combout\) # ((\inst|Mux4~0_combout\ & !\inst|Add15~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|process_1~2_combout\,
	datab => \inst|LessThan1~1_combout\,
	datac => \inst|Mux4~0_combout\,
	datad => \inst|Add15~8_combout\,
	combout => \inst|Mux3~0_combout\);

-- Location: FF_X24_Y12_N5
\inst|keys_stored[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Mux3~0_combout\,
	ena => \inst|keys_stored[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|keys_stored\(3));

-- Location: LCCOMB_X24_Y4_N6
\inst|row_debounce:3:debounce_keys|flipflops[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:3:debounce_keys|flipflops[0]~feeder_combout\ = \inst|keys_stored\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|keys_stored\(3),
	combout => \inst|row_debounce:3:debounce_keys|flipflops[0]~feeder_combout\);

-- Location: FF_X24_Y4_N7
\inst|row_debounce:3:debounce_keys|flipflops[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:3:debounce_keys|flipflops[0]~feeder_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:3:debounce_keys|flipflops\(0));

-- Location: LCCOMB_X24_Y4_N24
\inst|row_debounce:3:debounce_keys|flipflops[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:3:debounce_keys|flipflops[1]~feeder_combout\ = \inst|row_debounce:3:debounce_keys|flipflops\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|row_debounce:3:debounce_keys|flipflops\(0),
	combout => \inst|row_debounce:3:debounce_keys|flipflops[1]~feeder_combout\);

-- Location: FF_X24_Y4_N25
\inst|row_debounce:3:debounce_keys|flipflops[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:3:debounce_keys|flipflops[1]~feeder_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:3:debounce_keys|flipflops\(1));

-- Location: LCCOMB_X25_Y5_N14
\inst|row_debounce:3:debounce_keys|count[0]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:3:debounce_keys|count[0]~19_combout\ = \inst|row_debounce:3:debounce_keys|count\(0) $ (VCC)
-- \inst|row_debounce:3:debounce_keys|count[0]~20\ = CARRY(\inst|row_debounce:3:debounce_keys|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:3:debounce_keys|count\(0),
	datad => VCC,
	combout => \inst|row_debounce:3:debounce_keys|count[0]~19_combout\,
	cout => \inst|row_debounce:3:debounce_keys|count[0]~20\);

-- Location: LCCOMB_X25_Y4_N20
\inst|row_debounce:3:debounce_keys|counter_set\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:3:debounce_keys|counter_set~combout\ = \inst|row_debounce:3:debounce_keys|flipflops\(0) $ (\inst|row_debounce:3:debounce_keys|flipflops\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|row_debounce:3:debounce_keys|flipflops\(0),
	datad => \inst|row_debounce:3:debounce_keys|flipflops\(1),
	combout => \inst|row_debounce:3:debounce_keys|counter_set~combout\);

-- Location: LCCOMB_X25_Y4_N22
\inst|row_debounce:3:debounce_keys|count[18]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:3:debounce_keys|count[18]~31_combout\ = (\rst~input_o\ & \inst|row_debounce:3:debounce_keys|result~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datac => \inst|row_debounce:3:debounce_keys|result~4_combout\,
	combout => \inst|row_debounce:3:debounce_keys|count[18]~31_combout\);

-- Location: FF_X25_Y5_N15
\inst|row_debounce:3:debounce_keys|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:3:debounce_keys|count[0]~19_combout\,
	sclr => \inst|row_debounce:3:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:3:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:3:debounce_keys|count\(0));

-- Location: LCCOMB_X25_Y5_N16
\inst|row_debounce:3:debounce_keys|count[1]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:3:debounce_keys|count[1]~21_combout\ = (\inst|row_debounce:3:debounce_keys|count\(1) & (!\inst|row_debounce:3:debounce_keys|count[0]~20\)) # (!\inst|row_debounce:3:debounce_keys|count\(1) & 
-- ((\inst|row_debounce:3:debounce_keys|count[0]~20\) # (GND)))
-- \inst|row_debounce:3:debounce_keys|count[1]~22\ = CARRY((!\inst|row_debounce:3:debounce_keys|count[0]~20\) # (!\inst|row_debounce:3:debounce_keys|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:3:debounce_keys|count\(1),
	datad => VCC,
	cin => \inst|row_debounce:3:debounce_keys|count[0]~20\,
	combout => \inst|row_debounce:3:debounce_keys|count[1]~21_combout\,
	cout => \inst|row_debounce:3:debounce_keys|count[1]~22\);

-- Location: FF_X25_Y5_N17
\inst|row_debounce:3:debounce_keys|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:3:debounce_keys|count[1]~21_combout\,
	sclr => \inst|row_debounce:3:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:3:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:3:debounce_keys|count\(1));

-- Location: LCCOMB_X25_Y5_N18
\inst|row_debounce:3:debounce_keys|count[2]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:3:debounce_keys|count[2]~23_combout\ = (\inst|row_debounce:3:debounce_keys|count\(2) & (\inst|row_debounce:3:debounce_keys|count[1]~22\ $ (GND))) # (!\inst|row_debounce:3:debounce_keys|count\(2) & 
-- (!\inst|row_debounce:3:debounce_keys|count[1]~22\ & VCC))
-- \inst|row_debounce:3:debounce_keys|count[2]~24\ = CARRY((\inst|row_debounce:3:debounce_keys|count\(2) & !\inst|row_debounce:3:debounce_keys|count[1]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:3:debounce_keys|count\(2),
	datad => VCC,
	cin => \inst|row_debounce:3:debounce_keys|count[1]~22\,
	combout => \inst|row_debounce:3:debounce_keys|count[2]~23_combout\,
	cout => \inst|row_debounce:3:debounce_keys|count[2]~24\);

-- Location: FF_X25_Y5_N19
\inst|row_debounce:3:debounce_keys|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:3:debounce_keys|count[2]~23_combout\,
	sclr => \inst|row_debounce:3:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:3:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:3:debounce_keys|count\(2));

-- Location: LCCOMB_X25_Y5_N20
\inst|row_debounce:3:debounce_keys|count[3]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:3:debounce_keys|count[3]~25_combout\ = (\inst|row_debounce:3:debounce_keys|count\(3) & (!\inst|row_debounce:3:debounce_keys|count[2]~24\)) # (!\inst|row_debounce:3:debounce_keys|count\(3) & 
-- ((\inst|row_debounce:3:debounce_keys|count[2]~24\) # (GND)))
-- \inst|row_debounce:3:debounce_keys|count[3]~26\ = CARRY((!\inst|row_debounce:3:debounce_keys|count[2]~24\) # (!\inst|row_debounce:3:debounce_keys|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:3:debounce_keys|count\(3),
	datad => VCC,
	cin => \inst|row_debounce:3:debounce_keys|count[2]~24\,
	combout => \inst|row_debounce:3:debounce_keys|count[3]~25_combout\,
	cout => \inst|row_debounce:3:debounce_keys|count[3]~26\);

-- Location: FF_X25_Y5_N21
\inst|row_debounce:3:debounce_keys|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:3:debounce_keys|count[3]~25_combout\,
	sclr => \inst|row_debounce:3:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:3:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:3:debounce_keys|count\(3));

-- Location: LCCOMB_X25_Y5_N22
\inst|row_debounce:3:debounce_keys|count[4]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:3:debounce_keys|count[4]~27_combout\ = (\inst|row_debounce:3:debounce_keys|count\(4) & (\inst|row_debounce:3:debounce_keys|count[3]~26\ $ (GND))) # (!\inst|row_debounce:3:debounce_keys|count\(4) & 
-- (!\inst|row_debounce:3:debounce_keys|count[3]~26\ & VCC))
-- \inst|row_debounce:3:debounce_keys|count[4]~28\ = CARRY((\inst|row_debounce:3:debounce_keys|count\(4) & !\inst|row_debounce:3:debounce_keys|count[3]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:3:debounce_keys|count\(4),
	datad => VCC,
	cin => \inst|row_debounce:3:debounce_keys|count[3]~26\,
	combout => \inst|row_debounce:3:debounce_keys|count[4]~27_combout\,
	cout => \inst|row_debounce:3:debounce_keys|count[4]~28\);

-- Location: FF_X25_Y5_N23
\inst|row_debounce:3:debounce_keys|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:3:debounce_keys|count[4]~27_combout\,
	sclr => \inst|row_debounce:3:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:3:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:3:debounce_keys|count\(4));

-- Location: LCCOMB_X25_Y5_N24
\inst|row_debounce:3:debounce_keys|count[5]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:3:debounce_keys|count[5]~29_combout\ = (\inst|row_debounce:3:debounce_keys|count\(5) & (!\inst|row_debounce:3:debounce_keys|count[4]~28\)) # (!\inst|row_debounce:3:debounce_keys|count\(5) & 
-- ((\inst|row_debounce:3:debounce_keys|count[4]~28\) # (GND)))
-- \inst|row_debounce:3:debounce_keys|count[5]~30\ = CARRY((!\inst|row_debounce:3:debounce_keys|count[4]~28\) # (!\inst|row_debounce:3:debounce_keys|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:3:debounce_keys|count\(5),
	datad => VCC,
	cin => \inst|row_debounce:3:debounce_keys|count[4]~28\,
	combout => \inst|row_debounce:3:debounce_keys|count[5]~29_combout\,
	cout => \inst|row_debounce:3:debounce_keys|count[5]~30\);

-- Location: FF_X25_Y5_N25
\inst|row_debounce:3:debounce_keys|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:3:debounce_keys|count[5]~29_combout\,
	sclr => \inst|row_debounce:3:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:3:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:3:debounce_keys|count\(5));

-- Location: LCCOMB_X25_Y5_N26
\inst|row_debounce:3:debounce_keys|count[6]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:3:debounce_keys|count[6]~32_combout\ = (\inst|row_debounce:3:debounce_keys|count\(6) & (\inst|row_debounce:3:debounce_keys|count[5]~30\ $ (GND))) # (!\inst|row_debounce:3:debounce_keys|count\(6) & 
-- (!\inst|row_debounce:3:debounce_keys|count[5]~30\ & VCC))
-- \inst|row_debounce:3:debounce_keys|count[6]~33\ = CARRY((\inst|row_debounce:3:debounce_keys|count\(6) & !\inst|row_debounce:3:debounce_keys|count[5]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:3:debounce_keys|count\(6),
	datad => VCC,
	cin => \inst|row_debounce:3:debounce_keys|count[5]~30\,
	combout => \inst|row_debounce:3:debounce_keys|count[6]~32_combout\,
	cout => \inst|row_debounce:3:debounce_keys|count[6]~33\);

-- Location: FF_X25_Y5_N27
\inst|row_debounce:3:debounce_keys|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:3:debounce_keys|count[6]~32_combout\,
	sclr => \inst|row_debounce:3:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:3:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:3:debounce_keys|count\(6));

-- Location: LCCOMB_X25_Y5_N28
\inst|row_debounce:3:debounce_keys|count[7]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:3:debounce_keys|count[7]~34_combout\ = (\inst|row_debounce:3:debounce_keys|count\(7) & (!\inst|row_debounce:3:debounce_keys|count[6]~33\)) # (!\inst|row_debounce:3:debounce_keys|count\(7) & 
-- ((\inst|row_debounce:3:debounce_keys|count[6]~33\) # (GND)))
-- \inst|row_debounce:3:debounce_keys|count[7]~35\ = CARRY((!\inst|row_debounce:3:debounce_keys|count[6]~33\) # (!\inst|row_debounce:3:debounce_keys|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:3:debounce_keys|count\(7),
	datad => VCC,
	cin => \inst|row_debounce:3:debounce_keys|count[6]~33\,
	combout => \inst|row_debounce:3:debounce_keys|count[7]~34_combout\,
	cout => \inst|row_debounce:3:debounce_keys|count[7]~35\);

-- Location: FF_X25_Y5_N29
\inst|row_debounce:3:debounce_keys|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:3:debounce_keys|count[7]~34_combout\,
	sclr => \inst|row_debounce:3:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:3:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:3:debounce_keys|count\(7));

-- Location: LCCOMB_X25_Y5_N30
\inst|row_debounce:3:debounce_keys|count[8]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:3:debounce_keys|count[8]~36_combout\ = (\inst|row_debounce:3:debounce_keys|count\(8) & (\inst|row_debounce:3:debounce_keys|count[7]~35\ $ (GND))) # (!\inst|row_debounce:3:debounce_keys|count\(8) & 
-- (!\inst|row_debounce:3:debounce_keys|count[7]~35\ & VCC))
-- \inst|row_debounce:3:debounce_keys|count[8]~37\ = CARRY((\inst|row_debounce:3:debounce_keys|count\(8) & !\inst|row_debounce:3:debounce_keys|count[7]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:3:debounce_keys|count\(8),
	datad => VCC,
	cin => \inst|row_debounce:3:debounce_keys|count[7]~35\,
	combout => \inst|row_debounce:3:debounce_keys|count[8]~36_combout\,
	cout => \inst|row_debounce:3:debounce_keys|count[8]~37\);

-- Location: FF_X25_Y5_N31
\inst|row_debounce:3:debounce_keys|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:3:debounce_keys|count[8]~36_combout\,
	sclr => \inst|row_debounce:3:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:3:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:3:debounce_keys|count\(8));

-- Location: LCCOMB_X25_Y4_N0
\inst|row_debounce:3:debounce_keys|count[9]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:3:debounce_keys|count[9]~38_combout\ = (\inst|row_debounce:3:debounce_keys|count\(9) & (!\inst|row_debounce:3:debounce_keys|count[8]~37\)) # (!\inst|row_debounce:3:debounce_keys|count\(9) & 
-- ((\inst|row_debounce:3:debounce_keys|count[8]~37\) # (GND)))
-- \inst|row_debounce:3:debounce_keys|count[9]~39\ = CARRY((!\inst|row_debounce:3:debounce_keys|count[8]~37\) # (!\inst|row_debounce:3:debounce_keys|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:3:debounce_keys|count\(9),
	datad => VCC,
	cin => \inst|row_debounce:3:debounce_keys|count[8]~37\,
	combout => \inst|row_debounce:3:debounce_keys|count[9]~38_combout\,
	cout => \inst|row_debounce:3:debounce_keys|count[9]~39\);

-- Location: FF_X25_Y4_N1
\inst|row_debounce:3:debounce_keys|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:3:debounce_keys|count[9]~38_combout\,
	sclr => \inst|row_debounce:3:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:3:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:3:debounce_keys|count\(9));

-- Location: LCCOMB_X25_Y4_N2
\inst|row_debounce:3:debounce_keys|count[10]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:3:debounce_keys|count[10]~40_combout\ = (\inst|row_debounce:3:debounce_keys|count\(10) & (\inst|row_debounce:3:debounce_keys|count[9]~39\ $ (GND))) # (!\inst|row_debounce:3:debounce_keys|count\(10) & 
-- (!\inst|row_debounce:3:debounce_keys|count[9]~39\ & VCC))
-- \inst|row_debounce:3:debounce_keys|count[10]~41\ = CARRY((\inst|row_debounce:3:debounce_keys|count\(10) & !\inst|row_debounce:3:debounce_keys|count[9]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:3:debounce_keys|count\(10),
	datad => VCC,
	cin => \inst|row_debounce:3:debounce_keys|count[9]~39\,
	combout => \inst|row_debounce:3:debounce_keys|count[10]~40_combout\,
	cout => \inst|row_debounce:3:debounce_keys|count[10]~41\);

-- Location: FF_X25_Y4_N3
\inst|row_debounce:3:debounce_keys|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:3:debounce_keys|count[10]~40_combout\,
	sclr => \inst|row_debounce:3:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:3:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:3:debounce_keys|count\(10));

-- Location: LCCOMB_X25_Y4_N4
\inst|row_debounce:3:debounce_keys|count[11]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:3:debounce_keys|count[11]~42_combout\ = (\inst|row_debounce:3:debounce_keys|count\(11) & (!\inst|row_debounce:3:debounce_keys|count[10]~41\)) # (!\inst|row_debounce:3:debounce_keys|count\(11) & 
-- ((\inst|row_debounce:3:debounce_keys|count[10]~41\) # (GND)))
-- \inst|row_debounce:3:debounce_keys|count[11]~43\ = CARRY((!\inst|row_debounce:3:debounce_keys|count[10]~41\) # (!\inst|row_debounce:3:debounce_keys|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:3:debounce_keys|count\(11),
	datad => VCC,
	cin => \inst|row_debounce:3:debounce_keys|count[10]~41\,
	combout => \inst|row_debounce:3:debounce_keys|count[11]~42_combout\,
	cout => \inst|row_debounce:3:debounce_keys|count[11]~43\);

-- Location: FF_X25_Y4_N5
\inst|row_debounce:3:debounce_keys|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:3:debounce_keys|count[11]~42_combout\,
	sclr => \inst|row_debounce:3:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:3:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:3:debounce_keys|count\(11));

-- Location: LCCOMB_X25_Y4_N6
\inst|row_debounce:3:debounce_keys|count[12]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:3:debounce_keys|count[12]~44_combout\ = (\inst|row_debounce:3:debounce_keys|count\(12) & (\inst|row_debounce:3:debounce_keys|count[11]~43\ $ (GND))) # (!\inst|row_debounce:3:debounce_keys|count\(12) & 
-- (!\inst|row_debounce:3:debounce_keys|count[11]~43\ & VCC))
-- \inst|row_debounce:3:debounce_keys|count[12]~45\ = CARRY((\inst|row_debounce:3:debounce_keys|count\(12) & !\inst|row_debounce:3:debounce_keys|count[11]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:3:debounce_keys|count\(12),
	datad => VCC,
	cin => \inst|row_debounce:3:debounce_keys|count[11]~43\,
	combout => \inst|row_debounce:3:debounce_keys|count[12]~44_combout\,
	cout => \inst|row_debounce:3:debounce_keys|count[12]~45\);

-- Location: FF_X25_Y4_N7
\inst|row_debounce:3:debounce_keys|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:3:debounce_keys|count[12]~44_combout\,
	sclr => \inst|row_debounce:3:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:3:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:3:debounce_keys|count\(12));

-- Location: LCCOMB_X25_Y4_N8
\inst|row_debounce:3:debounce_keys|count[13]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:3:debounce_keys|count[13]~46_combout\ = (\inst|row_debounce:3:debounce_keys|count\(13) & (!\inst|row_debounce:3:debounce_keys|count[12]~45\)) # (!\inst|row_debounce:3:debounce_keys|count\(13) & 
-- ((\inst|row_debounce:3:debounce_keys|count[12]~45\) # (GND)))
-- \inst|row_debounce:3:debounce_keys|count[13]~47\ = CARRY((!\inst|row_debounce:3:debounce_keys|count[12]~45\) # (!\inst|row_debounce:3:debounce_keys|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:3:debounce_keys|count\(13),
	datad => VCC,
	cin => \inst|row_debounce:3:debounce_keys|count[12]~45\,
	combout => \inst|row_debounce:3:debounce_keys|count[13]~46_combout\,
	cout => \inst|row_debounce:3:debounce_keys|count[13]~47\);

-- Location: FF_X25_Y4_N9
\inst|row_debounce:3:debounce_keys|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:3:debounce_keys|count[13]~46_combout\,
	sclr => \inst|row_debounce:3:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:3:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:3:debounce_keys|count\(13));

-- Location: LCCOMB_X25_Y4_N10
\inst|row_debounce:3:debounce_keys|count[14]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:3:debounce_keys|count[14]~48_combout\ = (\inst|row_debounce:3:debounce_keys|count\(14) & (\inst|row_debounce:3:debounce_keys|count[13]~47\ $ (GND))) # (!\inst|row_debounce:3:debounce_keys|count\(14) & 
-- (!\inst|row_debounce:3:debounce_keys|count[13]~47\ & VCC))
-- \inst|row_debounce:3:debounce_keys|count[14]~49\ = CARRY((\inst|row_debounce:3:debounce_keys|count\(14) & !\inst|row_debounce:3:debounce_keys|count[13]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:3:debounce_keys|count\(14),
	datad => VCC,
	cin => \inst|row_debounce:3:debounce_keys|count[13]~47\,
	combout => \inst|row_debounce:3:debounce_keys|count[14]~48_combout\,
	cout => \inst|row_debounce:3:debounce_keys|count[14]~49\);

-- Location: FF_X25_Y4_N11
\inst|row_debounce:3:debounce_keys|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:3:debounce_keys|count[14]~48_combout\,
	sclr => \inst|row_debounce:3:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:3:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:3:debounce_keys|count\(14));

-- Location: LCCOMB_X25_Y4_N12
\inst|row_debounce:3:debounce_keys|count[15]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:3:debounce_keys|count[15]~50_combout\ = (\inst|row_debounce:3:debounce_keys|count\(15) & (!\inst|row_debounce:3:debounce_keys|count[14]~49\)) # (!\inst|row_debounce:3:debounce_keys|count\(15) & 
-- ((\inst|row_debounce:3:debounce_keys|count[14]~49\) # (GND)))
-- \inst|row_debounce:3:debounce_keys|count[15]~51\ = CARRY((!\inst|row_debounce:3:debounce_keys|count[14]~49\) # (!\inst|row_debounce:3:debounce_keys|count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:3:debounce_keys|count\(15),
	datad => VCC,
	cin => \inst|row_debounce:3:debounce_keys|count[14]~49\,
	combout => \inst|row_debounce:3:debounce_keys|count[15]~50_combout\,
	cout => \inst|row_debounce:3:debounce_keys|count[15]~51\);

-- Location: FF_X25_Y4_N13
\inst|row_debounce:3:debounce_keys|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:3:debounce_keys|count[15]~50_combout\,
	sclr => \inst|row_debounce:3:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:3:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:3:debounce_keys|count\(15));

-- Location: LCCOMB_X25_Y4_N14
\inst|row_debounce:3:debounce_keys|count[16]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:3:debounce_keys|count[16]~52_combout\ = (\inst|row_debounce:3:debounce_keys|count\(16) & (\inst|row_debounce:3:debounce_keys|count[15]~51\ $ (GND))) # (!\inst|row_debounce:3:debounce_keys|count\(16) & 
-- (!\inst|row_debounce:3:debounce_keys|count[15]~51\ & VCC))
-- \inst|row_debounce:3:debounce_keys|count[16]~53\ = CARRY((\inst|row_debounce:3:debounce_keys|count\(16) & !\inst|row_debounce:3:debounce_keys|count[15]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:3:debounce_keys|count\(16),
	datad => VCC,
	cin => \inst|row_debounce:3:debounce_keys|count[15]~51\,
	combout => \inst|row_debounce:3:debounce_keys|count[16]~52_combout\,
	cout => \inst|row_debounce:3:debounce_keys|count[16]~53\);

-- Location: FF_X25_Y4_N15
\inst|row_debounce:3:debounce_keys|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:3:debounce_keys|count[16]~52_combout\,
	sclr => \inst|row_debounce:3:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:3:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:3:debounce_keys|count\(16));

-- Location: LCCOMB_X25_Y4_N24
\inst|row_debounce:3:debounce_keys|result~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:3:debounce_keys|result~3_combout\ = ((\inst|row_debounce:3:debounce_keys|flipflops\(0) $ (\inst|row_debounce:3:debounce_keys|flipflops\(1))) # (!\inst|row_debounce:3:debounce_keys|count\(16))) # 
-- (!\inst|row_debounce:3:debounce_keys|count\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:3:debounce_keys|count\(15),
	datab => \inst|row_debounce:3:debounce_keys|flipflops\(0),
	datac => \inst|row_debounce:3:debounce_keys|count\(16),
	datad => \inst|row_debounce:3:debounce_keys|flipflops\(1),
	combout => \inst|row_debounce:3:debounce_keys|result~3_combout\);

-- Location: LCCOMB_X25_Y4_N16
\inst|row_debounce:3:debounce_keys|count[17]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:3:debounce_keys|count[17]~54_combout\ = (\inst|row_debounce:3:debounce_keys|count\(17) & (!\inst|row_debounce:3:debounce_keys|count[16]~53\)) # (!\inst|row_debounce:3:debounce_keys|count\(17) & 
-- ((\inst|row_debounce:3:debounce_keys|count[16]~53\) # (GND)))
-- \inst|row_debounce:3:debounce_keys|count[17]~55\ = CARRY((!\inst|row_debounce:3:debounce_keys|count[16]~53\) # (!\inst|row_debounce:3:debounce_keys|count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:3:debounce_keys|count\(17),
	datad => VCC,
	cin => \inst|row_debounce:3:debounce_keys|count[16]~53\,
	combout => \inst|row_debounce:3:debounce_keys|count[17]~54_combout\,
	cout => \inst|row_debounce:3:debounce_keys|count[17]~55\);

-- Location: FF_X25_Y4_N17
\inst|row_debounce:3:debounce_keys|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:3:debounce_keys|count[17]~54_combout\,
	sclr => \inst|row_debounce:3:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:3:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:3:debounce_keys|count\(17));

-- Location: LCCOMB_X25_Y4_N18
\inst|row_debounce:3:debounce_keys|count[18]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:3:debounce_keys|count[18]~56_combout\ = \inst|row_debounce:3:debounce_keys|count[17]~55\ $ (!\inst|row_debounce:3:debounce_keys|count\(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|row_debounce:3:debounce_keys|count\(18),
	cin => \inst|row_debounce:3:debounce_keys|count[17]~55\,
	combout => \inst|row_debounce:3:debounce_keys|count[18]~56_combout\);

-- Location: FF_X25_Y4_N19
\inst|row_debounce:3:debounce_keys|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:3:debounce_keys|count[18]~56_combout\,
	sclr => \inst|row_debounce:3:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:3:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:3:debounce_keys|count\(18));

-- Location: LCCOMB_X25_Y4_N28
\inst|row_debounce:3:debounce_keys|result~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:3:debounce_keys|result~1_combout\ = (!\inst|row_debounce:3:debounce_keys|count\(12) & (!\inst|row_debounce:3:debounce_keys|count\(10) & (!\inst|row_debounce:3:debounce_keys|count\(11) & !\inst|row_debounce:3:debounce_keys|count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:3:debounce_keys|count\(12),
	datab => \inst|row_debounce:3:debounce_keys|count\(10),
	datac => \inst|row_debounce:3:debounce_keys|count\(11),
	datad => \inst|row_debounce:3:debounce_keys|count\(9),
	combout => \inst|row_debounce:3:debounce_keys|result~1_combout\);

-- Location: LCCOMB_X25_Y5_N12
\inst|row_debounce:3:debounce_keys|result~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:3:debounce_keys|result~0_combout\ = ((!\inst|row_debounce:3:debounce_keys|count\(6) & (!\inst|row_debounce:3:debounce_keys|count\(5) & !\inst|row_debounce:3:debounce_keys|count\(7)))) # (!\inst|row_debounce:3:debounce_keys|count\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:3:debounce_keys|count\(6),
	datab => \inst|row_debounce:3:debounce_keys|count\(5),
	datac => \inst|row_debounce:3:debounce_keys|count\(8),
	datad => \inst|row_debounce:3:debounce_keys|count\(7),
	combout => \inst|row_debounce:3:debounce_keys|result~0_combout\);

-- Location: LCCOMB_X25_Y4_N30
\inst|row_debounce:3:debounce_keys|result~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:3:debounce_keys|result~2_combout\ = (!\inst|row_debounce:3:debounce_keys|count\(14) & (((\inst|row_debounce:3:debounce_keys|result~1_combout\ & \inst|row_debounce:3:debounce_keys|result~0_combout\)) # 
-- (!\inst|row_debounce:3:debounce_keys|count\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:3:debounce_keys|count\(14),
	datab => \inst|row_debounce:3:debounce_keys|result~1_combout\,
	datac => \inst|row_debounce:3:debounce_keys|count\(13),
	datad => \inst|row_debounce:3:debounce_keys|result~0_combout\,
	combout => \inst|row_debounce:3:debounce_keys|result~2_combout\);

-- Location: LCCOMB_X25_Y4_N26
\inst|row_debounce:3:debounce_keys|result~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:3:debounce_keys|result~4_combout\ = (\inst|row_debounce:3:debounce_keys|result~3_combout\) # (((\inst|row_debounce:3:debounce_keys|result~2_combout\) # (!\inst|row_debounce:3:debounce_keys|count\(17))) # 
-- (!\inst|row_debounce:3:debounce_keys|count\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:3:debounce_keys|result~3_combout\,
	datab => \inst|row_debounce:3:debounce_keys|count\(18),
	datac => \inst|row_debounce:3:debounce_keys|result~2_combout\,
	datad => \inst|row_debounce:3:debounce_keys|count\(17),
	combout => \inst|row_debounce:3:debounce_keys|result~4_combout\);

-- Location: LCCOMB_X24_Y4_N0
\inst|row_debounce:3:debounce_keys|result~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:3:debounce_keys|result~5_combout\ = (\inst|row_debounce:3:debounce_keys|result~4_combout\ & (\inst|row_debounce:3:debounce_keys|result~q\)) # (!\inst|row_debounce:3:debounce_keys|result~4_combout\ & 
-- ((\inst|row_debounce:3:debounce_keys|flipflops\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:3:debounce_keys|result~q\,
	datac => \inst|row_debounce:3:debounce_keys|flipflops\(1),
	datad => \inst|row_debounce:3:debounce_keys|result~4_combout\,
	combout => \inst|row_debounce:3:debounce_keys|result~5_combout\);

-- Location: FF_X24_Y7_N17
\inst|row_debounce:3:debounce_keys|result\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|row_debounce:3:debounce_keys|result~5_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:3:debounce_keys|result~q\);

-- Location: LCCOMB_X24_Y12_N14
\inst|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux7~0_combout\ = (\inst|process_1~5_combout\ & ((\inst|LessThan1~1_combout\) # ((\inst|Mux4~0_combout\ & !\inst|Add15~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|process_1~5_combout\,
	datab => \inst|LessThan1~1_combout\,
	datac => \inst|Mux4~0_combout\,
	datad => \inst|Add15~8_combout\,
	combout => \inst|Mux7~0_combout\);

-- Location: FF_X24_Y12_N15
\inst|keys_stored[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Mux7~0_combout\,
	ena => \inst|keys_stored[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|keys_stored\(7));

-- Location: LCCOMB_X24_Y6_N10
\inst|row_debounce:7:debounce_keys|flipflops[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:7:debounce_keys|flipflops[0]~feeder_combout\ = \inst|keys_stored\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|keys_stored\(7),
	combout => \inst|row_debounce:7:debounce_keys|flipflops[0]~feeder_combout\);

-- Location: FF_X24_Y6_N11
\inst|row_debounce:7:debounce_keys|flipflops[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:7:debounce_keys|flipflops[0]~feeder_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:7:debounce_keys|flipflops\(0));

-- Location: LCCOMB_X24_Y6_N8
\inst|row_debounce:7:debounce_keys|flipflops[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:7:debounce_keys|flipflops[1]~feeder_combout\ = \inst|row_debounce:7:debounce_keys|flipflops\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|row_debounce:7:debounce_keys|flipflops\(0),
	combout => \inst|row_debounce:7:debounce_keys|flipflops[1]~feeder_combout\);

-- Location: FF_X24_Y6_N9
\inst|row_debounce:7:debounce_keys|flipflops[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:7:debounce_keys|flipflops[1]~feeder_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:7:debounce_keys|flipflops\(1));

-- Location: LCCOMB_X31_Y7_N14
\inst|row_debounce:7:debounce_keys|count[0]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:7:debounce_keys|count[0]~19_combout\ = \inst|row_debounce:7:debounce_keys|count\(0) $ (VCC)
-- \inst|row_debounce:7:debounce_keys|count[0]~20\ = CARRY(\inst|row_debounce:7:debounce_keys|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:7:debounce_keys|count\(0),
	datad => VCC,
	combout => \inst|row_debounce:7:debounce_keys|count[0]~19_combout\,
	cout => \inst|row_debounce:7:debounce_keys|count[0]~20\);

-- Location: LCCOMB_X31_Y6_N20
\inst|row_debounce:7:debounce_keys|counter_set\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:7:debounce_keys|counter_set~combout\ = \inst|row_debounce:7:debounce_keys|flipflops\(0) $ (\inst|row_debounce:7:debounce_keys|flipflops\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|row_debounce:7:debounce_keys|flipflops\(0),
	datad => \inst|row_debounce:7:debounce_keys|flipflops\(1),
	combout => \inst|row_debounce:7:debounce_keys|counter_set~combout\);

-- Location: LCCOMB_X31_Y6_N22
\inst|row_debounce:7:debounce_keys|count[18]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:7:debounce_keys|count[18]~31_combout\ = (\rst~input_o\ & \inst|row_debounce:7:debounce_keys|result~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst~input_o\,
	datac => \inst|row_debounce:7:debounce_keys|result~4_combout\,
	combout => \inst|row_debounce:7:debounce_keys|count[18]~31_combout\);

-- Location: FF_X31_Y7_N15
\inst|row_debounce:7:debounce_keys|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:7:debounce_keys|count[0]~19_combout\,
	sclr => \inst|row_debounce:7:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:7:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:7:debounce_keys|count\(0));

-- Location: LCCOMB_X31_Y7_N16
\inst|row_debounce:7:debounce_keys|count[1]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:7:debounce_keys|count[1]~21_combout\ = (\inst|row_debounce:7:debounce_keys|count\(1) & (!\inst|row_debounce:7:debounce_keys|count[0]~20\)) # (!\inst|row_debounce:7:debounce_keys|count\(1) & 
-- ((\inst|row_debounce:7:debounce_keys|count[0]~20\) # (GND)))
-- \inst|row_debounce:7:debounce_keys|count[1]~22\ = CARRY((!\inst|row_debounce:7:debounce_keys|count[0]~20\) # (!\inst|row_debounce:7:debounce_keys|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:7:debounce_keys|count\(1),
	datad => VCC,
	cin => \inst|row_debounce:7:debounce_keys|count[0]~20\,
	combout => \inst|row_debounce:7:debounce_keys|count[1]~21_combout\,
	cout => \inst|row_debounce:7:debounce_keys|count[1]~22\);

-- Location: FF_X31_Y7_N17
\inst|row_debounce:7:debounce_keys|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:7:debounce_keys|count[1]~21_combout\,
	sclr => \inst|row_debounce:7:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:7:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:7:debounce_keys|count\(1));

-- Location: LCCOMB_X31_Y7_N18
\inst|row_debounce:7:debounce_keys|count[2]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:7:debounce_keys|count[2]~23_combout\ = (\inst|row_debounce:7:debounce_keys|count\(2) & (\inst|row_debounce:7:debounce_keys|count[1]~22\ $ (GND))) # (!\inst|row_debounce:7:debounce_keys|count\(2) & 
-- (!\inst|row_debounce:7:debounce_keys|count[1]~22\ & VCC))
-- \inst|row_debounce:7:debounce_keys|count[2]~24\ = CARRY((\inst|row_debounce:7:debounce_keys|count\(2) & !\inst|row_debounce:7:debounce_keys|count[1]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:7:debounce_keys|count\(2),
	datad => VCC,
	cin => \inst|row_debounce:7:debounce_keys|count[1]~22\,
	combout => \inst|row_debounce:7:debounce_keys|count[2]~23_combout\,
	cout => \inst|row_debounce:7:debounce_keys|count[2]~24\);

-- Location: FF_X31_Y7_N19
\inst|row_debounce:7:debounce_keys|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:7:debounce_keys|count[2]~23_combout\,
	sclr => \inst|row_debounce:7:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:7:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:7:debounce_keys|count\(2));

-- Location: LCCOMB_X31_Y7_N20
\inst|row_debounce:7:debounce_keys|count[3]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:7:debounce_keys|count[3]~25_combout\ = (\inst|row_debounce:7:debounce_keys|count\(3) & (!\inst|row_debounce:7:debounce_keys|count[2]~24\)) # (!\inst|row_debounce:7:debounce_keys|count\(3) & 
-- ((\inst|row_debounce:7:debounce_keys|count[2]~24\) # (GND)))
-- \inst|row_debounce:7:debounce_keys|count[3]~26\ = CARRY((!\inst|row_debounce:7:debounce_keys|count[2]~24\) # (!\inst|row_debounce:7:debounce_keys|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:7:debounce_keys|count\(3),
	datad => VCC,
	cin => \inst|row_debounce:7:debounce_keys|count[2]~24\,
	combout => \inst|row_debounce:7:debounce_keys|count[3]~25_combout\,
	cout => \inst|row_debounce:7:debounce_keys|count[3]~26\);

-- Location: FF_X31_Y7_N21
\inst|row_debounce:7:debounce_keys|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:7:debounce_keys|count[3]~25_combout\,
	sclr => \inst|row_debounce:7:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:7:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:7:debounce_keys|count\(3));

-- Location: LCCOMB_X31_Y7_N22
\inst|row_debounce:7:debounce_keys|count[4]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:7:debounce_keys|count[4]~27_combout\ = (\inst|row_debounce:7:debounce_keys|count\(4) & (\inst|row_debounce:7:debounce_keys|count[3]~26\ $ (GND))) # (!\inst|row_debounce:7:debounce_keys|count\(4) & 
-- (!\inst|row_debounce:7:debounce_keys|count[3]~26\ & VCC))
-- \inst|row_debounce:7:debounce_keys|count[4]~28\ = CARRY((\inst|row_debounce:7:debounce_keys|count\(4) & !\inst|row_debounce:7:debounce_keys|count[3]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:7:debounce_keys|count\(4),
	datad => VCC,
	cin => \inst|row_debounce:7:debounce_keys|count[3]~26\,
	combout => \inst|row_debounce:7:debounce_keys|count[4]~27_combout\,
	cout => \inst|row_debounce:7:debounce_keys|count[4]~28\);

-- Location: FF_X31_Y7_N23
\inst|row_debounce:7:debounce_keys|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:7:debounce_keys|count[4]~27_combout\,
	sclr => \inst|row_debounce:7:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:7:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:7:debounce_keys|count\(4));

-- Location: LCCOMB_X31_Y7_N24
\inst|row_debounce:7:debounce_keys|count[5]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:7:debounce_keys|count[5]~29_combout\ = (\inst|row_debounce:7:debounce_keys|count\(5) & (!\inst|row_debounce:7:debounce_keys|count[4]~28\)) # (!\inst|row_debounce:7:debounce_keys|count\(5) & 
-- ((\inst|row_debounce:7:debounce_keys|count[4]~28\) # (GND)))
-- \inst|row_debounce:7:debounce_keys|count[5]~30\ = CARRY((!\inst|row_debounce:7:debounce_keys|count[4]~28\) # (!\inst|row_debounce:7:debounce_keys|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:7:debounce_keys|count\(5),
	datad => VCC,
	cin => \inst|row_debounce:7:debounce_keys|count[4]~28\,
	combout => \inst|row_debounce:7:debounce_keys|count[5]~29_combout\,
	cout => \inst|row_debounce:7:debounce_keys|count[5]~30\);

-- Location: FF_X31_Y7_N25
\inst|row_debounce:7:debounce_keys|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:7:debounce_keys|count[5]~29_combout\,
	sclr => \inst|row_debounce:7:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:7:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:7:debounce_keys|count\(5));

-- Location: LCCOMB_X31_Y7_N26
\inst|row_debounce:7:debounce_keys|count[6]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:7:debounce_keys|count[6]~32_combout\ = (\inst|row_debounce:7:debounce_keys|count\(6) & (\inst|row_debounce:7:debounce_keys|count[5]~30\ $ (GND))) # (!\inst|row_debounce:7:debounce_keys|count\(6) & 
-- (!\inst|row_debounce:7:debounce_keys|count[5]~30\ & VCC))
-- \inst|row_debounce:7:debounce_keys|count[6]~33\ = CARRY((\inst|row_debounce:7:debounce_keys|count\(6) & !\inst|row_debounce:7:debounce_keys|count[5]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:7:debounce_keys|count\(6),
	datad => VCC,
	cin => \inst|row_debounce:7:debounce_keys|count[5]~30\,
	combout => \inst|row_debounce:7:debounce_keys|count[6]~32_combout\,
	cout => \inst|row_debounce:7:debounce_keys|count[6]~33\);

-- Location: FF_X31_Y7_N27
\inst|row_debounce:7:debounce_keys|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:7:debounce_keys|count[6]~32_combout\,
	sclr => \inst|row_debounce:7:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:7:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:7:debounce_keys|count\(6));

-- Location: LCCOMB_X31_Y7_N28
\inst|row_debounce:7:debounce_keys|count[7]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:7:debounce_keys|count[7]~34_combout\ = (\inst|row_debounce:7:debounce_keys|count\(7) & (!\inst|row_debounce:7:debounce_keys|count[6]~33\)) # (!\inst|row_debounce:7:debounce_keys|count\(7) & 
-- ((\inst|row_debounce:7:debounce_keys|count[6]~33\) # (GND)))
-- \inst|row_debounce:7:debounce_keys|count[7]~35\ = CARRY((!\inst|row_debounce:7:debounce_keys|count[6]~33\) # (!\inst|row_debounce:7:debounce_keys|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:7:debounce_keys|count\(7),
	datad => VCC,
	cin => \inst|row_debounce:7:debounce_keys|count[6]~33\,
	combout => \inst|row_debounce:7:debounce_keys|count[7]~34_combout\,
	cout => \inst|row_debounce:7:debounce_keys|count[7]~35\);

-- Location: FF_X31_Y7_N29
\inst|row_debounce:7:debounce_keys|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:7:debounce_keys|count[7]~34_combout\,
	sclr => \inst|row_debounce:7:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:7:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:7:debounce_keys|count\(7));

-- Location: LCCOMB_X31_Y7_N30
\inst|row_debounce:7:debounce_keys|count[8]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:7:debounce_keys|count[8]~36_combout\ = (\inst|row_debounce:7:debounce_keys|count\(8) & (\inst|row_debounce:7:debounce_keys|count[7]~35\ $ (GND))) # (!\inst|row_debounce:7:debounce_keys|count\(8) & 
-- (!\inst|row_debounce:7:debounce_keys|count[7]~35\ & VCC))
-- \inst|row_debounce:7:debounce_keys|count[8]~37\ = CARRY((\inst|row_debounce:7:debounce_keys|count\(8) & !\inst|row_debounce:7:debounce_keys|count[7]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:7:debounce_keys|count\(8),
	datad => VCC,
	cin => \inst|row_debounce:7:debounce_keys|count[7]~35\,
	combout => \inst|row_debounce:7:debounce_keys|count[8]~36_combout\,
	cout => \inst|row_debounce:7:debounce_keys|count[8]~37\);

-- Location: FF_X31_Y7_N31
\inst|row_debounce:7:debounce_keys|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:7:debounce_keys|count[8]~36_combout\,
	sclr => \inst|row_debounce:7:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:7:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:7:debounce_keys|count\(8));

-- Location: LCCOMB_X31_Y6_N0
\inst|row_debounce:7:debounce_keys|count[9]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:7:debounce_keys|count[9]~38_combout\ = (\inst|row_debounce:7:debounce_keys|count\(9) & (!\inst|row_debounce:7:debounce_keys|count[8]~37\)) # (!\inst|row_debounce:7:debounce_keys|count\(9) & 
-- ((\inst|row_debounce:7:debounce_keys|count[8]~37\) # (GND)))
-- \inst|row_debounce:7:debounce_keys|count[9]~39\ = CARRY((!\inst|row_debounce:7:debounce_keys|count[8]~37\) # (!\inst|row_debounce:7:debounce_keys|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:7:debounce_keys|count\(9),
	datad => VCC,
	cin => \inst|row_debounce:7:debounce_keys|count[8]~37\,
	combout => \inst|row_debounce:7:debounce_keys|count[9]~38_combout\,
	cout => \inst|row_debounce:7:debounce_keys|count[9]~39\);

-- Location: FF_X31_Y6_N1
\inst|row_debounce:7:debounce_keys|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:7:debounce_keys|count[9]~38_combout\,
	sclr => \inst|row_debounce:7:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:7:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:7:debounce_keys|count\(9));

-- Location: LCCOMB_X31_Y6_N2
\inst|row_debounce:7:debounce_keys|count[10]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:7:debounce_keys|count[10]~40_combout\ = (\inst|row_debounce:7:debounce_keys|count\(10) & (\inst|row_debounce:7:debounce_keys|count[9]~39\ $ (GND))) # (!\inst|row_debounce:7:debounce_keys|count\(10) & 
-- (!\inst|row_debounce:7:debounce_keys|count[9]~39\ & VCC))
-- \inst|row_debounce:7:debounce_keys|count[10]~41\ = CARRY((\inst|row_debounce:7:debounce_keys|count\(10) & !\inst|row_debounce:7:debounce_keys|count[9]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:7:debounce_keys|count\(10),
	datad => VCC,
	cin => \inst|row_debounce:7:debounce_keys|count[9]~39\,
	combout => \inst|row_debounce:7:debounce_keys|count[10]~40_combout\,
	cout => \inst|row_debounce:7:debounce_keys|count[10]~41\);

-- Location: FF_X31_Y6_N3
\inst|row_debounce:7:debounce_keys|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:7:debounce_keys|count[10]~40_combout\,
	sclr => \inst|row_debounce:7:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:7:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:7:debounce_keys|count\(10));

-- Location: LCCOMB_X31_Y6_N4
\inst|row_debounce:7:debounce_keys|count[11]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:7:debounce_keys|count[11]~42_combout\ = (\inst|row_debounce:7:debounce_keys|count\(11) & (!\inst|row_debounce:7:debounce_keys|count[10]~41\)) # (!\inst|row_debounce:7:debounce_keys|count\(11) & 
-- ((\inst|row_debounce:7:debounce_keys|count[10]~41\) # (GND)))
-- \inst|row_debounce:7:debounce_keys|count[11]~43\ = CARRY((!\inst|row_debounce:7:debounce_keys|count[10]~41\) # (!\inst|row_debounce:7:debounce_keys|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:7:debounce_keys|count\(11),
	datad => VCC,
	cin => \inst|row_debounce:7:debounce_keys|count[10]~41\,
	combout => \inst|row_debounce:7:debounce_keys|count[11]~42_combout\,
	cout => \inst|row_debounce:7:debounce_keys|count[11]~43\);

-- Location: FF_X31_Y6_N5
\inst|row_debounce:7:debounce_keys|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:7:debounce_keys|count[11]~42_combout\,
	sclr => \inst|row_debounce:7:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:7:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:7:debounce_keys|count\(11));

-- Location: LCCOMB_X31_Y6_N6
\inst|row_debounce:7:debounce_keys|count[12]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:7:debounce_keys|count[12]~44_combout\ = (\inst|row_debounce:7:debounce_keys|count\(12) & (\inst|row_debounce:7:debounce_keys|count[11]~43\ $ (GND))) # (!\inst|row_debounce:7:debounce_keys|count\(12) & 
-- (!\inst|row_debounce:7:debounce_keys|count[11]~43\ & VCC))
-- \inst|row_debounce:7:debounce_keys|count[12]~45\ = CARRY((\inst|row_debounce:7:debounce_keys|count\(12) & !\inst|row_debounce:7:debounce_keys|count[11]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:7:debounce_keys|count\(12),
	datad => VCC,
	cin => \inst|row_debounce:7:debounce_keys|count[11]~43\,
	combout => \inst|row_debounce:7:debounce_keys|count[12]~44_combout\,
	cout => \inst|row_debounce:7:debounce_keys|count[12]~45\);

-- Location: FF_X31_Y6_N7
\inst|row_debounce:7:debounce_keys|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:7:debounce_keys|count[12]~44_combout\,
	sclr => \inst|row_debounce:7:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:7:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:7:debounce_keys|count\(12));

-- Location: LCCOMB_X31_Y6_N8
\inst|row_debounce:7:debounce_keys|count[13]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:7:debounce_keys|count[13]~46_combout\ = (\inst|row_debounce:7:debounce_keys|count\(13) & (!\inst|row_debounce:7:debounce_keys|count[12]~45\)) # (!\inst|row_debounce:7:debounce_keys|count\(13) & 
-- ((\inst|row_debounce:7:debounce_keys|count[12]~45\) # (GND)))
-- \inst|row_debounce:7:debounce_keys|count[13]~47\ = CARRY((!\inst|row_debounce:7:debounce_keys|count[12]~45\) # (!\inst|row_debounce:7:debounce_keys|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:7:debounce_keys|count\(13),
	datad => VCC,
	cin => \inst|row_debounce:7:debounce_keys|count[12]~45\,
	combout => \inst|row_debounce:7:debounce_keys|count[13]~46_combout\,
	cout => \inst|row_debounce:7:debounce_keys|count[13]~47\);

-- Location: FF_X31_Y6_N9
\inst|row_debounce:7:debounce_keys|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:7:debounce_keys|count[13]~46_combout\,
	sclr => \inst|row_debounce:7:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:7:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:7:debounce_keys|count\(13));

-- Location: LCCOMB_X31_Y6_N10
\inst|row_debounce:7:debounce_keys|count[14]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:7:debounce_keys|count[14]~48_combout\ = (\inst|row_debounce:7:debounce_keys|count\(14) & (\inst|row_debounce:7:debounce_keys|count[13]~47\ $ (GND))) # (!\inst|row_debounce:7:debounce_keys|count\(14) & 
-- (!\inst|row_debounce:7:debounce_keys|count[13]~47\ & VCC))
-- \inst|row_debounce:7:debounce_keys|count[14]~49\ = CARRY((\inst|row_debounce:7:debounce_keys|count\(14) & !\inst|row_debounce:7:debounce_keys|count[13]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:7:debounce_keys|count\(14),
	datad => VCC,
	cin => \inst|row_debounce:7:debounce_keys|count[13]~47\,
	combout => \inst|row_debounce:7:debounce_keys|count[14]~48_combout\,
	cout => \inst|row_debounce:7:debounce_keys|count[14]~49\);

-- Location: FF_X31_Y6_N11
\inst|row_debounce:7:debounce_keys|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:7:debounce_keys|count[14]~48_combout\,
	sclr => \inst|row_debounce:7:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:7:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:7:debounce_keys|count\(14));

-- Location: LCCOMB_X31_Y6_N12
\inst|row_debounce:7:debounce_keys|count[15]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:7:debounce_keys|count[15]~50_combout\ = (\inst|row_debounce:7:debounce_keys|count\(15) & (!\inst|row_debounce:7:debounce_keys|count[14]~49\)) # (!\inst|row_debounce:7:debounce_keys|count\(15) & 
-- ((\inst|row_debounce:7:debounce_keys|count[14]~49\) # (GND)))
-- \inst|row_debounce:7:debounce_keys|count[15]~51\ = CARRY((!\inst|row_debounce:7:debounce_keys|count[14]~49\) # (!\inst|row_debounce:7:debounce_keys|count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:7:debounce_keys|count\(15),
	datad => VCC,
	cin => \inst|row_debounce:7:debounce_keys|count[14]~49\,
	combout => \inst|row_debounce:7:debounce_keys|count[15]~50_combout\,
	cout => \inst|row_debounce:7:debounce_keys|count[15]~51\);

-- Location: FF_X31_Y6_N13
\inst|row_debounce:7:debounce_keys|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:7:debounce_keys|count[15]~50_combout\,
	sclr => \inst|row_debounce:7:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:7:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:7:debounce_keys|count\(15));

-- Location: LCCOMB_X31_Y6_N14
\inst|row_debounce:7:debounce_keys|count[16]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:7:debounce_keys|count[16]~52_combout\ = (\inst|row_debounce:7:debounce_keys|count\(16) & (\inst|row_debounce:7:debounce_keys|count[15]~51\ $ (GND))) # (!\inst|row_debounce:7:debounce_keys|count\(16) & 
-- (!\inst|row_debounce:7:debounce_keys|count[15]~51\ & VCC))
-- \inst|row_debounce:7:debounce_keys|count[16]~53\ = CARRY((\inst|row_debounce:7:debounce_keys|count\(16) & !\inst|row_debounce:7:debounce_keys|count[15]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:7:debounce_keys|count\(16),
	datad => VCC,
	cin => \inst|row_debounce:7:debounce_keys|count[15]~51\,
	combout => \inst|row_debounce:7:debounce_keys|count[16]~52_combout\,
	cout => \inst|row_debounce:7:debounce_keys|count[16]~53\);

-- Location: FF_X31_Y6_N15
\inst|row_debounce:7:debounce_keys|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:7:debounce_keys|count[16]~52_combout\,
	sclr => \inst|row_debounce:7:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:7:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:7:debounce_keys|count\(16));

-- Location: LCCOMB_X31_Y6_N28
\inst|row_debounce:7:debounce_keys|result~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:7:debounce_keys|result~3_combout\ = ((\inst|row_debounce:7:debounce_keys|flipflops\(1) $ (\inst|row_debounce:7:debounce_keys|flipflops\(0))) # (!\inst|row_debounce:7:debounce_keys|count\(15))) # 
-- (!\inst|row_debounce:7:debounce_keys|count\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:7:debounce_keys|flipflops\(1),
	datab => \inst|row_debounce:7:debounce_keys|count\(16),
	datac => \inst|row_debounce:7:debounce_keys|flipflops\(0),
	datad => \inst|row_debounce:7:debounce_keys|count\(15),
	combout => \inst|row_debounce:7:debounce_keys|result~3_combout\);

-- Location: LCCOMB_X31_Y6_N16
\inst|row_debounce:7:debounce_keys|count[17]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:7:debounce_keys|count[17]~54_combout\ = (\inst|row_debounce:7:debounce_keys|count\(17) & (!\inst|row_debounce:7:debounce_keys|count[16]~53\)) # (!\inst|row_debounce:7:debounce_keys|count\(17) & 
-- ((\inst|row_debounce:7:debounce_keys|count[16]~53\) # (GND)))
-- \inst|row_debounce:7:debounce_keys|count[17]~55\ = CARRY((!\inst|row_debounce:7:debounce_keys|count[16]~53\) # (!\inst|row_debounce:7:debounce_keys|count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:7:debounce_keys|count\(17),
	datad => VCC,
	cin => \inst|row_debounce:7:debounce_keys|count[16]~53\,
	combout => \inst|row_debounce:7:debounce_keys|count[17]~54_combout\,
	cout => \inst|row_debounce:7:debounce_keys|count[17]~55\);

-- Location: FF_X31_Y6_N17
\inst|row_debounce:7:debounce_keys|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:7:debounce_keys|count[17]~54_combout\,
	sclr => \inst|row_debounce:7:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:7:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:7:debounce_keys|count\(17));

-- Location: LCCOMB_X31_Y6_N24
\inst|row_debounce:7:debounce_keys|result~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:7:debounce_keys|result~1_combout\ = (!\inst|row_debounce:7:debounce_keys|count\(12) & (!\inst|row_debounce:7:debounce_keys|count\(10) & (!\inst|row_debounce:7:debounce_keys|count\(11) & !\inst|row_debounce:7:debounce_keys|count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:7:debounce_keys|count\(12),
	datab => \inst|row_debounce:7:debounce_keys|count\(10),
	datac => \inst|row_debounce:7:debounce_keys|count\(11),
	datad => \inst|row_debounce:7:debounce_keys|count\(9),
	combout => \inst|row_debounce:7:debounce_keys|result~1_combout\);

-- Location: LCCOMB_X31_Y7_N0
\inst|row_debounce:7:debounce_keys|result~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:7:debounce_keys|result~0_combout\ = ((!\inst|row_debounce:7:debounce_keys|count\(7) & (!\inst|row_debounce:7:debounce_keys|count\(6) & !\inst|row_debounce:7:debounce_keys|count\(5)))) # (!\inst|row_debounce:7:debounce_keys|count\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:7:debounce_keys|count\(8),
	datab => \inst|row_debounce:7:debounce_keys|count\(7),
	datac => \inst|row_debounce:7:debounce_keys|count\(6),
	datad => \inst|row_debounce:7:debounce_keys|count\(5),
	combout => \inst|row_debounce:7:debounce_keys|result~0_combout\);

-- Location: LCCOMB_X31_Y6_N26
\inst|row_debounce:7:debounce_keys|result~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:7:debounce_keys|result~2_combout\ = (!\inst|row_debounce:7:debounce_keys|count\(14) & (((\inst|row_debounce:7:debounce_keys|result~1_combout\ & \inst|row_debounce:7:debounce_keys|result~0_combout\)) # 
-- (!\inst|row_debounce:7:debounce_keys|count\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:7:debounce_keys|count\(14),
	datab => \inst|row_debounce:7:debounce_keys|result~1_combout\,
	datac => \inst|row_debounce:7:debounce_keys|count\(13),
	datad => \inst|row_debounce:7:debounce_keys|result~0_combout\,
	combout => \inst|row_debounce:7:debounce_keys|result~2_combout\);

-- Location: LCCOMB_X31_Y6_N18
\inst|row_debounce:7:debounce_keys|count[18]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:7:debounce_keys|count[18]~56_combout\ = \inst|row_debounce:7:debounce_keys|count[17]~55\ $ (!\inst|row_debounce:7:debounce_keys|count\(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|row_debounce:7:debounce_keys|count\(18),
	cin => \inst|row_debounce:7:debounce_keys|count[17]~55\,
	combout => \inst|row_debounce:7:debounce_keys|count[18]~56_combout\);

-- Location: FF_X31_Y6_N19
\inst|row_debounce:7:debounce_keys|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:7:debounce_keys|count[18]~56_combout\,
	sclr => \inst|row_debounce:7:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:7:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:7:debounce_keys|count\(18));

-- Location: LCCOMB_X31_Y6_N30
\inst|row_debounce:7:debounce_keys|result~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:7:debounce_keys|result~4_combout\ = (\inst|row_debounce:7:debounce_keys|result~3_combout\) # (((\inst|row_debounce:7:debounce_keys|result~2_combout\) # (!\inst|row_debounce:7:debounce_keys|count\(18))) # 
-- (!\inst|row_debounce:7:debounce_keys|count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:7:debounce_keys|result~3_combout\,
	datab => \inst|row_debounce:7:debounce_keys|count\(17),
	datac => \inst|row_debounce:7:debounce_keys|result~2_combout\,
	datad => \inst|row_debounce:7:debounce_keys|count\(18),
	combout => \inst|row_debounce:7:debounce_keys|result~4_combout\);

-- Location: LCCOMB_X24_Y6_N12
\inst|row_debounce:7:debounce_keys|result~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:7:debounce_keys|result~5_combout\ = (\inst|row_debounce:7:debounce_keys|result~4_combout\ & ((\inst|row_debounce:7:debounce_keys|result~q\))) # (!\inst|row_debounce:7:debounce_keys|result~4_combout\ & 
-- (\inst|row_debounce:7:debounce_keys|flipflops\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:7:debounce_keys|flipflops\(1),
	datac => \inst|row_debounce:7:debounce_keys|result~q\,
	datad => \inst|row_debounce:7:debounce_keys|result~4_combout\,
	combout => \inst|row_debounce:7:debounce_keys|result~5_combout\);

-- Location: FF_X23_Y7_N9
\inst|row_debounce:7:debounce_keys|result\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|row_debounce:7:debounce_keys|result~5_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:7:debounce_keys|result~q\);

-- Location: LCCOMB_X23_Y12_N18
\inst|LessThan1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan1~3_combout\ = (!\inst|Add15~4_combout\ & (!\inst|Add15~8_combout\ & !\inst|Add15~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add15~4_combout\,
	datac => \inst|Add15~8_combout\,
	datad => \inst|Add15~6_combout\,
	combout => \inst|LessThan1~3_combout\);

-- Location: LCCOMB_X23_Y12_N12
\inst|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux1~0_combout\ = (\inst|process_1~11_combout\ & ((\inst|LessThan1~1_combout\) # ((\inst|LessThan1~2_combout\ & \inst|LessThan1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan1~1_combout\,
	datab => \inst|LessThan1~2_combout\,
	datac => \inst|process_1~11_combout\,
	datad => \inst|LessThan1~3_combout\,
	combout => \inst|Mux1~0_combout\);

-- Location: FF_X23_Y12_N13
\inst|keys_stored[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Mux1~0_combout\,
	ena => \inst|keys_stored[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|keys_stored\(1));

-- Location: LCCOMB_X23_Y9_N6
\inst|row_debounce:1:debounce_keys|flipflops[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:1:debounce_keys|flipflops[0]~feeder_combout\ = \inst|keys_stored\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|keys_stored\(1),
	combout => \inst|row_debounce:1:debounce_keys|flipflops[0]~feeder_combout\);

-- Location: FF_X23_Y9_N7
\inst|row_debounce:1:debounce_keys|flipflops[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:1:debounce_keys|flipflops[0]~feeder_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:1:debounce_keys|flipflops\(0));

-- Location: LCCOMB_X25_Y5_N10
\inst|row_debounce:1:debounce_keys|flipflops[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:1:debounce_keys|flipflops[1]~feeder_combout\ = \inst|row_debounce:1:debounce_keys|flipflops\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|row_debounce:1:debounce_keys|flipflops\(0),
	combout => \inst|row_debounce:1:debounce_keys|flipflops[1]~feeder_combout\);

-- Location: FF_X25_Y5_N11
\inst|row_debounce:1:debounce_keys|flipflops[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:1:debounce_keys|flipflops[1]~feeder_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:1:debounce_keys|flipflops\(1));

-- Location: LCCOMB_X26_Y6_N14
\inst|row_debounce:1:debounce_keys|count[0]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:1:debounce_keys|count[0]~19_combout\ = \inst|row_debounce:1:debounce_keys|count\(0) $ (VCC)
-- \inst|row_debounce:1:debounce_keys|count[0]~20\ = CARRY(\inst|row_debounce:1:debounce_keys|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:1:debounce_keys|count\(0),
	datad => VCC,
	combout => \inst|row_debounce:1:debounce_keys|count[0]~19_combout\,
	cout => \inst|row_debounce:1:debounce_keys|count[0]~20\);

-- Location: LCCOMB_X25_Y5_N2
\inst|row_debounce:1:debounce_keys|counter_set\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:1:debounce_keys|counter_set~combout\ = \inst|row_debounce:1:debounce_keys|flipflops\(1) $ (\inst|row_debounce:1:debounce_keys|flipflops\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:1:debounce_keys|flipflops\(1),
	datad => \inst|row_debounce:1:debounce_keys|flipflops\(0),
	combout => \inst|row_debounce:1:debounce_keys|counter_set~combout\);

-- Location: LCCOMB_X26_Y5_N26
\inst|row_debounce:1:debounce_keys|count[18]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:1:debounce_keys|count[18]~31_combout\ = (\rst~input_o\ & \inst|row_debounce:1:debounce_keys|result~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rst~input_o\,
	datad => \inst|row_debounce:1:debounce_keys|result~4_combout\,
	combout => \inst|row_debounce:1:debounce_keys|count[18]~31_combout\);

-- Location: FF_X26_Y6_N15
\inst|row_debounce:1:debounce_keys|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:1:debounce_keys|count[0]~19_combout\,
	sclr => \inst|row_debounce:1:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:1:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:1:debounce_keys|count\(0));

-- Location: LCCOMB_X26_Y6_N16
\inst|row_debounce:1:debounce_keys|count[1]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:1:debounce_keys|count[1]~21_combout\ = (\inst|row_debounce:1:debounce_keys|count\(1) & (!\inst|row_debounce:1:debounce_keys|count[0]~20\)) # (!\inst|row_debounce:1:debounce_keys|count\(1) & 
-- ((\inst|row_debounce:1:debounce_keys|count[0]~20\) # (GND)))
-- \inst|row_debounce:1:debounce_keys|count[1]~22\ = CARRY((!\inst|row_debounce:1:debounce_keys|count[0]~20\) # (!\inst|row_debounce:1:debounce_keys|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:1:debounce_keys|count\(1),
	datad => VCC,
	cin => \inst|row_debounce:1:debounce_keys|count[0]~20\,
	combout => \inst|row_debounce:1:debounce_keys|count[1]~21_combout\,
	cout => \inst|row_debounce:1:debounce_keys|count[1]~22\);

-- Location: FF_X26_Y6_N17
\inst|row_debounce:1:debounce_keys|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:1:debounce_keys|count[1]~21_combout\,
	sclr => \inst|row_debounce:1:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:1:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:1:debounce_keys|count\(1));

-- Location: LCCOMB_X26_Y6_N18
\inst|row_debounce:1:debounce_keys|count[2]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:1:debounce_keys|count[2]~23_combout\ = (\inst|row_debounce:1:debounce_keys|count\(2) & (\inst|row_debounce:1:debounce_keys|count[1]~22\ $ (GND))) # (!\inst|row_debounce:1:debounce_keys|count\(2) & 
-- (!\inst|row_debounce:1:debounce_keys|count[1]~22\ & VCC))
-- \inst|row_debounce:1:debounce_keys|count[2]~24\ = CARRY((\inst|row_debounce:1:debounce_keys|count\(2) & !\inst|row_debounce:1:debounce_keys|count[1]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:1:debounce_keys|count\(2),
	datad => VCC,
	cin => \inst|row_debounce:1:debounce_keys|count[1]~22\,
	combout => \inst|row_debounce:1:debounce_keys|count[2]~23_combout\,
	cout => \inst|row_debounce:1:debounce_keys|count[2]~24\);

-- Location: FF_X26_Y6_N19
\inst|row_debounce:1:debounce_keys|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:1:debounce_keys|count[2]~23_combout\,
	sclr => \inst|row_debounce:1:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:1:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:1:debounce_keys|count\(2));

-- Location: LCCOMB_X26_Y6_N20
\inst|row_debounce:1:debounce_keys|count[3]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:1:debounce_keys|count[3]~25_combout\ = (\inst|row_debounce:1:debounce_keys|count\(3) & (!\inst|row_debounce:1:debounce_keys|count[2]~24\)) # (!\inst|row_debounce:1:debounce_keys|count\(3) & 
-- ((\inst|row_debounce:1:debounce_keys|count[2]~24\) # (GND)))
-- \inst|row_debounce:1:debounce_keys|count[3]~26\ = CARRY((!\inst|row_debounce:1:debounce_keys|count[2]~24\) # (!\inst|row_debounce:1:debounce_keys|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:1:debounce_keys|count\(3),
	datad => VCC,
	cin => \inst|row_debounce:1:debounce_keys|count[2]~24\,
	combout => \inst|row_debounce:1:debounce_keys|count[3]~25_combout\,
	cout => \inst|row_debounce:1:debounce_keys|count[3]~26\);

-- Location: FF_X26_Y6_N21
\inst|row_debounce:1:debounce_keys|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:1:debounce_keys|count[3]~25_combout\,
	sclr => \inst|row_debounce:1:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:1:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:1:debounce_keys|count\(3));

-- Location: LCCOMB_X26_Y6_N22
\inst|row_debounce:1:debounce_keys|count[4]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:1:debounce_keys|count[4]~27_combout\ = (\inst|row_debounce:1:debounce_keys|count\(4) & (\inst|row_debounce:1:debounce_keys|count[3]~26\ $ (GND))) # (!\inst|row_debounce:1:debounce_keys|count\(4) & 
-- (!\inst|row_debounce:1:debounce_keys|count[3]~26\ & VCC))
-- \inst|row_debounce:1:debounce_keys|count[4]~28\ = CARRY((\inst|row_debounce:1:debounce_keys|count\(4) & !\inst|row_debounce:1:debounce_keys|count[3]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:1:debounce_keys|count\(4),
	datad => VCC,
	cin => \inst|row_debounce:1:debounce_keys|count[3]~26\,
	combout => \inst|row_debounce:1:debounce_keys|count[4]~27_combout\,
	cout => \inst|row_debounce:1:debounce_keys|count[4]~28\);

-- Location: FF_X26_Y6_N23
\inst|row_debounce:1:debounce_keys|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:1:debounce_keys|count[4]~27_combout\,
	sclr => \inst|row_debounce:1:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:1:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:1:debounce_keys|count\(4));

-- Location: LCCOMB_X26_Y6_N24
\inst|row_debounce:1:debounce_keys|count[5]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:1:debounce_keys|count[5]~29_combout\ = (\inst|row_debounce:1:debounce_keys|count\(5) & (!\inst|row_debounce:1:debounce_keys|count[4]~28\)) # (!\inst|row_debounce:1:debounce_keys|count\(5) & 
-- ((\inst|row_debounce:1:debounce_keys|count[4]~28\) # (GND)))
-- \inst|row_debounce:1:debounce_keys|count[5]~30\ = CARRY((!\inst|row_debounce:1:debounce_keys|count[4]~28\) # (!\inst|row_debounce:1:debounce_keys|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:1:debounce_keys|count\(5),
	datad => VCC,
	cin => \inst|row_debounce:1:debounce_keys|count[4]~28\,
	combout => \inst|row_debounce:1:debounce_keys|count[5]~29_combout\,
	cout => \inst|row_debounce:1:debounce_keys|count[5]~30\);

-- Location: FF_X26_Y6_N25
\inst|row_debounce:1:debounce_keys|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:1:debounce_keys|count[5]~29_combout\,
	sclr => \inst|row_debounce:1:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:1:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:1:debounce_keys|count\(5));

-- Location: LCCOMB_X26_Y6_N26
\inst|row_debounce:1:debounce_keys|count[6]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:1:debounce_keys|count[6]~32_combout\ = (\inst|row_debounce:1:debounce_keys|count\(6) & (\inst|row_debounce:1:debounce_keys|count[5]~30\ $ (GND))) # (!\inst|row_debounce:1:debounce_keys|count\(6) & 
-- (!\inst|row_debounce:1:debounce_keys|count[5]~30\ & VCC))
-- \inst|row_debounce:1:debounce_keys|count[6]~33\ = CARRY((\inst|row_debounce:1:debounce_keys|count\(6) & !\inst|row_debounce:1:debounce_keys|count[5]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:1:debounce_keys|count\(6),
	datad => VCC,
	cin => \inst|row_debounce:1:debounce_keys|count[5]~30\,
	combout => \inst|row_debounce:1:debounce_keys|count[6]~32_combout\,
	cout => \inst|row_debounce:1:debounce_keys|count[6]~33\);

-- Location: FF_X26_Y6_N27
\inst|row_debounce:1:debounce_keys|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:1:debounce_keys|count[6]~32_combout\,
	sclr => \inst|row_debounce:1:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:1:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:1:debounce_keys|count\(6));

-- Location: LCCOMB_X26_Y6_N28
\inst|row_debounce:1:debounce_keys|count[7]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:1:debounce_keys|count[7]~34_combout\ = (\inst|row_debounce:1:debounce_keys|count\(7) & (!\inst|row_debounce:1:debounce_keys|count[6]~33\)) # (!\inst|row_debounce:1:debounce_keys|count\(7) & 
-- ((\inst|row_debounce:1:debounce_keys|count[6]~33\) # (GND)))
-- \inst|row_debounce:1:debounce_keys|count[7]~35\ = CARRY((!\inst|row_debounce:1:debounce_keys|count[6]~33\) # (!\inst|row_debounce:1:debounce_keys|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:1:debounce_keys|count\(7),
	datad => VCC,
	cin => \inst|row_debounce:1:debounce_keys|count[6]~33\,
	combout => \inst|row_debounce:1:debounce_keys|count[7]~34_combout\,
	cout => \inst|row_debounce:1:debounce_keys|count[7]~35\);

-- Location: FF_X26_Y6_N29
\inst|row_debounce:1:debounce_keys|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:1:debounce_keys|count[7]~34_combout\,
	sclr => \inst|row_debounce:1:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:1:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:1:debounce_keys|count\(7));

-- Location: LCCOMB_X26_Y6_N30
\inst|row_debounce:1:debounce_keys|count[8]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:1:debounce_keys|count[8]~36_combout\ = (\inst|row_debounce:1:debounce_keys|count\(8) & (\inst|row_debounce:1:debounce_keys|count[7]~35\ $ (GND))) # (!\inst|row_debounce:1:debounce_keys|count\(8) & 
-- (!\inst|row_debounce:1:debounce_keys|count[7]~35\ & VCC))
-- \inst|row_debounce:1:debounce_keys|count[8]~37\ = CARRY((\inst|row_debounce:1:debounce_keys|count\(8) & !\inst|row_debounce:1:debounce_keys|count[7]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:1:debounce_keys|count\(8),
	datad => VCC,
	cin => \inst|row_debounce:1:debounce_keys|count[7]~35\,
	combout => \inst|row_debounce:1:debounce_keys|count[8]~36_combout\,
	cout => \inst|row_debounce:1:debounce_keys|count[8]~37\);

-- Location: FF_X26_Y6_N31
\inst|row_debounce:1:debounce_keys|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:1:debounce_keys|count[8]~36_combout\,
	sclr => \inst|row_debounce:1:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:1:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:1:debounce_keys|count\(8));

-- Location: LCCOMB_X26_Y5_N0
\inst|row_debounce:1:debounce_keys|count[9]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:1:debounce_keys|count[9]~38_combout\ = (\inst|row_debounce:1:debounce_keys|count\(9) & (!\inst|row_debounce:1:debounce_keys|count[8]~37\)) # (!\inst|row_debounce:1:debounce_keys|count\(9) & 
-- ((\inst|row_debounce:1:debounce_keys|count[8]~37\) # (GND)))
-- \inst|row_debounce:1:debounce_keys|count[9]~39\ = CARRY((!\inst|row_debounce:1:debounce_keys|count[8]~37\) # (!\inst|row_debounce:1:debounce_keys|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:1:debounce_keys|count\(9),
	datad => VCC,
	cin => \inst|row_debounce:1:debounce_keys|count[8]~37\,
	combout => \inst|row_debounce:1:debounce_keys|count[9]~38_combout\,
	cout => \inst|row_debounce:1:debounce_keys|count[9]~39\);

-- Location: FF_X26_Y5_N1
\inst|row_debounce:1:debounce_keys|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:1:debounce_keys|count[9]~38_combout\,
	sclr => \inst|row_debounce:1:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:1:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:1:debounce_keys|count\(9));

-- Location: LCCOMB_X26_Y5_N2
\inst|row_debounce:1:debounce_keys|count[10]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:1:debounce_keys|count[10]~40_combout\ = (\inst|row_debounce:1:debounce_keys|count\(10) & (\inst|row_debounce:1:debounce_keys|count[9]~39\ $ (GND))) # (!\inst|row_debounce:1:debounce_keys|count\(10) & 
-- (!\inst|row_debounce:1:debounce_keys|count[9]~39\ & VCC))
-- \inst|row_debounce:1:debounce_keys|count[10]~41\ = CARRY((\inst|row_debounce:1:debounce_keys|count\(10) & !\inst|row_debounce:1:debounce_keys|count[9]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:1:debounce_keys|count\(10),
	datad => VCC,
	cin => \inst|row_debounce:1:debounce_keys|count[9]~39\,
	combout => \inst|row_debounce:1:debounce_keys|count[10]~40_combout\,
	cout => \inst|row_debounce:1:debounce_keys|count[10]~41\);

-- Location: FF_X26_Y5_N3
\inst|row_debounce:1:debounce_keys|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:1:debounce_keys|count[10]~40_combout\,
	sclr => \inst|row_debounce:1:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:1:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:1:debounce_keys|count\(10));

-- Location: LCCOMB_X26_Y5_N4
\inst|row_debounce:1:debounce_keys|count[11]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:1:debounce_keys|count[11]~42_combout\ = (\inst|row_debounce:1:debounce_keys|count\(11) & (!\inst|row_debounce:1:debounce_keys|count[10]~41\)) # (!\inst|row_debounce:1:debounce_keys|count\(11) & 
-- ((\inst|row_debounce:1:debounce_keys|count[10]~41\) # (GND)))
-- \inst|row_debounce:1:debounce_keys|count[11]~43\ = CARRY((!\inst|row_debounce:1:debounce_keys|count[10]~41\) # (!\inst|row_debounce:1:debounce_keys|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:1:debounce_keys|count\(11),
	datad => VCC,
	cin => \inst|row_debounce:1:debounce_keys|count[10]~41\,
	combout => \inst|row_debounce:1:debounce_keys|count[11]~42_combout\,
	cout => \inst|row_debounce:1:debounce_keys|count[11]~43\);

-- Location: FF_X26_Y5_N5
\inst|row_debounce:1:debounce_keys|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:1:debounce_keys|count[11]~42_combout\,
	sclr => \inst|row_debounce:1:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:1:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:1:debounce_keys|count\(11));

-- Location: LCCOMB_X26_Y5_N6
\inst|row_debounce:1:debounce_keys|count[12]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:1:debounce_keys|count[12]~44_combout\ = (\inst|row_debounce:1:debounce_keys|count\(12) & (\inst|row_debounce:1:debounce_keys|count[11]~43\ $ (GND))) # (!\inst|row_debounce:1:debounce_keys|count\(12) & 
-- (!\inst|row_debounce:1:debounce_keys|count[11]~43\ & VCC))
-- \inst|row_debounce:1:debounce_keys|count[12]~45\ = CARRY((\inst|row_debounce:1:debounce_keys|count\(12) & !\inst|row_debounce:1:debounce_keys|count[11]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:1:debounce_keys|count\(12),
	datad => VCC,
	cin => \inst|row_debounce:1:debounce_keys|count[11]~43\,
	combout => \inst|row_debounce:1:debounce_keys|count[12]~44_combout\,
	cout => \inst|row_debounce:1:debounce_keys|count[12]~45\);

-- Location: FF_X26_Y5_N7
\inst|row_debounce:1:debounce_keys|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:1:debounce_keys|count[12]~44_combout\,
	sclr => \inst|row_debounce:1:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:1:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:1:debounce_keys|count\(12));

-- Location: LCCOMB_X26_Y5_N8
\inst|row_debounce:1:debounce_keys|count[13]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:1:debounce_keys|count[13]~46_combout\ = (\inst|row_debounce:1:debounce_keys|count\(13) & (!\inst|row_debounce:1:debounce_keys|count[12]~45\)) # (!\inst|row_debounce:1:debounce_keys|count\(13) & 
-- ((\inst|row_debounce:1:debounce_keys|count[12]~45\) # (GND)))
-- \inst|row_debounce:1:debounce_keys|count[13]~47\ = CARRY((!\inst|row_debounce:1:debounce_keys|count[12]~45\) # (!\inst|row_debounce:1:debounce_keys|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:1:debounce_keys|count\(13),
	datad => VCC,
	cin => \inst|row_debounce:1:debounce_keys|count[12]~45\,
	combout => \inst|row_debounce:1:debounce_keys|count[13]~46_combout\,
	cout => \inst|row_debounce:1:debounce_keys|count[13]~47\);

-- Location: FF_X26_Y5_N9
\inst|row_debounce:1:debounce_keys|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:1:debounce_keys|count[13]~46_combout\,
	sclr => \inst|row_debounce:1:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:1:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:1:debounce_keys|count\(13));

-- Location: LCCOMB_X26_Y5_N10
\inst|row_debounce:1:debounce_keys|count[14]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:1:debounce_keys|count[14]~48_combout\ = (\inst|row_debounce:1:debounce_keys|count\(14) & (\inst|row_debounce:1:debounce_keys|count[13]~47\ $ (GND))) # (!\inst|row_debounce:1:debounce_keys|count\(14) & 
-- (!\inst|row_debounce:1:debounce_keys|count[13]~47\ & VCC))
-- \inst|row_debounce:1:debounce_keys|count[14]~49\ = CARRY((\inst|row_debounce:1:debounce_keys|count\(14) & !\inst|row_debounce:1:debounce_keys|count[13]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:1:debounce_keys|count\(14),
	datad => VCC,
	cin => \inst|row_debounce:1:debounce_keys|count[13]~47\,
	combout => \inst|row_debounce:1:debounce_keys|count[14]~48_combout\,
	cout => \inst|row_debounce:1:debounce_keys|count[14]~49\);

-- Location: FF_X26_Y5_N11
\inst|row_debounce:1:debounce_keys|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:1:debounce_keys|count[14]~48_combout\,
	sclr => \inst|row_debounce:1:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:1:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:1:debounce_keys|count\(14));

-- Location: LCCOMB_X26_Y5_N12
\inst|row_debounce:1:debounce_keys|count[15]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:1:debounce_keys|count[15]~50_combout\ = (\inst|row_debounce:1:debounce_keys|count\(15) & (!\inst|row_debounce:1:debounce_keys|count[14]~49\)) # (!\inst|row_debounce:1:debounce_keys|count\(15) & 
-- ((\inst|row_debounce:1:debounce_keys|count[14]~49\) # (GND)))
-- \inst|row_debounce:1:debounce_keys|count[15]~51\ = CARRY((!\inst|row_debounce:1:debounce_keys|count[14]~49\) # (!\inst|row_debounce:1:debounce_keys|count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:1:debounce_keys|count\(15),
	datad => VCC,
	cin => \inst|row_debounce:1:debounce_keys|count[14]~49\,
	combout => \inst|row_debounce:1:debounce_keys|count[15]~50_combout\,
	cout => \inst|row_debounce:1:debounce_keys|count[15]~51\);

-- Location: FF_X26_Y5_N13
\inst|row_debounce:1:debounce_keys|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:1:debounce_keys|count[15]~50_combout\,
	sclr => \inst|row_debounce:1:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:1:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:1:debounce_keys|count\(15));

-- Location: LCCOMB_X26_Y5_N14
\inst|row_debounce:1:debounce_keys|count[16]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:1:debounce_keys|count[16]~52_combout\ = (\inst|row_debounce:1:debounce_keys|count\(16) & (\inst|row_debounce:1:debounce_keys|count[15]~51\ $ (GND))) # (!\inst|row_debounce:1:debounce_keys|count\(16) & 
-- (!\inst|row_debounce:1:debounce_keys|count[15]~51\ & VCC))
-- \inst|row_debounce:1:debounce_keys|count[16]~53\ = CARRY((\inst|row_debounce:1:debounce_keys|count\(16) & !\inst|row_debounce:1:debounce_keys|count[15]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:1:debounce_keys|count\(16),
	datad => VCC,
	cin => \inst|row_debounce:1:debounce_keys|count[15]~51\,
	combout => \inst|row_debounce:1:debounce_keys|count[16]~52_combout\,
	cout => \inst|row_debounce:1:debounce_keys|count[16]~53\);

-- Location: FF_X26_Y5_N15
\inst|row_debounce:1:debounce_keys|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:1:debounce_keys|count[16]~52_combout\,
	sclr => \inst|row_debounce:1:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:1:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:1:debounce_keys|count\(16));

-- Location: LCCOMB_X25_Y5_N0
\inst|row_debounce:1:debounce_keys|result~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:1:debounce_keys|result~3_combout\ = ((\inst|row_debounce:1:debounce_keys|flipflops\(0) $ (\inst|row_debounce:1:debounce_keys|flipflops\(1))) # (!\inst|row_debounce:1:debounce_keys|count\(16))) # 
-- (!\inst|row_debounce:1:debounce_keys|count\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:1:debounce_keys|flipflops\(0),
	datab => \inst|row_debounce:1:debounce_keys|count\(15),
	datac => \inst|row_debounce:1:debounce_keys|count\(16),
	datad => \inst|row_debounce:1:debounce_keys|flipflops\(1),
	combout => \inst|row_debounce:1:debounce_keys|result~3_combout\);

-- Location: LCCOMB_X26_Y5_N16
\inst|row_debounce:1:debounce_keys|count[17]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:1:debounce_keys|count[17]~54_combout\ = (\inst|row_debounce:1:debounce_keys|count\(17) & (!\inst|row_debounce:1:debounce_keys|count[16]~53\)) # (!\inst|row_debounce:1:debounce_keys|count\(17) & 
-- ((\inst|row_debounce:1:debounce_keys|count[16]~53\) # (GND)))
-- \inst|row_debounce:1:debounce_keys|count[17]~55\ = CARRY((!\inst|row_debounce:1:debounce_keys|count[16]~53\) # (!\inst|row_debounce:1:debounce_keys|count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:1:debounce_keys|count\(17),
	datad => VCC,
	cin => \inst|row_debounce:1:debounce_keys|count[16]~53\,
	combout => \inst|row_debounce:1:debounce_keys|count[17]~54_combout\,
	cout => \inst|row_debounce:1:debounce_keys|count[17]~55\);

-- Location: FF_X26_Y5_N17
\inst|row_debounce:1:debounce_keys|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:1:debounce_keys|count[17]~54_combout\,
	sclr => \inst|row_debounce:1:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:1:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:1:debounce_keys|count\(17));

-- Location: LCCOMB_X26_Y5_N18
\inst|row_debounce:1:debounce_keys|count[18]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:1:debounce_keys|count[18]~56_combout\ = \inst|row_debounce:1:debounce_keys|count[17]~55\ $ (!\inst|row_debounce:1:debounce_keys|count\(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|row_debounce:1:debounce_keys|count\(18),
	cin => \inst|row_debounce:1:debounce_keys|count[17]~55\,
	combout => \inst|row_debounce:1:debounce_keys|count[18]~56_combout\);

-- Location: FF_X26_Y5_N19
\inst|row_debounce:1:debounce_keys|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:1:debounce_keys|count[18]~56_combout\,
	sclr => \inst|row_debounce:1:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:1:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:1:debounce_keys|count\(18));

-- Location: LCCOMB_X26_Y5_N24
\inst|row_debounce:1:debounce_keys|result~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:1:debounce_keys|result~1_combout\ = (!\inst|row_debounce:1:debounce_keys|count\(12) & (!\inst|row_debounce:1:debounce_keys|count\(9) & (!\inst|row_debounce:1:debounce_keys|count\(11) & !\inst|row_debounce:1:debounce_keys|count\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:1:debounce_keys|count\(12),
	datab => \inst|row_debounce:1:debounce_keys|count\(9),
	datac => \inst|row_debounce:1:debounce_keys|count\(11),
	datad => \inst|row_debounce:1:debounce_keys|count\(10),
	combout => \inst|row_debounce:1:debounce_keys|result~1_combout\);

-- Location: LCCOMB_X26_Y6_N12
\inst|row_debounce:1:debounce_keys|result~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:1:debounce_keys|result~0_combout\ = ((!\inst|row_debounce:1:debounce_keys|count\(7) & (!\inst|row_debounce:1:debounce_keys|count\(6) & !\inst|row_debounce:1:debounce_keys|count\(5)))) # (!\inst|row_debounce:1:debounce_keys|count\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:1:debounce_keys|count\(8),
	datab => \inst|row_debounce:1:debounce_keys|count\(7),
	datac => \inst|row_debounce:1:debounce_keys|count\(6),
	datad => \inst|row_debounce:1:debounce_keys|count\(5),
	combout => \inst|row_debounce:1:debounce_keys|result~0_combout\);

-- Location: LCCOMB_X26_Y5_N30
\inst|row_debounce:1:debounce_keys|result~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:1:debounce_keys|result~2_combout\ = (!\inst|row_debounce:1:debounce_keys|count\(14) & (((\inst|row_debounce:1:debounce_keys|result~1_combout\ & \inst|row_debounce:1:debounce_keys|result~0_combout\)) # 
-- (!\inst|row_debounce:1:debounce_keys|count\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:1:debounce_keys|count\(14),
	datab => \inst|row_debounce:1:debounce_keys|result~1_combout\,
	datac => \inst|row_debounce:1:debounce_keys|count\(13),
	datad => \inst|row_debounce:1:debounce_keys|result~0_combout\,
	combout => \inst|row_debounce:1:debounce_keys|result~2_combout\);

-- Location: LCCOMB_X26_Y5_N20
\inst|row_debounce:1:debounce_keys|result~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:1:debounce_keys|result~4_combout\ = (\inst|row_debounce:1:debounce_keys|result~3_combout\) # (((\inst|row_debounce:1:debounce_keys|result~2_combout\) # (!\inst|row_debounce:1:debounce_keys|count\(17))) # 
-- (!\inst|row_debounce:1:debounce_keys|count\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:1:debounce_keys|result~3_combout\,
	datab => \inst|row_debounce:1:debounce_keys|count\(18),
	datac => \inst|row_debounce:1:debounce_keys|result~2_combout\,
	datad => \inst|row_debounce:1:debounce_keys|count\(17),
	combout => \inst|row_debounce:1:debounce_keys|result~4_combout\);

-- Location: LCCOMB_X25_Y7_N26
\inst|row_debounce:1:debounce_keys|result~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:1:debounce_keys|result~5_combout\ = (\inst|row_debounce:1:debounce_keys|result~4_combout\ & (\inst|row_debounce:1:debounce_keys|result~q\)) # (!\inst|row_debounce:1:debounce_keys|result~4_combout\ & 
-- ((\inst|row_debounce:1:debounce_keys|flipflops\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:1:debounce_keys|result~q\,
	datac => \inst|row_debounce:1:debounce_keys|flipflops\(1),
	datad => \inst|row_debounce:1:debounce_keys|result~4_combout\,
	combout => \inst|row_debounce:1:debounce_keys|result~5_combout\);

-- Location: FF_X23_Y7_N23
\inst|row_debounce:1:debounce_keys|result\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|row_debounce:1:debounce_keys|result~5_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:1:debounce_keys|result~q\);

-- Location: LCCOMB_X24_Y12_N0
\inst|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux4~1_combout\ = (\inst|process_1~0_combout\ & ((\inst|LessThan1~1_combout\) # ((\inst|Mux4~0_combout\ & !\inst|Add15~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|process_1~0_combout\,
	datab => \inst|LessThan1~1_combout\,
	datac => \inst|Mux4~0_combout\,
	datad => \inst|Add15~8_combout\,
	combout => \inst|Mux4~1_combout\);

-- Location: FF_X24_Y12_N1
\inst|keys_stored[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Mux4~1_combout\,
	ena => \inst|keys_stored[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|keys_stored\(4));

-- Location: LCCOMB_X22_Y7_N24
\inst|row_debounce:4:debounce_keys|flipflops[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:4:debounce_keys|flipflops[0]~feeder_combout\ = \inst|keys_stored\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|keys_stored\(4),
	combout => \inst|row_debounce:4:debounce_keys|flipflops[0]~feeder_combout\);

-- Location: FF_X22_Y7_N25
\inst|row_debounce:4:debounce_keys|flipflops[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:4:debounce_keys|flipflops[0]~feeder_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:4:debounce_keys|flipflops\(0));

-- Location: LCCOMB_X22_Y7_N6
\inst|row_debounce:4:debounce_keys|flipflops[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:4:debounce_keys|flipflops[1]~feeder_combout\ = \inst|row_debounce:4:debounce_keys|flipflops\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|row_debounce:4:debounce_keys|flipflops\(0),
	combout => \inst|row_debounce:4:debounce_keys|flipflops[1]~feeder_combout\);

-- Location: FF_X22_Y7_N7
\inst|row_debounce:4:debounce_keys|flipflops[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:4:debounce_keys|flipflops[1]~feeder_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:4:debounce_keys|flipflops\(1));

-- Location: LCCOMB_X21_Y8_N14
\inst|row_debounce:4:debounce_keys|count[0]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:4:debounce_keys|count[0]~19_combout\ = \inst|row_debounce:4:debounce_keys|count\(0) $ (VCC)
-- \inst|row_debounce:4:debounce_keys|count[0]~20\ = CARRY(\inst|row_debounce:4:debounce_keys|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:4:debounce_keys|count\(0),
	datad => VCC,
	combout => \inst|row_debounce:4:debounce_keys|count[0]~19_combout\,
	cout => \inst|row_debounce:4:debounce_keys|count[0]~20\);

-- Location: LCCOMB_X21_Y7_N24
\inst|row_debounce:4:debounce_keys|counter_set\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:4:debounce_keys|counter_set~combout\ = \inst|row_debounce:4:debounce_keys|flipflops\(0) $ (\inst|row_debounce:4:debounce_keys|flipflops\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:4:debounce_keys|flipflops\(0),
	datad => \inst|row_debounce:4:debounce_keys|flipflops\(1),
	combout => \inst|row_debounce:4:debounce_keys|counter_set~combout\);

-- Location: LCCOMB_X21_Y7_N22
\inst|row_debounce:4:debounce_keys|count[18]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:4:debounce_keys|count[18]~31_combout\ = (\inst|row_debounce:4:debounce_keys|result~4_combout\ & \rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:4:debounce_keys|result~4_combout\,
	datac => \rst~input_o\,
	combout => \inst|row_debounce:4:debounce_keys|count[18]~31_combout\);

-- Location: FF_X21_Y8_N15
\inst|row_debounce:4:debounce_keys|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:4:debounce_keys|count[0]~19_combout\,
	sclr => \inst|row_debounce:4:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:4:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:4:debounce_keys|count\(0));

-- Location: LCCOMB_X21_Y8_N16
\inst|row_debounce:4:debounce_keys|count[1]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:4:debounce_keys|count[1]~21_combout\ = (\inst|row_debounce:4:debounce_keys|count\(1) & (!\inst|row_debounce:4:debounce_keys|count[0]~20\)) # (!\inst|row_debounce:4:debounce_keys|count\(1) & 
-- ((\inst|row_debounce:4:debounce_keys|count[0]~20\) # (GND)))
-- \inst|row_debounce:4:debounce_keys|count[1]~22\ = CARRY((!\inst|row_debounce:4:debounce_keys|count[0]~20\) # (!\inst|row_debounce:4:debounce_keys|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:4:debounce_keys|count\(1),
	datad => VCC,
	cin => \inst|row_debounce:4:debounce_keys|count[0]~20\,
	combout => \inst|row_debounce:4:debounce_keys|count[1]~21_combout\,
	cout => \inst|row_debounce:4:debounce_keys|count[1]~22\);

-- Location: FF_X21_Y8_N17
\inst|row_debounce:4:debounce_keys|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:4:debounce_keys|count[1]~21_combout\,
	sclr => \inst|row_debounce:4:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:4:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:4:debounce_keys|count\(1));

-- Location: LCCOMB_X21_Y8_N18
\inst|row_debounce:4:debounce_keys|count[2]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:4:debounce_keys|count[2]~23_combout\ = (\inst|row_debounce:4:debounce_keys|count\(2) & (\inst|row_debounce:4:debounce_keys|count[1]~22\ $ (GND))) # (!\inst|row_debounce:4:debounce_keys|count\(2) & 
-- (!\inst|row_debounce:4:debounce_keys|count[1]~22\ & VCC))
-- \inst|row_debounce:4:debounce_keys|count[2]~24\ = CARRY((\inst|row_debounce:4:debounce_keys|count\(2) & !\inst|row_debounce:4:debounce_keys|count[1]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:4:debounce_keys|count\(2),
	datad => VCC,
	cin => \inst|row_debounce:4:debounce_keys|count[1]~22\,
	combout => \inst|row_debounce:4:debounce_keys|count[2]~23_combout\,
	cout => \inst|row_debounce:4:debounce_keys|count[2]~24\);

-- Location: FF_X21_Y8_N19
\inst|row_debounce:4:debounce_keys|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:4:debounce_keys|count[2]~23_combout\,
	sclr => \inst|row_debounce:4:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:4:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:4:debounce_keys|count\(2));

-- Location: LCCOMB_X21_Y8_N20
\inst|row_debounce:4:debounce_keys|count[3]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:4:debounce_keys|count[3]~25_combout\ = (\inst|row_debounce:4:debounce_keys|count\(3) & (!\inst|row_debounce:4:debounce_keys|count[2]~24\)) # (!\inst|row_debounce:4:debounce_keys|count\(3) & 
-- ((\inst|row_debounce:4:debounce_keys|count[2]~24\) # (GND)))
-- \inst|row_debounce:4:debounce_keys|count[3]~26\ = CARRY((!\inst|row_debounce:4:debounce_keys|count[2]~24\) # (!\inst|row_debounce:4:debounce_keys|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:4:debounce_keys|count\(3),
	datad => VCC,
	cin => \inst|row_debounce:4:debounce_keys|count[2]~24\,
	combout => \inst|row_debounce:4:debounce_keys|count[3]~25_combout\,
	cout => \inst|row_debounce:4:debounce_keys|count[3]~26\);

-- Location: FF_X21_Y8_N21
\inst|row_debounce:4:debounce_keys|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:4:debounce_keys|count[3]~25_combout\,
	sclr => \inst|row_debounce:4:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:4:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:4:debounce_keys|count\(3));

-- Location: LCCOMB_X21_Y8_N22
\inst|row_debounce:4:debounce_keys|count[4]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:4:debounce_keys|count[4]~27_combout\ = (\inst|row_debounce:4:debounce_keys|count\(4) & (\inst|row_debounce:4:debounce_keys|count[3]~26\ $ (GND))) # (!\inst|row_debounce:4:debounce_keys|count\(4) & 
-- (!\inst|row_debounce:4:debounce_keys|count[3]~26\ & VCC))
-- \inst|row_debounce:4:debounce_keys|count[4]~28\ = CARRY((\inst|row_debounce:4:debounce_keys|count\(4) & !\inst|row_debounce:4:debounce_keys|count[3]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:4:debounce_keys|count\(4),
	datad => VCC,
	cin => \inst|row_debounce:4:debounce_keys|count[3]~26\,
	combout => \inst|row_debounce:4:debounce_keys|count[4]~27_combout\,
	cout => \inst|row_debounce:4:debounce_keys|count[4]~28\);

-- Location: FF_X21_Y8_N23
\inst|row_debounce:4:debounce_keys|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:4:debounce_keys|count[4]~27_combout\,
	sclr => \inst|row_debounce:4:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:4:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:4:debounce_keys|count\(4));

-- Location: LCCOMB_X21_Y8_N24
\inst|row_debounce:4:debounce_keys|count[5]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:4:debounce_keys|count[5]~29_combout\ = (\inst|row_debounce:4:debounce_keys|count\(5) & (!\inst|row_debounce:4:debounce_keys|count[4]~28\)) # (!\inst|row_debounce:4:debounce_keys|count\(5) & 
-- ((\inst|row_debounce:4:debounce_keys|count[4]~28\) # (GND)))
-- \inst|row_debounce:4:debounce_keys|count[5]~30\ = CARRY((!\inst|row_debounce:4:debounce_keys|count[4]~28\) # (!\inst|row_debounce:4:debounce_keys|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:4:debounce_keys|count\(5),
	datad => VCC,
	cin => \inst|row_debounce:4:debounce_keys|count[4]~28\,
	combout => \inst|row_debounce:4:debounce_keys|count[5]~29_combout\,
	cout => \inst|row_debounce:4:debounce_keys|count[5]~30\);

-- Location: FF_X21_Y8_N25
\inst|row_debounce:4:debounce_keys|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:4:debounce_keys|count[5]~29_combout\,
	sclr => \inst|row_debounce:4:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:4:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:4:debounce_keys|count\(5));

-- Location: LCCOMB_X21_Y8_N26
\inst|row_debounce:4:debounce_keys|count[6]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:4:debounce_keys|count[6]~32_combout\ = (\inst|row_debounce:4:debounce_keys|count\(6) & (\inst|row_debounce:4:debounce_keys|count[5]~30\ $ (GND))) # (!\inst|row_debounce:4:debounce_keys|count\(6) & 
-- (!\inst|row_debounce:4:debounce_keys|count[5]~30\ & VCC))
-- \inst|row_debounce:4:debounce_keys|count[6]~33\ = CARRY((\inst|row_debounce:4:debounce_keys|count\(6) & !\inst|row_debounce:4:debounce_keys|count[5]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:4:debounce_keys|count\(6),
	datad => VCC,
	cin => \inst|row_debounce:4:debounce_keys|count[5]~30\,
	combout => \inst|row_debounce:4:debounce_keys|count[6]~32_combout\,
	cout => \inst|row_debounce:4:debounce_keys|count[6]~33\);

-- Location: FF_X21_Y8_N27
\inst|row_debounce:4:debounce_keys|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:4:debounce_keys|count[6]~32_combout\,
	sclr => \inst|row_debounce:4:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:4:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:4:debounce_keys|count\(6));

-- Location: LCCOMB_X21_Y8_N28
\inst|row_debounce:4:debounce_keys|count[7]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:4:debounce_keys|count[7]~34_combout\ = (\inst|row_debounce:4:debounce_keys|count\(7) & (!\inst|row_debounce:4:debounce_keys|count[6]~33\)) # (!\inst|row_debounce:4:debounce_keys|count\(7) & 
-- ((\inst|row_debounce:4:debounce_keys|count[6]~33\) # (GND)))
-- \inst|row_debounce:4:debounce_keys|count[7]~35\ = CARRY((!\inst|row_debounce:4:debounce_keys|count[6]~33\) # (!\inst|row_debounce:4:debounce_keys|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:4:debounce_keys|count\(7),
	datad => VCC,
	cin => \inst|row_debounce:4:debounce_keys|count[6]~33\,
	combout => \inst|row_debounce:4:debounce_keys|count[7]~34_combout\,
	cout => \inst|row_debounce:4:debounce_keys|count[7]~35\);

-- Location: FF_X21_Y8_N29
\inst|row_debounce:4:debounce_keys|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:4:debounce_keys|count[7]~34_combout\,
	sclr => \inst|row_debounce:4:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:4:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:4:debounce_keys|count\(7));

-- Location: LCCOMB_X21_Y8_N30
\inst|row_debounce:4:debounce_keys|count[8]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:4:debounce_keys|count[8]~36_combout\ = (\inst|row_debounce:4:debounce_keys|count\(8) & (\inst|row_debounce:4:debounce_keys|count[7]~35\ $ (GND))) # (!\inst|row_debounce:4:debounce_keys|count\(8) & 
-- (!\inst|row_debounce:4:debounce_keys|count[7]~35\ & VCC))
-- \inst|row_debounce:4:debounce_keys|count[8]~37\ = CARRY((\inst|row_debounce:4:debounce_keys|count\(8) & !\inst|row_debounce:4:debounce_keys|count[7]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:4:debounce_keys|count\(8),
	datad => VCC,
	cin => \inst|row_debounce:4:debounce_keys|count[7]~35\,
	combout => \inst|row_debounce:4:debounce_keys|count[8]~36_combout\,
	cout => \inst|row_debounce:4:debounce_keys|count[8]~37\);

-- Location: FF_X21_Y8_N31
\inst|row_debounce:4:debounce_keys|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:4:debounce_keys|count[8]~36_combout\,
	sclr => \inst|row_debounce:4:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:4:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:4:debounce_keys|count\(8));

-- Location: LCCOMB_X21_Y7_N0
\inst|row_debounce:4:debounce_keys|count[9]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:4:debounce_keys|count[9]~38_combout\ = (\inst|row_debounce:4:debounce_keys|count\(9) & (!\inst|row_debounce:4:debounce_keys|count[8]~37\)) # (!\inst|row_debounce:4:debounce_keys|count\(9) & 
-- ((\inst|row_debounce:4:debounce_keys|count[8]~37\) # (GND)))
-- \inst|row_debounce:4:debounce_keys|count[9]~39\ = CARRY((!\inst|row_debounce:4:debounce_keys|count[8]~37\) # (!\inst|row_debounce:4:debounce_keys|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:4:debounce_keys|count\(9),
	datad => VCC,
	cin => \inst|row_debounce:4:debounce_keys|count[8]~37\,
	combout => \inst|row_debounce:4:debounce_keys|count[9]~38_combout\,
	cout => \inst|row_debounce:4:debounce_keys|count[9]~39\);

-- Location: FF_X21_Y7_N1
\inst|row_debounce:4:debounce_keys|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:4:debounce_keys|count[9]~38_combout\,
	sclr => \inst|row_debounce:4:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:4:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:4:debounce_keys|count\(9));

-- Location: LCCOMB_X21_Y7_N2
\inst|row_debounce:4:debounce_keys|count[10]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:4:debounce_keys|count[10]~40_combout\ = (\inst|row_debounce:4:debounce_keys|count\(10) & (\inst|row_debounce:4:debounce_keys|count[9]~39\ $ (GND))) # (!\inst|row_debounce:4:debounce_keys|count\(10) & 
-- (!\inst|row_debounce:4:debounce_keys|count[9]~39\ & VCC))
-- \inst|row_debounce:4:debounce_keys|count[10]~41\ = CARRY((\inst|row_debounce:4:debounce_keys|count\(10) & !\inst|row_debounce:4:debounce_keys|count[9]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:4:debounce_keys|count\(10),
	datad => VCC,
	cin => \inst|row_debounce:4:debounce_keys|count[9]~39\,
	combout => \inst|row_debounce:4:debounce_keys|count[10]~40_combout\,
	cout => \inst|row_debounce:4:debounce_keys|count[10]~41\);

-- Location: FF_X21_Y7_N3
\inst|row_debounce:4:debounce_keys|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:4:debounce_keys|count[10]~40_combout\,
	sclr => \inst|row_debounce:4:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:4:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:4:debounce_keys|count\(10));

-- Location: LCCOMB_X21_Y7_N4
\inst|row_debounce:4:debounce_keys|count[11]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:4:debounce_keys|count[11]~42_combout\ = (\inst|row_debounce:4:debounce_keys|count\(11) & (!\inst|row_debounce:4:debounce_keys|count[10]~41\)) # (!\inst|row_debounce:4:debounce_keys|count\(11) & 
-- ((\inst|row_debounce:4:debounce_keys|count[10]~41\) # (GND)))
-- \inst|row_debounce:4:debounce_keys|count[11]~43\ = CARRY((!\inst|row_debounce:4:debounce_keys|count[10]~41\) # (!\inst|row_debounce:4:debounce_keys|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:4:debounce_keys|count\(11),
	datad => VCC,
	cin => \inst|row_debounce:4:debounce_keys|count[10]~41\,
	combout => \inst|row_debounce:4:debounce_keys|count[11]~42_combout\,
	cout => \inst|row_debounce:4:debounce_keys|count[11]~43\);

-- Location: FF_X21_Y7_N5
\inst|row_debounce:4:debounce_keys|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:4:debounce_keys|count[11]~42_combout\,
	sclr => \inst|row_debounce:4:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:4:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:4:debounce_keys|count\(11));

-- Location: LCCOMB_X21_Y7_N6
\inst|row_debounce:4:debounce_keys|count[12]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:4:debounce_keys|count[12]~44_combout\ = (\inst|row_debounce:4:debounce_keys|count\(12) & (\inst|row_debounce:4:debounce_keys|count[11]~43\ $ (GND))) # (!\inst|row_debounce:4:debounce_keys|count\(12) & 
-- (!\inst|row_debounce:4:debounce_keys|count[11]~43\ & VCC))
-- \inst|row_debounce:4:debounce_keys|count[12]~45\ = CARRY((\inst|row_debounce:4:debounce_keys|count\(12) & !\inst|row_debounce:4:debounce_keys|count[11]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:4:debounce_keys|count\(12),
	datad => VCC,
	cin => \inst|row_debounce:4:debounce_keys|count[11]~43\,
	combout => \inst|row_debounce:4:debounce_keys|count[12]~44_combout\,
	cout => \inst|row_debounce:4:debounce_keys|count[12]~45\);

-- Location: FF_X21_Y7_N7
\inst|row_debounce:4:debounce_keys|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:4:debounce_keys|count[12]~44_combout\,
	sclr => \inst|row_debounce:4:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:4:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:4:debounce_keys|count\(12));

-- Location: LCCOMB_X21_Y7_N8
\inst|row_debounce:4:debounce_keys|count[13]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:4:debounce_keys|count[13]~46_combout\ = (\inst|row_debounce:4:debounce_keys|count\(13) & (!\inst|row_debounce:4:debounce_keys|count[12]~45\)) # (!\inst|row_debounce:4:debounce_keys|count\(13) & 
-- ((\inst|row_debounce:4:debounce_keys|count[12]~45\) # (GND)))
-- \inst|row_debounce:4:debounce_keys|count[13]~47\ = CARRY((!\inst|row_debounce:4:debounce_keys|count[12]~45\) # (!\inst|row_debounce:4:debounce_keys|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:4:debounce_keys|count\(13),
	datad => VCC,
	cin => \inst|row_debounce:4:debounce_keys|count[12]~45\,
	combout => \inst|row_debounce:4:debounce_keys|count[13]~46_combout\,
	cout => \inst|row_debounce:4:debounce_keys|count[13]~47\);

-- Location: FF_X21_Y7_N9
\inst|row_debounce:4:debounce_keys|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:4:debounce_keys|count[13]~46_combout\,
	sclr => \inst|row_debounce:4:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:4:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:4:debounce_keys|count\(13));

-- Location: LCCOMB_X21_Y7_N10
\inst|row_debounce:4:debounce_keys|count[14]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:4:debounce_keys|count[14]~48_combout\ = (\inst|row_debounce:4:debounce_keys|count\(14) & (\inst|row_debounce:4:debounce_keys|count[13]~47\ $ (GND))) # (!\inst|row_debounce:4:debounce_keys|count\(14) & 
-- (!\inst|row_debounce:4:debounce_keys|count[13]~47\ & VCC))
-- \inst|row_debounce:4:debounce_keys|count[14]~49\ = CARRY((\inst|row_debounce:4:debounce_keys|count\(14) & !\inst|row_debounce:4:debounce_keys|count[13]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:4:debounce_keys|count\(14),
	datad => VCC,
	cin => \inst|row_debounce:4:debounce_keys|count[13]~47\,
	combout => \inst|row_debounce:4:debounce_keys|count[14]~48_combout\,
	cout => \inst|row_debounce:4:debounce_keys|count[14]~49\);

-- Location: FF_X21_Y7_N11
\inst|row_debounce:4:debounce_keys|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:4:debounce_keys|count[14]~48_combout\,
	sclr => \inst|row_debounce:4:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:4:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:4:debounce_keys|count\(14));

-- Location: LCCOMB_X21_Y7_N12
\inst|row_debounce:4:debounce_keys|count[15]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:4:debounce_keys|count[15]~50_combout\ = (\inst|row_debounce:4:debounce_keys|count\(15) & (!\inst|row_debounce:4:debounce_keys|count[14]~49\)) # (!\inst|row_debounce:4:debounce_keys|count\(15) & 
-- ((\inst|row_debounce:4:debounce_keys|count[14]~49\) # (GND)))
-- \inst|row_debounce:4:debounce_keys|count[15]~51\ = CARRY((!\inst|row_debounce:4:debounce_keys|count[14]~49\) # (!\inst|row_debounce:4:debounce_keys|count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:4:debounce_keys|count\(15),
	datad => VCC,
	cin => \inst|row_debounce:4:debounce_keys|count[14]~49\,
	combout => \inst|row_debounce:4:debounce_keys|count[15]~50_combout\,
	cout => \inst|row_debounce:4:debounce_keys|count[15]~51\);

-- Location: FF_X21_Y7_N13
\inst|row_debounce:4:debounce_keys|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:4:debounce_keys|count[15]~50_combout\,
	sclr => \inst|row_debounce:4:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:4:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:4:debounce_keys|count\(15));

-- Location: LCCOMB_X21_Y7_N14
\inst|row_debounce:4:debounce_keys|count[16]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:4:debounce_keys|count[16]~52_combout\ = (\inst|row_debounce:4:debounce_keys|count\(16) & (\inst|row_debounce:4:debounce_keys|count[15]~51\ $ (GND))) # (!\inst|row_debounce:4:debounce_keys|count\(16) & 
-- (!\inst|row_debounce:4:debounce_keys|count[15]~51\ & VCC))
-- \inst|row_debounce:4:debounce_keys|count[16]~53\ = CARRY((\inst|row_debounce:4:debounce_keys|count\(16) & !\inst|row_debounce:4:debounce_keys|count[15]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:4:debounce_keys|count\(16),
	datad => VCC,
	cin => \inst|row_debounce:4:debounce_keys|count[15]~51\,
	combout => \inst|row_debounce:4:debounce_keys|count[16]~52_combout\,
	cout => \inst|row_debounce:4:debounce_keys|count[16]~53\);

-- Location: FF_X21_Y7_N15
\inst|row_debounce:4:debounce_keys|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:4:debounce_keys|count[16]~52_combout\,
	sclr => \inst|row_debounce:4:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:4:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:4:debounce_keys|count\(16));

-- Location: LCCOMB_X21_Y7_N28
\inst|row_debounce:4:debounce_keys|result~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:4:debounce_keys|result~3_combout\ = ((\inst|row_debounce:4:debounce_keys|flipflops\(0) $ (\inst|row_debounce:4:debounce_keys|flipflops\(1))) # (!\inst|row_debounce:4:debounce_keys|count\(16))) # 
-- (!\inst|row_debounce:4:debounce_keys|count\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:4:debounce_keys|count\(15),
	datab => \inst|row_debounce:4:debounce_keys|flipflops\(0),
	datac => \inst|row_debounce:4:debounce_keys|count\(16),
	datad => \inst|row_debounce:4:debounce_keys|flipflops\(1),
	combout => \inst|row_debounce:4:debounce_keys|result~3_combout\);

-- Location: LCCOMB_X21_Y7_N16
\inst|row_debounce:4:debounce_keys|count[17]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:4:debounce_keys|count[17]~54_combout\ = (\inst|row_debounce:4:debounce_keys|count\(17) & (!\inst|row_debounce:4:debounce_keys|count[16]~53\)) # (!\inst|row_debounce:4:debounce_keys|count\(17) & 
-- ((\inst|row_debounce:4:debounce_keys|count[16]~53\) # (GND)))
-- \inst|row_debounce:4:debounce_keys|count[17]~55\ = CARRY((!\inst|row_debounce:4:debounce_keys|count[16]~53\) # (!\inst|row_debounce:4:debounce_keys|count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:4:debounce_keys|count\(17),
	datad => VCC,
	cin => \inst|row_debounce:4:debounce_keys|count[16]~53\,
	combout => \inst|row_debounce:4:debounce_keys|count[17]~54_combout\,
	cout => \inst|row_debounce:4:debounce_keys|count[17]~55\);

-- Location: FF_X21_Y7_N17
\inst|row_debounce:4:debounce_keys|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:4:debounce_keys|count[17]~54_combout\,
	sclr => \inst|row_debounce:4:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:4:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:4:debounce_keys|count\(17));

-- Location: LCCOMB_X21_Y7_N18
\inst|row_debounce:4:debounce_keys|count[18]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:4:debounce_keys|count[18]~56_combout\ = \inst|row_debounce:4:debounce_keys|count[17]~55\ $ (!\inst|row_debounce:4:debounce_keys|count\(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|row_debounce:4:debounce_keys|count\(18),
	cin => \inst|row_debounce:4:debounce_keys|count[17]~55\,
	combout => \inst|row_debounce:4:debounce_keys|count[18]~56_combout\);

-- Location: FF_X21_Y7_N19
\inst|row_debounce:4:debounce_keys|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:4:debounce_keys|count[18]~56_combout\,
	sclr => \inst|row_debounce:4:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:4:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:4:debounce_keys|count\(18));

-- Location: LCCOMB_X21_Y8_N12
\inst|row_debounce:4:debounce_keys|result~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:4:debounce_keys|result~0_combout\ = ((!\inst|row_debounce:4:debounce_keys|count\(5) & (!\inst|row_debounce:4:debounce_keys|count\(6) & !\inst|row_debounce:4:debounce_keys|count\(7)))) # (!\inst|row_debounce:4:debounce_keys|count\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:4:debounce_keys|count\(8),
	datab => \inst|row_debounce:4:debounce_keys|count\(5),
	datac => \inst|row_debounce:4:debounce_keys|count\(6),
	datad => \inst|row_debounce:4:debounce_keys|count\(7),
	combout => \inst|row_debounce:4:debounce_keys|result~0_combout\);

-- Location: LCCOMB_X21_Y7_N20
\inst|row_debounce:4:debounce_keys|result~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:4:debounce_keys|result~1_combout\ = (!\inst|row_debounce:4:debounce_keys|count\(12) & (!\inst|row_debounce:4:debounce_keys|count\(10) & (!\inst|row_debounce:4:debounce_keys|count\(11) & !\inst|row_debounce:4:debounce_keys|count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:4:debounce_keys|count\(12),
	datab => \inst|row_debounce:4:debounce_keys|count\(10),
	datac => \inst|row_debounce:4:debounce_keys|count\(11),
	datad => \inst|row_debounce:4:debounce_keys|count\(9),
	combout => \inst|row_debounce:4:debounce_keys|result~1_combout\);

-- Location: LCCOMB_X21_Y7_N26
\inst|row_debounce:4:debounce_keys|result~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:4:debounce_keys|result~2_combout\ = (!\inst|row_debounce:4:debounce_keys|count\(14) & (((\inst|row_debounce:4:debounce_keys|result~0_combout\ & \inst|row_debounce:4:debounce_keys|result~1_combout\)) # 
-- (!\inst|row_debounce:4:debounce_keys|count\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:4:debounce_keys|result~0_combout\,
	datab => \inst|row_debounce:4:debounce_keys|result~1_combout\,
	datac => \inst|row_debounce:4:debounce_keys|count\(13),
	datad => \inst|row_debounce:4:debounce_keys|count\(14),
	combout => \inst|row_debounce:4:debounce_keys|result~2_combout\);

-- Location: LCCOMB_X21_Y7_N30
\inst|row_debounce:4:debounce_keys|result~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:4:debounce_keys|result~4_combout\ = (\inst|row_debounce:4:debounce_keys|result~3_combout\) # (((\inst|row_debounce:4:debounce_keys|result~2_combout\) # (!\inst|row_debounce:4:debounce_keys|count\(17))) # 
-- (!\inst|row_debounce:4:debounce_keys|count\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:4:debounce_keys|result~3_combout\,
	datab => \inst|row_debounce:4:debounce_keys|count\(18),
	datac => \inst|row_debounce:4:debounce_keys|result~2_combout\,
	datad => \inst|row_debounce:4:debounce_keys|count\(17),
	combout => \inst|row_debounce:4:debounce_keys|result~4_combout\);

-- Location: LCCOMB_X22_Y7_N30
\inst|row_debounce:4:debounce_keys|result~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:4:debounce_keys|result~5_combout\ = (\inst|row_debounce:4:debounce_keys|result~4_combout\ & ((\inst|row_debounce:4:debounce_keys|result~q\))) # (!\inst|row_debounce:4:debounce_keys|result~4_combout\ & 
-- (\inst|row_debounce:4:debounce_keys|flipflops\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:4:debounce_keys|flipflops\(1),
	datac => \inst|row_debounce:4:debounce_keys|result~q\,
	datad => \inst|row_debounce:4:debounce_keys|result~4_combout\,
	combout => \inst|row_debounce:4:debounce_keys|result~5_combout\);

-- Location: FF_X24_Y7_N13
\inst|row_debounce:4:debounce_keys|result\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|row_debounce:4:debounce_keys|result~5_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:4:debounce_keys|result~q\);

-- Location: LCCOMB_X23_Y12_N22
\inst|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux6~0_combout\ = (\inst|process_1~4_combout\ & ((\inst|LessThan1~1_combout\) # ((\inst|LessThan1~2_combout\ & \inst|LessThan1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan1~1_combout\,
	datab => \inst|LessThan1~2_combout\,
	datac => \inst|process_1~4_combout\,
	datad => \inst|LessThan1~3_combout\,
	combout => \inst|Mux6~0_combout\);

-- Location: FF_X23_Y12_N23
\inst|keys_stored[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Mux6~0_combout\,
	ena => \inst|keys_stored[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|keys_stored\(6));

-- Location: LCCOMB_X23_Y9_N16
\inst|row_debounce:6:debounce_keys|flipflops[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:6:debounce_keys|flipflops[0]~feeder_combout\ = \inst|keys_stored\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|keys_stored\(6),
	combout => \inst|row_debounce:6:debounce_keys|flipflops[0]~feeder_combout\);

-- Location: FF_X23_Y9_N17
\inst|row_debounce:6:debounce_keys|flipflops[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:6:debounce_keys|flipflops[0]~feeder_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:6:debounce_keys|flipflops\(0));

-- Location: LCCOMB_X23_Y9_N14
\inst|row_debounce:6:debounce_keys|flipflops[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:6:debounce_keys|flipflops[1]~feeder_combout\ = \inst|row_debounce:6:debounce_keys|flipflops\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|row_debounce:6:debounce_keys|flipflops\(0),
	combout => \inst|row_debounce:6:debounce_keys|flipflops[1]~feeder_combout\);

-- Location: FF_X23_Y9_N15
\inst|row_debounce:6:debounce_keys|flipflops[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:6:debounce_keys|flipflops[1]~feeder_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:6:debounce_keys|flipflops\(1));

-- Location: LCCOMB_X24_Y10_N14
\inst|row_debounce:6:debounce_keys|count[0]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:6:debounce_keys|count[0]~19_combout\ = \inst|row_debounce:6:debounce_keys|count\(0) $ (VCC)
-- \inst|row_debounce:6:debounce_keys|count[0]~20\ = CARRY(\inst|row_debounce:6:debounce_keys|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:6:debounce_keys|count\(0),
	datad => VCC,
	combout => \inst|row_debounce:6:debounce_keys|count[0]~19_combout\,
	cout => \inst|row_debounce:6:debounce_keys|count[0]~20\);

-- Location: LCCOMB_X24_Y9_N24
\inst|row_debounce:6:debounce_keys|counter_set\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:6:debounce_keys|counter_set~combout\ = \inst|row_debounce:6:debounce_keys|flipflops\(1) $ (\inst|row_debounce:6:debounce_keys|flipflops\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:6:debounce_keys|flipflops\(1),
	datac => \inst|row_debounce:6:debounce_keys|flipflops\(0),
	combout => \inst|row_debounce:6:debounce_keys|counter_set~combout\);

-- Location: LCCOMB_X24_Y9_N30
\inst|row_debounce:6:debounce_keys|count[18]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:6:debounce_keys|count[18]~31_combout\ = (\rst~input_o\ & \inst|row_debounce:6:debounce_keys|result~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst~input_o\,
	datac => \inst|row_debounce:6:debounce_keys|result~4_combout\,
	combout => \inst|row_debounce:6:debounce_keys|count[18]~31_combout\);

-- Location: FF_X24_Y10_N15
\inst|row_debounce:6:debounce_keys|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:6:debounce_keys|count[0]~19_combout\,
	sclr => \inst|row_debounce:6:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:6:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:6:debounce_keys|count\(0));

-- Location: LCCOMB_X24_Y10_N16
\inst|row_debounce:6:debounce_keys|count[1]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:6:debounce_keys|count[1]~21_combout\ = (\inst|row_debounce:6:debounce_keys|count\(1) & (!\inst|row_debounce:6:debounce_keys|count[0]~20\)) # (!\inst|row_debounce:6:debounce_keys|count\(1) & 
-- ((\inst|row_debounce:6:debounce_keys|count[0]~20\) # (GND)))
-- \inst|row_debounce:6:debounce_keys|count[1]~22\ = CARRY((!\inst|row_debounce:6:debounce_keys|count[0]~20\) # (!\inst|row_debounce:6:debounce_keys|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:6:debounce_keys|count\(1),
	datad => VCC,
	cin => \inst|row_debounce:6:debounce_keys|count[0]~20\,
	combout => \inst|row_debounce:6:debounce_keys|count[1]~21_combout\,
	cout => \inst|row_debounce:6:debounce_keys|count[1]~22\);

-- Location: FF_X24_Y10_N17
\inst|row_debounce:6:debounce_keys|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:6:debounce_keys|count[1]~21_combout\,
	sclr => \inst|row_debounce:6:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:6:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:6:debounce_keys|count\(1));

-- Location: LCCOMB_X24_Y10_N18
\inst|row_debounce:6:debounce_keys|count[2]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:6:debounce_keys|count[2]~23_combout\ = (\inst|row_debounce:6:debounce_keys|count\(2) & (\inst|row_debounce:6:debounce_keys|count[1]~22\ $ (GND))) # (!\inst|row_debounce:6:debounce_keys|count\(2) & 
-- (!\inst|row_debounce:6:debounce_keys|count[1]~22\ & VCC))
-- \inst|row_debounce:6:debounce_keys|count[2]~24\ = CARRY((\inst|row_debounce:6:debounce_keys|count\(2) & !\inst|row_debounce:6:debounce_keys|count[1]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:6:debounce_keys|count\(2),
	datad => VCC,
	cin => \inst|row_debounce:6:debounce_keys|count[1]~22\,
	combout => \inst|row_debounce:6:debounce_keys|count[2]~23_combout\,
	cout => \inst|row_debounce:6:debounce_keys|count[2]~24\);

-- Location: FF_X24_Y10_N19
\inst|row_debounce:6:debounce_keys|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:6:debounce_keys|count[2]~23_combout\,
	sclr => \inst|row_debounce:6:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:6:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:6:debounce_keys|count\(2));

-- Location: LCCOMB_X24_Y10_N20
\inst|row_debounce:6:debounce_keys|count[3]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:6:debounce_keys|count[3]~25_combout\ = (\inst|row_debounce:6:debounce_keys|count\(3) & (!\inst|row_debounce:6:debounce_keys|count[2]~24\)) # (!\inst|row_debounce:6:debounce_keys|count\(3) & 
-- ((\inst|row_debounce:6:debounce_keys|count[2]~24\) # (GND)))
-- \inst|row_debounce:6:debounce_keys|count[3]~26\ = CARRY((!\inst|row_debounce:6:debounce_keys|count[2]~24\) # (!\inst|row_debounce:6:debounce_keys|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:6:debounce_keys|count\(3),
	datad => VCC,
	cin => \inst|row_debounce:6:debounce_keys|count[2]~24\,
	combout => \inst|row_debounce:6:debounce_keys|count[3]~25_combout\,
	cout => \inst|row_debounce:6:debounce_keys|count[3]~26\);

-- Location: FF_X24_Y10_N21
\inst|row_debounce:6:debounce_keys|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:6:debounce_keys|count[3]~25_combout\,
	sclr => \inst|row_debounce:6:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:6:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:6:debounce_keys|count\(3));

-- Location: LCCOMB_X24_Y10_N22
\inst|row_debounce:6:debounce_keys|count[4]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:6:debounce_keys|count[4]~27_combout\ = (\inst|row_debounce:6:debounce_keys|count\(4) & (\inst|row_debounce:6:debounce_keys|count[3]~26\ $ (GND))) # (!\inst|row_debounce:6:debounce_keys|count\(4) & 
-- (!\inst|row_debounce:6:debounce_keys|count[3]~26\ & VCC))
-- \inst|row_debounce:6:debounce_keys|count[4]~28\ = CARRY((\inst|row_debounce:6:debounce_keys|count\(4) & !\inst|row_debounce:6:debounce_keys|count[3]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:6:debounce_keys|count\(4),
	datad => VCC,
	cin => \inst|row_debounce:6:debounce_keys|count[3]~26\,
	combout => \inst|row_debounce:6:debounce_keys|count[4]~27_combout\,
	cout => \inst|row_debounce:6:debounce_keys|count[4]~28\);

-- Location: FF_X24_Y10_N23
\inst|row_debounce:6:debounce_keys|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:6:debounce_keys|count[4]~27_combout\,
	sclr => \inst|row_debounce:6:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:6:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:6:debounce_keys|count\(4));

-- Location: LCCOMB_X24_Y10_N24
\inst|row_debounce:6:debounce_keys|count[5]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:6:debounce_keys|count[5]~29_combout\ = (\inst|row_debounce:6:debounce_keys|count\(5) & (!\inst|row_debounce:6:debounce_keys|count[4]~28\)) # (!\inst|row_debounce:6:debounce_keys|count\(5) & 
-- ((\inst|row_debounce:6:debounce_keys|count[4]~28\) # (GND)))
-- \inst|row_debounce:6:debounce_keys|count[5]~30\ = CARRY((!\inst|row_debounce:6:debounce_keys|count[4]~28\) # (!\inst|row_debounce:6:debounce_keys|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:6:debounce_keys|count\(5),
	datad => VCC,
	cin => \inst|row_debounce:6:debounce_keys|count[4]~28\,
	combout => \inst|row_debounce:6:debounce_keys|count[5]~29_combout\,
	cout => \inst|row_debounce:6:debounce_keys|count[5]~30\);

-- Location: FF_X24_Y10_N25
\inst|row_debounce:6:debounce_keys|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:6:debounce_keys|count[5]~29_combout\,
	sclr => \inst|row_debounce:6:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:6:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:6:debounce_keys|count\(5));

-- Location: LCCOMB_X24_Y10_N26
\inst|row_debounce:6:debounce_keys|count[6]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:6:debounce_keys|count[6]~32_combout\ = (\inst|row_debounce:6:debounce_keys|count\(6) & (\inst|row_debounce:6:debounce_keys|count[5]~30\ $ (GND))) # (!\inst|row_debounce:6:debounce_keys|count\(6) & 
-- (!\inst|row_debounce:6:debounce_keys|count[5]~30\ & VCC))
-- \inst|row_debounce:6:debounce_keys|count[6]~33\ = CARRY((\inst|row_debounce:6:debounce_keys|count\(6) & !\inst|row_debounce:6:debounce_keys|count[5]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:6:debounce_keys|count\(6),
	datad => VCC,
	cin => \inst|row_debounce:6:debounce_keys|count[5]~30\,
	combout => \inst|row_debounce:6:debounce_keys|count[6]~32_combout\,
	cout => \inst|row_debounce:6:debounce_keys|count[6]~33\);

-- Location: FF_X24_Y10_N27
\inst|row_debounce:6:debounce_keys|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:6:debounce_keys|count[6]~32_combout\,
	sclr => \inst|row_debounce:6:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:6:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:6:debounce_keys|count\(6));

-- Location: LCCOMB_X24_Y10_N28
\inst|row_debounce:6:debounce_keys|count[7]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:6:debounce_keys|count[7]~34_combout\ = (\inst|row_debounce:6:debounce_keys|count\(7) & (!\inst|row_debounce:6:debounce_keys|count[6]~33\)) # (!\inst|row_debounce:6:debounce_keys|count\(7) & 
-- ((\inst|row_debounce:6:debounce_keys|count[6]~33\) # (GND)))
-- \inst|row_debounce:6:debounce_keys|count[7]~35\ = CARRY((!\inst|row_debounce:6:debounce_keys|count[6]~33\) # (!\inst|row_debounce:6:debounce_keys|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:6:debounce_keys|count\(7),
	datad => VCC,
	cin => \inst|row_debounce:6:debounce_keys|count[6]~33\,
	combout => \inst|row_debounce:6:debounce_keys|count[7]~34_combout\,
	cout => \inst|row_debounce:6:debounce_keys|count[7]~35\);

-- Location: FF_X24_Y10_N29
\inst|row_debounce:6:debounce_keys|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:6:debounce_keys|count[7]~34_combout\,
	sclr => \inst|row_debounce:6:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:6:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:6:debounce_keys|count\(7));

-- Location: LCCOMB_X24_Y10_N30
\inst|row_debounce:6:debounce_keys|count[8]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:6:debounce_keys|count[8]~36_combout\ = (\inst|row_debounce:6:debounce_keys|count\(8) & (\inst|row_debounce:6:debounce_keys|count[7]~35\ $ (GND))) # (!\inst|row_debounce:6:debounce_keys|count\(8) & 
-- (!\inst|row_debounce:6:debounce_keys|count[7]~35\ & VCC))
-- \inst|row_debounce:6:debounce_keys|count[8]~37\ = CARRY((\inst|row_debounce:6:debounce_keys|count\(8) & !\inst|row_debounce:6:debounce_keys|count[7]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:6:debounce_keys|count\(8),
	datad => VCC,
	cin => \inst|row_debounce:6:debounce_keys|count[7]~35\,
	combout => \inst|row_debounce:6:debounce_keys|count[8]~36_combout\,
	cout => \inst|row_debounce:6:debounce_keys|count[8]~37\);

-- Location: FF_X24_Y10_N31
\inst|row_debounce:6:debounce_keys|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:6:debounce_keys|count[8]~36_combout\,
	sclr => \inst|row_debounce:6:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:6:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:6:debounce_keys|count\(8));

-- Location: LCCOMB_X24_Y9_N0
\inst|row_debounce:6:debounce_keys|count[9]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:6:debounce_keys|count[9]~38_combout\ = (\inst|row_debounce:6:debounce_keys|count\(9) & (!\inst|row_debounce:6:debounce_keys|count[8]~37\)) # (!\inst|row_debounce:6:debounce_keys|count\(9) & 
-- ((\inst|row_debounce:6:debounce_keys|count[8]~37\) # (GND)))
-- \inst|row_debounce:6:debounce_keys|count[9]~39\ = CARRY((!\inst|row_debounce:6:debounce_keys|count[8]~37\) # (!\inst|row_debounce:6:debounce_keys|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:6:debounce_keys|count\(9),
	datad => VCC,
	cin => \inst|row_debounce:6:debounce_keys|count[8]~37\,
	combout => \inst|row_debounce:6:debounce_keys|count[9]~38_combout\,
	cout => \inst|row_debounce:6:debounce_keys|count[9]~39\);

-- Location: FF_X24_Y9_N1
\inst|row_debounce:6:debounce_keys|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:6:debounce_keys|count[9]~38_combout\,
	sclr => \inst|row_debounce:6:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:6:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:6:debounce_keys|count\(9));

-- Location: LCCOMB_X24_Y9_N2
\inst|row_debounce:6:debounce_keys|count[10]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:6:debounce_keys|count[10]~40_combout\ = (\inst|row_debounce:6:debounce_keys|count\(10) & (\inst|row_debounce:6:debounce_keys|count[9]~39\ $ (GND))) # (!\inst|row_debounce:6:debounce_keys|count\(10) & 
-- (!\inst|row_debounce:6:debounce_keys|count[9]~39\ & VCC))
-- \inst|row_debounce:6:debounce_keys|count[10]~41\ = CARRY((\inst|row_debounce:6:debounce_keys|count\(10) & !\inst|row_debounce:6:debounce_keys|count[9]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:6:debounce_keys|count\(10),
	datad => VCC,
	cin => \inst|row_debounce:6:debounce_keys|count[9]~39\,
	combout => \inst|row_debounce:6:debounce_keys|count[10]~40_combout\,
	cout => \inst|row_debounce:6:debounce_keys|count[10]~41\);

-- Location: FF_X24_Y9_N3
\inst|row_debounce:6:debounce_keys|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:6:debounce_keys|count[10]~40_combout\,
	sclr => \inst|row_debounce:6:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:6:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:6:debounce_keys|count\(10));

-- Location: LCCOMB_X24_Y9_N4
\inst|row_debounce:6:debounce_keys|count[11]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:6:debounce_keys|count[11]~42_combout\ = (\inst|row_debounce:6:debounce_keys|count\(11) & (!\inst|row_debounce:6:debounce_keys|count[10]~41\)) # (!\inst|row_debounce:6:debounce_keys|count\(11) & 
-- ((\inst|row_debounce:6:debounce_keys|count[10]~41\) # (GND)))
-- \inst|row_debounce:6:debounce_keys|count[11]~43\ = CARRY((!\inst|row_debounce:6:debounce_keys|count[10]~41\) # (!\inst|row_debounce:6:debounce_keys|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:6:debounce_keys|count\(11),
	datad => VCC,
	cin => \inst|row_debounce:6:debounce_keys|count[10]~41\,
	combout => \inst|row_debounce:6:debounce_keys|count[11]~42_combout\,
	cout => \inst|row_debounce:6:debounce_keys|count[11]~43\);

-- Location: FF_X24_Y9_N5
\inst|row_debounce:6:debounce_keys|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:6:debounce_keys|count[11]~42_combout\,
	sclr => \inst|row_debounce:6:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:6:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:6:debounce_keys|count\(11));

-- Location: LCCOMB_X24_Y9_N6
\inst|row_debounce:6:debounce_keys|count[12]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:6:debounce_keys|count[12]~44_combout\ = (\inst|row_debounce:6:debounce_keys|count\(12) & (\inst|row_debounce:6:debounce_keys|count[11]~43\ $ (GND))) # (!\inst|row_debounce:6:debounce_keys|count\(12) & 
-- (!\inst|row_debounce:6:debounce_keys|count[11]~43\ & VCC))
-- \inst|row_debounce:6:debounce_keys|count[12]~45\ = CARRY((\inst|row_debounce:6:debounce_keys|count\(12) & !\inst|row_debounce:6:debounce_keys|count[11]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:6:debounce_keys|count\(12),
	datad => VCC,
	cin => \inst|row_debounce:6:debounce_keys|count[11]~43\,
	combout => \inst|row_debounce:6:debounce_keys|count[12]~44_combout\,
	cout => \inst|row_debounce:6:debounce_keys|count[12]~45\);

-- Location: FF_X24_Y9_N7
\inst|row_debounce:6:debounce_keys|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:6:debounce_keys|count[12]~44_combout\,
	sclr => \inst|row_debounce:6:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:6:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:6:debounce_keys|count\(12));

-- Location: LCCOMB_X24_Y9_N8
\inst|row_debounce:6:debounce_keys|count[13]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:6:debounce_keys|count[13]~46_combout\ = (\inst|row_debounce:6:debounce_keys|count\(13) & (!\inst|row_debounce:6:debounce_keys|count[12]~45\)) # (!\inst|row_debounce:6:debounce_keys|count\(13) & 
-- ((\inst|row_debounce:6:debounce_keys|count[12]~45\) # (GND)))
-- \inst|row_debounce:6:debounce_keys|count[13]~47\ = CARRY((!\inst|row_debounce:6:debounce_keys|count[12]~45\) # (!\inst|row_debounce:6:debounce_keys|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:6:debounce_keys|count\(13),
	datad => VCC,
	cin => \inst|row_debounce:6:debounce_keys|count[12]~45\,
	combout => \inst|row_debounce:6:debounce_keys|count[13]~46_combout\,
	cout => \inst|row_debounce:6:debounce_keys|count[13]~47\);

-- Location: FF_X24_Y9_N9
\inst|row_debounce:6:debounce_keys|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:6:debounce_keys|count[13]~46_combout\,
	sclr => \inst|row_debounce:6:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:6:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:6:debounce_keys|count\(13));

-- Location: LCCOMB_X24_Y9_N10
\inst|row_debounce:6:debounce_keys|count[14]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:6:debounce_keys|count[14]~48_combout\ = (\inst|row_debounce:6:debounce_keys|count\(14) & (\inst|row_debounce:6:debounce_keys|count[13]~47\ $ (GND))) # (!\inst|row_debounce:6:debounce_keys|count\(14) & 
-- (!\inst|row_debounce:6:debounce_keys|count[13]~47\ & VCC))
-- \inst|row_debounce:6:debounce_keys|count[14]~49\ = CARRY((\inst|row_debounce:6:debounce_keys|count\(14) & !\inst|row_debounce:6:debounce_keys|count[13]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:6:debounce_keys|count\(14),
	datad => VCC,
	cin => \inst|row_debounce:6:debounce_keys|count[13]~47\,
	combout => \inst|row_debounce:6:debounce_keys|count[14]~48_combout\,
	cout => \inst|row_debounce:6:debounce_keys|count[14]~49\);

-- Location: FF_X24_Y9_N11
\inst|row_debounce:6:debounce_keys|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:6:debounce_keys|count[14]~48_combout\,
	sclr => \inst|row_debounce:6:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:6:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:6:debounce_keys|count\(14));

-- Location: LCCOMB_X24_Y9_N12
\inst|row_debounce:6:debounce_keys|count[15]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:6:debounce_keys|count[15]~50_combout\ = (\inst|row_debounce:6:debounce_keys|count\(15) & (!\inst|row_debounce:6:debounce_keys|count[14]~49\)) # (!\inst|row_debounce:6:debounce_keys|count\(15) & 
-- ((\inst|row_debounce:6:debounce_keys|count[14]~49\) # (GND)))
-- \inst|row_debounce:6:debounce_keys|count[15]~51\ = CARRY((!\inst|row_debounce:6:debounce_keys|count[14]~49\) # (!\inst|row_debounce:6:debounce_keys|count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:6:debounce_keys|count\(15),
	datad => VCC,
	cin => \inst|row_debounce:6:debounce_keys|count[14]~49\,
	combout => \inst|row_debounce:6:debounce_keys|count[15]~50_combout\,
	cout => \inst|row_debounce:6:debounce_keys|count[15]~51\);

-- Location: FF_X24_Y9_N13
\inst|row_debounce:6:debounce_keys|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:6:debounce_keys|count[15]~50_combout\,
	sclr => \inst|row_debounce:6:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:6:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:6:debounce_keys|count\(15));

-- Location: LCCOMB_X24_Y9_N14
\inst|row_debounce:6:debounce_keys|count[16]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:6:debounce_keys|count[16]~52_combout\ = (\inst|row_debounce:6:debounce_keys|count\(16) & (\inst|row_debounce:6:debounce_keys|count[15]~51\ $ (GND))) # (!\inst|row_debounce:6:debounce_keys|count\(16) & 
-- (!\inst|row_debounce:6:debounce_keys|count[15]~51\ & VCC))
-- \inst|row_debounce:6:debounce_keys|count[16]~53\ = CARRY((\inst|row_debounce:6:debounce_keys|count\(16) & !\inst|row_debounce:6:debounce_keys|count[15]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:6:debounce_keys|count\(16),
	datad => VCC,
	cin => \inst|row_debounce:6:debounce_keys|count[15]~51\,
	combout => \inst|row_debounce:6:debounce_keys|count[16]~52_combout\,
	cout => \inst|row_debounce:6:debounce_keys|count[16]~53\);

-- Location: FF_X24_Y9_N15
\inst|row_debounce:6:debounce_keys|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:6:debounce_keys|count[16]~52_combout\,
	sclr => \inst|row_debounce:6:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:6:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:6:debounce_keys|count\(16));

-- Location: LCCOMB_X24_Y9_N28
\inst|row_debounce:6:debounce_keys|result~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:6:debounce_keys|result~3_combout\ = ((\inst|row_debounce:6:debounce_keys|flipflops\(1) $ (\inst|row_debounce:6:debounce_keys|flipflops\(0))) # (!\inst|row_debounce:6:debounce_keys|count\(15))) # 
-- (!\inst|row_debounce:6:debounce_keys|count\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:6:debounce_keys|flipflops\(1),
	datab => \inst|row_debounce:6:debounce_keys|count\(16),
	datac => \inst|row_debounce:6:debounce_keys|flipflops\(0),
	datad => \inst|row_debounce:6:debounce_keys|count\(15),
	combout => \inst|row_debounce:6:debounce_keys|result~3_combout\);

-- Location: LCCOMB_X24_Y9_N16
\inst|row_debounce:6:debounce_keys|count[17]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:6:debounce_keys|count[17]~54_combout\ = (\inst|row_debounce:6:debounce_keys|count\(17) & (!\inst|row_debounce:6:debounce_keys|count[16]~53\)) # (!\inst|row_debounce:6:debounce_keys|count\(17) & 
-- ((\inst|row_debounce:6:debounce_keys|count[16]~53\) # (GND)))
-- \inst|row_debounce:6:debounce_keys|count[17]~55\ = CARRY((!\inst|row_debounce:6:debounce_keys|count[16]~53\) # (!\inst|row_debounce:6:debounce_keys|count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:6:debounce_keys|count\(17),
	datad => VCC,
	cin => \inst|row_debounce:6:debounce_keys|count[16]~53\,
	combout => \inst|row_debounce:6:debounce_keys|count[17]~54_combout\,
	cout => \inst|row_debounce:6:debounce_keys|count[17]~55\);

-- Location: FF_X24_Y9_N17
\inst|row_debounce:6:debounce_keys|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:6:debounce_keys|count[17]~54_combout\,
	sclr => \inst|row_debounce:6:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:6:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:6:debounce_keys|count\(17));

-- Location: LCCOMB_X24_Y9_N18
\inst|row_debounce:6:debounce_keys|count[18]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:6:debounce_keys|count[18]~56_combout\ = \inst|row_debounce:6:debounce_keys|count[17]~55\ $ (!\inst|row_debounce:6:debounce_keys|count\(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|row_debounce:6:debounce_keys|count\(18),
	cin => \inst|row_debounce:6:debounce_keys|count[17]~55\,
	combout => \inst|row_debounce:6:debounce_keys|count[18]~56_combout\);

-- Location: FF_X24_Y9_N19
\inst|row_debounce:6:debounce_keys|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:6:debounce_keys|count[18]~56_combout\,
	sclr => \inst|row_debounce:6:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:6:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:6:debounce_keys|count\(18));

-- Location: LCCOMB_X24_Y10_N12
\inst|row_debounce:6:debounce_keys|result~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:6:debounce_keys|result~0_combout\ = ((!\inst|row_debounce:6:debounce_keys|count\(7) & (!\inst|row_debounce:6:debounce_keys|count\(6) & !\inst|row_debounce:6:debounce_keys|count\(5)))) # (!\inst|row_debounce:6:debounce_keys|count\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:6:debounce_keys|count\(8),
	datab => \inst|row_debounce:6:debounce_keys|count\(7),
	datac => \inst|row_debounce:6:debounce_keys|count\(6),
	datad => \inst|row_debounce:6:debounce_keys|count\(5),
	combout => \inst|row_debounce:6:debounce_keys|result~0_combout\);

-- Location: LCCOMB_X24_Y9_N20
\inst|row_debounce:6:debounce_keys|result~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:6:debounce_keys|result~1_combout\ = (!\inst|row_debounce:6:debounce_keys|count\(12) & (!\inst|row_debounce:6:debounce_keys|count\(10) & (!\inst|row_debounce:6:debounce_keys|count\(11) & !\inst|row_debounce:6:debounce_keys|count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:6:debounce_keys|count\(12),
	datab => \inst|row_debounce:6:debounce_keys|count\(10),
	datac => \inst|row_debounce:6:debounce_keys|count\(11),
	datad => \inst|row_debounce:6:debounce_keys|count\(9),
	combout => \inst|row_debounce:6:debounce_keys|result~1_combout\);

-- Location: LCCOMB_X24_Y9_N26
\inst|row_debounce:6:debounce_keys|result~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:6:debounce_keys|result~2_combout\ = (!\inst|row_debounce:6:debounce_keys|count\(14) & (((\inst|row_debounce:6:debounce_keys|result~0_combout\ & \inst|row_debounce:6:debounce_keys|result~1_combout\)) # 
-- (!\inst|row_debounce:6:debounce_keys|count\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:6:debounce_keys|result~0_combout\,
	datab => \inst|row_debounce:6:debounce_keys|result~1_combout\,
	datac => \inst|row_debounce:6:debounce_keys|count\(13),
	datad => \inst|row_debounce:6:debounce_keys|count\(14),
	combout => \inst|row_debounce:6:debounce_keys|result~2_combout\);

-- Location: LCCOMB_X24_Y9_N22
\inst|row_debounce:6:debounce_keys|result~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:6:debounce_keys|result~4_combout\ = (\inst|row_debounce:6:debounce_keys|result~3_combout\) # (((\inst|row_debounce:6:debounce_keys|result~2_combout\) # (!\inst|row_debounce:6:debounce_keys|count\(17))) # 
-- (!\inst|row_debounce:6:debounce_keys|count\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:6:debounce_keys|result~3_combout\,
	datab => \inst|row_debounce:6:debounce_keys|count\(18),
	datac => \inst|row_debounce:6:debounce_keys|result~2_combout\,
	datad => \inst|row_debounce:6:debounce_keys|count\(17),
	combout => \inst|row_debounce:6:debounce_keys|result~4_combout\);

-- Location: LCCOMB_X22_Y7_N20
\inst|row_debounce:6:debounce_keys|result~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:6:debounce_keys|result~5_combout\ = (\inst|row_debounce:6:debounce_keys|result~4_combout\ & ((\inst|row_debounce:6:debounce_keys|result~q\))) # (!\inst|row_debounce:6:debounce_keys|result~4_combout\ & 
-- (\inst|row_debounce:6:debounce_keys|flipflops\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:6:debounce_keys|flipflops\(1),
	datac => \inst|row_debounce:6:debounce_keys|result~q\,
	datad => \inst|row_debounce:6:debounce_keys|result~4_combout\,
	combout => \inst|row_debounce:6:debounce_keys|result~5_combout\);

-- Location: FF_X22_Y7_N21
\inst|row_debounce:6:debounce_keys|result\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:6:debounce_keys|result~5_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:6:debounce_keys|result~q\);

-- Location: LCCOMB_X24_Y12_N10
\inst|Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux14~0_combout\ = (!\inst|Add15~4_combout\ & (!\inst|Add15~6_combout\ & (\inst|LessThan1~2_combout\ & !\inst|Add15~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add15~4_combout\,
	datab => \inst|Add15~6_combout\,
	datac => \inst|LessThan1~2_combout\,
	datad => \inst|Add15~8_combout\,
	combout => \inst|Mux14~0_combout\);

-- Location: LCCOMB_X24_Y12_N6
\inst|Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux15~0_combout\ = (\inst|keys_double\(15) & ((\inst|LessThan1~1_combout\) # ((\inst|Mux14~0_combout\)))) # (!\inst|keys_double\(15) & (\inst|keys_int\(15) & ((\inst|LessThan1~1_combout\) # (\inst|Mux14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|keys_double\(15),
	datab => \inst|LessThan1~1_combout\,
	datac => \inst|keys_int\(15),
	datad => \inst|Mux14~0_combout\,
	combout => \inst|Mux15~0_combout\);

-- Location: FF_X24_Y12_N7
\inst|keys_stored[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Mux15~0_combout\,
	ena => \inst|keys_stored[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|keys_stored\(15));

-- Location: LCCOMB_X28_Y7_N2
\inst|row_debounce:15:debounce_keys|flipflops[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:15:debounce_keys|flipflops[0]~feeder_combout\ = \inst|keys_stored\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|keys_stored\(15),
	combout => \inst|row_debounce:15:debounce_keys|flipflops[0]~feeder_combout\);

-- Location: FF_X28_Y7_N3
\inst|row_debounce:15:debounce_keys|flipflops[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:15:debounce_keys|flipflops[0]~feeder_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:15:debounce_keys|flipflops\(0));

-- Location: LCCOMB_X28_Y7_N16
\inst|row_debounce:15:debounce_keys|flipflops[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:15:debounce_keys|flipflops[1]~feeder_combout\ = \inst|row_debounce:15:debounce_keys|flipflops\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|row_debounce:15:debounce_keys|flipflops\(0),
	combout => \inst|row_debounce:15:debounce_keys|flipflops[1]~feeder_combout\);

-- Location: FF_X28_Y7_N17
\inst|row_debounce:15:debounce_keys|flipflops[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:15:debounce_keys|flipflops[1]~feeder_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:15:debounce_keys|flipflops\(1));

-- Location: LCCOMB_X29_Y6_N14
\inst|row_debounce:15:debounce_keys|count[0]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:15:debounce_keys|count[0]~19_combout\ = \inst|row_debounce:15:debounce_keys|count\(0) $ (VCC)
-- \inst|row_debounce:15:debounce_keys|count[0]~20\ = CARRY(\inst|row_debounce:15:debounce_keys|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:15:debounce_keys|count\(0),
	datad => VCC,
	combout => \inst|row_debounce:15:debounce_keys|count[0]~19_combout\,
	cout => \inst|row_debounce:15:debounce_keys|count[0]~20\);

-- Location: LCCOMB_X29_Y5_N20
\inst|row_debounce:15:debounce_keys|counter_set\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:15:debounce_keys|counter_set~combout\ = \inst|row_debounce:15:debounce_keys|flipflops\(1) $ (\inst|row_debounce:15:debounce_keys|flipflops\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:15:debounce_keys|flipflops\(1),
	datac => \inst|row_debounce:15:debounce_keys|flipflops\(0),
	combout => \inst|row_debounce:15:debounce_keys|counter_set~combout\);

-- Location: LCCOMB_X29_Y5_N22
\inst|row_debounce:15:debounce_keys|count[18]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:15:debounce_keys|count[18]~31_combout\ = (\inst|row_debounce:15:debounce_keys|result~4_combout\ & \rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|row_debounce:15:debounce_keys|result~4_combout\,
	datad => \rst~input_o\,
	combout => \inst|row_debounce:15:debounce_keys|count[18]~31_combout\);

-- Location: FF_X29_Y6_N15
\inst|row_debounce:15:debounce_keys|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:15:debounce_keys|count[0]~19_combout\,
	sclr => \inst|row_debounce:15:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:15:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:15:debounce_keys|count\(0));

-- Location: LCCOMB_X29_Y6_N16
\inst|row_debounce:15:debounce_keys|count[1]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:15:debounce_keys|count[1]~21_combout\ = (\inst|row_debounce:15:debounce_keys|count\(1) & (!\inst|row_debounce:15:debounce_keys|count[0]~20\)) # (!\inst|row_debounce:15:debounce_keys|count\(1) & 
-- ((\inst|row_debounce:15:debounce_keys|count[0]~20\) # (GND)))
-- \inst|row_debounce:15:debounce_keys|count[1]~22\ = CARRY((!\inst|row_debounce:15:debounce_keys|count[0]~20\) # (!\inst|row_debounce:15:debounce_keys|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:15:debounce_keys|count\(1),
	datad => VCC,
	cin => \inst|row_debounce:15:debounce_keys|count[0]~20\,
	combout => \inst|row_debounce:15:debounce_keys|count[1]~21_combout\,
	cout => \inst|row_debounce:15:debounce_keys|count[1]~22\);

-- Location: FF_X29_Y6_N17
\inst|row_debounce:15:debounce_keys|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:15:debounce_keys|count[1]~21_combout\,
	sclr => \inst|row_debounce:15:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:15:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:15:debounce_keys|count\(1));

-- Location: LCCOMB_X29_Y6_N18
\inst|row_debounce:15:debounce_keys|count[2]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:15:debounce_keys|count[2]~23_combout\ = (\inst|row_debounce:15:debounce_keys|count\(2) & (\inst|row_debounce:15:debounce_keys|count[1]~22\ $ (GND))) # (!\inst|row_debounce:15:debounce_keys|count\(2) & 
-- (!\inst|row_debounce:15:debounce_keys|count[1]~22\ & VCC))
-- \inst|row_debounce:15:debounce_keys|count[2]~24\ = CARRY((\inst|row_debounce:15:debounce_keys|count\(2) & !\inst|row_debounce:15:debounce_keys|count[1]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:15:debounce_keys|count\(2),
	datad => VCC,
	cin => \inst|row_debounce:15:debounce_keys|count[1]~22\,
	combout => \inst|row_debounce:15:debounce_keys|count[2]~23_combout\,
	cout => \inst|row_debounce:15:debounce_keys|count[2]~24\);

-- Location: FF_X29_Y6_N19
\inst|row_debounce:15:debounce_keys|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:15:debounce_keys|count[2]~23_combout\,
	sclr => \inst|row_debounce:15:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:15:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:15:debounce_keys|count\(2));

-- Location: LCCOMB_X29_Y6_N20
\inst|row_debounce:15:debounce_keys|count[3]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:15:debounce_keys|count[3]~25_combout\ = (\inst|row_debounce:15:debounce_keys|count\(3) & (!\inst|row_debounce:15:debounce_keys|count[2]~24\)) # (!\inst|row_debounce:15:debounce_keys|count\(3) & 
-- ((\inst|row_debounce:15:debounce_keys|count[2]~24\) # (GND)))
-- \inst|row_debounce:15:debounce_keys|count[3]~26\ = CARRY((!\inst|row_debounce:15:debounce_keys|count[2]~24\) # (!\inst|row_debounce:15:debounce_keys|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:15:debounce_keys|count\(3),
	datad => VCC,
	cin => \inst|row_debounce:15:debounce_keys|count[2]~24\,
	combout => \inst|row_debounce:15:debounce_keys|count[3]~25_combout\,
	cout => \inst|row_debounce:15:debounce_keys|count[3]~26\);

-- Location: FF_X29_Y6_N21
\inst|row_debounce:15:debounce_keys|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:15:debounce_keys|count[3]~25_combout\,
	sclr => \inst|row_debounce:15:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:15:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:15:debounce_keys|count\(3));

-- Location: LCCOMB_X29_Y6_N22
\inst|row_debounce:15:debounce_keys|count[4]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:15:debounce_keys|count[4]~27_combout\ = (\inst|row_debounce:15:debounce_keys|count\(4) & (\inst|row_debounce:15:debounce_keys|count[3]~26\ $ (GND))) # (!\inst|row_debounce:15:debounce_keys|count\(4) & 
-- (!\inst|row_debounce:15:debounce_keys|count[3]~26\ & VCC))
-- \inst|row_debounce:15:debounce_keys|count[4]~28\ = CARRY((\inst|row_debounce:15:debounce_keys|count\(4) & !\inst|row_debounce:15:debounce_keys|count[3]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:15:debounce_keys|count\(4),
	datad => VCC,
	cin => \inst|row_debounce:15:debounce_keys|count[3]~26\,
	combout => \inst|row_debounce:15:debounce_keys|count[4]~27_combout\,
	cout => \inst|row_debounce:15:debounce_keys|count[4]~28\);

-- Location: FF_X29_Y6_N23
\inst|row_debounce:15:debounce_keys|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:15:debounce_keys|count[4]~27_combout\,
	sclr => \inst|row_debounce:15:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:15:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:15:debounce_keys|count\(4));

-- Location: LCCOMB_X29_Y6_N24
\inst|row_debounce:15:debounce_keys|count[5]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:15:debounce_keys|count[5]~29_combout\ = (\inst|row_debounce:15:debounce_keys|count\(5) & (!\inst|row_debounce:15:debounce_keys|count[4]~28\)) # (!\inst|row_debounce:15:debounce_keys|count\(5) & 
-- ((\inst|row_debounce:15:debounce_keys|count[4]~28\) # (GND)))
-- \inst|row_debounce:15:debounce_keys|count[5]~30\ = CARRY((!\inst|row_debounce:15:debounce_keys|count[4]~28\) # (!\inst|row_debounce:15:debounce_keys|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:15:debounce_keys|count\(5),
	datad => VCC,
	cin => \inst|row_debounce:15:debounce_keys|count[4]~28\,
	combout => \inst|row_debounce:15:debounce_keys|count[5]~29_combout\,
	cout => \inst|row_debounce:15:debounce_keys|count[5]~30\);

-- Location: FF_X29_Y6_N25
\inst|row_debounce:15:debounce_keys|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:15:debounce_keys|count[5]~29_combout\,
	sclr => \inst|row_debounce:15:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:15:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:15:debounce_keys|count\(5));

-- Location: LCCOMB_X29_Y6_N26
\inst|row_debounce:15:debounce_keys|count[6]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:15:debounce_keys|count[6]~32_combout\ = (\inst|row_debounce:15:debounce_keys|count\(6) & (\inst|row_debounce:15:debounce_keys|count[5]~30\ $ (GND))) # (!\inst|row_debounce:15:debounce_keys|count\(6) & 
-- (!\inst|row_debounce:15:debounce_keys|count[5]~30\ & VCC))
-- \inst|row_debounce:15:debounce_keys|count[6]~33\ = CARRY((\inst|row_debounce:15:debounce_keys|count\(6) & !\inst|row_debounce:15:debounce_keys|count[5]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:15:debounce_keys|count\(6),
	datad => VCC,
	cin => \inst|row_debounce:15:debounce_keys|count[5]~30\,
	combout => \inst|row_debounce:15:debounce_keys|count[6]~32_combout\,
	cout => \inst|row_debounce:15:debounce_keys|count[6]~33\);

-- Location: FF_X29_Y6_N27
\inst|row_debounce:15:debounce_keys|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:15:debounce_keys|count[6]~32_combout\,
	sclr => \inst|row_debounce:15:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:15:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:15:debounce_keys|count\(6));

-- Location: LCCOMB_X29_Y6_N28
\inst|row_debounce:15:debounce_keys|count[7]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:15:debounce_keys|count[7]~34_combout\ = (\inst|row_debounce:15:debounce_keys|count\(7) & (!\inst|row_debounce:15:debounce_keys|count[6]~33\)) # (!\inst|row_debounce:15:debounce_keys|count\(7) & 
-- ((\inst|row_debounce:15:debounce_keys|count[6]~33\) # (GND)))
-- \inst|row_debounce:15:debounce_keys|count[7]~35\ = CARRY((!\inst|row_debounce:15:debounce_keys|count[6]~33\) # (!\inst|row_debounce:15:debounce_keys|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:15:debounce_keys|count\(7),
	datad => VCC,
	cin => \inst|row_debounce:15:debounce_keys|count[6]~33\,
	combout => \inst|row_debounce:15:debounce_keys|count[7]~34_combout\,
	cout => \inst|row_debounce:15:debounce_keys|count[7]~35\);

-- Location: FF_X29_Y6_N29
\inst|row_debounce:15:debounce_keys|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:15:debounce_keys|count[7]~34_combout\,
	sclr => \inst|row_debounce:15:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:15:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:15:debounce_keys|count\(7));

-- Location: LCCOMB_X29_Y6_N30
\inst|row_debounce:15:debounce_keys|count[8]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:15:debounce_keys|count[8]~36_combout\ = (\inst|row_debounce:15:debounce_keys|count\(8) & (\inst|row_debounce:15:debounce_keys|count[7]~35\ $ (GND))) # (!\inst|row_debounce:15:debounce_keys|count\(8) & 
-- (!\inst|row_debounce:15:debounce_keys|count[7]~35\ & VCC))
-- \inst|row_debounce:15:debounce_keys|count[8]~37\ = CARRY((\inst|row_debounce:15:debounce_keys|count\(8) & !\inst|row_debounce:15:debounce_keys|count[7]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:15:debounce_keys|count\(8),
	datad => VCC,
	cin => \inst|row_debounce:15:debounce_keys|count[7]~35\,
	combout => \inst|row_debounce:15:debounce_keys|count[8]~36_combout\,
	cout => \inst|row_debounce:15:debounce_keys|count[8]~37\);

-- Location: FF_X29_Y6_N31
\inst|row_debounce:15:debounce_keys|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:15:debounce_keys|count[8]~36_combout\,
	sclr => \inst|row_debounce:15:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:15:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:15:debounce_keys|count\(8));

-- Location: LCCOMB_X29_Y5_N0
\inst|row_debounce:15:debounce_keys|count[9]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:15:debounce_keys|count[9]~38_combout\ = (\inst|row_debounce:15:debounce_keys|count\(9) & (!\inst|row_debounce:15:debounce_keys|count[8]~37\)) # (!\inst|row_debounce:15:debounce_keys|count\(9) & 
-- ((\inst|row_debounce:15:debounce_keys|count[8]~37\) # (GND)))
-- \inst|row_debounce:15:debounce_keys|count[9]~39\ = CARRY((!\inst|row_debounce:15:debounce_keys|count[8]~37\) # (!\inst|row_debounce:15:debounce_keys|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:15:debounce_keys|count\(9),
	datad => VCC,
	cin => \inst|row_debounce:15:debounce_keys|count[8]~37\,
	combout => \inst|row_debounce:15:debounce_keys|count[9]~38_combout\,
	cout => \inst|row_debounce:15:debounce_keys|count[9]~39\);

-- Location: FF_X29_Y5_N1
\inst|row_debounce:15:debounce_keys|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:15:debounce_keys|count[9]~38_combout\,
	sclr => \inst|row_debounce:15:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:15:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:15:debounce_keys|count\(9));

-- Location: LCCOMB_X29_Y5_N2
\inst|row_debounce:15:debounce_keys|count[10]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:15:debounce_keys|count[10]~40_combout\ = (\inst|row_debounce:15:debounce_keys|count\(10) & (\inst|row_debounce:15:debounce_keys|count[9]~39\ $ (GND))) # (!\inst|row_debounce:15:debounce_keys|count\(10) & 
-- (!\inst|row_debounce:15:debounce_keys|count[9]~39\ & VCC))
-- \inst|row_debounce:15:debounce_keys|count[10]~41\ = CARRY((\inst|row_debounce:15:debounce_keys|count\(10) & !\inst|row_debounce:15:debounce_keys|count[9]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:15:debounce_keys|count\(10),
	datad => VCC,
	cin => \inst|row_debounce:15:debounce_keys|count[9]~39\,
	combout => \inst|row_debounce:15:debounce_keys|count[10]~40_combout\,
	cout => \inst|row_debounce:15:debounce_keys|count[10]~41\);

-- Location: FF_X29_Y5_N3
\inst|row_debounce:15:debounce_keys|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:15:debounce_keys|count[10]~40_combout\,
	sclr => \inst|row_debounce:15:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:15:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:15:debounce_keys|count\(10));

-- Location: LCCOMB_X29_Y5_N4
\inst|row_debounce:15:debounce_keys|count[11]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:15:debounce_keys|count[11]~42_combout\ = (\inst|row_debounce:15:debounce_keys|count\(11) & (!\inst|row_debounce:15:debounce_keys|count[10]~41\)) # (!\inst|row_debounce:15:debounce_keys|count\(11) & 
-- ((\inst|row_debounce:15:debounce_keys|count[10]~41\) # (GND)))
-- \inst|row_debounce:15:debounce_keys|count[11]~43\ = CARRY((!\inst|row_debounce:15:debounce_keys|count[10]~41\) # (!\inst|row_debounce:15:debounce_keys|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:15:debounce_keys|count\(11),
	datad => VCC,
	cin => \inst|row_debounce:15:debounce_keys|count[10]~41\,
	combout => \inst|row_debounce:15:debounce_keys|count[11]~42_combout\,
	cout => \inst|row_debounce:15:debounce_keys|count[11]~43\);

-- Location: FF_X29_Y5_N5
\inst|row_debounce:15:debounce_keys|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:15:debounce_keys|count[11]~42_combout\,
	sclr => \inst|row_debounce:15:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:15:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:15:debounce_keys|count\(11));

-- Location: LCCOMB_X29_Y5_N6
\inst|row_debounce:15:debounce_keys|count[12]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:15:debounce_keys|count[12]~44_combout\ = (\inst|row_debounce:15:debounce_keys|count\(12) & (\inst|row_debounce:15:debounce_keys|count[11]~43\ $ (GND))) # (!\inst|row_debounce:15:debounce_keys|count\(12) & 
-- (!\inst|row_debounce:15:debounce_keys|count[11]~43\ & VCC))
-- \inst|row_debounce:15:debounce_keys|count[12]~45\ = CARRY((\inst|row_debounce:15:debounce_keys|count\(12) & !\inst|row_debounce:15:debounce_keys|count[11]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:15:debounce_keys|count\(12),
	datad => VCC,
	cin => \inst|row_debounce:15:debounce_keys|count[11]~43\,
	combout => \inst|row_debounce:15:debounce_keys|count[12]~44_combout\,
	cout => \inst|row_debounce:15:debounce_keys|count[12]~45\);

-- Location: FF_X29_Y5_N7
\inst|row_debounce:15:debounce_keys|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:15:debounce_keys|count[12]~44_combout\,
	sclr => \inst|row_debounce:15:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:15:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:15:debounce_keys|count\(12));

-- Location: LCCOMB_X29_Y5_N8
\inst|row_debounce:15:debounce_keys|count[13]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:15:debounce_keys|count[13]~46_combout\ = (\inst|row_debounce:15:debounce_keys|count\(13) & (!\inst|row_debounce:15:debounce_keys|count[12]~45\)) # (!\inst|row_debounce:15:debounce_keys|count\(13) & 
-- ((\inst|row_debounce:15:debounce_keys|count[12]~45\) # (GND)))
-- \inst|row_debounce:15:debounce_keys|count[13]~47\ = CARRY((!\inst|row_debounce:15:debounce_keys|count[12]~45\) # (!\inst|row_debounce:15:debounce_keys|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:15:debounce_keys|count\(13),
	datad => VCC,
	cin => \inst|row_debounce:15:debounce_keys|count[12]~45\,
	combout => \inst|row_debounce:15:debounce_keys|count[13]~46_combout\,
	cout => \inst|row_debounce:15:debounce_keys|count[13]~47\);

-- Location: FF_X29_Y5_N9
\inst|row_debounce:15:debounce_keys|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:15:debounce_keys|count[13]~46_combout\,
	sclr => \inst|row_debounce:15:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:15:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:15:debounce_keys|count\(13));

-- Location: LCCOMB_X29_Y5_N10
\inst|row_debounce:15:debounce_keys|count[14]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:15:debounce_keys|count[14]~48_combout\ = (\inst|row_debounce:15:debounce_keys|count\(14) & (\inst|row_debounce:15:debounce_keys|count[13]~47\ $ (GND))) # (!\inst|row_debounce:15:debounce_keys|count\(14) & 
-- (!\inst|row_debounce:15:debounce_keys|count[13]~47\ & VCC))
-- \inst|row_debounce:15:debounce_keys|count[14]~49\ = CARRY((\inst|row_debounce:15:debounce_keys|count\(14) & !\inst|row_debounce:15:debounce_keys|count[13]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:15:debounce_keys|count\(14),
	datad => VCC,
	cin => \inst|row_debounce:15:debounce_keys|count[13]~47\,
	combout => \inst|row_debounce:15:debounce_keys|count[14]~48_combout\,
	cout => \inst|row_debounce:15:debounce_keys|count[14]~49\);

-- Location: FF_X29_Y5_N11
\inst|row_debounce:15:debounce_keys|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:15:debounce_keys|count[14]~48_combout\,
	sclr => \inst|row_debounce:15:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:15:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:15:debounce_keys|count\(14));

-- Location: LCCOMB_X29_Y5_N12
\inst|row_debounce:15:debounce_keys|count[15]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:15:debounce_keys|count[15]~50_combout\ = (\inst|row_debounce:15:debounce_keys|count\(15) & (!\inst|row_debounce:15:debounce_keys|count[14]~49\)) # (!\inst|row_debounce:15:debounce_keys|count\(15) & 
-- ((\inst|row_debounce:15:debounce_keys|count[14]~49\) # (GND)))
-- \inst|row_debounce:15:debounce_keys|count[15]~51\ = CARRY((!\inst|row_debounce:15:debounce_keys|count[14]~49\) # (!\inst|row_debounce:15:debounce_keys|count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:15:debounce_keys|count\(15),
	datad => VCC,
	cin => \inst|row_debounce:15:debounce_keys|count[14]~49\,
	combout => \inst|row_debounce:15:debounce_keys|count[15]~50_combout\,
	cout => \inst|row_debounce:15:debounce_keys|count[15]~51\);

-- Location: FF_X29_Y5_N13
\inst|row_debounce:15:debounce_keys|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:15:debounce_keys|count[15]~50_combout\,
	sclr => \inst|row_debounce:15:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:15:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:15:debounce_keys|count\(15));

-- Location: LCCOMB_X29_Y5_N14
\inst|row_debounce:15:debounce_keys|count[16]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:15:debounce_keys|count[16]~52_combout\ = (\inst|row_debounce:15:debounce_keys|count\(16) & (\inst|row_debounce:15:debounce_keys|count[15]~51\ $ (GND))) # (!\inst|row_debounce:15:debounce_keys|count\(16) & 
-- (!\inst|row_debounce:15:debounce_keys|count[15]~51\ & VCC))
-- \inst|row_debounce:15:debounce_keys|count[16]~53\ = CARRY((\inst|row_debounce:15:debounce_keys|count\(16) & !\inst|row_debounce:15:debounce_keys|count[15]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:15:debounce_keys|count\(16),
	datad => VCC,
	cin => \inst|row_debounce:15:debounce_keys|count[15]~51\,
	combout => \inst|row_debounce:15:debounce_keys|count[16]~52_combout\,
	cout => \inst|row_debounce:15:debounce_keys|count[16]~53\);

-- Location: FF_X29_Y5_N15
\inst|row_debounce:15:debounce_keys|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:15:debounce_keys|count[16]~52_combout\,
	sclr => \inst|row_debounce:15:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:15:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:15:debounce_keys|count\(16));

-- Location: LCCOMB_X29_Y5_N24
\inst|row_debounce:15:debounce_keys|result~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:15:debounce_keys|result~3_combout\ = ((\inst|row_debounce:15:debounce_keys|flipflops\(0) $ (\inst|row_debounce:15:debounce_keys|flipflops\(1))) # (!\inst|row_debounce:15:debounce_keys|count\(15))) # 
-- (!\inst|row_debounce:15:debounce_keys|count\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:15:debounce_keys|flipflops\(0),
	datab => \inst|row_debounce:15:debounce_keys|count\(16),
	datac => \inst|row_debounce:15:debounce_keys|flipflops\(1),
	datad => \inst|row_debounce:15:debounce_keys|count\(15),
	combout => \inst|row_debounce:15:debounce_keys|result~3_combout\);

-- Location: LCCOMB_X29_Y5_N16
\inst|row_debounce:15:debounce_keys|count[17]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:15:debounce_keys|count[17]~54_combout\ = (\inst|row_debounce:15:debounce_keys|count\(17) & (!\inst|row_debounce:15:debounce_keys|count[16]~53\)) # (!\inst|row_debounce:15:debounce_keys|count\(17) & 
-- ((\inst|row_debounce:15:debounce_keys|count[16]~53\) # (GND)))
-- \inst|row_debounce:15:debounce_keys|count[17]~55\ = CARRY((!\inst|row_debounce:15:debounce_keys|count[16]~53\) # (!\inst|row_debounce:15:debounce_keys|count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:15:debounce_keys|count\(17),
	datad => VCC,
	cin => \inst|row_debounce:15:debounce_keys|count[16]~53\,
	combout => \inst|row_debounce:15:debounce_keys|count[17]~54_combout\,
	cout => \inst|row_debounce:15:debounce_keys|count[17]~55\);

-- Location: FF_X29_Y5_N17
\inst|row_debounce:15:debounce_keys|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:15:debounce_keys|count[17]~54_combout\,
	sclr => \inst|row_debounce:15:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:15:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:15:debounce_keys|count\(17));

-- Location: LCCOMB_X29_Y5_N18
\inst|row_debounce:15:debounce_keys|count[18]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:15:debounce_keys|count[18]~56_combout\ = \inst|row_debounce:15:debounce_keys|count[17]~55\ $ (!\inst|row_debounce:15:debounce_keys|count\(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|row_debounce:15:debounce_keys|count\(18),
	cin => \inst|row_debounce:15:debounce_keys|count[17]~55\,
	combout => \inst|row_debounce:15:debounce_keys|count[18]~56_combout\);

-- Location: FF_X29_Y5_N19
\inst|row_debounce:15:debounce_keys|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:15:debounce_keys|count[18]~56_combout\,
	sclr => \inst|row_debounce:15:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:15:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:15:debounce_keys|count\(18));

-- Location: LCCOMB_X29_Y5_N28
\inst|row_debounce:15:debounce_keys|result~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:15:debounce_keys|result~1_combout\ = (!\inst|row_debounce:15:debounce_keys|count\(12) & (!\inst|row_debounce:15:debounce_keys|count\(10) & (!\inst|row_debounce:15:debounce_keys|count\(11) & 
-- !\inst|row_debounce:15:debounce_keys|count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:15:debounce_keys|count\(12),
	datab => \inst|row_debounce:15:debounce_keys|count\(10),
	datac => \inst|row_debounce:15:debounce_keys|count\(11),
	datad => \inst|row_debounce:15:debounce_keys|count\(9),
	combout => \inst|row_debounce:15:debounce_keys|result~1_combout\);

-- Location: LCCOMB_X29_Y6_N8
\inst|row_debounce:15:debounce_keys|result~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:15:debounce_keys|result~0_combout\ = ((!\inst|row_debounce:15:debounce_keys|count\(7) & (!\inst|row_debounce:15:debounce_keys|count\(6) & !\inst|row_debounce:15:debounce_keys|count\(5)))) # 
-- (!\inst|row_debounce:15:debounce_keys|count\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:15:debounce_keys|count\(8),
	datab => \inst|row_debounce:15:debounce_keys|count\(7),
	datac => \inst|row_debounce:15:debounce_keys|count\(6),
	datad => \inst|row_debounce:15:debounce_keys|count\(5),
	combout => \inst|row_debounce:15:debounce_keys|result~0_combout\);

-- Location: LCCOMB_X29_Y5_N26
\inst|row_debounce:15:debounce_keys|result~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:15:debounce_keys|result~2_combout\ = (!\inst|row_debounce:15:debounce_keys|count\(14) & (((\inst|row_debounce:15:debounce_keys|result~1_combout\ & \inst|row_debounce:15:debounce_keys|result~0_combout\)) # 
-- (!\inst|row_debounce:15:debounce_keys|count\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:15:debounce_keys|count\(14),
	datab => \inst|row_debounce:15:debounce_keys|result~1_combout\,
	datac => \inst|row_debounce:15:debounce_keys|count\(13),
	datad => \inst|row_debounce:15:debounce_keys|result~0_combout\,
	combout => \inst|row_debounce:15:debounce_keys|result~2_combout\);

-- Location: LCCOMB_X29_Y5_N30
\inst|row_debounce:15:debounce_keys|result~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:15:debounce_keys|result~4_combout\ = (\inst|row_debounce:15:debounce_keys|result~3_combout\) # (((\inst|row_debounce:15:debounce_keys|result~2_combout\) # (!\inst|row_debounce:15:debounce_keys|count\(17))) # 
-- (!\inst|row_debounce:15:debounce_keys|count\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:15:debounce_keys|result~3_combout\,
	datab => \inst|row_debounce:15:debounce_keys|count\(18),
	datac => \inst|row_debounce:15:debounce_keys|result~2_combout\,
	datad => \inst|row_debounce:15:debounce_keys|count\(17),
	combout => \inst|row_debounce:15:debounce_keys|result~4_combout\);

-- Location: LCCOMB_X23_Y7_N28
\inst|row_debounce:15:debounce_keys|result~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:15:debounce_keys|result~5_combout\ = (\inst|row_debounce:15:debounce_keys|result~4_combout\ & ((\inst|row_debounce:15:debounce_keys|result~q\))) # (!\inst|row_debounce:15:debounce_keys|result~4_combout\ & 
-- (\inst|row_debounce:15:debounce_keys|flipflops\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:15:debounce_keys|flipflops\(1),
	datac => \inst|row_debounce:15:debounce_keys|result~q\,
	datad => \inst|row_debounce:15:debounce_keys|result~4_combout\,
	combout => \inst|row_debounce:15:debounce_keys|result~5_combout\);

-- Location: FF_X23_Y7_N29
\inst|row_debounce:15:debounce_keys|result\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:15:debounce_keys|result~5_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:15:debounce_keys|result~q\);

-- Location: LCCOMB_X24_Y12_N20
\inst|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux8~0_combout\ = (\inst|process_1~6_combout\ & ((\inst|LessThan1~1_combout\) # ((\inst|Mux4~0_combout\ & !\inst|Add15~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|process_1~6_combout\,
	datab => \inst|LessThan1~1_combout\,
	datac => \inst|Mux4~0_combout\,
	datad => \inst|Add15~8_combout\,
	combout => \inst|Mux8~0_combout\);

-- Location: FF_X24_Y12_N21
\inst|keys_stored[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Mux8~0_combout\,
	ena => \inst|keys_stored[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|keys_stored\(8));

-- Location: LCCOMB_X24_Y5_N10
\inst|row_debounce:8:debounce_keys|flipflops[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:8:debounce_keys|flipflops[0]~feeder_combout\ = \inst|keys_stored\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|keys_stored\(8),
	combout => \inst|row_debounce:8:debounce_keys|flipflops[0]~feeder_combout\);

-- Location: FF_X24_Y5_N11
\inst|row_debounce:8:debounce_keys|flipflops[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:8:debounce_keys|flipflops[0]~feeder_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:8:debounce_keys|flipflops\(0));

-- Location: LCCOMB_X24_Y5_N28
\inst|row_debounce:8:debounce_keys|flipflops[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:8:debounce_keys|flipflops[1]~feeder_combout\ = \inst|row_debounce:8:debounce_keys|flipflops\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|row_debounce:8:debounce_keys|flipflops\(0),
	combout => \inst|row_debounce:8:debounce_keys|flipflops[1]~feeder_combout\);

-- Location: FF_X24_Y5_N29
\inst|row_debounce:8:debounce_keys|flipflops[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:8:debounce_keys|flipflops[1]~feeder_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:8:debounce_keys|flipflops\(1));

-- Location: LCCOMB_X28_Y6_N14
\inst|row_debounce:8:debounce_keys|count[0]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:8:debounce_keys|count[0]~19_combout\ = \inst|row_debounce:8:debounce_keys|count\(0) $ (VCC)
-- \inst|row_debounce:8:debounce_keys|count[0]~20\ = CARRY(\inst|row_debounce:8:debounce_keys|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:8:debounce_keys|count\(0),
	datad => VCC,
	combout => \inst|row_debounce:8:debounce_keys|count[0]~19_combout\,
	cout => \inst|row_debounce:8:debounce_keys|count[0]~20\);

-- Location: LCCOMB_X28_Y5_N20
\inst|row_debounce:8:debounce_keys|counter_set\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:8:debounce_keys|counter_set~combout\ = \inst|row_debounce:8:debounce_keys|flipflops\(0) $ (\inst|row_debounce:8:debounce_keys|flipflops\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|row_debounce:8:debounce_keys|flipflops\(0),
	datad => \inst|row_debounce:8:debounce_keys|flipflops\(1),
	combout => \inst|row_debounce:8:debounce_keys|counter_set~combout\);

-- Location: LCCOMB_X28_Y5_N22
\inst|row_debounce:8:debounce_keys|count[18]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:8:debounce_keys|count[18]~31_combout\ = (\inst|row_debounce:8:debounce_keys|result~4_combout\ & \rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|row_debounce:8:debounce_keys|result~4_combout\,
	datad => \rst~input_o\,
	combout => \inst|row_debounce:8:debounce_keys|count[18]~31_combout\);

-- Location: FF_X28_Y6_N15
\inst|row_debounce:8:debounce_keys|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:8:debounce_keys|count[0]~19_combout\,
	sclr => \inst|row_debounce:8:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:8:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:8:debounce_keys|count\(0));

-- Location: LCCOMB_X28_Y6_N16
\inst|row_debounce:8:debounce_keys|count[1]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:8:debounce_keys|count[1]~21_combout\ = (\inst|row_debounce:8:debounce_keys|count\(1) & (!\inst|row_debounce:8:debounce_keys|count[0]~20\)) # (!\inst|row_debounce:8:debounce_keys|count\(1) & 
-- ((\inst|row_debounce:8:debounce_keys|count[0]~20\) # (GND)))
-- \inst|row_debounce:8:debounce_keys|count[1]~22\ = CARRY((!\inst|row_debounce:8:debounce_keys|count[0]~20\) # (!\inst|row_debounce:8:debounce_keys|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:8:debounce_keys|count\(1),
	datad => VCC,
	cin => \inst|row_debounce:8:debounce_keys|count[0]~20\,
	combout => \inst|row_debounce:8:debounce_keys|count[1]~21_combout\,
	cout => \inst|row_debounce:8:debounce_keys|count[1]~22\);

-- Location: FF_X28_Y6_N17
\inst|row_debounce:8:debounce_keys|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:8:debounce_keys|count[1]~21_combout\,
	sclr => \inst|row_debounce:8:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:8:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:8:debounce_keys|count\(1));

-- Location: LCCOMB_X28_Y6_N18
\inst|row_debounce:8:debounce_keys|count[2]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:8:debounce_keys|count[2]~23_combout\ = (\inst|row_debounce:8:debounce_keys|count\(2) & (\inst|row_debounce:8:debounce_keys|count[1]~22\ $ (GND))) # (!\inst|row_debounce:8:debounce_keys|count\(2) & 
-- (!\inst|row_debounce:8:debounce_keys|count[1]~22\ & VCC))
-- \inst|row_debounce:8:debounce_keys|count[2]~24\ = CARRY((\inst|row_debounce:8:debounce_keys|count\(2) & !\inst|row_debounce:8:debounce_keys|count[1]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:8:debounce_keys|count\(2),
	datad => VCC,
	cin => \inst|row_debounce:8:debounce_keys|count[1]~22\,
	combout => \inst|row_debounce:8:debounce_keys|count[2]~23_combout\,
	cout => \inst|row_debounce:8:debounce_keys|count[2]~24\);

-- Location: FF_X28_Y6_N19
\inst|row_debounce:8:debounce_keys|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:8:debounce_keys|count[2]~23_combout\,
	sclr => \inst|row_debounce:8:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:8:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:8:debounce_keys|count\(2));

-- Location: LCCOMB_X28_Y6_N20
\inst|row_debounce:8:debounce_keys|count[3]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:8:debounce_keys|count[3]~25_combout\ = (\inst|row_debounce:8:debounce_keys|count\(3) & (!\inst|row_debounce:8:debounce_keys|count[2]~24\)) # (!\inst|row_debounce:8:debounce_keys|count\(3) & 
-- ((\inst|row_debounce:8:debounce_keys|count[2]~24\) # (GND)))
-- \inst|row_debounce:8:debounce_keys|count[3]~26\ = CARRY((!\inst|row_debounce:8:debounce_keys|count[2]~24\) # (!\inst|row_debounce:8:debounce_keys|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:8:debounce_keys|count\(3),
	datad => VCC,
	cin => \inst|row_debounce:8:debounce_keys|count[2]~24\,
	combout => \inst|row_debounce:8:debounce_keys|count[3]~25_combout\,
	cout => \inst|row_debounce:8:debounce_keys|count[3]~26\);

-- Location: FF_X28_Y6_N21
\inst|row_debounce:8:debounce_keys|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:8:debounce_keys|count[3]~25_combout\,
	sclr => \inst|row_debounce:8:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:8:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:8:debounce_keys|count\(3));

-- Location: LCCOMB_X28_Y6_N22
\inst|row_debounce:8:debounce_keys|count[4]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:8:debounce_keys|count[4]~27_combout\ = (\inst|row_debounce:8:debounce_keys|count\(4) & (\inst|row_debounce:8:debounce_keys|count[3]~26\ $ (GND))) # (!\inst|row_debounce:8:debounce_keys|count\(4) & 
-- (!\inst|row_debounce:8:debounce_keys|count[3]~26\ & VCC))
-- \inst|row_debounce:8:debounce_keys|count[4]~28\ = CARRY((\inst|row_debounce:8:debounce_keys|count\(4) & !\inst|row_debounce:8:debounce_keys|count[3]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:8:debounce_keys|count\(4),
	datad => VCC,
	cin => \inst|row_debounce:8:debounce_keys|count[3]~26\,
	combout => \inst|row_debounce:8:debounce_keys|count[4]~27_combout\,
	cout => \inst|row_debounce:8:debounce_keys|count[4]~28\);

-- Location: FF_X28_Y6_N23
\inst|row_debounce:8:debounce_keys|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:8:debounce_keys|count[4]~27_combout\,
	sclr => \inst|row_debounce:8:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:8:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:8:debounce_keys|count\(4));

-- Location: LCCOMB_X28_Y6_N24
\inst|row_debounce:8:debounce_keys|count[5]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:8:debounce_keys|count[5]~29_combout\ = (\inst|row_debounce:8:debounce_keys|count\(5) & (!\inst|row_debounce:8:debounce_keys|count[4]~28\)) # (!\inst|row_debounce:8:debounce_keys|count\(5) & 
-- ((\inst|row_debounce:8:debounce_keys|count[4]~28\) # (GND)))
-- \inst|row_debounce:8:debounce_keys|count[5]~30\ = CARRY((!\inst|row_debounce:8:debounce_keys|count[4]~28\) # (!\inst|row_debounce:8:debounce_keys|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:8:debounce_keys|count\(5),
	datad => VCC,
	cin => \inst|row_debounce:8:debounce_keys|count[4]~28\,
	combout => \inst|row_debounce:8:debounce_keys|count[5]~29_combout\,
	cout => \inst|row_debounce:8:debounce_keys|count[5]~30\);

-- Location: FF_X28_Y6_N25
\inst|row_debounce:8:debounce_keys|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:8:debounce_keys|count[5]~29_combout\,
	sclr => \inst|row_debounce:8:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:8:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:8:debounce_keys|count\(5));

-- Location: LCCOMB_X28_Y6_N26
\inst|row_debounce:8:debounce_keys|count[6]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:8:debounce_keys|count[6]~32_combout\ = (\inst|row_debounce:8:debounce_keys|count\(6) & (\inst|row_debounce:8:debounce_keys|count[5]~30\ $ (GND))) # (!\inst|row_debounce:8:debounce_keys|count\(6) & 
-- (!\inst|row_debounce:8:debounce_keys|count[5]~30\ & VCC))
-- \inst|row_debounce:8:debounce_keys|count[6]~33\ = CARRY((\inst|row_debounce:8:debounce_keys|count\(6) & !\inst|row_debounce:8:debounce_keys|count[5]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:8:debounce_keys|count\(6),
	datad => VCC,
	cin => \inst|row_debounce:8:debounce_keys|count[5]~30\,
	combout => \inst|row_debounce:8:debounce_keys|count[6]~32_combout\,
	cout => \inst|row_debounce:8:debounce_keys|count[6]~33\);

-- Location: FF_X28_Y6_N27
\inst|row_debounce:8:debounce_keys|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:8:debounce_keys|count[6]~32_combout\,
	sclr => \inst|row_debounce:8:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:8:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:8:debounce_keys|count\(6));

-- Location: LCCOMB_X28_Y6_N28
\inst|row_debounce:8:debounce_keys|count[7]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:8:debounce_keys|count[7]~34_combout\ = (\inst|row_debounce:8:debounce_keys|count\(7) & (!\inst|row_debounce:8:debounce_keys|count[6]~33\)) # (!\inst|row_debounce:8:debounce_keys|count\(7) & 
-- ((\inst|row_debounce:8:debounce_keys|count[6]~33\) # (GND)))
-- \inst|row_debounce:8:debounce_keys|count[7]~35\ = CARRY((!\inst|row_debounce:8:debounce_keys|count[6]~33\) # (!\inst|row_debounce:8:debounce_keys|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:8:debounce_keys|count\(7),
	datad => VCC,
	cin => \inst|row_debounce:8:debounce_keys|count[6]~33\,
	combout => \inst|row_debounce:8:debounce_keys|count[7]~34_combout\,
	cout => \inst|row_debounce:8:debounce_keys|count[7]~35\);

-- Location: FF_X28_Y6_N29
\inst|row_debounce:8:debounce_keys|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:8:debounce_keys|count[7]~34_combout\,
	sclr => \inst|row_debounce:8:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:8:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:8:debounce_keys|count\(7));

-- Location: LCCOMB_X28_Y6_N30
\inst|row_debounce:8:debounce_keys|count[8]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:8:debounce_keys|count[8]~36_combout\ = (\inst|row_debounce:8:debounce_keys|count\(8) & (\inst|row_debounce:8:debounce_keys|count[7]~35\ $ (GND))) # (!\inst|row_debounce:8:debounce_keys|count\(8) & 
-- (!\inst|row_debounce:8:debounce_keys|count[7]~35\ & VCC))
-- \inst|row_debounce:8:debounce_keys|count[8]~37\ = CARRY((\inst|row_debounce:8:debounce_keys|count\(8) & !\inst|row_debounce:8:debounce_keys|count[7]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:8:debounce_keys|count\(8),
	datad => VCC,
	cin => \inst|row_debounce:8:debounce_keys|count[7]~35\,
	combout => \inst|row_debounce:8:debounce_keys|count[8]~36_combout\,
	cout => \inst|row_debounce:8:debounce_keys|count[8]~37\);

-- Location: FF_X28_Y6_N31
\inst|row_debounce:8:debounce_keys|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:8:debounce_keys|count[8]~36_combout\,
	sclr => \inst|row_debounce:8:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:8:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:8:debounce_keys|count\(8));

-- Location: LCCOMB_X28_Y5_N0
\inst|row_debounce:8:debounce_keys|count[9]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:8:debounce_keys|count[9]~38_combout\ = (\inst|row_debounce:8:debounce_keys|count\(9) & (!\inst|row_debounce:8:debounce_keys|count[8]~37\)) # (!\inst|row_debounce:8:debounce_keys|count\(9) & 
-- ((\inst|row_debounce:8:debounce_keys|count[8]~37\) # (GND)))
-- \inst|row_debounce:8:debounce_keys|count[9]~39\ = CARRY((!\inst|row_debounce:8:debounce_keys|count[8]~37\) # (!\inst|row_debounce:8:debounce_keys|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:8:debounce_keys|count\(9),
	datad => VCC,
	cin => \inst|row_debounce:8:debounce_keys|count[8]~37\,
	combout => \inst|row_debounce:8:debounce_keys|count[9]~38_combout\,
	cout => \inst|row_debounce:8:debounce_keys|count[9]~39\);

-- Location: FF_X28_Y5_N1
\inst|row_debounce:8:debounce_keys|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:8:debounce_keys|count[9]~38_combout\,
	sclr => \inst|row_debounce:8:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:8:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:8:debounce_keys|count\(9));

-- Location: LCCOMB_X28_Y5_N2
\inst|row_debounce:8:debounce_keys|count[10]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:8:debounce_keys|count[10]~40_combout\ = (\inst|row_debounce:8:debounce_keys|count\(10) & (\inst|row_debounce:8:debounce_keys|count[9]~39\ $ (GND))) # (!\inst|row_debounce:8:debounce_keys|count\(10) & 
-- (!\inst|row_debounce:8:debounce_keys|count[9]~39\ & VCC))
-- \inst|row_debounce:8:debounce_keys|count[10]~41\ = CARRY((\inst|row_debounce:8:debounce_keys|count\(10) & !\inst|row_debounce:8:debounce_keys|count[9]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:8:debounce_keys|count\(10),
	datad => VCC,
	cin => \inst|row_debounce:8:debounce_keys|count[9]~39\,
	combout => \inst|row_debounce:8:debounce_keys|count[10]~40_combout\,
	cout => \inst|row_debounce:8:debounce_keys|count[10]~41\);

-- Location: FF_X28_Y5_N3
\inst|row_debounce:8:debounce_keys|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:8:debounce_keys|count[10]~40_combout\,
	sclr => \inst|row_debounce:8:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:8:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:8:debounce_keys|count\(10));

-- Location: LCCOMB_X28_Y5_N4
\inst|row_debounce:8:debounce_keys|count[11]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:8:debounce_keys|count[11]~42_combout\ = (\inst|row_debounce:8:debounce_keys|count\(11) & (!\inst|row_debounce:8:debounce_keys|count[10]~41\)) # (!\inst|row_debounce:8:debounce_keys|count\(11) & 
-- ((\inst|row_debounce:8:debounce_keys|count[10]~41\) # (GND)))
-- \inst|row_debounce:8:debounce_keys|count[11]~43\ = CARRY((!\inst|row_debounce:8:debounce_keys|count[10]~41\) # (!\inst|row_debounce:8:debounce_keys|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:8:debounce_keys|count\(11),
	datad => VCC,
	cin => \inst|row_debounce:8:debounce_keys|count[10]~41\,
	combout => \inst|row_debounce:8:debounce_keys|count[11]~42_combout\,
	cout => \inst|row_debounce:8:debounce_keys|count[11]~43\);

-- Location: FF_X28_Y5_N5
\inst|row_debounce:8:debounce_keys|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:8:debounce_keys|count[11]~42_combout\,
	sclr => \inst|row_debounce:8:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:8:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:8:debounce_keys|count\(11));

-- Location: LCCOMB_X28_Y5_N6
\inst|row_debounce:8:debounce_keys|count[12]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:8:debounce_keys|count[12]~44_combout\ = (\inst|row_debounce:8:debounce_keys|count\(12) & (\inst|row_debounce:8:debounce_keys|count[11]~43\ $ (GND))) # (!\inst|row_debounce:8:debounce_keys|count\(12) & 
-- (!\inst|row_debounce:8:debounce_keys|count[11]~43\ & VCC))
-- \inst|row_debounce:8:debounce_keys|count[12]~45\ = CARRY((\inst|row_debounce:8:debounce_keys|count\(12) & !\inst|row_debounce:8:debounce_keys|count[11]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:8:debounce_keys|count\(12),
	datad => VCC,
	cin => \inst|row_debounce:8:debounce_keys|count[11]~43\,
	combout => \inst|row_debounce:8:debounce_keys|count[12]~44_combout\,
	cout => \inst|row_debounce:8:debounce_keys|count[12]~45\);

-- Location: FF_X28_Y5_N7
\inst|row_debounce:8:debounce_keys|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:8:debounce_keys|count[12]~44_combout\,
	sclr => \inst|row_debounce:8:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:8:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:8:debounce_keys|count\(12));

-- Location: LCCOMB_X28_Y5_N8
\inst|row_debounce:8:debounce_keys|count[13]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:8:debounce_keys|count[13]~46_combout\ = (\inst|row_debounce:8:debounce_keys|count\(13) & (!\inst|row_debounce:8:debounce_keys|count[12]~45\)) # (!\inst|row_debounce:8:debounce_keys|count\(13) & 
-- ((\inst|row_debounce:8:debounce_keys|count[12]~45\) # (GND)))
-- \inst|row_debounce:8:debounce_keys|count[13]~47\ = CARRY((!\inst|row_debounce:8:debounce_keys|count[12]~45\) # (!\inst|row_debounce:8:debounce_keys|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:8:debounce_keys|count\(13),
	datad => VCC,
	cin => \inst|row_debounce:8:debounce_keys|count[12]~45\,
	combout => \inst|row_debounce:8:debounce_keys|count[13]~46_combout\,
	cout => \inst|row_debounce:8:debounce_keys|count[13]~47\);

-- Location: FF_X28_Y5_N9
\inst|row_debounce:8:debounce_keys|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:8:debounce_keys|count[13]~46_combout\,
	sclr => \inst|row_debounce:8:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:8:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:8:debounce_keys|count\(13));

-- Location: LCCOMB_X28_Y5_N10
\inst|row_debounce:8:debounce_keys|count[14]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:8:debounce_keys|count[14]~48_combout\ = (\inst|row_debounce:8:debounce_keys|count\(14) & (\inst|row_debounce:8:debounce_keys|count[13]~47\ $ (GND))) # (!\inst|row_debounce:8:debounce_keys|count\(14) & 
-- (!\inst|row_debounce:8:debounce_keys|count[13]~47\ & VCC))
-- \inst|row_debounce:8:debounce_keys|count[14]~49\ = CARRY((\inst|row_debounce:8:debounce_keys|count\(14) & !\inst|row_debounce:8:debounce_keys|count[13]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:8:debounce_keys|count\(14),
	datad => VCC,
	cin => \inst|row_debounce:8:debounce_keys|count[13]~47\,
	combout => \inst|row_debounce:8:debounce_keys|count[14]~48_combout\,
	cout => \inst|row_debounce:8:debounce_keys|count[14]~49\);

-- Location: FF_X28_Y5_N11
\inst|row_debounce:8:debounce_keys|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:8:debounce_keys|count[14]~48_combout\,
	sclr => \inst|row_debounce:8:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:8:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:8:debounce_keys|count\(14));

-- Location: LCCOMB_X28_Y5_N12
\inst|row_debounce:8:debounce_keys|count[15]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:8:debounce_keys|count[15]~50_combout\ = (\inst|row_debounce:8:debounce_keys|count\(15) & (!\inst|row_debounce:8:debounce_keys|count[14]~49\)) # (!\inst|row_debounce:8:debounce_keys|count\(15) & 
-- ((\inst|row_debounce:8:debounce_keys|count[14]~49\) # (GND)))
-- \inst|row_debounce:8:debounce_keys|count[15]~51\ = CARRY((!\inst|row_debounce:8:debounce_keys|count[14]~49\) # (!\inst|row_debounce:8:debounce_keys|count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:8:debounce_keys|count\(15),
	datad => VCC,
	cin => \inst|row_debounce:8:debounce_keys|count[14]~49\,
	combout => \inst|row_debounce:8:debounce_keys|count[15]~50_combout\,
	cout => \inst|row_debounce:8:debounce_keys|count[15]~51\);

-- Location: FF_X28_Y5_N13
\inst|row_debounce:8:debounce_keys|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:8:debounce_keys|count[15]~50_combout\,
	sclr => \inst|row_debounce:8:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:8:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:8:debounce_keys|count\(15));

-- Location: LCCOMB_X28_Y5_N14
\inst|row_debounce:8:debounce_keys|count[16]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:8:debounce_keys|count[16]~52_combout\ = (\inst|row_debounce:8:debounce_keys|count\(16) & (\inst|row_debounce:8:debounce_keys|count[15]~51\ $ (GND))) # (!\inst|row_debounce:8:debounce_keys|count\(16) & 
-- (!\inst|row_debounce:8:debounce_keys|count[15]~51\ & VCC))
-- \inst|row_debounce:8:debounce_keys|count[16]~53\ = CARRY((\inst|row_debounce:8:debounce_keys|count\(16) & !\inst|row_debounce:8:debounce_keys|count[15]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:8:debounce_keys|count\(16),
	datad => VCC,
	cin => \inst|row_debounce:8:debounce_keys|count[15]~51\,
	combout => \inst|row_debounce:8:debounce_keys|count[16]~52_combout\,
	cout => \inst|row_debounce:8:debounce_keys|count[16]~53\);

-- Location: FF_X28_Y5_N15
\inst|row_debounce:8:debounce_keys|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:8:debounce_keys|count[16]~52_combout\,
	sclr => \inst|row_debounce:8:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:8:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:8:debounce_keys|count\(16));

-- Location: LCCOMB_X28_Y5_N28
\inst|row_debounce:8:debounce_keys|result~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:8:debounce_keys|result~3_combout\ = ((\inst|row_debounce:8:debounce_keys|flipflops\(0) $ (\inst|row_debounce:8:debounce_keys|flipflops\(1))) # (!\inst|row_debounce:8:debounce_keys|count\(15))) # 
-- (!\inst|row_debounce:8:debounce_keys|count\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:8:debounce_keys|flipflops\(0),
	datab => \inst|row_debounce:8:debounce_keys|flipflops\(1),
	datac => \inst|row_debounce:8:debounce_keys|count\(16),
	datad => \inst|row_debounce:8:debounce_keys|count\(15),
	combout => \inst|row_debounce:8:debounce_keys|result~3_combout\);

-- Location: LCCOMB_X28_Y5_N16
\inst|row_debounce:8:debounce_keys|count[17]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:8:debounce_keys|count[17]~54_combout\ = (\inst|row_debounce:8:debounce_keys|count\(17) & (!\inst|row_debounce:8:debounce_keys|count[16]~53\)) # (!\inst|row_debounce:8:debounce_keys|count\(17) & 
-- ((\inst|row_debounce:8:debounce_keys|count[16]~53\) # (GND)))
-- \inst|row_debounce:8:debounce_keys|count[17]~55\ = CARRY((!\inst|row_debounce:8:debounce_keys|count[16]~53\) # (!\inst|row_debounce:8:debounce_keys|count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:8:debounce_keys|count\(17),
	datad => VCC,
	cin => \inst|row_debounce:8:debounce_keys|count[16]~53\,
	combout => \inst|row_debounce:8:debounce_keys|count[17]~54_combout\,
	cout => \inst|row_debounce:8:debounce_keys|count[17]~55\);

-- Location: FF_X28_Y5_N17
\inst|row_debounce:8:debounce_keys|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:8:debounce_keys|count[17]~54_combout\,
	sclr => \inst|row_debounce:8:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:8:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:8:debounce_keys|count\(17));

-- Location: LCCOMB_X28_Y5_N24
\inst|row_debounce:8:debounce_keys|result~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:8:debounce_keys|result~1_combout\ = (!\inst|row_debounce:8:debounce_keys|count\(12) & (!\inst|row_debounce:8:debounce_keys|count\(10) & (!\inst|row_debounce:8:debounce_keys|count\(11) & !\inst|row_debounce:8:debounce_keys|count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:8:debounce_keys|count\(12),
	datab => \inst|row_debounce:8:debounce_keys|count\(10),
	datac => \inst|row_debounce:8:debounce_keys|count\(11),
	datad => \inst|row_debounce:8:debounce_keys|count\(9),
	combout => \inst|row_debounce:8:debounce_keys|result~1_combout\);

-- Location: LCCOMB_X28_Y6_N12
\inst|row_debounce:8:debounce_keys|result~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:8:debounce_keys|result~0_combout\ = ((!\inst|row_debounce:8:debounce_keys|count\(7) & (!\inst|row_debounce:8:debounce_keys|count\(6) & !\inst|row_debounce:8:debounce_keys|count\(5)))) # (!\inst|row_debounce:8:debounce_keys|count\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:8:debounce_keys|count\(8),
	datab => \inst|row_debounce:8:debounce_keys|count\(7),
	datac => \inst|row_debounce:8:debounce_keys|count\(6),
	datad => \inst|row_debounce:8:debounce_keys|count\(5),
	combout => \inst|row_debounce:8:debounce_keys|result~0_combout\);

-- Location: LCCOMB_X28_Y5_N26
\inst|row_debounce:8:debounce_keys|result~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:8:debounce_keys|result~2_combout\ = (!\inst|row_debounce:8:debounce_keys|count\(14) & (((\inst|row_debounce:8:debounce_keys|result~1_combout\ & \inst|row_debounce:8:debounce_keys|result~0_combout\)) # 
-- (!\inst|row_debounce:8:debounce_keys|count\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:8:debounce_keys|count\(14),
	datab => \inst|row_debounce:8:debounce_keys|result~1_combout\,
	datac => \inst|row_debounce:8:debounce_keys|count\(13),
	datad => \inst|row_debounce:8:debounce_keys|result~0_combout\,
	combout => \inst|row_debounce:8:debounce_keys|result~2_combout\);

-- Location: LCCOMB_X28_Y5_N18
\inst|row_debounce:8:debounce_keys|count[18]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:8:debounce_keys|count[18]~56_combout\ = \inst|row_debounce:8:debounce_keys|count[17]~55\ $ (!\inst|row_debounce:8:debounce_keys|count\(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|row_debounce:8:debounce_keys|count\(18),
	cin => \inst|row_debounce:8:debounce_keys|count[17]~55\,
	combout => \inst|row_debounce:8:debounce_keys|count[18]~56_combout\);

-- Location: FF_X28_Y5_N19
\inst|row_debounce:8:debounce_keys|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:8:debounce_keys|count[18]~56_combout\,
	sclr => \inst|row_debounce:8:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:8:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:8:debounce_keys|count\(18));

-- Location: LCCOMB_X28_Y5_N30
\inst|row_debounce:8:debounce_keys|result~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:8:debounce_keys|result~4_combout\ = (\inst|row_debounce:8:debounce_keys|result~3_combout\) # (((\inst|row_debounce:8:debounce_keys|result~2_combout\) # (!\inst|row_debounce:8:debounce_keys|count\(18))) # 
-- (!\inst|row_debounce:8:debounce_keys|count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:8:debounce_keys|result~3_combout\,
	datab => \inst|row_debounce:8:debounce_keys|count\(17),
	datac => \inst|row_debounce:8:debounce_keys|result~2_combout\,
	datad => \inst|row_debounce:8:debounce_keys|count\(18),
	combout => \inst|row_debounce:8:debounce_keys|result~4_combout\);

-- Location: LCCOMB_X24_Y5_N12
\inst|row_debounce:8:debounce_keys|result~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:8:debounce_keys|result~5_combout\ = (\inst|row_debounce:8:debounce_keys|result~4_combout\ & ((\inst|row_debounce:8:debounce_keys|result~q\))) # (!\inst|row_debounce:8:debounce_keys|result~4_combout\ & 
-- (\inst|row_debounce:8:debounce_keys|flipflops\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:8:debounce_keys|result~4_combout\,
	datac => \inst|row_debounce:8:debounce_keys|flipflops\(1),
	datad => \inst|row_debounce:8:debounce_keys|result~q\,
	combout => \inst|row_debounce:8:debounce_keys|result~5_combout\);

-- Location: FF_X23_Y7_N11
\inst|row_debounce:8:debounce_keys|result\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|row_debounce:8:debounce_keys|result~5_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:8:debounce_keys|result~q\);

-- Location: LCCOMB_X24_Y12_N16
\inst|Mux14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux14~1_combout\ = (\inst|keys_double\(14) & ((\inst|LessThan1~1_combout\) # ((\inst|Mux14~0_combout\)))) # (!\inst|keys_double\(14) & (\inst|keys_int\(14) & ((\inst|LessThan1~1_combout\) # (\inst|Mux14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|keys_double\(14),
	datab => \inst|LessThan1~1_combout\,
	datac => \inst|keys_int\(14),
	datad => \inst|Mux14~0_combout\,
	combout => \inst|Mux14~1_combout\);

-- Location: FF_X24_Y12_N17
\inst|keys_stored[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Mux14~1_combout\,
	ena => \inst|keys_stored[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|keys_stored\(14));

-- Location: LCCOMB_X22_Y7_N26
\inst|row_debounce:14:debounce_keys|flipflops[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:14:debounce_keys|flipflops[0]~feeder_combout\ = \inst|keys_stored\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|keys_stored\(14),
	combout => \inst|row_debounce:14:debounce_keys|flipflops[0]~feeder_combout\);

-- Location: FF_X22_Y7_N27
\inst|row_debounce:14:debounce_keys|flipflops[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:14:debounce_keys|flipflops[0]~feeder_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:14:debounce_keys|flipflops\(0));

-- Location: FF_X22_Y7_N29
\inst|row_debounce:14:debounce_keys|flipflops[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|row_debounce:14:debounce_keys|flipflops\(0),
	clrn => \rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:14:debounce_keys|flipflops\(1));

-- Location: LCCOMB_X21_Y6_N14
\inst|row_debounce:14:debounce_keys|count[0]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:14:debounce_keys|count[0]~19_combout\ = \inst|row_debounce:14:debounce_keys|count\(0) $ (VCC)
-- \inst|row_debounce:14:debounce_keys|count[0]~20\ = CARRY(\inst|row_debounce:14:debounce_keys|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:14:debounce_keys|count\(0),
	datad => VCC,
	combout => \inst|row_debounce:14:debounce_keys|count[0]~19_combout\,
	cout => \inst|row_debounce:14:debounce_keys|count[0]~20\);

-- Location: LCCOMB_X21_Y5_N20
\inst|row_debounce:14:debounce_keys|counter_set\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:14:debounce_keys|counter_set~combout\ = \inst|row_debounce:14:debounce_keys|flipflops\(0) $ (\inst|row_debounce:14:debounce_keys|flipflops\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:14:debounce_keys|flipflops\(0),
	datad => \inst|row_debounce:14:debounce_keys|flipflops\(1),
	combout => \inst|row_debounce:14:debounce_keys|counter_set~combout\);

-- Location: LCCOMB_X21_Y5_N26
\inst|row_debounce:14:debounce_keys|count[18]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:14:debounce_keys|count[18]~31_combout\ = (\rst~input_o\ & \inst|row_debounce:14:debounce_keys|result~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst~input_o\,
	datac => \inst|row_debounce:14:debounce_keys|result~4_combout\,
	combout => \inst|row_debounce:14:debounce_keys|count[18]~31_combout\);

-- Location: FF_X21_Y6_N15
\inst|row_debounce:14:debounce_keys|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:14:debounce_keys|count[0]~19_combout\,
	sclr => \inst|row_debounce:14:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:14:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:14:debounce_keys|count\(0));

-- Location: LCCOMB_X21_Y6_N16
\inst|row_debounce:14:debounce_keys|count[1]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:14:debounce_keys|count[1]~21_combout\ = (\inst|row_debounce:14:debounce_keys|count\(1) & (!\inst|row_debounce:14:debounce_keys|count[0]~20\)) # (!\inst|row_debounce:14:debounce_keys|count\(1) & 
-- ((\inst|row_debounce:14:debounce_keys|count[0]~20\) # (GND)))
-- \inst|row_debounce:14:debounce_keys|count[1]~22\ = CARRY((!\inst|row_debounce:14:debounce_keys|count[0]~20\) # (!\inst|row_debounce:14:debounce_keys|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:14:debounce_keys|count\(1),
	datad => VCC,
	cin => \inst|row_debounce:14:debounce_keys|count[0]~20\,
	combout => \inst|row_debounce:14:debounce_keys|count[1]~21_combout\,
	cout => \inst|row_debounce:14:debounce_keys|count[1]~22\);

-- Location: FF_X21_Y6_N17
\inst|row_debounce:14:debounce_keys|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:14:debounce_keys|count[1]~21_combout\,
	sclr => \inst|row_debounce:14:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:14:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:14:debounce_keys|count\(1));

-- Location: LCCOMB_X21_Y6_N18
\inst|row_debounce:14:debounce_keys|count[2]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:14:debounce_keys|count[2]~23_combout\ = (\inst|row_debounce:14:debounce_keys|count\(2) & (\inst|row_debounce:14:debounce_keys|count[1]~22\ $ (GND))) # (!\inst|row_debounce:14:debounce_keys|count\(2) & 
-- (!\inst|row_debounce:14:debounce_keys|count[1]~22\ & VCC))
-- \inst|row_debounce:14:debounce_keys|count[2]~24\ = CARRY((\inst|row_debounce:14:debounce_keys|count\(2) & !\inst|row_debounce:14:debounce_keys|count[1]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:14:debounce_keys|count\(2),
	datad => VCC,
	cin => \inst|row_debounce:14:debounce_keys|count[1]~22\,
	combout => \inst|row_debounce:14:debounce_keys|count[2]~23_combout\,
	cout => \inst|row_debounce:14:debounce_keys|count[2]~24\);

-- Location: FF_X21_Y6_N19
\inst|row_debounce:14:debounce_keys|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:14:debounce_keys|count[2]~23_combout\,
	sclr => \inst|row_debounce:14:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:14:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:14:debounce_keys|count\(2));

-- Location: LCCOMB_X21_Y6_N20
\inst|row_debounce:14:debounce_keys|count[3]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:14:debounce_keys|count[3]~25_combout\ = (\inst|row_debounce:14:debounce_keys|count\(3) & (!\inst|row_debounce:14:debounce_keys|count[2]~24\)) # (!\inst|row_debounce:14:debounce_keys|count\(3) & 
-- ((\inst|row_debounce:14:debounce_keys|count[2]~24\) # (GND)))
-- \inst|row_debounce:14:debounce_keys|count[3]~26\ = CARRY((!\inst|row_debounce:14:debounce_keys|count[2]~24\) # (!\inst|row_debounce:14:debounce_keys|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:14:debounce_keys|count\(3),
	datad => VCC,
	cin => \inst|row_debounce:14:debounce_keys|count[2]~24\,
	combout => \inst|row_debounce:14:debounce_keys|count[3]~25_combout\,
	cout => \inst|row_debounce:14:debounce_keys|count[3]~26\);

-- Location: FF_X21_Y6_N21
\inst|row_debounce:14:debounce_keys|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:14:debounce_keys|count[3]~25_combout\,
	sclr => \inst|row_debounce:14:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:14:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:14:debounce_keys|count\(3));

-- Location: LCCOMB_X21_Y6_N22
\inst|row_debounce:14:debounce_keys|count[4]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:14:debounce_keys|count[4]~27_combout\ = (\inst|row_debounce:14:debounce_keys|count\(4) & (\inst|row_debounce:14:debounce_keys|count[3]~26\ $ (GND))) # (!\inst|row_debounce:14:debounce_keys|count\(4) & 
-- (!\inst|row_debounce:14:debounce_keys|count[3]~26\ & VCC))
-- \inst|row_debounce:14:debounce_keys|count[4]~28\ = CARRY((\inst|row_debounce:14:debounce_keys|count\(4) & !\inst|row_debounce:14:debounce_keys|count[3]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:14:debounce_keys|count\(4),
	datad => VCC,
	cin => \inst|row_debounce:14:debounce_keys|count[3]~26\,
	combout => \inst|row_debounce:14:debounce_keys|count[4]~27_combout\,
	cout => \inst|row_debounce:14:debounce_keys|count[4]~28\);

-- Location: FF_X21_Y6_N23
\inst|row_debounce:14:debounce_keys|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:14:debounce_keys|count[4]~27_combout\,
	sclr => \inst|row_debounce:14:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:14:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:14:debounce_keys|count\(4));

-- Location: LCCOMB_X21_Y6_N24
\inst|row_debounce:14:debounce_keys|count[5]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:14:debounce_keys|count[5]~29_combout\ = (\inst|row_debounce:14:debounce_keys|count\(5) & (!\inst|row_debounce:14:debounce_keys|count[4]~28\)) # (!\inst|row_debounce:14:debounce_keys|count\(5) & 
-- ((\inst|row_debounce:14:debounce_keys|count[4]~28\) # (GND)))
-- \inst|row_debounce:14:debounce_keys|count[5]~30\ = CARRY((!\inst|row_debounce:14:debounce_keys|count[4]~28\) # (!\inst|row_debounce:14:debounce_keys|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:14:debounce_keys|count\(5),
	datad => VCC,
	cin => \inst|row_debounce:14:debounce_keys|count[4]~28\,
	combout => \inst|row_debounce:14:debounce_keys|count[5]~29_combout\,
	cout => \inst|row_debounce:14:debounce_keys|count[5]~30\);

-- Location: FF_X21_Y6_N25
\inst|row_debounce:14:debounce_keys|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:14:debounce_keys|count[5]~29_combout\,
	sclr => \inst|row_debounce:14:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:14:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:14:debounce_keys|count\(5));

-- Location: LCCOMB_X21_Y6_N26
\inst|row_debounce:14:debounce_keys|count[6]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:14:debounce_keys|count[6]~32_combout\ = (\inst|row_debounce:14:debounce_keys|count\(6) & (\inst|row_debounce:14:debounce_keys|count[5]~30\ $ (GND))) # (!\inst|row_debounce:14:debounce_keys|count\(6) & 
-- (!\inst|row_debounce:14:debounce_keys|count[5]~30\ & VCC))
-- \inst|row_debounce:14:debounce_keys|count[6]~33\ = CARRY((\inst|row_debounce:14:debounce_keys|count\(6) & !\inst|row_debounce:14:debounce_keys|count[5]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:14:debounce_keys|count\(6),
	datad => VCC,
	cin => \inst|row_debounce:14:debounce_keys|count[5]~30\,
	combout => \inst|row_debounce:14:debounce_keys|count[6]~32_combout\,
	cout => \inst|row_debounce:14:debounce_keys|count[6]~33\);

-- Location: FF_X21_Y6_N27
\inst|row_debounce:14:debounce_keys|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:14:debounce_keys|count[6]~32_combout\,
	sclr => \inst|row_debounce:14:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:14:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:14:debounce_keys|count\(6));

-- Location: LCCOMB_X21_Y6_N28
\inst|row_debounce:14:debounce_keys|count[7]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:14:debounce_keys|count[7]~34_combout\ = (\inst|row_debounce:14:debounce_keys|count\(7) & (!\inst|row_debounce:14:debounce_keys|count[6]~33\)) # (!\inst|row_debounce:14:debounce_keys|count\(7) & 
-- ((\inst|row_debounce:14:debounce_keys|count[6]~33\) # (GND)))
-- \inst|row_debounce:14:debounce_keys|count[7]~35\ = CARRY((!\inst|row_debounce:14:debounce_keys|count[6]~33\) # (!\inst|row_debounce:14:debounce_keys|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:14:debounce_keys|count\(7),
	datad => VCC,
	cin => \inst|row_debounce:14:debounce_keys|count[6]~33\,
	combout => \inst|row_debounce:14:debounce_keys|count[7]~34_combout\,
	cout => \inst|row_debounce:14:debounce_keys|count[7]~35\);

-- Location: FF_X21_Y6_N29
\inst|row_debounce:14:debounce_keys|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:14:debounce_keys|count[7]~34_combout\,
	sclr => \inst|row_debounce:14:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:14:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:14:debounce_keys|count\(7));

-- Location: LCCOMB_X21_Y6_N30
\inst|row_debounce:14:debounce_keys|count[8]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:14:debounce_keys|count[8]~36_combout\ = (\inst|row_debounce:14:debounce_keys|count\(8) & (\inst|row_debounce:14:debounce_keys|count[7]~35\ $ (GND))) # (!\inst|row_debounce:14:debounce_keys|count\(8) & 
-- (!\inst|row_debounce:14:debounce_keys|count[7]~35\ & VCC))
-- \inst|row_debounce:14:debounce_keys|count[8]~37\ = CARRY((\inst|row_debounce:14:debounce_keys|count\(8) & !\inst|row_debounce:14:debounce_keys|count[7]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:14:debounce_keys|count\(8),
	datad => VCC,
	cin => \inst|row_debounce:14:debounce_keys|count[7]~35\,
	combout => \inst|row_debounce:14:debounce_keys|count[8]~36_combout\,
	cout => \inst|row_debounce:14:debounce_keys|count[8]~37\);

-- Location: FF_X21_Y6_N31
\inst|row_debounce:14:debounce_keys|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:14:debounce_keys|count[8]~36_combout\,
	sclr => \inst|row_debounce:14:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:14:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:14:debounce_keys|count\(8));

-- Location: LCCOMB_X21_Y5_N0
\inst|row_debounce:14:debounce_keys|count[9]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:14:debounce_keys|count[9]~38_combout\ = (\inst|row_debounce:14:debounce_keys|count\(9) & (!\inst|row_debounce:14:debounce_keys|count[8]~37\)) # (!\inst|row_debounce:14:debounce_keys|count\(9) & 
-- ((\inst|row_debounce:14:debounce_keys|count[8]~37\) # (GND)))
-- \inst|row_debounce:14:debounce_keys|count[9]~39\ = CARRY((!\inst|row_debounce:14:debounce_keys|count[8]~37\) # (!\inst|row_debounce:14:debounce_keys|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:14:debounce_keys|count\(9),
	datad => VCC,
	cin => \inst|row_debounce:14:debounce_keys|count[8]~37\,
	combout => \inst|row_debounce:14:debounce_keys|count[9]~38_combout\,
	cout => \inst|row_debounce:14:debounce_keys|count[9]~39\);

-- Location: FF_X21_Y5_N1
\inst|row_debounce:14:debounce_keys|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:14:debounce_keys|count[9]~38_combout\,
	sclr => \inst|row_debounce:14:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:14:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:14:debounce_keys|count\(9));

-- Location: LCCOMB_X21_Y5_N2
\inst|row_debounce:14:debounce_keys|count[10]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:14:debounce_keys|count[10]~40_combout\ = (\inst|row_debounce:14:debounce_keys|count\(10) & (\inst|row_debounce:14:debounce_keys|count[9]~39\ $ (GND))) # (!\inst|row_debounce:14:debounce_keys|count\(10) & 
-- (!\inst|row_debounce:14:debounce_keys|count[9]~39\ & VCC))
-- \inst|row_debounce:14:debounce_keys|count[10]~41\ = CARRY((\inst|row_debounce:14:debounce_keys|count\(10) & !\inst|row_debounce:14:debounce_keys|count[9]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:14:debounce_keys|count\(10),
	datad => VCC,
	cin => \inst|row_debounce:14:debounce_keys|count[9]~39\,
	combout => \inst|row_debounce:14:debounce_keys|count[10]~40_combout\,
	cout => \inst|row_debounce:14:debounce_keys|count[10]~41\);

-- Location: FF_X21_Y5_N3
\inst|row_debounce:14:debounce_keys|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:14:debounce_keys|count[10]~40_combout\,
	sclr => \inst|row_debounce:14:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:14:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:14:debounce_keys|count\(10));

-- Location: LCCOMB_X21_Y5_N4
\inst|row_debounce:14:debounce_keys|count[11]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:14:debounce_keys|count[11]~42_combout\ = (\inst|row_debounce:14:debounce_keys|count\(11) & (!\inst|row_debounce:14:debounce_keys|count[10]~41\)) # (!\inst|row_debounce:14:debounce_keys|count\(11) & 
-- ((\inst|row_debounce:14:debounce_keys|count[10]~41\) # (GND)))
-- \inst|row_debounce:14:debounce_keys|count[11]~43\ = CARRY((!\inst|row_debounce:14:debounce_keys|count[10]~41\) # (!\inst|row_debounce:14:debounce_keys|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:14:debounce_keys|count\(11),
	datad => VCC,
	cin => \inst|row_debounce:14:debounce_keys|count[10]~41\,
	combout => \inst|row_debounce:14:debounce_keys|count[11]~42_combout\,
	cout => \inst|row_debounce:14:debounce_keys|count[11]~43\);

-- Location: FF_X21_Y5_N5
\inst|row_debounce:14:debounce_keys|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:14:debounce_keys|count[11]~42_combout\,
	sclr => \inst|row_debounce:14:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:14:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:14:debounce_keys|count\(11));

-- Location: LCCOMB_X21_Y5_N6
\inst|row_debounce:14:debounce_keys|count[12]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:14:debounce_keys|count[12]~44_combout\ = (\inst|row_debounce:14:debounce_keys|count\(12) & (\inst|row_debounce:14:debounce_keys|count[11]~43\ $ (GND))) # (!\inst|row_debounce:14:debounce_keys|count\(12) & 
-- (!\inst|row_debounce:14:debounce_keys|count[11]~43\ & VCC))
-- \inst|row_debounce:14:debounce_keys|count[12]~45\ = CARRY((\inst|row_debounce:14:debounce_keys|count\(12) & !\inst|row_debounce:14:debounce_keys|count[11]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:14:debounce_keys|count\(12),
	datad => VCC,
	cin => \inst|row_debounce:14:debounce_keys|count[11]~43\,
	combout => \inst|row_debounce:14:debounce_keys|count[12]~44_combout\,
	cout => \inst|row_debounce:14:debounce_keys|count[12]~45\);

-- Location: FF_X21_Y5_N7
\inst|row_debounce:14:debounce_keys|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:14:debounce_keys|count[12]~44_combout\,
	sclr => \inst|row_debounce:14:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:14:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:14:debounce_keys|count\(12));

-- Location: LCCOMB_X21_Y5_N8
\inst|row_debounce:14:debounce_keys|count[13]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:14:debounce_keys|count[13]~46_combout\ = (\inst|row_debounce:14:debounce_keys|count\(13) & (!\inst|row_debounce:14:debounce_keys|count[12]~45\)) # (!\inst|row_debounce:14:debounce_keys|count\(13) & 
-- ((\inst|row_debounce:14:debounce_keys|count[12]~45\) # (GND)))
-- \inst|row_debounce:14:debounce_keys|count[13]~47\ = CARRY((!\inst|row_debounce:14:debounce_keys|count[12]~45\) # (!\inst|row_debounce:14:debounce_keys|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:14:debounce_keys|count\(13),
	datad => VCC,
	cin => \inst|row_debounce:14:debounce_keys|count[12]~45\,
	combout => \inst|row_debounce:14:debounce_keys|count[13]~46_combout\,
	cout => \inst|row_debounce:14:debounce_keys|count[13]~47\);

-- Location: FF_X21_Y5_N9
\inst|row_debounce:14:debounce_keys|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:14:debounce_keys|count[13]~46_combout\,
	sclr => \inst|row_debounce:14:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:14:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:14:debounce_keys|count\(13));

-- Location: LCCOMB_X21_Y5_N10
\inst|row_debounce:14:debounce_keys|count[14]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:14:debounce_keys|count[14]~48_combout\ = (\inst|row_debounce:14:debounce_keys|count\(14) & (\inst|row_debounce:14:debounce_keys|count[13]~47\ $ (GND))) # (!\inst|row_debounce:14:debounce_keys|count\(14) & 
-- (!\inst|row_debounce:14:debounce_keys|count[13]~47\ & VCC))
-- \inst|row_debounce:14:debounce_keys|count[14]~49\ = CARRY((\inst|row_debounce:14:debounce_keys|count\(14) & !\inst|row_debounce:14:debounce_keys|count[13]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:14:debounce_keys|count\(14),
	datad => VCC,
	cin => \inst|row_debounce:14:debounce_keys|count[13]~47\,
	combout => \inst|row_debounce:14:debounce_keys|count[14]~48_combout\,
	cout => \inst|row_debounce:14:debounce_keys|count[14]~49\);

-- Location: FF_X21_Y5_N11
\inst|row_debounce:14:debounce_keys|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:14:debounce_keys|count[14]~48_combout\,
	sclr => \inst|row_debounce:14:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:14:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:14:debounce_keys|count\(14));

-- Location: LCCOMB_X21_Y5_N12
\inst|row_debounce:14:debounce_keys|count[15]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:14:debounce_keys|count[15]~50_combout\ = (\inst|row_debounce:14:debounce_keys|count\(15) & (!\inst|row_debounce:14:debounce_keys|count[14]~49\)) # (!\inst|row_debounce:14:debounce_keys|count\(15) & 
-- ((\inst|row_debounce:14:debounce_keys|count[14]~49\) # (GND)))
-- \inst|row_debounce:14:debounce_keys|count[15]~51\ = CARRY((!\inst|row_debounce:14:debounce_keys|count[14]~49\) # (!\inst|row_debounce:14:debounce_keys|count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:14:debounce_keys|count\(15),
	datad => VCC,
	cin => \inst|row_debounce:14:debounce_keys|count[14]~49\,
	combout => \inst|row_debounce:14:debounce_keys|count[15]~50_combout\,
	cout => \inst|row_debounce:14:debounce_keys|count[15]~51\);

-- Location: FF_X21_Y5_N13
\inst|row_debounce:14:debounce_keys|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:14:debounce_keys|count[15]~50_combout\,
	sclr => \inst|row_debounce:14:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:14:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:14:debounce_keys|count\(15));

-- Location: LCCOMB_X21_Y5_N14
\inst|row_debounce:14:debounce_keys|count[16]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:14:debounce_keys|count[16]~52_combout\ = (\inst|row_debounce:14:debounce_keys|count\(16) & (\inst|row_debounce:14:debounce_keys|count[15]~51\ $ (GND))) # (!\inst|row_debounce:14:debounce_keys|count\(16) & 
-- (!\inst|row_debounce:14:debounce_keys|count[15]~51\ & VCC))
-- \inst|row_debounce:14:debounce_keys|count[16]~53\ = CARRY((\inst|row_debounce:14:debounce_keys|count\(16) & !\inst|row_debounce:14:debounce_keys|count[15]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:14:debounce_keys|count\(16),
	datad => VCC,
	cin => \inst|row_debounce:14:debounce_keys|count[15]~51\,
	combout => \inst|row_debounce:14:debounce_keys|count[16]~52_combout\,
	cout => \inst|row_debounce:14:debounce_keys|count[16]~53\);

-- Location: FF_X21_Y5_N15
\inst|row_debounce:14:debounce_keys|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:14:debounce_keys|count[16]~52_combout\,
	sclr => \inst|row_debounce:14:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:14:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:14:debounce_keys|count\(16));

-- Location: LCCOMB_X21_Y5_N24
\inst|row_debounce:14:debounce_keys|result~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:14:debounce_keys|result~3_combout\ = ((\inst|row_debounce:14:debounce_keys|flipflops\(0) $ (\inst|row_debounce:14:debounce_keys|flipflops\(1))) # (!\inst|row_debounce:14:debounce_keys|count\(15))) # 
-- (!\inst|row_debounce:14:debounce_keys|count\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:14:debounce_keys|flipflops\(0),
	datab => \inst|row_debounce:14:debounce_keys|flipflops\(1),
	datac => \inst|row_debounce:14:debounce_keys|count\(16),
	datad => \inst|row_debounce:14:debounce_keys|count\(15),
	combout => \inst|row_debounce:14:debounce_keys|result~3_combout\);

-- Location: LCCOMB_X21_Y5_N16
\inst|row_debounce:14:debounce_keys|count[17]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:14:debounce_keys|count[17]~54_combout\ = (\inst|row_debounce:14:debounce_keys|count\(17) & (!\inst|row_debounce:14:debounce_keys|count[16]~53\)) # (!\inst|row_debounce:14:debounce_keys|count\(17) & 
-- ((\inst|row_debounce:14:debounce_keys|count[16]~53\) # (GND)))
-- \inst|row_debounce:14:debounce_keys|count[17]~55\ = CARRY((!\inst|row_debounce:14:debounce_keys|count[16]~53\) # (!\inst|row_debounce:14:debounce_keys|count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:14:debounce_keys|count\(17),
	datad => VCC,
	cin => \inst|row_debounce:14:debounce_keys|count[16]~53\,
	combout => \inst|row_debounce:14:debounce_keys|count[17]~54_combout\,
	cout => \inst|row_debounce:14:debounce_keys|count[17]~55\);

-- Location: FF_X21_Y5_N17
\inst|row_debounce:14:debounce_keys|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:14:debounce_keys|count[17]~54_combout\,
	sclr => \inst|row_debounce:14:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:14:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:14:debounce_keys|count\(17));

-- Location: LCCOMB_X21_Y5_N18
\inst|row_debounce:14:debounce_keys|count[18]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:14:debounce_keys|count[18]~56_combout\ = \inst|row_debounce:14:debounce_keys|count[17]~55\ $ (!\inst|row_debounce:14:debounce_keys|count\(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|row_debounce:14:debounce_keys|count\(18),
	cin => \inst|row_debounce:14:debounce_keys|count[17]~55\,
	combout => \inst|row_debounce:14:debounce_keys|count[18]~56_combout\);

-- Location: FF_X21_Y5_N19
\inst|row_debounce:14:debounce_keys|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:14:debounce_keys|count[18]~56_combout\,
	sclr => \inst|row_debounce:14:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:14:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:14:debounce_keys|count\(18));

-- Location: LCCOMB_X21_Y5_N28
\inst|row_debounce:14:debounce_keys|result~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:14:debounce_keys|result~1_combout\ = (!\inst|row_debounce:14:debounce_keys|count\(12) & (!\inst|row_debounce:14:debounce_keys|count\(10) & (!\inst|row_debounce:14:debounce_keys|count\(11) & 
-- !\inst|row_debounce:14:debounce_keys|count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:14:debounce_keys|count\(12),
	datab => \inst|row_debounce:14:debounce_keys|count\(10),
	datac => \inst|row_debounce:14:debounce_keys|count\(11),
	datad => \inst|row_debounce:14:debounce_keys|count\(9),
	combout => \inst|row_debounce:14:debounce_keys|result~1_combout\);

-- Location: LCCOMB_X21_Y6_N8
\inst|row_debounce:14:debounce_keys|result~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:14:debounce_keys|result~0_combout\ = ((!\inst|row_debounce:14:debounce_keys|count\(7) & (!\inst|row_debounce:14:debounce_keys|count\(6) & !\inst|row_debounce:14:debounce_keys|count\(5)))) # 
-- (!\inst|row_debounce:14:debounce_keys|count\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:14:debounce_keys|count\(8),
	datab => \inst|row_debounce:14:debounce_keys|count\(7),
	datac => \inst|row_debounce:14:debounce_keys|count\(6),
	datad => \inst|row_debounce:14:debounce_keys|count\(5),
	combout => \inst|row_debounce:14:debounce_keys|result~0_combout\);

-- Location: LCCOMB_X21_Y5_N30
\inst|row_debounce:14:debounce_keys|result~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:14:debounce_keys|result~2_combout\ = (!\inst|row_debounce:14:debounce_keys|count\(14) & (((\inst|row_debounce:14:debounce_keys|result~1_combout\ & \inst|row_debounce:14:debounce_keys|result~0_combout\)) # 
-- (!\inst|row_debounce:14:debounce_keys|count\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:14:debounce_keys|count\(14),
	datab => \inst|row_debounce:14:debounce_keys|result~1_combout\,
	datac => \inst|row_debounce:14:debounce_keys|count\(13),
	datad => \inst|row_debounce:14:debounce_keys|result~0_combout\,
	combout => \inst|row_debounce:14:debounce_keys|result~2_combout\);

-- Location: LCCOMB_X21_Y5_N22
\inst|row_debounce:14:debounce_keys|result~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:14:debounce_keys|result~4_combout\ = (\inst|row_debounce:14:debounce_keys|result~3_combout\) # (((\inst|row_debounce:14:debounce_keys|result~2_combout\) # (!\inst|row_debounce:14:debounce_keys|count\(17))) # 
-- (!\inst|row_debounce:14:debounce_keys|count\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:14:debounce_keys|result~3_combout\,
	datab => \inst|row_debounce:14:debounce_keys|count\(18),
	datac => \inst|row_debounce:14:debounce_keys|result~2_combout\,
	datad => \inst|row_debounce:14:debounce_keys|count\(17),
	combout => \inst|row_debounce:14:debounce_keys|result~4_combout\);

-- Location: LCCOMB_X22_Y7_N16
\inst|row_debounce:14:debounce_keys|result~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:14:debounce_keys|result~5_combout\ = (\inst|row_debounce:14:debounce_keys|result~4_combout\ & (\inst|row_debounce:14:debounce_keys|result~q\)) # (!\inst|row_debounce:14:debounce_keys|result~4_combout\ & 
-- ((\inst|row_debounce:14:debounce_keys|flipflops\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:14:debounce_keys|result~q\,
	datac => \inst|row_debounce:14:debounce_keys|result~4_combout\,
	datad => \inst|row_debounce:14:debounce_keys|flipflops\(1),
	combout => \inst|row_debounce:14:debounce_keys|result~5_combout\);

-- Location: FF_X23_Y7_N7
\inst|row_debounce:14:debounce_keys|result\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|row_debounce:14:debounce_keys|result~5_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:14:debounce_keys|result~q\);

-- Location: LCCOMB_X24_Y12_N18
\inst|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux0~0_combout\ = (\inst|keys_int\(0) & ((\inst|LessThan1~1_combout\) # ((\inst|Mux14~0_combout\)))) # (!\inst|keys_int\(0) & (\inst|keys_double\(0) & ((\inst|LessThan1~1_combout\) # (\inst|Mux14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|keys_int\(0),
	datab => \inst|LessThan1~1_combout\,
	datac => \inst|keys_double\(0),
	datad => \inst|Mux14~0_combout\,
	combout => \inst|Mux0~0_combout\);

-- Location: FF_X24_Y12_N19
\inst|keys_stored[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Mux0~0_combout\,
	ena => \inst|keys_stored[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|keys_stored\(0));

-- Location: LCCOMB_X24_Y4_N22
\inst|row_debounce:0:debounce_keys|flipflops[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:0:debounce_keys|flipflops[0]~feeder_combout\ = \inst|keys_stored\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|keys_stored\(0),
	combout => \inst|row_debounce:0:debounce_keys|flipflops[0]~feeder_combout\);

-- Location: FF_X24_Y4_N23
\inst|row_debounce:0:debounce_keys|flipflops[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:0:debounce_keys|flipflops[0]~feeder_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:0:debounce_keys|flipflops\(0));

-- Location: LCCOMB_X29_Y4_N4
\inst|row_debounce:0:debounce_keys|flipflops[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:0:debounce_keys|flipflops[1]~feeder_combout\ = \inst|row_debounce:0:debounce_keys|flipflops\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|row_debounce:0:debounce_keys|flipflops\(0),
	combout => \inst|row_debounce:0:debounce_keys|flipflops[1]~feeder_combout\);

-- Location: FF_X29_Y4_N5
\inst|row_debounce:0:debounce_keys|flipflops[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:0:debounce_keys|flipflops[1]~feeder_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:0:debounce_keys|flipflops\(1));

-- Location: LCCOMB_X30_Y5_N14
\inst|row_debounce:0:debounce_keys|count[0]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:0:debounce_keys|count[0]~19_combout\ = \inst|row_debounce:0:debounce_keys|count\(0) $ (VCC)
-- \inst|row_debounce:0:debounce_keys|count[0]~20\ = CARRY(\inst|row_debounce:0:debounce_keys|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:0:debounce_keys|count\(0),
	datad => VCC,
	combout => \inst|row_debounce:0:debounce_keys|count[0]~19_combout\,
	cout => \inst|row_debounce:0:debounce_keys|count[0]~20\);

-- Location: LCCOMB_X29_Y4_N0
\inst|row_debounce:0:debounce_keys|counter_set\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:0:debounce_keys|counter_set~combout\ = \inst|row_debounce:0:debounce_keys|flipflops\(1) $ (\inst|row_debounce:0:debounce_keys|flipflops\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|row_debounce:0:debounce_keys|flipflops\(1),
	datad => \inst|row_debounce:0:debounce_keys|flipflops\(0),
	combout => \inst|row_debounce:0:debounce_keys|counter_set~combout\);

-- Location: LCCOMB_X30_Y4_N22
\inst|row_debounce:0:debounce_keys|count[18]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:0:debounce_keys|count[18]~31_combout\ = (\rst~input_o\ & \inst|row_debounce:0:debounce_keys|result~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rst~input_o\,
	datad => \inst|row_debounce:0:debounce_keys|result~4_combout\,
	combout => \inst|row_debounce:0:debounce_keys|count[18]~31_combout\);

-- Location: FF_X30_Y5_N15
\inst|row_debounce:0:debounce_keys|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:0:debounce_keys|count[0]~19_combout\,
	sclr => \inst|row_debounce:0:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:0:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:0:debounce_keys|count\(0));

-- Location: LCCOMB_X30_Y5_N16
\inst|row_debounce:0:debounce_keys|count[1]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:0:debounce_keys|count[1]~21_combout\ = (\inst|row_debounce:0:debounce_keys|count\(1) & (!\inst|row_debounce:0:debounce_keys|count[0]~20\)) # (!\inst|row_debounce:0:debounce_keys|count\(1) & 
-- ((\inst|row_debounce:0:debounce_keys|count[0]~20\) # (GND)))
-- \inst|row_debounce:0:debounce_keys|count[1]~22\ = CARRY((!\inst|row_debounce:0:debounce_keys|count[0]~20\) # (!\inst|row_debounce:0:debounce_keys|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:0:debounce_keys|count\(1),
	datad => VCC,
	cin => \inst|row_debounce:0:debounce_keys|count[0]~20\,
	combout => \inst|row_debounce:0:debounce_keys|count[1]~21_combout\,
	cout => \inst|row_debounce:0:debounce_keys|count[1]~22\);

-- Location: FF_X30_Y5_N17
\inst|row_debounce:0:debounce_keys|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:0:debounce_keys|count[1]~21_combout\,
	sclr => \inst|row_debounce:0:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:0:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:0:debounce_keys|count\(1));

-- Location: LCCOMB_X30_Y5_N18
\inst|row_debounce:0:debounce_keys|count[2]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:0:debounce_keys|count[2]~23_combout\ = (\inst|row_debounce:0:debounce_keys|count\(2) & (\inst|row_debounce:0:debounce_keys|count[1]~22\ $ (GND))) # (!\inst|row_debounce:0:debounce_keys|count\(2) & 
-- (!\inst|row_debounce:0:debounce_keys|count[1]~22\ & VCC))
-- \inst|row_debounce:0:debounce_keys|count[2]~24\ = CARRY((\inst|row_debounce:0:debounce_keys|count\(2) & !\inst|row_debounce:0:debounce_keys|count[1]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:0:debounce_keys|count\(2),
	datad => VCC,
	cin => \inst|row_debounce:0:debounce_keys|count[1]~22\,
	combout => \inst|row_debounce:0:debounce_keys|count[2]~23_combout\,
	cout => \inst|row_debounce:0:debounce_keys|count[2]~24\);

-- Location: FF_X30_Y5_N19
\inst|row_debounce:0:debounce_keys|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:0:debounce_keys|count[2]~23_combout\,
	sclr => \inst|row_debounce:0:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:0:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:0:debounce_keys|count\(2));

-- Location: LCCOMB_X30_Y5_N20
\inst|row_debounce:0:debounce_keys|count[3]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:0:debounce_keys|count[3]~25_combout\ = (\inst|row_debounce:0:debounce_keys|count\(3) & (!\inst|row_debounce:0:debounce_keys|count[2]~24\)) # (!\inst|row_debounce:0:debounce_keys|count\(3) & 
-- ((\inst|row_debounce:0:debounce_keys|count[2]~24\) # (GND)))
-- \inst|row_debounce:0:debounce_keys|count[3]~26\ = CARRY((!\inst|row_debounce:0:debounce_keys|count[2]~24\) # (!\inst|row_debounce:0:debounce_keys|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:0:debounce_keys|count\(3),
	datad => VCC,
	cin => \inst|row_debounce:0:debounce_keys|count[2]~24\,
	combout => \inst|row_debounce:0:debounce_keys|count[3]~25_combout\,
	cout => \inst|row_debounce:0:debounce_keys|count[3]~26\);

-- Location: FF_X30_Y5_N21
\inst|row_debounce:0:debounce_keys|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:0:debounce_keys|count[3]~25_combout\,
	sclr => \inst|row_debounce:0:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:0:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:0:debounce_keys|count\(3));

-- Location: LCCOMB_X30_Y5_N22
\inst|row_debounce:0:debounce_keys|count[4]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:0:debounce_keys|count[4]~27_combout\ = (\inst|row_debounce:0:debounce_keys|count\(4) & (\inst|row_debounce:0:debounce_keys|count[3]~26\ $ (GND))) # (!\inst|row_debounce:0:debounce_keys|count\(4) & 
-- (!\inst|row_debounce:0:debounce_keys|count[3]~26\ & VCC))
-- \inst|row_debounce:0:debounce_keys|count[4]~28\ = CARRY((\inst|row_debounce:0:debounce_keys|count\(4) & !\inst|row_debounce:0:debounce_keys|count[3]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:0:debounce_keys|count\(4),
	datad => VCC,
	cin => \inst|row_debounce:0:debounce_keys|count[3]~26\,
	combout => \inst|row_debounce:0:debounce_keys|count[4]~27_combout\,
	cout => \inst|row_debounce:0:debounce_keys|count[4]~28\);

-- Location: FF_X30_Y5_N23
\inst|row_debounce:0:debounce_keys|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:0:debounce_keys|count[4]~27_combout\,
	sclr => \inst|row_debounce:0:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:0:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:0:debounce_keys|count\(4));

-- Location: LCCOMB_X30_Y5_N24
\inst|row_debounce:0:debounce_keys|count[5]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:0:debounce_keys|count[5]~29_combout\ = (\inst|row_debounce:0:debounce_keys|count\(5) & (!\inst|row_debounce:0:debounce_keys|count[4]~28\)) # (!\inst|row_debounce:0:debounce_keys|count\(5) & 
-- ((\inst|row_debounce:0:debounce_keys|count[4]~28\) # (GND)))
-- \inst|row_debounce:0:debounce_keys|count[5]~30\ = CARRY((!\inst|row_debounce:0:debounce_keys|count[4]~28\) # (!\inst|row_debounce:0:debounce_keys|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:0:debounce_keys|count\(5),
	datad => VCC,
	cin => \inst|row_debounce:0:debounce_keys|count[4]~28\,
	combout => \inst|row_debounce:0:debounce_keys|count[5]~29_combout\,
	cout => \inst|row_debounce:0:debounce_keys|count[5]~30\);

-- Location: FF_X30_Y5_N25
\inst|row_debounce:0:debounce_keys|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:0:debounce_keys|count[5]~29_combout\,
	sclr => \inst|row_debounce:0:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:0:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:0:debounce_keys|count\(5));

-- Location: LCCOMB_X30_Y5_N26
\inst|row_debounce:0:debounce_keys|count[6]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:0:debounce_keys|count[6]~32_combout\ = (\inst|row_debounce:0:debounce_keys|count\(6) & (\inst|row_debounce:0:debounce_keys|count[5]~30\ $ (GND))) # (!\inst|row_debounce:0:debounce_keys|count\(6) & 
-- (!\inst|row_debounce:0:debounce_keys|count[5]~30\ & VCC))
-- \inst|row_debounce:0:debounce_keys|count[6]~33\ = CARRY((\inst|row_debounce:0:debounce_keys|count\(6) & !\inst|row_debounce:0:debounce_keys|count[5]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:0:debounce_keys|count\(6),
	datad => VCC,
	cin => \inst|row_debounce:0:debounce_keys|count[5]~30\,
	combout => \inst|row_debounce:0:debounce_keys|count[6]~32_combout\,
	cout => \inst|row_debounce:0:debounce_keys|count[6]~33\);

-- Location: FF_X30_Y5_N27
\inst|row_debounce:0:debounce_keys|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:0:debounce_keys|count[6]~32_combout\,
	sclr => \inst|row_debounce:0:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:0:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:0:debounce_keys|count\(6));

-- Location: LCCOMB_X30_Y5_N28
\inst|row_debounce:0:debounce_keys|count[7]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:0:debounce_keys|count[7]~34_combout\ = (\inst|row_debounce:0:debounce_keys|count\(7) & (!\inst|row_debounce:0:debounce_keys|count[6]~33\)) # (!\inst|row_debounce:0:debounce_keys|count\(7) & 
-- ((\inst|row_debounce:0:debounce_keys|count[6]~33\) # (GND)))
-- \inst|row_debounce:0:debounce_keys|count[7]~35\ = CARRY((!\inst|row_debounce:0:debounce_keys|count[6]~33\) # (!\inst|row_debounce:0:debounce_keys|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:0:debounce_keys|count\(7),
	datad => VCC,
	cin => \inst|row_debounce:0:debounce_keys|count[6]~33\,
	combout => \inst|row_debounce:0:debounce_keys|count[7]~34_combout\,
	cout => \inst|row_debounce:0:debounce_keys|count[7]~35\);

-- Location: FF_X30_Y5_N29
\inst|row_debounce:0:debounce_keys|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:0:debounce_keys|count[7]~34_combout\,
	sclr => \inst|row_debounce:0:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:0:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:0:debounce_keys|count\(7));

-- Location: LCCOMB_X30_Y5_N30
\inst|row_debounce:0:debounce_keys|count[8]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:0:debounce_keys|count[8]~36_combout\ = (\inst|row_debounce:0:debounce_keys|count\(8) & (\inst|row_debounce:0:debounce_keys|count[7]~35\ $ (GND))) # (!\inst|row_debounce:0:debounce_keys|count\(8) & 
-- (!\inst|row_debounce:0:debounce_keys|count[7]~35\ & VCC))
-- \inst|row_debounce:0:debounce_keys|count[8]~37\ = CARRY((\inst|row_debounce:0:debounce_keys|count\(8) & !\inst|row_debounce:0:debounce_keys|count[7]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:0:debounce_keys|count\(8),
	datad => VCC,
	cin => \inst|row_debounce:0:debounce_keys|count[7]~35\,
	combout => \inst|row_debounce:0:debounce_keys|count[8]~36_combout\,
	cout => \inst|row_debounce:0:debounce_keys|count[8]~37\);

-- Location: FF_X30_Y5_N31
\inst|row_debounce:0:debounce_keys|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:0:debounce_keys|count[8]~36_combout\,
	sclr => \inst|row_debounce:0:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:0:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:0:debounce_keys|count\(8));

-- Location: LCCOMB_X30_Y4_N0
\inst|row_debounce:0:debounce_keys|count[9]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:0:debounce_keys|count[9]~38_combout\ = (\inst|row_debounce:0:debounce_keys|count\(9) & (!\inst|row_debounce:0:debounce_keys|count[8]~37\)) # (!\inst|row_debounce:0:debounce_keys|count\(9) & 
-- ((\inst|row_debounce:0:debounce_keys|count[8]~37\) # (GND)))
-- \inst|row_debounce:0:debounce_keys|count[9]~39\ = CARRY((!\inst|row_debounce:0:debounce_keys|count[8]~37\) # (!\inst|row_debounce:0:debounce_keys|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:0:debounce_keys|count\(9),
	datad => VCC,
	cin => \inst|row_debounce:0:debounce_keys|count[8]~37\,
	combout => \inst|row_debounce:0:debounce_keys|count[9]~38_combout\,
	cout => \inst|row_debounce:0:debounce_keys|count[9]~39\);

-- Location: FF_X30_Y4_N1
\inst|row_debounce:0:debounce_keys|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:0:debounce_keys|count[9]~38_combout\,
	sclr => \inst|row_debounce:0:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:0:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:0:debounce_keys|count\(9));

-- Location: LCCOMB_X30_Y4_N2
\inst|row_debounce:0:debounce_keys|count[10]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:0:debounce_keys|count[10]~40_combout\ = (\inst|row_debounce:0:debounce_keys|count\(10) & (\inst|row_debounce:0:debounce_keys|count[9]~39\ $ (GND))) # (!\inst|row_debounce:0:debounce_keys|count\(10) & 
-- (!\inst|row_debounce:0:debounce_keys|count[9]~39\ & VCC))
-- \inst|row_debounce:0:debounce_keys|count[10]~41\ = CARRY((\inst|row_debounce:0:debounce_keys|count\(10) & !\inst|row_debounce:0:debounce_keys|count[9]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:0:debounce_keys|count\(10),
	datad => VCC,
	cin => \inst|row_debounce:0:debounce_keys|count[9]~39\,
	combout => \inst|row_debounce:0:debounce_keys|count[10]~40_combout\,
	cout => \inst|row_debounce:0:debounce_keys|count[10]~41\);

-- Location: FF_X30_Y4_N3
\inst|row_debounce:0:debounce_keys|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:0:debounce_keys|count[10]~40_combout\,
	sclr => \inst|row_debounce:0:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:0:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:0:debounce_keys|count\(10));

-- Location: LCCOMB_X30_Y4_N4
\inst|row_debounce:0:debounce_keys|count[11]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:0:debounce_keys|count[11]~42_combout\ = (\inst|row_debounce:0:debounce_keys|count\(11) & (!\inst|row_debounce:0:debounce_keys|count[10]~41\)) # (!\inst|row_debounce:0:debounce_keys|count\(11) & 
-- ((\inst|row_debounce:0:debounce_keys|count[10]~41\) # (GND)))
-- \inst|row_debounce:0:debounce_keys|count[11]~43\ = CARRY((!\inst|row_debounce:0:debounce_keys|count[10]~41\) # (!\inst|row_debounce:0:debounce_keys|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:0:debounce_keys|count\(11),
	datad => VCC,
	cin => \inst|row_debounce:0:debounce_keys|count[10]~41\,
	combout => \inst|row_debounce:0:debounce_keys|count[11]~42_combout\,
	cout => \inst|row_debounce:0:debounce_keys|count[11]~43\);

-- Location: FF_X30_Y4_N5
\inst|row_debounce:0:debounce_keys|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:0:debounce_keys|count[11]~42_combout\,
	sclr => \inst|row_debounce:0:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:0:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:0:debounce_keys|count\(11));

-- Location: LCCOMB_X30_Y4_N6
\inst|row_debounce:0:debounce_keys|count[12]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:0:debounce_keys|count[12]~44_combout\ = (\inst|row_debounce:0:debounce_keys|count\(12) & (\inst|row_debounce:0:debounce_keys|count[11]~43\ $ (GND))) # (!\inst|row_debounce:0:debounce_keys|count\(12) & 
-- (!\inst|row_debounce:0:debounce_keys|count[11]~43\ & VCC))
-- \inst|row_debounce:0:debounce_keys|count[12]~45\ = CARRY((\inst|row_debounce:0:debounce_keys|count\(12) & !\inst|row_debounce:0:debounce_keys|count[11]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:0:debounce_keys|count\(12),
	datad => VCC,
	cin => \inst|row_debounce:0:debounce_keys|count[11]~43\,
	combout => \inst|row_debounce:0:debounce_keys|count[12]~44_combout\,
	cout => \inst|row_debounce:0:debounce_keys|count[12]~45\);

-- Location: FF_X30_Y4_N7
\inst|row_debounce:0:debounce_keys|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:0:debounce_keys|count[12]~44_combout\,
	sclr => \inst|row_debounce:0:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:0:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:0:debounce_keys|count\(12));

-- Location: LCCOMB_X30_Y4_N8
\inst|row_debounce:0:debounce_keys|count[13]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:0:debounce_keys|count[13]~46_combout\ = (\inst|row_debounce:0:debounce_keys|count\(13) & (!\inst|row_debounce:0:debounce_keys|count[12]~45\)) # (!\inst|row_debounce:0:debounce_keys|count\(13) & 
-- ((\inst|row_debounce:0:debounce_keys|count[12]~45\) # (GND)))
-- \inst|row_debounce:0:debounce_keys|count[13]~47\ = CARRY((!\inst|row_debounce:0:debounce_keys|count[12]~45\) # (!\inst|row_debounce:0:debounce_keys|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:0:debounce_keys|count\(13),
	datad => VCC,
	cin => \inst|row_debounce:0:debounce_keys|count[12]~45\,
	combout => \inst|row_debounce:0:debounce_keys|count[13]~46_combout\,
	cout => \inst|row_debounce:0:debounce_keys|count[13]~47\);

-- Location: FF_X30_Y4_N9
\inst|row_debounce:0:debounce_keys|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:0:debounce_keys|count[13]~46_combout\,
	sclr => \inst|row_debounce:0:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:0:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:0:debounce_keys|count\(13));

-- Location: LCCOMB_X30_Y4_N10
\inst|row_debounce:0:debounce_keys|count[14]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:0:debounce_keys|count[14]~48_combout\ = (\inst|row_debounce:0:debounce_keys|count\(14) & (\inst|row_debounce:0:debounce_keys|count[13]~47\ $ (GND))) # (!\inst|row_debounce:0:debounce_keys|count\(14) & 
-- (!\inst|row_debounce:0:debounce_keys|count[13]~47\ & VCC))
-- \inst|row_debounce:0:debounce_keys|count[14]~49\ = CARRY((\inst|row_debounce:0:debounce_keys|count\(14) & !\inst|row_debounce:0:debounce_keys|count[13]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:0:debounce_keys|count\(14),
	datad => VCC,
	cin => \inst|row_debounce:0:debounce_keys|count[13]~47\,
	combout => \inst|row_debounce:0:debounce_keys|count[14]~48_combout\,
	cout => \inst|row_debounce:0:debounce_keys|count[14]~49\);

-- Location: FF_X30_Y4_N11
\inst|row_debounce:0:debounce_keys|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:0:debounce_keys|count[14]~48_combout\,
	sclr => \inst|row_debounce:0:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:0:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:0:debounce_keys|count\(14));

-- Location: LCCOMB_X30_Y4_N12
\inst|row_debounce:0:debounce_keys|count[15]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:0:debounce_keys|count[15]~50_combout\ = (\inst|row_debounce:0:debounce_keys|count\(15) & (!\inst|row_debounce:0:debounce_keys|count[14]~49\)) # (!\inst|row_debounce:0:debounce_keys|count\(15) & 
-- ((\inst|row_debounce:0:debounce_keys|count[14]~49\) # (GND)))
-- \inst|row_debounce:0:debounce_keys|count[15]~51\ = CARRY((!\inst|row_debounce:0:debounce_keys|count[14]~49\) # (!\inst|row_debounce:0:debounce_keys|count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:0:debounce_keys|count\(15),
	datad => VCC,
	cin => \inst|row_debounce:0:debounce_keys|count[14]~49\,
	combout => \inst|row_debounce:0:debounce_keys|count[15]~50_combout\,
	cout => \inst|row_debounce:0:debounce_keys|count[15]~51\);

-- Location: FF_X30_Y4_N13
\inst|row_debounce:0:debounce_keys|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:0:debounce_keys|count[15]~50_combout\,
	sclr => \inst|row_debounce:0:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:0:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:0:debounce_keys|count\(15));

-- Location: LCCOMB_X30_Y4_N14
\inst|row_debounce:0:debounce_keys|count[16]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:0:debounce_keys|count[16]~52_combout\ = (\inst|row_debounce:0:debounce_keys|count\(16) & (\inst|row_debounce:0:debounce_keys|count[15]~51\ $ (GND))) # (!\inst|row_debounce:0:debounce_keys|count\(16) & 
-- (!\inst|row_debounce:0:debounce_keys|count[15]~51\ & VCC))
-- \inst|row_debounce:0:debounce_keys|count[16]~53\ = CARRY((\inst|row_debounce:0:debounce_keys|count\(16) & !\inst|row_debounce:0:debounce_keys|count[15]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:0:debounce_keys|count\(16),
	datad => VCC,
	cin => \inst|row_debounce:0:debounce_keys|count[15]~51\,
	combout => \inst|row_debounce:0:debounce_keys|count[16]~52_combout\,
	cout => \inst|row_debounce:0:debounce_keys|count[16]~53\);

-- Location: FF_X30_Y4_N15
\inst|row_debounce:0:debounce_keys|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:0:debounce_keys|count[16]~52_combout\,
	sclr => \inst|row_debounce:0:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:0:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:0:debounce_keys|count\(16));

-- Location: LCCOMB_X29_Y4_N26
\inst|row_debounce:0:debounce_keys|result~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:0:debounce_keys|result~3_combout\ = ((\inst|row_debounce:0:debounce_keys|flipflops\(1) $ (\inst|row_debounce:0:debounce_keys|flipflops\(0))) # (!\inst|row_debounce:0:debounce_keys|count\(15))) # 
-- (!\inst|row_debounce:0:debounce_keys|count\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:0:debounce_keys|flipflops\(1),
	datab => \inst|row_debounce:0:debounce_keys|count\(16),
	datac => \inst|row_debounce:0:debounce_keys|count\(15),
	datad => \inst|row_debounce:0:debounce_keys|flipflops\(0),
	combout => \inst|row_debounce:0:debounce_keys|result~3_combout\);

-- Location: LCCOMB_X30_Y4_N16
\inst|row_debounce:0:debounce_keys|count[17]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:0:debounce_keys|count[17]~54_combout\ = (\inst|row_debounce:0:debounce_keys|count\(17) & (!\inst|row_debounce:0:debounce_keys|count[16]~53\)) # (!\inst|row_debounce:0:debounce_keys|count\(17) & 
-- ((\inst|row_debounce:0:debounce_keys|count[16]~53\) # (GND)))
-- \inst|row_debounce:0:debounce_keys|count[17]~55\ = CARRY((!\inst|row_debounce:0:debounce_keys|count[16]~53\) # (!\inst|row_debounce:0:debounce_keys|count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:0:debounce_keys|count\(17),
	datad => VCC,
	cin => \inst|row_debounce:0:debounce_keys|count[16]~53\,
	combout => \inst|row_debounce:0:debounce_keys|count[17]~54_combout\,
	cout => \inst|row_debounce:0:debounce_keys|count[17]~55\);

-- Location: FF_X30_Y4_N17
\inst|row_debounce:0:debounce_keys|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:0:debounce_keys|count[17]~54_combout\,
	sclr => \inst|row_debounce:0:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:0:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:0:debounce_keys|count\(17));

-- Location: LCCOMB_X30_Y4_N18
\inst|row_debounce:0:debounce_keys|count[18]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:0:debounce_keys|count[18]~56_combout\ = \inst|row_debounce:0:debounce_keys|count[17]~55\ $ (!\inst|row_debounce:0:debounce_keys|count\(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|row_debounce:0:debounce_keys|count\(18),
	cin => \inst|row_debounce:0:debounce_keys|count[17]~55\,
	combout => \inst|row_debounce:0:debounce_keys|count[18]~56_combout\);

-- Location: FF_X30_Y4_N19
\inst|row_debounce:0:debounce_keys|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:0:debounce_keys|count[18]~56_combout\,
	sclr => \inst|row_debounce:0:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:0:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:0:debounce_keys|count\(18));

-- Location: LCCOMB_X30_Y4_N28
\inst|row_debounce:0:debounce_keys|result~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:0:debounce_keys|result~1_combout\ = (!\inst|row_debounce:0:debounce_keys|count\(12) & (!\inst|row_debounce:0:debounce_keys|count\(10) & (!\inst|row_debounce:0:debounce_keys|count\(11) & !\inst|row_debounce:0:debounce_keys|count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:0:debounce_keys|count\(12),
	datab => \inst|row_debounce:0:debounce_keys|count\(10),
	datac => \inst|row_debounce:0:debounce_keys|count\(11),
	datad => \inst|row_debounce:0:debounce_keys|count\(9),
	combout => \inst|row_debounce:0:debounce_keys|result~1_combout\);

-- Location: LCCOMB_X30_Y5_N12
\inst|row_debounce:0:debounce_keys|result~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:0:debounce_keys|result~0_combout\ = ((!\inst|row_debounce:0:debounce_keys|count\(7) & (!\inst|row_debounce:0:debounce_keys|count\(6) & !\inst|row_debounce:0:debounce_keys|count\(5)))) # (!\inst|row_debounce:0:debounce_keys|count\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:0:debounce_keys|count\(8),
	datab => \inst|row_debounce:0:debounce_keys|count\(7),
	datac => \inst|row_debounce:0:debounce_keys|count\(6),
	datad => \inst|row_debounce:0:debounce_keys|count\(5),
	combout => \inst|row_debounce:0:debounce_keys|result~0_combout\);

-- Location: LCCOMB_X30_Y4_N26
\inst|row_debounce:0:debounce_keys|result~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:0:debounce_keys|result~2_combout\ = (!\inst|row_debounce:0:debounce_keys|count\(14) & (((\inst|row_debounce:0:debounce_keys|result~1_combout\ & \inst|row_debounce:0:debounce_keys|result~0_combout\)) # 
-- (!\inst|row_debounce:0:debounce_keys|count\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:0:debounce_keys|count\(14),
	datab => \inst|row_debounce:0:debounce_keys|result~1_combout\,
	datac => \inst|row_debounce:0:debounce_keys|count\(13),
	datad => \inst|row_debounce:0:debounce_keys|result~0_combout\,
	combout => \inst|row_debounce:0:debounce_keys|result~2_combout\);

-- Location: LCCOMB_X30_Y4_N24
\inst|row_debounce:0:debounce_keys|result~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:0:debounce_keys|result~4_combout\ = (\inst|row_debounce:0:debounce_keys|result~3_combout\) # (((\inst|row_debounce:0:debounce_keys|result~2_combout\) # (!\inst|row_debounce:0:debounce_keys|count\(17))) # 
-- (!\inst|row_debounce:0:debounce_keys|count\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:0:debounce_keys|result~3_combout\,
	datab => \inst|row_debounce:0:debounce_keys|count\(18),
	datac => \inst|row_debounce:0:debounce_keys|result~2_combout\,
	datad => \inst|row_debounce:0:debounce_keys|count\(17),
	combout => \inst|row_debounce:0:debounce_keys|result~4_combout\);

-- Location: LCCOMB_X23_Y7_N2
\inst|row_debounce:0:debounce_keys|result~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:0:debounce_keys|result~5_combout\ = (\inst|row_debounce:0:debounce_keys|result~4_combout\ & (\inst|row_debounce:0:debounce_keys|result~q\)) # (!\inst|row_debounce:0:debounce_keys|result~4_combout\ & 
-- ((\inst|row_debounce:0:debounce_keys|flipflops\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:0:debounce_keys|result~q\,
	datab => \inst|row_debounce:0:debounce_keys|flipflops\(1),
	datad => \inst|row_debounce:0:debounce_keys|result~4_combout\,
	combout => \inst|row_debounce:0:debounce_keys|result~5_combout\);

-- Location: FF_X23_Y7_N1
\inst|row_debounce:0:debounce_keys|result\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|row_debounce:0:debounce_keys|result~5_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:0:debounce_keys|result~q\);

-- Location: LCCOMB_X24_Y12_N22
\inst|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux9~0_combout\ = (\inst|process_1~7_combout\ & ((\inst|LessThan1~1_combout\) # ((\inst|Mux4~0_combout\ & !\inst|Add15~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|process_1~7_combout\,
	datab => \inst|LessThan1~1_combout\,
	datac => \inst|Mux4~0_combout\,
	datad => \inst|Add15~8_combout\,
	combout => \inst|Mux9~0_combout\);

-- Location: FF_X24_Y12_N23
\inst|keys_stored[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Mux9~0_combout\,
	ena => \inst|keys_stored[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|keys_stored\(9));

-- Location: FF_X23_Y8_N31
\inst|row_debounce:9:debounce_keys|flipflops[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|keys_stored\(9),
	clrn => \rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:9:debounce_keys|flipflops\(0));

-- Location: FF_X23_Y8_N29
\inst|row_debounce:9:debounce_keys|flipflops[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|row_debounce:9:debounce_keys|flipflops\(0),
	clrn => \rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:9:debounce_keys|flipflops\(1));

-- Location: LCCOMB_X22_Y9_N14
\inst|row_debounce:9:debounce_keys|count[0]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:9:debounce_keys|count[0]~19_combout\ = \inst|row_debounce:9:debounce_keys|count\(0) $ (VCC)
-- \inst|row_debounce:9:debounce_keys|count[0]~20\ = CARRY(\inst|row_debounce:9:debounce_keys|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:9:debounce_keys|count\(0),
	datad => VCC,
	combout => \inst|row_debounce:9:debounce_keys|count[0]~19_combout\,
	cout => \inst|row_debounce:9:debounce_keys|count[0]~20\);

-- Location: LCCOMB_X23_Y8_N18
\inst|row_debounce:9:debounce_keys|counter_set\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:9:debounce_keys|counter_set~combout\ = \inst|row_debounce:9:debounce_keys|flipflops\(1) $ (\inst|row_debounce:9:debounce_keys|flipflops\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:9:debounce_keys|flipflops\(1),
	datac => \inst|row_debounce:9:debounce_keys|flipflops\(0),
	combout => \inst|row_debounce:9:debounce_keys|counter_set~combout\);

-- Location: LCCOMB_X22_Y8_N26
\inst|row_debounce:9:debounce_keys|count[18]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:9:debounce_keys|count[18]~31_combout\ = (\rst~input_o\ & \inst|row_debounce:9:debounce_keys|result~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rst~input_o\,
	datad => \inst|row_debounce:9:debounce_keys|result~4_combout\,
	combout => \inst|row_debounce:9:debounce_keys|count[18]~31_combout\);

-- Location: FF_X22_Y9_N15
\inst|row_debounce:9:debounce_keys|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:9:debounce_keys|count[0]~19_combout\,
	sclr => \inst|row_debounce:9:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:9:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:9:debounce_keys|count\(0));

-- Location: LCCOMB_X22_Y9_N16
\inst|row_debounce:9:debounce_keys|count[1]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:9:debounce_keys|count[1]~21_combout\ = (\inst|row_debounce:9:debounce_keys|count\(1) & (!\inst|row_debounce:9:debounce_keys|count[0]~20\)) # (!\inst|row_debounce:9:debounce_keys|count\(1) & 
-- ((\inst|row_debounce:9:debounce_keys|count[0]~20\) # (GND)))
-- \inst|row_debounce:9:debounce_keys|count[1]~22\ = CARRY((!\inst|row_debounce:9:debounce_keys|count[0]~20\) # (!\inst|row_debounce:9:debounce_keys|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:9:debounce_keys|count\(1),
	datad => VCC,
	cin => \inst|row_debounce:9:debounce_keys|count[0]~20\,
	combout => \inst|row_debounce:9:debounce_keys|count[1]~21_combout\,
	cout => \inst|row_debounce:9:debounce_keys|count[1]~22\);

-- Location: FF_X22_Y9_N17
\inst|row_debounce:9:debounce_keys|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:9:debounce_keys|count[1]~21_combout\,
	sclr => \inst|row_debounce:9:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:9:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:9:debounce_keys|count\(1));

-- Location: LCCOMB_X22_Y9_N18
\inst|row_debounce:9:debounce_keys|count[2]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:9:debounce_keys|count[2]~23_combout\ = (\inst|row_debounce:9:debounce_keys|count\(2) & (\inst|row_debounce:9:debounce_keys|count[1]~22\ $ (GND))) # (!\inst|row_debounce:9:debounce_keys|count\(2) & 
-- (!\inst|row_debounce:9:debounce_keys|count[1]~22\ & VCC))
-- \inst|row_debounce:9:debounce_keys|count[2]~24\ = CARRY((\inst|row_debounce:9:debounce_keys|count\(2) & !\inst|row_debounce:9:debounce_keys|count[1]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:9:debounce_keys|count\(2),
	datad => VCC,
	cin => \inst|row_debounce:9:debounce_keys|count[1]~22\,
	combout => \inst|row_debounce:9:debounce_keys|count[2]~23_combout\,
	cout => \inst|row_debounce:9:debounce_keys|count[2]~24\);

-- Location: FF_X22_Y9_N19
\inst|row_debounce:9:debounce_keys|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:9:debounce_keys|count[2]~23_combout\,
	sclr => \inst|row_debounce:9:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:9:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:9:debounce_keys|count\(2));

-- Location: LCCOMB_X22_Y9_N20
\inst|row_debounce:9:debounce_keys|count[3]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:9:debounce_keys|count[3]~25_combout\ = (\inst|row_debounce:9:debounce_keys|count\(3) & (!\inst|row_debounce:9:debounce_keys|count[2]~24\)) # (!\inst|row_debounce:9:debounce_keys|count\(3) & 
-- ((\inst|row_debounce:9:debounce_keys|count[2]~24\) # (GND)))
-- \inst|row_debounce:9:debounce_keys|count[3]~26\ = CARRY((!\inst|row_debounce:9:debounce_keys|count[2]~24\) # (!\inst|row_debounce:9:debounce_keys|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:9:debounce_keys|count\(3),
	datad => VCC,
	cin => \inst|row_debounce:9:debounce_keys|count[2]~24\,
	combout => \inst|row_debounce:9:debounce_keys|count[3]~25_combout\,
	cout => \inst|row_debounce:9:debounce_keys|count[3]~26\);

-- Location: FF_X22_Y9_N21
\inst|row_debounce:9:debounce_keys|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:9:debounce_keys|count[3]~25_combout\,
	sclr => \inst|row_debounce:9:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:9:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:9:debounce_keys|count\(3));

-- Location: LCCOMB_X22_Y9_N22
\inst|row_debounce:9:debounce_keys|count[4]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:9:debounce_keys|count[4]~27_combout\ = (\inst|row_debounce:9:debounce_keys|count\(4) & (\inst|row_debounce:9:debounce_keys|count[3]~26\ $ (GND))) # (!\inst|row_debounce:9:debounce_keys|count\(4) & 
-- (!\inst|row_debounce:9:debounce_keys|count[3]~26\ & VCC))
-- \inst|row_debounce:9:debounce_keys|count[4]~28\ = CARRY((\inst|row_debounce:9:debounce_keys|count\(4) & !\inst|row_debounce:9:debounce_keys|count[3]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:9:debounce_keys|count\(4),
	datad => VCC,
	cin => \inst|row_debounce:9:debounce_keys|count[3]~26\,
	combout => \inst|row_debounce:9:debounce_keys|count[4]~27_combout\,
	cout => \inst|row_debounce:9:debounce_keys|count[4]~28\);

-- Location: FF_X22_Y9_N23
\inst|row_debounce:9:debounce_keys|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:9:debounce_keys|count[4]~27_combout\,
	sclr => \inst|row_debounce:9:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:9:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:9:debounce_keys|count\(4));

-- Location: LCCOMB_X22_Y9_N24
\inst|row_debounce:9:debounce_keys|count[5]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:9:debounce_keys|count[5]~29_combout\ = (\inst|row_debounce:9:debounce_keys|count\(5) & (!\inst|row_debounce:9:debounce_keys|count[4]~28\)) # (!\inst|row_debounce:9:debounce_keys|count\(5) & 
-- ((\inst|row_debounce:9:debounce_keys|count[4]~28\) # (GND)))
-- \inst|row_debounce:9:debounce_keys|count[5]~30\ = CARRY((!\inst|row_debounce:9:debounce_keys|count[4]~28\) # (!\inst|row_debounce:9:debounce_keys|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:9:debounce_keys|count\(5),
	datad => VCC,
	cin => \inst|row_debounce:9:debounce_keys|count[4]~28\,
	combout => \inst|row_debounce:9:debounce_keys|count[5]~29_combout\,
	cout => \inst|row_debounce:9:debounce_keys|count[5]~30\);

-- Location: FF_X22_Y9_N25
\inst|row_debounce:9:debounce_keys|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:9:debounce_keys|count[5]~29_combout\,
	sclr => \inst|row_debounce:9:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:9:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:9:debounce_keys|count\(5));

-- Location: LCCOMB_X22_Y9_N26
\inst|row_debounce:9:debounce_keys|count[6]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:9:debounce_keys|count[6]~32_combout\ = (\inst|row_debounce:9:debounce_keys|count\(6) & (\inst|row_debounce:9:debounce_keys|count[5]~30\ $ (GND))) # (!\inst|row_debounce:9:debounce_keys|count\(6) & 
-- (!\inst|row_debounce:9:debounce_keys|count[5]~30\ & VCC))
-- \inst|row_debounce:9:debounce_keys|count[6]~33\ = CARRY((\inst|row_debounce:9:debounce_keys|count\(6) & !\inst|row_debounce:9:debounce_keys|count[5]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:9:debounce_keys|count\(6),
	datad => VCC,
	cin => \inst|row_debounce:9:debounce_keys|count[5]~30\,
	combout => \inst|row_debounce:9:debounce_keys|count[6]~32_combout\,
	cout => \inst|row_debounce:9:debounce_keys|count[6]~33\);

-- Location: FF_X22_Y9_N27
\inst|row_debounce:9:debounce_keys|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:9:debounce_keys|count[6]~32_combout\,
	sclr => \inst|row_debounce:9:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:9:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:9:debounce_keys|count\(6));

-- Location: LCCOMB_X22_Y9_N28
\inst|row_debounce:9:debounce_keys|count[7]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:9:debounce_keys|count[7]~34_combout\ = (\inst|row_debounce:9:debounce_keys|count\(7) & (!\inst|row_debounce:9:debounce_keys|count[6]~33\)) # (!\inst|row_debounce:9:debounce_keys|count\(7) & 
-- ((\inst|row_debounce:9:debounce_keys|count[6]~33\) # (GND)))
-- \inst|row_debounce:9:debounce_keys|count[7]~35\ = CARRY((!\inst|row_debounce:9:debounce_keys|count[6]~33\) # (!\inst|row_debounce:9:debounce_keys|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:9:debounce_keys|count\(7),
	datad => VCC,
	cin => \inst|row_debounce:9:debounce_keys|count[6]~33\,
	combout => \inst|row_debounce:9:debounce_keys|count[7]~34_combout\,
	cout => \inst|row_debounce:9:debounce_keys|count[7]~35\);

-- Location: FF_X22_Y9_N29
\inst|row_debounce:9:debounce_keys|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:9:debounce_keys|count[7]~34_combout\,
	sclr => \inst|row_debounce:9:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:9:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:9:debounce_keys|count\(7));

-- Location: LCCOMB_X22_Y9_N30
\inst|row_debounce:9:debounce_keys|count[8]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:9:debounce_keys|count[8]~36_combout\ = (\inst|row_debounce:9:debounce_keys|count\(8) & (\inst|row_debounce:9:debounce_keys|count[7]~35\ $ (GND))) # (!\inst|row_debounce:9:debounce_keys|count\(8) & 
-- (!\inst|row_debounce:9:debounce_keys|count[7]~35\ & VCC))
-- \inst|row_debounce:9:debounce_keys|count[8]~37\ = CARRY((\inst|row_debounce:9:debounce_keys|count\(8) & !\inst|row_debounce:9:debounce_keys|count[7]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:9:debounce_keys|count\(8),
	datad => VCC,
	cin => \inst|row_debounce:9:debounce_keys|count[7]~35\,
	combout => \inst|row_debounce:9:debounce_keys|count[8]~36_combout\,
	cout => \inst|row_debounce:9:debounce_keys|count[8]~37\);

-- Location: FF_X22_Y9_N31
\inst|row_debounce:9:debounce_keys|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:9:debounce_keys|count[8]~36_combout\,
	sclr => \inst|row_debounce:9:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:9:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:9:debounce_keys|count\(8));

-- Location: LCCOMB_X22_Y8_N0
\inst|row_debounce:9:debounce_keys|count[9]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:9:debounce_keys|count[9]~38_combout\ = (\inst|row_debounce:9:debounce_keys|count\(9) & (!\inst|row_debounce:9:debounce_keys|count[8]~37\)) # (!\inst|row_debounce:9:debounce_keys|count\(9) & 
-- ((\inst|row_debounce:9:debounce_keys|count[8]~37\) # (GND)))
-- \inst|row_debounce:9:debounce_keys|count[9]~39\ = CARRY((!\inst|row_debounce:9:debounce_keys|count[8]~37\) # (!\inst|row_debounce:9:debounce_keys|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:9:debounce_keys|count\(9),
	datad => VCC,
	cin => \inst|row_debounce:9:debounce_keys|count[8]~37\,
	combout => \inst|row_debounce:9:debounce_keys|count[9]~38_combout\,
	cout => \inst|row_debounce:9:debounce_keys|count[9]~39\);

-- Location: FF_X22_Y8_N1
\inst|row_debounce:9:debounce_keys|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:9:debounce_keys|count[9]~38_combout\,
	sclr => \inst|row_debounce:9:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:9:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:9:debounce_keys|count\(9));

-- Location: LCCOMB_X22_Y8_N2
\inst|row_debounce:9:debounce_keys|count[10]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:9:debounce_keys|count[10]~40_combout\ = (\inst|row_debounce:9:debounce_keys|count\(10) & (\inst|row_debounce:9:debounce_keys|count[9]~39\ $ (GND))) # (!\inst|row_debounce:9:debounce_keys|count\(10) & 
-- (!\inst|row_debounce:9:debounce_keys|count[9]~39\ & VCC))
-- \inst|row_debounce:9:debounce_keys|count[10]~41\ = CARRY((\inst|row_debounce:9:debounce_keys|count\(10) & !\inst|row_debounce:9:debounce_keys|count[9]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:9:debounce_keys|count\(10),
	datad => VCC,
	cin => \inst|row_debounce:9:debounce_keys|count[9]~39\,
	combout => \inst|row_debounce:9:debounce_keys|count[10]~40_combout\,
	cout => \inst|row_debounce:9:debounce_keys|count[10]~41\);

-- Location: FF_X22_Y8_N3
\inst|row_debounce:9:debounce_keys|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:9:debounce_keys|count[10]~40_combout\,
	sclr => \inst|row_debounce:9:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:9:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:9:debounce_keys|count\(10));

-- Location: LCCOMB_X22_Y8_N4
\inst|row_debounce:9:debounce_keys|count[11]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:9:debounce_keys|count[11]~42_combout\ = (\inst|row_debounce:9:debounce_keys|count\(11) & (!\inst|row_debounce:9:debounce_keys|count[10]~41\)) # (!\inst|row_debounce:9:debounce_keys|count\(11) & 
-- ((\inst|row_debounce:9:debounce_keys|count[10]~41\) # (GND)))
-- \inst|row_debounce:9:debounce_keys|count[11]~43\ = CARRY((!\inst|row_debounce:9:debounce_keys|count[10]~41\) # (!\inst|row_debounce:9:debounce_keys|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:9:debounce_keys|count\(11),
	datad => VCC,
	cin => \inst|row_debounce:9:debounce_keys|count[10]~41\,
	combout => \inst|row_debounce:9:debounce_keys|count[11]~42_combout\,
	cout => \inst|row_debounce:9:debounce_keys|count[11]~43\);

-- Location: FF_X22_Y8_N5
\inst|row_debounce:9:debounce_keys|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:9:debounce_keys|count[11]~42_combout\,
	sclr => \inst|row_debounce:9:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:9:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:9:debounce_keys|count\(11));

-- Location: LCCOMB_X22_Y8_N6
\inst|row_debounce:9:debounce_keys|count[12]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:9:debounce_keys|count[12]~44_combout\ = (\inst|row_debounce:9:debounce_keys|count\(12) & (\inst|row_debounce:9:debounce_keys|count[11]~43\ $ (GND))) # (!\inst|row_debounce:9:debounce_keys|count\(12) & 
-- (!\inst|row_debounce:9:debounce_keys|count[11]~43\ & VCC))
-- \inst|row_debounce:9:debounce_keys|count[12]~45\ = CARRY((\inst|row_debounce:9:debounce_keys|count\(12) & !\inst|row_debounce:9:debounce_keys|count[11]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:9:debounce_keys|count\(12),
	datad => VCC,
	cin => \inst|row_debounce:9:debounce_keys|count[11]~43\,
	combout => \inst|row_debounce:9:debounce_keys|count[12]~44_combout\,
	cout => \inst|row_debounce:9:debounce_keys|count[12]~45\);

-- Location: FF_X22_Y8_N7
\inst|row_debounce:9:debounce_keys|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:9:debounce_keys|count[12]~44_combout\,
	sclr => \inst|row_debounce:9:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:9:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:9:debounce_keys|count\(12));

-- Location: LCCOMB_X22_Y8_N8
\inst|row_debounce:9:debounce_keys|count[13]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:9:debounce_keys|count[13]~46_combout\ = (\inst|row_debounce:9:debounce_keys|count\(13) & (!\inst|row_debounce:9:debounce_keys|count[12]~45\)) # (!\inst|row_debounce:9:debounce_keys|count\(13) & 
-- ((\inst|row_debounce:9:debounce_keys|count[12]~45\) # (GND)))
-- \inst|row_debounce:9:debounce_keys|count[13]~47\ = CARRY((!\inst|row_debounce:9:debounce_keys|count[12]~45\) # (!\inst|row_debounce:9:debounce_keys|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:9:debounce_keys|count\(13),
	datad => VCC,
	cin => \inst|row_debounce:9:debounce_keys|count[12]~45\,
	combout => \inst|row_debounce:9:debounce_keys|count[13]~46_combout\,
	cout => \inst|row_debounce:9:debounce_keys|count[13]~47\);

-- Location: FF_X22_Y8_N9
\inst|row_debounce:9:debounce_keys|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:9:debounce_keys|count[13]~46_combout\,
	sclr => \inst|row_debounce:9:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:9:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:9:debounce_keys|count\(13));

-- Location: LCCOMB_X22_Y8_N10
\inst|row_debounce:9:debounce_keys|count[14]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:9:debounce_keys|count[14]~48_combout\ = (\inst|row_debounce:9:debounce_keys|count\(14) & (\inst|row_debounce:9:debounce_keys|count[13]~47\ $ (GND))) # (!\inst|row_debounce:9:debounce_keys|count\(14) & 
-- (!\inst|row_debounce:9:debounce_keys|count[13]~47\ & VCC))
-- \inst|row_debounce:9:debounce_keys|count[14]~49\ = CARRY((\inst|row_debounce:9:debounce_keys|count\(14) & !\inst|row_debounce:9:debounce_keys|count[13]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:9:debounce_keys|count\(14),
	datad => VCC,
	cin => \inst|row_debounce:9:debounce_keys|count[13]~47\,
	combout => \inst|row_debounce:9:debounce_keys|count[14]~48_combout\,
	cout => \inst|row_debounce:9:debounce_keys|count[14]~49\);

-- Location: FF_X22_Y8_N11
\inst|row_debounce:9:debounce_keys|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:9:debounce_keys|count[14]~48_combout\,
	sclr => \inst|row_debounce:9:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:9:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:9:debounce_keys|count\(14));

-- Location: LCCOMB_X22_Y8_N12
\inst|row_debounce:9:debounce_keys|count[15]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:9:debounce_keys|count[15]~50_combout\ = (\inst|row_debounce:9:debounce_keys|count\(15) & (!\inst|row_debounce:9:debounce_keys|count[14]~49\)) # (!\inst|row_debounce:9:debounce_keys|count\(15) & 
-- ((\inst|row_debounce:9:debounce_keys|count[14]~49\) # (GND)))
-- \inst|row_debounce:9:debounce_keys|count[15]~51\ = CARRY((!\inst|row_debounce:9:debounce_keys|count[14]~49\) # (!\inst|row_debounce:9:debounce_keys|count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:9:debounce_keys|count\(15),
	datad => VCC,
	cin => \inst|row_debounce:9:debounce_keys|count[14]~49\,
	combout => \inst|row_debounce:9:debounce_keys|count[15]~50_combout\,
	cout => \inst|row_debounce:9:debounce_keys|count[15]~51\);

-- Location: FF_X22_Y8_N13
\inst|row_debounce:9:debounce_keys|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:9:debounce_keys|count[15]~50_combout\,
	sclr => \inst|row_debounce:9:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:9:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:9:debounce_keys|count\(15));

-- Location: LCCOMB_X22_Y8_N14
\inst|row_debounce:9:debounce_keys|count[16]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:9:debounce_keys|count[16]~52_combout\ = (\inst|row_debounce:9:debounce_keys|count\(16) & (\inst|row_debounce:9:debounce_keys|count[15]~51\ $ (GND))) # (!\inst|row_debounce:9:debounce_keys|count\(16) & 
-- (!\inst|row_debounce:9:debounce_keys|count[15]~51\ & VCC))
-- \inst|row_debounce:9:debounce_keys|count[16]~53\ = CARRY((\inst|row_debounce:9:debounce_keys|count\(16) & !\inst|row_debounce:9:debounce_keys|count[15]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:9:debounce_keys|count\(16),
	datad => VCC,
	cin => \inst|row_debounce:9:debounce_keys|count[15]~51\,
	combout => \inst|row_debounce:9:debounce_keys|count[16]~52_combout\,
	cout => \inst|row_debounce:9:debounce_keys|count[16]~53\);

-- Location: FF_X22_Y8_N15
\inst|row_debounce:9:debounce_keys|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:9:debounce_keys|count[16]~52_combout\,
	sclr => \inst|row_debounce:9:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:9:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:9:debounce_keys|count\(16));

-- Location: LCCOMB_X23_Y8_N4
\inst|row_debounce:9:debounce_keys|result~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:9:debounce_keys|result~3_combout\ = ((\inst|row_debounce:9:debounce_keys|flipflops\(1) $ (\inst|row_debounce:9:debounce_keys|flipflops\(0))) # (!\inst|row_debounce:9:debounce_keys|count\(15))) # 
-- (!\inst|row_debounce:9:debounce_keys|count\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:9:debounce_keys|count\(16),
	datab => \inst|row_debounce:9:debounce_keys|flipflops\(1),
	datac => \inst|row_debounce:9:debounce_keys|flipflops\(0),
	datad => \inst|row_debounce:9:debounce_keys|count\(15),
	combout => \inst|row_debounce:9:debounce_keys|result~3_combout\);

-- Location: LCCOMB_X22_Y8_N16
\inst|row_debounce:9:debounce_keys|count[17]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:9:debounce_keys|count[17]~54_combout\ = (\inst|row_debounce:9:debounce_keys|count\(17) & (!\inst|row_debounce:9:debounce_keys|count[16]~53\)) # (!\inst|row_debounce:9:debounce_keys|count\(17) & 
-- ((\inst|row_debounce:9:debounce_keys|count[16]~53\) # (GND)))
-- \inst|row_debounce:9:debounce_keys|count[17]~55\ = CARRY((!\inst|row_debounce:9:debounce_keys|count[16]~53\) # (!\inst|row_debounce:9:debounce_keys|count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:9:debounce_keys|count\(17),
	datad => VCC,
	cin => \inst|row_debounce:9:debounce_keys|count[16]~53\,
	combout => \inst|row_debounce:9:debounce_keys|count[17]~54_combout\,
	cout => \inst|row_debounce:9:debounce_keys|count[17]~55\);

-- Location: FF_X22_Y8_N17
\inst|row_debounce:9:debounce_keys|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:9:debounce_keys|count[17]~54_combout\,
	sclr => \inst|row_debounce:9:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:9:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:9:debounce_keys|count\(17));

-- Location: LCCOMB_X22_Y9_N12
\inst|row_debounce:9:debounce_keys|result~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:9:debounce_keys|result~0_combout\ = ((!\inst|row_debounce:9:debounce_keys|count\(5) & (!\inst|row_debounce:9:debounce_keys|count\(6) & !\inst|row_debounce:9:debounce_keys|count\(7)))) # (!\inst|row_debounce:9:debounce_keys|count\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:9:debounce_keys|count\(8),
	datab => \inst|row_debounce:9:debounce_keys|count\(5),
	datac => \inst|row_debounce:9:debounce_keys|count\(6),
	datad => \inst|row_debounce:9:debounce_keys|count\(7),
	combout => \inst|row_debounce:9:debounce_keys|result~0_combout\);

-- Location: LCCOMB_X22_Y8_N28
\inst|row_debounce:9:debounce_keys|result~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:9:debounce_keys|result~1_combout\ = (!\inst|row_debounce:9:debounce_keys|count\(12) & (!\inst|row_debounce:9:debounce_keys|count\(10) & (!\inst|row_debounce:9:debounce_keys|count\(11) & !\inst|row_debounce:9:debounce_keys|count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:9:debounce_keys|count\(12),
	datab => \inst|row_debounce:9:debounce_keys|count\(10),
	datac => \inst|row_debounce:9:debounce_keys|count\(11),
	datad => \inst|row_debounce:9:debounce_keys|count\(9),
	combout => \inst|row_debounce:9:debounce_keys|result~1_combout\);

-- Location: LCCOMB_X22_Y8_N22
\inst|row_debounce:9:debounce_keys|result~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:9:debounce_keys|result~2_combout\ = (!\inst|row_debounce:9:debounce_keys|count\(14) & (((\inst|row_debounce:9:debounce_keys|result~0_combout\ & \inst|row_debounce:9:debounce_keys|result~1_combout\)) # 
-- (!\inst|row_debounce:9:debounce_keys|count\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:9:debounce_keys|result~0_combout\,
	datab => \inst|row_debounce:9:debounce_keys|result~1_combout\,
	datac => \inst|row_debounce:9:debounce_keys|count\(13),
	datad => \inst|row_debounce:9:debounce_keys|count\(14),
	combout => \inst|row_debounce:9:debounce_keys|result~2_combout\);

-- Location: LCCOMB_X22_Y8_N18
\inst|row_debounce:9:debounce_keys|count[18]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:9:debounce_keys|count[18]~56_combout\ = \inst|row_debounce:9:debounce_keys|count[17]~55\ $ (!\inst|row_debounce:9:debounce_keys|count\(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|row_debounce:9:debounce_keys|count\(18),
	cin => \inst|row_debounce:9:debounce_keys|count[17]~55\,
	combout => \inst|row_debounce:9:debounce_keys|count[18]~56_combout\);

-- Location: FF_X22_Y8_N19
\inst|row_debounce:9:debounce_keys|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:9:debounce_keys|count[18]~56_combout\,
	sclr => \inst|row_debounce:9:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:9:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:9:debounce_keys|count\(18));

-- Location: LCCOMB_X22_Y8_N24
\inst|row_debounce:9:debounce_keys|result~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:9:debounce_keys|result~4_combout\ = (\inst|row_debounce:9:debounce_keys|result~3_combout\) # (((\inst|row_debounce:9:debounce_keys|result~2_combout\) # (!\inst|row_debounce:9:debounce_keys|count\(18))) # 
-- (!\inst|row_debounce:9:debounce_keys|count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:9:debounce_keys|result~3_combout\,
	datab => \inst|row_debounce:9:debounce_keys|count\(17),
	datac => \inst|row_debounce:9:debounce_keys|result~2_combout\,
	datad => \inst|row_debounce:9:debounce_keys|count\(18),
	combout => \inst|row_debounce:9:debounce_keys|result~4_combout\);

-- Location: LCCOMB_X23_Y8_N30
\inst|row_debounce:9:debounce_keys|result~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:9:debounce_keys|result~5_combout\ = (\inst|row_debounce:9:debounce_keys|result~4_combout\ & (\inst|row_debounce:9:debounce_keys|result~q\)) # (!\inst|row_debounce:9:debounce_keys|result~4_combout\ & 
-- ((\inst|row_debounce:9:debounce_keys|flipflops\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:9:debounce_keys|result~q\,
	datab => \inst|row_debounce:9:debounce_keys|flipflops\(1),
	datad => \inst|row_debounce:9:debounce_keys|result~4_combout\,
	combout => \inst|row_debounce:9:debounce_keys|result~5_combout\);

-- Location: FF_X23_Y7_N3
\inst|row_debounce:9:debounce_keys|result\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|row_debounce:9:debounce_keys|result~5_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:9:debounce_keys|result~q\);

-- Location: LCCOMB_X23_Y7_N0
\inst|Equal8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal8~1_combout\ = (!\inst|row_debounce:8:debounce_keys|result~q\ & (!\inst|row_debounce:14:debounce_keys|result~q\ & (!\inst|row_debounce:0:debounce_keys|result~q\ & !\inst|row_debounce:9:debounce_keys|result~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:8:debounce_keys|result~q\,
	datab => \inst|row_debounce:14:debounce_keys|result~q\,
	datac => \inst|row_debounce:0:debounce_keys|result~q\,
	datad => \inst|row_debounce:9:debounce_keys|result~q\,
	combout => \inst|Equal8~1_combout\);

-- Location: LCCOMB_X24_Y12_N30
\inst|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux11~0_combout\ = (\inst|process_1~9_combout\ & ((\inst|LessThan1~1_combout\) # ((\inst|Mux4~0_combout\ & !\inst|Add15~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|process_1~9_combout\,
	datab => \inst|LessThan1~1_combout\,
	datac => \inst|Mux4~0_combout\,
	datad => \inst|Add15~8_combout\,
	combout => \inst|Mux11~0_combout\);

-- Location: FF_X24_Y12_N31
\inst|keys_stored[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Mux11~0_combout\,
	ena => \inst|keys_stored[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|keys_stored\(11));

-- Location: LCCOMB_X23_Y5_N26
\inst|row_debounce:11:debounce_keys|flipflops[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:11:debounce_keys|flipflops[0]~feeder_combout\ = \inst|keys_stored\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|keys_stored\(11),
	combout => \inst|row_debounce:11:debounce_keys|flipflops[0]~feeder_combout\);

-- Location: FF_X23_Y5_N27
\inst|row_debounce:11:debounce_keys|flipflops[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:11:debounce_keys|flipflops[0]~feeder_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:11:debounce_keys|flipflops\(0));

-- Location: FF_X23_Y5_N25
\inst|row_debounce:11:debounce_keys|flipflops[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|row_debounce:11:debounce_keys|flipflops\(0),
	clrn => \rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:11:debounce_keys|flipflops\(1));

-- Location: LCCOMB_X22_Y6_N14
\inst|row_debounce:11:debounce_keys|count[0]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:11:debounce_keys|count[0]~19_combout\ = \inst|row_debounce:11:debounce_keys|count\(0) $ (VCC)
-- \inst|row_debounce:11:debounce_keys|count[0]~20\ = CARRY(\inst|row_debounce:11:debounce_keys|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:11:debounce_keys|count\(0),
	datad => VCC,
	combout => \inst|row_debounce:11:debounce_keys|count[0]~19_combout\,
	cout => \inst|row_debounce:11:debounce_keys|count[0]~20\);

-- Location: LCCOMB_X22_Y5_N24
\inst|row_debounce:11:debounce_keys|counter_set\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:11:debounce_keys|counter_set~combout\ = \inst|row_debounce:11:debounce_keys|flipflops\(0) $ (\inst|row_debounce:11:debounce_keys|flipflops\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:11:debounce_keys|flipflops\(0),
	datad => \inst|row_debounce:11:debounce_keys|flipflops\(1),
	combout => \inst|row_debounce:11:debounce_keys|counter_set~combout\);

-- Location: LCCOMB_X22_Y5_N22
\inst|row_debounce:11:debounce_keys|count[18]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:11:debounce_keys|count[18]~31_combout\ = (\inst|row_debounce:11:debounce_keys|result~4_combout\ & \rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:11:debounce_keys|result~4_combout\,
	datac => \rst~input_o\,
	combout => \inst|row_debounce:11:debounce_keys|count[18]~31_combout\);

-- Location: FF_X22_Y6_N15
\inst|row_debounce:11:debounce_keys|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:11:debounce_keys|count[0]~19_combout\,
	sclr => \inst|row_debounce:11:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:11:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:11:debounce_keys|count\(0));

-- Location: LCCOMB_X22_Y6_N16
\inst|row_debounce:11:debounce_keys|count[1]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:11:debounce_keys|count[1]~21_combout\ = (\inst|row_debounce:11:debounce_keys|count\(1) & (!\inst|row_debounce:11:debounce_keys|count[0]~20\)) # (!\inst|row_debounce:11:debounce_keys|count\(1) & 
-- ((\inst|row_debounce:11:debounce_keys|count[0]~20\) # (GND)))
-- \inst|row_debounce:11:debounce_keys|count[1]~22\ = CARRY((!\inst|row_debounce:11:debounce_keys|count[0]~20\) # (!\inst|row_debounce:11:debounce_keys|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:11:debounce_keys|count\(1),
	datad => VCC,
	cin => \inst|row_debounce:11:debounce_keys|count[0]~20\,
	combout => \inst|row_debounce:11:debounce_keys|count[1]~21_combout\,
	cout => \inst|row_debounce:11:debounce_keys|count[1]~22\);

-- Location: FF_X22_Y6_N17
\inst|row_debounce:11:debounce_keys|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:11:debounce_keys|count[1]~21_combout\,
	sclr => \inst|row_debounce:11:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:11:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:11:debounce_keys|count\(1));

-- Location: LCCOMB_X22_Y6_N18
\inst|row_debounce:11:debounce_keys|count[2]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:11:debounce_keys|count[2]~23_combout\ = (\inst|row_debounce:11:debounce_keys|count\(2) & (\inst|row_debounce:11:debounce_keys|count[1]~22\ $ (GND))) # (!\inst|row_debounce:11:debounce_keys|count\(2) & 
-- (!\inst|row_debounce:11:debounce_keys|count[1]~22\ & VCC))
-- \inst|row_debounce:11:debounce_keys|count[2]~24\ = CARRY((\inst|row_debounce:11:debounce_keys|count\(2) & !\inst|row_debounce:11:debounce_keys|count[1]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:11:debounce_keys|count\(2),
	datad => VCC,
	cin => \inst|row_debounce:11:debounce_keys|count[1]~22\,
	combout => \inst|row_debounce:11:debounce_keys|count[2]~23_combout\,
	cout => \inst|row_debounce:11:debounce_keys|count[2]~24\);

-- Location: FF_X22_Y6_N19
\inst|row_debounce:11:debounce_keys|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:11:debounce_keys|count[2]~23_combout\,
	sclr => \inst|row_debounce:11:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:11:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:11:debounce_keys|count\(2));

-- Location: LCCOMB_X22_Y6_N20
\inst|row_debounce:11:debounce_keys|count[3]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:11:debounce_keys|count[3]~25_combout\ = (\inst|row_debounce:11:debounce_keys|count\(3) & (!\inst|row_debounce:11:debounce_keys|count[2]~24\)) # (!\inst|row_debounce:11:debounce_keys|count\(3) & 
-- ((\inst|row_debounce:11:debounce_keys|count[2]~24\) # (GND)))
-- \inst|row_debounce:11:debounce_keys|count[3]~26\ = CARRY((!\inst|row_debounce:11:debounce_keys|count[2]~24\) # (!\inst|row_debounce:11:debounce_keys|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:11:debounce_keys|count\(3),
	datad => VCC,
	cin => \inst|row_debounce:11:debounce_keys|count[2]~24\,
	combout => \inst|row_debounce:11:debounce_keys|count[3]~25_combout\,
	cout => \inst|row_debounce:11:debounce_keys|count[3]~26\);

-- Location: FF_X22_Y6_N21
\inst|row_debounce:11:debounce_keys|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:11:debounce_keys|count[3]~25_combout\,
	sclr => \inst|row_debounce:11:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:11:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:11:debounce_keys|count\(3));

-- Location: LCCOMB_X22_Y6_N22
\inst|row_debounce:11:debounce_keys|count[4]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:11:debounce_keys|count[4]~27_combout\ = (\inst|row_debounce:11:debounce_keys|count\(4) & (\inst|row_debounce:11:debounce_keys|count[3]~26\ $ (GND))) # (!\inst|row_debounce:11:debounce_keys|count\(4) & 
-- (!\inst|row_debounce:11:debounce_keys|count[3]~26\ & VCC))
-- \inst|row_debounce:11:debounce_keys|count[4]~28\ = CARRY((\inst|row_debounce:11:debounce_keys|count\(4) & !\inst|row_debounce:11:debounce_keys|count[3]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:11:debounce_keys|count\(4),
	datad => VCC,
	cin => \inst|row_debounce:11:debounce_keys|count[3]~26\,
	combout => \inst|row_debounce:11:debounce_keys|count[4]~27_combout\,
	cout => \inst|row_debounce:11:debounce_keys|count[4]~28\);

-- Location: FF_X22_Y6_N23
\inst|row_debounce:11:debounce_keys|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:11:debounce_keys|count[4]~27_combout\,
	sclr => \inst|row_debounce:11:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:11:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:11:debounce_keys|count\(4));

-- Location: LCCOMB_X22_Y6_N24
\inst|row_debounce:11:debounce_keys|count[5]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:11:debounce_keys|count[5]~29_combout\ = (\inst|row_debounce:11:debounce_keys|count\(5) & (!\inst|row_debounce:11:debounce_keys|count[4]~28\)) # (!\inst|row_debounce:11:debounce_keys|count\(5) & 
-- ((\inst|row_debounce:11:debounce_keys|count[4]~28\) # (GND)))
-- \inst|row_debounce:11:debounce_keys|count[5]~30\ = CARRY((!\inst|row_debounce:11:debounce_keys|count[4]~28\) # (!\inst|row_debounce:11:debounce_keys|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:11:debounce_keys|count\(5),
	datad => VCC,
	cin => \inst|row_debounce:11:debounce_keys|count[4]~28\,
	combout => \inst|row_debounce:11:debounce_keys|count[5]~29_combout\,
	cout => \inst|row_debounce:11:debounce_keys|count[5]~30\);

-- Location: FF_X22_Y6_N25
\inst|row_debounce:11:debounce_keys|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:11:debounce_keys|count[5]~29_combout\,
	sclr => \inst|row_debounce:11:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:11:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:11:debounce_keys|count\(5));

-- Location: LCCOMB_X22_Y6_N26
\inst|row_debounce:11:debounce_keys|count[6]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:11:debounce_keys|count[6]~32_combout\ = (\inst|row_debounce:11:debounce_keys|count\(6) & (\inst|row_debounce:11:debounce_keys|count[5]~30\ $ (GND))) # (!\inst|row_debounce:11:debounce_keys|count\(6) & 
-- (!\inst|row_debounce:11:debounce_keys|count[5]~30\ & VCC))
-- \inst|row_debounce:11:debounce_keys|count[6]~33\ = CARRY((\inst|row_debounce:11:debounce_keys|count\(6) & !\inst|row_debounce:11:debounce_keys|count[5]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:11:debounce_keys|count\(6),
	datad => VCC,
	cin => \inst|row_debounce:11:debounce_keys|count[5]~30\,
	combout => \inst|row_debounce:11:debounce_keys|count[6]~32_combout\,
	cout => \inst|row_debounce:11:debounce_keys|count[6]~33\);

-- Location: FF_X22_Y6_N27
\inst|row_debounce:11:debounce_keys|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:11:debounce_keys|count[6]~32_combout\,
	sclr => \inst|row_debounce:11:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:11:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:11:debounce_keys|count\(6));

-- Location: LCCOMB_X22_Y6_N28
\inst|row_debounce:11:debounce_keys|count[7]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:11:debounce_keys|count[7]~34_combout\ = (\inst|row_debounce:11:debounce_keys|count\(7) & (!\inst|row_debounce:11:debounce_keys|count[6]~33\)) # (!\inst|row_debounce:11:debounce_keys|count\(7) & 
-- ((\inst|row_debounce:11:debounce_keys|count[6]~33\) # (GND)))
-- \inst|row_debounce:11:debounce_keys|count[7]~35\ = CARRY((!\inst|row_debounce:11:debounce_keys|count[6]~33\) # (!\inst|row_debounce:11:debounce_keys|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:11:debounce_keys|count\(7),
	datad => VCC,
	cin => \inst|row_debounce:11:debounce_keys|count[6]~33\,
	combout => \inst|row_debounce:11:debounce_keys|count[7]~34_combout\,
	cout => \inst|row_debounce:11:debounce_keys|count[7]~35\);

-- Location: FF_X22_Y6_N29
\inst|row_debounce:11:debounce_keys|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:11:debounce_keys|count[7]~34_combout\,
	sclr => \inst|row_debounce:11:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:11:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:11:debounce_keys|count\(7));

-- Location: LCCOMB_X22_Y6_N30
\inst|row_debounce:11:debounce_keys|count[8]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:11:debounce_keys|count[8]~36_combout\ = (\inst|row_debounce:11:debounce_keys|count\(8) & (\inst|row_debounce:11:debounce_keys|count[7]~35\ $ (GND))) # (!\inst|row_debounce:11:debounce_keys|count\(8) & 
-- (!\inst|row_debounce:11:debounce_keys|count[7]~35\ & VCC))
-- \inst|row_debounce:11:debounce_keys|count[8]~37\ = CARRY((\inst|row_debounce:11:debounce_keys|count\(8) & !\inst|row_debounce:11:debounce_keys|count[7]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:11:debounce_keys|count\(8),
	datad => VCC,
	cin => \inst|row_debounce:11:debounce_keys|count[7]~35\,
	combout => \inst|row_debounce:11:debounce_keys|count[8]~36_combout\,
	cout => \inst|row_debounce:11:debounce_keys|count[8]~37\);

-- Location: FF_X22_Y6_N31
\inst|row_debounce:11:debounce_keys|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:11:debounce_keys|count[8]~36_combout\,
	sclr => \inst|row_debounce:11:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:11:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:11:debounce_keys|count\(8));

-- Location: LCCOMB_X22_Y5_N0
\inst|row_debounce:11:debounce_keys|count[9]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:11:debounce_keys|count[9]~38_combout\ = (\inst|row_debounce:11:debounce_keys|count\(9) & (!\inst|row_debounce:11:debounce_keys|count[8]~37\)) # (!\inst|row_debounce:11:debounce_keys|count\(9) & 
-- ((\inst|row_debounce:11:debounce_keys|count[8]~37\) # (GND)))
-- \inst|row_debounce:11:debounce_keys|count[9]~39\ = CARRY((!\inst|row_debounce:11:debounce_keys|count[8]~37\) # (!\inst|row_debounce:11:debounce_keys|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:11:debounce_keys|count\(9),
	datad => VCC,
	cin => \inst|row_debounce:11:debounce_keys|count[8]~37\,
	combout => \inst|row_debounce:11:debounce_keys|count[9]~38_combout\,
	cout => \inst|row_debounce:11:debounce_keys|count[9]~39\);

-- Location: FF_X22_Y5_N1
\inst|row_debounce:11:debounce_keys|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:11:debounce_keys|count[9]~38_combout\,
	sclr => \inst|row_debounce:11:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:11:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:11:debounce_keys|count\(9));

-- Location: LCCOMB_X22_Y5_N2
\inst|row_debounce:11:debounce_keys|count[10]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:11:debounce_keys|count[10]~40_combout\ = (\inst|row_debounce:11:debounce_keys|count\(10) & (\inst|row_debounce:11:debounce_keys|count[9]~39\ $ (GND))) # (!\inst|row_debounce:11:debounce_keys|count\(10) & 
-- (!\inst|row_debounce:11:debounce_keys|count[9]~39\ & VCC))
-- \inst|row_debounce:11:debounce_keys|count[10]~41\ = CARRY((\inst|row_debounce:11:debounce_keys|count\(10) & !\inst|row_debounce:11:debounce_keys|count[9]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:11:debounce_keys|count\(10),
	datad => VCC,
	cin => \inst|row_debounce:11:debounce_keys|count[9]~39\,
	combout => \inst|row_debounce:11:debounce_keys|count[10]~40_combout\,
	cout => \inst|row_debounce:11:debounce_keys|count[10]~41\);

-- Location: FF_X22_Y5_N3
\inst|row_debounce:11:debounce_keys|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:11:debounce_keys|count[10]~40_combout\,
	sclr => \inst|row_debounce:11:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:11:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:11:debounce_keys|count\(10));

-- Location: LCCOMB_X22_Y5_N4
\inst|row_debounce:11:debounce_keys|count[11]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:11:debounce_keys|count[11]~42_combout\ = (\inst|row_debounce:11:debounce_keys|count\(11) & (!\inst|row_debounce:11:debounce_keys|count[10]~41\)) # (!\inst|row_debounce:11:debounce_keys|count\(11) & 
-- ((\inst|row_debounce:11:debounce_keys|count[10]~41\) # (GND)))
-- \inst|row_debounce:11:debounce_keys|count[11]~43\ = CARRY((!\inst|row_debounce:11:debounce_keys|count[10]~41\) # (!\inst|row_debounce:11:debounce_keys|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:11:debounce_keys|count\(11),
	datad => VCC,
	cin => \inst|row_debounce:11:debounce_keys|count[10]~41\,
	combout => \inst|row_debounce:11:debounce_keys|count[11]~42_combout\,
	cout => \inst|row_debounce:11:debounce_keys|count[11]~43\);

-- Location: FF_X22_Y5_N5
\inst|row_debounce:11:debounce_keys|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:11:debounce_keys|count[11]~42_combout\,
	sclr => \inst|row_debounce:11:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:11:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:11:debounce_keys|count\(11));

-- Location: LCCOMB_X22_Y5_N6
\inst|row_debounce:11:debounce_keys|count[12]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:11:debounce_keys|count[12]~44_combout\ = (\inst|row_debounce:11:debounce_keys|count\(12) & (\inst|row_debounce:11:debounce_keys|count[11]~43\ $ (GND))) # (!\inst|row_debounce:11:debounce_keys|count\(12) & 
-- (!\inst|row_debounce:11:debounce_keys|count[11]~43\ & VCC))
-- \inst|row_debounce:11:debounce_keys|count[12]~45\ = CARRY((\inst|row_debounce:11:debounce_keys|count\(12) & !\inst|row_debounce:11:debounce_keys|count[11]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:11:debounce_keys|count\(12),
	datad => VCC,
	cin => \inst|row_debounce:11:debounce_keys|count[11]~43\,
	combout => \inst|row_debounce:11:debounce_keys|count[12]~44_combout\,
	cout => \inst|row_debounce:11:debounce_keys|count[12]~45\);

-- Location: FF_X22_Y5_N7
\inst|row_debounce:11:debounce_keys|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:11:debounce_keys|count[12]~44_combout\,
	sclr => \inst|row_debounce:11:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:11:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:11:debounce_keys|count\(12));

-- Location: LCCOMB_X22_Y5_N8
\inst|row_debounce:11:debounce_keys|count[13]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:11:debounce_keys|count[13]~46_combout\ = (\inst|row_debounce:11:debounce_keys|count\(13) & (!\inst|row_debounce:11:debounce_keys|count[12]~45\)) # (!\inst|row_debounce:11:debounce_keys|count\(13) & 
-- ((\inst|row_debounce:11:debounce_keys|count[12]~45\) # (GND)))
-- \inst|row_debounce:11:debounce_keys|count[13]~47\ = CARRY((!\inst|row_debounce:11:debounce_keys|count[12]~45\) # (!\inst|row_debounce:11:debounce_keys|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:11:debounce_keys|count\(13),
	datad => VCC,
	cin => \inst|row_debounce:11:debounce_keys|count[12]~45\,
	combout => \inst|row_debounce:11:debounce_keys|count[13]~46_combout\,
	cout => \inst|row_debounce:11:debounce_keys|count[13]~47\);

-- Location: FF_X22_Y5_N9
\inst|row_debounce:11:debounce_keys|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:11:debounce_keys|count[13]~46_combout\,
	sclr => \inst|row_debounce:11:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:11:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:11:debounce_keys|count\(13));

-- Location: LCCOMB_X22_Y5_N10
\inst|row_debounce:11:debounce_keys|count[14]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:11:debounce_keys|count[14]~48_combout\ = (\inst|row_debounce:11:debounce_keys|count\(14) & (\inst|row_debounce:11:debounce_keys|count[13]~47\ $ (GND))) # (!\inst|row_debounce:11:debounce_keys|count\(14) & 
-- (!\inst|row_debounce:11:debounce_keys|count[13]~47\ & VCC))
-- \inst|row_debounce:11:debounce_keys|count[14]~49\ = CARRY((\inst|row_debounce:11:debounce_keys|count\(14) & !\inst|row_debounce:11:debounce_keys|count[13]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:11:debounce_keys|count\(14),
	datad => VCC,
	cin => \inst|row_debounce:11:debounce_keys|count[13]~47\,
	combout => \inst|row_debounce:11:debounce_keys|count[14]~48_combout\,
	cout => \inst|row_debounce:11:debounce_keys|count[14]~49\);

-- Location: FF_X22_Y5_N11
\inst|row_debounce:11:debounce_keys|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:11:debounce_keys|count[14]~48_combout\,
	sclr => \inst|row_debounce:11:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:11:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:11:debounce_keys|count\(14));

-- Location: LCCOMB_X22_Y5_N12
\inst|row_debounce:11:debounce_keys|count[15]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:11:debounce_keys|count[15]~50_combout\ = (\inst|row_debounce:11:debounce_keys|count\(15) & (!\inst|row_debounce:11:debounce_keys|count[14]~49\)) # (!\inst|row_debounce:11:debounce_keys|count\(15) & 
-- ((\inst|row_debounce:11:debounce_keys|count[14]~49\) # (GND)))
-- \inst|row_debounce:11:debounce_keys|count[15]~51\ = CARRY((!\inst|row_debounce:11:debounce_keys|count[14]~49\) # (!\inst|row_debounce:11:debounce_keys|count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:11:debounce_keys|count\(15),
	datad => VCC,
	cin => \inst|row_debounce:11:debounce_keys|count[14]~49\,
	combout => \inst|row_debounce:11:debounce_keys|count[15]~50_combout\,
	cout => \inst|row_debounce:11:debounce_keys|count[15]~51\);

-- Location: FF_X22_Y5_N13
\inst|row_debounce:11:debounce_keys|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:11:debounce_keys|count[15]~50_combout\,
	sclr => \inst|row_debounce:11:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:11:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:11:debounce_keys|count\(15));

-- Location: LCCOMB_X22_Y5_N14
\inst|row_debounce:11:debounce_keys|count[16]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:11:debounce_keys|count[16]~52_combout\ = (\inst|row_debounce:11:debounce_keys|count\(16) & (\inst|row_debounce:11:debounce_keys|count[15]~51\ $ (GND))) # (!\inst|row_debounce:11:debounce_keys|count\(16) & 
-- (!\inst|row_debounce:11:debounce_keys|count[15]~51\ & VCC))
-- \inst|row_debounce:11:debounce_keys|count[16]~53\ = CARRY((\inst|row_debounce:11:debounce_keys|count\(16) & !\inst|row_debounce:11:debounce_keys|count[15]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:11:debounce_keys|count\(16),
	datad => VCC,
	cin => \inst|row_debounce:11:debounce_keys|count[15]~51\,
	combout => \inst|row_debounce:11:debounce_keys|count[16]~52_combout\,
	cout => \inst|row_debounce:11:debounce_keys|count[16]~53\);

-- Location: FF_X22_Y5_N15
\inst|row_debounce:11:debounce_keys|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:11:debounce_keys|count[16]~52_combout\,
	sclr => \inst|row_debounce:11:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:11:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:11:debounce_keys|count\(16));

-- Location: LCCOMB_X22_Y5_N28
\inst|row_debounce:11:debounce_keys|result~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:11:debounce_keys|result~3_combout\ = ((\inst|row_debounce:11:debounce_keys|flipflops\(0) $ (\inst|row_debounce:11:debounce_keys|flipflops\(1))) # (!\inst|row_debounce:11:debounce_keys|count\(16))) # 
-- (!\inst|row_debounce:11:debounce_keys|count\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:11:debounce_keys|count\(15),
	datab => \inst|row_debounce:11:debounce_keys|flipflops\(0),
	datac => \inst|row_debounce:11:debounce_keys|count\(16),
	datad => \inst|row_debounce:11:debounce_keys|flipflops\(1),
	combout => \inst|row_debounce:11:debounce_keys|result~3_combout\);

-- Location: LCCOMB_X22_Y5_N16
\inst|row_debounce:11:debounce_keys|count[17]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:11:debounce_keys|count[17]~54_combout\ = (\inst|row_debounce:11:debounce_keys|count\(17) & (!\inst|row_debounce:11:debounce_keys|count[16]~53\)) # (!\inst|row_debounce:11:debounce_keys|count\(17) & 
-- ((\inst|row_debounce:11:debounce_keys|count[16]~53\) # (GND)))
-- \inst|row_debounce:11:debounce_keys|count[17]~55\ = CARRY((!\inst|row_debounce:11:debounce_keys|count[16]~53\) # (!\inst|row_debounce:11:debounce_keys|count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:11:debounce_keys|count\(17),
	datad => VCC,
	cin => \inst|row_debounce:11:debounce_keys|count[16]~53\,
	combout => \inst|row_debounce:11:debounce_keys|count[17]~54_combout\,
	cout => \inst|row_debounce:11:debounce_keys|count[17]~55\);

-- Location: FF_X22_Y5_N17
\inst|row_debounce:11:debounce_keys|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:11:debounce_keys|count[17]~54_combout\,
	sclr => \inst|row_debounce:11:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:11:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:11:debounce_keys|count\(17));

-- Location: LCCOMB_X22_Y5_N18
\inst|row_debounce:11:debounce_keys|count[18]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:11:debounce_keys|count[18]~56_combout\ = \inst|row_debounce:11:debounce_keys|count[17]~55\ $ (!\inst|row_debounce:11:debounce_keys|count\(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|row_debounce:11:debounce_keys|count\(18),
	cin => \inst|row_debounce:11:debounce_keys|count[17]~55\,
	combout => \inst|row_debounce:11:debounce_keys|count[18]~56_combout\);

-- Location: FF_X22_Y5_N19
\inst|row_debounce:11:debounce_keys|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:11:debounce_keys|count[18]~56_combout\,
	sclr => \inst|row_debounce:11:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:11:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:11:debounce_keys|count\(18));

-- Location: LCCOMB_X22_Y5_N20
\inst|row_debounce:11:debounce_keys|result~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:11:debounce_keys|result~1_combout\ = (!\inst|row_debounce:11:debounce_keys|count\(12) & (!\inst|row_debounce:11:debounce_keys|count\(10) & (!\inst|row_debounce:11:debounce_keys|count\(11) & 
-- !\inst|row_debounce:11:debounce_keys|count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:11:debounce_keys|count\(12),
	datab => \inst|row_debounce:11:debounce_keys|count\(10),
	datac => \inst|row_debounce:11:debounce_keys|count\(11),
	datad => \inst|row_debounce:11:debounce_keys|count\(9),
	combout => \inst|row_debounce:11:debounce_keys|result~1_combout\);

-- Location: LCCOMB_X22_Y6_N8
\inst|row_debounce:11:debounce_keys|result~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:11:debounce_keys|result~0_combout\ = ((!\inst|row_debounce:11:debounce_keys|count\(6) & (!\inst|row_debounce:11:debounce_keys|count\(5) & !\inst|row_debounce:11:debounce_keys|count\(7)))) # 
-- (!\inst|row_debounce:11:debounce_keys|count\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:11:debounce_keys|count\(6),
	datab => \inst|row_debounce:11:debounce_keys|count\(5),
	datac => \inst|row_debounce:11:debounce_keys|count\(8),
	datad => \inst|row_debounce:11:debounce_keys|count\(7),
	combout => \inst|row_debounce:11:debounce_keys|result~0_combout\);

-- Location: LCCOMB_X22_Y5_N26
\inst|row_debounce:11:debounce_keys|result~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:11:debounce_keys|result~2_combout\ = (!\inst|row_debounce:11:debounce_keys|count\(14) & (((\inst|row_debounce:11:debounce_keys|result~1_combout\ & \inst|row_debounce:11:debounce_keys|result~0_combout\)) # 
-- (!\inst|row_debounce:11:debounce_keys|count\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:11:debounce_keys|count\(14),
	datab => \inst|row_debounce:11:debounce_keys|result~1_combout\,
	datac => \inst|row_debounce:11:debounce_keys|count\(13),
	datad => \inst|row_debounce:11:debounce_keys|result~0_combout\,
	combout => \inst|row_debounce:11:debounce_keys|result~2_combout\);

-- Location: LCCOMB_X22_Y5_N30
\inst|row_debounce:11:debounce_keys|result~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:11:debounce_keys|result~4_combout\ = (\inst|row_debounce:11:debounce_keys|result~3_combout\) # (((\inst|row_debounce:11:debounce_keys|result~2_combout\) # (!\inst|row_debounce:11:debounce_keys|count\(17))) # 
-- (!\inst|row_debounce:11:debounce_keys|count\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:11:debounce_keys|result~3_combout\,
	datab => \inst|row_debounce:11:debounce_keys|count\(18),
	datac => \inst|row_debounce:11:debounce_keys|result~2_combout\,
	datad => \inst|row_debounce:11:debounce_keys|count\(17),
	combout => \inst|row_debounce:11:debounce_keys|result~4_combout\);

-- Location: LCCOMB_X23_Y5_N8
\inst|row_debounce:11:debounce_keys|result~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:11:debounce_keys|result~5_combout\ = (\inst|row_debounce:11:debounce_keys|result~4_combout\ & ((\inst|row_debounce:11:debounce_keys|result~q\))) # (!\inst|row_debounce:11:debounce_keys|result~4_combout\ & 
-- (\inst|row_debounce:11:debounce_keys|flipflops\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:11:debounce_keys|flipflops\(1),
	datac => \inst|row_debounce:11:debounce_keys|result~q\,
	datad => \inst|row_debounce:11:debounce_keys|result~4_combout\,
	combout => \inst|row_debounce:11:debounce_keys|result~5_combout\);

-- Location: FF_X24_Y7_N11
\inst|row_debounce:11:debounce_keys|result\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|row_debounce:11:debounce_keys|result~5_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:11:debounce_keys|result~q\);

-- Location: LCCOMB_X23_Y12_N20
\inst|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux10~0_combout\ = (\inst|process_1~8_combout\ & ((\inst|LessThan1~1_combout\) # ((\inst|LessThan1~2_combout\ & !\inst|Add15~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|process_1~8_combout\,
	datab => \inst|LessThan1~2_combout\,
	datac => \inst|Add15~4_combout\,
	datad => \inst|LessThan1~1_combout\,
	combout => \inst|Mux10~0_combout\);

-- Location: LCCOMB_X23_Y12_N26
\inst|Mux10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux10~1_combout\ = (\inst|Mux10~0_combout\ & ((\inst|LessThan1~1_combout\) # ((!\inst|Add15~6_combout\ & !\inst|Add15~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan1~1_combout\,
	datab => \inst|Add15~6_combout\,
	datac => \inst|Add15~8_combout\,
	datad => \inst|Mux10~0_combout\,
	combout => \inst|Mux10~1_combout\);

-- Location: FF_X23_Y12_N27
\inst|keys_stored[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Mux10~1_combout\,
	ena => \inst|keys_stored[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|keys_stored\(10));

-- Location: LCCOMB_X25_Y6_N6
\inst|row_debounce:10:debounce_keys|flipflops[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:10:debounce_keys|flipflops[0]~feeder_combout\ = \inst|keys_stored\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|keys_stored\(10),
	combout => \inst|row_debounce:10:debounce_keys|flipflops[0]~feeder_combout\);

-- Location: FF_X25_Y6_N7
\inst|row_debounce:10:debounce_keys|flipflops[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:10:debounce_keys|flipflops[0]~feeder_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:10:debounce_keys|flipflops\(0));

-- Location: LCCOMB_X25_Y6_N0
\inst|row_debounce:10:debounce_keys|flipflops[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:10:debounce_keys|flipflops[1]~feeder_combout\ = \inst|row_debounce:10:debounce_keys|flipflops\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|row_debounce:10:debounce_keys|flipflops\(0),
	combout => \inst|row_debounce:10:debounce_keys|flipflops[1]~feeder_combout\);

-- Location: FF_X25_Y6_N1
\inst|row_debounce:10:debounce_keys|flipflops[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:10:debounce_keys|flipflops[1]~feeder_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:10:debounce_keys|flipflops\(1));

-- Location: LCCOMB_X32_Y7_N14
\inst|row_debounce:10:debounce_keys|count[0]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:10:debounce_keys|count[0]~19_combout\ = \inst|row_debounce:10:debounce_keys|count\(0) $ (VCC)
-- \inst|row_debounce:10:debounce_keys|count[0]~20\ = CARRY(\inst|row_debounce:10:debounce_keys|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:10:debounce_keys|count\(0),
	datad => VCC,
	combout => \inst|row_debounce:10:debounce_keys|count[0]~19_combout\,
	cout => \inst|row_debounce:10:debounce_keys|count[0]~20\);

-- Location: LCCOMB_X32_Y6_N20
\inst|row_debounce:10:debounce_keys|counter_set\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:10:debounce_keys|counter_set~combout\ = \inst|row_debounce:10:debounce_keys|flipflops\(1) $ (\inst|row_debounce:10:debounce_keys|flipflops\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|row_debounce:10:debounce_keys|flipflops\(1),
	datad => \inst|row_debounce:10:debounce_keys|flipflops\(0),
	combout => \inst|row_debounce:10:debounce_keys|counter_set~combout\);

-- Location: LCCOMB_X32_Y6_N26
\inst|row_debounce:10:debounce_keys|count[18]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:10:debounce_keys|count[18]~31_combout\ = (\rst~input_o\ & \inst|row_debounce:10:debounce_keys|result~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datac => \inst|row_debounce:10:debounce_keys|result~4_combout\,
	combout => \inst|row_debounce:10:debounce_keys|count[18]~31_combout\);

-- Location: FF_X32_Y7_N15
\inst|row_debounce:10:debounce_keys|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:10:debounce_keys|count[0]~19_combout\,
	sclr => \inst|row_debounce:10:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:10:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:10:debounce_keys|count\(0));

-- Location: LCCOMB_X32_Y7_N16
\inst|row_debounce:10:debounce_keys|count[1]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:10:debounce_keys|count[1]~21_combout\ = (\inst|row_debounce:10:debounce_keys|count\(1) & (!\inst|row_debounce:10:debounce_keys|count[0]~20\)) # (!\inst|row_debounce:10:debounce_keys|count\(1) & 
-- ((\inst|row_debounce:10:debounce_keys|count[0]~20\) # (GND)))
-- \inst|row_debounce:10:debounce_keys|count[1]~22\ = CARRY((!\inst|row_debounce:10:debounce_keys|count[0]~20\) # (!\inst|row_debounce:10:debounce_keys|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:10:debounce_keys|count\(1),
	datad => VCC,
	cin => \inst|row_debounce:10:debounce_keys|count[0]~20\,
	combout => \inst|row_debounce:10:debounce_keys|count[1]~21_combout\,
	cout => \inst|row_debounce:10:debounce_keys|count[1]~22\);

-- Location: FF_X32_Y7_N17
\inst|row_debounce:10:debounce_keys|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:10:debounce_keys|count[1]~21_combout\,
	sclr => \inst|row_debounce:10:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:10:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:10:debounce_keys|count\(1));

-- Location: LCCOMB_X32_Y7_N18
\inst|row_debounce:10:debounce_keys|count[2]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:10:debounce_keys|count[2]~23_combout\ = (\inst|row_debounce:10:debounce_keys|count\(2) & (\inst|row_debounce:10:debounce_keys|count[1]~22\ $ (GND))) # (!\inst|row_debounce:10:debounce_keys|count\(2) & 
-- (!\inst|row_debounce:10:debounce_keys|count[1]~22\ & VCC))
-- \inst|row_debounce:10:debounce_keys|count[2]~24\ = CARRY((\inst|row_debounce:10:debounce_keys|count\(2) & !\inst|row_debounce:10:debounce_keys|count[1]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:10:debounce_keys|count\(2),
	datad => VCC,
	cin => \inst|row_debounce:10:debounce_keys|count[1]~22\,
	combout => \inst|row_debounce:10:debounce_keys|count[2]~23_combout\,
	cout => \inst|row_debounce:10:debounce_keys|count[2]~24\);

-- Location: FF_X32_Y7_N19
\inst|row_debounce:10:debounce_keys|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:10:debounce_keys|count[2]~23_combout\,
	sclr => \inst|row_debounce:10:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:10:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:10:debounce_keys|count\(2));

-- Location: LCCOMB_X32_Y7_N20
\inst|row_debounce:10:debounce_keys|count[3]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:10:debounce_keys|count[3]~25_combout\ = (\inst|row_debounce:10:debounce_keys|count\(3) & (!\inst|row_debounce:10:debounce_keys|count[2]~24\)) # (!\inst|row_debounce:10:debounce_keys|count\(3) & 
-- ((\inst|row_debounce:10:debounce_keys|count[2]~24\) # (GND)))
-- \inst|row_debounce:10:debounce_keys|count[3]~26\ = CARRY((!\inst|row_debounce:10:debounce_keys|count[2]~24\) # (!\inst|row_debounce:10:debounce_keys|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:10:debounce_keys|count\(3),
	datad => VCC,
	cin => \inst|row_debounce:10:debounce_keys|count[2]~24\,
	combout => \inst|row_debounce:10:debounce_keys|count[3]~25_combout\,
	cout => \inst|row_debounce:10:debounce_keys|count[3]~26\);

-- Location: FF_X32_Y7_N21
\inst|row_debounce:10:debounce_keys|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:10:debounce_keys|count[3]~25_combout\,
	sclr => \inst|row_debounce:10:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:10:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:10:debounce_keys|count\(3));

-- Location: LCCOMB_X32_Y7_N22
\inst|row_debounce:10:debounce_keys|count[4]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:10:debounce_keys|count[4]~27_combout\ = (\inst|row_debounce:10:debounce_keys|count\(4) & (\inst|row_debounce:10:debounce_keys|count[3]~26\ $ (GND))) # (!\inst|row_debounce:10:debounce_keys|count\(4) & 
-- (!\inst|row_debounce:10:debounce_keys|count[3]~26\ & VCC))
-- \inst|row_debounce:10:debounce_keys|count[4]~28\ = CARRY((\inst|row_debounce:10:debounce_keys|count\(4) & !\inst|row_debounce:10:debounce_keys|count[3]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:10:debounce_keys|count\(4),
	datad => VCC,
	cin => \inst|row_debounce:10:debounce_keys|count[3]~26\,
	combout => \inst|row_debounce:10:debounce_keys|count[4]~27_combout\,
	cout => \inst|row_debounce:10:debounce_keys|count[4]~28\);

-- Location: FF_X32_Y7_N23
\inst|row_debounce:10:debounce_keys|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:10:debounce_keys|count[4]~27_combout\,
	sclr => \inst|row_debounce:10:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:10:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:10:debounce_keys|count\(4));

-- Location: LCCOMB_X32_Y7_N24
\inst|row_debounce:10:debounce_keys|count[5]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:10:debounce_keys|count[5]~29_combout\ = (\inst|row_debounce:10:debounce_keys|count\(5) & (!\inst|row_debounce:10:debounce_keys|count[4]~28\)) # (!\inst|row_debounce:10:debounce_keys|count\(5) & 
-- ((\inst|row_debounce:10:debounce_keys|count[4]~28\) # (GND)))
-- \inst|row_debounce:10:debounce_keys|count[5]~30\ = CARRY((!\inst|row_debounce:10:debounce_keys|count[4]~28\) # (!\inst|row_debounce:10:debounce_keys|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:10:debounce_keys|count\(5),
	datad => VCC,
	cin => \inst|row_debounce:10:debounce_keys|count[4]~28\,
	combout => \inst|row_debounce:10:debounce_keys|count[5]~29_combout\,
	cout => \inst|row_debounce:10:debounce_keys|count[5]~30\);

-- Location: FF_X32_Y7_N25
\inst|row_debounce:10:debounce_keys|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:10:debounce_keys|count[5]~29_combout\,
	sclr => \inst|row_debounce:10:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:10:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:10:debounce_keys|count\(5));

-- Location: LCCOMB_X32_Y7_N26
\inst|row_debounce:10:debounce_keys|count[6]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:10:debounce_keys|count[6]~32_combout\ = (\inst|row_debounce:10:debounce_keys|count\(6) & (\inst|row_debounce:10:debounce_keys|count[5]~30\ $ (GND))) # (!\inst|row_debounce:10:debounce_keys|count\(6) & 
-- (!\inst|row_debounce:10:debounce_keys|count[5]~30\ & VCC))
-- \inst|row_debounce:10:debounce_keys|count[6]~33\ = CARRY((\inst|row_debounce:10:debounce_keys|count\(6) & !\inst|row_debounce:10:debounce_keys|count[5]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:10:debounce_keys|count\(6),
	datad => VCC,
	cin => \inst|row_debounce:10:debounce_keys|count[5]~30\,
	combout => \inst|row_debounce:10:debounce_keys|count[6]~32_combout\,
	cout => \inst|row_debounce:10:debounce_keys|count[6]~33\);

-- Location: FF_X32_Y7_N27
\inst|row_debounce:10:debounce_keys|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:10:debounce_keys|count[6]~32_combout\,
	sclr => \inst|row_debounce:10:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:10:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:10:debounce_keys|count\(6));

-- Location: LCCOMB_X32_Y7_N28
\inst|row_debounce:10:debounce_keys|count[7]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:10:debounce_keys|count[7]~34_combout\ = (\inst|row_debounce:10:debounce_keys|count\(7) & (!\inst|row_debounce:10:debounce_keys|count[6]~33\)) # (!\inst|row_debounce:10:debounce_keys|count\(7) & 
-- ((\inst|row_debounce:10:debounce_keys|count[6]~33\) # (GND)))
-- \inst|row_debounce:10:debounce_keys|count[7]~35\ = CARRY((!\inst|row_debounce:10:debounce_keys|count[6]~33\) # (!\inst|row_debounce:10:debounce_keys|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:10:debounce_keys|count\(7),
	datad => VCC,
	cin => \inst|row_debounce:10:debounce_keys|count[6]~33\,
	combout => \inst|row_debounce:10:debounce_keys|count[7]~34_combout\,
	cout => \inst|row_debounce:10:debounce_keys|count[7]~35\);

-- Location: FF_X32_Y7_N29
\inst|row_debounce:10:debounce_keys|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:10:debounce_keys|count[7]~34_combout\,
	sclr => \inst|row_debounce:10:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:10:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:10:debounce_keys|count\(7));

-- Location: LCCOMB_X32_Y7_N30
\inst|row_debounce:10:debounce_keys|count[8]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:10:debounce_keys|count[8]~36_combout\ = (\inst|row_debounce:10:debounce_keys|count\(8) & (\inst|row_debounce:10:debounce_keys|count[7]~35\ $ (GND))) # (!\inst|row_debounce:10:debounce_keys|count\(8) & 
-- (!\inst|row_debounce:10:debounce_keys|count[7]~35\ & VCC))
-- \inst|row_debounce:10:debounce_keys|count[8]~37\ = CARRY((\inst|row_debounce:10:debounce_keys|count\(8) & !\inst|row_debounce:10:debounce_keys|count[7]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:10:debounce_keys|count\(8),
	datad => VCC,
	cin => \inst|row_debounce:10:debounce_keys|count[7]~35\,
	combout => \inst|row_debounce:10:debounce_keys|count[8]~36_combout\,
	cout => \inst|row_debounce:10:debounce_keys|count[8]~37\);

-- Location: FF_X32_Y7_N31
\inst|row_debounce:10:debounce_keys|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:10:debounce_keys|count[8]~36_combout\,
	sclr => \inst|row_debounce:10:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:10:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:10:debounce_keys|count\(8));

-- Location: LCCOMB_X32_Y6_N0
\inst|row_debounce:10:debounce_keys|count[9]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:10:debounce_keys|count[9]~38_combout\ = (\inst|row_debounce:10:debounce_keys|count\(9) & (!\inst|row_debounce:10:debounce_keys|count[8]~37\)) # (!\inst|row_debounce:10:debounce_keys|count\(9) & 
-- ((\inst|row_debounce:10:debounce_keys|count[8]~37\) # (GND)))
-- \inst|row_debounce:10:debounce_keys|count[9]~39\ = CARRY((!\inst|row_debounce:10:debounce_keys|count[8]~37\) # (!\inst|row_debounce:10:debounce_keys|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:10:debounce_keys|count\(9),
	datad => VCC,
	cin => \inst|row_debounce:10:debounce_keys|count[8]~37\,
	combout => \inst|row_debounce:10:debounce_keys|count[9]~38_combout\,
	cout => \inst|row_debounce:10:debounce_keys|count[9]~39\);

-- Location: FF_X32_Y6_N1
\inst|row_debounce:10:debounce_keys|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:10:debounce_keys|count[9]~38_combout\,
	sclr => \inst|row_debounce:10:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:10:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:10:debounce_keys|count\(9));

-- Location: LCCOMB_X32_Y6_N2
\inst|row_debounce:10:debounce_keys|count[10]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:10:debounce_keys|count[10]~40_combout\ = (\inst|row_debounce:10:debounce_keys|count\(10) & (\inst|row_debounce:10:debounce_keys|count[9]~39\ $ (GND))) # (!\inst|row_debounce:10:debounce_keys|count\(10) & 
-- (!\inst|row_debounce:10:debounce_keys|count[9]~39\ & VCC))
-- \inst|row_debounce:10:debounce_keys|count[10]~41\ = CARRY((\inst|row_debounce:10:debounce_keys|count\(10) & !\inst|row_debounce:10:debounce_keys|count[9]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:10:debounce_keys|count\(10),
	datad => VCC,
	cin => \inst|row_debounce:10:debounce_keys|count[9]~39\,
	combout => \inst|row_debounce:10:debounce_keys|count[10]~40_combout\,
	cout => \inst|row_debounce:10:debounce_keys|count[10]~41\);

-- Location: FF_X32_Y6_N3
\inst|row_debounce:10:debounce_keys|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:10:debounce_keys|count[10]~40_combout\,
	sclr => \inst|row_debounce:10:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:10:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:10:debounce_keys|count\(10));

-- Location: LCCOMB_X32_Y6_N4
\inst|row_debounce:10:debounce_keys|count[11]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:10:debounce_keys|count[11]~42_combout\ = (\inst|row_debounce:10:debounce_keys|count\(11) & (!\inst|row_debounce:10:debounce_keys|count[10]~41\)) # (!\inst|row_debounce:10:debounce_keys|count\(11) & 
-- ((\inst|row_debounce:10:debounce_keys|count[10]~41\) # (GND)))
-- \inst|row_debounce:10:debounce_keys|count[11]~43\ = CARRY((!\inst|row_debounce:10:debounce_keys|count[10]~41\) # (!\inst|row_debounce:10:debounce_keys|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:10:debounce_keys|count\(11),
	datad => VCC,
	cin => \inst|row_debounce:10:debounce_keys|count[10]~41\,
	combout => \inst|row_debounce:10:debounce_keys|count[11]~42_combout\,
	cout => \inst|row_debounce:10:debounce_keys|count[11]~43\);

-- Location: FF_X32_Y6_N5
\inst|row_debounce:10:debounce_keys|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:10:debounce_keys|count[11]~42_combout\,
	sclr => \inst|row_debounce:10:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:10:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:10:debounce_keys|count\(11));

-- Location: LCCOMB_X32_Y6_N6
\inst|row_debounce:10:debounce_keys|count[12]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:10:debounce_keys|count[12]~44_combout\ = (\inst|row_debounce:10:debounce_keys|count\(12) & (\inst|row_debounce:10:debounce_keys|count[11]~43\ $ (GND))) # (!\inst|row_debounce:10:debounce_keys|count\(12) & 
-- (!\inst|row_debounce:10:debounce_keys|count[11]~43\ & VCC))
-- \inst|row_debounce:10:debounce_keys|count[12]~45\ = CARRY((\inst|row_debounce:10:debounce_keys|count\(12) & !\inst|row_debounce:10:debounce_keys|count[11]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:10:debounce_keys|count\(12),
	datad => VCC,
	cin => \inst|row_debounce:10:debounce_keys|count[11]~43\,
	combout => \inst|row_debounce:10:debounce_keys|count[12]~44_combout\,
	cout => \inst|row_debounce:10:debounce_keys|count[12]~45\);

-- Location: FF_X32_Y6_N7
\inst|row_debounce:10:debounce_keys|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:10:debounce_keys|count[12]~44_combout\,
	sclr => \inst|row_debounce:10:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:10:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:10:debounce_keys|count\(12));

-- Location: LCCOMB_X32_Y6_N8
\inst|row_debounce:10:debounce_keys|count[13]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:10:debounce_keys|count[13]~46_combout\ = (\inst|row_debounce:10:debounce_keys|count\(13) & (!\inst|row_debounce:10:debounce_keys|count[12]~45\)) # (!\inst|row_debounce:10:debounce_keys|count\(13) & 
-- ((\inst|row_debounce:10:debounce_keys|count[12]~45\) # (GND)))
-- \inst|row_debounce:10:debounce_keys|count[13]~47\ = CARRY((!\inst|row_debounce:10:debounce_keys|count[12]~45\) # (!\inst|row_debounce:10:debounce_keys|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:10:debounce_keys|count\(13),
	datad => VCC,
	cin => \inst|row_debounce:10:debounce_keys|count[12]~45\,
	combout => \inst|row_debounce:10:debounce_keys|count[13]~46_combout\,
	cout => \inst|row_debounce:10:debounce_keys|count[13]~47\);

-- Location: FF_X32_Y6_N9
\inst|row_debounce:10:debounce_keys|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:10:debounce_keys|count[13]~46_combout\,
	sclr => \inst|row_debounce:10:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:10:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:10:debounce_keys|count\(13));

-- Location: LCCOMB_X32_Y6_N10
\inst|row_debounce:10:debounce_keys|count[14]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:10:debounce_keys|count[14]~48_combout\ = (\inst|row_debounce:10:debounce_keys|count\(14) & (\inst|row_debounce:10:debounce_keys|count[13]~47\ $ (GND))) # (!\inst|row_debounce:10:debounce_keys|count\(14) & 
-- (!\inst|row_debounce:10:debounce_keys|count[13]~47\ & VCC))
-- \inst|row_debounce:10:debounce_keys|count[14]~49\ = CARRY((\inst|row_debounce:10:debounce_keys|count\(14) & !\inst|row_debounce:10:debounce_keys|count[13]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:10:debounce_keys|count\(14),
	datad => VCC,
	cin => \inst|row_debounce:10:debounce_keys|count[13]~47\,
	combout => \inst|row_debounce:10:debounce_keys|count[14]~48_combout\,
	cout => \inst|row_debounce:10:debounce_keys|count[14]~49\);

-- Location: FF_X32_Y6_N11
\inst|row_debounce:10:debounce_keys|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:10:debounce_keys|count[14]~48_combout\,
	sclr => \inst|row_debounce:10:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:10:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:10:debounce_keys|count\(14));

-- Location: LCCOMB_X32_Y6_N12
\inst|row_debounce:10:debounce_keys|count[15]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:10:debounce_keys|count[15]~50_combout\ = (\inst|row_debounce:10:debounce_keys|count\(15) & (!\inst|row_debounce:10:debounce_keys|count[14]~49\)) # (!\inst|row_debounce:10:debounce_keys|count\(15) & 
-- ((\inst|row_debounce:10:debounce_keys|count[14]~49\) # (GND)))
-- \inst|row_debounce:10:debounce_keys|count[15]~51\ = CARRY((!\inst|row_debounce:10:debounce_keys|count[14]~49\) # (!\inst|row_debounce:10:debounce_keys|count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:10:debounce_keys|count\(15),
	datad => VCC,
	cin => \inst|row_debounce:10:debounce_keys|count[14]~49\,
	combout => \inst|row_debounce:10:debounce_keys|count[15]~50_combout\,
	cout => \inst|row_debounce:10:debounce_keys|count[15]~51\);

-- Location: FF_X32_Y6_N13
\inst|row_debounce:10:debounce_keys|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:10:debounce_keys|count[15]~50_combout\,
	sclr => \inst|row_debounce:10:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:10:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:10:debounce_keys|count\(15));

-- Location: LCCOMB_X32_Y6_N14
\inst|row_debounce:10:debounce_keys|count[16]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:10:debounce_keys|count[16]~52_combout\ = (\inst|row_debounce:10:debounce_keys|count\(16) & (\inst|row_debounce:10:debounce_keys|count[15]~51\ $ (GND))) # (!\inst|row_debounce:10:debounce_keys|count\(16) & 
-- (!\inst|row_debounce:10:debounce_keys|count[15]~51\ & VCC))
-- \inst|row_debounce:10:debounce_keys|count[16]~53\ = CARRY((\inst|row_debounce:10:debounce_keys|count\(16) & !\inst|row_debounce:10:debounce_keys|count[15]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:10:debounce_keys|count\(16),
	datad => VCC,
	cin => \inst|row_debounce:10:debounce_keys|count[15]~51\,
	combout => \inst|row_debounce:10:debounce_keys|count[16]~52_combout\,
	cout => \inst|row_debounce:10:debounce_keys|count[16]~53\);

-- Location: FF_X32_Y6_N15
\inst|row_debounce:10:debounce_keys|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:10:debounce_keys|count[16]~52_combout\,
	sclr => \inst|row_debounce:10:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:10:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:10:debounce_keys|count\(16));

-- Location: LCCOMB_X32_Y6_N24
\inst|row_debounce:10:debounce_keys|result~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:10:debounce_keys|result~3_combout\ = ((\inst|row_debounce:10:debounce_keys|flipflops\(0) $ (\inst|row_debounce:10:debounce_keys|flipflops\(1))) # (!\inst|row_debounce:10:debounce_keys|count\(15))) # 
-- (!\inst|row_debounce:10:debounce_keys|count\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:10:debounce_keys|flipflops\(0),
	datab => \inst|row_debounce:10:debounce_keys|flipflops\(1),
	datac => \inst|row_debounce:10:debounce_keys|count\(16),
	datad => \inst|row_debounce:10:debounce_keys|count\(15),
	combout => \inst|row_debounce:10:debounce_keys|result~3_combout\);

-- Location: LCCOMB_X32_Y6_N16
\inst|row_debounce:10:debounce_keys|count[17]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:10:debounce_keys|count[17]~54_combout\ = (\inst|row_debounce:10:debounce_keys|count\(17) & (!\inst|row_debounce:10:debounce_keys|count[16]~53\)) # (!\inst|row_debounce:10:debounce_keys|count\(17) & 
-- ((\inst|row_debounce:10:debounce_keys|count[16]~53\) # (GND)))
-- \inst|row_debounce:10:debounce_keys|count[17]~55\ = CARRY((!\inst|row_debounce:10:debounce_keys|count[16]~53\) # (!\inst|row_debounce:10:debounce_keys|count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:10:debounce_keys|count\(17),
	datad => VCC,
	cin => \inst|row_debounce:10:debounce_keys|count[16]~53\,
	combout => \inst|row_debounce:10:debounce_keys|count[17]~54_combout\,
	cout => \inst|row_debounce:10:debounce_keys|count[17]~55\);

-- Location: FF_X32_Y6_N17
\inst|row_debounce:10:debounce_keys|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:10:debounce_keys|count[17]~54_combout\,
	sclr => \inst|row_debounce:10:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:10:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:10:debounce_keys|count\(17));

-- Location: LCCOMB_X32_Y6_N18
\inst|row_debounce:10:debounce_keys|count[18]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:10:debounce_keys|count[18]~56_combout\ = \inst|row_debounce:10:debounce_keys|count[17]~55\ $ (!\inst|row_debounce:10:debounce_keys|count\(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|row_debounce:10:debounce_keys|count\(18),
	cin => \inst|row_debounce:10:debounce_keys|count[17]~55\,
	combout => \inst|row_debounce:10:debounce_keys|count[18]~56_combout\);

-- Location: FF_X32_Y6_N19
\inst|row_debounce:10:debounce_keys|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:10:debounce_keys|count[18]~56_combout\,
	sclr => \inst|row_debounce:10:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:10:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:10:debounce_keys|count\(18));

-- Location: LCCOMB_X32_Y6_N28
\inst|row_debounce:10:debounce_keys|result~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:10:debounce_keys|result~1_combout\ = (!\inst|row_debounce:10:debounce_keys|count\(12) & (!\inst|row_debounce:10:debounce_keys|count\(10) & (!\inst|row_debounce:10:debounce_keys|count\(11) & 
-- !\inst|row_debounce:10:debounce_keys|count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:10:debounce_keys|count\(12),
	datab => \inst|row_debounce:10:debounce_keys|count\(10),
	datac => \inst|row_debounce:10:debounce_keys|count\(11),
	datad => \inst|row_debounce:10:debounce_keys|count\(9),
	combout => \inst|row_debounce:10:debounce_keys|result~1_combout\);

-- Location: LCCOMB_X32_Y7_N0
\inst|row_debounce:10:debounce_keys|result~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:10:debounce_keys|result~0_combout\ = ((!\inst|row_debounce:10:debounce_keys|count\(7) & (!\inst|row_debounce:10:debounce_keys|count\(6) & !\inst|row_debounce:10:debounce_keys|count\(5)))) # 
-- (!\inst|row_debounce:10:debounce_keys|count\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:10:debounce_keys|count\(8),
	datab => \inst|row_debounce:10:debounce_keys|count\(7),
	datac => \inst|row_debounce:10:debounce_keys|count\(6),
	datad => \inst|row_debounce:10:debounce_keys|count\(5),
	combout => \inst|row_debounce:10:debounce_keys|result~0_combout\);

-- Location: LCCOMB_X32_Y6_N30
\inst|row_debounce:10:debounce_keys|result~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:10:debounce_keys|result~2_combout\ = (!\inst|row_debounce:10:debounce_keys|count\(14) & (((\inst|row_debounce:10:debounce_keys|result~1_combout\ & \inst|row_debounce:10:debounce_keys|result~0_combout\)) # 
-- (!\inst|row_debounce:10:debounce_keys|count\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:10:debounce_keys|count\(14),
	datab => \inst|row_debounce:10:debounce_keys|result~1_combout\,
	datac => \inst|row_debounce:10:debounce_keys|count\(13),
	datad => \inst|row_debounce:10:debounce_keys|result~0_combout\,
	combout => \inst|row_debounce:10:debounce_keys|result~2_combout\);

-- Location: LCCOMB_X32_Y6_N22
\inst|row_debounce:10:debounce_keys|result~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:10:debounce_keys|result~4_combout\ = (\inst|row_debounce:10:debounce_keys|result~3_combout\) # (((\inst|row_debounce:10:debounce_keys|result~2_combout\) # (!\inst|row_debounce:10:debounce_keys|count\(17))) # 
-- (!\inst|row_debounce:10:debounce_keys|count\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:10:debounce_keys|result~3_combout\,
	datab => \inst|row_debounce:10:debounce_keys|count\(18),
	datac => \inst|row_debounce:10:debounce_keys|result~2_combout\,
	datad => \inst|row_debounce:10:debounce_keys|count\(17),
	combout => \inst|row_debounce:10:debounce_keys|result~4_combout\);

-- Location: LCCOMB_X25_Y7_N24
\inst|row_debounce:10:debounce_keys|result~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:10:debounce_keys|result~5_combout\ = (\inst|row_debounce:10:debounce_keys|result~4_combout\ & ((\inst|row_debounce:10:debounce_keys|result~q\))) # (!\inst|row_debounce:10:debounce_keys|result~4_combout\ & 
-- (\inst|row_debounce:10:debounce_keys|flipflops\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:10:debounce_keys|flipflops\(1),
	datac => \inst|row_debounce:10:debounce_keys|result~q\,
	datad => \inst|row_debounce:10:debounce_keys|result~4_combout\,
	combout => \inst|row_debounce:10:debounce_keys|result~5_combout\);

-- Location: FF_X25_Y7_N25
\inst|row_debounce:10:debounce_keys|result\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:10:debounce_keys|result~5_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:10:debounce_keys|result~q\);

-- Location: LCCOMB_X24_Y12_N24
\inst|Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux12~0_combout\ = (\inst|process_1~10_combout\ & ((\inst|LessThan1~1_combout\) # ((\inst|Mux4~0_combout\ & !\inst|Add15~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|process_1~10_combout\,
	datab => \inst|LessThan1~1_combout\,
	datac => \inst|Mux4~0_combout\,
	datad => \inst|Add15~8_combout\,
	combout => \inst|Mux12~0_combout\);

-- Location: FF_X24_Y12_N25
\inst|keys_stored[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Mux12~0_combout\,
	ena => \inst|keys_stored[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|keys_stored\(12));

-- Location: LCCOMB_X26_Y9_N4
\inst|row_debounce:12:debounce_keys|flipflops[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:12:debounce_keys|flipflops[0]~feeder_combout\ = \inst|keys_stored\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|keys_stored\(12),
	combout => \inst|row_debounce:12:debounce_keys|flipflops[0]~feeder_combout\);

-- Location: FF_X26_Y9_N5
\inst|row_debounce:12:debounce_keys|flipflops[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:12:debounce_keys|flipflops[0]~feeder_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:12:debounce_keys|flipflops\(0));

-- Location: FF_X25_Y7_N9
\inst|row_debounce:12:debounce_keys|flipflops[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|row_debounce:12:debounce_keys|flipflops\(0),
	clrn => \rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:12:debounce_keys|flipflops\(1));

-- Location: LCCOMB_X26_Y8_N14
\inst|row_debounce:12:debounce_keys|count[0]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:12:debounce_keys|count[0]~19_combout\ = \inst|row_debounce:12:debounce_keys|count\(0) $ (VCC)
-- \inst|row_debounce:12:debounce_keys|count[0]~20\ = CARRY(\inst|row_debounce:12:debounce_keys|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:12:debounce_keys|count\(0),
	datad => VCC,
	combout => \inst|row_debounce:12:debounce_keys|count[0]~19_combout\,
	cout => \inst|row_debounce:12:debounce_keys|count[0]~20\);

-- Location: LCCOMB_X26_Y7_N24
\inst|row_debounce:12:debounce_keys|counter_set\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:12:debounce_keys|counter_set~combout\ = \inst|row_debounce:12:debounce_keys|flipflops\(0) $ (\inst|row_debounce:12:debounce_keys|flipflops\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:12:debounce_keys|flipflops\(0),
	datad => \inst|row_debounce:12:debounce_keys|flipflops\(1),
	combout => \inst|row_debounce:12:debounce_keys|counter_set~combout\);

-- Location: LCCOMB_X26_Y7_N22
\inst|row_debounce:12:debounce_keys|count[18]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:12:debounce_keys|count[18]~31_combout\ = (\inst|row_debounce:12:debounce_keys|result~4_combout\ & \rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:12:debounce_keys|result~4_combout\,
	datac => \rst~input_o\,
	combout => \inst|row_debounce:12:debounce_keys|count[18]~31_combout\);

-- Location: FF_X26_Y8_N15
\inst|row_debounce:12:debounce_keys|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:12:debounce_keys|count[0]~19_combout\,
	sclr => \inst|row_debounce:12:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:12:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:12:debounce_keys|count\(0));

-- Location: LCCOMB_X26_Y8_N16
\inst|row_debounce:12:debounce_keys|count[1]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:12:debounce_keys|count[1]~21_combout\ = (\inst|row_debounce:12:debounce_keys|count\(1) & (!\inst|row_debounce:12:debounce_keys|count[0]~20\)) # (!\inst|row_debounce:12:debounce_keys|count\(1) & 
-- ((\inst|row_debounce:12:debounce_keys|count[0]~20\) # (GND)))
-- \inst|row_debounce:12:debounce_keys|count[1]~22\ = CARRY((!\inst|row_debounce:12:debounce_keys|count[0]~20\) # (!\inst|row_debounce:12:debounce_keys|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:12:debounce_keys|count\(1),
	datad => VCC,
	cin => \inst|row_debounce:12:debounce_keys|count[0]~20\,
	combout => \inst|row_debounce:12:debounce_keys|count[1]~21_combout\,
	cout => \inst|row_debounce:12:debounce_keys|count[1]~22\);

-- Location: FF_X26_Y8_N17
\inst|row_debounce:12:debounce_keys|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:12:debounce_keys|count[1]~21_combout\,
	sclr => \inst|row_debounce:12:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:12:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:12:debounce_keys|count\(1));

-- Location: LCCOMB_X26_Y8_N18
\inst|row_debounce:12:debounce_keys|count[2]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:12:debounce_keys|count[2]~23_combout\ = (\inst|row_debounce:12:debounce_keys|count\(2) & (\inst|row_debounce:12:debounce_keys|count[1]~22\ $ (GND))) # (!\inst|row_debounce:12:debounce_keys|count\(2) & 
-- (!\inst|row_debounce:12:debounce_keys|count[1]~22\ & VCC))
-- \inst|row_debounce:12:debounce_keys|count[2]~24\ = CARRY((\inst|row_debounce:12:debounce_keys|count\(2) & !\inst|row_debounce:12:debounce_keys|count[1]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:12:debounce_keys|count\(2),
	datad => VCC,
	cin => \inst|row_debounce:12:debounce_keys|count[1]~22\,
	combout => \inst|row_debounce:12:debounce_keys|count[2]~23_combout\,
	cout => \inst|row_debounce:12:debounce_keys|count[2]~24\);

-- Location: FF_X26_Y8_N19
\inst|row_debounce:12:debounce_keys|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:12:debounce_keys|count[2]~23_combout\,
	sclr => \inst|row_debounce:12:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:12:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:12:debounce_keys|count\(2));

-- Location: LCCOMB_X26_Y8_N20
\inst|row_debounce:12:debounce_keys|count[3]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:12:debounce_keys|count[3]~25_combout\ = (\inst|row_debounce:12:debounce_keys|count\(3) & (!\inst|row_debounce:12:debounce_keys|count[2]~24\)) # (!\inst|row_debounce:12:debounce_keys|count\(3) & 
-- ((\inst|row_debounce:12:debounce_keys|count[2]~24\) # (GND)))
-- \inst|row_debounce:12:debounce_keys|count[3]~26\ = CARRY((!\inst|row_debounce:12:debounce_keys|count[2]~24\) # (!\inst|row_debounce:12:debounce_keys|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:12:debounce_keys|count\(3),
	datad => VCC,
	cin => \inst|row_debounce:12:debounce_keys|count[2]~24\,
	combout => \inst|row_debounce:12:debounce_keys|count[3]~25_combout\,
	cout => \inst|row_debounce:12:debounce_keys|count[3]~26\);

-- Location: FF_X26_Y8_N21
\inst|row_debounce:12:debounce_keys|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:12:debounce_keys|count[3]~25_combout\,
	sclr => \inst|row_debounce:12:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:12:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:12:debounce_keys|count\(3));

-- Location: LCCOMB_X26_Y8_N22
\inst|row_debounce:12:debounce_keys|count[4]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:12:debounce_keys|count[4]~27_combout\ = (\inst|row_debounce:12:debounce_keys|count\(4) & (\inst|row_debounce:12:debounce_keys|count[3]~26\ $ (GND))) # (!\inst|row_debounce:12:debounce_keys|count\(4) & 
-- (!\inst|row_debounce:12:debounce_keys|count[3]~26\ & VCC))
-- \inst|row_debounce:12:debounce_keys|count[4]~28\ = CARRY((\inst|row_debounce:12:debounce_keys|count\(4) & !\inst|row_debounce:12:debounce_keys|count[3]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:12:debounce_keys|count\(4),
	datad => VCC,
	cin => \inst|row_debounce:12:debounce_keys|count[3]~26\,
	combout => \inst|row_debounce:12:debounce_keys|count[4]~27_combout\,
	cout => \inst|row_debounce:12:debounce_keys|count[4]~28\);

-- Location: FF_X26_Y8_N23
\inst|row_debounce:12:debounce_keys|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:12:debounce_keys|count[4]~27_combout\,
	sclr => \inst|row_debounce:12:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:12:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:12:debounce_keys|count\(4));

-- Location: LCCOMB_X26_Y8_N24
\inst|row_debounce:12:debounce_keys|count[5]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:12:debounce_keys|count[5]~29_combout\ = (\inst|row_debounce:12:debounce_keys|count\(5) & (!\inst|row_debounce:12:debounce_keys|count[4]~28\)) # (!\inst|row_debounce:12:debounce_keys|count\(5) & 
-- ((\inst|row_debounce:12:debounce_keys|count[4]~28\) # (GND)))
-- \inst|row_debounce:12:debounce_keys|count[5]~30\ = CARRY((!\inst|row_debounce:12:debounce_keys|count[4]~28\) # (!\inst|row_debounce:12:debounce_keys|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:12:debounce_keys|count\(5),
	datad => VCC,
	cin => \inst|row_debounce:12:debounce_keys|count[4]~28\,
	combout => \inst|row_debounce:12:debounce_keys|count[5]~29_combout\,
	cout => \inst|row_debounce:12:debounce_keys|count[5]~30\);

-- Location: FF_X26_Y8_N25
\inst|row_debounce:12:debounce_keys|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:12:debounce_keys|count[5]~29_combout\,
	sclr => \inst|row_debounce:12:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:12:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:12:debounce_keys|count\(5));

-- Location: LCCOMB_X26_Y8_N26
\inst|row_debounce:12:debounce_keys|count[6]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:12:debounce_keys|count[6]~32_combout\ = (\inst|row_debounce:12:debounce_keys|count\(6) & (\inst|row_debounce:12:debounce_keys|count[5]~30\ $ (GND))) # (!\inst|row_debounce:12:debounce_keys|count\(6) & 
-- (!\inst|row_debounce:12:debounce_keys|count[5]~30\ & VCC))
-- \inst|row_debounce:12:debounce_keys|count[6]~33\ = CARRY((\inst|row_debounce:12:debounce_keys|count\(6) & !\inst|row_debounce:12:debounce_keys|count[5]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:12:debounce_keys|count\(6),
	datad => VCC,
	cin => \inst|row_debounce:12:debounce_keys|count[5]~30\,
	combout => \inst|row_debounce:12:debounce_keys|count[6]~32_combout\,
	cout => \inst|row_debounce:12:debounce_keys|count[6]~33\);

-- Location: FF_X26_Y8_N27
\inst|row_debounce:12:debounce_keys|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:12:debounce_keys|count[6]~32_combout\,
	sclr => \inst|row_debounce:12:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:12:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:12:debounce_keys|count\(6));

-- Location: LCCOMB_X26_Y8_N28
\inst|row_debounce:12:debounce_keys|count[7]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:12:debounce_keys|count[7]~34_combout\ = (\inst|row_debounce:12:debounce_keys|count\(7) & (!\inst|row_debounce:12:debounce_keys|count[6]~33\)) # (!\inst|row_debounce:12:debounce_keys|count\(7) & 
-- ((\inst|row_debounce:12:debounce_keys|count[6]~33\) # (GND)))
-- \inst|row_debounce:12:debounce_keys|count[7]~35\ = CARRY((!\inst|row_debounce:12:debounce_keys|count[6]~33\) # (!\inst|row_debounce:12:debounce_keys|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:12:debounce_keys|count\(7),
	datad => VCC,
	cin => \inst|row_debounce:12:debounce_keys|count[6]~33\,
	combout => \inst|row_debounce:12:debounce_keys|count[7]~34_combout\,
	cout => \inst|row_debounce:12:debounce_keys|count[7]~35\);

-- Location: FF_X26_Y8_N29
\inst|row_debounce:12:debounce_keys|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:12:debounce_keys|count[7]~34_combout\,
	sclr => \inst|row_debounce:12:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:12:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:12:debounce_keys|count\(7));

-- Location: LCCOMB_X26_Y8_N30
\inst|row_debounce:12:debounce_keys|count[8]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:12:debounce_keys|count[8]~36_combout\ = (\inst|row_debounce:12:debounce_keys|count\(8) & (\inst|row_debounce:12:debounce_keys|count[7]~35\ $ (GND))) # (!\inst|row_debounce:12:debounce_keys|count\(8) & 
-- (!\inst|row_debounce:12:debounce_keys|count[7]~35\ & VCC))
-- \inst|row_debounce:12:debounce_keys|count[8]~37\ = CARRY((\inst|row_debounce:12:debounce_keys|count\(8) & !\inst|row_debounce:12:debounce_keys|count[7]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:12:debounce_keys|count\(8),
	datad => VCC,
	cin => \inst|row_debounce:12:debounce_keys|count[7]~35\,
	combout => \inst|row_debounce:12:debounce_keys|count[8]~36_combout\,
	cout => \inst|row_debounce:12:debounce_keys|count[8]~37\);

-- Location: FF_X26_Y8_N31
\inst|row_debounce:12:debounce_keys|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:12:debounce_keys|count[8]~36_combout\,
	sclr => \inst|row_debounce:12:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:12:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:12:debounce_keys|count\(8));

-- Location: LCCOMB_X26_Y7_N0
\inst|row_debounce:12:debounce_keys|count[9]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:12:debounce_keys|count[9]~38_combout\ = (\inst|row_debounce:12:debounce_keys|count\(9) & (!\inst|row_debounce:12:debounce_keys|count[8]~37\)) # (!\inst|row_debounce:12:debounce_keys|count\(9) & 
-- ((\inst|row_debounce:12:debounce_keys|count[8]~37\) # (GND)))
-- \inst|row_debounce:12:debounce_keys|count[9]~39\ = CARRY((!\inst|row_debounce:12:debounce_keys|count[8]~37\) # (!\inst|row_debounce:12:debounce_keys|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:12:debounce_keys|count\(9),
	datad => VCC,
	cin => \inst|row_debounce:12:debounce_keys|count[8]~37\,
	combout => \inst|row_debounce:12:debounce_keys|count[9]~38_combout\,
	cout => \inst|row_debounce:12:debounce_keys|count[9]~39\);

-- Location: FF_X26_Y7_N1
\inst|row_debounce:12:debounce_keys|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:12:debounce_keys|count[9]~38_combout\,
	sclr => \inst|row_debounce:12:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:12:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:12:debounce_keys|count\(9));

-- Location: LCCOMB_X26_Y7_N2
\inst|row_debounce:12:debounce_keys|count[10]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:12:debounce_keys|count[10]~40_combout\ = (\inst|row_debounce:12:debounce_keys|count\(10) & (\inst|row_debounce:12:debounce_keys|count[9]~39\ $ (GND))) # (!\inst|row_debounce:12:debounce_keys|count\(10) & 
-- (!\inst|row_debounce:12:debounce_keys|count[9]~39\ & VCC))
-- \inst|row_debounce:12:debounce_keys|count[10]~41\ = CARRY((\inst|row_debounce:12:debounce_keys|count\(10) & !\inst|row_debounce:12:debounce_keys|count[9]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:12:debounce_keys|count\(10),
	datad => VCC,
	cin => \inst|row_debounce:12:debounce_keys|count[9]~39\,
	combout => \inst|row_debounce:12:debounce_keys|count[10]~40_combout\,
	cout => \inst|row_debounce:12:debounce_keys|count[10]~41\);

-- Location: FF_X26_Y7_N3
\inst|row_debounce:12:debounce_keys|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:12:debounce_keys|count[10]~40_combout\,
	sclr => \inst|row_debounce:12:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:12:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:12:debounce_keys|count\(10));

-- Location: LCCOMB_X26_Y7_N4
\inst|row_debounce:12:debounce_keys|count[11]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:12:debounce_keys|count[11]~42_combout\ = (\inst|row_debounce:12:debounce_keys|count\(11) & (!\inst|row_debounce:12:debounce_keys|count[10]~41\)) # (!\inst|row_debounce:12:debounce_keys|count\(11) & 
-- ((\inst|row_debounce:12:debounce_keys|count[10]~41\) # (GND)))
-- \inst|row_debounce:12:debounce_keys|count[11]~43\ = CARRY((!\inst|row_debounce:12:debounce_keys|count[10]~41\) # (!\inst|row_debounce:12:debounce_keys|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:12:debounce_keys|count\(11),
	datad => VCC,
	cin => \inst|row_debounce:12:debounce_keys|count[10]~41\,
	combout => \inst|row_debounce:12:debounce_keys|count[11]~42_combout\,
	cout => \inst|row_debounce:12:debounce_keys|count[11]~43\);

-- Location: FF_X26_Y7_N5
\inst|row_debounce:12:debounce_keys|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:12:debounce_keys|count[11]~42_combout\,
	sclr => \inst|row_debounce:12:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:12:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:12:debounce_keys|count\(11));

-- Location: LCCOMB_X26_Y7_N6
\inst|row_debounce:12:debounce_keys|count[12]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:12:debounce_keys|count[12]~44_combout\ = (\inst|row_debounce:12:debounce_keys|count\(12) & (\inst|row_debounce:12:debounce_keys|count[11]~43\ $ (GND))) # (!\inst|row_debounce:12:debounce_keys|count\(12) & 
-- (!\inst|row_debounce:12:debounce_keys|count[11]~43\ & VCC))
-- \inst|row_debounce:12:debounce_keys|count[12]~45\ = CARRY((\inst|row_debounce:12:debounce_keys|count\(12) & !\inst|row_debounce:12:debounce_keys|count[11]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:12:debounce_keys|count\(12),
	datad => VCC,
	cin => \inst|row_debounce:12:debounce_keys|count[11]~43\,
	combout => \inst|row_debounce:12:debounce_keys|count[12]~44_combout\,
	cout => \inst|row_debounce:12:debounce_keys|count[12]~45\);

-- Location: FF_X26_Y7_N7
\inst|row_debounce:12:debounce_keys|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:12:debounce_keys|count[12]~44_combout\,
	sclr => \inst|row_debounce:12:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:12:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:12:debounce_keys|count\(12));

-- Location: LCCOMB_X26_Y7_N8
\inst|row_debounce:12:debounce_keys|count[13]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:12:debounce_keys|count[13]~46_combout\ = (\inst|row_debounce:12:debounce_keys|count\(13) & (!\inst|row_debounce:12:debounce_keys|count[12]~45\)) # (!\inst|row_debounce:12:debounce_keys|count\(13) & 
-- ((\inst|row_debounce:12:debounce_keys|count[12]~45\) # (GND)))
-- \inst|row_debounce:12:debounce_keys|count[13]~47\ = CARRY((!\inst|row_debounce:12:debounce_keys|count[12]~45\) # (!\inst|row_debounce:12:debounce_keys|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:12:debounce_keys|count\(13),
	datad => VCC,
	cin => \inst|row_debounce:12:debounce_keys|count[12]~45\,
	combout => \inst|row_debounce:12:debounce_keys|count[13]~46_combout\,
	cout => \inst|row_debounce:12:debounce_keys|count[13]~47\);

-- Location: FF_X26_Y7_N9
\inst|row_debounce:12:debounce_keys|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:12:debounce_keys|count[13]~46_combout\,
	sclr => \inst|row_debounce:12:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:12:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:12:debounce_keys|count\(13));

-- Location: LCCOMB_X26_Y7_N10
\inst|row_debounce:12:debounce_keys|count[14]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:12:debounce_keys|count[14]~48_combout\ = (\inst|row_debounce:12:debounce_keys|count\(14) & (\inst|row_debounce:12:debounce_keys|count[13]~47\ $ (GND))) # (!\inst|row_debounce:12:debounce_keys|count\(14) & 
-- (!\inst|row_debounce:12:debounce_keys|count[13]~47\ & VCC))
-- \inst|row_debounce:12:debounce_keys|count[14]~49\ = CARRY((\inst|row_debounce:12:debounce_keys|count\(14) & !\inst|row_debounce:12:debounce_keys|count[13]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:12:debounce_keys|count\(14),
	datad => VCC,
	cin => \inst|row_debounce:12:debounce_keys|count[13]~47\,
	combout => \inst|row_debounce:12:debounce_keys|count[14]~48_combout\,
	cout => \inst|row_debounce:12:debounce_keys|count[14]~49\);

-- Location: FF_X26_Y7_N11
\inst|row_debounce:12:debounce_keys|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:12:debounce_keys|count[14]~48_combout\,
	sclr => \inst|row_debounce:12:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:12:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:12:debounce_keys|count\(14));

-- Location: LCCOMB_X26_Y7_N12
\inst|row_debounce:12:debounce_keys|count[15]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:12:debounce_keys|count[15]~50_combout\ = (\inst|row_debounce:12:debounce_keys|count\(15) & (!\inst|row_debounce:12:debounce_keys|count[14]~49\)) # (!\inst|row_debounce:12:debounce_keys|count\(15) & 
-- ((\inst|row_debounce:12:debounce_keys|count[14]~49\) # (GND)))
-- \inst|row_debounce:12:debounce_keys|count[15]~51\ = CARRY((!\inst|row_debounce:12:debounce_keys|count[14]~49\) # (!\inst|row_debounce:12:debounce_keys|count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:12:debounce_keys|count\(15),
	datad => VCC,
	cin => \inst|row_debounce:12:debounce_keys|count[14]~49\,
	combout => \inst|row_debounce:12:debounce_keys|count[15]~50_combout\,
	cout => \inst|row_debounce:12:debounce_keys|count[15]~51\);

-- Location: FF_X26_Y7_N13
\inst|row_debounce:12:debounce_keys|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:12:debounce_keys|count[15]~50_combout\,
	sclr => \inst|row_debounce:12:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:12:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:12:debounce_keys|count\(15));

-- Location: LCCOMB_X26_Y7_N14
\inst|row_debounce:12:debounce_keys|count[16]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:12:debounce_keys|count[16]~52_combout\ = (\inst|row_debounce:12:debounce_keys|count\(16) & (\inst|row_debounce:12:debounce_keys|count[15]~51\ $ (GND))) # (!\inst|row_debounce:12:debounce_keys|count\(16) & 
-- (!\inst|row_debounce:12:debounce_keys|count[15]~51\ & VCC))
-- \inst|row_debounce:12:debounce_keys|count[16]~53\ = CARRY((\inst|row_debounce:12:debounce_keys|count\(16) & !\inst|row_debounce:12:debounce_keys|count[15]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:12:debounce_keys|count\(16),
	datad => VCC,
	cin => \inst|row_debounce:12:debounce_keys|count[15]~51\,
	combout => \inst|row_debounce:12:debounce_keys|count[16]~52_combout\,
	cout => \inst|row_debounce:12:debounce_keys|count[16]~53\);

-- Location: FF_X26_Y7_N15
\inst|row_debounce:12:debounce_keys|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:12:debounce_keys|count[16]~52_combout\,
	sclr => \inst|row_debounce:12:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:12:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:12:debounce_keys|count\(16));

-- Location: LCCOMB_X26_Y7_N28
\inst|row_debounce:12:debounce_keys|result~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:12:debounce_keys|result~3_combout\ = ((\inst|row_debounce:12:debounce_keys|flipflops\(1) $ (\inst|row_debounce:12:debounce_keys|flipflops\(0))) # (!\inst|row_debounce:12:debounce_keys|count\(15))) # 
-- (!\inst|row_debounce:12:debounce_keys|count\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:12:debounce_keys|flipflops\(1),
	datab => \inst|row_debounce:12:debounce_keys|flipflops\(0),
	datac => \inst|row_debounce:12:debounce_keys|count\(16),
	datad => \inst|row_debounce:12:debounce_keys|count\(15),
	combout => \inst|row_debounce:12:debounce_keys|result~3_combout\);

-- Location: LCCOMB_X26_Y7_N16
\inst|row_debounce:12:debounce_keys|count[17]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:12:debounce_keys|count[17]~54_combout\ = (\inst|row_debounce:12:debounce_keys|count\(17) & (!\inst|row_debounce:12:debounce_keys|count[16]~53\)) # (!\inst|row_debounce:12:debounce_keys|count\(17) & 
-- ((\inst|row_debounce:12:debounce_keys|count[16]~53\) # (GND)))
-- \inst|row_debounce:12:debounce_keys|count[17]~55\ = CARRY((!\inst|row_debounce:12:debounce_keys|count[16]~53\) # (!\inst|row_debounce:12:debounce_keys|count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:12:debounce_keys|count\(17),
	datad => VCC,
	cin => \inst|row_debounce:12:debounce_keys|count[16]~53\,
	combout => \inst|row_debounce:12:debounce_keys|count[17]~54_combout\,
	cout => \inst|row_debounce:12:debounce_keys|count[17]~55\);

-- Location: FF_X26_Y7_N17
\inst|row_debounce:12:debounce_keys|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:12:debounce_keys|count[17]~54_combout\,
	sclr => \inst|row_debounce:12:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:12:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:12:debounce_keys|count\(17));

-- Location: LCCOMB_X26_Y7_N18
\inst|row_debounce:12:debounce_keys|count[18]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:12:debounce_keys|count[18]~56_combout\ = \inst|row_debounce:12:debounce_keys|count[17]~55\ $ (!\inst|row_debounce:12:debounce_keys|count\(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|row_debounce:12:debounce_keys|count\(18),
	cin => \inst|row_debounce:12:debounce_keys|count[17]~55\,
	combout => \inst|row_debounce:12:debounce_keys|count[18]~56_combout\);

-- Location: FF_X26_Y7_N19
\inst|row_debounce:12:debounce_keys|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:12:debounce_keys|count[18]~56_combout\,
	sclr => \inst|row_debounce:12:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:12:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:12:debounce_keys|count\(18));

-- Location: LCCOMB_X26_Y8_N8
\inst|row_debounce:12:debounce_keys|result~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:12:debounce_keys|result~0_combout\ = ((!\inst|row_debounce:12:debounce_keys|count\(7) & (!\inst|row_debounce:12:debounce_keys|count\(6) & !\inst|row_debounce:12:debounce_keys|count\(5)))) # 
-- (!\inst|row_debounce:12:debounce_keys|count\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:12:debounce_keys|count\(8),
	datab => \inst|row_debounce:12:debounce_keys|count\(7),
	datac => \inst|row_debounce:12:debounce_keys|count\(6),
	datad => \inst|row_debounce:12:debounce_keys|count\(5),
	combout => \inst|row_debounce:12:debounce_keys|result~0_combout\);

-- Location: LCCOMB_X26_Y7_N20
\inst|row_debounce:12:debounce_keys|result~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:12:debounce_keys|result~1_combout\ = (!\inst|row_debounce:12:debounce_keys|count\(12) & (!\inst|row_debounce:12:debounce_keys|count\(10) & (!\inst|row_debounce:12:debounce_keys|count\(11) & 
-- !\inst|row_debounce:12:debounce_keys|count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:12:debounce_keys|count\(12),
	datab => \inst|row_debounce:12:debounce_keys|count\(10),
	datac => \inst|row_debounce:12:debounce_keys|count\(11),
	datad => \inst|row_debounce:12:debounce_keys|count\(9),
	combout => \inst|row_debounce:12:debounce_keys|result~1_combout\);

-- Location: LCCOMB_X26_Y7_N30
\inst|row_debounce:12:debounce_keys|result~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:12:debounce_keys|result~2_combout\ = (!\inst|row_debounce:12:debounce_keys|count\(14) & (((\inst|row_debounce:12:debounce_keys|result~0_combout\ & \inst|row_debounce:12:debounce_keys|result~1_combout\)) # 
-- (!\inst|row_debounce:12:debounce_keys|count\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:12:debounce_keys|result~0_combout\,
	datab => \inst|row_debounce:12:debounce_keys|result~1_combout\,
	datac => \inst|row_debounce:12:debounce_keys|count\(13),
	datad => \inst|row_debounce:12:debounce_keys|count\(14),
	combout => \inst|row_debounce:12:debounce_keys|result~2_combout\);

-- Location: LCCOMB_X26_Y7_N26
\inst|row_debounce:12:debounce_keys|result~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:12:debounce_keys|result~4_combout\ = (\inst|row_debounce:12:debounce_keys|result~3_combout\) # (((\inst|row_debounce:12:debounce_keys|result~2_combout\) # (!\inst|row_debounce:12:debounce_keys|count\(17))) # 
-- (!\inst|row_debounce:12:debounce_keys|count\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:12:debounce_keys|result~3_combout\,
	datab => \inst|row_debounce:12:debounce_keys|count\(18),
	datac => \inst|row_debounce:12:debounce_keys|result~2_combout\,
	datad => \inst|row_debounce:12:debounce_keys|count\(17),
	combout => \inst|row_debounce:12:debounce_keys|result~4_combout\);

-- Location: LCCOMB_X25_Y7_N8
\inst|row_debounce:12:debounce_keys|result~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:12:debounce_keys|result~5_combout\ = (\inst|row_debounce:12:debounce_keys|result~4_combout\ & (\inst|row_debounce:12:debounce_keys|result~q\)) # (!\inst|row_debounce:12:debounce_keys|result~4_combout\ & 
-- ((\inst|row_debounce:12:debounce_keys|flipflops\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:12:debounce_keys|result~q\,
	datac => \inst|row_debounce:12:debounce_keys|flipflops\(1),
	datad => \inst|row_debounce:12:debounce_keys|result~4_combout\,
	combout => \inst|row_debounce:12:debounce_keys|result~5_combout\);

-- Location: FF_X24_Y7_N21
\inst|row_debounce:12:debounce_keys|result\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|row_debounce:12:debounce_keys|result~5_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:12:debounce_keys|result~q\);

-- Location: LCCOMB_X24_Y12_N28
\inst|Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux13~0_combout\ = (\inst|keys_int\(13) & ((\inst|LessThan1~1_combout\) # ((\inst|Mux14~0_combout\)))) # (!\inst|keys_int\(13) & (\inst|keys_double\(13) & ((\inst|LessThan1~1_combout\) # (\inst|Mux14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|keys_int\(13),
	datab => \inst|LessThan1~1_combout\,
	datac => \inst|keys_double\(13),
	datad => \inst|Mux14~0_combout\,
	combout => \inst|Mux13~0_combout\);

-- Location: FF_X24_Y12_N29
\inst|keys_stored[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Mux13~0_combout\,
	ena => \inst|keys_stored[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|keys_stored\(13));

-- Location: LCCOMB_X18_Y7_N6
\inst|row_debounce:13:debounce_keys|flipflops[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:13:debounce_keys|flipflops[0]~feeder_combout\ = \inst|keys_stored\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|keys_stored\(13),
	combout => \inst|row_debounce:13:debounce_keys|flipflops[0]~feeder_combout\);

-- Location: FF_X18_Y7_N7
\inst|row_debounce:13:debounce_keys|flipflops[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:13:debounce_keys|flipflops[0]~feeder_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:13:debounce_keys|flipflops\(0));

-- Location: LCCOMB_X18_Y7_N20
\inst|row_debounce:13:debounce_keys|flipflops[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:13:debounce_keys|flipflops[1]~feeder_combout\ = \inst|row_debounce:13:debounce_keys|flipflops\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|row_debounce:13:debounce_keys|flipflops\(0),
	combout => \inst|row_debounce:13:debounce_keys|flipflops[1]~feeder_combout\);

-- Location: FF_X18_Y7_N21
\inst|row_debounce:13:debounce_keys|flipflops[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:13:debounce_keys|flipflops[1]~feeder_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:13:debounce_keys|flipflops\(1));

-- Location: LCCOMB_X19_Y8_N14
\inst|row_debounce:13:debounce_keys|count[0]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:13:debounce_keys|count[0]~19_combout\ = \inst|row_debounce:13:debounce_keys|count\(0) $ (VCC)
-- \inst|row_debounce:13:debounce_keys|count[0]~20\ = CARRY(\inst|row_debounce:13:debounce_keys|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:13:debounce_keys|count\(0),
	datad => VCC,
	combout => \inst|row_debounce:13:debounce_keys|count[0]~19_combout\,
	cout => \inst|row_debounce:13:debounce_keys|count[0]~20\);

-- Location: LCCOMB_X19_Y7_N24
\inst|row_debounce:13:debounce_keys|counter_set\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:13:debounce_keys|counter_set~combout\ = \inst|row_debounce:13:debounce_keys|flipflops\(1) $ (\inst|row_debounce:13:debounce_keys|flipflops\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:13:debounce_keys|flipflops\(1),
	datac => \inst|row_debounce:13:debounce_keys|flipflops\(0),
	combout => \inst|row_debounce:13:debounce_keys|counter_set~combout\);

-- Location: LCCOMB_X19_Y7_N22
\inst|row_debounce:13:debounce_keys|count[18]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:13:debounce_keys|count[18]~31_combout\ = (\rst~input_o\ & \inst|row_debounce:13:debounce_keys|result~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datac => \inst|row_debounce:13:debounce_keys|result~4_combout\,
	combout => \inst|row_debounce:13:debounce_keys|count[18]~31_combout\);

-- Location: FF_X19_Y8_N15
\inst|row_debounce:13:debounce_keys|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:13:debounce_keys|count[0]~19_combout\,
	sclr => \inst|row_debounce:13:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:13:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:13:debounce_keys|count\(0));

-- Location: LCCOMB_X19_Y8_N16
\inst|row_debounce:13:debounce_keys|count[1]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:13:debounce_keys|count[1]~21_combout\ = (\inst|row_debounce:13:debounce_keys|count\(1) & (!\inst|row_debounce:13:debounce_keys|count[0]~20\)) # (!\inst|row_debounce:13:debounce_keys|count\(1) & 
-- ((\inst|row_debounce:13:debounce_keys|count[0]~20\) # (GND)))
-- \inst|row_debounce:13:debounce_keys|count[1]~22\ = CARRY((!\inst|row_debounce:13:debounce_keys|count[0]~20\) # (!\inst|row_debounce:13:debounce_keys|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:13:debounce_keys|count\(1),
	datad => VCC,
	cin => \inst|row_debounce:13:debounce_keys|count[0]~20\,
	combout => \inst|row_debounce:13:debounce_keys|count[1]~21_combout\,
	cout => \inst|row_debounce:13:debounce_keys|count[1]~22\);

-- Location: FF_X19_Y8_N17
\inst|row_debounce:13:debounce_keys|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:13:debounce_keys|count[1]~21_combout\,
	sclr => \inst|row_debounce:13:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:13:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:13:debounce_keys|count\(1));

-- Location: LCCOMB_X19_Y8_N18
\inst|row_debounce:13:debounce_keys|count[2]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:13:debounce_keys|count[2]~23_combout\ = (\inst|row_debounce:13:debounce_keys|count\(2) & (\inst|row_debounce:13:debounce_keys|count[1]~22\ $ (GND))) # (!\inst|row_debounce:13:debounce_keys|count\(2) & 
-- (!\inst|row_debounce:13:debounce_keys|count[1]~22\ & VCC))
-- \inst|row_debounce:13:debounce_keys|count[2]~24\ = CARRY((\inst|row_debounce:13:debounce_keys|count\(2) & !\inst|row_debounce:13:debounce_keys|count[1]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:13:debounce_keys|count\(2),
	datad => VCC,
	cin => \inst|row_debounce:13:debounce_keys|count[1]~22\,
	combout => \inst|row_debounce:13:debounce_keys|count[2]~23_combout\,
	cout => \inst|row_debounce:13:debounce_keys|count[2]~24\);

-- Location: FF_X19_Y8_N19
\inst|row_debounce:13:debounce_keys|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:13:debounce_keys|count[2]~23_combout\,
	sclr => \inst|row_debounce:13:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:13:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:13:debounce_keys|count\(2));

-- Location: LCCOMB_X19_Y8_N20
\inst|row_debounce:13:debounce_keys|count[3]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:13:debounce_keys|count[3]~25_combout\ = (\inst|row_debounce:13:debounce_keys|count\(3) & (!\inst|row_debounce:13:debounce_keys|count[2]~24\)) # (!\inst|row_debounce:13:debounce_keys|count\(3) & 
-- ((\inst|row_debounce:13:debounce_keys|count[2]~24\) # (GND)))
-- \inst|row_debounce:13:debounce_keys|count[3]~26\ = CARRY((!\inst|row_debounce:13:debounce_keys|count[2]~24\) # (!\inst|row_debounce:13:debounce_keys|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:13:debounce_keys|count\(3),
	datad => VCC,
	cin => \inst|row_debounce:13:debounce_keys|count[2]~24\,
	combout => \inst|row_debounce:13:debounce_keys|count[3]~25_combout\,
	cout => \inst|row_debounce:13:debounce_keys|count[3]~26\);

-- Location: FF_X19_Y8_N21
\inst|row_debounce:13:debounce_keys|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:13:debounce_keys|count[3]~25_combout\,
	sclr => \inst|row_debounce:13:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:13:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:13:debounce_keys|count\(3));

-- Location: LCCOMB_X19_Y8_N22
\inst|row_debounce:13:debounce_keys|count[4]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:13:debounce_keys|count[4]~27_combout\ = (\inst|row_debounce:13:debounce_keys|count\(4) & (\inst|row_debounce:13:debounce_keys|count[3]~26\ $ (GND))) # (!\inst|row_debounce:13:debounce_keys|count\(4) & 
-- (!\inst|row_debounce:13:debounce_keys|count[3]~26\ & VCC))
-- \inst|row_debounce:13:debounce_keys|count[4]~28\ = CARRY((\inst|row_debounce:13:debounce_keys|count\(4) & !\inst|row_debounce:13:debounce_keys|count[3]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:13:debounce_keys|count\(4),
	datad => VCC,
	cin => \inst|row_debounce:13:debounce_keys|count[3]~26\,
	combout => \inst|row_debounce:13:debounce_keys|count[4]~27_combout\,
	cout => \inst|row_debounce:13:debounce_keys|count[4]~28\);

-- Location: FF_X19_Y8_N23
\inst|row_debounce:13:debounce_keys|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:13:debounce_keys|count[4]~27_combout\,
	sclr => \inst|row_debounce:13:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:13:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:13:debounce_keys|count\(4));

-- Location: LCCOMB_X19_Y8_N24
\inst|row_debounce:13:debounce_keys|count[5]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:13:debounce_keys|count[5]~29_combout\ = (\inst|row_debounce:13:debounce_keys|count\(5) & (!\inst|row_debounce:13:debounce_keys|count[4]~28\)) # (!\inst|row_debounce:13:debounce_keys|count\(5) & 
-- ((\inst|row_debounce:13:debounce_keys|count[4]~28\) # (GND)))
-- \inst|row_debounce:13:debounce_keys|count[5]~30\ = CARRY((!\inst|row_debounce:13:debounce_keys|count[4]~28\) # (!\inst|row_debounce:13:debounce_keys|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:13:debounce_keys|count\(5),
	datad => VCC,
	cin => \inst|row_debounce:13:debounce_keys|count[4]~28\,
	combout => \inst|row_debounce:13:debounce_keys|count[5]~29_combout\,
	cout => \inst|row_debounce:13:debounce_keys|count[5]~30\);

-- Location: FF_X19_Y8_N25
\inst|row_debounce:13:debounce_keys|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:13:debounce_keys|count[5]~29_combout\,
	sclr => \inst|row_debounce:13:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:13:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:13:debounce_keys|count\(5));

-- Location: LCCOMB_X19_Y8_N26
\inst|row_debounce:13:debounce_keys|count[6]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:13:debounce_keys|count[6]~32_combout\ = (\inst|row_debounce:13:debounce_keys|count\(6) & (\inst|row_debounce:13:debounce_keys|count[5]~30\ $ (GND))) # (!\inst|row_debounce:13:debounce_keys|count\(6) & 
-- (!\inst|row_debounce:13:debounce_keys|count[5]~30\ & VCC))
-- \inst|row_debounce:13:debounce_keys|count[6]~33\ = CARRY((\inst|row_debounce:13:debounce_keys|count\(6) & !\inst|row_debounce:13:debounce_keys|count[5]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:13:debounce_keys|count\(6),
	datad => VCC,
	cin => \inst|row_debounce:13:debounce_keys|count[5]~30\,
	combout => \inst|row_debounce:13:debounce_keys|count[6]~32_combout\,
	cout => \inst|row_debounce:13:debounce_keys|count[6]~33\);

-- Location: FF_X19_Y8_N27
\inst|row_debounce:13:debounce_keys|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:13:debounce_keys|count[6]~32_combout\,
	sclr => \inst|row_debounce:13:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:13:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:13:debounce_keys|count\(6));

-- Location: LCCOMB_X19_Y8_N28
\inst|row_debounce:13:debounce_keys|count[7]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:13:debounce_keys|count[7]~34_combout\ = (\inst|row_debounce:13:debounce_keys|count\(7) & (!\inst|row_debounce:13:debounce_keys|count[6]~33\)) # (!\inst|row_debounce:13:debounce_keys|count\(7) & 
-- ((\inst|row_debounce:13:debounce_keys|count[6]~33\) # (GND)))
-- \inst|row_debounce:13:debounce_keys|count[7]~35\ = CARRY((!\inst|row_debounce:13:debounce_keys|count[6]~33\) # (!\inst|row_debounce:13:debounce_keys|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:13:debounce_keys|count\(7),
	datad => VCC,
	cin => \inst|row_debounce:13:debounce_keys|count[6]~33\,
	combout => \inst|row_debounce:13:debounce_keys|count[7]~34_combout\,
	cout => \inst|row_debounce:13:debounce_keys|count[7]~35\);

-- Location: FF_X19_Y8_N29
\inst|row_debounce:13:debounce_keys|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:13:debounce_keys|count[7]~34_combout\,
	sclr => \inst|row_debounce:13:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:13:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:13:debounce_keys|count\(7));

-- Location: LCCOMB_X19_Y8_N30
\inst|row_debounce:13:debounce_keys|count[8]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:13:debounce_keys|count[8]~36_combout\ = (\inst|row_debounce:13:debounce_keys|count\(8) & (\inst|row_debounce:13:debounce_keys|count[7]~35\ $ (GND))) # (!\inst|row_debounce:13:debounce_keys|count\(8) & 
-- (!\inst|row_debounce:13:debounce_keys|count[7]~35\ & VCC))
-- \inst|row_debounce:13:debounce_keys|count[8]~37\ = CARRY((\inst|row_debounce:13:debounce_keys|count\(8) & !\inst|row_debounce:13:debounce_keys|count[7]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:13:debounce_keys|count\(8),
	datad => VCC,
	cin => \inst|row_debounce:13:debounce_keys|count[7]~35\,
	combout => \inst|row_debounce:13:debounce_keys|count[8]~36_combout\,
	cout => \inst|row_debounce:13:debounce_keys|count[8]~37\);

-- Location: FF_X19_Y8_N31
\inst|row_debounce:13:debounce_keys|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:13:debounce_keys|count[8]~36_combout\,
	sclr => \inst|row_debounce:13:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:13:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:13:debounce_keys|count\(8));

-- Location: LCCOMB_X19_Y7_N0
\inst|row_debounce:13:debounce_keys|count[9]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:13:debounce_keys|count[9]~38_combout\ = (\inst|row_debounce:13:debounce_keys|count\(9) & (!\inst|row_debounce:13:debounce_keys|count[8]~37\)) # (!\inst|row_debounce:13:debounce_keys|count\(9) & 
-- ((\inst|row_debounce:13:debounce_keys|count[8]~37\) # (GND)))
-- \inst|row_debounce:13:debounce_keys|count[9]~39\ = CARRY((!\inst|row_debounce:13:debounce_keys|count[8]~37\) # (!\inst|row_debounce:13:debounce_keys|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:13:debounce_keys|count\(9),
	datad => VCC,
	cin => \inst|row_debounce:13:debounce_keys|count[8]~37\,
	combout => \inst|row_debounce:13:debounce_keys|count[9]~38_combout\,
	cout => \inst|row_debounce:13:debounce_keys|count[9]~39\);

-- Location: FF_X19_Y7_N1
\inst|row_debounce:13:debounce_keys|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:13:debounce_keys|count[9]~38_combout\,
	sclr => \inst|row_debounce:13:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:13:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:13:debounce_keys|count\(9));

-- Location: LCCOMB_X19_Y7_N2
\inst|row_debounce:13:debounce_keys|count[10]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:13:debounce_keys|count[10]~40_combout\ = (\inst|row_debounce:13:debounce_keys|count\(10) & (\inst|row_debounce:13:debounce_keys|count[9]~39\ $ (GND))) # (!\inst|row_debounce:13:debounce_keys|count\(10) & 
-- (!\inst|row_debounce:13:debounce_keys|count[9]~39\ & VCC))
-- \inst|row_debounce:13:debounce_keys|count[10]~41\ = CARRY((\inst|row_debounce:13:debounce_keys|count\(10) & !\inst|row_debounce:13:debounce_keys|count[9]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:13:debounce_keys|count\(10),
	datad => VCC,
	cin => \inst|row_debounce:13:debounce_keys|count[9]~39\,
	combout => \inst|row_debounce:13:debounce_keys|count[10]~40_combout\,
	cout => \inst|row_debounce:13:debounce_keys|count[10]~41\);

-- Location: FF_X19_Y7_N3
\inst|row_debounce:13:debounce_keys|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:13:debounce_keys|count[10]~40_combout\,
	sclr => \inst|row_debounce:13:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:13:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:13:debounce_keys|count\(10));

-- Location: LCCOMB_X19_Y7_N4
\inst|row_debounce:13:debounce_keys|count[11]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:13:debounce_keys|count[11]~42_combout\ = (\inst|row_debounce:13:debounce_keys|count\(11) & (!\inst|row_debounce:13:debounce_keys|count[10]~41\)) # (!\inst|row_debounce:13:debounce_keys|count\(11) & 
-- ((\inst|row_debounce:13:debounce_keys|count[10]~41\) # (GND)))
-- \inst|row_debounce:13:debounce_keys|count[11]~43\ = CARRY((!\inst|row_debounce:13:debounce_keys|count[10]~41\) # (!\inst|row_debounce:13:debounce_keys|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:13:debounce_keys|count\(11),
	datad => VCC,
	cin => \inst|row_debounce:13:debounce_keys|count[10]~41\,
	combout => \inst|row_debounce:13:debounce_keys|count[11]~42_combout\,
	cout => \inst|row_debounce:13:debounce_keys|count[11]~43\);

-- Location: FF_X19_Y7_N5
\inst|row_debounce:13:debounce_keys|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:13:debounce_keys|count[11]~42_combout\,
	sclr => \inst|row_debounce:13:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:13:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:13:debounce_keys|count\(11));

-- Location: LCCOMB_X19_Y7_N6
\inst|row_debounce:13:debounce_keys|count[12]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:13:debounce_keys|count[12]~44_combout\ = (\inst|row_debounce:13:debounce_keys|count\(12) & (\inst|row_debounce:13:debounce_keys|count[11]~43\ $ (GND))) # (!\inst|row_debounce:13:debounce_keys|count\(12) & 
-- (!\inst|row_debounce:13:debounce_keys|count[11]~43\ & VCC))
-- \inst|row_debounce:13:debounce_keys|count[12]~45\ = CARRY((\inst|row_debounce:13:debounce_keys|count\(12) & !\inst|row_debounce:13:debounce_keys|count[11]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:13:debounce_keys|count\(12),
	datad => VCC,
	cin => \inst|row_debounce:13:debounce_keys|count[11]~43\,
	combout => \inst|row_debounce:13:debounce_keys|count[12]~44_combout\,
	cout => \inst|row_debounce:13:debounce_keys|count[12]~45\);

-- Location: FF_X19_Y7_N7
\inst|row_debounce:13:debounce_keys|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:13:debounce_keys|count[12]~44_combout\,
	sclr => \inst|row_debounce:13:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:13:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:13:debounce_keys|count\(12));

-- Location: LCCOMB_X19_Y7_N8
\inst|row_debounce:13:debounce_keys|count[13]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:13:debounce_keys|count[13]~46_combout\ = (\inst|row_debounce:13:debounce_keys|count\(13) & (!\inst|row_debounce:13:debounce_keys|count[12]~45\)) # (!\inst|row_debounce:13:debounce_keys|count\(13) & 
-- ((\inst|row_debounce:13:debounce_keys|count[12]~45\) # (GND)))
-- \inst|row_debounce:13:debounce_keys|count[13]~47\ = CARRY((!\inst|row_debounce:13:debounce_keys|count[12]~45\) # (!\inst|row_debounce:13:debounce_keys|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:13:debounce_keys|count\(13),
	datad => VCC,
	cin => \inst|row_debounce:13:debounce_keys|count[12]~45\,
	combout => \inst|row_debounce:13:debounce_keys|count[13]~46_combout\,
	cout => \inst|row_debounce:13:debounce_keys|count[13]~47\);

-- Location: FF_X19_Y7_N9
\inst|row_debounce:13:debounce_keys|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:13:debounce_keys|count[13]~46_combout\,
	sclr => \inst|row_debounce:13:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:13:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:13:debounce_keys|count\(13));

-- Location: LCCOMB_X19_Y7_N10
\inst|row_debounce:13:debounce_keys|count[14]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:13:debounce_keys|count[14]~48_combout\ = (\inst|row_debounce:13:debounce_keys|count\(14) & (\inst|row_debounce:13:debounce_keys|count[13]~47\ $ (GND))) # (!\inst|row_debounce:13:debounce_keys|count\(14) & 
-- (!\inst|row_debounce:13:debounce_keys|count[13]~47\ & VCC))
-- \inst|row_debounce:13:debounce_keys|count[14]~49\ = CARRY((\inst|row_debounce:13:debounce_keys|count\(14) & !\inst|row_debounce:13:debounce_keys|count[13]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:13:debounce_keys|count\(14),
	datad => VCC,
	cin => \inst|row_debounce:13:debounce_keys|count[13]~47\,
	combout => \inst|row_debounce:13:debounce_keys|count[14]~48_combout\,
	cout => \inst|row_debounce:13:debounce_keys|count[14]~49\);

-- Location: FF_X19_Y7_N11
\inst|row_debounce:13:debounce_keys|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:13:debounce_keys|count[14]~48_combout\,
	sclr => \inst|row_debounce:13:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:13:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:13:debounce_keys|count\(14));

-- Location: LCCOMB_X19_Y7_N12
\inst|row_debounce:13:debounce_keys|count[15]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:13:debounce_keys|count[15]~50_combout\ = (\inst|row_debounce:13:debounce_keys|count\(15) & (!\inst|row_debounce:13:debounce_keys|count[14]~49\)) # (!\inst|row_debounce:13:debounce_keys|count\(15) & 
-- ((\inst|row_debounce:13:debounce_keys|count[14]~49\) # (GND)))
-- \inst|row_debounce:13:debounce_keys|count[15]~51\ = CARRY((!\inst|row_debounce:13:debounce_keys|count[14]~49\) # (!\inst|row_debounce:13:debounce_keys|count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:13:debounce_keys|count\(15),
	datad => VCC,
	cin => \inst|row_debounce:13:debounce_keys|count[14]~49\,
	combout => \inst|row_debounce:13:debounce_keys|count[15]~50_combout\,
	cout => \inst|row_debounce:13:debounce_keys|count[15]~51\);

-- Location: FF_X19_Y7_N13
\inst|row_debounce:13:debounce_keys|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:13:debounce_keys|count[15]~50_combout\,
	sclr => \inst|row_debounce:13:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:13:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:13:debounce_keys|count\(15));

-- Location: LCCOMB_X19_Y7_N14
\inst|row_debounce:13:debounce_keys|count[16]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:13:debounce_keys|count[16]~52_combout\ = (\inst|row_debounce:13:debounce_keys|count\(16) & (\inst|row_debounce:13:debounce_keys|count[15]~51\ $ (GND))) # (!\inst|row_debounce:13:debounce_keys|count\(16) & 
-- (!\inst|row_debounce:13:debounce_keys|count[15]~51\ & VCC))
-- \inst|row_debounce:13:debounce_keys|count[16]~53\ = CARRY((\inst|row_debounce:13:debounce_keys|count\(16) & !\inst|row_debounce:13:debounce_keys|count[15]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:13:debounce_keys|count\(16),
	datad => VCC,
	cin => \inst|row_debounce:13:debounce_keys|count[15]~51\,
	combout => \inst|row_debounce:13:debounce_keys|count[16]~52_combout\,
	cout => \inst|row_debounce:13:debounce_keys|count[16]~53\);

-- Location: FF_X19_Y7_N15
\inst|row_debounce:13:debounce_keys|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:13:debounce_keys|count[16]~52_combout\,
	sclr => \inst|row_debounce:13:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:13:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:13:debounce_keys|count\(16));

-- Location: LCCOMB_X19_Y7_N28
\inst|row_debounce:13:debounce_keys|result~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:13:debounce_keys|result~3_combout\ = ((\inst|row_debounce:13:debounce_keys|flipflops\(0) $ (\inst|row_debounce:13:debounce_keys|flipflops\(1))) # (!\inst|row_debounce:13:debounce_keys|count\(16))) # 
-- (!\inst|row_debounce:13:debounce_keys|count\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:13:debounce_keys|count\(15),
	datab => \inst|row_debounce:13:debounce_keys|flipflops\(0),
	datac => \inst|row_debounce:13:debounce_keys|count\(16),
	datad => \inst|row_debounce:13:debounce_keys|flipflops\(1),
	combout => \inst|row_debounce:13:debounce_keys|result~3_combout\);

-- Location: LCCOMB_X19_Y7_N16
\inst|row_debounce:13:debounce_keys|count[17]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:13:debounce_keys|count[17]~54_combout\ = (\inst|row_debounce:13:debounce_keys|count\(17) & (!\inst|row_debounce:13:debounce_keys|count[16]~53\)) # (!\inst|row_debounce:13:debounce_keys|count\(17) & 
-- ((\inst|row_debounce:13:debounce_keys|count[16]~53\) # (GND)))
-- \inst|row_debounce:13:debounce_keys|count[17]~55\ = CARRY((!\inst|row_debounce:13:debounce_keys|count[16]~53\) # (!\inst|row_debounce:13:debounce_keys|count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:13:debounce_keys|count\(17),
	datad => VCC,
	cin => \inst|row_debounce:13:debounce_keys|count[16]~53\,
	combout => \inst|row_debounce:13:debounce_keys|count[17]~54_combout\,
	cout => \inst|row_debounce:13:debounce_keys|count[17]~55\);

-- Location: FF_X19_Y7_N17
\inst|row_debounce:13:debounce_keys|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:13:debounce_keys|count[17]~54_combout\,
	sclr => \inst|row_debounce:13:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:13:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:13:debounce_keys|count\(17));

-- Location: LCCOMB_X19_Y7_N18
\inst|row_debounce:13:debounce_keys|count[18]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:13:debounce_keys|count[18]~56_combout\ = \inst|row_debounce:13:debounce_keys|count[17]~55\ $ (!\inst|row_debounce:13:debounce_keys|count\(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|row_debounce:13:debounce_keys|count\(18),
	cin => \inst|row_debounce:13:debounce_keys|count[17]~55\,
	combout => \inst|row_debounce:13:debounce_keys|count[18]~56_combout\);

-- Location: FF_X19_Y7_N19
\inst|row_debounce:13:debounce_keys|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:13:debounce_keys|count[18]~56_combout\,
	sclr => \inst|row_debounce:13:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:13:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:13:debounce_keys|count\(18));

-- Location: LCCOMB_X19_Y8_N8
\inst|row_debounce:13:debounce_keys|result~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:13:debounce_keys|result~0_combout\ = ((!\inst|row_debounce:13:debounce_keys|count\(6) & (!\inst|row_debounce:13:debounce_keys|count\(7) & !\inst|row_debounce:13:debounce_keys|count\(5)))) # 
-- (!\inst|row_debounce:13:debounce_keys|count\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:13:debounce_keys|count\(6),
	datab => \inst|row_debounce:13:debounce_keys|count\(7),
	datac => \inst|row_debounce:13:debounce_keys|count\(8),
	datad => \inst|row_debounce:13:debounce_keys|count\(5),
	combout => \inst|row_debounce:13:debounce_keys|result~0_combout\);

-- Location: LCCOMB_X19_Y7_N20
\inst|row_debounce:13:debounce_keys|result~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:13:debounce_keys|result~1_combout\ = (!\inst|row_debounce:13:debounce_keys|count\(12) & (!\inst|row_debounce:13:debounce_keys|count\(9) & (!\inst|row_debounce:13:debounce_keys|count\(11) & 
-- !\inst|row_debounce:13:debounce_keys|count\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:13:debounce_keys|count\(12),
	datab => \inst|row_debounce:13:debounce_keys|count\(9),
	datac => \inst|row_debounce:13:debounce_keys|count\(11),
	datad => \inst|row_debounce:13:debounce_keys|count\(10),
	combout => \inst|row_debounce:13:debounce_keys|result~1_combout\);

-- Location: LCCOMB_X19_Y7_N26
\inst|row_debounce:13:debounce_keys|result~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:13:debounce_keys|result~2_combout\ = (!\inst|row_debounce:13:debounce_keys|count\(14) & (((\inst|row_debounce:13:debounce_keys|result~0_combout\ & \inst|row_debounce:13:debounce_keys|result~1_combout\)) # 
-- (!\inst|row_debounce:13:debounce_keys|count\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:13:debounce_keys|result~0_combout\,
	datab => \inst|row_debounce:13:debounce_keys|result~1_combout\,
	datac => \inst|row_debounce:13:debounce_keys|count\(13),
	datad => \inst|row_debounce:13:debounce_keys|count\(14),
	combout => \inst|row_debounce:13:debounce_keys|result~2_combout\);

-- Location: LCCOMB_X19_Y7_N30
\inst|row_debounce:13:debounce_keys|result~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:13:debounce_keys|result~4_combout\ = (\inst|row_debounce:13:debounce_keys|result~3_combout\) # (((\inst|row_debounce:13:debounce_keys|result~2_combout\) # (!\inst|row_debounce:13:debounce_keys|count\(17))) # 
-- (!\inst|row_debounce:13:debounce_keys|count\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:13:debounce_keys|result~3_combout\,
	datab => \inst|row_debounce:13:debounce_keys|count\(18),
	datac => \inst|row_debounce:13:debounce_keys|result~2_combout\,
	datad => \inst|row_debounce:13:debounce_keys|count\(17),
	combout => \inst|row_debounce:13:debounce_keys|result~4_combout\);

-- Location: LCCOMB_X25_Y7_N22
\inst|row_debounce:13:debounce_keys|result~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:13:debounce_keys|result~5_combout\ = (\inst|row_debounce:13:debounce_keys|result~4_combout\ & ((\inst|row_debounce:13:debounce_keys|result~q\))) # (!\inst|row_debounce:13:debounce_keys|result~4_combout\ & 
-- (\inst|row_debounce:13:debounce_keys|flipflops\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:13:debounce_keys|flipflops\(1),
	datac => \inst|row_debounce:13:debounce_keys|result~q\,
	datad => \inst|row_debounce:13:debounce_keys|result~4_combout\,
	combout => \inst|row_debounce:13:debounce_keys|result~5_combout\);

-- Location: FF_X25_Y7_N23
\inst|row_debounce:13:debounce_keys|result\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:13:debounce_keys|result~5_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:13:debounce_keys|result~q\);

-- Location: LCCOMB_X24_Y7_N20
\inst|Equal6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal6~0_combout\ = (!\inst|row_debounce:11:debounce_keys|result~q\ & (!\inst|row_debounce:10:debounce_keys|result~q\ & (!\inst|row_debounce:12:debounce_keys|result~q\ & !\inst|row_debounce:13:debounce_keys|result~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:11:debounce_keys|result~q\,
	datab => \inst|row_debounce:10:debounce_keys|result~q\,
	datac => \inst|row_debounce:12:debounce_keys|result~q\,
	datad => \inst|row_debounce:13:debounce_keys|result~q\,
	combout => \inst|Equal6~0_combout\);

-- Location: LCCOMB_X24_Y7_N24
\inst|Equal8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal8~2_combout\ = (!\inst|row_debounce:6:debounce_keys|result~q\ & (!\inst|row_debounce:15:debounce_keys|result~q\ & (\inst|Equal8~1_combout\ & \inst|Equal6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:6:debounce_keys|result~q\,
	datab => \inst|row_debounce:15:debounce_keys|result~q\,
	datac => \inst|Equal8~1_combout\,
	datad => \inst|Equal6~0_combout\,
	combout => \inst|Equal8~2_combout\);

-- Location: LCCOMB_X24_Y7_N12
\inst|Equal12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal12~0_combout\ = (!\inst|row_debounce:7:debounce_keys|result~q\ & (!\inst|row_debounce:1:debounce_keys|result~q\ & (!\inst|row_debounce:4:debounce_keys|result~q\ & \inst|Equal8~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:7:debounce_keys|result~q\,
	datab => \inst|row_debounce:1:debounce_keys|result~q\,
	datac => \inst|row_debounce:4:debounce_keys|result~q\,
	datad => \inst|Equal8~2_combout\,
	combout => \inst|Equal12~0_combout\);

-- Location: LCCOMB_X21_Y10_N14
\inst|row_debounce:5:debounce_keys|count[0]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:5:debounce_keys|count[0]~19_combout\ = \inst|row_debounce:5:debounce_keys|count\(0) $ (VCC)
-- \inst|row_debounce:5:debounce_keys|count[0]~20\ = CARRY(\inst|row_debounce:5:debounce_keys|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:5:debounce_keys|count\(0),
	datad => VCC,
	combout => \inst|row_debounce:5:debounce_keys|count[0]~19_combout\,
	cout => \inst|row_debounce:5:debounce_keys|count[0]~20\);

-- Location: LCCOMB_X23_Y12_N24
\inst|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux5~0_combout\ = (\inst|process_1~3_combout\ & ((\inst|LessThan1~1_combout\) # ((\inst|LessThan1~2_combout\ & !\inst|Add15~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|process_1~3_combout\,
	datab => \inst|LessThan1~2_combout\,
	datac => \inst|Add15~4_combout\,
	datad => \inst|LessThan1~1_combout\,
	combout => \inst|Mux5~0_combout\);

-- Location: LCCOMB_X23_Y12_N28
\inst|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux5~1_combout\ = (\inst|Mux5~0_combout\ & ((\inst|LessThan1~1_combout\) # ((!\inst|Add15~6_combout\ & !\inst|Add15~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan1~1_combout\,
	datab => \inst|Add15~6_combout\,
	datac => \inst|Add15~8_combout\,
	datad => \inst|Mux5~0_combout\,
	combout => \inst|Mux5~1_combout\);

-- Location: FF_X23_Y12_N29
\inst|keys_stored[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Mux5~1_combout\,
	ena => \inst|keys_stored[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|keys_stored\(5));

-- Location: LCCOMB_X23_Y9_N18
\inst|row_debounce:5:debounce_keys|flipflops[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:5:debounce_keys|flipflops[0]~feeder_combout\ = \inst|keys_stored\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|keys_stored\(5),
	combout => \inst|row_debounce:5:debounce_keys|flipflops[0]~feeder_combout\);

-- Location: FF_X23_Y9_N19
\inst|row_debounce:5:debounce_keys|flipflops[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:5:debounce_keys|flipflops[0]~feeder_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:5:debounce_keys|flipflops\(0));

-- Location: LCCOMB_X23_Y9_N24
\inst|row_debounce:5:debounce_keys|flipflops[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:5:debounce_keys|flipflops[1]~feeder_combout\ = \inst|row_debounce:5:debounce_keys|flipflops\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|row_debounce:5:debounce_keys|flipflops\(0),
	combout => \inst|row_debounce:5:debounce_keys|flipflops[1]~feeder_combout\);

-- Location: FF_X23_Y9_N25
\inst|row_debounce:5:debounce_keys|flipflops[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:5:debounce_keys|flipflops[1]~feeder_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:5:debounce_keys|flipflops\(1));

-- Location: LCCOMB_X21_Y9_N20
\inst|row_debounce:5:debounce_keys|counter_set\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:5:debounce_keys|counter_set~combout\ = \inst|row_debounce:5:debounce_keys|flipflops\(0) $ (\inst|row_debounce:5:debounce_keys|flipflops\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:5:debounce_keys|flipflops\(0),
	datad => \inst|row_debounce:5:debounce_keys|flipflops\(1),
	combout => \inst|row_debounce:5:debounce_keys|counter_set~combout\);

-- Location: LCCOMB_X21_Y9_N30
\inst|row_debounce:5:debounce_keys|count[18]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:5:debounce_keys|count[18]~31_combout\ = (\inst|row_debounce:5:debounce_keys|result~4_combout\ & \rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:5:debounce_keys|result~4_combout\,
	datac => \rst~input_o\,
	combout => \inst|row_debounce:5:debounce_keys|count[18]~31_combout\);

-- Location: FF_X21_Y10_N15
\inst|row_debounce:5:debounce_keys|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:5:debounce_keys|count[0]~19_combout\,
	sclr => \inst|row_debounce:5:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:5:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:5:debounce_keys|count\(0));

-- Location: LCCOMB_X21_Y10_N16
\inst|row_debounce:5:debounce_keys|count[1]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:5:debounce_keys|count[1]~21_combout\ = (\inst|row_debounce:5:debounce_keys|count\(1) & (!\inst|row_debounce:5:debounce_keys|count[0]~20\)) # (!\inst|row_debounce:5:debounce_keys|count\(1) & 
-- ((\inst|row_debounce:5:debounce_keys|count[0]~20\) # (GND)))
-- \inst|row_debounce:5:debounce_keys|count[1]~22\ = CARRY((!\inst|row_debounce:5:debounce_keys|count[0]~20\) # (!\inst|row_debounce:5:debounce_keys|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:5:debounce_keys|count\(1),
	datad => VCC,
	cin => \inst|row_debounce:5:debounce_keys|count[0]~20\,
	combout => \inst|row_debounce:5:debounce_keys|count[1]~21_combout\,
	cout => \inst|row_debounce:5:debounce_keys|count[1]~22\);

-- Location: FF_X21_Y10_N17
\inst|row_debounce:5:debounce_keys|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:5:debounce_keys|count[1]~21_combout\,
	sclr => \inst|row_debounce:5:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:5:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:5:debounce_keys|count\(1));

-- Location: LCCOMB_X21_Y10_N18
\inst|row_debounce:5:debounce_keys|count[2]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:5:debounce_keys|count[2]~23_combout\ = (\inst|row_debounce:5:debounce_keys|count\(2) & (\inst|row_debounce:5:debounce_keys|count[1]~22\ $ (GND))) # (!\inst|row_debounce:5:debounce_keys|count\(2) & 
-- (!\inst|row_debounce:5:debounce_keys|count[1]~22\ & VCC))
-- \inst|row_debounce:5:debounce_keys|count[2]~24\ = CARRY((\inst|row_debounce:5:debounce_keys|count\(2) & !\inst|row_debounce:5:debounce_keys|count[1]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:5:debounce_keys|count\(2),
	datad => VCC,
	cin => \inst|row_debounce:5:debounce_keys|count[1]~22\,
	combout => \inst|row_debounce:5:debounce_keys|count[2]~23_combout\,
	cout => \inst|row_debounce:5:debounce_keys|count[2]~24\);

-- Location: FF_X21_Y10_N19
\inst|row_debounce:5:debounce_keys|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:5:debounce_keys|count[2]~23_combout\,
	sclr => \inst|row_debounce:5:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:5:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:5:debounce_keys|count\(2));

-- Location: LCCOMB_X21_Y10_N20
\inst|row_debounce:5:debounce_keys|count[3]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:5:debounce_keys|count[3]~25_combout\ = (\inst|row_debounce:5:debounce_keys|count\(3) & (!\inst|row_debounce:5:debounce_keys|count[2]~24\)) # (!\inst|row_debounce:5:debounce_keys|count\(3) & 
-- ((\inst|row_debounce:5:debounce_keys|count[2]~24\) # (GND)))
-- \inst|row_debounce:5:debounce_keys|count[3]~26\ = CARRY((!\inst|row_debounce:5:debounce_keys|count[2]~24\) # (!\inst|row_debounce:5:debounce_keys|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:5:debounce_keys|count\(3),
	datad => VCC,
	cin => \inst|row_debounce:5:debounce_keys|count[2]~24\,
	combout => \inst|row_debounce:5:debounce_keys|count[3]~25_combout\,
	cout => \inst|row_debounce:5:debounce_keys|count[3]~26\);

-- Location: FF_X21_Y10_N21
\inst|row_debounce:5:debounce_keys|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:5:debounce_keys|count[3]~25_combout\,
	sclr => \inst|row_debounce:5:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:5:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:5:debounce_keys|count\(3));

-- Location: LCCOMB_X21_Y10_N22
\inst|row_debounce:5:debounce_keys|count[4]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:5:debounce_keys|count[4]~27_combout\ = (\inst|row_debounce:5:debounce_keys|count\(4) & (\inst|row_debounce:5:debounce_keys|count[3]~26\ $ (GND))) # (!\inst|row_debounce:5:debounce_keys|count\(4) & 
-- (!\inst|row_debounce:5:debounce_keys|count[3]~26\ & VCC))
-- \inst|row_debounce:5:debounce_keys|count[4]~28\ = CARRY((\inst|row_debounce:5:debounce_keys|count\(4) & !\inst|row_debounce:5:debounce_keys|count[3]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:5:debounce_keys|count\(4),
	datad => VCC,
	cin => \inst|row_debounce:5:debounce_keys|count[3]~26\,
	combout => \inst|row_debounce:5:debounce_keys|count[4]~27_combout\,
	cout => \inst|row_debounce:5:debounce_keys|count[4]~28\);

-- Location: FF_X21_Y10_N23
\inst|row_debounce:5:debounce_keys|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:5:debounce_keys|count[4]~27_combout\,
	sclr => \inst|row_debounce:5:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:5:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:5:debounce_keys|count\(4));

-- Location: LCCOMB_X21_Y10_N24
\inst|row_debounce:5:debounce_keys|count[5]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:5:debounce_keys|count[5]~29_combout\ = (\inst|row_debounce:5:debounce_keys|count\(5) & (!\inst|row_debounce:5:debounce_keys|count[4]~28\)) # (!\inst|row_debounce:5:debounce_keys|count\(5) & 
-- ((\inst|row_debounce:5:debounce_keys|count[4]~28\) # (GND)))
-- \inst|row_debounce:5:debounce_keys|count[5]~30\ = CARRY((!\inst|row_debounce:5:debounce_keys|count[4]~28\) # (!\inst|row_debounce:5:debounce_keys|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:5:debounce_keys|count\(5),
	datad => VCC,
	cin => \inst|row_debounce:5:debounce_keys|count[4]~28\,
	combout => \inst|row_debounce:5:debounce_keys|count[5]~29_combout\,
	cout => \inst|row_debounce:5:debounce_keys|count[5]~30\);

-- Location: FF_X21_Y10_N25
\inst|row_debounce:5:debounce_keys|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:5:debounce_keys|count[5]~29_combout\,
	sclr => \inst|row_debounce:5:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:5:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:5:debounce_keys|count\(5));

-- Location: LCCOMB_X21_Y10_N26
\inst|row_debounce:5:debounce_keys|count[6]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:5:debounce_keys|count[6]~32_combout\ = (\inst|row_debounce:5:debounce_keys|count\(6) & (\inst|row_debounce:5:debounce_keys|count[5]~30\ $ (GND))) # (!\inst|row_debounce:5:debounce_keys|count\(6) & 
-- (!\inst|row_debounce:5:debounce_keys|count[5]~30\ & VCC))
-- \inst|row_debounce:5:debounce_keys|count[6]~33\ = CARRY((\inst|row_debounce:5:debounce_keys|count\(6) & !\inst|row_debounce:5:debounce_keys|count[5]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:5:debounce_keys|count\(6),
	datad => VCC,
	cin => \inst|row_debounce:5:debounce_keys|count[5]~30\,
	combout => \inst|row_debounce:5:debounce_keys|count[6]~32_combout\,
	cout => \inst|row_debounce:5:debounce_keys|count[6]~33\);

-- Location: FF_X21_Y10_N27
\inst|row_debounce:5:debounce_keys|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:5:debounce_keys|count[6]~32_combout\,
	sclr => \inst|row_debounce:5:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:5:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:5:debounce_keys|count\(6));

-- Location: LCCOMB_X21_Y10_N28
\inst|row_debounce:5:debounce_keys|count[7]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:5:debounce_keys|count[7]~34_combout\ = (\inst|row_debounce:5:debounce_keys|count\(7) & (!\inst|row_debounce:5:debounce_keys|count[6]~33\)) # (!\inst|row_debounce:5:debounce_keys|count\(7) & 
-- ((\inst|row_debounce:5:debounce_keys|count[6]~33\) # (GND)))
-- \inst|row_debounce:5:debounce_keys|count[7]~35\ = CARRY((!\inst|row_debounce:5:debounce_keys|count[6]~33\) # (!\inst|row_debounce:5:debounce_keys|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:5:debounce_keys|count\(7),
	datad => VCC,
	cin => \inst|row_debounce:5:debounce_keys|count[6]~33\,
	combout => \inst|row_debounce:5:debounce_keys|count[7]~34_combout\,
	cout => \inst|row_debounce:5:debounce_keys|count[7]~35\);

-- Location: FF_X21_Y10_N29
\inst|row_debounce:5:debounce_keys|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:5:debounce_keys|count[7]~34_combout\,
	sclr => \inst|row_debounce:5:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:5:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:5:debounce_keys|count\(7));

-- Location: LCCOMB_X21_Y10_N30
\inst|row_debounce:5:debounce_keys|count[8]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:5:debounce_keys|count[8]~36_combout\ = (\inst|row_debounce:5:debounce_keys|count\(8) & (\inst|row_debounce:5:debounce_keys|count[7]~35\ $ (GND))) # (!\inst|row_debounce:5:debounce_keys|count\(8) & 
-- (!\inst|row_debounce:5:debounce_keys|count[7]~35\ & VCC))
-- \inst|row_debounce:5:debounce_keys|count[8]~37\ = CARRY((\inst|row_debounce:5:debounce_keys|count\(8) & !\inst|row_debounce:5:debounce_keys|count[7]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:5:debounce_keys|count\(8),
	datad => VCC,
	cin => \inst|row_debounce:5:debounce_keys|count[7]~35\,
	combout => \inst|row_debounce:5:debounce_keys|count[8]~36_combout\,
	cout => \inst|row_debounce:5:debounce_keys|count[8]~37\);

-- Location: FF_X21_Y10_N31
\inst|row_debounce:5:debounce_keys|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:5:debounce_keys|count[8]~36_combout\,
	sclr => \inst|row_debounce:5:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:5:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:5:debounce_keys|count\(8));

-- Location: LCCOMB_X21_Y9_N0
\inst|row_debounce:5:debounce_keys|count[9]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:5:debounce_keys|count[9]~38_combout\ = (\inst|row_debounce:5:debounce_keys|count\(9) & (!\inst|row_debounce:5:debounce_keys|count[8]~37\)) # (!\inst|row_debounce:5:debounce_keys|count\(9) & 
-- ((\inst|row_debounce:5:debounce_keys|count[8]~37\) # (GND)))
-- \inst|row_debounce:5:debounce_keys|count[9]~39\ = CARRY((!\inst|row_debounce:5:debounce_keys|count[8]~37\) # (!\inst|row_debounce:5:debounce_keys|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:5:debounce_keys|count\(9),
	datad => VCC,
	cin => \inst|row_debounce:5:debounce_keys|count[8]~37\,
	combout => \inst|row_debounce:5:debounce_keys|count[9]~38_combout\,
	cout => \inst|row_debounce:5:debounce_keys|count[9]~39\);

-- Location: FF_X21_Y9_N1
\inst|row_debounce:5:debounce_keys|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:5:debounce_keys|count[9]~38_combout\,
	sclr => \inst|row_debounce:5:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:5:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:5:debounce_keys|count\(9));

-- Location: LCCOMB_X21_Y9_N2
\inst|row_debounce:5:debounce_keys|count[10]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:5:debounce_keys|count[10]~40_combout\ = (\inst|row_debounce:5:debounce_keys|count\(10) & (\inst|row_debounce:5:debounce_keys|count[9]~39\ $ (GND))) # (!\inst|row_debounce:5:debounce_keys|count\(10) & 
-- (!\inst|row_debounce:5:debounce_keys|count[9]~39\ & VCC))
-- \inst|row_debounce:5:debounce_keys|count[10]~41\ = CARRY((\inst|row_debounce:5:debounce_keys|count\(10) & !\inst|row_debounce:5:debounce_keys|count[9]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:5:debounce_keys|count\(10),
	datad => VCC,
	cin => \inst|row_debounce:5:debounce_keys|count[9]~39\,
	combout => \inst|row_debounce:5:debounce_keys|count[10]~40_combout\,
	cout => \inst|row_debounce:5:debounce_keys|count[10]~41\);

-- Location: FF_X21_Y9_N3
\inst|row_debounce:5:debounce_keys|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:5:debounce_keys|count[10]~40_combout\,
	sclr => \inst|row_debounce:5:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:5:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:5:debounce_keys|count\(10));

-- Location: LCCOMB_X21_Y9_N4
\inst|row_debounce:5:debounce_keys|count[11]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:5:debounce_keys|count[11]~42_combout\ = (\inst|row_debounce:5:debounce_keys|count\(11) & (!\inst|row_debounce:5:debounce_keys|count[10]~41\)) # (!\inst|row_debounce:5:debounce_keys|count\(11) & 
-- ((\inst|row_debounce:5:debounce_keys|count[10]~41\) # (GND)))
-- \inst|row_debounce:5:debounce_keys|count[11]~43\ = CARRY((!\inst|row_debounce:5:debounce_keys|count[10]~41\) # (!\inst|row_debounce:5:debounce_keys|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:5:debounce_keys|count\(11),
	datad => VCC,
	cin => \inst|row_debounce:5:debounce_keys|count[10]~41\,
	combout => \inst|row_debounce:5:debounce_keys|count[11]~42_combout\,
	cout => \inst|row_debounce:5:debounce_keys|count[11]~43\);

-- Location: FF_X21_Y9_N5
\inst|row_debounce:5:debounce_keys|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:5:debounce_keys|count[11]~42_combout\,
	sclr => \inst|row_debounce:5:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:5:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:5:debounce_keys|count\(11));

-- Location: LCCOMB_X21_Y9_N6
\inst|row_debounce:5:debounce_keys|count[12]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:5:debounce_keys|count[12]~44_combout\ = (\inst|row_debounce:5:debounce_keys|count\(12) & (\inst|row_debounce:5:debounce_keys|count[11]~43\ $ (GND))) # (!\inst|row_debounce:5:debounce_keys|count\(12) & 
-- (!\inst|row_debounce:5:debounce_keys|count[11]~43\ & VCC))
-- \inst|row_debounce:5:debounce_keys|count[12]~45\ = CARRY((\inst|row_debounce:5:debounce_keys|count\(12) & !\inst|row_debounce:5:debounce_keys|count[11]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:5:debounce_keys|count\(12),
	datad => VCC,
	cin => \inst|row_debounce:5:debounce_keys|count[11]~43\,
	combout => \inst|row_debounce:5:debounce_keys|count[12]~44_combout\,
	cout => \inst|row_debounce:5:debounce_keys|count[12]~45\);

-- Location: FF_X21_Y9_N7
\inst|row_debounce:5:debounce_keys|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:5:debounce_keys|count[12]~44_combout\,
	sclr => \inst|row_debounce:5:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:5:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:5:debounce_keys|count\(12));

-- Location: LCCOMB_X21_Y9_N8
\inst|row_debounce:5:debounce_keys|count[13]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:5:debounce_keys|count[13]~46_combout\ = (\inst|row_debounce:5:debounce_keys|count\(13) & (!\inst|row_debounce:5:debounce_keys|count[12]~45\)) # (!\inst|row_debounce:5:debounce_keys|count\(13) & 
-- ((\inst|row_debounce:5:debounce_keys|count[12]~45\) # (GND)))
-- \inst|row_debounce:5:debounce_keys|count[13]~47\ = CARRY((!\inst|row_debounce:5:debounce_keys|count[12]~45\) # (!\inst|row_debounce:5:debounce_keys|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:5:debounce_keys|count\(13),
	datad => VCC,
	cin => \inst|row_debounce:5:debounce_keys|count[12]~45\,
	combout => \inst|row_debounce:5:debounce_keys|count[13]~46_combout\,
	cout => \inst|row_debounce:5:debounce_keys|count[13]~47\);

-- Location: FF_X21_Y9_N9
\inst|row_debounce:5:debounce_keys|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:5:debounce_keys|count[13]~46_combout\,
	sclr => \inst|row_debounce:5:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:5:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:5:debounce_keys|count\(13));

-- Location: LCCOMB_X21_Y9_N10
\inst|row_debounce:5:debounce_keys|count[14]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:5:debounce_keys|count[14]~48_combout\ = (\inst|row_debounce:5:debounce_keys|count\(14) & (\inst|row_debounce:5:debounce_keys|count[13]~47\ $ (GND))) # (!\inst|row_debounce:5:debounce_keys|count\(14) & 
-- (!\inst|row_debounce:5:debounce_keys|count[13]~47\ & VCC))
-- \inst|row_debounce:5:debounce_keys|count[14]~49\ = CARRY((\inst|row_debounce:5:debounce_keys|count\(14) & !\inst|row_debounce:5:debounce_keys|count[13]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:5:debounce_keys|count\(14),
	datad => VCC,
	cin => \inst|row_debounce:5:debounce_keys|count[13]~47\,
	combout => \inst|row_debounce:5:debounce_keys|count[14]~48_combout\,
	cout => \inst|row_debounce:5:debounce_keys|count[14]~49\);

-- Location: FF_X21_Y9_N11
\inst|row_debounce:5:debounce_keys|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:5:debounce_keys|count[14]~48_combout\,
	sclr => \inst|row_debounce:5:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:5:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:5:debounce_keys|count\(14));

-- Location: LCCOMB_X21_Y9_N12
\inst|row_debounce:5:debounce_keys|count[15]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:5:debounce_keys|count[15]~50_combout\ = (\inst|row_debounce:5:debounce_keys|count\(15) & (!\inst|row_debounce:5:debounce_keys|count[14]~49\)) # (!\inst|row_debounce:5:debounce_keys|count\(15) & 
-- ((\inst|row_debounce:5:debounce_keys|count[14]~49\) # (GND)))
-- \inst|row_debounce:5:debounce_keys|count[15]~51\ = CARRY((!\inst|row_debounce:5:debounce_keys|count[14]~49\) # (!\inst|row_debounce:5:debounce_keys|count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:5:debounce_keys|count\(15),
	datad => VCC,
	cin => \inst|row_debounce:5:debounce_keys|count[14]~49\,
	combout => \inst|row_debounce:5:debounce_keys|count[15]~50_combout\,
	cout => \inst|row_debounce:5:debounce_keys|count[15]~51\);

-- Location: FF_X21_Y9_N13
\inst|row_debounce:5:debounce_keys|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:5:debounce_keys|count[15]~50_combout\,
	sclr => \inst|row_debounce:5:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:5:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:5:debounce_keys|count\(15));

-- Location: LCCOMB_X21_Y9_N14
\inst|row_debounce:5:debounce_keys|count[16]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:5:debounce_keys|count[16]~52_combout\ = (\inst|row_debounce:5:debounce_keys|count\(16) & (\inst|row_debounce:5:debounce_keys|count[15]~51\ $ (GND))) # (!\inst|row_debounce:5:debounce_keys|count\(16) & 
-- (!\inst|row_debounce:5:debounce_keys|count[15]~51\ & VCC))
-- \inst|row_debounce:5:debounce_keys|count[16]~53\ = CARRY((\inst|row_debounce:5:debounce_keys|count\(16) & !\inst|row_debounce:5:debounce_keys|count[15]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:5:debounce_keys|count\(16),
	datad => VCC,
	cin => \inst|row_debounce:5:debounce_keys|count[15]~51\,
	combout => \inst|row_debounce:5:debounce_keys|count[16]~52_combout\,
	cout => \inst|row_debounce:5:debounce_keys|count[16]~53\);

-- Location: FF_X21_Y9_N15
\inst|row_debounce:5:debounce_keys|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:5:debounce_keys|count[16]~52_combout\,
	sclr => \inst|row_debounce:5:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:5:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:5:debounce_keys|count\(16));

-- Location: LCCOMB_X21_Y9_N24
\inst|row_debounce:5:debounce_keys|result~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:5:debounce_keys|result~3_combout\ = ((\inst|row_debounce:5:debounce_keys|flipflops\(0) $ (\inst|row_debounce:5:debounce_keys|flipflops\(1))) # (!\inst|row_debounce:5:debounce_keys|count\(16))) # 
-- (!\inst|row_debounce:5:debounce_keys|count\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:5:debounce_keys|count\(15),
	datab => \inst|row_debounce:5:debounce_keys|flipflops\(0),
	datac => \inst|row_debounce:5:debounce_keys|count\(16),
	datad => \inst|row_debounce:5:debounce_keys|flipflops\(1),
	combout => \inst|row_debounce:5:debounce_keys|result~3_combout\);

-- Location: LCCOMB_X21_Y9_N16
\inst|row_debounce:5:debounce_keys|count[17]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:5:debounce_keys|count[17]~54_combout\ = (\inst|row_debounce:5:debounce_keys|count\(17) & (!\inst|row_debounce:5:debounce_keys|count[16]~53\)) # (!\inst|row_debounce:5:debounce_keys|count\(17) & 
-- ((\inst|row_debounce:5:debounce_keys|count[16]~53\) # (GND)))
-- \inst|row_debounce:5:debounce_keys|count[17]~55\ = CARRY((!\inst|row_debounce:5:debounce_keys|count[16]~53\) # (!\inst|row_debounce:5:debounce_keys|count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:5:debounce_keys|count\(17),
	datad => VCC,
	cin => \inst|row_debounce:5:debounce_keys|count[16]~53\,
	combout => \inst|row_debounce:5:debounce_keys|count[17]~54_combout\,
	cout => \inst|row_debounce:5:debounce_keys|count[17]~55\);

-- Location: FF_X21_Y9_N17
\inst|row_debounce:5:debounce_keys|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:5:debounce_keys|count[17]~54_combout\,
	sclr => \inst|row_debounce:5:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:5:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:5:debounce_keys|count\(17));

-- Location: LCCOMB_X21_Y10_N8
\inst|row_debounce:5:debounce_keys|result~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:5:debounce_keys|result~0_combout\ = ((!\inst|row_debounce:5:debounce_keys|count\(7) & (!\inst|row_debounce:5:debounce_keys|count\(6) & !\inst|row_debounce:5:debounce_keys|count\(5)))) # (!\inst|row_debounce:5:debounce_keys|count\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:5:debounce_keys|count\(8),
	datab => \inst|row_debounce:5:debounce_keys|count\(7),
	datac => \inst|row_debounce:5:debounce_keys|count\(6),
	datad => \inst|row_debounce:5:debounce_keys|count\(5),
	combout => \inst|row_debounce:5:debounce_keys|result~0_combout\);

-- Location: LCCOMB_X21_Y9_N28
\inst|row_debounce:5:debounce_keys|result~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:5:debounce_keys|result~1_combout\ = (!\inst|row_debounce:5:debounce_keys|count\(12) & (!\inst|row_debounce:5:debounce_keys|count\(10) & (!\inst|row_debounce:5:debounce_keys|count\(11) & !\inst|row_debounce:5:debounce_keys|count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:5:debounce_keys|count\(12),
	datab => \inst|row_debounce:5:debounce_keys|count\(10),
	datac => \inst|row_debounce:5:debounce_keys|count\(11),
	datad => \inst|row_debounce:5:debounce_keys|count\(9),
	combout => \inst|row_debounce:5:debounce_keys|result~1_combout\);

-- Location: LCCOMB_X21_Y9_N22
\inst|row_debounce:5:debounce_keys|result~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:5:debounce_keys|result~2_combout\ = (!\inst|row_debounce:5:debounce_keys|count\(14) & (((\inst|row_debounce:5:debounce_keys|result~0_combout\ & \inst|row_debounce:5:debounce_keys|result~1_combout\)) # 
-- (!\inst|row_debounce:5:debounce_keys|count\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:5:debounce_keys|result~0_combout\,
	datab => \inst|row_debounce:5:debounce_keys|result~1_combout\,
	datac => \inst|row_debounce:5:debounce_keys|count\(13),
	datad => \inst|row_debounce:5:debounce_keys|count\(14),
	combout => \inst|row_debounce:5:debounce_keys|result~2_combout\);

-- Location: LCCOMB_X21_Y9_N18
\inst|row_debounce:5:debounce_keys|count[18]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:5:debounce_keys|count[18]~56_combout\ = \inst|row_debounce:5:debounce_keys|count[17]~55\ $ (!\inst|row_debounce:5:debounce_keys|count\(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|row_debounce:5:debounce_keys|count\(18),
	cin => \inst|row_debounce:5:debounce_keys|count[17]~55\,
	combout => \inst|row_debounce:5:debounce_keys|count[18]~56_combout\);

-- Location: FF_X21_Y9_N19
\inst|row_debounce:5:debounce_keys|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|row_debounce:5:debounce_keys|count[18]~56_combout\,
	sclr => \inst|row_debounce:5:debounce_keys|counter_set~combout\,
	ena => \inst|row_debounce:5:debounce_keys|count[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:5:debounce_keys|count\(18));

-- Location: LCCOMB_X21_Y9_N26
\inst|row_debounce:5:debounce_keys|result~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:5:debounce_keys|result~4_combout\ = (\inst|row_debounce:5:debounce_keys|result~3_combout\) # (((\inst|row_debounce:5:debounce_keys|result~2_combout\) # (!\inst|row_debounce:5:debounce_keys|count\(18))) # 
-- (!\inst|row_debounce:5:debounce_keys|count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:5:debounce_keys|result~3_combout\,
	datab => \inst|row_debounce:5:debounce_keys|count\(17),
	datac => \inst|row_debounce:5:debounce_keys|result~2_combout\,
	datad => \inst|row_debounce:5:debounce_keys|count\(18),
	combout => \inst|row_debounce:5:debounce_keys|result~4_combout\);

-- Location: LCCOMB_X23_Y9_N4
\inst|row_debounce:5:debounce_keys|result~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|row_debounce:5:debounce_keys|result~5_combout\ = (\inst|row_debounce:5:debounce_keys|result~4_combout\ & (\inst|row_debounce:5:debounce_keys|result~q\)) # (!\inst|row_debounce:5:debounce_keys|result~4_combout\ & 
-- ((\inst|row_debounce:5:debounce_keys|flipflops\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:5:debounce_keys|result~q\,
	datac => \inst|row_debounce:5:debounce_keys|result~4_combout\,
	datad => \inst|row_debounce:5:debounce_keys|flipflops\(1),
	combout => \inst|row_debounce:5:debounce_keys|result~5_combout\);

-- Location: FF_X24_Y7_N3
\inst|row_debounce:5:debounce_keys|result\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|row_debounce:5:debounce_keys|result~5_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|row_debounce:5:debounce_keys|result~q\);

-- Location: LCCOMB_X24_Y7_N22
\inst|Equal13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal13~0_combout\ = (\inst|row_debounce:2:debounce_keys|result~q\ & (!\inst|row_debounce:3:debounce_keys|result~q\ & (\inst|Equal12~0_combout\ & !\inst|row_debounce:5:debounce_keys|result~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:2:debounce_keys|result~q\,
	datab => \inst|row_debounce:3:debounce_keys|result~q\,
	datac => \inst|Equal12~0_combout\,
	datad => \inst|row_debounce:5:debounce_keys|result~q\,
	combout => \inst|Equal13~0_combout\);

-- Location: LCCOMB_X23_Y7_N8
\inst|Equal11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal11~0_combout\ = (!\inst|row_debounce:2:debounce_keys|result~q\ & (!\inst|row_debounce:5:debounce_keys|result~q\ & !\inst|row_debounce:3:debounce_keys|result~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:2:debounce_keys|result~q\,
	datab => \inst|row_debounce:5:debounce_keys|result~q\,
	datad => \inst|row_debounce:3:debounce_keys|result~q\,
	combout => \inst|Equal11~0_combout\);

-- Location: LCCOMB_X23_Y7_N10
\inst|Equal11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal11~1_combout\ = (!\inst|row_debounce:1:debounce_keys|result~q\ & (!\inst|row_debounce:7:debounce_keys|result~q\ & \inst|Equal8~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:1:debounce_keys|result~q\,
	datab => \inst|row_debounce:7:debounce_keys|result~q\,
	datad => \inst|Equal8~2_combout\,
	combout => \inst|Equal11~1_combout\);

-- Location: LCCOMB_X24_Y7_N6
\inst|Equal8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal8~0_combout\ = (!\inst|row_debounce:3:debounce_keys|result~q\ & (!\inst|row_debounce:5:debounce_keys|result~q\ & (!\inst|row_debounce:2:debounce_keys|result~q\ & !\inst|row_debounce:4:debounce_keys|result~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:3:debounce_keys|result~q\,
	datab => \inst|row_debounce:5:debounce_keys|result~q\,
	datac => \inst|row_debounce:2:debounce_keys|result~q\,
	datad => \inst|row_debounce:4:debounce_keys|result~q\,
	combout => \inst|Equal8~0_combout\);

-- Location: LCCOMB_X24_Y7_N2
\inst|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~1_combout\ = (!\inst|row_debounce:7:debounce_keys|result~q\ & (!\inst|row_debounce:1:debounce_keys|result~q\ & \inst|Equal8~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:7:debounce_keys|result~q\,
	datab => \inst|row_debounce:1:debounce_keys|result~q\,
	datad => \inst|Equal8~0_combout\,
	combout => \inst|Equal0~1_combout\);

-- Location: LCCOMB_X24_Y7_N28
\inst|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~2_combout\ = (!\inst|row_debounce:0:debounce_keys|result~q\ & (!\inst|row_debounce:9:debounce_keys|result~q\ & (!\inst|row_debounce:14:debounce_keys|result~q\ & \inst|Equal6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:0:debounce_keys|result~q\,
	datab => \inst|row_debounce:9:debounce_keys|result~q\,
	datac => \inst|row_debounce:14:debounce_keys|result~q\,
	datad => \inst|Equal6~0_combout\,
	combout => \inst|Equal0~2_combout\);

-- Location: LCCOMB_X24_Y7_N10
\inst|Equal7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal7~0_combout\ = (!\inst|row_debounce:15:debounce_keys|result~q\ & \inst|Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|row_debounce:15:debounce_keys|result~q\,
	datad => \inst|Equal0~2_combout\,
	combout => \inst|Equal7~0_combout\);

-- Location: LCCOMB_X23_Y7_N30
\inst|WideOr0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|WideOr0~0_combout\ = (\inst|Equal0~1_combout\ & (\inst|Equal7~0_combout\ & (\inst|row_debounce:8:debounce_keys|result~q\ $ (\inst|row_debounce:6:debounce_keys|result~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~1_combout\,
	datab => \inst|row_debounce:8:debounce_keys|result~q\,
	datac => \inst|Equal7~0_combout\,
	datad => \inst|row_debounce:6:debounce_keys|result~q\,
	combout => \inst|WideOr0~0_combout\);

-- Location: LCCOMB_X23_Y7_N16
\inst|WideOr0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|WideOr0~1_combout\ = (\inst|WideOr0~0_combout\) # ((\inst|Equal11~0_combout\ & (\inst|Equal11~1_combout\ & \inst|row_debounce:4:debounce_keys|result~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal11~0_combout\,
	datab => \inst|Equal11~1_combout\,
	datac => \inst|WideOr0~0_combout\,
	datad => \inst|row_debounce:4:debounce_keys|result~q\,
	combout => \inst|WideOr0~1_combout\);

-- Location: LCCOMB_X23_Y7_N26
\inst|WideOr0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|WideOr0~2_combout\ = ((\inst|row_debounce:7:debounce_keys|result~q\ $ (!\inst|row_debounce:1:debounce_keys|result~q\)) # (!\inst|Equal8~2_combout\)) # (!\inst|Equal8~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal8~0_combout\,
	datab => \inst|row_debounce:7:debounce_keys|result~q\,
	datac => \inst|row_debounce:1:debounce_keys|result~q\,
	datad => \inst|Equal8~2_combout\,
	combout => \inst|WideOr0~2_combout\);

-- Location: LCCOMB_X24_Y7_N30
\inst|WideOr0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|WideOr0~3_combout\ = (\inst|row_debounce:2:debounce_keys|result~q\) # ((\inst|row_debounce:3:debounce_keys|result~q\ $ (!\inst|row_debounce:5:debounce_keys|result~q\)) # (!\inst|Equal12~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:2:debounce_keys|result~q\,
	datab => \inst|row_debounce:3:debounce_keys|result~q\,
	datac => \inst|Equal12~0_combout\,
	datad => \inst|row_debounce:5:debounce_keys|result~q\,
	combout => \inst|WideOr0~3_combout\);

-- Location: LCCOMB_X23_Y3_N24
\inst|WideOr0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|WideOr0~combout\ = (\inst|Equal13~0_combout\) # ((\inst|WideOr0~1_combout\) # ((!\inst|WideOr0~3_combout\) # (!\inst|WideOr0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal13~0_combout\,
	datab => \inst|WideOr0~1_combout\,
	datac => \inst|WideOr0~2_combout\,
	datad => \inst|WideOr0~3_combout\,
	combout => \inst|WideOr0~combout\);

-- Location: LCCOMB_X21_Y3_N14
\inst2|aux[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|aux[3]~feeder_combout\ = \inst|WideOr0~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|WideOr0~combout\,
	combout => \inst2|aux[3]~feeder_combout\);

-- Location: LCCOMB_X23_Y7_N12
\inst|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~0_combout\ = (!\inst|row_debounce:1:debounce_keys|result~q\ & (!\inst|row_debounce:6:debounce_keys|result~q\ & (!\inst|row_debounce:7:debounce_keys|result~q\ & \inst|Equal8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:1:debounce_keys|result~q\,
	datab => \inst|row_debounce:6:debounce_keys|result~q\,
	datac => \inst|row_debounce:7:debounce_keys|result~q\,
	datad => \inst|Equal8~0_combout\,
	combout => \inst|Equal0~0_combout\);

-- Location: LCCOMB_X23_Y7_N6
\inst|Equal15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal15~0_combout\ = (!\inst|row_debounce:8:debounce_keys|result~q\ & (!\inst|row_debounce:15:debounce_keys|result~q\ & (!\inst|row_debounce:14:debounce_keys|result~q\ & \inst|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:8:debounce_keys|result~q\,
	datab => \inst|row_debounce:15:debounce_keys|result~q\,
	datac => \inst|row_debounce:14:debounce_keys|result~q\,
	datad => \inst|Equal0~0_combout\,
	combout => \inst|Equal15~0_combout\);

-- Location: LCCOMB_X23_Y7_N20
\inst|Equal15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal15~1_combout\ = (\inst|Equal6~0_combout\ & (!\inst|row_debounce:9:debounce_keys|result~q\ & (\inst|row_debounce:0:debounce_keys|result~q\ & \inst|Equal15~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal6~0_combout\,
	datab => \inst|row_debounce:9:debounce_keys|result~q\,
	datac => \inst|row_debounce:0:debounce_keys|result~q\,
	datad => \inst|Equal15~0_combout\,
	combout => \inst|Equal15~1_combout\);

-- Location: LCCOMB_X22_Y3_N28
\inst2|cont~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|cont~4_combout\ = (!\inst|Equal15~1_combout\ & ((\inst2|cont\(2)) # ((\inst2|cont\(1) & \inst2|cont\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|cont\(1),
	datab => \inst|Equal15~1_combout\,
	datac => \inst2|cont\(2),
	datad => \inst2|cont\(0),
	combout => \inst2|cont~4_combout\);

-- Location: LCCOMB_X24_Y3_N0
\inst2|deb[0]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|deb[0]~18_combout\ = \inst2|deb\(0) $ (VCC)
-- \inst2|deb[0]~19\ = CARRY(\inst2|deb\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|deb\(0),
	datad => VCC,
	combout => \inst2|deb[0]~18_combout\,
	cout => \inst2|deb[0]~19\);

-- Location: LCCOMB_X24_Y3_N2
\inst2|deb[1]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|deb[1]~22_combout\ = (\inst2|deb\(1) & (!\inst2|deb[0]~19\)) # (!\inst2|deb\(1) & ((\inst2|deb[0]~19\) # (GND)))
-- \inst2|deb[1]~23\ = CARRY((!\inst2|deb[0]~19\) # (!\inst2|deb\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|deb\(1),
	datad => VCC,
	cin => \inst2|deb[0]~19\,
	combout => \inst2|deb[1]~22_combout\,
	cout => \inst2|deb[1]~23\);

-- Location: LCCOMB_X26_Y4_N6
\inst2|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~0_combout\ = \inst2|tot\(0) $ (VCC)
-- \inst2|Add0~1\ = CARRY(\inst2|tot\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|tot\(0),
	datad => VCC,
	combout => \inst2|Add0~0_combout\,
	cout => \inst2|Add0~1\);

-- Location: LCCOMB_X25_Y3_N4
\inst2|tot~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|tot~2_combout\ = (!\inst2|Equal3~8_combout\ & \inst2|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Equal3~8_combout\,
	datad => \inst2|Add0~0_combout\,
	combout => \inst2|tot~2_combout\);

-- Location: FF_X25_Y3_N5
\inst2|tot[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|salida~clkctrl_outclk\,
	d => \inst2|tot~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|tot\(0));

-- Location: LCCOMB_X26_Y4_N8
\inst2|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~2_combout\ = (\inst2|tot\(1) & (!\inst2|Add0~1\)) # (!\inst2|tot\(1) & ((\inst2|Add0~1\) # (GND)))
-- \inst2|Add0~3\ = CARRY((!\inst2|Add0~1\) # (!\inst2|tot\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|tot\(1),
	datad => VCC,
	cin => \inst2|Add0~1\,
	combout => \inst2|Add0~2_combout\,
	cout => \inst2|Add0~3\);

-- Location: LCCOMB_X25_Y3_N24
\inst2|tot~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|tot~0_combout\ = (!\inst2|Equal3~8_combout\ & \inst2|Add0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Equal3~8_combout\,
	datad => \inst2|Add0~2_combout\,
	combout => \inst2|tot~0_combout\);

-- Location: FF_X25_Y3_N25
\inst2|tot[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|salida~clkctrl_outclk\,
	d => \inst2|tot~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|tot\(1));

-- Location: LCCOMB_X26_Y4_N10
\inst2|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~4_combout\ = (\inst2|tot\(2) & (\inst2|Add0~3\ $ (GND))) # (!\inst2|tot\(2) & (!\inst2|Add0~3\ & VCC))
-- \inst2|Add0~5\ = CARRY((\inst2|tot\(2) & !\inst2|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|tot\(2),
	datad => VCC,
	cin => \inst2|Add0~3\,
	combout => \inst2|Add0~4_combout\,
	cout => \inst2|Add0~5\);

-- Location: LCCOMB_X25_Y3_N22
\inst2|tot~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|tot~1_combout\ = (!\inst2|Equal3~8_combout\ & \inst2|Add0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Equal3~8_combout\,
	datad => \inst2|Add0~4_combout\,
	combout => \inst2|tot~1_combout\);

-- Location: FF_X25_Y3_N23
\inst2|tot[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|salida~clkctrl_outclk\,
	d => \inst2|tot~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|tot\(2));

-- Location: LCCOMB_X26_Y4_N12
\inst2|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~6_combout\ = (\inst2|tot\(3) & (!\inst2|Add0~5\)) # (!\inst2|tot\(3) & ((\inst2|Add0~5\) # (GND)))
-- \inst2|Add0~7\ = CARRY((!\inst2|Add0~5\) # (!\inst2|tot\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|tot\(3),
	datad => VCC,
	cin => \inst2|Add0~5\,
	combout => \inst2|Add0~6_combout\,
	cout => \inst2|Add0~7\);

-- Location: FF_X26_Y4_N13
\inst2|tot[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|salida~clkctrl_outclk\,
	d => \inst2|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|tot\(3));

-- Location: LCCOMB_X26_Y4_N14
\inst2|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~8_combout\ = (\inst2|tot\(4) & (\inst2|Add0~7\ $ (GND))) # (!\inst2|tot\(4) & (!\inst2|Add0~7\ & VCC))
-- \inst2|Add0~9\ = CARRY((\inst2|tot\(4) & !\inst2|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|tot\(4),
	datad => VCC,
	cin => \inst2|Add0~7\,
	combout => \inst2|Add0~8_combout\,
	cout => \inst2|Add0~9\);

-- Location: LCCOMB_X25_Y3_N16
\inst2|tot~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|tot~3_combout\ = (!\inst2|Equal3~8_combout\ & \inst2|Add0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Equal3~8_combout\,
	datad => \inst2|Add0~8_combout\,
	combout => \inst2|tot~3_combout\);

-- Location: FF_X25_Y3_N17
\inst2|tot[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|salida~clkctrl_outclk\,
	d => \inst2|tot~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|tot\(4));

-- Location: LCCOMB_X26_Y4_N16
\inst2|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~10_combout\ = (\inst2|tot\(5) & (!\inst2|Add0~9\)) # (!\inst2|tot\(5) & ((\inst2|Add0~9\) # (GND)))
-- \inst2|Add0~11\ = CARRY((!\inst2|Add0~9\) # (!\inst2|tot\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|tot\(5),
	datad => VCC,
	cin => \inst2|Add0~9\,
	combout => \inst2|Add0~10_combout\,
	cout => \inst2|Add0~11\);

-- Location: FF_X26_Y4_N17
\inst2|tot[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|salida~clkctrl_outclk\,
	d => \inst2|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|tot\(5));

-- Location: LCCOMB_X26_Y4_N18
\inst2|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~12_combout\ = (\inst2|tot\(6) & (\inst2|Add0~11\ $ (GND))) # (!\inst2|tot\(6) & (!\inst2|Add0~11\ & VCC))
-- \inst2|Add0~13\ = CARRY((\inst2|tot\(6) & !\inst2|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|tot\(6),
	datad => VCC,
	cin => \inst2|Add0~11\,
	combout => \inst2|Add0~12_combout\,
	cout => \inst2|Add0~13\);

-- Location: FF_X26_Y4_N19
\inst2|tot[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|salida~clkctrl_outclk\,
	d => \inst2|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|tot\(6));

-- Location: LCCOMB_X26_Y4_N20
\inst2|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~14_combout\ = (\inst2|tot\(7) & (!\inst2|Add0~13\)) # (!\inst2|tot\(7) & ((\inst2|Add0~13\) # (GND)))
-- \inst2|Add0~15\ = CARRY((!\inst2|Add0~13\) # (!\inst2|tot\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|tot\(7),
	datad => VCC,
	cin => \inst2|Add0~13\,
	combout => \inst2|Add0~14_combout\,
	cout => \inst2|Add0~15\);

-- Location: LCCOMB_X25_Y3_N14
\inst2|tot~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|tot~4_combout\ = (!\inst2|Equal3~8_combout\ & \inst2|Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Equal3~8_combout\,
	datad => \inst2|Add0~14_combout\,
	combout => \inst2|tot~4_combout\);

-- Location: FF_X25_Y3_N15
\inst2|tot[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|salida~clkctrl_outclk\,
	d => \inst2|tot~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|tot\(7));

-- Location: LCCOMB_X26_Y4_N22
\inst2|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~16_combout\ = (\inst2|tot\(8) & (\inst2|Add0~15\ $ (GND))) # (!\inst2|tot\(8) & (!\inst2|Add0~15\ & VCC))
-- \inst2|Add0~17\ = CARRY((\inst2|tot\(8) & !\inst2|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|tot\(8),
	datad => VCC,
	cin => \inst2|Add0~15\,
	combout => \inst2|Add0~16_combout\,
	cout => \inst2|Add0~17\);

-- Location: FF_X26_Y4_N23
\inst2|tot[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|salida~clkctrl_outclk\,
	d => \inst2|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|tot\(8));

-- Location: LCCOMB_X26_Y4_N24
\inst2|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~18_combout\ = (\inst2|tot\(9) & (!\inst2|Add0~17\)) # (!\inst2|tot\(9) & ((\inst2|Add0~17\) # (GND)))
-- \inst2|Add0~19\ = CARRY((!\inst2|Add0~17\) # (!\inst2|tot\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|tot\(9),
	datad => VCC,
	cin => \inst2|Add0~17\,
	combout => \inst2|Add0~18_combout\,
	cout => \inst2|Add0~19\);

-- Location: FF_X26_Y4_N25
\inst2|tot[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|salida~clkctrl_outclk\,
	d => \inst2|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|tot\(9));

-- Location: LCCOMB_X26_Y4_N26
\inst2|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~20_combout\ = (\inst2|tot\(10) & (\inst2|Add0~19\ $ (GND))) # (!\inst2|tot\(10) & (!\inst2|Add0~19\ & VCC))
-- \inst2|Add0~21\ = CARRY((\inst2|tot\(10) & !\inst2|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|tot\(10),
	datad => VCC,
	cin => \inst2|Add0~19\,
	combout => \inst2|Add0~20_combout\,
	cout => \inst2|Add0~21\);

-- Location: FF_X26_Y4_N27
\inst2|tot[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|salida~clkctrl_outclk\,
	d => \inst2|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|tot\(10));

-- Location: LCCOMB_X26_Y4_N28
\inst2|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~22_combout\ = (\inst2|tot\(11) & (!\inst2|Add0~21\)) # (!\inst2|tot\(11) & ((\inst2|Add0~21\) # (GND)))
-- \inst2|Add0~23\ = CARRY((!\inst2|Add0~21\) # (!\inst2|tot\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|tot\(11),
	datad => VCC,
	cin => \inst2|Add0~21\,
	combout => \inst2|Add0~22_combout\,
	cout => \inst2|Add0~23\);

-- Location: FF_X26_Y4_N29
\inst2|tot[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|salida~clkctrl_outclk\,
	d => \inst2|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|tot\(11));

-- Location: LCCOMB_X26_Y4_N30
\inst2|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~24_combout\ = (\inst2|tot\(12) & (\inst2|Add0~23\ $ (GND))) # (!\inst2|tot\(12) & (!\inst2|Add0~23\ & VCC))
-- \inst2|Add0~25\ = CARRY((\inst2|tot\(12) & !\inst2|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|tot\(12),
	datad => VCC,
	cin => \inst2|Add0~23\,
	combout => \inst2|Add0~24_combout\,
	cout => \inst2|Add0~25\);

-- Location: FF_X26_Y4_N31
\inst2|tot[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|salida~clkctrl_outclk\,
	d => \inst2|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|tot\(12));

-- Location: LCCOMB_X26_Y3_N0
\inst2|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~26_combout\ = (\inst2|tot\(13) & (!\inst2|Add0~25\)) # (!\inst2|tot\(13) & ((\inst2|Add0~25\) # (GND)))
-- \inst2|Add0~27\ = CARRY((!\inst2|Add0~25\) # (!\inst2|tot\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|tot\(13),
	datad => VCC,
	cin => \inst2|Add0~25\,
	combout => \inst2|Add0~26_combout\,
	cout => \inst2|Add0~27\);

-- Location: FF_X26_Y3_N1
\inst2|tot[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|salida~clkctrl_outclk\,
	d => \inst2|Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|tot\(13));

-- Location: LCCOMB_X26_Y3_N2
\inst2|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~28_combout\ = (\inst2|tot\(14) & (\inst2|Add0~27\ $ (GND))) # (!\inst2|tot\(14) & (!\inst2|Add0~27\ & VCC))
-- \inst2|Add0~29\ = CARRY((\inst2|tot\(14) & !\inst2|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|tot\(14),
	datad => VCC,
	cin => \inst2|Add0~27\,
	combout => \inst2|Add0~28_combout\,
	cout => \inst2|Add0~29\);

-- Location: FF_X26_Y3_N3
\inst2|tot[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|salida~clkctrl_outclk\,
	d => \inst2|Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|tot\(14));

-- Location: LCCOMB_X26_Y3_N4
\inst2|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~30_combout\ = (\inst2|tot\(15) & (!\inst2|Add0~29\)) # (!\inst2|tot\(15) & ((\inst2|Add0~29\) # (GND)))
-- \inst2|Add0~31\ = CARRY((!\inst2|Add0~29\) # (!\inst2|tot\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|tot\(15),
	datad => VCC,
	cin => \inst2|Add0~29\,
	combout => \inst2|Add0~30_combout\,
	cout => \inst2|Add0~31\);

-- Location: FF_X26_Y3_N5
\inst2|tot[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|salida~clkctrl_outclk\,
	d => \inst2|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|tot\(15));

-- Location: LCCOMB_X26_Y3_N6
\inst2|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~32_combout\ = (\inst2|tot\(16) & (\inst2|Add0~31\ $ (GND))) # (!\inst2|tot\(16) & (!\inst2|Add0~31\ & VCC))
-- \inst2|Add0~33\ = CARRY((\inst2|tot\(16) & !\inst2|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|tot\(16),
	datad => VCC,
	cin => \inst2|Add0~31\,
	combout => \inst2|Add0~32_combout\,
	cout => \inst2|Add0~33\);

-- Location: FF_X26_Y3_N7
\inst2|tot[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|salida~clkctrl_outclk\,
	d => \inst2|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|tot\(16));

-- Location: LCCOMB_X26_Y3_N8
\inst2|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~34_combout\ = (\inst2|tot\(17) & (!\inst2|Add0~33\)) # (!\inst2|tot\(17) & ((\inst2|Add0~33\) # (GND)))
-- \inst2|Add0~35\ = CARRY((!\inst2|Add0~33\) # (!\inst2|tot\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|tot\(17),
	datad => VCC,
	cin => \inst2|Add0~33\,
	combout => \inst2|Add0~34_combout\,
	cout => \inst2|Add0~35\);

-- Location: FF_X26_Y3_N9
\inst2|tot[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|salida~clkctrl_outclk\,
	d => \inst2|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|tot\(17));

-- Location: LCCOMB_X26_Y3_N10
\inst2|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~36_combout\ = (\inst2|tot\(18) & (\inst2|Add0~35\ $ (GND))) # (!\inst2|tot\(18) & (!\inst2|Add0~35\ & VCC))
-- \inst2|Add0~37\ = CARRY((\inst2|tot\(18) & !\inst2|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|tot\(18),
	datad => VCC,
	cin => \inst2|Add0~35\,
	combout => \inst2|Add0~36_combout\,
	cout => \inst2|Add0~37\);

-- Location: FF_X26_Y3_N11
\inst2|tot[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|salida~clkctrl_outclk\,
	d => \inst2|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|tot\(18));

-- Location: LCCOMB_X26_Y3_N12
\inst2|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~38_combout\ = (\inst2|tot\(19) & (!\inst2|Add0~37\)) # (!\inst2|tot\(19) & ((\inst2|Add0~37\) # (GND)))
-- \inst2|Add0~39\ = CARRY((!\inst2|Add0~37\) # (!\inst2|tot\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|tot\(19),
	datad => VCC,
	cin => \inst2|Add0~37\,
	combout => \inst2|Add0~38_combout\,
	cout => \inst2|Add0~39\);

-- Location: FF_X26_Y3_N13
\inst2|tot[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|salida~clkctrl_outclk\,
	d => \inst2|Add0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|tot\(19));

-- Location: LCCOMB_X26_Y3_N14
\inst2|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~40_combout\ = (\inst2|tot\(20) & (\inst2|Add0~39\ $ (GND))) # (!\inst2|tot\(20) & (!\inst2|Add0~39\ & VCC))
-- \inst2|Add0~41\ = CARRY((\inst2|tot\(20) & !\inst2|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|tot\(20),
	datad => VCC,
	cin => \inst2|Add0~39\,
	combout => \inst2|Add0~40_combout\,
	cout => \inst2|Add0~41\);

-- Location: FF_X26_Y3_N15
\inst2|tot[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|salida~clkctrl_outclk\,
	d => \inst2|Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|tot\(20));

-- Location: LCCOMB_X26_Y3_N16
\inst2|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~42_combout\ = (\inst2|tot\(21) & (!\inst2|Add0~41\)) # (!\inst2|tot\(21) & ((\inst2|Add0~41\) # (GND)))
-- \inst2|Add0~43\ = CARRY((!\inst2|Add0~41\) # (!\inst2|tot\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|tot\(21),
	datad => VCC,
	cin => \inst2|Add0~41\,
	combout => \inst2|Add0~42_combout\,
	cout => \inst2|Add0~43\);

-- Location: FF_X26_Y3_N17
\inst2|tot[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|salida~clkctrl_outclk\,
	d => \inst2|Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|tot\(21));

-- Location: LCCOMB_X26_Y3_N18
\inst2|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~44_combout\ = (\inst2|tot\(22) & (\inst2|Add0~43\ $ (GND))) # (!\inst2|tot\(22) & (!\inst2|Add0~43\ & VCC))
-- \inst2|Add0~45\ = CARRY((\inst2|tot\(22) & !\inst2|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|tot\(22),
	datad => VCC,
	cin => \inst2|Add0~43\,
	combout => \inst2|Add0~44_combout\,
	cout => \inst2|Add0~45\);

-- Location: FF_X26_Y3_N19
\inst2|tot[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|salida~clkctrl_outclk\,
	d => \inst2|Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|tot\(22));

-- Location: LCCOMB_X26_Y3_N20
\inst2|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~46_combout\ = (\inst2|tot\(23) & (!\inst2|Add0~45\)) # (!\inst2|tot\(23) & ((\inst2|Add0~45\) # (GND)))
-- \inst2|Add0~47\ = CARRY((!\inst2|Add0~45\) # (!\inst2|tot\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|tot\(23),
	datad => VCC,
	cin => \inst2|Add0~45\,
	combout => \inst2|Add0~46_combout\,
	cout => \inst2|Add0~47\);

-- Location: FF_X26_Y3_N21
\inst2|tot[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|salida~clkctrl_outclk\,
	d => \inst2|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|tot\(23));

-- Location: LCCOMB_X26_Y3_N22
\inst2|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~48_combout\ = (\inst2|tot\(24) & (\inst2|Add0~47\ $ (GND))) # (!\inst2|tot\(24) & (!\inst2|Add0~47\ & VCC))
-- \inst2|Add0~49\ = CARRY((\inst2|tot\(24) & !\inst2|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|tot\(24),
	datad => VCC,
	cin => \inst2|Add0~47\,
	combout => \inst2|Add0~48_combout\,
	cout => \inst2|Add0~49\);

-- Location: FF_X26_Y3_N23
\inst2|tot[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|salida~clkctrl_outclk\,
	d => \inst2|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|tot\(24));

-- Location: LCCOMB_X26_Y3_N24
\inst2|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~50_combout\ = \inst2|Add0~49\ $ (\inst2|tot\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst2|tot\(25),
	cin => \inst2|Add0~49\,
	combout => \inst2|Add0~50_combout\);

-- Location: FF_X26_Y3_N25
\inst2|tot[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|salida~clkctrl_outclk\,
	d => \inst2|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|tot\(25));

-- Location: LCCOMB_X26_Y3_N30
\inst2|Equal3~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal3~7_combout\ = (!\inst2|tot\(24) & !\inst2|tot\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|tot\(24),
	datad => \inst2|tot\(25),
	combout => \inst2|Equal3~7_combout\);

-- Location: LCCOMB_X26_Y3_N26
\inst2|Equal3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal3~5_combout\ = (!\inst2|tot\(18) & (!\inst2|tot\(19) & (!\inst2|tot\(17) & !\inst2|tot\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|tot\(18),
	datab => \inst2|tot\(19),
	datac => \inst2|tot\(17),
	datad => \inst2|tot\(16),
	combout => \inst2|Equal3~5_combout\);

-- Location: LCCOMB_X26_Y3_N28
\inst2|Equal3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal3~6_combout\ = (!\inst2|tot\(23) & (!\inst2|tot\(22) & (!\inst2|tot\(20) & !\inst2|tot\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|tot\(23),
	datab => \inst2|tot\(22),
	datac => \inst2|tot\(20),
	datad => \inst2|tot\(21),
	combout => \inst2|Equal3~6_combout\);

-- Location: LCCOMB_X25_Y3_N30
\inst2|Equal3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal3~3_combout\ = (!\inst2|tot\(12) & (!\inst2|tot\(13) & (!\inst2|tot\(15) & !\inst2|tot\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|tot\(12),
	datab => \inst2|tot\(13),
	datac => \inst2|tot\(15),
	datad => \inst2|tot\(14),
	combout => \inst2|Equal3~3_combout\);

-- Location: LCCOMB_X25_Y3_N8
\inst2|Equal3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal3~1_combout\ = (\inst2|tot\(7) & (\inst2|tot\(4) & (!\inst2|tot\(5) & !\inst2|tot\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|tot\(7),
	datab => \inst2|tot\(4),
	datac => \inst2|tot\(5),
	datad => \inst2|tot\(6),
	combout => \inst2|Equal3~1_combout\);

-- Location: LCCOMB_X26_Y4_N4
\inst2|Equal3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal3~2_combout\ = (!\inst2|tot\(8) & (!\inst2|tot\(9) & (!\inst2|tot\(10) & !\inst2|tot\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|tot\(8),
	datab => \inst2|tot\(9),
	datac => \inst2|tot\(10),
	datad => \inst2|tot\(11),
	combout => \inst2|Equal3~2_combout\);

-- Location: LCCOMB_X25_Y3_N10
\inst2|Equal3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal3~0_combout\ = (\inst2|tot\(2) & (!\inst2|tot\(0) & (!\inst2|tot\(3) & \inst2|tot\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|tot\(2),
	datab => \inst2|tot\(0),
	datac => \inst2|tot\(3),
	datad => \inst2|tot\(1),
	combout => \inst2|Equal3~0_combout\);

-- Location: LCCOMB_X25_Y3_N12
\inst2|Equal3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal3~4_combout\ = (\inst2|Equal3~3_combout\ & (\inst2|Equal3~1_combout\ & (\inst2|Equal3~2_combout\ & \inst2|Equal3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Equal3~3_combout\,
	datab => \inst2|Equal3~1_combout\,
	datac => \inst2|Equal3~2_combout\,
	datad => \inst2|Equal3~0_combout\,
	combout => \inst2|Equal3~4_combout\);

-- Location: LCCOMB_X25_Y3_N26
\inst2|Equal3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal3~8_combout\ = (\inst2|Equal3~7_combout\ & (\inst2|Equal3~5_combout\ & (\inst2|Equal3~6_combout\ & \inst2|Equal3~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Equal3~7_combout\,
	datab => \inst2|Equal3~5_combout\,
	datac => \inst2|Equal3~6_combout\,
	datad => \inst2|Equal3~4_combout\,
	combout => \inst2|Equal3~8_combout\);

-- Location: LCCOMB_X24_Y3_N30
\inst2|deb[7]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|deb[7]~21_combout\ = (\inst2|process_0~1_combout\) # (\inst2|Equal3~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|process_0~1_combout\,
	datad => \inst2|Equal3~8_combout\,
	combout => \inst2|deb[7]~21_combout\);

-- Location: FF_X24_Y3_N3
\inst2|deb[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|salida~clkctrl_outclk\,
	d => \inst2|deb[1]~22_combout\,
	sclr => \inst2|deb~20_combout\,
	ena => \inst2|deb[7]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|deb\(1));

-- Location: LCCOMB_X24_Y3_N4
\inst2|deb[2]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|deb[2]~24_combout\ = (\inst2|deb\(2) & (\inst2|deb[1]~23\ $ (GND))) # (!\inst2|deb\(2) & (!\inst2|deb[1]~23\ & VCC))
-- \inst2|deb[2]~25\ = CARRY((\inst2|deb\(2) & !\inst2|deb[1]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|deb\(2),
	datad => VCC,
	cin => \inst2|deb[1]~23\,
	combout => \inst2|deb[2]~24_combout\,
	cout => \inst2|deb[2]~25\);

-- Location: FF_X24_Y3_N5
\inst2|deb[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|salida~clkctrl_outclk\,
	d => \inst2|deb[2]~24_combout\,
	sclr => \inst2|deb~20_combout\,
	ena => \inst2|deb[7]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|deb\(2));

-- Location: LCCOMB_X24_Y3_N6
\inst2|deb[3]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|deb[3]~26_combout\ = (\inst2|deb\(3) & (!\inst2|deb[2]~25\)) # (!\inst2|deb\(3) & ((\inst2|deb[2]~25\) # (GND)))
-- \inst2|deb[3]~27\ = CARRY((!\inst2|deb[2]~25\) # (!\inst2|deb\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|deb\(3),
	datad => VCC,
	cin => \inst2|deb[2]~25\,
	combout => \inst2|deb[3]~26_combout\,
	cout => \inst2|deb[3]~27\);

-- Location: FF_X24_Y3_N7
\inst2|deb[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|salida~clkctrl_outclk\,
	d => \inst2|deb[3]~26_combout\,
	sclr => \inst2|deb~20_combout\,
	ena => \inst2|deb[7]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|deb\(3));

-- Location: LCCOMB_X24_Y3_N8
\inst2|deb[4]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|deb[4]~28_combout\ = (\inst2|deb\(4) & (\inst2|deb[3]~27\ $ (GND))) # (!\inst2|deb\(4) & (!\inst2|deb[3]~27\ & VCC))
-- \inst2|deb[4]~29\ = CARRY((\inst2|deb\(4) & !\inst2|deb[3]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|deb\(4),
	datad => VCC,
	cin => \inst2|deb[3]~27\,
	combout => \inst2|deb[4]~28_combout\,
	cout => \inst2|deb[4]~29\);

-- Location: FF_X24_Y3_N9
\inst2|deb[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|salida~clkctrl_outclk\,
	d => \inst2|deb[4]~28_combout\,
	sclr => \inst2|deb~20_combout\,
	ena => \inst2|deb[7]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|deb\(4));

-- Location: LCCOMB_X24_Y3_N10
\inst2|deb[5]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|deb[5]~30_combout\ = (\inst2|deb\(5) & (!\inst2|deb[4]~29\)) # (!\inst2|deb\(5) & ((\inst2|deb[4]~29\) # (GND)))
-- \inst2|deb[5]~31\ = CARRY((!\inst2|deb[4]~29\) # (!\inst2|deb\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|deb\(5),
	datad => VCC,
	cin => \inst2|deb[4]~29\,
	combout => \inst2|deb[5]~30_combout\,
	cout => \inst2|deb[5]~31\);

-- Location: FF_X24_Y3_N11
\inst2|deb[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|salida~clkctrl_outclk\,
	d => \inst2|deb[5]~30_combout\,
	sclr => \inst2|deb~20_combout\,
	ena => \inst2|deb[7]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|deb\(5));

-- Location: LCCOMB_X24_Y3_N12
\inst2|deb[6]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|deb[6]~32_combout\ = (\inst2|deb\(6) & (\inst2|deb[5]~31\ $ (GND))) # (!\inst2|deb\(6) & (!\inst2|deb[5]~31\ & VCC))
-- \inst2|deb[6]~33\ = CARRY((\inst2|deb\(6) & !\inst2|deb[5]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|deb\(6),
	datad => VCC,
	cin => \inst2|deb[5]~31\,
	combout => \inst2|deb[6]~32_combout\,
	cout => \inst2|deb[6]~33\);

-- Location: FF_X24_Y3_N13
\inst2|deb[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|salida~clkctrl_outclk\,
	d => \inst2|deb[6]~32_combout\,
	sclr => \inst2|deb~20_combout\,
	ena => \inst2|deb[7]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|deb\(6));

-- Location: LCCOMB_X24_Y3_N14
\inst2|deb[7]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|deb[7]~34_combout\ = (\inst2|deb\(7) & (!\inst2|deb[6]~33\)) # (!\inst2|deb\(7) & ((\inst2|deb[6]~33\) # (GND)))
-- \inst2|deb[7]~35\ = CARRY((!\inst2|deb[6]~33\) # (!\inst2|deb\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|deb\(7),
	datad => VCC,
	cin => \inst2|deb[6]~33\,
	combout => \inst2|deb[7]~34_combout\,
	cout => \inst2|deb[7]~35\);

-- Location: FF_X24_Y3_N15
\inst2|deb[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|salida~clkctrl_outclk\,
	d => \inst2|deb[7]~34_combout\,
	sclr => \inst2|deb~20_combout\,
	ena => \inst2|deb[7]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|deb\(7));

-- Location: LCCOMB_X24_Y3_N16
\inst2|deb[8]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|deb[8]~36_combout\ = (\inst2|deb\(8) & (\inst2|deb[7]~35\ $ (GND))) # (!\inst2|deb\(8) & (!\inst2|deb[7]~35\ & VCC))
-- \inst2|deb[8]~37\ = CARRY((\inst2|deb\(8) & !\inst2|deb[7]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|deb\(8),
	datad => VCC,
	cin => \inst2|deb[7]~35\,
	combout => \inst2|deb[8]~36_combout\,
	cout => \inst2|deb[8]~37\);

-- Location: FF_X24_Y3_N17
\inst2|deb[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|salida~clkctrl_outclk\,
	d => \inst2|deb[8]~36_combout\,
	sclr => \inst2|deb~20_combout\,
	ena => \inst2|deb[7]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|deb\(8));

-- Location: LCCOMB_X24_Y3_N18
\inst2|deb[9]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|deb[9]~38_combout\ = (\inst2|deb\(9) & (!\inst2|deb[8]~37\)) # (!\inst2|deb\(9) & ((\inst2|deb[8]~37\) # (GND)))
-- \inst2|deb[9]~39\ = CARRY((!\inst2|deb[8]~37\) # (!\inst2|deb\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|deb\(9),
	datad => VCC,
	cin => \inst2|deb[8]~37\,
	combout => \inst2|deb[9]~38_combout\,
	cout => \inst2|deb[9]~39\);

-- Location: FF_X24_Y3_N19
\inst2|deb[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|salida~clkctrl_outclk\,
	d => \inst2|deb[9]~38_combout\,
	sclr => \inst2|deb~20_combout\,
	ena => \inst2|deb[7]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|deb\(9));

-- Location: LCCOMB_X24_Y3_N20
\inst2|deb[10]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|deb[10]~40_combout\ = (\inst2|deb\(10) & (\inst2|deb[9]~39\ $ (GND))) # (!\inst2|deb\(10) & (!\inst2|deb[9]~39\ & VCC))
-- \inst2|deb[10]~41\ = CARRY((\inst2|deb\(10) & !\inst2|deb[9]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|deb\(10),
	datad => VCC,
	cin => \inst2|deb[9]~39\,
	combout => \inst2|deb[10]~40_combout\,
	cout => \inst2|deb[10]~41\);

-- Location: FF_X24_Y3_N21
\inst2|deb[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|salida~clkctrl_outclk\,
	d => \inst2|deb[10]~40_combout\,
	sclr => \inst2|deb~20_combout\,
	ena => \inst2|deb[7]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|deb\(10));

-- Location: LCCOMB_X24_Y3_N22
\inst2|deb[11]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|deb[11]~42_combout\ = (\inst2|deb\(11) & (!\inst2|deb[10]~41\)) # (!\inst2|deb\(11) & ((\inst2|deb[10]~41\) # (GND)))
-- \inst2|deb[11]~43\ = CARRY((!\inst2|deb[10]~41\) # (!\inst2|deb\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|deb\(11),
	datad => VCC,
	cin => \inst2|deb[10]~41\,
	combout => \inst2|deb[11]~42_combout\,
	cout => \inst2|deb[11]~43\);

-- Location: FF_X24_Y3_N23
\inst2|deb[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|salida~clkctrl_outclk\,
	d => \inst2|deb[11]~42_combout\,
	sclr => \inst2|deb~20_combout\,
	ena => \inst2|deb[7]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|deb\(11));

-- Location: LCCOMB_X24_Y3_N24
\inst2|deb[12]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|deb[12]~44_combout\ = (\inst2|deb\(12) & (\inst2|deb[11]~43\ $ (GND))) # (!\inst2|deb\(12) & (!\inst2|deb[11]~43\ & VCC))
-- \inst2|deb[12]~45\ = CARRY((\inst2|deb\(12) & !\inst2|deb[11]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|deb\(12),
	datad => VCC,
	cin => \inst2|deb[11]~43\,
	combout => \inst2|deb[12]~44_combout\,
	cout => \inst2|deb[12]~45\);

-- Location: FF_X24_Y3_N25
\inst2|deb[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|salida~clkctrl_outclk\,
	d => \inst2|deb[12]~44_combout\,
	sclr => \inst2|deb~20_combout\,
	ena => \inst2|deb[7]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|deb\(12));

-- Location: LCCOMB_X24_Y3_N26
\inst2|deb[13]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|deb[13]~46_combout\ = \inst2|deb\(13) $ (\inst2|deb[12]~45\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|deb\(13),
	cin => \inst2|deb[12]~45\,
	combout => \inst2|deb[13]~46_combout\);

-- Location: FF_X24_Y3_N27
\inst2|deb[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|salida~clkctrl_outclk\,
	d => \inst2|deb[13]~46_combout\,
	sclr => \inst2|deb~20_combout\,
	ena => \inst2|deb[7]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|deb\(13));

-- Location: LCCOMB_X23_Y3_N18
\inst2|deb~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|deb~15_combout\ = (!\inst2|deb\(7) & (!\inst2|deb\(5) & (!\inst2|deb\(6) & !\inst2|deb\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|deb\(7),
	datab => \inst2|deb\(5),
	datac => \inst2|deb\(6),
	datad => \inst2|deb\(8),
	combout => \inst2|deb~15_combout\);

-- Location: LCCOMB_X23_Y3_N8
\inst2|deb~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|deb~14_combout\ = (!\inst2|deb\(1) & (!\inst2|deb\(3) & (!\inst2|deb\(4) & !\inst2|deb\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|deb\(1),
	datab => \inst2|deb\(3),
	datac => \inst2|deb\(4),
	datad => \inst2|deb\(2),
	combout => \inst2|deb~14_combout\);

-- Location: LCCOMB_X23_Y3_N28
\inst2|deb~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|deb~16_combout\ = (!\inst2|deb\(12) & (!\inst2|deb\(9) & (!\inst2|deb\(10) & !\inst2|deb\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|deb\(12),
	datab => \inst2|deb\(9),
	datac => \inst2|deb\(10),
	datad => \inst2|deb\(11),
	combout => \inst2|deb~16_combout\);

-- Location: LCCOMB_X23_Y3_N30
\inst2|deb~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|deb~17_combout\ = (!\inst2|deb\(13) & (\inst2|deb~15_combout\ & (\inst2|deb~14_combout\ & \inst2|deb~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|deb\(13),
	datab => \inst2|deb~15_combout\,
	datac => \inst2|deb~14_combout\,
	datad => \inst2|deb~16_combout\,
	combout => \inst2|deb~17_combout\);

-- Location: LCCOMB_X24_Y3_N28
\inst2|deb~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|deb~20_combout\ = (\inst2|Equal3~8_combout\ & (\inst2|deb\(0) & (\inst2|deb~17_combout\))) # (!\inst2|Equal3~8_combout\ & (((!\inst2|process_0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|deb\(0),
	datab => \inst2|deb~17_combout\,
	datac => \inst2|process_0~1_combout\,
	datad => \inst2|Equal3~8_combout\,
	combout => \inst2|deb~20_combout\);

-- Location: FF_X24_Y3_N1
\inst2|deb[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|salida~clkctrl_outclk\,
	d => \inst2|deb[0]~18_combout\,
	sclr => \inst2|deb~20_combout\,
	ena => \inst2|deb[7]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|deb\(0));

-- Location: LCCOMB_X23_Y7_N18
\inst|Equal4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal4~0_combout\ = (!\inst|row_debounce:12:debounce_keys|result~q\ & (!\inst|row_debounce:9:debounce_keys|result~q\ & (!\inst|row_debounce:0:debounce_keys|result~q\ & \inst|Equal15~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:12:debounce_keys|result~q\,
	datab => \inst|row_debounce:9:debounce_keys|result~q\,
	datac => \inst|row_debounce:0:debounce_keys|result~q\,
	datad => \inst|Equal15~0_combout\,
	combout => \inst|Equal4~0_combout\);

-- Location: LCCOMB_X23_Y3_N16
\inst|WideOr3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|WideOr3~1_combout\ = (!\inst|row_debounce:10:debounce_keys|result~q\ & (\inst|Equal4~0_combout\ & (\inst|row_debounce:11:debounce_keys|result~q\ $ (\inst|row_debounce:13:debounce_keys|result~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:11:debounce_keys|result~q\,
	datab => \inst|row_debounce:13:debounce_keys|result~q\,
	datac => \inst|row_debounce:10:debounce_keys|result~q\,
	datad => \inst|Equal4~0_combout\,
	combout => \inst|WideOr3~1_combout\);

-- Location: LCCOMB_X23_Y7_N4
\inst|Equal6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal6~1_combout\ = (\inst|Equal6~0_combout\ & (\inst|row_debounce:9:debounce_keys|result~q\ & (!\inst|row_debounce:0:debounce_keys|result~q\ & \inst|Equal15~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal6~0_combout\,
	datab => \inst|row_debounce:9:debounce_keys|result~q\,
	datac => \inst|row_debounce:0:debounce_keys|result~q\,
	datad => \inst|Equal15~0_combout\,
	combout => \inst|Equal6~1_combout\);

-- Location: LCCOMB_X24_Y7_N16
\inst|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~3_combout\ = (!\inst|row_debounce:6:debounce_keys|result~q\ & (\inst|Equal0~1_combout\ & !\inst|row_debounce:8:debounce_keys|result~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:6:debounce_keys|result~q\,
	datab => \inst|Equal0~1_combout\,
	datad => \inst|row_debounce:8:debounce_keys|result~q\,
	combout => \inst|Equal0~3_combout\);

-- Location: LCCOMB_X23_Y3_N14
\inst|WideOr3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|WideOr3~0_combout\ = (\inst|Equal6~1_combout\) # ((\inst|Equal0~2_combout\ & (\inst|row_debounce:15:debounce_keys|result~q\ & \inst|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~2_combout\,
	datab => \inst|row_debounce:15:debounce_keys|result~q\,
	datac => \inst|Equal6~1_combout\,
	datad => \inst|Equal0~3_combout\,
	combout => \inst|WideOr3~0_combout\);

-- Location: LCCOMB_X23_Y3_N6
\inst|WideOr3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|WideOr3~2_combout\ = ((\inst|WideOr3~1_combout\) # ((\inst|WideOr3~0_combout\) # (!\inst|WideOr0~3_combout\))) # (!\inst|WideOr0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|WideOr0~2_combout\,
	datab => \inst|WideOr3~1_combout\,
	datac => \inst|WideOr3~0_combout\,
	datad => \inst|WideOr0~3_combout\,
	combout => \inst|WideOr3~2_combout\);

-- Location: LCCOMB_X23_Y3_N12
\inst|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal2~0_combout\ = (!\inst|row_debounce:11:debounce_keys|result~q\ & (\inst|row_debounce:13:debounce_keys|result~q\ & (!\inst|row_debounce:10:debounce_keys|result~q\ & \inst|Equal4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:11:debounce_keys|result~q\,
	datab => \inst|row_debounce:13:debounce_keys|result~q\,
	datac => \inst|row_debounce:10:debounce_keys|result~q\,
	datad => \inst|Equal4~0_combout\,
	combout => \inst|Equal2~0_combout\);

-- Location: LCCOMB_X24_Y7_N8
\inst|Equal10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal10~0_combout\ = (!\inst|row_debounce:2:debounce_keys|result~q\ & (!\inst|row_debounce:3:debounce_keys|result~q\ & (\inst|Equal12~0_combout\ & \inst|row_debounce:5:debounce_keys|result~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:2:debounce_keys|result~q\,
	datab => \inst|row_debounce:3:debounce_keys|result~q\,
	datac => \inst|Equal12~0_combout\,
	datad => \inst|row_debounce:5:debounce_keys|result~q\,
	combout => \inst|Equal10~0_combout\);

-- Location: LCCOMB_X24_Y7_N26
\inst|Equal14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal14~0_combout\ = (!\inst|row_debounce:7:debounce_keys|result~q\ & (\inst|row_debounce:1:debounce_keys|result~q\ & (\inst|Equal8~0_combout\ & \inst|Equal8~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:7:debounce_keys|result~q\,
	datab => \inst|row_debounce:1:debounce_keys|result~q\,
	datac => \inst|Equal8~0_combout\,
	datad => \inst|Equal8~2_combout\,
	combout => \inst|Equal14~0_combout\);

-- Location: LCCOMB_X23_Y3_N2
\inst|Equal5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal5~0_combout\ = (!\inst|row_debounce:11:debounce_keys|result~q\ & (!\inst|row_debounce:13:debounce_keys|result~q\ & (\inst|row_debounce:10:debounce_keys|result~q\ & \inst|Equal4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:11:debounce_keys|result~q\,
	datab => \inst|row_debounce:13:debounce_keys|result~q\,
	datac => \inst|row_debounce:10:debounce_keys|result~q\,
	datad => \inst|Equal4~0_combout\,
	combout => \inst|Equal5~0_combout\);

-- Location: LCCOMB_X23_Y3_N4
\inst|WideOr1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|WideOr1~3_combout\ = (!\inst|Equal14~0_combout\ & (!\inst|Equal13~0_combout\ & (!\inst|Equal6~1_combout\ & !\inst|Equal5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal14~0_combout\,
	datab => \inst|Equal13~0_combout\,
	datac => \inst|Equal6~1_combout\,
	datad => \inst|Equal5~0_combout\,
	combout => \inst|WideOr1~3_combout\);

-- Location: LCCOMB_X24_Y7_N4
\inst|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal1~0_combout\ = (!\inst|row_debounce:0:debounce_keys|result~q\ & (\inst|row_debounce:14:debounce_keys|result~q\ & (!\inst|row_debounce:9:debounce_keys|result~q\ & \inst|Equal6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:0:debounce_keys|result~q\,
	datab => \inst|row_debounce:14:debounce_keys|result~q\,
	datac => \inst|row_debounce:9:debounce_keys|result~q\,
	datad => \inst|Equal6~0_combout\,
	combout => \inst|Equal1~0_combout\);

-- Location: LCCOMB_X24_Y7_N18
\inst|Equal9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal9~0_combout\ = (!\inst|row_debounce:8:debounce_keys|result~q\ & (\inst|Equal0~1_combout\ & (\inst|Equal7~0_combout\ & \inst|row_debounce:6:debounce_keys|result~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:8:debounce_keys|result~q\,
	datab => \inst|Equal0~1_combout\,
	datac => \inst|Equal7~0_combout\,
	datad => \inst|row_debounce:6:debounce_keys|result~q\,
	combout => \inst|Equal9~0_combout\);

-- Location: LCCOMB_X24_Y7_N14
\inst|WideOr2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|WideOr2~0_combout\ = (\inst|Equal9~0_combout\) # ((\inst|Equal0~3_combout\ & (!\inst|row_debounce:15:debounce_keys|result~q\ & \inst|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~3_combout\,
	datab => \inst|row_debounce:15:debounce_keys|result~q\,
	datac => \inst|Equal1~0_combout\,
	datad => \inst|Equal9~0_combout\,
	combout => \inst|WideOr2~0_combout\);

-- Location: LCCOMB_X23_Y3_N22
\inst|WideOr2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|WideOr2~1_combout\ = (\inst|Equal2~0_combout\) # ((\inst|Equal10~0_combout\) # ((\inst|WideOr2~0_combout\) # (!\inst|WideOr1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal2~0_combout\,
	datab => \inst|Equal10~0_combout\,
	datac => \inst|WideOr1~3_combout\,
	datad => \inst|WideOr2~0_combout\,
	combout => \inst|WideOr2~1_combout\);

-- Location: LCCOMB_X24_Y7_N0
\inst|Equal12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal12~1_combout\ = (!\inst|row_debounce:2:debounce_keys|result~q\ & (\inst|row_debounce:3:debounce_keys|result~q\ & (\inst|Equal12~0_combout\ & !\inst|row_debounce:5:debounce_keys|result~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:2:debounce_keys|result~q\,
	datab => \inst|row_debounce:3:debounce_keys|result~q\,
	datac => \inst|Equal12~0_combout\,
	datad => \inst|row_debounce:5:debounce_keys|result~q\,
	combout => \inst|Equal12~1_combout\);

-- Location: LCCOMB_X23_Y7_N24
\inst|Equal11~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal11~2_combout\ = (\inst|Equal11~0_combout\ & (\inst|Equal11~1_combout\ & \inst|row_debounce:4:debounce_keys|result~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal11~0_combout\,
	datac => \inst|Equal11~1_combout\,
	datad => \inst|row_debounce:4:debounce_keys|result~q\,
	combout => \inst|Equal11~2_combout\);

-- Location: LCCOMB_X23_Y7_N22
\inst|WideOr1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|WideOr1~0_combout\ = (\inst|row_debounce:12:debounce_keys|result~q\ & (!\inst|row_debounce:9:debounce_keys|result~q\ & !\inst|row_debounce:0:debounce_keys|result~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:12:debounce_keys|result~q\,
	datab => \inst|row_debounce:9:debounce_keys|result~q\,
	datad => \inst|row_debounce:0:debounce_keys|result~q\,
	combout => \inst|WideOr1~0_combout\);

-- Location: LCCOMB_X23_Y7_N14
\inst|WideOr1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|WideOr1~1_combout\ = (\inst|row_debounce:11:debounce_keys|result~q\ & (((\inst|Equal4~0_combout\)))) # (!\inst|row_debounce:11:debounce_keys|result~q\ & (\inst|Equal15~0_combout\ & (\inst|WideOr1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal15~0_combout\,
	datab => \inst|WideOr1~0_combout\,
	datac => \inst|row_debounce:11:debounce_keys|result~q\,
	datad => \inst|Equal4~0_combout\,
	combout => \inst|WideOr1~1_combout\);

-- Location: LCCOMB_X23_Y3_N20
\inst|WideOr1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|WideOr1~2_combout\ = (!\inst|row_debounce:10:debounce_keys|result~q\ & (!\inst|row_debounce:13:debounce_keys|result~q\ & \inst|WideOr1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|row_debounce:10:debounce_keys|result~q\,
	datab => \inst|row_debounce:13:debounce_keys|result~q\,
	datad => \inst|WideOr1~1_combout\,
	combout => \inst|WideOr1~2_combout\);

-- Location: LCCOMB_X23_Y3_N10
\inst|WideOr1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|WideOr1~4_combout\ = (\inst|Equal12~1_combout\) # ((\inst|Equal11~2_combout\) # ((\inst|WideOr1~2_combout\) # (!\inst|WideOr1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal12~1_combout\,
	datab => \inst|Equal11~2_combout\,
	datac => \inst|WideOr1~3_combout\,
	datad => \inst|WideOr1~2_combout\,
	combout => \inst|WideOr1~4_combout\);

-- Location: LCCOMB_X23_Y3_N0
\inst2|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|process_0~0_combout\ = (\inst|WideOr3~2_combout\) # ((\inst|Equal15~1_combout\) # ((\inst|WideOr2~1_combout\) # (\inst|WideOr1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|WideOr3~2_combout\,
	datab => \inst|Equal15~1_combout\,
	datac => \inst|WideOr2~1_combout\,
	datad => \inst|WideOr1~4_combout\,
	combout => \inst2|process_0~0_combout\);

-- Location: LCCOMB_X23_Y3_N26
\inst2|process_0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|process_0~1_combout\ = (!\inst2|deb\(0) & (\inst2|deb~17_combout\ & ((\inst|WideOr0~combout\) # (\inst2|process_0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|deb\(0),
	datab => \inst|WideOr0~combout\,
	datac => \inst2|deb~17_combout\,
	datad => \inst2|process_0~0_combout\,
	combout => \inst2|process_0~1_combout\);

-- Location: FF_X22_Y3_N29
\inst2|cont[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|salida~clkctrl_outclk\,
	d => \inst2|cont~4_combout\,
	ena => \inst2|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|cont\(2));

-- Location: LCCOMB_X22_Y3_N16
\inst2|cont~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|cont~3_combout\ = (\inst2|cont\(1) & (\inst|Equal15~1_combout\ $ (((\inst2|cont\(2)) # (!\inst2|cont\(0)))))) # (!\inst2|cont\(1) & ((\inst2|cont\(0) & (!\inst|Equal15~1_combout\ & !\inst2|cont\(2))) # (!\inst2|cont\(0) & (\inst|Equal15~1_combout\ 
-- & \inst2|cont\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|cont\(1),
	datab => \inst2|cont\(0),
	datac => \inst|Equal15~1_combout\,
	datad => \inst2|cont\(2),
	combout => \inst2|cont~3_combout\);

-- Location: FF_X23_Y3_N21
\inst2|cont[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|salida~clkctrl_outclk\,
	asdata => \inst2|cont~3_combout\,
	sload => VCC,
	ena => \inst2|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|cont\(1));

-- Location: LCCOMB_X22_Y3_N30
\inst2|cont~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|cont~2_combout\ = (\inst|Equal15~1_combout\ & (!\inst2|cont\(0) & (\inst2|cont\(1) $ (\inst2|cont\(2))))) # (!\inst|Equal15~1_combout\ & ((\inst2|cont\(0) $ (!\inst2|cont\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010000001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|cont\(1),
	datab => \inst|Equal15~1_combout\,
	datac => \inst2|cont\(0),
	datad => \inst2|cont\(2),
	combout => \inst2|cont~2_combout\);

-- Location: FF_X22_Y3_N31
\inst2|cont[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|salida~clkctrl_outclk\,
	d => \inst2|cont~2_combout\,
	ena => \inst2|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|cont\(0));

-- Location: LCCOMB_X22_Y3_N12
\inst2|aux[3]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|aux[3]~9_combout\ = (\inst2|cont\(1)) # (!\inst2|cont\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|cont\(0),
	datac => \inst2|cont\(1),
	combout => \inst2|aux[3]~9_combout\);

-- Location: LCCOMB_X22_Y3_N10
\inst2|aux[3]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|aux[3]~10_combout\ = (!\inst2|cont\(2) & (\inst2|process_0~1_combout\ & ((!\inst|Equal15~1_combout\) # (!\inst2|aux[3]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|aux[3]~9_combout\,
	datab => \inst2|cont\(2),
	datac => \inst|Equal15~1_combout\,
	datad => \inst2|process_0~1_combout\,
	combout => \inst2|aux[3]~10_combout\);

-- Location: FF_X21_Y3_N15
\inst2|aux[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|salida~clkctrl_outclk\,
	d => \inst2|aux[3]~feeder_combout\,
	ena => \inst2|aux[3]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|aux\(3));

-- Location: LCCOMB_X18_Y3_N20
\inst2|aux~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|aux~17_combout\ = (\inst2|aux\(3) & !\inst|Equal15~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|aux\(3),
	datad => \inst|Equal15~1_combout\,
	combout => \inst2|aux~17_combout\);

-- Location: LCCOMB_X22_Y3_N8
\inst2|aux[7]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|aux[7]~1_combout\ = (\inst2|cont\(0)) # (!\inst2|cont\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|cont\(0),
	datac => \inst2|cont\(1),
	combout => \inst2|aux[7]~1_combout\);

-- Location: LCCOMB_X18_Y3_N2
\inst2|aux[7]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|aux[7]~2_combout\ = (!\inst2|cont\(2) & (\inst2|process_0~1_combout\ & ((!\inst|Equal15~1_combout\) # (!\inst2|aux[7]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|aux[7]~1_combout\,
	datab => \inst2|cont\(2),
	datac => \inst2|process_0~1_combout\,
	datad => \inst|Equal15~1_combout\,
	combout => \inst2|aux[7]~2_combout\);

-- Location: FF_X18_Y3_N21
\inst2|aux[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|salida~clkctrl_outclk\,
	d => \inst2|aux~17_combout\,
	ena => \inst2|aux[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|aux\(7));

-- Location: LCCOMB_X22_Y3_N18
\inst2|aux~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|aux~18_combout\ = (!\inst|Equal15~1_combout\ & \inst2|aux\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Equal15~1_combout\,
	datad => \inst2|aux\(7),
	combout => \inst2|aux~18_combout\);

-- Location: LCCOMB_X22_Y3_N22
\inst2|aux[11]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|aux[11]~4_combout\ = (!\inst2|cont\(0)) # (!\inst2|cont\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|cont\(1),
	datac => \inst2|cont\(0),
	combout => \inst2|aux[11]~4_combout\);

-- Location: LCCOMB_X22_Y3_N20
\inst2|aux[11]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|aux[11]~5_combout\ = (!\inst2|cont\(2) & (\inst2|process_0~1_combout\ & ((!\inst|Equal15~1_combout\) # (!\inst2|aux[11]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|aux[11]~4_combout\,
	datab => \inst2|cont\(2),
	datac => \inst|Equal15~1_combout\,
	datad => \inst2|process_0~1_combout\,
	combout => \inst2|aux[11]~5_combout\);

-- Location: FF_X22_Y3_N19
\inst2|aux[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|salida~clkctrl_outclk\,
	d => \inst2|aux~18_combout\,
	ena => \inst2|aux[11]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|aux\(11));

-- Location: LCCOMB_X19_Y3_N30
\inst2|aux~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|aux~19_combout\ = (!\inst|Equal15~1_combout\ & \inst2|aux\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Equal15~1_combout\,
	datad => \inst2|aux\(11),
	combout => \inst2|aux~19_combout\);

-- Location: LCCOMB_X22_Y3_N26
\inst2|aux[15]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|aux[15]~7_combout\ = (\inst2|cont\(0)) # ((\inst2|cont\(1)) # (!\inst2|cont\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|cont\(0),
	datab => \inst2|cont\(2),
	datac => \inst2|cont\(1),
	combout => \inst2|aux[15]~7_combout\);

-- Location: LCCOMB_X19_Y3_N2
\inst2|aux[15]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|aux[15]~8_combout\ = (\inst2|process_0~1_combout\ & ((\inst|Equal15~1_combout\ & ((!\inst2|aux[15]~7_combout\))) # (!\inst|Equal15~1_combout\ & (!\inst2|cont\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|cont\(2),
	datab => \inst2|aux[15]~7_combout\,
	datac => \inst|Equal15~1_combout\,
	datad => \inst2|process_0~1_combout\,
	combout => \inst2|aux[15]~8_combout\);

-- Location: FF_X19_Y3_N31
\inst2|aux[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|salida~clkctrl_outclk\,
	d => \inst2|aux~19_combout\,
	ena => \inst2|aux[15]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|aux\(15));

-- Location: LCCOMB_X19_Y3_N8
\inst1|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux4~0_combout\ = (\inst1|contador\(1) & (\inst1|contador\(0))) # (!\inst1|contador\(1) & ((\inst1|contador\(0) & ((\inst2|aux\(11)))) # (!\inst1|contador\(0) & (\inst2|aux\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|contador\(1),
	datab => \inst1|contador\(0),
	datac => \inst2|aux\(15),
	datad => \inst2|aux\(11),
	combout => \inst1|Mux4~0_combout\);

-- Location: LCCOMB_X18_Y3_N26
\inst1|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux4~1_combout\ = (\inst1|contador\(1) & ((\inst1|Mux4~0_combout\ & ((\inst2|aux\(3)))) # (!\inst1|Mux4~0_combout\ & (\inst2|aux\(7))))) # (!\inst1|contador\(1) & (((\inst1|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|contador\(1),
	datab => \inst2|aux\(7),
	datac => \inst1|Mux4~0_combout\,
	datad => \inst2|aux\(3),
	combout => \inst1|Mux4~1_combout\);

-- Location: FF_X18_Y3_N27
\inst1|tmp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|salida~clkctrl_outclk\,
	d => \inst1|Mux4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|tmp\(3));

-- Location: LCCOMB_X21_Y3_N28
\inst2|aux[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|aux[2]~feeder_combout\ = \inst|WideOr1~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|WideOr1~4_combout\,
	combout => \inst2|aux[2]~feeder_combout\);

-- Location: FF_X21_Y3_N29
\inst2|aux[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|salida~clkctrl_outclk\,
	d => \inst2|aux[2]~feeder_combout\,
	ena => \inst2|aux[3]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|aux\(2));

-- Location: LCCOMB_X18_Y3_N30
\inst2|aux~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|aux~14_combout\ = (\inst2|aux\(2) & !\inst|Equal15~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|aux\(2),
	datad => \inst|Equal15~1_combout\,
	combout => \inst2|aux~14_combout\);

-- Location: FF_X18_Y3_N31
\inst2|aux[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|salida~clkctrl_outclk\,
	d => \inst2|aux~14_combout\,
	ena => \inst2|aux[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|aux\(6));

-- Location: LCCOMB_X22_Y3_N24
\inst2|aux~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|aux~15_combout\ = (\inst2|aux\(6) & !\inst|Equal15~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|aux\(6),
	datad => \inst|Equal15~1_combout\,
	combout => \inst2|aux~15_combout\);

-- Location: FF_X22_Y3_N25
\inst2|aux[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|salida~clkctrl_outclk\,
	d => \inst2|aux~15_combout\,
	ena => \inst2|aux[11]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|aux\(10));

-- Location: LCCOMB_X19_Y3_N22
\inst2|aux~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|aux~16_combout\ = (\inst2|aux\(10) & !\inst|Equal15~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|aux\(10),
	datac => \inst|Equal15~1_combout\,
	combout => \inst2|aux~16_combout\);

-- Location: FF_X19_Y3_N23
\inst2|aux[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|salida~clkctrl_outclk\,
	d => \inst2|aux~16_combout\,
	ena => \inst2|aux[15]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|aux\(14));

-- Location: LCCOMB_X19_Y3_N28
\inst1|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux5~0_combout\ = (\inst1|contador\(1) & (\inst1|contador\(0))) # (!\inst1|contador\(1) & ((\inst1|contador\(0) & ((\inst2|aux\(10)))) # (!\inst1|contador\(0) & (\inst2|aux\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|contador\(1),
	datab => \inst1|contador\(0),
	datac => \inst2|aux\(14),
	datad => \inst2|aux\(10),
	combout => \inst1|Mux5~0_combout\);

-- Location: LCCOMB_X18_Y3_N16
\inst1|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux5~1_combout\ = (\inst1|contador\(1) & ((\inst1|Mux5~0_combout\ & ((\inst2|aux\(2)))) # (!\inst1|Mux5~0_combout\ & (\inst2|aux\(6))))) # (!\inst1|contador\(1) & (\inst1|Mux5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|contador\(1),
	datab => \inst1|Mux5~0_combout\,
	datac => \inst2|aux\(6),
	datad => \inst2|aux\(2),
	combout => \inst1|Mux5~1_combout\);

-- Location: FF_X18_Y3_N17
\inst1|tmp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|salida~clkctrl_outclk\,
	d => \inst1|Mux5~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|tmp\(2));

-- Location: LCCOMB_X21_Y3_N26
\inst2|aux[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|aux[1]~feeder_combout\ = \inst|WideOr2~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|WideOr2~1_combout\,
	combout => \inst2|aux[1]~feeder_combout\);

-- Location: FF_X21_Y3_N27
\inst2|aux[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|salida~clkctrl_outclk\,
	d => \inst2|aux[1]~feeder_combout\,
	ena => \inst2|aux[3]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|aux\(1));

-- Location: LCCOMB_X19_Y3_N0
\inst2|aux~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|aux~12_combout\ = (!\inst|Equal15~1_combout\ & \inst2|aux\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Equal15~1_combout\,
	datad => \inst2|aux\(1),
	combout => \inst2|aux~12_combout\);

-- Location: FF_X18_Y3_N13
\inst2|aux[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|salida~clkctrl_outclk\,
	asdata => \inst2|aux~12_combout\,
	sload => VCC,
	ena => \inst2|aux[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|aux\(5));

-- Location: LCCOMB_X22_Y3_N2
\inst2|aux~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|aux~11_combout\ = (!\inst|Equal15~1_combout\ & \inst2|aux\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Equal15~1_combout\,
	datad => \inst2|aux\(5),
	combout => \inst2|aux~11_combout\);

-- Location: FF_X22_Y3_N3
\inst2|aux[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|salida~clkctrl_outclk\,
	d => \inst2|aux~11_combout\,
	ena => \inst2|aux[11]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|aux\(9));

-- Location: LCCOMB_X19_Y3_N16
\inst2|aux~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|aux~13_combout\ = (!\inst|Equal15~1_combout\ & \inst2|aux\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal15~1_combout\,
	datac => \inst2|aux\(9),
	combout => \inst2|aux~13_combout\);

-- Location: FF_X19_Y3_N17
\inst2|aux[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|salida~clkctrl_outclk\,
	d => \inst2|aux~13_combout\,
	ena => \inst2|aux[15]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|aux\(13));

-- Location: LCCOMB_X18_Y3_N12
\inst1|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux6~0_combout\ = (\inst1|contador\(1) & (((\inst2|aux\(5)) # (\inst1|contador\(0))))) # (!\inst1|contador\(1) & (\inst2|aux\(13) & ((!\inst1|contador\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|contador\(1),
	datab => \inst2|aux\(13),
	datac => \inst2|aux\(5),
	datad => \inst1|contador\(0),
	combout => \inst1|Mux6~0_combout\);

-- Location: LCCOMB_X19_Y3_N14
\inst1|Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux6~1_combout\ = (\inst1|Mux6~0_combout\ & (((\inst2|aux\(1))) # (!\inst1|contador\(0)))) # (!\inst1|Mux6~0_combout\ & (\inst1|contador\(0) & (\inst2|aux\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux6~0_combout\,
	datab => \inst1|contador\(0),
	datac => \inst2|aux\(9),
	datad => \inst2|aux\(1),
	combout => \inst1|Mux6~1_combout\);

-- Location: FF_X19_Y3_N15
\inst1|tmp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|salida~clkctrl_outclk\,
	d => \inst1|Mux6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|tmp\(1));

-- Location: LCCOMB_X21_Y3_N12
\inst2|aux[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|aux[0]~feeder_combout\ = \inst|WideOr3~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|WideOr3~2_combout\,
	combout => \inst2|aux[0]~feeder_combout\);

-- Location: FF_X21_Y3_N13
\inst2|aux[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|salida~clkctrl_outclk\,
	d => \inst2|aux[0]~feeder_combout\,
	ena => \inst2|aux[3]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|aux\(0));

-- Location: LCCOMB_X18_Y3_N6
\inst2|aux~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|aux~0_combout\ = (\inst2|aux\(0) & !\inst|Equal15~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|aux\(0),
	datad => \inst|Equal15~1_combout\,
	combout => \inst2|aux~0_combout\);

-- Location: FF_X18_Y3_N7
\inst2|aux[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|salida~clkctrl_outclk\,
	d => \inst2|aux~0_combout\,
	ena => \inst2|aux[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|aux\(4));

-- Location: LCCOMB_X22_Y3_N4
\inst2|aux~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|aux~3_combout\ = (\inst2|aux\(4) & !\inst|Equal15~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|aux\(4),
	datad => \inst|Equal15~1_combout\,
	combout => \inst2|aux~3_combout\);

-- Location: FF_X22_Y3_N5
\inst2|aux[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|salida~clkctrl_outclk\,
	d => \inst2|aux~3_combout\,
	ena => \inst2|aux[11]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|aux\(8));

-- Location: LCCOMB_X19_Y3_N4
\inst2|aux~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|aux~6_combout\ = (\inst2|aux\(8) & !\inst|Equal15~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|aux\(8),
	datac => \inst|Equal15~1_combout\,
	combout => \inst2|aux~6_combout\);

-- Location: FF_X19_Y3_N5
\inst2|aux[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|salida~clkctrl_outclk\,
	d => \inst2|aux~6_combout\,
	ena => \inst2|aux[15]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|aux\(12));

-- Location: LCCOMB_X19_Y3_N10
\inst1|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux7~0_combout\ = (\inst1|contador\(1) & (\inst1|contador\(0))) # (!\inst1|contador\(1) & ((\inst1|contador\(0) & ((\inst2|aux\(8)))) # (!\inst1|contador\(0) & (\inst2|aux\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|contador\(1),
	datab => \inst1|contador\(0),
	datac => \inst2|aux\(12),
	datad => \inst2|aux\(8),
	combout => \inst1|Mux7~0_combout\);

-- Location: LCCOMB_X18_Y3_N18
\inst1|Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux7~1_combout\ = (\inst1|Mux7~0_combout\ & (((\inst2|aux\(0)) # (!\inst1|contador\(1))))) # (!\inst1|Mux7~0_combout\ & (\inst2|aux\(4) & ((\inst1|contador\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|aux\(4),
	datab => \inst2|aux\(0),
	datac => \inst1|Mux7~0_combout\,
	datad => \inst1|contador\(1),
	combout => \inst1|Mux7~1_combout\);

-- Location: FF_X18_Y3_N19
\inst1|tmp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|salida~clkctrl_outclk\,
	d => \inst1|Mux7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|tmp\(0));

-- Location: LCCOMB_X18_Y3_N0
\inst1|Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux14~0_combout\ = (\inst1|tmp\(3) & (\inst1|tmp\(0) & (\inst1|tmp\(2) $ (\inst1|tmp\(1))))) # (!\inst1|tmp\(3) & (!\inst1|tmp\(1) & (\inst1|tmp\(2) $ (\inst1|tmp\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|tmp\(3),
	datab => \inst1|tmp\(2),
	datac => \inst1|tmp\(1),
	datad => \inst1|tmp\(0),
	combout => \inst1|Mux14~0_combout\);

-- Location: LCCOMB_X18_Y3_N22
\inst1|Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux13~0_combout\ = (\inst1|tmp\(3) & ((\inst1|tmp\(0) & ((\inst1|tmp\(1)))) # (!\inst1|tmp\(0) & (\inst1|tmp\(2))))) # (!\inst1|tmp\(3) & (\inst1|tmp\(2) & (\inst1|tmp\(1) $ (\inst1|tmp\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|tmp\(3),
	datab => \inst1|tmp\(2),
	datac => \inst1|tmp\(1),
	datad => \inst1|tmp\(0),
	combout => \inst1|Mux13~0_combout\);

-- Location: LCCOMB_X18_Y3_N8
\inst1|Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux12~0_combout\ = (\inst1|tmp\(3) & (\inst1|tmp\(2) & ((\inst1|tmp\(1)) # (!\inst1|tmp\(0))))) # (!\inst1|tmp\(3) & (!\inst1|tmp\(2) & (\inst1|tmp\(1) & !\inst1|tmp\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|tmp\(3),
	datab => \inst1|tmp\(2),
	datac => \inst1|tmp\(1),
	datad => \inst1|tmp\(0),
	combout => \inst1|Mux12~0_combout\);

-- Location: LCCOMB_X18_Y3_N14
\inst1|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux11~0_combout\ = (\inst1|tmp\(1) & ((\inst1|tmp\(2) & ((\inst1|tmp\(0)))) # (!\inst1|tmp\(2) & (\inst1|tmp\(3) & !\inst1|tmp\(0))))) # (!\inst1|tmp\(1) & (!\inst1|tmp\(3) & (\inst1|tmp\(2) $ (\inst1|tmp\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|tmp\(3),
	datab => \inst1|tmp\(2),
	datac => \inst1|tmp\(1),
	datad => \inst1|tmp\(0),
	combout => \inst1|Mux11~0_combout\);

-- Location: LCCOMB_X18_Y3_N24
\inst1|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux10~0_combout\ = (\inst1|tmp\(1) & (!\inst1|tmp\(3) & ((\inst1|tmp\(0))))) # (!\inst1|tmp\(1) & ((\inst1|tmp\(2) & (!\inst1|tmp\(3))) # (!\inst1|tmp\(2) & ((\inst1|tmp\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|tmp\(3),
	datab => \inst1|tmp\(2),
	datac => \inst1|tmp\(1),
	datad => \inst1|tmp\(0),
	combout => \inst1|Mux10~0_combout\);

-- Location: LCCOMB_X18_Y3_N10
\inst1|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux9~0_combout\ = (\inst1|tmp\(2) & (\inst1|tmp\(0) & (\inst1|tmp\(3) $ (\inst1|tmp\(1))))) # (!\inst1|tmp\(2) & (!\inst1|tmp\(3) & ((\inst1|tmp\(1)) # (\inst1|tmp\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|tmp\(3),
	datab => \inst1|tmp\(2),
	datac => \inst1|tmp\(1),
	datad => \inst1|tmp\(0),
	combout => \inst1|Mux9~0_combout\);

-- Location: LCCOMB_X18_Y3_N4
\inst1|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux8~0_combout\ = (\inst1|tmp\(0) & ((\inst1|tmp\(3)) # (\inst1|tmp\(2) $ (\inst1|tmp\(1))))) # (!\inst1|tmp\(0) & ((\inst1|tmp\(1)) # (\inst1|tmp\(3) $ (\inst1|tmp\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111011110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|tmp\(3),
	datab => \inst1|tmp\(2),
	datac => \inst1|tmp\(1),
	datad => \inst1|tmp\(0),
	combout => \inst1|Mux8~0_combout\);

-- Location: IOIBUF_X23_Y24_N15
\rw~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rw,
	o => \rw~input_o\);

-- Location: IOIBUF_X0_Y11_N15
\pop~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pop,
	o => \pop~input_o\);

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

ww_columns(1) <= \columns[1]~output_o\;

ww_columns(2) <= \columns[2]~output_o\;

ww_columns(3) <= \columns[3]~output_o\;

ww_columns(4) <= \columns[4]~output_o\;
END structure;


