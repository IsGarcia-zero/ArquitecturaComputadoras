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

-- DATE "10/30/2022 15:31:41"

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


LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	UAritmetica IS
    PORT (
	selector : IN std_logic_vector(1 DOWNTO 0);
	A : IN std_logic_vector(9 DOWNTO 0);
	B : IN std_logic_vector(9 DOWNTO 0);
	S : BUFFER std_logic_vector(9 DOWNTO 0);
	SalidaMux : BUFFER std_logic_vector(3 DOWNTO 0);
	Carry : BUFFER std_logic;
	Overflow : BUFFER std_logic;
	Zero : BUFFER std_logic;
	Sum : BUFFER std_logic;
	Cout : BUFFER std_logic
	);
END UAritmetica;

-- Design Ports Information
-- A[8]	=>  Location: PIN_80,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[9]	=>  Location: PIN_141,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[8]	=>  Location: PIN_64,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[9]	=>  Location: PIN_49,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[0]	=>  Location: PIN_126,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[1]	=>  Location: PIN_59,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[2]	=>  Location: PIN_58,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[3]	=>  Location: PIN_85,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[4]	=>  Location: PIN_127,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[5]	=>  Location: PIN_132,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[6]	=>  Location: PIN_135,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[7]	=>  Location: PIN_125,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[8]	=>  Location: PIN_98,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[9]	=>  Location: PIN_106,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SalidaMux[0]	=>  Location: PIN_110,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SalidaMux[1]	=>  Location: PIN_100,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SalidaMux[2]	=>  Location: PIN_66,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SalidaMux[3]	=>  Location: PIN_112,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Carry	=>  Location: PIN_133,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Overflow	=>  Location: PIN_128,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Zero	=>  Location: PIN_50,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum	=>  Location: PIN_119,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cout	=>  Location: PIN_111,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_84,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_104,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- selector[1]	=>  Location: PIN_105,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- selector[0]	=>  Location: PIN_83,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_99,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_120,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_86,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_60,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_87,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_103,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_54,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_129,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_124,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_55,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_121,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_113,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_114,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_115,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF UAritmetica IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_selector : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_A : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_S : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_SalidaMux : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Carry : std_logic;
SIGNAL ww_Overflow : std_logic;
SIGNAL ww_Zero : std_logic;
SIGNAL ww_Sum : std_logic;
SIGNAL ww_Cout : std_logic;
SIGNAL \A[8]~input_o\ : std_logic;
SIGNAL \A[9]~input_o\ : std_logic;
SIGNAL \B[8]~input_o\ : std_logic;
SIGNAL \B[9]~input_o\ : std_logic;
SIGNAL \S[0]~output_o\ : std_logic;
SIGNAL \S[1]~output_o\ : std_logic;
SIGNAL \S[2]~output_o\ : std_logic;
SIGNAL \S[3]~output_o\ : std_logic;
SIGNAL \S[4]~output_o\ : std_logic;
SIGNAL \S[5]~output_o\ : std_logic;
SIGNAL \S[6]~output_o\ : std_logic;
SIGNAL \S[7]~output_o\ : std_logic;
SIGNAL \S[8]~output_o\ : std_logic;
SIGNAL \S[9]~output_o\ : std_logic;
SIGNAL \SalidaMux[0]~output_o\ : std_logic;
SIGNAL \SalidaMux[1]~output_o\ : std_logic;
SIGNAL \SalidaMux[2]~output_o\ : std_logic;
SIGNAL \SalidaMux[3]~output_o\ : std_logic;
SIGNAL \Carry~output_o\ : std_logic;
SIGNAL \Overflow~output_o\ : std_logic;
SIGNAL \Zero~output_o\ : std_logic;
SIGNAL \Sum~output_o\ : std_logic;
SIGNAL \Cout~output_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \Suma|Sum1|S~0_combout\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \selector[0]~input_o\ : std_logic;
SIGNAL \selector[1]~input_o\ : std_logic;
SIGNAL \Mux9~2_combout\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \Res|Sum2|S~combout\ : std_logic;
SIGNAL \Suma|Sum2|S~combout\ : std_logic;
SIGNAL \Mux8~2_combout\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \Mul|Sum1|Sum1|Cout~0_combout\ : std_logic;
SIGNAL \Mul|Sum1|Sum2|Cout~0_combout\ : std_logic;
SIGNAL \Mul|Sum1|Sum3|Cout~0_combout\ : std_logic;
SIGNAL \Mul|Sum1|Sum4|Cout~0_combout\ : std_logic;
SIGNAL \Mul|Sum1|Sum5|S~combout\ : std_logic;
SIGNAL \Mux8~3_combout\ : std_logic;
SIGNAL \Res|Sum2|Cout~0_combout\ : std_logic;
SIGNAL \Suma|Sum2|Cout~0_combout\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \Res|Sum3|S~0_combout\ : std_logic;
SIGNAL \Mux7~2_combout\ : std_logic;
SIGNAL \Mul|Sum1|Sum2|S~combout\ : std_logic;
SIGNAL \Mul|Sum2|Sum1|Cout~0_combout\ : std_logic;
SIGNAL \Mul|Sum1|Sum3|S~combout\ : std_logic;
SIGNAL \Mul|Sum2|Sum2|Cout~0_combout\ : std_logic;
SIGNAL \Mul|Sum1|Sum4|S~combout\ : std_logic;
SIGNAL \Mul|Sum2|Sum3|Cout~0_combout\ : std_logic;
SIGNAL \Mul|Sum2|Sum4|Cout~0_combout\ : std_logic;
SIGNAL \Mul|Sum1|Sum5|Cout~0_combout\ : std_logic;
SIGNAL \Mul|Sum2|Sum5|S~combout\ : std_logic;
SIGNAL \Mux7~3_combout\ : std_logic;
SIGNAL \Res|Sum3|Cout~0_combout\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \Res|Sum4|S~0_combout\ : std_logic;
SIGNAL \Suma|Sum3|Cout~0_combout\ : std_logic;
SIGNAL \Mux6~1_combout\ : std_logic;
SIGNAL \Mux1~2_combout\ : std_logic;
SIGNAL \Mul|Sum2|Sum2|S~combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux6~2_combout\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \Res|Sum5|S~0_combout\ : std_logic;
SIGNAL \Suma|Sum4|Cout~0_combout\ : std_logic;
SIGNAL \Res|Sum5|S~combout\ : std_logic;
SIGNAL \Mux5~2_combout\ : std_logic;
SIGNAL \Mul|Sum2|Sum5|Cout~0_combout\ : std_logic;
SIGNAL \Mul|Sum2|Sum3|S~combout\ : std_logic;
SIGNAL \Mul|Sum3|Sum1|Cout~0_combout\ : std_logic;
SIGNAL \Mul|Sum3|Sum2|Cout~0_combout\ : std_logic;
SIGNAL \Mul|Sum2|Sum4|S~combout\ : std_logic;
SIGNAL \Mul|Sum3|Sum3|Cout~0_combout\ : std_logic;
SIGNAL \Mul|Sum3|Sum4|Cout~0_combout\ : std_logic;
SIGNAL \Mul|Sum3|Sum5|S~0_combout\ : std_logic;
SIGNAL \Mux5~3_combout\ : std_logic;
SIGNAL \Mul|Sum3|Sum2|S~combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Suma|Sum5|Cout~0_combout\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \Res|Sum4|Cout~0_combout\ : std_logic;
SIGNAL \Res|Sum5|Cout~0_combout\ : std_logic;
SIGNAL \Mux4~1_combout\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \Mux4~2_combout\ : std_logic;
SIGNAL \Mul|Sum3|Sum3|S~combout\ : std_logic;
SIGNAL \Mul|Sum4|Sum1|Cout~0_combout\ : std_logic;
SIGNAL \Mul|Sum4|Sum2|S~combout\ : std_logic;
SIGNAL \Res|Sum6|Cout~0_combout\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \Res|Sum7|S~0_combout\ : std_logic;
SIGNAL \Suma|Sum7|S~combout\ : std_logic;
SIGNAL \Mux3~2_combout\ : std_logic;
SIGNAL \Mux3~3_combout\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \Suma|Sum6|Cout~0_combout\ : std_logic;
SIGNAL \Suma|Sum7|Cout~0_combout\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \Suma|Sum8|S~combout\ : std_logic;
SIGNAL \Res|Sum7|Cout~0_combout\ : std_logic;
SIGNAL \Res|Sum8|S~combout\ : std_logic;
SIGNAL \Mux13~2_combout\ : std_logic;
SIGNAL \Mul|Sum3|Sum4|S~combout\ : std_logic;
SIGNAL \Mul|Sum4|Sum2|Cout~0_combout\ : std_logic;
SIGNAL \Mul|Sum4|Sum3|S~combout\ : std_logic;
SIGNAL \Mux2~2_combout\ : std_logic;
SIGNAL \Mul|Sum4|Sum3|Cout~0_combout\ : std_logic;
SIGNAL \Mul|Sum4|Sum4|S~combout\ : std_logic;
SIGNAL \Mux1~3_combout\ : std_logic;
SIGNAL \Mul|Sum3|Sum5|Cout~0_combout\ : std_logic;
SIGNAL \Mul|Sum4|Sum4|Cout~0_combout\ : std_logic;
SIGNAL \Mul|Sum4|Sum5|S~0_combout\ : std_logic;
SIGNAL \Mux0~2_combout\ : std_logic;
SIGNAL \Mux18~0_combout\ : std_logic;
SIGNAL \Mux16~0_combout\ : std_logic;
SIGNAL \Mux16~1_combout\ : std_logic;
SIGNAL \Mul|Sum4|Sum5|Cout~0_combout\ : std_logic;
SIGNAL \Mux10~2_combout\ : std_logic;
SIGNAL \Res|Sum8|Cout~0_combout\ : std_logic;
SIGNAL \Mux10~3_combout\ : std_logic;
SIGNAL \Mux10~4_combout\ : std_logic;
SIGNAL \Mux11~3_combout\ : std_logic;
SIGNAL \Mux11~2_combout\ : std_logic;
SIGNAL \Mux11~5_combout\ : std_logic;
SIGNAL \Mux11~4_combout\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \Mux12~1_combout\ : std_logic;
SIGNAL \Mux12~6_combout\ : std_logic;
SIGNAL \Mux12~7_combout\ : std_logic;
SIGNAL \Mux12~2_combout\ : std_logic;
SIGNAL \Mul|Sum1|Sum1|S~0_combout\ : std_logic;
SIGNAL \Mux12~3_combout\ : std_logic;
SIGNAL \Mux12~4_combout\ : std_logic;
SIGNAL \Mux12~5_combout\ : std_logic;
SIGNAL \Mux12~8_combout\ : std_logic;
SIGNAL \Mux12~15_combout\ : std_logic;
SIGNAL \Mux12~13_combout\ : std_logic;
SIGNAL \Mux12~14_combout\ : std_logic;
SIGNAL \Mux12~9_combout\ : std_logic;
SIGNAL \Mux12~10_combout\ : std_logic;
SIGNAL \Mux12~11_combout\ : std_logic;
SIGNAL \Mux12~12_combout\ : std_logic;
SIGNAL \Mux12~16_combout\ : std_logic;
SIGNAL \Mux12~17_combout\ : std_logic;
SIGNAL \Mux13~3_combout\ : std_logic;
SIGNAL \Mux14~0_combout\ : std_logic;
SIGNAL \Mul|Aux1\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \Mul|Salida\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \ALT_INV_Mux18~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_selector <= selector;
ww_A <= A;
ww_B <= B;
S <= ww_S;
SalidaMux <= ww_SalidaMux;
Carry <= ww_Carry;
Overflow <= ww_Overflow;
Zero <= ww_Zero;
Sum <= ww_Sum;
Cout <= ww_Cout;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_Mux18~0_combout\ <= NOT \Mux18~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X16_Y24_N2
\S[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux9~2_combout\,
	devoe => ww_devoe,
	o => \S[0]~output_o\);

-- Location: IOOBUF_X23_Y0_N16
\S[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux8~3_combout\,
	devoe => ww_devoe,
	o => \S[1]~output_o\);

-- Location: IOOBUF_X21_Y0_N9
\S[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux7~3_combout\,
	devoe => ww_devoe,
	o => \S[2]~output_o\);

-- Location: IOOBUF_X34_Y9_N9
\S[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux6~2_combout\,
	devoe => ww_devoe,
	o => \S[3]~output_o\);

-- Location: IOOBUF_X16_Y24_N9
\S[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~3_combout\,
	devoe => ww_devoe,
	o => \S[4]~output_o\);

-- Location: IOOBUF_X13_Y24_N16
\S[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~2_combout\,
	devoe => ww_devoe,
	o => \S[5]~output_o\);

-- Location: IOOBUF_X11_Y24_N16
\S[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~3_combout\,
	devoe => ww_devoe,
	o => \S[6]~output_o\);

-- Location: IOOBUF_X18_Y24_N23
\S[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~2_combout\,
	devoe => ww_devoe,
	o => \S[7]~output_o\);

-- Location: IOOBUF_X34_Y17_N23
\S[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~3_combout\,
	devoe => ww_devoe,
	o => \S[8]~output_o\);

-- Location: IOOBUF_X34_Y20_N9
\S[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~2_combout\,
	devoe => ww_devoe,
	o => \S[9]~output_o\);

-- Location: IOOBUF_X30_Y24_N2
\SalidaMux[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux18~0_combout\,
	devoe => ww_devoe,
	o => \SalidaMux[0]~output_o\);

-- Location: IOOBUF_X34_Y17_N2
\SalidaMux[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux16~0_combout\,
	devoe => ww_devoe,
	o => \SalidaMux[1]~output_o\);

-- Location: IOOBUF_X28_Y0_N2
\SalidaMux[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~2_combout\,
	devoe => ww_devoe,
	o => \SalidaMux[2]~output_o\);

-- Location: IOOBUF_X28_Y24_N2
\SalidaMux[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux16~1_combout\,
	devoe => ww_devoe,
	o => \SalidaMux[3]~output_o\);

-- Location: IOOBUF_X13_Y24_N23
\Carry~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux10~4_combout\,
	devoe => ww_devoe,
	o => \Carry~output_o\);

-- Location: IOOBUF_X16_Y24_N16
\Overflow~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux11~4_combout\,
	devoe => ww_devoe,
	o => \Overflow~output_o\);

-- Location: IOOBUF_X13_Y0_N2
\Zero~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux12~17_combout\,
	devoe => ww_devoe,
	o => \Zero~output_o\);

-- Location: IOOBUF_X23_Y24_N2
\Sum~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux13~3_combout\,
	devoe => ww_devoe,
	o => \Sum~output_o\);

-- Location: IOOBUF_X30_Y24_N23
\Cout~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux14~0_combout\,
	devoe => ww_devoe,
	o => \Cout~output_o\);

-- Location: IOIBUF_X34_Y9_N15
\A[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: IOIBUF_X34_Y17_N15
\B[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: LCCOMB_X23_Y14_N10
\Suma|Sum1|S~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Suma|Sum1|S~0_combout\ = \A[0]~input_o\ $ (\B[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datad => \B[0]~input_o\,
	combout => \Suma|Sum1|S~0_combout\);

-- Location: IOIBUF_X34_Y18_N1
\B[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: LCCOMB_X23_Y14_N24
\Mul|Salida[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mul|Salida\(0) = (\A[0]~input_o\ & \B[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datad => \B[4]~input_o\,
	combout => \Mul|Salida\(0));

-- Location: IOIBUF_X34_Y9_N22
\selector[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_selector(0),
	o => \selector[0]~input_o\);

-- Location: IOIBUF_X34_Y19_N15
\selector[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_selector(1),
	o => \selector[1]~input_o\);

-- Location: LCCOMB_X22_Y16_N2
\Mux9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~2_combout\ = (\selector[1]~input_o\ & (((\Mul|Salida\(0) & !\selector[0]~input_o\)))) # (!\selector[1]~input_o\ & (\Suma|Sum1|S~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Suma|Sum1|S~0_combout\,
	datab => \Mul|Salida\(0),
	datac => \selector[0]~input_o\,
	datad => \selector[1]~input_o\,
	combout => \Mux9~2_combout\);

-- Location: IOIBUF_X23_Y24_N8
\A[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: IOIBUF_X34_Y9_N1
\B[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: LCCOMB_X22_Y15_N2
\Res|Sum2|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \Res|Sum2|S~combout\ = \A[1]~input_o\ $ (\B[1]~input_o\ $ (((\A[0]~input_o\) # (!\B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \A[1]~input_o\,
	datac => \B[1]~input_o\,
	datad => \B[0]~input_o\,
	combout => \Res|Sum2|S~combout\);

-- Location: LCCOMB_X22_Y15_N0
\Suma|Sum2|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \Suma|Sum2|S~combout\ = \A[1]~input_o\ $ (\B[1]~input_o\ $ (((\A[0]~input_o\ & \B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \A[1]~input_o\,
	datac => \B[1]~input_o\,
	datad => \B[0]~input_o\,
	combout => \Suma|Sum2|S~combout\);

-- Location: LCCOMB_X22_Y13_N2
\Mux8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~2_combout\ = (!\selector[1]~input_o\ & ((\selector[0]~input_o\ & (!\Res|Sum2|S~combout\)) # (!\selector[0]~input_o\ & ((\Suma|Sum2|S~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selector[1]~input_o\,
	datab => \Res|Sum2|S~combout\,
	datac => \Suma|Sum2|S~combout\,
	datad => \selector[0]~input_o\,
	combout => \Mux8~2_combout\);

-- Location: IOIBUF_X23_Y0_N8
\B[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: LCCOMB_X22_Y15_N28
\Mul|Aux1[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mul|Aux1\(2) = (\B[3]~input_o\ & \A[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[3]~input_o\,
	datad => \A[0]~input_o\,
	combout => \Mul|Aux1\(2));

-- Location: IOIBUF_X34_Y10_N8
\B[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: LCCOMB_X22_Y15_N30
\Mul|Aux1[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mul|Aux1\(1) = (\B[2]~input_o\ & \A[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[2]~input_o\,
	datad => \A[0]~input_o\,
	combout => \Mul|Aux1\(1));

-- Location: LCCOMB_X22_Y15_N24
\Mul|Sum1|Sum1|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mul|Sum1|Sum1|Cout~0_combout\ = (\A[0]~input_o\ & (\A[1]~input_o\ & (\B[1]~input_o\ & \B[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \A[1]~input_o\,
	datac => \B[1]~input_o\,
	datad => \B[0]~input_o\,
	combout => \Mul|Sum1|Sum1|Cout~0_combout\);

-- Location: LCCOMB_X22_Y15_N18
\Mul|Sum1|Sum2|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mul|Sum1|Sum2|Cout~0_combout\ = (\Mul|Aux1\(1) & ((\Mul|Sum1|Sum1|Cout~0_combout\) # ((\B[1]~input_o\ & \A[1]~input_o\)))) # (!\Mul|Aux1\(1) & (\Mul|Sum1|Sum1|Cout~0_combout\ & (\B[1]~input_o\ & \A[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mul|Aux1\(1),
	datab => \Mul|Sum1|Sum1|Cout~0_combout\,
	datac => \B[1]~input_o\,
	datad => \A[1]~input_o\,
	combout => \Mul|Sum1|Sum2|Cout~0_combout\);

-- Location: LCCOMB_X22_Y15_N20
\Mul|Sum1|Sum3|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mul|Sum1|Sum3|Cout~0_combout\ = (\Mul|Aux1\(2) & ((\Mul|Sum1|Sum2|Cout~0_combout\) # ((\B[2]~input_o\ & \A[1]~input_o\)))) # (!\Mul|Aux1\(2) & (\Mul|Sum1|Sum2|Cout~0_combout\ & (\B[2]~input_o\ & \A[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mul|Aux1\(2),
	datab => \Mul|Sum1|Sum2|Cout~0_combout\,
	datac => \B[2]~input_o\,
	datad => \A[1]~input_o\,
	combout => \Mul|Sum1|Sum3|Cout~0_combout\);

-- Location: LCCOMB_X23_Y14_N28
\Mul|Sum1|Sum4|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mul|Sum1|Sum4|Cout~0_combout\ = (\Mul|Salida\(0) & ((\Mul|Sum1|Sum3|Cout~0_combout\) # ((\B[3]~input_o\ & \A[1]~input_o\)))) # (!\Mul|Salida\(0) & (\B[3]~input_o\ & (\A[1]~input_o\ & \Mul|Sum1|Sum3|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \Mul|Salida\(0),
	datac => \A[1]~input_o\,
	datad => \Mul|Sum1|Sum3|Cout~0_combout\,
	combout => \Mul|Sum1|Sum4|Cout~0_combout\);

-- Location: LCCOMB_X23_Y14_N6
\Mul|Sum1|Sum5|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mul|Sum1|Sum5|S~combout\ = \Mul|Sum1|Sum4|Cout~0_combout\ $ (((\A[1]~input_o\ & \B[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mul|Sum1|Sum4|Cout~0_combout\,
	datac => \A[1]~input_o\,
	datad => \B[4]~input_o\,
	combout => \Mul|Sum1|Sum5|S~combout\);

-- Location: LCCOMB_X22_Y13_N4
\Mux8~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~3_combout\ = (\Mux8~2_combout\) # ((\Mul|Sum1|Sum5|S~combout\ & (\selector[1]~input_o\ & !\selector[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux8~2_combout\,
	datab => \Mul|Sum1|Sum5|S~combout\,
	datac => \selector[1]~input_o\,
	datad => \selector[0]~input_o\,
	combout => \Mux8~3_combout\);

-- Location: LCCOMB_X22_Y13_N20
\Res|Sum2|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Res|Sum2|Cout~0_combout\ = (\B[1]~input_o\ & (\A[1]~input_o\ & ((\A[0]~input_o\) # (!\B[0]~input_o\)))) # (!\B[1]~input_o\ & ((\A[1]~input_o\) # ((\A[0]~input_o\) # (!\B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110101001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[1]~input_o\,
	datac => \B[0]~input_o\,
	datad => \A[0]~input_o\,
	combout => \Res|Sum2|Cout~0_combout\);

-- Location: LCCOMB_X22_Y13_N16
\Suma|Sum2|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Suma|Sum2|Cout~0_combout\ = (\B[1]~input_o\ & ((\A[1]~input_o\) # ((\B[0]~input_o\ & \A[0]~input_o\)))) # (!\B[1]~input_o\ & (\A[1]~input_o\ & (\B[0]~input_o\ & \A[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[1]~input_o\,
	datac => \B[0]~input_o\,
	datad => \A[0]~input_o\,
	combout => \Suma|Sum2|Cout~0_combout\);

-- Location: IOIBUF_X34_Y18_N15
\A[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: LCCOMB_X22_Y13_N14
\Res|Sum3|S~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Res|Sum3|S~0_combout\ = \A[2]~input_o\ $ (\B[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[2]~input_o\,
	datad => \B[2]~input_o\,
	combout => \Res|Sum3|S~0_combout\);

-- Location: LCCOMB_X22_Y13_N18
\Mux7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~2_combout\ = \Res|Sum3|S~0_combout\ $ (((\selector[0]~input_o\ & (!\Res|Sum2|Cout~0_combout\)) # (!\selector[0]~input_o\ & ((\Suma|Sum2|Cout~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Res|Sum2|Cout~0_combout\,
	datab => \Suma|Sum2|Cout~0_combout\,
	datac => \Res|Sum3|S~0_combout\,
	datad => \selector[0]~input_o\,
	combout => \Mux7~2_combout\);

-- Location: LCCOMB_X22_Y15_N8
\Mul|Sum1|Sum2|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mul|Sum1|Sum2|S~combout\ = \Mul|Aux1\(1) $ (\Mul|Sum1|Sum1|Cout~0_combout\ $ (((\B[1]~input_o\ & \A[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mul|Aux1\(1),
	datab => \Mul|Sum1|Sum1|Cout~0_combout\,
	datac => \B[1]~input_o\,
	datad => \A[1]~input_o\,
	combout => \Mul|Sum1|Sum2|S~combout\);

-- Location: LCCOMB_X22_Y15_N26
\Mul|Sum2|Sum1|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mul|Sum2|Sum1|Cout~0_combout\ = (\Mul|Sum1|Sum2|S~combout\ & (\A[2]~input_o\ & \B[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mul|Sum1|Sum2|S~combout\,
	datac => \A[2]~input_o\,
	datad => \B[0]~input_o\,
	combout => \Mul|Sum2|Sum1|Cout~0_combout\);

-- Location: LCCOMB_X22_Y15_N6
\Mul|Sum1|Sum3|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mul|Sum1|Sum3|S~combout\ = \Mul|Aux1\(2) $ (\Mul|Sum1|Sum2|Cout~0_combout\ $ (((\B[2]~input_o\ & \A[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mul|Aux1\(2),
	datab => \Mul|Sum1|Sum2|Cout~0_combout\,
	datac => \B[2]~input_o\,
	datad => \A[1]~input_o\,
	combout => \Mul|Sum1|Sum3|S~combout\);

-- Location: LCCOMB_X22_Y15_N12
\Mul|Sum2|Sum2|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mul|Sum2|Sum2|Cout~0_combout\ = (\Mul|Sum2|Sum1|Cout~0_combout\ & ((\Mul|Sum1|Sum3|S~combout\) # ((\B[1]~input_o\ & \A[2]~input_o\)))) # (!\Mul|Sum2|Sum1|Cout~0_combout\ & (\B[1]~input_o\ & (\A[2]~input_o\ & \Mul|Sum1|Sum3|S~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mul|Sum2|Sum1|Cout~0_combout\,
	datab => \B[1]~input_o\,
	datac => \A[2]~input_o\,
	datad => \Mul|Sum1|Sum3|S~combout\,
	combout => \Mul|Sum2|Sum2|Cout~0_combout\);

-- Location: LCCOMB_X23_Y14_N16
\Mul|Sum1|Sum4|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mul|Sum1|Sum4|S~combout\ = \Mul|Salida\(0) $ (\Mul|Sum1|Sum3|Cout~0_combout\ $ (((\B[3]~input_o\ & \A[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \Mul|Salida\(0),
	datac => \A[1]~input_o\,
	datad => \Mul|Sum1|Sum3|Cout~0_combout\,
	combout => \Mul|Sum1|Sum4|S~combout\);

-- Location: LCCOMB_X23_Y14_N26
\Mul|Sum2|Sum3|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mul|Sum2|Sum3|Cout~0_combout\ = (\Mul|Sum2|Sum2|Cout~0_combout\ & ((\Mul|Sum1|Sum4|S~combout\) # ((\A[2]~input_o\ & \B[2]~input_o\)))) # (!\Mul|Sum2|Sum2|Cout~0_combout\ & (\Mul|Sum1|Sum4|S~combout\ & (\A[2]~input_o\ & \B[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mul|Sum2|Sum2|Cout~0_combout\,
	datab => \Mul|Sum1|Sum4|S~combout\,
	datac => \A[2]~input_o\,
	datad => \B[2]~input_o\,
	combout => \Mul|Sum2|Sum3|Cout~0_combout\);

-- Location: LCCOMB_X23_Y14_N20
\Mul|Sum2|Sum4|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mul|Sum2|Sum4|Cout~0_combout\ = (\Mul|Sum2|Sum3|Cout~0_combout\ & ((\Mul|Sum1|Sum5|S~combout\) # ((\A[2]~input_o\ & \B[3]~input_o\)))) # (!\Mul|Sum2|Sum3|Cout~0_combout\ & (\Mul|Sum1|Sum5|S~combout\ & (\A[2]~input_o\ & \B[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mul|Sum2|Sum3|Cout~0_combout\,
	datab => \Mul|Sum1|Sum5|S~combout\,
	datac => \A[2]~input_o\,
	datad => \B[3]~input_o\,
	combout => \Mul|Sum2|Sum4|Cout~0_combout\);

-- Location: LCCOMB_X23_Y14_N14
\Mul|Sum1|Sum5|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mul|Sum1|Sum5|Cout~0_combout\ = (\Mul|Sum1|Sum4|Cout~0_combout\ & (\A[1]~input_o\ & \B[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mul|Sum1|Sum4|Cout~0_combout\,
	datac => \A[1]~input_o\,
	datad => \B[4]~input_o\,
	combout => \Mul|Sum1|Sum5|Cout~0_combout\);

-- Location: LCCOMB_X23_Y14_N8
\Mul|Sum2|Sum5|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mul|Sum2|Sum5|S~combout\ = \Mul|Sum2|Sum4|Cout~0_combout\ $ (\Mul|Sum1|Sum5|Cout~0_combout\ $ (((\A[2]~input_o\ & \B[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \Mul|Sum2|Sum4|Cout~0_combout\,
	datac => \Mul|Sum1|Sum5|Cout~0_combout\,
	datad => \B[4]~input_o\,
	combout => \Mul|Sum2|Sum5|S~combout\);

-- Location: LCCOMB_X22_Y13_N30
\Mux7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~3_combout\ = (\selector[1]~input_o\ & (((\Mul|Sum2|Sum5|S~combout\ & !\selector[0]~input_o\)))) # (!\selector[1]~input_o\ & (\Mux7~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selector[1]~input_o\,
	datab => \Mux7~2_combout\,
	datac => \Mul|Sum2|Sum5|S~combout\,
	datad => \selector[0]~input_o\,
	combout => \Mux7~3_combout\);

-- Location: LCCOMB_X22_Y13_N6
\Res|Sum3|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Res|Sum3|Cout~0_combout\ = (\B[2]~input_o\ & (\A[2]~input_o\ & \Res|Sum2|Cout~0_combout\)) # (!\B[2]~input_o\ & ((\A[2]~input_o\) # (\Res|Sum2|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datac => \A[2]~input_o\,
	datad => \Res|Sum2|Cout~0_combout\,
	combout => \Res|Sum3|Cout~0_combout\);

-- Location: IOIBUF_X18_Y0_N22
\A[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: LCCOMB_X22_Y13_N24
\Res|Sum4|S~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Res|Sum4|S~0_combout\ = \A[3]~input_o\ $ (\B[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datac => \B[3]~input_o\,
	combout => \Res|Sum4|S~0_combout\);

-- Location: LCCOMB_X22_Y13_N10
\Suma|Sum3|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Suma|Sum3|Cout~0_combout\ = (\B[2]~input_o\ & ((\A[2]~input_o\) # (\Suma|Sum2|Cout~0_combout\))) # (!\B[2]~input_o\ & (\A[2]~input_o\ & \Suma|Sum2|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datac => \A[2]~input_o\,
	datad => \Suma|Sum2|Cout~0_combout\,
	combout => \Suma|Sum3|Cout~0_combout\);

-- Location: LCCOMB_X22_Y13_N12
\Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~1_combout\ = \Res|Sum4|S~0_combout\ $ (((\selector[0]~input_o\ & (!\Res|Sum3|Cout~0_combout\)) # (!\selector[0]~input_o\ & ((\Suma|Sum3|Cout~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Res|Sum3|Cout~0_combout\,
	datab => \Res|Sum4|S~0_combout\,
	datac => \Suma|Sum3|Cout~0_combout\,
	datad => \selector[0]~input_o\,
	combout => \Mux6~1_combout\);

-- Location: LCCOMB_X22_Y13_N0
\Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~2_combout\ = (!\selector[0]~input_o\ & \selector[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \selector[0]~input_o\,
	datac => \selector[1]~input_o\,
	combout => \Mux1~2_combout\);

-- Location: LCCOMB_X22_Y15_N14
\Mul|Sum2|Sum2|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mul|Sum2|Sum2|S~combout\ = \Mul|Sum2|Sum1|Cout~0_combout\ $ (\Mul|Sum1|Sum3|S~combout\ $ (((\B[1]~input_o\ & \A[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mul|Sum2|Sum1|Cout~0_combout\,
	datab => \B[1]~input_o\,
	datac => \A[2]~input_o\,
	datad => \Mul|Sum1|Sum3|S~combout\,
	combout => \Mul|Sum2|Sum2|S~combout\);

-- Location: LCCOMB_X22_Y13_N28
\Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (\Mux1~2_combout\ & (\Mul|Sum2|Sum2|S~combout\ $ (((\A[3]~input_o\ & \B[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \Mux1~2_combout\,
	datac => \B[0]~input_o\,
	datad => \Mul|Sum2|Sum2|S~combout\,
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X22_Y13_N22
\Mux6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~2_combout\ = (\Mux6~0_combout\) # ((\Mux6~1_combout\ & !\selector[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~1_combout\,
	datab => \Mux6~0_combout\,
	datac => \selector[1]~input_o\,
	combout => \Mux6~2_combout\);

-- Location: IOIBUF_X16_Y24_N22
\A[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: LCCOMB_X21_Y14_N6
\Res|Sum5|S~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Res|Sum5|S~0_combout\ = \A[4]~input_o\ $ (\B[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[4]~input_o\,
	datad => \B[4]~input_o\,
	combout => \Res|Sum5|S~0_combout\);

-- Location: LCCOMB_X21_Y14_N28
\Suma|Sum4|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Suma|Sum4|Cout~0_combout\ = (\Suma|Sum3|Cout~0_combout\ & ((\A[3]~input_o\) # (\B[3]~input_o\))) # (!\Suma|Sum3|Cout~0_combout\ & (\A[3]~input_o\ & \B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Suma|Sum3|Cout~0_combout\,
	datac => \A[3]~input_o\,
	datad => \B[3]~input_o\,
	combout => \Suma|Sum4|Cout~0_combout\);

-- Location: LCCOMB_X21_Y14_N8
\Res|Sum5|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \Res|Sum5|S~combout\ = \Res|Sum5|S~0_combout\ $ (((\Res|Sum3|Cout~0_combout\ & ((\A[3]~input_o\) # (!\B[3]~input_o\))) # (!\Res|Sum3|Cout~0_combout\ & (\A[3]~input_o\ & !\B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101001010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Res|Sum5|S~0_combout\,
	datab => \Res|Sum3|Cout~0_combout\,
	datac => \A[3]~input_o\,
	datad => \B[3]~input_o\,
	combout => \Res|Sum5|S~combout\);

-- Location: LCCOMB_X21_Y14_N2
\Mux5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~2_combout\ = (\selector[0]~input_o\ & (((!\Res|Sum5|S~combout\)))) # (!\selector[0]~input_o\ & (\Res|Sum5|S~0_combout\ $ ((\Suma|Sum4|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011011110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Res|Sum5|S~0_combout\,
	datab => \Suma|Sum4|Cout~0_combout\,
	datac => \selector[0]~input_o\,
	datad => \Res|Sum5|S~combout\,
	combout => \Mux5~2_combout\);

-- Location: LCCOMB_X23_Y14_N22
\Mul|Sum2|Sum5|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mul|Sum2|Sum5|Cout~0_combout\ = (\Mul|Sum2|Sum4|Cout~0_combout\ & ((\Mul|Sum1|Sum5|Cout~0_combout\) # ((\A[2]~input_o\ & \B[4]~input_o\)))) # (!\Mul|Sum2|Sum4|Cout~0_combout\ & (\A[2]~input_o\ & (\Mul|Sum1|Sum5|Cout~0_combout\ & \B[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \Mul|Sum2|Sum4|Cout~0_combout\,
	datac => \Mul|Sum1|Sum5|Cout~0_combout\,
	datad => \B[4]~input_o\,
	combout => \Mul|Sum2|Sum5|Cout~0_combout\);

-- Location: LCCOMB_X23_Y14_N4
\Mul|Sum2|Sum3|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mul|Sum2|Sum3|S~combout\ = \Mul|Sum2|Sum2|Cout~0_combout\ $ (\Mul|Sum1|Sum4|S~combout\ $ (((\A[2]~input_o\ & \B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mul|Sum2|Sum2|Cout~0_combout\,
	datab => \Mul|Sum1|Sum4|S~combout\,
	datac => \A[2]~input_o\,
	datad => \B[2]~input_o\,
	combout => \Mul|Sum2|Sum3|S~combout\);

-- Location: LCCOMB_X22_Y14_N8
\Mul|Sum3|Sum1|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mul|Sum3|Sum1|Cout~0_combout\ = (\A[3]~input_o\ & (\B[0]~input_o\ & \Mul|Sum2|Sum2|S~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datac => \B[0]~input_o\,
	datad => \Mul|Sum2|Sum2|S~combout\,
	combout => \Mul|Sum3|Sum1|Cout~0_combout\);

-- Location: LCCOMB_X22_Y14_N18
\Mul|Sum3|Sum2|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mul|Sum3|Sum2|Cout~0_combout\ = (\Mul|Sum2|Sum3|S~combout\ & ((\Mul|Sum3|Sum1|Cout~0_combout\) # ((\A[3]~input_o\ & \B[1]~input_o\)))) # (!\Mul|Sum2|Sum3|S~combout\ & (\Mul|Sum3|Sum1|Cout~0_combout\ & (\A[3]~input_o\ & \B[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mul|Sum2|Sum3|S~combout\,
	datab => \Mul|Sum3|Sum1|Cout~0_combout\,
	datac => \A[3]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Mul|Sum3|Sum2|Cout~0_combout\);

-- Location: LCCOMB_X23_Y14_N18
\Mul|Sum2|Sum4|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mul|Sum2|Sum4|S~combout\ = \Mul|Sum2|Sum3|Cout~0_combout\ $ (\Mul|Sum1|Sum5|S~combout\ $ (((\A[2]~input_o\ & \B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mul|Sum2|Sum3|Cout~0_combout\,
	datab => \Mul|Sum1|Sum5|S~combout\,
	datac => \A[2]~input_o\,
	datad => \B[3]~input_o\,
	combout => \Mul|Sum2|Sum4|S~combout\);

-- Location: LCCOMB_X22_Y14_N4
\Mul|Sum3|Sum3|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mul|Sum3|Sum3|Cout~0_combout\ = (\Mul|Sum3|Sum2|Cout~0_combout\ & ((\Mul|Sum2|Sum4|S~combout\) # ((\B[2]~input_o\ & \A[3]~input_o\)))) # (!\Mul|Sum3|Sum2|Cout~0_combout\ & (\B[2]~input_o\ & (\A[3]~input_o\ & \Mul|Sum2|Sum4|S~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \Mul|Sum3|Sum2|Cout~0_combout\,
	datac => \A[3]~input_o\,
	datad => \Mul|Sum2|Sum4|S~combout\,
	combout => \Mul|Sum3|Sum3|Cout~0_combout\);

-- Location: LCCOMB_X21_Y14_N16
\Mul|Sum3|Sum4|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mul|Sum3|Sum4|Cout~0_combout\ = (\Mul|Sum3|Sum3|Cout~0_combout\ & ((\Mul|Sum2|Sum5|S~combout\) # ((\A[3]~input_o\ & \B[3]~input_o\)))) # (!\Mul|Sum3|Sum3|Cout~0_combout\ & (\Mul|Sum2|Sum5|S~combout\ & (\A[3]~input_o\ & \B[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mul|Sum3|Sum3|Cout~0_combout\,
	datab => \Mul|Sum2|Sum5|S~combout\,
	datac => \A[3]~input_o\,
	datad => \B[3]~input_o\,
	combout => \Mul|Sum3|Sum4|Cout~0_combout\);

-- Location: LCCOMB_X21_Y14_N10
\Mul|Sum3|Sum5|S~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mul|Sum3|Sum5|S~0_combout\ = \Mul|Sum2|Sum5|Cout~0_combout\ $ (\Mul|Sum3|Sum4|Cout~0_combout\ $ (((\A[3]~input_o\ & \B[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mul|Sum2|Sum5|Cout~0_combout\,
	datab => \Mul|Sum3|Sum4|Cout~0_combout\,
	datac => \A[3]~input_o\,
	datad => \B[4]~input_o\,
	combout => \Mul|Sum3|Sum5|S~0_combout\);

-- Location: LCCOMB_X21_Y14_N22
\Mux5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~3_combout\ = (\selector[1]~input_o\ & (((!\selector[0]~input_o\ & \Mul|Sum3|Sum5|S~0_combout\)))) # (!\selector[1]~input_o\ & (\Mux5~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~2_combout\,
	datab => \selector[0]~input_o\,
	datac => \Mul|Sum3|Sum5|S~0_combout\,
	datad => \selector[1]~input_o\,
	combout => \Mux5~3_combout\);

-- Location: LCCOMB_X22_Y14_N30
\Mul|Sum3|Sum2|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mul|Sum3|Sum2|S~combout\ = \Mul|Sum2|Sum3|S~combout\ $ (\Mul|Sum3|Sum1|Cout~0_combout\ $ (((\A[3]~input_o\ & \B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mul|Sum2|Sum3|S~combout\,
	datab => \Mul|Sum3|Sum1|Cout~0_combout\,
	datac => \A[3]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Mul|Sum3|Sum2|S~combout\);

-- Location: LCCOMB_X22_Y14_N0
\Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\Mux1~2_combout\ & (\Mul|Sum3|Sum2|S~combout\ $ (((\A[4]~input_o\ & \B[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mul|Sum3|Sum2|S~combout\,
	datab => \A[4]~input_o\,
	datac => \B[0]~input_o\,
	datad => \Mux1~2_combout\,
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X21_Y14_N24
\Suma|Sum5|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Suma|Sum5|Cout~0_combout\ = (\Suma|Sum4|Cout~0_combout\ & ((\A[4]~input_o\) # (\B[4]~input_o\))) # (!\Suma|Sum4|Cout~0_combout\ & (\A[4]~input_o\ & \B[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Suma|Sum4|Cout~0_combout\,
	datac => \A[4]~input_o\,
	datad => \B[4]~input_o\,
	combout => \Suma|Sum5|Cout~0_combout\);

-- Location: IOIBUF_X18_Y0_N15
\A[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: LCCOMB_X21_Y14_N12
\Res|Sum4|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Res|Sum4|Cout~0_combout\ = (\Res|Sum3|Cout~0_combout\ & ((\A[3]~input_o\) # (!\B[3]~input_o\))) # (!\Res|Sum3|Cout~0_combout\ & (\A[3]~input_o\ & !\B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Res|Sum3|Cout~0_combout\,
	datac => \A[3]~input_o\,
	datad => \B[3]~input_o\,
	combout => \Res|Sum4|Cout~0_combout\);

-- Location: LCCOMB_X21_Y14_N30
\Res|Sum5|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Res|Sum5|Cout~0_combout\ = (\Res|Sum4|Cout~0_combout\ & ((\A[4]~input_o\) # (!\B[4]~input_o\))) # (!\Res|Sum4|Cout~0_combout\ & (\A[4]~input_o\ & !\B[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Res|Sum4|Cout~0_combout\,
	datab => \A[4]~input_o\,
	datad => \B[4]~input_o\,
	combout => \Res|Sum5|Cout~0_combout\);

-- Location: LCCOMB_X22_Y16_N0
\Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~1_combout\ = \A[5]~input_o\ $ (((\selector[0]~input_o\ & ((!\Res|Sum5|Cout~0_combout\))) # (!\selector[0]~input_o\ & (\Suma|Sum5|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010000011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selector[0]~input_o\,
	datab => \Suma|Sum5|Cout~0_combout\,
	datac => \A[5]~input_o\,
	datad => \Res|Sum5|Cout~0_combout\,
	combout => \Mux4~1_combout\);

-- Location: IOIBUF_X18_Y24_N15
\B[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: LCCOMB_X22_Y16_N10
\Mux4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~2_combout\ = (\Mux4~0_combout\) # ((!\selector[1]~input_o\ & (\Mux4~1_combout\ $ (\B[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~0_combout\,
	datab => \Mux4~1_combout\,
	datac => \B[5]~input_o\,
	datad => \selector[1]~input_o\,
	combout => \Mux4~2_combout\);

-- Location: LCCOMB_X22_Y14_N20
\Mul|Sum3|Sum3|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mul|Sum3|Sum3|S~combout\ = \Mul|Sum3|Sum2|Cout~0_combout\ $ (\Mul|Sum2|Sum4|S~combout\ $ (((\B[2]~input_o\ & \A[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \Mul|Sum3|Sum2|Cout~0_combout\,
	datac => \A[3]~input_o\,
	datad => \Mul|Sum2|Sum4|S~combout\,
	combout => \Mul|Sum3|Sum3|S~combout\);

-- Location: LCCOMB_X22_Y14_N10
\Mul|Sum4|Sum1|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mul|Sum4|Sum1|Cout~0_combout\ = (\Mul|Sum3|Sum2|S~combout\ & (\A[4]~input_o\ & \B[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mul|Sum3|Sum2|S~combout\,
	datab => \A[4]~input_o\,
	datac => \B[0]~input_o\,
	combout => \Mul|Sum4|Sum1|Cout~0_combout\);

-- Location: LCCOMB_X22_Y14_N14
\Mul|Sum4|Sum2|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mul|Sum4|Sum2|S~combout\ = \Mul|Sum3|Sum3|S~combout\ $ (\Mul|Sum4|Sum1|Cout~0_combout\ $ (((\B[1]~input_o\ & \A[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \Mul|Sum3|Sum3|S~combout\,
	datac => \Mul|Sum4|Sum1|Cout~0_combout\,
	datad => \A[4]~input_o\,
	combout => \Mul|Sum4|Sum2|S~combout\);

-- Location: LCCOMB_X22_Y16_N28
\Res|Sum6|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Res|Sum6|Cout~0_combout\ = (\B[5]~input_o\ & (\A[5]~input_o\ & \Res|Sum5|Cout~0_combout\)) # (!\B[5]~input_o\ & ((\A[5]~input_o\) # (\Res|Sum5|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datac => \A[5]~input_o\,
	datad => \Res|Sum5|Cout~0_combout\,
	combout => \Res|Sum6|Cout~0_combout\);

-- Location: IOIBUF_X23_Y24_N15
\A[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: IOIBUF_X28_Y24_N8
\B[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: LCCOMB_X24_Y17_N24
\Res|Sum7|S~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Res|Sum7|S~0_combout\ = \A[6]~input_o\ $ (\B[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[6]~input_o\,
	datad => \B[6]~input_o\,
	combout => \Res|Sum7|S~0_combout\);

-- Location: LCCOMB_X22_Y16_N30
\Suma|Sum7|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \Suma|Sum7|S~combout\ = \Res|Sum7|S~0_combout\ $ (((\B[5]~input_o\ & ((\Suma|Sum5|Cout~0_combout\) # (\A[5]~input_o\))) # (!\B[5]~input_o\ & (\Suma|Sum5|Cout~0_combout\ & \A[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \Suma|Sum5|Cout~0_combout\,
	datac => \A[5]~input_o\,
	datad => \Res|Sum7|S~0_combout\,
	combout => \Suma|Sum7|S~combout\);

-- Location: LCCOMB_X22_Y16_N8
\Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~2_combout\ = (\selector[0]~input_o\ & (\Res|Sum6|Cout~0_combout\ $ (((!\Res|Sum7|S~0_combout\))))) # (!\selector[0]~input_o\ & (((\Suma|Sum7|S~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selector[0]~input_o\,
	datab => \Res|Sum6|Cout~0_combout\,
	datac => \Suma|Sum7|S~combout\,
	datad => \Res|Sum7|S~0_combout\,
	combout => \Mux3~2_combout\);

-- Location: LCCOMB_X22_Y16_N4
\Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~3_combout\ = (\selector[1]~input_o\ & (\Mul|Sum4|Sum2|S~combout\ & ((!\selector[0]~input_o\)))) # (!\selector[1]~input_o\ & (((\Mux3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mul|Sum4|Sum2|S~combout\,
	datab => \Mux3~2_combout\,
	datac => \selector[0]~input_o\,
	datad => \selector[1]~input_o\,
	combout => \Mux3~3_combout\);

-- Location: IOIBUF_X28_Y24_N15
\A[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: LCCOMB_X22_Y16_N26
\Suma|Sum6|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Suma|Sum6|Cout~0_combout\ = (\B[5]~input_o\ & ((\Suma|Sum5|Cout~0_combout\) # (\A[5]~input_o\))) # (!\B[5]~input_o\ & (\Suma|Sum5|Cout~0_combout\ & \A[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \Suma|Sum5|Cout~0_combout\,
	datac => \A[5]~input_o\,
	combout => \Suma|Sum6|Cout~0_combout\);

-- Location: LCCOMB_X24_Y17_N18
\Suma|Sum7|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Suma|Sum7|Cout~0_combout\ = (\A[6]~input_o\ & ((\Suma|Sum6|Cout~0_combout\) # (\B[6]~input_o\))) # (!\A[6]~input_o\ & (\Suma|Sum6|Cout~0_combout\ & \B[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[6]~input_o\,
	datac => \Suma|Sum6|Cout~0_combout\,
	datad => \B[6]~input_o\,
	combout => \Suma|Sum7|Cout~0_combout\);

-- Location: IOIBUF_X28_Y24_N22
\B[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: LCCOMB_X24_Y17_N4
\Suma|Sum8|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \Suma|Sum8|S~combout\ = \A[7]~input_o\ $ (\Suma|Sum7|Cout~0_combout\ $ (\B[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[7]~input_o\,
	datab => \Suma|Sum7|Cout~0_combout\,
	datac => \B[7]~input_o\,
	combout => \Suma|Sum8|S~combout\);

-- Location: LCCOMB_X24_Y17_N6
\Res|Sum7|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Res|Sum7|Cout~0_combout\ = (\A[6]~input_o\ & ((\Res|Sum6|Cout~0_combout\) # (!\B[6]~input_o\))) # (!\A[6]~input_o\ & (\Res|Sum6|Cout~0_combout\ & !\B[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[6]~input_o\,
	datac => \Res|Sum6|Cout~0_combout\,
	datad => \B[6]~input_o\,
	combout => \Res|Sum7|Cout~0_combout\);

-- Location: LCCOMB_X24_Y17_N16
\Res|Sum8|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \Res|Sum8|S~combout\ = \Res|Sum7|Cout~0_combout\ $ (\B[7]~input_o\ $ (\A[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Res|Sum7|Cout~0_combout\,
	datac => \B[7]~input_o\,
	datad => \A[7]~input_o\,
	combout => \Res|Sum8|S~combout\);

-- Location: LCCOMB_X25_Y17_N24
\Mux13~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~2_combout\ = (!\selector[1]~input_o\ & ((\selector[0]~input_o\ & ((!\Res|Sum8|S~combout\))) # (!\selector[0]~input_o\ & (\Suma|Sum8|S~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selector[1]~input_o\,
	datab => \Suma|Sum8|S~combout\,
	datac => \selector[0]~input_o\,
	datad => \Res|Sum8|S~combout\,
	combout => \Mux13~2_combout\);

-- Location: LCCOMB_X21_Y14_N18
\Mul|Sum3|Sum4|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mul|Sum3|Sum4|S~combout\ = \Mul|Sum3|Sum3|Cout~0_combout\ $ (\Mul|Sum2|Sum5|S~combout\ $ (((\A[3]~input_o\ & \B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mul|Sum3|Sum3|Cout~0_combout\,
	datab => \Mul|Sum2|Sum5|S~combout\,
	datac => \A[3]~input_o\,
	datad => \B[3]~input_o\,
	combout => \Mul|Sum3|Sum4|S~combout\);

-- Location: LCCOMB_X22_Y14_N24
\Mul|Sum4|Sum2|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mul|Sum4|Sum2|Cout~0_combout\ = (\Mul|Sum3|Sum3|S~combout\ & ((\Mul|Sum4|Sum1|Cout~0_combout\) # ((\B[1]~input_o\ & \A[4]~input_o\)))) # (!\Mul|Sum3|Sum3|S~combout\ & (\B[1]~input_o\ & (\Mul|Sum4|Sum1|Cout~0_combout\ & \A[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \Mul|Sum3|Sum3|S~combout\,
	datac => \Mul|Sum4|Sum1|Cout~0_combout\,
	datad => \A[4]~input_o\,
	combout => \Mul|Sum4|Sum2|Cout~0_combout\);

-- Location: LCCOMB_X21_Y14_N20
\Mul|Sum4|Sum3|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mul|Sum4|Sum3|S~combout\ = \Mul|Sum3|Sum4|S~combout\ $ (\Mul|Sum4|Sum2|Cout~0_combout\ $ (((\B[2]~input_o\ & \A[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \Mul|Sum3|Sum4|S~combout\,
	datac => \Mul|Sum4|Sum2|Cout~0_combout\,
	datad => \A[4]~input_o\,
	combout => \Mul|Sum4|Sum3|S~combout\);

-- Location: LCCOMB_X25_Y17_N4
\Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~2_combout\ = (\Mux13~2_combout\) # ((!\selector[0]~input_o\ & (\selector[1]~input_o\ & \Mul|Sum4|Sum3|S~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selector[0]~input_o\,
	datab => \Mux13~2_combout\,
	datac => \selector[1]~input_o\,
	datad => \Mul|Sum4|Sum3|S~combout\,
	combout => \Mux2~2_combout\);

-- Location: LCCOMB_X21_Y14_N14
\Mul|Sum4|Sum3|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mul|Sum4|Sum3|Cout~0_combout\ = (\Mul|Sum3|Sum4|S~combout\ & ((\Mul|Sum4|Sum2|Cout~0_combout\) # ((\B[2]~input_o\ & \A[4]~input_o\)))) # (!\Mul|Sum3|Sum4|S~combout\ & (\B[2]~input_o\ & (\Mul|Sum4|Sum2|Cout~0_combout\ & \A[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \Mul|Sum3|Sum4|S~combout\,
	datac => \Mul|Sum4|Sum2|Cout~0_combout\,
	datad => \A[4]~input_o\,
	combout => \Mul|Sum4|Sum3|Cout~0_combout\);

-- Location: LCCOMB_X22_Y14_N26
\Mul|Sum4|Sum4|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mul|Sum4|Sum4|S~combout\ = \Mul|Sum4|Sum3|Cout~0_combout\ $ (\Mul|Sum3|Sum5|S~0_combout\ $ (((\A[4]~input_o\ & \B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mul|Sum4|Sum3|Cout~0_combout\,
	datab => \A[4]~input_o\,
	datac => \B[3]~input_o\,
	datad => \Mul|Sum3|Sum5|S~0_combout\,
	combout => \Mul|Sum4|Sum4|S~combout\);

-- Location: LCCOMB_X25_Y17_N6
\Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~3_combout\ = (!\selector[0]~input_o\ & (\selector[1]~input_o\ & \Mul|Sum4|Sum4|S~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selector[0]~input_o\,
	datac => \selector[1]~input_o\,
	datad => \Mul|Sum4|Sum4|S~combout\,
	combout => \Mux1~3_combout\);

-- Location: LCCOMB_X21_Y14_N0
\Mul|Sum3|Sum5|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mul|Sum3|Sum5|Cout~0_combout\ = (\Mul|Sum2|Sum5|Cout~0_combout\ & ((\Mul|Sum3|Sum4|Cout~0_combout\) # ((\A[3]~input_o\ & \B[4]~input_o\)))) # (!\Mul|Sum2|Sum5|Cout~0_combout\ & (\Mul|Sum3|Sum4|Cout~0_combout\ & (\A[3]~input_o\ & \B[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mul|Sum2|Sum5|Cout~0_combout\,
	datab => \Mul|Sum3|Sum4|Cout~0_combout\,
	datac => \A[3]~input_o\,
	datad => \B[4]~input_o\,
	combout => \Mul|Sum3|Sum5|Cout~0_combout\);

-- Location: LCCOMB_X22_Y14_N28
\Mul|Sum4|Sum4|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mul|Sum4|Sum4|Cout~0_combout\ = (\Mul|Sum4|Sum3|Cout~0_combout\ & ((\Mul|Sum3|Sum5|S~0_combout\) # ((\A[4]~input_o\ & \B[3]~input_o\)))) # (!\Mul|Sum4|Sum3|Cout~0_combout\ & (\A[4]~input_o\ & (\B[3]~input_o\ & \Mul|Sum3|Sum5|S~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mul|Sum4|Sum3|Cout~0_combout\,
	datab => \A[4]~input_o\,
	datac => \B[3]~input_o\,
	datad => \Mul|Sum3|Sum5|S~0_combout\,
	combout => \Mul|Sum4|Sum4|Cout~0_combout\);

-- Location: LCCOMB_X24_Y17_N2
\Mul|Sum4|Sum5|S~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mul|Sum4|Sum5|S~0_combout\ = \Mul|Sum3|Sum5|Cout~0_combout\ $ (\Mul|Sum4|Sum4|Cout~0_combout\ $ (((\A[4]~input_o\ & \B[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mul|Sum3|Sum5|Cout~0_combout\,
	datab => \A[4]~input_o\,
	datac => \Mul|Sum4|Sum4|Cout~0_combout\,
	datad => \B[4]~input_o\,
	combout => \Mul|Sum4|Sum5|S~0_combout\);

-- Location: LCCOMB_X25_Y17_N8
\Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~2_combout\ = (!\selector[0]~input_o\ & (\selector[1]~input_o\ & \Mul|Sum4|Sum5|S~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selector[0]~input_o\,
	datac => \selector[1]~input_o\,
	datad => \Mul|Sum4|Sum5|S~0_combout\,
	combout => \Mux0~2_combout\);

-- Location: LCCOMB_X25_Y17_N26
\Mux18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux18~0_combout\ = (\selector[1]~input_o\) # (\selector[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selector[1]~input_o\,
	datac => \selector[0]~input_o\,
	combout => \Mux18~0_combout\);

-- Location: LCCOMB_X25_Y17_N12
\Mux16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~0_combout\ = (!\selector[1]~input_o\ & \selector[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selector[1]~input_o\,
	datac => \selector[0]~input_o\,
	combout => \Mux16~0_combout\);

-- Location: LCCOMB_X25_Y17_N22
\Mux16~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~1_combout\ = (\selector[1]~input_o\ & \selector[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selector[1]~input_o\,
	datac => \selector[0]~input_o\,
	combout => \Mux16~1_combout\);

-- Location: LCCOMB_X24_Y17_N10
\Mul|Sum4|Sum5|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mul|Sum4|Sum5|Cout~0_combout\ = (\Mul|Sum3|Sum5|Cout~0_combout\ & ((\Mul|Sum4|Sum4|Cout~0_combout\) # ((\A[4]~input_o\ & \B[4]~input_o\)))) # (!\Mul|Sum3|Sum5|Cout~0_combout\ & (\A[4]~input_o\ & (\Mul|Sum4|Sum4|Cout~0_combout\ & \B[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mul|Sum3|Sum5|Cout~0_combout\,
	datab => \A[4]~input_o\,
	datac => \Mul|Sum4|Sum4|Cout~0_combout\,
	datad => \B[4]~input_o\,
	combout => \Mul|Sum4|Sum5|Cout~0_combout\);

-- Location: LCCOMB_X24_Y17_N28
\Mux10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~2_combout\ = (!\selector[0]~input_o\ & ((\A[7]~input_o\ & ((\Suma|Sum7|Cout~0_combout\) # (\B[7]~input_o\))) # (!\A[7]~input_o\ & (\Suma|Sum7|Cout~0_combout\ & \B[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[7]~input_o\,
	datab => \Suma|Sum7|Cout~0_combout\,
	datac => \B[7]~input_o\,
	datad => \selector[0]~input_o\,
	combout => \Mux10~2_combout\);

-- Location: LCCOMB_X24_Y17_N22
\Res|Sum8|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Res|Sum8|Cout~0_combout\ = (\Res|Sum7|Cout~0_combout\ & ((\A[7]~input_o\) # (!\B[7]~input_o\))) # (!\Res|Sum7|Cout~0_combout\ & (!\B[7]~input_o\ & \A[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Res|Sum7|Cout~0_combout\,
	datac => \B[7]~input_o\,
	datad => \A[7]~input_o\,
	combout => \Res|Sum8|Cout~0_combout\);

-- Location: LCCOMB_X24_Y17_N8
\Mux10~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~3_combout\ = (!\selector[1]~input_o\ & ((\Mux10~2_combout\) # ((\selector[0]~input_o\ & !\Res|Sum8|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux10~2_combout\,
	datab => \selector[0]~input_o\,
	datac => \Res|Sum8|Cout~0_combout\,
	datad => \selector[1]~input_o\,
	combout => \Mux10~3_combout\);

-- Location: LCCOMB_X24_Y17_N12
\Mux10~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~4_combout\ = (\Mux10~3_combout\) # ((\Mul|Sum4|Sum5|Cout~0_combout\ & (!\selector[0]~input_o\ & \selector[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mul|Sum4|Sum5|Cout~0_combout\,
	datab => \selector[0]~input_o\,
	datac => \Mux10~3_combout\,
	datad => \selector[1]~input_o\,
	combout => \Mux10~4_combout\);

-- Location: LCCOMB_X24_Y17_N30
\Mux11~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~3_combout\ = (\selector[0]~input_o\ & ((\A[7]~input_o\ & (!\B[7]~input_o\ & !\Res|Sum7|Cout~0_combout\)) # (!\A[7]~input_o\ & (\B[7]~input_o\ & \Res|Sum7|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[7]~input_o\,
	datab => \selector[0]~input_o\,
	datac => \B[7]~input_o\,
	datad => \Res|Sum7|Cout~0_combout\,
	combout => \Mux11~3_combout\);

-- Location: LCCOMB_X24_Y17_N20
\Mux11~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~2_combout\ = (!\selector[0]~input_o\ & ((\A[7]~input_o\ & (!\Suma|Sum7|Cout~0_combout\ & \B[7]~input_o\)) # (!\A[7]~input_o\ & (\Suma|Sum7|Cout~0_combout\ & !\B[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[7]~input_o\,
	datab => \Suma|Sum7|Cout~0_combout\,
	datac => \B[7]~input_o\,
	datad => \selector[0]~input_o\,
	combout => \Mux11~2_combout\);

-- Location: LCCOMB_X24_Y17_N14
\Mux11~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~5_combout\ = (!\selector[0]~input_o\ & (\selector[1]~input_o\ & (\Mul|Sum4|Sum5|Cout~0_combout\ $ (\Mul|Sum4|Sum4|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mul|Sum4|Sum5|Cout~0_combout\,
	datab => \selector[0]~input_o\,
	datac => \Mul|Sum4|Sum4|Cout~0_combout\,
	datad => \selector[1]~input_o\,
	combout => \Mux11~5_combout\);

-- Location: LCCOMB_X24_Y17_N0
\Mux11~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~4_combout\ = (\Mux11~5_combout\) # ((!\selector[1]~input_o\ & ((\Mux11~3_combout\) # (\Mux11~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~3_combout\,
	datab => \Mux11~2_combout\,
	datac => \Mux11~5_combout\,
	datad => \selector[1]~input_o\,
	combout => \Mux11~4_combout\);

-- Location: LCCOMB_X22_Y14_N6
\Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = (!\Mul|Sum2|Sum2|S~combout\ & ((!\B[0]~input_o\) # (!\A[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datac => \B[0]~input_o\,
	datad => \Mul|Sum2|Sum2|S~combout\,
	combout => \Mux12~0_combout\);

-- Location: LCCOMB_X22_Y14_N16
\Mux12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~1_combout\ = (!\Mul|Sum3|Sum2|S~combout\ & (\Mux12~0_combout\ & ((!\B[0]~input_o\) # (!\A[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mul|Sum3|Sum2|S~combout\,
	datab => \A[4]~input_o\,
	datac => \B[0]~input_o\,
	datad => \Mux12~0_combout\,
	combout => \Mux12~1_combout\);

-- Location: LCCOMB_X25_Y17_N0
\Mux12~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~6_combout\ = (!\selector[0]~input_o\ & (\selector[1]~input_o\ & ((!\B[0]~input_o\) # (!\A[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \B[0]~input_o\,
	datac => \selector[0]~input_o\,
	datad => \selector[1]~input_o\,
	combout => \Mux12~6_combout\);

-- Location: LCCOMB_X25_Y17_N2
\Mux12~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~7_combout\ = (!\Mul|Sum1|Sum5|S~combout\ & (!\Mul|Sum4|Sum4|S~combout\ & (\Mux12~6_combout\ & !\Mul|Sum4|Sum5|S~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mul|Sum1|Sum5|S~combout\,
	datab => \Mul|Sum4|Sum4|S~combout\,
	datac => \Mux12~6_combout\,
	datad => \Mul|Sum4|Sum5|S~0_combout\,
	combout => \Mux12~7_combout\);

-- Location: LCCOMB_X21_Y14_N26
\Mux12~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~2_combout\ = (!\Mul|Sum3|Sum4|S~combout\ & (!\Mul|Sum2|Sum5|S~combout\ & !\Mul|Sum4|Sum3|S~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mul|Sum3|Sum4|S~combout\,
	datac => \Mul|Sum2|Sum5|S~combout\,
	datad => \Mul|Sum4|Sum3|S~combout\,
	combout => \Mux12~2_combout\);

-- Location: LCCOMB_X22_Y15_N16
\Mul|Sum1|Sum1|S~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mul|Sum1|Sum1|S~0_combout\ = (\A[0]~input_o\ & (\B[1]~input_o\ $ (((\A[1]~input_o\ & \B[0]~input_o\))))) # (!\A[0]~input_o\ & (\A[1]~input_o\ & ((\B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \A[1]~input_o\,
	datac => \B[1]~input_o\,
	datad => \B[0]~input_o\,
	combout => \Mul|Sum1|Sum1|S~0_combout\);

-- Location: LCCOMB_X23_Y14_N0
\Mux12~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~3_combout\ = (!\Mul|Sum1|Sum1|S~0_combout\ & (!\Mul|Sum2|Sum3|S~combout\ & !\Mul|Sum1|Sum4|S~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mul|Sum1|Sum1|S~0_combout\,
	datac => \Mul|Sum2|Sum3|S~combout\,
	datad => \Mul|Sum1|Sum4|S~combout\,
	combout => \Mux12~3_combout\);

-- Location: LCCOMB_X22_Y14_N2
\Mux12~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~4_combout\ = (!\Mul|Sum3|Sum5|S~0_combout\ & (!\Mul|Sum3|Sum3|S~combout\ & (\Mux12~3_combout\ & !\Mul|Sum2|Sum4|S~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mul|Sum3|Sum5|S~0_combout\,
	datab => \Mul|Sum3|Sum3|S~combout\,
	datac => \Mux12~3_combout\,
	datad => \Mul|Sum2|Sum4|S~combout\,
	combout => \Mux12~4_combout\);

-- Location: LCCOMB_X22_Y15_N10
\Mux12~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~5_combout\ = (\Mux12~2_combout\ & (\Mux12~4_combout\ & (!\Mul|Sum1|Sum2|S~combout\ & !\Mul|Sum1|Sum3|S~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~2_combout\,
	datab => \Mux12~4_combout\,
	datac => \Mul|Sum1|Sum2|S~combout\,
	datad => \Mul|Sum1|Sum3|S~combout\,
	combout => \Mux12~5_combout\);

-- Location: LCCOMB_X22_Y16_N12
\Mux12~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~8_combout\ = (!\Mul|Sum4|Sum2|S~combout\ & (\Mux12~1_combout\ & (\Mux12~7_combout\ & \Mux12~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mul|Sum4|Sum2|S~combout\,
	datab => \Mux12~1_combout\,
	datac => \Mux12~7_combout\,
	datad => \Mux12~5_combout\,
	combout => \Mux12~8_combout\);

-- Location: LCCOMB_X22_Y16_N20
\Mux12~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~15_combout\ = (\B[5]~input_o\ & ((\Res|Sum7|S~0_combout\ & (!\A[5]~input_o\ & !\Res|Sum5|Cout~0_combout\)) # (!\Res|Sum7|S~0_combout\ & (\A[5]~input_o\ & \Res|Sum5|Cout~0_combout\)))) # (!\B[5]~input_o\ & (!\Res|Sum7|S~0_combout\ & (\A[5]~input_o\ 
-- $ (\Res|Sum5|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \Res|Sum7|S~0_combout\,
	datac => \A[5]~input_o\,
	datad => \Res|Sum5|Cout~0_combout\,
	combout => \Mux12~15_combout\);

-- Location: LCCOMB_X22_Y13_N26
\Mux12~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~13_combout\ = (\B[2]~input_o\ & ((\Res|Sum2|Cout~0_combout\ & (\A[2]~input_o\ & !\Res|Sum4|S~0_combout\)) # (!\Res|Sum2|Cout~0_combout\ & (!\A[2]~input_o\ & \Res|Sum4|S~0_combout\)))) # (!\B[2]~input_o\ & (!\Res|Sum4|S~0_combout\ & 
-- (\Res|Sum2|Cout~0_combout\ $ (\A[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \Res|Sum2|Cout~0_combout\,
	datac => \A[2]~input_o\,
	datad => \Res|Sum4|S~0_combout\,
	combout => \Mux12~13_combout\);

-- Location: LCCOMB_X22_Y16_N18
\Mux12~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~14_combout\ = (\selector[0]~input_o\ & (\Res|Sum5|S~combout\ & (\Mux12~13_combout\ & \Res|Sum2|S~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selector[0]~input_o\,
	datab => \Res|Sum5|S~combout\,
	datac => \Mux12~13_combout\,
	datad => \Res|Sum2|S~combout\,
	combout => \Mux12~14_combout\);

-- Location: LCCOMB_X22_Y13_N8
\Mux12~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~9_combout\ = (!\Suma|Sum2|S~combout\ & (!\selector[0]~input_o\ & (\Suma|Sum2|Cout~0_combout\ $ (!\Res|Sum3|S~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Suma|Sum2|S~combout\,
	datab => \Suma|Sum2|Cout~0_combout\,
	datac => \Res|Sum3|S~0_combout\,
	datad => \selector[0]~input_o\,
	combout => \Mux12~9_combout\);

-- Location: LCCOMB_X21_Y14_N4
\Mux12~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~10_combout\ = (\Suma|Sum3|Cout~0_combout\ & (\Res|Sum5|S~0_combout\ & (\A[3]~input_o\ $ (\B[3]~input_o\)))) # (!\Suma|Sum3|Cout~0_combout\ & ((\Res|Sum5|S~0_combout\ & (\A[3]~input_o\ & \B[3]~input_o\)) # (!\Res|Sum5|S~0_combout\ & (!\A[3]~input_o\ 
-- & !\B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100010000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Suma|Sum3|Cout~0_combout\,
	datab => \Res|Sum5|S~0_combout\,
	datac => \A[3]~input_o\,
	datad => \B[3]~input_o\,
	combout => \Mux12~10_combout\);

-- Location: LCCOMB_X22_Y16_N14
\Mux12~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~11_combout\ = (\Mux12~10_combout\ & (\B[5]~input_o\ $ (\A[5]~input_o\ $ (!\Suma|Sum5|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \A[5]~input_o\,
	datac => \Suma|Sum5|Cout~0_combout\,
	datad => \Mux12~10_combout\,
	combout => \Mux12~11_combout\);

-- Location: LCCOMB_X22_Y16_N24
\Mux12~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~12_combout\ = (\Mux12~9_combout\ & (\Mux12~11_combout\ & (!\Suma|Sum7|S~combout\ & !\Suma|Sum8|S~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~9_combout\,
	datab => \Mux12~11_combout\,
	datac => \Suma|Sum7|S~combout\,
	datad => \Suma|Sum8|S~combout\,
	combout => \Mux12~12_combout\);

-- Location: LCCOMB_X22_Y16_N22
\Mux12~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~16_combout\ = (\Mux12~12_combout\) # ((\Mux12~15_combout\ & (\Mux12~14_combout\ & \Res|Sum8|S~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~15_combout\,
	datab => \Mux12~14_combout\,
	datac => \Res|Sum8|S~combout\,
	datad => \Mux12~12_combout\,
	combout => \Mux12~16_combout\);

-- Location: LCCOMB_X22_Y16_N16
\Mux12~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~17_combout\ = (\Mux12~8_combout\) # ((!\selector[1]~input_o\ & (\Mux12~16_combout\ & !\Suma|Sum1|S~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~8_combout\,
	datab => \selector[1]~input_o\,
	datac => \Mux12~16_combout\,
	datad => \Suma|Sum1|S~0_combout\,
	combout => \Mux12~17_combout\);

-- Location: LCCOMB_X25_Y17_N10
\Mux13~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~3_combout\ = (\Mux13~2_combout\) # ((!\selector[0]~input_o\ & (\selector[1]~input_o\ & \Mul|Sum4|Sum5|S~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selector[0]~input_o\,
	datab => \Mux13~2_combout\,
	datac => \selector[1]~input_o\,
	datad => \Mul|Sum4|Sum5|S~0_combout\,
	combout => \Mux13~3_combout\);

-- Location: LCCOMB_X24_Y17_N26
\Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~0_combout\ = (!\selector[1]~input_o\ & ((\Mux10~2_combout\) # ((\selector[0]~input_o\ & \Res|Sum8|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux10~2_combout\,
	datab => \selector[0]~input_o\,
	datac => \Res|Sum8|Cout~0_combout\,
	datad => \selector[1]~input_o\,
	combout => \Mux14~0_combout\);

-- Location: IOIBUF_X34_Y7_N8
\A[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(8),
	o => \A[8]~input_o\);

-- Location: IOIBUF_X5_Y24_N8
\A[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(9),
	o => \A[9]~input_o\);

-- Location: IOIBUF_X25_Y0_N1
\B[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(8),
	o => \B[8]~input_o\);

-- Location: IOIBUF_X13_Y0_N15
\B[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(9),
	o => \B[9]~input_o\);

ww_S(0) <= \S[0]~output_o\;

ww_S(1) <= \S[1]~output_o\;

ww_S(2) <= \S[2]~output_o\;

ww_S(3) <= \S[3]~output_o\;

ww_S(4) <= \S[4]~output_o\;

ww_S(5) <= \S[5]~output_o\;

ww_S(6) <= \S[6]~output_o\;

ww_S(7) <= \S[7]~output_o\;

ww_S(8) <= \S[8]~output_o\;

ww_S(9) <= \S[9]~output_o\;

ww_SalidaMux(0) <= \SalidaMux[0]~output_o\;

ww_SalidaMux(1) <= \SalidaMux[1]~output_o\;

ww_SalidaMux(2) <= \SalidaMux[2]~output_o\;

ww_SalidaMux(3) <= \SalidaMux[3]~output_o\;

ww_Carry <= \Carry~output_o\;

ww_Overflow <= \Overflow~output_o\;

ww_Zero <= \Zero~output_o\;

ww_Sum <= \Sum~output_o\;

ww_Cout <= \Cout~output_o\;
END structure;


