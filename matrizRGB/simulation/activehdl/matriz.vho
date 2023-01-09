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

-- DATE "01/08/2023 23:39:01"

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
-- right	=>  Location: PIN_60,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- left	=>  Location: PIN_59,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- up	=>  Location: PIN_55,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- down	=>  Location: PIN_58,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_clk : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_filas : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_G : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_R : std_logic_vector(7 DOWNTO 0);
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
SIGNAL \inst1|Equal0~1_combout\ : std_logic;
SIGNAL \inst1|Equal0~3_combout\ : std_logic;
SIGNAL \inst1|Equal0~2_combout\ : std_logic;
SIGNAL \inst1|Equal0~4_combout\ : std_logic;
SIGNAL \inst1|cuenta~5_combout\ : std_logic;
SIGNAL \inst1|Add0~1\ : std_logic;
SIGNAL \inst1|Add0~2_combout\ : std_logic;
SIGNAL \inst1|Equal0~5_combout\ : std_logic;
SIGNAL \inst1|Equal0~6_combout\ : std_logic;
SIGNAL \inst1|Equal0~7_combout\ : std_logic;
SIGNAL \inst1|salida~0_combout\ : std_logic;
SIGNAL \inst1|salida~feeder_combout\ : std_logic;
SIGNAL \inst1|salida~q\ : std_logic;
SIGNAL \inst1|salida~clkctrl_outclk\ : std_logic;
SIGNAL \inst|B_aux[0]~feeder_combout\ : std_logic;
SIGNAL \down~input_o\ : std_logic;
SIGNAL \right~input_o\ : std_logic;
SIGNAL \up~input_o\ : std_logic;
SIGNAL \left~input_o\ : std_logic;
SIGNAL \inst|deb1|enable~0_combout\ : std_logic;
SIGNAL \inst|deb1|Add0~0_combout\ : std_logic;
SIGNAL \inst|deb1|cont~1_combout\ : std_logic;
SIGNAL \inst|deb1|Add0~1\ : std_logic;
SIGNAL \inst|deb1|Add0~2_combout\ : std_logic;
SIGNAL \inst|deb1|Add0~3\ : std_logic;
SIGNAL \inst|deb1|Add0~4_combout\ : std_logic;
SIGNAL \inst|deb1|Add0~5\ : std_logic;
SIGNAL \inst|deb1|Add0~6_combout\ : std_logic;
SIGNAL \inst|deb1|cont~0_combout\ : std_logic;
SIGNAL \inst|deb1|Equal0~0_combout\ : std_logic;
SIGNAL \inst|deb1|Add0~7\ : std_logic;
SIGNAL \inst|deb1|Add0~8_combout\ : std_logic;
SIGNAL \inst|deb1|cont~2_combout\ : std_logic;
SIGNAL \inst|deb1|Add0~9\ : std_logic;
SIGNAL \inst|deb1|Add0~10_combout\ : std_logic;
SIGNAL \inst|deb1|cont~3_combout\ : std_logic;
SIGNAL \inst|deb1|Add0~11\ : std_logic;
SIGNAL \inst|deb1|Add0~12_combout\ : std_logic;
SIGNAL \inst|deb1|Add0~13\ : std_logic;
SIGNAL \inst|deb1|Add0~14_combout\ : std_logic;
SIGNAL \inst|deb1|cont~4_combout\ : std_logic;
SIGNAL \inst|deb1|Add0~15\ : std_logic;
SIGNAL \inst|deb1|Add0~16_combout\ : std_logic;
SIGNAL \inst|deb1|cont~5_combout\ : std_logic;
SIGNAL \inst|deb1|Add0~17\ : std_logic;
SIGNAL \inst|deb1|Add0~18_combout\ : std_logic;
SIGNAL \inst|deb1|cont~6_combout\ : std_logic;
SIGNAL \inst|deb1|Add0~19\ : std_logic;
SIGNAL \inst|deb1|Add0~20_combout\ : std_logic;
SIGNAL \inst|deb1|Add0~21\ : std_logic;
SIGNAL \inst|deb1|Add0~22_combout\ : std_logic;
SIGNAL \inst|deb1|cont~7_combout\ : std_logic;
SIGNAL \inst|deb1|Add0~23\ : std_logic;
SIGNAL \inst|deb1|Add0~24_combout\ : std_logic;
SIGNAL \inst|deb1|Equal0~1_combout\ : std_logic;
SIGNAL \inst|deb1|Equal0~2_combout\ : std_logic;
SIGNAL \inst|deb1|Equal0~3_combout\ : std_logic;
SIGNAL \inst|deb1|enable~1_combout\ : std_logic;
SIGNAL \inst|deb1|enable~q\ : std_logic;
SIGNAL \inst|deb1|s3~0_combout\ : std_logic;
SIGNAL \inst|deb1|s3~q\ : std_logic;
SIGNAL \inst|player1~2_combout\ : std_logic;
SIGNAL \inst|deb1|s4~0_combout\ : std_logic;
SIGNAL \inst|deb1|s4~q\ : std_logic;
SIGNAL \inst|player1[7]~3_combout\ : std_logic;
SIGNAL \inst|player1~5_combout\ : std_logic;
SIGNAL \inst|player1~7_combout\ : std_logic;
SIGNAL \inst|player1~9_combout\ : std_logic;
SIGNAL \inst|player1~10_combout\ : std_logic;
SIGNAL \inst|player1~8_combout\ : std_logic;
SIGNAL \inst|player1~6_combout\ : std_logic;
SIGNAL \inst|player1~4_combout\ : std_logic;
SIGNAL \inst|player1~0_combout\ : std_logic;
SIGNAL \inst|player1~1_combout\ : std_logic;
SIGNAL \inst|f_aux[1]~feeder_combout\ : std_logic;
SIGNAL \inst|camb_player~0_combout\ : std_logic;
SIGNAL \inst|camb_player~q\ : std_logic;
SIGNAL \inst|f_aux[0]~feeder_combout\ : std_logic;
SIGNAL \inst|G_aux[1]~feeder_combout\ : std_logic;
SIGNAL \inst|G_aux[0]~0_combout\ : std_logic;
SIGNAL \inst|R_aux[0]~feeder_combout\ : std_logic;
SIGNAL \inst|B_aux\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|f_aux\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|G_aux\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|R_aux\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|player1\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \inst1|cuenta\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \inst|deb1|cont\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst|ALT_INV_player1\ : std_logic_vector(8 DOWNTO 8);
SIGNAL \inst|ALT_INV_G_aux\ : std_logic_vector(1 DOWNTO 1);
SIGNAL \inst|ALT_INV_f_aux\ : std_logic_vector(0 DOWNTO 0);

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
ww_clk <= clk;
ww_rst <= rst;
filas <= ww_filas;
G <= ww_G;
R <= ww_R;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst1|salida~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst1|salida~q\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\inst|ALT_INV_player1\(8) <= NOT \inst|player1\(8);
\inst|ALT_INV_G_aux\(1) <= NOT \inst|G_aux\(1);
\inst|ALT_INV_f_aux\(0) <= NOT \inst|f_aux\(0);
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
	i => VCC,
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
	i => VCC,
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
	i => VCC,
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
	i => VCC,
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
	i => VCC,
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
	i => \inst|B_aux\(0),
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => \inst|f_aux\(1),
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
	i => \inst|ALT_INV_f_aux\(0),
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
	i => VCC,
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
	i => VCC,
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
	i => VCC,
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
	i => VCC,
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
	i => \inst|ALT_INV_G_aux\(1),
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
	i => \inst|G_aux\(0),
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
	i => VCC,
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
	i => VCC,
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
	i => VCC,
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
	i => VCC,
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
	i => VCC,
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
	i => VCC,
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
	i => VCC,
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
	i => \inst|R_aux\(0),
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
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cuenta\(0),
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
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|cuenta\(3),
	datad => VCC,
	cin => \inst1|Add0~5\,
	combout => \inst1|Add0~6_combout\,
	cout => \inst1|Add0~7\);

-- Location: LCCOMB_X32_Y6_N0
\inst1|cuenta~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|cuenta~4_combout\ = (\inst1|Add0~6_combout\ & ((!\inst1|Equal0~4_combout\) # (!\inst1|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Equal0~7_combout\,
	datac => \inst1|Equal0~4_combout\,
	datad => \inst1|Add0~6_combout\,
	combout => \inst1|cuenta~4_combout\);

-- Location: FF_X32_Y6_N1
\inst1|cuenta[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|cuenta~4_combout\,
	clrn => \rst~input_o\,
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
-- \inst1|cuenta~3_combout\ = (\inst1|Add0~14_combout\ & ((!\inst1|Equal0~4_combout\) # (!\inst1|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Equal0~7_combout\,
	datac => \inst1|Equal0~4_combout\,
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
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Equal0~7_combout\,
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
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Equal0~7_combout\,
	datac => \inst1|Equal0~4_combout\,
	datad => \inst1|Add0~18_combout\,
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

-- Location: LCCOMB_X33_Y6_N28
\inst1|cuenta~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|cuenta~0_combout\ = (\inst1|Add0~24_combout\ & ((!\inst1|Equal0~4_combout\) # (!\inst1|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Equal0~7_combout\,
	datac => \inst1|Equal0~4_combout\,
	datad => \inst1|Add0~24_combout\,
	combout => \inst1|cuenta~0_combout\);

-- Location: FF_X33_Y6_N29
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
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cuenta\(16),
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
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cuenta\(19),
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
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|cuenta\(21),
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
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cuenta\(24),
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
-- \inst1|Equal0~0_combout\ = (!\inst1|cuenta\(24) & (!\inst1|cuenta\(22) & (!\inst1|cuenta\(25) & !\inst1|cuenta\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cuenta\(24),
	datab => \inst1|cuenta\(22),
	datac => \inst1|cuenta\(25),
	datad => \inst1|cuenta\(23),
	combout => \inst1|Equal0~0_combout\);

-- Location: LCCOMB_X32_Y5_N28
\inst1|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal0~1_combout\ = (!\inst1|cuenta\(19) & (!\inst1|cuenta\(21) & (!\inst1|cuenta\(20) & !\inst1|cuenta\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cuenta\(19),
	datab => \inst1|cuenta\(21),
	datac => \inst1|cuenta\(20),
	datad => \inst1|cuenta\(18),
	combout => \inst1|Equal0~1_combout\);

-- Location: LCCOMB_X33_Y6_N22
\inst1|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal0~3_combout\ = (!\inst1|cuenta\(10) & (\inst1|cuenta\(12) & (!\inst1|cuenta\(13) & !\inst1|cuenta\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cuenta\(10),
	datab => \inst1|cuenta\(12),
	datac => \inst1|cuenta\(13),
	datad => \inst1|cuenta\(11),
	combout => \inst1|Equal0~3_combout\);

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
-- \inst1|Equal0~4_combout\ = (\inst1|Equal0~0_combout\ & (\inst1|Equal0~1_combout\ & (\inst1|Equal0~3_combout\ & \inst1|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal0~0_combout\,
	datab => \inst1|Equal0~1_combout\,
	datac => \inst1|Equal0~3_combout\,
	datad => \inst1|Equal0~2_combout\,
	combout => \inst1|Equal0~4_combout\);

-- Location: LCCOMB_X33_Y6_N30
\inst1|cuenta~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|cuenta~5_combout\ = (\inst1|Add0~0_combout\ & ((!\inst1|Equal0~4_combout\) # (!\inst1|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Add0~0_combout\,
	datac => \inst1|Equal0~7_combout\,
	datad => \inst1|Equal0~4_combout\,
	combout => \inst1|cuenta~5_combout\);

-- Location: FF_X32_Y6_N31
\inst1|cuenta[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst1|cuenta~5_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
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

-- Location: LCCOMB_X33_Y6_N18
\inst1|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal0~5_combout\ = (\inst1|cuenta\(7) & (\inst1|cuenta\(9) & (\inst1|cuenta\(8) & !\inst1|cuenta\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cuenta\(7),
	datab => \inst1|cuenta\(9),
	datac => \inst1|cuenta\(8),
	datad => \inst1|cuenta\(6),
	combout => \inst1|Equal0~5_combout\);

-- Location: LCCOMB_X33_Y6_N16
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

-- Location: LCCOMB_X33_Y6_N14
\inst1|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal0~7_combout\ = (!\inst1|cuenta\(1) & (\inst1|Equal0~5_combout\ & (!\inst1|cuenta\(0) & \inst1|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cuenta\(1),
	datab => \inst1|Equal0~5_combout\,
	datac => \inst1|cuenta\(0),
	datad => \inst1|Equal0~6_combout\,
	combout => \inst1|Equal0~7_combout\);

-- Location: LCCOMB_X33_Y6_N26
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

-- Location: LCCOMB_X33_Y6_N10
\inst1|salida~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|salida~feeder_combout\ = \inst1|salida~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|salida~0_combout\,
	combout => \inst1|salida~feeder_combout\);

-- Location: FF_X33_Y6_N11
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

-- Location: CLKCTRL_G6
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

-- Location: LCCOMB_X17_Y7_N24
\inst|B_aux[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|B_aux[0]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \inst|B_aux[0]~feeder_combout\);

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

-- Location: LCCOMB_X17_Y3_N8
\inst|deb1|enable~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|deb1|enable~0_combout\ = (\down~input_o\) # ((\right~input_o\) # ((\up~input_o\) # (\left~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \down~input_o\,
	datab => \right~input_o\,
	datac => \up~input_o\,
	datad => \left~input_o\,
	combout => \inst|deb1|enable~0_combout\);

-- Location: LCCOMB_X13_Y3_N4
\inst|deb1|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|deb1|Add0~0_combout\ = \inst|deb1|cont\(0) $ (VCC)
-- \inst|deb1|Add0~1\ = CARRY(\inst|deb1|cont\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|deb1|cont\(0),
	datad => VCC,
	combout => \inst|deb1|Add0~0_combout\,
	cout => \inst|deb1|Add0~1\);

-- Location: LCCOMB_X14_Y3_N10
\inst|deb1|cont~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|deb1|cont~1_combout\ = (\inst|deb1|Add0~0_combout\ & !\inst|deb1|Equal0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|deb1|Add0~0_combout\,
	datad => \inst|deb1|Equal0~3_combout\,
	combout => \inst|deb1|cont~1_combout\);

-- Location: FF_X13_Y3_N21
\inst|deb1|cont[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|salida~clkctrl_outclk\,
	asdata => \inst|deb1|cont~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|deb1|cont\(0));

-- Location: LCCOMB_X13_Y3_N6
\inst|deb1|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|deb1|Add0~2_combout\ = (\inst|deb1|cont\(1) & (!\inst|deb1|Add0~1\)) # (!\inst|deb1|cont\(1) & ((\inst|deb1|Add0~1\) # (GND)))
-- \inst|deb1|Add0~3\ = CARRY((!\inst|deb1|Add0~1\) # (!\inst|deb1|cont\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|deb1|cont\(1),
	datad => VCC,
	cin => \inst|deb1|Add0~1\,
	combout => \inst|deb1|Add0~2_combout\,
	cout => \inst|deb1|Add0~3\);

-- Location: FF_X13_Y3_N7
\inst|deb1|cont[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|salida~clkctrl_outclk\,
	d => \inst|deb1|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|deb1|cont\(1));

-- Location: LCCOMB_X13_Y3_N8
\inst|deb1|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|deb1|Add0~4_combout\ = (\inst|deb1|cont\(2) & (\inst|deb1|Add0~3\ $ (GND))) # (!\inst|deb1|cont\(2) & (!\inst|deb1|Add0~3\ & VCC))
-- \inst|deb1|Add0~5\ = CARRY((\inst|deb1|cont\(2) & !\inst|deb1|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|deb1|cont\(2),
	datad => VCC,
	cin => \inst|deb1|Add0~3\,
	combout => \inst|deb1|Add0~4_combout\,
	cout => \inst|deb1|Add0~5\);

-- Location: FF_X13_Y3_N9
\inst|deb1|cont[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|salida~clkctrl_outclk\,
	d => \inst|deb1|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|deb1|cont\(2));

-- Location: LCCOMB_X13_Y3_N10
\inst|deb1|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|deb1|Add0~6_combout\ = (\inst|deb1|cont\(3) & (!\inst|deb1|Add0~5\)) # (!\inst|deb1|cont\(3) & ((\inst|deb1|Add0~5\) # (GND)))
-- \inst|deb1|Add0~7\ = CARRY((!\inst|deb1|Add0~5\) # (!\inst|deb1|cont\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|deb1|cont\(3),
	datad => VCC,
	cin => \inst|deb1|Add0~5\,
	combout => \inst|deb1|Add0~6_combout\,
	cout => \inst|deb1|Add0~7\);

-- Location: LCCOMB_X13_Y3_N0
\inst|deb1|cont~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|deb1|cont~0_combout\ = (!\inst|deb1|Equal0~3_combout\ & \inst|deb1|Add0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|deb1|Equal0~3_combout\,
	datad => \inst|deb1|Add0~6_combout\,
	combout => \inst|deb1|cont~0_combout\);

-- Location: FF_X13_Y3_N1
\inst|deb1|cont[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|salida~clkctrl_outclk\,
	d => \inst|deb1|cont~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|deb1|cont\(3));

-- Location: LCCOMB_X14_Y3_N30
\inst|deb1|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|deb1|Equal0~0_combout\ = (!\inst|deb1|cont\(2) & (!\inst|deb1|cont\(1) & (\inst|deb1|cont\(3) & !\inst|deb1|cont\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|deb1|cont\(2),
	datab => \inst|deb1|cont\(1),
	datac => \inst|deb1|cont\(3),
	datad => \inst|deb1|cont\(0),
	combout => \inst|deb1|Equal0~0_combout\);

-- Location: LCCOMB_X13_Y3_N12
\inst|deb1|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|deb1|Add0~8_combout\ = (\inst|deb1|cont\(4) & (\inst|deb1|Add0~7\ $ (GND))) # (!\inst|deb1|cont\(4) & (!\inst|deb1|Add0~7\ & VCC))
-- \inst|deb1|Add0~9\ = CARRY((\inst|deb1|cont\(4) & !\inst|deb1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|deb1|cont\(4),
	datad => VCC,
	cin => \inst|deb1|Add0~7\,
	combout => \inst|deb1|Add0~8_combout\,
	cout => \inst|deb1|Add0~9\);

-- Location: LCCOMB_X13_Y3_N30
\inst|deb1|cont~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|deb1|cont~2_combout\ = (!\inst|deb1|Equal0~3_combout\ & \inst|deb1|Add0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|deb1|Equal0~3_combout\,
	datad => \inst|deb1|Add0~8_combout\,
	combout => \inst|deb1|cont~2_combout\);

-- Location: FF_X13_Y3_N31
\inst|deb1|cont[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|salida~clkctrl_outclk\,
	d => \inst|deb1|cont~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|deb1|cont\(4));

-- Location: LCCOMB_X13_Y3_N14
\inst|deb1|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|deb1|Add0~10_combout\ = (\inst|deb1|cont\(5) & (!\inst|deb1|Add0~9\)) # (!\inst|deb1|cont\(5) & ((\inst|deb1|Add0~9\) # (GND)))
-- \inst|deb1|Add0~11\ = CARRY((!\inst|deb1|Add0~9\) # (!\inst|deb1|cont\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|deb1|cont\(5),
	datad => VCC,
	cin => \inst|deb1|Add0~9\,
	combout => \inst|deb1|Add0~10_combout\,
	cout => \inst|deb1|Add0~11\);

-- Location: LCCOMB_X14_Y3_N20
\inst|deb1|cont~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|deb1|cont~3_combout\ = (!\inst|deb1|Equal0~3_combout\ & \inst|deb1|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|deb1|Equal0~3_combout\,
	datad => \inst|deb1|Add0~10_combout\,
	combout => \inst|deb1|cont~3_combout\);

-- Location: FF_X14_Y3_N21
\inst|deb1|cont[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|salida~clkctrl_outclk\,
	d => \inst|deb1|cont~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|deb1|cont\(5));

-- Location: LCCOMB_X13_Y3_N16
\inst|deb1|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|deb1|Add0~12_combout\ = (\inst|deb1|cont\(6) & (\inst|deb1|Add0~11\ $ (GND))) # (!\inst|deb1|cont\(6) & (!\inst|deb1|Add0~11\ & VCC))
-- \inst|deb1|Add0~13\ = CARRY((\inst|deb1|cont\(6) & !\inst|deb1|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|deb1|cont\(6),
	datad => VCC,
	cin => \inst|deb1|Add0~11\,
	combout => \inst|deb1|Add0~12_combout\,
	cout => \inst|deb1|Add0~13\);

-- Location: FF_X13_Y3_N17
\inst|deb1|cont[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|salida~clkctrl_outclk\,
	d => \inst|deb1|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|deb1|cont\(6));

-- Location: LCCOMB_X13_Y3_N18
\inst|deb1|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|deb1|Add0~14_combout\ = (\inst|deb1|cont\(7) & (!\inst|deb1|Add0~13\)) # (!\inst|deb1|cont\(7) & ((\inst|deb1|Add0~13\) # (GND)))
-- \inst|deb1|Add0~15\ = CARRY((!\inst|deb1|Add0~13\) # (!\inst|deb1|cont\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|deb1|cont\(7),
	datad => VCC,
	cin => \inst|deb1|Add0~13\,
	combout => \inst|deb1|Add0~14_combout\,
	cout => \inst|deb1|Add0~15\);

-- Location: LCCOMB_X14_Y3_N22
\inst|deb1|cont~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|deb1|cont~4_combout\ = (!\inst|deb1|Equal0~3_combout\ & \inst|deb1|Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|deb1|Equal0~3_combout\,
	datad => \inst|deb1|Add0~14_combout\,
	combout => \inst|deb1|cont~4_combout\);

-- Location: FF_X14_Y3_N23
\inst|deb1|cont[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|salida~clkctrl_outclk\,
	d => \inst|deb1|cont~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|deb1|cont\(7));

-- Location: LCCOMB_X13_Y3_N20
\inst|deb1|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|deb1|Add0~16_combout\ = (\inst|deb1|cont\(8) & (\inst|deb1|Add0~15\ $ (GND))) # (!\inst|deb1|cont\(8) & (!\inst|deb1|Add0~15\ & VCC))
-- \inst|deb1|Add0~17\ = CARRY((\inst|deb1|cont\(8) & !\inst|deb1|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|deb1|cont\(8),
	datad => VCC,
	cin => \inst|deb1|Add0~15\,
	combout => \inst|deb1|Add0~16_combout\,
	cout => \inst|deb1|Add0~17\);

-- Location: LCCOMB_X13_Y3_N2
\inst|deb1|cont~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|deb1|cont~5_combout\ = (!\inst|deb1|Equal0~3_combout\ & \inst|deb1|Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|deb1|Equal0~3_combout\,
	datac => \inst|deb1|Add0~16_combout\,
	combout => \inst|deb1|cont~5_combout\);

-- Location: FF_X13_Y3_N3
\inst|deb1|cont[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|salida~clkctrl_outclk\,
	d => \inst|deb1|cont~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|deb1|cont\(8));

-- Location: LCCOMB_X13_Y3_N22
\inst|deb1|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|deb1|Add0~18_combout\ = (\inst|deb1|cont\(9) & (!\inst|deb1|Add0~17\)) # (!\inst|deb1|cont\(9) & ((\inst|deb1|Add0~17\) # (GND)))
-- \inst|deb1|Add0~19\ = CARRY((!\inst|deb1|Add0~17\) # (!\inst|deb1|cont\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|deb1|cont\(9),
	datad => VCC,
	cin => \inst|deb1|Add0~17\,
	combout => \inst|deb1|Add0~18_combout\,
	cout => \inst|deb1|Add0~19\);

-- Location: LCCOMB_X14_Y3_N2
\inst|deb1|cont~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|deb1|cont~6_combout\ = (!\inst|deb1|Equal0~3_combout\ & \inst|deb1|Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|deb1|Equal0~3_combout\,
	datad => \inst|deb1|Add0~18_combout\,
	combout => \inst|deb1|cont~6_combout\);

-- Location: FF_X14_Y3_N3
\inst|deb1|cont[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|salida~clkctrl_outclk\,
	d => \inst|deb1|cont~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|deb1|cont\(9));

-- Location: LCCOMB_X13_Y3_N24
\inst|deb1|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|deb1|Add0~20_combout\ = (\inst|deb1|cont\(10) & (\inst|deb1|Add0~19\ $ (GND))) # (!\inst|deb1|cont\(10) & (!\inst|deb1|Add0~19\ & VCC))
-- \inst|deb1|Add0~21\ = CARRY((\inst|deb1|cont\(10) & !\inst|deb1|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|deb1|cont\(10),
	datad => VCC,
	cin => \inst|deb1|Add0~19\,
	combout => \inst|deb1|Add0~20_combout\,
	cout => \inst|deb1|Add0~21\);

-- Location: FF_X13_Y3_N25
\inst|deb1|cont[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|salida~clkctrl_outclk\,
	d => \inst|deb1|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|deb1|cont\(10));

-- Location: LCCOMB_X13_Y3_N26
\inst|deb1|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|deb1|Add0~22_combout\ = (\inst|deb1|cont\(11) & (!\inst|deb1|Add0~21\)) # (!\inst|deb1|cont\(11) & ((\inst|deb1|Add0~21\) # (GND)))
-- \inst|deb1|Add0~23\ = CARRY((!\inst|deb1|Add0~21\) # (!\inst|deb1|cont\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|deb1|cont\(11),
	datad => VCC,
	cin => \inst|deb1|Add0~21\,
	combout => \inst|deb1|Add0~22_combout\,
	cout => \inst|deb1|Add0~23\);

-- Location: LCCOMB_X14_Y3_N4
\inst|deb1|cont~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|deb1|cont~7_combout\ = (\inst|deb1|Add0~22_combout\ & !\inst|deb1|Equal0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|deb1|Add0~22_combout\,
	datad => \inst|deb1|Equal0~3_combout\,
	combout => \inst|deb1|cont~7_combout\);

-- Location: FF_X14_Y3_N5
\inst|deb1|cont[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|salida~clkctrl_outclk\,
	d => \inst|deb1|cont~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|deb1|cont\(11));

-- Location: LCCOMB_X13_Y3_N28
\inst|deb1|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|deb1|Add0~24_combout\ = \inst|deb1|Add0~23\ $ (!\inst|deb1|cont\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|deb1|cont\(12),
	cin => \inst|deb1|Add0~23\,
	combout => \inst|deb1|Add0~24_combout\);

-- Location: FF_X13_Y3_N29
\inst|deb1|cont[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|salida~clkctrl_outclk\,
	d => \inst|deb1|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|deb1|cont\(12));

-- Location: LCCOMB_X14_Y3_N8
\inst|deb1|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|deb1|Equal0~1_combout\ = (\inst|deb1|cont\(7) & (\inst|deb1|cont\(5) & (!\inst|deb1|cont\(6) & \inst|deb1|cont\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|deb1|cont\(7),
	datab => \inst|deb1|cont\(5),
	datac => \inst|deb1|cont\(6),
	datad => \inst|deb1|cont\(4),
	combout => \inst|deb1|Equal0~1_combout\);

-- Location: LCCOMB_X14_Y3_N18
\inst|deb1|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|deb1|Equal0~2_combout\ = (\inst|deb1|cont\(8) & (\inst|deb1|cont\(9) & (\inst|deb1|cont\(11) & !\inst|deb1|cont\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|deb1|cont\(8),
	datab => \inst|deb1|cont\(9),
	datac => \inst|deb1|cont\(11),
	datad => \inst|deb1|cont\(10),
	combout => \inst|deb1|Equal0~2_combout\);

-- Location: LCCOMB_X14_Y3_N12
\inst|deb1|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|deb1|Equal0~3_combout\ = (\inst|deb1|Equal0~0_combout\ & (!\inst|deb1|cont\(12) & (\inst|deb1|Equal0~1_combout\ & \inst|deb1|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|deb1|Equal0~0_combout\,
	datab => \inst|deb1|cont\(12),
	datac => \inst|deb1|Equal0~1_combout\,
	datad => \inst|deb1|Equal0~2_combout\,
	combout => \inst|deb1|Equal0~3_combout\);

-- Location: LCCOMB_X14_Y3_N24
\inst|deb1|enable~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|deb1|enable~1_combout\ = (!\inst|deb1|Equal0~3_combout\ & ((\inst|deb1|enable~0_combout\) # (\inst|deb1|enable~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|deb1|enable~0_combout\,
	datac => \inst|deb1|enable~q\,
	datad => \inst|deb1|Equal0~3_combout\,
	combout => \inst|deb1|enable~1_combout\);

-- Location: FF_X14_Y3_N25
\inst|deb1|enable\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|salida~clkctrl_outclk\,
	d => \inst|deb1|enable~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|deb1|enable~q\);

-- Location: LCCOMB_X17_Y3_N2
\inst|deb1|s3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|deb1|s3~0_combout\ = (!\inst|deb1|enable~q\ & \left~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|deb1|enable~q\,
	datad => \left~input_o\,
	combout => \inst|deb1|s3~0_combout\);

-- Location: FF_X17_Y3_N3
\inst|deb1|s3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|salida~clkctrl_outclk\,
	d => \inst|deb1|s3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|deb1|s3~q\);

-- Location: LCCOMB_X17_Y3_N6
\inst|player1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|player1~2_combout\ = (\inst|deb1|s3~q\ & ((!\inst|player1\(8)))) # (!\inst|deb1|s3~q\ & (\inst|player1\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|player1\(1),
	datac => \inst|player1\(8),
	datad => \inst|deb1|s3~q\,
	combout => \inst|player1~2_combout\);

-- Location: LCCOMB_X17_Y3_N4
\inst|deb1|s4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|deb1|s4~0_combout\ = (\right~input_o\ & !\inst|deb1|enable~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \right~input_o\,
	datac => \inst|deb1|enable~q\,
	combout => \inst|deb1|s4~0_combout\);

-- Location: FF_X17_Y3_N5
\inst|deb1|s4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|salida~clkctrl_outclk\,
	d => \inst|deb1|s4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|deb1|s4~q\);

-- Location: LCCOMB_X17_Y3_N18
\inst|player1[7]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|player1[7]~3_combout\ = (\inst|deb1|s4~q\) # (\inst|deb1|s3~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|deb1|s4~q\,
	datad => \inst|deb1|s3~q\,
	combout => \inst|player1[7]~3_combout\);

-- Location: FF_X17_Y3_N7
\inst|player1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|salida~clkctrl_outclk\,
	d => \inst|player1~2_combout\,
	ena => \inst|player1[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|player1\(0));

-- Location: LCCOMB_X17_Y3_N20
\inst|player1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|player1~5_combout\ = (\inst|deb1|s3~q\ & (\inst|player1\(0))) # (!\inst|deb1|s3~q\ & ((\inst|player1\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|player1\(0),
	datac => \inst|player1\(2),
	datad => \inst|deb1|s3~q\,
	combout => \inst|player1~5_combout\);

-- Location: FF_X17_Y3_N21
\inst|player1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|salida~clkctrl_outclk\,
	d => \inst|player1~5_combout\,
	ena => \inst|player1[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|player1\(1));

-- Location: LCCOMB_X17_Y3_N26
\inst|player1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|player1~7_combout\ = (\inst|deb1|s3~q\ & ((\inst|player1\(1)))) # (!\inst|deb1|s3~q\ & (\inst|player1\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|player1\(3),
	datac => \inst|deb1|s3~q\,
	datad => \inst|player1\(1),
	combout => \inst|player1~7_combout\);

-- Location: FF_X17_Y3_N27
\inst|player1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|salida~clkctrl_outclk\,
	d => \inst|player1~7_combout\,
	ena => \inst|player1[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|player1\(2));

-- Location: LCCOMB_X17_Y3_N24
\inst|player1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|player1~9_combout\ = (\inst|deb1|s3~q\ & ((\inst|player1\(2)))) # (!\inst|deb1|s3~q\ & (\inst|player1\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|player1\(4),
	datac => \inst|player1\(2),
	datad => \inst|deb1|s3~q\,
	combout => \inst|player1~9_combout\);

-- Location: FF_X17_Y3_N25
\inst|player1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|salida~clkctrl_outclk\,
	d => \inst|player1~9_combout\,
	ena => \inst|player1[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|player1\(3));

-- Location: LCCOMB_X17_Y3_N14
\inst|player1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|player1~10_combout\ = (\inst|deb1|s3~q\ & ((\inst|player1\(3)))) # (!\inst|deb1|s3~q\ & (\inst|player1\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|player1\(5),
	datab => \inst|player1\(3),
	datad => \inst|deb1|s3~q\,
	combout => \inst|player1~10_combout\);

-- Location: FF_X17_Y3_N15
\inst|player1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|salida~clkctrl_outclk\,
	d => \inst|player1~10_combout\,
	ena => \inst|player1[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|player1\(4));

-- Location: LCCOMB_X17_Y3_N10
\inst|player1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|player1~8_combout\ = (\inst|deb1|s3~q\ & ((\inst|player1\(4)))) # (!\inst|deb1|s3~q\ & (\inst|player1\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|player1\(6),
	datac => \inst|player1\(4),
	datad => \inst|deb1|s3~q\,
	combout => \inst|player1~8_combout\);

-- Location: FF_X17_Y3_N11
\inst|player1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|salida~clkctrl_outclk\,
	d => \inst|player1~8_combout\,
	ena => \inst|player1[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|player1\(5));

-- Location: LCCOMB_X17_Y3_N12
\inst|player1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|player1~6_combout\ = (\inst|deb1|s3~q\ & (\inst|player1\(5))) # (!\inst|deb1|s3~q\ & ((\inst|player1\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|player1\(5),
	datac => \inst|player1\(7),
	datad => \inst|deb1|s3~q\,
	combout => \inst|player1~6_combout\);

-- Location: FF_X17_Y3_N13
\inst|player1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|salida~clkctrl_outclk\,
	d => \inst|player1~6_combout\,
	ena => \inst|player1[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|player1\(6));

-- Location: LCCOMB_X17_Y3_N22
\inst|player1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|player1~4_combout\ = (\inst|deb1|s3~q\ & (\inst|player1\(6))) # (!\inst|deb1|s3~q\ & ((!\inst|player1\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|player1\(6),
	datab => \inst|deb1|s3~q\,
	datad => \inst|player1\(8),
	combout => \inst|player1~4_combout\);

-- Location: FF_X17_Y3_N23
\inst|player1[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|salida~clkctrl_outclk\,
	d => \inst|player1~4_combout\,
	ena => \inst|player1[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|player1\(7));

-- Location: LCCOMB_X17_Y3_N16
\inst|player1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|player1~0_combout\ = (!\inst|deb1|s3~q\ & ((\inst|deb1|s4~q\ & (\inst|player1\(0))) # (!\inst|deb1|s4~q\ & ((!\inst|player1\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|player1\(0),
	datab => \inst|player1\(8),
	datac => \inst|deb1|s4~q\,
	datad => \inst|deb1|s3~q\,
	combout => \inst|player1~0_combout\);

-- Location: LCCOMB_X17_Y3_N28
\inst|player1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|player1~1_combout\ = (!\inst|player1~0_combout\ & ((!\inst|player1\(7)) # (!\inst|deb1|s3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|deb1|s3~q\,
	datac => \inst|player1\(7),
	datad => \inst|player1~0_combout\,
	combout => \inst|player1~1_combout\);

-- Location: FF_X17_Y3_N29
\inst|player1[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|salida~clkctrl_outclk\,
	d => \inst|player1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|player1\(8));

-- Location: FF_X17_Y7_N25
\inst|B_aux[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|salida~clkctrl_outclk\,
	d => \inst|B_aux[0]~feeder_combout\,
	ena => \inst|ALT_INV_player1\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|B_aux\(0));

-- Location: LCCOMB_X13_Y7_N16
\inst|f_aux[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|f_aux[1]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \inst|f_aux[1]~feeder_combout\);

-- Location: FF_X13_Y7_N17
\inst|f_aux[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|salida~clkctrl_outclk\,
	d => \inst|f_aux[1]~feeder_combout\,
	ena => \inst|ALT_INV_player1\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|f_aux\(1));

-- Location: LCCOMB_X13_Y7_N18
\inst|camb_player~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|camb_player~0_combout\ = !\inst|camb_player~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|camb_player~q\,
	combout => \inst|camb_player~0_combout\);

-- Location: FF_X13_Y7_N19
\inst|camb_player\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|salida~clkctrl_outclk\,
	d => \inst|camb_player~0_combout\,
	ena => \inst|ALT_INV_player1\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|camb_player~q\);

-- Location: LCCOMB_X13_Y7_N22
\inst|f_aux[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|f_aux[0]~feeder_combout\ = \inst|camb_player~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|camb_player~q\,
	combout => \inst|f_aux[0]~feeder_combout\);

-- Location: FF_X13_Y7_N23
\inst|f_aux[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|salida~clkctrl_outclk\,
	d => \inst|f_aux[0]~feeder_combout\,
	ena => \inst|ALT_INV_player1\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|f_aux\(0));

-- Location: LCCOMB_X13_Y7_N0
\inst|G_aux[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|G_aux[1]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \inst|G_aux[1]~feeder_combout\);

-- Location: FF_X13_Y7_N1
\inst|G_aux[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|salida~clkctrl_outclk\,
	d => \inst|G_aux[1]~feeder_combout\,
	ena => \inst|ALT_INV_player1\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|G_aux\(1));

-- Location: LCCOMB_X13_Y7_N30
\inst|G_aux[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|G_aux[0]~0_combout\ = !\inst|camb_player~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|camb_player~q\,
	combout => \inst|G_aux[0]~0_combout\);

-- Location: FF_X13_Y7_N31
\inst|G_aux[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|salida~clkctrl_outclk\,
	d => \inst|G_aux[0]~0_combout\,
	ena => \inst|ALT_INV_player1\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|G_aux\(0));

-- Location: LCCOMB_X13_Y7_N24
\inst|R_aux[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|R_aux[0]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \inst|R_aux[0]~feeder_combout\);

-- Location: FF_X13_Y7_N25
\inst|R_aux[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|salida~clkctrl_outclk\,
	d => \inst|R_aux[0]~feeder_combout\,
	ena => \inst|ALT_INV_player1\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|R_aux\(0));

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


