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

-- DATE "11/21/2022 22:30:05"

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
	d1 : OUT std_logic;
	clk : IN std_logic;
	rst_clk : IN std_logic;
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
	sal_prueb : OUT std_logic_vector(3 DOWNTO 0)
	);
END practica2;

-- Design Ports Information
-- d1	=>  Location: PIN_38,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ec[1]	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ec[0]	=>  Location: PIN_51,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
-- sal_prueb[3]	=>  Location: PIN_75,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sal_prueb[2]	=>  Location: PIN_68,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sal_prueb[1]	=>  Location: PIN_73,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sal_prueb[0]	=>  Location: PIN_70,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst_clk	=>  Location: PIN_24,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
SIGNAL ww_rst_clk : std_logic;
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
SIGNAL ww_sal_prueb : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst2|salida~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rst_clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ec[1]~input_o\ : std_logic;
SIGNAL \ec[0]~input_o\ : std_logic;
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
SIGNAL \sal_prueb[3]~output_o\ : std_logic;
SIGNAL \sal_prueb[2]~output_o\ : std_logic;
SIGNAL \sal_prueb[1]~output_o\ : std_logic;
SIGNAL \sal_prueb[0]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst2|Add0~0_combout\ : std_logic;
SIGNAL \inst2|Add0~3\ : std_logic;
SIGNAL \inst2|Add0~4_combout\ : std_logic;
SIGNAL \rst_clk~input_o\ : std_logic;
SIGNAL \rst_clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst2|Add0~5\ : std_logic;
SIGNAL \inst2|Add0~6_combout\ : std_logic;
SIGNAL \inst2|Add0~7\ : std_logic;
SIGNAL \inst2|Add0~8_combout\ : std_logic;
SIGNAL \inst2|Add0~9\ : std_logic;
SIGNAL \inst2|Add0~10_combout\ : std_logic;
SIGNAL \inst2|Add0~11\ : std_logic;
SIGNAL \inst2|Add0~12_combout\ : std_logic;
SIGNAL \inst2|Add0~13\ : std_logic;
SIGNAL \inst2|Add0~14_combout\ : std_logic;
SIGNAL \inst2|cuenta~4_combout\ : std_logic;
SIGNAL \inst2|Add0~15\ : std_logic;
SIGNAL \inst2|Add0~16_combout\ : std_logic;
SIGNAL \inst2|Add0~17\ : std_logic;
SIGNAL \inst2|Add0~18_combout\ : std_logic;
SIGNAL \inst2|Add0~19\ : std_logic;
SIGNAL \inst2|Add0~20_combout\ : std_logic;
SIGNAL \inst2|Add0~21\ : std_logic;
SIGNAL \inst2|Add0~22_combout\ : std_logic;
SIGNAL \inst2|cuenta~3_combout\ : std_logic;
SIGNAL \inst2|Add0~23\ : std_logic;
SIGNAL \inst2|Add0~24_combout\ : std_logic;
SIGNAL \inst2|cuenta~2_combout\ : std_logic;
SIGNAL \inst2|Add0~25\ : std_logic;
SIGNAL \inst2|Add0~26_combout\ : std_logic;
SIGNAL \inst2|cuenta~1_combout\ : std_logic;
SIGNAL \inst2|Equal0~3_combout\ : std_logic;
SIGNAL \inst2|Add0~27\ : std_logic;
SIGNAL \inst2|Add0~28_combout\ : std_logic;
SIGNAL \inst2|Add0~29\ : std_logic;
SIGNAL \inst2|Add0~30_combout\ : std_logic;
SIGNAL \inst2|Add0~31\ : std_logic;
SIGNAL \inst2|Add0~32_combout\ : std_logic;
SIGNAL \inst2|cuenta~0_combout\ : std_logic;
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
SIGNAL \inst2|Equal0~0_combout\ : std_logic;
SIGNAL \inst2|Equal0~2_combout\ : std_logic;
SIGNAL \inst2|Equal0~1_combout\ : std_logic;
SIGNAL \inst2|Equal0~4_combout\ : std_logic;
SIGNAL \inst2|cuenta~5_combout\ : std_logic;
SIGNAL \inst2|Add0~1\ : std_logic;
SIGNAL \inst2|Add0~2_combout\ : std_logic;
SIGNAL \inst2|Equal0~6_combout\ : std_logic;
SIGNAL \inst2|Equal0~5_combout\ : std_logic;
SIGNAL \inst2|Equal0~7_combout\ : std_logic;
SIGNAL \inst2|salida~0_combout\ : std_logic;
SIGNAL \inst2|salida~feeder_combout\ : std_logic;
SIGNAL \inst2|salida~q\ : std_logic;
SIGNAL \inst2|salida~clkctrl_outclk\ : std_logic;
SIGNAL \inst4|contador[0]~1_combout\ : std_logic;
SIGNAL \inst4|contador[1]~0_combout\ : std_logic;
SIGNAL \inst4|Mux3~0_combout\ : std_logic;
SIGNAL \inst4|Mux1~0_combout\ : std_logic;
SIGNAL \inst4|Mux1~1_combout\ : std_logic;
SIGNAL \inst4|Mux1~2_combout\ : std_logic;
SIGNAL \inst2|Add1~0_combout\ : std_logic;
SIGNAL \inst2|Add1~1\ : std_logic;
SIGNAL \inst2|Add1~2_combout\ : std_logic;
SIGNAL \inst2|Add1~3\ : std_logic;
SIGNAL \inst2|Add1~4_combout\ : std_logic;
SIGNAL \inst2|Add1~5\ : std_logic;
SIGNAL \inst2|Add1~6_combout\ : std_logic;
SIGNAL \inst2|Add1~7\ : std_logic;
SIGNAL \inst2|Add1~8_combout\ : std_logic;
SIGNAL \inst2|Add1~9\ : std_logic;
SIGNAL \inst2|Add1~10_combout\ : std_logic;
SIGNAL \inst2|Equal1~6_combout\ : std_logic;
SIGNAL \inst2|Equal1~7_combout\ : std_logic;
SIGNAL \inst2|Add1~11\ : std_logic;
SIGNAL \inst2|Add1~12_combout\ : std_logic;
SIGNAL \inst2|Add1~13\ : std_logic;
SIGNAL \inst2|Add1~14_combout\ : std_logic;
SIGNAL \inst2|cuenta2~7_combout\ : std_logic;
SIGNAL \inst2|Add1~15\ : std_logic;
SIGNAL \inst2|Add1~16_combout\ : std_logic;
SIGNAL \inst2|Add1~17\ : std_logic;
SIGNAL \inst2|Add1~18_combout\ : std_logic;
SIGNAL \inst2|cuenta2~6_combout\ : std_logic;
SIGNAL \inst2|Add1~19\ : std_logic;
SIGNAL \inst2|Add1~20_combout\ : std_logic;
SIGNAL \inst2|cuenta2~5_combout\ : std_logic;
SIGNAL \inst2|Add1~21\ : std_logic;
SIGNAL \inst2|Add1~22_combout\ : std_logic;
SIGNAL \inst2|Add1~23\ : std_logic;
SIGNAL \inst2|Add1~24_combout\ : std_logic;
SIGNAL \inst2|cuenta2~4_combout\ : std_logic;
SIGNAL \inst2|Add1~25\ : std_logic;
SIGNAL \inst2|Add1~26_combout\ : std_logic;
SIGNAL \inst2|Add1~27\ : std_logic;
SIGNAL \inst2|Add1~28_combout\ : std_logic;
SIGNAL \inst2|Add1~29\ : std_logic;
SIGNAL \inst2|Add1~30_combout\ : std_logic;
SIGNAL \inst2|cuenta2~3_combout\ : std_logic;
SIGNAL \inst2|Add1~31\ : std_logic;
SIGNAL \inst2|Add1~32_combout\ : std_logic;
SIGNAL \inst2|Add1~33\ : std_logic;
SIGNAL \inst2|Add1~34_combout\ : std_logic;
SIGNAL \inst2|Add1~35\ : std_logic;
SIGNAL \inst2|Add1~36_combout\ : std_logic;
SIGNAL \inst2|Add1~37\ : std_logic;
SIGNAL \inst2|Add1~38_combout\ : std_logic;
SIGNAL \inst2|cuenta2~2_combout\ : std_logic;
SIGNAL \inst2|Add1~39\ : std_logic;
SIGNAL \inst2|Add1~40_combout\ : std_logic;
SIGNAL \inst2|cuenta2~1_combout\ : std_logic;
SIGNAL \inst2|Add1~41\ : std_logic;
SIGNAL \inst2|Add1~42_combout\ : std_logic;
SIGNAL \inst2|Add1~43\ : std_logic;
SIGNAL \inst2|Add1~44_combout\ : std_logic;
SIGNAL \inst2|Add1~45\ : std_logic;
SIGNAL \inst2|Add1~46_combout\ : std_logic;
SIGNAL \inst2|cuenta2~0_combout\ : std_logic;
SIGNAL \inst2|Add1~47\ : std_logic;
SIGNAL \inst2|Add1~48_combout\ : std_logic;
SIGNAL \inst2|Add1~49\ : std_logic;
SIGNAL \inst2|Add1~50_combout\ : std_logic;
SIGNAL \inst2|Equal1~0_combout\ : std_logic;
SIGNAL \inst2|Equal1~1_combout\ : std_logic;
SIGNAL \inst2|Equal1~2_combout\ : std_logic;
SIGNAL \inst2|Equal1~3_combout\ : std_logic;
SIGNAL \inst2|Equal1~4_combout\ : std_logic;
SIGNAL \inst2|Equal1~5_combout\ : std_logic;
SIGNAL \inst2|Equal1~8_combout\ : std_logic;
SIGNAL \inst2|salida2~0_combout\ : std_logic;
SIGNAL \inst2|salida2~q\ : std_logic;
SIGNAL \inst|n_state.state0~feeder_combout\ : std_logic;
SIGNAL \inst|n_state.state0~q\ : std_logic;
SIGNAL \inst|pr_state.state0~feeder_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \inst|pr_state.state0~q\ : std_logic;
SIGNAL \inst|n_state.state1~0_combout\ : std_logic;
SIGNAL \inst|n_state.state1~q\ : std_logic;
SIGNAL \inst|pr_state.state1~feeder_combout\ : std_logic;
SIGNAL \inst|pr_state.state1~q\ : std_logic;
SIGNAL \inst|n_state.state2~feeder_combout\ : std_logic;
SIGNAL \inst|n_state.state2~q\ : std_logic;
SIGNAL \inst|pr_state.state2~feeder_combout\ : std_logic;
SIGNAL \inst|pr_state.state2~q\ : std_logic;
SIGNAL \inst|n_state.state3~feeder_combout\ : std_logic;
SIGNAL \inst|n_state.state3~q\ : std_logic;
SIGNAL \inst|pr_state.state3~feeder_combout\ : std_logic;
SIGNAL \inst|pr_state.state3~q\ : std_logic;
SIGNAL \inst|n_state.state4~feeder_combout\ : std_logic;
SIGNAL \inst|n_state.state4~q\ : std_logic;
SIGNAL \inst|pr_state.state4~feeder_combout\ : std_logic;
SIGNAL \inst|pr_state.state4~q\ : std_logic;
SIGNAL \inst|n_state.state5~feeder_combout\ : std_logic;
SIGNAL \inst|n_state.state5~q\ : std_logic;
SIGNAL \inst|pr_state.state5~feeder_combout\ : std_logic;
SIGNAL \inst|pr_state.state5~q\ : std_logic;
SIGNAL \inst|n_state.state6~feeder_combout\ : std_logic;
SIGNAL \inst|n_state.state6~q\ : std_logic;
SIGNAL \inst|pr_state.state6~feeder_combout\ : std_logic;
SIGNAL \inst|pr_state.state6~q\ : std_logic;
SIGNAL \inst|n_state.state7~feeder_combout\ : std_logic;
SIGNAL \inst|n_state.state7~q\ : std_logic;
SIGNAL \inst|pr_state.state7~feeder_combout\ : std_logic;
SIGNAL \inst|pr_state.state7~q\ : std_logic;
SIGNAL \inst|n_state.state8~feeder_combout\ : std_logic;
SIGNAL \inst|n_state.state8~q\ : std_logic;
SIGNAL \inst|pr_state.state8~feeder_combout\ : std_logic;
SIGNAL \inst|pr_state.state8~q\ : std_logic;
SIGNAL \inst|n_state.state9~feeder_combout\ : std_logic;
SIGNAL \inst|n_state.state9~q\ : std_logic;
SIGNAL \inst|pr_state.state9~feeder_combout\ : std_logic;
SIGNAL \inst|pr_state.state9~q\ : std_logic;
SIGNAL \inst|n_state.state10~feeder_combout\ : std_logic;
SIGNAL \inst|n_state.state10~q\ : std_logic;
SIGNAL \inst|pr_state.state10~feeder_combout\ : std_logic;
SIGNAL \inst|pr_state.state10~q\ : std_logic;
SIGNAL \inst|WideOr0~1_combout\ : std_logic;
SIGNAL \inst|n_state.state11~q\ : std_logic;
SIGNAL \inst|pr_state.state11~feeder_combout\ : std_logic;
SIGNAL \inst|pr_state.state11~q\ : std_logic;
SIGNAL \inst|WideOr0~0_combout\ : std_logic;
SIGNAL \inst|s[3]~feeder_combout\ : std_logic;
SIGNAL \inst|WideOr1~0_combout\ : std_logic;
SIGNAL \inst|WideOr2~0_combout\ : std_logic;
SIGNAL \inst|WideOr2~combout\ : std_logic;
SIGNAL \inst|s[1]~feeder_combout\ : std_logic;
SIGNAL \inst|WideOr3~combout\ : std_logic;
SIGNAL \inst|s[0]~feeder_combout\ : std_logic;
SIGNAL \inst4|arreglo\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst2|cuenta2\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \inst|s\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst4|contador\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst2|cuenta\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \inst|aux_out\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_rst~input_o\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

d1 <= ww_d1;
ww_clk <= clk;
ww_rst_clk <= rst_clk;
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
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst2|salida~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst2|salida~q\);

\rst_clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rst_clk~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_rst~input_o\ <= NOT \rst~input_o\;
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
	i => \inst4|arreglo\(0),
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
	i => \inst4|arreglo\(1),
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
	i => \inst4|arreglo\(3),
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
	i => VCC,
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
	i => \inst4|arreglo\(2),
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

-- Location: IOOBUF_X34_Y19_N16
\pin_name1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|salida2~q\,
	devoe => ww_devoe,
	o => \pin_name1~output_o\);

-- Location: IOOBUF_X34_Y3_N23
\sal_prueb[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|s\(3),
	devoe => ww_devoe,
	o => \sal_prueb[3]~output_o\);

-- Location: IOOBUF_X30_Y0_N9
\sal_prueb[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|s\(2),
	devoe => ww_devoe,
	o => \sal_prueb[2]~output_o\);

-- Location: IOOBUF_X34_Y2_N23
\sal_prueb[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|s\(1),
	devoe => ww_devoe,
	o => \sal_prueb[1]~output_o\);

-- Location: IOOBUF_X32_Y0_N23
\sal_prueb[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|s\(0),
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

-- Location: LCCOMB_X16_Y16_N6
\inst2|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~0_combout\ = \inst2|cuenta\(0) $ (VCC)
-- \inst2|Add0~1\ = CARRY(\inst2|cuenta\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|cuenta\(0),
	datad => VCC,
	combout => \inst2|Add0~0_combout\,
	cout => \inst2|Add0~1\);

-- Location: LCCOMB_X16_Y16_N8
\inst2|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~2_combout\ = (\inst2|cuenta\(1) & (!\inst2|Add0~1\)) # (!\inst2|cuenta\(1) & ((\inst2|Add0~1\) # (GND)))
-- \inst2|Add0~3\ = CARRY((!\inst2|Add0~1\) # (!\inst2|cuenta\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|cuenta\(1),
	datad => VCC,
	cin => \inst2|Add0~1\,
	combout => \inst2|Add0~2_combout\,
	cout => \inst2|Add0~3\);

-- Location: LCCOMB_X16_Y16_N10
\inst2|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~4_combout\ = (\inst2|cuenta\(2) & (\inst2|Add0~3\ $ (GND))) # (!\inst2|cuenta\(2) & (!\inst2|Add0~3\ & VCC))
-- \inst2|Add0~5\ = CARRY((\inst2|cuenta\(2) & !\inst2|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|cuenta\(2),
	datad => VCC,
	cin => \inst2|Add0~3\,
	combout => \inst2|Add0~4_combout\,
	cout => \inst2|Add0~5\);

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

-- Location: CLKCTRL_G4
\rst_clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rst_clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rst_clk~inputclkctrl_outclk\);

-- Location: FF_X16_Y16_N11
\inst2|cuenta[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|Add0~4_combout\,
	clrn => \rst_clk~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|cuenta\(2));

-- Location: LCCOMB_X16_Y16_N12
\inst2|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~6_combout\ = (\inst2|cuenta\(3) & (!\inst2|Add0~5\)) # (!\inst2|cuenta\(3) & ((\inst2|Add0~5\) # (GND)))
-- \inst2|Add0~7\ = CARRY((!\inst2|Add0~5\) # (!\inst2|cuenta\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|cuenta\(3),
	datad => VCC,
	cin => \inst2|Add0~5\,
	combout => \inst2|Add0~6_combout\,
	cout => \inst2|Add0~7\);

-- Location: FF_X16_Y16_N13
\inst2|cuenta[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|Add0~6_combout\,
	clrn => \rst_clk~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|cuenta\(3));

-- Location: LCCOMB_X16_Y16_N14
\inst2|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~8_combout\ = (\inst2|cuenta\(4) & (\inst2|Add0~7\ $ (GND))) # (!\inst2|cuenta\(4) & (!\inst2|Add0~7\ & VCC))
-- \inst2|Add0~9\ = CARRY((\inst2|cuenta\(4) & !\inst2|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|cuenta\(4),
	datad => VCC,
	cin => \inst2|Add0~7\,
	combout => \inst2|Add0~8_combout\,
	cout => \inst2|Add0~9\);

-- Location: FF_X16_Y16_N15
\inst2|cuenta[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|Add0~8_combout\,
	clrn => \rst_clk~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|cuenta\(4));

-- Location: LCCOMB_X16_Y16_N16
\inst2|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~10_combout\ = (\inst2|cuenta\(5) & (!\inst2|Add0~9\)) # (!\inst2|cuenta\(5) & ((\inst2|Add0~9\) # (GND)))
-- \inst2|Add0~11\ = CARRY((!\inst2|Add0~9\) # (!\inst2|cuenta\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|cuenta\(5),
	datad => VCC,
	cin => \inst2|Add0~9\,
	combout => \inst2|Add0~10_combout\,
	cout => \inst2|Add0~11\);

-- Location: FF_X16_Y16_N17
\inst2|cuenta[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|Add0~10_combout\,
	clrn => \rst_clk~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|cuenta\(5));

-- Location: LCCOMB_X16_Y16_N18
\inst2|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~12_combout\ = (\inst2|cuenta\(6) & (\inst2|Add0~11\ $ (GND))) # (!\inst2|cuenta\(6) & (!\inst2|Add0~11\ & VCC))
-- \inst2|Add0~13\ = CARRY((\inst2|cuenta\(6) & !\inst2|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|cuenta\(6),
	datad => VCC,
	cin => \inst2|Add0~11\,
	combout => \inst2|Add0~12_combout\,
	cout => \inst2|Add0~13\);

-- Location: FF_X16_Y16_N19
\inst2|cuenta[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|Add0~12_combout\,
	clrn => \rst_clk~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|cuenta\(6));

-- Location: LCCOMB_X16_Y16_N20
\inst2|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~14_combout\ = (\inst2|cuenta\(7) & (!\inst2|Add0~13\)) # (!\inst2|cuenta\(7) & ((\inst2|Add0~13\) # (GND)))
-- \inst2|Add0~15\ = CARRY((!\inst2|Add0~13\) # (!\inst2|cuenta\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|cuenta\(7),
	datad => VCC,
	cin => \inst2|Add0~13\,
	combout => \inst2|Add0~14_combout\,
	cout => \inst2|Add0~15\);

-- Location: LCCOMB_X17_Y16_N30
\inst2|cuenta~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|cuenta~4_combout\ = (\inst2|Add0~14_combout\ & ((!\inst2|Equal0~4_combout\) # (!\inst2|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Equal0~7_combout\,
	datac => \inst2|Equal0~4_combout\,
	datad => \inst2|Add0~14_combout\,
	combout => \inst2|cuenta~4_combout\);

-- Location: FF_X17_Y16_N31
\inst2|cuenta[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|cuenta~4_combout\,
	clrn => \rst_clk~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|cuenta\(7));

-- Location: LCCOMB_X16_Y16_N22
\inst2|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~16_combout\ = (\inst2|cuenta\(8) & (\inst2|Add0~15\ $ (GND))) # (!\inst2|cuenta\(8) & (!\inst2|Add0~15\ & VCC))
-- \inst2|Add0~17\ = CARRY((\inst2|cuenta\(8) & !\inst2|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|cuenta\(8),
	datad => VCC,
	cin => \inst2|Add0~15\,
	combout => \inst2|Add0~16_combout\,
	cout => \inst2|Add0~17\);

-- Location: FF_X16_Y16_N23
\inst2|cuenta[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|Add0~16_combout\,
	clrn => \rst_clk~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|cuenta\(8));

-- Location: LCCOMB_X16_Y16_N24
\inst2|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~18_combout\ = (\inst2|cuenta\(9) & (!\inst2|Add0~17\)) # (!\inst2|cuenta\(9) & ((\inst2|Add0~17\) # (GND)))
-- \inst2|Add0~19\ = CARRY((!\inst2|Add0~17\) # (!\inst2|cuenta\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|cuenta\(9),
	datad => VCC,
	cin => \inst2|Add0~17\,
	combout => \inst2|Add0~18_combout\,
	cout => \inst2|Add0~19\);

-- Location: FF_X16_Y16_N25
\inst2|cuenta[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|Add0~18_combout\,
	clrn => \rst_clk~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|cuenta\(9));

-- Location: LCCOMB_X16_Y16_N26
\inst2|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~20_combout\ = (\inst2|cuenta\(10) & (\inst2|Add0~19\ $ (GND))) # (!\inst2|cuenta\(10) & (!\inst2|Add0~19\ & VCC))
-- \inst2|Add0~21\ = CARRY((\inst2|cuenta\(10) & !\inst2|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|cuenta\(10),
	datad => VCC,
	cin => \inst2|Add0~19\,
	combout => \inst2|Add0~20_combout\,
	cout => \inst2|Add0~21\);

-- Location: FF_X16_Y16_N27
\inst2|cuenta[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|Add0~20_combout\,
	clrn => \rst_clk~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|cuenta\(10));

-- Location: LCCOMB_X16_Y16_N28
\inst2|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~22_combout\ = (\inst2|cuenta\(11) & (!\inst2|Add0~21\)) # (!\inst2|cuenta\(11) & ((\inst2|Add0~21\) # (GND)))
-- \inst2|Add0~23\ = CARRY((!\inst2|Add0~21\) # (!\inst2|cuenta\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|cuenta\(11),
	datad => VCC,
	cin => \inst2|Add0~21\,
	combout => \inst2|Add0~22_combout\,
	cout => \inst2|Add0~23\);

-- Location: LCCOMB_X16_Y16_N2
\inst2|cuenta~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|cuenta~3_combout\ = (\inst2|Add0~22_combout\ & ((!\inst2|Equal0~4_combout\) # (!\inst2|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Equal0~7_combout\,
	datac => \inst2|Equal0~4_combout\,
	datad => \inst2|Add0~22_combout\,
	combout => \inst2|cuenta~3_combout\);

-- Location: FF_X16_Y16_N3
\inst2|cuenta[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|cuenta~3_combout\,
	clrn => \rst_clk~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|cuenta\(11));

-- Location: LCCOMB_X16_Y16_N30
\inst2|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~24_combout\ = (\inst2|cuenta\(12) & (\inst2|Add0~23\ $ (GND))) # (!\inst2|cuenta\(12) & (!\inst2|Add0~23\ & VCC))
-- \inst2|Add0~25\ = CARRY((\inst2|cuenta\(12) & !\inst2|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|cuenta\(12),
	datad => VCC,
	cin => \inst2|Add0~23\,
	combout => \inst2|Add0~24_combout\,
	cout => \inst2|Add0~25\);

-- Location: LCCOMB_X16_Y16_N4
\inst2|cuenta~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|cuenta~2_combout\ = (\inst2|Add0~24_combout\ & ((!\inst2|Equal0~7_combout\) # (!\inst2|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Equal0~4_combout\,
	datac => \inst2|Add0~24_combout\,
	datad => \inst2|Equal0~7_combout\,
	combout => \inst2|cuenta~2_combout\);

-- Location: FF_X16_Y16_N5
\inst2|cuenta[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|cuenta~2_combout\,
	clrn => \rst_clk~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|cuenta\(12));

-- Location: LCCOMB_X16_Y15_N0
\inst2|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~26_combout\ = (\inst2|cuenta\(13) & (!\inst2|Add0~25\)) # (!\inst2|cuenta\(13) & ((\inst2|Add0~25\) # (GND)))
-- \inst2|Add0~27\ = CARRY((!\inst2|Add0~25\) # (!\inst2|cuenta\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|cuenta\(13),
	datad => VCC,
	cin => \inst2|Add0~25\,
	combout => \inst2|Add0~26_combout\,
	cout => \inst2|Add0~27\);

-- Location: LCCOMB_X16_Y15_N26
\inst2|cuenta~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|cuenta~1_combout\ = (\inst2|Add0~26_combout\ & ((!\inst2|Equal0~4_combout\) # (!\inst2|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Equal0~7_combout\,
	datab => \inst2|Equal0~4_combout\,
	datad => \inst2|Add0~26_combout\,
	combout => \inst2|cuenta~1_combout\);

-- Location: FF_X16_Y15_N27
\inst2|cuenta[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|cuenta~1_combout\,
	clrn => \rst_clk~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|cuenta\(13));

-- Location: LCCOMB_X17_Y16_N22
\inst2|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal0~3_combout\ = (!\inst2|cuenta\(10) & (\inst2|cuenta\(12) & (\inst2|cuenta\(13) & \inst2|cuenta\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|cuenta\(10),
	datab => \inst2|cuenta\(12),
	datac => \inst2|cuenta\(13),
	datad => \inst2|cuenta\(11),
	combout => \inst2|Equal0~3_combout\);

-- Location: LCCOMB_X16_Y15_N2
\inst2|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~28_combout\ = (\inst2|cuenta\(14) & (\inst2|Add0~27\ $ (GND))) # (!\inst2|cuenta\(14) & (!\inst2|Add0~27\ & VCC))
-- \inst2|Add0~29\ = CARRY((\inst2|cuenta\(14) & !\inst2|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|cuenta\(14),
	datad => VCC,
	cin => \inst2|Add0~27\,
	combout => \inst2|Add0~28_combout\,
	cout => \inst2|Add0~29\);

-- Location: FF_X16_Y15_N3
\inst2|cuenta[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|Add0~28_combout\,
	clrn => \rst_clk~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|cuenta\(14));

-- Location: LCCOMB_X16_Y15_N4
\inst2|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~30_combout\ = (\inst2|cuenta\(15) & (!\inst2|Add0~29\)) # (!\inst2|cuenta\(15) & ((\inst2|Add0~29\) # (GND)))
-- \inst2|Add0~31\ = CARRY((!\inst2|Add0~29\) # (!\inst2|cuenta\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|cuenta\(15),
	datad => VCC,
	cin => \inst2|Add0~29\,
	combout => \inst2|Add0~30_combout\,
	cout => \inst2|Add0~31\);

-- Location: FF_X16_Y15_N5
\inst2|cuenta[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|Add0~30_combout\,
	clrn => \rst_clk~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|cuenta\(15));

-- Location: LCCOMB_X16_Y15_N6
\inst2|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~32_combout\ = (\inst2|cuenta\(16) & (\inst2|Add0~31\ $ (GND))) # (!\inst2|cuenta\(16) & (!\inst2|Add0~31\ & VCC))
-- \inst2|Add0~33\ = CARRY((\inst2|cuenta\(16) & !\inst2|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|cuenta\(16),
	datad => VCC,
	cin => \inst2|Add0~31\,
	combout => \inst2|Add0~32_combout\,
	cout => \inst2|Add0~33\);

-- Location: LCCOMB_X16_Y15_N30
\inst2|cuenta~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|cuenta~0_combout\ = (\inst2|Add0~32_combout\ & ((!\inst2|Equal0~4_combout\) # (!\inst2|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Equal0~7_combout\,
	datab => \inst2|Equal0~4_combout\,
	datad => \inst2|Add0~32_combout\,
	combout => \inst2|cuenta~0_combout\);

-- Location: FF_X16_Y15_N31
\inst2|cuenta[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|cuenta~0_combout\,
	clrn => \rst_clk~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|cuenta\(16));

-- Location: LCCOMB_X16_Y15_N8
\inst2|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~34_combout\ = (\inst2|cuenta\(17) & (!\inst2|Add0~33\)) # (!\inst2|cuenta\(17) & ((\inst2|Add0~33\) # (GND)))
-- \inst2|Add0~35\ = CARRY((!\inst2|Add0~33\) # (!\inst2|cuenta\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|cuenta\(17),
	datad => VCC,
	cin => \inst2|Add0~33\,
	combout => \inst2|Add0~34_combout\,
	cout => \inst2|Add0~35\);

-- Location: FF_X16_Y15_N9
\inst2|cuenta[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|Add0~34_combout\,
	clrn => \rst_clk~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|cuenta\(17));

-- Location: LCCOMB_X16_Y15_N10
\inst2|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~36_combout\ = (\inst2|cuenta\(18) & (\inst2|Add0~35\ $ (GND))) # (!\inst2|cuenta\(18) & (!\inst2|Add0~35\ & VCC))
-- \inst2|Add0~37\ = CARRY((\inst2|cuenta\(18) & !\inst2|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|cuenta\(18),
	datad => VCC,
	cin => \inst2|Add0~35\,
	combout => \inst2|Add0~36_combout\,
	cout => \inst2|Add0~37\);

-- Location: FF_X16_Y15_N11
\inst2|cuenta[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|Add0~36_combout\,
	clrn => \rst_clk~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|cuenta\(18));

-- Location: LCCOMB_X16_Y15_N12
\inst2|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~38_combout\ = (\inst2|cuenta\(19) & (!\inst2|Add0~37\)) # (!\inst2|cuenta\(19) & ((\inst2|Add0~37\) # (GND)))
-- \inst2|Add0~39\ = CARRY((!\inst2|Add0~37\) # (!\inst2|cuenta\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|cuenta\(19),
	datad => VCC,
	cin => \inst2|Add0~37\,
	combout => \inst2|Add0~38_combout\,
	cout => \inst2|Add0~39\);

-- Location: FF_X16_Y15_N13
\inst2|cuenta[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|Add0~38_combout\,
	clrn => \rst_clk~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|cuenta\(19));

-- Location: LCCOMB_X16_Y15_N14
\inst2|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~40_combout\ = (\inst2|cuenta\(20) & (\inst2|Add0~39\ $ (GND))) # (!\inst2|cuenta\(20) & (!\inst2|Add0~39\ & VCC))
-- \inst2|Add0~41\ = CARRY((\inst2|cuenta\(20) & !\inst2|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|cuenta\(20),
	datad => VCC,
	cin => \inst2|Add0~39\,
	combout => \inst2|Add0~40_combout\,
	cout => \inst2|Add0~41\);

-- Location: FF_X16_Y15_N15
\inst2|cuenta[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|Add0~40_combout\,
	clrn => \rst_clk~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|cuenta\(20));

-- Location: LCCOMB_X16_Y15_N16
\inst2|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~42_combout\ = (\inst2|cuenta\(21) & (!\inst2|Add0~41\)) # (!\inst2|cuenta\(21) & ((\inst2|Add0~41\) # (GND)))
-- \inst2|Add0~43\ = CARRY((!\inst2|Add0~41\) # (!\inst2|cuenta\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|cuenta\(21),
	datad => VCC,
	cin => \inst2|Add0~41\,
	combout => \inst2|Add0~42_combout\,
	cout => \inst2|Add0~43\);

-- Location: FF_X16_Y15_N17
\inst2|cuenta[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|Add0~42_combout\,
	clrn => \rst_clk~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|cuenta\(21));

-- Location: LCCOMB_X16_Y15_N18
\inst2|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~44_combout\ = (\inst2|cuenta\(22) & (\inst2|Add0~43\ $ (GND))) # (!\inst2|cuenta\(22) & (!\inst2|Add0~43\ & VCC))
-- \inst2|Add0~45\ = CARRY((\inst2|cuenta\(22) & !\inst2|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|cuenta\(22),
	datad => VCC,
	cin => \inst2|Add0~43\,
	combout => \inst2|Add0~44_combout\,
	cout => \inst2|Add0~45\);

-- Location: FF_X16_Y15_N19
\inst2|cuenta[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|Add0~44_combout\,
	clrn => \rst_clk~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|cuenta\(22));

-- Location: LCCOMB_X16_Y15_N20
\inst2|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~46_combout\ = (\inst2|cuenta\(23) & (!\inst2|Add0~45\)) # (!\inst2|cuenta\(23) & ((\inst2|Add0~45\) # (GND)))
-- \inst2|Add0~47\ = CARRY((!\inst2|Add0~45\) # (!\inst2|cuenta\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|cuenta\(23),
	datad => VCC,
	cin => \inst2|Add0~45\,
	combout => \inst2|Add0~46_combout\,
	cout => \inst2|Add0~47\);

-- Location: FF_X16_Y15_N21
\inst2|cuenta[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|Add0~46_combout\,
	clrn => \rst_clk~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|cuenta\(23));

-- Location: LCCOMB_X16_Y15_N22
\inst2|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~48_combout\ = (\inst2|cuenta\(24) & (\inst2|Add0~47\ $ (GND))) # (!\inst2|cuenta\(24) & (!\inst2|Add0~47\ & VCC))
-- \inst2|Add0~49\ = CARRY((\inst2|cuenta\(24) & !\inst2|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|cuenta\(24),
	datad => VCC,
	cin => \inst2|Add0~47\,
	combout => \inst2|Add0~48_combout\,
	cout => \inst2|Add0~49\);

-- Location: FF_X16_Y15_N23
\inst2|cuenta[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|Add0~48_combout\,
	clrn => \rst_clk~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|cuenta\(24));

-- Location: LCCOMB_X16_Y15_N24
\inst2|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~50_combout\ = \inst2|Add0~49\ $ (\inst2|cuenta\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst2|cuenta\(25),
	cin => \inst2|Add0~49\,
	combout => \inst2|Add0~50_combout\);

-- Location: FF_X16_Y15_N25
\inst2|cuenta[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|Add0~50_combout\,
	clrn => \rst_clk~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|cuenta\(25));

-- Location: LCCOMB_X17_Y15_N0
\inst2|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal0~0_combout\ = (!\inst2|cuenta\(23) & (!\inst2|cuenta\(24) & (!\inst2|cuenta\(25) & !\inst2|cuenta\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|cuenta\(23),
	datab => \inst2|cuenta\(24),
	datac => \inst2|cuenta\(25),
	datad => \inst2|cuenta\(22),
	combout => \inst2|Equal0~0_combout\);

-- Location: LCCOMB_X16_Y15_N28
\inst2|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal0~2_combout\ = (\inst2|cuenta\(16) & (!\inst2|cuenta\(15) & (!\inst2|cuenta\(17) & !\inst2|cuenta\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|cuenta\(16),
	datab => \inst2|cuenta\(15),
	datac => \inst2|cuenta\(17),
	datad => \inst2|cuenta\(14),
	combout => \inst2|Equal0~2_combout\);

-- Location: LCCOMB_X17_Y15_N6
\inst2|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal0~1_combout\ = (!\inst2|cuenta\(20) & (!\inst2|cuenta\(19) & (!\inst2|cuenta\(21) & !\inst2|cuenta\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|cuenta\(20),
	datab => \inst2|cuenta\(19),
	datac => \inst2|cuenta\(21),
	datad => \inst2|cuenta\(18),
	combout => \inst2|Equal0~1_combout\);

-- Location: LCCOMB_X17_Y16_N20
\inst2|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal0~4_combout\ = (\inst2|Equal0~3_combout\ & (\inst2|Equal0~0_combout\ & (\inst2|Equal0~2_combout\ & \inst2|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Equal0~3_combout\,
	datab => \inst2|Equal0~0_combout\,
	datac => \inst2|Equal0~2_combout\,
	datad => \inst2|Equal0~1_combout\,
	combout => \inst2|Equal0~4_combout\);

-- Location: LCCOMB_X16_Y16_N0
\inst2|cuenta~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|cuenta~5_combout\ = (\inst2|Add0~0_combout\ & ((!\inst2|Equal0~7_combout\) # (!\inst2|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~0_combout\,
	datac => \inst2|Equal0~4_combout\,
	datad => \inst2|Equal0~7_combout\,
	combout => \inst2|cuenta~5_combout\);

-- Location: FF_X16_Y16_N1
\inst2|cuenta[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|cuenta~5_combout\,
	clrn => \rst_clk~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|cuenta\(0));

-- Location: FF_X16_Y16_N9
\inst2|cuenta[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|Add0~2_combout\,
	clrn => \rst_clk~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|cuenta\(1));

-- Location: LCCOMB_X17_Y16_N24
\inst2|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal0~6_combout\ = (!\inst2|cuenta\(4) & (!\inst2|cuenta\(3) & (!\inst2|cuenta\(5) & !\inst2|cuenta\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|cuenta\(4),
	datab => \inst2|cuenta\(3),
	datac => \inst2|cuenta\(5),
	datad => \inst2|cuenta\(2),
	combout => \inst2|Equal0~6_combout\);

-- Location: LCCOMB_X17_Y16_N18
\inst2|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal0~5_combout\ = (\inst2|cuenta\(7) & (!\inst2|cuenta\(6) & (!\inst2|cuenta\(8) & !\inst2|cuenta\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|cuenta\(7),
	datab => \inst2|cuenta\(6),
	datac => \inst2|cuenta\(8),
	datad => \inst2|cuenta\(9),
	combout => \inst2|Equal0~5_combout\);

-- Location: LCCOMB_X17_Y16_N28
\inst2|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal0~7_combout\ = (!\inst2|cuenta\(1) & (\inst2|Equal0~6_combout\ & (!\inst2|cuenta\(0) & \inst2|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|cuenta\(1),
	datab => \inst2|Equal0~6_combout\,
	datac => \inst2|cuenta\(0),
	datad => \inst2|Equal0~5_combout\,
	combout => \inst2|Equal0~7_combout\);

-- Location: LCCOMB_X17_Y16_N14
\inst2|salida~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|salida~0_combout\ = \inst2|salida~q\ $ (((\inst2|Equal0~7_combout\ & \inst2|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Equal0~7_combout\,
	datac => \inst2|salida~q\,
	datad => \inst2|Equal0~4_combout\,
	combout => \inst2|salida~0_combout\);

-- Location: LCCOMB_X17_Y16_N6
\inst2|salida~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|salida~feeder_combout\ = \inst2|salida~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|salida~0_combout\,
	combout => \inst2|salida~feeder_combout\);

-- Location: FF_X17_Y16_N7
\inst2|salida\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|salida~feeder_combout\,
	clrn => \rst_clk~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|salida~q\);

-- Location: CLKCTRL_G6
\inst2|salida~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst2|salida~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst2|salida~clkctrl_outclk\);

-- Location: LCCOMB_X1_Y1_N28
\inst4|contador[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|contador[0]~1_combout\ = !\inst4|contador\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|contador\(0),
	combout => \inst4|contador[0]~1_combout\);

-- Location: FF_X1_Y1_N29
\inst4|contador[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|salida~clkctrl_outclk\,
	d => \inst4|contador[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|contador\(0));

-- Location: LCCOMB_X1_Y1_N30
\inst4|contador[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|contador[1]~0_combout\ = \inst4|contador\(1) $ (\inst4|contador\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|contador\(1),
	datad => \inst4|contador\(0),
	combout => \inst4|contador[1]~0_combout\);

-- Location: FF_X1_Y1_N31
\inst4|contador[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|salida~clkctrl_outclk\,
	d => \inst4|contador[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|contador\(1));

-- Location: LCCOMB_X1_Y1_N20
\inst4|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Mux3~0_combout\ = (!\inst4|contador\(1) & !\inst4|contador\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|contador\(1),
	datad => \inst4|contador\(0),
	combout => \inst4|Mux3~0_combout\);

-- Location: FF_X1_Y1_N21
\inst4|arreglo[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|salida~clkctrl_outclk\,
	d => \inst4|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|arreglo\(0));

-- Location: LCCOMB_X1_Y1_N22
\inst4|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Mux1~0_combout\ = (!\inst4|contador\(1) & \inst4|contador\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|contador\(1),
	datad => \inst4|contador\(0),
	combout => \inst4|Mux1~0_combout\);

-- Location: FF_X1_Y1_N23
\inst4|arreglo[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|salida~clkctrl_outclk\,
	d => \inst4|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|arreglo\(1));

-- Location: LCCOMB_X1_Y1_N24
\inst4|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Mux1~1_combout\ = (\inst4|contador\(1) & \inst4|contador\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|contador\(1),
	datad => \inst4|contador\(0),
	combout => \inst4|Mux1~1_combout\);

-- Location: FF_X1_Y1_N25
\inst4|arreglo[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|salida~clkctrl_outclk\,
	d => \inst4|Mux1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|arreglo\(3));

-- Location: LCCOMB_X1_Y1_N26
\inst4|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Mux1~2_combout\ = (\inst4|contador\(1) & !\inst4|contador\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|contador\(1),
	datad => \inst4|contador\(0),
	combout => \inst4|Mux1~2_combout\);

-- Location: FF_X1_Y1_N27
\inst4|arreglo[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|salida~clkctrl_outclk\,
	d => \inst4|Mux1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|arreglo\(2));

-- Location: LCCOMB_X10_Y17_N6
\inst2|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add1~0_combout\ = \inst2|cuenta2\(0) $ (VCC)
-- \inst2|Add1~1\ = CARRY(\inst2|cuenta2\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|cuenta2\(0),
	datad => VCC,
	combout => \inst2|Add1~0_combout\,
	cout => \inst2|Add1~1\);

-- Location: FF_X10_Y17_N7
\inst2|cuenta2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|Add1~0_combout\,
	ena => \rst_clk~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|cuenta2\(0));

-- Location: LCCOMB_X10_Y17_N8
\inst2|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add1~2_combout\ = (\inst2|cuenta2\(1) & (!\inst2|Add1~1\)) # (!\inst2|cuenta2\(1) & ((\inst2|Add1~1\) # (GND)))
-- \inst2|Add1~3\ = CARRY((!\inst2|Add1~1\) # (!\inst2|cuenta2\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|cuenta2\(1),
	datad => VCC,
	cin => \inst2|Add1~1\,
	combout => \inst2|Add1~2_combout\,
	cout => \inst2|Add1~3\);

-- Location: FF_X10_Y17_N9
\inst2|cuenta2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|Add1~2_combout\,
	ena => \rst_clk~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|cuenta2\(1));

-- Location: LCCOMB_X10_Y17_N10
\inst2|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add1~4_combout\ = (\inst2|cuenta2\(2) & (\inst2|Add1~3\ $ (GND))) # (!\inst2|cuenta2\(2) & (!\inst2|Add1~3\ & VCC))
-- \inst2|Add1~5\ = CARRY((\inst2|cuenta2\(2) & !\inst2|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|cuenta2\(2),
	datad => VCC,
	cin => \inst2|Add1~3\,
	combout => \inst2|Add1~4_combout\,
	cout => \inst2|Add1~5\);

-- Location: FF_X10_Y17_N11
\inst2|cuenta2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|Add1~4_combout\,
	ena => \rst_clk~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|cuenta2\(2));

-- Location: LCCOMB_X10_Y17_N12
\inst2|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add1~6_combout\ = (\inst2|cuenta2\(3) & (!\inst2|Add1~5\)) # (!\inst2|cuenta2\(3) & ((\inst2|Add1~5\) # (GND)))
-- \inst2|Add1~7\ = CARRY((!\inst2|Add1~5\) # (!\inst2|cuenta2\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|cuenta2\(3),
	datad => VCC,
	cin => \inst2|Add1~5\,
	combout => \inst2|Add1~6_combout\,
	cout => \inst2|Add1~7\);

-- Location: FF_X10_Y17_N13
\inst2|cuenta2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|Add1~6_combout\,
	ena => \rst_clk~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|cuenta2\(3));

-- Location: LCCOMB_X10_Y17_N14
\inst2|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add1~8_combout\ = (\inst2|cuenta2\(4) & (\inst2|Add1~7\ $ (GND))) # (!\inst2|cuenta2\(4) & (!\inst2|Add1~7\ & VCC))
-- \inst2|Add1~9\ = CARRY((\inst2|cuenta2\(4) & !\inst2|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|cuenta2\(4),
	datad => VCC,
	cin => \inst2|Add1~7\,
	combout => \inst2|Add1~8_combout\,
	cout => \inst2|Add1~9\);

-- Location: FF_X10_Y17_N15
\inst2|cuenta2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|Add1~8_combout\,
	ena => \rst_clk~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|cuenta2\(4));

-- Location: LCCOMB_X10_Y17_N16
\inst2|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add1~10_combout\ = (\inst2|cuenta2\(5) & (!\inst2|Add1~9\)) # (!\inst2|cuenta2\(5) & ((\inst2|Add1~9\) # (GND)))
-- \inst2|Add1~11\ = CARRY((!\inst2|Add1~9\) # (!\inst2|cuenta2\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|cuenta2\(5),
	datad => VCC,
	cin => \inst2|Add1~9\,
	combout => \inst2|Add1~10_combout\,
	cout => \inst2|Add1~11\);

-- Location: FF_X10_Y17_N17
\inst2|cuenta2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|Add1~10_combout\,
	ena => \rst_clk~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|cuenta2\(5));

-- Location: LCCOMB_X11_Y17_N16
\inst2|Equal1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal1~6_combout\ = (\inst2|cuenta2\(3) & (\inst2|cuenta2\(4) & (\inst2|cuenta2\(5) & \inst2|cuenta2\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|cuenta2\(3),
	datab => \inst2|cuenta2\(4),
	datac => \inst2|cuenta2\(5),
	datad => \inst2|cuenta2\(2),
	combout => \inst2|Equal1~6_combout\);

-- Location: LCCOMB_X11_Y17_N14
\inst2|Equal1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal1~7_combout\ = (\inst2|cuenta2\(0) & \inst2|cuenta2\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|cuenta2\(0),
	datad => \inst2|cuenta2\(1),
	combout => \inst2|Equal1~7_combout\);

-- Location: LCCOMB_X10_Y17_N18
\inst2|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add1~12_combout\ = (\inst2|cuenta2\(6) & (\inst2|Add1~11\ $ (GND))) # (!\inst2|cuenta2\(6) & (!\inst2|Add1~11\ & VCC))
-- \inst2|Add1~13\ = CARRY((\inst2|cuenta2\(6) & !\inst2|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|cuenta2\(6),
	datad => VCC,
	cin => \inst2|Add1~11\,
	combout => \inst2|Add1~12_combout\,
	cout => \inst2|Add1~13\);

-- Location: FF_X10_Y17_N19
\inst2|cuenta2[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|Add1~12_combout\,
	ena => \rst_clk~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|cuenta2\(6));

-- Location: LCCOMB_X10_Y17_N20
\inst2|Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add1~14_combout\ = (\inst2|cuenta2\(7) & (!\inst2|Add1~13\)) # (!\inst2|cuenta2\(7) & ((\inst2|Add1~13\) # (GND)))
-- \inst2|Add1~15\ = CARRY((!\inst2|Add1~13\) # (!\inst2|cuenta2\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|cuenta2\(7),
	datad => VCC,
	cin => \inst2|Add1~13\,
	combout => \inst2|Add1~14_combout\,
	cout => \inst2|Add1~15\);

-- Location: LCCOMB_X10_Y17_N2
\inst2|cuenta2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|cuenta2~7_combout\ = (\inst2|Add1~14_combout\ & !\inst2|Equal1~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Add1~14_combout\,
	datad => \inst2|Equal1~8_combout\,
	combout => \inst2|cuenta2~7_combout\);

-- Location: FF_X10_Y17_N3
\inst2|cuenta2[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|cuenta2~7_combout\,
	ena => \rst_clk~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|cuenta2\(7));

-- Location: LCCOMB_X10_Y17_N22
\inst2|Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add1~16_combout\ = (\inst2|cuenta2\(8) & (\inst2|Add1~15\ $ (GND))) # (!\inst2|cuenta2\(8) & (!\inst2|Add1~15\ & VCC))
-- \inst2|Add1~17\ = CARRY((\inst2|cuenta2\(8) & !\inst2|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|cuenta2\(8),
	datad => VCC,
	cin => \inst2|Add1~15\,
	combout => \inst2|Add1~16_combout\,
	cout => \inst2|Add1~17\);

-- Location: FF_X10_Y17_N23
\inst2|cuenta2[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|Add1~16_combout\,
	ena => \rst_clk~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|cuenta2\(8));

-- Location: LCCOMB_X10_Y17_N24
\inst2|Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add1~18_combout\ = (\inst2|cuenta2\(9) & (!\inst2|Add1~17\)) # (!\inst2|cuenta2\(9) & ((\inst2|Add1~17\) # (GND)))
-- \inst2|Add1~19\ = CARRY((!\inst2|Add1~17\) # (!\inst2|cuenta2\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|cuenta2\(9),
	datad => VCC,
	cin => \inst2|Add1~17\,
	combout => \inst2|Add1~18_combout\,
	cout => \inst2|Add1~19\);

-- Location: LCCOMB_X11_Y16_N0
\inst2|cuenta2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|cuenta2~6_combout\ = (\inst2|Add1~18_combout\ & !\inst2|Equal1~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Add1~18_combout\,
	datad => \inst2|Equal1~8_combout\,
	combout => \inst2|cuenta2~6_combout\);

-- Location: FF_X11_Y16_N1
\inst2|cuenta2[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|cuenta2~6_combout\,
	ena => \rst_clk~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|cuenta2\(9));

-- Location: LCCOMB_X10_Y17_N26
\inst2|Add1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add1~20_combout\ = (\inst2|cuenta2\(10) & (\inst2|Add1~19\ $ (GND))) # (!\inst2|cuenta2\(10) & (!\inst2|Add1~19\ & VCC))
-- \inst2|Add1~21\ = CARRY((\inst2|cuenta2\(10) & !\inst2|Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|cuenta2\(10),
	datad => VCC,
	cin => \inst2|Add1~19\,
	combout => \inst2|Add1~20_combout\,
	cout => \inst2|Add1~21\);

-- Location: LCCOMB_X10_Y17_N0
\inst2|cuenta2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|cuenta2~5_combout\ = (\inst2|Add1~20_combout\ & !\inst2|Equal1~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Add1~20_combout\,
	datad => \inst2|Equal1~8_combout\,
	combout => \inst2|cuenta2~5_combout\);

-- Location: FF_X10_Y17_N1
\inst2|cuenta2[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|cuenta2~5_combout\,
	ena => \rst_clk~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|cuenta2\(10));

-- Location: LCCOMB_X10_Y17_N28
\inst2|Add1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add1~22_combout\ = (\inst2|cuenta2\(11) & (!\inst2|Add1~21\)) # (!\inst2|cuenta2\(11) & ((\inst2|Add1~21\) # (GND)))
-- \inst2|Add1~23\ = CARRY((!\inst2|Add1~21\) # (!\inst2|cuenta2\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|cuenta2\(11),
	datad => VCC,
	cin => \inst2|Add1~21\,
	combout => \inst2|Add1~22_combout\,
	cout => \inst2|Add1~23\);

-- Location: FF_X10_Y17_N29
\inst2|cuenta2[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|Add1~22_combout\,
	ena => \rst_clk~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|cuenta2\(11));

-- Location: LCCOMB_X10_Y17_N30
\inst2|Add1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add1~24_combout\ = (\inst2|cuenta2\(12) & (\inst2|Add1~23\ $ (GND))) # (!\inst2|cuenta2\(12) & (!\inst2|Add1~23\ & VCC))
-- \inst2|Add1~25\ = CARRY((\inst2|cuenta2\(12) & !\inst2|Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|cuenta2\(12),
	datad => VCC,
	cin => \inst2|Add1~23\,
	combout => \inst2|Add1~24_combout\,
	cout => \inst2|Add1~25\);

-- Location: LCCOMB_X11_Y16_N10
\inst2|cuenta2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|cuenta2~4_combout\ = (\inst2|Add1~24_combout\ & !\inst2|Equal1~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Add1~24_combout\,
	datad => \inst2|Equal1~8_combout\,
	combout => \inst2|cuenta2~4_combout\);

-- Location: FF_X11_Y16_N11
\inst2|cuenta2[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|cuenta2~4_combout\,
	ena => \rst_clk~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|cuenta2\(12));

-- Location: LCCOMB_X10_Y16_N0
\inst2|Add1~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add1~26_combout\ = (\inst2|cuenta2\(13) & (!\inst2|Add1~25\)) # (!\inst2|cuenta2\(13) & ((\inst2|Add1~25\) # (GND)))
-- \inst2|Add1~27\ = CARRY((!\inst2|Add1~25\) # (!\inst2|cuenta2\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|cuenta2\(13),
	datad => VCC,
	cin => \inst2|Add1~25\,
	combout => \inst2|Add1~26_combout\,
	cout => \inst2|Add1~27\);

-- Location: FF_X10_Y16_N1
\inst2|cuenta2[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|Add1~26_combout\,
	ena => \rst_clk~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|cuenta2\(13));

-- Location: LCCOMB_X10_Y16_N2
\inst2|Add1~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add1~28_combout\ = (\inst2|cuenta2\(14) & (\inst2|Add1~27\ $ (GND))) # (!\inst2|cuenta2\(14) & (!\inst2|Add1~27\ & VCC))
-- \inst2|Add1~29\ = CARRY((\inst2|cuenta2\(14) & !\inst2|Add1~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|cuenta2\(14),
	datad => VCC,
	cin => \inst2|Add1~27\,
	combout => \inst2|Add1~28_combout\,
	cout => \inst2|Add1~29\);

-- Location: FF_X10_Y16_N3
\inst2|cuenta2[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|Add1~28_combout\,
	ena => \rst_clk~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|cuenta2\(14));

-- Location: LCCOMB_X10_Y16_N4
\inst2|Add1~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add1~30_combout\ = (\inst2|cuenta2\(15) & (!\inst2|Add1~29\)) # (!\inst2|cuenta2\(15) & ((\inst2|Add1~29\) # (GND)))
-- \inst2|Add1~31\ = CARRY((!\inst2|Add1~29\) # (!\inst2|cuenta2\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|cuenta2\(15),
	datad => VCC,
	cin => \inst2|Add1~29\,
	combout => \inst2|Add1~30_combout\,
	cout => \inst2|Add1~31\);

-- Location: LCCOMB_X10_Y16_N28
\inst2|cuenta2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|cuenta2~3_combout\ = (\inst2|Add1~30_combout\ & !\inst2|Equal1~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Add1~30_combout\,
	datad => \inst2|Equal1~8_combout\,
	combout => \inst2|cuenta2~3_combout\);

-- Location: FF_X10_Y16_N29
\inst2|cuenta2[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|cuenta2~3_combout\,
	ena => \rst_clk~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|cuenta2\(15));

-- Location: LCCOMB_X10_Y16_N6
\inst2|Add1~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add1~32_combout\ = (\inst2|cuenta2\(16) & (\inst2|Add1~31\ $ (GND))) # (!\inst2|cuenta2\(16) & (!\inst2|Add1~31\ & VCC))
-- \inst2|Add1~33\ = CARRY((\inst2|cuenta2\(16) & !\inst2|Add1~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|cuenta2\(16),
	datad => VCC,
	cin => \inst2|Add1~31\,
	combout => \inst2|Add1~32_combout\,
	cout => \inst2|Add1~33\);

-- Location: FF_X10_Y16_N7
\inst2|cuenta2[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|Add1~32_combout\,
	ena => \rst_clk~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|cuenta2\(16));

-- Location: LCCOMB_X10_Y16_N8
\inst2|Add1~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add1~34_combout\ = (\inst2|cuenta2\(17) & (!\inst2|Add1~33\)) # (!\inst2|cuenta2\(17) & ((\inst2|Add1~33\) # (GND)))
-- \inst2|Add1~35\ = CARRY((!\inst2|Add1~33\) # (!\inst2|cuenta2\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|cuenta2\(17),
	datad => VCC,
	cin => \inst2|Add1~33\,
	combout => \inst2|Add1~34_combout\,
	cout => \inst2|Add1~35\);

-- Location: FF_X10_Y16_N9
\inst2|cuenta2[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|Add1~34_combout\,
	ena => \rst_clk~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|cuenta2\(17));

-- Location: LCCOMB_X10_Y16_N10
\inst2|Add1~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add1~36_combout\ = (\inst2|cuenta2\(18) & (\inst2|Add1~35\ $ (GND))) # (!\inst2|cuenta2\(18) & (!\inst2|Add1~35\ & VCC))
-- \inst2|Add1~37\ = CARRY((\inst2|cuenta2\(18) & !\inst2|Add1~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|cuenta2\(18),
	datad => VCC,
	cin => \inst2|Add1~35\,
	combout => \inst2|Add1~36_combout\,
	cout => \inst2|Add1~37\);

-- Location: FF_X10_Y16_N11
\inst2|cuenta2[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|Add1~36_combout\,
	ena => \rst_clk~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|cuenta2\(18));

-- Location: LCCOMB_X10_Y16_N12
\inst2|Add1~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add1~38_combout\ = (\inst2|cuenta2\(19) & (!\inst2|Add1~37\)) # (!\inst2|cuenta2\(19) & ((\inst2|Add1~37\) # (GND)))
-- \inst2|Add1~39\ = CARRY((!\inst2|Add1~37\) # (!\inst2|cuenta2\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|cuenta2\(19),
	datad => VCC,
	cin => \inst2|Add1~37\,
	combout => \inst2|Add1~38_combout\,
	cout => \inst2|Add1~39\);

-- Location: LCCOMB_X11_Y16_N2
\inst2|cuenta2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|cuenta2~2_combout\ = (!\inst2|Equal1~8_combout\ & \inst2|Add1~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Equal1~8_combout\,
	datad => \inst2|Add1~38_combout\,
	combout => \inst2|cuenta2~2_combout\);

-- Location: FF_X11_Y16_N3
\inst2|cuenta2[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|cuenta2~2_combout\,
	ena => \rst_clk~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|cuenta2\(19));

-- Location: LCCOMB_X10_Y16_N14
\inst2|Add1~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add1~40_combout\ = (\inst2|cuenta2\(20) & (\inst2|Add1~39\ $ (GND))) # (!\inst2|cuenta2\(20) & (!\inst2|Add1~39\ & VCC))
-- \inst2|Add1~41\ = CARRY((\inst2|cuenta2\(20) & !\inst2|Add1~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|cuenta2\(20),
	datad => VCC,
	cin => \inst2|Add1~39\,
	combout => \inst2|Add1~40_combout\,
	cout => \inst2|Add1~41\);

-- Location: LCCOMB_X11_Y16_N4
\inst2|cuenta2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|cuenta2~1_combout\ = (!\inst2|Equal1~8_combout\ & \inst2|Add1~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Equal1~8_combout\,
	datad => \inst2|Add1~40_combout\,
	combout => \inst2|cuenta2~1_combout\);

-- Location: FF_X11_Y16_N5
\inst2|cuenta2[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|cuenta2~1_combout\,
	ena => \rst_clk~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|cuenta2\(20));

-- Location: LCCOMB_X10_Y16_N16
\inst2|Add1~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add1~42_combout\ = (\inst2|cuenta2\(21) & (!\inst2|Add1~41\)) # (!\inst2|cuenta2\(21) & ((\inst2|Add1~41\) # (GND)))
-- \inst2|Add1~43\ = CARRY((!\inst2|Add1~41\) # (!\inst2|cuenta2\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|cuenta2\(21),
	datad => VCC,
	cin => \inst2|Add1~41\,
	combout => \inst2|Add1~42_combout\,
	cout => \inst2|Add1~43\);

-- Location: FF_X10_Y16_N17
\inst2|cuenta2[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|Add1~42_combout\,
	ena => \rst_clk~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|cuenta2\(21));

-- Location: LCCOMB_X10_Y16_N18
\inst2|Add1~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add1~44_combout\ = (\inst2|cuenta2\(22) & (\inst2|Add1~43\ $ (GND))) # (!\inst2|cuenta2\(22) & (!\inst2|Add1~43\ & VCC))
-- \inst2|Add1~45\ = CARRY((\inst2|cuenta2\(22) & !\inst2|Add1~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|cuenta2\(22),
	datad => VCC,
	cin => \inst2|Add1~43\,
	combout => \inst2|Add1~44_combout\,
	cout => \inst2|Add1~45\);

-- Location: FF_X10_Y16_N19
\inst2|cuenta2[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|Add1~44_combout\,
	ena => \rst_clk~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|cuenta2\(22));

-- Location: LCCOMB_X10_Y16_N20
\inst2|Add1~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add1~46_combout\ = (\inst2|cuenta2\(23) & (!\inst2|Add1~45\)) # (!\inst2|cuenta2\(23) & ((\inst2|Add1~45\) # (GND)))
-- \inst2|Add1~47\ = CARRY((!\inst2|Add1~45\) # (!\inst2|cuenta2\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|cuenta2\(23),
	datad => VCC,
	cin => \inst2|Add1~45\,
	combout => \inst2|Add1~46_combout\,
	cout => \inst2|Add1~47\);

-- Location: LCCOMB_X10_Y16_N30
\inst2|cuenta2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|cuenta2~0_combout\ = (!\inst2|Equal1~8_combout\ & \inst2|Add1~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Equal1~8_combout\,
	datad => \inst2|Add1~46_combout\,
	combout => \inst2|cuenta2~0_combout\);

-- Location: FF_X10_Y16_N31
\inst2|cuenta2[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|cuenta2~0_combout\,
	ena => \rst_clk~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|cuenta2\(23));

-- Location: LCCOMB_X10_Y16_N22
\inst2|Add1~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add1~48_combout\ = (\inst2|cuenta2\(24) & (\inst2|Add1~47\ $ (GND))) # (!\inst2|cuenta2\(24) & (!\inst2|Add1~47\ & VCC))
-- \inst2|Add1~49\ = CARRY((\inst2|cuenta2\(24) & !\inst2|Add1~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|cuenta2\(24),
	datad => VCC,
	cin => \inst2|Add1~47\,
	combout => \inst2|Add1~48_combout\,
	cout => \inst2|Add1~49\);

-- Location: FF_X10_Y16_N23
\inst2|cuenta2[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|Add1~48_combout\,
	ena => \rst_clk~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|cuenta2\(24));

-- Location: LCCOMB_X10_Y16_N24
\inst2|Add1~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add1~50_combout\ = \inst2|Add1~49\ $ (\inst2|cuenta2\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst2|cuenta2\(25),
	cin => \inst2|Add1~49\,
	combout => \inst2|Add1~50_combout\);

-- Location: FF_X10_Y16_N25
\inst2|cuenta2[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|Add1~50_combout\,
	ena => \rst_clk~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|cuenta2\(25));

-- Location: LCCOMB_X11_Y16_N26
\inst2|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal1~0_combout\ = (!\inst2|cuenta2\(22) & (!\inst2|cuenta2\(24) & (\inst2|cuenta2\(23) & !\inst2|cuenta2\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|cuenta2\(22),
	datab => \inst2|cuenta2\(24),
	datac => \inst2|cuenta2\(23),
	datad => \inst2|cuenta2\(25),
	combout => \inst2|Equal1~0_combout\);

-- Location: LCCOMB_X11_Y16_N28
\inst2|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal1~1_combout\ = (!\inst2|cuenta2\(21) & (\inst2|cuenta2\(19) & (\inst2|cuenta2\(20) & !\inst2|cuenta2\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|cuenta2\(21),
	datab => \inst2|cuenta2\(19),
	datac => \inst2|cuenta2\(20),
	datad => \inst2|cuenta2\(18),
	combout => \inst2|Equal1~1_combout\);

-- Location: LCCOMB_X10_Y16_N26
\inst2|Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal1~2_combout\ = (!\inst2|cuenta2\(16) & (!\inst2|cuenta2\(14) & (!\inst2|cuenta2\(17) & \inst2|cuenta2\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|cuenta2\(16),
	datab => \inst2|cuenta2\(14),
	datac => \inst2|cuenta2\(17),
	datad => \inst2|cuenta2\(15),
	combout => \inst2|Equal1~2_combout\);

-- Location: LCCOMB_X11_Y16_N12
\inst2|Equal1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal1~3_combout\ = (\inst2|cuenta2\(12) & (!\inst2|cuenta2\(13) & (!\inst2|cuenta2\(11) & \inst2|cuenta2\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|cuenta2\(12),
	datab => \inst2|cuenta2\(13),
	datac => \inst2|cuenta2\(11),
	datad => \inst2|cuenta2\(10),
	combout => \inst2|Equal1~3_combout\);

-- Location: LCCOMB_X11_Y16_N30
\inst2|Equal1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal1~4_combout\ = (\inst2|Equal1~0_combout\ & (\inst2|Equal1~1_combout\ & (\inst2|Equal1~2_combout\ & \inst2|Equal1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Equal1~0_combout\,
	datab => \inst2|Equal1~1_combout\,
	datac => \inst2|Equal1~2_combout\,
	datad => \inst2|Equal1~3_combout\,
	combout => \inst2|Equal1~4_combout\);

-- Location: LCCOMB_X10_Y17_N4
\inst2|Equal1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal1~5_combout\ = (\inst2|cuenta2\(9) & (\inst2|cuenta2\(6) & (!\inst2|cuenta2\(8) & !\inst2|cuenta2\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|cuenta2\(9),
	datab => \inst2|cuenta2\(6),
	datac => \inst2|cuenta2\(8),
	datad => \inst2|cuenta2\(7),
	combout => \inst2|Equal1~5_combout\);

-- Location: LCCOMB_X11_Y16_N18
\inst2|Equal1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal1~8_combout\ = (\inst2|Equal1~6_combout\ & (\inst2|Equal1~7_combout\ & (\inst2|Equal1~4_combout\ & \inst2|Equal1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Equal1~6_combout\,
	datab => \inst2|Equal1~7_combout\,
	datac => \inst2|Equal1~4_combout\,
	datad => \inst2|Equal1~5_combout\,
	combout => \inst2|Equal1~8_combout\);

-- Location: LCCOMB_X11_Y16_N24
\inst2|salida2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|salida2~0_combout\ = \inst2|salida2~q\ $ (((\rst_clk~input_o\ & \inst2|Equal1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst_clk~input_o\,
	datac => \inst2|salida2~q\,
	datad => \inst2|Equal1~8_combout\,
	combout => \inst2|salida2~0_combout\);

-- Location: FF_X11_Y16_N25
\inst2|salida2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|salida2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|salida2~q\);

-- Location: LCCOMB_X31_Y3_N0
\inst|n_state.state0~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|n_state.state0~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \inst|n_state.state0~feeder_combout\);

-- Location: FF_X31_Y3_N1
\inst|n_state.state0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|salida~clkctrl_outclk\,
	d => \inst|n_state.state0~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|n_state.state0~q\);

-- Location: LCCOMB_X31_Y3_N10
\inst|pr_state.state0~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|pr_state.state0~feeder_combout\ = \inst|n_state.state0~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|n_state.state0~q\,
	combout => \inst|pr_state.state0~feeder_combout\);

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

-- Location: FF_X31_Y3_N11
\inst|pr_state.state0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|salida~clkctrl_outclk\,
	d => \inst|pr_state.state0~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|pr_state.state0~q\);

-- Location: LCCOMB_X32_Y3_N4
\inst|n_state.state1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|n_state.state1~0_combout\ = !\inst|pr_state.state0~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|pr_state.state0~q\,
	combout => \inst|n_state.state1~0_combout\);

-- Location: FF_X32_Y3_N5
\inst|n_state.state1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|salida~clkctrl_outclk\,
	d => \inst|n_state.state1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|n_state.state1~q\);

-- Location: LCCOMB_X32_Y3_N10
\inst|pr_state.state1~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|pr_state.state1~feeder_combout\ = \inst|n_state.state1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|n_state.state1~q\,
	combout => \inst|pr_state.state1~feeder_combout\);

-- Location: FF_X32_Y3_N11
\inst|pr_state.state1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|salida~clkctrl_outclk\,
	d => \inst|pr_state.state1~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|pr_state.state1~q\);

-- Location: LCCOMB_X32_Y3_N18
\inst|n_state.state2~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|n_state.state2~feeder_combout\ = \inst|pr_state.state1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|pr_state.state1~q\,
	combout => \inst|n_state.state2~feeder_combout\);

-- Location: FF_X32_Y3_N19
\inst|n_state.state2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|salida~clkctrl_outclk\,
	d => \inst|n_state.state2~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|n_state.state2~q\);

-- Location: LCCOMB_X32_Y3_N20
\inst|pr_state.state2~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|pr_state.state2~feeder_combout\ = \inst|n_state.state2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|n_state.state2~q\,
	combout => \inst|pr_state.state2~feeder_combout\);

-- Location: FF_X32_Y3_N21
\inst|pr_state.state2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|salida~clkctrl_outclk\,
	d => \inst|pr_state.state2~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|pr_state.state2~q\);

-- Location: LCCOMB_X32_Y3_N2
\inst|n_state.state3~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|n_state.state3~feeder_combout\ = \inst|pr_state.state2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|pr_state.state2~q\,
	combout => \inst|n_state.state3~feeder_combout\);

-- Location: FF_X32_Y3_N3
\inst|n_state.state3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|salida~clkctrl_outclk\,
	d => \inst|n_state.state3~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|n_state.state3~q\);

-- Location: LCCOMB_X32_Y3_N24
\inst|pr_state.state3~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|pr_state.state3~feeder_combout\ = \inst|n_state.state3~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|n_state.state3~q\,
	combout => \inst|pr_state.state3~feeder_combout\);

-- Location: FF_X32_Y3_N25
\inst|pr_state.state3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|salida~clkctrl_outclk\,
	d => \inst|pr_state.state3~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|pr_state.state3~q\);

-- Location: LCCOMB_X31_Y3_N4
\inst|n_state.state4~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|n_state.state4~feeder_combout\ = \inst|pr_state.state3~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|pr_state.state3~q\,
	combout => \inst|n_state.state4~feeder_combout\);

-- Location: FF_X31_Y3_N5
\inst|n_state.state4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|salida~clkctrl_outclk\,
	d => \inst|n_state.state4~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|n_state.state4~q\);

-- Location: LCCOMB_X31_Y3_N14
\inst|pr_state.state4~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|pr_state.state4~feeder_combout\ = \inst|n_state.state4~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|n_state.state4~q\,
	combout => \inst|pr_state.state4~feeder_combout\);

-- Location: FF_X31_Y3_N15
\inst|pr_state.state4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|salida~clkctrl_outclk\,
	d => \inst|pr_state.state4~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|pr_state.state4~q\);

-- Location: LCCOMB_X31_Y3_N8
\inst|n_state.state5~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|n_state.state5~feeder_combout\ = \inst|pr_state.state4~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|pr_state.state4~q\,
	combout => \inst|n_state.state5~feeder_combout\);

-- Location: FF_X31_Y3_N9
\inst|n_state.state5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|salida~clkctrl_outclk\,
	d => \inst|n_state.state5~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|n_state.state5~q\);

-- Location: LCCOMB_X31_Y3_N28
\inst|pr_state.state5~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|pr_state.state5~feeder_combout\ = \inst|n_state.state5~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|n_state.state5~q\,
	combout => \inst|pr_state.state5~feeder_combout\);

-- Location: FF_X31_Y3_N29
\inst|pr_state.state5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|salida~clkctrl_outclk\,
	d => \inst|pr_state.state5~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|pr_state.state5~q\);

-- Location: LCCOMB_X31_Y3_N18
\inst|n_state.state6~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|n_state.state6~feeder_combout\ = \inst|pr_state.state5~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|pr_state.state5~q\,
	combout => \inst|n_state.state6~feeder_combout\);

-- Location: FF_X31_Y3_N19
\inst|n_state.state6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|salida~clkctrl_outclk\,
	d => \inst|n_state.state6~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|n_state.state6~q\);

-- Location: LCCOMB_X31_Y3_N20
\inst|pr_state.state6~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|pr_state.state6~feeder_combout\ = \inst|n_state.state6~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|n_state.state6~q\,
	combout => \inst|pr_state.state6~feeder_combout\);

-- Location: FF_X31_Y3_N21
\inst|pr_state.state6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|salida~clkctrl_outclk\,
	d => \inst|pr_state.state6~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|pr_state.state6~q\);

-- Location: LCCOMB_X31_Y3_N2
\inst|n_state.state7~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|n_state.state7~feeder_combout\ = \inst|pr_state.state6~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|pr_state.state6~q\,
	combout => \inst|n_state.state7~feeder_combout\);

-- Location: FF_X31_Y3_N3
\inst|n_state.state7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|salida~clkctrl_outclk\,
	d => \inst|n_state.state7~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|n_state.state7~q\);

-- Location: LCCOMB_X31_Y3_N16
\inst|pr_state.state7~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|pr_state.state7~feeder_combout\ = \inst|n_state.state7~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|n_state.state7~q\,
	combout => \inst|pr_state.state7~feeder_combout\);

-- Location: FF_X31_Y3_N17
\inst|pr_state.state7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|salida~clkctrl_outclk\,
	d => \inst|pr_state.state7~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|pr_state.state7~q\);

-- Location: LCCOMB_X31_Y3_N6
\inst|n_state.state8~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|n_state.state8~feeder_combout\ = \inst|pr_state.state7~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|pr_state.state7~q\,
	combout => \inst|n_state.state8~feeder_combout\);

-- Location: FF_X31_Y3_N7
\inst|n_state.state8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|salida~clkctrl_outclk\,
	d => \inst|n_state.state8~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|n_state.state8~q\);

-- Location: LCCOMB_X31_Y3_N12
\inst|pr_state.state8~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|pr_state.state8~feeder_combout\ = \inst|n_state.state8~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|n_state.state8~q\,
	combout => \inst|pr_state.state8~feeder_combout\);

-- Location: FF_X31_Y3_N13
\inst|pr_state.state8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|salida~clkctrl_outclk\,
	d => \inst|pr_state.state8~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|pr_state.state8~q\);

-- Location: LCCOMB_X32_Y3_N14
\inst|n_state.state9~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|n_state.state9~feeder_combout\ = \inst|pr_state.state8~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|pr_state.state8~q\,
	combout => \inst|n_state.state9~feeder_combout\);

-- Location: FF_X32_Y3_N15
\inst|n_state.state9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|salida~clkctrl_outclk\,
	d => \inst|n_state.state9~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|n_state.state9~q\);

-- Location: LCCOMB_X32_Y3_N8
\inst|pr_state.state9~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|pr_state.state9~feeder_combout\ = \inst|n_state.state9~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|n_state.state9~q\,
	combout => \inst|pr_state.state9~feeder_combout\);

-- Location: FF_X32_Y3_N9
\inst|pr_state.state9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|salida~clkctrl_outclk\,
	d => \inst|pr_state.state9~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|pr_state.state9~q\);

-- Location: LCCOMB_X32_Y3_N26
\inst|n_state.state10~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|n_state.state10~feeder_combout\ = \inst|pr_state.state9~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|pr_state.state9~q\,
	combout => \inst|n_state.state10~feeder_combout\);

-- Location: FF_X32_Y3_N27
\inst|n_state.state10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|salida~clkctrl_outclk\,
	d => \inst|n_state.state10~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|n_state.state10~q\);

-- Location: LCCOMB_X32_Y3_N0
\inst|pr_state.state10~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|pr_state.state10~feeder_combout\ = \inst|n_state.state10~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|n_state.state10~q\,
	combout => \inst|pr_state.state10~feeder_combout\);

-- Location: FF_X32_Y3_N1
\inst|pr_state.state10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|salida~clkctrl_outclk\,
	d => \inst|pr_state.state10~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|pr_state.state10~q\);

-- Location: LCCOMB_X32_Y3_N12
\inst|WideOr0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|WideOr0~1_combout\ = (\inst|pr_state.state10~q\) # (\inst|pr_state.state11~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|pr_state.state10~q\,
	datac => \inst|pr_state.state11~q\,
	combout => \inst|WideOr0~1_combout\);

-- Location: FF_X32_Y3_N13
\inst|n_state.state11\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|salida~clkctrl_outclk\,
	d => \inst|WideOr0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|n_state.state11~q\);

-- Location: LCCOMB_X32_Y3_N30
\inst|pr_state.state11~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|pr_state.state11~feeder_combout\ = \inst|n_state.state11~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|n_state.state11~q\,
	combout => \inst|pr_state.state11~feeder_combout\);

-- Location: FF_X32_Y3_N31
\inst|pr_state.state11\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|salida~clkctrl_outclk\,
	d => \inst|pr_state.state11~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|pr_state.state11~q\);

-- Location: LCCOMB_X32_Y3_N22
\inst|WideOr0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|WideOr0~0_combout\ = (\inst|pr_state.state11~q\) # ((\inst|pr_state.state10~q\) # ((\inst|pr_state.state8~q\) # (\inst|pr_state.state9~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pr_state.state11~q\,
	datab => \inst|pr_state.state10~q\,
	datac => \inst|pr_state.state8~q\,
	datad => \inst|pr_state.state9~q\,
	combout => \inst|WideOr0~0_combout\);

-- Location: FF_X32_Y3_N23
\inst|aux_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|salida~clkctrl_outclk\,
	d => \inst|WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|aux_out\(3));

-- Location: LCCOMB_X32_Y3_N16
\inst|s[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s[3]~feeder_combout\ = \inst|aux_out\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|aux_out\(3),
	combout => \inst|s[3]~feeder_combout\);

-- Location: FF_X32_Y3_N17
\inst|s[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|salida~clkctrl_outclk\,
	d => \inst|s[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s\(3));

-- Location: LCCOMB_X31_Y3_N26
\inst|WideOr1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|WideOr1~0_combout\ = (\inst|pr_state.state7~q\) # ((\inst|pr_state.state6~q\) # ((\inst|pr_state.state5~q\) # (\inst|pr_state.state4~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pr_state.state7~q\,
	datab => \inst|pr_state.state6~q\,
	datac => \inst|pr_state.state5~q\,
	datad => \inst|pr_state.state4~q\,
	combout => \inst|WideOr1~0_combout\);

-- Location: FF_X31_Y3_N27
\inst|aux_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|salida~clkctrl_outclk\,
	d => \inst|WideOr1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|aux_out\(2));

-- Location: FF_X31_Y3_N25
\inst|s[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|salida~clkctrl_outclk\,
	asdata => \inst|aux_out\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s\(2));

-- Location: LCCOMB_X31_Y3_N24
\inst|WideOr2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|WideOr2~0_combout\ = (!\inst|pr_state.state8~q\ & (!\inst|pr_state.state4~q\ & \inst|pr_state.state0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pr_state.state8~q\,
	datab => \inst|pr_state.state4~q\,
	datad => \inst|pr_state.state0~q\,
	combout => \inst|WideOr2~0_combout\);

-- Location: LCCOMB_X31_Y3_N22
\inst|WideOr2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|WideOr2~combout\ = (!\inst|pr_state.state5~q\ & (!\inst|pr_state.state9~q\ & (!\inst|pr_state.state1~q\ & \inst|WideOr2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pr_state.state5~q\,
	datab => \inst|pr_state.state9~q\,
	datac => \inst|pr_state.state1~q\,
	datad => \inst|WideOr2~0_combout\,
	combout => \inst|WideOr2~combout\);

-- Location: FF_X31_Y3_N23
\inst|aux_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|salida~clkctrl_outclk\,
	d => \inst|WideOr2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|aux_out\(1));

-- Location: LCCOMB_X32_Y3_N6
\inst|s[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s[1]~feeder_combout\ = \inst|aux_out\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|aux_out\(1),
	combout => \inst|s[1]~feeder_combout\);

-- Location: FF_X32_Y3_N7
\inst|s[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|salida~clkctrl_outclk\,
	d => \inst|s[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s\(1));

-- Location: LCCOMB_X31_Y3_N30
\inst|WideOr3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|WideOr3~combout\ = (!\inst|pr_state.state6~q\ & (!\inst|pr_state.state10~q\ & (!\inst|pr_state.state2~q\ & \inst|WideOr2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pr_state.state6~q\,
	datab => \inst|pr_state.state10~q\,
	datac => \inst|pr_state.state2~q\,
	datad => \inst|WideOr2~0_combout\,
	combout => \inst|WideOr3~combout\);

-- Location: FF_X31_Y3_N31
\inst|aux_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|salida~clkctrl_outclk\,
	d => \inst|WideOr3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|aux_out\(0));

-- Location: LCCOMB_X32_Y3_N28
\inst|s[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s[0]~feeder_combout\ = \inst|aux_out\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|aux_out\(0),
	combout => \inst|s[0]~feeder_combout\);

-- Location: FF_X32_Y3_N29
\inst|s[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|salida~clkctrl_outclk\,
	d => \inst|s[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s\(0));

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

ww_sal_prueb(3) <= \sal_prueb[3]~output_o\;

ww_sal_prueb(2) <= \sal_prueb[2]~output_o\;

ww_sal_prueb(1) <= \sal_prueb[1]~output_o\;

ww_sal_prueb(0) <= \sal_prueb[0]~output_o\;
END structure;


