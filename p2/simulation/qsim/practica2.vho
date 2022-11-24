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

-- DATE "11/24/2022 11:55:08"

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
	R : OUT std_logic_vector(9 DOWNTO 0);
	clk : IN std_logic;
	rst : IN std_logic;
	ecuacion : IN std_logic_vector(1 DOWNTO 0)
	);
END practica2;

-- Design Ports Information
-- R[9]	=>  Location: PIN_129,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[8]	=>  Location: PIN_138,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[7]	=>  Location: PIN_132,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[6]	=>  Location: PIN_135,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[5]	=>  Location: PIN_7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[4]	=>  Location: PIN_142,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[3]	=>  Location: PIN_136,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[2]	=>  Location: PIN_126,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[1]	=>  Location: PIN_133,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[0]	=>  Location: PIN_127,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ecuacion[1]	=>  Location: PIN_137,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ecuacion[0]	=>  Location: PIN_128,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_R : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_clk : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_ecuacion : std_logic_vector(1 DOWNTO 0);
SIGNAL \rst~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
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
SIGNAL \inst|PC[0]~14_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \rst~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst|PC[3]~26\ : std_logic;
SIGNAL \inst|PC[4]~27_combout\ : std_logic;
SIGNAL \inst|PC[4]~28\ : std_logic;
SIGNAL \inst|PC[5]~29_combout\ : std_logic;
SIGNAL \inst|PC[5]~30\ : std_logic;
SIGNAL \inst|PC[6]~31_combout\ : std_logic;
SIGNAL \inst|PC[6]~32\ : std_logic;
SIGNAL \inst|PC[7]~33_combout\ : std_logic;
SIGNAL \inst|PC[7]~34\ : std_logic;
SIGNAL \inst|PC[8]~35_combout\ : std_logic;
SIGNAL \inst|PC[8]~36\ : std_logic;
SIGNAL \inst|PC[9]~37_combout\ : std_logic;
SIGNAL \inst|PC[9]~38\ : std_logic;
SIGNAL \inst|PC[10]~39_combout\ : std_logic;
SIGNAL \inst|PC[10]~40\ : std_logic;
SIGNAL \inst|PC[11]~41_combout\ : std_logic;
SIGNAL \inst|PC[11]~42\ : std_logic;
SIGNAL \inst|PC[12]~43_combout\ : std_logic;
SIGNAL \inst|PC[12]~44\ : std_logic;
SIGNAL \inst|PC[13]~45_combout\ : std_logic;
SIGNAL \inst|PC[0]~21_combout\ : std_logic;
SIGNAL \ecuacion[1]~input_o\ : std_logic;
SIGNAL \inst|Mux6~0_combout\ : std_logic;
SIGNAL \ecuacion[0]~input_o\ : std_logic;
SIGNAL \inst|MAR[11]~1_combout\ : std_logic;
SIGNAL \inst|Mux7~0_combout\ : std_logic;
SIGNAL \inst|Mux9~0_combout\ : std_logic;
SIGNAL \inst|Equal0~0_combout\ : std_logic;
SIGNAL \inst|Selector1~0_combout\ : std_logic;
SIGNAL \inst|pr_state.state1~q\ : std_logic;
SIGNAL \inst|Selector2~0_combout\ : std_logic;
SIGNAL \inst|flag~q\ : std_logic;
SIGNAL \inst|pr_state~10_combout\ : std_logic;
SIGNAL \inst|pr_state.state2~q\ : std_logic;
SIGNAL \inst|pr_state.state0~0_combout\ : std_logic;
SIGNAL \inst|pr_state.state0~q\ : std_logic;
SIGNAL \inst|PC[0]~19_combout\ : std_logic;
SIGNAL \inst|PC[0]~18_combout\ : std_logic;
SIGNAL \inst|PC[0]~20_combout\ : std_logic;
SIGNAL \inst|PC[0]~22_combout\ : std_logic;
SIGNAL \inst|PC[0]~15\ : std_logic;
SIGNAL \inst|PC[1]~16_combout\ : std_logic;
SIGNAL \inst|PC[1]~17\ : std_logic;
SIGNAL \inst|PC[2]~23_combout\ : std_logic;
SIGNAL \inst|PC[2]~24\ : std_logic;
SIGNAL \inst|PC[3]~25_combout\ : std_logic;
SIGNAL \inst|MAR[9]~feeder_combout\ : std_logic;
SIGNAL \inst|OP[1]~feeder_combout\ : std_logic;
SIGNAL \inst|OP[3]~0_combout\ : std_logic;
SIGNAL \inst|OP[0]~feeder_combout\ : std_logic;
SIGNAL \inst|alu1|Mux0~0_combout\ : std_logic;
SIGNAL \inst|alu1|Mux10~0_combout\ : std_logic;
SIGNAL \inst|alu1|Mux11~0_combout\ : std_logic;
SIGNAL \inst|alu1|R[4]~10_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|salida[5]~feeder_combout\ : std_logic;
SIGNAL \inst|alu1|Mux0~1_combout\ : std_logic;
SIGNAL \inst|salida[9]~feeder_combout\ : std_logic;
SIGNAL \inst|salida[8]~feeder_combout\ : std_logic;
SIGNAL \inst|alu1|Mux2~0_combout\ : std_logic;
SIGNAL \inst|alu1|R[7]~4_combout\ : std_logic;
SIGNAL \inst|alu1|Mux0~2_combout\ : std_logic;
SIGNAL \inst|alu1|Mux0~3_combout\ : std_logic;
SIGNAL \inst|alu1|R[7]~6_combout\ : std_logic;
SIGNAL \inst|Mux9~1_combout\ : std_logic;
SIGNAL \inst|MAR[0]~0_combout\ : std_logic;
SIGNAL \inst|Mux13~0_combout\ : std_logic;
SIGNAL \inst|Mux12~0_combout\ : std_logic;
SIGNAL \inst|Mux11~0_combout\ : std_logic;
SIGNAL \inst|Mux30~0_combout\ : std_logic;
SIGNAL \inst|Mux32~0_combout\ : std_logic;
SIGNAL \inst|Mux29~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan0~0_combout\ : std_logic;
SIGNAL \inst|Mux31~0_combout\ : std_logic;
SIGNAL \inst|alu1|Mux2~1_combout\ : std_logic;
SIGNAL \inst|alu1|R[7]~5_combout\ : std_logic;
SIGNAL \inst|alu1|Mux2~2_combout\ : std_logic;
SIGNAL \inst|alu1|Mux2~3_combout\ : std_logic;
SIGNAL \inst|salida[7]~feeder_combout\ : std_logic;
SIGNAL \inst|salida[6]~feeder_combout\ : std_logic;
SIGNAL \inst|alu1|Mux4~0_combout\ : std_logic;
SIGNAL \inst|alu1|Mux4~1_combout\ : std_logic;
SIGNAL \inst|alu1|Mux4~2_combout\ : std_logic;
SIGNAL \inst|salida[5]~feeder_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|salida~0_combout\ : std_logic;
SIGNAL \inst|alu1|R[4]~7_combout\ : std_logic;
SIGNAL \inst|alu1|R[4]~0_combout\ : std_logic;
SIGNAL \inst|alu1|Mux8~0_combout\ : std_logic;
SIGNAL \inst|alu1|R[4]~8_combout\ : std_logic;
SIGNAL \inst|alu1|R[4]~9_combout\ : std_logic;
SIGNAL \inst|salida[4]~feeder_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|salida~1_combout\ : std_logic;
SIGNAL \inst|alu1|R[3]~1_combout\ : std_logic;
SIGNAL \inst|salida[3]~feeder_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|salida~2_combout\ : std_logic;
SIGNAL \inst|alu1|R[2]~2_combout\ : std_logic;
SIGNAL \inst|salida[2]~feeder_combout\ : std_logic;
SIGNAL \inst|alu1|Mux8~1_combout\ : std_logic;
SIGNAL \inst|salida[1]~feeder_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|salida~3_combout\ : std_logic;
SIGNAL \inst|alu1|R[0]~3_combout\ : std_logic;
SIGNAL \inst|salida[0]~feeder_combout\ : std_logic;
SIGNAL \inst|alu1|sel_aux\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst|REG_B\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst|alu1|unidad_logica|salida\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst|OP\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|PC\ : std_logic_vector(13 DOWNTO 0);
SIGNAL \inst|MAR\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst|alu1|R\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst|salida\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \ALT_INV_rst~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_rst~input_o\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

R <= ww_R;
ww_clk <= clk;
ww_rst <= rst;
ww_ecuacion <= ecuacion;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\rst~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rst~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_rst~inputclkctrl_outclk\ <= NOT \rst~inputclkctrl_outclk\;
\ALT_INV_rst~input_o\ <= NOT \rst~input_o\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X16_Y24_N23
\R[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|salida\(9),
	devoe => ww_devoe,
	o => \R[9]~output_o\);

-- Location: IOOBUF_X7_Y24_N9
\R[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|salida\(8),
	devoe => ww_devoe,
	o => \R[8]~output_o\);

-- Location: IOOBUF_X13_Y24_N16
\R[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|salida\(7),
	devoe => ww_devoe,
	o => \R[7]~output_o\);

-- Location: IOOBUF_X11_Y24_N16
\R[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|salida\(6),
	devoe => ww_devoe,
	o => \R[6]~output_o\);

-- Location: IOOBUF_X0_Y21_N9
\R[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|salida\(5),
	devoe => ww_devoe,
	o => \R[5]~output_o\);

-- Location: IOOBUF_X3_Y24_N23
\R[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|salida\(4),
	devoe => ww_devoe,
	o => \R[4]~output_o\);

-- Location: IOOBUF_X9_Y24_N9
\R[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|salida\(3),
	devoe => ww_devoe,
	o => \R[3]~output_o\);

-- Location: IOOBUF_X16_Y24_N2
\R[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|salida\(2),
	devoe => ww_devoe,
	o => \R[2]~output_o\);

-- Location: IOOBUF_X13_Y24_N23
\R[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|salida\(1),
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
	i => \inst|salida\(0),
	devoe => ww_devoe,
	o => \R[0]~output_o\);

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

-- Location: LCCOMB_X10_Y21_N4
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

-- Location: LCCOMB_X10_Y21_N10
\inst|PC[3]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|PC[3]~25_combout\ = (\inst|PC\(3) & (!\inst|PC[2]~24\)) # (!\inst|PC\(3) & ((\inst|PC[2]~24\) # (GND)))
-- \inst|PC[3]~26\ = CARRY((!\inst|PC[2]~24\) # (!\inst|PC\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC\(3),
	datad => VCC,
	cin => \inst|PC[2]~24\,
	combout => \inst|PC[3]~25_combout\,
	cout => \inst|PC[3]~26\);

-- Location: LCCOMB_X10_Y21_N12
\inst|PC[4]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|PC[4]~27_combout\ = (\inst|PC\(4) & (\inst|PC[3]~26\ $ (GND))) # (!\inst|PC\(4) & (!\inst|PC[3]~26\ & VCC))
-- \inst|PC[4]~28\ = CARRY((\inst|PC\(4) & !\inst|PC[3]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC\(4),
	datad => VCC,
	cin => \inst|PC[3]~26\,
	combout => \inst|PC[4]~27_combout\,
	cout => \inst|PC[4]~28\);

-- Location: FF_X10_Y21_N13
\inst|PC[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|PC[4]~27_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \inst|PC[0]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC\(4));

-- Location: LCCOMB_X10_Y21_N14
\inst|PC[5]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|PC[5]~29_combout\ = (\inst|PC\(5) & (!\inst|PC[4]~28\)) # (!\inst|PC\(5) & ((\inst|PC[4]~28\) # (GND)))
-- \inst|PC[5]~30\ = CARRY((!\inst|PC[4]~28\) # (!\inst|PC\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|PC\(5),
	datad => VCC,
	cin => \inst|PC[4]~28\,
	combout => \inst|PC[5]~29_combout\,
	cout => \inst|PC[5]~30\);

-- Location: FF_X10_Y21_N15
\inst|PC[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|PC[5]~29_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \inst|PC[0]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC\(5));

-- Location: LCCOMB_X10_Y21_N16
\inst|PC[6]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|PC[6]~31_combout\ = (\inst|PC\(6) & (\inst|PC[5]~30\ $ (GND))) # (!\inst|PC\(6) & (!\inst|PC[5]~30\ & VCC))
-- \inst|PC[6]~32\ = CARRY((\inst|PC\(6) & !\inst|PC[5]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|PC\(6),
	datad => VCC,
	cin => \inst|PC[5]~30\,
	combout => \inst|PC[6]~31_combout\,
	cout => \inst|PC[6]~32\);

-- Location: FF_X10_Y21_N17
\inst|PC[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|PC[6]~31_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \inst|PC[0]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC\(6));

-- Location: LCCOMB_X10_Y21_N18
\inst|PC[7]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|PC[7]~33_combout\ = (\inst|PC\(7) & (!\inst|PC[6]~32\)) # (!\inst|PC\(7) & ((\inst|PC[6]~32\) # (GND)))
-- \inst|PC[7]~34\ = CARRY((!\inst|PC[6]~32\) # (!\inst|PC\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|PC\(7),
	datad => VCC,
	cin => \inst|PC[6]~32\,
	combout => \inst|PC[7]~33_combout\,
	cout => \inst|PC[7]~34\);

-- Location: FF_X10_Y21_N19
\inst|PC[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|PC[7]~33_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \inst|PC[0]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC\(7));

-- Location: LCCOMB_X10_Y21_N20
\inst|PC[8]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|PC[8]~35_combout\ = (\inst|PC\(8) & (\inst|PC[7]~34\ $ (GND))) # (!\inst|PC\(8) & (!\inst|PC[7]~34\ & VCC))
-- \inst|PC[8]~36\ = CARRY((\inst|PC\(8) & !\inst|PC[7]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|PC\(8),
	datad => VCC,
	cin => \inst|PC[7]~34\,
	combout => \inst|PC[8]~35_combout\,
	cout => \inst|PC[8]~36\);

-- Location: FF_X10_Y21_N21
\inst|PC[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|PC[8]~35_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \inst|PC[0]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC\(8));

-- Location: LCCOMB_X10_Y21_N22
\inst|PC[9]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|PC[9]~37_combout\ = (\inst|PC\(9) & (!\inst|PC[8]~36\)) # (!\inst|PC\(9) & ((\inst|PC[8]~36\) # (GND)))
-- \inst|PC[9]~38\ = CARRY((!\inst|PC[8]~36\) # (!\inst|PC\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC\(9),
	datad => VCC,
	cin => \inst|PC[8]~36\,
	combout => \inst|PC[9]~37_combout\,
	cout => \inst|PC[9]~38\);

-- Location: FF_X10_Y21_N23
\inst|PC[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|PC[9]~37_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \inst|PC[0]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC\(9));

-- Location: LCCOMB_X10_Y21_N24
\inst|PC[10]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|PC[10]~39_combout\ = (\inst|PC\(10) & (\inst|PC[9]~38\ $ (GND))) # (!\inst|PC\(10) & (!\inst|PC[9]~38\ & VCC))
-- \inst|PC[10]~40\ = CARRY((\inst|PC\(10) & !\inst|PC[9]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|PC\(10),
	datad => VCC,
	cin => \inst|PC[9]~38\,
	combout => \inst|PC[10]~39_combout\,
	cout => \inst|PC[10]~40\);

-- Location: FF_X10_Y21_N25
\inst|PC[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|PC[10]~39_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \inst|PC[0]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC\(10));

-- Location: LCCOMB_X10_Y21_N26
\inst|PC[11]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|PC[11]~41_combout\ = (\inst|PC\(11) & (!\inst|PC[10]~40\)) # (!\inst|PC\(11) & ((\inst|PC[10]~40\) # (GND)))
-- \inst|PC[11]~42\ = CARRY((!\inst|PC[10]~40\) # (!\inst|PC\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC\(11),
	datad => VCC,
	cin => \inst|PC[10]~40\,
	combout => \inst|PC[11]~41_combout\,
	cout => \inst|PC[11]~42\);

-- Location: FF_X10_Y21_N27
\inst|PC[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|PC[11]~41_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \inst|PC[0]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC\(11));

-- Location: LCCOMB_X10_Y21_N28
\inst|PC[12]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|PC[12]~43_combout\ = (\inst|PC\(12) & (\inst|PC[11]~42\ $ (GND))) # (!\inst|PC\(12) & (!\inst|PC[11]~42\ & VCC))
-- \inst|PC[12]~44\ = CARRY((\inst|PC\(12) & !\inst|PC[11]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|PC\(12),
	datad => VCC,
	cin => \inst|PC[11]~42\,
	combout => \inst|PC[12]~43_combout\,
	cout => \inst|PC[12]~44\);

-- Location: FF_X10_Y21_N29
\inst|PC[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|PC[12]~43_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \inst|PC[0]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC\(12));

-- Location: LCCOMB_X10_Y21_N30
\inst|PC[13]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|PC[13]~45_combout\ = \inst|PC\(13) $ (\inst|PC[12]~44\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC\(13),
	cin => \inst|PC[12]~44\,
	combout => \inst|PC[13]~45_combout\);

-- Location: FF_X10_Y21_N31
\inst|PC[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|PC[13]~45_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \inst|PC[0]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC\(13));

-- Location: LCCOMB_X11_Y21_N30
\inst|PC[0]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|PC[0]~21_combout\ = (\inst|PC\(11)) # ((\inst|PC\(13)) # ((\inst|PC\(10)) # (\inst|PC\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC\(11),
	datab => \inst|PC\(13),
	datac => \inst|PC\(10),
	datad => \inst|PC\(12),
	combout => \inst|PC[0]~21_combout\);

-- Location: IOIBUF_X7_Y24_N1
\ecuacion[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ecuacion(1),
	o => \ecuacion[1]~input_o\);

-- Location: LCCOMB_X11_Y21_N26
\inst|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux6~0_combout\ = ((!\inst|PC\(1) & !\inst|PC\(0))) # (!\inst|PC\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|PC\(1),
	datac => \inst|PC\(0),
	datad => \inst|PC\(3),
	combout => \inst|Mux6~0_combout\);

-- Location: IOIBUF_X16_Y24_N15
\ecuacion[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ecuacion(0),
	o => \ecuacion[0]~input_o\);

-- Location: LCCOMB_X11_Y21_N22
\inst|MAR[11]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|MAR[11]~1_combout\ = (!\ecuacion[1]~input_o\ & (!\ecuacion[0]~input_o\ & (!\rst~input_o\ & !\inst|pr_state.state0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ecuacion[1]~input_o\,
	datab => \ecuacion[0]~input_o\,
	datac => \rst~input_o\,
	datad => \inst|pr_state.state0~q\,
	combout => \inst|MAR[11]~1_combout\);

-- Location: FF_X11_Y21_N27
\inst|MAR[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Mux6~0_combout\,
	ena => \inst|MAR[11]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MAR\(11));

-- Location: LCCOMB_X11_Y21_N24
\inst|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux7~0_combout\ = (\inst|PC\(2) & ((\inst|PC\(1)) # ((!\inst|PC\(0))))) # (!\inst|PC\(2) & ((\inst|PC\(0)) # (\inst|PC\(1) $ (!\inst|PC\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111011011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC\(2),
	datab => \inst|PC\(1),
	datac => \inst|PC\(0),
	datad => \inst|PC\(3),
	combout => \inst|Mux7~0_combout\);

-- Location: FF_X11_Y21_N25
\inst|MAR[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Mux7~0_combout\,
	ena => \inst|MAR[11]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MAR\(10));

-- Location: LCCOMB_X11_Y21_N20
\inst|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux9~0_combout\ = (\inst|PC\(1)) # ((\inst|PC\(0)) # (!\inst|PC\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|PC\(1),
	datac => \inst|PC\(0),
	datad => \inst|PC\(3),
	combout => \inst|Mux9~0_combout\);

-- Location: FF_X11_Y21_N21
\inst|MAR[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Mux9~0_combout\,
	ena => \inst|MAR[11]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MAR\(8));

-- Location: LCCOMB_X11_Y21_N12
\inst|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~0_combout\ = (\inst|MAR\(11) & (\inst|MAR\(10) & (!\inst|MAR\(9) & \inst|MAR\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MAR\(11),
	datab => \inst|MAR\(10),
	datac => \inst|MAR\(9),
	datad => \inst|MAR\(8),
	combout => \inst|Equal0~0_combout\);

-- Location: LCCOMB_X12_Y21_N26
\inst|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector1~0_combout\ = ((!\inst|flag~q\ & (\inst|pr_state.state1~q\ & !\inst|Equal0~0_combout\))) # (!\inst|pr_state.state0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|flag~q\,
	datab => \inst|pr_state.state0~q\,
	datac => \inst|pr_state.state1~q\,
	datad => \inst|Equal0~0_combout\,
	combout => \inst|Selector1~0_combout\);

-- Location: FF_X12_Y21_N27
\inst|pr_state.state1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Selector1~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|pr_state.state1~q\);

-- Location: LCCOMB_X12_Y21_N10
\inst|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector2~0_combout\ = (\inst|flag~q\ & (((\inst|pr_state.state1~q\)) # (!\inst|pr_state.state0~q\))) # (!\inst|flag~q\ & (((!\inst|Equal0~0_combout\ & \inst|pr_state.state1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pr_state.state0~q\,
	datab => \inst|Equal0~0_combout\,
	datac => \inst|flag~q\,
	datad => \inst|pr_state.state1~q\,
	combout => \inst|Selector2~0_combout\);

-- Location: FF_X12_Y21_N11
\inst|flag\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Selector2~0_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|flag~q\);

-- Location: LCCOMB_X12_Y21_N24
\inst|pr_state~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|pr_state~10_combout\ = (\inst|pr_state.state1~q\ & ((\inst|flag~q\) # (\inst|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|flag~q\,
	datab => \inst|pr_state.state1~q\,
	datad => \inst|Equal0~0_combout\,
	combout => \inst|pr_state~10_combout\);

-- Location: FF_X12_Y21_N25
\inst|pr_state.state2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|pr_state~10_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|pr_state.state2~q\);

-- Location: LCCOMB_X11_Y21_N28
\inst|pr_state.state0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|pr_state.state0~0_combout\ = !\inst|pr_state.state2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|pr_state.state2~q\,
	combout => \inst|pr_state.state0~0_combout\);

-- Location: FF_X11_Y21_N29
\inst|pr_state.state0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|pr_state.state0~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|pr_state.state0~q\);

-- Location: LCCOMB_X11_Y21_N8
\inst|PC[0]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|PC[0]~19_combout\ = (\ecuacion[1]~input_o\) # ((\inst|pr_state.state0~q\) # ((\ecuacion[0]~input_o\) # (\inst|PC\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ecuacion[1]~input_o\,
	datab => \inst|pr_state.state0~q\,
	datac => \ecuacion[0]~input_o\,
	datad => \inst|PC\(5),
	combout => \inst|PC[0]~19_combout\);

-- Location: LCCOMB_X10_Y21_N0
\inst|PC[0]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|PC[0]~18_combout\ = (\inst|PC\(4)) # ((\inst|PC\(3) & ((\inst|PC\(2)) # (\inst|PC\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC\(3),
	datab => \inst|PC\(2),
	datac => \inst|PC\(1),
	datad => \inst|PC\(4),
	combout => \inst|PC[0]~18_combout\);

-- Location: LCCOMB_X10_Y21_N2
\inst|PC[0]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|PC[0]~20_combout\ = (\inst|PC\(9)) # ((\inst|PC\(7)) # ((\inst|PC\(8)) # (\inst|PC\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC\(9),
	datab => \inst|PC\(7),
	datac => \inst|PC\(8),
	datad => \inst|PC\(6),
	combout => \inst|PC[0]~20_combout\);

-- Location: LCCOMB_X11_Y21_N16
\inst|PC[0]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|PC[0]~22_combout\ = (!\inst|PC[0]~21_combout\ & (!\inst|PC[0]~19_combout\ & (!\inst|PC[0]~18_combout\ & !\inst|PC[0]~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC[0]~21_combout\,
	datab => \inst|PC[0]~19_combout\,
	datac => \inst|PC[0]~18_combout\,
	datad => \inst|PC[0]~20_combout\,
	combout => \inst|PC[0]~22_combout\);

-- Location: FF_X10_Y21_N5
\inst|PC[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|PC[0]~14_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \inst|PC[0]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC\(0));

-- Location: LCCOMB_X10_Y21_N6
\inst|PC[1]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|PC[1]~16_combout\ = (\inst|PC\(1) & (!\inst|PC[0]~15\)) # (!\inst|PC\(1) & ((\inst|PC[0]~15\) # (GND)))
-- \inst|PC[1]~17\ = CARRY((!\inst|PC[0]~15\) # (!\inst|PC\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC\(1),
	datad => VCC,
	cin => \inst|PC[0]~15\,
	combout => \inst|PC[1]~16_combout\,
	cout => \inst|PC[1]~17\);

-- Location: FF_X10_Y21_N7
\inst|PC[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|PC[1]~16_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \inst|PC[0]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC\(1));

-- Location: LCCOMB_X10_Y21_N8
\inst|PC[2]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|PC[2]~23_combout\ = (\inst|PC\(2) & (\inst|PC[1]~17\ $ (GND))) # (!\inst|PC\(2) & (!\inst|PC[1]~17\ & VCC))
-- \inst|PC[2]~24\ = CARRY((\inst|PC\(2) & !\inst|PC[1]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|PC\(2),
	datad => VCC,
	cin => \inst|PC[1]~17\,
	combout => \inst|PC[2]~23_combout\,
	cout => \inst|PC[2]~24\);

-- Location: FF_X10_Y21_N9
\inst|PC[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|PC[2]~23_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \inst|PC[0]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC\(2));

-- Location: FF_X10_Y21_N11
\inst|PC[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|PC[3]~25_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \inst|PC[0]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC\(3));

-- Location: LCCOMB_X11_Y21_N14
\inst|MAR[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|MAR[9]~feeder_combout\ = \inst|PC\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|PC\(3),
	combout => \inst|MAR[9]~feeder_combout\);

-- Location: FF_X11_Y21_N15
\inst|MAR[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|MAR[9]~feeder_combout\,
	ena => \inst|MAR[11]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MAR\(9));

-- Location: LCCOMB_X12_Y20_N18
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

-- Location: LCCOMB_X12_Y21_N28
\inst|OP[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|OP[3]~0_combout\ = (!\rst~input_o\ & (\inst|pr_state.state1~q\ & !\inst|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datac => \inst|pr_state.state1~q\,
	datad => \inst|Equal0~0_combout\,
	combout => \inst|OP[3]~0_combout\);

-- Location: FF_X12_Y20_N19
\inst|OP[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|OP[1]~feeder_combout\,
	ena => \inst|OP[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|OP\(1));

-- Location: LCCOMB_X12_Y20_N8
\inst|OP[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|OP[0]~feeder_combout\ = \inst|MAR\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|MAR\(8),
	combout => \inst|OP[0]~feeder_combout\);

-- Location: FF_X12_Y20_N9
\inst|OP[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|OP[0]~feeder_combout\,
	ena => \inst|OP[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|OP\(0));

-- Location: FF_X12_Y20_N21
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
	ena => \inst|OP[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|OP\(3));

-- Location: LCCOMB_X12_Y20_N22
\inst|alu1|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux0~0_combout\ = (\inst|OP\(1) & ((\inst|OP\(0)) # (!\inst|OP\(3)))) # (!\inst|OP\(1) & (\inst|OP\(0) & !\inst|OP\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|OP\(1),
	datac => \inst|OP\(0),
	datad => \inst|OP\(3),
	combout => \inst|alu1|Mux0~0_combout\);

-- Location: FF_X12_Y20_N31
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
	ena => \inst|OP[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|OP\(2));

-- Location: LCCOMB_X12_Y21_N20
\inst|alu1|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux10~0_combout\ = (!\inst|OP\(2) & (\inst|OP\(0) $ (\inst|OP\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|OP\(0),
	datac => \inst|OP\(2),
	datad => \inst|OP\(1),
	combout => \inst|alu1|Mux10~0_combout\);

-- Location: FF_X12_Y21_N21
\inst|alu1|sel_aux[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|alu1|Mux10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|sel_aux\(1));

-- Location: LCCOMB_X12_Y21_N14
\inst|alu1|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux11~0_combout\ = (!\inst|OP\(0) & ((\inst|OP\(3) & (!\inst|OP\(2))) # (!\inst|OP\(3) & ((\inst|OP\(2)) # (\inst|OP\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|OP\(0),
	datab => \inst|OP\(3),
	datac => \inst|OP\(2),
	datad => \inst|OP\(1),
	combout => \inst|alu1|Mux11~0_combout\);

-- Location: FF_X12_Y21_N15
\inst|alu1|sel_aux[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|alu1|Mux11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|sel_aux\(0));

-- Location: LCCOMB_X13_Y20_N8
\inst|alu1|R[4]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|R[4]~10_combout\ = (\inst|alu1|sel_aux\(1) & !\inst|alu1|sel_aux\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|alu1|sel_aux\(1),
	datad => \inst|alu1|sel_aux\(0),
	combout => \inst|alu1|R[4]~10_combout\);

-- Location: LCCOMB_X13_Y20_N16
\inst|alu1|unidad_logica|salida[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|salida[5]~feeder_combout\ = \inst|alu1|R[4]~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|alu1|R[4]~10_combout\,
	combout => \inst|alu1|unidad_logica|salida[5]~feeder_combout\);

-- Location: FF_X13_Y20_N17
\inst|alu1|unidad_logica|salida[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|alu1|unidad_logica|salida[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|unidad_logica|salida\(5));

-- Location: LCCOMB_X12_Y20_N0
\inst|alu1|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux0~1_combout\ = (\inst|OP\(3) & ((\inst|alu1|Mux0~0_combout\) # ((\inst|OP\(2))))) # (!\inst|OP\(3) & (\inst|alu1|unidad_logica|salida\(5) & (\inst|alu1|Mux0~0_combout\ $ (\inst|OP\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux0~0_combout\,
	datab => \inst|OP\(3),
	datac => \inst|OP\(2),
	datad => \inst|alu1|unidad_logica|salida\(5),
	combout => \inst|alu1|Mux0~1_combout\);

-- Location: FF_X12_Y20_N1
\inst|alu1|R[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|alu1|Mux0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|R\(9));

-- Location: LCCOMB_X12_Y21_N4
\inst|salida[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|salida[9]~feeder_combout\ = \inst|alu1|R\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|alu1|R\(9),
	combout => \inst|salida[9]~feeder_combout\);

-- Location: FF_X12_Y21_N5
\inst|salida[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|salida[9]~feeder_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|salida\(9));

-- Location: LCCOMB_X12_Y21_N22
\inst|salida[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|salida[8]~feeder_combout\ = \inst|alu1|R\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|alu1|R\(9),
	combout => \inst|salida[8]~feeder_combout\);

-- Location: FF_X12_Y21_N23
\inst|salida[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|salida[8]~feeder_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|salida\(8));

-- Location: LCCOMB_X12_Y20_N6
\inst|alu1|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux2~0_combout\ = (\inst|OP\(3)) # (\inst|alu1|unidad_logica|salida\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|OP\(3),
	datad => \inst|alu1|unidad_logica|salida\(5),
	combout => \inst|alu1|Mux2~0_combout\);

-- Location: LCCOMB_X12_Y20_N28
\inst|alu1|R[7]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|R[7]~4_combout\ = (\inst|OP\(0) & (((\inst|OP\(2) & !\inst|OP\(3))) # (!\inst|OP\(1)))) # (!\inst|OP\(0) & ((\inst|OP\(1)) # ((\inst|OP\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|OP\(0),
	datab => \inst|OP\(1),
	datac => \inst|OP\(2),
	datad => \inst|OP\(3),
	combout => \inst|alu1|R[7]~4_combout\);

-- Location: LCCOMB_X12_Y20_N4
\inst|alu1|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux0~2_combout\ = (\inst|OP\(2) & \inst|alu1|unidad_logica|salida\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|OP\(2),
	datad => \inst|alu1|unidad_logica|salida\(5),
	combout => \inst|alu1|Mux0~2_combout\);

-- Location: LCCOMB_X12_Y20_N26
\inst|alu1|Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux0~3_combout\ = (!\inst|OP\(2) & \inst|alu1|unidad_logica|salida\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|OP\(2),
	datad => \inst|alu1|unidad_logica|salida\(5),
	combout => \inst|alu1|Mux0~3_combout\);

-- Location: LCCOMB_X12_Y20_N20
\inst|alu1|R[7]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|R[7]~6_combout\ = (\inst|OP\(2) & (\inst|OP\(0) & ((\inst|OP\(1))))) # (!\inst|OP\(2) & ((\inst|OP\(3)) # ((\inst|OP\(0) & \inst|OP\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|OP\(2),
	datab => \inst|OP\(0),
	datac => \inst|OP\(3),
	datad => \inst|OP\(1),
	combout => \inst|alu1|R[7]~6_combout\);

-- Location: LCCOMB_X13_Y21_N18
\inst|Mux9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux9~1_combout\ = (!\inst|PC\(0) & !\inst|PC\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|PC\(0),
	datad => \inst|PC\(1),
	combout => \inst|Mux9~1_combout\);

-- Location: LCCOMB_X13_Y21_N16
\inst|MAR[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|MAR[0]~0_combout\ = (\inst|PC\(3) & (\inst|Mux9~1_combout\)) # (!\inst|PC\(3) & ((\inst|PC\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC\(3),
	datab => \inst|Mux9~1_combout\,
	datad => \inst|PC\(1),
	combout => \inst|MAR[0]~0_combout\);

-- Location: LCCOMB_X13_Y21_N8
\inst|Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux13~0_combout\ = (!\inst|PC\(1)) # (!\inst|PC\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|PC\(0),
	datad => \inst|PC\(1),
	combout => \inst|Mux13~0_combout\);

-- Location: FF_X13_Y21_N17
\inst|MAR[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|MAR[0]~0_combout\,
	asdata => \inst|Mux13~0_combout\,
	sload => \inst|PC\(2),
	ena => \inst|MAR[11]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MAR\(0));

-- Location: LCCOMB_X11_Y21_N10
\inst|Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux12~0_combout\ = (\inst|PC\(2) & (((\inst|PC\(1))))) # (!\inst|PC\(2) & (\inst|PC\(3) & ((\inst|PC\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC\(3),
	datab => \inst|PC\(1),
	datac => \inst|PC\(0),
	datad => \inst|PC\(2),
	combout => \inst|Mux12~0_combout\);

-- Location: FF_X11_Y21_N11
\inst|MAR[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Mux12~0_combout\,
	ena => \inst|MAR[11]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MAR\(1));

-- Location: LCCOMB_X13_Y21_N28
\inst|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux11~0_combout\ = (\inst|PC\(2) & (\inst|PC\(1) $ ((!\inst|PC\(0))))) # (!\inst|PC\(2) & ((\inst|PC\(1) & (!\inst|PC\(0) & \inst|PC\(3))) # (!\inst|PC\(1) & (\inst|PC\(0) & !\inst|PC\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC\(1),
	datab => \inst|PC\(0),
	datac => \inst|PC\(2),
	datad => \inst|PC\(3),
	combout => \inst|Mux11~0_combout\);

-- Location: FF_X13_Y21_N29
\inst|MAR[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Mux11~0_combout\,
	ena => \inst|MAR[11]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MAR\(2));

-- Location: LCCOMB_X13_Y21_N22
\inst|Mux30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux30~0_combout\ = (\inst|MAR\(2)) # ((\inst|MAR\(0) & \inst|MAR\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|MAR\(0),
	datac => \inst|MAR\(1),
	datad => \inst|MAR\(2),
	combout => \inst|Mux30~0_combout\);

-- Location: FF_X13_Y21_N23
\inst|REG_B[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Mux30~0_combout\,
	ena => \inst|OP[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|REG_B\(2));

-- Location: LCCOMB_X13_Y21_N4
\inst|Mux32~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux32~0_combout\ = (\inst|MAR\(0) $ (!\inst|MAR\(2))) # (!\inst|MAR\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|MAR\(0),
	datac => \inst|MAR\(1),
	datad => \inst|MAR\(2),
	combout => \inst|Mux32~0_combout\);

-- Location: FF_X13_Y21_N5
\inst|REG_B[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Mux32~0_combout\,
	ena => \inst|OP[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|REG_B\(0));

-- Location: LCCOMB_X13_Y21_N24
\inst|Mux29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux29~0_combout\ = (!\inst|MAR\(0) & (!\inst|MAR\(1) & \inst|MAR\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|MAR\(0),
	datac => \inst|MAR\(1),
	datad => \inst|MAR\(2),
	combout => \inst|Mux29~0_combout\);

-- Location: FF_X13_Y21_N25
\inst|REG_B[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Mux29~0_combout\,
	ena => \inst|OP[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|REG_B\(3));

-- Location: LCCOMB_X13_Y21_N10
\inst|alu1|unidad_aritmetica|divi|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan0~0_combout\ = (!\inst|REG_B\(2) & (!\inst|REG_B\(0) & !\inst|REG_B\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(2),
	datac => \inst|REG_B\(0),
	datad => \inst|REG_B\(3),
	combout => \inst|alu1|unidad_aritmetica|divi|LessThan0~0_combout\);

-- Location: LCCOMB_X13_Y21_N26
\inst|Mux31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux31~0_combout\ = (\inst|MAR\(0) & (!\inst|MAR\(1) & \inst|MAR\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|MAR\(0),
	datac => \inst|MAR\(1),
	datad => \inst|MAR\(2),
	combout => \inst|Mux31~0_combout\);

-- Location: FF_X13_Y21_N27
\inst|REG_B[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Mux31~0_combout\,
	ena => \inst|OP[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|REG_B\(1));

-- Location: LCCOMB_X12_Y21_N30
\inst|alu1|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux2~1_combout\ = (\inst|alu1|sel_aux\(1) & (\inst|alu1|sel_aux\(0) & (\inst|alu1|unidad_aritmetica|divi|LessThan0~0_combout\ & !\inst|REG_B\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|sel_aux\(1),
	datab => \inst|alu1|sel_aux\(0),
	datac => \inst|alu1|unidad_aritmetica|divi|LessThan0~0_combout\,
	datad => \inst|REG_B\(1),
	combout => \inst|alu1|Mux2~1_combout\);

-- Location: LCCOMB_X12_Y20_N30
\inst|alu1|R[7]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|R[7]~5_combout\ = (\inst|OP\(0) & ((\inst|OP\(2) & ((!\inst|OP\(3)))) # (!\inst|OP\(2) & (!\inst|OP\(1))))) # (!\inst|OP\(0) & ((\inst|OP\(3) & ((!\inst|OP\(2)))) # (!\inst|OP\(3) & (\inst|OP\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011111100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|OP\(0),
	datab => \inst|OP\(1),
	datac => \inst|OP\(2),
	datad => \inst|OP\(3),
	combout => \inst|alu1|R[7]~5_combout\);

-- Location: LCCOMB_X12_Y20_N16
\inst|alu1|Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux2~2_combout\ = (\inst|alu1|R[7]~6_combout\ & (((\inst|alu1|Mux2~1_combout\ & \inst|alu1|R[7]~5_combout\)))) # (!\inst|alu1|R[7]~6_combout\ & ((\inst|alu1|Mux0~3_combout\) # ((!\inst|alu1|R[7]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux0~3_combout\,
	datab => \inst|alu1|R[7]~6_combout\,
	datac => \inst|alu1|Mux2~1_combout\,
	datad => \inst|alu1|R[7]~5_combout\,
	combout => \inst|alu1|Mux2~2_combout\);

-- Location: LCCOMB_X12_Y20_N14
\inst|alu1|Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux2~3_combout\ = (\inst|alu1|R[7]~4_combout\ & (((\inst|alu1|Mux2~2_combout\)))) # (!\inst|alu1|R[7]~4_combout\ & ((\inst|alu1|Mux2~2_combout\ & ((\inst|alu1|Mux0~2_combout\))) # (!\inst|alu1|Mux2~2_combout\ & (\inst|alu1|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux2~0_combout\,
	datab => \inst|alu1|R[7]~4_combout\,
	datac => \inst|alu1|Mux0~2_combout\,
	datad => \inst|alu1|Mux2~2_combout\,
	combout => \inst|alu1|Mux2~3_combout\);

-- Location: FF_X12_Y20_N15
\inst|alu1|R[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|alu1|Mux2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|R\(7));

-- Location: LCCOMB_X12_Y21_N8
\inst|salida[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|salida[7]~feeder_combout\ = \inst|alu1|R\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|alu1|R\(7),
	combout => \inst|salida[7]~feeder_combout\);

-- Location: FF_X12_Y21_N9
\inst|salida[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|salida[7]~feeder_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|salida\(7));

-- Location: LCCOMB_X12_Y21_N18
\inst|salida[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|salida[6]~feeder_combout\ = \inst|alu1|R\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|alu1|R\(7),
	combout => \inst|salida[6]~feeder_combout\);

-- Location: FF_X12_Y21_N19
\inst|salida[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|salida[6]~feeder_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|salida\(6));

-- Location: LCCOMB_X13_Y21_N20
\inst|alu1|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux4~0_combout\ = (\inst|alu1|sel_aux\(0) & (\inst|alu1|sel_aux\(1) & (!\inst|REG_B\(1) & \inst|alu1|unidad_aritmetica|divi|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|sel_aux\(0),
	datab => \inst|alu1|sel_aux\(1),
	datac => \inst|REG_B\(1),
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan0~0_combout\,
	combout => \inst|alu1|Mux4~0_combout\);

-- Location: LCCOMB_X12_Y20_N2
\inst|alu1|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux4~1_combout\ = (\inst|alu1|R[7]~5_combout\ & ((\inst|alu1|R[7]~6_combout\ & (\inst|alu1|Mux4~0_combout\)) # (!\inst|alu1|R[7]~6_combout\ & ((\inst|alu1|Mux0~3_combout\))))) # (!\inst|alu1|R[7]~5_combout\ & (((!\inst|alu1|R[7]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux4~0_combout\,
	datab => \inst|alu1|R[7]~5_combout\,
	datac => \inst|alu1|Mux0~3_combout\,
	datad => \inst|alu1|R[7]~6_combout\,
	combout => \inst|alu1|Mux4~1_combout\);

-- Location: LCCOMB_X12_Y20_N12
\inst|alu1|Mux4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux4~2_combout\ = (\inst|alu1|R[7]~4_combout\ & (((\inst|alu1|Mux4~1_combout\)))) # (!\inst|alu1|R[7]~4_combout\ & ((\inst|alu1|Mux4~1_combout\ & ((\inst|alu1|Mux0~2_combout\))) # (!\inst|alu1|Mux4~1_combout\ & (\inst|alu1|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux2~0_combout\,
	datab => \inst|alu1|R[7]~4_combout\,
	datac => \inst|alu1|Mux0~2_combout\,
	datad => \inst|alu1|Mux4~1_combout\,
	combout => \inst|alu1|Mux4~2_combout\);

-- Location: FF_X12_Y20_N13
\inst|alu1|R[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|alu1|Mux4~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|R\(5));

-- Location: LCCOMB_X12_Y21_N16
\inst|salida[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|salida[5]~feeder_combout\ = \inst|alu1|R\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|alu1|R\(5),
	combout => \inst|salida[5]~feeder_combout\);

-- Location: FF_X12_Y21_N17
\inst|salida[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|salida[5]~feeder_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|salida\(5));

-- Location: LCCOMB_X12_Y21_N12
\inst|alu1|unidad_logica|salida~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|salida~0_combout\ = (\inst|alu1|sel_aux\(1) & (!\inst|alu1|sel_aux\(0))) # (!\inst|alu1|sel_aux\(1) & (\inst|alu1|sel_aux\(0) & \inst|REG_B\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|sel_aux\(1),
	datac => \inst|alu1|sel_aux\(0),
	datad => \inst|REG_B\(1),
	combout => \inst|alu1|unidad_logica|salida~0_combout\);

-- Location: FF_X12_Y21_N13
\inst|alu1|unidad_logica|salida[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|alu1|unidad_logica|salida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|unidad_logica|salida\(1));

-- Location: LCCOMB_X12_Y20_N24
\inst|alu1|R[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|R[4]~7_combout\ = (!\inst|OP\(3) & (\inst|OP\(2) $ (((\inst|OP\(0)) # (\inst|OP\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|OP\(0),
	datab => \inst|OP\(1),
	datac => \inst|OP\(2),
	datad => \inst|OP\(3),
	combout => \inst|alu1|R[4]~7_combout\);

-- Location: LCCOMB_X13_Y20_N28
\inst|alu1|R[4]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|R[4]~0_combout\ = (\inst|alu1|R[4]~7_combout\ & (\inst|alu1|unidad_logica|salida\(1))) # (!\inst|alu1|R[4]~7_combout\ & ((\inst|OP\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_logica|salida\(1),
	datab => \inst|OP\(3),
	datad => \inst|alu1|R[4]~7_combout\,
	combout => \inst|alu1|R[4]~0_combout\);

-- Location: LCCOMB_X13_Y21_N30
\inst|alu1|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux8~0_combout\ = (\inst|alu1|sel_aux\(1) & (!\inst|REG_B\(1) & \inst|alu1|unidad_aritmetica|divi|LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|sel_aux\(1),
	datac => \inst|REG_B\(1),
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan0~0_combout\,
	combout => \inst|alu1|Mux8~0_combout\);

-- Location: LCCOMB_X12_Y20_N10
\inst|alu1|R[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|R[4]~8_combout\ = (\inst|OP\(3) & (!\inst|OP\(2) & ((!\inst|OP\(1)) # (!\inst|OP\(0))))) # (!\inst|OP\(3) & (\inst|OP\(0) & (\inst|OP\(2) & \inst|OP\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|OP\(3),
	datab => \inst|OP\(0),
	datac => \inst|OP\(2),
	datad => \inst|OP\(1),
	combout => \inst|alu1|R[4]~8_combout\);

-- Location: LCCOMB_X13_Y20_N30
\inst|alu1|R[4]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|R[4]~9_combout\ = (\inst|alu1|R[4]~8_combout\ & (\inst|alu1|sel_aux\(1) & !\inst|alu1|sel_aux\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|R[4]~8_combout\,
	datac => \inst|alu1|sel_aux\(1),
	datad => \inst|alu1|sel_aux\(0),
	combout => \inst|alu1|R[4]~9_combout\);

-- Location: FF_X13_Y20_N29
\inst|alu1|R[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|alu1|R[4]~0_combout\,
	asdata => \inst|alu1|Mux8~0_combout\,
	sclr => \inst|alu1|R[4]~9_combout\,
	sload => \inst|alu1|R[4]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|R\(4));

-- Location: LCCOMB_X13_Y20_N20
\inst|salida[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|salida[4]~feeder_combout\ = \inst|alu1|R\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|alu1|R\(4),
	combout => \inst|salida[4]~feeder_combout\);

-- Location: FF_X13_Y20_N21
\inst|salida[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|salida[4]~feeder_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|salida\(4));

-- Location: LCCOMB_X13_Y20_N12
\inst|alu1|unidad_logica|salida~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|salida~1_combout\ = (\inst|alu1|sel_aux\(1) & ((!\inst|alu1|sel_aux\(0)))) # (!\inst|alu1|sel_aux\(1) & (\inst|REG_B\(3) & \inst|alu1|sel_aux\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|sel_aux\(1),
	datac => \inst|REG_B\(3),
	datad => \inst|alu1|sel_aux\(0),
	combout => \inst|alu1|unidad_logica|salida~1_combout\);

-- Location: FF_X13_Y20_N13
\inst|alu1|unidad_logica|salida[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|alu1|unidad_logica|salida~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|unidad_logica|salida\(3));

-- Location: LCCOMB_X13_Y20_N14
\inst|alu1|R[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|R[3]~1_combout\ = (\inst|alu1|R[4]~7_combout\ & (\inst|alu1|unidad_logica|salida\(3))) # (!\inst|alu1|R[4]~7_combout\ & ((\inst|OP\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_logica|salida\(3),
	datab => \inst|OP\(3),
	datad => \inst|alu1|R[4]~7_combout\,
	combout => \inst|alu1|R[3]~1_combout\);

-- Location: FF_X13_Y20_N15
\inst|alu1|R[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|alu1|R[3]~1_combout\,
	asdata => \inst|alu1|Mux8~0_combout\,
	sclr => \inst|alu1|R[4]~9_combout\,
	sload => \inst|alu1|R[4]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|R\(3));

-- Location: LCCOMB_X13_Y20_N18
\inst|salida[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|salida[3]~feeder_combout\ = \inst|alu1|R\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|alu1|R\(3),
	combout => \inst|salida[3]~feeder_combout\);

-- Location: FF_X13_Y20_N19
\inst|salida[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|salida[3]~feeder_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|salida\(3));

-- Location: LCCOMB_X13_Y20_N26
\inst|alu1|unidad_logica|salida~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|salida~2_combout\ = (\inst|alu1|sel_aux\(1) & ((!\inst|alu1|sel_aux\(0)))) # (!\inst|alu1|sel_aux\(1) & (\inst|REG_B\(2) & \inst|alu1|sel_aux\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(2),
	datac => \inst|alu1|sel_aux\(1),
	datad => \inst|alu1|sel_aux\(0),
	combout => \inst|alu1|unidad_logica|salida~2_combout\);

-- Location: FF_X13_Y20_N27
\inst|alu1|unidad_logica|salida[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|alu1|unidad_logica|salida~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|unidad_logica|salida\(2));

-- Location: LCCOMB_X13_Y20_N24
\inst|alu1|R[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|R[2]~2_combout\ = (\inst|alu1|R[4]~7_combout\ & (\inst|alu1|unidad_logica|salida\(2))) # (!\inst|alu1|R[4]~7_combout\ & ((\inst|OP\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_logica|salida\(2),
	datab => \inst|OP\(3),
	datad => \inst|alu1|R[4]~7_combout\,
	combout => \inst|alu1|R[2]~2_combout\);

-- Location: FF_X13_Y20_N25
\inst|alu1|R[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|alu1|R[2]~2_combout\,
	asdata => \inst|alu1|Mux8~0_combout\,
	sclr => \inst|alu1|R[4]~9_combout\,
	sload => \inst|alu1|R[4]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|R\(2));

-- Location: LCCOMB_X13_Y20_N4
\inst|salida[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|salida[2]~feeder_combout\ = \inst|alu1|R\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|alu1|R\(2),
	combout => \inst|salida[2]~feeder_combout\);

-- Location: FF_X13_Y20_N5
\inst|salida[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|salida[2]~feeder_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|salida\(2));

-- Location: LCCOMB_X13_Y20_N6
\inst|alu1|Mux8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux8~1_combout\ = (\inst|alu1|R[4]~8_combout\ & (!\inst|alu1|R[4]~10_combout\ & (\inst|alu1|Mux8~0_combout\))) # (!\inst|alu1|R[4]~8_combout\ & (((\inst|alu1|R[4]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|R[4]~8_combout\,
	datab => \inst|alu1|R[4]~10_combout\,
	datac => \inst|alu1|Mux8~0_combout\,
	datad => \inst|alu1|R[4]~0_combout\,
	combout => \inst|alu1|Mux8~1_combout\);

-- Location: FF_X13_Y20_N7
\inst|alu1|R[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|alu1|Mux8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|R\(1));

-- Location: LCCOMB_X13_Y20_N2
\inst|salida[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|salida[1]~feeder_combout\ = \inst|alu1|R\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|alu1|R\(1),
	combout => \inst|salida[1]~feeder_combout\);

-- Location: FF_X13_Y20_N3
\inst|salida[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|salida[1]~feeder_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|salida\(1));

-- Location: LCCOMB_X13_Y20_N22
\inst|alu1|unidad_logica|salida~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|salida~3_combout\ = (\inst|alu1|sel_aux\(1) & ((!\inst|alu1|sel_aux\(0)))) # (!\inst|alu1|sel_aux\(1) & (\inst|REG_B\(0) & \inst|alu1|sel_aux\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|sel_aux\(1),
	datac => \inst|REG_B\(0),
	datad => \inst|alu1|sel_aux\(0),
	combout => \inst|alu1|unidad_logica|salida~3_combout\);

-- Location: FF_X13_Y20_N23
\inst|alu1|unidad_logica|salida[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|alu1|unidad_logica|salida~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|unidad_logica|salida\(0));

-- Location: LCCOMB_X13_Y20_N10
\inst|alu1|R[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|R[0]~3_combout\ = (\inst|alu1|R[4]~7_combout\ & (\inst|alu1|unidad_logica|salida\(0))) # (!\inst|alu1|R[4]~7_combout\ & ((\inst|OP\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_logica|salida\(0),
	datab => \inst|OP\(3),
	datad => \inst|alu1|R[4]~7_combout\,
	combout => \inst|alu1|R[0]~3_combout\);

-- Location: FF_X13_Y20_N11
\inst|alu1|R[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|alu1|R[0]~3_combout\,
	asdata => \inst|alu1|Mux8~0_combout\,
	sclr => \inst|alu1|R[4]~9_combout\,
	sload => \inst|alu1|R[4]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|R\(0));

-- Location: LCCOMB_X13_Y20_N0
\inst|salida[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|salida[0]~feeder_combout\ = \inst|alu1|R\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|alu1|R\(0),
	combout => \inst|salida[0]~feeder_combout\);

-- Location: FF_X13_Y20_N1
\inst|salida[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|salida[0]~feeder_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|salida\(0));

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


