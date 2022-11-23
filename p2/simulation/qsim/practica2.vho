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

-- DATE "11/22/2022 22:37:34"

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
	rst_clk : IN std_logic;
	resultado : OUT std_logic_vector(9 DOWNTO 0);
	sal_prueb : OUT std_logic_vector(15 DOWNTO 0)
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
-- resultado[9]	=>  Location: PIN_65,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resultado[8]	=>  Location: PIN_77,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resultado[7]	=>  Location: PIN_58,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resultado[6]	=>  Location: PIN_72,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resultado[5]	=>  Location: PIN_64,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resultado[4]	=>  Location: PIN_60,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resultado[3]	=>  Location: PIN_80,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resultado[2]	=>  Location: PIN_75,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resultado[1]	=>  Location: PIN_76,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resultado[0]	=>  Location: PIN_67,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sal_prueb[15]	=>  Location: PIN_141,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sal_prueb[14]	=>  Location: PIN_135,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sal_prueb[13]	=>  Location: PIN_110,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sal_prueb[12]	=>  Location: PIN_50,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sal_prueb[11]	=>  Location: PIN_55,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sal_prueb[10]	=>  Location: PIN_69,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sal_prueb[9]	=>  Location: PIN_66,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sal_prueb[8]	=>  Location: PIN_59,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sal_prueb[7]	=>  Location: PIN_54,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sal_prueb[6]	=>  Location: PIN_34,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sal_prueb[5]	=>  Location: PIN_84,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sal_prueb[4]	=>  Location: PIN_53,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sal_prueb[3]	=>  Location: PIN_83,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sal_prueb[2]	=>  Location: PIN_73,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sal_prueb[1]	=>  Location: PIN_70,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sal_prueb[0]	=>  Location: PIN_68,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst_clk	=>  Location: PIN_104,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
SIGNAL ww_rst_clk : std_logic;
SIGNAL ww_resultado : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_sal_prueb : std_logic_vector(15 DOWNTO 0);
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
SIGNAL \resultado[9]~output_o\ : std_logic;
SIGNAL \resultado[8]~output_o\ : std_logic;
SIGNAL \resultado[7]~output_o\ : std_logic;
SIGNAL \resultado[6]~output_o\ : std_logic;
SIGNAL \resultado[5]~output_o\ : std_logic;
SIGNAL \resultado[4]~output_o\ : std_logic;
SIGNAL \resultado[3]~output_o\ : std_logic;
SIGNAL \resultado[2]~output_o\ : std_logic;
SIGNAL \resultado[1]~output_o\ : std_logic;
SIGNAL \resultado[0]~output_o\ : std_logic;
SIGNAL \sal_prueb[15]~output_o\ : std_logic;
SIGNAL \sal_prueb[14]~output_o\ : std_logic;
SIGNAL \sal_prueb[13]~output_o\ : std_logic;
SIGNAL \sal_prueb[12]~output_o\ : std_logic;
SIGNAL \sal_prueb[11]~output_o\ : std_logic;
SIGNAL \sal_prueb[10]~output_o\ : std_logic;
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
SIGNAL \inst6|contador[0]~1_combout\ : std_logic;
SIGNAL \inst6|contador[1]~0_combout\ : std_logic;
SIGNAL \inst6|Mux3~0_combout\ : std_logic;
SIGNAL \inst6|Mux1~0_combout\ : std_logic;
SIGNAL \inst6|Mux1~1_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \inst|ecuacion1|pr_state.state0~0_combout\ : std_logic;
SIGNAL \inst|ecuacion1|pr_state.state0~q\ : std_logic;
SIGNAL \inst|ecuacion1|pr_state~14_combout\ : std_logic;
SIGNAL \inst|ecuacion1|pr_state.state1~q\ : std_logic;
SIGNAL \inst|ecuacion1|pr_state~18_combout\ : std_logic;
SIGNAL \inst|ecuacion1|pr_state.state2~q\ : std_logic;
SIGNAL \inst|ecuacion1|pr_state~15_combout\ : std_logic;
SIGNAL \inst|ecuacion1|pr_state.state3~feeder_combout\ : std_logic;
SIGNAL \inst|ecuacion1|pr_state.state3~q\ : std_logic;
SIGNAL \inst|ecuacion1|pr_state~17_combout\ : std_logic;
SIGNAL \inst|ecuacion1|pr_state.state4~q\ : std_logic;
SIGNAL \inst|ecuacion1|pr_state~20_combout\ : std_logic;
SIGNAL \inst|ecuacion1|pr_state.state5~feeder_combout\ : std_logic;
SIGNAL \inst|ecuacion1|pr_state.state5~q\ : std_logic;
SIGNAL \inst|ecuacion1|pr_state~16_combout\ : std_logic;
SIGNAL \inst|ecuacion1|pr_state.state6~q\ : std_logic;
SIGNAL \inst|ecuacion1|pr_state~19_combout\ : std_logic;
SIGNAL \inst|ecuacion1|pr_state.state7~feeder_combout\ : std_logic;
SIGNAL \inst|ecuacion1|pr_state.state7~q\ : std_logic;
SIGNAL \inst|ecuacion1|WideOr16~0_combout\ : std_logic;
SIGNAL \inst|ecuacion1|Selector37~0_combout\ : std_logic;
SIGNAL \inst|ecuacion1|pr_state~21_combout\ : std_logic;
SIGNAL \inst|ecuacion1|pr_state.state8~feeder_combout\ : std_logic;
SIGNAL \inst|ecuacion1|pr_state.state8~q\ : std_logic;
SIGNAL \inst|ecuacion1|Selector12~0_combout\ : std_logic;
SIGNAL \inst|ecuacion1|pr_state.state9~q\ : std_logic;
SIGNAL \inst|ecuacion1|Selector37~1_combout\ : std_logic;
SIGNAL \inst|ecuacion1|Selector35~0_combout\ : std_logic;
SIGNAL \inst|ecuacion1|Selector34~0_combout\ : std_logic;
SIGNAL \inst|ecuacion1|Selector34~1_combout\ : std_logic;
SIGNAL \inst|ecuacion1|Selector36~0_combout\ : std_logic;
SIGNAL \inst|ecuacion1|Selector36~1_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|Mux3~8_combout\ : std_logic;
SIGNAL \inst|ecuacion1|registro[3][5]~feeder_combout\ : std_logic;
SIGNAL \inst|ecuacion1|registro[3][5]~q\ : std_logic;
SIGNAL \inst|ecuacion1|registro[0][5]~q\ : std_logic;
SIGNAL \inst|ecuacion1|Selector18~0_combout\ : std_logic;
SIGNAL \inst|ecuacion1|MREG[10]~0_combout\ : std_logic;
SIGNAL \inst|ecuacion1|Selector1~0_combout\ : std_logic;
SIGNAL \inst|ecuacion1|Selector0~0_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|Mux1~4_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|Mux11~0_combout\ : std_logic;
SIGNAL \inst|ecuacion1|registro[1][0]~q\ : std_logic;
SIGNAL \inst|ecuacion1|Selector3~0_combout\ : std_logic;
SIGNAL \inst|ecuacion1|Selector33~0_combout\ : std_logic;
SIGNAL \inst|ecuacion1|MREG[4]~feeder_combout\ : std_logic;
SIGNAL \inst|ecuacion1|registro[2][0]~q\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|Mux10~0_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_logica|salida~27_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_logica|salida~28_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|Mux3~15_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_logica|aux[0]~31_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_logica|salida~29_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|Mux9~0_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|Mux0~0_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~8_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|Mux3~7_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|Mux3~12_combout\ : std_logic;
SIGNAL \inst|ecuacion1|registro[2][6]~q\ : std_logic;
SIGNAL \inst|ecuacion1|registro[1][6]~q\ : std_logic;
SIGNAL \inst|ecuacion1|Selector27~0_combout\ : std_logic;
SIGNAL \inst|ecuacion1|registro[2][5]~feeder_combout\ : std_logic;
SIGNAL \inst|ecuacion1|registro[2][5]~q\ : std_logic;
SIGNAL \inst|ecuacion1|registro[1][5]~q\ : std_logic;
SIGNAL \inst|ecuacion1|Selector28~0_combout\ : std_logic;
SIGNAL \inst|ecuacion1|registro[1][4]~q\ : std_logic;
SIGNAL \inst|ecuacion1|Selector29~0_combout\ : std_logic;
SIGNAL \inst|ecuacion1|MREG[8]~feeder_combout\ : std_logic;
SIGNAL \inst|ecuacion1|registro[2][4]~q\ : std_logic;
SIGNAL \inst|ecuacion1|registro[1][3]~q\ : std_logic;
SIGNAL \inst|ecuacion1|Selector30~0_combout\ : std_logic;
SIGNAL \inst|ecuacion1|MREG[7]~feeder_combout\ : std_logic;
SIGNAL \inst|ecuacion1|registro[2][3]~q\ : std_logic;
SIGNAL \inst|ecuacion1|registro[0][2]~q\ : std_logic;
SIGNAL \inst|ecuacion1|Selector21~0_combout\ : std_logic;
SIGNAL \inst|ecuacion1|MREG[16]~feeder_combout\ : std_logic;
SIGNAL \inst|ecuacion1|registro[3][2]~q\ : std_logic;
SIGNAL \inst|ecuacion1|registro[3][1]~feeder_combout\ : std_logic;
SIGNAL \inst|ecuacion1|registro[3][1]~q\ : std_logic;
SIGNAL \inst|ecuacion1|registro[0][1]~q\ : std_logic;
SIGNAL \inst|ecuacion1|Selector22~0_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi1|s1|Suma~combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|resta|s1|Suma~combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~7_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~10_cout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~11_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|Mux8~3_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_logica|aux[1]~13_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_logica|aux[0]~32_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_logica|salida~25_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_logica|salida~26_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|Mux6~14_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi1|s1|Cout~0_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi1|s2|Cout~0_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi1|s3|Cout~0_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi1|s4|Cout~0_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi1|s5|Cout~0_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi1|s4|Suma~combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi2|s2|Cout~0_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi1|s3|Suma~combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi2|s3|Cout~0_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi2|s4|Cout~0_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi1|s5|Suma~combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi2|s5|Cout~0_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi2|s6|Cout~0_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi2|s6|Suma~combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi2|s5|Suma~combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi2|s4|Suma~combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi2|s3|Suma~0_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi3|s3|Cout~0_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi3|s4|Cout~0_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi3|s5|Cout~0_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi3|s6|Cout~0_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi3|s7|Suma~0_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi3|s6|Suma~combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|s4|Cout~0_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi3|s5|Suma~combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|s5|Cout~0_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|s6|Cout~0_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|s7|Cout~0_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi3|s7|Cout~0_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|s8|Cout~0_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|Mux3~14_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|Mux6~10_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|Mux8~0_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan0~1_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan0~0_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~1\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~3\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~5\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~7\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~9\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~10_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~15_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~11\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~12_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~14_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~8_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~16_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~6_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~17_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~4_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~18_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~2_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~19_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~0_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan0~2_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~20_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan1~1_cout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan1~3_cout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan1~5_cout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan1~7_cout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan1~9_cout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan1~11_cout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan1~13_cout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan1~14_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~1\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~3\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~5\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~7\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~9\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~11\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~12_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~14_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~10_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~15_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~8_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~16_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~6_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~17_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~4_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~18_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~2_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~19_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~0_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~20_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan2~1_cout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan2~3_cout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan2~5_cout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan2~7_cout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan2~9_cout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan2~11_cout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan2~13_cout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan2~14_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|suma|s1|Suma~combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|Mux8~1_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|Mux8~2_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|Mux8~4_combout\ : std_logic;
SIGNAL \inst|ecuacion1|registro[1][1]~q\ : std_logic;
SIGNAL \inst|ecuacion1|Selector32~0_combout\ : std_logic;
SIGNAL \inst|ecuacion1|MREG[5]~feeder_combout\ : std_logic;
SIGNAL \inst|ecuacion1|registro[2][1]~q\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_logica|salida~0_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi2|s2|Suma~combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|suma|s1|Cout~0_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|Mux7~1_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|Mux7~2_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|resta|s1|Cout~0_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|resta|s2|Suma~combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|Mux7~3_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|Mux7~4_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_logica|salida~22_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_logica|salida~23_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_logica|aux[1]~14\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_logica|aux[2]~15_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_logica|salida~24_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|Mux7~0_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~6_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~12\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~13_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|Mux7~5_combout\ : std_logic;
SIGNAL \inst|ecuacion1|registro[1][2]~feeder_combout\ : std_logic;
SIGNAL \inst|ecuacion1|registro[1][2]~q\ : std_logic;
SIGNAL \inst|ecuacion1|Selector31~0_combout\ : std_logic;
SIGNAL \inst|ecuacion1|registro[2][2]~q\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|resta|s2|Cout~0_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|resta|s3|Cout~0_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|resta|s4|Cout~0_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|resta|s5|Cout~0_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|resta|s6|Suma~combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|Mux3~4_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|suma|s2|Cout~0_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|suma|s3|Cout~0_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|suma|s4|Cout~0_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|suma|s5|Cout~0_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|suma|s6|Suma~combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|s6|Suma~combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~2_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|resta|s5|Suma~combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|s5|Suma~combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~3_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|s4|Suma~combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|resta|s4|Suma~combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~4_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|resta|s3|Suma~combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~5_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~14\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~16\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~18\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~20\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~21_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|Mux3~6_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|Mux3~5_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|Mux3~9_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|Mux3~10_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_logica|salida~11_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_logica|salida~10_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_logica|aux[5]~22\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_logica|aux[6]~23_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_logica|salida~12_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|Mux3~11_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|Mux3~13_combout\ : std_logic;
SIGNAL \inst|ecuacion1|registro[3][6]~q\ : std_logic;
SIGNAL \inst|ecuacion1|registro[0][6]~q\ : std_logic;
SIGNAL \inst|ecuacion1|Selector17~0_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|barrel_shifters|aux[7]~feeder_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|Mux2~3_combout\ : std_logic;
SIGNAL \inst|ecuacion1|registro[3][7]~feeder_combout\ : std_logic;
SIGNAL \inst|ecuacion1|registro[3][7]~q\ : std_logic;
SIGNAL \inst|ecuacion1|registro[0][7]~q\ : std_logic;
SIGNAL \inst|ecuacion1|Selector16~0_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_logica|salida~8_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_logica|aux[6]~24\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_logica|aux[7]~25_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_logica|salida~7_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_logica|salida~9_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|Mux2~2_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|suma|s6|Cout~0_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|suma|s7|Suma~combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|resta|s6|Cout~0_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|resta|s7|Suma~combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|s7|Suma~combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~1_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~22\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~23_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|Mux2~0_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|Mux2~1_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|Mux2~4_combout\ : std_logic;
SIGNAL \inst|ecuacion1|registro[2][7]~q\ : std_logic;
SIGNAL \inst|ecuacion1|registro[1][7]~q\ : std_logic;
SIGNAL \inst|ecuacion1|Selector26~0_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|resta|s7|Cout~0_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|Mux9~4_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|Mux9~5_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|Mux9~6_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~1\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~3\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~5\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~7\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~9\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~11\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~12_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~14_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~10_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~15_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~8_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~16_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~6_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~17_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~4_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~18_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~2_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~19_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~0_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~20_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan3~1_cout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan3~3_cout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan3~5_cout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan3~7_cout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan3~9_cout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan3~11_cout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan3~13_cout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan3~14_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|Mux9~7_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|Mux9~1_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|Mux9~8_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|Mux9~5_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|Mux9~2_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|Mux9~3_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|Mux9~4_combout\ : std_logic;
SIGNAL \inst|ecuacion1|registro[0][0]~q\ : std_logic;
SIGNAL \inst|ecuacion1|Selector23~0_combout\ : std_logic;
SIGNAL \inst|ecuacion1|MREG[14]~feeder_combout\ : std_logic;
SIGNAL \inst|ecuacion1|registro[3][0]~feeder_combout\ : std_logic;
SIGNAL \inst|ecuacion1|registro[3][0]~q\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi3|s3|Suma~combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|suma|s3|Suma~combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|Mux6~8_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|Mux6~9_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~15_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_logica|salida~19_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_logica|aux[2]~16\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_logica|aux[3]~17_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_logica|salida~20_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_logica|salida~21_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|Mux6~11_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|Mux6~12_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|Mux6~13_combout\ : std_logic;
SIGNAL \inst|ecuacion1|registro[3][3]~feeder_combout\ : std_logic;
SIGNAL \inst|ecuacion1|registro[3][3]~q\ : std_logic;
SIGNAL \inst|ecuacion1|registro[0][3]~q\ : std_logic;
SIGNAL \inst|ecuacion1|Selector20~0_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|barrel_shifters|aux[4]~feeder_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|Mux5~3_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_logica|salida~16_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_logica|aux[3]~18\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_logica|aux[4]~19_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_logica|salida~17_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_logica|salida~18_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|Mux5~2_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|suma|s4|Suma~combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~17_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|Mux5~0_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|Mux5~1_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|Mux5~4_combout\ : std_logic;
SIGNAL \inst|ecuacion1|registro[3][4]~feeder_combout\ : std_logic;
SIGNAL \inst|ecuacion1|registro[3][4]~q\ : std_logic;
SIGNAL \inst|ecuacion1|registro[0][4]~feeder_combout\ : std_logic;
SIGNAL \inst|ecuacion1|registro[0][4]~q\ : std_logic;
SIGNAL \inst|ecuacion1|Selector19~0_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_logica|aux[4]~20\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_logica|aux[5]~21_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_logica|salida~14_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_logica|salida~13_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_logica|salida~15_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|Mux4~2_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|Mux4~3_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|suma|s5|Suma~combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~19_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|Mux4~0_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|Mux4~1_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|Mux4~4_combout\ : std_logic;
SIGNAL \inst|ecuacion1|registro[1][8]~feeder_combout\ : std_logic;
SIGNAL \inst|ecuacion1|registro[1][8]~q\ : std_logic;
SIGNAL \inst|ecuacion1|registro[2][8]~feeder_combout\ : std_logic;
SIGNAL \inst|ecuacion1|registro[2][8]~q\ : std_logic;
SIGNAL \inst|ecuacion1|Selector25~0_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_logica|salida~4_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_logica|salida~5_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_logica|aux[7]~26\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_logica|aux[8]~27_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_logica|salida~6_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|Mux1~1_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|s8|Suma~0_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~0_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~24\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~25_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|Mux1~2_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|Mux1~0_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|Mux1~3_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|Mux1~3_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|Mux1~1_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|Mux1~0_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|Mux1~2_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|Mux1~5_combout\ : std_logic;
SIGNAL \inst|ecuacion1|registro[3][8]~q\ : std_logic;
SIGNAL \inst|ecuacion1|registro[0][8]~q\ : std_logic;
SIGNAL \inst|ecuacion1|Selector15~0_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|Mux0~1_combout\ : std_logic;
SIGNAL \inst|ecuacion1|registro[2][9]~0_combout\ : std_logic;
SIGNAL \inst|ecuacion1|registro[2][9]~q\ : std_logic;
SIGNAL \inst|ecuacion1|registro[1][9]~1_combout\ : std_logic;
SIGNAL \inst|ecuacion1|registro[1][9]~q\ : std_logic;
SIGNAL \inst|ecuacion1|Selector24~0_combout\ : std_logic;
SIGNAL \inst|ecuacion1|registro[3][9]~2_combout\ : std_logic;
SIGNAL \inst|ecuacion1|registro[3][9]~q\ : std_logic;
SIGNAL \inst|ecuacion1|registro[0][9]~3_combout\ : std_logic;
SIGNAL \inst|ecuacion1|registro[0][9]~q\ : std_logic;
SIGNAL \inst|ecuacion1|Selector14~0_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_logica|salida~1_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_logica|aux[8]~28\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_logica|aux[9]~29_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_logica|salida~2_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|unidad_logica|salida~3_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|Mux0~2_combout\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|Mux0~3_combout\ : std_logic;
SIGNAL \inst|conv1|digitos~3_combout\ : std_logic;
SIGNAL \inst|conv1|digitos~2_combout\ : std_logic;
SIGNAL \inst|conv1|digitos~1_combout\ : std_logic;
SIGNAL \inst|conv1|digitos~7_combout\ : std_logic;
SIGNAL \inst|conv1|digitos~6_combout\ : std_logic;
SIGNAL \inst|conv1|digitos~8_combout\ : std_logic;
SIGNAL \inst|conv1|digitos~15_combout\ : std_logic;
SIGNAL \inst|conv1|digitos~14_combout\ : std_logic;
SIGNAL \inst|conv1|digitos~16_combout\ : std_logic;
SIGNAL \inst|conv1|digitos~27_combout\ : std_logic;
SIGNAL \inst|conv1|digitos~28_combout\ : std_logic;
SIGNAL \inst|conv1|digitos~26_combout\ : std_logic;
SIGNAL \inst|conv1|digitos~34_combout\ : std_logic;
SIGNAL \inst|conv1|digitos~36_combout\ : std_logic;
SIGNAL \inst|conv1|digitos~35_combout\ : std_logic;
SIGNAL \inst|conv1|digitos~39_combout\ : std_logic;
SIGNAL \inst|conv1|digitos~0_combout\ : std_logic;
SIGNAL \inst|conv1|digitos~5_combout\ : std_logic;
SIGNAL \inst|conv1|digitos~4_combout\ : std_logic;
SIGNAL \inst|conv1|digitos~9_combout\ : std_logic;
SIGNAL \inst|conv1|digitos~10_combout\ : std_logic;
SIGNAL \inst|conv1|LessThan3~0_combout\ : std_logic;
SIGNAL \inst|conv1|digitos~13_combout\ : std_logic;
SIGNAL \inst|conv1|digitos~12_combout\ : std_logic;
SIGNAL \inst|conv1|digitos~11_combout\ : std_logic;
SIGNAL \inst|conv1|digitos~17_combout\ : std_logic;
SIGNAL \inst|conv1|digitos~18_combout\ : std_logic;
SIGNAL \inst|conv1|digitos~21_combout\ : std_logic;
SIGNAL \inst6|Mux5~2_combout\ : std_logic;
SIGNAL \inst|conv1|digitos~23_combout\ : std_logic;
SIGNAL \inst|conv1|digitos~25_combout\ : std_logic;
SIGNAL \inst|conv1|digitos~29_combout\ : std_logic;
SIGNAL \inst|conv1|digitos~24_combout\ : std_logic;
SIGNAL \inst|conv1|digitos~32_combout\ : std_logic;
SIGNAL \inst6|Mux5~3_combout\ : std_logic;
SIGNAL \inst|conv1|digitos~40_combout\ : std_logic;
SIGNAL \inst|conv1|digitos~22_combout\ : std_logic;
SIGNAL \inst6|Mux6~2_combout\ : std_logic;
SIGNAL \inst|conv1|digitos~33_combout\ : std_logic;
SIGNAL \inst6|Mux6~3_combout\ : std_logic;
SIGNAL \inst|conv1|digitos~20_combout\ : std_logic;
SIGNAL \inst|conv1|digitos~38_combout\ : std_logic;
SIGNAL \inst6|Mux4~2_combout\ : std_logic;
SIGNAL \inst|conv1|digitos~31_combout\ : std_logic;
SIGNAL \inst6|Mux4~3_combout\ : std_logic;
SIGNAL \inst|conv1|digitos~19_combout\ : std_logic;
SIGNAL \inst|conv1|digitos~30_combout\ : std_logic;
SIGNAL \inst6|Mux7~0_combout\ : std_logic;
SIGNAL \inst|conv1|digitos~37_combout\ : std_logic;
SIGNAL \inst|conv1|s[0]~feeder_combout\ : std_logic;
SIGNAL \inst6|Mux7~1_combout\ : std_logic;
SIGNAL \inst6|Mux12~0_combout\ : std_logic;
SIGNAL \inst6|Mux11~0_combout\ : std_logic;
SIGNAL \inst6|Mux10~0_combout\ : std_logic;
SIGNAL \inst6|Mux9~0_combout\ : std_logic;
SIGNAL \inst6|Mux8~0_combout\ : std_logic;
SIGNAL \inst6|Mux1~2_combout\ : std_logic;
SIGNAL \inst6|Mux14~0_combout\ : std_logic;
SIGNAL \inst6|Mux13~0_combout\ : std_logic;
SIGNAL \rst_clk~input_o\ : std_logic;
SIGNAL \inst|ecuacion1|MREG\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \inst6|tmp\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|ecuacion1|alu1|unidad_logica|aux\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \inst6|arreglo\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|ecuacion1|alu1|unidad_aritmetica|mult|inter\ : std_logic_vector(24 DOWNTO 0);
SIGNAL \inst|conv1|s\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst|ecuacion1|alu1|barrel_shifters|salShifters\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst|ecuacion1|alu1|unidad_logica|salida\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst6|contador\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst|ecuacion1|alu1|barrel_shifters|aux\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst|ecuacion1|addr1\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|ecuacion1|addr2\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_rst~input_o\ : std_logic;
SIGNAL \inst|ecuacion1|alu1|ALT_INV_Mux0~3_combout\ : std_logic;
SIGNAL \inst6|ALT_INV_Mux8~0_combout\ : std_logic;

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
ww_rst_clk <= rst_clk;
resultado <= ww_resultado;
sal_prueb <= ww_sal_prueb;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_rst~input_o\ <= NOT \rst~input_o\;
\inst|ecuacion1|alu1|ALT_INV_Mux0~3_combout\ <= NOT \inst|ecuacion1|alu1|Mux0~3_combout\;
\inst6|ALT_INV_Mux8~0_combout\ <= NOT \inst6|Mux8~0_combout\;
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
	i => \inst6|arreglo\(0),
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
	i => \inst6|arreglo\(1),
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
	i => \inst6|arreglo\(3),
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
	i => \inst6|Mux12~0_combout\,
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
	i => \inst6|Mux11~0_combout\,
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
	i => \inst6|Mux10~0_combout\,
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
	i => \inst6|Mux9~0_combout\,
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
	i => \inst6|ALT_INV_Mux8~0_combout\,
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
	i => \inst6|arreglo\(2),
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
	i => \inst6|Mux14~0_combout\,
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
	i => \inst6|Mux13~0_combout\,
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
	i => \rst_clk~input_o\,
	devoe => ww_devoe,
	o => \pin_name1~output_o\);

-- Location: IOOBUF_X28_Y0_N23
\resultado[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ecuacion1|alu1|ALT_INV_Mux0~3_combout\,
	devoe => ww_devoe,
	o => \resultado[9]~output_o\);

-- Location: IOOBUF_X34_Y4_N16
\resultado[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ecuacion1|alu1|Mux1~5_combout\,
	devoe => ww_devoe,
	o => \resultado[8]~output_o\);

-- Location: IOOBUF_X21_Y0_N9
\resultado[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ecuacion1|alu1|Mux2~4_combout\,
	devoe => ww_devoe,
	o => \resultado[7]~output_o\);

-- Location: IOOBUF_X32_Y0_N9
\resultado[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ecuacion1|alu1|Mux3~13_combout\,
	devoe => ww_devoe,
	o => \resultado[6]~output_o\);

-- Location: IOOBUF_X25_Y0_N2
\resultado[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ecuacion1|alu1|Mux4~4_combout\,
	devoe => ww_devoe,
	o => \resultado[5]~output_o\);

-- Location: IOOBUF_X23_Y0_N9
\resultado[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ecuacion1|alu1|Mux5~4_combout\,
	devoe => ww_devoe,
	o => \resultado[4]~output_o\);

-- Location: IOOBUF_X34_Y7_N9
\resultado[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ecuacion1|alu1|Mux6~13_combout\,
	devoe => ww_devoe,
	o => \resultado[3]~output_o\);

-- Location: IOOBUF_X34_Y3_N23
\resultado[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ecuacion1|alu1|Mux7~5_combout\,
	devoe => ww_devoe,
	o => \resultado[2]~output_o\);

-- Location: IOOBUF_X34_Y4_N23
\resultado[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ecuacion1|alu1|Mux8~4_combout\,
	devoe => ww_devoe,
	o => \resultado[1]~output_o\);

-- Location: IOOBUF_X30_Y0_N23
\resultado[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ecuacion1|alu1|Mux9~4_combout\,
	devoe => ww_devoe,
	o => \resultado[0]~output_o\);

-- Location: IOOBUF_X5_Y24_N9
\sal_prueb[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sal_prueb[15]~output_o\);

-- Location: IOOBUF_X11_Y24_N16
\sal_prueb[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sal_prueb[14]~output_o\);

-- Location: IOOBUF_X30_Y24_N2
\sal_prueb[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sal_prueb[13]~output_o\);

-- Location: IOOBUF_X13_Y0_N2
\sal_prueb[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|conv1|s\(12),
	devoe => ww_devoe,
	o => \sal_prueb[12]~output_o\);

-- Location: IOOBUF_X18_Y0_N16
\sal_prueb[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|conv1|s\(11),
	devoe => ww_devoe,
	o => \sal_prueb[11]~output_o\);

-- Location: IOOBUF_X30_Y0_N2
\sal_prueb[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|conv1|s\(10),
	devoe => ww_devoe,
	o => \sal_prueb[10]~output_o\);

-- Location: IOOBUF_X28_Y0_N2
\sal_prueb[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|conv1|s\(9),
	devoe => ww_devoe,
	o => \sal_prueb[9]~output_o\);

-- Location: IOOBUF_X23_Y0_N16
\sal_prueb[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|conv1|s\(8),
	devoe => ww_devoe,
	o => \sal_prueb[8]~output_o\);

-- Location: IOOBUF_X18_Y0_N23
\sal_prueb[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|conv1|s\(7),
	devoe => ww_devoe,
	o => \sal_prueb[7]~output_o\);

-- Location: IOOBUF_X0_Y5_N16
\sal_prueb[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|conv1|s\(6),
	devoe => ww_devoe,
	o => \sal_prueb[6]~output_o\);

-- Location: IOOBUF_X34_Y9_N16
\sal_prueb[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|conv1|s\(5),
	devoe => ww_devoe,
	o => \sal_prueb[5]~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\sal_prueb[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|conv1|s\(4),
	devoe => ww_devoe,
	o => \sal_prueb[4]~output_o\);

-- Location: IOOBUF_X34_Y9_N23
\sal_prueb[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|conv1|s\(3),
	devoe => ww_devoe,
	o => \sal_prueb[3]~output_o\);

-- Location: IOOBUF_X34_Y2_N23
\sal_prueb[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|conv1|s\(2),
	devoe => ww_devoe,
	o => \sal_prueb[2]~output_o\);

-- Location: IOOBUF_X32_Y0_N23
\sal_prueb[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|conv1|s\(1),
	devoe => ww_devoe,
	o => \sal_prueb[1]~output_o\);

-- Location: IOOBUF_X30_Y0_N9
\sal_prueb[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|conv1|s\(0),
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

-- Location: LCCOMB_X22_Y5_N6
\inst6|contador[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|contador[0]~1_combout\ = !\inst6|contador\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|contador\(0),
	combout => \inst6|contador[0]~1_combout\);

-- Location: FF_X22_Y5_N7
\inst6|contador[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|contador[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|contador\(0));

-- Location: LCCOMB_X22_Y5_N24
\inst6|contador[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|contador[1]~0_combout\ = \inst6|contador\(1) $ (\inst6|contador\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|contador\(1),
	datad => \inst6|contador\(0),
	combout => \inst6|contador[1]~0_combout\);

-- Location: FF_X22_Y5_N25
\inst6|contador[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|contador[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|contador\(1));

-- Location: LCCOMB_X21_Y5_N8
\inst6|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Mux3~0_combout\ = (!\inst6|contador\(1) & !\inst6|contador\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|contador\(1),
	datad => \inst6|contador\(0),
	combout => \inst6|Mux3~0_combout\);

-- Location: FF_X21_Y5_N9
\inst6|arreglo[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|arreglo\(0));

-- Location: LCCOMB_X21_Y5_N22
\inst6|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Mux1~0_combout\ = (!\inst6|contador\(1) & \inst6|contador\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|contador\(1),
	datad => \inst6|contador\(0),
	combout => \inst6|Mux1~0_combout\);

-- Location: FF_X21_Y5_N23
\inst6|arreglo[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|arreglo\(1));

-- Location: LCCOMB_X21_Y5_N0
\inst6|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Mux1~1_combout\ = (\inst6|contador\(1) & \inst6|contador\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|contador\(1),
	datad => \inst6|contador\(0),
	combout => \inst6|Mux1~1_combout\);

-- Location: FF_X21_Y5_N1
\inst6|arreglo[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|Mux1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|arreglo\(3));

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

-- Location: LCCOMB_X25_Y3_N24
\inst|ecuacion1|pr_state.state0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|pr_state.state0~0_combout\ = !\rst~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rst~input_o\,
	combout => \inst|ecuacion1|pr_state.state0~0_combout\);

-- Location: FF_X25_Y3_N25
\inst|ecuacion1|pr_state.state0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|ecuacion1|pr_state.state0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|pr_state.state0~q\);

-- Location: LCCOMB_X25_Y3_N4
\inst|ecuacion1|pr_state~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|pr_state~14_combout\ = (!\inst|ecuacion1|pr_state.state0~q\ & !\rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|ecuacion1|pr_state.state0~q\,
	datac => \rst~input_o\,
	combout => \inst|ecuacion1|pr_state~14_combout\);

-- Location: FF_X25_Y3_N5
\inst|ecuacion1|pr_state.state1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|ecuacion1|pr_state~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|pr_state.state1~q\);

-- Location: LCCOMB_X25_Y3_N8
\inst|ecuacion1|pr_state~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|pr_state~18_combout\ = (!\rst~input_o\ & \inst|ecuacion1|pr_state.state1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst~input_o\,
	datac => \inst|ecuacion1|pr_state.state1~q\,
	combout => \inst|ecuacion1|pr_state~18_combout\);

-- Location: FF_X25_Y3_N9
\inst|ecuacion1|pr_state.state2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|ecuacion1|pr_state~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|pr_state.state2~q\);

-- Location: LCCOMB_X24_Y3_N28
\inst|ecuacion1|pr_state~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|pr_state~15_combout\ = (\inst|ecuacion1|pr_state.state2~q\ & !\rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|ecuacion1|pr_state.state2~q\,
	datac => \rst~input_o\,
	combout => \inst|ecuacion1|pr_state~15_combout\);

-- Location: LCCOMB_X25_Y3_N14
\inst|ecuacion1|pr_state.state3~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|pr_state.state3~feeder_combout\ = \inst|ecuacion1|pr_state~15_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|ecuacion1|pr_state~15_combout\,
	combout => \inst|ecuacion1|pr_state.state3~feeder_combout\);

-- Location: FF_X25_Y3_N15
\inst|ecuacion1|pr_state.state3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|ecuacion1|pr_state.state3~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|pr_state.state3~q\);

-- Location: LCCOMB_X25_Y3_N6
\inst|ecuacion1|pr_state~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|pr_state~17_combout\ = (!\rst~input_o\ & \inst|ecuacion1|pr_state.state3~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst~input_o\,
	datac => \inst|ecuacion1|pr_state.state3~q\,
	combout => \inst|ecuacion1|pr_state~17_combout\);

-- Location: FF_X25_Y3_N7
\inst|ecuacion1|pr_state.state4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|ecuacion1|pr_state~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|pr_state.state4~q\);

-- Location: LCCOMB_X25_Y3_N12
\inst|ecuacion1|pr_state~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|pr_state~20_combout\ = (\inst|ecuacion1|pr_state.state4~q\ & !\rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|pr_state.state4~q\,
	datac => \rst~input_o\,
	combout => \inst|ecuacion1|pr_state~20_combout\);

-- Location: LCCOMB_X25_Y3_N26
\inst|ecuacion1|pr_state.state5~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|pr_state.state5~feeder_combout\ = \inst|ecuacion1|pr_state~20_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|ecuacion1|pr_state~20_combout\,
	combout => \inst|ecuacion1|pr_state.state5~feeder_combout\);

-- Location: FF_X25_Y3_N27
\inst|ecuacion1|pr_state.state5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|ecuacion1|pr_state.state5~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|pr_state.state5~q\);

-- Location: LCCOMB_X25_Y3_N16
\inst|ecuacion1|pr_state~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|pr_state~16_combout\ = (!\rst~input_o\ & \inst|ecuacion1|pr_state.state5~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst~input_o\,
	datac => \inst|ecuacion1|pr_state.state5~q\,
	combout => \inst|ecuacion1|pr_state~16_combout\);

-- Location: FF_X25_Y3_N17
\inst|ecuacion1|pr_state.state6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|ecuacion1|pr_state~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|pr_state.state6~q\);

-- Location: LCCOMB_X25_Y3_N10
\inst|ecuacion1|pr_state~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|pr_state~19_combout\ = (\inst|ecuacion1|pr_state.state6~q\ & !\rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|ecuacion1|pr_state.state6~q\,
	datac => \rst~input_o\,
	combout => \inst|ecuacion1|pr_state~19_combout\);

-- Location: LCCOMB_X25_Y3_N22
\inst|ecuacion1|pr_state.state7~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|pr_state.state7~feeder_combout\ = \inst|ecuacion1|pr_state~19_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|ecuacion1|pr_state~19_combout\,
	combout => \inst|ecuacion1|pr_state.state7~feeder_combout\);

-- Location: FF_X25_Y3_N23
\inst|ecuacion1|pr_state.state7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|ecuacion1|pr_state.state7~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|pr_state.state7~q\);

-- Location: LCCOMB_X24_Y3_N6
\inst|ecuacion1|WideOr16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|WideOr16~0_combout\ = (\inst|ecuacion1|pr_state.state4~q\) # ((\inst|ecuacion1|pr_state.state7~q\) # ((\inst|ecuacion1|pr_state.state2~q\) # (!\inst|ecuacion1|pr_state.state0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|pr_state.state4~q\,
	datab => \inst|ecuacion1|pr_state.state7~q\,
	datac => \inst|ecuacion1|pr_state.state2~q\,
	datad => \inst|ecuacion1|pr_state.state0~q\,
	combout => \inst|ecuacion1|WideOr16~0_combout\);

-- Location: LCCOMB_X24_Y3_N16
\inst|ecuacion1|Selector37~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|Selector37~0_combout\ = (\inst|ecuacion1|pr_state.state1~q\) # ((\inst|ecuacion1|pr_state.state6~q\) # (\inst|ecuacion1|pr_state.state3~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|pr_state.state1~q\,
	datab => \inst|ecuacion1|pr_state.state6~q\,
	datac => \inst|ecuacion1|pr_state.state3~q\,
	combout => \inst|ecuacion1|Selector37~0_combout\);

-- Location: LCCOMB_X25_Y3_N2
\inst|ecuacion1|pr_state~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|pr_state~21_combout\ = (!\rst~input_o\ & \inst|ecuacion1|pr_state.state7~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst~input_o\,
	datac => \inst|ecuacion1|pr_state.state7~q\,
	combout => \inst|ecuacion1|pr_state~21_combout\);

-- Location: LCCOMB_X25_Y3_N0
\inst|ecuacion1|pr_state.state8~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|pr_state.state8~feeder_combout\ = \inst|ecuacion1|pr_state~21_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|ecuacion1|pr_state~21_combout\,
	combout => \inst|ecuacion1|pr_state.state8~feeder_combout\);

-- Location: FF_X25_Y3_N1
\inst|ecuacion1|pr_state.state8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|ecuacion1|pr_state.state8~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|pr_state.state8~q\);

-- Location: LCCOMB_X25_Y3_N28
\inst|ecuacion1|Selector12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|Selector12~0_combout\ = (\inst|ecuacion1|pr_state.state9~q\) # (\inst|ecuacion1|pr_state.state8~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|ecuacion1|pr_state.state9~q\,
	datad => \inst|ecuacion1|pr_state.state8~q\,
	combout => \inst|ecuacion1|Selector12~0_combout\);

-- Location: FF_X25_Y3_N29
\inst|ecuacion1|pr_state.state9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|ecuacion1|Selector12~0_combout\,
	sclr => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|pr_state.state9~q\);

-- Location: LCCOMB_X24_Y3_N20
\inst|ecuacion1|Selector37~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|Selector37~1_combout\ = (\inst|ecuacion1|Selector37~0_combout\) # ((\inst|ecuacion1|MREG\(0) & ((\inst|ecuacion1|WideOr16~0_combout\) # (\inst|ecuacion1|pr_state.state9~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|WideOr16~0_combout\,
	datab => \inst|ecuacion1|Selector37~0_combout\,
	datac => \inst|ecuacion1|MREG\(0),
	datad => \inst|ecuacion1|pr_state.state9~q\,
	combout => \inst|ecuacion1|Selector37~1_combout\);

-- Location: FF_X24_Y3_N21
\inst|ecuacion1|MREG[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|ecuacion1|Selector37~1_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|MREG\(0));

-- Location: LCCOMB_X25_Y3_N20
\inst|ecuacion1|Selector35~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|Selector35~0_combout\ = (\inst|ecuacion1|pr_state.state6~q\) # ((\inst|ecuacion1|MREG\(2) & ((\inst|ecuacion1|pr_state.state9~q\) # (\inst|ecuacion1|WideOr16~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|pr_state.state9~q\,
	datab => \inst|ecuacion1|WideOr16~0_combout\,
	datac => \inst|ecuacion1|MREG\(2),
	datad => \inst|ecuacion1|pr_state.state6~q\,
	combout => \inst|ecuacion1|Selector35~0_combout\);

-- Location: FF_X25_Y3_N21
\inst|ecuacion1|MREG[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|ecuacion1|Selector35~0_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|MREG\(2));

-- Location: LCCOMB_X24_Y3_N18
\inst|ecuacion1|Selector34~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|Selector34~0_combout\ = (\inst|ecuacion1|pr_state.state1~q\) # ((\inst|ecuacion1|pr_state.state3~q\) # ((\inst|ecuacion1|pr_state.state8~q\) # (\inst|ecuacion1|pr_state.state5~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|pr_state.state1~q\,
	datab => \inst|ecuacion1|pr_state.state3~q\,
	datac => \inst|ecuacion1|pr_state.state8~q\,
	datad => \inst|ecuacion1|pr_state.state5~q\,
	combout => \inst|ecuacion1|Selector34~0_combout\);

-- Location: LCCOMB_X24_Y3_N2
\inst|ecuacion1|Selector34~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|Selector34~1_combout\ = (\inst|ecuacion1|Selector34~0_combout\) # ((\inst|ecuacion1|MREG\(3) & ((\inst|ecuacion1|WideOr16~0_combout\) # (\inst|ecuacion1|pr_state.state9~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|WideOr16~0_combout\,
	datab => \inst|ecuacion1|Selector34~0_combout\,
	datac => \inst|ecuacion1|MREG\(3),
	datad => \inst|ecuacion1|pr_state.state9~q\,
	combout => \inst|ecuacion1|Selector34~1_combout\);

-- Location: FF_X24_Y3_N3
\inst|ecuacion1|MREG[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|ecuacion1|Selector34~1_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|MREG\(3));

-- Location: LCCOMB_X24_Y3_N24
\inst|ecuacion1|Selector36~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|Selector36~0_combout\ = (\inst|ecuacion1|pr_state.state6~q\) # (\inst|ecuacion1|pr_state.state5~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|ecuacion1|pr_state.state6~q\,
	datad => \inst|ecuacion1|pr_state.state5~q\,
	combout => \inst|ecuacion1|Selector36~0_combout\);

-- Location: LCCOMB_X25_Y3_N18
\inst|ecuacion1|Selector36~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|Selector36~1_combout\ = (\inst|ecuacion1|Selector36~0_combout\) # ((\inst|ecuacion1|MREG\(1) & ((\inst|ecuacion1|pr_state.state9~q\) # (\inst|ecuacion1|WideOr16~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|pr_state.state9~q\,
	datab => \inst|ecuacion1|WideOr16~0_combout\,
	datac => \inst|ecuacion1|MREG\(1),
	datad => \inst|ecuacion1|Selector36~0_combout\,
	combout => \inst|ecuacion1|Selector36~1_combout\);

-- Location: FF_X25_Y3_N19
\inst|ecuacion1|MREG[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|ecuacion1|Selector36~1_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|MREG\(1));

-- Location: LCCOMB_X26_Y6_N10
\inst|ecuacion1|alu1|Mux3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|Mux3~8_combout\ = (\inst|ecuacion1|MREG\(2) & (\inst|ecuacion1|MREG\(0) & (!\inst|ecuacion1|MREG\(3) & \inst|ecuacion1|MREG\(1)))) # (!\inst|ecuacion1|MREG\(2) & (\inst|ecuacion1|MREG\(3) & ((!\inst|ecuacion1|MREG\(1)) # 
-- (!\inst|ecuacion1|MREG\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(0),
	datab => \inst|ecuacion1|MREG\(2),
	datac => \inst|ecuacion1|MREG\(3),
	datad => \inst|ecuacion1|MREG\(1),
	combout => \inst|ecuacion1|alu1|Mux3~8_combout\);

-- Location: LCCOMB_X23_Y4_N8
\inst|ecuacion1|registro[3][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|registro[3][5]~feeder_combout\ = \inst|ecuacion1|alu1|Mux4~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|ecuacion1|alu1|Mux4~4_combout\,
	combout => \inst|ecuacion1|registro[3][5]~feeder_combout\);

-- Location: FF_X23_Y4_N9
\inst|ecuacion1|registro[3][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|ecuacion1|registro[3][5]~feeder_combout\,
	ena => \inst|ecuacion1|pr_state~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|registro[3][5]~q\);

-- Location: FF_X24_Y4_N25
\inst|ecuacion1|registro[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|ecuacion1|alu1|Mux4~4_combout\,
	sload => VCC,
	ena => \inst|ecuacion1|pr_state~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|registro[0][5]~q\);

-- Location: LCCOMB_X23_Y4_N24
\inst|ecuacion1|Selector18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|Selector18~0_combout\ = (\inst|ecuacion1|pr_state.state8~q\ & (((\inst|ecuacion1|registro[3][5]~q\)))) # (!\inst|ecuacion1|pr_state.state8~q\ & (\inst|ecuacion1|pr_state.state6~q\ & ((\inst|ecuacion1|registro[0][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|pr_state.state8~q\,
	datab => \inst|ecuacion1|pr_state.state6~q\,
	datac => \inst|ecuacion1|registro[3][5]~q\,
	datad => \inst|ecuacion1|registro[0][5]~q\,
	combout => \inst|ecuacion1|Selector18~0_combout\);

-- Location: LCCOMB_X24_Y3_N0
\inst|ecuacion1|MREG[10]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|MREG[10]~0_combout\ = (!\inst|ecuacion1|WideOr16~0_combout\ & (!\rst~input_o\ & !\inst|ecuacion1|pr_state.state9~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|WideOr16~0_combout\,
	datac => \rst~input_o\,
	datad => \inst|ecuacion1|pr_state.state9~q\,
	combout => \inst|ecuacion1|MREG[10]~0_combout\);

-- Location: FF_X23_Y4_N25
\inst|ecuacion1|MREG[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|ecuacion1|Selector18~0_combout\,
	ena => \inst|ecuacion1|MREG[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|MREG\(19));

-- Location: LCCOMB_X24_Y3_N22
\inst|ecuacion1|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|Selector1~0_combout\ = (\inst|ecuacion1|pr_state.state4~q\) # ((\inst|ecuacion1|pr_state.state2~q\) # ((\inst|ecuacion1|addr1\(0) & \inst|ecuacion1|pr_state.state0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|pr_state.state4~q\,
	datab => \inst|ecuacion1|pr_state.state2~q\,
	datac => \inst|ecuacion1|addr1\(0),
	datad => \inst|ecuacion1|pr_state.state0~q\,
	combout => \inst|ecuacion1|Selector1~0_combout\);

-- Location: FF_X24_Y3_N23
\inst|ecuacion1|addr1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|ecuacion1|Selector1~0_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|addr1\(0));

-- Location: LCCOMB_X24_Y3_N4
\inst|ecuacion1|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|Selector0~0_combout\ = (\inst|ecuacion1|pr_state.state4~q\) # ((!\inst|ecuacion1|pr_state.state2~q\ & (\inst|ecuacion1|addr1\(1) & \inst|ecuacion1|pr_state.state0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|pr_state.state4~q\,
	datab => \inst|ecuacion1|pr_state.state2~q\,
	datac => \inst|ecuacion1|addr1\(1),
	datad => \inst|ecuacion1|pr_state.state0~q\,
	combout => \inst|ecuacion1|Selector0~0_combout\);

-- Location: FF_X24_Y3_N5
\inst|ecuacion1|addr1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|ecuacion1|Selector0~0_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|addr1\(1));

-- Location: LCCOMB_X26_Y5_N8
\inst|ecuacion1|alu1|Mux1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|Mux1~4_combout\ = (!\inst|ecuacion1|MREG\(2) & (!\inst|ecuacion1|MREG\(3) & ((\inst|ecuacion1|MREG\(0)) # (\inst|ecuacion1|MREG\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(0),
	datab => \inst|ecuacion1|MREG\(2),
	datac => \inst|ecuacion1|MREG\(3),
	datad => \inst|ecuacion1|MREG\(1),
	combout => \inst|ecuacion1|alu1|Mux1~4_combout\);

-- Location: LCCOMB_X26_Y5_N28
\inst|ecuacion1|alu1|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|Mux11~0_combout\ = (!\inst|ecuacion1|MREG\(0) & ((\inst|ecuacion1|MREG\(2) & (!\inst|ecuacion1|MREG\(3))) # (!\inst|ecuacion1|MREG\(2) & ((\inst|ecuacion1|MREG\(3)) # (\inst|ecuacion1|MREG\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(0),
	datab => \inst|ecuacion1|MREG\(2),
	datac => \inst|ecuacion1|MREG\(3),
	datad => \inst|ecuacion1|MREG\(1),
	combout => \inst|ecuacion1|alu1|Mux11~0_combout\);

-- Location: FF_X23_Y5_N9
\inst|ecuacion1|registro[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|ecuacion1|alu1|Mux9~4_combout\,
	sload => VCC,
	ena => \inst|ecuacion1|pr_state~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|registro[1][0]~q\);

-- Location: LCCOMB_X24_Y3_N10
\inst|ecuacion1|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|Selector3~0_combout\ = (\inst|ecuacion1|pr_state.state2~q\) # ((!\inst|ecuacion1|pr_state.state4~q\ & (\inst|ecuacion1|addr2\(0) & \inst|ecuacion1|pr_state.state0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|pr_state.state4~q\,
	datab => \inst|ecuacion1|pr_state.state2~q\,
	datac => \inst|ecuacion1|addr2\(0),
	datad => \inst|ecuacion1|pr_state.state0~q\,
	combout => \inst|ecuacion1|Selector3~0_combout\);

-- Location: FF_X24_Y3_N11
\inst|ecuacion1|addr2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|ecuacion1|Selector3~0_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|addr2\(0));

-- Location: LCCOMB_X23_Y5_N8
\inst|ecuacion1|Selector33~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|Selector33~0_combout\ = (\inst|ecuacion1|pr_state.state6~q\ & (((\inst|ecuacion1|registro[1][0]~q\)))) # (!\inst|ecuacion1|pr_state.state6~q\ & (((\inst|ecuacion1|addr2\(0))) # (!\inst|ecuacion1|addr1\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|pr_state.state6~q\,
	datab => \inst|ecuacion1|addr1\(1),
	datac => \inst|ecuacion1|registro[1][0]~q\,
	datad => \inst|ecuacion1|addr2\(0),
	combout => \inst|ecuacion1|Selector33~0_combout\);

-- Location: LCCOMB_X22_Y7_N0
\inst|ecuacion1|MREG[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|MREG[4]~feeder_combout\ = \inst|ecuacion1|Selector33~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|ecuacion1|Selector33~0_combout\,
	combout => \inst|ecuacion1|MREG[4]~feeder_combout\);

-- Location: FF_X25_Y5_N17
\inst|ecuacion1|registro[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|ecuacion1|alu1|Mux9~4_combout\,
	ena => \inst|ecuacion1|pr_state~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|registro[2][0]~q\);

-- Location: FF_X22_Y7_N1
\inst|ecuacion1|MREG[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|ecuacion1|MREG[4]~feeder_combout\,
	asdata => \inst|ecuacion1|registro[2][0]~q\,
	sload => \inst|ecuacion1|pr_state.state8~q\,
	ena => \inst|ecuacion1|MREG[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|MREG\(4));

-- Location: LCCOMB_X26_Y5_N18
\inst|ecuacion1|alu1|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|Mux10~0_combout\ = (\inst|ecuacion1|MREG\(2)) # (\inst|ecuacion1|MREG\(0) $ (!\inst|ecuacion1|MREG\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(0),
	datac => \inst|ecuacion1|MREG\(2),
	datad => \inst|ecuacion1|MREG\(1),
	combout => \inst|ecuacion1|alu1|Mux10~0_combout\);

-- Location: LCCOMB_X26_Y7_N12
\inst|ecuacion1|alu1|unidad_logica|salida~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_logica|salida~27_combout\ = (\inst|ecuacion1|MREG\(14) & (((\inst|ecuacion1|alu1|Mux10~0_combout\)))) # (!\inst|ecuacion1|MREG\(14) & (((\inst|ecuacion1|MREG\(4) & \inst|ecuacion1|alu1|Mux10~0_combout\)) # 
-- (!\inst|ecuacion1|alu1|Mux11~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|Mux11~0_combout\,
	datab => \inst|ecuacion1|MREG\(14),
	datac => \inst|ecuacion1|MREG\(4),
	datad => \inst|ecuacion1|alu1|Mux10~0_combout\,
	combout => \inst|ecuacion1|alu1|unidad_logica|salida~27_combout\);

-- Location: LCCOMB_X26_Y7_N18
\inst|ecuacion1|alu1|unidad_logica|salida~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_logica|salida~28_combout\ = (\inst|ecuacion1|MREG\(4) & \inst|ecuacion1|MREG\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(4),
	datad => \inst|ecuacion1|MREG\(14),
	combout => \inst|ecuacion1|alu1|unidad_logica|salida~28_combout\);

-- Location: LCCOMB_X26_Y5_N22
\inst|ecuacion1|alu1|Mux3~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|Mux3~15_combout\ = (\inst|ecuacion1|MREG\(2) & ((\inst|ecuacion1|MREG\(0)) # ((\inst|ecuacion1|MREG\(3))))) # (!\inst|ecuacion1|MREG\(2) & ((\inst|ecuacion1|MREG\(1)) # ((!\inst|ecuacion1|MREG\(0) & !\inst|ecuacion1|MREG\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(0),
	datab => \inst|ecuacion1|MREG\(2),
	datac => \inst|ecuacion1|MREG\(3),
	datad => \inst|ecuacion1|MREG\(1),
	combout => \inst|ecuacion1|alu1|Mux3~15_combout\);

-- Location: LCCOMB_X26_Y7_N6
\inst|ecuacion1|alu1|unidad_logica|aux[0]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_logica|aux[0]~31_combout\ = (\inst|ecuacion1|alu1|Mux11~0_combout\ & ((\inst|ecuacion1|alu1|Mux10~0_combout\ & ((\inst|ecuacion1|alu1|unidad_logica|aux\(0)))) # (!\inst|ecuacion1|alu1|Mux10~0_combout\ & 
-- (\inst|ecuacion1|MREG\(14))))) # (!\inst|ecuacion1|alu1|Mux11~0_combout\ & (((\inst|ecuacion1|alu1|unidad_logica|aux\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|Mux11~0_combout\,
	datab => \inst|ecuacion1|MREG\(14),
	datac => \inst|ecuacion1|alu1|unidad_logica|aux\(0),
	datad => \inst|ecuacion1|alu1|Mux10~0_combout\,
	combout => \inst|ecuacion1|alu1|unidad_logica|aux[0]~31_combout\);

-- Location: FF_X26_Y7_N7
\inst|ecuacion1|alu1|unidad_logica|aux[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|ecuacion1|alu1|unidad_logica|aux[0]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|alu1|unidad_logica|aux\(0));

-- Location: LCCOMB_X26_Y7_N14
\inst|ecuacion1|alu1|unidad_logica|salida~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_logica|salida~29_combout\ = (\inst|ecuacion1|alu1|unidad_logica|salida~27_combout\ & ((\inst|ecuacion1|alu1|unidad_logica|salida~28_combout\) # ((!\inst|ecuacion1|alu1|Mux3~15_combout\)))) # 
-- (!\inst|ecuacion1|alu1|unidad_logica|salida~27_combout\ & (((\inst|ecuacion1|alu1|Mux3~15_combout\ & \inst|ecuacion1|alu1|unidad_logica|aux\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|unidad_logica|salida~27_combout\,
	datab => \inst|ecuacion1|alu1|unidad_logica|salida~28_combout\,
	datac => \inst|ecuacion1|alu1|Mux3~15_combout\,
	datad => \inst|ecuacion1|alu1|unidad_logica|aux\(0),
	combout => \inst|ecuacion1|alu1|unidad_logica|salida~29_combout\);

-- Location: FF_X26_Y7_N15
\inst|ecuacion1|alu1|unidad_logica|salida[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|ecuacion1|alu1|unidad_logica|salida~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|alu1|unidad_logica|salida\(0));

-- Location: LCCOMB_X26_Y5_N30
\inst|ecuacion1|alu1|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|Mux9~0_combout\ = (\inst|ecuacion1|alu1|Mux1~4_combout\ & \inst|ecuacion1|alu1|unidad_logica|salida\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|ecuacion1|alu1|Mux1~4_combout\,
	datad => \inst|ecuacion1|alu1|unidad_logica|salida\(0),
	combout => \inst|ecuacion1|alu1|Mux9~0_combout\);

-- Location: LCCOMB_X23_Y3_N12
\inst|ecuacion1|alu1|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|Mux0~0_combout\ = (!\inst|ecuacion1|MREG\(2) & ((!\inst|ecuacion1|MREG\(1)) # (!\inst|ecuacion1|MREG\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(2),
	datac => \inst|ecuacion1|MREG\(0),
	datad => \inst|ecuacion1|MREG\(1),
	combout => \inst|ecuacion1|alu1|Mux0~0_combout\);

-- Location: LCCOMB_X25_Y7_N6
\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~8_combout\ = (\inst|ecuacion1|MREG\(14) & (\inst|ecuacion1|MREG\(4) $ (\inst|ecuacion1|alu1|Mux10~0_combout\))) # (!\inst|ecuacion1|MREG\(14) & (\inst|ecuacion1|MREG\(4) & 
-- \inst|ecuacion1|alu1|Mux10~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(14),
	datac => \inst|ecuacion1|MREG\(4),
	datad => \inst|ecuacion1|alu1|Mux10~0_combout\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~8_combout\);

-- Location: LCCOMB_X26_Y5_N10
\inst|ecuacion1|alu1|Mux3~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|Mux3~7_combout\ = \inst|ecuacion1|MREG\(2) $ (((\inst|ecuacion1|MREG\(0)) # (\inst|ecuacion1|MREG\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(0),
	datab => \inst|ecuacion1|MREG\(2),
	datad => \inst|ecuacion1|MREG\(1),
	combout => \inst|ecuacion1|alu1|Mux3~7_combout\);

-- Location: FF_X25_Y6_N17
\inst|ecuacion1|alu1|barrel_shifters|aux[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|ecuacion1|MREG\(19),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|alu1|barrel_shifters|aux\(6));

-- Location: FF_X26_Y6_N21
\inst|ecuacion1|alu1|barrel_shifters|salShifters[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|ecuacion1|alu1|barrel_shifters|aux\(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|alu1|barrel_shifters|salShifters\(6));

-- Location: LCCOMB_X26_Y6_N20
\inst|ecuacion1|alu1|Mux3~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|Mux3~12_combout\ = (\inst|ecuacion1|MREG\(3)) # ((!\inst|ecuacion1|alu1|Mux3~7_combout\ & (\inst|ecuacion1|alu1|barrel_shifters|salShifters\(6) & \inst|ecuacion1|MREG\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|Mux3~7_combout\,
	datab => \inst|ecuacion1|MREG\(3),
	datac => \inst|ecuacion1|alu1|barrel_shifters|salShifters\(6),
	datad => \inst|ecuacion1|MREG\(2),
	combout => \inst|ecuacion1|alu1|Mux3~12_combout\);

-- Location: FF_X24_Y4_N19
\inst|ecuacion1|registro[2][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|ecuacion1|alu1|Mux3~13_combout\,
	sload => VCC,
	ena => \inst|ecuacion1|pr_state~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|registro[2][6]~q\);

-- Location: FF_X25_Y6_N29
\inst|ecuacion1|registro[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|ecuacion1|alu1|Mux3~13_combout\,
	ena => \inst|ecuacion1|pr_state~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|registro[1][6]~q\);

-- Location: LCCOMB_X23_Y8_N0
\inst|ecuacion1|Selector27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|Selector27~0_combout\ = (\inst|ecuacion1|pr_state.state8~q\ & (((\inst|ecuacion1|registro[2][6]~q\)))) # (!\inst|ecuacion1|pr_state.state8~q\ & (\inst|ecuacion1|pr_state.state6~q\ & ((\inst|ecuacion1|registro[1][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|pr_state.state6~q\,
	datab => \inst|ecuacion1|pr_state.state8~q\,
	datac => \inst|ecuacion1|registro[2][6]~q\,
	datad => \inst|ecuacion1|registro[1][6]~q\,
	combout => \inst|ecuacion1|Selector27~0_combout\);

-- Location: FF_X23_Y8_N1
\inst|ecuacion1|MREG[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|ecuacion1|Selector27~0_combout\,
	ena => \inst|ecuacion1|MREG[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|MREG\(10));

-- Location: LCCOMB_X23_Y5_N12
\inst|ecuacion1|registro[2][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|registro[2][5]~feeder_combout\ = \inst|ecuacion1|alu1|Mux4~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|ecuacion1|alu1|Mux4~4_combout\,
	combout => \inst|ecuacion1|registro[2][5]~feeder_combout\);

-- Location: FF_X23_Y5_N13
\inst|ecuacion1|registro[2][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|ecuacion1|registro[2][5]~feeder_combout\,
	ena => \inst|ecuacion1|pr_state~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|registro[2][5]~q\);

-- Location: FF_X24_Y6_N27
\inst|ecuacion1|registro[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|ecuacion1|alu1|Mux4~4_combout\,
	ena => \inst|ecuacion1|pr_state~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|registro[1][5]~q\);

-- Location: LCCOMB_X23_Y8_N30
\inst|ecuacion1|Selector28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|Selector28~0_combout\ = (\inst|ecuacion1|pr_state.state8~q\ & (((\inst|ecuacion1|registro[2][5]~q\)))) # (!\inst|ecuacion1|pr_state.state8~q\ & (\inst|ecuacion1|pr_state.state6~q\ & ((\inst|ecuacion1|registro[1][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|pr_state.state6~q\,
	datab => \inst|ecuacion1|registro[2][5]~q\,
	datac => \inst|ecuacion1|registro[1][5]~q\,
	datad => \inst|ecuacion1|pr_state.state8~q\,
	combout => \inst|ecuacion1|Selector28~0_combout\);

-- Location: FF_X23_Y8_N31
\inst|ecuacion1|MREG[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|ecuacion1|Selector28~0_combout\,
	ena => \inst|ecuacion1|MREG[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|MREG\(9));

-- Location: FF_X23_Y5_N27
\inst|ecuacion1|registro[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|ecuacion1|alu1|Mux5~4_combout\,
	sload => VCC,
	ena => \inst|ecuacion1|pr_state~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|registro[1][4]~q\);

-- Location: LCCOMB_X23_Y5_N26
\inst|ecuacion1|Selector29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|Selector29~0_combout\ = (\inst|ecuacion1|pr_state.state6~q\ & (((\inst|ecuacion1|registro[1][4]~q\)))) # (!\inst|ecuacion1|pr_state.state6~q\ & (!\inst|ecuacion1|addr1\(1) & ((\inst|ecuacion1|addr2\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|pr_state.state6~q\,
	datab => \inst|ecuacion1|addr1\(1),
	datac => \inst|ecuacion1|registro[1][4]~q\,
	datad => \inst|ecuacion1|addr2\(0),
	combout => \inst|ecuacion1|Selector29~0_combout\);

-- Location: LCCOMB_X23_Y6_N4
\inst|ecuacion1|MREG[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|MREG[8]~feeder_combout\ = \inst|ecuacion1|Selector29~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|ecuacion1|Selector29~0_combout\,
	combout => \inst|ecuacion1|MREG[8]~feeder_combout\);

-- Location: FF_X23_Y5_N15
\inst|ecuacion1|registro[2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|ecuacion1|alu1|Mux5~4_combout\,
	ena => \inst|ecuacion1|pr_state~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|registro[2][4]~q\);

-- Location: FF_X23_Y6_N5
\inst|ecuacion1|MREG[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|ecuacion1|MREG[8]~feeder_combout\,
	asdata => \inst|ecuacion1|registro[2][4]~q\,
	sload => \inst|ecuacion1|pr_state.state8~q\,
	ena => \inst|ecuacion1|MREG[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|MREG\(8));

-- Location: FF_X23_Y5_N17
\inst|ecuacion1|registro[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|ecuacion1|alu1|Mux6~13_combout\,
	sload => VCC,
	ena => \inst|ecuacion1|pr_state~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|registro[1][3]~q\);

-- Location: LCCOMB_X23_Y5_N16
\inst|ecuacion1|Selector30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|Selector30~0_combout\ = (\inst|ecuacion1|pr_state.state6~q\ & (((\inst|ecuacion1|registro[1][3]~q\)))) # (!\inst|ecuacion1|pr_state.state6~q\ & (!\inst|ecuacion1|addr1\(1) & ((!\inst|ecuacion1|addr2\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|pr_state.state6~q\,
	datab => \inst|ecuacion1|addr1\(1),
	datac => \inst|ecuacion1|registro[1][3]~q\,
	datad => \inst|ecuacion1|addr2\(0),
	combout => \inst|ecuacion1|Selector30~0_combout\);

-- Location: LCCOMB_X23_Y8_N20
\inst|ecuacion1|MREG[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|MREG[7]~feeder_combout\ = \inst|ecuacion1|Selector30~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|ecuacion1|Selector30~0_combout\,
	combout => \inst|ecuacion1|MREG[7]~feeder_combout\);

-- Location: FF_X25_Y7_N29
\inst|ecuacion1|registro[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|ecuacion1|alu1|Mux6~13_combout\,
	ena => \inst|ecuacion1|pr_state~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|registro[2][3]~q\);

-- Location: FF_X23_Y8_N21
\inst|ecuacion1|MREG[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|ecuacion1|MREG[7]~feeder_combout\,
	asdata => \inst|ecuacion1|registro[2][3]~q\,
	sload => \inst|ecuacion1|pr_state.state8~q\,
	ena => \inst|ecuacion1|MREG[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|MREG\(7));

-- Location: LCCOMB_X22_Y7_N12
\inst|ecuacion1|alu1|unidad_aritmetica|mult|inter[10]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|mult|inter\(10) = (\inst|ecuacion1|MREG\(14) & \inst|ecuacion1|MREG\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(14),
	datad => \inst|ecuacion1|MREG\(6),
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|mult|inter\(10));

-- Location: FF_X24_Y3_N27
\inst|ecuacion1|registro[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|ecuacion1|alu1|Mux7~5_combout\,
	sload => VCC,
	ena => \inst|ecuacion1|pr_state~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|registro[0][2]~q\);

-- Location: LCCOMB_X24_Y3_N26
\inst|ecuacion1|Selector21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|Selector21~0_combout\ = (\inst|ecuacion1|pr_state.state6~q\ & (((\inst|ecuacion1|registro[0][2]~q\)))) # (!\inst|ecuacion1|pr_state.state6~q\ & (\inst|ecuacion1|addr1\(0) & (\inst|ecuacion1|addr1\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|addr1\(0),
	datab => \inst|ecuacion1|addr1\(1),
	datac => \inst|ecuacion1|registro[0][2]~q\,
	datad => \inst|ecuacion1|pr_state.state6~q\,
	combout => \inst|ecuacion1|Selector21~0_combout\);

-- Location: LCCOMB_X22_Y7_N28
\inst|ecuacion1|MREG[16]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|MREG[16]~feeder_combout\ = \inst|ecuacion1|Selector21~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|Selector21~0_combout\,
	combout => \inst|ecuacion1|MREG[16]~feeder_combout\);

-- Location: FF_X25_Y4_N5
\inst|ecuacion1|registro[3][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|ecuacion1|alu1|Mux7~5_combout\,
	sload => VCC,
	ena => \inst|ecuacion1|pr_state~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|registro[3][2]~q\);

-- Location: FF_X22_Y7_N29
\inst|ecuacion1|MREG[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|ecuacion1|MREG[16]~feeder_combout\,
	asdata => \inst|ecuacion1|registro[3][2]~q\,
	sload => \inst|ecuacion1|pr_state.state8~q\,
	ena => \inst|ecuacion1|MREG[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|MREG\(16));

-- Location: LCCOMB_X22_Y7_N10
\inst|ecuacion1|alu1|unidad_aritmetica|mult|inter[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|mult|inter\(2) = (\inst|ecuacion1|MREG\(4) & \inst|ecuacion1|MREG\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|ecuacion1|MREG\(4),
	datad => \inst|ecuacion1|MREG\(16),
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|mult|inter\(2));

-- Location: LCCOMB_X22_Y4_N20
\inst|ecuacion1|registro[3][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|registro[3][1]~feeder_combout\ = \inst|ecuacion1|alu1|Mux8~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|ecuacion1|alu1|Mux8~4_combout\,
	combout => \inst|ecuacion1|registro[3][1]~feeder_combout\);

-- Location: FF_X22_Y4_N21
\inst|ecuacion1|registro[3][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|ecuacion1|registro[3][1]~feeder_combout\,
	ena => \inst|ecuacion1|pr_state~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|registro[3][1]~q\);

-- Location: FF_X22_Y4_N11
\inst|ecuacion1|registro[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|ecuacion1|alu1|Mux8~4_combout\,
	sload => VCC,
	ena => \inst|ecuacion1|pr_state~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|registro[0][1]~q\);

-- Location: LCCOMB_X22_Y4_N10
\inst|ecuacion1|Selector22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|Selector22~0_combout\ = (\inst|ecuacion1|pr_state.state8~q\ & (\inst|ecuacion1|registro[3][1]~q\)) # (!\inst|ecuacion1|pr_state.state8~q\ & (((\inst|ecuacion1|pr_state.state6~q\ & \inst|ecuacion1|registro[0][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|registro[3][1]~q\,
	datab => \inst|ecuacion1|pr_state.state6~q\,
	datac => \inst|ecuacion1|registro[0][1]~q\,
	datad => \inst|ecuacion1|pr_state.state8~q\,
	combout => \inst|ecuacion1|Selector22~0_combout\);

-- Location: FF_X23_Y7_N23
\inst|ecuacion1|MREG[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|ecuacion1|Selector22~0_combout\,
	sload => VCC,
	ena => \inst|ecuacion1|MREG[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|MREG\(15));

-- Location: LCCOMB_X26_Y7_N8
\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi1|s1|Suma\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi1|s1|Suma~combout\ = (\inst|ecuacion1|MREG\(4) & (\inst|ecuacion1|MREG\(15) $ (((\inst|ecuacion1|MREG\(5) & \inst|ecuacion1|MREG\(14)))))) # (!\inst|ecuacion1|MREG\(4) & (\inst|ecuacion1|MREG\(5) & 
-- ((\inst|ecuacion1|MREG\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(4),
	datab => \inst|ecuacion1|MREG\(5),
	datac => \inst|ecuacion1|MREG\(15),
	datad => \inst|ecuacion1|MREG\(14),
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi1|s1|Suma~combout\);

-- Location: LCCOMB_X26_Y7_N30
\inst|ecuacion1|alu1|unidad_aritmetica|resta|s1|Suma\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|resta|s1|Suma~combout\ = \inst|ecuacion1|MREG\(5) $ (\inst|ecuacion1|MREG\(15) $ (((\inst|ecuacion1|MREG\(14)) # (!\inst|ecuacion1|MREG\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001101101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(4),
	datab => \inst|ecuacion1|MREG\(5),
	datac => \inst|ecuacion1|MREG\(15),
	datad => \inst|ecuacion1|MREG\(14),
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|resta|s1|Suma~combout\);

-- Location: LCCOMB_X26_Y7_N2
\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~7_combout\ = (\inst|ecuacion1|alu1|Mux10~0_combout\ & ((\inst|ecuacion1|alu1|unidad_aritmetica|resta|s1|Suma~combout\))) # (!\inst|ecuacion1|alu1|Mux10~0_combout\ & 
-- (!\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi1|s1|Suma~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi1|s1|Suma~combout\,
	datac => \inst|ecuacion1|alu1|unidad_aritmetica|resta|s1|Suma~combout\,
	datad => \inst|ecuacion1|alu1|Mux10~0_combout\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~7_combout\);

-- Location: LCCOMB_X24_Y4_N10
\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~10_cout\ = CARRY(!\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~8_combout\,
	datad => VCC,
	cout => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~10_cout\);

-- Location: LCCOMB_X24_Y4_N12
\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~11_combout\ = (\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~7_combout\ & (!\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~10_cout\)) # 
-- (!\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~7_combout\ & ((\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~10_cout\) # (GND)))
-- \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~12\ = CARRY((!\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~10_cout\) # (!\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~7_combout\,
	datad => VCC,
	cin => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~10_cout\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~11_combout\,
	cout => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~12\);

-- Location: LCCOMB_X25_Y7_N0
\inst|ecuacion1|alu1|Mux8~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|Mux8~3_combout\ = (\inst|ecuacion1|alu1|Mux3~8_combout\ & ((\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~11_combout\))) # (!\inst|ecuacion1|alu1|Mux3~8_combout\ & (\inst|ecuacion1|MREG\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(3),
	datac => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~11_combout\,
	datad => \inst|ecuacion1|alu1|Mux3~8_combout\,
	combout => \inst|ecuacion1|alu1|Mux8~3_combout\);

-- Location: LCCOMB_X23_Y6_N10
\inst|ecuacion1|alu1|unidad_logica|aux[1]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_logica|aux[1]~13_combout\ = (\inst|ecuacion1|MREG\(14) & (!\inst|ecuacion1|MREG\(15) & VCC)) # (!\inst|ecuacion1|MREG\(14) & (\inst|ecuacion1|MREG\(15) $ (GND)))
-- \inst|ecuacion1|alu1|unidad_logica|aux[1]~14\ = CARRY((!\inst|ecuacion1|MREG\(14) & !\inst|ecuacion1|MREG\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(14),
	datab => \inst|ecuacion1|MREG\(15),
	datad => VCC,
	combout => \inst|ecuacion1|alu1|unidad_logica|aux[1]~13_combout\,
	cout => \inst|ecuacion1|alu1|unidad_logica|aux[1]~14\);

-- Location: LCCOMB_X22_Y6_N6
\inst|ecuacion1|alu1|unidad_logica|aux[0]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_logica|aux[0]~32_combout\ = (!\inst|ecuacion1|MREG\(2) & (\inst|ecuacion1|MREG\(1) & !\inst|ecuacion1|MREG\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(2),
	datac => \inst|ecuacion1|MREG\(1),
	datad => \inst|ecuacion1|MREG\(0),
	combout => \inst|ecuacion1|alu1|unidad_logica|aux[0]~32_combout\);

-- Location: FF_X23_Y6_N11
\inst|ecuacion1|alu1|unidad_logica|aux[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|ecuacion1|alu1|unidad_logica|aux[1]~13_combout\,
	ena => \inst|ecuacion1|alu1|unidad_logica|aux[0]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|alu1|unidad_logica|aux\(1));

-- Location: LCCOMB_X26_Y7_N16
\inst|ecuacion1|alu1|unidad_logica|salida~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_logica|salida~25_combout\ = (\inst|ecuacion1|MREG\(15) & (((\inst|ecuacion1|alu1|Mux10~0_combout\)))) # (!\inst|ecuacion1|MREG\(15) & (((\inst|ecuacion1|MREG\(5) & \inst|ecuacion1|alu1|Mux10~0_combout\)) # 
-- (!\inst|ecuacion1|alu1|Mux11~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|Mux11~0_combout\,
	datab => \inst|ecuacion1|MREG\(15),
	datac => \inst|ecuacion1|MREG\(5),
	datad => \inst|ecuacion1|alu1|Mux10~0_combout\,
	combout => \inst|ecuacion1|alu1|unidad_logica|salida~25_combout\);

-- Location: LCCOMB_X26_Y7_N20
\inst|ecuacion1|alu1|unidad_logica|salida~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_logica|salida~26_combout\ = (\inst|ecuacion1|alu1|unidad_logica|salida~25_combout\ & (((\inst|ecuacion1|alu1|unidad_logica|salida~0_combout\) # (!\inst|ecuacion1|alu1|Mux3~15_combout\)))) # 
-- (!\inst|ecuacion1|alu1|unidad_logica|salida~25_combout\ & (\inst|ecuacion1|alu1|unidad_logica|aux\(1) & (\inst|ecuacion1|alu1|Mux3~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|unidad_logica|aux\(1),
	datab => \inst|ecuacion1|alu1|unidad_logica|salida~25_combout\,
	datac => \inst|ecuacion1|alu1|Mux3~15_combout\,
	datad => \inst|ecuacion1|alu1|unidad_logica|salida~0_combout\,
	combout => \inst|ecuacion1|alu1|unidad_logica|salida~26_combout\);

-- Location: FF_X26_Y7_N21
\inst|ecuacion1|alu1|unidad_logica|salida[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|ecuacion1|alu1|unidad_logica|salida~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|alu1|unidad_logica|salida\(1));

-- Location: LCCOMB_X26_Y6_N0
\inst|ecuacion1|alu1|Mux6~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|Mux6~14_combout\ = (\inst|ecuacion1|MREG\(0) & ((\inst|ecuacion1|MREG\(2) & ((\inst|ecuacion1|MREG\(3)) # (!\inst|ecuacion1|MREG\(1)))) # (!\inst|ecuacion1|MREG\(2) & ((\inst|ecuacion1|MREG\(1)) # (!\inst|ecuacion1|MREG\(3)))))) # 
-- (!\inst|ecuacion1|MREG\(0) & ((\inst|ecuacion1|MREG\(2)) # ((!\inst|ecuacion1|MREG\(3) & \inst|ecuacion1|MREG\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(0),
	datab => \inst|ecuacion1|MREG\(2),
	datac => \inst|ecuacion1|MREG\(3),
	datad => \inst|ecuacion1|MREG\(1),
	combout => \inst|ecuacion1|alu1|Mux6~14_combout\);

-- Location: FF_X25_Y7_N9
\inst|ecuacion1|alu1|barrel_shifters|aux[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|ecuacion1|MREG\(14),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|alu1|barrel_shifters|aux\(1));

-- Location: FF_X25_Y7_N5
\inst|ecuacion1|alu1|barrel_shifters|salShifters[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|ecuacion1|alu1|barrel_shifters|aux\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|alu1|barrel_shifters|salShifters\(1));

-- Location: LCCOMB_X22_Y7_N20
\inst|ecuacion1|alu1|unidad_aritmetica|mult|inter[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|mult|inter\(4) = (\inst|ecuacion1|MREG\(4) & \inst|ecuacion1|MREG\(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|ecuacion1|MREG\(4),
	datad => \inst|ecuacion1|MREG\(18),
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|mult|inter\(4));

-- Location: LCCOMB_X23_Y7_N0
\inst|ecuacion1|alu1|unidad_aritmetica|mult|inter[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|mult|inter\(3) = (\inst|ecuacion1|MREG\(4) & \inst|ecuacion1|MREG\(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(4),
	datac => \inst|ecuacion1|MREG\(17),
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|mult|inter\(3));

-- Location: LCCOMB_X23_Y7_N22
\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi1|s1|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi1|s1|Cout~0_combout\ = (\inst|ecuacion1|MREG\(4) & (\inst|ecuacion1|MREG\(14) & (\inst|ecuacion1|MREG\(15) & \inst|ecuacion1|MREG\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(4),
	datab => \inst|ecuacion1|MREG\(14),
	datac => \inst|ecuacion1|MREG\(15),
	datad => \inst|ecuacion1|MREG\(5),
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi1|s1|Cout~0_combout\);

-- Location: LCCOMB_X23_Y7_N12
\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi1|s2|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi1|s2|Cout~0_combout\ = (\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi1|s1|Cout~0_combout\ & ((\inst|ecuacion1|alu1|unidad_aritmetica|mult|inter\(2)) # ((\inst|ecuacion1|MREG\(5) & 
-- \inst|ecuacion1|MREG\(15))))) # (!\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi1|s1|Cout~0_combout\ & (\inst|ecuacion1|MREG\(5) & (\inst|ecuacion1|MREG\(15) & \inst|ecuacion1|alu1|unidad_aritmetica|mult|inter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi1|s1|Cout~0_combout\,
	datab => \inst|ecuacion1|MREG\(5),
	datac => \inst|ecuacion1|MREG\(15),
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|mult|inter\(2),
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi1|s2|Cout~0_combout\);

-- Location: LCCOMB_X23_Y7_N6
\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi1|s3|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi1|s3|Cout~0_combout\ = (\inst|ecuacion1|alu1|unidad_aritmetica|mult|inter\(3) & ((\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi1|s2|Cout~0_combout\) # ((\inst|ecuacion1|MREG\(5) & 
-- \inst|ecuacion1|MREG\(16))))) # (!\inst|ecuacion1|alu1|unidad_aritmetica|mult|inter\(3) & (\inst|ecuacion1|MREG\(5) & (\inst|ecuacion1|MREG\(16) & \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi1|s2|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(5),
	datab => \inst|ecuacion1|alu1|unidad_aritmetica|mult|inter\(3),
	datac => \inst|ecuacion1|MREG\(16),
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi1|s2|Cout~0_combout\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi1|s3|Cout~0_combout\);

-- Location: LCCOMB_X23_Y7_N28
\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi1|s4|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi1|s4|Cout~0_combout\ = (\inst|ecuacion1|alu1|unidad_aritmetica|mult|inter\(4) & ((\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi1|s3|Cout~0_combout\) # ((\inst|ecuacion1|MREG\(5) & 
-- \inst|ecuacion1|MREG\(17))))) # (!\inst|ecuacion1|alu1|unidad_aritmetica|mult|inter\(4) & (\inst|ecuacion1|MREG\(5) & (\inst|ecuacion1|MREG\(17) & \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi1|s3|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(5),
	datab => \inst|ecuacion1|MREG\(17),
	datac => \inst|ecuacion1|alu1|unidad_aritmetica|mult|inter\(4),
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi1|s3|Cout~0_combout\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi1|s4|Cout~0_combout\);

-- Location: LCCOMB_X23_Y7_N26
\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi1|s5|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi1|s5|Cout~0_combout\ = (\inst|ecuacion1|MREG\(5) & (\inst|ecuacion1|MREG\(18) & \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi1|s4|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|ecuacion1|MREG\(5),
	datac => \inst|ecuacion1|MREG\(18),
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi1|s4|Cout~0_combout\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi1|s5|Cout~0_combout\);

-- Location: LCCOMB_X23_Y7_N30
\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi1|s4|Suma\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi1|s4|Suma~combout\ = \inst|ecuacion1|alu1|unidad_aritmetica|mult|inter\(4) $ (\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi1|s3|Cout~0_combout\ $ (((\inst|ecuacion1|MREG\(5) & 
-- \inst|ecuacion1|MREG\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(5),
	datab => \inst|ecuacion1|MREG\(17),
	datac => \inst|ecuacion1|alu1|unidad_aritmetica|mult|inter\(4),
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi1|s3|Cout~0_combout\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi1|s4|Suma~combout\);

-- Location: LCCOMB_X22_Y7_N16
\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi2|s2|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi2|s2|Cout~0_combout\ = (\inst|ecuacion1|alu1|unidad_aritmetica|mult|inter\(10) & (\inst|ecuacion1|alu1|unidad_aritmetica|mult|inter\(2) $ (\inst|ecuacion1|alu1|unidad_logica|salida~0_combout\ $ 
-- (\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi1|s1|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|unidad_aritmetica|mult|inter\(10),
	datab => \inst|ecuacion1|alu1|unidad_aritmetica|mult|inter\(2),
	datac => \inst|ecuacion1|alu1|unidad_logica|salida~0_combout\,
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi1|s1|Cout~0_combout\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi2|s2|Cout~0_combout\);

-- Location: LCCOMB_X23_Y7_N10
\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi1|s3|Suma\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi1|s3|Suma~combout\ = \inst|ecuacion1|alu1|unidad_aritmetica|mult|inter\(3) $ (\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi1|s2|Cout~0_combout\ $ (((\inst|ecuacion1|MREG\(5) & 
-- \inst|ecuacion1|MREG\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(5),
	datab => \inst|ecuacion1|alu1|unidad_aritmetica|mult|inter\(3),
	datac => \inst|ecuacion1|MREG\(16),
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi1|s2|Cout~0_combout\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi1|s3|Suma~combout\);

-- Location: LCCOMB_X23_Y7_N2
\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi2|s3|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi2|s3|Cout~0_combout\ = (\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi2|s2|Cout~0_combout\ & ((\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi1|s3|Suma~combout\) # ((\inst|ecuacion1|MREG\(15) & 
-- \inst|ecuacion1|MREG\(6))))) # (!\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi2|s2|Cout~0_combout\ & (\inst|ecuacion1|MREG\(15) & (\inst|ecuacion1|MREG\(6) & \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi1|s3|Suma~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(15),
	datab => \inst|ecuacion1|MREG\(6),
	datac => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi2|s2|Cout~0_combout\,
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi1|s3|Suma~combout\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi2|s3|Cout~0_combout\);

-- Location: LCCOMB_X23_Y7_N16
\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi2|s4|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi2|s4|Cout~0_combout\ = (\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi1|s4|Suma~combout\ & ((\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi2|s3|Cout~0_combout\) # ((\inst|ecuacion1|MREG\(16) & 
-- \inst|ecuacion1|MREG\(6))))) # (!\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi1|s4|Suma~combout\ & (\inst|ecuacion1|MREG\(16) & (\inst|ecuacion1|MREG\(6) & \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi2|s3|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(16),
	datab => \inst|ecuacion1|MREG\(6),
	datac => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi1|s4|Suma~combout\,
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi2|s3|Cout~0_combout\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi2|s4|Cout~0_combout\);

-- Location: LCCOMB_X23_Y7_N24
\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi1|s5|Suma\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi1|s5|Suma~combout\ = \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi1|s4|Cout~0_combout\ $ (((\inst|ecuacion1|MREG\(5) & \inst|ecuacion1|MREG\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|ecuacion1|MREG\(5),
	datac => \inst|ecuacion1|MREG\(18),
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi1|s4|Cout~0_combout\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi1|s5|Suma~combout\);

-- Location: LCCOMB_X24_Y7_N0
\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi2|s5|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi2|s5|Cout~0_combout\ = (\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi2|s4|Cout~0_combout\ & ((\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi1|s5|Suma~combout\) # ((\inst|ecuacion1|MREG\(17) & 
-- \inst|ecuacion1|MREG\(6))))) # (!\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi2|s4|Cout~0_combout\ & (\inst|ecuacion1|MREG\(17) & (\inst|ecuacion1|MREG\(6) & \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi1|s5|Suma~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(17),
	datab => \inst|ecuacion1|MREG\(6),
	datac => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi2|s4|Cout~0_combout\,
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi1|s5|Suma~combout\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi2|s5|Cout~0_combout\);

-- Location: LCCOMB_X24_Y7_N2
\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi2|s6|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi2|s6|Cout~0_combout\ = (\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi1|s5|Cout~0_combout\ & ((\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi2|s5|Cout~0_combout\) # ((\inst|ecuacion1|MREG\(6) & 
-- \inst|ecuacion1|MREG\(18))))) # (!\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi1|s5|Cout~0_combout\ & (\inst|ecuacion1|MREG\(6) & (\inst|ecuacion1|MREG\(18) & \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi2|s5|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi1|s5|Cout~0_combout\,
	datab => \inst|ecuacion1|MREG\(6),
	datac => \inst|ecuacion1|MREG\(18),
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi2|s5|Cout~0_combout\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi2|s6|Cout~0_combout\);

-- Location: LCCOMB_X24_Y7_N22
\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi2|s6|Suma\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi2|s6|Suma~combout\ = \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi1|s5|Cout~0_combout\ $ (\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi2|s5|Cout~0_combout\ $ (((\inst|ecuacion1|MREG\(6) & 
-- \inst|ecuacion1|MREG\(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(6),
	datab => \inst|ecuacion1|MREG\(18),
	datac => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi1|s5|Cout~0_combout\,
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi2|s5|Cout~0_combout\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi2|s6|Suma~combout\);

-- Location: LCCOMB_X24_Y7_N4
\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi2|s5|Suma\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi2|s5|Suma~combout\ = \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi2|s4|Cout~0_combout\ $ (\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi1|s5|Suma~combout\ $ (((\inst|ecuacion1|MREG\(17) & 
-- \inst|ecuacion1|MREG\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(17),
	datab => \inst|ecuacion1|MREG\(6),
	datac => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi2|s4|Cout~0_combout\,
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi1|s5|Suma~combout\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi2|s5|Suma~combout\);

-- Location: LCCOMB_X23_Y7_N8
\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi2|s4|Suma\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi2|s4|Suma~combout\ = \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi1|s4|Suma~combout\ $ (\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi2|s3|Cout~0_combout\ $ (((\inst|ecuacion1|MREG\(16) & 
-- \inst|ecuacion1|MREG\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(16),
	datab => \inst|ecuacion1|MREG\(6),
	datac => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi1|s4|Suma~combout\,
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi2|s3|Cout~0_combout\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi2|s4|Suma~combout\);

-- Location: LCCOMB_X23_Y7_N14
\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi2|s3|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi2|s3|Suma~0_combout\ = \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi2|s2|Cout~0_combout\ $ (((\inst|ecuacion1|MREG\(15) & \inst|ecuacion1|MREG\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(15),
	datac => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi2|s2|Cout~0_combout\,
	datad => \inst|ecuacion1|MREG\(6),
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi2|s3|Suma~0_combout\);

-- Location: LCCOMB_X23_Y7_N20
\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi3|s3|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi3|s3|Cout~0_combout\ = (\inst|ecuacion1|MREG\(7) & (\inst|ecuacion1|MREG\(14) & (\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi2|s3|Suma~0_combout\ $ 
-- (\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi1|s3|Suma~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(7),
	datab => \inst|ecuacion1|MREG\(14),
	datac => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi2|s3|Suma~0_combout\,
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi1|s3|Suma~combout\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi3|s3|Cout~0_combout\);

-- Location: LCCOMB_X23_Y7_N18
\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi3|s4|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi3|s4|Cout~0_combout\ = (\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi2|s4|Suma~combout\ & ((\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi3|s3|Cout~0_combout\) # ((\inst|ecuacion1|MREG\(15) & 
-- \inst|ecuacion1|MREG\(7))))) # (!\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi2|s4|Suma~combout\ & (\inst|ecuacion1|MREG\(15) & (\inst|ecuacion1|MREG\(7) & \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi3|s3|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(15),
	datab => \inst|ecuacion1|MREG\(7),
	datac => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi2|s4|Suma~combout\,
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi3|s3|Cout~0_combout\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi3|s4|Cout~0_combout\);

-- Location: LCCOMB_X24_Y7_N18
\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi3|s5|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi3|s5|Cout~0_combout\ = (\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi2|s5|Suma~combout\ & ((\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi3|s4|Cout~0_combout\) # ((\inst|ecuacion1|MREG\(16) & 
-- \inst|ecuacion1|MREG\(7))))) # (!\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi2|s5|Suma~combout\ & (\inst|ecuacion1|MREG\(16) & (\inst|ecuacion1|MREG\(7) & \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi3|s4|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(16),
	datab => \inst|ecuacion1|MREG\(7),
	datac => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi2|s5|Suma~combout\,
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi3|s4|Cout~0_combout\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi3|s5|Cout~0_combout\);

-- Location: LCCOMB_X24_Y7_N20
\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi3|s6|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi3|s6|Cout~0_combout\ = (\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi2|s6|Suma~combout\ & ((\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi3|s5|Cout~0_combout\) # ((\inst|ecuacion1|MREG\(17) & 
-- \inst|ecuacion1|MREG\(7))))) # (!\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi2|s6|Suma~combout\ & (\inst|ecuacion1|MREG\(17) & (\inst|ecuacion1|MREG\(7) & \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi3|s5|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(17),
	datab => \inst|ecuacion1|MREG\(7),
	datac => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi2|s6|Suma~combout\,
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi3|s5|Cout~0_combout\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi3|s6|Cout~0_combout\);

-- Location: LCCOMB_X24_Y7_N8
\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi3|s7|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi3|s7|Suma~0_combout\ = \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi2|s6|Cout~0_combout\ $ (\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi3|s6|Cout~0_combout\ $ (((\inst|ecuacion1|MREG\(7) & 
-- \inst|ecuacion1|MREG\(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(7),
	datab => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi2|s6|Cout~0_combout\,
	datac => \inst|ecuacion1|MREG\(18),
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi3|s6|Cout~0_combout\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi3|s7|Suma~0_combout\);

-- Location: LCCOMB_X24_Y7_N26
\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi3|s6|Suma\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi3|s6|Suma~combout\ = \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi2|s6|Suma~combout\ $ (\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi3|s5|Cout~0_combout\ $ (((\inst|ecuacion1|MREG\(17) & 
-- \inst|ecuacion1|MREG\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(17),
	datab => \inst|ecuacion1|MREG\(7),
	datac => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi2|s6|Suma~combout\,
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi3|s5|Cout~0_combout\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi3|s6|Suma~combout\);

-- Location: LCCOMB_X21_Y7_N0
\inst|ecuacion1|alu1|unidad_aritmetica|mult|inter[16]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|mult|inter\(16) = (\inst|ecuacion1|MREG\(15) & \inst|ecuacion1|MREG\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|ecuacion1|MREG\(15),
	datad => \inst|ecuacion1|MREG\(7),
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|mult|inter\(16));

-- Location: LCCOMB_X23_Y6_N2
\inst|ecuacion1|alu1|unidad_aritmetica|mult|inter[20]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|mult|inter\(20) = (\inst|ecuacion1|MREG\(8) & \inst|ecuacion1|MREG\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|ecuacion1|MREG\(8),
	datac => \inst|ecuacion1|MREG\(14),
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|mult|inter\(20));

-- Location: LCCOMB_X23_Y7_N4
\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|s4|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|s4|Cout~0_combout\ = (\inst|ecuacion1|alu1|unidad_aritmetica|mult|inter\(20) & (\inst|ecuacion1|alu1|unidad_aritmetica|mult|inter\(16) $ 
-- (\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi2|s4|Suma~combout\ $ (\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi3|s3|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|unidad_aritmetica|mult|inter\(16),
	datab => \inst|ecuacion1|alu1|unidad_aritmetica|mult|inter\(20),
	datac => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi2|s4|Suma~combout\,
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi3|s3|Cout~0_combout\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|s4|Cout~0_combout\);

-- Location: LCCOMB_X24_Y7_N16
\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi3|s5|Suma\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi3|s5|Suma~combout\ = \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi2|s5|Suma~combout\ $ (\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi3|s4|Cout~0_combout\ $ (((\inst|ecuacion1|MREG\(16) & 
-- \inst|ecuacion1|MREG\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(16),
	datab => \inst|ecuacion1|MREG\(7),
	datac => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi2|s5|Suma~combout\,
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi3|s4|Cout~0_combout\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi3|s5|Suma~combout\);

-- Location: LCCOMB_X24_Y7_N10
\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|s5|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|s5|Cout~0_combout\ = (\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|s4|Cout~0_combout\ & ((\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi3|s5|Suma~combout\) # ((\inst|ecuacion1|MREG\(15) & 
-- \inst|ecuacion1|MREG\(8))))) # (!\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|s4|Cout~0_combout\ & (\inst|ecuacion1|MREG\(15) & (\inst|ecuacion1|MREG\(8) & \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi3|s5|Suma~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(15),
	datab => \inst|ecuacion1|MREG\(8),
	datac => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|s4|Cout~0_combout\,
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi3|s5|Suma~combout\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|s5|Cout~0_combout\);

-- Location: LCCOMB_X24_Y7_N12
\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|s6|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|s6|Cout~0_combout\ = (\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi3|s6|Suma~combout\ & ((\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|s5|Cout~0_combout\) # ((\inst|ecuacion1|MREG\(16) & 
-- \inst|ecuacion1|MREG\(8))))) # (!\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi3|s6|Suma~combout\ & (\inst|ecuacion1|MREG\(16) & (\inst|ecuacion1|MREG\(8) & \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|s5|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(16),
	datab => \inst|ecuacion1|MREG\(8),
	datac => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi3|s6|Suma~combout\,
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|s5|Cout~0_combout\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|s6|Cout~0_combout\);

-- Location: LCCOMB_X24_Y7_N6
\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|s7|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|s7|Cout~0_combout\ = (\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi3|s7|Suma~0_combout\ & ((\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|s6|Cout~0_combout\) # ((\inst|ecuacion1|MREG\(17) & 
-- \inst|ecuacion1|MREG\(8))))) # (!\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi3|s7|Suma~0_combout\ & (\inst|ecuacion1|MREG\(17) & (\inst|ecuacion1|MREG\(8) & \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|s6|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(17),
	datab => \inst|ecuacion1|MREG\(8),
	datac => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi3|s7|Suma~0_combout\,
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|s6|Cout~0_combout\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|s7|Cout~0_combout\);

-- Location: LCCOMB_X24_Y7_N28
\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi3|s7|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi3|s7|Cout~0_combout\ = (\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi3|s6|Cout~0_combout\ & ((\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi2|s6|Cout~0_combout\) # ((\inst|ecuacion1|MREG\(18) & 
-- \inst|ecuacion1|MREG\(7))))) # (!\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi3|s6|Cout~0_combout\ & (\inst|ecuacion1|MREG\(18) & (\inst|ecuacion1|MREG\(7) & \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi2|s6|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(18),
	datab => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi3|s6|Cout~0_combout\,
	datac => \inst|ecuacion1|MREG\(7),
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi2|s6|Cout~0_combout\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi3|s7|Cout~0_combout\);

-- Location: LCCOMB_X24_Y7_N14
\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|s8|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|s8|Cout~0_combout\ = (\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|s7|Cout~0_combout\ & ((\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi3|s7|Cout~0_combout\) # ((\inst|ecuacion1|MREG\(8) & 
-- \inst|ecuacion1|MREG\(18))))) # (!\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|s7|Cout~0_combout\ & (\inst|ecuacion1|MREG\(8) & (\inst|ecuacion1|MREG\(18) & \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi3|s7|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|s7|Cout~0_combout\,
	datab => \inst|ecuacion1|MREG\(8),
	datac => \inst|ecuacion1|MREG\(18),
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi3|s7|Cout~0_combout\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|s8|Cout~0_combout\);

-- Location: LCCOMB_X25_Y7_N2
\inst|ecuacion1|alu1|Mux3~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|Mux3~14_combout\ = (\inst|ecuacion1|alu1|Mux10~0_combout\ & (\inst|ecuacion1|alu1|Mux11~0_combout\ & (!\inst|ecuacion1|alu1|unidad_aritmetica|resta|s7|Cout~0_combout\))) # (!\inst|ecuacion1|alu1|Mux10~0_combout\ & 
-- (!\inst|ecuacion1|alu1|Mux11~0_combout\ & ((\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|s8|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|Mux10~0_combout\,
	datab => \inst|ecuacion1|alu1|Mux11~0_combout\,
	datac => \inst|ecuacion1|alu1|unidad_aritmetica|resta|s7|Cout~0_combout\,
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|s8|Cout~0_combout\,
	combout => \inst|ecuacion1|alu1|Mux3~14_combout\);

-- Location: LCCOMB_X25_Y7_N26
\inst|ecuacion1|alu1|Mux6~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|Mux6~10_combout\ = (\inst|ecuacion1|alu1|Mux3~8_combout\ & ((\inst|ecuacion1|alu1|Mux3~14_combout\))) # (!\inst|ecuacion1|alu1|Mux3~8_combout\ & (\inst|ecuacion1|alu1|Mux3~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|Mux3~8_combout\,
	datab => \inst|ecuacion1|alu1|Mux3~7_combout\,
	datad => \inst|ecuacion1|alu1|Mux3~14_combout\,
	combout => \inst|ecuacion1|alu1|Mux6~10_combout\);

-- Location: LCCOMB_X25_Y7_N4
\inst|ecuacion1|alu1|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|Mux8~0_combout\ = (\inst|ecuacion1|alu1|Mux6~14_combout\ & ((\inst|ecuacion1|alu1|Mux6~10_combout\ & (\inst|ecuacion1|alu1|unidad_logica|salida\(1))) # (!\inst|ecuacion1|alu1|Mux6~10_combout\ & 
-- ((\inst|ecuacion1|alu1|barrel_shifters|salShifters\(1)))))) # (!\inst|ecuacion1|alu1|Mux6~14_combout\ & (((\inst|ecuacion1|alu1|Mux6~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|unidad_logica|salida\(1),
	datab => \inst|ecuacion1|alu1|Mux6~14_combout\,
	datac => \inst|ecuacion1|alu1|barrel_shifters|salShifters\(1),
	datad => \inst|ecuacion1|alu1|Mux6~10_combout\,
	combout => \inst|ecuacion1|alu1|Mux8~0_combout\);

-- Location: LCCOMB_X22_Y8_N30
\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan0~1_combout\ = (\inst|ecuacion1|MREG\(7)) # ((\inst|ecuacion1|MREG\(11)) # ((\inst|ecuacion1|MREG\(8)) # (\inst|ecuacion1|MREG\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(7),
	datab => \inst|ecuacion1|MREG\(11),
	datac => \inst|ecuacion1|MREG\(8),
	datad => \inst|ecuacion1|MREG\(6),
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan0~1_combout\);

-- Location: LCCOMB_X22_Y8_N24
\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan0~0_combout\ = (\inst|ecuacion1|MREG\(9)) # ((\inst|ecuacion1|MREG\(10)) # ((\inst|ecuacion1|MREG\(4) & !\inst|ecuacion1|MREG\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(9),
	datab => \inst|ecuacion1|MREG\(4),
	datac => \inst|ecuacion1|MREG\(10),
	datad => \inst|ecuacion1|MREG\(17),
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan0~0_combout\);

-- Location: LCCOMB_X22_Y8_N0
\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~0_combout\ = (\inst|ecuacion1|MREG\(4) & (\inst|ecuacion1|MREG\(17) $ (VCC))) # (!\inst|ecuacion1|MREG\(4) & ((\inst|ecuacion1|MREG\(17)) # (GND)))
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~1\ = CARRY((\inst|ecuacion1|MREG\(17)) # (!\inst|ecuacion1|MREG\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(4),
	datab => \inst|ecuacion1|MREG\(17),
	datad => VCC,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~0_combout\,
	cout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~1\);

-- Location: LCCOMB_X22_Y8_N2
\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~2_combout\ = (\inst|ecuacion1|MREG\(5) & ((\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~1\) # (GND))) # (!\inst|ecuacion1|MREG\(5) & (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~1\))
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~3\ = CARRY((\inst|ecuacion1|MREG\(5)) # (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|ecuacion1|MREG\(5),
	datad => VCC,
	cin => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~1\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~2_combout\,
	cout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~3\);

-- Location: LCCOMB_X22_Y8_N4
\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~4_combout\ = (\inst|ecuacion1|MREG\(6) & (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~3\ & VCC)) # (!\inst|ecuacion1|MREG\(6) & (\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~3\ $ (GND)))
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~5\ = CARRY((!\inst|ecuacion1|MREG\(6) & !\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(6),
	datad => VCC,
	cin => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~3\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~4_combout\,
	cout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~5\);

-- Location: LCCOMB_X22_Y8_N6
\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~6_combout\ = (\inst|ecuacion1|MREG\(7) & ((\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~5\) # (GND))) # (!\inst|ecuacion1|MREG\(7) & (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~5\))
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~7\ = CARRY((\inst|ecuacion1|MREG\(7)) # (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(7),
	datad => VCC,
	cin => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~5\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~6_combout\,
	cout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~7\);

-- Location: LCCOMB_X22_Y8_N8
\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~8_combout\ = (\inst|ecuacion1|MREG\(8) & (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~7\ & VCC)) # (!\inst|ecuacion1|MREG\(8) & (\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~7\ $ (GND)))
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~9\ = CARRY((!\inst|ecuacion1|MREG\(8) & !\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|ecuacion1|MREG\(8),
	datad => VCC,
	cin => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~7\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~8_combout\,
	cout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~9\);

-- Location: LCCOMB_X22_Y8_N10
\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~10_combout\ = (\inst|ecuacion1|MREG\(9) & ((\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~9\) # (GND))) # (!\inst|ecuacion1|MREG\(9) & (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~9\))
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~11\ = CARRY((\inst|ecuacion1|MREG\(9)) # (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(9),
	datad => VCC,
	cin => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~9\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~10_combout\,
	cout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~11\);

-- Location: LCCOMB_X22_Y8_N16
\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~15_combout\ = (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan0~1_combout\ & (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan0~0_combout\ & (!\inst|ecuacion1|MREG\(5) & 
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan0~1_combout\,
	datab => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan0~0_combout\,
	datac => \inst|ecuacion1|MREG\(5),
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~10_combout\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~15_combout\);

-- Location: LCCOMB_X22_Y8_N12
\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~12_combout\ = \inst|ecuacion1|MREG\(10) $ (\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~11\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|ecuacion1|MREG\(10),
	cin => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~11\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~12_combout\);

-- Location: LCCOMB_X23_Y8_N24
\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~14_combout\ = (!\inst|ecuacion1|MREG\(5) & (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan0~1_combout\ & (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan0~0_combout\ & 
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(5),
	datab => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan0~1_combout\,
	datac => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan0~0_combout\,
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~12_combout\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~14_combout\);

-- Location: LCCOMB_X22_Y8_N22
\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~16_combout\ = (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan0~1_combout\ & (!\inst|ecuacion1|MREG\(5) & (\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~8_combout\ & 
-- !\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan0~1_combout\,
	datab => \inst|ecuacion1|MREG\(5),
	datac => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~8_combout\,
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan0~0_combout\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~16_combout\);

-- Location: LCCOMB_X22_Y8_N20
\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~17_combout\ = (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan0~1_combout\ & (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan0~0_combout\ & (!\inst|ecuacion1|MREG\(5) & 
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan0~1_combout\,
	datab => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan0~0_combout\,
	datac => \inst|ecuacion1|MREG\(5),
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~6_combout\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~17_combout\);

-- Location: LCCOMB_X22_Y8_N14
\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~18_combout\ = (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan0~1_combout\ & (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan0~0_combout\ & 
-- (\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~4_combout\ & !\inst|ecuacion1|MREG\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan0~1_combout\,
	datab => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan0~0_combout\,
	datac => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~4_combout\,
	datad => \inst|ecuacion1|MREG\(5),
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~18_combout\);

-- Location: LCCOMB_X22_Y8_N28
\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~19_combout\ = (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan0~1_combout\ & (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan0~0_combout\ & (!\inst|ecuacion1|MREG\(5) & 
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan0~1_combout\,
	datab => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan0~0_combout\,
	datac => \inst|ecuacion1|MREG\(5),
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~2_combout\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~19_combout\);

-- Location: LCCOMB_X23_Y8_N2
\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan0~2_combout\ = (\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan0~0_combout\) # ((\inst|ecuacion1|MREG\(5)) # (\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan0~0_combout\,
	datac => \inst|ecuacion1|MREG\(5),
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan0~1_combout\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan0~2_combout\);

-- Location: LCCOMB_X23_Y8_N22
\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~20_combout\ = (\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan0~2_combout\ & (\inst|ecuacion1|MREG\(17))) # (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan0~2_combout\ & 
-- ((\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(17),
	datac => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~0_combout\,
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan0~2_combout\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~20_combout\);

-- Location: LCCOMB_X23_Y8_N4
\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan1~1_cout\ = CARRY((!\inst|ecuacion1|MREG\(16) & \inst|ecuacion1|MREG\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(16),
	datab => \inst|ecuacion1|MREG\(4),
	datad => VCC,
	cout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan1~1_cout\);

-- Location: LCCOMB_X23_Y8_N6
\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan1~3_cout\ = CARRY((\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~20_combout\ & ((!\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan1~1_cout\) # (!\inst|ecuacion1|MREG\(5)))) # 
-- (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~20_combout\ & (!\inst|ecuacion1|MREG\(5) & !\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan1~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~20_combout\,
	datab => \inst|ecuacion1|MREG\(5),
	datad => VCC,
	cin => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan1~1_cout\,
	cout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan1~3_cout\);

-- Location: LCCOMB_X23_Y8_N8
\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan1~5_cout\ = CARRY((\inst|ecuacion1|MREG\(6) & ((!\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan1~3_cout\) # (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~19_combout\))) # 
-- (!\inst|ecuacion1|MREG\(6) & (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~19_combout\ & !\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan1~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(6),
	datab => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~19_combout\,
	datad => VCC,
	cin => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan1~3_cout\,
	cout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan1~5_cout\);

-- Location: LCCOMB_X23_Y8_N10
\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan1~7_cout\ = CARRY((\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~18_combout\ & ((!\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan1~5_cout\) # (!\inst|ecuacion1|MREG\(7)))) # 
-- (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~18_combout\ & (!\inst|ecuacion1|MREG\(7) & !\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan1~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~18_combout\,
	datab => \inst|ecuacion1|MREG\(7),
	datad => VCC,
	cin => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan1~5_cout\,
	cout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan1~7_cout\);

-- Location: LCCOMB_X23_Y8_N12
\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan1~9_cout\ = CARRY((\inst|ecuacion1|MREG\(8) & ((!\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan1~7_cout\) # (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~17_combout\))) # 
-- (!\inst|ecuacion1|MREG\(8) & (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~17_combout\ & !\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan1~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(8),
	datab => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~17_combout\,
	datad => VCC,
	cin => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan1~7_cout\,
	cout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan1~9_cout\);

-- Location: LCCOMB_X23_Y8_N14
\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan1~11_cout\ = CARRY((\inst|ecuacion1|MREG\(9) & (\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~16_combout\ & !\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan1~9_cout\)) # 
-- (!\inst|ecuacion1|MREG\(9) & ((\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~16_combout\) # (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan1~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(9),
	datab => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~16_combout\,
	datad => VCC,
	cin => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan1~9_cout\,
	cout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan1~11_cout\);

-- Location: LCCOMB_X23_Y8_N16
\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan1~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan1~13_cout\ = CARRY((\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~15_combout\ & (\inst|ecuacion1|MREG\(10) & !\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan1~11_cout\)) # 
-- (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~15_combout\ & ((\inst|ecuacion1|MREG\(10)) # (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan1~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~15_combout\,
	datab => \inst|ecuacion1|MREG\(10),
	datad => VCC,
	cin => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan1~11_cout\,
	cout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan1~13_cout\);

-- Location: LCCOMB_X23_Y8_N18
\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan1~14_combout\ = (\inst|ecuacion1|MREG\(11) & ((\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan1~13_cout\) # (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~14_combout\))) # 
-- (!\inst|ecuacion1|MREG\(11) & (\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan1~13_cout\ & !\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|ecuacion1|MREG\(11),
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~14_combout\,
	cin => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan1~13_cout\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan1~14_combout\);

-- Location: LCCOMB_X24_Y8_N0
\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~0_combout\ = (\inst|ecuacion1|MREG\(16) & ((GND) # (!\inst|ecuacion1|MREG\(4)))) # (!\inst|ecuacion1|MREG\(16) & (\inst|ecuacion1|MREG\(4) $ (GND)))
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~1\ = CARRY((\inst|ecuacion1|MREG\(16)) # (!\inst|ecuacion1|MREG\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(16),
	datab => \inst|ecuacion1|MREG\(4),
	datad => VCC,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~0_combout\,
	cout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~1\);

-- Location: LCCOMB_X24_Y8_N2
\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~2_combout\ = (\inst|ecuacion1|MREG\(5) & ((\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~20_combout\ & (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~1\)) # 
-- (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~20_combout\ & ((\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~1\) # (GND))))) # (!\inst|ecuacion1|MREG\(5) & ((\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~20_combout\ & 
-- (\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~1\ & VCC)) # (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~20_combout\ & (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~1\))))
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~3\ = CARRY((\inst|ecuacion1|MREG\(5) & ((!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~1\) # (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~20_combout\))) # (!\inst|ecuacion1|MREG\(5) & 
-- (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~20_combout\ & !\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(5),
	datab => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~20_combout\,
	datad => VCC,
	cin => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~1\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~2_combout\,
	cout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~3\);

-- Location: LCCOMB_X24_Y8_N4
\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~4_combout\ = ((\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~19_combout\ $ (\inst|ecuacion1|MREG\(6) $ (\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~3\)))) # (GND)
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~5\ = CARRY((\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~19_combout\ & ((!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~3\) # (!\inst|ecuacion1|MREG\(6)))) # 
-- (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~19_combout\ & (!\inst|ecuacion1|MREG\(6) & !\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~19_combout\,
	datab => \inst|ecuacion1|MREG\(6),
	datad => VCC,
	cin => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~3\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~4_combout\,
	cout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~5\);

-- Location: LCCOMB_X24_Y8_N6
\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~6_combout\ = (\inst|ecuacion1|MREG\(7) & ((\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~18_combout\ & (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~5\)) # 
-- (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~18_combout\ & ((\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~5\) # (GND))))) # (!\inst|ecuacion1|MREG\(7) & ((\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~18_combout\ & 
-- (\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~5\ & VCC)) # (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~18_combout\ & (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~5\))))
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~7\ = CARRY((\inst|ecuacion1|MREG\(7) & ((!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~5\) # (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~18_combout\))) # (!\inst|ecuacion1|MREG\(7) & 
-- (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~18_combout\ & !\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(7),
	datab => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~18_combout\,
	datad => VCC,
	cin => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~5\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~6_combout\,
	cout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~7\);

-- Location: LCCOMB_X24_Y8_N8
\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~8_combout\ = ((\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~17_combout\ $ (\inst|ecuacion1|MREG\(8) $ (\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~7\)))) # (GND)
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~9\ = CARRY((\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~17_combout\ & ((!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~7\) # (!\inst|ecuacion1|MREG\(8)))) # 
-- (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~17_combout\ & (!\inst|ecuacion1|MREG\(8) & !\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~17_combout\,
	datab => \inst|ecuacion1|MREG\(8),
	datad => VCC,
	cin => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~7\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~8_combout\,
	cout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~9\);

-- Location: LCCOMB_X24_Y8_N10
\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~10_combout\ = (\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~16_combout\ & ((\inst|ecuacion1|MREG\(9) & (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~9\)) # (!\inst|ecuacion1|MREG\(9) & 
-- (\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~9\ & VCC)))) # (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~16_combout\ & ((\inst|ecuacion1|MREG\(9) & ((\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~9\) # (GND))) # (!\inst|ecuacion1|MREG\(9) & 
-- (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~9\))))
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~11\ = CARRY((\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~16_combout\ & (\inst|ecuacion1|MREG\(9) & !\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~9\)) # 
-- (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~16_combout\ & ((\inst|ecuacion1|MREG\(9)) # (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~16_combout\,
	datab => \inst|ecuacion1|MREG\(9),
	datad => VCC,
	cin => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~9\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~10_combout\,
	cout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~11\);

-- Location: LCCOMB_X24_Y8_N12
\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~12_combout\ = \inst|ecuacion1|MREG\(10) $ (\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~11\ $ (\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(10),
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~15_combout\,
	cin => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~11\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~12_combout\);

-- Location: LCCOMB_X25_Y8_N20
\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~14_combout\ = (\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan1~14_combout\ & (\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~15_combout\)) # 
-- (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan1~14_combout\ & ((\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~15_combout\,
	datac => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan1~14_combout\,
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~12_combout\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~14_combout\);

-- Location: LCCOMB_X25_Y8_N22
\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~15_combout\ = (\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan1~14_combout\ & (\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~16_combout\)) # 
-- (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan1~14_combout\ & ((\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~16_combout\,
	datac => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan1~14_combout\,
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~10_combout\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~15_combout\);

-- Location: LCCOMB_X25_Y8_N28
\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~16_combout\ = (\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan1~14_combout\ & (\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~17_combout\)) # 
-- (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan1~14_combout\ & ((\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~17_combout\,
	datac => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan1~14_combout\,
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~8_combout\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~16_combout\);

-- Location: LCCOMB_X24_Y8_N14
\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~17_combout\ = (\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan1~14_combout\ & ((\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~18_combout\))) # 
-- (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan1~14_combout\ & (\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~6_combout\,
	datac => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~18_combout\,
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan1~14_combout\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~17_combout\);

-- Location: LCCOMB_X24_Y8_N16
\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~18_combout\ = (\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan1~14_combout\ & (\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~19_combout\)) # 
-- (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan1~14_combout\ & ((\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~19_combout\,
	datac => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~4_combout\,
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan1~14_combout\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~18_combout\);

-- Location: LCCOMB_X23_Y8_N28
\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~19_combout\ = (\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan1~14_combout\ & ((\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~20_combout\))) # 
-- (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan1~14_combout\ & (\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~2_combout\,
	datac => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add0~20_combout\,
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan1~14_combout\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~19_combout\);

-- Location: LCCOMB_X23_Y8_N26
\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~20_combout\ = (\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan1~14_combout\ & (\inst|ecuacion1|MREG\(16))) # (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan1~14_combout\ & 
-- ((\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(16),
	datac => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~0_combout\,
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan1~14_combout\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~20_combout\);

-- Location: LCCOMB_X25_Y8_N4
\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan2~1_cout\ = CARRY((!\inst|ecuacion1|MREG\(15) & \inst|ecuacion1|MREG\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(15),
	datab => \inst|ecuacion1|MREG\(4),
	datad => VCC,
	cout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan2~1_cout\);

-- Location: LCCOMB_X25_Y8_N6
\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan2~3_cout\ = CARRY((\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~20_combout\ & ((!\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan2~1_cout\) # (!\inst|ecuacion1|MREG\(5)))) # 
-- (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~20_combout\ & (!\inst|ecuacion1|MREG\(5) & !\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan2~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~20_combout\,
	datab => \inst|ecuacion1|MREG\(5),
	datad => VCC,
	cin => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan2~1_cout\,
	cout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan2~3_cout\);

-- Location: LCCOMB_X25_Y8_N8
\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan2~5_cout\ = CARRY((\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~19_combout\ & (\inst|ecuacion1|MREG\(6) & !\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan2~3_cout\)) # 
-- (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~19_combout\ & ((\inst|ecuacion1|MREG\(6)) # (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan2~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~19_combout\,
	datab => \inst|ecuacion1|MREG\(6),
	datad => VCC,
	cin => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan2~3_cout\,
	cout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan2~5_cout\);

-- Location: LCCOMB_X25_Y8_N10
\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan2~7_cout\ = CARRY((\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~18_combout\ & ((!\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan2~5_cout\) # (!\inst|ecuacion1|MREG\(7)))) # 
-- (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~18_combout\ & (!\inst|ecuacion1|MREG\(7) & !\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan2~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~18_combout\,
	datab => \inst|ecuacion1|MREG\(7),
	datad => VCC,
	cin => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan2~5_cout\,
	cout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan2~7_cout\);

-- Location: LCCOMB_X25_Y8_N12
\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan2~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan2~9_cout\ = CARRY((\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~17_combout\ & (\inst|ecuacion1|MREG\(8) & !\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan2~7_cout\)) # 
-- (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~17_combout\ & ((\inst|ecuacion1|MREG\(8)) # (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan2~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~17_combout\,
	datab => \inst|ecuacion1|MREG\(8),
	datad => VCC,
	cin => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan2~7_cout\,
	cout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan2~9_cout\);

-- Location: LCCOMB_X25_Y8_N14
\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan2~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan2~11_cout\ = CARRY((\inst|ecuacion1|MREG\(9) & (\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~16_combout\ & !\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan2~9_cout\)) # 
-- (!\inst|ecuacion1|MREG\(9) & ((\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~16_combout\) # (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan2~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(9),
	datab => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~16_combout\,
	datad => VCC,
	cin => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan2~9_cout\,
	cout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan2~11_cout\);

-- Location: LCCOMB_X25_Y8_N16
\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan2~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan2~13_cout\ = CARRY((\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~15_combout\ & (\inst|ecuacion1|MREG\(10) & !\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan2~11_cout\)) # 
-- (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~15_combout\ & ((\inst|ecuacion1|MREG\(10)) # (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan2~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~15_combout\,
	datab => \inst|ecuacion1|MREG\(10),
	datad => VCC,
	cin => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan2~11_cout\,
	cout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan2~13_cout\);

-- Location: LCCOMB_X25_Y8_N18
\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan2~14_combout\ = (\inst|ecuacion1|MREG\(11) & ((\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan2~13_cout\) # (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~14_combout\))) # 
-- (!\inst|ecuacion1|MREG\(11) & (\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan2~13_cout\ & !\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|ecuacion1|MREG\(11),
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~14_combout\,
	cin => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan2~13_cout\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan2~14_combout\);

-- Location: LCCOMB_X26_Y7_N22
\inst|ecuacion1|alu1|unidad_aritmetica|suma|s1|Suma\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|suma|s1|Suma~combout\ = \inst|ecuacion1|MREG\(5) $ (\inst|ecuacion1|MREG\(15) $ (((\inst|ecuacion1|MREG\(14) & \inst|ecuacion1|MREG\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(14),
	datab => \inst|ecuacion1|MREG\(5),
	datac => \inst|ecuacion1|MREG\(15),
	datad => \inst|ecuacion1|MREG\(4),
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|suma|s1|Suma~combout\);

-- Location: LCCOMB_X26_Y7_N24
\inst|ecuacion1|alu1|Mux8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|Mux8~1_combout\ = (\inst|ecuacion1|alu1|Mux10~0_combout\ & (((\inst|ecuacion1|alu1|unidad_aritmetica|suma|s1|Suma~combout\) # (\inst|ecuacion1|alu1|Mux11~0_combout\)))) # (!\inst|ecuacion1|alu1|Mux10~0_combout\ & 
-- (\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi1|s1|Suma~combout\ & ((!\inst|ecuacion1|alu1|Mux11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|Mux10~0_combout\,
	datab => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi1|s1|Suma~combout\,
	datac => \inst|ecuacion1|alu1|unidad_aritmetica|suma|s1|Suma~combout\,
	datad => \inst|ecuacion1|alu1|Mux11~0_combout\,
	combout => \inst|ecuacion1|alu1|Mux8~1_combout\);

-- Location: LCCOMB_X25_Y7_N10
\inst|ecuacion1|alu1|Mux8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|Mux8~2_combout\ = (\inst|ecuacion1|alu1|Mux11~0_combout\ & ((\inst|ecuacion1|alu1|Mux8~1_combout\ & (!\inst|ecuacion1|alu1|unidad_aritmetica|resta|s1|Suma~combout\)) # (!\inst|ecuacion1|alu1|Mux8~1_combout\ & 
-- ((!\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan2~14_combout\))))) # (!\inst|ecuacion1|alu1|Mux11~0_combout\ & (((\inst|ecuacion1|alu1|Mux8~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|unidad_aritmetica|resta|s1|Suma~combout\,
	datab => \inst|ecuacion1|alu1|Mux11~0_combout\,
	datac => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan2~14_combout\,
	datad => \inst|ecuacion1|alu1|Mux8~1_combout\,
	combout => \inst|ecuacion1|alu1|Mux8~2_combout\);

-- Location: LCCOMB_X25_Y7_N16
\inst|ecuacion1|alu1|Mux8~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|Mux8~4_combout\ = (\inst|ecuacion1|alu1|Mux3~8_combout\ & ((\inst|ecuacion1|alu1|Mux8~0_combout\ & (\inst|ecuacion1|alu1|Mux8~3_combout\)) # (!\inst|ecuacion1|alu1|Mux8~0_combout\ & ((\inst|ecuacion1|alu1|Mux8~2_combout\))))) # 
-- (!\inst|ecuacion1|alu1|Mux3~8_combout\ & ((\inst|ecuacion1|alu1|Mux8~3_combout\) # ((\inst|ecuacion1|alu1|Mux8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|Mux3~8_combout\,
	datab => \inst|ecuacion1|alu1|Mux8~3_combout\,
	datac => \inst|ecuacion1|alu1|Mux8~0_combout\,
	datad => \inst|ecuacion1|alu1|Mux8~2_combout\,
	combout => \inst|ecuacion1|alu1|Mux8~4_combout\);

-- Location: FF_X23_Y5_N19
\inst|ecuacion1|registro[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|ecuacion1|alu1|Mux8~4_combout\,
	sload => VCC,
	ena => \inst|ecuacion1|pr_state~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|registro[1][1]~q\);

-- Location: LCCOMB_X23_Y5_N18
\inst|ecuacion1|Selector32~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|Selector32~0_combout\ = (\inst|ecuacion1|pr_state.state6~q\ & (((\inst|ecuacion1|registro[1][1]~q\)))) # (!\inst|ecuacion1|pr_state.state6~q\ & (!\inst|ecuacion1|addr1\(1) & ((\inst|ecuacion1|addr2\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|pr_state.state6~q\,
	datab => \inst|ecuacion1|addr1\(1),
	datac => \inst|ecuacion1|registro[1][1]~q\,
	datad => \inst|ecuacion1|addr2\(0),
	combout => \inst|ecuacion1|Selector32~0_combout\);

-- Location: LCCOMB_X22_Y7_N22
\inst|ecuacion1|MREG[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|MREG[5]~feeder_combout\ = \inst|ecuacion1|Selector32~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|ecuacion1|Selector32~0_combout\,
	combout => \inst|ecuacion1|MREG[5]~feeder_combout\);

-- Location: FF_X25_Y7_N17
\inst|ecuacion1|registro[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|ecuacion1|alu1|Mux8~4_combout\,
	ena => \inst|ecuacion1|pr_state~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|registro[2][1]~q\);

-- Location: FF_X22_Y7_N23
\inst|ecuacion1|MREG[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|ecuacion1|MREG[5]~feeder_combout\,
	asdata => \inst|ecuacion1|registro[2][1]~q\,
	sload => \inst|ecuacion1|pr_state.state8~q\,
	ena => \inst|ecuacion1|MREG[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|MREG\(5));

-- Location: LCCOMB_X22_Y7_N14
\inst|ecuacion1|alu1|unidad_logica|salida~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_logica|salida~0_combout\ = (\inst|ecuacion1|MREG\(5) & \inst|ecuacion1|MREG\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|ecuacion1|MREG\(5),
	datad => \inst|ecuacion1|MREG\(15),
	combout => \inst|ecuacion1|alu1|unidad_logica|salida~0_combout\);

-- Location: LCCOMB_X22_Y7_N4
\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi2|s2|Suma\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi2|s2|Suma~combout\ = \inst|ecuacion1|alu1|unidad_aritmetica|mult|inter\(10) $ (\inst|ecuacion1|alu1|unidad_aritmetica|mult|inter\(2) $ (\inst|ecuacion1|alu1|unidad_logica|salida~0_combout\ $ 
-- (\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi1|s1|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|unidad_aritmetica|mult|inter\(10),
	datab => \inst|ecuacion1|alu1|unidad_aritmetica|mult|inter\(2),
	datac => \inst|ecuacion1|alu1|unidad_logica|salida~0_combout\,
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi1|s1|Cout~0_combout\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi2|s2|Suma~combout\);

-- Location: LCCOMB_X22_Y7_N18
\inst|ecuacion1|alu1|unidad_aritmetica|suma|s1|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|suma|s1|Cout~0_combout\ = (\inst|ecuacion1|MREG\(5) & ((\inst|ecuacion1|MREG\(15)) # ((\inst|ecuacion1|MREG\(4) & \inst|ecuacion1|MREG\(14))))) # (!\inst|ecuacion1|MREG\(5) & (\inst|ecuacion1|MREG\(4) & 
-- (\inst|ecuacion1|MREG\(15) & \inst|ecuacion1|MREG\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(5),
	datab => \inst|ecuacion1|MREG\(4),
	datac => \inst|ecuacion1|MREG\(15),
	datad => \inst|ecuacion1|MREG\(14),
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|suma|s1|Cout~0_combout\);

-- Location: LCCOMB_X22_Y7_N30
\inst|ecuacion1|alu1|Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|Mux7~1_combout\ = \inst|ecuacion1|MREG\(6) $ (\inst|ecuacion1|alu1|unidad_aritmetica|suma|s1|Cout~0_combout\ $ (\inst|ecuacion1|MREG\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|ecuacion1|MREG\(6),
	datac => \inst|ecuacion1|alu1|unidad_aritmetica|suma|s1|Cout~0_combout\,
	datad => \inst|ecuacion1|MREG\(16),
	combout => \inst|ecuacion1|alu1|Mux7~1_combout\);

-- Location: LCCOMB_X25_Y6_N10
\inst|ecuacion1|alu1|Mux7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|Mux7~2_combout\ = (\inst|ecuacion1|alu1|Mux10~0_combout\ & ((\inst|ecuacion1|alu1|Mux11~0_combout\) # ((\inst|ecuacion1|alu1|Mux7~1_combout\)))) # (!\inst|ecuacion1|alu1|Mux10~0_combout\ & (!\inst|ecuacion1|alu1|Mux11~0_combout\ & 
-- (\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi2|s2|Suma~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|Mux10~0_combout\,
	datab => \inst|ecuacion1|alu1|Mux11~0_combout\,
	datac => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi2|s2|Suma~combout\,
	datad => \inst|ecuacion1|alu1|Mux7~1_combout\,
	combout => \inst|ecuacion1|alu1|Mux7~2_combout\);

-- Location: LCCOMB_X26_Y7_N28
\inst|ecuacion1|alu1|unidad_aritmetica|resta|s1|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|resta|s1|Cout~0_combout\ = (\inst|ecuacion1|MREG\(15) & (((\inst|ecuacion1|MREG\(14)) # (!\inst|ecuacion1|MREG\(5))) # (!\inst|ecuacion1|MREG\(4)))) # (!\inst|ecuacion1|MREG\(15) & (!\inst|ecuacion1|MREG\(5) & 
-- ((\inst|ecuacion1|MREG\(14)) # (!\inst|ecuacion1|MREG\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(15),
	datab => \inst|ecuacion1|MREG\(4),
	datac => \inst|ecuacion1|MREG\(5),
	datad => \inst|ecuacion1|MREG\(14),
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|resta|s1|Cout~0_combout\);

-- Location: LCCOMB_X25_Y6_N20
\inst|ecuacion1|alu1|unidad_aritmetica|resta|s2|Suma\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|resta|s2|Suma~combout\ = \inst|ecuacion1|MREG\(16) $ (\inst|ecuacion1|alu1|unidad_aritmetica|resta|s1|Cout~0_combout\ $ (\inst|ecuacion1|MREG\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(16),
	datab => \inst|ecuacion1|alu1|unidad_aritmetica|resta|s1|Cout~0_combout\,
	datac => \inst|ecuacion1|MREG\(6),
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|resta|s2|Suma~combout\);

-- Location: LCCOMB_X25_Y6_N0
\inst|ecuacion1|alu1|Mux7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|Mux7~3_combout\ = (\inst|ecuacion1|alu1|Mux7~2_combout\ & (((!\inst|ecuacion1|alu1|unidad_aritmetica|resta|s2|Suma~combout\)) # (!\inst|ecuacion1|alu1|Mux11~0_combout\))) # (!\inst|ecuacion1|alu1|Mux7~2_combout\ & 
-- (\inst|ecuacion1|alu1|Mux11~0_combout\ & (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan1~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|Mux7~2_combout\,
	datab => \inst|ecuacion1|alu1|Mux11~0_combout\,
	datac => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan1~14_combout\,
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|resta|s2|Suma~combout\,
	combout => \inst|ecuacion1|alu1|Mux7~3_combout\);

-- Location: LCCOMB_X25_Y7_N8
\inst|ecuacion1|alu1|Mux7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|Mux7~4_combout\ = (\inst|ecuacion1|alu1|Mux3~8_combout\ & (\inst|ecuacion1|alu1|Mux7~3_combout\)) # (!\inst|ecuacion1|alu1|Mux3~8_combout\ & ((\inst|ecuacion1|MREG\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|Mux3~8_combout\,
	datab => \inst|ecuacion1|alu1|Mux7~3_combout\,
	datad => \inst|ecuacion1|MREG\(3),
	combout => \inst|ecuacion1|alu1|Mux7~4_combout\);

-- Location: LCCOMB_X25_Y6_N22
\inst|ecuacion1|alu1|unidad_logica|salida~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_logica|salida~22_combout\ = (\inst|ecuacion1|MREG\(16) & (((\inst|ecuacion1|alu1|Mux10~0_combout\)))) # (!\inst|ecuacion1|MREG\(16) & (((\inst|ecuacion1|MREG\(6) & \inst|ecuacion1|alu1|Mux10~0_combout\)) # 
-- (!\inst|ecuacion1|alu1|Mux11~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(16),
	datab => \inst|ecuacion1|MREG\(6),
	datac => \inst|ecuacion1|alu1|Mux11~0_combout\,
	datad => \inst|ecuacion1|alu1|Mux10~0_combout\,
	combout => \inst|ecuacion1|alu1|unidad_logica|salida~22_combout\);

-- Location: LCCOMB_X25_Y6_N8
\inst|ecuacion1|alu1|unidad_logica|salida~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_logica|salida~23_combout\ = (\inst|ecuacion1|MREG\(16) & \inst|ecuacion1|MREG\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(16),
	datac => \inst|ecuacion1|MREG\(6),
	combout => \inst|ecuacion1|alu1|unidad_logica|salida~23_combout\);

-- Location: LCCOMB_X23_Y6_N12
\inst|ecuacion1|alu1|unidad_logica|aux[2]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_logica|aux[2]~15_combout\ = (\inst|ecuacion1|MREG\(16) & ((\inst|ecuacion1|alu1|unidad_logica|aux[1]~14\) # (GND))) # (!\inst|ecuacion1|MREG\(16) & (!\inst|ecuacion1|alu1|unidad_logica|aux[1]~14\))
-- \inst|ecuacion1|alu1|unidad_logica|aux[2]~16\ = CARRY((\inst|ecuacion1|MREG\(16)) # (!\inst|ecuacion1|alu1|unidad_logica|aux[1]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|ecuacion1|MREG\(16),
	datad => VCC,
	cin => \inst|ecuacion1|alu1|unidad_logica|aux[1]~14\,
	combout => \inst|ecuacion1|alu1|unidad_logica|aux[2]~15_combout\,
	cout => \inst|ecuacion1|alu1|unidad_logica|aux[2]~16\);

-- Location: FF_X23_Y6_N13
\inst|ecuacion1|alu1|unidad_logica|aux[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|ecuacion1|alu1|unidad_logica|aux[2]~15_combout\,
	ena => \inst|ecuacion1|alu1|unidad_logica|aux[0]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|alu1|unidad_logica|aux\(2));

-- Location: LCCOMB_X25_Y6_N12
\inst|ecuacion1|alu1|unidad_logica|salida~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_logica|salida~24_combout\ = (\inst|ecuacion1|alu1|unidad_logica|salida~22_combout\ & ((\inst|ecuacion1|alu1|unidad_logica|salida~23_combout\) # ((!\inst|ecuacion1|alu1|Mux3~15_combout\)))) # 
-- (!\inst|ecuacion1|alu1|unidad_logica|salida~22_combout\ & (((\inst|ecuacion1|alu1|unidad_logica|aux\(2) & \inst|ecuacion1|alu1|Mux3~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|unidad_logica|salida~22_combout\,
	datab => \inst|ecuacion1|alu1|unidad_logica|salida~23_combout\,
	datac => \inst|ecuacion1|alu1|unidad_logica|aux\(2),
	datad => \inst|ecuacion1|alu1|Mux3~15_combout\,
	combout => \inst|ecuacion1|alu1|unidad_logica|salida~24_combout\);

-- Location: FF_X25_Y6_N13
\inst|ecuacion1|alu1|unidad_logica|salida[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|ecuacion1|alu1|unidad_logica|salida~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|alu1|unidad_logica|salida\(2));

-- Location: FF_X23_Y7_N13
\inst|ecuacion1|alu1|barrel_shifters|aux[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|ecuacion1|MREG\(15),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|alu1|barrel_shifters|aux\(2));

-- Location: FF_X25_Y7_N31
\inst|ecuacion1|alu1|barrel_shifters|salShifters[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|ecuacion1|alu1|barrel_shifters|aux\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|alu1|barrel_shifters|salShifters\(2));

-- Location: LCCOMB_X25_Y7_N30
\inst|ecuacion1|alu1|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|Mux7~0_combout\ = (\inst|ecuacion1|alu1|Mux6~14_combout\ & ((\inst|ecuacion1|alu1|Mux6~10_combout\ & (\inst|ecuacion1|alu1|unidad_logica|salida\(2))) # (!\inst|ecuacion1|alu1|Mux6~10_combout\ & 
-- ((\inst|ecuacion1|alu1|barrel_shifters|salShifters\(2)))))) # (!\inst|ecuacion1|alu1|Mux6~14_combout\ & (((\inst|ecuacion1|alu1|Mux6~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|unidad_logica|salida\(2),
	datab => \inst|ecuacion1|alu1|Mux6~14_combout\,
	datac => \inst|ecuacion1|alu1|barrel_shifters|salShifters\(2),
	datad => \inst|ecuacion1|alu1|Mux6~10_combout\,
	combout => \inst|ecuacion1|alu1|Mux7~0_combout\);

-- Location: LCCOMB_X25_Y6_N18
\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~6_combout\ = (\inst|ecuacion1|alu1|Mux10~0_combout\ & (\inst|ecuacion1|alu1|unidad_aritmetica|resta|s2|Suma~combout\)) # (!\inst|ecuacion1|alu1|Mux10~0_combout\ & 
-- ((!\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi2|s2|Suma~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|ecuacion1|alu1|unidad_aritmetica|resta|s2|Suma~combout\,
	datac => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi2|s2|Suma~combout\,
	datad => \inst|ecuacion1|alu1|Mux10~0_combout\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~6_combout\);

-- Location: LCCOMB_X24_Y4_N14
\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~13_combout\ = (\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~6_combout\ & (\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~12\ $ (GND))) # 
-- (!\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~6_combout\ & (!\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~12\ & VCC))
-- \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~14\ = CARRY((\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~6_combout\ & !\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~6_combout\,
	datad => VCC,
	cin => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~12\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~13_combout\,
	cout => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~14\);

-- Location: LCCOMB_X25_Y7_N14
\inst|ecuacion1|alu1|Mux7~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|Mux7~5_combout\ = (\inst|ecuacion1|alu1|Mux7~0_combout\ & (((\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~13_combout\)) # (!\inst|ecuacion1|alu1|Mux3~8_combout\))) # (!\inst|ecuacion1|alu1|Mux7~0_combout\ & 
-- (((\inst|ecuacion1|alu1|Mux7~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|Mux3~8_combout\,
	datab => \inst|ecuacion1|alu1|Mux7~4_combout\,
	datac => \inst|ecuacion1|alu1|Mux7~0_combout\,
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~13_combout\,
	combout => \inst|ecuacion1|alu1|Mux7~5_combout\);

-- Location: LCCOMB_X24_Y6_N24
\inst|ecuacion1|registro[1][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|registro[1][2]~feeder_combout\ = \inst|ecuacion1|alu1|Mux7~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|ecuacion1|alu1|Mux7~5_combout\,
	combout => \inst|ecuacion1|registro[1][2]~feeder_combout\);

-- Location: FF_X24_Y6_N25
\inst|ecuacion1|registro[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|ecuacion1|registro[1][2]~feeder_combout\,
	ena => \inst|ecuacion1|pr_state~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|registro[1][2]~q\);

-- Location: LCCOMB_X22_Y7_N24
\inst|ecuacion1|Selector31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|Selector31~0_combout\ = (\inst|ecuacion1|registro[1][2]~q\) # (!\inst|ecuacion1|pr_state.state6~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|ecuacion1|registro[1][2]~q\,
	datad => \inst|ecuacion1|pr_state.state6~q\,
	combout => \inst|ecuacion1|Selector31~0_combout\);

-- Location: FF_X25_Y7_N15
\inst|ecuacion1|registro[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|ecuacion1|alu1|Mux7~5_combout\,
	ena => \inst|ecuacion1|pr_state~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|registro[2][2]~q\);

-- Location: FF_X22_Y7_N25
\inst|ecuacion1|MREG[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|ecuacion1|Selector31~0_combout\,
	asdata => \inst|ecuacion1|registro[2][2]~q\,
	sload => \inst|ecuacion1|pr_state.state8~q\,
	ena => \inst|ecuacion1|MREG[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|MREG\(6));

-- Location: LCCOMB_X25_Y4_N12
\inst|ecuacion1|alu1|unidad_aritmetica|resta|s2|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|resta|s2|Cout~0_combout\ = (\inst|ecuacion1|MREG\(6) & (\inst|ecuacion1|MREG\(16) & \inst|ecuacion1|alu1|unidad_aritmetica|resta|s1|Cout~0_combout\)) # (!\inst|ecuacion1|MREG\(6) & ((\inst|ecuacion1|MREG\(16)) # 
-- (\inst|ecuacion1|alu1|unidad_aritmetica|resta|s1|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|ecuacion1|MREG\(6),
	datac => \inst|ecuacion1|MREG\(16),
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|resta|s1|Cout~0_combout\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|resta|s2|Cout~0_combout\);

-- Location: LCCOMB_X25_Y4_N2
\inst|ecuacion1|alu1|unidad_aritmetica|resta|s3|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|resta|s3|Cout~0_combout\ = (\inst|ecuacion1|MREG\(7) & (\inst|ecuacion1|MREG\(17) & \inst|ecuacion1|alu1|unidad_aritmetica|resta|s2|Cout~0_combout\)) # (!\inst|ecuacion1|MREG\(7) & ((\inst|ecuacion1|MREG\(17)) # 
-- (\inst|ecuacion1|alu1|unidad_aritmetica|resta|s2|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|ecuacion1|MREG\(7),
	datac => \inst|ecuacion1|MREG\(17),
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|resta|s2|Cout~0_combout\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|resta|s3|Cout~0_combout\);

-- Location: LCCOMB_X25_Y4_N16
\inst|ecuacion1|alu1|unidad_aritmetica|resta|s4|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|resta|s4|Cout~0_combout\ = (\inst|ecuacion1|MREG\(18) & ((\inst|ecuacion1|alu1|unidad_aritmetica|resta|s3|Cout~0_combout\) # (!\inst|ecuacion1|MREG\(8)))) # (!\inst|ecuacion1|MREG\(18) & (!\inst|ecuacion1|MREG\(8) & 
-- \inst|ecuacion1|alu1|unidad_aritmetica|resta|s3|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(18),
	datab => \inst|ecuacion1|MREG\(8),
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|resta|s3|Cout~0_combout\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|resta|s4|Cout~0_combout\);

-- Location: LCCOMB_X25_Y4_N14
\inst|ecuacion1|alu1|unidad_aritmetica|resta|s5|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|resta|s5|Cout~0_combout\ = (\inst|ecuacion1|MREG\(19) & ((\inst|ecuacion1|alu1|unidad_aritmetica|resta|s4|Cout~0_combout\) # (!\inst|ecuacion1|MREG\(9)))) # (!\inst|ecuacion1|MREG\(19) & (!\inst|ecuacion1|MREG\(9) & 
-- \inst|ecuacion1|alu1|unidad_aritmetica|resta|s4|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|ecuacion1|MREG\(19),
	datac => \inst|ecuacion1|MREG\(9),
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|resta|s4|Cout~0_combout\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|resta|s5|Cout~0_combout\);

-- Location: LCCOMB_X25_Y4_N10
\inst|ecuacion1|alu1|unidad_aritmetica|resta|s6|Suma\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|resta|s6|Suma~combout\ = \inst|ecuacion1|MREG\(20) $ (\inst|ecuacion1|MREG\(10) $ (\inst|ecuacion1|alu1|unidad_aritmetica|resta|s5|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(20),
	datab => \inst|ecuacion1|MREG\(10),
	datac => \inst|ecuacion1|alu1|unidad_aritmetica|resta|s5|Cout~0_combout\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|resta|s6|Suma~combout\);

-- Location: LCCOMB_X25_Y4_N30
\inst|ecuacion1|alu1|Mux3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|Mux3~4_combout\ = (\inst|ecuacion1|alu1|Mux10~0_combout\ & ((\inst|ecuacion1|alu1|unidad_aritmetica|resta|s7|Cout~0_combout\) # (!\inst|ecuacion1|alu1|Mux11~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|ecuacion1|alu1|Mux11~0_combout\,
	datac => \inst|ecuacion1|alu1|unidad_aritmetica|resta|s7|Cout~0_combout\,
	datad => \inst|ecuacion1|alu1|Mux10~0_combout\,
	combout => \inst|ecuacion1|alu1|Mux3~4_combout\);

-- Location: LCCOMB_X22_Y7_N8
\inst|ecuacion1|alu1|unidad_aritmetica|suma|s2|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|suma|s2|Cout~0_combout\ = (\inst|ecuacion1|MREG\(6) & ((\inst|ecuacion1|alu1|unidad_aritmetica|suma|s1|Cout~0_combout\) # (\inst|ecuacion1|MREG\(16)))) # (!\inst|ecuacion1|MREG\(6) & 
-- (\inst|ecuacion1|alu1|unidad_aritmetica|suma|s1|Cout~0_combout\ & \inst|ecuacion1|MREG\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|ecuacion1|MREG\(6),
	datac => \inst|ecuacion1|alu1|unidad_aritmetica|suma|s1|Cout~0_combout\,
	datad => \inst|ecuacion1|MREG\(16),
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|suma|s2|Cout~0_combout\);

-- Location: LCCOMB_X22_Y4_N16
\inst|ecuacion1|alu1|unidad_aritmetica|suma|s3|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|suma|s3|Cout~0_combout\ = (\inst|ecuacion1|MREG\(17) & ((\inst|ecuacion1|MREG\(7)) # (\inst|ecuacion1|alu1|unidad_aritmetica|suma|s2|Cout~0_combout\))) # (!\inst|ecuacion1|MREG\(17) & (\inst|ecuacion1|MREG\(7) & 
-- \inst|ecuacion1|alu1|unidad_aritmetica|suma|s2|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|ecuacion1|MREG\(17),
	datac => \inst|ecuacion1|MREG\(7),
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|suma|s2|Cout~0_combout\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|suma|s3|Cout~0_combout\);

-- Location: LCCOMB_X22_Y4_N6
\inst|ecuacion1|alu1|unidad_aritmetica|suma|s4|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|suma|s4|Cout~0_combout\ = (\inst|ecuacion1|MREG\(8) & ((\inst|ecuacion1|MREG\(18)) # (\inst|ecuacion1|alu1|unidad_aritmetica|suma|s3|Cout~0_combout\))) # (!\inst|ecuacion1|MREG\(8) & (\inst|ecuacion1|MREG\(18) & 
-- \inst|ecuacion1|alu1|unidad_aritmetica|suma|s3|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|ecuacion1|MREG\(8),
	datac => \inst|ecuacion1|MREG\(18),
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|suma|s3|Cout~0_combout\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|suma|s4|Cout~0_combout\);

-- Location: LCCOMB_X22_Y4_N28
\inst|ecuacion1|alu1|unidad_aritmetica|suma|s5|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|suma|s5|Cout~0_combout\ = (\inst|ecuacion1|MREG\(19) & ((\inst|ecuacion1|MREG\(9)) # (\inst|ecuacion1|alu1|unidad_aritmetica|suma|s4|Cout~0_combout\))) # (!\inst|ecuacion1|MREG\(19) & (\inst|ecuacion1|MREG\(9) & 
-- \inst|ecuacion1|alu1|unidad_aritmetica|suma|s4|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|ecuacion1|MREG\(19),
	datac => \inst|ecuacion1|MREG\(9),
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|suma|s4|Cout~0_combout\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|suma|s5|Cout~0_combout\);

-- Location: LCCOMB_X22_Y4_N24
\inst|ecuacion1|alu1|unidad_aritmetica|suma|s6|Suma\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|suma|s6|Suma~combout\ = \inst|ecuacion1|MREG\(20) $ (\inst|ecuacion1|MREG\(10) $ (\inst|ecuacion1|alu1|unidad_aritmetica|suma|s5|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|ecuacion1|MREG\(20),
	datac => \inst|ecuacion1|MREG\(10),
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|suma|s5|Cout~0_combout\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|suma|s6|Suma~combout\);

-- Location: LCCOMB_X24_Y7_N24
\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|s6|Suma\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|s6|Suma~combout\ = \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi3|s6|Suma~combout\ $ (\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|s5|Cout~0_combout\ $ (((\inst|ecuacion1|MREG\(16) & 
-- \inst|ecuacion1|MREG\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(16),
	datab => \inst|ecuacion1|MREG\(8),
	datac => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi3|s6|Suma~combout\,
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|s5|Cout~0_combout\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|s6|Suma~combout\);

-- Location: LCCOMB_X23_Y4_N26
\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~2_combout\ = (\inst|ecuacion1|alu1|Mux10~0_combout\ & (\inst|ecuacion1|alu1|unidad_aritmetica|resta|s6|Suma~combout\)) # (!\inst|ecuacion1|alu1|Mux10~0_combout\ & 
-- ((!\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|s6|Suma~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|ecuacion1|alu1|Mux10~0_combout\,
	datac => \inst|ecuacion1|alu1|unidad_aritmetica|resta|s6|Suma~combout\,
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|s6|Suma~combout\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~2_combout\);

-- Location: LCCOMB_X24_Y6_N8
\inst|ecuacion1|alu1|unidad_aritmetica|resta|s5|Suma\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|resta|s5|Suma~combout\ = \inst|ecuacion1|MREG\(19) $ (\inst|ecuacion1|MREG\(9) $ (\inst|ecuacion1|alu1|unidad_aritmetica|resta|s4|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|ecuacion1|MREG\(19),
	datac => \inst|ecuacion1|MREG\(9),
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|resta|s4|Cout~0_combout\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|resta|s5|Suma~combout\);

-- Location: LCCOMB_X24_Y6_N6
\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|s5|Suma\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|s5|Suma~combout\ = \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|s4|Cout~0_combout\ $ (\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi3|s5|Suma~combout\ $ (((\inst|ecuacion1|MREG\(15) & 
-- \inst|ecuacion1|MREG\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(15),
	datab => \inst|ecuacion1|MREG\(8),
	datac => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|s4|Cout~0_combout\,
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi3|s5|Suma~combout\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|s5|Suma~combout\);

-- Location: LCCOMB_X24_Y6_N16
\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~3_combout\ = (\inst|ecuacion1|alu1|Mux10~0_combout\ & (\inst|ecuacion1|alu1|unidad_aritmetica|resta|s5|Suma~combout\)) # (!\inst|ecuacion1|alu1|Mux10~0_combout\ & 
-- ((!\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|s5|Suma~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|ecuacion1|alu1|Mux10~0_combout\,
	datac => \inst|ecuacion1|alu1|unidad_aritmetica|resta|s5|Suma~combout\,
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|s5|Suma~combout\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~3_combout\);

-- Location: LCCOMB_X22_Y7_N26
\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|s4|Suma\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|s4|Suma~combout\ = \inst|ecuacion1|alu1|unidad_aritmetica|mult|inter\(20) $ (\inst|ecuacion1|alu1|unidad_aritmetica|mult|inter\(16) $ (\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi3|s3|Cout~0_combout\ 
-- $ (\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi2|s4|Suma~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|unidad_aritmetica|mult|inter\(20),
	datab => \inst|ecuacion1|alu1|unidad_aritmetica|mult|inter\(16),
	datac => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi3|s3|Cout~0_combout\,
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi2|s4|Suma~combout\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|s4|Suma~combout\);

-- Location: LCCOMB_X25_Y4_N0
\inst|ecuacion1|alu1|unidad_aritmetica|resta|s4|Suma\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|resta|s4|Suma~combout\ = \inst|ecuacion1|MREG\(18) $ (\inst|ecuacion1|MREG\(8) $ (\inst|ecuacion1|alu1|unidad_aritmetica|resta|s3|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(18),
	datab => \inst|ecuacion1|MREG\(8),
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|resta|s3|Cout~0_combout\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|resta|s4|Suma~combout\);

-- Location: LCCOMB_X23_Y5_N4
\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~4_combout\ = (\inst|ecuacion1|alu1|Mux10~0_combout\ & ((\inst|ecuacion1|alu1|unidad_aritmetica|resta|s4|Suma~combout\))) # (!\inst|ecuacion1|alu1|Mux10~0_combout\ & 
-- (!\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|s4|Suma~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|Mux10~0_combout\,
	datac => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|s4|Suma~combout\,
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|resta|s4|Suma~combout\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~4_combout\);

-- Location: LCCOMB_X23_Y6_N28
\inst|ecuacion1|alu1|unidad_aritmetica|resta|s3|Suma\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|resta|s3|Suma~combout\ = \inst|ecuacion1|MREG\(17) $ (\inst|ecuacion1|MREG\(7) $ (\inst|ecuacion1|alu1|unidad_aritmetica|resta|s2|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(17),
	datab => \inst|ecuacion1|MREG\(7),
	datac => \inst|ecuacion1|alu1|unidad_aritmetica|resta|s2|Cout~0_combout\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|resta|s3|Suma~combout\);

-- Location: LCCOMB_X23_Y6_N8
\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~5_combout\ = (\inst|ecuacion1|alu1|Mux10~0_combout\ & ((\inst|ecuacion1|alu1|unidad_aritmetica|resta|s3|Suma~combout\))) # (!\inst|ecuacion1|alu1|Mux10~0_combout\ & 
-- (!\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi3|s3|Suma~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi3|s3|Suma~combout\,
	datac => \inst|ecuacion1|alu1|Mux10~0_combout\,
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|resta|s3|Suma~combout\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~5_combout\);

-- Location: LCCOMB_X24_Y4_N16
\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~15_combout\ = (\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~5_combout\ & (!\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~14\)) # 
-- (!\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~5_combout\ & ((\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~14\) # (GND)))
-- \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~16\ = CARRY((!\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~14\) # (!\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~5_combout\,
	datad => VCC,
	cin => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~14\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~15_combout\,
	cout => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~16\);

-- Location: LCCOMB_X24_Y4_N18
\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~17_combout\ = (\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~4_combout\ & (\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~16\ $ (GND))) # 
-- (!\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~4_combout\ & (!\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~16\ & VCC))
-- \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~18\ = CARRY((\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~4_combout\ & !\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~4_combout\,
	datad => VCC,
	cin => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~16\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~17_combout\,
	cout => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~18\);

-- Location: LCCOMB_X24_Y4_N20
\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~19_combout\ = (\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~3_combout\ & (!\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~18\)) # 
-- (!\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~3_combout\ & ((\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~18\) # (GND)))
-- \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~20\ = CARRY((!\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~18\) # (!\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~3_combout\,
	datad => VCC,
	cin => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~18\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~19_combout\,
	cout => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~20\);

-- Location: LCCOMB_X24_Y4_N22
\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~21_combout\ = (\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~2_combout\ & (\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~20\ $ (GND))) # 
-- (!\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~2_combout\ & (!\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~20\ & VCC))
-- \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~22\ = CARRY((\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~2_combout\ & !\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~2_combout\,
	datad => VCC,
	cin => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~20\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~21_combout\,
	cout => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~22\);

-- Location: LCCOMB_X25_Y4_N8
\inst|ecuacion1|alu1|Mux3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|Mux3~6_combout\ = (\inst|ecuacion1|alu1|Mux10~0_combout\ & (\inst|ecuacion1|alu1|Mux11~0_combout\)) # (!\inst|ecuacion1|alu1|Mux10~0_combout\ & (!\inst|ecuacion1|alu1|Mux11~0_combout\ & 
-- \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|s8|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|Mux10~0_combout\,
	datac => \inst|ecuacion1|alu1|Mux11~0_combout\,
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|s8|Cout~0_combout\,
	combout => \inst|ecuacion1|alu1|Mux3~6_combout\);

-- Location: LCCOMB_X26_Y4_N28
\inst|ecuacion1|alu1|Mux3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|Mux3~5_combout\ = (\inst|ecuacion1|alu1|Mux11~0_combout\ & (!\inst|ecuacion1|alu1|unidad_aritmetica|resta|s7|Cout~0_combout\ & \inst|ecuacion1|alu1|Mux10~0_combout\)) # (!\inst|ecuacion1|alu1|Mux11~0_combout\ & 
-- ((!\inst|ecuacion1|alu1|Mux10~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|Mux11~0_combout\,
	datac => \inst|ecuacion1|alu1|unidad_aritmetica|resta|s7|Cout~0_combout\,
	datad => \inst|ecuacion1|alu1|Mux10~0_combout\,
	combout => \inst|ecuacion1|alu1|Mux3~5_combout\);

-- Location: LCCOMB_X25_Y6_N24
\inst|ecuacion1|alu1|Mux3~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|Mux3~9_combout\ = (\inst|ecuacion1|alu1|Mux3~6_combout\ & (((\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~21_combout\) # (!\inst|ecuacion1|alu1|Mux3~5_combout\)))) # (!\inst|ecuacion1|alu1|Mux3~6_combout\ & 
-- (\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|s6|Suma~combout\ & ((\inst|ecuacion1|alu1|Mux3~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|s6|Suma~combout\,
	datab => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~21_combout\,
	datac => \inst|ecuacion1|alu1|Mux3~6_combout\,
	datad => \inst|ecuacion1|alu1|Mux3~5_combout\,
	combout => \inst|ecuacion1|alu1|Mux3~9_combout\);

-- Location: LCCOMB_X25_Y6_N26
\inst|ecuacion1|alu1|Mux3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|Mux3~10_combout\ = (\inst|ecuacion1|alu1|Mux3~4_combout\ & ((\inst|ecuacion1|alu1|Mux3~9_combout\ & (!\inst|ecuacion1|alu1|unidad_aritmetica|resta|s6|Suma~combout\)) # (!\inst|ecuacion1|alu1|Mux3~9_combout\ & 
-- ((\inst|ecuacion1|alu1|unidad_aritmetica|suma|s6|Suma~combout\))))) # (!\inst|ecuacion1|alu1|Mux3~4_combout\ & (((\inst|ecuacion1|alu1|Mux3~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|unidad_aritmetica|resta|s6|Suma~combout\,
	datab => \inst|ecuacion1|alu1|Mux3~4_combout\,
	datac => \inst|ecuacion1|alu1|unidad_aritmetica|suma|s6|Suma~combout\,
	datad => \inst|ecuacion1|alu1|Mux3~9_combout\,
	combout => \inst|ecuacion1|alu1|Mux3~10_combout\);

-- Location: LCCOMB_X22_Y6_N22
\inst|ecuacion1|alu1|unidad_logica|salida~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_logica|salida~11_combout\ = (\inst|ecuacion1|MREG\(20) & \inst|ecuacion1|MREG\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|ecuacion1|MREG\(20),
	datad => \inst|ecuacion1|MREG\(10),
	combout => \inst|ecuacion1|alu1|unidad_logica|salida~11_combout\);

-- Location: LCCOMB_X22_Y6_N20
\inst|ecuacion1|alu1|unidad_logica|salida~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_logica|salida~10_combout\ = (\inst|ecuacion1|MREG\(20) & (\inst|ecuacion1|alu1|Mux10~0_combout\)) # (!\inst|ecuacion1|MREG\(20) & (((\inst|ecuacion1|alu1|Mux10~0_combout\ & \inst|ecuacion1|MREG\(10))) # 
-- (!\inst|ecuacion1|alu1|Mux11~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|Mux10~0_combout\,
	datab => \inst|ecuacion1|MREG\(20),
	datac => \inst|ecuacion1|alu1|Mux11~0_combout\,
	datad => \inst|ecuacion1|MREG\(10),
	combout => \inst|ecuacion1|alu1|unidad_logica|salida~10_combout\);

-- Location: LCCOMB_X23_Y6_N18
\inst|ecuacion1|alu1|unidad_logica|aux[5]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_logica|aux[5]~21_combout\ = (\inst|ecuacion1|MREG\(19) & (!\inst|ecuacion1|alu1|unidad_logica|aux[4]~20\ & VCC)) # (!\inst|ecuacion1|MREG\(19) & (\inst|ecuacion1|alu1|unidad_logica|aux[4]~20\ $ (GND)))
-- \inst|ecuacion1|alu1|unidad_logica|aux[5]~22\ = CARRY((!\inst|ecuacion1|MREG\(19) & !\inst|ecuacion1|alu1|unidad_logica|aux[4]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|ecuacion1|MREG\(19),
	datad => VCC,
	cin => \inst|ecuacion1|alu1|unidad_logica|aux[4]~20\,
	combout => \inst|ecuacion1|alu1|unidad_logica|aux[5]~21_combout\,
	cout => \inst|ecuacion1|alu1|unidad_logica|aux[5]~22\);

-- Location: LCCOMB_X23_Y6_N20
\inst|ecuacion1|alu1|unidad_logica|aux[6]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_logica|aux[6]~23_combout\ = (\inst|ecuacion1|MREG\(20) & ((\inst|ecuacion1|alu1|unidad_logica|aux[5]~22\) # (GND))) # (!\inst|ecuacion1|MREG\(20) & (!\inst|ecuacion1|alu1|unidad_logica|aux[5]~22\))
-- \inst|ecuacion1|alu1|unidad_logica|aux[6]~24\ = CARRY((\inst|ecuacion1|MREG\(20)) # (!\inst|ecuacion1|alu1|unidad_logica|aux[5]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|ecuacion1|MREG\(20),
	datad => VCC,
	cin => \inst|ecuacion1|alu1|unidad_logica|aux[5]~22\,
	combout => \inst|ecuacion1|alu1|unidad_logica|aux[6]~23_combout\,
	cout => \inst|ecuacion1|alu1|unidad_logica|aux[6]~24\);

-- Location: FF_X23_Y6_N21
\inst|ecuacion1|alu1|unidad_logica|aux[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|ecuacion1|alu1|unidad_logica|aux[6]~23_combout\,
	ena => \inst|ecuacion1|alu1|unidad_logica|aux[0]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|alu1|unidad_logica|aux\(6));

-- Location: LCCOMB_X22_Y6_N16
\inst|ecuacion1|alu1|unidad_logica|salida~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_logica|salida~12_combout\ = (\inst|ecuacion1|alu1|unidad_logica|salida~10_combout\ & ((\inst|ecuacion1|alu1|unidad_logica|salida~11_combout\) # ((!\inst|ecuacion1|alu1|Mux3~15_combout\)))) # 
-- (!\inst|ecuacion1|alu1|unidad_logica|salida~10_combout\ & (((\inst|ecuacion1|alu1|unidad_logica|aux\(6) & \inst|ecuacion1|alu1|Mux3~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|unidad_logica|salida~11_combout\,
	datab => \inst|ecuacion1|alu1|unidad_logica|salida~10_combout\,
	datac => \inst|ecuacion1|alu1|unidad_logica|aux\(6),
	datad => \inst|ecuacion1|alu1|Mux3~15_combout\,
	combout => \inst|ecuacion1|alu1|unidad_logica|salida~12_combout\);

-- Location: FF_X22_Y6_N17
\inst|ecuacion1|alu1|unidad_logica|salida[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|ecuacion1|alu1|unidad_logica|salida~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|alu1|unidad_logica|salida\(6));

-- Location: LCCOMB_X22_Y6_N14
\inst|ecuacion1|alu1|Mux3~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|Mux3~11_combout\ = (\inst|ecuacion1|alu1|unidad_logica|salida\(6) & (\inst|ecuacion1|MREG\(2) $ (((\inst|ecuacion1|MREG\(1)) # (\inst|ecuacion1|MREG\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(1),
	datab => \inst|ecuacion1|alu1|unidad_logica|salida\(6),
	datac => \inst|ecuacion1|MREG\(2),
	datad => \inst|ecuacion1|MREG\(0),
	combout => \inst|ecuacion1|alu1|Mux3~11_combout\);

-- Location: LCCOMB_X25_Y6_N28
\inst|ecuacion1|alu1|Mux3~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|Mux3~13_combout\ = (\inst|ecuacion1|alu1|Mux3~8_combout\ & (((\inst|ecuacion1|alu1|Mux3~10_combout\)))) # (!\inst|ecuacion1|alu1|Mux3~8_combout\ & ((\inst|ecuacion1|alu1|Mux3~12_combout\) # ((\inst|ecuacion1|alu1|Mux3~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|Mux3~12_combout\,
	datab => \inst|ecuacion1|alu1|Mux3~8_combout\,
	datac => \inst|ecuacion1|alu1|Mux3~10_combout\,
	datad => \inst|ecuacion1|alu1|Mux3~11_combout\,
	combout => \inst|ecuacion1|alu1|Mux3~13_combout\);

-- Location: FF_X23_Y4_N5
\inst|ecuacion1|registro[3][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|ecuacion1|alu1|Mux3~13_combout\,
	sload => VCC,
	ena => \inst|ecuacion1|pr_state~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|registro[3][6]~q\);

-- Location: FF_X24_Y4_N23
\inst|ecuacion1|registro[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|ecuacion1|alu1|Mux3~13_combout\,
	sload => VCC,
	ena => \inst|ecuacion1|pr_state~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|registro[0][6]~q\);

-- Location: LCCOMB_X23_Y4_N10
\inst|ecuacion1|Selector17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|Selector17~0_combout\ = (\inst|ecuacion1|pr_state.state8~q\ & (((\inst|ecuacion1|registro[3][6]~q\)))) # (!\inst|ecuacion1|pr_state.state8~q\ & (\inst|ecuacion1|pr_state.state6~q\ & ((\inst|ecuacion1|registro[0][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|pr_state.state8~q\,
	datab => \inst|ecuacion1|pr_state.state6~q\,
	datac => \inst|ecuacion1|registro[3][6]~q\,
	datad => \inst|ecuacion1|registro[0][6]~q\,
	combout => \inst|ecuacion1|Selector17~0_combout\);

-- Location: FF_X23_Y4_N11
\inst|ecuacion1|MREG[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|ecuacion1|Selector17~0_combout\,
	ena => \inst|ecuacion1|MREG[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|MREG\(20));

-- Location: LCCOMB_X25_Y6_N6
\inst|ecuacion1|alu1|barrel_shifters|aux[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|barrel_shifters|aux[7]~feeder_combout\ = \inst|ecuacion1|MREG\(20)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|ecuacion1|MREG\(20),
	combout => \inst|ecuacion1|alu1|barrel_shifters|aux[7]~feeder_combout\);

-- Location: FF_X25_Y6_N7
\inst|ecuacion1|alu1|barrel_shifters|aux[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|ecuacion1|alu1|barrel_shifters|aux[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|alu1|barrel_shifters|aux\(7));

-- Location: FF_X26_Y6_N17
\inst|ecuacion1|alu1|barrel_shifters|salShifters[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|ecuacion1|alu1|barrel_shifters|aux\(7),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|alu1|barrel_shifters|salShifters\(7));

-- Location: LCCOMB_X26_Y6_N16
\inst|ecuacion1|alu1|Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|Mux2~3_combout\ = (\inst|ecuacion1|MREG\(3)) # ((!\inst|ecuacion1|alu1|Mux3~7_combout\ & (\inst|ecuacion1|alu1|barrel_shifters|salShifters\(7) & \inst|ecuacion1|MREG\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|Mux3~7_combout\,
	datab => \inst|ecuacion1|MREG\(3),
	datac => \inst|ecuacion1|alu1|barrel_shifters|salShifters\(7),
	datad => \inst|ecuacion1|MREG\(2),
	combout => \inst|ecuacion1|alu1|Mux2~3_combout\);

-- Location: LCCOMB_X23_Y4_N22
\inst|ecuacion1|registro[3][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|registro[3][7]~feeder_combout\ = \inst|ecuacion1|alu1|Mux2~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|ecuacion1|alu1|Mux2~4_combout\,
	combout => \inst|ecuacion1|registro[3][7]~feeder_combout\);

-- Location: FF_X23_Y4_N23
\inst|ecuacion1|registro[3][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|ecuacion1|registro[3][7]~feeder_combout\,
	ena => \inst|ecuacion1|pr_state~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|registro[3][7]~q\);

-- Location: FF_X24_Y4_N27
\inst|ecuacion1|registro[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|ecuacion1|alu1|Mux2~4_combout\,
	sload => VCC,
	ena => \inst|ecuacion1|pr_state~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|registro[0][7]~q\);

-- Location: LCCOMB_X23_Y4_N20
\inst|ecuacion1|Selector16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|Selector16~0_combout\ = (\inst|ecuacion1|pr_state.state8~q\ & (((\inst|ecuacion1|registro[3][7]~q\)))) # (!\inst|ecuacion1|pr_state.state8~q\ & (\inst|ecuacion1|pr_state.state6~q\ & ((\inst|ecuacion1|registro[0][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|pr_state.state8~q\,
	datab => \inst|ecuacion1|pr_state.state6~q\,
	datac => \inst|ecuacion1|registro[3][7]~q\,
	datad => \inst|ecuacion1|registro[0][7]~q\,
	combout => \inst|ecuacion1|Selector16~0_combout\);

-- Location: FF_X23_Y4_N21
\inst|ecuacion1|MREG[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|ecuacion1|Selector16~0_combout\,
	ena => \inst|ecuacion1|MREG[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|MREG\(21));

-- Location: LCCOMB_X22_Y6_N30
\inst|ecuacion1|alu1|unidad_logica|salida~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_logica|salida~8_combout\ = (\inst|ecuacion1|MREG\(11) & \inst|ecuacion1|MREG\(21))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|ecuacion1|MREG\(11),
	datad => \inst|ecuacion1|MREG\(21),
	combout => \inst|ecuacion1|alu1|unidad_logica|salida~8_combout\);

-- Location: LCCOMB_X23_Y6_N22
\inst|ecuacion1|alu1|unidad_logica|aux[7]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_logica|aux[7]~25_combout\ = (\inst|ecuacion1|MREG\(21) & (!\inst|ecuacion1|alu1|unidad_logica|aux[6]~24\ & VCC)) # (!\inst|ecuacion1|MREG\(21) & (\inst|ecuacion1|alu1|unidad_logica|aux[6]~24\ $ (GND)))
-- \inst|ecuacion1|alu1|unidad_logica|aux[7]~26\ = CARRY((!\inst|ecuacion1|MREG\(21) & !\inst|ecuacion1|alu1|unidad_logica|aux[6]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(21),
	datad => VCC,
	cin => \inst|ecuacion1|alu1|unidad_logica|aux[6]~24\,
	combout => \inst|ecuacion1|alu1|unidad_logica|aux[7]~25_combout\,
	cout => \inst|ecuacion1|alu1|unidad_logica|aux[7]~26\);

-- Location: FF_X23_Y6_N23
\inst|ecuacion1|alu1|unidad_logica|aux[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|ecuacion1|alu1|unidad_logica|aux[7]~25_combout\,
	ena => \inst|ecuacion1|alu1|unidad_logica|aux[0]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|alu1|unidad_logica|aux\(7));

-- Location: LCCOMB_X22_Y6_N8
\inst|ecuacion1|alu1|unidad_logica|salida~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_logica|salida~7_combout\ = (\inst|ecuacion1|MREG\(21) & (((\inst|ecuacion1|alu1|Mux10~0_combout\)))) # (!\inst|ecuacion1|MREG\(21) & (((\inst|ecuacion1|MREG\(11) & \inst|ecuacion1|alu1|Mux10~0_combout\)) # 
-- (!\inst|ecuacion1|alu1|Mux11~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(21),
	datab => \inst|ecuacion1|alu1|Mux11~0_combout\,
	datac => \inst|ecuacion1|MREG\(11),
	datad => \inst|ecuacion1|alu1|Mux10~0_combout\,
	combout => \inst|ecuacion1|alu1|unidad_logica|salida~7_combout\);

-- Location: LCCOMB_X22_Y6_N24
\inst|ecuacion1|alu1|unidad_logica|salida~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_logica|salida~9_combout\ = (\inst|ecuacion1|alu1|unidad_logica|salida~7_combout\ & ((\inst|ecuacion1|alu1|unidad_logica|salida~8_combout\) # ((!\inst|ecuacion1|alu1|Mux3~15_combout\)))) # 
-- (!\inst|ecuacion1|alu1|unidad_logica|salida~7_combout\ & (((\inst|ecuacion1|alu1|unidad_logica|aux\(7) & \inst|ecuacion1|alu1|Mux3~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|unidad_logica|salida~8_combout\,
	datab => \inst|ecuacion1|alu1|unidad_logica|aux\(7),
	datac => \inst|ecuacion1|alu1|unidad_logica|salida~7_combout\,
	datad => \inst|ecuacion1|alu1|Mux3~15_combout\,
	combout => \inst|ecuacion1|alu1|unidad_logica|salida~9_combout\);

-- Location: FF_X22_Y6_N25
\inst|ecuacion1|alu1|unidad_logica|salida[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|ecuacion1|alu1|unidad_logica|salida~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|alu1|unidad_logica|salida\(7));

-- Location: LCCOMB_X22_Y6_N18
\inst|ecuacion1|alu1|Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|Mux2~2_combout\ = (\inst|ecuacion1|alu1|unidad_logica|salida\(7) & (\inst|ecuacion1|MREG\(2) $ (((\inst|ecuacion1|MREG\(1)) # (\inst|ecuacion1|MREG\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(1),
	datab => \inst|ecuacion1|alu1|unidad_logica|salida\(7),
	datac => \inst|ecuacion1|MREG\(2),
	datad => \inst|ecuacion1|MREG\(0),
	combout => \inst|ecuacion1|alu1|Mux2~2_combout\);

-- Location: LCCOMB_X22_Y4_N14
\inst|ecuacion1|alu1|unidad_aritmetica|suma|s6|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|suma|s6|Cout~0_combout\ = (\inst|ecuacion1|MREG\(20) & ((\inst|ecuacion1|MREG\(10)) # (\inst|ecuacion1|alu1|unidad_aritmetica|suma|s5|Cout~0_combout\))) # (!\inst|ecuacion1|MREG\(20) & (\inst|ecuacion1|MREG\(10) & 
-- \inst|ecuacion1|alu1|unidad_aritmetica|suma|s5|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|ecuacion1|MREG\(20),
	datac => \inst|ecuacion1|MREG\(10),
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|suma|s5|Cout~0_combout\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|suma|s6|Cout~0_combout\);

-- Location: LCCOMB_X23_Y4_N4
\inst|ecuacion1|alu1|unidad_aritmetica|suma|s7|Suma\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|suma|s7|Suma~combout\ = \inst|ecuacion1|MREG\(11) $ (\inst|ecuacion1|MREG\(21) $ (\inst|ecuacion1|alu1|unidad_aritmetica|suma|s6|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(11),
	datab => \inst|ecuacion1|MREG\(21),
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|suma|s6|Cout~0_combout\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|suma|s7|Suma~combout\);

-- Location: LCCOMB_X25_Y4_N24
\inst|ecuacion1|alu1|unidad_aritmetica|resta|s6|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|resta|s6|Cout~0_combout\ = (\inst|ecuacion1|MREG\(20) & ((\inst|ecuacion1|alu1|unidad_aritmetica|resta|s5|Cout~0_combout\) # (!\inst|ecuacion1|MREG\(10)))) # (!\inst|ecuacion1|MREG\(20) & (!\inst|ecuacion1|MREG\(10) 
-- & \inst|ecuacion1|alu1|unidad_aritmetica|resta|s5|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(20),
	datab => \inst|ecuacion1|MREG\(10),
	datac => \inst|ecuacion1|alu1|unidad_aritmetica|resta|s5|Cout~0_combout\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|resta|s6|Cout~0_combout\);

-- Location: LCCOMB_X25_Y4_N4
\inst|ecuacion1|alu1|unidad_aritmetica|resta|s7|Suma\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|resta|s7|Suma~combout\ = \inst|ecuacion1|MREG\(21) $ (\inst|ecuacion1|MREG\(11) $ (\inst|ecuacion1|alu1|unidad_aritmetica|resta|s6|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(21),
	datab => \inst|ecuacion1|MREG\(11),
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|resta|s6|Cout~0_combout\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|resta|s7|Suma~combout\);

-- Location: LCCOMB_X25_Y4_N18
\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|s7|Suma\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|s7|Suma~combout\ = \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|s6|Cout~0_combout\ $ (\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi3|s7|Suma~0_combout\ $ (((\inst|ecuacion1|MREG\(17) & 
-- \inst|ecuacion1|MREG\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(17),
	datab => \inst|ecuacion1|MREG\(8),
	datac => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|s6|Cout~0_combout\,
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi3|s7|Suma~0_combout\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|s7|Suma~combout\);

-- Location: LCCOMB_X25_Y4_N20
\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~1_combout\ = (\inst|ecuacion1|alu1|Mux10~0_combout\ & (\inst|ecuacion1|alu1|unidad_aritmetica|resta|s7|Suma~combout\)) # (!\inst|ecuacion1|alu1|Mux10~0_combout\ & 
-- ((!\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|s7|Suma~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|Mux10~0_combout\,
	datac => \inst|ecuacion1|alu1|unidad_aritmetica|resta|s7|Suma~combout\,
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|s7|Suma~combout\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~1_combout\);

-- Location: LCCOMB_X24_Y4_N24
\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~23_combout\ = (\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~1_combout\ & (!\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~22\)) # 
-- (!\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~1_combout\ & ((\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~22\) # (GND)))
-- \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~24\ = CARRY((!\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~22\) # (!\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~1_combout\,
	datad => VCC,
	cin => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~22\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~23_combout\,
	cout => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~24\);

-- Location: LCCOMB_X25_Y4_N6
\inst|ecuacion1|alu1|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|Mux2~0_combout\ = (\inst|ecuacion1|alu1|Mux3~5_combout\ & ((\inst|ecuacion1|alu1|Mux3~6_combout\ & ((\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~23_combout\))) # (!\inst|ecuacion1|alu1|Mux3~6_combout\ & 
-- (\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|s7|Suma~combout\)))) # (!\inst|ecuacion1|alu1|Mux3~5_combout\ & (((\inst|ecuacion1|alu1|Mux3~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|Mux3~5_combout\,
	datab => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|s7|Suma~combout\,
	datac => \inst|ecuacion1|alu1|Mux3~6_combout\,
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~23_combout\,
	combout => \inst|ecuacion1|alu1|Mux2~0_combout\);

-- Location: LCCOMB_X25_Y4_N28
\inst|ecuacion1|alu1|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|Mux2~1_combout\ = (\inst|ecuacion1|alu1|Mux3~4_combout\ & ((\inst|ecuacion1|alu1|Mux2~0_combout\ & ((!\inst|ecuacion1|alu1|unidad_aritmetica|resta|s7|Suma~combout\))) # (!\inst|ecuacion1|alu1|Mux2~0_combout\ & 
-- (\inst|ecuacion1|alu1|unidad_aritmetica|suma|s7|Suma~combout\)))) # (!\inst|ecuacion1|alu1|Mux3~4_combout\ & (((\inst|ecuacion1|alu1|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|unidad_aritmetica|suma|s7|Suma~combout\,
	datab => \inst|ecuacion1|alu1|unidad_aritmetica|resta|s7|Suma~combout\,
	datac => \inst|ecuacion1|alu1|Mux3~4_combout\,
	datad => \inst|ecuacion1|alu1|Mux2~0_combout\,
	combout => \inst|ecuacion1|alu1|Mux2~1_combout\);

-- Location: LCCOMB_X25_Y4_N22
\inst|ecuacion1|alu1|Mux2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|Mux2~4_combout\ = (\inst|ecuacion1|alu1|Mux3~8_combout\ & (((\inst|ecuacion1|alu1|Mux2~1_combout\)))) # (!\inst|ecuacion1|alu1|Mux3~8_combout\ & ((\inst|ecuacion1|alu1|Mux2~3_combout\) # ((\inst|ecuacion1|alu1|Mux2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|Mux2~3_combout\,
	datab => \inst|ecuacion1|alu1|Mux2~2_combout\,
	datac => \inst|ecuacion1|alu1|Mux3~8_combout\,
	datad => \inst|ecuacion1|alu1|Mux2~1_combout\,
	combout => \inst|ecuacion1|alu1|Mux2~4_combout\);

-- Location: FF_X24_Y4_N21
\inst|ecuacion1|registro[2][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|ecuacion1|alu1|Mux2~4_combout\,
	sload => VCC,
	ena => \inst|ecuacion1|pr_state~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|registro[2][7]~q\);

-- Location: FF_X25_Y4_N23
\inst|ecuacion1|registro[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|ecuacion1|alu1|Mux2~4_combout\,
	ena => \inst|ecuacion1|pr_state~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|registro[1][7]~q\);

-- Location: LCCOMB_X22_Y8_N18
\inst|ecuacion1|Selector26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|Selector26~0_combout\ = (\inst|ecuacion1|pr_state.state8~q\ & (\inst|ecuacion1|registro[2][7]~q\)) # (!\inst|ecuacion1|pr_state.state8~q\ & (((\inst|ecuacion1|pr_state.state6~q\ & \inst|ecuacion1|registro[1][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|registro[2][7]~q\,
	datab => \inst|ecuacion1|pr_state.state6~q\,
	datac => \inst|ecuacion1|registro[1][7]~q\,
	datad => \inst|ecuacion1|pr_state.state8~q\,
	combout => \inst|ecuacion1|Selector26~0_combout\);

-- Location: FF_X22_Y8_N19
\inst|ecuacion1|MREG[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|ecuacion1|Selector26~0_combout\,
	ena => \inst|ecuacion1|MREG[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|MREG\(11));

-- Location: LCCOMB_X25_Y4_N26
\inst|ecuacion1|alu1|unidad_aritmetica|resta|s7|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|resta|s7|Cout~0_combout\ = (\inst|ecuacion1|MREG\(11) & (\inst|ecuacion1|alu1|unidad_aritmetica|resta|s6|Cout~0_combout\ & \inst|ecuacion1|MREG\(21))) # (!\inst|ecuacion1|MREG\(11) & 
-- ((\inst|ecuacion1|alu1|unidad_aritmetica|resta|s6|Cout~0_combout\) # (\inst|ecuacion1|MREG\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(11),
	datab => \inst|ecuacion1|alu1|unidad_aritmetica|resta|s6|Cout~0_combout\,
	datac => \inst|ecuacion1|MREG\(21),
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|resta|s7|Cout~0_combout\);

-- Location: LCCOMB_X25_Y7_N18
\inst|ecuacion1|alu1|unidad_aritmetica|Mux9~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|Mux9~4_combout\ = (\inst|ecuacion1|alu1|Mux10~0_combout\ & (\inst|ecuacion1|MREG\(4) $ ((\inst|ecuacion1|MREG\(14))))) # (!\inst|ecuacion1|alu1|Mux10~0_combout\ & 
-- ((\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|s8|Cout~0_combout\) # ((\inst|ecuacion1|MREG\(4) & \inst|ecuacion1|MREG\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110101101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|Mux10~0_combout\,
	datab => \inst|ecuacion1|MREG\(4),
	datac => \inst|ecuacion1|MREG\(14),
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|s8|Cout~0_combout\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|Mux9~4_combout\);

-- Location: LCCOMB_X25_Y7_N22
\inst|ecuacion1|alu1|unidad_aritmetica|Mux9~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|Mux9~5_combout\ = (\inst|ecuacion1|alu1|Mux11~0_combout\ & ((\inst|ecuacion1|alu1|unidad_aritmetica|resta|s7|Cout~0_combout\ & ((\inst|ecuacion1|alu1|unidad_aritmetica|Mux9~4_combout\))) # 
-- (!\inst|ecuacion1|alu1|unidad_aritmetica|resta|s7|Cout~0_combout\ & (\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~8_combout\)))) # (!\inst|ecuacion1|alu1|Mux11~0_combout\ & (((\inst|ecuacion1|alu1|unidad_aritmetica|Mux9~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~8_combout\,
	datab => \inst|ecuacion1|alu1|Mux11~0_combout\,
	datac => \inst|ecuacion1|alu1|unidad_aritmetica|resta|s7|Cout~0_combout\,
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|Mux9~4_combout\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|Mux9~5_combout\);

-- Location: LCCOMB_X25_Y7_N20
\inst|ecuacion1|alu1|unidad_aritmetica|Mux9~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|Mux9~6_combout\ = (\inst|ecuacion1|alu1|unidad_aritmetica|Mux9~5_combout\ & ((\inst|ecuacion1|alu1|Mux10~0_combout\) # ((\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~8_combout\) # 
-- (!\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|s8|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|Mux10~0_combout\,
	datab => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~8_combout\,
	datac => \inst|ecuacion1|alu1|unidad_aritmetica|Mux9~5_combout\,
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|s8|Cout~0_combout\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|Mux9~6_combout\);

-- Location: LCCOMB_X24_Y8_N18
\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~0_combout\ = (\inst|ecuacion1|MREG\(15) & ((GND) # (!\inst|ecuacion1|MREG\(4)))) # (!\inst|ecuacion1|MREG\(15) & (\inst|ecuacion1|MREG\(4) $ (GND)))
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~1\ = CARRY((\inst|ecuacion1|MREG\(15)) # (!\inst|ecuacion1|MREG\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(15),
	datab => \inst|ecuacion1|MREG\(4),
	datad => VCC,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~0_combout\,
	cout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~1\);

-- Location: LCCOMB_X24_Y8_N20
\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~2_combout\ = (\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~20_combout\ & ((\inst|ecuacion1|MREG\(5) & (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~1\)) # (!\inst|ecuacion1|MREG\(5) & 
-- (\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~1\ & VCC)))) # (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~20_combout\ & ((\inst|ecuacion1|MREG\(5) & ((\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~1\) # (GND))) # (!\inst|ecuacion1|MREG\(5) & 
-- (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~1\))))
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~3\ = CARRY((\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~20_combout\ & (\inst|ecuacion1|MREG\(5) & !\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~1\)) # 
-- (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~20_combout\ & ((\inst|ecuacion1|MREG\(5)) # (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~20_combout\,
	datab => \inst|ecuacion1|MREG\(5),
	datad => VCC,
	cin => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~1\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~2_combout\,
	cout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~3\);

-- Location: LCCOMB_X24_Y8_N22
\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~4_combout\ = ((\inst|ecuacion1|MREG\(6) $ (\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~19_combout\ $ (\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~3\)))) # (GND)
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~5\ = CARRY((\inst|ecuacion1|MREG\(6) & (\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~19_combout\ & !\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~3\)) # (!\inst|ecuacion1|MREG\(6) & 
-- ((\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~19_combout\) # (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(6),
	datab => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~19_combout\,
	datad => VCC,
	cin => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~3\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~4_combout\,
	cout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~5\);

-- Location: LCCOMB_X24_Y8_N24
\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~6_combout\ = (\inst|ecuacion1|MREG\(7) & ((\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~18_combout\ & (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~5\)) # 
-- (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~18_combout\ & ((\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~5\) # (GND))))) # (!\inst|ecuacion1|MREG\(7) & ((\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~18_combout\ & 
-- (\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~5\ & VCC)) # (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~18_combout\ & (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~5\))))
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~7\ = CARRY((\inst|ecuacion1|MREG\(7) & ((!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~5\) # (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~18_combout\))) # (!\inst|ecuacion1|MREG\(7) & 
-- (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~18_combout\ & !\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(7),
	datab => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~18_combout\,
	datad => VCC,
	cin => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~5\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~6_combout\,
	cout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~7\);

-- Location: LCCOMB_X24_Y8_N26
\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~8_combout\ = ((\inst|ecuacion1|MREG\(8) $ (\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~17_combout\ $ (\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~7\)))) # (GND)
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~9\ = CARRY((\inst|ecuacion1|MREG\(8) & (\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~17_combout\ & !\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~7\)) # (!\inst|ecuacion1|MREG\(8) & 
-- ((\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~17_combout\) # (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(8),
	datab => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~17_combout\,
	datad => VCC,
	cin => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~7\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~8_combout\,
	cout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~9\);

-- Location: LCCOMB_X24_Y8_N28
\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~10_combout\ = (\inst|ecuacion1|MREG\(9) & ((\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~16_combout\ & (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~9\)) # 
-- (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~16_combout\ & ((\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~9\) # (GND))))) # (!\inst|ecuacion1|MREG\(9) & ((\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~16_combout\ & 
-- (\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~9\ & VCC)) # (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~16_combout\ & (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~9\))))
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~11\ = CARRY((\inst|ecuacion1|MREG\(9) & ((!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~9\) # (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~16_combout\))) # (!\inst|ecuacion1|MREG\(9) & 
-- (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~16_combout\ & !\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(9),
	datab => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~16_combout\,
	datad => VCC,
	cin => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~9\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~10_combout\,
	cout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~11\);

-- Location: LCCOMB_X24_Y8_N30
\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~12_combout\ = \inst|ecuacion1|MREG\(10) $ (\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~11\ $ (\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(10),
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~15_combout\,
	cin => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~11\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~12_combout\);

-- Location: LCCOMB_X26_Y8_N28
\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~14_combout\ = (\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan2~14_combout\ & (\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~15_combout\)) # 
-- (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan2~14_combout\ & ((\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~15_combout\,
	datac => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan2~14_combout\,
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~12_combout\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~14_combout\);

-- Location: LCCOMB_X26_Y8_N6
\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~15_combout\ = (\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan2~14_combout\ & (\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~16_combout\)) # 
-- (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan2~14_combout\ & ((\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~16_combout\,
	datac => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~10_combout\,
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan2~14_combout\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~15_combout\);

-- Location: LCCOMB_X26_Y8_N0
\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~16_combout\ = (\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan2~14_combout\ & (\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~17_combout\)) # 
-- (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan2~14_combout\ & ((\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~17_combout\,
	datac => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~8_combout\,
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan2~14_combout\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~16_combout\);

-- Location: LCCOMB_X26_Y8_N26
\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~17_combout\ = (\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan2~14_combout\ & (\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~18_combout\)) # 
-- (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan2~14_combout\ & ((\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~18_combout\,
	datac => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~6_combout\,
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan2~14_combout\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~17_combout\);

-- Location: LCCOMB_X26_Y8_N4
\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~18_combout\ = (\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan2~14_combout\ & (\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~19_combout\)) # 
-- (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan2~14_combout\ & ((\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~19_combout\,
	datac => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~4_combout\,
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan2~14_combout\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~18_combout\);

-- Location: LCCOMB_X26_Y8_N30
\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~19_combout\ = (\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan2~14_combout\ & (\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~20_combout\)) # 
-- (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan2~14_combout\ & ((\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add1~20_combout\,
	datac => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~2_combout\,
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan2~14_combout\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~19_combout\);

-- Location: LCCOMB_X26_Y8_N8
\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~20_combout\ = (\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan2~14_combout\ & (\inst|ecuacion1|MREG\(15))) # (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan2~14_combout\ & 
-- ((\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|ecuacion1|MREG\(15),
	datac => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~0_combout\,
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan2~14_combout\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~20_combout\);

-- Location: LCCOMB_X26_Y8_N10
\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan3~1_cout\ = CARRY((!\inst|ecuacion1|MREG\(14) & \inst|ecuacion1|MREG\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(14),
	datab => \inst|ecuacion1|MREG\(4),
	datad => VCC,
	cout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan3~1_cout\);

-- Location: LCCOMB_X26_Y8_N12
\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan3~3_cout\ = CARRY((\inst|ecuacion1|MREG\(5) & (\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~20_combout\ & !\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan3~1_cout\)) # (!\inst|ecuacion1|MREG\(5) 
-- & ((\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~20_combout\) # (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan3~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(5),
	datab => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~20_combout\,
	datad => VCC,
	cin => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan3~1_cout\,
	cout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan3~3_cout\);

-- Location: LCCOMB_X26_Y8_N14
\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan3~5_cout\ = CARRY((\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~19_combout\ & (\inst|ecuacion1|MREG\(6) & !\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan3~3_cout\)) # 
-- (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~19_combout\ & ((\inst|ecuacion1|MREG\(6)) # (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan3~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~19_combout\,
	datab => \inst|ecuacion1|MREG\(6),
	datad => VCC,
	cin => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan3~3_cout\,
	cout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan3~5_cout\);

-- Location: LCCOMB_X26_Y8_N16
\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan3~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan3~7_cout\ = CARRY((\inst|ecuacion1|MREG\(7) & (\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~18_combout\ & !\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan3~5_cout\)) # (!\inst|ecuacion1|MREG\(7) 
-- & ((\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~18_combout\) # (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan3~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(7),
	datab => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~18_combout\,
	datad => VCC,
	cin => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan3~5_cout\,
	cout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan3~7_cout\);

-- Location: LCCOMB_X26_Y8_N18
\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan3~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan3~9_cout\ = CARRY((\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~17_combout\ & (\inst|ecuacion1|MREG\(8) & !\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan3~7_cout\)) # 
-- (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~17_combout\ & ((\inst|ecuacion1|MREG\(8)) # (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan3~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~17_combout\,
	datab => \inst|ecuacion1|MREG\(8),
	datad => VCC,
	cin => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan3~7_cout\,
	cout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan3~9_cout\);

-- Location: LCCOMB_X26_Y8_N20
\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan3~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan3~11_cout\ = CARRY((\inst|ecuacion1|MREG\(9) & (\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~16_combout\ & !\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan3~9_cout\)) # 
-- (!\inst|ecuacion1|MREG\(9) & ((\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~16_combout\) # (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan3~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(9),
	datab => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~16_combout\,
	datad => VCC,
	cin => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan3~9_cout\,
	cout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan3~11_cout\);

-- Location: LCCOMB_X26_Y8_N22
\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan3~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan3~13_cout\ = CARRY((\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~15_combout\ & (\inst|ecuacion1|MREG\(10) & !\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan3~11_cout\)) # 
-- (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~15_combout\ & ((\inst|ecuacion1|MREG\(10)) # (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan3~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~15_combout\,
	datab => \inst|ecuacion1|MREG\(10),
	datad => VCC,
	cin => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan3~11_cout\,
	cout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan3~13_cout\);

-- Location: LCCOMB_X26_Y8_N24
\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan3~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan3~14_combout\ = (\inst|ecuacion1|MREG\(11) & ((\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan3~13_cout\) # (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~14_combout\))) # 
-- (!\inst|ecuacion1|MREG\(11) & (\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan3~13_cout\ & !\inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(11),
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|divi|Add2~14_combout\,
	cin => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan3~13_cout\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan3~14_combout\);

-- Location: LCCOMB_X26_Y5_N0
\inst|ecuacion1|alu1|unidad_aritmetica|Mux9~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|Mux9~7_combout\ = (\inst|ecuacion1|alu1|Mux10~0_combout\ & (((\inst|ecuacion1|alu1|unidad_aritmetica|Mux9~6_combout\)))) # (!\inst|ecuacion1|alu1|Mux10~0_combout\ & ((\inst|ecuacion1|alu1|Mux11~0_combout\ & 
-- ((!\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan3~14_combout\))) # (!\inst|ecuacion1|alu1|Mux11~0_combout\ & (\inst|ecuacion1|alu1|unidad_aritmetica|Mux9~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|Mux10~0_combout\,
	datab => \inst|ecuacion1|alu1|Mux11~0_combout\,
	datac => \inst|ecuacion1|alu1|unidad_aritmetica|Mux9~6_combout\,
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan3~14_combout\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|Mux9~7_combout\);

-- Location: LCCOMB_X26_Y5_N14
\inst|ecuacion1|alu1|Mux9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|Mux9~1_combout\ = (\inst|ecuacion1|MREG\(3) & ((\inst|ecuacion1|alu1|unidad_aritmetica|Mux9~7_combout\) # (!\inst|ecuacion1|alu1|Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(3),
	datac => \inst|ecuacion1|alu1|Mux0~0_combout\,
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|Mux9~7_combout\,
	combout => \inst|ecuacion1|alu1|Mux9~1_combout\);

-- Location: LCCOMB_X26_Y5_N24
\inst|ecuacion1|alu1|unidad_aritmetica|Mux9~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|Mux9~8_combout\ = (\inst|ecuacion1|MREG\(4) & (\inst|ecuacion1|MREG\(14) $ (((\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|s8|Cout~0_combout\ & \inst|ecuacion1|alu1|Mux10~0_combout\))))) # 
-- (!\inst|ecuacion1|MREG\(4) & (\inst|ecuacion1|MREG\(14) & (\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|s8|Cout~0_combout\ & \inst|ecuacion1|alu1|Mux10~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(4),
	datab => \inst|ecuacion1|MREG\(14),
	datac => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|s8|Cout~0_combout\,
	datad => \inst|ecuacion1|alu1|Mux10~0_combout\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|Mux9~8_combout\);

-- Location: LCCOMB_X26_Y5_N4
\inst|ecuacion1|alu1|Mux9~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|Mux9~5_combout\ = (\inst|ecuacion1|alu1|Mux10~0_combout\ & (\inst|ecuacion1|MREG\(14) $ ((\inst|ecuacion1|MREG\(4))))) # (!\inst|ecuacion1|alu1|Mux10~0_combout\ & (((\inst|ecuacion1|alu1|Mux11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|Mux10~0_combout\,
	datab => \inst|ecuacion1|MREG\(14),
	datac => \inst|ecuacion1|MREG\(4),
	datad => \inst|ecuacion1|alu1|Mux11~0_combout\,
	combout => \inst|ecuacion1|alu1|Mux9~5_combout\);

-- Location: LCCOMB_X26_Y5_N16
\inst|ecuacion1|alu1|Mux9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|Mux9~2_combout\ = (\inst|ecuacion1|alu1|Mux10~0_combout\ & (((\inst|ecuacion1|alu1|Mux9~5_combout\)))) # (!\inst|ecuacion1|alu1|Mux10~0_combout\ & ((\inst|ecuacion1|alu1|Mux9~5_combout\ & 
-- ((!\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan3~14_combout\))) # (!\inst|ecuacion1|alu1|Mux9~5_combout\ & (\inst|ecuacion1|alu1|unidad_aritmetica|Mux9~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|Mux10~0_combout\,
	datab => \inst|ecuacion1|alu1|unidad_aritmetica|Mux9~8_combout\,
	datac => \inst|ecuacion1|alu1|Mux9~5_combout\,
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan3~14_combout\,
	combout => \inst|ecuacion1|alu1|Mux9~2_combout\);

-- Location: LCCOMB_X26_Y5_N6
\inst|ecuacion1|alu1|Mux9~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|Mux9~3_combout\ = (\inst|ecuacion1|MREG\(1) & (((\inst|ecuacion1|MREG\(0) & \inst|ecuacion1|alu1|Mux9~2_combout\)))) # (!\inst|ecuacion1|MREG\(1) & (\inst|ecuacion1|alu1|unidad_logica|salida\(0) & (!\inst|ecuacion1|MREG\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(1),
	datab => \inst|ecuacion1|alu1|unidad_logica|salida\(0),
	datac => \inst|ecuacion1|MREG\(0),
	datad => \inst|ecuacion1|alu1|Mux9~2_combout\,
	combout => \inst|ecuacion1|alu1|Mux9~3_combout\);

-- Location: LCCOMB_X25_Y5_N16
\inst|ecuacion1|alu1|Mux9~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|Mux9~4_combout\ = (\inst|ecuacion1|alu1|Mux9~0_combout\) # ((\inst|ecuacion1|alu1|Mux9~1_combout\) # ((\inst|ecuacion1|MREG\(2) & \inst|ecuacion1|alu1|Mux9~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|Mux9~0_combout\,
	datab => \inst|ecuacion1|MREG\(2),
	datac => \inst|ecuacion1|alu1|Mux9~1_combout\,
	datad => \inst|ecuacion1|alu1|Mux9~3_combout\,
	combout => \inst|ecuacion1|alu1|Mux9~4_combout\);

-- Location: FF_X25_Y5_N31
\inst|ecuacion1|registro[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|ecuacion1|alu1|Mux9~4_combout\,
	sload => VCC,
	ena => \inst|ecuacion1|pr_state~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|registro[0][0]~q\);

-- Location: LCCOMB_X24_Y3_N12
\inst|ecuacion1|Selector23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|Selector23~0_combout\ = (\inst|ecuacion1|pr_state.state6~q\ & (((\inst|ecuacion1|registro[0][0]~q\)))) # (!\inst|ecuacion1|pr_state.state6~q\ & (((!\inst|ecuacion1|addr1\(1))) # (!\inst|ecuacion1|addr1\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|addr1\(0),
	datab => \inst|ecuacion1|addr1\(1),
	datac => \inst|ecuacion1|registro[0][0]~q\,
	datad => \inst|ecuacion1|pr_state.state6~q\,
	combout => \inst|ecuacion1|Selector23~0_combout\);

-- Location: LCCOMB_X22_Y7_N6
\inst|ecuacion1|MREG[14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|MREG[14]~feeder_combout\ = \inst|ecuacion1|Selector23~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|ecuacion1|Selector23~0_combout\,
	combout => \inst|ecuacion1|MREG[14]~feeder_combout\);

-- Location: LCCOMB_X26_Y5_N20
\inst|ecuacion1|registro[3][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|registro[3][0]~feeder_combout\ = \inst|ecuacion1|alu1|Mux9~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|ecuacion1|alu1|Mux9~4_combout\,
	combout => \inst|ecuacion1|registro[3][0]~feeder_combout\);

-- Location: FF_X26_Y5_N21
\inst|ecuacion1|registro[3][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|ecuacion1|registro[3][0]~feeder_combout\,
	ena => \inst|ecuacion1|pr_state~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|registro[3][0]~q\);

-- Location: FF_X22_Y7_N7
\inst|ecuacion1|MREG[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|ecuacion1|MREG[14]~feeder_combout\,
	asdata => \inst|ecuacion1|registro[3][0]~q\,
	sload => \inst|ecuacion1|pr_state.state8~q\,
	ena => \inst|ecuacion1|MREG[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|MREG\(14));

-- Location: LCCOMB_X23_Y6_N6
\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi3|s3|Suma\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi3|s3|Suma~combout\ = \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi1|s3|Suma~combout\ $ (\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi2|s3|Suma~0_combout\ $ (((\inst|ecuacion1|MREG\(14) & 
-- \inst|ecuacion1|MREG\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(14),
	datab => \inst|ecuacion1|MREG\(7),
	datac => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi1|s3|Suma~combout\,
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi2|s3|Suma~0_combout\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi3|s3|Suma~combout\);

-- Location: LCCOMB_X22_Y6_N4
\inst|ecuacion1|alu1|unidad_aritmetica|suma|s3|Suma\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|suma|s3|Suma~combout\ = \inst|ecuacion1|alu1|unidad_aritmetica|suma|s2|Cout~0_combout\ $ (\inst|ecuacion1|MREG\(7) $ (\inst|ecuacion1|MREG\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|unidad_aritmetica|suma|s2|Cout~0_combout\,
	datac => \inst|ecuacion1|MREG\(7),
	datad => \inst|ecuacion1|MREG\(17),
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|suma|s3|Suma~combout\);

-- Location: LCCOMB_X22_Y6_N10
\inst|ecuacion1|alu1|Mux6~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|Mux6~8_combout\ = (\inst|ecuacion1|alu1|Mux11~0_combout\ & (((\inst|ecuacion1|alu1|Mux10~0_combout\)))) # (!\inst|ecuacion1|alu1|Mux11~0_combout\ & ((\inst|ecuacion1|alu1|Mux10~0_combout\ & 
-- ((\inst|ecuacion1|alu1|unidad_aritmetica|suma|s3|Suma~combout\))) # (!\inst|ecuacion1|alu1|Mux10~0_combout\ & (\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi3|s3|Suma~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi3|s3|Suma~combout\,
	datab => \inst|ecuacion1|alu1|Mux11~0_combout\,
	datac => \inst|ecuacion1|alu1|unidad_aritmetica|suma|s3|Suma~combout\,
	datad => \inst|ecuacion1|alu1|Mux10~0_combout\,
	combout => \inst|ecuacion1|alu1|Mux6~8_combout\);

-- Location: LCCOMB_X22_Y6_N28
\inst|ecuacion1|alu1|Mux6~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|Mux6~9_combout\ = (\inst|ecuacion1|alu1|Mux6~8_combout\ & (((!\inst|ecuacion1|alu1|unidad_aritmetica|resta|s3|Suma~combout\)) # (!\inst|ecuacion1|alu1|Mux11~0_combout\))) # (!\inst|ecuacion1|alu1|Mux6~8_combout\ & 
-- (\inst|ecuacion1|alu1|Mux11~0_combout\ & (!\inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|Mux6~8_combout\,
	datab => \inst|ecuacion1|alu1|Mux11~0_combout\,
	datac => \inst|ecuacion1|alu1|unidad_aritmetica|divi|LessThan0~2_combout\,
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|resta|s3|Suma~combout\,
	combout => \inst|ecuacion1|alu1|Mux6~9_combout\);

-- Location: LCCOMB_X22_Y6_N12
\inst|ecuacion1|alu1|unidad_logica|salida~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_logica|salida~19_combout\ = (\inst|ecuacion1|MREG\(17) & (\inst|ecuacion1|alu1|Mux10~0_combout\)) # (!\inst|ecuacion1|MREG\(17) & (((\inst|ecuacion1|alu1|Mux10~0_combout\ & \inst|ecuacion1|MREG\(7))) # 
-- (!\inst|ecuacion1|alu1|Mux11~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|Mux10~0_combout\,
	datab => \inst|ecuacion1|MREG\(7),
	datac => \inst|ecuacion1|alu1|Mux11~0_combout\,
	datad => \inst|ecuacion1|MREG\(17),
	combout => \inst|ecuacion1|alu1|unidad_logica|salida~19_combout\);

-- Location: LCCOMB_X23_Y6_N14
\inst|ecuacion1|alu1|unidad_logica|aux[3]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_logica|aux[3]~17_combout\ = (\inst|ecuacion1|MREG\(17) & (!\inst|ecuacion1|alu1|unidad_logica|aux[2]~16\ & VCC)) # (!\inst|ecuacion1|MREG\(17) & (\inst|ecuacion1|alu1|unidad_logica|aux[2]~16\ $ (GND)))
-- \inst|ecuacion1|alu1|unidad_logica|aux[3]~18\ = CARRY((!\inst|ecuacion1|MREG\(17) & !\inst|ecuacion1|alu1|unidad_logica|aux[2]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(17),
	datad => VCC,
	cin => \inst|ecuacion1|alu1|unidad_logica|aux[2]~16\,
	combout => \inst|ecuacion1|alu1|unidad_logica|aux[3]~17_combout\,
	cout => \inst|ecuacion1|alu1|unidad_logica|aux[3]~18\);

-- Location: FF_X23_Y6_N15
\inst|ecuacion1|alu1|unidad_logica|aux[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|ecuacion1|alu1|unidad_logica|aux[3]~17_combout\,
	ena => \inst|ecuacion1|alu1|unidad_logica|aux[0]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|alu1|unidad_logica|aux\(3));

-- Location: LCCOMB_X23_Y6_N30
\inst|ecuacion1|alu1|unidad_logica|salida~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_logica|salida~20_combout\ = (\inst|ecuacion1|MREG\(17) & \inst|ecuacion1|MREG\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|ecuacion1|MREG\(17),
	datad => \inst|ecuacion1|MREG\(7),
	combout => \inst|ecuacion1|alu1|unidad_logica|salida~20_combout\);

-- Location: LCCOMB_X22_Y6_N26
\inst|ecuacion1|alu1|unidad_logica|salida~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_logica|salida~21_combout\ = (\inst|ecuacion1|alu1|unidad_logica|salida~19_combout\ & (((\inst|ecuacion1|alu1|unidad_logica|salida~20_combout\) # (!\inst|ecuacion1|alu1|Mux3~15_combout\)))) # 
-- (!\inst|ecuacion1|alu1|unidad_logica|salida~19_combout\ & (\inst|ecuacion1|alu1|unidad_logica|aux\(3) & ((\inst|ecuacion1|alu1|Mux3~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|unidad_logica|salida~19_combout\,
	datab => \inst|ecuacion1|alu1|unidad_logica|aux\(3),
	datac => \inst|ecuacion1|alu1|unidad_logica|salida~20_combout\,
	datad => \inst|ecuacion1|alu1|Mux3~15_combout\,
	combout => \inst|ecuacion1|alu1|unidad_logica|salida~21_combout\);

-- Location: FF_X22_Y6_N27
\inst|ecuacion1|alu1|unidad_logica|salida[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|ecuacion1|alu1|unidad_logica|salida~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|alu1|unidad_logica|salida\(3));

-- Location: FF_X25_Y7_N27
\inst|ecuacion1|alu1|barrel_shifters|aux[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|ecuacion1|MREG\(16),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|alu1|barrel_shifters|aux\(3));

-- Location: FF_X25_Y7_N13
\inst|ecuacion1|alu1|barrel_shifters|salShifters[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|ecuacion1|alu1|barrel_shifters|aux\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|alu1|barrel_shifters|salShifters\(3));

-- Location: LCCOMB_X25_Y7_N12
\inst|ecuacion1|alu1|Mux6~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|Mux6~11_combout\ = (\inst|ecuacion1|alu1|Mux6~14_combout\ & ((\inst|ecuacion1|alu1|Mux6~10_combout\ & (\inst|ecuacion1|alu1|unidad_logica|salida\(3))) # (!\inst|ecuacion1|alu1|Mux6~10_combout\ & 
-- ((\inst|ecuacion1|alu1|barrel_shifters|salShifters\(3)))))) # (!\inst|ecuacion1|alu1|Mux6~14_combout\ & (((\inst|ecuacion1|alu1|Mux6~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|unidad_logica|salida\(3),
	datab => \inst|ecuacion1|alu1|Mux6~14_combout\,
	datac => \inst|ecuacion1|alu1|barrel_shifters|salShifters\(3),
	datad => \inst|ecuacion1|alu1|Mux6~10_combout\,
	combout => \inst|ecuacion1|alu1|Mux6~11_combout\);

-- Location: LCCOMB_X25_Y7_N24
\inst|ecuacion1|alu1|Mux6~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|Mux6~12_combout\ = (\inst|ecuacion1|alu1|Mux3~8_combout\ & ((\inst|ecuacion1|alu1|Mux6~11_combout\ & ((\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~15_combout\))) # (!\inst|ecuacion1|alu1|Mux6~11_combout\ & 
-- (\inst|ecuacion1|alu1|Mux6~9_combout\)))) # (!\inst|ecuacion1|alu1|Mux3~8_combout\ & (((\inst|ecuacion1|alu1|Mux6~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|Mux3~8_combout\,
	datab => \inst|ecuacion1|alu1|Mux6~9_combout\,
	datac => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~15_combout\,
	datad => \inst|ecuacion1|alu1|Mux6~11_combout\,
	combout => \inst|ecuacion1|alu1|Mux6~12_combout\);

-- Location: LCCOMB_X25_Y7_N28
\inst|ecuacion1|alu1|Mux6~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|Mux6~13_combout\ = (\inst|ecuacion1|alu1|Mux6~12_combout\) # ((!\inst|ecuacion1|alu1|Mux3~8_combout\ & \inst|ecuacion1|MREG\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|Mux3~8_combout\,
	datab => \inst|ecuacion1|alu1|Mux6~12_combout\,
	datad => \inst|ecuacion1|MREG\(3),
	combout => \inst|ecuacion1|alu1|Mux6~13_combout\);

-- Location: LCCOMB_X22_Y4_N12
\inst|ecuacion1|registro[3][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|registro[3][3]~feeder_combout\ = \inst|ecuacion1|alu1|Mux6~13_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|ecuacion1|alu1|Mux6~13_combout\,
	combout => \inst|ecuacion1|registro[3][3]~feeder_combout\);

-- Location: FF_X22_Y4_N13
\inst|ecuacion1|registro[3][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|ecuacion1|registro[3][3]~feeder_combout\,
	ena => \inst|ecuacion1|pr_state~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|registro[3][3]~q\);

-- Location: FF_X22_Y4_N3
\inst|ecuacion1|registro[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|ecuacion1|alu1|Mux6~13_combout\,
	sload => VCC,
	ena => \inst|ecuacion1|pr_state~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|registro[0][3]~q\);

-- Location: LCCOMB_X22_Y4_N2
\inst|ecuacion1|Selector20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|Selector20~0_combout\ = (\inst|ecuacion1|pr_state.state8~q\ & (\inst|ecuacion1|registro[3][3]~q\)) # (!\inst|ecuacion1|pr_state.state8~q\ & (((\inst|ecuacion1|pr_state.state6~q\ & \inst|ecuacion1|registro[0][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|registro[3][3]~q\,
	datab => \inst|ecuacion1|pr_state.state6~q\,
	datac => \inst|ecuacion1|registro[0][3]~q\,
	datad => \inst|ecuacion1|pr_state.state8~q\,
	combout => \inst|ecuacion1|Selector20~0_combout\);

-- Location: FF_X23_Y7_N1
\inst|ecuacion1|MREG[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|ecuacion1|Selector20~0_combout\,
	sload => VCC,
	ena => \inst|ecuacion1|MREG[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|MREG\(17));

-- Location: LCCOMB_X26_Y5_N26
\inst|ecuacion1|alu1|barrel_shifters|aux[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|barrel_shifters|aux[4]~feeder_combout\ = \inst|ecuacion1|MREG\(17)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|ecuacion1|MREG\(17),
	combout => \inst|ecuacion1|alu1|barrel_shifters|aux[4]~feeder_combout\);

-- Location: FF_X26_Y5_N27
\inst|ecuacion1|alu1|barrel_shifters|aux[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|ecuacion1|alu1|barrel_shifters|aux[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|alu1|barrel_shifters|aux\(4));

-- Location: FF_X26_Y5_N13
\inst|ecuacion1|alu1|barrel_shifters|salShifters[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|ecuacion1|alu1|barrel_shifters|aux\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|alu1|barrel_shifters|salShifters\(4));

-- Location: LCCOMB_X26_Y5_N12
\inst|ecuacion1|alu1|Mux5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|Mux5~3_combout\ = (\inst|ecuacion1|MREG\(3)) # ((\inst|ecuacion1|MREG\(2) & (\inst|ecuacion1|alu1|barrel_shifters|salShifters\(4) & !\inst|ecuacion1|alu1|Mux3~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(3),
	datab => \inst|ecuacion1|MREG\(2),
	datac => \inst|ecuacion1|alu1|barrel_shifters|salShifters\(4),
	datad => \inst|ecuacion1|alu1|Mux3~7_combout\,
	combout => \inst|ecuacion1|alu1|Mux5~3_combout\);

-- Location: LCCOMB_X22_Y4_N0
\inst|ecuacion1|alu1|unidad_logica|salida~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_logica|salida~16_combout\ = (\inst|ecuacion1|MREG\(18) & (\inst|ecuacion1|alu1|Mux10~0_combout\)) # (!\inst|ecuacion1|MREG\(18) & (((\inst|ecuacion1|alu1|Mux10~0_combout\ & \inst|ecuacion1|MREG\(8))) # 
-- (!\inst|ecuacion1|alu1|Mux11~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|Mux10~0_combout\,
	datab => \inst|ecuacion1|alu1|Mux11~0_combout\,
	datac => \inst|ecuacion1|MREG\(18),
	datad => \inst|ecuacion1|MREG\(8),
	combout => \inst|ecuacion1|alu1|unidad_logica|salida~16_combout\);

-- Location: LCCOMB_X23_Y6_N16
\inst|ecuacion1|alu1|unidad_logica|aux[4]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_logica|aux[4]~19_combout\ = (\inst|ecuacion1|MREG\(18) & ((\inst|ecuacion1|alu1|unidad_logica|aux[3]~18\) # (GND))) # (!\inst|ecuacion1|MREG\(18) & (!\inst|ecuacion1|alu1|unidad_logica|aux[3]~18\))
-- \inst|ecuacion1|alu1|unidad_logica|aux[4]~20\ = CARRY((\inst|ecuacion1|MREG\(18)) # (!\inst|ecuacion1|alu1|unidad_logica|aux[3]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(18),
	datad => VCC,
	cin => \inst|ecuacion1|alu1|unidad_logica|aux[3]~18\,
	combout => \inst|ecuacion1|alu1|unidad_logica|aux[4]~19_combout\,
	cout => \inst|ecuacion1|alu1|unidad_logica|aux[4]~20\);

-- Location: FF_X23_Y6_N17
\inst|ecuacion1|alu1|unidad_logica|aux[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|ecuacion1|alu1|unidad_logica|aux[4]~19_combout\,
	ena => \inst|ecuacion1|alu1|unidad_logica|aux[0]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|alu1|unidad_logica|aux\(4));

-- Location: LCCOMB_X23_Y6_N0
\inst|ecuacion1|alu1|unidad_logica|salida~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_logica|salida~17_combout\ = (\inst|ecuacion1|MREG\(8) & \inst|ecuacion1|MREG\(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|ecuacion1|MREG\(8),
	datac => \inst|ecuacion1|MREG\(18),
	combout => \inst|ecuacion1|alu1|unidad_logica|salida~17_combout\);

-- Location: LCCOMB_X22_Y6_N0
\inst|ecuacion1|alu1|unidad_logica|salida~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_logica|salida~18_combout\ = (\inst|ecuacion1|alu1|unidad_logica|salida~16_combout\ & (((\inst|ecuacion1|alu1|unidad_logica|salida~17_combout\) # (!\inst|ecuacion1|alu1|Mux3~15_combout\)))) # 
-- (!\inst|ecuacion1|alu1|unidad_logica|salida~16_combout\ & (\inst|ecuacion1|alu1|unidad_logica|aux\(4) & ((\inst|ecuacion1|alu1|Mux3~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|unidad_logica|salida~16_combout\,
	datab => \inst|ecuacion1|alu1|unidad_logica|aux\(4),
	datac => \inst|ecuacion1|alu1|unidad_logica|salida~17_combout\,
	datad => \inst|ecuacion1|alu1|Mux3~15_combout\,
	combout => \inst|ecuacion1|alu1|unidad_logica|salida~18_combout\);

-- Location: FF_X22_Y6_N1
\inst|ecuacion1|alu1|unidad_logica|salida[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|ecuacion1|alu1|unidad_logica|salida~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|alu1|unidad_logica|salida\(4));

-- Location: LCCOMB_X22_Y6_N2
\inst|ecuacion1|alu1|Mux5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|Mux5~2_combout\ = (\inst|ecuacion1|alu1|unidad_logica|salida\(4) & (\inst|ecuacion1|MREG\(2) $ (((\inst|ecuacion1|MREG\(1)) # (\inst|ecuacion1|MREG\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(1),
	datab => \inst|ecuacion1|alu1|unidad_logica|salida\(4),
	datac => \inst|ecuacion1|MREG\(2),
	datad => \inst|ecuacion1|MREG\(0),
	combout => \inst|ecuacion1|alu1|Mux5~2_combout\);

-- Location: LCCOMB_X22_Y5_N16
\inst|ecuacion1|alu1|unidad_aritmetica|suma|s4|Suma\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|suma|s4|Suma~combout\ = \inst|ecuacion1|MREG\(18) $ (\inst|ecuacion1|MREG\(8) $ (\inst|ecuacion1|alu1|unidad_aritmetica|suma|s3|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(18),
	datac => \inst|ecuacion1|MREG\(8),
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|suma|s3|Cout~0_combout\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|suma|s4|Suma~combout\);

-- Location: LCCOMB_X23_Y5_N30
\inst|ecuacion1|alu1|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|Mux5~0_combout\ = (\inst|ecuacion1|alu1|Mux3~5_combout\ & ((\inst|ecuacion1|alu1|Mux3~6_combout\ & (\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~17_combout\)) # (!\inst|ecuacion1|alu1|Mux3~6_combout\ & 
-- ((\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|s4|Suma~combout\))))) # (!\inst|ecuacion1|alu1|Mux3~5_combout\ & (((\inst|ecuacion1|alu1|Mux3~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|Mux3~5_combout\,
	datab => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~17_combout\,
	datac => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|s4|Suma~combout\,
	datad => \inst|ecuacion1|alu1|Mux3~6_combout\,
	combout => \inst|ecuacion1|alu1|Mux5~0_combout\);

-- Location: LCCOMB_X23_Y5_N20
\inst|ecuacion1|alu1|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|Mux5~1_combout\ = (\inst|ecuacion1|alu1|Mux5~0_combout\ & (((!\inst|ecuacion1|alu1|Mux3~4_combout\) # (!\inst|ecuacion1|alu1|unidad_aritmetica|resta|s4|Suma~combout\)))) # (!\inst|ecuacion1|alu1|Mux5~0_combout\ & 
-- (\inst|ecuacion1|alu1|unidad_aritmetica|suma|s4|Suma~combout\ & ((\inst|ecuacion1|alu1|Mux3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|unidad_aritmetica|suma|s4|Suma~combout\,
	datab => \inst|ecuacion1|alu1|unidad_aritmetica|resta|s4|Suma~combout\,
	datac => \inst|ecuacion1|alu1|Mux5~0_combout\,
	datad => \inst|ecuacion1|alu1|Mux3~4_combout\,
	combout => \inst|ecuacion1|alu1|Mux5~1_combout\);

-- Location: LCCOMB_X23_Y5_N14
\inst|ecuacion1|alu1|Mux5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|Mux5~4_combout\ = (\inst|ecuacion1|alu1|Mux3~8_combout\ & (((\inst|ecuacion1|alu1|Mux5~1_combout\)))) # (!\inst|ecuacion1|alu1|Mux3~8_combout\ & ((\inst|ecuacion1|alu1|Mux5~3_combout\) # ((\inst|ecuacion1|alu1|Mux5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|Mux5~3_combout\,
	datab => \inst|ecuacion1|alu1|Mux5~2_combout\,
	datac => \inst|ecuacion1|alu1|Mux3~8_combout\,
	datad => \inst|ecuacion1|alu1|Mux5~1_combout\,
	combout => \inst|ecuacion1|alu1|Mux5~4_combout\);

-- Location: LCCOMB_X23_Y4_N2
\inst|ecuacion1|registro[3][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|registro[3][4]~feeder_combout\ = \inst|ecuacion1|alu1|Mux5~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|ecuacion1|alu1|Mux5~4_combout\,
	combout => \inst|ecuacion1|registro[3][4]~feeder_combout\);

-- Location: FF_X23_Y4_N3
\inst|ecuacion1|registro[3][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|ecuacion1|registro[3][4]~feeder_combout\,
	ena => \inst|ecuacion1|pr_state~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|registro[3][4]~q\);

-- Location: LCCOMB_X22_Y4_N18
\inst|ecuacion1|registro[0][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|registro[0][4]~feeder_combout\ = \inst|ecuacion1|alu1|Mux5~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|ecuacion1|alu1|Mux5~4_combout\,
	combout => \inst|ecuacion1|registro[0][4]~feeder_combout\);

-- Location: FF_X22_Y4_N19
\inst|ecuacion1|registro[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|ecuacion1|registro[0][4]~feeder_combout\,
	ena => \inst|ecuacion1|pr_state~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|registro[0][4]~q\);

-- Location: LCCOMB_X22_Y7_N2
\inst|ecuacion1|Selector19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|Selector19~0_combout\ = (\inst|ecuacion1|pr_state.state8~q\ & (\inst|ecuacion1|registro[3][4]~q\)) # (!\inst|ecuacion1|pr_state.state8~q\ & (((\inst|ecuacion1|registro[0][4]~q\ & \inst|ecuacion1|pr_state.state6~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|registro[3][4]~q\,
	datab => \inst|ecuacion1|registro[0][4]~q\,
	datac => \inst|ecuacion1|pr_state.state8~q\,
	datad => \inst|ecuacion1|pr_state.state6~q\,
	combout => \inst|ecuacion1|Selector19~0_combout\);

-- Location: FF_X22_Y7_N3
\inst|ecuacion1|MREG[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|ecuacion1|Selector19~0_combout\,
	ena => \inst|ecuacion1|MREG[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|MREG\(18));

-- Location: FF_X23_Y6_N19
\inst|ecuacion1|alu1|unidad_logica|aux[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|ecuacion1|alu1|unidad_logica|aux[5]~21_combout\,
	ena => \inst|ecuacion1|alu1|unidad_logica|aux[0]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|alu1|unidad_logica|aux\(5));

-- Location: LCCOMB_X25_Y6_N4
\inst|ecuacion1|alu1|unidad_logica|salida~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_logica|salida~14_combout\ = (\inst|ecuacion1|MREG\(9) & \inst|ecuacion1|MREG\(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(9),
	datac => \inst|ecuacion1|MREG\(19),
	combout => \inst|ecuacion1|alu1|unidad_logica|salida~14_combout\);

-- Location: LCCOMB_X25_Y6_N30
\inst|ecuacion1|alu1|unidad_logica|salida~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_logica|salida~13_combout\ = (\inst|ecuacion1|MREG\(19) & (((\inst|ecuacion1|alu1|Mux10~0_combout\)))) # (!\inst|ecuacion1|MREG\(19) & (((\inst|ecuacion1|MREG\(9) & \inst|ecuacion1|alu1|Mux10~0_combout\)) # 
-- (!\inst|ecuacion1|alu1|Mux11~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(9),
	datab => \inst|ecuacion1|alu1|Mux11~0_combout\,
	datac => \inst|ecuacion1|MREG\(19),
	datad => \inst|ecuacion1|alu1|Mux10~0_combout\,
	combout => \inst|ecuacion1|alu1|unidad_logica|salida~13_combout\);

-- Location: LCCOMB_X25_Y6_N14
\inst|ecuacion1|alu1|unidad_logica|salida~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_logica|salida~15_combout\ = (\inst|ecuacion1|alu1|unidad_logica|salida~13_combout\ & (((\inst|ecuacion1|alu1|unidad_logica|salida~14_combout\) # (!\inst|ecuacion1|alu1|Mux3~15_combout\)))) # 
-- (!\inst|ecuacion1|alu1|unidad_logica|salida~13_combout\ & (\inst|ecuacion1|alu1|unidad_logica|aux\(5) & ((\inst|ecuacion1|alu1|Mux3~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|unidad_logica|aux\(5),
	datab => \inst|ecuacion1|alu1|unidad_logica|salida~14_combout\,
	datac => \inst|ecuacion1|alu1|unidad_logica|salida~13_combout\,
	datad => \inst|ecuacion1|alu1|Mux3~15_combout\,
	combout => \inst|ecuacion1|alu1|unidad_logica|salida~15_combout\);

-- Location: FF_X25_Y6_N15
\inst|ecuacion1|alu1|unidad_logica|salida[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|ecuacion1|alu1|unidad_logica|salida~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|alu1|unidad_logica|salida\(5));

-- Location: LCCOMB_X26_Y6_N2
\inst|ecuacion1|alu1|Mux4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|Mux4~2_combout\ = (\inst|ecuacion1|alu1|unidad_logica|salida\(5) & (\inst|ecuacion1|MREG\(2) $ (((\inst|ecuacion1|MREG\(1)) # (\inst|ecuacion1|MREG\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|unidad_logica|salida\(5),
	datab => \inst|ecuacion1|MREG\(1),
	datac => \inst|ecuacion1|MREG\(0),
	datad => \inst|ecuacion1|MREG\(2),
	combout => \inst|ecuacion1|alu1|Mux4~2_combout\);

-- Location: FF_X26_Y6_N23
\inst|ecuacion1|alu1|barrel_shifters|aux[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|ecuacion1|MREG\(18),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|alu1|barrel_shifters|aux\(5));

-- Location: FF_X26_Y6_N25
\inst|ecuacion1|alu1|barrel_shifters|salShifters[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|ecuacion1|alu1|barrel_shifters|aux\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|alu1|barrel_shifters|salShifters\(5));

-- Location: LCCOMB_X26_Y6_N24
\inst|ecuacion1|alu1|Mux4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|Mux4~3_combout\ = (\inst|ecuacion1|MREG\(3)) # ((!\inst|ecuacion1|alu1|Mux3~7_combout\ & (\inst|ecuacion1|alu1|barrel_shifters|salShifters\(5) & \inst|ecuacion1|MREG\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|Mux3~7_combout\,
	datab => \inst|ecuacion1|MREG\(3),
	datac => \inst|ecuacion1|alu1|barrel_shifters|salShifters\(5),
	datad => \inst|ecuacion1|MREG\(2),
	combout => \inst|ecuacion1|alu1|Mux4~3_combout\);

-- Location: LCCOMB_X23_Y4_N6
\inst|ecuacion1|alu1|unidad_aritmetica|suma|s5|Suma\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|suma|s5|Suma~combout\ = \inst|ecuacion1|alu1|unidad_aritmetica|suma|s4|Cout~0_combout\ $ (\inst|ecuacion1|MREG\(9) $ (\inst|ecuacion1|MREG\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|ecuacion1|alu1|unidad_aritmetica|suma|s4|Cout~0_combout\,
	datac => \inst|ecuacion1|MREG\(9),
	datad => \inst|ecuacion1|MREG\(19),
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|suma|s5|Suma~combout\);

-- Location: LCCOMB_X24_Y6_N18
\inst|ecuacion1|alu1|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|Mux4~0_combout\ = (\inst|ecuacion1|alu1|Mux3~6_combout\ & (((\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~19_combout\) # (!\inst|ecuacion1|alu1|Mux3~5_combout\)))) # (!\inst|ecuacion1|alu1|Mux3~6_combout\ & 
-- (\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|s5|Suma~combout\ & ((\inst|ecuacion1|alu1|Mux3~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|s5|Suma~combout\,
	datab => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~19_combout\,
	datac => \inst|ecuacion1|alu1|Mux3~6_combout\,
	datad => \inst|ecuacion1|alu1|Mux3~5_combout\,
	combout => \inst|ecuacion1|alu1|Mux4~0_combout\);

-- Location: LCCOMB_X24_Y6_N4
\inst|ecuacion1|alu1|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|Mux4~1_combout\ = (\inst|ecuacion1|alu1|Mux3~4_combout\ & ((\inst|ecuacion1|alu1|Mux4~0_combout\ & (!\inst|ecuacion1|alu1|unidad_aritmetica|resta|s5|Suma~combout\)) # (!\inst|ecuacion1|alu1|Mux4~0_combout\ & 
-- ((\inst|ecuacion1|alu1|unidad_aritmetica|suma|s5|Suma~combout\))))) # (!\inst|ecuacion1|alu1|Mux3~4_combout\ & (((\inst|ecuacion1|alu1|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|Mux3~4_combout\,
	datab => \inst|ecuacion1|alu1|unidad_aritmetica|resta|s5|Suma~combout\,
	datac => \inst|ecuacion1|alu1|unidad_aritmetica|suma|s5|Suma~combout\,
	datad => \inst|ecuacion1|alu1|Mux4~0_combout\,
	combout => \inst|ecuacion1|alu1|Mux4~1_combout\);

-- Location: LCCOMB_X24_Y6_N26
\inst|ecuacion1|alu1|Mux4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|Mux4~4_combout\ = (\inst|ecuacion1|alu1|Mux3~8_combout\ & (((\inst|ecuacion1|alu1|Mux4~1_combout\)))) # (!\inst|ecuacion1|alu1|Mux3~8_combout\ & ((\inst|ecuacion1|alu1|Mux4~2_combout\) # ((\inst|ecuacion1|alu1|Mux4~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|Mux3~8_combout\,
	datab => \inst|ecuacion1|alu1|Mux4~2_combout\,
	datac => \inst|ecuacion1|alu1|Mux4~3_combout\,
	datad => \inst|ecuacion1|alu1|Mux4~1_combout\,
	combout => \inst|ecuacion1|alu1|Mux4~4_combout\);

-- Location: LCCOMB_X23_Y5_N10
\inst|ecuacion1|registro[1][8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|registro[1][8]~feeder_combout\ = \inst|ecuacion1|alu1|Mux1~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|ecuacion1|alu1|Mux1~5_combout\,
	combout => \inst|ecuacion1|registro[1][8]~feeder_combout\);

-- Location: FF_X23_Y5_N11
\inst|ecuacion1|registro[1][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|ecuacion1|registro[1][8]~feeder_combout\,
	ena => \inst|ecuacion1|pr_state~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|registro[1][8]~q\);

-- Location: LCCOMB_X23_Y5_N28
\inst|ecuacion1|registro[2][8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|registro[2][8]~feeder_combout\ = \inst|ecuacion1|alu1|Mux1~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|ecuacion1|alu1|Mux1~5_combout\,
	combout => \inst|ecuacion1|registro[2][8]~feeder_combout\);

-- Location: FF_X23_Y5_N29
\inst|ecuacion1|registro[2][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|ecuacion1|registro[2][8]~feeder_combout\,
	ena => \inst|ecuacion1|pr_state~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|registro[2][8]~q\);

-- Location: LCCOMB_X22_Y5_N18
\inst|ecuacion1|Selector25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|Selector25~0_combout\ = (\inst|ecuacion1|pr_state.state8~q\ & (((\inst|ecuacion1|registro[2][8]~q\)))) # (!\inst|ecuacion1|pr_state.state8~q\ & (\inst|ecuacion1|registro[1][8]~q\ & ((\inst|ecuacion1|pr_state.state6~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|registro[1][8]~q\,
	datab => \inst|ecuacion1|registro[2][8]~q\,
	datac => \inst|ecuacion1|pr_state.state6~q\,
	datad => \inst|ecuacion1|pr_state.state8~q\,
	combout => \inst|ecuacion1|Selector25~0_combout\);

-- Location: FF_X22_Y5_N19
\inst|ecuacion1|MREG[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|ecuacion1|Selector25~0_combout\,
	ena => \inst|ecuacion1|MREG[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|MREG\(12));

-- Location: LCCOMB_X23_Y3_N16
\inst|ecuacion1|alu1|unidad_logica|salida~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_logica|salida~4_combout\ = (\inst|ecuacion1|MREG\(22) & (((\inst|ecuacion1|alu1|Mux10~0_combout\)))) # (!\inst|ecuacion1|MREG\(22) & (((\inst|ecuacion1|MREG\(12) & \inst|ecuacion1|alu1|Mux10~0_combout\)) # 
-- (!\inst|ecuacion1|alu1|Mux11~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(22),
	datab => \inst|ecuacion1|alu1|Mux11~0_combout\,
	datac => \inst|ecuacion1|MREG\(12),
	datad => \inst|ecuacion1|alu1|Mux10~0_combout\,
	combout => \inst|ecuacion1|alu1|unidad_logica|salida~4_combout\);

-- Location: LCCOMB_X23_Y3_N26
\inst|ecuacion1|alu1|unidad_logica|salida~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_logica|salida~5_combout\ = (\inst|ecuacion1|MREG\(22) & \inst|ecuacion1|MREG\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(22),
	datac => \inst|ecuacion1|MREG\(12),
	combout => \inst|ecuacion1|alu1|unidad_logica|salida~5_combout\);

-- Location: LCCOMB_X23_Y6_N24
\inst|ecuacion1|alu1|unidad_logica|aux[8]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_logica|aux[8]~27_combout\ = (\inst|ecuacion1|MREG\(22) & ((\inst|ecuacion1|alu1|unidad_logica|aux[7]~26\) # (GND))) # (!\inst|ecuacion1|MREG\(22) & (!\inst|ecuacion1|alu1|unidad_logica|aux[7]~26\))
-- \inst|ecuacion1|alu1|unidad_logica|aux[8]~28\ = CARRY((\inst|ecuacion1|MREG\(22)) # (!\inst|ecuacion1|alu1|unidad_logica|aux[7]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|ecuacion1|MREG\(22),
	datad => VCC,
	cin => \inst|ecuacion1|alu1|unidad_logica|aux[7]~26\,
	combout => \inst|ecuacion1|alu1|unidad_logica|aux[8]~27_combout\,
	cout => \inst|ecuacion1|alu1|unidad_logica|aux[8]~28\);

-- Location: FF_X23_Y6_N25
\inst|ecuacion1|alu1|unidad_logica|aux[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|ecuacion1|alu1|unidad_logica|aux[8]~27_combout\,
	ena => \inst|ecuacion1|alu1|unidad_logica|aux[0]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|alu1|unidad_logica|aux\(8));

-- Location: LCCOMB_X23_Y3_N20
\inst|ecuacion1|alu1|unidad_logica|salida~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_logica|salida~6_combout\ = (\inst|ecuacion1|alu1|Mux3~15_combout\ & ((\inst|ecuacion1|alu1|unidad_logica|salida~4_combout\ & (\inst|ecuacion1|alu1|unidad_logica|salida~5_combout\)) # 
-- (!\inst|ecuacion1|alu1|unidad_logica|salida~4_combout\ & ((\inst|ecuacion1|alu1|unidad_logica|aux\(8)))))) # (!\inst|ecuacion1|alu1|Mux3~15_combout\ & (\inst|ecuacion1|alu1|unidad_logica|salida~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|Mux3~15_combout\,
	datab => \inst|ecuacion1|alu1|unidad_logica|salida~4_combout\,
	datac => \inst|ecuacion1|alu1|unidad_logica|salida~5_combout\,
	datad => \inst|ecuacion1|alu1|unidad_logica|aux\(8),
	combout => \inst|ecuacion1|alu1|unidad_logica|salida~6_combout\);

-- Location: FF_X23_Y3_N21
\inst|ecuacion1|alu1|unidad_logica|salida[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|ecuacion1|alu1|unidad_logica|salida~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|alu1|unidad_logica|salida\(8));

-- Location: LCCOMB_X23_Y4_N28
\inst|ecuacion1|alu1|unidad_aritmetica|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|Mux1~1_combout\ = (\inst|ecuacion1|alu1|Mux10~0_combout\ & ((\inst|ecuacion1|MREG\(11) & ((\inst|ecuacion1|MREG\(21)) # (\inst|ecuacion1|alu1|unidad_aritmetica|suma|s6|Cout~0_combout\))) # (!\inst|ecuacion1|MREG\(11) 
-- & (\inst|ecuacion1|MREG\(21) & \inst|ecuacion1|alu1|unidad_aritmetica|suma|s6|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(11),
	datab => \inst|ecuacion1|MREG\(21),
	datac => \inst|ecuacion1|alu1|Mux10~0_combout\,
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|suma|s6|Cout~0_combout\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|Mux1~1_combout\);

-- Location: LCCOMB_X24_Y7_N30
\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|s8|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|s8|Suma~0_combout\ = \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|s7|Cout~0_combout\ $ (\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi3|s7|Cout~0_combout\ $ (((\inst|ecuacion1|MREG\(8) & 
-- \inst|ecuacion1|MREG\(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|s7|Cout~0_combout\,
	datab => \inst|ecuacion1|MREG\(8),
	datac => \inst|ecuacion1|MREG\(18),
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi3|s7|Cout~0_combout\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|s8|Suma~0_combout\);

-- Location: LCCOMB_X24_Y4_N28
\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~0_combout\ = (\inst|ecuacion1|alu1|Mux10~0_combout\ & (\inst|ecuacion1|alu1|unidad_aritmetica|resta|s7|Cout~0_combout\)) # (!\inst|ecuacion1|alu1|Mux10~0_combout\ & 
-- ((!\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|s8|Suma~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|Mux10~0_combout\,
	datab => \inst|ecuacion1|alu1|unidad_aritmetica|resta|s7|Cout~0_combout\,
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|s8|Suma~0_combout\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~0_combout\);

-- Location: LCCOMB_X24_Y4_N26
\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~25_combout\ = \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~24\ $ (!\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~0_combout\,
	cin => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~24\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~25_combout\);

-- Location: LCCOMB_X24_Y4_N8
\inst|ecuacion1|alu1|unidad_aritmetica|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|Mux1~2_combout\ = (!\inst|ecuacion1|alu1|Mux10~0_combout\ & ((\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|s8|Cout~0_combout\ & (\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~25_combout\)) # 
-- (!\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|s8|Cout~0_combout\ & ((\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|s8|Suma~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|Mux10~0_combout\,
	datab => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|s8|Cout~0_combout\,
	datac => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~25_combout\,
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|s8|Suma~0_combout\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|Mux1~2_combout\);

-- Location: LCCOMB_X24_Y4_N2
\inst|ecuacion1|alu1|unidad_aritmetica|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|Mux1~0_combout\ = (\inst|ecuacion1|alu1|Mux11~0_combout\ & (\inst|ecuacion1|alu1|Mux10~0_combout\ & (\inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~25_combout\ & 
-- !\inst|ecuacion1|alu1|unidad_aritmetica|resta|s7|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|Mux11~0_combout\,
	datab => \inst|ecuacion1|alu1|Mux10~0_combout\,
	datac => \inst|ecuacion1|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~25_combout\,
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|resta|s7|Cout~0_combout\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|Mux1~0_combout\);

-- Location: LCCOMB_X24_Y4_N6
\inst|ecuacion1|alu1|unidad_aritmetica|Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_aritmetica|Mux1~3_combout\ = (\inst|ecuacion1|alu1|unidad_aritmetica|Mux1~0_combout\) # ((!\inst|ecuacion1|alu1|Mux11~0_combout\ & ((\inst|ecuacion1|alu1|unidad_aritmetica|Mux1~1_combout\) # 
-- (\inst|ecuacion1|alu1|unidad_aritmetica|Mux1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|Mux11~0_combout\,
	datab => \inst|ecuacion1|alu1|unidad_aritmetica|Mux1~1_combout\,
	datac => \inst|ecuacion1|alu1|unidad_aritmetica|Mux1~2_combout\,
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|Mux1~0_combout\,
	combout => \inst|ecuacion1|alu1|unidad_aritmetica|Mux1~3_combout\);

-- Location: LCCOMB_X24_Y4_N4
\inst|ecuacion1|alu1|Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|Mux1~3_combout\ = (\inst|ecuacion1|MREG\(3) & ((\inst|ecuacion1|alu1|unidad_aritmetica|Mux1~3_combout\) # (!\inst|ecuacion1|alu1|Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|Mux0~0_combout\,
	datab => \inst|ecuacion1|MREG\(3),
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|Mux1~3_combout\,
	combout => \inst|ecuacion1|alu1|Mux1~3_combout\);

-- Location: LCCOMB_X23_Y4_N14
\inst|ecuacion1|alu1|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|Mux1~1_combout\ = (\inst|ecuacion1|MREG\(1) & \inst|ecuacion1|MREG\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(1),
	datad => \inst|ecuacion1|MREG\(0),
	combout => \inst|ecuacion1|alu1|Mux1~1_combout\);

-- Location: FF_X23_Y3_N11
\inst|ecuacion1|alu1|barrel_shifters|aux[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|ecuacion1|MREG\(21),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|alu1|barrel_shifters|aux\(8));

-- Location: FF_X23_Y3_N23
\inst|ecuacion1|alu1|barrel_shifters|salShifters[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|ecuacion1|alu1|barrel_shifters|aux\(8),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|alu1|barrel_shifters|salShifters\(8));

-- Location: LCCOMB_X23_Y3_N22
\inst|ecuacion1|alu1|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|Mux1~0_combout\ = (\inst|ecuacion1|MREG\(0) & (((\inst|ecuacion1|alu1|barrel_shifters|salShifters\(8) & !\inst|ecuacion1|MREG\(1))))) # (!\inst|ecuacion1|MREG\(0) & ((\inst|ecuacion1|MREG\(1) & 
-- ((\inst|ecuacion1|alu1|barrel_shifters|salShifters\(8)))) # (!\inst|ecuacion1|MREG\(1) & (\inst|ecuacion1|alu1|unidad_logica|salida\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(0),
	datab => \inst|ecuacion1|alu1|unidad_logica|salida\(8),
	datac => \inst|ecuacion1|alu1|barrel_shifters|salShifters\(8),
	datad => \inst|ecuacion1|MREG\(1),
	combout => \inst|ecuacion1|alu1|Mux1~0_combout\);

-- Location: LCCOMB_X24_Y4_N0
\inst|ecuacion1|alu1|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|Mux1~2_combout\ = (\inst|ecuacion1|MREG\(2) & ((\inst|ecuacion1|alu1|Mux1~0_combout\) # ((\inst|ecuacion1|alu1|Mux1~1_combout\ & \inst|ecuacion1|alu1|unidad_aritmetica|Mux1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|Mux1~1_combout\,
	datab => \inst|ecuacion1|MREG\(2),
	datac => \inst|ecuacion1|alu1|Mux1~0_combout\,
	datad => \inst|ecuacion1|alu1|unidad_aritmetica|Mux1~3_combout\,
	combout => \inst|ecuacion1|alu1|Mux1~2_combout\);

-- Location: LCCOMB_X24_Y4_N30
\inst|ecuacion1|alu1|Mux1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|Mux1~5_combout\ = (\inst|ecuacion1|alu1|Mux1~3_combout\) # ((\inst|ecuacion1|alu1|Mux1~2_combout\) # ((\inst|ecuacion1|alu1|Mux1~4_combout\ & \inst|ecuacion1|alu1|unidad_logica|salida\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|Mux1~4_combout\,
	datab => \inst|ecuacion1|alu1|unidad_logica|salida\(8),
	datac => \inst|ecuacion1|alu1|Mux1~3_combout\,
	datad => \inst|ecuacion1|alu1|Mux1~2_combout\,
	combout => \inst|ecuacion1|alu1|Mux1~5_combout\);

-- Location: FF_X23_Y4_N15
\inst|ecuacion1|registro[3][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|ecuacion1|alu1|Mux1~5_combout\,
	sload => VCC,
	ena => \inst|ecuacion1|pr_state~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|registro[3][8]~q\);

-- Location: FF_X24_Y4_N31
\inst|ecuacion1|registro[0][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|ecuacion1|alu1|Mux1~5_combout\,
	ena => \inst|ecuacion1|pr_state~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|registro[0][8]~q\);

-- Location: LCCOMB_X23_Y4_N0
\inst|ecuacion1|Selector15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|Selector15~0_combout\ = (\inst|ecuacion1|pr_state.state8~q\ & (((\inst|ecuacion1|registro[3][8]~q\)))) # (!\inst|ecuacion1|pr_state.state8~q\ & (\inst|ecuacion1|pr_state.state6~q\ & ((\inst|ecuacion1|registro[0][8]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|pr_state.state8~q\,
	datab => \inst|ecuacion1|pr_state.state6~q\,
	datac => \inst|ecuacion1|registro[3][8]~q\,
	datad => \inst|ecuacion1|registro[0][8]~q\,
	combout => \inst|ecuacion1|Selector15~0_combout\);

-- Location: FF_X23_Y4_N1
\inst|ecuacion1|MREG[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|ecuacion1|Selector15~0_combout\,
	ena => \inst|ecuacion1|MREG[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|MREG\(22));

-- Location: FF_X23_Y3_N31
\inst|ecuacion1|alu1|barrel_shifters|aux[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|ecuacion1|MREG\(22),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|alu1|barrel_shifters|aux\(9));

-- Location: FF_X23_Y3_N19
\inst|ecuacion1|alu1|barrel_shifters|salShifters[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|ecuacion1|alu1|barrel_shifters|aux\(9),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|alu1|barrel_shifters|salShifters\(9));

-- Location: LCCOMB_X23_Y3_N18
\inst|ecuacion1|alu1|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|Mux0~1_combout\ = (!\inst|ecuacion1|alu1|barrel_shifters|salShifters\(9) & (\inst|ecuacion1|MREG\(2) & (\inst|ecuacion1|MREG\(0) $ (\inst|ecuacion1|MREG\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(0),
	datab => \inst|ecuacion1|MREG\(1),
	datac => \inst|ecuacion1|alu1|barrel_shifters|salShifters\(9),
	datad => \inst|ecuacion1|MREG\(2),
	combout => \inst|ecuacion1|alu1|Mux0~1_combout\);

-- Location: LCCOMB_X23_Y5_N24
\inst|ecuacion1|registro[2][9]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|registro[2][9]~0_combout\ = !\inst|ecuacion1|alu1|Mux0~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|ecuacion1|alu1|Mux0~3_combout\,
	combout => \inst|ecuacion1|registro[2][9]~0_combout\);

-- Location: FF_X23_Y5_N25
\inst|ecuacion1|registro[2][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|ecuacion1|registro[2][9]~0_combout\,
	ena => \inst|ecuacion1|pr_state~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|registro[2][9]~q\);

-- Location: LCCOMB_X23_Y5_N22
\inst|ecuacion1|registro[1][9]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|registro[1][9]~1_combout\ = !\inst|ecuacion1|alu1|Mux0~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|ecuacion1|alu1|Mux0~3_combout\,
	combout => \inst|ecuacion1|registro[1][9]~1_combout\);

-- Location: FF_X23_Y5_N23
\inst|ecuacion1|registro[1][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|ecuacion1|registro[1][9]~1_combout\,
	ena => \inst|ecuacion1|pr_state~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|registro[1][9]~q\);

-- Location: LCCOMB_X23_Y4_N16
\inst|ecuacion1|Selector24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|Selector24~0_combout\ = (\inst|ecuacion1|pr_state.state8~q\ & (((\inst|ecuacion1|registro[2][9]~q\)))) # (!\inst|ecuacion1|pr_state.state8~q\ & (\inst|ecuacion1|pr_state.state6~q\ & ((\inst|ecuacion1|registro[1][9]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|pr_state.state8~q\,
	datab => \inst|ecuacion1|pr_state.state6~q\,
	datac => \inst|ecuacion1|registro[2][9]~q\,
	datad => \inst|ecuacion1|registro[1][9]~q\,
	combout => \inst|ecuacion1|Selector24~0_combout\);

-- Location: FF_X23_Y4_N17
\inst|ecuacion1|MREG[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|ecuacion1|Selector24~0_combout\,
	ena => \inst|ecuacion1|MREG[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|MREG\(13));

-- Location: LCCOMB_X23_Y4_N12
\inst|ecuacion1|registro[3][9]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|registro[3][9]~2_combout\ = !\inst|ecuacion1|alu1|Mux0~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|ecuacion1|alu1|Mux0~3_combout\,
	combout => \inst|ecuacion1|registro[3][9]~2_combout\);

-- Location: FF_X23_Y4_N13
\inst|ecuacion1|registro[3][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|ecuacion1|registro[3][9]~2_combout\,
	ena => \inst|ecuacion1|pr_state~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|registro[3][9]~q\);

-- Location: LCCOMB_X22_Y4_N22
\inst|ecuacion1|registro[0][9]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|registro[0][9]~3_combout\ = !\inst|ecuacion1|alu1|Mux0~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|ecuacion1|alu1|Mux0~3_combout\,
	combout => \inst|ecuacion1|registro[0][9]~3_combout\);

-- Location: FF_X22_Y4_N23
\inst|ecuacion1|registro[0][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|ecuacion1|registro[0][9]~3_combout\,
	ena => \inst|ecuacion1|pr_state~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|registro[0][9]~q\);

-- Location: LCCOMB_X23_Y4_N30
\inst|ecuacion1|Selector14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|Selector14~0_combout\ = (\inst|ecuacion1|pr_state.state8~q\ & (\inst|ecuacion1|registro[3][9]~q\)) # (!\inst|ecuacion1|pr_state.state8~q\ & (((\inst|ecuacion1|pr_state.state6~q\ & \inst|ecuacion1|registro[0][9]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|registro[3][9]~q\,
	datab => \inst|ecuacion1|pr_state.state6~q\,
	datac => \inst|ecuacion1|pr_state.state8~q\,
	datad => \inst|ecuacion1|registro[0][9]~q\,
	combout => \inst|ecuacion1|Selector14~0_combout\);

-- Location: FF_X23_Y4_N31
\inst|ecuacion1|MREG[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|ecuacion1|Selector14~0_combout\,
	ena => \inst|ecuacion1|MREG[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|MREG\(23));

-- Location: LCCOMB_X23_Y3_N8
\inst|ecuacion1|alu1|unidad_logica|salida~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_logica|salida~1_combout\ = (\inst|ecuacion1|MREG\(23) & (((\inst|ecuacion1|alu1|Mux10~0_combout\)))) # (!\inst|ecuacion1|MREG\(23) & (((\inst|ecuacion1|MREG\(13) & \inst|ecuacion1|alu1|Mux10~0_combout\)) # 
-- (!\inst|ecuacion1|alu1|Mux11~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(13),
	datab => \inst|ecuacion1|alu1|Mux11~0_combout\,
	datac => \inst|ecuacion1|MREG\(23),
	datad => \inst|ecuacion1|alu1|Mux10~0_combout\,
	combout => \inst|ecuacion1|alu1|unidad_logica|salida~1_combout\);

-- Location: LCCOMB_X23_Y6_N26
\inst|ecuacion1|alu1|unidad_logica|aux[9]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_logica|aux[9]~29_combout\ = \inst|ecuacion1|MREG\(23) $ (\inst|ecuacion1|alu1|unidad_logica|aux[8]~28\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|ecuacion1|MREG\(23),
	cin => \inst|ecuacion1|alu1|unidad_logica|aux[8]~28\,
	combout => \inst|ecuacion1|alu1|unidad_logica|aux[9]~29_combout\);

-- Location: FF_X23_Y6_N27
\inst|ecuacion1|alu1|unidad_logica|aux[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|ecuacion1|alu1|unidad_logica|aux[9]~29_combout\,
	ena => \inst|ecuacion1|alu1|unidad_logica|aux[0]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|alu1|unidad_logica|aux\(9));

-- Location: LCCOMB_X23_Y3_N30
\inst|ecuacion1|alu1|unidad_logica|salida~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_logica|salida~2_combout\ = (\inst|ecuacion1|MREG\(23) & \inst|ecuacion1|MREG\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(23),
	datad => \inst|ecuacion1|MREG\(13),
	combout => \inst|ecuacion1|alu1|unidad_logica|salida~2_combout\);

-- Location: LCCOMB_X23_Y3_N28
\inst|ecuacion1|alu1|unidad_logica|salida~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|unidad_logica|salida~3_combout\ = (\inst|ecuacion1|alu1|unidad_logica|salida~1_combout\ & (((\inst|ecuacion1|alu1|unidad_logica|salida~2_combout\) # (!\inst|ecuacion1|alu1|Mux3~15_combout\)))) # 
-- (!\inst|ecuacion1|alu1|unidad_logica|salida~1_combout\ & (\inst|ecuacion1|alu1|unidad_logica|aux\(9) & ((\inst|ecuacion1|alu1|Mux3~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|unidad_logica|salida~1_combout\,
	datab => \inst|ecuacion1|alu1|unidad_logica|aux\(9),
	datac => \inst|ecuacion1|alu1|unidad_logica|salida~2_combout\,
	datad => \inst|ecuacion1|alu1|Mux3~15_combout\,
	combout => \inst|ecuacion1|alu1|unidad_logica|salida~3_combout\);

-- Location: FF_X23_Y3_N29
\inst|ecuacion1|alu1|unidad_logica|salida[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|ecuacion1|alu1|unidad_logica|salida~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ecuacion1|alu1|unidad_logica|salida\(9));

-- Location: LCCOMB_X23_Y3_N14
\inst|ecuacion1|alu1|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|Mux0~2_combout\ = (\inst|ecuacion1|MREG\(2) & ((\inst|ecuacion1|MREG\(0) & ((\inst|ecuacion1|MREG\(1)))) # (!\inst|ecuacion1|MREG\(0) & (!\inst|ecuacion1|alu1|unidad_logica|salida\(9) & !\inst|ecuacion1|MREG\(1))))) # 
-- (!\inst|ecuacion1|MREG\(2) & (((!\inst|ecuacion1|MREG\(0) & !\inst|ecuacion1|MREG\(1))) # (!\inst|ecuacion1|alu1|unidad_logica|salida\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000100010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(2),
	datab => \inst|ecuacion1|alu1|unidad_logica|salida\(9),
	datac => \inst|ecuacion1|MREG\(0),
	datad => \inst|ecuacion1|MREG\(1),
	combout => \inst|ecuacion1|alu1|Mux0~2_combout\);

-- Location: LCCOMB_X23_Y3_N24
\inst|ecuacion1|alu1|Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ecuacion1|alu1|Mux0~3_combout\ = (\inst|ecuacion1|MREG\(3) & (((\inst|ecuacion1|alu1|Mux0~0_combout\)))) # (!\inst|ecuacion1|MREG\(3) & ((\inst|ecuacion1|alu1|Mux0~1_combout\) # ((\inst|ecuacion1|alu1|Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|MREG\(3),
	datab => \inst|ecuacion1|alu1|Mux0~1_combout\,
	datac => \inst|ecuacion1|alu1|Mux0~2_combout\,
	datad => \inst|ecuacion1|alu1|Mux0~0_combout\,
	combout => \inst|ecuacion1|alu1|Mux0~3_combout\);

-- Location: LCCOMB_X25_Y5_N4
\inst|conv1|digitos~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|conv1|digitos~3_combout\ = (\inst|ecuacion1|alu1|Mux1~5_combout\ & ((\inst|ecuacion1|alu1|Mux2~4_combout\ & ((\inst|ecuacion1|alu1|Mux9~4_combout\) # (!\inst|ecuacion1|alu1|Mux0~3_combout\))) # (!\inst|ecuacion1|alu1|Mux2~4_combout\ & 
-- ((\inst|ecuacion1|alu1|Mux0~3_combout\) # (!\inst|ecuacion1|alu1|Mux9~4_combout\))))) # (!\inst|ecuacion1|alu1|Mux1~5_combout\ & (\inst|ecuacion1|alu1|Mux9~4_combout\ $ (((\inst|ecuacion1|alu1|Mux2~4_combout\) # (\inst|ecuacion1|alu1|Mux0~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000101111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|Mux2~4_combout\,
	datab => \inst|ecuacion1|alu1|Mux0~3_combout\,
	datac => \inst|ecuacion1|alu1|Mux1~5_combout\,
	datad => \inst|ecuacion1|alu1|Mux9~4_combout\,
	combout => \inst|conv1|digitos~3_combout\);

-- Location: LCCOMB_X25_Y5_N30
\inst|conv1|digitos~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|conv1|digitos~2_combout\ = (\inst|ecuacion1|alu1|Mux1~5_combout\ & (!\inst|ecuacion1|alu1|Mux9~4_combout\ & (\inst|ecuacion1|alu1|Mux2~4_combout\ $ (\inst|ecuacion1|alu1|Mux0~3_combout\)))) # (!\inst|ecuacion1|alu1|Mux1~5_combout\ & 
-- (!\inst|ecuacion1|alu1|Mux2~4_combout\ & (\inst|ecuacion1|alu1|Mux9~4_combout\ & !\inst|ecuacion1|alu1|Mux0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|Mux2~4_combout\,
	datab => \inst|ecuacion1|alu1|Mux1~5_combout\,
	datac => \inst|ecuacion1|alu1|Mux9~4_combout\,
	datad => \inst|ecuacion1|alu1|Mux0~3_combout\,
	combout => \inst|conv1|digitos~2_combout\);

-- Location: LCCOMB_X25_Y5_N6
\inst|conv1|digitos~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|conv1|digitos~1_combout\ = (\inst|ecuacion1|alu1|Mux2~4_combout\ & (\inst|ecuacion1|alu1|Mux0~3_combout\ & ((\inst|ecuacion1|alu1|Mux9~4_combout\) # (!\inst|ecuacion1|alu1|Mux1~5_combout\)))) # (!\inst|ecuacion1|alu1|Mux2~4_combout\ & 
-- (!\inst|ecuacion1|alu1|Mux0~3_combout\ & ((\inst|ecuacion1|alu1|Mux1~5_combout\) # (!\inst|ecuacion1|alu1|Mux9~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100000011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|Mux2~4_combout\,
	datab => \inst|ecuacion1|alu1|Mux0~3_combout\,
	datac => \inst|ecuacion1|alu1|Mux1~5_combout\,
	datad => \inst|ecuacion1|alu1|Mux9~4_combout\,
	combout => \inst|conv1|digitos~1_combout\);

-- Location: LCCOMB_X25_Y5_N20
\inst|conv1|digitos~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|conv1|digitos~7_combout\ = (\inst|conv1|digitos~1_combout\ & (!\inst|ecuacion1|alu1|Mux8~4_combout\ & (\inst|conv1|digitos~3_combout\))) # (!\inst|conv1|digitos~1_combout\ & (\inst|conv1|digitos~2_combout\ & ((\inst|ecuacion1|alu1|Mux8~4_combout\) # 
-- (!\inst|conv1|digitos~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|Mux8~4_combout\,
	datab => \inst|conv1|digitos~3_combout\,
	datac => \inst|conv1|digitos~2_combout\,
	datad => \inst|conv1|digitos~1_combout\,
	combout => \inst|conv1|digitos~7_combout\);

-- Location: LCCOMB_X25_Y5_N14
\inst|conv1|digitos~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|conv1|digitos~6_combout\ = (\inst|ecuacion1|alu1|Mux8~4_combout\ & (!\inst|conv1|digitos~3_combout\)) # (!\inst|ecuacion1|alu1|Mux8~4_combout\ & ((\inst|conv1|digitos~3_combout\ & (\inst|conv1|digitos~2_combout\)) # (!\inst|conv1|digitos~3_combout\ 
-- & (!\inst|conv1|digitos~2_combout\ & !\inst|conv1|digitos~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001001100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|Mux8~4_combout\,
	datab => \inst|conv1|digitos~3_combout\,
	datac => \inst|conv1|digitos~2_combout\,
	datad => \inst|conv1|digitos~1_combout\,
	combout => \inst|conv1|digitos~6_combout\);

-- Location: LCCOMB_X25_Y5_N18
\inst|conv1|digitos~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|conv1|digitos~8_combout\ = (\inst|ecuacion1|alu1|Mux8~4_combout\ & (((\inst|conv1|digitos~2_combout\) # (\inst|conv1|digitos~1_combout\)))) # (!\inst|ecuacion1|alu1|Mux8~4_combout\ & (!\inst|conv1|digitos~2_combout\ & 
-- ((\inst|conv1|digitos~3_combout\) # (!\inst|conv1|digitos~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|Mux8~4_combout\,
	datab => \inst|conv1|digitos~3_combout\,
	datac => \inst|conv1|digitos~2_combout\,
	datad => \inst|conv1|digitos~1_combout\,
	combout => \inst|conv1|digitos~8_combout\);

-- Location: LCCOMB_X25_Y5_N22
\inst|conv1|digitos~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|conv1|digitos~15_combout\ = (\inst|conv1|digitos~6_combout\ & (!\inst|ecuacion1|alu1|Mux7~5_combout\ & ((\inst|conv1|digitos~8_combout\)))) # (!\inst|conv1|digitos~6_combout\ & (\inst|conv1|digitos~7_combout\ & 
-- ((\inst|ecuacion1|alu1|Mux7~5_combout\) # (!\inst|conv1|digitos~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|Mux7~5_combout\,
	datab => \inst|conv1|digitos~7_combout\,
	datac => \inst|conv1|digitos~6_combout\,
	datad => \inst|conv1|digitos~8_combout\,
	combout => \inst|conv1|digitos~15_combout\);

-- Location: LCCOMB_X25_Y5_N8
\inst|conv1|digitos~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|conv1|digitos~14_combout\ = (\inst|ecuacion1|alu1|Mux7~5_combout\ & (!\inst|conv1|digitos~8_combout\)) # (!\inst|ecuacion1|alu1|Mux7~5_combout\ & ((\inst|conv1|digitos~8_combout\ & ((\inst|conv1|digitos~7_combout\))) # 
-- (!\inst|conv1|digitos~8_combout\ & (!\inst|conv1|digitos~6_combout\ & !\inst|conv1|digitos~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|Mux7~5_combout\,
	datab => \inst|conv1|digitos~8_combout\,
	datac => \inst|conv1|digitos~6_combout\,
	datad => \inst|conv1|digitos~7_combout\,
	combout => \inst|conv1|digitos~14_combout\);

-- Location: LCCOMB_X25_Y5_N24
\inst|conv1|digitos~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|conv1|digitos~16_combout\ = (\inst|ecuacion1|alu1|Mux7~5_combout\ & (((\inst|conv1|digitos~6_combout\) # (\inst|conv1|digitos~7_combout\)))) # (!\inst|ecuacion1|alu1|Mux7~5_combout\ & (!\inst|conv1|digitos~7_combout\ & 
-- ((\inst|conv1|digitos~8_combout\) # (!\inst|conv1|digitos~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|Mux7~5_combout\,
	datab => \inst|conv1|digitos~8_combout\,
	datac => \inst|conv1|digitos~6_combout\,
	datad => \inst|conv1|digitos~7_combout\,
	combout => \inst|conv1|digitos~16_combout\);

-- Location: LCCOMB_X25_Y5_N2
\inst|conv1|digitos~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|conv1|digitos~27_combout\ = (\inst|conv1|digitos~14_combout\ & (((!\inst|ecuacion1|alu1|Mux6~13_combout\ & \inst|conv1|digitos~16_combout\)))) # (!\inst|conv1|digitos~14_combout\ & (\inst|conv1|digitos~15_combout\ & 
-- ((\inst|ecuacion1|alu1|Mux6~13_combout\) # (!\inst|conv1|digitos~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|conv1|digitos~15_combout\,
	datab => \inst|ecuacion1|alu1|Mux6~13_combout\,
	datac => \inst|conv1|digitos~14_combout\,
	datad => \inst|conv1|digitos~16_combout\,
	combout => \inst|conv1|digitos~27_combout\);

-- Location: LCCOMB_X25_Y5_N28
\inst|conv1|digitos~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|conv1|digitos~28_combout\ = (\inst|conv1|digitos~15_combout\ & (\inst|ecuacion1|alu1|Mux6~13_combout\)) # (!\inst|conv1|digitos~15_combout\ & ((\inst|ecuacion1|alu1|Mux6~13_combout\ & (\inst|conv1|digitos~14_combout\)) # 
-- (!\inst|ecuacion1|alu1|Mux6~13_combout\ & ((\inst|conv1|digitos~16_combout\) # (!\inst|conv1|digitos~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|conv1|digitos~15_combout\,
	datab => \inst|ecuacion1|alu1|Mux6~13_combout\,
	datac => \inst|conv1|digitos~14_combout\,
	datad => \inst|conv1|digitos~16_combout\,
	combout => \inst|conv1|digitos~28_combout\);

-- Location: LCCOMB_X25_Y5_N0
\inst|conv1|digitos~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|conv1|digitos~26_combout\ = (\inst|conv1|digitos~15_combout\ & (\inst|ecuacion1|alu1|Mux6~13_combout\ $ (((\inst|conv1|digitos~16_combout\))))) # (!\inst|conv1|digitos~15_combout\ & (!\inst|conv1|digitos~16_combout\ & 
-- ((\inst|ecuacion1|alu1|Mux6~13_combout\) # (!\inst|conv1|digitos~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|conv1|digitos~15_combout\,
	datab => \inst|ecuacion1|alu1|Mux6~13_combout\,
	datac => \inst|conv1|digitos~14_combout\,
	datad => \inst|conv1|digitos~16_combout\,
	combout => \inst|conv1|digitos~26_combout\);

-- Location: LCCOMB_X24_Y6_N14
\inst|conv1|digitos~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|conv1|digitos~34_combout\ = (\inst|ecuacion1|alu1|Mux5~4_combout\ & (((!\inst|conv1|digitos~28_combout\)))) # (!\inst|ecuacion1|alu1|Mux5~4_combout\ & ((\inst|conv1|digitos~27_combout\ & (\inst|conv1|digitos~28_combout\)) # 
-- (!\inst|conv1|digitos~27_combout\ & (!\inst|conv1|digitos~28_combout\ & !\inst|conv1|digitos~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101001001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|Mux5~4_combout\,
	datab => \inst|conv1|digitos~27_combout\,
	datac => \inst|conv1|digitos~28_combout\,
	datad => \inst|conv1|digitos~26_combout\,
	combout => \inst|conv1|digitos~34_combout\);

-- Location: LCCOMB_X24_Y6_N30
\inst|conv1|digitos~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|conv1|digitos~36_combout\ = (\inst|ecuacion1|alu1|Mux5~4_combout\ & ((\inst|conv1|digitos~27_combout\) # ((\inst|conv1|digitos~26_combout\)))) # (!\inst|ecuacion1|alu1|Mux5~4_combout\ & (!\inst|conv1|digitos~27_combout\ & 
-- ((\inst|conv1|digitos~28_combout\) # (!\inst|conv1|digitos~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|Mux5~4_combout\,
	datab => \inst|conv1|digitos~27_combout\,
	datac => \inst|conv1|digitos~28_combout\,
	datad => \inst|conv1|digitos~26_combout\,
	combout => \inst|conv1|digitos~36_combout\);

-- Location: LCCOMB_X24_Y6_N12
\inst|conv1|digitos~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|conv1|digitos~35_combout\ = (\inst|conv1|digitos~26_combout\ & (!\inst|ecuacion1|alu1|Mux5~4_combout\ & ((\inst|conv1|digitos~28_combout\)))) # (!\inst|conv1|digitos~26_combout\ & (\inst|conv1|digitos~27_combout\ & 
-- ((\inst|ecuacion1|alu1|Mux5~4_combout\) # (!\inst|conv1|digitos~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|Mux5~4_combout\,
	datab => \inst|conv1|digitos~27_combout\,
	datac => \inst|conv1|digitos~28_combout\,
	datad => \inst|conv1|digitos~26_combout\,
	combout => \inst|conv1|digitos~35_combout\);

-- Location: LCCOMB_X24_Y6_N28
\inst|conv1|digitos~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|conv1|digitos~39_combout\ = (\inst|ecuacion1|alu1|Mux4~4_combout\ & (((!\inst|conv1|digitos~36_combout\)))) # (!\inst|ecuacion1|alu1|Mux4~4_combout\ & ((\inst|conv1|digitos~36_combout\ & ((\inst|conv1|digitos~35_combout\))) # 
-- (!\inst|conv1|digitos~36_combout\ & (!\inst|conv1|digitos~34_combout\ & !\inst|conv1|digitos~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|Mux4~4_combout\,
	datab => \inst|conv1|digitos~34_combout\,
	datac => \inst|conv1|digitos~36_combout\,
	datad => \inst|conv1|digitos~35_combout\,
	combout => \inst|conv1|digitos~39_combout\);

-- Location: FF_X24_Y6_N29
\inst|conv1|s[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|conv1|digitos~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|conv1|s\(2));

-- Location: LCCOMB_X25_Y5_N12
\inst|conv1|digitos~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|conv1|digitos~0_combout\ = (\inst|ecuacion1|alu1|Mux2~4_combout\ & (\inst|ecuacion1|alu1|Mux1~5_combout\ & ((\inst|ecuacion1|alu1|Mux0~3_combout\) # (\inst|ecuacion1|alu1|Mux9~4_combout\)))) # (!\inst|ecuacion1|alu1|Mux2~4_combout\ & 
-- ((\inst|ecuacion1|alu1|Mux0~3_combout\ & (\inst|ecuacion1|alu1|Mux1~5_combout\ & \inst|ecuacion1|alu1|Mux9~4_combout\)) # (!\inst|ecuacion1|alu1|Mux0~3_combout\ & (!\inst|ecuacion1|alu1|Mux1~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000110000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|Mux2~4_combout\,
	datab => \inst|ecuacion1|alu1|Mux0~3_combout\,
	datac => \inst|ecuacion1|alu1|Mux1~5_combout\,
	datad => \inst|ecuacion1|alu1|Mux9~4_combout\,
	combout => \inst|conv1|digitos~0_combout\);

-- Location: LCCOMB_X23_Y5_N6
\inst|conv1|digitos~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|conv1|digitos~5_combout\ = (\inst|ecuacion1|alu1|Mux0~3_combout\) # ((!\inst|ecuacion1|alu1|Mux2~4_combout\ & !\inst|ecuacion1|alu1|Mux1~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|ecuacion1|alu1|Mux0~3_combout\,
	datac => \inst|ecuacion1|alu1|Mux2~4_combout\,
	datad => \inst|ecuacion1|alu1|Mux1~5_combout\,
	combout => \inst|conv1|digitos~5_combout\);

-- Location: LCCOMB_X24_Y5_N8
\inst|conv1|digitos~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|conv1|digitos~4_combout\ = \inst|conv1|digitos~2_combout\ $ ((((!\inst|ecuacion1|alu1|Mux8~4_combout\ & \inst|conv1|digitos~3_combout\)) # (!\inst|conv1|digitos~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|conv1|digitos~2_combout\,
	datab => \inst|ecuacion1|alu1|Mux8~4_combout\,
	datac => \inst|conv1|digitos~3_combout\,
	datad => \inst|conv1|digitos~1_combout\,
	combout => \inst|conv1|digitos~4_combout\);

-- Location: LCCOMB_X24_Y5_N10
\inst|conv1|digitos~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|conv1|digitos~9_combout\ = \inst|conv1|digitos~7_combout\ $ ((((!\inst|ecuacion1|alu1|Mux7~5_combout\ & \inst|conv1|digitos~8_combout\)) # (!\inst|conv1|digitos~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010110100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|conv1|digitos~7_combout\,
	datab => \inst|ecuacion1|alu1|Mux7~5_combout\,
	datac => \inst|conv1|digitos~6_combout\,
	datad => \inst|conv1|digitos~8_combout\,
	combout => \inst|conv1|digitos~9_combout\);

-- Location: LCCOMB_X24_Y5_N24
\inst|conv1|digitos~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|conv1|digitos~10_combout\ = (\inst|conv1|digitos~0_combout\ & ((\inst|conv1|digitos~5_combout\ & ((!\inst|conv1|digitos~9_combout\) # (!\inst|conv1|digitos~4_combout\))) # (!\inst|conv1|digitos~5_combout\ & (!\inst|conv1|digitos~4_combout\ & 
-- !\inst|conv1|digitos~9_combout\)))) # (!\inst|conv1|digitos~0_combout\ & (!\inst|conv1|digitos~5_combout\ & (\inst|conv1|digitos~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100010011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|conv1|digitos~0_combout\,
	datab => \inst|conv1|digitos~5_combout\,
	datac => \inst|conv1|digitos~4_combout\,
	datad => \inst|conv1|digitos~9_combout\,
	combout => \inst|conv1|digitos~10_combout\);

-- Location: LCCOMB_X22_Y5_N20
\inst|conv1|LessThan3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|conv1|LessThan3~0_combout\ = (!\inst|conv1|digitos~5_combout\ & ((\inst|conv1|digitos~0_combout\) # (!\inst|conv1|digitos~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|conv1|digitos~5_combout\,
	datac => \inst|conv1|digitos~0_combout\,
	datad => \inst|conv1|digitos~4_combout\,
	combout => \inst|conv1|LessThan3~0_combout\);

-- Location: LCCOMB_X24_Y5_N6
\inst|conv1|digitos~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|conv1|digitos~13_combout\ = (\inst|conv1|digitos~0_combout\ & (\inst|conv1|digitos~9_combout\ & (\inst|conv1|digitos~5_combout\ $ (!\inst|conv1|digitos~4_combout\)))) # (!\inst|conv1|digitos~0_combout\ & (!\inst|conv1|digitos~5_combout\ & 
-- (\inst|conv1|digitos~4_combout\ & !\inst|conv1|digitos~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|conv1|digitos~5_combout\,
	datab => \inst|conv1|digitos~0_combout\,
	datac => \inst|conv1|digitos~4_combout\,
	datad => \inst|conv1|digitos~9_combout\,
	combout => \inst|conv1|digitos~13_combout\);

-- Location: LCCOMB_X24_Y5_N4
\inst|conv1|digitos~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|conv1|digitos~12_combout\ = (\inst|conv1|digitos~0_combout\ & ((\inst|conv1|digitos~5_combout\ & (!\inst|conv1|digitos~4_combout\ & \inst|conv1|digitos~9_combout\)) # (!\inst|conv1|digitos~5_combout\ & (\inst|conv1|digitos~4_combout\ & 
-- !\inst|conv1|digitos~9_combout\)))) # (!\inst|conv1|digitos~0_combout\ & (\inst|conv1|digitos~9_combout\ $ (((\inst|conv1|digitos~5_combout\) # (!\inst|conv1|digitos~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100001100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|conv1|digitos~5_combout\,
	datab => \inst|conv1|digitos~0_combout\,
	datac => \inst|conv1|digitos~4_combout\,
	datad => \inst|conv1|digitos~9_combout\,
	combout => \inst|conv1|digitos~12_combout\);

-- Location: LCCOMB_X24_Y5_N26
\inst|conv1|digitos~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|conv1|digitos~11_combout\ = (\inst|conv1|digitos~5_combout\ & (!\inst|conv1|digitos~4_combout\ & ((!\inst|conv1|digitos~9_combout\) # (!\inst|conv1|digitos~0_combout\)))) # (!\inst|conv1|digitos~5_combout\ & (\inst|conv1|digitos~4_combout\ & 
-- ((\inst|conv1|digitos~0_combout\) # (\inst|conv1|digitos~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|conv1|digitos~5_combout\,
	datab => \inst|conv1|digitos~0_combout\,
	datac => \inst|conv1|digitos~4_combout\,
	datad => \inst|conv1|digitos~9_combout\,
	combout => \inst|conv1|digitos~11_combout\);

-- Location: LCCOMB_X25_Y5_N26
\inst|conv1|digitos~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|conv1|digitos~17_combout\ = \inst|conv1|digitos~15_combout\ $ ((((!\inst|ecuacion1|alu1|Mux6~13_combout\ & \inst|conv1|digitos~16_combout\)) # (!\inst|conv1|digitos~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010110100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|conv1|digitos~15_combout\,
	datab => \inst|ecuacion1|alu1|Mux6~13_combout\,
	datac => \inst|conv1|digitos~14_combout\,
	datad => \inst|conv1|digitos~16_combout\,
	combout => \inst|conv1|digitos~17_combout\);

-- Location: LCCOMB_X24_Y5_N28
\inst|conv1|digitos~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|conv1|digitos~18_combout\ = \inst|conv1|digitos~13_combout\ $ ((((!\inst|conv1|digitos~12_combout\ & \inst|conv1|digitos~17_combout\)) # (!\inst|conv1|digitos~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010110100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|conv1|digitos~13_combout\,
	datab => \inst|conv1|digitos~12_combout\,
	datac => \inst|conv1|digitos~11_combout\,
	datad => \inst|conv1|digitos~17_combout\,
	combout => \inst|conv1|digitos~18_combout\);

-- Location: LCCOMB_X24_Y5_N20
\inst|conv1|digitos~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|conv1|digitos~21_combout\ = (\inst|conv1|digitos~10_combout\ & ((!\inst|conv1|digitos~18_combout\) # (!\inst|conv1|LessThan3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|conv1|digitos~10_combout\,
	datac => \inst|conv1|LessThan3~0_combout\,
	datad => \inst|conv1|digitos~18_combout\,
	combout => \inst|conv1|digitos~21_combout\);

-- Location: FF_X24_Y5_N21
\inst|conv1|s[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|conv1|digitos~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|conv1|s\(10));

-- Location: LCCOMB_X22_Y5_N30
\inst6|Mux5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Mux5~2_combout\ = (\inst6|contador\(0) & ((\inst6|contador\(1) & (\inst|conv1|s\(2))) # (!\inst6|contador\(1) & ((\inst|conv1|s\(10))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|contador\(0),
	datab => \inst6|contador\(1),
	datac => \inst|conv1|s\(2),
	datad => \inst|conv1|s\(10),
	combout => \inst6|Mux5~2_combout\);

-- Location: LCCOMB_X24_Y5_N22
\inst|conv1|digitos~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|conv1|digitos~23_combout\ = (\inst|conv1|digitos~13_combout\ & (\inst|conv1|digitos~17_combout\ $ (((\inst|conv1|digitos~12_combout\))))) # (!\inst|conv1|digitos~13_combout\ & (\inst|conv1|digitos~12_combout\ & ((!\inst|conv1|digitos~11_combout\) # 
-- (!\inst|conv1|digitos~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|conv1|digitos~13_combout\,
	datab => \inst|conv1|digitos~17_combout\,
	datac => \inst|conv1|digitos~11_combout\,
	datad => \inst|conv1|digitos~12_combout\,
	combout => \inst|conv1|digitos~23_combout\);

-- Location: LCCOMB_X24_Y5_N2
\inst|conv1|digitos~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|conv1|digitos~25_combout\ = (\inst|conv1|digitos~11_combout\ & (((\inst|conv1|digitos~17_combout\ & !\inst|conv1|digitos~12_combout\)))) # (!\inst|conv1|digitos~11_combout\ & (\inst|conv1|digitos~13_combout\ & ((\inst|conv1|digitos~12_combout\) # 
-- (!\inst|conv1|digitos~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|conv1|digitos~13_combout\,
	datab => \inst|conv1|digitos~17_combout\,
	datac => \inst|conv1|digitos~11_combout\,
	datad => \inst|conv1|digitos~12_combout\,
	combout => \inst|conv1|digitos~25_combout\);

-- Location: LCCOMB_X25_Y5_N10
\inst|conv1|digitos~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|conv1|digitos~29_combout\ = \inst|conv1|digitos~27_combout\ $ ((((!\inst|ecuacion1|alu1|Mux5~4_combout\ & \inst|conv1|digitos~28_combout\)) # (!\inst|conv1|digitos~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110001110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|Mux5~4_combout\,
	datab => \inst|conv1|digitos~26_combout\,
	datac => \inst|conv1|digitos~28_combout\,
	datad => \inst|conv1|digitos~27_combout\,
	combout => \inst|conv1|digitos~29_combout\);

-- Location: LCCOMB_X24_Y5_N12
\inst|conv1|digitos~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|conv1|digitos~24_combout\ = (\inst|conv1|digitos~13_combout\ & (\inst|conv1|digitos~17_combout\)) # (!\inst|conv1|digitos~13_combout\ & ((\inst|conv1|digitos~17_combout\ & (\inst|conv1|digitos~11_combout\ & \inst|conv1|digitos~12_combout\)) # 
-- (!\inst|conv1|digitos~17_combout\ & (!\inst|conv1|digitos~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100110001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|conv1|digitos~13_combout\,
	datab => \inst|conv1|digitos~17_combout\,
	datac => \inst|conv1|digitos~11_combout\,
	datad => \inst|conv1|digitos~12_combout\,
	combout => \inst|conv1|digitos~24_combout\);

-- Location: LCCOMB_X24_Y5_N0
\inst|conv1|digitos~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|conv1|digitos~32_combout\ = (\inst|conv1|digitos~25_combout\ & ((\inst|conv1|digitos~29_combout\ $ (\inst|conv1|digitos~24_combout\)))) # (!\inst|conv1|digitos~25_combout\ & (\inst|conv1|digitos~24_combout\ & ((!\inst|conv1|digitos~29_combout\) # 
-- (!\inst|conv1|digitos~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|conv1|digitos~23_combout\,
	datab => \inst|conv1|digitos~25_combout\,
	datac => \inst|conv1|digitos~29_combout\,
	datad => \inst|conv1|digitos~24_combout\,
	combout => \inst|conv1|digitos~32_combout\);

-- Location: FF_X24_Y5_N1
\inst|conv1|s[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|conv1|digitos~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|conv1|s\(6));

-- Location: LCCOMB_X22_Y5_N28
\inst6|Mux5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Mux5~3_combout\ = (\inst6|Mux5~2_combout\) # ((!\inst6|contador\(0) & (\inst6|contador\(1) & \inst|conv1|s\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|contador\(0),
	datab => \inst6|contador\(1),
	datac => \inst6|Mux5~2_combout\,
	datad => \inst|conv1|s\(6),
	combout => \inst6|Mux5~3_combout\);

-- Location: FF_X22_Y5_N29
\inst6|tmp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|Mux5~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|tmp\(2));

-- Location: LCCOMB_X24_Y6_N22
\inst|conv1|digitos~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|conv1|digitos~40_combout\ = (\inst|ecuacion1|alu1|Mux4~4_combout\ & (!\inst|conv1|digitos~34_combout\ & ((!\inst|conv1|digitos~35_combout\)))) # (!\inst|ecuacion1|alu1|Mux4~4_combout\ & ((\inst|conv1|digitos~35_combout\) # 
-- ((\inst|conv1|digitos~34_combout\ & !\inst|conv1|digitos~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|Mux4~4_combout\,
	datab => \inst|conv1|digitos~34_combout\,
	datac => \inst|conv1|digitos~36_combout\,
	datad => \inst|conv1|digitos~35_combout\,
	combout => \inst|conv1|digitos~40_combout\);

-- Location: FF_X24_Y6_N23
\inst|conv1|s[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|conv1|digitos~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|conv1|s\(1));

-- Location: LCCOMB_X24_Y5_N18
\inst|conv1|digitos~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|conv1|digitos~22_combout\ = (\inst|conv1|LessThan3~0_combout\ & (\inst|conv1|digitos~10_combout\ & \inst|conv1|digitos~18_combout\)) # (!\inst|conv1|LessThan3~0_combout\ & ((!\inst|conv1|digitos~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|conv1|digitos~10_combout\,
	datac => \inst|conv1|LessThan3~0_combout\,
	datad => \inst|conv1|digitos~18_combout\,
	combout => \inst|conv1|digitos~22_combout\);

-- Location: FF_X24_Y5_N19
\inst|conv1|s[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|conv1|digitos~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|conv1|s\(9));

-- Location: LCCOMB_X22_Y5_N0
\inst6|Mux6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Mux6~2_combout\ = (\inst6|contador\(0) & ((\inst6|contador\(1) & (\inst|conv1|s\(1))) # (!\inst6|contador\(1) & ((\inst|conv1|s\(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|contador\(0),
	datab => \inst6|contador\(1),
	datac => \inst|conv1|s\(1),
	datad => \inst|conv1|s\(9),
	combout => \inst6|Mux6~2_combout\);

-- Location: LCCOMB_X24_Y5_N30
\inst|conv1|digitos~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|conv1|digitos~33_combout\ = (\inst|conv1|digitos~23_combout\ & (\inst|conv1|digitos~29_combout\ & ((\inst|conv1|digitos~25_combout\) # (\inst|conv1|digitos~24_combout\)))) # (!\inst|conv1|digitos~23_combout\ & (\inst|conv1|digitos~25_combout\ $ 
-- ((!\inst|conv1|digitos~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000111000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|conv1|digitos~23_combout\,
	datab => \inst|conv1|digitos~25_combout\,
	datac => \inst|conv1|digitos~29_combout\,
	datad => \inst|conv1|digitos~24_combout\,
	combout => \inst|conv1|digitos~33_combout\);

-- Location: FF_X24_Y5_N31
\inst|conv1|s[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|conv1|digitos~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|conv1|s\(5));

-- Location: LCCOMB_X22_Y5_N2
\inst6|Mux6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Mux6~3_combout\ = (\inst6|Mux6~2_combout\) # ((!\inst6|contador\(0) & (\inst6|contador\(1) & \inst|conv1|s\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|contador\(0),
	datab => \inst6|contador\(1),
	datac => \inst6|Mux6~2_combout\,
	datad => \inst|conv1|s\(5),
	combout => \inst6|Mux6~3_combout\);

-- Location: FF_X22_Y5_N3
\inst6|tmp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|Mux6~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|tmp\(1));

-- Location: LCCOMB_X22_Y5_N12
\inst|conv1|digitos~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|conv1|digitos~20_combout\ = (\inst|conv1|LessThan3~0_combout\ & (!\inst|conv1|digitos~10_combout\ & \inst|conv1|digitos~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|conv1|LessThan3~0_combout\,
	datac => \inst|conv1|digitos~10_combout\,
	datad => \inst|conv1|digitos~18_combout\,
	combout => \inst|conv1|digitos~20_combout\);

-- Location: FF_X22_Y5_N13
\inst|conv1|s[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|conv1|digitos~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|conv1|s\(11));

-- Location: LCCOMB_X24_Y6_N10
\inst|conv1|digitos~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|conv1|digitos~38_combout\ = (\inst|conv1|digitos~34_combout\ & (!\inst|ecuacion1|alu1|Mux4~4_combout\ & (\inst|conv1|digitos~36_combout\))) # (!\inst|conv1|digitos~34_combout\ & (\inst|conv1|digitos~35_combout\ & 
-- ((\inst|ecuacion1|alu1|Mux4~4_combout\) # (!\inst|conv1|digitos~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|Mux4~4_combout\,
	datab => \inst|conv1|digitos~34_combout\,
	datac => \inst|conv1|digitos~36_combout\,
	datad => \inst|conv1|digitos~35_combout\,
	combout => \inst|conv1|digitos~38_combout\);

-- Location: FF_X24_Y6_N11
\inst|conv1|s[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|conv1|digitos~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|conv1|s\(3));

-- Location: LCCOMB_X22_Y5_N8
\inst6|Mux4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Mux4~2_combout\ = (\inst6|contador\(0) & ((\inst6|contador\(1) & ((\inst|conv1|s\(3)))) # (!\inst6|contador\(1) & (\inst|conv1|s\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|contador\(0),
	datab => \inst|conv1|s\(11),
	datac => \inst|conv1|s\(3),
	datad => \inst6|contador\(1),
	combout => \inst6|Mux4~2_combout\);

-- Location: LCCOMB_X24_Y5_N14
\inst|conv1|digitos~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|conv1|digitos~31_combout\ = (\inst|conv1|digitos~23_combout\ & (((\inst|conv1|digitos~29_combout\ & !\inst|conv1|digitos~24_combout\)))) # (!\inst|conv1|digitos~23_combout\ & (\inst|conv1|digitos~25_combout\ & ((\inst|conv1|digitos~24_combout\) # 
-- (!\inst|conv1|digitos~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|conv1|digitos~23_combout\,
	datab => \inst|conv1|digitos~25_combout\,
	datac => \inst|conv1|digitos~29_combout\,
	datad => \inst|conv1|digitos~24_combout\,
	combout => \inst|conv1|digitos~31_combout\);

-- Location: FF_X24_Y5_N15
\inst|conv1|s[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|conv1|digitos~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|conv1|s\(7));

-- Location: LCCOMB_X22_Y5_N10
\inst6|Mux4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Mux4~3_combout\ = (\inst6|Mux4~2_combout\) # ((!\inst6|contador\(0) & (\inst6|contador\(1) & \inst|conv1|s\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|contador\(0),
	datab => \inst6|contador\(1),
	datac => \inst6|Mux4~2_combout\,
	datad => \inst|conv1|s\(7),
	combout => \inst6|Mux4~3_combout\);

-- Location: FF_X22_Y5_N11
\inst6|tmp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|Mux4~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|tmp\(3));

-- Location: LCCOMB_X22_Y5_N14
\inst|conv1|digitos~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|conv1|digitos~19_combout\ = (\inst|conv1|LessThan3~0_combout\ & ((\inst|conv1|digitos~10_combout\) # (!\inst|conv1|digitos~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|conv1|LessThan3~0_combout\,
	datac => \inst|conv1|digitos~10_combout\,
	datad => \inst|conv1|digitos~18_combout\,
	combout => \inst|conv1|digitos~19_combout\);

-- Location: FF_X22_Y5_N15
\inst|conv1|s[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|conv1|digitos~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|conv1|s\(12));

-- Location: LCCOMB_X24_Y5_N16
\inst|conv1|digitos~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|conv1|digitos~30_combout\ = \inst|conv1|digitos~25_combout\ $ (((\inst|conv1|digitos~23_combout\ & ((\inst|conv1|digitos~24_combout\) # (!\inst|conv1|digitos~29_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|conv1|digitos~23_combout\,
	datab => \inst|conv1|digitos~25_combout\,
	datac => \inst|conv1|digitos~29_combout\,
	datad => \inst|conv1|digitos~24_combout\,
	combout => \inst|conv1|digitos~30_combout\);

-- Location: FF_X24_Y5_N17
\inst|conv1|s[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|conv1|digitos~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|conv1|s\(8));

-- Location: LCCOMB_X22_Y5_N22
\inst6|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Mux7~0_combout\ = (\inst6|contador\(0) & ((\inst6|contador\(1)) # ((\inst|conv1|s\(8))))) # (!\inst6|contador\(0) & (!\inst6|contador\(1) & (\inst|conv1|s\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|contador\(0),
	datab => \inst6|contador\(1),
	datac => \inst|conv1|s\(12),
	datad => \inst|conv1|s\(8),
	combout => \inst6|Mux7~0_combout\);

-- Location: LCCOMB_X24_Y6_N20
\inst|conv1|digitos~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|conv1|digitos~37_combout\ = \inst|conv1|digitos~35_combout\ $ (((\inst|conv1|digitos~34_combout\ & ((\inst|ecuacion1|alu1|Mux4~4_combout\) # (!\inst|conv1|digitos~36_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ecuacion1|alu1|Mux4~4_combout\,
	datab => \inst|conv1|digitos~34_combout\,
	datac => \inst|conv1|digitos~36_combout\,
	datad => \inst|conv1|digitos~35_combout\,
	combout => \inst|conv1|digitos~37_combout\);

-- Location: FF_X24_Y6_N21
\inst|conv1|s[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|conv1|digitos~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|conv1|s\(4));

-- Location: LCCOMB_X25_Y3_N30
\inst|conv1|s[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|conv1|s[0]~feeder_combout\ = \inst|ecuacion1|alu1|Mux3~13_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|ecuacion1|alu1|Mux3~13_combout\,
	combout => \inst|conv1|s[0]~feeder_combout\);

-- Location: FF_X25_Y3_N31
\inst|conv1|s[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|conv1|s[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|conv1|s\(0));

-- Location: LCCOMB_X22_Y5_N4
\inst6|Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Mux7~1_combout\ = (\inst6|Mux7~0_combout\ & (((\inst|conv1|s\(0)) # (!\inst6|contador\(1))))) # (!\inst6|Mux7~0_combout\ & (\inst|conv1|s\(4) & ((\inst6|contador\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Mux7~0_combout\,
	datab => \inst|conv1|s\(4),
	datac => \inst|conv1|s\(0),
	datad => \inst6|contador\(1),
	combout => \inst6|Mux7~1_combout\);

-- Location: FF_X22_Y5_N5
\inst6|tmp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|Mux7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|tmp\(0));

-- Location: LCCOMB_X8_Y5_N0
\inst6|Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Mux12~0_combout\ = (\inst6|tmp\(2) & (((\inst6|tmp\(3))))) # (!\inst6|tmp\(2) & (\inst6|tmp\(1) & ((\inst6|tmp\(3)) # (!\inst6|tmp\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|tmp\(2),
	datab => \inst6|tmp\(1),
	datac => \inst6|tmp\(3),
	datad => \inst6|tmp\(0),
	combout => \inst6|Mux12~0_combout\);

-- Location: LCCOMB_X8_Y5_N2
\inst6|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Mux11~0_combout\ = (\inst6|tmp\(1) & ((\inst6|tmp\(3)) # ((\inst6|tmp\(2) & \inst6|tmp\(0))))) # (!\inst6|tmp\(1) & (\inst6|tmp\(2) $ (((!\inst6|tmp\(3) & \inst6|tmp\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|tmp\(2),
	datab => \inst6|tmp\(1),
	datac => \inst6|tmp\(3),
	datad => \inst6|tmp\(0),
	combout => \inst6|Mux11~0_combout\);

-- Location: LCCOMB_X8_Y5_N4
\inst6|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Mux10~0_combout\ = (\inst6|tmp\(0)) # ((\inst6|tmp\(1) & ((\inst6|tmp\(3)))) # (!\inst6|tmp\(1) & (\inst6|tmp\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|tmp\(2),
	datab => \inst6|tmp\(1),
	datac => \inst6|tmp\(3),
	datad => \inst6|tmp\(0),
	combout => \inst6|Mux10~0_combout\);

-- Location: LCCOMB_X8_Y5_N22
\inst6|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Mux9~0_combout\ = (\inst6|tmp\(2) & ((\inst6|tmp\(3)) # ((\inst6|tmp\(1) & \inst6|tmp\(0))))) # (!\inst6|tmp\(2) & ((\inst6|tmp\(1)) # ((!\inst6|tmp\(3) & \inst6|tmp\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|tmp\(2),
	datab => \inst6|tmp\(1),
	datac => \inst6|tmp\(3),
	datad => \inst6|tmp\(0),
	combout => \inst6|Mux9~0_combout\);

-- Location: LCCOMB_X13_Y5_N16
\inst6|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Mux8~0_combout\ = (\inst6|tmp\(2) & (((!\inst6|tmp\(0)) # (!\inst6|tmp\(1))))) # (!\inst6|tmp\(2) & ((\inst6|tmp\(3)) # ((\inst6|tmp\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|tmp\(2),
	datab => \inst6|tmp\(3),
	datac => \inst6|tmp\(1),
	datad => \inst6|tmp\(0),
	combout => \inst6|Mux8~0_combout\);

-- Location: LCCOMB_X21_Y5_N10
\inst6|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Mux1~2_combout\ = (\inst6|contador\(1) & !\inst6|contador\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|contador\(1),
	datad => \inst6|contador\(0),
	combout => \inst6|Mux1~2_combout\);

-- Location: FF_X21_Y5_N11
\inst6|arreglo[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|Mux1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|arreglo\(2));

-- Location: LCCOMB_X8_Y5_N12
\inst6|Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Mux14~0_combout\ = (\inst6|tmp\(1) & (((\inst6|tmp\(3))))) # (!\inst6|tmp\(1) & (\inst6|tmp\(2) $ (((!\inst6|tmp\(3) & \inst6|tmp\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|tmp\(2),
	datab => \inst6|tmp\(1),
	datac => \inst6|tmp\(3),
	datad => \inst6|tmp\(0),
	combout => \inst6|Mux14~0_combout\);

-- Location: LCCOMB_X8_Y5_N30
\inst6|Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Mux13~0_combout\ = (\inst6|tmp\(2) & ((\inst6|tmp\(3)) # (\inst6|tmp\(1) $ (\inst6|tmp\(0))))) # (!\inst6|tmp\(2) & (\inst6|tmp\(1) & (\inst6|tmp\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|tmp\(2),
	datab => \inst6|tmp\(1),
	datac => \inst6|tmp\(3),
	datad => \inst6|tmp\(0),
	combout => \inst6|Mux13~0_combout\);

-- Location: IOIBUF_X34_Y18_N1
\rst_clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst_clk,
	o => \rst_clk~input_o\);

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

ww_resultado(9) <= \resultado[9]~output_o\;

ww_resultado(8) <= \resultado[8]~output_o\;

ww_resultado(7) <= \resultado[7]~output_o\;

ww_resultado(6) <= \resultado[6]~output_o\;

ww_resultado(5) <= \resultado[5]~output_o\;

ww_resultado(4) <= \resultado[4]~output_o\;

ww_resultado(3) <= \resultado[3]~output_o\;

ww_resultado(2) <= \resultado[2]~output_o\;

ww_resultado(1) <= \resultado[1]~output_o\;

ww_resultado(0) <= \resultado[0]~output_o\;

ww_sal_prueb(15) <= \sal_prueb[15]~output_o\;

ww_sal_prueb(14) <= \sal_prueb[14]~output_o\;

ww_sal_prueb(13) <= \sal_prueb[13]~output_o\;

ww_sal_prueb(12) <= \sal_prueb[12]~output_o\;

ww_sal_prueb(11) <= \sal_prueb[11]~output_o\;

ww_sal_prueb(10) <= \sal_prueb[10]~output_o\;

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


