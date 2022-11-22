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

-- DATE "11/21/2022 13:42:43"

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
	resultado : OUT std_logic_vector(9 DOWNTO 0);
	clk : IN std_logic;
	rst : IN std_logic;
	addr : IN std_logic_vector(3 DOWNTO 0)
	);
END practica2;

-- Design Ports Information
-- resultado[9]	=>  Location: PIN_115,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resultado[8]	=>  Location: PIN_113,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resultado[7]	=>  Location: PIN_112,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resultado[6]	=>  Location: PIN_114,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resultado[5]	=>  Location: PIN_111,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resultado[4]	=>  Location: PIN_106,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resultado[3]	=>  Location: PIN_104,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resultado[2]	=>  Location: PIN_103,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resultado[1]	=>  Location: PIN_98,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resultado[0]	=>  Location: PIN_110,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[1]	=>  Location: PIN_100,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[3]	=>  Location: PIN_87,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[2]	=>  Location: PIN_84,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[0]	=>  Location: PIN_99,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_91,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_90,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_resultado : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_clk : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_addr : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|alu1|reloj|salida~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rst~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
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
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \addr[0]~input_o\ : std_logic;
SIGNAL \addr[2]~input_o\ : std_logic;
SIGNAL \addr[3]~input_o\ : std_logic;
SIGNAL \inst|Mux31~0_combout\ : std_logic;
SIGNAL \addr[1]~input_o\ : std_logic;
SIGNAL \inst|MREG[21]~0_combout\ : std_logic;
SIGNAL \inst|Mux30~0_combout\ : std_logic;
SIGNAL \inst|Mux28~0_combout\ : std_logic;
SIGNAL \inst|MREG[3]~feeder_combout\ : std_logic;
SIGNAL \inst|alu1|reloj|Add0~0_combout\ : std_logic;
SIGNAL \inst|alu1|reloj|Add0~3\ : std_logic;
SIGNAL \inst|alu1|reloj|Add0~4_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \rst~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst|alu1|reloj|Add0~5\ : std_logic;
SIGNAL \inst|alu1|reloj|Add0~6_combout\ : std_logic;
SIGNAL \inst|alu1|reloj|Add0~7\ : std_logic;
SIGNAL \inst|alu1|reloj|Add0~8_combout\ : std_logic;
SIGNAL \inst|alu1|reloj|Add0~9\ : std_logic;
SIGNAL \inst|alu1|reloj|Add0~10_combout\ : std_logic;
SIGNAL \inst|alu1|reloj|Add0~11\ : std_logic;
SIGNAL \inst|alu1|reloj|Add0~12_combout\ : std_logic;
SIGNAL \inst|alu1|reloj|Add0~13\ : std_logic;
SIGNAL \inst|alu1|reloj|Add0~14_combout\ : std_logic;
SIGNAL \inst|alu1|reloj|cuenta~4_combout\ : std_logic;
SIGNAL \inst|alu1|reloj|Add0~15\ : std_logic;
SIGNAL \inst|alu1|reloj|Add0~16_combout\ : std_logic;
SIGNAL \inst|alu1|reloj|Add0~17\ : std_logic;
SIGNAL \inst|alu1|reloj|Add0~18_combout\ : std_logic;
SIGNAL \inst|alu1|reloj|Add0~19\ : std_logic;
SIGNAL \inst|alu1|reloj|Add0~20_combout\ : std_logic;
SIGNAL \inst|alu1|reloj|Add0~21\ : std_logic;
SIGNAL \inst|alu1|reloj|Add0~22_combout\ : std_logic;
SIGNAL \inst|alu1|reloj|cuenta~3_combout\ : std_logic;
SIGNAL \inst|alu1|reloj|Add0~23\ : std_logic;
SIGNAL \inst|alu1|reloj|Add0~24_combout\ : std_logic;
SIGNAL \inst|alu1|reloj|cuenta~2_combout\ : std_logic;
SIGNAL \inst|alu1|reloj|Add0~25\ : std_logic;
SIGNAL \inst|alu1|reloj|Add0~26_combout\ : std_logic;
SIGNAL \inst|alu1|reloj|cuenta~1_combout\ : std_logic;
SIGNAL \inst|alu1|reloj|Equal0~3_combout\ : std_logic;
SIGNAL \inst|alu1|reloj|Add0~27\ : std_logic;
SIGNAL \inst|alu1|reloj|Add0~28_combout\ : std_logic;
SIGNAL \inst|alu1|reloj|Add0~29\ : std_logic;
SIGNAL \inst|alu1|reloj|Add0~30_combout\ : std_logic;
SIGNAL \inst|alu1|reloj|Add0~31\ : std_logic;
SIGNAL \inst|alu1|reloj|Add0~32_combout\ : std_logic;
SIGNAL \inst|alu1|reloj|cuenta~0_combout\ : std_logic;
SIGNAL \inst|alu1|reloj|Add0~33\ : std_logic;
SIGNAL \inst|alu1|reloj|Add0~34_combout\ : std_logic;
SIGNAL \inst|alu1|reloj|Add0~35\ : std_logic;
SIGNAL \inst|alu1|reloj|Add0~36_combout\ : std_logic;
SIGNAL \inst|alu1|reloj|Add0~37\ : std_logic;
SIGNAL \inst|alu1|reloj|Add0~38_combout\ : std_logic;
SIGNAL \inst|alu1|reloj|Add0~39\ : std_logic;
SIGNAL \inst|alu1|reloj|Add0~40_combout\ : std_logic;
SIGNAL \inst|alu1|reloj|Add0~41\ : std_logic;
SIGNAL \inst|alu1|reloj|Add0~42_combout\ : std_logic;
SIGNAL \inst|alu1|reloj|Add0~43\ : std_logic;
SIGNAL \inst|alu1|reloj|Add0~44_combout\ : std_logic;
SIGNAL \inst|alu1|reloj|Add0~45\ : std_logic;
SIGNAL \inst|alu1|reloj|Add0~46_combout\ : std_logic;
SIGNAL \inst|alu1|reloj|Add0~47\ : std_logic;
SIGNAL \inst|alu1|reloj|Add0~48_combout\ : std_logic;
SIGNAL \inst|alu1|reloj|Add0~49\ : std_logic;
SIGNAL \inst|alu1|reloj|Add0~50_combout\ : std_logic;
SIGNAL \inst|alu1|reloj|Equal0~0_combout\ : std_logic;
SIGNAL \inst|alu1|reloj|Equal0~2_combout\ : std_logic;
SIGNAL \inst|alu1|reloj|Equal0~1_combout\ : std_logic;
SIGNAL \inst|alu1|reloj|Equal0~4_combout\ : std_logic;
SIGNAL \inst|alu1|reloj|cuenta~5_combout\ : std_logic;
SIGNAL \inst|alu1|reloj|Add0~1\ : std_logic;
SIGNAL \inst|alu1|reloj|Add0~2_combout\ : std_logic;
SIGNAL \inst|alu1|reloj|Equal0~6_combout\ : std_logic;
SIGNAL \inst|alu1|reloj|Equal0~5_combout\ : std_logic;
SIGNAL \inst|alu1|reloj|Equal0~7_combout\ : std_logic;
SIGNAL \inst|alu1|reloj|salida~0_combout\ : std_logic;
SIGNAL \inst|alu1|reloj|salida~feeder_combout\ : std_logic;
SIGNAL \inst|alu1|reloj|salida~q\ : std_logic;
SIGNAL \inst|alu1|reloj|salida~clkctrl_outclk\ : std_logic;
SIGNAL \inst|Mux2~0_combout\ : std_logic;
SIGNAL \inst|val1|codigos~15_combout\ : std_logic;
SIGNAL \inst|Mux3~1_combout\ : std_logic;
SIGNAL \inst|val1|codigos~16_combout\ : std_logic;
SIGNAL \inst|Mux17~0_combout\ : std_logic;
SIGNAL \inst|MREG[14]~1_combout\ : std_logic;
SIGNAL \inst|MREG[14]~2_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|Add0~0_combout\ : std_logic;
SIGNAL \inst|alu1|Mux2~8_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|salida~1_combout\ : std_logic;
SIGNAL \inst|alu1|Mux0~0_combout\ : std_logic;
SIGNAL \inst|Mux3~0_combout\ : std_logic;
SIGNAL \inst|val2|codigos~15_combout\ : std_logic;
SIGNAL \inst|MREG[5]~feeder_combout\ : std_logic;
SIGNAL \inst|val2|codigos~16_combout\ : std_logic;
SIGNAL \inst|MREG[7]~feeder_combout\ : std_logic;
SIGNAL \inst|val2|codigos~17_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi1|s4|Cout~0_combout\ : std_logic;
SIGNAL \inst|val2|codigos~18_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi1|s4|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi2|s3|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi2|s4|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi2|s5|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|salida~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi2|s3|Suma~combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi3|s3|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi3|s4|Suma~combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi4|s4|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi3|s4|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi4|s5|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi2|s5|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi3|s5|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi3|s6|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi4|s6|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi3|s6|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi4|s7|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|Mux1~3_combout\ : std_logic;
SIGNAL \inst|alu1|Mux11~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|resta|s0|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|resta|s2|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|resta|s4|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|Mux10~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~33_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi4|s7|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~34_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi4|s6|Suma~combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~35_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi4|s5|Suma~combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~36_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|resta|s4|Suma~combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~12_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|resta|s3|Suma~combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi3|s3|Suma~combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~37_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|resta|s2|Suma~combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~13_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~38_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~14_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~16\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~18\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~20\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~22\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~24\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~26\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~28\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~30\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~31_combout\ : std_logic;
SIGNAL \inst|alu1|Mux1~2_combout\ : std_logic;
SIGNAL \inst|alu1|Mux1~4_combout\ : std_logic;
SIGNAL \inst|alu1|Mux2~5_combout\ : std_logic;
SIGNAL \inst|alu1|Mux2~2_combout\ : std_logic;
SIGNAL \inst|alu1|Mux2~9_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~29_combout\ : std_logic;
SIGNAL \inst|alu1|Mux2~3_combout\ : std_logic;
SIGNAL \inst|alu1|Mux2~4_combout\ : std_logic;
SIGNAL \inst|alu1|Mux2~6_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~27_combout\ : std_logic;
SIGNAL \inst|alu1|Mux3~0_combout\ : std_logic;
SIGNAL \inst|alu1|Mux3~1_combout\ : std_logic;
SIGNAL \inst|alu1|Mux3~2_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|s2|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|s4|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~25_combout\ : std_logic;
SIGNAL \inst|alu1|Mux4~0_combout\ : std_logic;
SIGNAL \inst|alu1|Mux2~7_combout\ : std_logic;
SIGNAL \inst|alu1|Mux4~1_combout\ : std_logic;
SIGNAL \inst|alu1|Mux4~2_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|salida~2_combout\ : std_logic;
SIGNAL \inst|alu1|Mux5~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|s4|Suma~combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~23_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi4|s4|Suma~combout\ : std_logic;
SIGNAL \inst|alu1|Mux5~1_combout\ : std_logic;
SIGNAL \inst|alu1|Mux5~2_combout\ : std_logic;
SIGNAL \inst|alu1|Mux5~3_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|s3|Suma~combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan0~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan0~1_combout\ : std_logic;
SIGNAL \inst|alu1|Mux6~2_combout\ : std_logic;
SIGNAL \inst|alu1|Mux6~3_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~21_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|Mux1~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|salida~3_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|salida~4_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|Add0~1_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|salida~5_combout\ : std_logic;
SIGNAL \inst|alu1|Mux0~1_combout\ : std_logic;
SIGNAL \inst|alu1|Mux6~4_combout\ : std_logic;
SIGNAL \inst|alu1|Mux6~5_combout\ : std_logic;
SIGNAL \inst|alu1|Mux6~6_combout\ : std_logic;
SIGNAL \inst|alu1|Mux6~7_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|suma|s2|Suma~combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi2|s2|Suma~combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add0~1\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add0~2_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add0~16_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add0~3\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add0~5\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add0~6_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add0~14_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan1~1_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add0~4_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add0~15_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan1~2_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add0~7\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add0~9\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add0~11\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add0~12_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add0~8_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add0~10_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan1~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add0~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add0~17_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan1~3_combout\ : std_logic;
SIGNAL \inst|alu1|Mux7~2_combout\ : std_logic;
SIGNAL \inst|alu1|Mux7~3_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|salida~6_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|Add0~2_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|salida~7_combout\ : std_logic;
SIGNAL \inst|alu1|Mux7~4_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~19_combout\ : std_logic;
SIGNAL \inst|alu1|Mux7~5_combout\ : std_logic;
SIGNAL \inst|alu1|Mux7~6_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~17_combout\ : std_logic;
SIGNAL \inst|alu1|Mux8~2_combout\ : std_logic;
SIGNAL \inst|alu1|Mux8~3_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan2~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan2~1_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan2~2_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add0~19_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add0~18_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add1~1\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add1~3\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add1~5\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add1~7\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add1~9\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add1~11\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add1~12_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add1~6_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add1~4_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan2~4_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan2~3_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add1~10_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add1~2_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add1~8_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add1~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan2~5_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan2~6_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan2~7_combout\ : std_logic;
SIGNAL \inst|alu1|Mux8~4_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|salida~8_combout\ : std_logic;
SIGNAL \inst|alu1|Mux8~5_combout\ : std_logic;
SIGNAL \inst|alu1|Mux8~6_combout\ : std_logic;
SIGNAL \inst|alu1|Mux8~7_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|salida~9_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|salida~10_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|aux[0]~feeder_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|salida~11_combout\ : std_logic;
SIGNAL \inst|alu1|Mux9~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~15_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|Mux9~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add1~16_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add1~17_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add1~15_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add1~14_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add2~1_cout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add2~3\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add2~5\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add2~7\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add2~8_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add1~19_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add1~18_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add2~9\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add2~11\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add2~12_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add2~10_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add2~6_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan3~6_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add2~2_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add2~4_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan3~5_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan3~8_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan3~4_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan3~9_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan3~7_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|Mux9~1_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|Mux9~2_combout\ : std_logic;
SIGNAL \inst|alu1|Mux9~1_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_logica|salida\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst|MREG\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \inst|alu1|unidad_aritmetica|mult|inter\ : std_logic_vector(24 DOWNTO 0);
SIGNAL \inst|alu1|unidad_logica|aux\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \inst|addr2\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|addr1\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|alu1|reloj|cuenta\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \inst|ALT_INV_Mux28~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

resultado <= ww_resultado;
ww_clk <= clk;
ww_rst <= rst;
ww_addr <= addr;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst|alu1|reloj|salida~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst|alu1|reloj|salida~q\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\rst~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rst~input_o\);
\inst|ALT_INV_Mux28~0_combout\ <= NOT \inst|Mux28~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X28_Y24_N23
\resultado[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|alu1|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \resultado[9]~output_o\);

-- Location: IOOBUF_X28_Y24_N9
\resultado[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|alu1|Mux1~4_combout\,
	devoe => ww_devoe,
	o => \resultado[8]~output_o\);

-- Location: IOOBUF_X28_Y24_N2
\resultado[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|alu1|Mux2~6_combout\,
	devoe => ww_devoe,
	o => \resultado[7]~output_o\);

-- Location: IOOBUF_X28_Y24_N16
\resultado[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|alu1|Mux3~2_combout\,
	devoe => ww_devoe,
	o => \resultado[6]~output_o\);

-- Location: IOOBUF_X30_Y24_N23
\resultado[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|alu1|Mux4~2_combout\,
	devoe => ww_devoe,
	o => \resultado[5]~output_o\);

-- Location: IOOBUF_X34_Y20_N9
\resultado[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|alu1|Mux5~3_combout\,
	devoe => ww_devoe,
	o => \resultado[4]~output_o\);

-- Location: IOOBUF_X34_Y18_N2
\resultado[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|alu1|Mux6~7_combout\,
	devoe => ww_devoe,
	o => \resultado[3]~output_o\);

-- Location: IOOBUF_X34_Y18_N16
\resultado[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|alu1|Mux7~6_combout\,
	devoe => ww_devoe,
	o => \resultado[2]~output_o\);

-- Location: IOOBUF_X34_Y17_N23
\resultado[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|alu1|Mux8~7_combout\,
	devoe => ww_devoe,
	o => \resultado[1]~output_o\);

-- Location: IOOBUF_X30_Y24_N2
\resultado[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|alu1|Mux9~1_combout\,
	devoe => ww_devoe,
	o => \resultado[0]~output_o\);

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

-- Location: IOIBUF_X34_Y17_N15
\addr[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(0),
	o => \addr[0]~input_o\);

-- Location: IOIBUF_X34_Y9_N15
\addr[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(2),
	o => \addr[2]~input_o\);

-- Location: IOIBUF_X34_Y10_N8
\addr[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(3),
	o => \addr[3]~input_o\);

-- Location: LCCOMB_X33_Y16_N10
\inst|Mux31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux31~0_combout\ = (\addr[0]~input_o\ & (!\addr[2]~input_o\ & !\addr[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \addr[0]~input_o\,
	datac => \addr[2]~input_o\,
	datad => \addr[3]~input_o\,
	combout => \inst|Mux31~0_combout\);

-- Location: IOIBUF_X34_Y17_N1
\addr[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(1),
	o => \addr[1]~input_o\);

-- Location: LCCOMB_X32_Y16_N14
\inst|MREG[21]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|MREG[21]~0_combout\ = (\addr[3]~input_o\) # ((\addr[0]~input_o\) # ((\addr[1]~input_o\ & \addr[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[1]~input_o\,
	datab => \addr[3]~input_o\,
	datac => \addr[2]~input_o\,
	datad => \addr[0]~input_o\,
	combout => \inst|MREG[21]~0_combout\);

-- Location: FF_X33_Y16_N11
\inst|MREG[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Mux31~0_combout\,
	ena => \inst|MREG[21]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MREG\(0));

-- Location: LCCOMB_X33_Y16_N24
\inst|Mux30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux30~0_combout\ = (\addr[2]~input_o\ & (!\addr[1]~input_o\ & (\addr[0]~input_o\ & !\addr[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[2]~input_o\,
	datab => \addr[1]~input_o\,
	datac => \addr[0]~input_o\,
	datad => \addr[3]~input_o\,
	combout => \inst|Mux30~0_combout\);

-- Location: FF_X33_Y16_N25
\inst|MREG[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Mux30~0_combout\,
	ena => \inst|MREG[21]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MREG\(1));

-- Location: LCCOMB_X33_Y16_N18
\inst|Mux28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux28~0_combout\ = (\addr[0]~input_o\ & (!\addr[3]~input_o\ & ((!\addr[1]~input_o\) # (!\addr[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[2]~input_o\,
	datab => \addr[1]~input_o\,
	datac => \addr[0]~input_o\,
	datad => \addr[3]~input_o\,
	combout => \inst|Mux28~0_combout\);

-- Location: LCCOMB_X33_Y16_N16
\inst|MREG[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|MREG[3]~feeder_combout\ = \inst|Mux28~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Mux28~0_combout\,
	combout => \inst|MREG[3]~feeder_combout\);

-- Location: FF_X33_Y16_N17
\inst|MREG[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|MREG[3]~feeder_combout\,
	ena => \inst|MREG[21]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MREG\(3));

-- Location: LCCOMB_X25_Y10_N6
\inst|alu1|reloj|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|reloj|Add0~0_combout\ = \inst|alu1|reloj|cuenta\(0) $ (VCC)
-- \inst|alu1|reloj|Add0~1\ = CARRY(\inst|alu1|reloj|cuenta\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|reloj|cuenta\(0),
	datad => VCC,
	combout => \inst|alu1|reloj|Add0~0_combout\,
	cout => \inst|alu1|reloj|Add0~1\);

-- Location: LCCOMB_X25_Y10_N8
\inst|alu1|reloj|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|reloj|Add0~2_combout\ = (\inst|alu1|reloj|cuenta\(1) & (!\inst|alu1|reloj|Add0~1\)) # (!\inst|alu1|reloj|cuenta\(1) & ((\inst|alu1|reloj|Add0~1\) # (GND)))
-- \inst|alu1|reloj|Add0~3\ = CARRY((!\inst|alu1|reloj|Add0~1\) # (!\inst|alu1|reloj|cuenta\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|reloj|cuenta\(1),
	datad => VCC,
	cin => \inst|alu1|reloj|Add0~1\,
	combout => \inst|alu1|reloj|Add0~2_combout\,
	cout => \inst|alu1|reloj|Add0~3\);

-- Location: LCCOMB_X25_Y10_N10
\inst|alu1|reloj|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|reloj|Add0~4_combout\ = (\inst|alu1|reloj|cuenta\(2) & (\inst|alu1|reloj|Add0~3\ $ (GND))) # (!\inst|alu1|reloj|cuenta\(2) & (!\inst|alu1|reloj|Add0~3\ & VCC))
-- \inst|alu1|reloj|Add0~5\ = CARRY((\inst|alu1|reloj|cuenta\(2) & !\inst|alu1|reloj|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|reloj|cuenta\(2),
	datad => VCC,
	cin => \inst|alu1|reloj|Add0~3\,
	combout => \inst|alu1|reloj|Add0~4_combout\,
	cout => \inst|alu1|reloj|Add0~5\);

-- Location: IOIBUF_X34_Y12_N8
\rst~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: CLKCTRL_G7
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

-- Location: FF_X25_Y10_N11
\inst|alu1|reloj|cuenta[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|alu1|reloj|Add0~4_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|reloj|cuenta\(2));

-- Location: LCCOMB_X25_Y10_N12
\inst|alu1|reloj|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|reloj|Add0~6_combout\ = (\inst|alu1|reloj|cuenta\(3) & (!\inst|alu1|reloj|Add0~5\)) # (!\inst|alu1|reloj|cuenta\(3) & ((\inst|alu1|reloj|Add0~5\) # (GND)))
-- \inst|alu1|reloj|Add0~7\ = CARRY((!\inst|alu1|reloj|Add0~5\) # (!\inst|alu1|reloj|cuenta\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|reloj|cuenta\(3),
	datad => VCC,
	cin => \inst|alu1|reloj|Add0~5\,
	combout => \inst|alu1|reloj|Add0~6_combout\,
	cout => \inst|alu1|reloj|Add0~7\);

-- Location: FF_X25_Y10_N13
\inst|alu1|reloj|cuenta[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|alu1|reloj|Add0~6_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|reloj|cuenta\(3));

-- Location: LCCOMB_X25_Y10_N14
\inst|alu1|reloj|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|reloj|Add0~8_combout\ = (\inst|alu1|reloj|cuenta\(4) & (\inst|alu1|reloj|Add0~7\ $ (GND))) # (!\inst|alu1|reloj|cuenta\(4) & (!\inst|alu1|reloj|Add0~7\ & VCC))
-- \inst|alu1|reloj|Add0~9\ = CARRY((\inst|alu1|reloj|cuenta\(4) & !\inst|alu1|reloj|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|reloj|cuenta\(4),
	datad => VCC,
	cin => \inst|alu1|reloj|Add0~7\,
	combout => \inst|alu1|reloj|Add0~8_combout\,
	cout => \inst|alu1|reloj|Add0~9\);

-- Location: FF_X25_Y10_N15
\inst|alu1|reloj|cuenta[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|alu1|reloj|Add0~8_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|reloj|cuenta\(4));

-- Location: LCCOMB_X25_Y10_N16
\inst|alu1|reloj|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|reloj|Add0~10_combout\ = (\inst|alu1|reloj|cuenta\(5) & (!\inst|alu1|reloj|Add0~9\)) # (!\inst|alu1|reloj|cuenta\(5) & ((\inst|alu1|reloj|Add0~9\) # (GND)))
-- \inst|alu1|reloj|Add0~11\ = CARRY((!\inst|alu1|reloj|Add0~9\) # (!\inst|alu1|reloj|cuenta\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|reloj|cuenta\(5),
	datad => VCC,
	cin => \inst|alu1|reloj|Add0~9\,
	combout => \inst|alu1|reloj|Add0~10_combout\,
	cout => \inst|alu1|reloj|Add0~11\);

-- Location: FF_X25_Y10_N17
\inst|alu1|reloj|cuenta[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|alu1|reloj|Add0~10_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|reloj|cuenta\(5));

-- Location: LCCOMB_X25_Y10_N18
\inst|alu1|reloj|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|reloj|Add0~12_combout\ = (\inst|alu1|reloj|cuenta\(6) & (\inst|alu1|reloj|Add0~11\ $ (GND))) # (!\inst|alu1|reloj|cuenta\(6) & (!\inst|alu1|reloj|Add0~11\ & VCC))
-- \inst|alu1|reloj|Add0~13\ = CARRY((\inst|alu1|reloj|cuenta\(6) & !\inst|alu1|reloj|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|reloj|cuenta\(6),
	datad => VCC,
	cin => \inst|alu1|reloj|Add0~11\,
	combout => \inst|alu1|reloj|Add0~12_combout\,
	cout => \inst|alu1|reloj|Add0~13\);

-- Location: FF_X25_Y10_N19
\inst|alu1|reloj|cuenta[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|alu1|reloj|Add0~12_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|reloj|cuenta\(6));

-- Location: LCCOMB_X25_Y10_N20
\inst|alu1|reloj|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|reloj|Add0~14_combout\ = (\inst|alu1|reloj|cuenta\(7) & (!\inst|alu1|reloj|Add0~13\)) # (!\inst|alu1|reloj|cuenta\(7) & ((\inst|alu1|reloj|Add0~13\) # (GND)))
-- \inst|alu1|reloj|Add0~15\ = CARRY((!\inst|alu1|reloj|Add0~13\) # (!\inst|alu1|reloj|cuenta\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|reloj|cuenta\(7),
	datad => VCC,
	cin => \inst|alu1|reloj|Add0~13\,
	combout => \inst|alu1|reloj|Add0~14_combout\,
	cout => \inst|alu1|reloj|Add0~15\);

-- Location: LCCOMB_X26_Y10_N18
\inst|alu1|reloj|cuenta~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|reloj|cuenta~4_combout\ = (\inst|alu1|reloj|Add0~14_combout\ & ((!\inst|alu1|reloj|Equal0~7_combout\) # (!\inst|alu1|reloj|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|reloj|Equal0~4_combout\,
	datab => \inst|alu1|reloj|Equal0~7_combout\,
	datad => \inst|alu1|reloj|Add0~14_combout\,
	combout => \inst|alu1|reloj|cuenta~4_combout\);

-- Location: FF_X26_Y10_N19
\inst|alu1|reloj|cuenta[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|alu1|reloj|cuenta~4_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|reloj|cuenta\(7));

-- Location: LCCOMB_X25_Y10_N22
\inst|alu1|reloj|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|reloj|Add0~16_combout\ = (\inst|alu1|reloj|cuenta\(8) & (\inst|alu1|reloj|Add0~15\ $ (GND))) # (!\inst|alu1|reloj|cuenta\(8) & (!\inst|alu1|reloj|Add0~15\ & VCC))
-- \inst|alu1|reloj|Add0~17\ = CARRY((\inst|alu1|reloj|cuenta\(8) & !\inst|alu1|reloj|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|reloj|cuenta\(8),
	datad => VCC,
	cin => \inst|alu1|reloj|Add0~15\,
	combout => \inst|alu1|reloj|Add0~16_combout\,
	cout => \inst|alu1|reloj|Add0~17\);

-- Location: FF_X25_Y10_N23
\inst|alu1|reloj|cuenta[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|alu1|reloj|Add0~16_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|reloj|cuenta\(8));

-- Location: LCCOMB_X25_Y10_N24
\inst|alu1|reloj|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|reloj|Add0~18_combout\ = (\inst|alu1|reloj|cuenta\(9) & (!\inst|alu1|reloj|Add0~17\)) # (!\inst|alu1|reloj|cuenta\(9) & ((\inst|alu1|reloj|Add0~17\) # (GND)))
-- \inst|alu1|reloj|Add0~19\ = CARRY((!\inst|alu1|reloj|Add0~17\) # (!\inst|alu1|reloj|cuenta\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|reloj|cuenta\(9),
	datad => VCC,
	cin => \inst|alu1|reloj|Add0~17\,
	combout => \inst|alu1|reloj|Add0~18_combout\,
	cout => \inst|alu1|reloj|Add0~19\);

-- Location: FF_X25_Y10_N25
\inst|alu1|reloj|cuenta[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|alu1|reloj|Add0~18_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|reloj|cuenta\(9));

-- Location: LCCOMB_X25_Y10_N26
\inst|alu1|reloj|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|reloj|Add0~20_combout\ = (\inst|alu1|reloj|cuenta\(10) & (\inst|alu1|reloj|Add0~19\ $ (GND))) # (!\inst|alu1|reloj|cuenta\(10) & (!\inst|alu1|reloj|Add0~19\ & VCC))
-- \inst|alu1|reloj|Add0~21\ = CARRY((\inst|alu1|reloj|cuenta\(10) & !\inst|alu1|reloj|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|reloj|cuenta\(10),
	datad => VCC,
	cin => \inst|alu1|reloj|Add0~19\,
	combout => \inst|alu1|reloj|Add0~20_combout\,
	cout => \inst|alu1|reloj|Add0~21\);

-- Location: FF_X25_Y10_N27
\inst|alu1|reloj|cuenta[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|alu1|reloj|Add0~20_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|reloj|cuenta\(10));

-- Location: LCCOMB_X25_Y10_N28
\inst|alu1|reloj|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|reloj|Add0~22_combout\ = (\inst|alu1|reloj|cuenta\(11) & (!\inst|alu1|reloj|Add0~21\)) # (!\inst|alu1|reloj|cuenta\(11) & ((\inst|alu1|reloj|Add0~21\) # (GND)))
-- \inst|alu1|reloj|Add0~23\ = CARRY((!\inst|alu1|reloj|Add0~21\) # (!\inst|alu1|reloj|cuenta\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|reloj|cuenta\(11),
	datad => VCC,
	cin => \inst|alu1|reloj|Add0~21\,
	combout => \inst|alu1|reloj|Add0~22_combout\,
	cout => \inst|alu1|reloj|Add0~23\);

-- Location: LCCOMB_X25_Y10_N2
\inst|alu1|reloj|cuenta~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|reloj|cuenta~3_combout\ = (\inst|alu1|reloj|Add0~22_combout\ & ((!\inst|alu1|reloj|Equal0~7_combout\) # (!\inst|alu1|reloj|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|reloj|Equal0~4_combout\,
	datac => \inst|alu1|reloj|Equal0~7_combout\,
	datad => \inst|alu1|reloj|Add0~22_combout\,
	combout => \inst|alu1|reloj|cuenta~3_combout\);

-- Location: FF_X25_Y10_N3
\inst|alu1|reloj|cuenta[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|alu1|reloj|cuenta~3_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|reloj|cuenta\(11));

-- Location: LCCOMB_X25_Y10_N30
\inst|alu1|reloj|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|reloj|Add0~24_combout\ = (\inst|alu1|reloj|cuenta\(12) & (\inst|alu1|reloj|Add0~23\ $ (GND))) # (!\inst|alu1|reloj|cuenta\(12) & (!\inst|alu1|reloj|Add0~23\ & VCC))
-- \inst|alu1|reloj|Add0~25\ = CARRY((\inst|alu1|reloj|cuenta\(12) & !\inst|alu1|reloj|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|reloj|cuenta\(12),
	datad => VCC,
	cin => \inst|alu1|reloj|Add0~23\,
	combout => \inst|alu1|reloj|Add0~24_combout\,
	cout => \inst|alu1|reloj|Add0~25\);

-- Location: LCCOMB_X25_Y10_N4
\inst|alu1|reloj|cuenta~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|reloj|cuenta~2_combout\ = (\inst|alu1|reloj|Add0~24_combout\ & ((!\inst|alu1|reloj|Equal0~7_combout\) # (!\inst|alu1|reloj|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|reloj|Equal0~4_combout\,
	datac => \inst|alu1|reloj|Add0~24_combout\,
	datad => \inst|alu1|reloj|Equal0~7_combout\,
	combout => \inst|alu1|reloj|cuenta~2_combout\);

-- Location: FF_X25_Y10_N5
\inst|alu1|reloj|cuenta[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|alu1|reloj|cuenta~2_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|reloj|cuenta\(12));

-- Location: LCCOMB_X25_Y9_N0
\inst|alu1|reloj|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|reloj|Add0~26_combout\ = (\inst|alu1|reloj|cuenta\(13) & (!\inst|alu1|reloj|Add0~25\)) # (!\inst|alu1|reloj|cuenta\(13) & ((\inst|alu1|reloj|Add0~25\) # (GND)))
-- \inst|alu1|reloj|Add0~27\ = CARRY((!\inst|alu1|reloj|Add0~25\) # (!\inst|alu1|reloj|cuenta\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|reloj|cuenta\(13),
	datad => VCC,
	cin => \inst|alu1|reloj|Add0~25\,
	combout => \inst|alu1|reloj|Add0~26_combout\,
	cout => \inst|alu1|reloj|Add0~27\);

-- Location: LCCOMB_X25_Y9_N26
\inst|alu1|reloj|cuenta~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|reloj|cuenta~1_combout\ = (\inst|alu1|reloj|Add0~26_combout\ & ((!\inst|alu1|reloj|Equal0~4_combout\) # (!\inst|alu1|reloj|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|reloj|Equal0~7_combout\,
	datac => \inst|alu1|reloj|Equal0~4_combout\,
	datad => \inst|alu1|reloj|Add0~26_combout\,
	combout => \inst|alu1|reloj|cuenta~1_combout\);

-- Location: FF_X25_Y9_N27
\inst|alu1|reloj|cuenta[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|alu1|reloj|cuenta~1_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|reloj|cuenta\(13));

-- Location: LCCOMB_X26_Y10_N26
\inst|alu1|reloj|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|reloj|Equal0~3_combout\ = (\inst|alu1|reloj|cuenta\(11) & (\inst|alu1|reloj|cuenta\(12) & (!\inst|alu1|reloj|cuenta\(10) & \inst|alu1|reloj|cuenta\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|reloj|cuenta\(11),
	datab => \inst|alu1|reloj|cuenta\(12),
	datac => \inst|alu1|reloj|cuenta\(10),
	datad => \inst|alu1|reloj|cuenta\(13),
	combout => \inst|alu1|reloj|Equal0~3_combout\);

-- Location: LCCOMB_X25_Y9_N2
\inst|alu1|reloj|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|reloj|Add0~28_combout\ = (\inst|alu1|reloj|cuenta\(14) & (\inst|alu1|reloj|Add0~27\ $ (GND))) # (!\inst|alu1|reloj|cuenta\(14) & (!\inst|alu1|reloj|Add0~27\ & VCC))
-- \inst|alu1|reloj|Add0~29\ = CARRY((\inst|alu1|reloj|cuenta\(14) & !\inst|alu1|reloj|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|reloj|cuenta\(14),
	datad => VCC,
	cin => \inst|alu1|reloj|Add0~27\,
	combout => \inst|alu1|reloj|Add0~28_combout\,
	cout => \inst|alu1|reloj|Add0~29\);

-- Location: FF_X25_Y9_N3
\inst|alu1|reloj|cuenta[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|alu1|reloj|Add0~28_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|reloj|cuenta\(14));

-- Location: LCCOMB_X25_Y9_N4
\inst|alu1|reloj|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|reloj|Add0~30_combout\ = (\inst|alu1|reloj|cuenta\(15) & (!\inst|alu1|reloj|Add0~29\)) # (!\inst|alu1|reloj|cuenta\(15) & ((\inst|alu1|reloj|Add0~29\) # (GND)))
-- \inst|alu1|reloj|Add0~31\ = CARRY((!\inst|alu1|reloj|Add0~29\) # (!\inst|alu1|reloj|cuenta\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|reloj|cuenta\(15),
	datad => VCC,
	cin => \inst|alu1|reloj|Add0~29\,
	combout => \inst|alu1|reloj|Add0~30_combout\,
	cout => \inst|alu1|reloj|Add0~31\);

-- Location: FF_X25_Y9_N5
\inst|alu1|reloj|cuenta[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|alu1|reloj|Add0~30_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|reloj|cuenta\(15));

-- Location: LCCOMB_X25_Y9_N6
\inst|alu1|reloj|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|reloj|Add0~32_combout\ = (\inst|alu1|reloj|cuenta\(16) & (\inst|alu1|reloj|Add0~31\ $ (GND))) # (!\inst|alu1|reloj|cuenta\(16) & (!\inst|alu1|reloj|Add0~31\ & VCC))
-- \inst|alu1|reloj|Add0~33\ = CARRY((\inst|alu1|reloj|cuenta\(16) & !\inst|alu1|reloj|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|reloj|cuenta\(16),
	datad => VCC,
	cin => \inst|alu1|reloj|Add0~31\,
	combout => \inst|alu1|reloj|Add0~32_combout\,
	cout => \inst|alu1|reloj|Add0~33\);

-- Location: LCCOMB_X25_Y9_N30
\inst|alu1|reloj|cuenta~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|reloj|cuenta~0_combout\ = (\inst|alu1|reloj|Add0~32_combout\ & ((!\inst|alu1|reloj|Equal0~4_combout\) # (!\inst|alu1|reloj|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|reloj|Equal0~7_combout\,
	datac => \inst|alu1|reloj|Equal0~4_combout\,
	datad => \inst|alu1|reloj|Add0~32_combout\,
	combout => \inst|alu1|reloj|cuenta~0_combout\);

-- Location: FF_X25_Y9_N31
\inst|alu1|reloj|cuenta[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|alu1|reloj|cuenta~0_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|reloj|cuenta\(16));

-- Location: LCCOMB_X25_Y9_N8
\inst|alu1|reloj|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|reloj|Add0~34_combout\ = (\inst|alu1|reloj|cuenta\(17) & (!\inst|alu1|reloj|Add0~33\)) # (!\inst|alu1|reloj|cuenta\(17) & ((\inst|alu1|reloj|Add0~33\) # (GND)))
-- \inst|alu1|reloj|Add0~35\ = CARRY((!\inst|alu1|reloj|Add0~33\) # (!\inst|alu1|reloj|cuenta\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|reloj|cuenta\(17),
	datad => VCC,
	cin => \inst|alu1|reloj|Add0~33\,
	combout => \inst|alu1|reloj|Add0~34_combout\,
	cout => \inst|alu1|reloj|Add0~35\);

-- Location: FF_X25_Y9_N9
\inst|alu1|reloj|cuenta[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|alu1|reloj|Add0~34_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|reloj|cuenta\(17));

-- Location: LCCOMB_X25_Y9_N10
\inst|alu1|reloj|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|reloj|Add0~36_combout\ = (\inst|alu1|reloj|cuenta\(18) & (\inst|alu1|reloj|Add0~35\ $ (GND))) # (!\inst|alu1|reloj|cuenta\(18) & (!\inst|alu1|reloj|Add0~35\ & VCC))
-- \inst|alu1|reloj|Add0~37\ = CARRY((\inst|alu1|reloj|cuenta\(18) & !\inst|alu1|reloj|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|reloj|cuenta\(18),
	datad => VCC,
	cin => \inst|alu1|reloj|Add0~35\,
	combout => \inst|alu1|reloj|Add0~36_combout\,
	cout => \inst|alu1|reloj|Add0~37\);

-- Location: FF_X25_Y9_N11
\inst|alu1|reloj|cuenta[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|alu1|reloj|Add0~36_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|reloj|cuenta\(18));

-- Location: LCCOMB_X25_Y9_N12
\inst|alu1|reloj|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|reloj|Add0~38_combout\ = (\inst|alu1|reloj|cuenta\(19) & (!\inst|alu1|reloj|Add0~37\)) # (!\inst|alu1|reloj|cuenta\(19) & ((\inst|alu1|reloj|Add0~37\) # (GND)))
-- \inst|alu1|reloj|Add0~39\ = CARRY((!\inst|alu1|reloj|Add0~37\) # (!\inst|alu1|reloj|cuenta\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|reloj|cuenta\(19),
	datad => VCC,
	cin => \inst|alu1|reloj|Add0~37\,
	combout => \inst|alu1|reloj|Add0~38_combout\,
	cout => \inst|alu1|reloj|Add0~39\);

-- Location: FF_X25_Y9_N13
\inst|alu1|reloj|cuenta[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|alu1|reloj|Add0~38_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|reloj|cuenta\(19));

-- Location: LCCOMB_X25_Y9_N14
\inst|alu1|reloj|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|reloj|Add0~40_combout\ = (\inst|alu1|reloj|cuenta\(20) & (\inst|alu1|reloj|Add0~39\ $ (GND))) # (!\inst|alu1|reloj|cuenta\(20) & (!\inst|alu1|reloj|Add0~39\ & VCC))
-- \inst|alu1|reloj|Add0~41\ = CARRY((\inst|alu1|reloj|cuenta\(20) & !\inst|alu1|reloj|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|reloj|cuenta\(20),
	datad => VCC,
	cin => \inst|alu1|reloj|Add0~39\,
	combout => \inst|alu1|reloj|Add0~40_combout\,
	cout => \inst|alu1|reloj|Add0~41\);

-- Location: FF_X25_Y9_N15
\inst|alu1|reloj|cuenta[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|alu1|reloj|Add0~40_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|reloj|cuenta\(20));

-- Location: LCCOMB_X25_Y9_N16
\inst|alu1|reloj|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|reloj|Add0~42_combout\ = (\inst|alu1|reloj|cuenta\(21) & (!\inst|alu1|reloj|Add0~41\)) # (!\inst|alu1|reloj|cuenta\(21) & ((\inst|alu1|reloj|Add0~41\) # (GND)))
-- \inst|alu1|reloj|Add0~43\ = CARRY((!\inst|alu1|reloj|Add0~41\) # (!\inst|alu1|reloj|cuenta\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|reloj|cuenta\(21),
	datad => VCC,
	cin => \inst|alu1|reloj|Add0~41\,
	combout => \inst|alu1|reloj|Add0~42_combout\,
	cout => \inst|alu1|reloj|Add0~43\);

-- Location: FF_X25_Y9_N17
\inst|alu1|reloj|cuenta[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|alu1|reloj|Add0~42_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|reloj|cuenta\(21));

-- Location: LCCOMB_X25_Y9_N18
\inst|alu1|reloj|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|reloj|Add0~44_combout\ = (\inst|alu1|reloj|cuenta\(22) & (\inst|alu1|reloj|Add0~43\ $ (GND))) # (!\inst|alu1|reloj|cuenta\(22) & (!\inst|alu1|reloj|Add0~43\ & VCC))
-- \inst|alu1|reloj|Add0~45\ = CARRY((\inst|alu1|reloj|cuenta\(22) & !\inst|alu1|reloj|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|reloj|cuenta\(22),
	datad => VCC,
	cin => \inst|alu1|reloj|Add0~43\,
	combout => \inst|alu1|reloj|Add0~44_combout\,
	cout => \inst|alu1|reloj|Add0~45\);

-- Location: FF_X25_Y9_N19
\inst|alu1|reloj|cuenta[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|alu1|reloj|Add0~44_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|reloj|cuenta\(22));

-- Location: LCCOMB_X25_Y9_N20
\inst|alu1|reloj|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|reloj|Add0~46_combout\ = (\inst|alu1|reloj|cuenta\(23) & (!\inst|alu1|reloj|Add0~45\)) # (!\inst|alu1|reloj|cuenta\(23) & ((\inst|alu1|reloj|Add0~45\) # (GND)))
-- \inst|alu1|reloj|Add0~47\ = CARRY((!\inst|alu1|reloj|Add0~45\) # (!\inst|alu1|reloj|cuenta\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|reloj|cuenta\(23),
	datad => VCC,
	cin => \inst|alu1|reloj|Add0~45\,
	combout => \inst|alu1|reloj|Add0~46_combout\,
	cout => \inst|alu1|reloj|Add0~47\);

-- Location: FF_X25_Y9_N21
\inst|alu1|reloj|cuenta[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|alu1|reloj|Add0~46_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|reloj|cuenta\(23));

-- Location: LCCOMB_X25_Y9_N22
\inst|alu1|reloj|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|reloj|Add0~48_combout\ = (\inst|alu1|reloj|cuenta\(24) & (\inst|alu1|reloj|Add0~47\ $ (GND))) # (!\inst|alu1|reloj|cuenta\(24) & (!\inst|alu1|reloj|Add0~47\ & VCC))
-- \inst|alu1|reloj|Add0~49\ = CARRY((\inst|alu1|reloj|cuenta\(24) & !\inst|alu1|reloj|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|reloj|cuenta\(24),
	datad => VCC,
	cin => \inst|alu1|reloj|Add0~47\,
	combout => \inst|alu1|reloj|Add0~48_combout\,
	cout => \inst|alu1|reloj|Add0~49\);

-- Location: FF_X25_Y9_N23
\inst|alu1|reloj|cuenta[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|alu1|reloj|Add0~48_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|reloj|cuenta\(24));

-- Location: LCCOMB_X25_Y9_N24
\inst|alu1|reloj|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|reloj|Add0~50_combout\ = \inst|alu1|reloj|Add0~49\ $ (\inst|alu1|reloj|cuenta\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|alu1|reloj|cuenta\(25),
	cin => \inst|alu1|reloj|Add0~49\,
	combout => \inst|alu1|reloj|Add0~50_combout\);

-- Location: FF_X25_Y9_N25
\inst|alu1|reloj|cuenta[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|alu1|reloj|Add0~50_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|reloj|cuenta\(25));

-- Location: LCCOMB_X26_Y9_N0
\inst|alu1|reloj|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|reloj|Equal0~0_combout\ = (!\inst|alu1|reloj|cuenta\(22) & (!\inst|alu1|reloj|cuenta\(24) & (!\inst|alu1|reloj|cuenta\(25) & !\inst|alu1|reloj|cuenta\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|reloj|cuenta\(22),
	datab => \inst|alu1|reloj|cuenta\(24),
	datac => \inst|alu1|reloj|cuenta\(25),
	datad => \inst|alu1|reloj|cuenta\(23),
	combout => \inst|alu1|reloj|Equal0~0_combout\);

-- Location: LCCOMB_X25_Y9_N28
\inst|alu1|reloj|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|reloj|Equal0~2_combout\ = (\inst|alu1|reloj|cuenta\(16) & (!\inst|alu1|reloj|cuenta\(15) & (!\inst|alu1|reloj|cuenta\(17) & !\inst|alu1|reloj|cuenta\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|reloj|cuenta\(16),
	datab => \inst|alu1|reloj|cuenta\(15),
	datac => \inst|alu1|reloj|cuenta\(17),
	datad => \inst|alu1|reloj|cuenta\(14),
	combout => \inst|alu1|reloj|Equal0~2_combout\);

-- Location: LCCOMB_X26_Y9_N18
\inst|alu1|reloj|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|reloj|Equal0~1_combout\ = (!\inst|alu1|reloj|cuenta\(20) & (!\inst|alu1|reloj|cuenta\(18) & (!\inst|alu1|reloj|cuenta\(21) & !\inst|alu1|reloj|cuenta\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|reloj|cuenta\(20),
	datab => \inst|alu1|reloj|cuenta\(18),
	datac => \inst|alu1|reloj|cuenta\(21),
	datad => \inst|alu1|reloj|cuenta\(19),
	combout => \inst|alu1|reloj|Equal0~1_combout\);

-- Location: LCCOMB_X26_Y10_N20
\inst|alu1|reloj|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|reloj|Equal0~4_combout\ = (\inst|alu1|reloj|Equal0~3_combout\ & (\inst|alu1|reloj|Equal0~0_combout\ & (\inst|alu1|reloj|Equal0~2_combout\ & \inst|alu1|reloj|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|reloj|Equal0~3_combout\,
	datab => \inst|alu1|reloj|Equal0~0_combout\,
	datac => \inst|alu1|reloj|Equal0~2_combout\,
	datad => \inst|alu1|reloj|Equal0~1_combout\,
	combout => \inst|alu1|reloj|Equal0~4_combout\);

-- Location: LCCOMB_X25_Y10_N0
\inst|alu1|reloj|cuenta~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|reloj|cuenta~5_combout\ = (\inst|alu1|reloj|Add0~0_combout\ & ((!\inst|alu1|reloj|Equal0~7_combout\) # (!\inst|alu1|reloj|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|reloj|Add0~0_combout\,
	datac => \inst|alu1|reloj|Equal0~4_combout\,
	datad => \inst|alu1|reloj|Equal0~7_combout\,
	combout => \inst|alu1|reloj|cuenta~5_combout\);

-- Location: FF_X25_Y10_N1
\inst|alu1|reloj|cuenta[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|alu1|reloj|cuenta~5_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|reloj|cuenta\(0));

-- Location: FF_X25_Y10_N9
\inst|alu1|reloj|cuenta[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|alu1|reloj|Add0~2_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|reloj|cuenta\(1));

-- Location: LCCOMB_X26_Y10_N22
\inst|alu1|reloj|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|reloj|Equal0~6_combout\ = (!\inst|alu1|reloj|cuenta\(4) & (!\inst|alu1|reloj|cuenta\(3) & (!\inst|alu1|reloj|cuenta\(5) & !\inst|alu1|reloj|cuenta\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|reloj|cuenta\(4),
	datab => \inst|alu1|reloj|cuenta\(3),
	datac => \inst|alu1|reloj|cuenta\(5),
	datad => \inst|alu1|reloj|cuenta\(2),
	combout => \inst|alu1|reloj|Equal0~6_combout\);

-- Location: LCCOMB_X26_Y10_N16
\inst|alu1|reloj|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|reloj|Equal0~5_combout\ = (\inst|alu1|reloj|cuenta\(7) & (!\inst|alu1|reloj|cuenta\(8) & (!\inst|alu1|reloj|cuenta\(6) & !\inst|alu1|reloj|cuenta\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|reloj|cuenta\(7),
	datab => \inst|alu1|reloj|cuenta\(8),
	datac => \inst|alu1|reloj|cuenta\(6),
	datad => \inst|alu1|reloj|cuenta\(9),
	combout => \inst|alu1|reloj|Equal0~5_combout\);

-- Location: LCCOMB_X26_Y10_N28
\inst|alu1|reloj|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|reloj|Equal0~7_combout\ = (!\inst|alu1|reloj|cuenta\(1) & (!\inst|alu1|reloj|cuenta\(0) & (\inst|alu1|reloj|Equal0~6_combout\ & \inst|alu1|reloj|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|reloj|cuenta\(1),
	datab => \inst|alu1|reloj|cuenta\(0),
	datac => \inst|alu1|reloj|Equal0~6_combout\,
	datad => \inst|alu1|reloj|Equal0~5_combout\,
	combout => \inst|alu1|reloj|Equal0~7_combout\);

-- Location: LCCOMB_X26_Y10_N30
\inst|alu1|reloj|salida~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|reloj|salida~0_combout\ = \inst|alu1|reloj|salida~q\ $ (((\inst|alu1|reloj|Equal0~7_combout\ & \inst|alu1|reloj|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|reloj|Equal0~7_combout\,
	datac => \inst|alu1|reloj|salida~q\,
	datad => \inst|alu1|reloj|Equal0~4_combout\,
	combout => \inst|alu1|reloj|salida~0_combout\);

-- Location: LCCOMB_X26_Y10_N24
\inst|alu1|reloj|salida~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|reloj|salida~feeder_combout\ = \inst|alu1|reloj|salida~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|alu1|reloj|salida~0_combout\,
	combout => \inst|alu1|reloj|salida~feeder_combout\);

-- Location: FF_X26_Y10_N25
\inst|alu1|reloj|salida\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|alu1|reloj|salida~feeder_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|reloj|salida~q\);

-- Location: CLKCTRL_G6
\inst|alu1|reloj|salida~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst|alu1|reloj|salida~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst|alu1|reloj|salida~clkctrl_outclk\);

-- Location: FF_X32_Y16_N15
\inst|addr1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|MREG[21]~0_combout\,
	ena => \inst|ALT_INV_Mux28~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|addr1\(2));

-- Location: LCCOMB_X32_Y16_N18
\inst|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux2~0_combout\ = (\addr[3]~input_o\) # ((\addr[2]~input_o\) # (\addr[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \addr[3]~input_o\,
	datac => \addr[2]~input_o\,
	datad => \addr[0]~input_o\,
	combout => \inst|Mux2~0_combout\);

-- Location: FF_X32_Y16_N19
\inst|addr1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Mux2~0_combout\,
	ena => \inst|ALT_INV_Mux28~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|addr1\(1));

-- Location: LCCOMB_X33_Y16_N30
\inst|val1|codigos~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|val1|codigos~15_combout\ = (!\inst|addr1\(2) & \inst|addr1\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|addr1\(2),
	datad => \inst|addr1\(1),
	combout => \inst|val1|codigos~15_combout\);

-- Location: FF_X33_Y16_N31
\inst|MREG[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|val1|codigos~15_combout\,
	ena => \inst|MREG[21]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MREG\(17));

-- Location: LCCOMB_X32_Y16_N22
\inst|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux3~1_combout\ = (\addr[1]~input_o\) # ((\addr[3]~input_o\) # ((\addr[2]~input_o\) # (\addr[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[1]~input_o\,
	datab => \addr[3]~input_o\,
	datac => \addr[2]~input_o\,
	datad => \addr[0]~input_o\,
	combout => \inst|Mux3~1_combout\);

-- Location: FF_X32_Y16_N23
\inst|addr1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Mux3~1_combout\,
	ena => \inst|ALT_INV_Mux28~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|addr1\(0));

-- Location: LCCOMB_X33_Y16_N28
\inst|val1|codigos~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|val1|codigos~16_combout\ = (\inst|addr1\(2) & (!\inst|addr1\(1) & !\inst|addr1\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|addr1\(2),
	datac => \inst|addr1\(1),
	datad => \inst|addr1\(0),
	combout => \inst|val1|codigos~16_combout\);

-- Location: FF_X33_Y16_N29
\inst|MREG[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|val1|codigos~16_combout\,
	ena => \inst|MREG[21]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MREG\(16));

-- Location: LCCOMB_X32_Y16_N2
\inst|Mux17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux17~0_combout\ = (\addr[3]~input_o\) # ((\addr[0]~input_o\) # ((\addr[1]~input_o\ & \addr[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[1]~input_o\,
	datab => \addr[3]~input_o\,
	datac => \addr[2]~input_o\,
	datad => \addr[0]~input_o\,
	combout => \inst|Mux17~0_combout\);

-- Location: LCCOMB_X32_Y16_N12
\inst|MREG[14]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|MREG[14]~1_combout\ = (!\inst|addr1\(2)) # (!\inst|addr1\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|addr1\(0),
	datac => \inst|addr1\(2),
	combout => \inst|MREG[14]~1_combout\);

-- Location: LCCOMB_X32_Y16_N0
\inst|MREG[14]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|MREG[14]~2_combout\ = (\inst|Mux17~0_combout\ & (((!\inst|addr1\(1) & \inst|MREG[14]~1_combout\)))) # (!\inst|Mux17~0_combout\ & (\inst|MREG\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux17~0_combout\,
	datab => \inst|MREG\(14),
	datac => \inst|addr1\(1),
	datad => \inst|MREG[14]~1_combout\,
	combout => \inst|MREG[14]~2_combout\);

-- Location: FF_X32_Y16_N25
\inst|MREG[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|MREG[14]~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MREG\(14));

-- Location: LCCOMB_X31_Y16_N4
\inst|alu1|unidad_logica|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|Add0~0_combout\ = (\inst|MREG\(17)) # ((\inst|MREG\(16)) # (\inst|MREG\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MREG\(17),
	datac => \inst|MREG\(16),
	datad => \inst|MREG\(14),
	combout => \inst|alu1|unidad_logica|Add0~0_combout\);

-- Location: LCCOMB_X31_Y16_N14
\inst|alu1|Mux2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux2~8_combout\ = (!\inst|MREG\(0) & \inst|MREG\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|MREG\(0),
	datad => \inst|MREG\(1),
	combout => \inst|alu1|Mux2~8_combout\);

-- Location: FF_X31_Y16_N27
\inst|alu1|unidad_logica|aux[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|alu1|reloj|salida~clkctrl_outclk\,
	asdata => \inst|alu1|unidad_logica|Add0~0_combout\,
	sload => VCC,
	ena => \inst|alu1|Mux2~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|unidad_logica|aux\(5));

-- Location: LCCOMB_X31_Y16_N28
\inst|alu1|unidad_logica|salida~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|salida~1_combout\ = (\inst|MREG\(0) & ((!\inst|MREG\(1)))) # (!\inst|MREG\(0) & (\inst|alu1|unidad_logica|aux\(5) & \inst|MREG\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|MREG\(0),
	datac => \inst|alu1|unidad_logica|aux\(5),
	datad => \inst|MREG\(1),
	combout => \inst|alu1|unidad_logica|salida~1_combout\);

-- Location: FF_X31_Y16_N29
\inst|alu1|unidad_logica|salida[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|alu1|reloj|salida~clkctrl_outclk\,
	d => \inst|alu1|unidad_logica|salida~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|unidad_logica|salida\(5));

-- Location: LCCOMB_X30_Y20_N12
\inst|alu1|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux0~0_combout\ = (\inst|MREG\(3) & (\inst|MREG\(0) & (\inst|MREG\(1)))) # (!\inst|MREG\(3) & (\inst|alu1|unidad_logica|salida\(5) & ((\inst|MREG\(0)) # (\inst|MREG\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MREG\(0),
	datab => \inst|MREG\(1),
	datac => \inst|MREG\(3),
	datad => \inst|alu1|unidad_logica|salida\(5),
	combout => \inst|alu1|Mux0~0_combout\);

-- Location: LCCOMB_X32_Y16_N16
\inst|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux3~0_combout\ = (\addr[1]~input_o\) # ((\addr[3]~input_o\) # (\addr[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[1]~input_o\,
	datac => \addr[3]~input_o\,
	datad => \addr[0]~input_o\,
	combout => \inst|Mux3~0_combout\);

-- Location: FF_X32_Y16_N17
\inst|addr2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Mux3~0_combout\,
	ena => \inst|ALT_INV_Mux28~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|addr2\(0));

-- Location: LCCOMB_X32_Y16_N24
\inst|val2|codigos~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|val2|codigos~15_combout\ = (\inst|addr2\(0) & (!\inst|addr1\(2) & !\inst|addr1\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|addr2\(0),
	datab => \inst|addr1\(2),
	datad => \inst|addr1\(1),
	combout => \inst|val2|codigos~15_combout\);

-- Location: LCCOMB_X33_Y16_N14
\inst|MREG[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|MREG[5]~feeder_combout\ = \inst|val2|codigos~15_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|val2|codigos~15_combout\,
	combout => \inst|MREG[5]~feeder_combout\);

-- Location: FF_X33_Y16_N15
\inst|MREG[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|MREG[5]~feeder_combout\,
	ena => \inst|MREG[21]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MREG\(5));

-- Location: LCCOMB_X32_Y16_N28
\inst|val2|codigos~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|val2|codigos~16_combout\ = (!\inst|addr2\(0) & (!\inst|addr1\(2) & !\inst|addr1\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|addr2\(0),
	datac => \inst|addr1\(2),
	datad => \inst|addr1\(1),
	combout => \inst|val2|codigos~16_combout\);

-- Location: LCCOMB_X33_Y16_N20
\inst|MREG[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|MREG[7]~feeder_combout\ = \inst|val2|codigos~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|val2|codigos~16_combout\,
	combout => \inst|MREG[7]~feeder_combout\);

-- Location: FF_X33_Y16_N21
\inst|MREG[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|MREG[7]~feeder_combout\,
	ena => \inst|MREG[21]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MREG\(7));

-- Location: LCCOMB_X30_Y17_N10
\inst|alu1|unidad_aritmetica|mult|inter[17]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|inter\(17) = (\inst|MREG\(16) & \inst|MREG\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|MREG\(16),
	datad => \inst|MREG\(7),
	combout => \inst|alu1|unidad_aritmetica|mult|inter\(17));

-- Location: LCCOMB_X33_Y16_N22
\inst|val2|codigos~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|val2|codigos~17_combout\ = (\inst|addr2\(0) & (!\inst|addr1\(2))) # (!\inst|addr2\(0) & ((!\inst|addr1\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|addr1\(2),
	datac => \inst|addr2\(0),
	datad => \inst|addr1\(1),
	combout => \inst|val2|codigos~17_combout\);

-- Location: FF_X33_Y16_N23
\inst|MREG[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|val2|codigos~17_combout\,
	ena => \inst|MREG[21]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MREG\(4));

-- Location: LCCOMB_X30_Y17_N12
\inst|alu1|unidad_aritmetica|mult|multi1|s4|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi1|s4|Cout~0_combout\ = (\inst|MREG\(4) & (\inst|MREG\(17) & (\inst|MREG\(16) & \inst|MREG\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MREG\(4),
	datab => \inst|MREG\(17),
	datac => \inst|MREG\(16),
	datad => \inst|MREG\(5),
	combout => \inst|alu1|unidad_aritmetica|mult|multi1|s4|Cout~0_combout\);

-- Location: LCCOMB_X33_Y16_N12
\inst|val2|codigos~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|val2|codigos~18_combout\ = ((!\inst|addr2\(0) & !\inst|addr1\(1))) # (!\inst|addr1\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|addr1\(2),
	datac => \inst|addr2\(0),
	datad => \inst|addr1\(1),
	combout => \inst|val2|codigos~18_combout\);

-- Location: FF_X33_Y16_N13
\inst|MREG[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|val2|codigos~18_combout\,
	ena => \inst|MREG[21]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MREG\(6));

-- Location: LCCOMB_X30_Y17_N26
\inst|alu1|unidad_aritmetica|mult|multi1|s4|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi1|s4|Suma~0_combout\ = (\inst|MREG\(17) & (\inst|MREG\(5) & ((!\inst|MREG\(16)) # (!\inst|MREG\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MREG\(4),
	datab => \inst|MREG\(17),
	datac => \inst|MREG\(16),
	datad => \inst|MREG\(5),
	combout => \inst|alu1|unidad_aritmetica|mult|multi1|s4|Suma~0_combout\);

-- Location: LCCOMB_X29_Y17_N16
\inst|alu1|unidad_aritmetica|mult|inter[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|inter\(3) = (\inst|MREG\(4) & \inst|MREG\(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|MREG\(4),
	datac => \inst|MREG\(17),
	combout => \inst|alu1|unidad_aritmetica|mult|inter\(3));

-- Location: LCCOMB_X29_Y17_N6
\inst|alu1|unidad_aritmetica|mult|inter[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|inter\(7) = (\inst|MREG\(16) & \inst|MREG\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|MREG\(16),
	datac => \inst|MREG\(5),
	combout => \inst|alu1|unidad_aritmetica|mult|inter\(7));

-- Location: LCCOMB_X30_Y18_N16
\inst|alu1|unidad_aritmetica|mult|inter[10]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|inter\(10) = (\inst|MREG\(14) & \inst|MREG\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MREG\(14),
	datad => \inst|MREG\(6),
	combout => \inst|alu1|unidad_aritmetica|mult|inter\(10));

-- Location: LCCOMB_X29_Y17_N28
\inst|alu1|unidad_aritmetica|mult|inter[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|inter\(2) = (\inst|MREG\(16) & \inst|MREG\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|MREG\(16),
	datac => \inst|MREG\(4),
	combout => \inst|alu1|unidad_aritmetica|mult|inter\(2));

-- Location: LCCOMB_X30_Y17_N0
\inst|alu1|unidad_aritmetica|mult|multi2|s3|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi2|s3|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|mult|inter\(10) & (\inst|alu1|unidad_aritmetica|mult|inter\(2) & (\inst|alu1|unidad_aritmetica|mult|inter\(3) $ (\inst|alu1|unidad_aritmetica|mult|inter\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|inter\(3),
	datab => \inst|alu1|unidad_aritmetica|mult|inter\(7),
	datac => \inst|alu1|unidad_aritmetica|mult|inter\(10),
	datad => \inst|alu1|unidad_aritmetica|mult|inter\(2),
	combout => \inst|alu1|unidad_aritmetica|mult|multi2|s3|Cout~0_combout\);

-- Location: LCCOMB_X30_Y17_N18
\inst|alu1|unidad_aritmetica|mult|multi2|s4|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi2|s4|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi1|s4|Suma~0_combout\ & ((\inst|alu1|unidad_aritmetica|mult|multi2|s3|Cout~0_combout\) # ((\inst|MREG\(16) & \inst|MREG\(6))))) # 
-- (!\inst|alu1|unidad_aritmetica|mult|multi1|s4|Suma~0_combout\ & (\inst|MREG\(16) & (\inst|MREG\(6) & \inst|alu1|unidad_aritmetica|mult|multi2|s3|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|multi1|s4|Suma~0_combout\,
	datab => \inst|MREG\(16),
	datac => \inst|MREG\(6),
	datad => \inst|alu1|unidad_aritmetica|mult|multi2|s3|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi2|s4|Cout~0_combout\);

-- Location: LCCOMB_X30_Y17_N14
\inst|alu1|unidad_aritmetica|mult|multi2|s5|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi2|s5|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|mult|multi1|s4|Cout~0_combout\ $ (\inst|alu1|unidad_aritmetica|mult|multi2|s4|Cout~0_combout\ $ (((\inst|MREG\(17) & \inst|MREG\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|multi1|s4|Cout~0_combout\,
	datab => \inst|MREG\(17),
	datac => \inst|MREG\(6),
	datad => \inst|alu1|unidad_aritmetica|mult|multi2|s4|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi2|s5|Suma~0_combout\);

-- Location: LCCOMB_X31_Y16_N26
\inst|alu1|unidad_logica|salida~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|salida~0_combout\ = (\inst|MREG\(16) & \inst|MREG\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MREG\(16),
	datab => \inst|MREG\(6),
	combout => \inst|alu1|unidad_logica|salida~0_combout\);

-- Location: LCCOMB_X29_Y17_N10
\inst|alu1|unidad_aritmetica|mult|multi2|s3|Suma\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi2|s3|Suma~combout\ = \inst|alu1|unidad_aritmetica|mult|inter\(7) $ (\inst|alu1|unidad_aritmetica|mult|inter\(3) $ (((\inst|alu1|unidad_aritmetica|mult|inter\(2) & \inst|alu1|unidad_aritmetica|mult|inter\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|inter\(7),
	datab => \inst|alu1|unidad_aritmetica|mult|inter\(2),
	datac => \inst|alu1|unidad_aritmetica|mult|inter\(10),
	datad => \inst|alu1|unidad_aritmetica|mult|inter\(3),
	combout => \inst|alu1|unidad_aritmetica|mult|multi2|s3|Suma~combout\);

-- Location: LCCOMB_X30_Y17_N24
\inst|alu1|unidad_aritmetica|mult|multi3|s3|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi3|s3|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi2|s3|Suma~combout\ & (\inst|MREG\(14) & \inst|MREG\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|multi2|s3|Suma~combout\,
	datab => \inst|MREG\(14),
	datad => \inst|MREG\(7),
	combout => \inst|alu1|unidad_aritmetica|mult|multi3|s3|Cout~0_combout\);

-- Location: LCCOMB_X30_Y17_N28
\inst|alu1|unidad_aritmetica|mult|multi3|s4|Suma\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi3|s4|Suma~combout\ = \inst|alu1|unidad_aritmetica|mult|multi1|s4|Suma~0_combout\ $ (\inst|alu1|unidad_aritmetica|mult|multi2|s3|Cout~0_combout\ $ (\inst|alu1|unidad_logica|salida~0_combout\ $ 
-- (\inst|alu1|unidad_aritmetica|mult|multi3|s3|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|multi1|s4|Suma~0_combout\,
	datab => \inst|alu1|unidad_aritmetica|mult|multi2|s3|Cout~0_combout\,
	datac => \inst|alu1|unidad_logica|salida~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|mult|multi3|s3|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi3|s4|Suma~combout\);

-- Location: LCCOMB_X30_Y17_N22
\inst|alu1|unidad_aritmetica|mult|multi4|s4|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi4|s4|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi3|s4|Suma~combout\ & (\inst|MREG\(14) & \inst|MREG\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|unidad_aritmetica|mult|multi3|s4|Suma~combout\,
	datac => \inst|MREG\(14),
	datad => \inst|MREG\(5),
	combout => \inst|alu1|unidad_aritmetica|mult|multi4|s4|Cout~0_combout\);

-- Location: LCCOMB_X30_Y17_N6
\inst|alu1|unidad_aritmetica|mult|multi3|s4|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi3|s4|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi3|s3|Cout~0_combout\ & (\inst|alu1|unidad_aritmetica|mult|multi1|s4|Suma~0_combout\ $ (\inst|alu1|unidad_aritmetica|mult|multi2|s3|Cout~0_combout\ $ 
-- (\inst|alu1|unidad_logica|salida~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|multi1|s4|Suma~0_combout\,
	datab => \inst|alu1|unidad_aritmetica|mult|multi2|s3|Cout~0_combout\,
	datac => \inst|alu1|unidad_logica|salida~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|mult|multi3|s3|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi3|s4|Cout~0_combout\);

-- Location: LCCOMB_X30_Y17_N8
\inst|alu1|unidad_aritmetica|mult|multi4|s5|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi4|s5|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi4|s4|Cout~0_combout\ & (\inst|alu1|unidad_aritmetica|mult|inter\(17) $ (\inst|alu1|unidad_aritmetica|mult|multi2|s5|Suma~0_combout\ $ 
-- (\inst|alu1|unidad_aritmetica|mult|multi3|s4|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|inter\(17),
	datab => \inst|alu1|unidad_aritmetica|mult|multi2|s5|Suma~0_combout\,
	datac => \inst|alu1|unidad_aritmetica|mult|multi4|s4|Cout~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|mult|multi3|s4|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi4|s5|Cout~0_combout\);

-- Location: LCCOMB_X30_Y17_N20
\inst|alu1|unidad_aritmetica|mult|multi2|s5|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi2|s5|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi1|s4|Cout~0_combout\ & ((\inst|alu1|unidad_aritmetica|mult|multi2|s4|Cout~0_combout\) # ((\inst|MREG\(17) & \inst|MREG\(6))))) # 
-- (!\inst|alu1|unidad_aritmetica|mult|multi1|s4|Cout~0_combout\ & (\inst|MREG\(17) & (\inst|MREG\(6) & \inst|alu1|unidad_aritmetica|mult|multi2|s4|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|multi1|s4|Cout~0_combout\,
	datab => \inst|MREG\(17),
	datac => \inst|MREG\(6),
	datad => \inst|alu1|unidad_aritmetica|mult|multi2|s4|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi2|s5|Cout~0_combout\);

-- Location: LCCOMB_X30_Y17_N4
\inst|alu1|unidad_aritmetica|mult|multi3|s5|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi3|s5|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi3|s4|Cout~0_combout\ & ((\inst|alu1|unidad_aritmetica|mult|multi2|s5|Suma~0_combout\) # ((\inst|MREG\(16) & \inst|MREG\(7))))) # 
-- (!\inst|alu1|unidad_aritmetica|mult|multi3|s4|Cout~0_combout\ & (\inst|alu1|unidad_aritmetica|mult|multi2|s5|Suma~0_combout\ & (\inst|MREG\(16) & \inst|MREG\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|multi3|s4|Cout~0_combout\,
	datab => \inst|alu1|unidad_aritmetica|mult|multi2|s5|Suma~0_combout\,
	datac => \inst|MREG\(16),
	datad => \inst|MREG\(7),
	combout => \inst|alu1|unidad_aritmetica|mult|multi3|s5|Cout~0_combout\);

-- Location: LCCOMB_X29_Y17_N18
\inst|alu1|unidad_aritmetica|mult|multi3|s6|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi3|s6|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|mult|multi2|s5|Cout~0_combout\ $ (\inst|alu1|unidad_aritmetica|mult|multi3|s5|Cout~0_combout\ $ (((\inst|MREG\(7) & \inst|MREG\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|multi2|s5|Cout~0_combout\,
	datab => \inst|MREG\(7),
	datac => \inst|MREG\(17),
	datad => \inst|alu1|unidad_aritmetica|mult|multi3|s5|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi3|s6|Suma~0_combout\);

-- Location: LCCOMB_X29_Y17_N20
\inst|alu1|unidad_aritmetica|mult|multi4|s6|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi4|s6|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi4|s5|Cout~0_combout\ & ((\inst|alu1|unidad_aritmetica|mult|multi3|s6|Suma~0_combout\) # ((\inst|MREG\(5) & \inst|MREG\(16))))) # 
-- (!\inst|alu1|unidad_aritmetica|mult|multi4|s5|Cout~0_combout\ & (\inst|MREG\(5) & (\inst|MREG\(16) & \inst|alu1|unidad_aritmetica|mult|multi3|s6|Suma~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MREG\(5),
	datab => \inst|alu1|unidad_aritmetica|mult|multi4|s5|Cout~0_combout\,
	datac => \inst|MREG\(16),
	datad => \inst|alu1|unidad_aritmetica|mult|multi3|s6|Suma~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi4|s6|Cout~0_combout\);

-- Location: LCCOMB_X29_Y17_N12
\inst|alu1|unidad_aritmetica|mult|multi3|s6|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi3|s6|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi2|s5|Cout~0_combout\ & ((\inst|alu1|unidad_aritmetica|mult|multi3|s5|Cout~0_combout\) # ((\inst|MREG\(7) & \inst|MREG\(17))))) # 
-- (!\inst|alu1|unidad_aritmetica|mult|multi2|s5|Cout~0_combout\ & (\inst|MREG\(7) & (\inst|MREG\(17) & \inst|alu1|unidad_aritmetica|mult|multi3|s5|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|multi2|s5|Cout~0_combout\,
	datab => \inst|MREG\(7),
	datac => \inst|MREG\(17),
	datad => \inst|alu1|unidad_aritmetica|mult|multi3|s5|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi3|s6|Cout~0_combout\);

-- Location: LCCOMB_X29_Y17_N14
\inst|alu1|unidad_aritmetica|mult|multi4|s7|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi4|s7|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi4|s6|Cout~0_combout\ & ((\inst|alu1|unidad_aritmetica|mult|multi3|s6|Cout~0_combout\) # ((\inst|MREG\(5) & \inst|MREG\(17))))) # 
-- (!\inst|alu1|unidad_aritmetica|mult|multi4|s6|Cout~0_combout\ & (\inst|MREG\(5) & (\inst|MREG\(17) & \inst|alu1|unidad_aritmetica|mult|multi3|s6|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MREG\(5),
	datab => \inst|alu1|unidad_aritmetica|mult|multi4|s6|Cout~0_combout\,
	datac => \inst|MREG\(17),
	datad => \inst|alu1|unidad_aritmetica|mult|multi3|s6|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi4|s7|Cout~0_combout\);

-- Location: LCCOMB_X30_Y20_N26
\inst|alu1|Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux1~3_combout\ = (\inst|MREG\(0) & ((\inst|MREG\(1)) # ((\inst|alu1|unidad_aritmetica|mult|multi4|s7|Cout~0_combout\) # (!\inst|MREG\(3))))) # (!\inst|MREG\(0) & (\inst|MREG\(1) & (!\inst|MREG\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MREG\(0),
	datab => \inst|MREG\(1),
	datac => \inst|MREG\(3),
	datad => \inst|alu1|unidad_aritmetica|mult|multi4|s7|Cout~0_combout\,
	combout => \inst|alu1|Mux1~3_combout\);

-- Location: LCCOMB_X32_Y16_N4
\inst|alu1|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux11~0_combout\ = (\inst|MREG\(0)) # ((!\inst|MREG\(3) & !\inst|MREG\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|MREG\(3),
	datac => \inst|MREG\(0),
	datad => \inst|MREG\(1),
	combout => \inst|alu1|Mux11~0_combout\);

-- Location: LCCOMB_X29_Y16_N28
\inst|alu1|unidad_aritmetica|resta|s0|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|resta|s0|Cout~0_combout\ = (!\inst|MREG\(14) & \inst|MREG\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|MREG\(14),
	datad => \inst|MREG\(4),
	combout => \inst|alu1|unidad_aritmetica|resta|s0|Cout~0_combout\);

-- Location: LCCOMB_X29_Y16_N14
\inst|alu1|unidad_aritmetica|resta|s2|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|resta|s2|Cout~0_combout\ = (\inst|MREG\(16) & (((!\inst|MREG\(5) & !\inst|alu1|unidad_aritmetica|resta|s0|Cout~0_combout\)) # (!\inst|MREG\(6)))) # (!\inst|MREG\(16) & (!\inst|MREG\(5) & (!\inst|MREG\(6) & 
-- !\inst|alu1|unidad_aritmetica|resta|s0|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MREG\(16),
	datab => \inst|MREG\(5),
	datac => \inst|MREG\(6),
	datad => \inst|alu1|unidad_aritmetica|resta|s0|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|resta|s2|Cout~0_combout\);

-- Location: LCCOMB_X29_Y16_N20
\inst|alu1|unidad_aritmetica|resta|s4|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|resta|s4|Cout~0_combout\ = (\inst|MREG\(5)) # ((\inst|alu1|unidad_aritmetica|resta|s2|Cout~0_combout\ & (!\inst|MREG\(17) & \inst|MREG\(7))) # (!\inst|alu1|unidad_aritmetica|resta|s2|Cout~0_combout\ & ((\inst|MREG\(7)) # 
-- (!\inst|MREG\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|resta|s2|Cout~0_combout\,
	datab => \inst|MREG\(17),
	datac => \inst|MREG\(5),
	datad => \inst|MREG\(7),
	combout => \inst|alu1|unidad_aritmetica|resta|s4|Cout~0_combout\);

-- Location: LCCOMB_X32_Y16_N6
\inst|alu1|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux10~0_combout\ = \inst|MREG\(0) $ (\inst|MREG\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|MREG\(0),
	datad => \inst|MREG\(1),
	combout => \inst|alu1|Mux10~0_combout\);

-- Location: LCCOMB_X29_Y19_N14
\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~33_combout\ = (\inst|MREG\(0) & ((\inst|MREG\(1) & ((\inst|alu1|unidad_aritmetica|resta|s4|Cout~0_combout\))) # (!\inst|MREG\(1) & (\inst|alu1|unidad_aritmetica|mult|multi4|s7|Cout~0_combout\)))) # 
-- (!\inst|MREG\(0) & ((\inst|MREG\(1) & (\inst|alu1|unidad_aritmetica|mult|multi4|s7|Cout~0_combout\)) # (!\inst|MREG\(1) & ((\inst|alu1|unidad_aritmetica|resta|s4|Cout~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MREG\(0),
	datab => \inst|MREG\(1),
	datac => \inst|alu1|unidad_aritmetica|mult|multi4|s7|Cout~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|resta|s4|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~33_combout\);

-- Location: LCCOMB_X29_Y17_N24
\inst|alu1|unidad_aritmetica|mult|multi4|s7|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi4|s7|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|mult|multi4|s6|Cout~0_combout\ $ (\inst|alu1|unidad_aritmetica|mult|multi3|s6|Cout~0_combout\ $ (((\inst|MREG\(5) & \inst|MREG\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MREG\(5),
	datab => \inst|alu1|unidad_aritmetica|mult|multi4|s6|Cout~0_combout\,
	datac => \inst|MREG\(17),
	datad => \inst|alu1|unidad_aritmetica|mult|multi3|s6|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi4|s7|Suma~0_combout\);

-- Location: LCCOMB_X29_Y19_N16
\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~34_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi4|s7|Suma~0_combout\ & ((\inst|alu1|unidad_aritmetica|resta|s4|Cout~0_combout\) # (\inst|MREG\(1) $ (\inst|MREG\(0))))) # 
-- (!\inst|alu1|unidad_aritmetica|mult|multi4|s7|Suma~0_combout\ & (\inst|alu1|unidad_aritmetica|resta|s4|Cout~0_combout\ & (\inst|MREG\(1) $ (!\inst|MREG\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|multi4|s7|Suma~0_combout\,
	datab => \inst|MREG\(1),
	datac => \inst|MREG\(0),
	datad => \inst|alu1|unidad_aritmetica|resta|s4|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~34_combout\);

-- Location: LCCOMB_X29_Y17_N8
\inst|alu1|unidad_aritmetica|mult|multi4|s6|Suma\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi4|s6|Suma~combout\ = \inst|alu1|unidad_aritmetica|mult|multi4|s5|Cout~0_combout\ $ (\inst|alu1|unidad_aritmetica|mult|multi3|s6|Suma~0_combout\ $ (((\inst|MREG\(5) & \inst|MREG\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MREG\(5),
	datab => \inst|alu1|unidad_aritmetica|mult|multi4|s5|Cout~0_combout\,
	datac => \inst|MREG\(16),
	datad => \inst|alu1|unidad_aritmetica|mult|multi3|s6|Suma~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi4|s6|Suma~combout\);

-- Location: LCCOMB_X29_Y19_N6
\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~35_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi4|s6|Suma~combout\ & ((\inst|alu1|unidad_aritmetica|resta|s4|Cout~0_combout\) # (\inst|MREG\(0) $ (\inst|MREG\(1))))) # 
-- (!\inst|alu1|unidad_aritmetica|mult|multi4|s6|Suma~combout\ & (\inst|alu1|unidad_aritmetica|resta|s4|Cout~0_combout\ & (\inst|MREG\(0) $ (!\inst|MREG\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|multi4|s6|Suma~combout\,
	datab => \inst|alu1|unidad_aritmetica|resta|s4|Cout~0_combout\,
	datac => \inst|MREG\(0),
	datad => \inst|MREG\(1),
	combout => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~35_combout\);

-- Location: LCCOMB_X30_Y17_N2
\inst|alu1|unidad_aritmetica|mult|multi4|s5|Suma\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi4|s5|Suma~combout\ = \inst|alu1|unidad_aritmetica|mult|inter\(17) $ (\inst|alu1|unidad_aritmetica|mult|multi2|s5|Suma~0_combout\ $ (\inst|alu1|unidad_aritmetica|mult|multi4|s4|Cout~0_combout\ $ 
-- (\inst|alu1|unidad_aritmetica|mult|multi3|s4|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|inter\(17),
	datab => \inst|alu1|unidad_aritmetica|mult|multi2|s5|Suma~0_combout\,
	datac => \inst|alu1|unidad_aritmetica|mult|multi4|s4|Cout~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|mult|multi3|s4|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi4|s5|Suma~combout\);

-- Location: LCCOMB_X29_Y19_N4
\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~36_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi4|s5|Suma~combout\ & ((\inst|alu1|unidad_aritmetica|resta|s4|Cout~0_combout\) # (\inst|MREG\(1) $ (\inst|MREG\(0))))) # 
-- (!\inst|alu1|unidad_aritmetica|mult|multi4|s5|Suma~combout\ & (\inst|alu1|unidad_aritmetica|resta|s4|Cout~0_combout\ & (\inst|MREG\(1) $ (!\inst|MREG\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|multi4|s5|Suma~combout\,
	datab => \inst|MREG\(1),
	datac => \inst|MREG\(0),
	datad => \inst|alu1|unidad_aritmetica|resta|s4|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~36_combout\);

-- Location: LCCOMB_X29_Y16_N18
\inst|alu1|unidad_aritmetica|resta|s4|Suma\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|resta|s4|Suma~combout\ = \inst|MREG\(5) $ (((\inst|alu1|unidad_aritmetica|resta|s2|Cout~0_combout\ & ((\inst|MREG\(17)) # (!\inst|MREG\(7)))) # (!\inst|alu1|unidad_aritmetica|resta|s2|Cout~0_combout\ & (\inst|MREG\(17) & 
-- !\inst|MREG\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100000011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|resta|s2|Cout~0_combout\,
	datab => \inst|MREG\(17),
	datac => \inst|MREG\(5),
	datad => \inst|MREG\(7),
	combout => \inst|alu1|unidad_aritmetica|resta|s4|Suma~combout\);

-- Location: LCCOMB_X30_Y17_N16
\inst|alu1|unidad_aritmetica|mult|inter[20]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|inter\(20) = (\inst|MREG\(5) & \inst|MREG\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|MREG\(5),
	datad => \inst|MREG\(14),
	combout => \inst|alu1|unidad_aritmetica|mult|inter\(20));

-- Location: LCCOMB_X29_Y17_N22
\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~12_combout\ = (\inst|alu1|Mux10~0_combout\ & ((\inst|alu1|unidad_aritmetica|mult|multi3|s4|Suma~combout\ $ (!\inst|alu1|unidad_aritmetica|mult|inter\(20))))) # (!\inst|alu1|Mux10~0_combout\ & 
-- (\inst|alu1|unidad_aritmetica|resta|s4|Suma~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux10~0_combout\,
	datab => \inst|alu1|unidad_aritmetica|resta|s4|Suma~combout\,
	datac => \inst|alu1|unidad_aritmetica|mult|multi3|s4|Suma~combout\,
	datad => \inst|alu1|unidad_aritmetica|mult|inter\(20),
	combout => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~12_combout\);

-- Location: LCCOMB_X30_Y16_N12
\inst|alu1|unidad_aritmetica|resta|s3|Suma\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|resta|s3|Suma~combout\ = \inst|alu1|unidad_aritmetica|resta|s2|Cout~0_combout\ $ (\inst|MREG\(7) $ (\inst|MREG\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|resta|s2|Cout~0_combout\,
	datab => \inst|MREG\(7),
	datad => \inst|MREG\(17),
	combout => \inst|alu1|unidad_aritmetica|resta|s3|Suma~combout\);

-- Location: LCCOMB_X30_Y17_N30
\inst|alu1|unidad_aritmetica|mult|multi3|s3|Suma\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi3|s3|Suma~combout\ = \inst|alu1|unidad_aritmetica|mult|multi2|s3|Suma~combout\ $ (((\inst|MREG\(14) & \inst|MREG\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|multi2|s3|Suma~combout\,
	datab => \inst|MREG\(14),
	datad => \inst|MREG\(7),
	combout => \inst|alu1|unidad_aritmetica|mult|multi3|s3|Suma~combout\);

-- Location: LCCOMB_X30_Y16_N0
\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~37_combout\ = (\inst|alu1|unidad_aritmetica|resta|s3|Suma~combout\ & ((\inst|MREG\(0) $ (!\inst|MREG\(1))) # (!\inst|alu1|unidad_aritmetica|mult|multi3|s3|Suma~combout\))) # 
-- (!\inst|alu1|unidad_aritmetica|resta|s3|Suma~combout\ & (!\inst|alu1|unidad_aritmetica|mult|multi3|s3|Suma~combout\ & (\inst|MREG\(0) $ (\inst|MREG\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101100101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|resta|s3|Suma~combout\,
	datab => \inst|MREG\(0),
	datac => \inst|alu1|unidad_aritmetica|mult|multi3|s3|Suma~combout\,
	datad => \inst|MREG\(1),
	combout => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~37_combout\);

-- Location: LCCOMB_X29_Y16_N12
\inst|alu1|unidad_aritmetica|resta|s2|Suma\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|resta|s2|Suma~combout\ = \inst|MREG\(16) $ (\inst|MREG\(6) $ (((!\inst|MREG\(5) & !\inst|alu1|unidad_aritmetica|resta|s0|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MREG\(16),
	datab => \inst|MREG\(5),
	datac => \inst|MREG\(6),
	datad => \inst|alu1|unidad_aritmetica|resta|s0|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|resta|s2|Suma~combout\);

-- Location: LCCOMB_X29_Y17_N0
\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~13_combout\ = (\inst|alu1|Mux10~0_combout\ & ((\inst|alu1|unidad_aritmetica|mult|inter\(10) $ (!\inst|alu1|unidad_aritmetica|mult|inter\(2))))) # (!\inst|alu1|Mux10~0_combout\ & 
-- (\inst|alu1|unidad_aritmetica|resta|s2|Suma~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|resta|s2|Suma~combout\,
	datab => \inst|alu1|unidad_aritmetica|mult|inter\(10),
	datac => \inst|alu1|Mux10~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|mult|inter\(2),
	combout => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~13_combout\);

-- Location: LCCOMB_X30_Y16_N2
\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~38_combout\ = (\inst|MREG\(14) & (((!\inst|MREG\(5))))) # (!\inst|MREG\(14) & ((\inst|alu1|Mux10~0_combout\) # (\inst|MREG\(4) $ (!\inst|MREG\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MREG\(4),
	datab => \inst|MREG\(5),
	datac => \inst|alu1|Mux10~0_combout\,
	datad => \inst|MREG\(14),
	combout => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~38_combout\);

-- Location: LCCOMB_X30_Y18_N14
\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~14_combout\ = (\inst|MREG\(14) & (\inst|MREG\(4) $ (\inst|MREG\(0) $ (\inst|MREG\(1))))) # (!\inst|MREG\(14) & ((\inst|MREG\(0) $ (\inst|MREG\(1))) # (!\inst|MREG\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011101111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MREG\(14),
	datab => \inst|MREG\(4),
	datac => \inst|MREG\(0),
	datad => \inst|MREG\(1),
	combout => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~14_combout\);

-- Location: LCCOMB_X30_Y19_N10
\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~15_combout\ = \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~14_combout\ $ (VCC)
-- \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~16\ = CARRY(\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~14_combout\,
	datad => VCC,
	combout => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~15_combout\,
	cout => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~16\);

-- Location: LCCOMB_X30_Y19_N12
\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~17_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~38_combout\ & (!\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~16\)) # 
-- (!\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~38_combout\ & ((\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~16\) # (GND)))
-- \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~18\ = CARRY((!\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~16\) # (!\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~38_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~16\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~17_combout\,
	cout => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~18\);

-- Location: LCCOMB_X30_Y19_N14
\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~19_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~13_combout\ & (\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~18\ $ (GND))) # 
-- (!\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~13_combout\ & (!\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~18\ & VCC))
-- \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~20\ = CARRY((\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~13_combout\ & !\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~13_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~18\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~19_combout\,
	cout => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~20\);

-- Location: LCCOMB_X30_Y19_N16
\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~21_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~37_combout\ & (!\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~20\)) # 
-- (!\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~37_combout\ & ((\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~20\) # (GND)))
-- \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~22\ = CARRY((!\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~20\) # (!\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~37_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~37_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~20\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~21_combout\,
	cout => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~22\);

-- Location: LCCOMB_X30_Y19_N18
\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~23_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~12_combout\ & (\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~22\ $ (GND))) # 
-- (!\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~12_combout\ & (!\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~22\ & VCC))
-- \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~24\ = CARRY((\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~12_combout\ & !\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~12_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~22\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~23_combout\,
	cout => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~24\);

-- Location: LCCOMB_X30_Y19_N20
\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~25_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~36_combout\ & ((\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~24\) # (GND))) # 
-- (!\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~36_combout\ & (!\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~24\))
-- \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~26\ = CARRY((\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~36_combout\) # (!\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~36_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~24\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~25_combout\,
	cout => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~26\);

-- Location: LCCOMB_X30_Y19_N22
\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~27_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~35_combout\ & (!\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~26\ & VCC)) # 
-- (!\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~35_combout\ & (\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~26\ $ (GND)))
-- \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~28\ = CARRY((!\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~35_combout\ & !\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~35_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~26\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~27_combout\,
	cout => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~28\);

-- Location: LCCOMB_X30_Y19_N24
\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~29_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~34_combout\ & ((\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~28\) # (GND))) # 
-- (!\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~34_combout\ & (!\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~28\))
-- \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~30\ = CARRY((\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~34_combout\) # (!\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~34_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~28\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~29_combout\,
	cout => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~30\);

-- Location: LCCOMB_X30_Y19_N26
\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~31_combout\ = \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~30\ $ (\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~33_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~33_combout\,
	cin => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~30\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~31_combout\);

-- Location: LCCOMB_X30_Y16_N10
\inst|alu1|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux1~2_combout\ = (!\inst|alu1|Mux11~0_combout\ & (\inst|alu1|unidad_aritmetica|resta|s4|Cout~0_combout\ & (!\inst|alu1|Mux10~0_combout\ & \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux11~0_combout\,
	datab => \inst|alu1|unidad_aritmetica|resta|s4|Cout~0_combout\,
	datac => \inst|alu1|Mux10~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~31_combout\,
	combout => \inst|alu1|Mux1~2_combout\);

-- Location: LCCOMB_X30_Y20_N0
\inst|alu1|Mux1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux1~4_combout\ = (\inst|alu1|Mux1~3_combout\ & (((\inst|MREG\(3)) # (\inst|alu1|unidad_logica|salida\(5))))) # (!\inst|alu1|Mux1~3_combout\ & (\inst|alu1|Mux1~2_combout\ & (\inst|MREG\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux1~3_combout\,
	datab => \inst|alu1|Mux1~2_combout\,
	datac => \inst|MREG\(3),
	datad => \inst|alu1|unidad_logica|salida\(5),
	combout => \inst|alu1|Mux1~4_combout\);

-- Location: LCCOMB_X30_Y20_N4
\inst|alu1|Mux2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux2~5_combout\ = (\inst|MREG\(3) & ((!\inst|MREG\(1)) # (!\inst|MREG\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MREG\(0),
	datac => \inst|MREG\(3),
	datad => \inst|MREG\(1),
	combout => \inst|alu1|Mux2~5_combout\);

-- Location: LCCOMB_X29_Y19_N12
\inst|alu1|Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux2~2_combout\ = (\inst|MREG\(1)) # ((\inst|MREG\(0)) # (!\inst|MREG\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|MREG\(1),
	datac => \inst|MREG\(0),
	datad => \inst|MREG\(3),
	combout => \inst|alu1|Mux2~2_combout\);

-- Location: LCCOMB_X30_Y20_N24
\inst|alu1|Mux2~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux2~9_combout\ = (!\inst|MREG\(1) & ((\inst|MREG\(0)) # ((\inst|MREG\(3) & \inst|alu1|unidad_aritmetica|resta|s4|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MREG\(0),
	datab => \inst|MREG\(1),
	datac => \inst|MREG\(3),
	datad => \inst|alu1|unidad_aritmetica|resta|s4|Cout~0_combout\,
	combout => \inst|alu1|Mux2~9_combout\);

-- Location: LCCOMB_X29_Y19_N10
\inst|alu1|Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux2~3_combout\ = (\inst|alu1|Mux2~2_combout\ & (\inst|alu1|Mux2~9_combout\ & (\inst|alu1|unidad_aritmetica|mult|multi4|s7|Suma~0_combout\))) # (!\inst|alu1|Mux2~2_combout\ & 
-- (((\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~29_combout\)) # (!\inst|alu1|Mux2~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux2~2_combout\,
	datab => \inst|alu1|Mux2~9_combout\,
	datac => \inst|alu1|unidad_aritmetica|mult|multi4|s7|Suma~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~29_combout\,
	combout => \inst|alu1|Mux2~3_combout\);

-- Location: LCCOMB_X30_Y20_N30
\inst|alu1|Mux2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux2~4_combout\ = (\inst|alu1|Mux2~3_combout\ & ((\inst|alu1|unidad_aritmetica|resta|s4|Cout~0_combout\) # (\inst|MREG\(0) $ (\inst|MREG\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux2~3_combout\,
	datab => \inst|alu1|unidad_aritmetica|resta|s4|Cout~0_combout\,
	datac => \inst|MREG\(0),
	datad => \inst|MREG\(1),
	combout => \inst|alu1|Mux2~4_combout\);

-- Location: LCCOMB_X30_Y20_N2
\inst|alu1|Mux2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux2~6_combout\ = (\inst|alu1|Mux0~0_combout\) # ((\inst|alu1|Mux2~5_combout\ & \inst|alu1|Mux2~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|Mux2~5_combout\,
	datac => \inst|alu1|Mux2~4_combout\,
	datad => \inst|alu1|Mux0~0_combout\,
	combout => \inst|alu1|Mux2~6_combout\);

-- Location: LCCOMB_X29_Y19_N0
\inst|alu1|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux3~0_combout\ = (\inst|alu1|Mux2~2_combout\ & (((\inst|alu1|Mux2~9_combout\ & \inst|alu1|unidad_aritmetica|mult|multi4|s6|Suma~combout\)))) # (!\inst|alu1|Mux2~2_combout\ & ((\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~27_combout\) 
-- # ((!\inst|alu1|Mux2~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux2~2_combout\,
	datab => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~27_combout\,
	datac => \inst|alu1|Mux2~9_combout\,
	datad => \inst|alu1|unidad_aritmetica|mult|multi4|s6|Suma~combout\,
	combout => \inst|alu1|Mux3~0_combout\);

-- Location: LCCOMB_X30_Y20_N20
\inst|alu1|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux3~1_combout\ = (\inst|alu1|Mux3~0_combout\ & ((\inst|alu1|unidad_aritmetica|resta|s4|Cout~0_combout\) # (\inst|MREG\(0) $ (\inst|MREG\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MREG\(0),
	datab => \inst|alu1|unidad_aritmetica|resta|s4|Cout~0_combout\,
	datac => \inst|alu1|Mux3~0_combout\,
	datad => \inst|MREG\(1),
	combout => \inst|alu1|Mux3~1_combout\);

-- Location: LCCOMB_X30_Y20_N14
\inst|alu1|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux3~2_combout\ = (\inst|alu1|Mux0~0_combout\) # ((\inst|alu1|Mux3~1_combout\ & \inst|alu1|Mux2~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|Mux3~1_combout\,
	datac => \inst|alu1|Mux2~5_combout\,
	datad => \inst|alu1|Mux0~0_combout\,
	combout => \inst|alu1|Mux3~2_combout\);

-- Location: LCCOMB_X29_Y16_N10
\inst|alu1|unidad_aritmetica|suma|s2|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|s2|Cout~0_combout\ = (\inst|MREG\(6) & ((\inst|MREG\(16)) # ((\inst|MREG\(4) & \inst|alu1|unidad_aritmetica|mult|inter\(20))))) # (!\inst|MREG\(6) & (\inst|MREG\(4) & (\inst|MREG\(16) & 
-- \inst|alu1|unidad_aritmetica|mult|inter\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MREG\(4),
	datab => \inst|MREG\(6),
	datac => \inst|MREG\(16),
	datad => \inst|alu1|unidad_aritmetica|mult|inter\(20),
	combout => \inst|alu1|unidad_aritmetica|suma|s2|Cout~0_combout\);

-- Location: LCCOMB_X29_Y16_N0
\inst|alu1|unidad_aritmetica|suma|s4|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|s4|Cout~0_combout\ = (\inst|MREG\(5) & ((\inst|alu1|unidad_aritmetica|suma|s2|Cout~0_combout\ & ((\inst|MREG\(17)) # (\inst|MREG\(7)))) # (!\inst|alu1|unidad_aritmetica|suma|s2|Cout~0_combout\ & (\inst|MREG\(17) & 
-- \inst|MREG\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|suma|s2|Cout~0_combout\,
	datab => \inst|MREG\(17),
	datac => \inst|MREG\(5),
	datad => \inst|MREG\(7),
	combout => \inst|alu1|unidad_aritmetica|suma|s4|Cout~0_combout\);

-- Location: LCCOMB_X29_Y19_N22
\inst|alu1|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux4~0_combout\ = (\inst|alu1|Mux2~2_combout\ & (\inst|alu1|Mux2~9_combout\ & ((\inst|alu1|unidad_aritmetica|mult|multi4|s5|Suma~combout\)))) # (!\inst|alu1|Mux2~2_combout\ & 
-- (((\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~25_combout\)) # (!\inst|alu1|Mux2~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux2~2_combout\,
	datab => \inst|alu1|Mux2~9_combout\,
	datac => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~25_combout\,
	datad => \inst|alu1|unidad_aritmetica|mult|multi4|s5|Suma~combout\,
	combout => \inst|alu1|Mux4~0_combout\);

-- Location: LCCOMB_X30_Y20_N16
\inst|alu1|Mux2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux2~7_combout\ = (\inst|MREG\(0) & (\inst|MREG\(1))) # (!\inst|MREG\(0) & (!\inst|MREG\(1) & ((!\inst|alu1|unidad_aritmetica|resta|s4|Cout~0_combout\) # (!\inst|MREG\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100110011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MREG\(0),
	datab => \inst|MREG\(1),
	datac => \inst|MREG\(3),
	datad => \inst|alu1|unidad_aritmetica|resta|s4|Cout~0_combout\,
	combout => \inst|alu1|Mux2~7_combout\);

-- Location: LCCOMB_X30_Y20_N22
\inst|alu1|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux4~1_combout\ = (\inst|alu1|Mux4~0_combout\ & (((\inst|alu1|unidad_aritmetica|resta|s4|Cout~0_combout\) # (!\inst|alu1|Mux2~7_combout\)))) # (!\inst|alu1|Mux4~0_combout\ & (\inst|alu1|unidad_aritmetica|suma|s4|Cout~0_combout\ & 
-- ((\inst|alu1|Mux2~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|suma|s4|Cout~0_combout\,
	datab => \inst|alu1|unidad_aritmetica|resta|s4|Cout~0_combout\,
	datac => \inst|alu1|Mux4~0_combout\,
	datad => \inst|alu1|Mux2~7_combout\,
	combout => \inst|alu1|Mux4~1_combout\);

-- Location: LCCOMB_X30_Y20_N8
\inst|alu1|Mux4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux4~2_combout\ = (\inst|alu1|Mux0~0_combout\) # ((\inst|alu1|Mux2~5_combout\ & \inst|alu1|Mux4~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|Mux2~5_combout\,
	datac => \inst|alu1|Mux4~1_combout\,
	datad => \inst|alu1|Mux0~0_combout\,
	combout => \inst|alu1|Mux4~2_combout\);

-- Location: FF_X31_Y16_N11
\inst|alu1|unidad_logica|aux[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|alu1|reloj|salida~clkctrl_outclk\,
	asdata => \inst|alu1|unidad_logica|Add0~0_combout\,
	sload => VCC,
	ena => \inst|alu1|Mux2~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|unidad_logica|aux\(4));

-- Location: LCCOMB_X31_Y16_N16
\inst|alu1|unidad_logica|salida~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|salida~2_combout\ = (\inst|alu1|Mux11~0_combout\ & (((\inst|alu1|Mux10~0_combout\)))) # (!\inst|alu1|Mux11~0_combout\ & ((\inst|alu1|Mux10~0_combout\ & ((\inst|alu1|unidad_logica|aux\(4)))) # (!\inst|alu1|Mux10~0_combout\ & 
-- (\inst|MREG\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MREG\(5),
	datab => \inst|alu1|Mux11~0_combout\,
	datac => \inst|alu1|Mux10~0_combout\,
	datad => \inst|alu1|unidad_logica|aux\(4),
	combout => \inst|alu1|unidad_logica|salida~2_combout\);

-- Location: FF_X31_Y16_N17
\inst|alu1|unidad_logica|salida[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|alu1|reloj|salida~clkctrl_outclk\,
	d => \inst|alu1|unidad_logica|salida~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|unidad_logica|salida\(4));

-- Location: LCCOMB_X30_Y20_N18
\inst|alu1|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux5~0_combout\ = (\inst|MREG\(3) & (\inst|MREG\(0) & (\inst|MREG\(1)))) # (!\inst|MREG\(3) & (\inst|alu1|unidad_logica|salida\(4) & ((\inst|MREG\(0)) # (\inst|MREG\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MREG\(0),
	datab => \inst|MREG\(1),
	datac => \inst|MREG\(3),
	datad => \inst|alu1|unidad_logica|salida\(4),
	combout => \inst|alu1|Mux5~0_combout\);

-- Location: LCCOMB_X29_Y16_N30
\inst|alu1|unidad_aritmetica|suma|s4|Suma\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|s4|Suma~combout\ = \inst|MREG\(5) $ (((\inst|alu1|unidad_aritmetica|suma|s2|Cout~0_combout\ & ((\inst|MREG\(17)) # (\inst|MREG\(7)))) # (!\inst|alu1|unidad_aritmetica|suma|s2|Cout~0_combout\ & (\inst|MREG\(17) & 
-- \inst|MREG\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|suma|s2|Cout~0_combout\,
	datab => \inst|MREG\(17),
	datac => \inst|MREG\(5),
	datad => \inst|MREG\(7),
	combout => \inst|alu1|unidad_aritmetica|suma|s4|Suma~combout\);

-- Location: LCCOMB_X29_Y17_N30
\inst|alu1|unidad_aritmetica|mult|multi4|s4|Suma\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi4|s4|Suma~combout\ = \inst|alu1|unidad_aritmetica|mult|multi3|s4|Suma~combout\ $ (((\inst|MREG\(5) & \inst|MREG\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MREG\(5),
	datac => \inst|alu1|unidad_aritmetica|mult|multi3|s4|Suma~combout\,
	datad => \inst|MREG\(14),
	combout => \inst|alu1|unidad_aritmetica|mult|multi4|s4|Suma~combout\);

-- Location: LCCOMB_X29_Y19_N28
\inst|alu1|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux5~1_combout\ = (\inst|alu1|Mux2~2_combout\ & (((\inst|alu1|Mux2~9_combout\ & \inst|alu1|unidad_aritmetica|mult|multi4|s4|Suma~combout\)))) # (!\inst|alu1|Mux2~2_combout\ & ((\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~23_combout\) 
-- # ((!\inst|alu1|Mux2~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux2~2_combout\,
	datab => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~23_combout\,
	datac => \inst|alu1|Mux2~9_combout\,
	datad => \inst|alu1|unidad_aritmetica|mult|multi4|s4|Suma~combout\,
	combout => \inst|alu1|Mux5~1_combout\);

-- Location: LCCOMB_X30_Y20_N28
\inst|alu1|Mux5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux5~2_combout\ = (\inst|alu1|Mux5~1_combout\ & (((!\inst|alu1|Mux2~7_combout\)) # (!\inst|alu1|unidad_aritmetica|resta|s4|Suma~combout\))) # (!\inst|alu1|Mux5~1_combout\ & (((\inst|alu1|unidad_aritmetica|suma|s4|Suma~combout\ & 
-- \inst|alu1|Mux2~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|resta|s4|Suma~combout\,
	datab => \inst|alu1|unidad_aritmetica|suma|s4|Suma~combout\,
	datac => \inst|alu1|Mux5~1_combout\,
	datad => \inst|alu1|Mux2~7_combout\,
	combout => \inst|alu1|Mux5~2_combout\);

-- Location: LCCOMB_X30_Y20_N10
\inst|alu1|Mux5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux5~3_combout\ = (\inst|alu1|Mux5~0_combout\) # ((\inst|alu1|Mux2~5_combout\ & \inst|alu1|Mux5~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|Mux5~0_combout\,
	datac => \inst|alu1|Mux2~5_combout\,
	datad => \inst|alu1|Mux5~2_combout\,
	combout => \inst|alu1|Mux5~3_combout\);

-- Location: LCCOMB_X29_Y16_N4
\inst|alu1|unidad_aritmetica|suma|s3|Suma\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|s3|Suma~combout\ = \inst|alu1|unidad_aritmetica|suma|s2|Cout~0_combout\ $ (\inst|MREG\(17) $ (\inst|MREG\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|suma|s2|Cout~0_combout\,
	datab => \inst|MREG\(17),
	datad => \inst|MREG\(7),
	combout => \inst|alu1|unidad_aritmetica|suma|s3|Suma~combout\);

-- Location: LCCOMB_X31_Y18_N4
\inst|alu1|unidad_aritmetica|divi|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan0~0_combout\ = (!\inst|MREG\(7) & (!\inst|MREG\(5) & !\inst|MREG\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|MREG\(7),
	datac => \inst|MREG\(5),
	datad => \inst|MREG\(6),
	combout => \inst|alu1|unidad_aritmetica|divi|LessThan0~0_combout\);

-- Location: LCCOMB_X31_Y18_N2
\inst|alu1|unidad_aritmetica|divi|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan0~1_combout\ = ((!\inst|MREG\(17) & \inst|MREG\(4))) # (!\inst|alu1|unidad_aritmetica|divi|LessThan0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|MREG\(17),
	datac => \inst|alu1|unidad_aritmetica|divi|LessThan0~0_combout\,
	datad => \inst|MREG\(4),
	combout => \inst|alu1|unidad_aritmetica|divi|LessThan0~1_combout\);

-- Location: LCCOMB_X30_Y16_N20
\inst|alu1|Mux6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux6~2_combout\ = (\inst|alu1|Mux11~0_combout\ & (((\inst|alu1|Mux10~0_combout\)))) # (!\inst|alu1|Mux11~0_combout\ & ((\inst|alu1|Mux10~0_combout\ & (!\inst|alu1|unidad_aritmetica|divi|LessThan0~1_combout\)) # (!\inst|alu1|Mux10~0_combout\ & 
-- ((!\inst|alu1|unidad_aritmetica|resta|s3|Suma~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux11~0_combout\,
	datab => \inst|alu1|unidad_aritmetica|divi|LessThan0~1_combout\,
	datac => \inst|alu1|Mux10~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|resta|s3|Suma~combout\,
	combout => \inst|alu1|Mux6~2_combout\);

-- Location: LCCOMB_X30_Y16_N6
\inst|alu1|Mux6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux6~3_combout\ = (\inst|alu1|Mux11~0_combout\ & ((\inst|alu1|Mux6~2_combout\ & ((\inst|alu1|unidad_aritmetica|mult|multi3|s3|Suma~combout\))) # (!\inst|alu1|Mux6~2_combout\ & (\inst|alu1|unidad_aritmetica|suma|s3|Suma~combout\)))) # 
-- (!\inst|alu1|Mux11~0_combout\ & (((\inst|alu1|Mux6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux11~0_combout\,
	datab => \inst|alu1|unidad_aritmetica|suma|s3|Suma~combout\,
	datac => \inst|alu1|unidad_aritmetica|mult|multi3|s3|Suma~combout\,
	datad => \inst|alu1|Mux6~2_combout\,
	combout => \inst|alu1|Mux6~3_combout\);

-- Location: LCCOMB_X31_Y16_N6
\inst|alu1|unidad_aritmetica|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|Mux1~0_combout\ = (\inst|MREG\(1)) # ((!\inst|MREG\(0) & !\inst|MREG\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MREG\(0),
	datab => \inst|MREG\(1),
	datac => \inst|MREG\(3),
	combout => \inst|alu1|unidad_aritmetica|Mux1~0_combout\);

-- Location: LCCOMB_X31_Y16_N24
\inst|alu1|unidad_logica|salida~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|salida~3_combout\ = (\inst|MREG\(7) & \inst|MREG\(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|MREG\(7),
	datad => \inst|MREG\(17),
	combout => \inst|alu1|unidad_logica|salida~3_combout\);

-- Location: LCCOMB_X32_Y16_N10
\inst|alu1|unidad_logica|salida~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|salida~4_combout\ = (\inst|MREG\(17) & (((!\inst|alu1|Mux11~0_combout\)))) # (!\inst|MREG\(17) & ((\inst|alu1|Mux10~0_combout\) # ((\inst|MREG\(7) & !\inst|alu1|Mux11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MREG\(17),
	datab => \inst|MREG\(7),
	datac => \inst|alu1|Mux11~0_combout\,
	datad => \inst|alu1|Mux10~0_combout\,
	combout => \inst|alu1|unidad_logica|salida~4_combout\);

-- Location: LCCOMB_X31_Y16_N12
\inst|alu1|unidad_logica|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|Add0~1_combout\ = \inst|MREG\(17) $ (((\inst|MREG\(16)) # (\inst|MREG\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011000110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MREG\(16),
	datab => \inst|MREG\(17),
	datac => \inst|MREG\(14),
	combout => \inst|alu1|unidad_logica|Add0~1_combout\);

-- Location: FF_X31_Y16_N13
\inst|alu1|unidad_logica|aux[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|alu1|reloj|salida~clkctrl_outclk\,
	d => \inst|alu1|unidad_logica|Add0~1_combout\,
	ena => \inst|alu1|Mux2~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|unidad_logica|aux\(3));

-- Location: LCCOMB_X31_Y16_N22
\inst|alu1|unidad_logica|salida~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|salida~5_combout\ = (\inst|alu1|unidad_aritmetica|Mux1~0_combout\ & ((\inst|alu1|unidad_logica|salida~4_combout\ & ((\inst|alu1|unidad_logica|aux\(3)))) # (!\inst|alu1|unidad_logica|salida~4_combout\ & 
-- (\inst|alu1|unidad_logica|salida~3_combout\)))) # (!\inst|alu1|unidad_aritmetica|Mux1~0_combout\ & (((\inst|alu1|unidad_logica|salida~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|Mux1~0_combout\,
	datab => \inst|alu1|unidad_logica|salida~3_combout\,
	datac => \inst|alu1|unidad_logica|salida~4_combout\,
	datad => \inst|alu1|unidad_logica|aux\(3),
	combout => \inst|alu1|unidad_logica|salida~5_combout\);

-- Location: FF_X31_Y16_N23
\inst|alu1|unidad_logica|salida[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|alu1|reloj|salida~clkctrl_outclk\,
	d => \inst|alu1|unidad_logica|salida~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|unidad_logica|salida\(3));

-- Location: LCCOMB_X30_Y16_N4
\inst|alu1|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux0~1_combout\ = (!\inst|MREG\(1) & !\inst|MREG\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|MREG\(1),
	datad => \inst|MREG\(0),
	combout => \inst|alu1|Mux0~1_combout\);

-- Location: LCCOMB_X30_Y18_N4
\inst|alu1|Mux6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux6~4_combout\ = (!\inst|MREG\(0) & (\inst|MREG\(3) & (\inst|alu1|unidad_aritmetica|resta|s4|Cout~0_combout\ & !\inst|MREG\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MREG\(0),
	datab => \inst|MREG\(3),
	datac => \inst|alu1|unidad_aritmetica|resta|s4|Cout~0_combout\,
	datad => \inst|MREG\(1),
	combout => \inst|alu1|Mux6~4_combout\);

-- Location: LCCOMB_X30_Y16_N26
\inst|alu1|Mux6~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux6~5_combout\ = (\inst|alu1|Mux2~5_combout\ & (((\inst|alu1|Mux6~4_combout\)))) # (!\inst|alu1|Mux2~5_combout\ & (\inst|alu1|unidad_logica|salida\(3) & (!\inst|alu1|Mux0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_logica|salida\(3),
	datab => \inst|alu1|Mux0~1_combout\,
	datac => \inst|alu1|Mux6~4_combout\,
	datad => \inst|alu1|Mux2~5_combout\,
	combout => \inst|alu1|Mux6~5_combout\);

-- Location: LCCOMB_X30_Y16_N16
\inst|alu1|Mux6~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux6~6_combout\ = (\inst|alu1|Mux6~5_combout\ & (((\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~21_combout\) # (!\inst|alu1|Mux2~5_combout\)))) # (!\inst|alu1|Mux6~5_combout\ & (\inst|alu1|Mux6~3_combout\ & 
-- ((\inst|alu1|Mux2~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux6~3_combout\,
	datab => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~21_combout\,
	datac => \inst|alu1|Mux6~5_combout\,
	datad => \inst|alu1|Mux2~5_combout\,
	combout => \inst|alu1|Mux6~6_combout\);

-- Location: LCCOMB_X30_Y18_N18
\inst|alu1|Mux6~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux6~7_combout\ = (\inst|alu1|Mux6~6_combout\) # ((\inst|MREG\(0) & (\inst|MREG\(3) & \inst|MREG\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MREG\(0),
	datab => \inst|MREG\(3),
	datac => \inst|alu1|Mux6~6_combout\,
	datad => \inst|MREG\(1),
	combout => \inst|alu1|Mux6~7_combout\);

-- Location: LCCOMB_X30_Y18_N10
\inst|alu1|unidad_aritmetica|suma|s2|Suma\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|suma|s2|Suma~combout\ = \inst|MREG\(16) $ (\inst|MREG\(6) $ (((\inst|alu1|unidad_aritmetica|mult|inter\(20) & \inst|MREG\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|inter\(20),
	datab => \inst|MREG\(4),
	datac => \inst|MREG\(16),
	datad => \inst|MREG\(6),
	combout => \inst|alu1|unidad_aritmetica|suma|s2|Suma~combout\);

-- Location: LCCOMB_X30_Y18_N22
\inst|alu1|unidad_aritmetica|mult|multi2|s2|Suma\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi2|s2|Suma~combout\ = (\inst|MREG\(14) & (\inst|MREG\(6) $ (((\inst|MREG\(4) & \inst|MREG\(16)))))) # (!\inst|MREG\(14) & (\inst|MREG\(4) & (\inst|MREG\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MREG\(14),
	datab => \inst|MREG\(4),
	datac => \inst|MREG\(16),
	datad => \inst|MREG\(6),
	combout => \inst|alu1|unidad_aritmetica|mult|multi2|s2|Suma~combout\);

-- Location: LCCOMB_X31_Y18_N14
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

-- Location: LCCOMB_X31_Y18_N16
\inst|alu1|unidad_aritmetica|divi|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add0~2_combout\ = (\inst|MREG\(5) & ((\inst|alu1|unidad_aritmetica|divi|Add0~1\) # (GND))) # (!\inst|MREG\(5) & (!\inst|alu1|unidad_aritmetica|divi|Add0~1\))
-- \inst|alu1|unidad_aritmetica|divi|Add0~3\ = CARRY((\inst|MREG\(5)) # (!\inst|alu1|unidad_aritmetica|divi|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|MREG\(5),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add0~1\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add0~2_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add0~3\);

-- Location: LCCOMB_X30_Y18_N30
\inst|alu1|unidad_aritmetica|divi|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add0~16_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan0~0_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add0~2_combout\ & ((\inst|MREG\(17)) # (!\inst|MREG\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MREG\(17),
	datab => \inst|alu1|unidad_aritmetica|divi|LessThan0~0_combout\,
	datac => \inst|MREG\(4),
	datad => \inst|alu1|unidad_aritmetica|divi|Add0~2_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add0~16_combout\);

-- Location: LCCOMB_X31_Y18_N18
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

-- Location: LCCOMB_X31_Y18_N20
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

-- Location: LCCOMB_X30_Y18_N0
\inst|alu1|unidad_aritmetica|divi|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add0~14_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan0~0_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add0~6_combout\ & ((\inst|MREG\(17)) # (!\inst|MREG\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MREG\(17),
	datab => \inst|alu1|unidad_aritmetica|divi|LessThan0~0_combout\,
	datac => \inst|MREG\(4),
	datad => \inst|alu1|unidad_aritmetica|divi|Add0~6_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add0~14_combout\);

-- Location: LCCOMB_X29_Y18_N14
\inst|alu1|unidad_aritmetica|divi|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan1~1_combout\ = (!\inst|MREG\(16) & \inst|MREG\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MREG\(16),
	datac => \inst|MREG\(4),
	combout => \inst|alu1|unidad_aritmetica|divi|LessThan1~1_combout\);

-- Location: LCCOMB_X31_Y18_N10
\inst|alu1|unidad_aritmetica|divi|Add0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add0~15_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan0~0_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add0~4_combout\ & ((\inst|MREG\(17)) # (!\inst|MREG\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MREG\(4),
	datab => \inst|alu1|unidad_aritmetica|divi|LessThan0~0_combout\,
	datac => \inst|MREG\(17),
	datad => \inst|alu1|unidad_aritmetica|divi|Add0~4_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add0~15_combout\);

-- Location: LCCOMB_X29_Y18_N24
\inst|alu1|unidad_aritmetica|divi|LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan1~2_combout\ = (!\inst|alu1|unidad_aritmetica|divi|Add0~16_combout\ & (!\inst|alu1|unidad_aritmetica|divi|Add0~14_combout\ & (\inst|alu1|unidad_aritmetica|divi|LessThan1~1_combout\ & 
-- !\inst|alu1|unidad_aritmetica|divi|Add0~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add0~16_combout\,
	datab => \inst|alu1|unidad_aritmetica|divi|Add0~14_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|LessThan1~1_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|Add0~15_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|LessThan1~2_combout\);

-- Location: LCCOMB_X31_Y18_N22
\inst|alu1|unidad_aritmetica|divi|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add0~8_combout\ = (\inst|MREG\(5) & (!\inst|alu1|unidad_aritmetica|divi|Add0~7\ & VCC)) # (!\inst|MREG\(5) & (\inst|alu1|unidad_aritmetica|divi|Add0~7\ $ (GND)))
-- \inst|alu1|unidad_aritmetica|divi|Add0~9\ = CARRY((!\inst|MREG\(5) & !\inst|alu1|unidad_aritmetica|divi|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|MREG\(5),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add0~7\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add0~8_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add0~9\);

-- Location: LCCOMB_X31_Y18_N24
\inst|alu1|unidad_aritmetica|divi|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add0~10_combout\ = !\inst|alu1|unidad_aritmetica|divi|Add0~9\
-- \inst|alu1|unidad_aritmetica|divi|Add0~11\ = CARRY(!\inst|alu1|unidad_aritmetica|divi|Add0~9\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add0~9\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add0~10_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add0~11\);

-- Location: LCCOMB_X31_Y18_N26
\inst|alu1|unidad_aritmetica|divi|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add0~12_combout\ = \inst|alu1|unidad_aritmetica|divi|Add0~11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst|alu1|unidad_aritmetica|divi|Add0~11\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add0~12_combout\);

-- Location: LCCOMB_X31_Y18_N0
\inst|alu1|unidad_aritmetica|divi|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan1~0_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan0~1_combout\) # ((!\inst|alu1|unidad_aritmetica|divi|Add0~12_combout\ & (!\inst|alu1|unidad_aritmetica|divi|Add0~8_combout\ & 
-- !\inst|alu1|unidad_aritmetica|divi|Add0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add0~12_combout\,
	datab => \inst|alu1|unidad_aritmetica|divi|LessThan0~1_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|Add0~8_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|Add0~10_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|LessThan1~0_combout\);

-- Location: LCCOMB_X31_Y18_N12
\inst|alu1|unidad_aritmetica|divi|Add0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add0~17_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan0~0_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add0~0_combout\ & ((\inst|MREG\(17)) # (!\inst|MREG\(4))))) # 
-- (!\inst|alu1|unidad_aritmetica|divi|LessThan0~0_combout\ & (((\inst|MREG\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|LessThan0~0_combout\,
	datab => \inst|alu1|unidad_aritmetica|divi|Add0~0_combout\,
	datac => \inst|MREG\(17),
	datad => \inst|MREG\(4),
	combout => \inst|alu1|unidad_aritmetica|divi|Add0~17_combout\);

-- Location: LCCOMB_X31_Y18_N30
\inst|alu1|unidad_aritmetica|divi|LessThan1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan1~3_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan1~0_combout\ & (((\inst|alu1|unidad_aritmetica|divi|LessThan1~2_combout\ & !\inst|alu1|unidad_aritmetica|divi|Add0~17_combout\)) # 
-- (!\inst|alu1|unidad_aritmetica|divi|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|LessThan1~2_combout\,
	datab => \inst|alu1|unidad_aritmetica|divi|LessThan1~0_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|LessThan0~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|Add0~17_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|LessThan1~3_combout\);

-- Location: LCCOMB_X30_Y18_N24
\inst|alu1|Mux7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux7~2_combout\ = (\inst|alu1|Mux11~0_combout\ & (((\inst|alu1|Mux10~0_combout\)))) # (!\inst|alu1|Mux11~0_combout\ & ((\inst|alu1|Mux10~0_combout\ & ((!\inst|alu1|unidad_aritmetica|divi|LessThan1~3_combout\))) # (!\inst|alu1|Mux10~0_combout\ & 
-- (!\inst|alu1|unidad_aritmetica|resta|s2|Suma~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|resta|s2|Suma~combout\,
	datab => \inst|alu1|Mux11~0_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|LessThan1~3_combout\,
	datad => \inst|alu1|Mux10~0_combout\,
	combout => \inst|alu1|Mux7~2_combout\);

-- Location: LCCOMB_X30_Y18_N12
\inst|alu1|Mux7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux7~3_combout\ = (\inst|alu1|Mux11~0_combout\ & ((\inst|alu1|Mux7~2_combout\ & ((\inst|alu1|unidad_aritmetica|mult|multi2|s2|Suma~combout\))) # (!\inst|alu1|Mux7~2_combout\ & (\inst|alu1|unidad_aritmetica|suma|s2|Suma~combout\)))) # 
-- (!\inst|alu1|Mux11~0_combout\ & (((\inst|alu1|Mux7~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|suma|s2|Suma~combout\,
	datab => \inst|alu1|Mux11~0_combout\,
	datac => \inst|alu1|unidad_aritmetica|mult|multi2|s2|Suma~combout\,
	datad => \inst|alu1|Mux7~2_combout\,
	combout => \inst|alu1|Mux7~3_combout\);

-- Location: LCCOMB_X32_Y16_N20
\inst|alu1|unidad_logica|salida~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|salida~6_combout\ = (\inst|MREG\(16) & (((!\inst|alu1|Mux11~0_combout\)))) # (!\inst|MREG\(16) & ((\inst|alu1|Mux10~0_combout\) # ((\inst|MREG\(6) & !\inst|alu1|Mux11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MREG\(16),
	datab => \inst|MREG\(6),
	datac => \inst|alu1|Mux11~0_combout\,
	datad => \inst|alu1|Mux10~0_combout\,
	combout => \inst|alu1|unidad_logica|salida~6_combout\);

-- Location: LCCOMB_X31_Y16_N2
\inst|alu1|unidad_logica|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|Add0~2_combout\ = \inst|MREG\(16) $ (\inst|MREG\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MREG\(16),
	datac => \inst|MREG\(14),
	combout => \inst|alu1|unidad_logica|Add0~2_combout\);

-- Location: FF_X31_Y16_N3
\inst|alu1|unidad_logica|aux[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|alu1|reloj|salida~clkctrl_outclk\,
	d => \inst|alu1|unidad_logica|Add0~2_combout\,
	ena => \inst|alu1|Mux2~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|unidad_logica|aux\(2));

-- Location: LCCOMB_X31_Y16_N20
\inst|alu1|unidad_logica|salida~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|salida~7_combout\ = (\inst|alu1|unidad_aritmetica|Mux1~0_combout\ & ((\inst|alu1|unidad_logica|salida~6_combout\ & ((\inst|alu1|unidad_logica|aux\(2)))) # (!\inst|alu1|unidad_logica|salida~6_combout\ & 
-- (\inst|alu1|unidad_logica|salida~0_combout\)))) # (!\inst|alu1|unidad_aritmetica|Mux1~0_combout\ & (((\inst|alu1|unidad_logica|salida~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|Mux1~0_combout\,
	datab => \inst|alu1|unidad_logica|salida~0_combout\,
	datac => \inst|alu1|unidad_logica|salida~6_combout\,
	datad => \inst|alu1|unidad_logica|aux\(2),
	combout => \inst|alu1|unidad_logica|salida~7_combout\);

-- Location: FF_X31_Y16_N21
\inst|alu1|unidad_logica|salida[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|alu1|reloj|salida~clkctrl_outclk\,
	d => \inst|alu1|unidad_logica|salida~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|unidad_logica|salida\(2));

-- Location: LCCOMB_X30_Y16_N22
\inst|alu1|Mux7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux7~4_combout\ = (\inst|alu1|Mux2~5_combout\ & (((\inst|alu1|Mux6~4_combout\)))) # (!\inst|alu1|Mux2~5_combout\ & (!\inst|alu1|Mux0~1_combout\ & ((\inst|alu1|unidad_logica|salida\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux0~1_combout\,
	datab => \inst|alu1|Mux6~4_combout\,
	datac => \inst|alu1|unidad_logica|salida\(2),
	datad => \inst|alu1|Mux2~5_combout\,
	combout => \inst|alu1|Mux7~4_combout\);

-- Location: LCCOMB_X30_Y18_N6
\inst|alu1|Mux7~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux7~5_combout\ = (\inst|alu1|Mux7~4_combout\ & (((\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~19_combout\) # (!\inst|alu1|Mux2~5_combout\)))) # (!\inst|alu1|Mux7~4_combout\ & (\inst|alu1|Mux7~3_combout\ & 
-- (\inst|alu1|Mux2~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux7~3_combout\,
	datab => \inst|alu1|Mux7~4_combout\,
	datac => \inst|alu1|Mux2~5_combout\,
	datad => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~19_combout\,
	combout => \inst|alu1|Mux7~5_combout\);

-- Location: LCCOMB_X30_Y18_N8
\inst|alu1|Mux7~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux7~6_combout\ = (\inst|alu1|Mux7~5_combout\) # ((\inst|MREG\(3) & (\inst|MREG\(0) & \inst|MREG\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux7~5_combout\,
	datab => \inst|MREG\(3),
	datac => \inst|MREG\(0),
	datad => \inst|MREG\(1),
	combout => \inst|alu1|Mux7~6_combout\);

-- Location: LCCOMB_X30_Y16_N8
\inst|alu1|Mux8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux8~2_combout\ = \inst|MREG\(5) $ (((\inst|MREG\(14) & \inst|MREG\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|MREG\(5),
	datac => \inst|MREG\(14),
	datad => \inst|MREG\(4),
	combout => \inst|alu1|Mux8~2_combout\);

-- Location: LCCOMB_X30_Y16_N14
\inst|alu1|Mux8~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux8~3_combout\ = (\inst|alu1|Mux10~0_combout\ & (\inst|alu1|Mux11~0_combout\)) # (!\inst|alu1|Mux10~0_combout\ & (\inst|alu1|Mux8~2_combout\ $ (((!\inst|alu1|Mux11~0_combout\ & \inst|MREG\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux11~0_combout\,
	datab => \inst|alu1|Mux8~2_combout\,
	datac => \inst|alu1|Mux10~0_combout\,
	datad => \inst|MREG\(4),
	combout => \inst|alu1|Mux8~3_combout\);

-- Location: LCCOMB_X31_Y18_N28
\inst|alu1|unidad_aritmetica|divi|LessThan2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan2~0_combout\ = (!\inst|alu1|unidad_aritmetica|divi|Add0~6_combout\ & (!\inst|alu1|unidad_aritmetica|divi|Add0~4_combout\ & (!\inst|alu1|unidad_aritmetica|divi|Add0~0_combout\ & 
-- !\inst|alu1|unidad_aritmetica|divi|Add0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add0~6_combout\,
	datab => \inst|alu1|unidad_aritmetica|divi|Add0~4_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|Add0~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|Add0~2_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|LessThan2~0_combout\);

-- Location: LCCOMB_X31_Y18_N8
\inst|alu1|unidad_aritmetica|divi|LessThan2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan2~1_combout\ = (!\inst|alu1|unidad_aritmetica|divi|Add0~12_combout\ & (!\inst|alu1|unidad_aritmetica|divi|Add0~8_combout\ & !\inst|alu1|unidad_aritmetica|divi|Add0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add0~12_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|Add0~8_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|Add0~10_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|LessThan2~1_combout\);

-- Location: LCCOMB_X30_Y18_N28
\inst|alu1|unidad_aritmetica|divi|LessThan2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan2~2_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan1~1_combout\ & ((\inst|MREG\(6)) # ((\inst|alu1|unidad_aritmetica|divi|LessThan2~0_combout\ & \inst|alu1|unidad_aritmetica|divi|LessThan2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|LessThan1~1_combout\,
	datab => \inst|alu1|unidad_aritmetica|divi|LessThan2~0_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|LessThan2~1_combout\,
	datad => \inst|MREG\(6),
	combout => \inst|alu1|unidad_aritmetica|divi|LessThan2~2_combout\);

-- Location: LCCOMB_X30_Y18_N20
\inst|alu1|unidad_aritmetica|divi|Add0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add0~19_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan0~0_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add0~10_combout\ & ((\inst|MREG\(17)) # (!\inst|MREG\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MREG\(17),
	datab => \inst|alu1|unidad_aritmetica|divi|LessThan0~0_combout\,
	datac => \inst|MREG\(4),
	datad => \inst|alu1|unidad_aritmetica|divi|Add0~10_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add0~19_combout\);

-- Location: LCCOMB_X30_Y18_N2
\inst|alu1|unidad_aritmetica|divi|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add0~18_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan0~0_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add0~8_combout\ & ((\inst|MREG\(17)) # (!\inst|MREG\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MREG\(17),
	datab => \inst|alu1|unidad_aritmetica|divi|LessThan0~0_combout\,
	datac => \inst|MREG\(4),
	datad => \inst|alu1|unidad_aritmetica|divi|Add0~8_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add0~18_combout\);

-- Location: LCCOMB_X29_Y18_N0
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

-- Location: LCCOMB_X29_Y18_N2
\inst|alu1|unidad_aritmetica|divi|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add1~2_combout\ = (\inst|MREG\(5) & ((\inst|alu1|unidad_aritmetica|divi|Add0~17_combout\ & (!\inst|alu1|unidad_aritmetica|divi|Add1~1\)) # (!\inst|alu1|unidad_aritmetica|divi|Add0~17_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add1~1\) # (GND))))) # (!\inst|MREG\(5) & ((\inst|alu1|unidad_aritmetica|divi|Add0~17_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add1~1\ & VCC)) # (!\inst|alu1|unidad_aritmetica|divi|Add0~17_combout\ & 
-- (!\inst|alu1|unidad_aritmetica|divi|Add1~1\))))
-- \inst|alu1|unidad_aritmetica|divi|Add1~3\ = CARRY((\inst|MREG\(5) & ((!\inst|alu1|unidad_aritmetica|divi|Add1~1\) # (!\inst|alu1|unidad_aritmetica|divi|Add0~17_combout\))) # (!\inst|MREG\(5) & (!\inst|alu1|unidad_aritmetica|divi|Add0~17_combout\ & 
-- !\inst|alu1|unidad_aritmetica|divi|Add1~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MREG\(5),
	datab => \inst|alu1|unidad_aritmetica|divi|Add0~17_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add1~1\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add1~2_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add1~3\);

-- Location: LCCOMB_X29_Y18_N4
\inst|alu1|unidad_aritmetica|divi|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add1~4_combout\ = ((\inst|alu1|unidad_aritmetica|divi|Add0~16_combout\ $ (\inst|MREG\(6) $ (\inst|alu1|unidad_aritmetica|divi|Add1~3\)))) # (GND)
-- \inst|alu1|unidad_aritmetica|divi|Add1~5\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add0~16_combout\ & ((!\inst|alu1|unidad_aritmetica|divi|Add1~3\) # (!\inst|MREG\(6)))) # (!\inst|alu1|unidad_aritmetica|divi|Add0~16_combout\ & (!\inst|MREG\(6) & 
-- !\inst|alu1|unidad_aritmetica|divi|Add1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add0~16_combout\,
	datab => \inst|MREG\(6),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add1~3\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add1~4_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add1~5\);

-- Location: LCCOMB_X29_Y18_N6
\inst|alu1|unidad_aritmetica|divi|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add1~6_combout\ = (\inst|alu1|unidad_aritmetica|divi|Add0~15_combout\ & ((\inst|MREG\(7) & (!\inst|alu1|unidad_aritmetica|divi|Add1~5\)) # (!\inst|MREG\(7) & (\inst|alu1|unidad_aritmetica|divi|Add1~5\ & VCC)))) # 
-- (!\inst|alu1|unidad_aritmetica|divi|Add0~15_combout\ & ((\inst|MREG\(7) & ((\inst|alu1|unidad_aritmetica|divi|Add1~5\) # (GND))) # (!\inst|MREG\(7) & (!\inst|alu1|unidad_aritmetica|divi|Add1~5\))))
-- \inst|alu1|unidad_aritmetica|divi|Add1~7\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add0~15_combout\ & (\inst|MREG\(7) & !\inst|alu1|unidad_aritmetica|divi|Add1~5\)) # (!\inst|alu1|unidad_aritmetica|divi|Add0~15_combout\ & ((\inst|MREG\(7)) # 
-- (!\inst|alu1|unidad_aritmetica|divi|Add1~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add0~15_combout\,
	datab => \inst|MREG\(7),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add1~5\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add1~6_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add1~7\);

-- Location: LCCOMB_X29_Y18_N8
\inst|alu1|unidad_aritmetica|divi|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add1~8_combout\ = ((\inst|MREG\(5) $ (\inst|alu1|unidad_aritmetica|divi|Add0~14_combout\ $ (\inst|alu1|unidad_aritmetica|divi|Add1~7\)))) # (GND)
-- \inst|alu1|unidad_aritmetica|divi|Add1~9\ = CARRY((\inst|MREG\(5) & (\inst|alu1|unidad_aritmetica|divi|Add0~14_combout\ & !\inst|alu1|unidad_aritmetica|divi|Add1~7\)) # (!\inst|MREG\(5) & ((\inst|alu1|unidad_aritmetica|divi|Add0~14_combout\) # 
-- (!\inst|alu1|unidad_aritmetica|divi|Add1~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MREG\(5),
	datab => \inst|alu1|unidad_aritmetica|divi|Add0~14_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add1~7\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add1~8_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add1~9\);

-- Location: LCCOMB_X29_Y18_N10
\inst|alu1|unidad_aritmetica|divi|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add1~10_combout\ = (\inst|alu1|unidad_aritmetica|divi|Add0~18_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add1~9\ & VCC)) # (!\inst|alu1|unidad_aritmetica|divi|Add0~18_combout\ & 
-- (!\inst|alu1|unidad_aritmetica|divi|Add1~9\))
-- \inst|alu1|unidad_aritmetica|divi|Add1~11\ = CARRY((!\inst|alu1|unidad_aritmetica|divi|Add0~18_combout\ & !\inst|alu1|unidad_aritmetica|divi|Add1~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add0~18_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add1~9\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add1~10_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add1~11\);

-- Location: LCCOMB_X29_Y18_N12
\inst|alu1|unidad_aritmetica|divi|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add1~12_combout\ = \inst|alu1|unidad_aritmetica|divi|Add0~19_combout\ $ (\inst|alu1|unidad_aritmetica|divi|Add1~11\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add0~19_combout\,
	cin => \inst|alu1|unidad_aritmetica|divi|Add1~11\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add1~12_combout\);

-- Location: LCCOMB_X29_Y18_N16
\inst|alu1|unidad_aritmetica|divi|LessThan2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan2~4_combout\ = (!\inst|alu1|unidad_aritmetica|divi|Add1~6_combout\ & (!\inst|MREG\(6) & (!\inst|alu1|unidad_aritmetica|divi|Add1~4_combout\ & \inst|MREG\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add1~6_combout\,
	datab => \inst|MREG\(6),
	datac => \inst|alu1|unidad_aritmetica|divi|Add1~4_combout\,
	datad => \inst|MREG\(4),
	combout => \inst|alu1|unidad_aritmetica|divi|LessThan2~4_combout\);

-- Location: LCCOMB_X29_Y18_N26
\inst|alu1|unidad_aritmetica|divi|LessThan2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan2~3_combout\ = (!\inst|MREG\(17) & ((\inst|MREG\(6)) # ((!\inst|MREG\(16) & \inst|MREG\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MREG\(16),
	datab => \inst|MREG\(4),
	datac => \inst|MREG\(6),
	datad => \inst|MREG\(17),
	combout => \inst|alu1|unidad_aritmetica|divi|LessThan2~3_combout\);

-- Location: LCCOMB_X29_Y18_N18
\inst|alu1|unidad_aritmetica|divi|LessThan2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan2~5_combout\ = (!\inst|alu1|unidad_aritmetica|divi|Add1~10_combout\ & (!\inst|alu1|unidad_aritmetica|divi|Add1~2_combout\ & (!\inst|alu1|unidad_aritmetica|divi|Add1~8_combout\ & 
-- !\inst|alu1|unidad_aritmetica|divi|Add1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add1~10_combout\,
	datab => \inst|alu1|unidad_aritmetica|divi|Add1~2_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|Add1~8_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|Add1~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|LessThan2~5_combout\);

-- Location: LCCOMB_X29_Y18_N20
\inst|alu1|unidad_aritmetica|divi|LessThan2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan2~6_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan2~3_combout\) # ((!\inst|alu1|unidad_aritmetica|divi|Add1~12_combout\ & (\inst|alu1|unidad_aritmetica|divi|LessThan2~4_combout\ & 
-- \inst|alu1|unidad_aritmetica|divi|LessThan2~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add1~12_combout\,
	datab => \inst|alu1|unidad_aritmetica|divi|LessThan2~4_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|LessThan2~3_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan2~5_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|LessThan2~6_combout\);

-- Location: LCCOMB_X29_Y18_N22
\inst|alu1|unidad_aritmetica|divi|LessThan2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan2~7_combout\ = (\inst|MREG\(5)) # ((\inst|alu1|unidad_aritmetica|divi|LessThan2~2_combout\) # ((\inst|MREG\(7)) # (\inst|alu1|unidad_aritmetica|divi|LessThan2~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MREG\(5),
	datab => \inst|alu1|unidad_aritmetica|divi|LessThan2~2_combout\,
	datac => \inst|MREG\(7),
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan2~6_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|LessThan2~7_combout\);

-- Location: LCCOMB_X30_Y16_N28
\inst|alu1|Mux8~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux8~4_combout\ = (\inst|alu1|Mux10~0_combout\ & ((\inst|alu1|Mux8~3_combout\ & (\inst|alu1|unidad_aritmetica|mult|inter\(20))) # (!\inst|alu1|Mux8~3_combout\ & ((!\inst|alu1|unidad_aritmetica|divi|LessThan2~7_combout\))))) # 
-- (!\inst|alu1|Mux10~0_combout\ & (((\inst|alu1|Mux8~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux10~0_combout\,
	datab => \inst|alu1|unidad_aritmetica|mult|inter\(20),
	datac => \inst|alu1|Mux8~3_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan2~7_combout\,
	combout => \inst|alu1|Mux8~4_combout\);

-- Location: FF_X30_Y16_N13
\inst|alu1|unidad_logica|aux[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|alu1|reloj|salida~clkctrl_outclk\,
	asdata => \inst|MREG\(14),
	sload => VCC,
	ena => \inst|alu1|Mux2~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|unidad_logica|aux\(1));

-- Location: LCCOMB_X30_Y16_N30
\inst|alu1|unidad_logica|salida~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|salida~8_combout\ = (\inst|alu1|Mux11~0_combout\ & (((\inst|alu1|Mux10~0_combout\)))) # (!\inst|alu1|Mux11~0_combout\ & ((\inst|alu1|Mux10~0_combout\ & ((\inst|alu1|unidad_logica|aux\(1)))) # (!\inst|alu1|Mux10~0_combout\ & 
-- (\inst|MREG\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux11~0_combout\,
	datab => \inst|MREG\(5),
	datac => \inst|alu1|Mux10~0_combout\,
	datad => \inst|alu1|unidad_logica|aux\(1),
	combout => \inst|alu1|unidad_logica|salida~8_combout\);

-- Location: FF_X30_Y16_N31
\inst|alu1|unidad_logica|salida[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|alu1|reloj|salida~clkctrl_outclk\,
	d => \inst|alu1|unidad_logica|salida~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|unidad_logica|salida\(1));

-- Location: LCCOMB_X30_Y16_N24
\inst|alu1|Mux8~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux8~5_combout\ = (\inst|alu1|Mux2~5_combout\ & (((\inst|alu1|Mux6~4_combout\)))) # (!\inst|alu1|Mux2~5_combout\ & (\inst|alu1|unidad_logica|salida\(1) & (!\inst|alu1|Mux0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_logica|salida\(1),
	datab => \inst|alu1|Mux0~1_combout\,
	datac => \inst|alu1|Mux6~4_combout\,
	datad => \inst|alu1|Mux2~5_combout\,
	combout => \inst|alu1|Mux8~5_combout\);

-- Location: LCCOMB_X30_Y16_N18
\inst|alu1|Mux8~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux8~6_combout\ = (\inst|alu1|Mux8~5_combout\ & ((\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~17_combout\) # ((!\inst|alu1|Mux2~5_combout\)))) # (!\inst|alu1|Mux8~5_combout\ & (((\inst|alu1|Mux8~4_combout\ & 
-- \inst|alu1|Mux2~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~17_combout\,
	datab => \inst|alu1|Mux8~4_combout\,
	datac => \inst|alu1|Mux8~5_combout\,
	datad => \inst|alu1|Mux2~5_combout\,
	combout => \inst|alu1|Mux8~6_combout\);

-- Location: LCCOMB_X31_Y17_N6
\inst|alu1|Mux8~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux8~7_combout\ = (\inst|alu1|Mux8~6_combout\) # ((\inst|MREG\(3) & (\inst|MREG\(0) & \inst|MREG\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MREG\(3),
	datab => \inst|MREG\(0),
	datac => \inst|alu1|Mux8~6_combout\,
	datad => \inst|MREG\(1),
	combout => \inst|alu1|Mux8~7_combout\);

-- Location: LCCOMB_X31_Y16_N8
\inst|alu1|unidad_logica|salida~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|salida~9_combout\ = (!\inst|MREG\(14)) # (!\inst|MREG\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|MREG\(4),
	datad => \inst|MREG\(14),
	combout => \inst|alu1|unidad_logica|salida~9_combout\);

-- Location: LCCOMB_X32_Y16_N30
\inst|alu1|unidad_logica|salida~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|salida~10_combout\ = (\inst|MREG\(14) & (((!\inst|alu1|Mux11~0_combout\)))) # (!\inst|MREG\(14) & ((\inst|alu1|Mux10~0_combout\) # ((\inst|MREG\(4) & !\inst|alu1|Mux11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MREG\(14),
	datab => \inst|MREG\(4),
	datac => \inst|alu1|Mux11~0_combout\,
	datad => \inst|alu1|Mux10~0_combout\,
	combout => \inst|alu1|unidad_logica|salida~10_combout\);

-- Location: LCCOMB_X31_Y16_N18
\inst|alu1|unidad_logica|aux[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|aux[0]~feeder_combout\ = \inst|MREG\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|MREG\(14),
	combout => \inst|alu1|unidad_logica|aux[0]~feeder_combout\);

-- Location: FF_X31_Y16_N19
\inst|alu1|unidad_logica|aux[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|alu1|reloj|salida~clkctrl_outclk\,
	d => \inst|alu1|unidad_logica|aux[0]~feeder_combout\,
	ena => \inst|alu1|Mux2~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|unidad_logica|aux\(0));

-- Location: LCCOMB_X31_Y16_N30
\inst|alu1|unidad_logica|salida~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_logica|salida~11_combout\ = (\inst|alu1|unidad_aritmetica|Mux1~0_combout\ & ((\inst|alu1|unidad_logica|salida~10_combout\ & ((\inst|alu1|unidad_logica|aux\(0)))) # (!\inst|alu1|unidad_logica|salida~10_combout\ & 
-- (!\inst|alu1|unidad_logica|salida~9_combout\)))) # (!\inst|alu1|unidad_aritmetica|Mux1~0_combout\ & (((\inst|alu1|unidad_logica|salida~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|Mux1~0_combout\,
	datab => \inst|alu1|unidad_logica|salida~9_combout\,
	datac => \inst|alu1|unidad_logica|salida~10_combout\,
	datad => \inst|alu1|unidad_logica|aux\(0),
	combout => \inst|alu1|unidad_logica|salida~11_combout\);

-- Location: FF_X31_Y16_N31
\inst|alu1|unidad_logica|salida[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|alu1|reloj|salida~clkctrl_outclk\,
	d => \inst|alu1|unidad_logica|salida~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|unidad_logica|salida\(0));

-- Location: LCCOMB_X31_Y16_N0
\inst|alu1|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux9~0_combout\ = (\inst|MREG\(3) & (\inst|MREG\(0) & (\inst|MREG\(1)))) # (!\inst|MREG\(3) & (\inst|alu1|unidad_logica|salida\(0) & ((\inst|MREG\(0)) # (\inst|MREG\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MREG\(0),
	datab => \inst|MREG\(1),
	datac => \inst|MREG\(3),
	datad => \inst|alu1|unidad_logica|salida\(0),
	combout => \inst|alu1|Mux9~0_combout\);

-- Location: LCCOMB_X32_Y16_N26
\inst|alu1|unidad_aritmetica|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|Mux9~0_combout\ = (\inst|alu1|unidad_aritmetica|resta|s4|Cout~0_combout\ & (\inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~15_combout\)) # (!\inst|alu1|unidad_aritmetica|resta|s4|Cout~0_combout\ & ((\inst|MREG\(14) $ 
-- (\inst|MREG\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|multi4|negativo|Add0~15_combout\,
	datab => \inst|MREG\(14),
	datac => \inst|alu1|unidad_aritmetica|resta|s4|Cout~0_combout\,
	datad => \inst|MREG\(4),
	combout => \inst|alu1|unidad_aritmetica|Mux9~0_combout\);

-- Location: LCCOMB_X32_Y18_N26
\inst|alu1|unidad_aritmetica|divi|Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add1~16_combout\ = (!\inst|alu1|unidad_aritmetica|divi|LessThan1~3_combout\ & \inst|alu1|unidad_aritmetica|divi|Add1~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|LessThan1~3_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|Add1~6_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add1~16_combout\);

-- Location: LCCOMB_X29_Y18_N30
\inst|alu1|unidad_aritmetica|divi|Add1~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add1~17_combout\ = (\inst|alu1|unidad_aritmetica|divi|Add1~4_combout\ & !\inst|alu1|unidad_aritmetica|divi|LessThan1~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|alu1|unidad_aritmetica|divi|Add1~4_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan1~3_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add1~17_combout\);

-- Location: LCCOMB_X29_Y18_N28
\inst|alu1|unidad_aritmetica|divi|Add1~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add1~15_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan1~3_combout\ & ((\inst|alu1|unidad_aritmetica|divi|Add0~17_combout\))) # (!\inst|alu1|unidad_aritmetica|divi|LessThan1~3_combout\ & 
-- (\inst|alu1|unidad_aritmetica|divi|Add1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|unidad_aritmetica|divi|Add1~2_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|Add0~17_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan1~3_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add1~15_combout\);

-- Location: LCCOMB_X31_Y18_N6
\inst|alu1|unidad_aritmetica|divi|Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add1~14_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan1~3_combout\ & ((\inst|MREG\(16)))) # (!\inst|alu1|unidad_aritmetica|divi|LessThan1~3_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add1~0_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|LessThan1~3_combout\,
	datad => \inst|MREG\(16),
	combout => \inst|alu1|unidad_aritmetica|divi|Add1~14_combout\);

-- Location: LCCOMB_X32_Y18_N4
\inst|alu1|unidad_aritmetica|divi|Add2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add2~1_cout\ = CARRY(!\inst|MREG\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|MREG\(4),
	datad => VCC,
	cout => \inst|alu1|unidad_aritmetica|divi|Add2~1_cout\);

-- Location: LCCOMB_X32_Y18_N6
\inst|alu1|unidad_aritmetica|divi|Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add2~2_combout\ = (\inst|MREG\(5) & ((\inst|alu1|unidad_aritmetica|divi|Add1~14_combout\ & (!\inst|alu1|unidad_aritmetica|divi|Add2~1_cout\)) # (!\inst|alu1|unidad_aritmetica|divi|Add1~14_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add2~1_cout\) # (GND))))) # (!\inst|MREG\(5) & ((\inst|alu1|unidad_aritmetica|divi|Add1~14_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add2~1_cout\ & VCC)) # (!\inst|alu1|unidad_aritmetica|divi|Add1~14_combout\ & 
-- (!\inst|alu1|unidad_aritmetica|divi|Add2~1_cout\))))
-- \inst|alu1|unidad_aritmetica|divi|Add2~3\ = CARRY((\inst|MREG\(5) & ((!\inst|alu1|unidad_aritmetica|divi|Add2~1_cout\) # (!\inst|alu1|unidad_aritmetica|divi|Add1~14_combout\))) # (!\inst|MREG\(5) & (!\inst|alu1|unidad_aritmetica|divi|Add1~14_combout\ & 
-- !\inst|alu1|unidad_aritmetica|divi|Add2~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MREG\(5),
	datab => \inst|alu1|unidad_aritmetica|divi|Add1~14_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add2~1_cout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add2~2_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add2~3\);

-- Location: LCCOMB_X32_Y18_N8
\inst|alu1|unidad_aritmetica|divi|Add2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add2~4_combout\ = ((\inst|alu1|unidad_aritmetica|divi|Add1~15_combout\ $ (\inst|MREG\(6) $ (\inst|alu1|unidad_aritmetica|divi|Add2~3\)))) # (GND)
-- \inst|alu1|unidad_aritmetica|divi|Add2~5\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add1~15_combout\ & ((!\inst|alu1|unidad_aritmetica|divi|Add2~3\) # (!\inst|MREG\(6)))) # (!\inst|alu1|unidad_aritmetica|divi|Add1~15_combout\ & (!\inst|MREG\(6) & 
-- !\inst|alu1|unidad_aritmetica|divi|Add2~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add1~15_combout\,
	datab => \inst|MREG\(6),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add2~3\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add2~4_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add2~5\);

-- Location: LCCOMB_X32_Y18_N10
\inst|alu1|unidad_aritmetica|divi|Add2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add2~6_combout\ = (\inst|alu1|unidad_aritmetica|divi|Add1~17_combout\ & ((\inst|MREG\(7) & (!\inst|alu1|unidad_aritmetica|divi|Add2~5\)) # (!\inst|MREG\(7) & (\inst|alu1|unidad_aritmetica|divi|Add2~5\ & VCC)))) # 
-- (!\inst|alu1|unidad_aritmetica|divi|Add1~17_combout\ & ((\inst|MREG\(7) & ((\inst|alu1|unidad_aritmetica|divi|Add2~5\) # (GND))) # (!\inst|MREG\(7) & (!\inst|alu1|unidad_aritmetica|divi|Add2~5\))))
-- \inst|alu1|unidad_aritmetica|divi|Add2~7\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add1~17_combout\ & (\inst|MREG\(7) & !\inst|alu1|unidad_aritmetica|divi|Add2~5\)) # (!\inst|alu1|unidad_aritmetica|divi|Add1~17_combout\ & ((\inst|MREG\(7)) # 
-- (!\inst|alu1|unidad_aritmetica|divi|Add2~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add1~17_combout\,
	datab => \inst|MREG\(7),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add2~5\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add2~6_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add2~7\);

-- Location: LCCOMB_X32_Y18_N12
\inst|alu1|unidad_aritmetica|divi|Add2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add2~8_combout\ = ((\inst|alu1|unidad_aritmetica|divi|Add1~16_combout\ $ (\inst|MREG\(5) $ (\inst|alu1|unidad_aritmetica|divi|Add2~7\)))) # (GND)
-- \inst|alu1|unidad_aritmetica|divi|Add2~9\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add1~16_combout\ & ((!\inst|alu1|unidad_aritmetica|divi|Add2~7\) # (!\inst|MREG\(5)))) # (!\inst|alu1|unidad_aritmetica|divi|Add1~16_combout\ & (!\inst|MREG\(5) & 
-- !\inst|alu1|unidad_aritmetica|divi|Add2~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add1~16_combout\,
	datab => \inst|MREG\(5),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add2~7\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add2~8_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add2~9\);

-- Location: LCCOMB_X32_Y18_N24
\inst|alu1|unidad_aritmetica|divi|Add1~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add1~19_combout\ = (!\inst|alu1|unidad_aritmetica|divi|LessThan1~3_combout\ & \inst|alu1|unidad_aritmetica|divi|Add1~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|LessThan1~3_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|Add1~10_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add1~19_combout\);

-- Location: LCCOMB_X32_Y17_N0
\inst|alu1|unidad_aritmetica|divi|Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add1~18_combout\ = (\inst|alu1|unidad_aritmetica|divi|Add1~8_combout\ & !\inst|alu1|unidad_aritmetica|divi|LessThan1~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|alu1|unidad_aritmetica|divi|Add1~8_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan1~3_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add1~18_combout\);

-- Location: LCCOMB_X32_Y18_N14
\inst|alu1|unidad_aritmetica|divi|Add2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add2~10_combout\ = (\inst|alu1|unidad_aritmetica|divi|Add1~18_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add2~9\ & VCC)) # (!\inst|alu1|unidad_aritmetica|divi|Add1~18_combout\ & 
-- (!\inst|alu1|unidad_aritmetica|divi|Add2~9\))
-- \inst|alu1|unidad_aritmetica|divi|Add2~11\ = CARRY((!\inst|alu1|unidad_aritmetica|divi|Add1~18_combout\ & !\inst|alu1|unidad_aritmetica|divi|Add2~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|unidad_aritmetica|divi|Add1~18_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add2~9\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add2~10_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add2~11\);

-- Location: LCCOMB_X32_Y18_N16
\inst|alu1|unidad_aritmetica|divi|Add2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add2~12_combout\ = \inst|alu1|unidad_aritmetica|divi|Add2~11\ $ (\inst|alu1|unidad_aritmetica|divi|Add1~19_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|alu1|unidad_aritmetica|divi|Add1~19_combout\,
	cin => \inst|alu1|unidad_aritmetica|divi|Add2~11\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add2~12_combout\);

-- Location: LCCOMB_X32_Y18_N22
\inst|alu1|unidad_aritmetica|divi|LessThan3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan3~6_combout\ = (!\inst|alu1|unidad_aritmetica|divi|Add2~8_combout\ & (!\inst|alu1|unidad_aritmetica|divi|Add2~12_combout\ & (!\inst|alu1|unidad_aritmetica|divi|Add2~10_combout\ & 
-- !\inst|alu1|unidad_aritmetica|divi|Add2~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add2~8_combout\,
	datab => \inst|alu1|unidad_aritmetica|divi|Add2~12_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|Add2~10_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|Add2~6_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|LessThan3~6_combout\);

-- Location: LCCOMB_X32_Y18_N2
\inst|alu1|unidad_aritmetica|divi|LessThan3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan3~5_combout\ = (\inst|MREG\(7) & (((!\inst|alu1|unidad_aritmetica|divi|Add2~2_combout\ & \inst|MREG\(6))) # (!\inst|alu1|unidad_aritmetica|divi|Add2~4_combout\))) # (!\inst|MREG\(7) & 
-- (!\inst|alu1|unidad_aritmetica|divi|Add2~2_combout\ & (\inst|MREG\(6) & !\inst|alu1|unidad_aritmetica|divi|Add2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add2~2_combout\,
	datab => \inst|MREG\(7),
	datac => \inst|MREG\(6),
	datad => \inst|alu1|unidad_aritmetica|divi|Add2~4_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|LessThan3~5_combout\);

-- Location: LCCOMB_X32_Y18_N20
\inst|alu1|unidad_aritmetica|divi|LessThan3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan3~8_combout\ = (\inst|MREG\(6) & (((!\inst|MREG\(14) & \inst|MREG\(4))) # (!\inst|alu1|unidad_aritmetica|divi|Add1~14_combout\))) # (!\inst|MREG\(6) & (!\inst|MREG\(14) & 
-- (!\inst|alu1|unidad_aritmetica|divi|Add1~14_combout\ & \inst|MREG\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MREG\(14),
	datab => \inst|MREG\(6),
	datac => \inst|alu1|unidad_aritmetica|divi|Add1~14_combout\,
	datad => \inst|MREG\(4),
	combout => \inst|alu1|unidad_aritmetica|divi|LessThan3~8_combout\);

-- Location: LCCOMB_X32_Y18_N0
\inst|alu1|unidad_aritmetica|divi|LessThan3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan3~4_combout\ = (\inst|MREG\(5)) # ((\inst|alu1|unidad_aritmetica|divi|Add1~15_combout\ & (\inst|MREG\(7) & \inst|alu1|unidad_aritmetica|divi|LessThan3~8_combout\)) # 
-- (!\inst|alu1|unidad_aritmetica|divi|Add1~15_combout\ & ((\inst|MREG\(7)) # (\inst|alu1|unidad_aritmetica|divi|LessThan3~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add1~15_combout\,
	datab => \inst|MREG\(7),
	datac => \inst|MREG\(5),
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan3~8_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|LessThan3~4_combout\);

-- Location: LCCOMB_X32_Y18_N18
\inst|alu1|unidad_aritmetica|divi|LessThan3~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan3~9_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan2~7_combout\ & (\inst|alu1|unidad_aritmetica|divi|LessThan3~4_combout\ & ((\inst|alu1|unidad_aritmetica|divi|LessThan1~3_combout\) # 
-- (!\inst|alu1|unidad_aritmetica|divi|Add1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|LessThan1~3_combout\,
	datab => \inst|alu1|unidad_aritmetica|divi|Add1~6_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|LessThan2~7_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan3~4_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|LessThan3~9_combout\);

-- Location: LCCOMB_X32_Y18_N28
\inst|alu1|unidad_aritmetica|divi|LessThan3~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan3~7_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan3~9_combout\) # ((\inst|alu1|unidad_aritmetica|divi|LessThan3~6_combout\ & (\inst|alu1|unidad_aritmetica|divi|LessThan3~5_combout\ & 
-- !\inst|alu1|unidad_aritmetica|divi|LessThan2~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|LessThan3~6_combout\,
	datab => \inst|alu1|unidad_aritmetica|divi|LessThan3~5_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|LessThan2~7_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan3~9_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|LessThan3~7_combout\);

-- Location: LCCOMB_X32_Y16_N8
\inst|alu1|unidad_aritmetica|Mux9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|Mux9~1_combout\ = (\inst|alu1|Mux10~0_combout\ & ((\inst|alu1|Mux11~0_combout\) # ((!\inst|alu1|unidad_aritmetica|divi|LessThan3~7_combout\)))) # (!\inst|alu1|Mux10~0_combout\ & (!\inst|alu1|Mux11~0_combout\ & 
-- (\inst|alu1|unidad_aritmetica|Mux9~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux10~0_combout\,
	datab => \inst|alu1|Mux11~0_combout\,
	datac => \inst|alu1|unidad_aritmetica|Mux9~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan3~7_combout\,
	combout => \inst|alu1|unidad_aritmetica|Mux9~1_combout\);

-- Location: LCCOMB_X32_Y18_N30
\inst|alu1|unidad_aritmetica|Mux9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|Mux9~2_combout\ = (\inst|alu1|unidad_aritmetica|Mux9~1_combout\ & (((\inst|MREG\(4) & \inst|MREG\(14))) # (!\inst|alu1|Mux11~0_combout\))) # (!\inst|alu1|unidad_aritmetica|Mux9~1_combout\ & (\inst|alu1|Mux11~0_combout\ & 
-- (\inst|MREG\(4) $ (\inst|MREG\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|Mux9~1_combout\,
	datab => \inst|alu1|Mux11~0_combout\,
	datac => \inst|MREG\(4),
	datad => \inst|MREG\(14),
	combout => \inst|alu1|unidad_aritmetica|Mux9~2_combout\);

-- Location: LCCOMB_X31_Y17_N0
\inst|alu1|Mux9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux9~1_combout\ = (\inst|alu1|Mux9~0_combout\) # ((\inst|MREG\(3) & \inst|alu1|unidad_aritmetica|Mux9~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MREG\(3),
	datab => \inst|alu1|Mux9~0_combout\,
	datac => \inst|alu1|unidad_aritmetica|Mux9~2_combout\,
	combout => \inst|alu1|Mux9~1_combout\);

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
END structure;


