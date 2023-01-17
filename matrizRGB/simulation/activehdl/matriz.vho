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

-- DATE "01/16/2023 21:59:46"

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

ENTITY 	matriz IS
    PORT (
	B : OUT std_logic_vector(7 DOWNTO 0);
	up : IN std_logic;
	down : IN std_logic;
	left : IN std_logic;
	right : IN std_logic;
	put : IN std_logic;
	clk : IN std_logic;
	rst : IN std_logic;
	filas : OUT std_logic_vector(7 DOWNTO 0);
	G : OUT std_logic_vector(7 DOWNTO 0);
	R : OUT std_logic_vector(7 DOWNTO 0)
	);
END matriz;

-- Design Ports Information
-- B[7]	=>  Location: PIN_110,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_111,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_112,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_113,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_114,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_115,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_119,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_120,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- filas[7]	=>  Location: PIN_54,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- filas[6]	=>  Location: PIN_53,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- filas[5]	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- filas[4]	=>  Location: PIN_51,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- filas[3]	=>  Location: PIN_33,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- filas[2]	=>  Location: PIN_32,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- filas[1]	=>  Location: PIN_31,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- filas[0]	=>  Location: PIN_30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G[7]	=>  Location: PIN_38,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G[6]	=>  Location: PIN_39,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G[5]	=>  Location: PIN_42,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G[4]	=>  Location: PIN_43,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G[3]	=>  Location: PIN_44,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G[2]	=>  Location: PIN_46,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G[1]	=>  Location: PIN_49,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G[0]	=>  Location: PIN_50,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[7]	=>  Location: PIN_121,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[6]	=>  Location: PIN_124,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[5]	=>  Location: PIN_125,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[4]	=>  Location: PIN_126,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[3]	=>  Location: PIN_127,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[2]	=>  Location: PIN_128,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[1]	=>  Location: PIN_129,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[0]	=>  Location: PIN_132,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_91,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_73,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- put	=>  Location: PIN_64,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- left	=>  Location: PIN_59,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- right	=>  Location: PIN_60,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- down	=>  Location: PIN_58,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- up	=>  Location: PIN_55,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF matriz IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_B : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_up : std_logic;
SIGNAL ww_down : std_logic;
SIGNAL ww_left : std_logic;
SIGNAL ww_right : std_logic;
SIGNAL ww_put : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_filas : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_G : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_R : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|sal|Mux4_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \inst|sal|Mux4_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst1|salida~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \B[7]~output_o\ : std_logic;
SIGNAL \B[6]~output_o\ : std_logic;
SIGNAL \B[5]~output_o\ : std_logic;
SIGNAL \B[4]~output_o\ : std_logic;
SIGNAL \B[3]~output_o\ : std_logic;
SIGNAL \B[2]~output_o\ : std_logic;
SIGNAL \B[1]~output_o\ : std_logic;
SIGNAL \B[0]~output_o\ : std_logic;
SIGNAL \filas[7]~output_o\ : std_logic;
SIGNAL \filas[6]~output_o\ : std_logic;
SIGNAL \filas[5]~output_o\ : std_logic;
SIGNAL \filas[4]~output_o\ : std_logic;
SIGNAL \filas[3]~output_o\ : std_logic;
SIGNAL \filas[2]~output_o\ : std_logic;
SIGNAL \filas[1]~output_o\ : std_logic;
SIGNAL \filas[0]~output_o\ : std_logic;
SIGNAL \G[7]~output_o\ : std_logic;
SIGNAL \G[6]~output_o\ : std_logic;
SIGNAL \G[5]~output_o\ : std_logic;
SIGNAL \G[4]~output_o\ : std_logic;
SIGNAL \G[3]~output_o\ : std_logic;
SIGNAL \G[2]~output_o\ : std_logic;
SIGNAL \G[1]~output_o\ : std_logic;
SIGNAL \G[0]~output_o\ : std_logic;
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
SIGNAL \inst1|Add0~0_combout\ : std_logic;
SIGNAL \inst1|Add0~3\ : std_logic;
SIGNAL \inst1|Add0~4_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \inst1|Add0~5\ : std_logic;
SIGNAL \inst1|Add0~6_combout\ : std_logic;
SIGNAL \inst1|cuenta~4_combout\ : std_logic;
SIGNAL \inst1|Add0~7\ : std_logic;
SIGNAL \inst1|Add0~8_combout\ : std_logic;
SIGNAL \inst1|Add0~9\ : std_logic;
SIGNAL \inst1|Add0~10_combout\ : std_logic;
SIGNAL \inst1|Add0~11\ : std_logic;
SIGNAL \inst1|Add0~12_combout\ : std_logic;
SIGNAL \inst1|Add0~13\ : std_logic;
SIGNAL \inst1|Add0~14_combout\ : std_logic;
SIGNAL \inst1|cuenta~3_combout\ : std_logic;
SIGNAL \inst1|Add0~15\ : std_logic;
SIGNAL \inst1|Add0~16_combout\ : std_logic;
SIGNAL \inst1|cuenta~2_combout\ : std_logic;
SIGNAL \inst1|Add0~17\ : std_logic;
SIGNAL \inst1|Add0~18_combout\ : std_logic;
SIGNAL \inst1|cuenta~1_combout\ : std_logic;
SIGNAL \inst1|Add0~19\ : std_logic;
SIGNAL \inst1|Add0~20_combout\ : std_logic;
SIGNAL \inst1|Add0~21\ : std_logic;
SIGNAL \inst1|Add0~22_combout\ : std_logic;
SIGNAL \inst1|Add0~23\ : std_logic;
SIGNAL \inst1|Add0~24_combout\ : std_logic;
SIGNAL \inst1|cuenta~0_combout\ : std_logic;
SIGNAL \inst1|Add0~25\ : std_logic;
SIGNAL \inst1|Add0~26_combout\ : std_logic;
SIGNAL \inst1|Add0~27\ : std_logic;
SIGNAL \inst1|Add0~28_combout\ : std_logic;
SIGNAL \inst1|Add0~29\ : std_logic;
SIGNAL \inst1|Add0~30_combout\ : std_logic;
SIGNAL \inst1|Add0~31\ : std_logic;
SIGNAL \inst1|Add0~32_combout\ : std_logic;
SIGNAL \inst1|Add0~33\ : std_logic;
SIGNAL \inst1|Add0~34_combout\ : std_logic;
SIGNAL \inst1|Add0~35\ : std_logic;
SIGNAL \inst1|Add0~36_combout\ : std_logic;
SIGNAL \inst1|Add0~37\ : std_logic;
SIGNAL \inst1|Add0~38_combout\ : std_logic;
SIGNAL \inst1|Add0~39\ : std_logic;
SIGNAL \inst1|Add0~40_combout\ : std_logic;
SIGNAL \inst1|Add0~41\ : std_logic;
SIGNAL \inst1|Add0~42_combout\ : std_logic;
SIGNAL \inst1|Add0~43\ : std_logic;
SIGNAL \inst1|Add0~44_combout\ : std_logic;
SIGNAL \inst1|Add0~45\ : std_logic;
SIGNAL \inst1|Add0~46_combout\ : std_logic;
SIGNAL \inst1|Add0~47\ : std_logic;
SIGNAL \inst1|Add0~48_combout\ : std_logic;
SIGNAL \inst1|Add0~49\ : std_logic;
SIGNAL \inst1|Add0~50_combout\ : std_logic;
SIGNAL \inst1|Equal0~0_combout\ : std_logic;
SIGNAL \inst1|Equal0~3_combout\ : std_logic;
SIGNAL \inst1|Equal0~1_combout\ : std_logic;
SIGNAL \inst1|Equal0~2_combout\ : std_logic;
SIGNAL \inst1|Equal0~4_combout\ : std_logic;
SIGNAL \inst1|cuenta~5_combout\ : std_logic;
SIGNAL \inst1|Add0~1\ : std_logic;
SIGNAL \inst1|Add0~2_combout\ : std_logic;
SIGNAL \inst1|Equal0~6_combout\ : std_logic;
SIGNAL \inst1|Equal0~5_combout\ : std_logic;
SIGNAL \inst1|Equal0~7_combout\ : std_logic;
SIGNAL \inst1|salida~0_combout\ : std_logic;
SIGNAL \inst1|salida~feeder_combout\ : std_logic;
SIGNAL \inst1|salida~q\ : std_logic;
SIGNAL \inst1|salida~clkctrl_outclk\ : std_logic;
SIGNAL \inst|tablero1|camb~0_combout\ : std_logic;
SIGNAL \inst|tablero1|camb~q\ : std_logic;
SIGNAL \inst|switcher[1]~4_combout\ : std_logic;
SIGNAL \inst|switcher[1]~5\ : std_logic;
SIGNAL \inst|switcher[2]~6_combout\ : std_logic;
SIGNAL \inst|switcher[2]~7\ : std_logic;
SIGNAL \inst|switcher[3]~8_combout\ : std_logic;
SIGNAL \inst|switcher[3]~9\ : std_logic;
SIGNAL \inst|switcher[4]~10_combout\ : std_logic;
SIGNAL \inst|posComp2[0]~0_combout\ : std_logic;
SIGNAL \inst|posComp2[0]~1_combout\ : std_logic;
SIGNAL \inst|pos2|B[6]~0_combout\ : std_logic;
SIGNAL \inst|Mux25~0_combout\ : std_logic;
SIGNAL \put~input_o\ : std_logic;
SIGNAL \right~input_o\ : std_logic;
SIGNAL \down~input_o\ : std_logic;
SIGNAL \up~input_o\ : std_logic;
SIGNAL \left~input_o\ : std_logic;
SIGNAL \inst2|debouncer1|enable~0_combout\ : std_logic;
SIGNAL \inst2|debouncer1|Add0~0_combout\ : std_logic;
SIGNAL \inst2|debouncer1|cont~1_combout\ : std_logic;
SIGNAL \inst2|debouncer1|Add0~1\ : std_logic;
SIGNAL \inst2|debouncer1|Add0~2_combout\ : std_logic;
SIGNAL \inst2|debouncer1|Add0~3\ : std_logic;
SIGNAL \inst2|debouncer1|Add0~4_combout\ : std_logic;
SIGNAL \inst2|debouncer1|Add0~5\ : std_logic;
SIGNAL \inst2|debouncer1|Add0~6_combout\ : std_logic;
SIGNAL \inst2|debouncer1|cont~0_combout\ : std_logic;
SIGNAL \inst2|debouncer1|Add0~7\ : std_logic;
SIGNAL \inst2|debouncer1|Add0~8_combout\ : std_logic;
SIGNAL \inst2|debouncer1|cont~2_combout\ : std_logic;
SIGNAL \inst2|debouncer1|Add0~9\ : std_logic;
SIGNAL \inst2|debouncer1|Add0~10_combout\ : std_logic;
SIGNAL \inst2|debouncer1|cont~3_combout\ : std_logic;
SIGNAL \inst2|debouncer1|Add0~11\ : std_logic;
SIGNAL \inst2|debouncer1|Add0~12_combout\ : std_logic;
SIGNAL \inst2|debouncer1|Add0~13\ : std_logic;
SIGNAL \inst2|debouncer1|Add0~14_combout\ : std_logic;
SIGNAL \inst2|debouncer1|cont~4_combout\ : std_logic;
SIGNAL \inst2|debouncer1|Add0~15\ : std_logic;
SIGNAL \inst2|debouncer1|Add0~16_combout\ : std_logic;
SIGNAL \inst2|debouncer1|cont~5_combout\ : std_logic;
SIGNAL \inst2|debouncer1|Add0~17\ : std_logic;
SIGNAL \inst2|debouncer1|Add0~18_combout\ : std_logic;
SIGNAL \inst2|debouncer1|cont~6_combout\ : std_logic;
SIGNAL \inst2|debouncer1|Add0~19\ : std_logic;
SIGNAL \inst2|debouncer1|Add0~20_combout\ : std_logic;
SIGNAL \inst2|debouncer1|Add0~21\ : std_logic;
SIGNAL \inst2|debouncer1|Add0~22_combout\ : std_logic;
SIGNAL \inst2|debouncer1|cont~7_combout\ : std_logic;
SIGNAL \inst2|debouncer1|Equal0~2_combout\ : std_logic;
SIGNAL \inst2|debouncer1|Add0~23\ : std_logic;
SIGNAL \inst2|debouncer1|Add0~24_combout\ : std_logic;
SIGNAL \inst2|debouncer1|Equal0~1_combout\ : std_logic;
SIGNAL \inst2|debouncer1|Equal0~0_combout\ : std_logic;
SIGNAL \inst2|debouncer1|Equal0~3_combout\ : std_logic;
SIGNAL \inst2|debouncer1|enable~1_combout\ : std_logic;
SIGNAL \inst2|debouncer1|enable~q\ : std_logic;
SIGNAL \inst2|debouncer1|s5~0_combout\ : std_logic;
SIGNAL \inst2|debouncer1|s5~q\ : std_logic;
SIGNAL \inst|turno~0_combout\ : std_logic;
SIGNAL \inst|turno~q\ : std_logic;
SIGNAL \inst2|debouncer1|s4~0_combout\ : std_logic;
SIGNAL \inst2|debouncer1|s4~q\ : std_logic;
SIGNAL \inst2|debouncer1|s1~0_combout\ : std_logic;
SIGNAL \inst2|debouncer1|s1~q\ : std_logic;
SIGNAL \inst2|debouncer1|s3~0_combout\ : std_logic;
SIGNAL \inst2|debouncer1|s3~q\ : std_logic;
SIGNAL \inst2|player[7]~5_combout\ : std_logic;
SIGNAL \inst2|player~0_combout\ : std_logic;
SIGNAL \inst2|player~9_combout\ : std_logic;
SIGNAL \inst2|player~10_combout\ : std_logic;
SIGNAL \inst2|debouncer1|s2~0_combout\ : std_logic;
SIGNAL \inst2|debouncer1|s2~q\ : std_logic;
SIGNAL \inst2|player[7]~8_combout\ : std_logic;
SIGNAL \inst2|player~17_combout\ : std_logic;
SIGNAL \inst2|player~18_combout\ : std_logic;
SIGNAL \inst2|player~15_combout\ : std_logic;
SIGNAL \inst2|player~16_combout\ : std_logic;
SIGNAL \inst2|player~3_combout\ : std_logic;
SIGNAL \inst2|player~1_combout\ : std_logic;
SIGNAL \inst2|player~2_combout\ : std_logic;
SIGNAL \inst2|player~4_combout\ : std_logic;
SIGNAL \inst2|player~19_combout\ : std_logic;
SIGNAL \inst2|player~20_combout\ : std_logic;
SIGNAL \inst2|player~11_combout\ : std_logic;
SIGNAL \inst2|player~12_combout\ : std_logic;
SIGNAL \inst2|player~6_combout\ : std_logic;
SIGNAL \inst2|player~7_combout\ : std_logic;
SIGNAL \inst2|player~21_combout\ : std_logic;
SIGNAL \inst2|player~22_combout\ : std_logic;
SIGNAL \inst2|player~13_combout\ : std_logic;
SIGNAL \inst2|player~14_combout\ : std_logic;
SIGNAL \inst|sal|Mux12~0_combout\ : std_logic;
SIGNAL \inst|sal|Mux12~1_combout\ : std_logic;
SIGNAL \inst|sal|Mux12~2_combout\ : std_logic;
SIGNAL \inst|sal|Mux12~3_combout\ : std_logic;
SIGNAL \inst|B_aux_final[6]~0_combout\ : std_logic;
SIGNAL \inst|Mux28~0_combout\ : std_logic;
SIGNAL \inst|sal|Mux13~0_combout\ : std_logic;
SIGNAL \inst|sal|Mux13~1_combout\ : std_logic;
SIGNAL \inst|sal|Mux13~2_combout\ : std_logic;
SIGNAL \inst|sal|Mux13~3_combout\ : std_logic;
SIGNAL \inst|sal|Mux14~0_combout\ : std_logic;
SIGNAL \inst|sal|Mux14~1_combout\ : std_logic;
SIGNAL \inst|Mux31~0_combout\ : std_logic;
SIGNAL \inst|f_aux_final[6]~1_combout\ : std_logic;
SIGNAL \inst|f_aux_final[6]~0_combout\ : std_logic;
SIGNAL \inst2|player[8]~_wirecell_combout\ : std_logic;
SIGNAL \inst|sal|Mux4_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \inst|Mux0~0_combout\ : std_logic;
SIGNAL \inst|sal|Mux1~0_combout\ : std_logic;
SIGNAL \inst|sal|Mux1~1_combout\ : std_logic;
SIGNAL \inst|sal|Mux1~2_combout\ : std_logic;
SIGNAL \inst|sal|Mux1~3_combout\ : std_logic;
SIGNAL \inst|Mux1~0_combout\ : std_logic;
SIGNAL \inst|B_aux_final[6]~1_combout\ : std_logic;
SIGNAL \inst|B_aux_final[6]~1_wirecell_combout\ : std_logic;
SIGNAL \inst|sal|Mux4_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \inst|Mux3~0_combout\ : std_logic;
SIGNAL \inst|sal|Mux3~0_combout\ : std_logic;
SIGNAL \inst|sal|Mux1~4_combout\ : std_logic;
SIGNAL \inst|sal|Mux3~1_combout\ : std_logic;
SIGNAL \inst|Mux4~0_combout\ : std_logic;
SIGNAL \inst|sal|Mux4_rtl_0|auto_generated|ram_block1a0~portadataout\ : std_logic;
SIGNAL \inst|Mux6~0_combout\ : std_logic;
SIGNAL \inst|sal|Mux5~0_combout\ : std_logic;
SIGNAL \inst|sal|Mux5~1_combout\ : std_logic;
SIGNAL \inst|sal|Mux5~2_combout\ : std_logic;
SIGNAL \inst|Mux7~0_combout\ : std_logic;
SIGNAL \inst|sal|Mux6~0_combout\ : std_logic;
SIGNAL \inst|Mux16~0_combout\ : std_logic;
SIGNAL \inst|sal|Mux7~0_combout\ : std_logic;
SIGNAL \inst|sal|Mux7~1_combout\ : std_logic;
SIGNAL \inst|Mux17~0_combout\ : std_logic;
SIGNAL \inst|sal|Mux8~0_combout\ : std_logic;
SIGNAL \inst|Mux19~0_combout\ : std_logic;
SIGNAL \inst|sal|Mux9~0_combout\ : std_logic;
SIGNAL \inst|sal|Mux9~1_combout\ : std_logic;
SIGNAL \inst|sal|Mux9~2_combout\ : std_logic;
SIGNAL \inst|sal|Mux9~3_combout\ : std_logic;
SIGNAL \inst|Mux20~0_combout\ : std_logic;
SIGNAL \inst|sal|Mux10~2_combout\ : std_logic;
SIGNAL \inst|Mux22~0_combout\ : std_logic;
SIGNAL \inst|sal|Mux11~2_combout\ : std_logic;
SIGNAL \inst|sal|Mux11~3_combout\ : std_logic;
SIGNAL \inst|Mux23~0_combout\ : std_logic;
SIGNAL \inst|Mux15~0_combout\ : std_logic;
SIGNAL \inst|Mux15~1_combout\ : std_logic;
SIGNAL \inst|B_aux_final\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|f_aux_final\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|R_aux_final\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|sal|B\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|switcher\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst|G_aux_final\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|cuenta\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \inst|sal|G\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|pos2|B\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|sal|fila\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst2|debouncer1|cont\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst|posComp2\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \inst2|player\ : std_logic_vector(8 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

B <= ww_B;
ww_up <= up;
ww_down <= down;
ww_left <= left;
ww_right <= right;
ww_put <= put;
ww_clk <= clk;
ww_rst <= rst;
filas <= ww_filas;
G <= ww_G;
R <= ww_R;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst|sal|Mux4_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\inst2|player[8]~_wirecell_combout\ & \inst2|player\(7) & \inst2|player\(6) & \inst2|player\(5) & \inst2|player\(4) & \inst2|player\(3) & \inst2|player\(2) & 
\inst2|player\(1) & \inst2|player\(0));

\inst|sal|Mux4_rtl_0|auto_generated|ram_block1a0~portadataout\ <= \inst|sal|Mux4_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\inst|sal|Mux4_rtl_0|auto_generated|ram_block1a1\ <= \inst|sal|Mux4_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\inst|sal|Mux4_rtl_0|auto_generated|ram_block1a2\ <= \inst|sal|Mux4_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);

\inst1|salida~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst1|salida~q\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X30_Y24_N2
\B[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|B_aux_final\(6),
	devoe => ww_devoe,
	o => \B[7]~output_o\);

-- Location: IOOBUF_X30_Y24_N23
\B[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|B_aux_final\(6),
	devoe => ww_devoe,
	o => \B[6]~output_o\);

-- Location: IOOBUF_X28_Y24_N2
\B[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \B[5]~output_o\);

-- Location: IOOBUF_X28_Y24_N9
\B[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|B_aux_final\(3),
	devoe => ww_devoe,
	o => \B[4]~output_o\);

-- Location: IOOBUF_X28_Y24_N16
\B[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|B_aux_final\(3),
	devoe => ww_devoe,
	o => \B[3]~output_o\);

-- Location: IOOBUF_X28_Y24_N23
\B[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
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
	i => \inst|B_aux_final\(0),
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
	i => \inst|B_aux_final\(0),
	devoe => ww_devoe,
	o => \B[0]~output_o\);

-- Location: IOOBUF_X18_Y0_N23
\filas[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|f_aux_final\(7),
	devoe => ww_devoe,
	o => \filas[7]~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\filas[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|f_aux_final\(6),
	devoe => ww_devoe,
	o => \filas[6]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\filas[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|f_aux_final\(2),
	devoe => ww_devoe,
	o => \filas[5]~output_o\);

-- Location: IOOBUF_X16_Y0_N23
\filas[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|f_aux_final\(4),
	devoe => ww_devoe,
	o => \filas[4]~output_o\);

-- Location: IOOBUF_X0_Y6_N23
\filas[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|f_aux_final\(3),
	devoe => ww_devoe,
	o => \filas[3]~output_o\);

-- Location: IOOBUF_X0_Y6_N16
\filas[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|f_aux_final\(2),
	devoe => ww_devoe,
	o => \filas[2]~output_o\);

-- Location: IOOBUF_X0_Y7_N2
\filas[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|f_aux_final\(1),
	devoe => ww_devoe,
	o => \filas[1]~output_o\);

-- Location: IOOBUF_X0_Y8_N16
\filas[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|f_aux_final\(0),
	devoe => ww_devoe,
	o => \filas[0]~output_o\);

-- Location: IOOBUF_X1_Y0_N23
\G[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|G_aux_final\(7),
	devoe => ww_devoe,
	o => \G[7]~output_o\);

-- Location: IOOBUF_X1_Y0_N16
\G[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|G_aux_final\(6),
	devoe => ww_devoe,
	o => \G[6]~output_o\);

-- Location: IOOBUF_X3_Y0_N2
\G[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \G[5]~output_o\);

-- Location: IOOBUF_X5_Y0_N23
\G[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|G_aux_final\(4),
	devoe => ww_devoe,
	o => \G[4]~output_o\);

-- Location: IOOBUF_X5_Y0_N16
\G[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|G_aux_final\(3),
	devoe => ww_devoe,
	o => \G[3]~output_o\);

-- Location: IOOBUF_X7_Y0_N2
\G[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \G[2]~output_o\);

-- Location: IOOBUF_X13_Y0_N16
\G[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|G_aux_final\(1),
	devoe => ww_devoe,
	o => \G[1]~output_o\);

-- Location: IOOBUF_X13_Y0_N2
\G[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|G_aux_final\(0),
	devoe => ww_devoe,
	o => \G[0]~output_o\);

-- Location: IOOBUF_X23_Y24_N16
\R[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|R_aux_final\(0),
	devoe => ww_devoe,
	o => \R[7]~output_o\);

-- Location: IOOBUF_X18_Y24_N16
\R[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|R_aux_final\(0),
	devoe => ww_devoe,
	o => \R[6]~output_o\);

-- Location: IOOBUF_X18_Y24_N23
\R[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|R_aux_final\(2),
	devoe => ww_devoe,
	o => \R[5]~output_o\);

-- Location: IOOBUF_X16_Y24_N2
\R[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|R_aux_final\(0),
	devoe => ww_devoe,
	o => \R[4]~output_o\);

-- Location: IOOBUF_X16_Y24_N9
\R[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|R_aux_final\(0),
	devoe => ww_devoe,
	o => \R[3]~output_o\);

-- Location: IOOBUF_X16_Y24_N16
\R[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|R_aux_final\(2),
	devoe => ww_devoe,
	o => \R[2]~output_o\);

-- Location: IOOBUF_X16_Y24_N23
\R[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|R_aux_final\(0),
	devoe => ww_devoe,
	o => \R[1]~output_o\);

-- Location: IOOBUF_X13_Y24_N16
\R[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|R_aux_final\(0),
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

-- Location: LCCOMB_X32_Y6_N6
\inst1|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~0_combout\ = \inst1|cuenta\(0) $ (VCC)
-- \inst1|Add0~1\ = CARRY(\inst1|cuenta\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|cuenta\(0),
	datad => VCC,
	combout => \inst1|Add0~0_combout\,
	cout => \inst1|Add0~1\);

-- Location: LCCOMB_X32_Y6_N8
\inst1|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~2_combout\ = (\inst1|cuenta\(1) & (!\inst1|Add0~1\)) # (!\inst1|cuenta\(1) & ((\inst1|Add0~1\) # (GND)))
-- \inst1|Add0~3\ = CARRY((!\inst1|Add0~1\) # (!\inst1|cuenta\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|cuenta\(1),
	datad => VCC,
	cin => \inst1|Add0~1\,
	combout => \inst1|Add0~2_combout\,
	cout => \inst1|Add0~3\);

-- Location: LCCOMB_X32_Y6_N10
\inst1|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~4_combout\ = (\inst1|cuenta\(2) & (\inst1|Add0~3\ $ (GND))) # (!\inst1|cuenta\(2) & (!\inst1|Add0~3\ & VCC))
-- \inst1|Add0~5\ = CARRY((\inst1|cuenta\(2) & !\inst1|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cuenta\(2),
	datad => VCC,
	cin => \inst1|Add0~3\,
	combout => \inst1|Add0~4_combout\,
	cout => \inst1|Add0~5\);

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

-- Location: FF_X32_Y6_N11
\inst1|cuenta[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|Add0~4_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cuenta\(2));

-- Location: LCCOMB_X32_Y6_N12
\inst1|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~6_combout\ = (\inst1|cuenta\(3) & (!\inst1|Add0~5\)) # (!\inst1|cuenta\(3) & ((\inst1|Add0~5\) # (GND)))
-- \inst1|Add0~7\ = CARRY((!\inst1|Add0~5\) # (!\inst1|cuenta\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cuenta\(3),
	datad => VCC,
	cin => \inst1|Add0~5\,
	combout => \inst1|Add0~6_combout\,
	cout => \inst1|Add0~7\);

-- Location: LCCOMB_X33_Y6_N10
\inst1|cuenta~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|cuenta~4_combout\ = (\inst1|Add0~6_combout\ & ((!\inst1|Equal0~4_combout\) # (!\inst1|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal0~7_combout\,
	datac => \inst1|Add0~6_combout\,
	datad => \inst1|Equal0~4_combout\,
	combout => \inst1|cuenta~4_combout\);

-- Location: FF_X32_Y6_N31
\inst1|cuenta[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst1|cuenta~4_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cuenta\(3));

-- Location: LCCOMB_X32_Y6_N14
\inst1|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~8_combout\ = (\inst1|cuenta\(4) & (\inst1|Add0~7\ $ (GND))) # (!\inst1|cuenta\(4) & (!\inst1|Add0~7\ & VCC))
-- \inst1|Add0~9\ = CARRY((\inst1|cuenta\(4) & !\inst1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|cuenta\(4),
	datad => VCC,
	cin => \inst1|Add0~7\,
	combout => \inst1|Add0~8_combout\,
	cout => \inst1|Add0~9\);

-- Location: FF_X32_Y6_N15
\inst1|cuenta[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|Add0~8_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cuenta\(4));

-- Location: LCCOMB_X32_Y6_N16
\inst1|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~10_combout\ = (\inst1|cuenta\(5) & (!\inst1|Add0~9\)) # (!\inst1|cuenta\(5) & ((\inst1|Add0~9\) # (GND)))
-- \inst1|Add0~11\ = CARRY((!\inst1|Add0~9\) # (!\inst1|cuenta\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|cuenta\(5),
	datad => VCC,
	cin => \inst1|Add0~9\,
	combout => \inst1|Add0~10_combout\,
	cout => \inst1|Add0~11\);

-- Location: FF_X32_Y6_N17
\inst1|cuenta[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|Add0~10_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cuenta\(5));

-- Location: LCCOMB_X32_Y6_N18
\inst1|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~12_combout\ = (\inst1|cuenta\(6) & (\inst1|Add0~11\ $ (GND))) # (!\inst1|cuenta\(6) & (!\inst1|Add0~11\ & VCC))
-- \inst1|Add0~13\ = CARRY((\inst1|cuenta\(6) & !\inst1|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|cuenta\(6),
	datad => VCC,
	cin => \inst1|Add0~11\,
	combout => \inst1|Add0~12_combout\,
	cout => \inst1|Add0~13\);

-- Location: FF_X32_Y6_N19
\inst1|cuenta[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|Add0~12_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cuenta\(6));

-- Location: LCCOMB_X32_Y6_N20
\inst1|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~14_combout\ = (\inst1|cuenta\(7) & (!\inst1|Add0~13\)) # (!\inst1|cuenta\(7) & ((\inst1|Add0~13\) # (GND)))
-- \inst1|Add0~15\ = CARRY((!\inst1|Add0~13\) # (!\inst1|cuenta\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|cuenta\(7),
	datad => VCC,
	cin => \inst1|Add0~13\,
	combout => \inst1|Add0~14_combout\,
	cout => \inst1|Add0~15\);

-- Location: LCCOMB_X32_Y6_N2
\inst1|cuenta~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|cuenta~3_combout\ = (\inst1|Add0~14_combout\ & ((!\inst1|Equal0~7_combout\) # (!\inst1|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Equal0~4_combout\,
	datac => \inst1|Equal0~7_combout\,
	datad => \inst1|Add0~14_combout\,
	combout => \inst1|cuenta~3_combout\);

-- Location: FF_X32_Y6_N3
\inst1|cuenta[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|cuenta~3_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cuenta\(7));

-- Location: LCCOMB_X32_Y6_N22
\inst1|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~16_combout\ = (\inst1|cuenta\(8) & (\inst1|Add0~15\ $ (GND))) # (!\inst1|cuenta\(8) & (!\inst1|Add0~15\ & VCC))
-- \inst1|Add0~17\ = CARRY((\inst1|cuenta\(8) & !\inst1|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|cuenta\(8),
	datad => VCC,
	cin => \inst1|Add0~15\,
	combout => \inst1|Add0~16_combout\,
	cout => \inst1|Add0~17\);

-- Location: LCCOMB_X32_Y6_N4
\inst1|cuenta~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|cuenta~2_combout\ = (\inst1|Add0~16_combout\ & ((!\inst1|Equal0~4_combout\) # (!\inst1|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal0~7_combout\,
	datac => \inst1|Add0~16_combout\,
	datad => \inst1|Equal0~4_combout\,
	combout => \inst1|cuenta~2_combout\);

-- Location: FF_X32_Y6_N5
\inst1|cuenta[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|cuenta~2_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cuenta\(8));

-- Location: LCCOMB_X32_Y6_N24
\inst1|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~18_combout\ = (\inst1|cuenta\(9) & (!\inst1|Add0~17\)) # (!\inst1|cuenta\(9) & ((\inst1|Add0~17\) # (GND)))
-- \inst1|Add0~19\ = CARRY((!\inst1|Add0~17\) # (!\inst1|cuenta\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cuenta\(9),
	datad => VCC,
	cin => \inst1|Add0~17\,
	combout => \inst1|Add0~18_combout\,
	cout => \inst1|Add0~19\);

-- Location: LCCOMB_X33_Y6_N20
\inst1|cuenta~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|cuenta~1_combout\ = (\inst1|Add0~18_combout\ & ((!\inst1|Equal0~4_combout\) # (!\inst1|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add0~18_combout\,
	datac => \inst1|Equal0~7_combout\,
	datad => \inst1|Equal0~4_combout\,
	combout => \inst1|cuenta~1_combout\);

-- Location: FF_X33_Y6_N21
\inst1|cuenta[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|cuenta~1_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cuenta\(9));

-- Location: LCCOMB_X32_Y6_N26
\inst1|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~20_combout\ = (\inst1|cuenta\(10) & (\inst1|Add0~19\ $ (GND))) # (!\inst1|cuenta\(10) & (!\inst1|Add0~19\ & VCC))
-- \inst1|Add0~21\ = CARRY((\inst1|cuenta\(10) & !\inst1|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cuenta\(10),
	datad => VCC,
	cin => \inst1|Add0~19\,
	combout => \inst1|Add0~20_combout\,
	cout => \inst1|Add0~21\);

-- Location: FF_X32_Y6_N27
\inst1|cuenta[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|Add0~20_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cuenta\(10));

-- Location: LCCOMB_X32_Y6_N28
\inst1|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~22_combout\ = (\inst1|cuenta\(11) & (!\inst1|Add0~21\)) # (!\inst1|cuenta\(11) & ((\inst1|Add0~21\) # (GND)))
-- \inst1|Add0~23\ = CARRY((!\inst1|Add0~21\) # (!\inst1|cuenta\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|cuenta\(11),
	datad => VCC,
	cin => \inst1|Add0~21\,
	combout => \inst1|Add0~22_combout\,
	cout => \inst1|Add0~23\);

-- Location: FF_X32_Y6_N29
\inst1|cuenta[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|Add0~22_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cuenta\(11));

-- Location: LCCOMB_X32_Y6_N30
\inst1|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~24_combout\ = (\inst1|cuenta\(12) & (\inst1|Add0~23\ $ (GND))) # (!\inst1|cuenta\(12) & (!\inst1|Add0~23\ & VCC))
-- \inst1|Add0~25\ = CARRY((\inst1|cuenta\(12) & !\inst1|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|cuenta\(12),
	datad => VCC,
	cin => \inst1|Add0~23\,
	combout => \inst1|Add0~24_combout\,
	cout => \inst1|Add0~25\);

-- Location: LCCOMB_X33_Y6_N8
\inst1|cuenta~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|cuenta~0_combout\ = (\inst1|Add0~24_combout\ & ((!\inst1|Equal0~4_combout\) # (!\inst1|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal0~7_combout\,
	datac => \inst1|Add0~24_combout\,
	datad => \inst1|Equal0~4_combout\,
	combout => \inst1|cuenta~0_combout\);

-- Location: FF_X33_Y6_N9
\inst1|cuenta[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|cuenta~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cuenta\(12));

-- Location: LCCOMB_X32_Y5_N0
\inst1|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~26_combout\ = (\inst1|cuenta\(13) & (!\inst1|Add0~25\)) # (!\inst1|cuenta\(13) & ((\inst1|Add0~25\) # (GND)))
-- \inst1|Add0~27\ = CARRY((!\inst1|Add0~25\) # (!\inst1|cuenta\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|cuenta\(13),
	datad => VCC,
	cin => \inst1|Add0~25\,
	combout => \inst1|Add0~26_combout\,
	cout => \inst1|Add0~27\);

-- Location: FF_X32_Y5_N1
\inst1|cuenta[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|Add0~26_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cuenta\(13));

-- Location: LCCOMB_X32_Y5_N2
\inst1|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~28_combout\ = (\inst1|cuenta\(14) & (\inst1|Add0~27\ $ (GND))) # (!\inst1|cuenta\(14) & (!\inst1|Add0~27\ & VCC))
-- \inst1|Add0~29\ = CARRY((\inst1|cuenta\(14) & !\inst1|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|cuenta\(14),
	datad => VCC,
	cin => \inst1|Add0~27\,
	combout => \inst1|Add0~28_combout\,
	cout => \inst1|Add0~29\);

-- Location: FF_X32_Y5_N3
\inst1|cuenta[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|Add0~28_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cuenta\(14));

-- Location: LCCOMB_X32_Y5_N4
\inst1|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~30_combout\ = (\inst1|cuenta\(15) & (!\inst1|Add0~29\)) # (!\inst1|cuenta\(15) & ((\inst1|Add0~29\) # (GND)))
-- \inst1|Add0~31\ = CARRY((!\inst1|Add0~29\) # (!\inst1|cuenta\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|cuenta\(15),
	datad => VCC,
	cin => \inst1|Add0~29\,
	combout => \inst1|Add0~30_combout\,
	cout => \inst1|Add0~31\);

-- Location: FF_X32_Y5_N5
\inst1|cuenta[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|Add0~30_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cuenta\(15));

-- Location: LCCOMB_X32_Y5_N6
\inst1|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~32_combout\ = (\inst1|cuenta\(16) & (\inst1|Add0~31\ $ (GND))) # (!\inst1|cuenta\(16) & (!\inst1|Add0~31\ & VCC))
-- \inst1|Add0~33\ = CARRY((\inst1|cuenta\(16) & !\inst1|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|cuenta\(16),
	datad => VCC,
	cin => \inst1|Add0~31\,
	combout => \inst1|Add0~32_combout\,
	cout => \inst1|Add0~33\);

-- Location: FF_X32_Y5_N7
\inst1|cuenta[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|Add0~32_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cuenta\(16));

-- Location: LCCOMB_X32_Y5_N8
\inst1|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~34_combout\ = (\inst1|cuenta\(17) & (!\inst1|Add0~33\)) # (!\inst1|cuenta\(17) & ((\inst1|Add0~33\) # (GND)))
-- \inst1|Add0~35\ = CARRY((!\inst1|Add0~33\) # (!\inst1|cuenta\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cuenta\(17),
	datad => VCC,
	cin => \inst1|Add0~33\,
	combout => \inst1|Add0~34_combout\,
	cout => \inst1|Add0~35\);

-- Location: FF_X32_Y5_N9
\inst1|cuenta[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|Add0~34_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cuenta\(17));

-- Location: LCCOMB_X32_Y5_N10
\inst1|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~36_combout\ = (\inst1|cuenta\(18) & (\inst1|Add0~35\ $ (GND))) # (!\inst1|cuenta\(18) & (!\inst1|Add0~35\ & VCC))
-- \inst1|Add0~37\ = CARRY((\inst1|cuenta\(18) & !\inst1|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cuenta\(18),
	datad => VCC,
	cin => \inst1|Add0~35\,
	combout => \inst1|Add0~36_combout\,
	cout => \inst1|Add0~37\);

-- Location: FF_X32_Y5_N11
\inst1|cuenta[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|Add0~36_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cuenta\(18));

-- Location: LCCOMB_X32_Y5_N12
\inst1|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~38_combout\ = (\inst1|cuenta\(19) & (!\inst1|Add0~37\)) # (!\inst1|cuenta\(19) & ((\inst1|Add0~37\) # (GND)))
-- \inst1|Add0~39\ = CARRY((!\inst1|Add0~37\) # (!\inst1|cuenta\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|cuenta\(19),
	datad => VCC,
	cin => \inst1|Add0~37\,
	combout => \inst1|Add0~38_combout\,
	cout => \inst1|Add0~39\);

-- Location: FF_X32_Y5_N13
\inst1|cuenta[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|Add0~38_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cuenta\(19));

-- Location: LCCOMB_X32_Y5_N14
\inst1|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~40_combout\ = (\inst1|cuenta\(20) & (\inst1|Add0~39\ $ (GND))) # (!\inst1|cuenta\(20) & (!\inst1|Add0~39\ & VCC))
-- \inst1|Add0~41\ = CARRY((\inst1|cuenta\(20) & !\inst1|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|cuenta\(20),
	datad => VCC,
	cin => \inst1|Add0~39\,
	combout => \inst1|Add0~40_combout\,
	cout => \inst1|Add0~41\);

-- Location: FF_X32_Y5_N15
\inst1|cuenta[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|Add0~40_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cuenta\(20));

-- Location: LCCOMB_X32_Y5_N16
\inst1|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~42_combout\ = (\inst1|cuenta\(21) & (!\inst1|Add0~41\)) # (!\inst1|cuenta\(21) & ((\inst1|Add0~41\) # (GND)))
-- \inst1|Add0~43\ = CARRY((!\inst1|Add0~41\) # (!\inst1|cuenta\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cuenta\(21),
	datad => VCC,
	cin => \inst1|Add0~41\,
	combout => \inst1|Add0~42_combout\,
	cout => \inst1|Add0~43\);

-- Location: FF_X32_Y5_N17
\inst1|cuenta[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|Add0~42_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cuenta\(21));

-- Location: LCCOMB_X32_Y5_N18
\inst1|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~44_combout\ = (\inst1|cuenta\(22) & (\inst1|Add0~43\ $ (GND))) # (!\inst1|cuenta\(22) & (!\inst1|Add0~43\ & VCC))
-- \inst1|Add0~45\ = CARRY((\inst1|cuenta\(22) & !\inst1|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|cuenta\(22),
	datad => VCC,
	cin => \inst1|Add0~43\,
	combout => \inst1|Add0~44_combout\,
	cout => \inst1|Add0~45\);

-- Location: FF_X32_Y5_N19
\inst1|cuenta[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|Add0~44_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cuenta\(22));

-- Location: LCCOMB_X32_Y5_N20
\inst1|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~46_combout\ = (\inst1|cuenta\(23) & (!\inst1|Add0~45\)) # (!\inst1|cuenta\(23) & ((\inst1|Add0~45\) # (GND)))
-- \inst1|Add0~47\ = CARRY((!\inst1|Add0~45\) # (!\inst1|cuenta\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|cuenta\(23),
	datad => VCC,
	cin => \inst1|Add0~45\,
	combout => \inst1|Add0~46_combout\,
	cout => \inst1|Add0~47\);

-- Location: FF_X32_Y5_N21
\inst1|cuenta[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|Add0~46_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cuenta\(23));

-- Location: LCCOMB_X32_Y5_N22
\inst1|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~48_combout\ = (\inst1|cuenta\(24) & (\inst1|Add0~47\ $ (GND))) # (!\inst1|cuenta\(24) & (!\inst1|Add0~47\ & VCC))
-- \inst1|Add0~49\ = CARRY((\inst1|cuenta\(24) & !\inst1|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|cuenta\(24),
	datad => VCC,
	cin => \inst1|Add0~47\,
	combout => \inst1|Add0~48_combout\,
	cout => \inst1|Add0~49\);

-- Location: FF_X32_Y5_N23
\inst1|cuenta[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|Add0~48_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cuenta\(24));

-- Location: LCCOMB_X32_Y5_N24
\inst1|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~50_combout\ = \inst1|Add0~49\ $ (\inst1|cuenta\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst1|cuenta\(25),
	cin => \inst1|Add0~49\,
	combout => \inst1|Add0~50_combout\);

-- Location: FF_X32_Y5_N25
\inst1|cuenta[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|Add0~50_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cuenta\(25));

-- Location: LCCOMB_X32_Y5_N26
\inst1|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal0~0_combout\ = (!\inst1|cuenta\(24) & (!\inst1|cuenta\(23) & (!\inst1|cuenta\(22) & !\inst1|cuenta\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cuenta\(24),
	datab => \inst1|cuenta\(23),
	datac => \inst1|cuenta\(22),
	datad => \inst1|cuenta\(25),
	combout => \inst1|Equal0~0_combout\);

-- Location: LCCOMB_X33_Y6_N4
\inst1|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal0~3_combout\ = (!\inst1|cuenta\(10) & (!\inst1|cuenta\(11) & (\inst1|cuenta\(12) & !\inst1|cuenta\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cuenta\(10),
	datab => \inst1|cuenta\(11),
	datac => \inst1|cuenta\(12),
	datad => \inst1|cuenta\(13),
	combout => \inst1|Equal0~3_combout\);

-- Location: LCCOMB_X32_Y5_N28
\inst1|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal0~1_combout\ = (!\inst1|cuenta\(19) & (!\inst1|cuenta\(20) & (!\inst1|cuenta\(18) & !\inst1|cuenta\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cuenta\(19),
	datab => \inst1|cuenta\(20),
	datac => \inst1|cuenta\(18),
	datad => \inst1|cuenta\(21),
	combout => \inst1|Equal0~1_combout\);

-- Location: LCCOMB_X32_Y5_N30
\inst1|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal0~2_combout\ = (!\inst1|cuenta\(16) & (!\inst1|cuenta\(17) & (!\inst1|cuenta\(15) & !\inst1|cuenta\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cuenta\(16),
	datab => \inst1|cuenta\(17),
	datac => \inst1|cuenta\(15),
	datad => \inst1|cuenta\(14),
	combout => \inst1|Equal0~2_combout\);

-- Location: LCCOMB_X33_Y6_N24
\inst1|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal0~4_combout\ = (\inst1|Equal0~0_combout\ & (\inst1|Equal0~3_combout\ & (\inst1|Equal0~1_combout\ & \inst1|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal0~0_combout\,
	datab => \inst1|Equal0~3_combout\,
	datac => \inst1|Equal0~1_combout\,
	datad => \inst1|Equal0~2_combout\,
	combout => \inst1|Equal0~4_combout\);

-- Location: LCCOMB_X32_Y6_N0
\inst1|cuenta~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|cuenta~5_combout\ = (\inst1|Add0~0_combout\ & ((!\inst1|Equal0~4_combout\) # (!\inst1|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add0~0_combout\,
	datac => \inst1|Equal0~7_combout\,
	datad => \inst1|Equal0~4_combout\,
	combout => \inst1|cuenta~5_combout\);

-- Location: FF_X32_Y6_N1
\inst1|cuenta[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|cuenta~5_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cuenta\(0));

-- Location: FF_X32_Y6_N9
\inst1|cuenta[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|Add0~2_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cuenta\(1));

-- Location: LCCOMB_X33_Y6_N22
\inst1|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal0~6_combout\ = (!\inst1|cuenta\(2) & (\inst1|cuenta\(3) & (!\inst1|cuenta\(5) & !\inst1|cuenta\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cuenta\(2),
	datab => \inst1|cuenta\(3),
	datac => \inst1|cuenta\(5),
	datad => \inst1|cuenta\(4),
	combout => \inst1|Equal0~6_combout\);

-- Location: LCCOMB_X33_Y6_N28
\inst1|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal0~5_combout\ = (\inst1|cuenta\(9) & (!\inst1|cuenta\(6) & (\inst1|cuenta\(8) & \inst1|cuenta\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cuenta\(9),
	datab => \inst1|cuenta\(6),
	datac => \inst1|cuenta\(8),
	datad => \inst1|cuenta\(7),
	combout => \inst1|Equal0~5_combout\);

-- Location: LCCOMB_X33_Y6_N30
\inst1|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal0~7_combout\ = (!\inst1|cuenta\(1) & (!\inst1|cuenta\(0) & (\inst1|Equal0~6_combout\ & \inst1|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cuenta\(1),
	datab => \inst1|cuenta\(0),
	datac => \inst1|Equal0~6_combout\,
	datad => \inst1|Equal0~5_combout\,
	combout => \inst1|Equal0~7_combout\);

-- Location: LCCOMB_X33_Y6_N6
\inst1|salida~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|salida~0_combout\ = \inst1|salida~q\ $ (((\inst1|Equal0~7_combout\ & \inst1|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|salida~q\,
	datac => \inst1|Equal0~7_combout\,
	datad => \inst1|Equal0~4_combout\,
	combout => \inst1|salida~0_combout\);

-- Location: LCCOMB_X33_Y6_N26
\inst1|salida~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|salida~feeder_combout\ = \inst1|salida~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|salida~0_combout\,
	combout => \inst1|salida~feeder_combout\);

-- Location: FF_X33_Y6_N27
\inst1|salida\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|salida~feeder_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|salida~q\);

-- Location: CLKCTRL_G8
\inst1|salida~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst1|salida~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst1|salida~clkctrl_outclk\);

-- Location: LCCOMB_X14_Y4_N0
\inst|tablero1|camb~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|tablero1|camb~0_combout\ = !\inst|tablero1|camb~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|tablero1|camb~q\,
	combout => \inst|tablero1|camb~0_combout\);

-- Location: FF_X14_Y4_N1
\inst|tablero1|camb\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|salida~clkctrl_outclk\,
	d => \inst|tablero1|camb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|tablero1|camb~q\);

-- Location: LCCOMB_X14_Y5_N8
\inst|switcher[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|switcher[1]~4_combout\ = (\inst|tablero1|camb~q\ & (\inst|switcher\(1) $ (VCC))) # (!\inst|tablero1|camb~q\ & (\inst|switcher\(1) & VCC))
-- \inst|switcher[1]~5\ = CARRY((\inst|tablero1|camb~q\ & \inst|switcher\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|tablero1|camb~q\,
	datab => \inst|switcher\(1),
	datad => VCC,
	combout => \inst|switcher[1]~4_combout\,
	cout => \inst|switcher[1]~5\);

-- Location: FF_X14_Y5_N9
\inst|switcher[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|salida~clkctrl_outclk\,
	d => \inst|switcher[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|switcher\(1));

-- Location: LCCOMB_X14_Y5_N10
\inst|switcher[2]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|switcher[2]~6_combout\ = (\inst|switcher\(2) & (!\inst|switcher[1]~5\)) # (!\inst|switcher\(2) & ((\inst|switcher[1]~5\) # (GND)))
-- \inst|switcher[2]~7\ = CARRY((!\inst|switcher[1]~5\) # (!\inst|switcher\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|switcher\(2),
	datad => VCC,
	cin => \inst|switcher[1]~5\,
	combout => \inst|switcher[2]~6_combout\,
	cout => \inst|switcher[2]~7\);

-- Location: FF_X14_Y5_N11
\inst|switcher[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|salida~clkctrl_outclk\,
	d => \inst|switcher[2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|switcher\(2));

-- Location: LCCOMB_X14_Y5_N12
\inst|switcher[3]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|switcher[3]~8_combout\ = (\inst|switcher\(3) & (\inst|switcher[2]~7\ $ (GND))) # (!\inst|switcher\(3) & (!\inst|switcher[2]~7\ & VCC))
-- \inst|switcher[3]~9\ = CARRY((\inst|switcher\(3) & !\inst|switcher[2]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|switcher\(3),
	datad => VCC,
	cin => \inst|switcher[2]~7\,
	combout => \inst|switcher[3]~8_combout\,
	cout => \inst|switcher[3]~9\);

-- Location: FF_X14_Y5_N13
\inst|switcher[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|salida~clkctrl_outclk\,
	d => \inst|switcher[3]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|switcher\(3));

-- Location: LCCOMB_X14_Y5_N14
\inst|switcher[4]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|switcher[4]~10_combout\ = \inst|switcher\(4) $ (\inst|switcher[3]~9\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|switcher\(4),
	cin => \inst|switcher[3]~9\,
	combout => \inst|switcher[4]~10_combout\);

-- Location: FF_X14_Y5_N15
\inst|switcher[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|salida~clkctrl_outclk\,
	d => \inst|switcher[4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|switcher\(4));

-- Location: LCCOMB_X14_Y5_N2
\inst|posComp2[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|posComp2[0]~0_combout\ = (\inst|switcher\(3) & (((\inst|posComp2\(0))))) # (!\inst|switcher\(3) & ((\inst|switcher\(1)) # ((\inst|tablero1|camb~q\ & \inst|posComp2\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|switcher\(3),
	datab => \inst|tablero1|camb~q\,
	datac => \inst|switcher\(1),
	datad => \inst|posComp2\(0),
	combout => \inst|posComp2[0]~0_combout\);

-- Location: LCCOMB_X14_Y5_N24
\inst|posComp2[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|posComp2[0]~1_combout\ = (\inst|switcher\(2) & (\inst|posComp2\(0) & ((\inst|switcher\(4)) # (\inst|posComp2[0]~0_combout\)))) # (!\inst|switcher\(2) & ((\inst|posComp2\(0)) # ((!\inst|switcher\(4) & \inst|posComp2[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|switcher\(2),
	datab => \inst|switcher\(4),
	datac => \inst|posComp2\(0),
	datad => \inst|posComp2[0]~0_combout\,
	combout => \inst|posComp2[0]~1_combout\);

-- Location: FF_X14_Y5_N25
\inst|posComp2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|salida~clkctrl_outclk\,
	d => \inst|posComp2[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|posComp2\(0));

-- Location: LCCOMB_X14_Y5_N26
\inst|pos2|B[6]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|pos2|B[6]~0_combout\ = !\inst|posComp2\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|posComp2\(0),
	combout => \inst|pos2|B[6]~0_combout\);

-- Location: FF_X14_Y5_N27
\inst|pos2|B[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|salida~clkctrl_outclk\,
	d => \inst|pos2|B[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|pos2|B\(6));

-- Location: LCCOMB_X14_Y5_N28
\inst|Mux25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux25~0_combout\ = (\inst|pos2|B\(6)) # ((!\inst|switcher\(2) & !\inst|switcher\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|switcher\(2),
	datab => \inst|switcher\(1),
	datad => \inst|pos2|B\(6),
	combout => \inst|Mux25~0_combout\);

-- Location: IOIBUF_X25_Y0_N1
\put~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_put,
	o => \put~input_o\);

-- Location: IOIBUF_X23_Y0_N8
\right~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_right,
	o => \right~input_o\);

-- Location: IOIBUF_X21_Y0_N8
\down~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_down,
	o => \down~input_o\);

-- Location: IOIBUF_X18_Y0_N15
\up~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_up,
	o => \up~input_o\);

-- Location: IOIBUF_X23_Y0_N15
\left~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_left,
	o => \left~input_o\);

-- Location: LCCOMB_X16_Y4_N24
\inst2|debouncer1|enable~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|debouncer1|enable~0_combout\ = (\right~input_o\) # ((\down~input_o\) # ((\up~input_o\) # (\left~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \right~input_o\,
	datab => \down~input_o\,
	datac => \up~input_o\,
	datad => \left~input_o\,
	combout => \inst2|debouncer1|enable~0_combout\);

-- Location: LCCOMB_X17_Y9_N0
\inst2|debouncer1|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|debouncer1|Add0~0_combout\ = \inst2|debouncer1|cont\(0) $ (VCC)
-- \inst2|debouncer1|Add0~1\ = CARRY(\inst2|debouncer1|cont\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|debouncer1|cont\(0),
	datad => VCC,
	combout => \inst2|debouncer1|Add0~0_combout\,
	cout => \inst2|debouncer1|Add0~1\);

-- Location: LCCOMB_X16_Y9_N6
\inst2|debouncer1|cont~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|debouncer1|cont~1_combout\ = (\inst2|debouncer1|Add0~0_combout\ & !\inst2|debouncer1|Equal0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|debouncer1|Add0~0_combout\,
	datad => \inst2|debouncer1|Equal0~3_combout\,
	combout => \inst2|debouncer1|cont~1_combout\);

-- Location: FF_X16_Y9_N7
\inst2|debouncer1|cont[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|salida~clkctrl_outclk\,
	d => \inst2|debouncer1|cont~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|debouncer1|cont\(0));

-- Location: LCCOMB_X17_Y9_N2
\inst2|debouncer1|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|debouncer1|Add0~2_combout\ = (\inst2|debouncer1|cont\(1) & (!\inst2|debouncer1|Add0~1\)) # (!\inst2|debouncer1|cont\(1) & ((\inst2|debouncer1|Add0~1\) # (GND)))
-- \inst2|debouncer1|Add0~3\ = CARRY((!\inst2|debouncer1|Add0~1\) # (!\inst2|debouncer1|cont\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|debouncer1|cont\(1),
	datad => VCC,
	cin => \inst2|debouncer1|Add0~1\,
	combout => \inst2|debouncer1|Add0~2_combout\,
	cout => \inst2|debouncer1|Add0~3\);

-- Location: FF_X17_Y9_N3
\inst2|debouncer1|cont[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|salida~clkctrl_outclk\,
	d => \inst2|debouncer1|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|debouncer1|cont\(1));

-- Location: LCCOMB_X17_Y9_N4
\inst2|debouncer1|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|debouncer1|Add0~4_combout\ = (\inst2|debouncer1|cont\(2) & (\inst2|debouncer1|Add0~3\ $ (GND))) # (!\inst2|debouncer1|cont\(2) & (!\inst2|debouncer1|Add0~3\ & VCC))
-- \inst2|debouncer1|Add0~5\ = CARRY((\inst2|debouncer1|cont\(2) & !\inst2|debouncer1|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|debouncer1|cont\(2),
	datad => VCC,
	cin => \inst2|debouncer1|Add0~3\,
	combout => \inst2|debouncer1|Add0~4_combout\,
	cout => \inst2|debouncer1|Add0~5\);

-- Location: FF_X17_Y9_N5
\inst2|debouncer1|cont[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|salida~clkctrl_outclk\,
	d => \inst2|debouncer1|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|debouncer1|cont\(2));

-- Location: LCCOMB_X17_Y9_N6
\inst2|debouncer1|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|debouncer1|Add0~6_combout\ = (\inst2|debouncer1|cont\(3) & (!\inst2|debouncer1|Add0~5\)) # (!\inst2|debouncer1|cont\(3) & ((\inst2|debouncer1|Add0~5\) # (GND)))
-- \inst2|debouncer1|Add0~7\ = CARRY((!\inst2|debouncer1|Add0~5\) # (!\inst2|debouncer1|cont\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|debouncer1|cont\(3),
	datad => VCC,
	cin => \inst2|debouncer1|Add0~5\,
	combout => \inst2|debouncer1|Add0~6_combout\,
	cout => \inst2|debouncer1|Add0~7\);

-- Location: LCCOMB_X16_Y9_N16
\inst2|debouncer1|cont~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|debouncer1|cont~0_combout\ = (!\inst2|debouncer1|Equal0~3_combout\ & \inst2|debouncer1|Add0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|debouncer1|Equal0~3_combout\,
	datad => \inst2|debouncer1|Add0~6_combout\,
	combout => \inst2|debouncer1|cont~0_combout\);

-- Location: FF_X16_Y9_N17
\inst2|debouncer1|cont[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|salida~clkctrl_outclk\,
	d => \inst2|debouncer1|cont~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|debouncer1|cont\(3));

-- Location: LCCOMB_X17_Y9_N8
\inst2|debouncer1|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|debouncer1|Add0~8_combout\ = (\inst2|debouncer1|cont\(4) & (\inst2|debouncer1|Add0~7\ $ (GND))) # (!\inst2|debouncer1|cont\(4) & (!\inst2|debouncer1|Add0~7\ & VCC))
-- \inst2|debouncer1|Add0~9\ = CARRY((\inst2|debouncer1|cont\(4) & !\inst2|debouncer1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|debouncer1|cont\(4),
	datad => VCC,
	cin => \inst2|debouncer1|Add0~7\,
	combout => \inst2|debouncer1|Add0~8_combout\,
	cout => \inst2|debouncer1|Add0~9\);

-- Location: LCCOMB_X16_Y9_N10
\inst2|debouncer1|cont~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|debouncer1|cont~2_combout\ = (\inst2|debouncer1|Add0~8_combout\ & !\inst2|debouncer1|Equal0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|debouncer1|Add0~8_combout\,
	datad => \inst2|debouncer1|Equal0~3_combout\,
	combout => \inst2|debouncer1|cont~2_combout\);

-- Location: FF_X16_Y9_N11
\inst2|debouncer1|cont[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|salida~clkctrl_outclk\,
	d => \inst2|debouncer1|cont~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|debouncer1|cont\(4));

-- Location: LCCOMB_X17_Y9_N10
\inst2|debouncer1|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|debouncer1|Add0~10_combout\ = (\inst2|debouncer1|cont\(5) & (!\inst2|debouncer1|Add0~9\)) # (!\inst2|debouncer1|cont\(5) & ((\inst2|debouncer1|Add0~9\) # (GND)))
-- \inst2|debouncer1|Add0~11\ = CARRY((!\inst2|debouncer1|Add0~9\) # (!\inst2|debouncer1|cont\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|debouncer1|cont\(5),
	datad => VCC,
	cin => \inst2|debouncer1|Add0~9\,
	combout => \inst2|debouncer1|Add0~10_combout\,
	cout => \inst2|debouncer1|Add0~11\);

-- Location: LCCOMB_X17_Y9_N30
\inst2|debouncer1|cont~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|debouncer1|cont~3_combout\ = (!\inst2|debouncer1|Equal0~3_combout\ & \inst2|debouncer1|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|debouncer1|Equal0~3_combout\,
	datad => \inst2|debouncer1|Add0~10_combout\,
	combout => \inst2|debouncer1|cont~3_combout\);

-- Location: FF_X17_Y9_N31
\inst2|debouncer1|cont[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|salida~clkctrl_outclk\,
	d => \inst2|debouncer1|cont~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|debouncer1|cont\(5));

-- Location: LCCOMB_X17_Y9_N12
\inst2|debouncer1|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|debouncer1|Add0~12_combout\ = (\inst2|debouncer1|cont\(6) & (\inst2|debouncer1|Add0~11\ $ (GND))) # (!\inst2|debouncer1|cont\(6) & (!\inst2|debouncer1|Add0~11\ & VCC))
-- \inst2|debouncer1|Add0~13\ = CARRY((\inst2|debouncer1|cont\(6) & !\inst2|debouncer1|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|debouncer1|cont\(6),
	datad => VCC,
	cin => \inst2|debouncer1|Add0~11\,
	combout => \inst2|debouncer1|Add0~12_combout\,
	cout => \inst2|debouncer1|Add0~13\);

-- Location: FF_X17_Y9_N13
\inst2|debouncer1|cont[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|salida~clkctrl_outclk\,
	d => \inst2|debouncer1|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|debouncer1|cont\(6));

-- Location: LCCOMB_X17_Y9_N14
\inst2|debouncer1|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|debouncer1|Add0~14_combout\ = (\inst2|debouncer1|cont\(7) & (!\inst2|debouncer1|Add0~13\)) # (!\inst2|debouncer1|cont\(7) & ((\inst2|debouncer1|Add0~13\) # (GND)))
-- \inst2|debouncer1|Add0~15\ = CARRY((!\inst2|debouncer1|Add0~13\) # (!\inst2|debouncer1|cont\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|debouncer1|cont\(7),
	datad => VCC,
	cin => \inst2|debouncer1|Add0~13\,
	combout => \inst2|debouncer1|Add0~14_combout\,
	cout => \inst2|debouncer1|Add0~15\);

-- Location: LCCOMB_X16_Y9_N4
\inst2|debouncer1|cont~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|debouncer1|cont~4_combout\ = (\inst2|debouncer1|Add0~14_combout\ & !\inst2|debouncer1|Equal0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|debouncer1|Add0~14_combout\,
	datad => \inst2|debouncer1|Equal0~3_combout\,
	combout => \inst2|debouncer1|cont~4_combout\);

-- Location: FF_X16_Y9_N5
\inst2|debouncer1|cont[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|salida~clkctrl_outclk\,
	d => \inst2|debouncer1|cont~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|debouncer1|cont\(7));

-- Location: LCCOMB_X17_Y9_N16
\inst2|debouncer1|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|debouncer1|Add0~16_combout\ = (\inst2|debouncer1|cont\(8) & (\inst2|debouncer1|Add0~15\ $ (GND))) # (!\inst2|debouncer1|cont\(8) & (!\inst2|debouncer1|Add0~15\ & VCC))
-- \inst2|debouncer1|Add0~17\ = CARRY((\inst2|debouncer1|cont\(8) & !\inst2|debouncer1|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|debouncer1|cont\(8),
	datad => VCC,
	cin => \inst2|debouncer1|Add0~15\,
	combout => \inst2|debouncer1|Add0~16_combout\,
	cout => \inst2|debouncer1|Add0~17\);

-- Location: LCCOMB_X16_Y9_N12
\inst2|debouncer1|cont~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|debouncer1|cont~5_combout\ = (!\inst2|debouncer1|Equal0~3_combout\ & \inst2|debouncer1|Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|debouncer1|Equal0~3_combout\,
	datad => \inst2|debouncer1|Add0~16_combout\,
	combout => \inst2|debouncer1|cont~5_combout\);

-- Location: FF_X16_Y9_N13
\inst2|debouncer1|cont[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|salida~clkctrl_outclk\,
	d => \inst2|debouncer1|cont~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|debouncer1|cont\(8));

-- Location: LCCOMB_X17_Y9_N18
\inst2|debouncer1|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|debouncer1|Add0~18_combout\ = (\inst2|debouncer1|cont\(9) & (!\inst2|debouncer1|Add0~17\)) # (!\inst2|debouncer1|cont\(9) & ((\inst2|debouncer1|Add0~17\) # (GND)))
-- \inst2|debouncer1|Add0~19\ = CARRY((!\inst2|debouncer1|Add0~17\) # (!\inst2|debouncer1|cont\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|debouncer1|cont\(9),
	datad => VCC,
	cin => \inst2|debouncer1|Add0~17\,
	combout => \inst2|debouncer1|Add0~18_combout\,
	cout => \inst2|debouncer1|Add0~19\);

-- Location: LCCOMB_X17_Y9_N28
\inst2|debouncer1|cont~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|debouncer1|cont~6_combout\ = (!\inst2|debouncer1|Equal0~3_combout\ & \inst2|debouncer1|Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|debouncer1|Equal0~3_combout\,
	datad => \inst2|debouncer1|Add0~18_combout\,
	combout => \inst2|debouncer1|cont~6_combout\);

-- Location: FF_X17_Y9_N29
\inst2|debouncer1|cont[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|salida~clkctrl_outclk\,
	d => \inst2|debouncer1|cont~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|debouncer1|cont\(9));

-- Location: LCCOMB_X17_Y9_N20
\inst2|debouncer1|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|debouncer1|Add0~20_combout\ = (\inst2|debouncer1|cont\(10) & (\inst2|debouncer1|Add0~19\ $ (GND))) # (!\inst2|debouncer1|cont\(10) & (!\inst2|debouncer1|Add0~19\ & VCC))
-- \inst2|debouncer1|Add0~21\ = CARRY((\inst2|debouncer1|cont\(10) & !\inst2|debouncer1|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|debouncer1|cont\(10),
	datad => VCC,
	cin => \inst2|debouncer1|Add0~19\,
	combout => \inst2|debouncer1|Add0~20_combout\,
	cout => \inst2|debouncer1|Add0~21\);

-- Location: FF_X17_Y9_N21
\inst2|debouncer1|cont[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|salida~clkctrl_outclk\,
	d => \inst2|debouncer1|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|debouncer1|cont\(10));

-- Location: LCCOMB_X17_Y9_N22
\inst2|debouncer1|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|debouncer1|Add0~22_combout\ = (\inst2|debouncer1|cont\(11) & (!\inst2|debouncer1|Add0~21\)) # (!\inst2|debouncer1|cont\(11) & ((\inst2|debouncer1|Add0~21\) # (GND)))
-- \inst2|debouncer1|Add0~23\ = CARRY((!\inst2|debouncer1|Add0~21\) # (!\inst2|debouncer1|cont\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|debouncer1|cont\(11),
	datad => VCC,
	cin => \inst2|debouncer1|Add0~21\,
	combout => \inst2|debouncer1|Add0~22_combout\,
	cout => \inst2|debouncer1|Add0~23\);

-- Location: LCCOMB_X17_Y9_N26
\inst2|debouncer1|cont~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|debouncer1|cont~7_combout\ = (\inst2|debouncer1|Add0~22_combout\ & !\inst2|debouncer1|Equal0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|debouncer1|Add0~22_combout\,
	datad => \inst2|debouncer1|Equal0~3_combout\,
	combout => \inst2|debouncer1|cont~7_combout\);

-- Location: FF_X17_Y9_N27
\inst2|debouncer1|cont[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|salida~clkctrl_outclk\,
	d => \inst2|debouncer1|cont~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|debouncer1|cont\(11));

-- Location: LCCOMB_X16_Y9_N22
\inst2|debouncer1|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|debouncer1|Equal0~2_combout\ = (\inst2|debouncer1|cont\(8) & (\inst2|debouncer1|cont\(11) & (!\inst2|debouncer1|cont\(10) & \inst2|debouncer1|cont\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|debouncer1|cont\(8),
	datab => \inst2|debouncer1|cont\(11),
	datac => \inst2|debouncer1|cont\(10),
	datad => \inst2|debouncer1|cont\(9),
	combout => \inst2|debouncer1|Equal0~2_combout\);

-- Location: LCCOMB_X17_Y9_N24
\inst2|debouncer1|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|debouncer1|Add0~24_combout\ = \inst2|debouncer1|cont\(12) $ (!\inst2|debouncer1|Add0~23\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|debouncer1|cont\(12),
	cin => \inst2|debouncer1|Add0~23\,
	combout => \inst2|debouncer1|Add0~24_combout\);

-- Location: FF_X17_Y9_N25
\inst2|debouncer1|cont[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|salida~clkctrl_outclk\,
	d => \inst2|debouncer1|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|debouncer1|cont\(12));

-- Location: LCCOMB_X16_Y9_N30
\inst2|debouncer1|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|debouncer1|Equal0~1_combout\ = (\inst2|debouncer1|cont\(5) & (!\inst2|debouncer1|cont\(6) & (\inst2|debouncer1|cont\(7) & \inst2|debouncer1|cont\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|debouncer1|cont\(5),
	datab => \inst2|debouncer1|cont\(6),
	datac => \inst2|debouncer1|cont\(7),
	datad => \inst2|debouncer1|cont\(4),
	combout => \inst2|debouncer1|Equal0~1_combout\);

-- Location: LCCOMB_X16_Y9_N28
\inst2|debouncer1|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|debouncer1|Equal0~0_combout\ = (!\inst2|debouncer1|cont\(1) & (\inst2|debouncer1|cont\(3) & (!\inst2|debouncer1|cont\(0) & !\inst2|debouncer1|cont\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|debouncer1|cont\(1),
	datab => \inst2|debouncer1|cont\(3),
	datac => \inst2|debouncer1|cont\(0),
	datad => \inst2|debouncer1|cont\(2),
	combout => \inst2|debouncer1|Equal0~0_combout\);

-- Location: LCCOMB_X16_Y9_N20
\inst2|debouncer1|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|debouncer1|Equal0~3_combout\ = (\inst2|debouncer1|Equal0~2_combout\ & (!\inst2|debouncer1|cont\(12) & (\inst2|debouncer1|Equal0~1_combout\ & \inst2|debouncer1|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|debouncer1|Equal0~2_combout\,
	datab => \inst2|debouncer1|cont\(12),
	datac => \inst2|debouncer1|Equal0~1_combout\,
	datad => \inst2|debouncer1|Equal0~0_combout\,
	combout => \inst2|debouncer1|Equal0~3_combout\);

-- Location: LCCOMB_X16_Y4_N26
\inst2|debouncer1|enable~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|debouncer1|enable~1_combout\ = (!\inst2|debouncer1|Equal0~3_combout\ & ((\put~input_o\) # ((\inst2|debouncer1|enable~0_combout\) # (\inst2|debouncer1|enable~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \put~input_o\,
	datab => \inst2|debouncer1|enable~0_combout\,
	datac => \inst2|debouncer1|enable~q\,
	datad => \inst2|debouncer1|Equal0~3_combout\,
	combout => \inst2|debouncer1|enable~1_combout\);

-- Location: FF_X16_Y4_N27
\inst2|debouncer1|enable\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|salida~clkctrl_outclk\,
	d => \inst2|debouncer1|enable~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|debouncer1|enable~q\);

-- Location: LCCOMB_X16_Y4_N22
\inst2|debouncer1|s5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|debouncer1|s5~0_combout\ = (\put~input_o\ & !\inst2|debouncer1|enable~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \put~input_o\,
	datac => \inst2|debouncer1|enable~q\,
	combout => \inst2|debouncer1|s5~0_combout\);

-- Location: FF_X16_Y4_N23
\inst2|debouncer1|s5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|salida~clkctrl_outclk\,
	d => \inst2|debouncer1|s5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|debouncer1|s5~q\);

-- Location: LCCOMB_X14_Y4_N12
\inst|turno~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|turno~0_combout\ = \inst|turno~q\ $ (\inst2|debouncer1|s5~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|turno~q\,
	datad => \inst2|debouncer1|s5~q\,
	combout => \inst|turno~0_combout\);

-- Location: FF_X14_Y4_N13
\inst|turno\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|salida~clkctrl_outclk\,
	d => \inst|turno~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|turno~q\);

-- Location: LCCOMB_X16_Y4_N14
\inst2|debouncer1|s4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|debouncer1|s4~0_combout\ = (\right~input_o\ & !\inst2|debouncer1|enable~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \right~input_o\,
	datac => \inst2|debouncer1|enable~q\,
	combout => \inst2|debouncer1|s4~0_combout\);

-- Location: FF_X16_Y4_N15
\inst2|debouncer1|s4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|salida~clkctrl_outclk\,
	d => \inst2|debouncer1|s4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|debouncer1|s4~q\);

-- Location: LCCOMB_X16_Y4_N8
\inst2|debouncer1|s1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|debouncer1|s1~0_combout\ = (\up~input_o\ & !\inst2|debouncer1|enable~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \up~input_o\,
	datac => \inst2|debouncer1|enable~q\,
	combout => \inst2|debouncer1|s1~0_combout\);

-- Location: FF_X16_Y4_N9
\inst2|debouncer1|s1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|salida~clkctrl_outclk\,
	d => \inst2|debouncer1|s1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|debouncer1|s1~q\);

-- Location: LCCOMB_X16_Y4_N20
\inst2|debouncer1|s3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|debouncer1|s3~0_combout\ = (!\inst2|debouncer1|enable~q\ & \left~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|debouncer1|enable~q\,
	datad => \left~input_o\,
	combout => \inst2|debouncer1|s3~0_combout\);

-- Location: FF_X16_Y4_N21
\inst2|debouncer1|s3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|salida~clkctrl_outclk\,
	d => \inst2|debouncer1|s3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|debouncer1|s3~q\);

-- Location: LCCOMB_X16_Y4_N0
\inst2|player[7]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|player[7]~5_combout\ = (\inst2|debouncer1|s3~q\) # ((!\inst2|debouncer1|s4~q\ & \inst2|debouncer1|s1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|debouncer1|s4~q\,
	datac => \inst2|debouncer1|s1~q\,
	datad => \inst2|debouncer1|s3~q\,
	combout => \inst2|player[7]~5_combout\);

-- Location: LCCOMB_X16_Y4_N4
\inst2|player~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|player~0_combout\ = (!\inst2|debouncer1|s4~q\ & !\inst2|debouncer1|s3~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|debouncer1|s4~q\,
	datad => \inst2|debouncer1|s3~q\,
	combout => \inst2|player~0_combout\);

-- Location: LCCOMB_X17_Y4_N18
\inst2|player~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|player~9_combout\ = (\inst2|player[7]~5_combout\ & (!\inst2|player~0_combout\)) # (!\inst2|player[7]~5_combout\ & ((\inst2|player~0_combout\ & (!\inst2|player\(8))) # (!\inst2|player~0_combout\ & ((\inst2|player\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|player[7]~5_combout\,
	datab => \inst2|player~0_combout\,
	datac => \inst2|player\(8),
	datad => \inst2|player\(6),
	combout => \inst2|player~9_combout\);

-- Location: LCCOMB_X17_Y4_N10
\inst2|player~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|player~10_combout\ = (\inst2|player[7]~5_combout\ & ((\inst2|player~9_combout\ & ((\inst2|player\(4)))) # (!\inst2|player~9_combout\ & (\inst2|player\(2))))) # (!\inst2|player[7]~5_combout\ & (((\inst2|player~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|player[7]~5_combout\,
	datab => \inst2|player\(2),
	datac => \inst2|player\(4),
	datad => \inst2|player~9_combout\,
	combout => \inst2|player~10_combout\);

-- Location: LCCOMB_X16_Y4_N10
\inst2|debouncer1|s2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|debouncer1|s2~0_combout\ = (\down~input_o\ & !\inst2|debouncer1|enable~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \down~input_o\,
	datac => \inst2|debouncer1|enable~q\,
	combout => \inst2|debouncer1|s2~0_combout\);

-- Location: FF_X16_Y4_N11
\inst2|debouncer1|s2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|salida~clkctrl_outclk\,
	d => \inst2|debouncer1|s2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|debouncer1|s2~q\);

-- Location: LCCOMB_X16_Y4_N6
\inst2|player[7]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|player[7]~8_combout\ = (\inst2|debouncer1|s2~q\) # ((\inst2|debouncer1|s4~q\) # ((\inst2|debouncer1|s1~q\) # (\inst2|debouncer1|s3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|debouncer1|s2~q\,
	datab => \inst2|debouncer1|s4~q\,
	datac => \inst2|debouncer1|s1~q\,
	datad => \inst2|debouncer1|s3~q\,
	combout => \inst2|player[7]~8_combout\);

-- Location: FF_X17_Y4_N11
\inst2|player[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|salida~clkctrl_outclk\,
	d => \inst2|player~10_combout\,
	ena => \inst2|player[7]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|player\(5));

-- Location: LCCOMB_X17_Y4_N12
\inst2|player~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|player~17_combout\ = (\inst2|player[7]~5_combout\ & (((\inst2|player\(3))) # (!\inst2|player~0_combout\))) # (!\inst2|player[7]~5_combout\ & (\inst2|player~0_combout\ & (\inst2|player\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|player[7]~5_combout\,
	datab => \inst2|player~0_combout\,
	datac => \inst2|player\(0),
	datad => \inst2|player\(3),
	combout => \inst2|player~17_combout\);

-- Location: LCCOMB_X17_Y4_N30
\inst2|player~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|player~18_combout\ = (\inst2|player~0_combout\ & (((\inst2|player~17_combout\)))) # (!\inst2|player~0_combout\ & ((\inst2|player~17_combout\ & (\inst2|player\(5))) # (!\inst2|player~17_combout\ & ((\inst2|player\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|player\(5),
	datab => \inst2|player~0_combout\,
	datac => \inst2|player\(7),
	datad => \inst2|player~17_combout\,
	combout => \inst2|player~18_combout\);

-- Location: FF_X17_Y4_N31
\inst2|player[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|salida~clkctrl_outclk\,
	d => \inst2|player~18_combout\,
	ena => \inst2|player[7]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|player\(6));

-- Location: LCCOMB_X17_Y4_N2
\inst2|player~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|player~15_combout\ = (\inst2|player[7]~5_combout\ & (!\inst2|player~0_combout\)) # (!\inst2|player[7]~5_combout\ & ((\inst2|player~0_combout\ & ((\inst2|player\(1)))) # (!\inst2|player~0_combout\ & (!\inst2|player\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|player[7]~5_combout\,
	datab => \inst2|player~0_combout\,
	datac => \inst2|player\(8),
	datad => \inst2|player\(1),
	combout => \inst2|player~15_combout\);

-- Location: LCCOMB_X17_Y4_N8
\inst2|player~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|player~16_combout\ = (\inst2|player[7]~5_combout\ & ((\inst2|player~15_combout\ & (\inst2|player\(6))) # (!\inst2|player~15_combout\ & ((\inst2|player\(4)))))) # (!\inst2|player[7]~5_combout\ & (((\inst2|player~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|player[7]~5_combout\,
	datab => \inst2|player\(6),
	datac => \inst2|player\(4),
	datad => \inst2|player~15_combout\,
	combout => \inst2|player~16_combout\);

-- Location: FF_X17_Y4_N9
\inst2|player[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|salida~clkctrl_outclk\,
	d => \inst2|player~16_combout\,
	ena => \inst2|player[7]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|player\(7));

-- Location: LCCOMB_X16_Y4_N30
\inst2|player~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|player~3_combout\ = (\inst2|player\(0) & (\inst2|debouncer1|s4~q\ & !\inst2|debouncer1|s3~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|player\(0),
	datab => \inst2|debouncer1|s4~q\,
	datad => \inst2|debouncer1|s3~q\,
	combout => \inst2|player~3_combout\);

-- Location: LCCOMB_X16_Y4_N18
\inst2|player~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|player~1_combout\ = (!\inst2|debouncer1|s1~q\ & ((\inst2|debouncer1|s2~q\ & ((\inst2|player\(2)))) # (!\inst2|debouncer1|s2~q\ & (!\inst2|player\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|debouncer1|s2~q\,
	datab => \inst2|player\(8),
	datac => \inst2|debouncer1|s1~q\,
	datad => \inst2|player\(2),
	combout => \inst2|player~1_combout\);

-- Location: LCCOMB_X16_Y4_N28
\inst2|player~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|player~2_combout\ = (\inst2|player~0_combout\ & ((\inst2|player~1_combout\) # ((\inst2|player\(5) & \inst2|debouncer1|s1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|player\(5),
	datab => \inst2|debouncer1|s1~q\,
	datac => \inst2|player~0_combout\,
	datad => \inst2|player~1_combout\,
	combout => \inst2|player~2_combout\);

-- Location: LCCOMB_X16_Y4_N16
\inst2|player~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|player~4_combout\ = (!\inst2|player~3_combout\ & (!\inst2|player~2_combout\ & ((!\inst2|debouncer1|s3~q\) # (!\inst2|player\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|player\(7),
	datab => \inst2|debouncer1|s3~q\,
	datac => \inst2|player~3_combout\,
	datad => \inst2|player~2_combout\,
	combout => \inst2|player~4_combout\);

-- Location: FF_X16_Y4_N17
\inst2|player[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|salida~clkctrl_outclk\,
	d => \inst2|player~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|player\(8));

-- Location: LCCOMB_X17_Y4_N6
\inst2|player~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|player~19_combout\ = (\inst2|player[7]~5_combout\ & (((\inst2|player\(6))) # (!\inst2|player~0_combout\))) # (!\inst2|player[7]~5_combout\ & (\inst2|player~0_combout\ & ((\inst2|player\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|player[7]~5_combout\,
	datab => \inst2|player~0_combout\,
	datac => \inst2|player\(6),
	datad => \inst2|player\(3),
	combout => \inst2|player~19_combout\);

-- Location: LCCOMB_X17_Y4_N4
\inst2|player~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|player~20_combout\ = (\inst2|player~0_combout\ & (((\inst2|player~19_combout\)))) # (!\inst2|player~0_combout\ & ((\inst2|player~19_combout\ & ((!\inst2|player\(8)))) # (!\inst2|player~19_combout\ & (\inst2|player\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|player\(1),
	datab => \inst2|player~0_combout\,
	datac => \inst2|player\(8),
	datad => \inst2|player~19_combout\,
	combout => \inst2|player~20_combout\);

-- Location: FF_X17_Y4_N5
\inst2|player[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|salida~clkctrl_outclk\,
	d => \inst2|player~20_combout\,
	ena => \inst2|player[7]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|player\(0));

-- Location: LCCOMB_X16_Y4_N12
\inst2|player~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|player~11_combout\ = (\inst2|player~0_combout\ & (\inst2|player\(4) & (!\inst2|player[7]~5_combout\))) # (!\inst2|player~0_combout\ & (((\inst2|player[7]~5_combout\) # (\inst2|player\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|player\(4),
	datab => \inst2|player~0_combout\,
	datac => \inst2|player[7]~5_combout\,
	datad => \inst2|player\(2),
	combout => \inst2|player~11_combout\);

-- Location: LCCOMB_X17_Y4_N24
\inst2|player~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|player~12_combout\ = (\inst2|player[7]~5_combout\ & ((\inst2|player~11_combout\ & (\inst2|player\(0))) # (!\inst2|player~11_combout\ & ((\inst2|player\(7)))))) # (!\inst2|player[7]~5_combout\ & (((\inst2|player~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|player[7]~5_combout\,
	datab => \inst2|player\(0),
	datac => \inst2|player\(7),
	datad => \inst2|player~11_combout\,
	combout => \inst2|player~12_combout\);

-- Location: FF_X17_Y4_N25
\inst2|player[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|salida~clkctrl_outclk\,
	d => \inst2|player~12_combout\,
	ena => \inst2|player[7]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|player\(1));

-- Location: LCCOMB_X17_Y4_N16
\inst2|player~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|player~6_combout\ = (\inst2|player[7]~5_combout\ & (((!\inst2|player\(8))) # (!\inst2|player~0_combout\))) # (!\inst2|player[7]~5_combout\ & (\inst2|player~0_combout\ & ((\inst2|player\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|player[7]~5_combout\,
	datab => \inst2|player~0_combout\,
	datac => \inst2|player\(8),
	datad => \inst2|player\(5),
	combout => \inst2|player~6_combout\);

-- Location: LCCOMB_X17_Y4_N28
\inst2|player~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|player~7_combout\ = (\inst2|player~0_combout\ & (((\inst2|player~6_combout\)))) # (!\inst2|player~0_combout\ & ((\inst2|player~6_combout\ & ((\inst2|player\(1)))) # (!\inst2|player~6_combout\ & (\inst2|player\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|player\(3),
	datab => \inst2|player~0_combout\,
	datac => \inst2|player\(1),
	datad => \inst2|player~6_combout\,
	combout => \inst2|player~7_combout\);

-- Location: FF_X17_Y4_N29
\inst2|player[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|salida~clkctrl_outclk\,
	d => \inst2|player~7_combout\,
	ena => \inst2|player[7]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|player\(2));

-- Location: LCCOMB_X17_Y4_N0
\inst2|player~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|player~21_combout\ = (\inst2|player[7]~5_combout\ & (!\inst2|player~0_combout\)) # (!\inst2|player[7]~5_combout\ & ((\inst2|player~0_combout\ & (\inst2|player\(6))) # (!\inst2|player~0_combout\ & ((\inst2|player\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|player[7]~5_combout\,
	datab => \inst2|player~0_combout\,
	datac => \inst2|player\(6),
	datad => \inst2|player\(4),
	combout => \inst2|player~21_combout\);

-- Location: LCCOMB_X17_Y4_N14
\inst2|player~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|player~22_combout\ = (\inst2|player[7]~5_combout\ & ((\inst2|player~21_combout\ & (\inst2|player\(2))) # (!\inst2|player~21_combout\ & ((\inst2|player\(0)))))) # (!\inst2|player[7]~5_combout\ & (((\inst2|player~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|player[7]~5_combout\,
	datab => \inst2|player\(2),
	datac => \inst2|player\(0),
	datad => \inst2|player~21_combout\,
	combout => \inst2|player~22_combout\);

-- Location: FF_X17_Y4_N15
\inst2|player[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|salida~clkctrl_outclk\,
	d => \inst2|player~22_combout\,
	ena => \inst2|player[7]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|player\(3));

-- Location: LCCOMB_X17_Y4_N20
\inst2|player~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|player~13_combout\ = (\inst2|player[7]~5_combout\ & (((\inst2|player\(1)) # (!\inst2|player~0_combout\)))) # (!\inst2|player[7]~5_combout\ & (\inst2|player\(7) & (\inst2|player~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|player[7]~5_combout\,
	datab => \inst2|player\(7),
	datac => \inst2|player~0_combout\,
	datad => \inst2|player\(1),
	combout => \inst2|player~13_combout\);

-- Location: LCCOMB_X17_Y4_N22
\inst2|player~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|player~14_combout\ = (\inst2|player~13_combout\ & ((\inst2|player\(3)) # ((\inst2|player~0_combout\)))) # (!\inst2|player~13_combout\ & (((!\inst2|player~0_combout\ & \inst2|player\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|player\(3),
	datab => \inst2|player~13_combout\,
	datac => \inst2|player~0_combout\,
	datad => \inst2|player\(5),
	combout => \inst2|player~14_combout\);

-- Location: FF_X17_Y4_N23
\inst2|player[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|salida~clkctrl_outclk\,
	d => \inst2|player~14_combout\,
	ena => \inst2|player[7]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|player\(4));

-- Location: LCCOMB_X14_Y4_N10
\inst|sal|Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|sal|Mux12~0_combout\ = (!\inst2|player\(5) & (\inst2|player\(8) & !\inst2|player\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|player\(5),
	datac => \inst2|player\(8),
	datad => \inst2|player\(2),
	combout => \inst|sal|Mux12~0_combout\);

-- Location: LCCOMB_X13_Y4_N6
\inst|sal|Mux12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|sal|Mux12~1_combout\ = (!\inst2|player\(4) & (\inst|sal|Mux12~0_combout\ & (!\inst2|player\(1) & !\inst2|player\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|player\(4),
	datab => \inst|sal|Mux12~0_combout\,
	datac => \inst2|player\(1),
	datad => \inst2|player\(7),
	combout => \inst|sal|Mux12~1_combout\);

-- Location: LCCOMB_X13_Y4_N16
\inst|sal|Mux12~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|sal|Mux12~2_combout\ = (\inst|sal|Mux12~1_combout\ & ((\inst2|player\(3) & (!\inst2|player\(0) & !\inst2|player\(6))) # (!\inst2|player\(3) & (\inst2|player\(0) $ (\inst2|player\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|sal|Mux12~1_combout\,
	datab => \inst2|player\(3),
	datac => \inst2|player\(0),
	datad => \inst2|player\(6),
	combout => \inst|sal|Mux12~2_combout\);

-- Location: LCCOMB_X13_Y4_N18
\inst|sal|Mux12~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|sal|Mux12~3_combout\ = (!\inst|sal|Mux12~2_combout\) # (!\inst|turno~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|turno~q\,
	datad => \inst|sal|Mux12~2_combout\,
	combout => \inst|sal|Mux12~3_combout\);

-- Location: FF_X13_Y4_N19
\inst|sal|B[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|salida~clkctrl_outclk\,
	d => \inst|sal|Mux12~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|sal|B\(6));

-- Location: LCCOMB_X14_Y5_N4
\inst|B_aux_final[6]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|B_aux_final[6]~0_combout\ = (\inst|switcher\(4)) # ((!\inst|switcher\(3) & ((!\inst|switcher\(1)) # (!\inst|switcher\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|switcher\(2),
	datab => \inst|switcher\(1),
	datac => \inst|switcher\(4),
	datad => \inst|switcher\(3),
	combout => \inst|B_aux_final[6]~0_combout\);

-- Location: FF_X14_Y5_N29
\inst|B_aux_final[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|salida~clkctrl_outclk\,
	d => \inst|Mux25~0_combout\,
	asdata => \inst|sal|B\(6),
	sload => \inst|switcher\(4),
	ena => \inst|B_aux_final[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|B_aux_final\(6));

-- Location: LCCOMB_X14_Y5_N6
\inst|Mux28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux28~0_combout\ = ((!\inst|switcher\(1) & !\inst|switcher\(2))) # (!\inst|pos2|B\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pos2|B\(6),
	datab => \inst|switcher\(1),
	datad => \inst|switcher\(2),
	combout => \inst|Mux28~0_combout\);

-- Location: LCCOMB_X13_Y4_N2
\inst|sal|Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|sal|Mux13~0_combout\ = (!\inst2|player\(3) & (!\inst2|player\(0) & !\inst2|player\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|player\(3),
	datac => \inst2|player\(0),
	datad => \inst2|player\(6),
	combout => \inst|sal|Mux13~0_combout\);

-- Location: LCCOMB_X13_Y4_N0
\inst|sal|Mux13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|sal|Mux13~1_combout\ = (\inst|sal|Mux13~0_combout\ & ((\inst2|player\(7) & (!\inst2|player\(1) & !\inst2|player\(4))) # (!\inst2|player\(7) & (\inst2|player\(1) $ (\inst2|player\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|player\(7),
	datab => \inst|sal|Mux13~0_combout\,
	datac => \inst2|player\(1),
	datad => \inst2|player\(4),
	combout => \inst|sal|Mux13~1_combout\);

-- Location: LCCOMB_X14_Y4_N24
\inst|sal|Mux13~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|sal|Mux13~2_combout\ = ((!\inst|sal|Mux12~0_combout\) # (!\inst|sal|Mux13~1_combout\)) # (!\inst|turno~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|turno~q\,
	datac => \inst|sal|Mux13~1_combout\,
	datad => \inst|sal|Mux12~0_combout\,
	combout => \inst|sal|Mux13~2_combout\);

-- Location: FF_X14_Y4_N25
\inst|sal|B[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|salida~clkctrl_outclk\,
	d => \inst|sal|Mux13~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|sal|B\(3));

-- Location: FF_X14_Y5_N7
\inst|B_aux_final[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|salida~clkctrl_outclk\,
	d => \inst|Mux28~0_combout\,
	asdata => \inst|sal|B\(3),
	sload => \inst|switcher\(4),
	ena => \inst|B_aux_final[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|B_aux_final\(3));

-- Location: LCCOMB_X13_Y4_N14
\inst|sal|Mux13~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|sal|Mux13~3_combout\ = (!\inst2|player\(4) & (!\inst2|player\(1) & \inst|sal|Mux13~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|player\(4),
	datac => \inst2|player\(1),
	datad => \inst|sal|Mux13~0_combout\,
	combout => \inst|sal|Mux13~3_combout\);

-- Location: LCCOMB_X14_Y4_N8
\inst|sal|Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|sal|Mux14~0_combout\ = (\inst|sal|Mux13~3_combout\ & ((\inst2|player\(8) & (\inst2|player\(2) $ (\inst2|player\(5)))) # (!\inst2|player\(8) & (!\inst2|player\(2) & !\inst2|player\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|player\(8),
	datab => \inst2|player\(2),
	datac => \inst2|player\(5),
	datad => \inst|sal|Mux13~3_combout\,
	combout => \inst|sal|Mux14~0_combout\);

-- Location: LCCOMB_X14_Y4_N14
\inst|sal|Mux14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|sal|Mux14~1_combout\ = ((\inst2|player\(7)) # (!\inst|sal|Mux14~0_combout\)) # (!\inst|turno~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|turno~q\,
	datac => \inst|sal|Mux14~0_combout\,
	datad => \inst2|player\(7),
	combout => \inst|sal|Mux14~1_combout\);

-- Location: FF_X14_Y4_N15
\inst|sal|B[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|salida~clkctrl_outclk\,
	d => \inst|sal|Mux14~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|sal|B\(0));

-- Location: LCCOMB_X14_Y4_N20
\inst|Mux31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux31~0_combout\ = (\inst|sal|B\(0)) # (!\inst|switcher\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|sal|B\(0),
	datad => \inst|switcher\(4),
	combout => \inst|Mux31~0_combout\);

-- Location: FF_X14_Y4_N21
\inst|B_aux_final[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|salida~clkctrl_outclk\,
	d => \inst|Mux31~0_combout\,
	ena => \inst|B_aux_final[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|B_aux_final\(0));

-- Location: LCCOMB_X14_Y5_N20
\inst|f_aux_final[6]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|f_aux_final[6]~1_combout\ = (\inst|switcher\(4)) # ((\inst|switcher\(3)) # ((\inst|switcher\(2) & \inst|switcher\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|switcher\(2),
	datab => \inst|switcher\(1),
	datac => \inst|switcher\(4),
	datad => \inst|switcher\(3),
	combout => \inst|f_aux_final[6]~1_combout\);

-- Location: LCCOMB_X14_Y5_N22
\inst|f_aux_final[6]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|f_aux_final[6]~0_combout\ = \inst|switcher\(1) $ (\inst|switcher\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|switcher\(1),
	datad => \inst|switcher\(2),
	combout => \inst|f_aux_final[6]~0_combout\);

-- Location: LCCOMB_X16_Y5_N16
\inst2|player[8]~_wirecell\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|player[8]~_wirecell_combout\ = !\inst2|player\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|player\(8),
	combout => \inst2|player[8]~_wirecell_combout\);

-- Location: M9K_X15_Y5_N0
\inst|sal|Mux4_rtl_0|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init4 => X"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002000000000000000000000000000000000000000000000000000000000000000000000002000000000000000000000000000000000002000000000000000004000000004000100000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "matriz.matriz0.rtl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "matrizRGB:inst|MOVE:sal|altsyncram:Mux4_rtl_0|altsyncram_sdv:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 9,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 511,
	port_a_logical_ram_depth => 512,
	port_a_logical_ram_width => 3,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 9,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \inst1|salida~clkctrl_outclk\,
	portaaddr => \inst|sal|Mux4_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst|sal|Mux4_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X16_Y5_N0
\inst|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux0~0_combout\ = (\inst|f_aux_final[6]~1_combout\ & (((\inst|sal|Mux4_rtl_0|auto_generated|ram_block1a2\)))) # (!\inst|f_aux_final[6]~1_combout\ & ((\inst|f_aux_final[6]~0_combout\) # ((!\inst|tablero1|camb~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|f_aux_final[6]~1_combout\,
	datab => \inst|f_aux_final[6]~0_combout\,
	datac => \inst|tablero1|camb~q\,
	datad => \inst|sal|Mux4_rtl_0|auto_generated|ram_block1a2\,
	combout => \inst|Mux0~0_combout\);

-- Location: FF_X16_Y5_N1
\inst|f_aux_final[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|salida~clkctrl_outclk\,
	d => \inst|Mux0~0_combout\,
	ena => \inst|B_aux_final[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|f_aux_final\(7));

-- Location: LCCOMB_X16_Y5_N12
\inst|sal|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|sal|Mux1~0_combout\ = (\inst2|player\(3)) # ((\inst2|player\(4)) # ((\inst|tablero1|camb~q\) # (\inst2|player\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|player\(3),
	datab => \inst2|player\(4),
	datac => \inst|tablero1|camb~q\,
	datad => \inst2|player\(5),
	combout => \inst|sal|Mux1~0_combout\);

-- Location: LCCOMB_X17_Y5_N4
\inst|sal|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|sal|Mux1~1_combout\ = (\inst2|player\(8) & (!\inst2|player\(6) & !\inst2|player\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|player\(8),
	datac => \inst2|player\(6),
	datad => \inst2|player\(7),
	combout => \inst|sal|Mux1~1_combout\);

-- Location: LCCOMB_X16_Y5_N18
\inst|sal|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|sal|Mux1~2_combout\ = ((\inst2|player\(0) & ((\inst2|player\(2)) # (\inst2|player\(1)))) # (!\inst2|player\(0) & (\inst2|player\(2) $ (!\inst2|player\(1))))) # (!\inst|sal|Mux1~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|player\(0),
	datab => \inst2|player\(2),
	datac => \inst2|player\(1),
	datad => \inst|sal|Mux1~1_combout\,
	combout => \inst|sal|Mux1~2_combout\);

-- Location: LCCOMB_X16_Y5_N14
\inst|sal|Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|sal|Mux1~3_combout\ = (!\inst|sal|Mux1~0_combout\ & !\inst|sal|Mux1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|sal|Mux1~0_combout\,
	datad => \inst|sal|Mux1~2_combout\,
	combout => \inst|sal|Mux1~3_combout\);

-- Location: FF_X16_Y5_N15
\inst|sal|fila[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|salida~clkctrl_outclk\,
	d => \inst|sal|Mux1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|sal|fila\(6));

-- Location: LCCOMB_X16_Y5_N6
\inst|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux1~0_combout\ = (\inst|f_aux_final[6]~1_combout\ & (((\inst|sal|fila\(6))))) # (!\inst|f_aux_final[6]~1_combout\ & (\inst|tablero1|camb~q\ $ (((!\inst|f_aux_final[6]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|tablero1|camb~q\,
	datab => \inst|sal|fila\(6),
	datac => \inst|f_aux_final[6]~1_combout\,
	datad => \inst|f_aux_final[6]~0_combout\,
	combout => \inst|Mux1~0_combout\);

-- Location: FF_X16_Y5_N7
\inst|f_aux_final[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|salida~clkctrl_outclk\,
	d => \inst|Mux1~0_combout\,
	ena => \inst|B_aux_final[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|f_aux_final\(6));

-- Location: LCCOMB_X14_Y5_N16
\inst|B_aux_final[6]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|B_aux_final[6]~1_combout\ = (\inst|switcher\(2)) # (\inst|switcher\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|switcher\(2),
	datab => \inst|switcher\(1),
	combout => \inst|B_aux_final[6]~1_combout\);

-- Location: LCCOMB_X13_Y5_N0
\inst|B_aux_final[6]~1_wirecell\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|B_aux_final[6]~1_wirecell_combout\ = !\inst|B_aux_final[6]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|B_aux_final[6]~1_combout\,
	combout => \inst|B_aux_final[6]~1_wirecell_combout\);

-- Location: FF_X13_Y5_N1
\inst|f_aux_final[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|salida~clkctrl_outclk\,
	d => \inst|B_aux_final[6]~1_wirecell_combout\,
	sclr => \inst|switcher\(4),
	ena => \inst|B_aux_final[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|f_aux_final\(2));

-- Location: LCCOMB_X16_Y5_N8
\inst|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux3~0_combout\ = (\inst|f_aux_final[6]~1_combout\ & (((\inst|sal|Mux4_rtl_0|auto_generated|ram_block1a1\)))) # (!\inst|f_aux_final[6]~1_combout\ & (!\inst|f_aux_final[6]~0_combout\ & (!\inst|tablero1|camb~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|f_aux_final[6]~1_combout\,
	datab => \inst|f_aux_final[6]~0_combout\,
	datac => \inst|tablero1|camb~q\,
	datad => \inst|sal|Mux4_rtl_0|auto_generated|ram_block1a1\,
	combout => \inst|Mux3~0_combout\);

-- Location: FF_X16_Y5_N9
\inst|f_aux_final[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|salida~clkctrl_outclk\,
	d => \inst|Mux3~0_combout\,
	ena => \inst|B_aux_final[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|f_aux_final\(4));

-- Location: LCCOMB_X16_Y5_N4
\inst|sal|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|sal|Mux3~0_combout\ = (\inst|tablero1|camb~q\) # ((\inst2|player\(3) & ((\inst2|player\(4)) # (\inst2|player\(5)))) # (!\inst2|player\(3) & (\inst2|player\(4) $ (!\inst2|player\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|player\(3),
	datab => \inst2|player\(4),
	datac => \inst|tablero1|camb~q\,
	datad => \inst2|player\(5),
	combout => \inst|sal|Mux3~0_combout\);

-- Location: LCCOMB_X17_Y5_N2
\inst|sal|Mux1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|sal|Mux1~4_combout\ = (!\inst2|player\(1) & !\inst2|player\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|player\(1),
	datad => \inst2|player\(0),
	combout => \inst|sal|Mux1~4_combout\);

-- Location: LCCOMB_X16_Y5_N28
\inst|sal|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|sal|Mux3~1_combout\ = (\inst|sal|Mux1~1_combout\ & (!\inst2|player\(2) & (!\inst|sal|Mux3~0_combout\ & \inst|sal|Mux1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|sal|Mux1~1_combout\,
	datab => \inst2|player\(2),
	datac => \inst|sal|Mux3~0_combout\,
	datad => \inst|sal|Mux1~4_combout\,
	combout => \inst|sal|Mux3~1_combout\);

-- Location: FF_X16_Y5_N29
\inst|sal|fila[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|salida~clkctrl_outclk\,
	d => \inst|sal|Mux3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|sal|fila\(3));

-- Location: LCCOMB_X16_Y5_N30
\inst|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux4~0_combout\ = (\inst|f_aux_final[6]~1_combout\ & (((\inst|sal|fila\(3))))) # (!\inst|f_aux_final[6]~1_combout\ & (!\inst|f_aux_final[6]~0_combout\ & (!\inst|tablero1|camb~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|f_aux_final[6]~1_combout\,
	datab => \inst|f_aux_final[6]~0_combout\,
	datac => \inst|tablero1|camb~q\,
	datad => \inst|sal|fila\(3),
	combout => \inst|Mux4~0_combout\);

-- Location: FF_X16_Y5_N31
\inst|f_aux_final[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|salida~clkctrl_outclk\,
	d => \inst|Mux4~0_combout\,
	ena => \inst|B_aux_final[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|f_aux_final\(3));

-- Location: LCCOMB_X14_Y5_N30
\inst|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux6~0_combout\ = (\inst|f_aux_final[6]~1_combout\ & (((\inst|sal|Mux4_rtl_0|auto_generated|ram_block1a0~portadataout\)))) # (!\inst|f_aux_final[6]~1_combout\ & (!\inst|f_aux_final[6]~0_combout\ & (!\inst|tablero1|camb~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|f_aux_final[6]~0_combout\,
	datab => \inst|tablero1|camb~q\,
	datac => \inst|f_aux_final[6]~1_combout\,
	datad => \inst|sal|Mux4_rtl_0|auto_generated|ram_block1a0~portadataout\,
	combout => \inst|Mux6~0_combout\);

-- Location: FF_X14_Y5_N31
\inst|f_aux_final[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|salida~clkctrl_outclk\,
	d => \inst|Mux6~0_combout\,
	ena => \inst|B_aux_final[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|f_aux_final\(1));

-- Location: LCCOMB_X16_Y5_N10
\inst|sal|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|sal|Mux5~0_combout\ = (!\inst2|player\(1) & (!\inst2|player\(2) & (!\inst2|player\(4) & !\inst2|player\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|player\(1),
	datab => \inst2|player\(2),
	datac => \inst2|player\(4),
	datad => \inst2|player\(5),
	combout => \inst|sal|Mux5~0_combout\);

-- Location: LCCOMB_X17_Y5_N12
\inst|sal|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|sal|Mux5~1_combout\ = (!\inst2|player\(0) & ((\inst2|player\(8) & (\inst2|player\(6) $ (\inst2|player\(7)))) # (!\inst2|player\(8) & (!\inst2|player\(6) & !\inst2|player\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|player\(0),
	datab => \inst2|player\(8),
	datac => \inst2|player\(6),
	datad => \inst2|player\(7),
	combout => \inst|sal|Mux5~1_combout\);

-- Location: LCCOMB_X16_Y5_N26
\inst|sal|Mux5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|sal|Mux5~2_combout\ = (\inst|sal|Mux5~0_combout\ & (\inst|sal|Mux5~1_combout\ & (\inst|tablero1|camb~q\ & !\inst2|player\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|sal|Mux5~0_combout\,
	datab => \inst|sal|Mux5~1_combout\,
	datac => \inst|tablero1|camb~q\,
	datad => \inst2|player\(3),
	combout => \inst|sal|Mux5~2_combout\);

-- Location: FF_X16_Y5_N27
\inst|sal|fila[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|salida~clkctrl_outclk\,
	d => \inst|sal|Mux5~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|sal|fila\(0));

-- Location: LCCOMB_X16_Y5_N24
\inst|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux7~0_combout\ = (\inst|f_aux_final[6]~1_combout\ & (((\inst|sal|fila\(0))))) # (!\inst|f_aux_final[6]~1_combout\ & (!\inst|f_aux_final[6]~0_combout\ & (!\inst|tablero1|camb~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|f_aux_final[6]~1_combout\,
	datab => \inst|f_aux_final[6]~0_combout\,
	datac => \inst|tablero1|camb~q\,
	datad => \inst|sal|fila\(0),
	combout => \inst|Mux7~0_combout\);

-- Location: FF_X16_Y5_N25
\inst|f_aux_final[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|salida~clkctrl_outclk\,
	d => \inst|Mux7~0_combout\,
	ena => \inst|B_aux_final[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|f_aux_final\(0));

-- Location: LCCOMB_X13_Y4_N4
\inst|sal|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|sal|Mux6~0_combout\ = (\inst|turno~q\) # (!\inst|sal|Mux12~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|turno~q\,
	datad => \inst|sal|Mux12~2_combout\,
	combout => \inst|sal|Mux6~0_combout\);

-- Location: FF_X13_Y4_N5
\inst|sal|G[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|salida~clkctrl_outclk\,
	d => \inst|sal|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|sal|G\(7));

-- Location: LCCOMB_X13_Y4_N20
\inst|Mux16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux16~0_combout\ = (\inst|sal|G\(7)) # (!\inst|switcher\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|switcher\(4),
	datac => \inst|sal|G\(7),
	combout => \inst|Mux16~0_combout\);

-- Location: FF_X13_Y4_N21
\inst|G_aux_final[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|salida~clkctrl_outclk\,
	d => \inst|Mux16~0_combout\,
	ena => \inst|B_aux_final[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|G_aux_final\(7));

-- Location: LCCOMB_X13_Y4_N24
\inst|sal|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|sal|Mux7~0_combout\ = (\inst|tablero1|camb~q\ & ((\inst2|player\(6)) # (\inst2|player\(3) $ (!\inst2|player\(0))))) # (!\inst|tablero1|camb~q\ & ((\inst2|player\(3)) # ((\inst2|player\(0)) # (!\inst2|player\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|player\(3),
	datab => \inst|tablero1|camb~q\,
	datac => \inst2|player\(0),
	datad => \inst2|player\(6),
	combout => \inst|sal|Mux7~0_combout\);

-- Location: LCCOMB_X13_Y4_N30
\inst|sal|Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|sal|Mux7~1_combout\ = (\inst|sal|Mux7~0_combout\) # ((\inst|turno~q\) # (!\inst|sal|Mux12~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|sal|Mux7~0_combout\,
	datac => \inst|turno~q\,
	datad => \inst|sal|Mux12~1_combout\,
	combout => \inst|sal|Mux7~1_combout\);

-- Location: FF_X13_Y4_N31
\inst|sal|G[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|salida~clkctrl_outclk\,
	d => \inst|sal|Mux7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|sal|G\(6));

-- Location: LCCOMB_X13_Y4_N26
\inst|Mux17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux17~0_combout\ = (\inst|sal|G\(6)) # (!\inst|switcher\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|switcher\(4),
	datac => \inst|sal|G\(6),
	combout => \inst|Mux17~0_combout\);

-- Location: FF_X13_Y4_N27
\inst|G_aux_final[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|salida~clkctrl_outclk\,
	d => \inst|Mux17~0_combout\,
	ena => \inst|B_aux_final[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|G_aux_final\(6));

-- Location: LCCOMB_X13_Y4_N8
\inst|sal|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|sal|Mux8~0_combout\ = ((\inst|turno~q\) # (!\inst|sal|Mux13~1_combout\)) # (!\inst|sal|Mux12~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|sal|Mux12~0_combout\,
	datac => \inst|turno~q\,
	datad => \inst|sal|Mux13~1_combout\,
	combout => \inst|sal|Mux8~0_combout\);

-- Location: FF_X13_Y4_N9
\inst|sal|G[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|salida~clkctrl_outclk\,
	d => \inst|sal|Mux8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|sal|G\(4));

-- Location: LCCOMB_X13_Y4_N12
\inst|Mux19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux19~0_combout\ = (\inst|sal|G\(4)) # (!\inst|switcher\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|switcher\(4),
	datac => \inst|sal|G\(4),
	combout => \inst|Mux19~0_combout\);

-- Location: FF_X13_Y4_N13
\inst|G_aux_final[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|salida~clkctrl_outclk\,
	d => \inst|Mux19~0_combout\,
	ena => \inst|B_aux_final[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|G_aux_final\(4));

-- Location: LCCOMB_X13_Y4_N22
\inst|sal|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|sal|Mux9~0_combout\ = (!\inst2|player\(7) & ((\inst2|player\(4) $ (!\inst2|player\(1))) # (!\inst|tablero1|camb~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|player\(4),
	datab => \inst|tablero1|camb~q\,
	datac => \inst2|player\(1),
	datad => \inst2|player\(7),
	combout => \inst|sal|Mux9~0_combout\);

-- Location: LCCOMB_X14_Y4_N30
\inst|sal|Mux9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|sal|Mux9~1_combout\ = (!\inst2|player\(7) & ((\inst2|player\(6)) # ((\inst2|player\(0)) # (\inst2|player\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|player\(6),
	datab => \inst2|player\(0),
	datac => \inst2|player\(3),
	datad => \inst2|player\(7),
	combout => \inst|sal|Mux9~1_combout\);

-- Location: LCCOMB_X14_Y4_N4
\inst|sal|Mux9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|sal|Mux9~2_combout\ = ((\inst|sal|Mux9~0_combout\) # ((\inst|sal|Mux9~1_combout\) # (\inst|turno~q\))) # (!\inst|sal|Mux12~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|sal|Mux12~0_combout\,
	datab => \inst|sal|Mux9~0_combout\,
	datac => \inst|sal|Mux9~1_combout\,
	datad => \inst|turno~q\,
	combout => \inst|sal|Mux9~2_combout\);

-- Location: LCCOMB_X14_Y4_N6
\inst|sal|Mux9~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|sal|Mux9~3_combout\ = (\inst|sal|Mux9~2_combout\) # ((\inst2|player\(7) & ((\inst|tablero1|camb~q\) # (!\inst|sal|Mux13~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|sal|Mux13~3_combout\,
	datab => \inst|tablero1|camb~q\,
	datac => \inst|sal|Mux9~2_combout\,
	datad => \inst2|player\(7),
	combout => \inst|sal|Mux9~3_combout\);

-- Location: FF_X14_Y4_N7
\inst|sal|G[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|salida~clkctrl_outclk\,
	d => \inst|sal|Mux9~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|sal|G\(3));

-- Location: LCCOMB_X13_Y4_N10
\inst|Mux20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux20~0_combout\ = (\inst|sal|G\(3)) # (!\inst|switcher\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|switcher\(4),
	datad => \inst|sal|G\(3),
	combout => \inst|Mux20~0_combout\);

-- Location: FF_X13_Y4_N11
\inst|G_aux_final[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|salida~clkctrl_outclk\,
	d => \inst|Mux20~0_combout\,
	ena => \inst|B_aux_final[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|G_aux_final\(3));

-- Location: LCCOMB_X14_Y4_N16
\inst|sal|Mux10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|sal|Mux10~2_combout\ = (\inst|turno~q\) # ((\inst2|player\(7)) # (!\inst|sal|Mux14~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|turno~q\,
	datac => \inst|sal|Mux14~0_combout\,
	datad => \inst2|player\(7),
	combout => \inst|sal|Mux10~2_combout\);

-- Location: FF_X14_Y4_N17
\inst|sal|G[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|salida~clkctrl_outclk\,
	d => \inst|sal|Mux10~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|sal|G\(1));

-- Location: LCCOMB_X13_Y4_N28
\inst|Mux22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux22~0_combout\ = (\inst|sal|G\(1)) # (!\inst|switcher\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|switcher\(4),
	datad => \inst|sal|G\(1),
	combout => \inst|Mux22~0_combout\);

-- Location: FF_X13_Y4_N29
\inst|G_aux_final[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|salida~clkctrl_outclk\,
	d => \inst|Mux22~0_combout\,
	ena => \inst|B_aux_final[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|G_aux_final\(1));

-- Location: LCCOMB_X14_Y4_N18
\inst|sal|Mux11~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|sal|Mux11~2_combout\ = (\inst2|player\(8) & ((\inst2|player\(5) $ (!\inst2|player\(2))) # (!\inst|tablero1|camb~q\))) # (!\inst2|player\(8) & ((\inst|tablero1|camb~q\) # ((\inst2|player\(5)) # (\inst2|player\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011101111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|player\(8),
	datab => \inst|tablero1|camb~q\,
	datac => \inst2|player\(5),
	datad => \inst2|player\(2),
	combout => \inst|sal|Mux11~2_combout\);

-- Location: LCCOMB_X14_Y4_N26
\inst|sal|Mux11~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|sal|Mux11~3_combout\ = (\inst|turno~q\) # ((\inst|sal|Mux11~2_combout\) # ((\inst2|player\(7)) # (!\inst|sal|Mux13~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|turno~q\,
	datab => \inst|sal|Mux11~2_combout\,
	datac => \inst2|player\(7),
	datad => \inst|sal|Mux13~3_combout\,
	combout => \inst|sal|Mux11~3_combout\);

-- Location: FF_X14_Y4_N27
\inst|sal|G[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|salida~clkctrl_outclk\,
	d => \inst|sal|Mux11~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|sal|G\(0));

-- Location: LCCOMB_X14_Y4_N22
\inst|Mux23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux23~0_combout\ = (\inst|sal|G\(0)) # (!\inst|switcher\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|sal|G\(0),
	datad => \inst|switcher\(4),
	combout => \inst|Mux23~0_combout\);

-- Location: FF_X14_Y4_N23
\inst|G_aux_final[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|salida~clkctrl_outclk\,
	d => \inst|Mux23~0_combout\,
	ena => \inst|B_aux_final[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|G_aux_final\(0));

-- Location: LCCOMB_X14_Y5_N18
\inst|Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux15~0_combout\ = (\inst|switcher\(2) & (((\inst|switcher\(1) & !\inst|R_aux_final\(0))))) # (!\inst|switcher\(2) & (\inst|tablero1|camb~q\ & (!\inst|switcher\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|switcher\(2),
	datab => \inst|tablero1|camb~q\,
	datac => \inst|switcher\(1),
	datad => \inst|R_aux_final\(0),
	combout => \inst|Mux15~0_combout\);

-- Location: LCCOMB_X14_Y5_N0
\inst|Mux15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux15~1_combout\ = (\inst|switcher\(4)) # ((\inst|switcher\(3) & (\inst|R_aux_final\(0))) # (!\inst|switcher\(3) & ((!\inst|Mux15~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|switcher\(3),
	datab => \inst|switcher\(4),
	datac => \inst|R_aux_final\(0),
	datad => \inst|Mux15~0_combout\,
	combout => \inst|Mux15~1_combout\);

-- Location: FF_X14_Y5_N1
\inst|R_aux_final[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|salida~clkctrl_outclk\,
	d => \inst|Mux15~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|R_aux_final\(0));

-- Location: FF_X14_Y5_N17
\inst|R_aux_final[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|salida~clkctrl_outclk\,
	d => \inst|B_aux_final[6]~1_combout\,
	asdata => VCC,
	sload => \inst|switcher\(4),
	ena => \inst|B_aux_final[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|R_aux_final\(2));

ww_B(7) <= \B[7]~output_o\;

ww_B(6) <= \B[6]~output_o\;

ww_B(5) <= \B[5]~output_o\;

ww_B(4) <= \B[4]~output_o\;

ww_B(3) <= \B[3]~output_o\;

ww_B(2) <= \B[2]~output_o\;

ww_B(1) <= \B[1]~output_o\;

ww_B(0) <= \B[0]~output_o\;

ww_filas(7) <= \filas[7]~output_o\;

ww_filas(6) <= \filas[6]~output_o\;

ww_filas(5) <= \filas[5]~output_o\;

ww_filas(4) <= \filas[4]~output_o\;

ww_filas(3) <= \filas[3]~output_o\;

ww_filas(2) <= \filas[2]~output_o\;

ww_filas(1) <= \filas[1]~output_o\;

ww_filas(0) <= \filas[0]~output_o\;

ww_G(7) <= \G[7]~output_o\;

ww_G(6) <= \G[6]~output_o\;

ww_G(5) <= \G[5]~output_o\;

ww_G(4) <= \G[4]~output_o\;

ww_G(3) <= \G[3]~output_o\;

ww_G(2) <= \G[2]~output_o\;

ww_G(1) <= \G[1]~output_o\;

ww_G(0) <= \G[0]~output_o\;

ww_R(7) <= \R[7]~output_o\;

ww_R(6) <= \R[6]~output_o\;

ww_R(5) <= \R[5]~output_o\;

ww_R(4) <= \R[4]~output_o\;

ww_R(3) <= \R[3]~output_o\;

ww_R(2) <= \R[2]~output_o\;

ww_R(1) <= \R[1]~output_o\;

ww_R(0) <= \R[0]~output_o\;
END structure;


