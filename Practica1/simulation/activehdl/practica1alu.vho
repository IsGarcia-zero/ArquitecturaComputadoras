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

-- DATE "10/23/2022 17:15:32"

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
	Carry : BUFFER std_logic;
	Overflow : BUFFER std_logic;
	Zero : BUFFER std_logic;
	Sum : BUFFER std_logic;
	Cout : BUFFER std_logic
	);
END UAritmetica;

-- Design Ports Information
-- A[8]	=>  Location: PIN_34,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[9]	=>  Location: PIN_10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[8]	=>  Location: PIN_74,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[9]	=>  Location: PIN_2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[0]	=>  Location: PIN_128,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[1]	=>  Location: PIN_127,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[2]	=>  Location: PIN_112,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[3]	=>  Location: PIN_111,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[4]	=>  Location: PIN_76,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[5]	=>  Location: PIN_133,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[6]	=>  Location: PIN_120,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[7]	=>  Location: PIN_121,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[8]	=>  Location: PIN_110,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[9]	=>  Location: PIN_100,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Carry	=>  Location: PIN_86,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Overflow	=>  Location: PIN_58,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Zero	=>  Location: PIN_126,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sum	=>  Location: PIN_129,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cout	=>  Location: PIN_87,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_132,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_135,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- selector[1]	=>  Location: PIN_83,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- selector[0]	=>  Location: PIN_113,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_59,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_105,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_119,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_125,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_114,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_124,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_106,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_98,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_104,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_103,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_99,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_115,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_64,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_85,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \Carry~output_o\ : std_logic;
SIGNAL \Overflow~output_o\ : std_logic;
SIGNAL \Zero~output_o\ : std_logic;
SIGNAL \Sum~output_o\ : std_logic;
SIGNAL \Cout~output_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \selector[0]~input_o\ : std_logic;
SIGNAL \selector[1]~input_o\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \Suma|Sum2|S~combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \Res|Sum2|S~combout\ : std_logic;
SIGNAL \Mux8~1_combout\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \Mul|Sum1|Sum5|Cout~0_combout\ : std_logic;
SIGNAL \Mux7~7_combout\ : std_logic;
SIGNAL \Res|Sum2|Cout~combout\ : std_logic;
SIGNAL \Suma|Sum2|Cout~0_combout\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \Res|Sum3|S~0_combout\ : std_logic;
SIGNAL \Mux7~5_combout\ : std_logic;
SIGNAL \Mux7~6_combout\ : std_logic;
SIGNAL \Suma|Sum3|Cout~1_combout\ : std_logic;
SIGNAL \Res|Sum3|Cout~combout\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \Res|Sum4|S~0_combout\ : std_logic;
SIGNAL \Mux6~4_combout\ : std_logic;
SIGNAL \Mul|Sum1|Sum2|S~0_combout\ : std_logic;
SIGNAL \Mul|Sum2|Sum2|Cout~0_combout\ : std_logic;
SIGNAL \Mul|Sum1|Sum2|Cout~0_combout\ : std_logic;
SIGNAL \Mul|Sum1|Sum3|S~0_combout\ : std_logic;
SIGNAL \Suma|Sum3|Cout~0_combout\ : std_logic;
SIGNAL \Mul|Sum2|Sum3|Cout~0_combout\ : std_logic;
SIGNAL \Mul|Sum1|Sum4|S~0_combout\ : std_logic;
SIGNAL \Mul|Sum1|Sum3|Cout~0_combout\ : std_logic;
SIGNAL \Mul|Sum2|Sum4|Cout~0_combout\ : std_logic;
SIGNAL \Mul|Sum1|Sum4|Cout~0_combout\ : std_logic;
SIGNAL \Mul|Sum1|Sum5|S~0_combout\ : std_logic;
SIGNAL \Mul|Sum2|Sum5|Cout~0_combout\ : std_logic;
SIGNAL \Mux6~6_combout\ : std_logic;
SIGNAL \Mux6~5_combout\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \Res|Sum5|S~0_combout\ : std_logic;
SIGNAL \Suma|Sum5|S~combout\ : std_logic;
SIGNAL \Res|Sum5|S~combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mul|Sum2|Sum5|S~2_combout\ : std_logic;
SIGNAL \Mul|Sum2|Sum4|S~2_combout\ : std_logic;
SIGNAL \Suma|Sum4|Cout~1_combout\ : std_logic;
SIGNAL \Mul|Sum2|Sum2|S~combout\ : std_logic;
SIGNAL \Mul|Sum3|Sum2|Cout~0_combout\ : std_logic;
SIGNAL \Mul|Sum2|Sum3|S~2_combout\ : std_logic;
SIGNAL \Mul|Sum3|Sum3|Cout~0_combout\ : std_logic;
SIGNAL \Mul|Sum3|Sum4|Cout~0_combout\ : std_logic;
SIGNAL \Mul|Sum3|Sum5|Cout~0_combout\ : std_logic;
SIGNAL \Mux7~4_combout\ : std_logic;
SIGNAL \Suma|Sum4|Cout~0_combout\ : std_logic;
SIGNAL \Suma|Sum5|Cout~0_combout\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \Suma|Sum6|S~combout\ : std_logic;
SIGNAL \Res|Sum4|Cout~combout\ : std_logic;
SIGNAL \Res|Sum5|Cout~combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux4~1_combout\ : std_logic;
SIGNAL \Mux4~2_combout\ : std_logic;
SIGNAL \Res|Sum6|Cout~combout\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \Res|Sum7|S~0_combout\ : std_logic;
SIGNAL \Suma|Sum7|S~combout\ : std_logic;
SIGNAL \Mux3~2_combout\ : std_logic;
SIGNAL \Mul|Sum3|Sum2|S~combout\ : std_logic;
SIGNAL \Mul|Sum4|Sum2|S~combout\ : std_logic;
SIGNAL \Mux3~3_combout\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \Res|Sum7|Cout~combout\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \Res|Sum8|S~combout\ : std_logic;
SIGNAL \Suma|Sum6|Cout~0_combout\ : std_logic;
SIGNAL \Suma|Sum7|Cout~0_combout\ : std_logic;
SIGNAL \Mux2~2_combout\ : std_logic;
SIGNAL \Mux13~2_combout\ : std_logic;
SIGNAL \Mul|Sum4|Sum2|Cout~0_combout\ : std_logic;
SIGNAL \Mul|Sum3|Sum3|S~2_combout\ : std_logic;
SIGNAL \Mul|Sum4|Sum3|S~combout\ : std_logic;
SIGNAL \Mux2~3_combout\ : std_logic;
SIGNAL \Mul|Sum4|Sum3|Cout~0_combout\ : std_logic;
SIGNAL \Mul|Sum3|Sum4|S~2_combout\ : std_logic;
SIGNAL \Mul|Sum4|Sum4|S~combout\ : std_logic;
SIGNAL \Mux1~2_combout\ : std_logic;
SIGNAL \Mul|Sum4|Sum4|Cout~0_combout\ : std_logic;
SIGNAL \Suma|Sum5|Cout~1_combout\ : std_logic;
SIGNAL \Mul|Sum3|Sum5|S~combout\ : std_logic;
SIGNAL \Mux13~3_combout\ : std_logic;
SIGNAL \Mux10~2_combout\ : std_logic;
SIGNAL \Res|Sum8|Cout~combout\ : std_logic;
SIGNAL \Mux10~3_combout\ : std_logic;
SIGNAL \Mul|Sum3|Sum5|S~2_combout\ : std_logic;
SIGNAL \Mul|Sum4|Sum5|Cout~0_combout\ : std_logic;
SIGNAL \Mux10~4_combout\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \Mux11~1_combout\ : std_logic;
SIGNAL \Mux11~2_combout\ : std_logic;
SIGNAL \Mux11~3_combout\ : std_logic;
SIGNAL \Mux12~11_combout\ : std_logic;
SIGNAL \Mux12~12_combout\ : std_logic;
SIGNAL \Mux12~6_combout\ : std_logic;
SIGNAL \Mux12~7_combout\ : std_logic;
SIGNAL \Mux12~8_combout\ : std_logic;
SIGNAL \Mux12~2_combout\ : std_logic;
SIGNAL \Mux12~3_combout\ : std_logic;
SIGNAL \Mux12~4_combout\ : std_logic;
SIGNAL \Mux12~5_combout\ : std_logic;
SIGNAL \Mux12~9_combout\ : std_logic;
SIGNAL \Mux12~10_combout\ : std_logic;
SIGNAL \Mux12~21_combout\ : std_logic;
SIGNAL \Mux12~17_combout\ : std_logic;
SIGNAL \Mux12~18_combout\ : std_logic;
SIGNAL \Mux12~15_combout\ : std_logic;
SIGNAL \Mux12~16_combout\ : std_logic;
SIGNAL \Mul|Sum4|Sum5|S~combout\ : std_logic;
SIGNAL \Mux12~19_combout\ : std_logic;
SIGNAL \Mul|Sum2|Sum3|S~combout\ : std_logic;
SIGNAL \Mux12~13_combout\ : std_logic;
SIGNAL \Mux12~14_combout\ : std_logic;
SIGNAL \Mux12~20_combout\ : std_logic;
SIGNAL \Mux13~4_combout\ : std_logic;
SIGNAL \Mux14~0_combout\ : std_logic;
SIGNAL \Mul|C\ : std_logic_vector(24 DOWNTO 0);

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
Carry <= ww_Carry;
Overflow <= ww_Overflow;
Zero <= ww_Zero;
Sum <= ww_Sum;
Cout <= ww_Cout;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X16_Y24_N16
\S[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux9~0_combout\,
	devoe => ww_devoe,
	o => \S[0]~output_o\);

-- Location: IOOBUF_X16_Y24_N9
\S[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux8~1_combout\,
	devoe => ww_devoe,
	o => \S[1]~output_o\);

-- Location: IOOBUF_X28_Y24_N2
\S[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux7~6_combout\,
	devoe => ww_devoe,
	o => \S[2]~output_o\);

-- Location: IOOBUF_X30_Y24_N23
\S[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux6~5_combout\,
	devoe => ww_devoe,
	o => \S[3]~output_o\);

-- Location: IOOBUF_X34_Y4_N23
\S[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~0_combout\,
	devoe => ww_devoe,
	o => \S[4]~output_o\);

-- Location: IOOBUF_X13_Y24_N23
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

-- Location: IOOBUF_X23_Y24_N9
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

-- Location: IOOBUF_X23_Y24_N16
\S[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~3_combout\,
	devoe => ww_devoe,
	o => \S[7]~output_o\);

-- Location: IOOBUF_X30_Y24_N2
\S[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~2_combout\,
	devoe => ww_devoe,
	o => \S[8]~output_o\);

-- Location: IOOBUF_X34_Y17_N2
\S[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux13~3_combout\,
	devoe => ww_devoe,
	o => \S[9]~output_o\);

-- Location: IOOBUF_X34_Y9_N2
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

-- Location: IOOBUF_X21_Y0_N9
\Overflow~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux11~3_combout\,
	devoe => ww_devoe,
	o => \Overflow~output_o\);

-- Location: IOOBUF_X16_Y24_N2
\Zero~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux12~20_combout\,
	devoe => ww_devoe,
	o => \Zero~output_o\);

-- Location: IOOBUF_X16_Y24_N23
\Sum~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux13~4_combout\,
	devoe => ww_devoe,
	o => \Sum~output_o\);

-- Location: IOOBUF_X34_Y10_N9
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

-- Location: IOIBUF_X11_Y24_N15
\B[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X13_Y24_N15
\A[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: IOIBUF_X28_Y24_N8
\selector[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_selector(0),
	o => \selector[0]~input_o\);

-- Location: IOIBUF_X34_Y9_N22
\selector[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_selector(1),
	o => \selector[1]~input_o\);

-- Location: LCCOMB_X23_Y20_N0
\Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (\selector[1]~input_o\ & (\B[0]~input_o\ & (\A[0]~input_o\ & !\selector[0]~input_o\))) # (!\selector[1]~input_o\ & (\B[0]~input_o\ $ ((\A[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[0]~input_o\,
	datac => \selector[0]~input_o\,
	datad => \selector[1]~input_o\,
	combout => \Mux9~0_combout\);

-- Location: IOIBUF_X23_Y0_N15
\A[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: IOIBUF_X34_Y19_N15
\B[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: LCCOMB_X23_Y19_N8
\Suma|Sum2|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \Suma|Sum2|S~combout\ = \A[1]~input_o\ $ (\B[1]~input_o\ $ (((\A[0]~input_o\ & \B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \A[1]~input_o\,
	datac => \B[0]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Suma|Sum2|S~combout\);

-- Location: LCCOMB_X23_Y19_N26
\Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (\selector[1]~input_o\ & (\B[0]~input_o\ & (\A[1]~input_o\))) # (!\selector[1]~input_o\ & (((\Suma|Sum2|S~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[1]~input_o\,
	datac => \Suma|Sum2|S~combout\,
	datad => \selector[1]~input_o\,
	combout => \Mux8~0_combout\);

-- Location: LCCOMB_X23_Y19_N28
\Res|Sum2|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \Res|Sum2|S~combout\ = \A[1]~input_o\ $ (\B[1]~input_o\ $ (((\A[0]~input_o\) # (!\B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110001100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \A[1]~input_o\,
	datac => \B[0]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Res|Sum2|S~combout\);

-- Location: LCCOMB_X23_Y19_N22
\Mux8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~1_combout\ = (\selector[0]~input_o\ & (((!\Res|Sum2|S~combout\ & !\selector[1]~input_o\)))) # (!\selector[0]~input_o\ & (\Mux8~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux8~0_combout\,
	datab => \Res|Sum2|S~combout\,
	datac => \selector[0]~input_o\,
	datad => \selector[1]~input_o\,
	combout => \Mux8~1_combout\);

-- Location: IOIBUF_X23_Y24_N1
\A[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: LCCOMB_X21_Y19_N24
\Mul|C[10]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mul|C\(10) = (\B[0]~input_o\ & \A[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datac => \A[2]~input_o\,
	combout => \Mul|C\(10));

-- Location: IOIBUF_X18_Y24_N22
\B[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: LCCOMB_X23_Y19_N16
\Mul|Sum1|Sum5|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mul|Sum1|Sum5|Cout~0_combout\ = (\A[0]~input_o\ & (\B[4]~input_o\ & \A[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \B[4]~input_o\,
	datac => \A[1]~input_o\,
	combout => \Mul|Sum1|Sum5|Cout~0_combout\);

-- Location: LCCOMB_X21_Y19_N28
\Mux7~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~7_combout\ = (!\selector[0]~input_o\ & (\selector[1]~input_o\ & (\Mul|C\(10) $ (\Mul|Sum1|Sum5|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selector[0]~input_o\,
	datab => \Mul|C\(10),
	datac => \selector[1]~input_o\,
	datad => \Mul|Sum1|Sum5|Cout~0_combout\,
	combout => \Mux7~7_combout\);

-- Location: LCCOMB_X23_Y19_N10
\Res|Sum2|Cout\ : cycloneive_lcell_comb
-- Equation(s):
-- \Res|Sum2|Cout~combout\ = (\A[1]~input_o\ & ((\A[0]~input_o\) # ((!\B[1]~input_o\) # (!\B[0]~input_o\)))) # (!\A[1]~input_o\ & (!\B[1]~input_o\ & ((\A[0]~input_o\) # (!\B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \A[1]~input_o\,
	datac => \B[0]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Res|Sum2|Cout~combout\);

-- Location: LCCOMB_X23_Y19_N20
\Suma|Sum2|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Suma|Sum2|Cout~0_combout\ = (\A[1]~input_o\ & ((\B[1]~input_o\) # ((\A[0]~input_o\ & \B[0]~input_o\)))) # (!\A[1]~input_o\ & (\A[0]~input_o\ & (\B[0]~input_o\ & \B[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \A[1]~input_o\,
	datac => \B[0]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Suma|Sum2|Cout~0_combout\);

-- Location: IOIBUF_X28_Y24_N15
\B[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: LCCOMB_X24_Y19_N8
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

-- Location: LCCOMB_X24_Y19_N2
\Mux7~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~5_combout\ = \Res|Sum3|S~0_combout\ $ (((\selector[0]~input_o\ & (!\Res|Sum2|Cout~combout\)) # (!\selector[0]~input_o\ & ((\Suma|Sum2|Cout~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Res|Sum2|Cout~combout\,
	datab => \Suma|Sum2|Cout~0_combout\,
	datac => \Res|Sum3|S~0_combout\,
	datad => \selector[0]~input_o\,
	combout => \Mux7~5_combout\);

-- Location: LCCOMB_X24_Y20_N24
\Mux7~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~6_combout\ = (\Mux7~7_combout\) # ((\Mux7~5_combout\ & !\selector[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~7_combout\,
	datac => \Mux7~5_combout\,
	datad => \selector[1]~input_o\,
	combout => \Mux7~6_combout\);

-- Location: LCCOMB_X24_Y19_N0
\Suma|Sum3|Cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Suma|Sum3|Cout~1_combout\ = (\Suma|Sum2|Cout~0_combout\ & ((\A[2]~input_o\) # (\B[2]~input_o\))) # (!\Suma|Sum2|Cout~0_combout\ & (\A[2]~input_o\ & \B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Suma|Sum2|Cout~0_combout\,
	datac => \A[2]~input_o\,
	datad => \B[2]~input_o\,
	combout => \Suma|Sum3|Cout~1_combout\);

-- Location: LCCOMB_X24_Y19_N28
\Res|Sum3|Cout\ : cycloneive_lcell_comb
-- Equation(s):
-- \Res|Sum3|Cout~combout\ = (\Res|Sum2|Cout~combout\ & ((\A[2]~input_o\) # (!\B[2]~input_o\))) # (!\Res|Sum2|Cout~combout\ & (\A[2]~input_o\ & !\B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Res|Sum2|Cout~combout\,
	datac => \A[2]~input_o\,
	datad => \B[2]~input_o\,
	combout => \Res|Sum3|Cout~combout\);

-- Location: IOIBUF_X18_Y24_N15
\A[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: IOIBUF_X34_Y20_N8
\B[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: LCCOMB_X24_Y19_N30
\Res|Sum4|S~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Res|Sum4|S~0_combout\ = \A[3]~input_o\ $ (\B[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[3]~input_o\,
	datad => \B[3]~input_o\,
	combout => \Res|Sum4|S~0_combout\);

-- Location: LCCOMB_X24_Y19_N18
\Mux6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~4_combout\ = \Res|Sum4|S~0_combout\ $ (((\selector[0]~input_o\ & ((!\Res|Sum3|Cout~combout\))) # (!\selector[0]~input_o\ & (\Suma|Sum3|Cout~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Suma|Sum3|Cout~1_combout\,
	datab => \Res|Sum3|Cout~combout\,
	datac => \Res|Sum4|S~0_combout\,
	datad => \selector[0]~input_o\,
	combout => \Mux6~4_combout\);

-- Location: LCCOMB_X23_Y19_N2
\Mul|Sum1|Sum2|S~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mul|Sum1|Sum2|S~0_combout\ = (\B[1]~input_o\ & (\A[0]~input_o\ $ (\A[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datac => \A[1]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Mul|Sum1|Sum2|S~0_combout\);

-- Location: LCCOMB_X23_Y19_N0
\Mul|C[11]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mul|C\(11) = (\A[2]~input_o\ & \B[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Mul|C\(11));

-- Location: LCCOMB_X21_Y19_N12
\Mul|Sum2|Sum2|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mul|Sum2|Sum2|Cout~0_combout\ = (\Mul|Sum1|Sum2|S~0_combout\ & ((\Mul|C\(11)) # ((\Mul|Sum1|Sum5|Cout~0_combout\ & \Mul|C\(10))))) # (!\Mul|Sum1|Sum2|S~0_combout\ & (\Mul|C\(11) & (\Mul|Sum1|Sum5|Cout~0_combout\ & \Mul|C\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mul|Sum1|Sum2|S~0_combout\,
	datab => \Mul|C\(11),
	datac => \Mul|Sum1|Sum5|Cout~0_combout\,
	datad => \Mul|C\(10),
	combout => \Mul|Sum2|Sum2|Cout~0_combout\);

-- Location: LCCOMB_X23_Y19_N6
\Mul|Sum1|Sum2|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mul|Sum1|Sum2|Cout~0_combout\ = ((!\B[1]~input_o\) # (!\A[1]~input_o\)) # (!\A[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datac => \A[1]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Mul|Sum1|Sum2|Cout~0_combout\);

-- Location: LCCOMB_X23_Y19_N4
\Mul|Sum1|Sum3|S~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mul|Sum1|Sum3|S~0_combout\ = (\B[2]~input_o\ & (\A[0]~input_o\ $ (\A[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datac => \A[1]~input_o\,
	datad => \B[2]~input_o\,
	combout => \Mul|Sum1|Sum3|S~0_combout\);

-- Location: LCCOMB_X22_Y20_N24
\Suma|Sum3|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Suma|Sum3|Cout~0_combout\ = (\A[2]~input_o\ & \B[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[2]~input_o\,
	datad => \B[2]~input_o\,
	combout => \Suma|Sum3|Cout~0_combout\);

-- Location: LCCOMB_X22_Y20_N26
\Mul|Sum2|Sum3|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mul|Sum2|Sum3|Cout~0_combout\ = (\Mul|Sum2|Sum2|Cout~0_combout\ & ((\Suma|Sum3|Cout~0_combout\) # (\Mul|Sum1|Sum2|Cout~0_combout\ $ (!\Mul|Sum1|Sum3|S~0_combout\)))) # (!\Mul|Sum2|Sum2|Cout~0_combout\ & (\Suma|Sum3|Cout~0_combout\ & 
-- (\Mul|Sum1|Sum2|Cout~0_combout\ $ (!\Mul|Sum1|Sum3|S~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mul|Sum2|Sum2|Cout~0_combout\,
	datab => \Mul|Sum1|Sum2|Cout~0_combout\,
	datac => \Mul|Sum1|Sum3|S~0_combout\,
	datad => \Suma|Sum3|Cout~0_combout\,
	combout => \Mul|Sum2|Sum3|Cout~0_combout\);

-- Location: LCCOMB_X23_Y19_N24
\Mul|Sum1|Sum4|S~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mul|Sum1|Sum4|S~0_combout\ = (\B[3]~input_o\ & (\A[0]~input_o\ $ (\A[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \B[3]~input_o\,
	datac => \A[1]~input_o\,
	combout => \Mul|Sum1|Sum4|S~0_combout\);

-- Location: LCCOMB_X22_Y19_N28
\Mul|C[13]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mul|C\(13) = (\A[2]~input_o\ & \B[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datad => \B[3]~input_o\,
	combout => \Mul|C\(13));

-- Location: LCCOMB_X23_Y19_N18
\Mul|Sum1|Sum3|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mul|Sum1|Sum3|Cout~0_combout\ = (\A[0]~input_o\ & (\A[1]~input_o\ & \B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datac => \A[1]~input_o\,
	datad => \B[2]~input_o\,
	combout => \Mul|Sum1|Sum3|Cout~0_combout\);

-- Location: LCCOMB_X22_Y19_N30
\Mul|Sum2|Sum4|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mul|Sum2|Sum4|Cout~0_combout\ = (\Mul|Sum2|Sum3|Cout~0_combout\ & ((\Mul|C\(13)) # (\Mul|Sum1|Sum4|S~0_combout\ $ (\Mul|Sum1|Sum3|Cout~0_combout\)))) # (!\Mul|Sum2|Sum3|Cout~0_combout\ & (\Mul|C\(13) & (\Mul|Sum1|Sum4|S~0_combout\ $ 
-- (\Mul|Sum1|Sum3|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mul|Sum2|Sum3|Cout~0_combout\,
	datab => \Mul|Sum1|Sum4|S~0_combout\,
	datac => \Mul|C\(13),
	datad => \Mul|Sum1|Sum3|Cout~0_combout\,
	combout => \Mul|Sum2|Sum4|Cout~0_combout\);

-- Location: LCCOMB_X22_Y19_N16
\Mul|Sum1|Sum4|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mul|Sum1|Sum4|Cout~0_combout\ = (\A[0]~input_o\ & (\A[1]~input_o\ & \B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datac => \A[1]~input_o\,
	datad => \B[3]~input_o\,
	combout => \Mul|Sum1|Sum4|Cout~0_combout\);

-- Location: LCCOMB_X23_Y19_N30
\Mul|Sum1|Sum5|S~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mul|Sum1|Sum5|S~0_combout\ = (\B[4]~input_o\ & (\A[0]~input_o\ $ (\A[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \B[4]~input_o\,
	datac => \A[1]~input_o\,
	combout => \Mul|Sum1|Sum5|S~0_combout\);

-- Location: LCCOMB_X22_Y19_N26
\Mul|C[14]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mul|C\(14) = (\A[2]~input_o\ & \B[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datad => \B[4]~input_o\,
	combout => \Mul|C\(14));

-- Location: LCCOMB_X22_Y19_N24
\Mul|Sum2|Sum5|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mul|Sum2|Sum5|Cout~0_combout\ = (\Mul|Sum2|Sum4|Cout~0_combout\ & ((\Mul|C\(14)) # (\Mul|Sum1|Sum4|Cout~0_combout\ $ (\Mul|Sum1|Sum5|S~0_combout\)))) # (!\Mul|Sum2|Sum4|Cout~0_combout\ & (\Mul|C\(14) & (\Mul|Sum1|Sum4|Cout~0_combout\ $ 
-- (\Mul|Sum1|Sum5|S~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mul|Sum2|Sum4|Cout~0_combout\,
	datab => \Mul|Sum1|Sum4|Cout~0_combout\,
	datac => \Mul|Sum1|Sum5|S~0_combout\,
	datad => \Mul|C\(14),
	combout => \Mul|Sum2|Sum5|Cout~0_combout\);

-- Location: LCCOMB_X21_Y19_N18
\Mul|C[15]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mul|C\(15) = (\B[0]~input_o\ & \A[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datac => \A[3]~input_o\,
	combout => \Mul|C\(15));

-- Location: LCCOMB_X21_Y19_N6
\Mux6~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~6_combout\ = (\selector[1]~input_o\ & (!\selector[0]~input_o\ & (\Mul|Sum2|Sum5|Cout~0_combout\ $ (\Mul|C\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selector[1]~input_o\,
	datab => \Mul|Sum2|Sum5|Cout~0_combout\,
	datac => \selector[0]~input_o\,
	datad => \Mul|C\(15),
	combout => \Mux6~6_combout\);

-- Location: LCCOMB_X24_Y19_N20
\Mux6~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~5_combout\ = (\Mux6~6_combout\) # ((\Mux6~4_combout\ & !\selector[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux6~4_combout\,
	datac => \Mux6~6_combout\,
	datad => \selector[1]~input_o\,
	combout => \Mux6~5_combout\);

-- Location: IOIBUF_X34_Y17_N22
\A[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: LCCOMB_X25_Y19_N24
\Res|Sum5|S~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Res|Sum5|S~0_combout\ = \B[4]~input_o\ $ (\A[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[4]~input_o\,
	datac => \A[4]~input_o\,
	combout => \Res|Sum5|S~0_combout\);

-- Location: LCCOMB_X24_Y19_N6
\Suma|Sum5|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \Suma|Sum5|S~combout\ = \Res|Sum5|S~0_combout\ $ (((\B[3]~input_o\ & ((\Suma|Sum3|Cout~1_combout\) # (\A[3]~input_o\))) # (!\B[3]~input_o\ & (\Suma|Sum3|Cout~1_combout\ & \A[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \Suma|Sum3|Cout~1_combout\,
	datac => \A[3]~input_o\,
	datad => \Res|Sum5|S~0_combout\,
	combout => \Suma|Sum5|S~combout\);

-- Location: LCCOMB_X24_Y19_N24
\Res|Sum5|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \Res|Sum5|S~combout\ = \Res|Sum5|S~0_combout\ $ (((\B[3]~input_o\ & (\Res|Sum3|Cout~combout\ & \A[3]~input_o\)) # (!\B[3]~input_o\ & ((\Res|Sum3|Cout~combout\) # (\A[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101111010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \Res|Sum3|Cout~combout\,
	datac => \A[3]~input_o\,
	datad => \Res|Sum5|S~0_combout\,
	combout => \Res|Sum5|S~combout\);

-- Location: LCCOMB_X24_Y19_N10
\Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (!\selector[1]~input_o\ & ((\selector[0]~input_o\ & ((!\Res|Sum5|S~combout\))) # (!\selector[0]~input_o\ & (\Suma|Sum5|S~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Suma|Sum5|S~combout\,
	datab => \selector[0]~input_o\,
	datac => \Res|Sum5|S~combout\,
	datad => \selector[1]~input_o\,
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X22_Y19_N22
\Mul|Sum2|Sum5|S~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mul|Sum2|Sum5|S~2_combout\ = \Mul|Sum1|Sum5|S~0_combout\ $ (\Mul|Sum1|Sum4|Cout~0_combout\ $ (((\A[2]~input_o\ & \B[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mul|Sum1|Sum5|S~0_combout\,
	datab => \Mul|Sum1|Sum4|Cout~0_combout\,
	datac => \A[2]~input_o\,
	datad => \B[4]~input_o\,
	combout => \Mul|Sum2|Sum5|S~2_combout\);

-- Location: LCCOMB_X22_Y19_N18
\Mul|C[19]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mul|C\(19) = (\A[3]~input_o\ & \B[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[3]~input_o\,
	datad => \B[4]~input_o\,
	combout => \Mul|C\(19));

-- Location: LCCOMB_X22_Y19_N0
\Mul|Sum2|Sum4|S~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mul|Sum2|Sum4|S~2_combout\ = \Mul|Sum1|Sum3|Cout~0_combout\ $ (\Mul|Sum1|Sum4|S~0_combout\ $ (((\B[3]~input_o\ & \A[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \Mul|Sum1|Sum3|Cout~0_combout\,
	datac => \A[2]~input_o\,
	datad => \Mul|Sum1|Sum4|S~0_combout\,
	combout => \Mul|Sum2|Sum4|S~2_combout\);

-- Location: LCCOMB_X22_Y20_N4
\Suma|Sum4|Cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Suma|Sum4|Cout~1_combout\ = (\A[3]~input_o\ & \B[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datad => \B[3]~input_o\,
	combout => \Suma|Sum4|Cout~1_combout\);

-- Location: LCCOMB_X21_Y19_N10
\Mul|Sum2|Sum2|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mul|Sum2|Sum2|S~combout\ = \Mul|Sum1|Sum2|S~0_combout\ $ (\Mul|C\(11) $ (((\Mul|Sum1|Sum5|Cout~0_combout\ & \Mul|C\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mul|Sum1|Sum2|S~0_combout\,
	datab => \Mul|C\(11),
	datac => \Mul|Sum1|Sum5|Cout~0_combout\,
	datad => \Mul|C\(10),
	combout => \Mul|Sum2|Sum2|S~combout\);

-- Location: LCCOMB_X21_Y19_N8
\Mul|C[16]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mul|C\(16) = (\A[3]~input_o\ & \B[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[3]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Mul|C\(16));

-- Location: LCCOMB_X21_Y19_N4
\Mul|Sum3|Sum2|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mul|Sum3|Sum2|Cout~0_combout\ = (\Mul|Sum2|Sum2|S~combout\ & ((\Mul|C\(16)) # ((\Mul|C\(15) & \Mul|Sum2|Sum5|Cout~0_combout\)))) # (!\Mul|Sum2|Sum2|S~combout\ & (\Mul|C\(15) & (\Mul|C\(16) & \Mul|Sum2|Sum5|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mul|Sum2|Sum2|S~combout\,
	datab => \Mul|C\(15),
	datac => \Mul|C\(16),
	datad => \Mul|Sum2|Sum5|Cout~0_combout\,
	combout => \Mul|Sum3|Sum2|Cout~0_combout\);

-- Location: LCCOMB_X22_Y20_N22
\Mul|C[17]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mul|C\(17) = (\A[3]~input_o\ & \B[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datad => \B[2]~input_o\,
	combout => \Mul|C\(17));

-- Location: LCCOMB_X22_Y20_N18
\Mul|Sum2|Sum3|S~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mul|Sum2|Sum3|S~2_combout\ = \Mul|Sum1|Sum3|S~0_combout\ $ (\Mul|Sum1|Sum2|Cout~0_combout\ $ (((\A[2]~input_o\ & \B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \Mul|Sum1|Sum3|S~0_combout\,
	datac => \Mul|Sum1|Sum2|Cout~0_combout\,
	datad => \B[2]~input_o\,
	combout => \Mul|Sum2|Sum3|S~2_combout\);

-- Location: LCCOMB_X22_Y20_N0
\Mul|Sum3|Sum3|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mul|Sum3|Sum3|Cout~0_combout\ = (\Mul|Sum3|Sum2|Cout~0_combout\ & ((\Mul|C\(17)) # (\Mul|Sum2|Sum2|Cout~0_combout\ $ (!\Mul|Sum2|Sum3|S~2_combout\)))) # (!\Mul|Sum3|Sum2|Cout~0_combout\ & (\Mul|C\(17) & (\Mul|Sum2|Sum2|Cout~0_combout\ $ 
-- (!\Mul|Sum2|Sum3|S~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mul|Sum2|Sum2|Cout~0_combout\,
	datab => \Mul|Sum3|Sum2|Cout~0_combout\,
	datac => \Mul|C\(17),
	datad => \Mul|Sum2|Sum3|S~2_combout\,
	combout => \Mul|Sum3|Sum3|Cout~0_combout\);

-- Location: LCCOMB_X22_Y20_N10
\Mul|Sum3|Sum4|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mul|Sum3|Sum4|Cout~0_combout\ = (\Suma|Sum4|Cout~1_combout\ & ((\Mul|Sum3|Sum3|Cout~0_combout\) # (\Mul|Sum2|Sum3|Cout~0_combout\ $ (\Mul|Sum2|Sum4|S~2_combout\)))) # (!\Suma|Sum4|Cout~1_combout\ & (\Mul|Sum3|Sum3|Cout~0_combout\ & 
-- (\Mul|Sum2|Sum3|Cout~0_combout\ $ (\Mul|Sum2|Sum4|S~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mul|Sum2|Sum3|Cout~0_combout\,
	datab => \Mul|Sum2|Sum4|S~2_combout\,
	datac => \Suma|Sum4|Cout~1_combout\,
	datad => \Mul|Sum3|Sum3|Cout~0_combout\,
	combout => \Mul|Sum3|Sum4|Cout~0_combout\);

-- Location: LCCOMB_X22_Y19_N4
\Mul|Sum3|Sum5|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mul|Sum3|Sum5|Cout~0_combout\ = (\Mul|C\(19) & ((\Mul|Sum3|Sum4|Cout~0_combout\) # (\Mul|Sum2|Sum5|S~2_combout\ $ (\Mul|Sum2|Sum4|Cout~0_combout\)))) # (!\Mul|C\(19) & (\Mul|Sum3|Sum4|Cout~0_combout\ & (\Mul|Sum2|Sum5|S~2_combout\ $ 
-- (\Mul|Sum2|Sum4|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mul|Sum2|Sum5|S~2_combout\,
	datab => \Mul|C\(19),
	datac => \Mul|Sum3|Sum4|Cout~0_combout\,
	datad => \Mul|Sum2|Sum4|Cout~0_combout\,
	combout => \Mul|Sum3|Sum5|Cout~0_combout\);

-- Location: LCCOMB_X25_Y18_N0
\Mux7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~4_combout\ = (!\selector[0]~input_o\ & \selector[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \selector[0]~input_o\,
	datad => \selector[1]~input_o\,
	combout => \Mux7~4_combout\);

-- Location: LCCOMB_X21_Y19_N30
\Mul|C[20]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mul|C\(20) = (\A[4]~input_o\ & \B[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[4]~input_o\,
	datad => \B[0]~input_o\,
	combout => \Mul|C\(20));

-- Location: LCCOMB_X24_Y19_N14
\Suma|Sum4|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Suma|Sum4|Cout~0_combout\ = (\Suma|Sum3|Cout~1_combout\ & ((\A[3]~input_o\) # (\B[3]~input_o\))) # (!\Suma|Sum3|Cout~1_combout\ & (\A[3]~input_o\ & \B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Suma|Sum3|Cout~1_combout\,
	datac => \A[3]~input_o\,
	datad => \B[3]~input_o\,
	combout => \Suma|Sum4|Cout~0_combout\);

-- Location: LCCOMB_X25_Y19_N22
\Suma|Sum5|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Suma|Sum5|Cout~0_combout\ = (\Suma|Sum4|Cout~0_combout\ & ((\B[4]~input_o\) # (\A[4]~input_o\))) # (!\Suma|Sum4|Cout~0_combout\ & (\B[4]~input_o\ & \A[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Suma|Sum4|Cout~0_combout\,
	datab => \B[4]~input_o\,
	datac => \A[4]~input_o\,
	combout => \Suma|Sum5|Cout~0_combout\);

-- Location: IOIBUF_X34_Y18_N1
\A[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: IOIBUF_X34_Y18_N15
\B[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: LCCOMB_X25_Y19_N16
\Suma|Sum6|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \Suma|Sum6|S~combout\ = \Suma|Sum5|Cout~0_combout\ $ (\A[5]~input_o\ $ (\B[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Suma|Sum5|Cout~0_combout\,
	datab => \A[5]~input_o\,
	datac => \B[5]~input_o\,
	combout => \Suma|Sum6|S~combout\);

-- Location: LCCOMB_X24_Y19_N12
\Res|Sum4|Cout\ : cycloneive_lcell_comb
-- Equation(s):
-- \Res|Sum4|Cout~combout\ = (\Res|Sum3|Cout~combout\ & ((\A[3]~input_o\) # (!\B[3]~input_o\))) # (!\Res|Sum3|Cout~combout\ & (\A[3]~input_o\ & !\B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Res|Sum3|Cout~combout\,
	datac => \A[3]~input_o\,
	datad => \B[3]~input_o\,
	combout => \Res|Sum4|Cout~combout\);

-- Location: LCCOMB_X25_Y19_N10
\Res|Sum5|Cout\ : cycloneive_lcell_comb
-- Equation(s):
-- \Res|Sum5|Cout~combout\ = (\Res|Sum4|Cout~combout\ & ((\A[4]~input_o\) # (!\B[4]~input_o\))) # (!\Res|Sum4|Cout~combout\ & (!\B[4]~input_o\ & \A[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Res|Sum4|Cout~combout\,
	datab => \B[4]~input_o\,
	datac => \A[4]~input_o\,
	combout => \Res|Sum5|Cout~combout\);

-- Location: LCCOMB_X25_Y19_N4
\Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\selector[0]~input_o\ & (\A[5]~input_o\ $ (\B[5]~input_o\ $ (!\Res|Sum5|Cout~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selector[0]~input_o\,
	datab => \A[5]~input_o\,
	datac => \B[5]~input_o\,
	datad => \Res|Sum5|Cout~combout\,
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X25_Y19_N26
\Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~1_combout\ = (!\selector[1]~input_o\ & ((\Mux4~0_combout\) # ((!\selector[0]~input_o\ & \Suma|Sum6|S~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selector[0]~input_o\,
	datab => \Suma|Sum6|S~combout\,
	datac => \Mux4~0_combout\,
	datad => \selector[1]~input_o\,
	combout => \Mux4~1_combout\);

-- Location: LCCOMB_X21_Y19_N22
\Mux4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~2_combout\ = (\Mux4~1_combout\) # ((\Mux7~4_combout\ & (\Mul|Sum3|Sum5|Cout~0_combout\ $ (\Mul|C\(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mul|Sum3|Sum5|Cout~0_combout\,
	datab => \Mux7~4_combout\,
	datac => \Mul|C\(20),
	datad => \Mux4~1_combout\,
	combout => \Mux4~2_combout\);

-- Location: LCCOMB_X25_Y19_N6
\Res|Sum6|Cout\ : cycloneive_lcell_comb
-- Equation(s):
-- \Res|Sum6|Cout~combout\ = (\A[5]~input_o\ & ((\Res|Sum5|Cout~combout\) # (!\B[5]~input_o\))) # (!\A[5]~input_o\ & (!\B[5]~input_o\ & \Res|Sum5|Cout~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[5]~input_o\,
	datac => \B[5]~input_o\,
	datad => \Res|Sum5|Cout~combout\,
	combout => \Res|Sum6|Cout~combout\);

-- Location: IOIBUF_X28_Y24_N22
\B[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: IOIBUF_X34_Y17_N15
\A[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: LCCOMB_X25_Y19_N20
\Res|Sum7|S~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Res|Sum7|S~0_combout\ = \B[6]~input_o\ $ (\A[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[6]~input_o\,
	datad => \A[6]~input_o\,
	combout => \Res|Sum7|S~0_combout\);

-- Location: LCCOMB_X25_Y19_N0
\Suma|Sum7|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \Suma|Sum7|S~combout\ = \Res|Sum7|S~0_combout\ $ (((\Suma|Sum5|Cout~0_combout\ & ((\A[5]~input_o\) # (\B[5]~input_o\))) # (!\Suma|Sum5|Cout~0_combout\ & (\A[5]~input_o\ & \B[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Suma|Sum5|Cout~0_combout\,
	datab => \A[5]~input_o\,
	datac => \B[5]~input_o\,
	datad => \Res|Sum7|S~0_combout\,
	combout => \Suma|Sum7|S~combout\);

-- Location: LCCOMB_X25_Y19_N18
\Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~2_combout\ = (\selector[0]~input_o\ & (\Res|Sum6|Cout~combout\ $ ((!\Res|Sum7|S~0_combout\)))) # (!\selector[0]~input_o\ & (((\Suma|Sum7|S~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Res|Sum6|Cout~combout\,
	datab => \Res|Sum7|S~0_combout\,
	datac => \selector[0]~input_o\,
	datad => \Suma|Sum7|S~combout\,
	combout => \Mux3~2_combout\);

-- Location: LCCOMB_X21_Y19_N16
\Mul|Sum3|Sum2|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mul|Sum3|Sum2|S~combout\ = \Mul|Sum2|Sum2|S~combout\ $ (\Mul|C\(16) $ (((\Mul|C\(15) & \Mul|Sum2|Sum5|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mul|Sum2|Sum2|S~combout\,
	datab => \Mul|C\(15),
	datac => \Mul|C\(16),
	datad => \Mul|Sum2|Sum5|Cout~0_combout\,
	combout => \Mul|Sum3|Sum2|S~combout\);

-- Location: LCCOMB_X21_Y19_N26
\Mul|C[21]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mul|C\(21) = (\A[4]~input_o\ & \B[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[4]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Mul|C\(21));

-- Location: LCCOMB_X21_Y19_N20
\Mul|Sum4|Sum2|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mul|Sum4|Sum2|S~combout\ = \Mul|Sum3|Sum2|S~combout\ $ (\Mul|C\(21) $ (((\Mul|C\(20) & \Mul|Sum3|Sum5|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mul|C\(20),
	datab => \Mul|Sum3|Sum2|S~combout\,
	datac => \Mul|C\(21),
	datad => \Mul|Sum3|Sum5|Cout~0_combout\,
	combout => \Mul|Sum4|Sum2|S~combout\);

-- Location: LCCOMB_X25_Y19_N12
\Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~3_combout\ = (\selector[1]~input_o\ & (!\selector[0]~input_o\ & ((\Mul|Sum4|Sum2|S~combout\)))) # (!\selector[1]~input_o\ & (((\Mux3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selector[0]~input_o\,
	datab => \Mux3~2_combout\,
	datac => \Mul|Sum4|Sum2|S~combout\,
	datad => \selector[1]~input_o\,
	combout => \Mux3~3_combout\);

-- Location: IOIBUF_X25_Y0_N1
\A[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: LCCOMB_X25_Y19_N8
\Res|Sum7|Cout\ : cycloneive_lcell_comb
-- Equation(s):
-- \Res|Sum7|Cout~combout\ = (\Res|Sum6|Cout~combout\ & ((\A[6]~input_o\) # (!\B[6]~input_o\))) # (!\Res|Sum6|Cout~combout\ & (!\B[6]~input_o\ & \A[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Res|Sum6|Cout~combout\,
	datac => \B[6]~input_o\,
	datad => \A[6]~input_o\,
	combout => \Res|Sum7|Cout~combout\);

-- Location: IOIBUF_X34_Y9_N8
\B[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: LCCOMB_X25_Y18_N28
\Res|Sum8|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \Res|Sum8|S~combout\ = \A[7]~input_o\ $ (\Res|Sum7|Cout~combout\ $ (\B[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[7]~input_o\,
	datac => \Res|Sum7|Cout~combout\,
	datad => \B[7]~input_o\,
	combout => \Res|Sum8|S~combout\);

-- Location: LCCOMB_X25_Y19_N28
\Suma|Sum6|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Suma|Sum6|Cout~0_combout\ = (\Suma|Sum5|Cout~0_combout\ & ((\A[5]~input_o\) # (\B[5]~input_o\))) # (!\Suma|Sum5|Cout~0_combout\ & (\A[5]~input_o\ & \B[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Suma|Sum5|Cout~0_combout\,
	datab => \A[5]~input_o\,
	datac => \B[5]~input_o\,
	combout => \Suma|Sum6|Cout~0_combout\);

-- Location: LCCOMB_X25_Y19_N30
\Suma|Sum7|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Suma|Sum7|Cout~0_combout\ = (\Suma|Sum6|Cout~0_combout\ & ((\B[6]~input_o\) # (\A[6]~input_o\))) # (!\Suma|Sum6|Cout~0_combout\ & (\B[6]~input_o\ & \A[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Suma|Sum6|Cout~0_combout\,
	datac => \B[6]~input_o\,
	datad => \A[6]~input_o\,
	combout => \Suma|Sum7|Cout~0_combout\);

-- Location: LCCOMB_X25_Y18_N26
\Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~2_combout\ = (!\selector[0]~input_o\ & (\Suma|Sum7|Cout~0_combout\ $ (\A[7]~input_o\ $ (\B[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Suma|Sum7|Cout~0_combout\,
	datab => \A[7]~input_o\,
	datac => \selector[0]~input_o\,
	datad => \B[7]~input_o\,
	combout => \Mux2~2_combout\);

-- Location: LCCOMB_X23_Y20_N26
\Mux13~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~2_combout\ = (!\selector[1]~input_o\ & ((\Mux2~2_combout\) # ((!\Res|Sum8|S~combout\ & \selector[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Res|Sum8|S~combout\,
	datab => \Mux2~2_combout\,
	datac => \selector[0]~input_o\,
	datad => \selector[1]~input_o\,
	combout => \Mux13~2_combout\);

-- Location: LCCOMB_X21_Y19_N14
\Mul|Sum4|Sum2|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mul|Sum4|Sum2|Cout~0_combout\ = (\Mul|Sum3|Sum2|S~combout\ & ((\Mul|C\(21)) # ((\Mul|C\(20) & \Mul|Sum3|Sum5|Cout~0_combout\)))) # (!\Mul|Sum3|Sum2|S~combout\ & (\Mul|C\(20) & (\Mul|C\(21) & \Mul|Sum3|Sum5|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mul|C\(20),
	datab => \Mul|Sum3|Sum2|S~combout\,
	datac => \Mul|C\(21),
	datad => \Mul|Sum3|Sum5|Cout~0_combout\,
	combout => \Mul|Sum4|Sum2|Cout~0_combout\);

-- Location: LCCOMB_X22_Y20_N28
\Mul|C[22]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mul|C\(22) = (\B[2]~input_o\ & \A[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[2]~input_o\,
	datad => \A[4]~input_o\,
	combout => \Mul|C\(22));

-- Location: LCCOMB_X22_Y20_N20
\Mul|Sum3|Sum3|S~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mul|Sum3|Sum3|S~2_combout\ = \Mul|Sum2|Sum2|Cout~0_combout\ $ (\Mul|Sum2|Sum3|S~2_combout\ $ (((\A[3]~input_o\ & \B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mul|Sum2|Sum2|Cout~0_combout\,
	datab => \Mul|Sum2|Sum3|S~2_combout\,
	datac => \A[3]~input_o\,
	datad => \B[2]~input_o\,
	combout => \Mul|Sum3|Sum3|S~2_combout\);

-- Location: LCCOMB_X22_Y20_N14
\Mul|Sum4|Sum3|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mul|Sum4|Sum3|S~combout\ = \Mul|Sum4|Sum2|Cout~0_combout\ $ (\Mul|C\(22) $ (\Mul|Sum3|Sum2|Cout~0_combout\ $ (\Mul|Sum3|Sum3|S~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mul|Sum4|Sum2|Cout~0_combout\,
	datab => \Mul|C\(22),
	datac => \Mul|Sum3|Sum2|Cout~0_combout\,
	datad => \Mul|Sum3|Sum3|S~2_combout\,
	combout => \Mul|Sum4|Sum3|S~combout\);

-- Location: LCCOMB_X23_Y20_N10
\Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~3_combout\ = (\Mux13~2_combout\) # ((!\Mul|Sum4|Sum3|S~combout\ & (!\selector[0]~input_o\ & \selector[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~2_combout\,
	datab => \Mul|Sum4|Sum3|S~combout\,
	datac => \selector[0]~input_o\,
	datad => \selector[1]~input_o\,
	combout => \Mux2~3_combout\);

-- Location: LCCOMB_X22_Y20_N2
\Mul|Sum4|Sum3|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mul|Sum4|Sum3|Cout~0_combout\ = (\Mul|Sum4|Sum2|Cout~0_combout\ & ((\Mul|C\(22)) # (\Mul|Sum3|Sum2|Cout~0_combout\ $ (!\Mul|Sum3|Sum3|S~2_combout\)))) # (!\Mul|Sum4|Sum2|Cout~0_combout\ & (\Mul|C\(22) & (\Mul|Sum3|Sum2|Cout~0_combout\ $ 
-- (!\Mul|Sum3|Sum3|S~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mul|Sum4|Sum2|Cout~0_combout\,
	datab => \Mul|C\(22),
	datac => \Mul|Sum3|Sum2|Cout~0_combout\,
	datad => \Mul|Sum3|Sum3|S~2_combout\,
	combout => \Mul|Sum4|Sum3|Cout~0_combout\);

-- Location: LCCOMB_X22_Y20_N30
\Mul|Sum3|Sum4|S~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mul|Sum3|Sum4|S~2_combout\ = \Mul|Sum2|Sum4|S~2_combout\ $ (\Mul|Sum2|Sum3|Cout~0_combout\ $ (((\A[3]~input_o\ & \B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \Mul|Sum2|Sum4|S~2_combout\,
	datac => \Mul|Sum2|Sum3|Cout~0_combout\,
	datad => \B[3]~input_o\,
	combout => \Mul|Sum3|Sum4|S~2_combout\);

-- Location: LCCOMB_X22_Y20_N8
\Mul|C[23]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mul|C\(23) = (\A[4]~input_o\ & \B[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[4]~input_o\,
	datad => \B[3]~input_o\,
	combout => \Mul|C\(23));

-- Location: LCCOMB_X23_Y20_N20
\Mul|Sum4|Sum4|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mul|Sum4|Sum4|S~combout\ = \Mul|Sum4|Sum3|Cout~0_combout\ $ (\Mul|Sum3|Sum4|S~2_combout\ $ (\Mul|Sum3|Sum3|Cout~0_combout\ $ (\Mul|C\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mul|Sum4|Sum3|Cout~0_combout\,
	datab => \Mul|Sum3|Sum4|S~2_combout\,
	datac => \Mul|Sum3|Sum3|Cout~0_combout\,
	datad => \Mul|C\(23),
	combout => \Mul|Sum4|Sum4|S~combout\);

-- Location: LCCOMB_X23_Y20_N28
\Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~2_combout\ = (\Mul|Sum4|Sum4|S~combout\ & (!\selector[0]~input_o\ & \selector[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mul|Sum4|Sum4|S~combout\,
	datac => \selector[0]~input_o\,
	datad => \selector[1]~input_o\,
	combout => \Mux1~2_combout\);

-- Location: LCCOMB_X23_Y20_N6
\Mul|Sum4|Sum4|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mul|Sum4|Sum4|Cout~0_combout\ = (\Mul|Sum4|Sum3|Cout~0_combout\ & ((\Mul|C\(23)) # (\Mul|Sum3|Sum4|S~2_combout\ $ (\Mul|Sum3|Sum3|Cout~0_combout\)))) # (!\Mul|Sum4|Sum3|Cout~0_combout\ & (\Mul|C\(23) & (\Mul|Sum3|Sum4|S~2_combout\ $ 
-- (\Mul|Sum3|Sum3|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mul|Sum4|Sum3|Cout~0_combout\,
	datab => \Mul|Sum3|Sum4|S~2_combout\,
	datac => \Mul|Sum3|Sum3|Cout~0_combout\,
	datad => \Mul|C\(23),
	combout => \Mul|Sum4|Sum4|Cout~0_combout\);

-- Location: LCCOMB_X22_Y17_N16
\Suma|Sum5|Cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Suma|Sum5|Cout~1_combout\ = (\B[4]~input_o\ & \A[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[4]~input_o\,
	datad => \A[4]~input_o\,
	combout => \Suma|Sum5|Cout~1_combout\);

-- Location: LCCOMB_X22_Y19_N14
\Mul|Sum3|Sum5|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mul|Sum3|Sum5|S~combout\ = \Mul|Sum2|Sum5|S~2_combout\ $ (\Mul|C\(19) $ (\Mul|Sum3|Sum4|Cout~0_combout\ $ (\Mul|Sum2|Sum4|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mul|Sum2|Sum5|S~2_combout\,
	datab => \Mul|C\(19),
	datac => \Mul|Sum3|Sum4|Cout~0_combout\,
	datad => \Mul|Sum2|Sum4|Cout~0_combout\,
	combout => \Mul|Sum3|Sum5|S~combout\);

-- Location: LCCOMB_X22_Y17_N26
\Mux13~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~3_combout\ = (\Mux7~4_combout\ & (\Mul|Sum4|Sum4|Cout~0_combout\ $ (\Suma|Sum5|Cout~1_combout\ $ (\Mul|Sum3|Sum5|S~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mul|Sum4|Sum4|Cout~0_combout\,
	datab => \Suma|Sum5|Cout~1_combout\,
	datac => \Mul|Sum3|Sum5|S~combout\,
	datad => \Mux7~4_combout\,
	combout => \Mux13~3_combout\);

-- Location: LCCOMB_X25_Y18_N6
\Mux10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~2_combout\ = (!\selector[0]~input_o\ & ((\Suma|Sum7|Cout~0_combout\ & ((\A[7]~input_o\) # (\B[7]~input_o\))) # (!\Suma|Sum7|Cout~0_combout\ & (\A[7]~input_o\ & \B[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Suma|Sum7|Cout~0_combout\,
	datab => \A[7]~input_o\,
	datac => \selector[0]~input_o\,
	datad => \B[7]~input_o\,
	combout => \Mux10~2_combout\);

-- Location: LCCOMB_X25_Y18_N24
\Res|Sum8|Cout\ : cycloneive_lcell_comb
-- Equation(s):
-- \Res|Sum8|Cout~combout\ = (\A[7]~input_o\ & ((\Res|Sum7|Cout~combout\) # (!\B[7]~input_o\))) # (!\A[7]~input_o\ & (\Res|Sum7|Cout~combout\ & !\B[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[7]~input_o\,
	datac => \Res|Sum7|Cout~combout\,
	datad => \B[7]~input_o\,
	combout => \Res|Sum8|Cout~combout\);

-- Location: LCCOMB_X25_Y18_N10
\Mux10~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~3_combout\ = (!\selector[1]~input_o\ & ((\Mux10~2_combout\) # ((!\Res|Sum8|Cout~combout\ & \selector[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux10~2_combout\,
	datab => \Res|Sum8|Cout~combout\,
	datac => \selector[0]~input_o\,
	datad => \selector[1]~input_o\,
	combout => \Mux10~3_combout\);

-- Location: LCCOMB_X22_Y19_N10
\Mul|Sum3|Sum5|S~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mul|Sum3|Sum5|S~2_combout\ = \Mul|Sum2|Sum5|S~2_combout\ $ (\Mul|Sum2|Sum4|Cout~0_combout\ $ (((\B[4]~input_o\ & \A[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mul|Sum2|Sum5|S~2_combout\,
	datab => \B[4]~input_o\,
	datac => \Mul|Sum2|Sum4|Cout~0_combout\,
	datad => \A[3]~input_o\,
	combout => \Mul|Sum3|Sum5|S~2_combout\);

-- Location: LCCOMB_X22_Y17_N28
\Mul|Sum4|Sum5|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mul|Sum4|Sum5|Cout~0_combout\ = (\Suma|Sum5|Cout~1_combout\ & ((\Mul|Sum4|Sum4|Cout~0_combout\) # (\Mul|Sum3|Sum4|Cout~0_combout\ $ (\Mul|Sum3|Sum5|S~2_combout\)))) # (!\Suma|Sum5|Cout~1_combout\ & (\Mul|Sum4|Sum4|Cout~0_combout\ & 
-- (\Mul|Sum3|Sum4|Cout~0_combout\ $ (\Mul|Sum3|Sum5|S~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mul|Sum3|Sum4|Cout~0_combout\,
	datab => \Suma|Sum5|Cout~1_combout\,
	datac => \Mul|Sum3|Sum5|S~2_combout\,
	datad => \Mul|Sum4|Sum4|Cout~0_combout\,
	combout => \Mul|Sum4|Sum5|Cout~0_combout\);

-- Location: LCCOMB_X25_Y18_N30
\Mux10~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~4_combout\ = (\Mux10~3_combout\) # ((\Mul|Sum4|Sum5|Cout~0_combout\ & (!\selector[0]~input_o\ & \selector[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux10~3_combout\,
	datab => \Mul|Sum4|Sum5|Cout~0_combout\,
	datac => \selector[0]~input_o\,
	datad => \selector[1]~input_o\,
	combout => \Mux10~4_combout\);

-- Location: LCCOMB_X25_Y18_N20
\Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = (!\selector[0]~input_o\ & ((\Suma|Sum7|Cout~0_combout\ & (!\A[7]~input_o\ & !\B[7]~input_o\)) # (!\Suma|Sum7|Cout~0_combout\ & (\A[7]~input_o\ & \B[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Suma|Sum7|Cout~0_combout\,
	datab => \A[7]~input_o\,
	datac => \selector[0]~input_o\,
	datad => \B[7]~input_o\,
	combout => \Mux11~0_combout\);

-- Location: LCCOMB_X25_Y18_N22
\Mux11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~1_combout\ = (\selector[0]~input_o\ & ((\A[7]~input_o\ & (!\Res|Sum7|Cout~combout\ & !\B[7]~input_o\)) # (!\A[7]~input_o\ & (\Res|Sum7|Cout~combout\ & \B[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[7]~input_o\,
	datab => \Res|Sum7|Cout~combout\,
	datac => \selector[0]~input_o\,
	datad => \B[7]~input_o\,
	combout => \Mux11~1_combout\);

-- Location: LCCOMB_X25_Y18_N8
\Mux11~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~2_combout\ = (!\selector[1]~input_o\ & ((\Mux11~0_combout\) # (\Mux11~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux11~0_combout\,
	datac => \Mux11~1_combout\,
	datad => \selector[1]~input_o\,
	combout => \Mux11~2_combout\);

-- Location: LCCOMB_X22_Y17_N14
\Mux11~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~3_combout\ = (\Mux11~2_combout\) # ((\Mux7~4_combout\ & (\Mul|Sum4|Sum4|Cout~0_combout\ $ (\Mul|Sum4|Sum5|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mul|Sum4|Sum4|Cout~0_combout\,
	datab => \Mul|Sum4|Sum5|Cout~0_combout\,
	datac => \Mux11~2_combout\,
	datad => \Mux7~4_combout\,
	combout => \Mux11~3_combout\);

-- Location: LCCOMB_X21_Y19_N0
\Mux12~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~11_combout\ = (!\Mul|Sum2|Sum2|S~combout\ & (!\Mul|Sum3|Sum2|S~combout\ & (\Mul|Sum1|Sum5|Cout~0_combout\ $ (!\Mul|C\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mul|Sum2|Sum2|S~combout\,
	datab => \Mul|Sum3|Sum2|S~combout\,
	datac => \Mul|Sum1|Sum5|Cout~0_combout\,
	datad => \Mul|C\(10),
	combout => \Mux12~11_combout\);

-- Location: LCCOMB_X22_Y20_N12
\Mux12~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~12_combout\ = (\Mux12~11_combout\ & (\Mul|Sum4|Sum3|S~combout\ & (\Mul|Sum3|Sum2|Cout~0_combout\ $ (\Mul|Sum3|Sum3|S~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~11_combout\,
	datab => \Mul|Sum3|Sum2|Cout~0_combout\,
	datac => \Mul|Sum4|Sum3|S~combout\,
	datad => \Mul|Sum3|Sum3|S~2_combout\,
	combout => \Mux12~12_combout\);

-- Location: LCCOMB_X24_Y19_N22
\Mux12~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~6_combout\ = (\Res|Sum2|Cout~combout\ & (!\Res|Sum4|S~0_combout\ & (\A[2]~input_o\ $ (!\B[2]~input_o\)))) # (!\Res|Sum2|Cout~combout\ & ((\A[2]~input_o\ & (!\Res|Sum4|S~0_combout\ & !\B[2]~input_o\)) # (!\A[2]~input_o\ & (\Res|Sum4|S~0_combout\ & 
-- \B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Res|Sum2|Cout~combout\,
	datab => \A[2]~input_o\,
	datac => \Res|Sum4|S~0_combout\,
	datad => \B[2]~input_o\,
	combout => \Mux12~6_combout\);

-- Location: LCCOMB_X23_Y19_N12
\Mux12~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~7_combout\ = (\Res|Sum2|S~combout\ & (\Mux12~6_combout\ & (\selector[0]~input_o\ & \Res|Sum5|S~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Res|Sum2|S~combout\,
	datab => \Mux12~6_combout\,
	datac => \selector[0]~input_o\,
	datad => \Res|Sum5|S~combout\,
	combout => \Mux12~7_combout\);

-- Location: LCCOMB_X25_Y19_N2
\Mux12~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~8_combout\ = (\Res|Sum5|Cout~combout\ & (!\Res|Sum7|S~0_combout\ & (\A[5]~input_o\ $ (!\B[5]~input_o\)))) # (!\Res|Sum5|Cout~combout\ & ((\A[5]~input_o\ & (!\B[5]~input_o\ & !\Res|Sum7|S~0_combout\)) # (!\A[5]~input_o\ & (\B[5]~input_o\ & 
-- \Res|Sum7|S~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Res|Sum5|Cout~combout\,
	datab => \A[5]~input_o\,
	datac => \B[5]~input_o\,
	datad => \Res|Sum7|S~0_combout\,
	combout => \Mux12~8_combout\);

-- Location: LCCOMB_X25_Y18_N2
\Mux12~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~2_combout\ = (!\Suma|Sum7|S~combout\ & (\A[7]~input_o\ $ (\Suma|Sum7|Cout~0_combout\ $ (!\B[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Suma|Sum7|S~combout\,
	datab => \A[7]~input_o\,
	datac => \Suma|Sum7|Cout~0_combout\,
	datad => \B[7]~input_o\,
	combout => \Mux12~2_combout\);

-- Location: LCCOMB_X24_Y19_N16
\Mux12~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~3_combout\ = (!\Suma|Sum2|S~combout\ & (!\selector[0]~input_o\ & (\Suma|Sum2|Cout~0_combout\ $ (!\Res|Sum3|S~0_combout\))))

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
	combout => \Mux12~3_combout\);

-- Location: LCCOMB_X24_Y19_N26
\Mux12~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~4_combout\ = (\B[3]~input_o\ & (\Res|Sum5|S~0_combout\ & (\Suma|Sum3|Cout~1_combout\ $ (\A[3]~input_o\)))) # (!\B[3]~input_o\ & ((\Suma|Sum3|Cout~1_combout\ & (\A[3]~input_o\ & \Res|Sum5|S~0_combout\)) # (!\Suma|Sum3|Cout~1_combout\ & 
-- (!\A[3]~input_o\ & !\Res|Sum5|S~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \Suma|Sum3|Cout~1_combout\,
	datac => \A[3]~input_o\,
	datad => \Res|Sum5|S~0_combout\,
	combout => \Mux12~4_combout\);

-- Location: LCCOMB_X24_Y19_N4
\Mux12~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~5_combout\ = (\Mux12~2_combout\ & (\Mux12~3_combout\ & (\Mux12~4_combout\ & !\Suma|Sum6|S~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~2_combout\,
	datab => \Mux12~3_combout\,
	datac => \Mux12~4_combout\,
	datad => \Suma|Sum6|S~combout\,
	combout => \Mux12~5_combout\);

-- Location: LCCOMB_X23_Y20_N24
\Mux12~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~9_combout\ = (\Mux12~5_combout\) # ((\Mux12~7_combout\ & (\Mux12~8_combout\ & \Res|Sum8|S~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~7_combout\,
	datab => \Mux12~8_combout\,
	datac => \Mux12~5_combout\,
	datad => \Res|Sum8|S~combout\,
	combout => \Mux12~9_combout\);

-- Location: LCCOMB_X23_Y20_N18
\Mux12~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~10_combout\ = (\Mux12~9_combout\ & (!\selector[1]~input_o\ & (\B[0]~input_o\ $ (!\A[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \Mux12~9_combout\,
	datac => \A[0]~input_o\,
	datad => \selector[1]~input_o\,
	combout => \Mux12~10_combout\);

-- Location: LCCOMB_X22_Y19_N20
\Mux12~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~21_combout\ = (\B[0]~input_o\ & (!\A[1]~input_o\ & (\A[3]~input_o\ $ (!\Mul|Sum2|Sum5|Cout~0_combout\)))) # (!\B[0]~input_o\ & (((!\Mul|Sum2|Sum5|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100001010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[3]~input_o\,
	datac => \A[1]~input_o\,
	datad => \Mul|Sum2|Sum5|Cout~0_combout\,
	combout => \Mux12~21_combout\);

-- Location: LCCOMB_X22_Y19_N12
\Mux12~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~17_combout\ = (\Mux12~21_combout\ & (\Mul|Sum2|Sum5|S~2_combout\ $ (!\Mul|Sum2|Sum4|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mul|Sum2|Sum5|S~2_combout\,
	datac => \Mul|Sum2|Sum4|Cout~0_combout\,
	datad => \Mux12~21_combout\,
	combout => \Mux12~17_combout\);

-- Location: LCCOMB_X21_Y19_N2
\Mux12~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~18_combout\ = (\Mux12~17_combout\ & (\Mux7~4_combout\ & (\Mul|Sum3|Sum5|Cout~0_combout\ $ (!\Mul|C\(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mul|Sum3|Sum5|Cout~0_combout\,
	datab => \Mux12~17_combout\,
	datac => \Mul|C\(20),
	datad => \Mux7~4_combout\,
	combout => \Mux12~18_combout\);

-- Location: LCCOMB_X22_Y19_N8
\Mux12~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~15_combout\ = (\Mul|Sum1|Sum4|Cout~0_combout\ & (\Mul|Sum1|Sum5|S~0_combout\ & (\Mul|Sum1|Sum4|S~0_combout\ $ (!\Mul|Sum1|Sum3|Cout~0_combout\)))) # (!\Mul|Sum1|Sum4|Cout~0_combout\ & (!\Mul|Sum1|Sum5|S~0_combout\ & (\Mul|Sum1|Sum4|S~0_combout\ $ 
-- (!\Mul|Sum1|Sum3|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mul|Sum1|Sum4|Cout~0_combout\,
	datab => \Mul|Sum1|Sum4|S~0_combout\,
	datac => \Mul|Sum1|Sum5|S~0_combout\,
	datad => \Mul|Sum1|Sum3|Cout~0_combout\,
	combout => \Mux12~15_combout\);

-- Location: LCCOMB_X22_Y19_N2
\Mux12~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~16_combout\ = (\Mux12~15_combout\ & (!\Mul|Sum3|Sum5|S~combout\ & (\Mul|Sum2|Sum4|S~2_combout\ $ (!\Mul|Sum2|Sum3|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mul|Sum2|Sum4|S~2_combout\,
	datab => \Mux12~15_combout\,
	datac => \Mul|Sum3|Sum5|S~combout\,
	datad => \Mul|Sum2|Sum3|Cout~0_combout\,
	combout => \Mux12~16_combout\);

-- Location: LCCOMB_X22_Y17_N24
\Mul|Sum4|Sum5|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mul|Sum4|Sum5|S~combout\ = \Mul|Sum3|Sum5|S~combout\ $ (\Mul|Sum4|Sum4|Cout~0_combout\ $ (((\A[4]~input_o\ & \B[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mul|Sum3|Sum5|S~combout\,
	datab => \A[4]~input_o\,
	datac => \B[4]~input_o\,
	datad => \Mul|Sum4|Sum4|Cout~0_combout\,
	combout => \Mul|Sum4|Sum5|S~combout\);

-- Location: LCCOMB_X23_Y20_N22
\Mux12~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~19_combout\ = (\Mux12~18_combout\ & (!\Mul|Sum4|Sum2|S~combout\ & (\Mux12~16_combout\ & !\Mul|Sum4|Sum5|S~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~18_combout\,
	datab => \Mul|Sum4|Sum2|S~combout\,
	datac => \Mux12~16_combout\,
	datad => \Mul|Sum4|Sum5|S~combout\,
	combout => \Mux12~19_combout\);

-- Location: LCCOMB_X22_Y20_N6
\Mul|Sum2|Sum3|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mul|Sum2|Sum3|S~combout\ = \Mul|Sum2|Sum2|Cout~0_combout\ $ (\Mul|Sum2|Sum3|S~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mul|Sum2|Sum2|Cout~0_combout\,
	datad => \Mul|Sum2|Sum3|S~2_combout\,
	combout => \Mul|Sum2|Sum3|S~combout\);

-- Location: LCCOMB_X22_Y20_N16
\Mux12~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~13_combout\ = (\Mul|Sum2|Sum3|S~combout\ & (!\Mul|Sum1|Sum2|S~0_combout\ & (\Mul|Sum1|Sum2|Cout~0_combout\ $ (\Mul|Sum1|Sum3|S~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mul|Sum2|Sum3|S~combout\,
	datab => \Mul|Sum1|Sum2|Cout~0_combout\,
	datac => \Mul|Sum1|Sum3|S~0_combout\,
	datad => \Mul|Sum1|Sum2|S~0_combout\,
	combout => \Mux12~13_combout\);

-- Location: LCCOMB_X23_Y20_N12
\Mux12~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~14_combout\ = (\Mux12~13_combout\ & (!\Mul|Sum4|Sum4|S~combout\ & (\Mul|Sum3|Sum3|Cout~0_combout\ $ (!\Mul|Sum3|Sum4|S~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mul|Sum3|Sum3|Cout~0_combout\,
	datab => \Mul|Sum3|Sum4|S~2_combout\,
	datac => \Mux12~13_combout\,
	datad => \Mul|Sum4|Sum4|S~combout\,
	combout => \Mux12~14_combout\);

-- Location: LCCOMB_X23_Y20_N8
\Mux12~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~20_combout\ = (\Mux12~10_combout\) # ((\Mux12~12_combout\ & (\Mux12~19_combout\ & \Mux12~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~12_combout\,
	datab => \Mux12~10_combout\,
	datac => \Mux12~19_combout\,
	datad => \Mux12~14_combout\,
	combout => \Mux12~20_combout\);

-- Location: LCCOMB_X23_Y20_N14
\Mux13~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~4_combout\ = (\Mux13~2_combout\) # ((!\selector[0]~input_o\ & (\Mul|Sum4|Sum5|S~combout\ & \selector[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selector[0]~input_o\,
	datab => \Mul|Sum4|Sum5|S~combout\,
	datac => \Mux13~2_combout\,
	datad => \selector[1]~input_o\,
	combout => \Mux13~4_combout\);

-- Location: LCCOMB_X25_Y18_N12
\Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~0_combout\ = (!\selector[1]~input_o\ & ((\Mux10~2_combout\) # ((\Res|Sum8|Cout~combout\ & \selector[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux10~2_combout\,
	datab => \Res|Sum8|Cout~combout\,
	datac => \selector[0]~input_o\,
	datad => \selector[1]~input_o\,
	combout => \Mux14~0_combout\);

-- Location: IOIBUF_X0_Y5_N15
\A[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(8),
	o => \A[8]~input_o\);

-- Location: IOIBUF_X0_Y18_N15
\A[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(9),
	o => \A[9]~input_o\);

-- Location: IOIBUF_X34_Y2_N15
\B[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(8),
	o => \B[8]~input_o\);

-- Location: IOIBUF_X0_Y23_N8
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

ww_Carry <= \Carry~output_o\;

ww_Overflow <= \Overflow~output_o\;

ww_Zero <= \Zero~output_o\;

ww_Sum <= \Sum~output_o\;

ww_Cout <= \Cout~output_o\;
END structure;


