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

-- DATE "11/24/2022 01:26:30"

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
	R : OUT std_logic_vector(9 DOWNTO 0);
	clk : IN std_logic;
	rst : IN std_logic;
	ecuacion : IN std_logic_vector(1 DOWNTO 0)
	);
END practica2;

-- Design Ports Information
-- R[9]	=>  Location: PIN_55,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[8]	=>  Location: PIN_46,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[7]	=>  Location: PIN_51,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[6]	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[5]	=>  Location: PIN_44,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[4]	=>  Location: PIN_54,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[3]	=>  Location: PIN_53,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[2]	=>  Location: PIN_49,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[1]	=>  Location: PIN_31,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[0]	=>  Location: PIN_50,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_64,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ecuacion[1]	=>  Location: PIN_60,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ecuacion[0]	=>  Location: PIN_58,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \inst|reggy_rtl_1|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \inst|reggy_rtl_1|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|reggy_rtl_1|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|reggy_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \inst|reggy_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \inst|reggy_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst|reggy_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst|reggy_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
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
SIGNAL \inst|MAR[8]~4_combout\ : std_logic;
SIGNAL \inst|pr_state.state1~q\ : std_logic;
SIGNAL \inst|REG_A[0]~0_combout\ : std_logic;
SIGNAL \inst|pr_state.state2~feeder_combout\ : std_logic;
SIGNAL \inst|pr_state.state2~q\ : std_logic;
SIGNAL \inst|pr_state~5_combout\ : std_logic;
SIGNAL \inst|pr_state.state0~q\ : std_logic;
SIGNAL \inst|PC[0]~15\ : std_logic;
SIGNAL \inst|PC[1]~21_combout\ : std_logic;
SIGNAL \inst|PC[1]~22\ : std_logic;
SIGNAL \inst|PC[2]~23_combout\ : std_logic;
SIGNAL \inst|PC[2]~24\ : std_logic;
SIGNAL \inst|PC[3]~25_combout\ : std_logic;
SIGNAL \inst|PC[0]~16_combout\ : std_logic;
SIGNAL \inst|PC[3]~26\ : std_logic;
SIGNAL \inst|PC[4]~27_combout\ : std_logic;
SIGNAL \inst|PC[4]~28\ : std_logic;
SIGNAL \inst|PC[5]~29_combout\ : std_logic;
SIGNAL \ecuacion[0]~input_o\ : std_logic;
SIGNAL \ecuacion[1]~input_o\ : std_logic;
SIGNAL \inst|MAR[8]~5_combout\ : std_logic;
SIGNAL \inst|PC[0]~17_combout\ : std_logic;
SIGNAL \inst|PC[5]~30\ : std_logic;
SIGNAL \inst|PC[6]~31_combout\ : std_logic;
SIGNAL \inst|PC[6]~32\ : std_logic;
SIGNAL \inst|PC[7]~33_combout\ : std_logic;
SIGNAL \inst|PC[7]~34\ : std_logic;
SIGNAL \inst|PC[8]~35_combout\ : std_logic;
SIGNAL \inst|PC[8]~36\ : std_logic;
SIGNAL \inst|PC[9]~37_combout\ : std_logic;
SIGNAL \inst|PC[0]~18_combout\ : std_logic;
SIGNAL \inst|PC[9]~38\ : std_logic;
SIGNAL \inst|PC[10]~39_combout\ : std_logic;
SIGNAL \inst|PC[10]~40\ : std_logic;
SIGNAL \inst|PC[11]~41_combout\ : std_logic;
SIGNAL \inst|PC[11]~42\ : std_logic;
SIGNAL \inst|PC[12]~43_combout\ : std_logic;
SIGNAL \inst|PC[12]~44\ : std_logic;
SIGNAL \inst|PC[13]~45_combout\ : std_logic;
SIGNAL \inst|PC[0]~19_combout\ : std_logic;
SIGNAL \inst|PC[0]~20_combout\ : std_logic;
SIGNAL \inst|Mux12~0_combout\ : std_logic;
SIGNAL \inst|MAR[9]~6_combout\ : std_logic;
SIGNAL \inst|MAR[8]~3_combout\ : std_logic;
SIGNAL \inst|Mux10~0_combout\ : std_logic;
SIGNAL \inst|reggy~15_combout\ : std_logic;
SIGNAL \inst|reggy~16_combout\ : std_logic;
SIGNAL \inst|Mux19~0_combout\ : std_logic;
SIGNAL \inst|Mux20~0_combout\ : std_logic;
SIGNAL \inst|MAR[0]~1_combout\ : std_logic;
SIGNAL \inst|Mux10~1_combout\ : std_logic;
SIGNAL \inst|Mux18~0_combout\ : std_logic;
SIGNAL \inst|Mux18~1_combout\ : std_logic;
SIGNAL \inst|MAR[2]~2_combout\ : std_logic;
SIGNAL \inst|Mux18~2_combout\ : std_logic;
SIGNAL \inst|Mux38~0_combout\ : std_logic;
SIGNAL \inst|OP[0]~feeder_combout\ : std_logic;
SIGNAL \inst|alu1|Mux0~0_combout\ : std_logic;
SIGNAL \inst|Mux16~0_combout\ : std_logic;
SIGNAL \inst|Mux4~0_combout\ : std_logic;
SIGNAL \inst|Mux14~0_combout\ : std_logic;
SIGNAL \inst|alu1|Mux10~0_combout\ : std_logic;
SIGNAL \inst|alu1|Mux11~0_combout\ : std_logic;
SIGNAL \inst|alu1|Mux8~0_combout\ : std_logic;
SIGNAL \inst|Mux37~0_combout\ : std_logic;
SIGNAL \inst|Mux35~0_combout\ : std_logic;
SIGNAL \inst|Mux36~0_combout\ : std_logic;
SIGNAL \inst|alu1|Mux6~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan2~8_combout\ : std_logic;
SIGNAL \inst|alu1|Mux4~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi3|s3|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan0~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan0~1_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi1|s1|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi1|s2|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi1|s3|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi1|s4|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi1|s5|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi1|s2|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi2|s2|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi2|s3|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi2|s4|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi1|s5|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi2|s5|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi2|s6|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi2|s6|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi2|s5|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi3|s5|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi3|s6|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi3|s7|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi3|s4|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi4|s4|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi4|s5|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi4|s6|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi4|s7|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|Mux2~0_combout\ : std_logic;
SIGNAL \inst|Selector3~0_combout\ : std_logic;
SIGNAL \inst|reggy_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi3|s6|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi4|s6|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|Mux3~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add0~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|remainderr~3_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add0~1\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add0~3\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add0~5\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add0~7\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add0~8_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add0~9\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add0~11\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add0~12_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add0~10_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|remainderr~4_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add0~4_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|remainderr~1_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan1~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add0~2_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|remainderr~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add0~6_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|remainderr~2_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan1~1_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan1~2_combout\ : std_logic;
SIGNAL \inst|alu1|Mux3~1_combout\ : std_logic;
SIGNAL \inst|Selector4~0_combout\ : std_logic;
SIGNAL \inst|reggy_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi1|s4|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi2|s4|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi3|s4|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi3|s5|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi4|s5|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|Mux4~1_combout\ : std_logic;
SIGNAL \inst|alu1|Mux4~2_combout\ : std_logic;
SIGNAL \inst|Selector5~0_combout\ : std_logic;
SIGNAL \inst|reggy_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \inst|reggy_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan2~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan2~4_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan2~2_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan2~1_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan2~3_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add1~1\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add1~2_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add1~3\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add1~4_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add1~5\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add1~6_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add1~7\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add1~9\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add1~10_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan2~6_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add1~8_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add1~11\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add1~12_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan2~5_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan2~7_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan2~9_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|remainderr~6_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|remainderr~7_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add2~1\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add2~3\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add2~5\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add2~6_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add2~16_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add2~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan3~3_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan3~4_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add2~4_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan3~2_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan3~5_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add2~14_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan3~1_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|remainderr~10_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|remainderr~5_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add2~7\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add2~9\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add2~11\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add2~12_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add2~8_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add2~10_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan3~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan3~6_combout\ : std_logic;
SIGNAL \inst|alu1|Mux5~3_combout\ : std_logic;
SIGNAL \inst|alu1|Mux5~2_combout\ : std_logic;
SIGNAL \inst|alu1|Mux5~4_combout\ : std_logic;
SIGNAL \inst|alu1|Mux5~5_combout\ : std_logic;
SIGNAL \inst|Selector6~0_combout\ : std_logic;
SIGNAL \inst|reggy_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi1|s3|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi2|s3|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|Mux6~1_combout\ : std_logic;
SIGNAL \inst|alu1|Mux6~2_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add2~17_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add3~3\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add3~5\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add3~7\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add3~9\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add3~12_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add3~21_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add2~18_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add3~13\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add3~14_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add2~19_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add3~15\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add3~16_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan4~9_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add3~8_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add3~10_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add3~4_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan4~6_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan4~2_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add3~2_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan4~4_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan4~3_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan4~5_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan4~7_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan4~8_combout\ : std_logic;
SIGNAL \inst|alu1|Mux6~3_combout\ : std_logic;
SIGNAL \inst|Selector7~0_combout\ : std_logic;
SIGNAL \inst|reggy_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add1~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|remainderr~8_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|remainderr~9_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add2~2_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add2~15_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add3~6_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add3~11_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add3~18_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add3~19_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add4~1\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add4~3\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add4~5\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add4~6_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add4~8_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add4~4_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add4~16_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add4~2_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add4~17_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add4~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add4~18_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan5~1_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan5~2_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan5~3_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan4~10_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add3~20_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add4~7\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add4~10\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add4~12\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add4~13_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add4~11_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add4~9_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add4~15_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan5~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan5~4_combout\ : std_logic;
SIGNAL \inst|alu1|Mux7~0_combout\ : std_logic;
SIGNAL \inst|alu1|Mux7~1_combout\ : std_logic;
SIGNAL \inst|alu1|Mux7~2_combout\ : std_logic;
SIGNAL \inst|Selector8~0_combout\ : std_logic;
SIGNAL \inst|reggy_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi1|s1|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|Mux8~1_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add5~1\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add5~3\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add5~5\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add5~6_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add5~15_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add5~7\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add5~9\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add5~10_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add5~8_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add5~14_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add4~19_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add5~11\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add5~12_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan7~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add5~4_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add5~16_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add5~2_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add5~17_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add5~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add5~18_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan7~1_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan7~2_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan7~3_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan7~4_combout\ : std_logic;
SIGNAL \inst|alu1|Mux8~2_combout\ : std_logic;
SIGNAL \inst|Selector9~0_combout\ : std_logic;
SIGNAL \inst|reggy_rtl_0|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \inst|alu1|Mux9~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add6~1\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add6~3\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add6~5\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add6~6_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan7~5_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add6~7\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add6~9\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add6~10_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add5~19_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add6~11\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add6~12_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add6~8_combout\ : std_logic;
SIGNAL \inst|alu1|Mux9~1_combout\ : std_logic;
SIGNAL \inst|alu1|Mux9~2_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add6~4_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|remainderr~11_combout\ : std_logic;
SIGNAL \inst|alu1|Mux9~3_combout\ : std_logic;
SIGNAL \inst|alu1|Mux9~4_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add6~2_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan7~6_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan7~8_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|Add6~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|remainderr~12_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|divi|LessThan7~7_combout\ : std_logic;
SIGNAL \inst|alu1|Mux9~5_combout\ : std_logic;
SIGNAL \inst|alu1|Mux9~6_combout\ : std_logic;
SIGNAL \inst|alu1|Mux9~7_combout\ : std_logic;
SIGNAL \inst|alu1|Mux9~8_combout\ : std_logic;
SIGNAL \inst|Selector10~0_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi3|s7|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi4|s7|Cout~0_combout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|multi4|s8|Suma~0_combout\ : std_logic;
SIGNAL \inst|alu1|Mux1~0_combout\ : std_logic;
SIGNAL \inst|Selector2~0_combout\ : std_logic;
SIGNAL \inst|Selector1~0_combout\ : std_logic;
SIGNAL \inst|reggy_rtl_1|auto_generated|ram_block1a9\ : std_logic;
SIGNAL \inst|reggy_rtl_1|auto_generated|ram_block1a8\ : std_logic;
SIGNAL \inst|reggy_rtl_1|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \inst|reggy_rtl_1|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \inst|reggy_rtl_1|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \inst|reggy_rtl_1|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \inst|reggy_rtl_1|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \inst|reggy_rtl_1|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \inst|reggy_rtl_1|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \inst|reggy_rtl_1|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \inst|alu1|unidad_aritmetica|mult|inter\ : std_logic_vector(24 DOWNTO 0);
SIGNAL \inst|PC\ : std_logic_vector(13 DOWNTO 0);
SIGNAL \inst|MAR\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst|alu1|R\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst|OP\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|REG_B\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst|alu1|sel_aux\ : std_logic_vector(1 DOWNTO 0);

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

\inst|reggy_rtl_1|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & \inst|Selector1~0_combout\ & 
\inst|Selector2~0_combout\ & \inst|Selector3~0_combout\ & \inst|Selector4~0_combout\ & \inst|Selector5~0_combout\ & \inst|Selector6~0_combout\ & \inst|Selector7~0_combout\ & \inst|Selector8~0_combout\ & \inst|Selector9~0_combout\ & 
\inst|Selector10~0_combout\);

\inst|reggy_rtl_1|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\~GND~combout\ & \inst|MAR\(6) & \inst|MAR\(5) & \inst|MAR\(4));

\inst|reggy_rtl_1|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\inst|PC\(3) & \inst|PC\(2) & \inst|PC\(1) & \inst|PC\(0));

\inst|reggy_rtl_1|auto_generated|ram_block1a0~portbdataout\ <= \inst|reggy_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\inst|reggy_rtl_1|auto_generated|ram_block1a1\ <= \inst|reggy_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\inst|reggy_rtl_1|auto_generated|ram_block1a2\ <= \inst|reggy_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\inst|reggy_rtl_1|auto_generated|ram_block1a3\ <= \inst|reggy_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);
\inst|reggy_rtl_1|auto_generated|ram_block1a4\ <= \inst|reggy_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(4);
\inst|reggy_rtl_1|auto_generated|ram_block1a5\ <= \inst|reggy_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(5);
\inst|reggy_rtl_1|auto_generated|ram_block1a6\ <= \inst|reggy_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(6);
\inst|reggy_rtl_1|auto_generated|ram_block1a7\ <= \inst|reggy_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(7);
\inst|reggy_rtl_1|auto_generated|ram_block1a8\ <= \inst|reggy_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(8);
\inst|reggy_rtl_1|auto_generated|ram_block1a9\ <= \inst|reggy_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(9);

\inst|reggy_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
\inst|Selector3~0_combout\ & \inst|Selector4~0_combout\ & \inst|Selector5~0_combout\ & \inst|Selector6~0_combout\ & \inst|Selector7~0_combout\ & \inst|Selector8~0_combout\ & \inst|Selector9~0_combout\ & \inst|Selector10~0_combout\);

\inst|reggy_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\inst|MAR\(6) & \inst|MAR\(5) & \inst|MAR\(4));

\inst|reggy_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\inst|MAR\(6) & \inst|MAR\(5) & \inst|MAR\(4));

\inst|reggy_rtl_0|auto_generated|ram_block1a0~portbdataout\ <= \inst|reggy_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\inst|reggy_rtl_0|auto_generated|ram_block1a1\ <= \inst|reggy_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\inst|reggy_rtl_0|auto_generated|ram_block1a2\ <= \inst|reggy_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\inst|reggy_rtl_0|auto_generated|ram_block1a3\ <= \inst|reggy_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);
\inst|reggy_rtl_0|auto_generated|ram_block1a4\ <= \inst|reggy_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(4);
\inst|reggy_rtl_0|auto_generated|ram_block1a5\ <= \inst|reggy_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(5);
\inst|reggy_rtl_0|auto_generated|ram_block1a6\ <= \inst|reggy_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(6);
\inst|reggy_rtl_0|auto_generated|ram_block1a7\ <= \inst|reggy_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(7);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X18_Y0_N16
\R[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|reggy_rtl_1|auto_generated|ram_block1a9\,
	devoe => ww_devoe,
	o => \R[9]~output_o\);

-- Location: IOOBUF_X7_Y0_N2
\R[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|reggy_rtl_1|auto_generated|ram_block1a8\,
	devoe => ww_devoe,
	o => \R[8]~output_o\);

-- Location: IOOBUF_X16_Y0_N23
\R[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|reggy_rtl_1|auto_generated|ram_block1a7\,
	devoe => ww_devoe,
	o => \R[7]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\R[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|reggy_rtl_1|auto_generated|ram_block1a6\,
	devoe => ww_devoe,
	o => \R[6]~output_o\);

-- Location: IOOBUF_X5_Y0_N16
\R[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|reggy_rtl_1|auto_generated|ram_block1a5\,
	devoe => ww_devoe,
	o => \R[5]~output_o\);

-- Location: IOOBUF_X18_Y0_N23
\R[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|reggy_rtl_1|auto_generated|ram_block1a4\,
	devoe => ww_devoe,
	o => \R[4]~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\R[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|reggy_rtl_1|auto_generated|ram_block1a3\,
	devoe => ww_devoe,
	o => \R[3]~output_o\);

-- Location: IOOBUF_X13_Y0_N16
\R[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|reggy_rtl_1|auto_generated|ram_block1a2\,
	devoe => ww_devoe,
	o => \R[2]~output_o\);

-- Location: IOOBUF_X0_Y7_N2
\R[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|reggy_rtl_1|auto_generated|ram_block1a1\,
	devoe => ww_devoe,
	o => \R[1]~output_o\);

-- Location: IOOBUF_X13_Y0_N2
\R[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|reggy_rtl_1|auto_generated|ram_block1a0~portbdataout\,
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

-- Location: LCCOMB_X19_Y4_N2
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

-- Location: IOIBUF_X25_Y0_N1
\rst~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: LCCOMB_X16_Y7_N18
\inst|MAR[8]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|MAR[8]~4_combout\ = (!\inst|pr_state.state0~q\ & !\rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pr_state.state0~q\,
	datad => \rst~input_o\,
	combout => \inst|MAR[8]~4_combout\);

-- Location: FF_X16_Y7_N19
\inst|pr_state.state1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|MAR[8]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|pr_state.state1~q\);

-- Location: LCCOMB_X16_Y7_N10
\inst|REG_A[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|REG_A[0]~0_combout\ = (\inst|pr_state.state1~q\ & !\rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|pr_state.state1~q\,
	datad => \rst~input_o\,
	combout => \inst|REG_A[0]~0_combout\);

-- Location: LCCOMB_X16_Y7_N4
\inst|pr_state.state2~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|pr_state.state2~feeder_combout\ = \inst|REG_A[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|REG_A[0]~0_combout\,
	combout => \inst|pr_state.state2~feeder_combout\);

-- Location: FF_X16_Y7_N5
\inst|pr_state.state2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|pr_state.state2~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|pr_state.state2~q\);

-- Location: LCCOMB_X16_Y7_N12
\inst|pr_state~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|pr_state~5_combout\ = (!\inst|pr_state.state2~q\ & !\rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|pr_state.state2~q\,
	datad => \rst~input_o\,
	combout => \inst|pr_state~5_combout\);

-- Location: FF_X16_Y7_N13
\inst|pr_state.state0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|pr_state~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|pr_state.state0~q\);

-- Location: LCCOMB_X19_Y4_N4
\inst|PC[1]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|PC[1]~21_combout\ = (\inst|PC\(1) & (!\inst|PC[0]~15\)) # (!\inst|PC\(1) & ((\inst|PC[0]~15\) # (GND)))
-- \inst|PC[1]~22\ = CARRY((!\inst|PC[0]~15\) # (!\inst|PC\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|PC\(1),
	datad => VCC,
	cin => \inst|PC[0]~15\,
	combout => \inst|PC[1]~21_combout\,
	cout => \inst|PC[1]~22\);

-- Location: FF_X19_Y4_N5
\inst|PC[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|PC[1]~21_combout\,
	sclr => \rst~input_o\,
	ena => \inst|PC[0]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC\(1));

-- Location: LCCOMB_X19_Y4_N6
\inst|PC[2]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|PC[2]~23_combout\ = (\inst|PC\(2) & (\inst|PC[1]~22\ $ (GND))) # (!\inst|PC\(2) & (!\inst|PC[1]~22\ & VCC))
-- \inst|PC[2]~24\ = CARRY((\inst|PC\(2) & !\inst|PC[1]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC\(2),
	datad => VCC,
	cin => \inst|PC[1]~22\,
	combout => \inst|PC[2]~23_combout\,
	cout => \inst|PC[2]~24\);

-- Location: FF_X19_Y4_N7
\inst|PC[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|PC[2]~23_combout\,
	sclr => \rst~input_o\,
	ena => \inst|PC[0]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC\(2));

-- Location: LCCOMB_X19_Y4_N8
\inst|PC[3]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|PC[3]~25_combout\ = (\inst|PC\(3) & (!\inst|PC[2]~24\)) # (!\inst|PC\(3) & ((\inst|PC[2]~24\) # (GND)))
-- \inst|PC[3]~26\ = CARRY((!\inst|PC[2]~24\) # (!\inst|PC\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|PC\(3),
	datad => VCC,
	cin => \inst|PC[2]~24\,
	combout => \inst|PC[3]~25_combout\,
	cout => \inst|PC[3]~26\);

-- Location: FF_X19_Y4_N9
\inst|PC[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|PC[3]~25_combout\,
	sclr => \rst~input_o\,
	ena => \inst|PC[0]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC\(3));

-- Location: LCCOMB_X17_Y7_N10
\inst|PC[0]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|PC[0]~16_combout\ = (\inst|pr_state.state0~q\) # ((\inst|PC\(3) & ((\inst|PC\(1)) # (\inst|PC\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pr_state.state0~q\,
	datab => \inst|PC\(3),
	datac => \inst|PC\(1),
	datad => \inst|PC\(2),
	combout => \inst|PC[0]~16_combout\);

-- Location: LCCOMB_X19_Y4_N10
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

-- Location: FF_X19_Y4_N11
\inst|PC[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|PC[4]~27_combout\,
	sclr => \rst~input_o\,
	ena => \inst|PC[0]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC\(4));

-- Location: LCCOMB_X19_Y4_N12
\inst|PC[5]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|PC[5]~29_combout\ = (\inst|PC\(5) & (!\inst|PC[4]~28\)) # (!\inst|PC\(5) & ((\inst|PC[4]~28\) # (GND)))
-- \inst|PC[5]~30\ = CARRY((!\inst|PC[4]~28\) # (!\inst|PC\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC\(5),
	datad => VCC,
	cin => \inst|PC[4]~28\,
	combout => \inst|PC[5]~29_combout\,
	cout => \inst|PC[5]~30\);

-- Location: FF_X19_Y4_N13
\inst|PC[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|PC[5]~29_combout\,
	sclr => \rst~input_o\,
	ena => \inst|PC[0]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC\(5));

-- Location: IOIBUF_X21_Y0_N8
\ecuacion[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ecuacion(0),
	o => \ecuacion[0]~input_o\);

-- Location: IOIBUF_X23_Y0_N8
\ecuacion[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ecuacion(1),
	o => \ecuacion[1]~input_o\);

-- Location: LCCOMB_X18_Y4_N18
\inst|MAR[8]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|MAR[8]~5_combout\ = (!\ecuacion[0]~input_o\ & !\ecuacion[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ecuacion[0]~input_o\,
	datad => \ecuacion[1]~input_o\,
	combout => \inst|MAR[8]~5_combout\);

-- Location: LCCOMB_X18_Y4_N28
\inst|PC[0]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|PC[0]~17_combout\ = (\inst|PC[0]~16_combout\) # ((\inst|PC\(5)) # ((\inst|PC\(4)) # (!\inst|MAR[8]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC[0]~16_combout\,
	datab => \inst|PC\(5),
	datac => \inst|PC\(4),
	datad => \inst|MAR[8]~5_combout\,
	combout => \inst|PC[0]~17_combout\);

-- Location: LCCOMB_X19_Y4_N14
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

-- Location: FF_X19_Y4_N15
\inst|PC[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|PC[6]~31_combout\,
	sclr => \rst~input_o\,
	ena => \inst|PC[0]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC\(6));

-- Location: LCCOMB_X19_Y4_N16
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

-- Location: FF_X19_Y4_N17
\inst|PC[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|PC[7]~33_combout\,
	sclr => \rst~input_o\,
	ena => \inst|PC[0]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC\(7));

-- Location: LCCOMB_X19_Y4_N18
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

-- Location: FF_X19_Y4_N19
\inst|PC[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|PC[8]~35_combout\,
	sclr => \rst~input_o\,
	ena => \inst|PC[0]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC\(8));

-- Location: LCCOMB_X19_Y4_N20
\inst|PC[9]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|PC[9]~37_combout\ = (\inst|PC\(9) & (!\inst|PC[8]~36\)) # (!\inst|PC\(9) & ((\inst|PC[8]~36\) # (GND)))
-- \inst|PC[9]~38\ = CARRY((!\inst|PC[8]~36\) # (!\inst|PC\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|PC\(9),
	datad => VCC,
	cin => \inst|PC[8]~36\,
	combout => \inst|PC[9]~37_combout\,
	cout => \inst|PC[9]~38\);

-- Location: FF_X19_Y4_N21
\inst|PC[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|PC[9]~37_combout\,
	sclr => \rst~input_o\,
	ena => \inst|PC[0]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC\(9));

-- Location: LCCOMB_X19_Y4_N0
\inst|PC[0]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|PC[0]~18_combout\ = (\inst|PC\(9)) # ((\inst|PC\(8)) # ((\inst|PC\(6)) # (\inst|PC\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC\(9),
	datab => \inst|PC\(8),
	datac => \inst|PC\(6),
	datad => \inst|PC\(7),
	combout => \inst|PC[0]~18_combout\);

-- Location: LCCOMB_X19_Y4_N22
\inst|PC[10]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|PC[10]~39_combout\ = (\inst|PC\(10) & (\inst|PC[9]~38\ $ (GND))) # (!\inst|PC\(10) & (!\inst|PC[9]~38\ & VCC))
-- \inst|PC[10]~40\ = CARRY((\inst|PC\(10) & !\inst|PC[9]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC\(10),
	datad => VCC,
	cin => \inst|PC[9]~38\,
	combout => \inst|PC[10]~39_combout\,
	cout => \inst|PC[10]~40\);

-- Location: FF_X19_Y4_N23
\inst|PC[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|PC[10]~39_combout\,
	sclr => \rst~input_o\,
	ena => \inst|PC[0]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC\(10));

-- Location: LCCOMB_X19_Y4_N24
\inst|PC[11]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|PC[11]~41_combout\ = (\inst|PC\(11) & (!\inst|PC[10]~40\)) # (!\inst|PC\(11) & ((\inst|PC[10]~40\) # (GND)))
-- \inst|PC[11]~42\ = CARRY((!\inst|PC[10]~40\) # (!\inst|PC\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|PC\(11),
	datad => VCC,
	cin => \inst|PC[10]~40\,
	combout => \inst|PC[11]~41_combout\,
	cout => \inst|PC[11]~42\);

-- Location: FF_X19_Y4_N25
\inst|PC[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|PC[11]~41_combout\,
	sclr => \rst~input_o\,
	ena => \inst|PC[0]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC\(11));

-- Location: LCCOMB_X19_Y4_N26
\inst|PC[12]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|PC[12]~43_combout\ = (\inst|PC\(12) & (\inst|PC[11]~42\ $ (GND))) # (!\inst|PC\(12) & (!\inst|PC[11]~42\ & VCC))
-- \inst|PC[12]~44\ = CARRY((\inst|PC\(12) & !\inst|PC[11]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC\(12),
	datad => VCC,
	cin => \inst|PC[11]~42\,
	combout => \inst|PC[12]~43_combout\,
	cout => \inst|PC[12]~44\);

-- Location: FF_X19_Y4_N27
\inst|PC[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|PC[12]~43_combout\,
	sclr => \rst~input_o\,
	ena => \inst|PC[0]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC\(12));

-- Location: LCCOMB_X19_Y4_N28
\inst|PC[13]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|PC[13]~45_combout\ = \inst|PC\(13) $ (\inst|PC[12]~44\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|PC\(13),
	cin => \inst|PC[12]~44\,
	combout => \inst|PC[13]~45_combout\);

-- Location: FF_X19_Y4_N29
\inst|PC[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|PC[13]~45_combout\,
	sclr => \rst~input_o\,
	ena => \inst|PC[0]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC\(13));

-- Location: LCCOMB_X19_Y4_N30
\inst|PC[0]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|PC[0]~19_combout\ = (\inst|PC\(10)) # ((\inst|PC\(13)) # ((\inst|PC\(12)) # (\inst|PC\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC\(10),
	datab => \inst|PC\(13),
	datac => \inst|PC\(12),
	datad => \inst|PC\(11),
	combout => \inst|PC[0]~19_combout\);

-- Location: LCCOMB_X18_Y4_N6
\inst|PC[0]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|PC[0]~20_combout\ = (\rst~input_o\) # ((!\inst|PC[0]~17_combout\ & (!\inst|PC[0]~18_combout\ & !\inst|PC[0]~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \inst|PC[0]~17_combout\,
	datac => \inst|PC[0]~18_combout\,
	datad => \inst|PC[0]~19_combout\,
	combout => \inst|PC[0]~20_combout\);

-- Location: FF_X19_Y4_N3
\inst|PC[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|PC[0]~14_combout\,
	sclr => \rst~input_o\,
	ena => \inst|PC[0]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC\(0));

-- Location: LCCOMB_X17_Y7_N28
\inst|Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux12~0_combout\ = (\inst|PC\(3)) # ((\inst|PC\(2)) # ((\inst|PC\(0) & \inst|PC\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC\(0),
	datab => \inst|PC\(1),
	datac => \inst|PC\(3),
	datad => \inst|PC\(2),
	combout => \inst|Mux12~0_combout\);

-- Location: LCCOMB_X17_Y7_N30
\inst|MAR[9]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|MAR[9]~6_combout\ = !\inst|Mux12~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Mux12~0_combout\,
	combout => \inst|MAR[9]~6_combout\);

-- Location: LCCOMB_X18_Y4_N16
\inst|MAR[8]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|MAR[8]~3_combout\ = (!\ecuacion[0]~input_o\ & (!\ecuacion[1]~input_o\ & (!\rst~input_o\ & !\inst|pr_state.state0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ecuacion[0]~input_o\,
	datab => \ecuacion[1]~input_o\,
	datac => \rst~input_o\,
	datad => \inst|pr_state.state0~q\,
	combout => \inst|MAR[8]~3_combout\);

-- Location: FF_X17_Y7_N31
\inst|MAR[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|MAR[9]~6_combout\,
	ena => \inst|MAR[8]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MAR\(9));

-- Location: LCCOMB_X17_Y7_N12
\inst|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux10~0_combout\ = (\inst|PC\(0) & ((\inst|PC\(1)) # ((\inst|PC\(3))))) # (!\inst|PC\(0) & ((\inst|PC\(3) & (\inst|PC\(1))) # (!\inst|PC\(3) & ((\inst|PC\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC\(0),
	datab => \inst|PC\(1),
	datac => \inst|PC\(3),
	datad => \inst|PC\(2),
	combout => \inst|Mux10~0_combout\);

-- Location: FF_X17_Y7_N13
\inst|MAR[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Mux10~0_combout\,
	ena => \inst|MAR[8]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MAR\(10));

-- Location: FF_X17_Y7_N29
\inst|MAR[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Mux12~0_combout\,
	ena => \inst|MAR[8]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MAR\(8));

-- Location: LCCOMB_X16_Y7_N28
\inst|reggy~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~15_combout\ = (\inst|MAR\(9) & (\inst|pr_state.state1~q\ & (!\inst|MAR\(10) & \inst|MAR\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MAR\(9),
	datab => \inst|pr_state.state1~q\,
	datac => \inst|MAR\(10),
	datad => \inst|MAR\(8),
	combout => \inst|reggy~15_combout\);

-- Location: LCCOMB_X16_Y7_N26
\inst|reggy~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|reggy~16_combout\ = (!\rst~input_o\ & ((\inst|reggy~15_combout\) # (\inst|pr_state.state2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|reggy~15_combout\,
	datac => \inst|pr_state.state2~q\,
	datad => \rst~input_o\,
	combout => \inst|reggy~16_combout\);

-- Location: LCCOMB_X17_Y7_N4
\inst|Mux19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux19~0_combout\ = (!\inst|PC\(3) & ((\inst|PC\(0) & ((!\inst|PC\(2)))) # (!\inst|PC\(0) & (!\inst|PC\(1) & \inst|PC\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC\(0),
	datab => \inst|PC\(1),
	datac => \inst|PC\(3),
	datad => \inst|PC\(2),
	combout => \inst|Mux19~0_combout\);

-- Location: FF_X17_Y7_N5
\inst|MAR[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Mux19~0_combout\,
	ena => \inst|MAR[8]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MAR\(1));

-- Location: LCCOMB_X17_Y7_N24
\inst|Mux20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux20~0_combout\ = (\inst|PC\(0)) # (\inst|PC\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|PC\(0),
	datad => \inst|PC\(2),
	combout => \inst|Mux20~0_combout\);

-- Location: LCCOMB_X17_Y7_N16
\inst|MAR[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|MAR[0]~1_combout\ = (\inst|PC\(1) & (!\inst|PC\(0))) # (!\inst|PC\(1) & ((\inst|Mux20~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC\(0),
	datab => \inst|PC\(1),
	datad => \inst|Mux20~0_combout\,
	combout => \inst|MAR[0]~1_combout\);

-- Location: LCCOMB_X17_Y7_N26
\inst|Mux10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux10~1_combout\ = (!\inst|PC\(1) & !\inst|PC\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|PC\(1),
	datac => \inst|PC\(0),
	combout => \inst|Mux10~1_combout\);

-- Location: FF_X17_Y7_N17
\inst|MAR[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|MAR[0]~1_combout\,
	asdata => \inst|Mux10~1_combout\,
	sload => \inst|PC\(3),
	ena => \inst|MAR[8]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MAR\(0));

-- Location: LCCOMB_X17_Y7_N20
\inst|Mux18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux18~0_combout\ = (\inst|PC\(0) & !\inst|PC\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|PC\(0),
	datad => \inst|PC\(2),
	combout => \inst|Mux18~0_combout\);

-- Location: LCCOMB_X17_Y7_N6
\inst|Mux18~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux18~1_combout\ = \inst|PC\(1) $ (\inst|PC\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|PC\(1),
	datad => \inst|PC\(2),
	combout => \inst|Mux18~1_combout\);

-- Location: LCCOMB_X17_Y7_N18
\inst|MAR[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|MAR[2]~2_combout\ = (\inst|Mux18~1_combout\ & ((\inst|Mux18~0_combout\))) # (!\inst|Mux18~1_combout\ & (!\inst|PC\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC\(0),
	datab => \inst|Mux18~0_combout\,
	datad => \inst|Mux18~1_combout\,
	combout => \inst|MAR[2]~2_combout\);

-- Location: LCCOMB_X17_Y7_N8
\inst|Mux18~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux18~2_combout\ = (!\inst|PC\(1) & \inst|PC\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|PC\(1),
	datac => \inst|PC\(0),
	combout => \inst|Mux18~2_combout\);

-- Location: FF_X17_Y7_N19
\inst|MAR[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|MAR[2]~2_combout\,
	asdata => \inst|Mux18~2_combout\,
	sload => \inst|PC\(3),
	ena => \inst|MAR[8]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MAR\(2));

-- Location: LCCOMB_X16_Y10_N22
\inst|Mux38~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux38~0_combout\ = (\inst|MAR\(0) $ (!\inst|MAR\(2))) # (!\inst|MAR\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011111010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MAR\(1),
	datab => \inst|MAR\(0),
	datac => \inst|MAR\(2),
	combout => \inst|Mux38~0_combout\);

-- Location: LCCOMB_X16_Y7_N24
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

-- Location: FF_X16_Y7_N25
\inst|OP[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|OP[0]~feeder_combout\,
	ena => \inst|REG_A[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|OP\(0));

-- Location: FF_X16_Y7_N15
\inst|OP[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|MAR\(9),
	sload => VCC,
	ena => \inst|REG_A[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|OP\(1));

-- Location: FF_X16_Y7_N23
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
	ena => \inst|REG_A[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|OP\(2));

-- Location: LCCOMB_X16_Y7_N14
\inst|alu1|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux0~0_combout\ = (\inst|OP\(2)) # ((\inst|OP\(0) & \inst|OP\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|OP\(0),
	datac => \inst|OP\(1),
	datad => \inst|OP\(2),
	combout => \inst|alu1|Mux0~0_combout\);

-- Location: LCCOMB_X17_Y7_N22
\inst|Mux16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux16~0_combout\ = (\inst|PC\(0) & (((!\inst|PC\(3))) # (!\inst|PC\(1)))) # (!\inst|PC\(0) & (!\inst|PC\(3) & (\inst|PC\(1) $ (!\inst|PC\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111000101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC\(0),
	datab => \inst|PC\(1),
	datac => \inst|PC\(3),
	datad => \inst|PC\(2),
	combout => \inst|Mux16~0_combout\);

-- Location: FF_X17_Y7_N23
\inst|MAR[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Mux16~0_combout\,
	ena => \inst|MAR[8]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MAR\(4));

-- Location: LCCOMB_X17_Y7_N0
\inst|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux4~0_combout\ = (\inst|PC\(0) & \inst|PC\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|PC\(0),
	datad => \inst|PC\(2),
	combout => \inst|Mux4~0_combout\);

-- Location: FF_X17_Y7_N1
\inst|MAR[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Mux4~0_combout\,
	ena => \inst|MAR[8]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MAR\(5));

-- Location: LCCOMB_X17_Y7_N14
\inst|Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux14~0_combout\ = (!\inst|PC\(0) & (!\inst|PC\(3) & (\inst|PC\(1) $ (\inst|PC\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC\(0),
	datab => \inst|PC\(1),
	datac => \inst|PC\(3),
	datad => \inst|PC\(2),
	combout => \inst|Mux14~0_combout\);

-- Location: FF_X17_Y7_N15
\inst|MAR[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Mux14~0_combout\,
	ena => \inst|MAR[8]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MAR\(6));

-- Location: LCCOMB_X16_Y7_N30
\inst|alu1|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux10~0_combout\ = (!\inst|OP\(2) & (\inst|OP\(0) $ (\inst|OP\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|OP\(0),
	datac => \inst|OP\(1),
	datad => \inst|OP\(2),
	combout => \inst|alu1|Mux10~0_combout\);

-- Location: FF_X16_Y7_N31
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

-- Location: LCCOMB_X16_Y7_N8
\inst|alu1|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux11~0_combout\ = (!\inst|OP\(0) & !\inst|OP\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|OP\(0),
	datad => \inst|OP\(2),
	combout => \inst|alu1|Mux11~0_combout\);

-- Location: FF_X16_Y7_N9
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

-- Location: LCCOMB_X17_Y10_N26
\inst|alu1|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux8~0_combout\ = (\inst|alu1|sel_aux\(1) & \inst|alu1|sel_aux\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|alu1|sel_aux\(1),
	datad => \inst|alu1|sel_aux\(0),
	combout => \inst|alu1|Mux8~0_combout\);

-- Location: LCCOMB_X16_Y10_N16
\inst|Mux37~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux37~0_combout\ = (!\inst|MAR\(1) & (\inst|MAR\(0) & \inst|MAR\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MAR\(1),
	datab => \inst|MAR\(0),
	datac => \inst|MAR\(2),
	combout => \inst|Mux37~0_combout\);

-- Location: FF_X16_Y11_N29
\inst|REG_B[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|Mux37~0_combout\,
	sload => VCC,
	ena => \inst|REG_A[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|REG_B\(1));

-- Location: FF_X16_Y11_N3
\inst|REG_B[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|Mux38~0_combout\,
	sload => VCC,
	ena => \inst|REG_A[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|REG_B\(0));

-- Location: LCCOMB_X16_Y10_N0
\inst|Mux35~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux35~0_combout\ = (!\inst|MAR\(1) & (!\inst|MAR\(0) & \inst|MAR\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MAR\(1),
	datab => \inst|MAR\(0),
	datac => \inst|MAR\(2),
	combout => \inst|Mux35~0_combout\);

-- Location: FF_X14_Y11_N15
\inst|REG_B[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|Mux35~0_combout\,
	sload => VCC,
	ena => \inst|REG_A[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|REG_B\(3));

-- Location: LCCOMB_X16_Y10_N12
\inst|Mux36~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux36~0_combout\ = (\inst|MAR\(2)) # ((\inst|MAR\(1) & \inst|MAR\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MAR\(1),
	datab => \inst|MAR\(0),
	datac => \inst|MAR\(2),
	combout => \inst|Mux36~0_combout\);

-- Location: FF_X16_Y11_N19
\inst|REG_B[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|Mux36~0_combout\,
	sload => VCC,
	ena => \inst|REG_A[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|REG_B\(2));

-- Location: LCCOMB_X16_Y9_N26
\inst|alu1|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux6~0_combout\ = (!\inst|alu1|sel_aux\(1) & (\inst|REG_B\(3) $ (((\inst|REG_B\(1) & \inst|REG_B\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|sel_aux\(1),
	datab => \inst|REG_B\(1),
	datac => \inst|REG_B\(2),
	datad => \inst|REG_B\(3),
	combout => \inst|alu1|Mux6~0_combout\);

-- Location: LCCOMB_X17_Y10_N0
\inst|alu1|unidad_aritmetica|divi|LessThan2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan2~8_combout\ = (!\inst|REG_B\(1) & !\inst|REG_B\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|REG_B\(1),
	datad => \inst|REG_B\(3),
	combout => \inst|alu1|unidad_aritmetica|divi|LessThan2~8_combout\);

-- Location: LCCOMB_X17_Y10_N30
\inst|alu1|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux4~0_combout\ = (\inst|REG_B\(2) & (!\inst|alu1|sel_aux\(1) & (\inst|REG_B\(1) & \inst|REG_B\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(2),
	datab => \inst|alu1|sel_aux\(1),
	datac => \inst|REG_B\(1),
	datad => \inst|REG_B\(3),
	combout => \inst|alu1|Mux4~0_combout\);

-- Location: LCCOMB_X13_Y9_N12
\inst|alu1|unidad_aritmetica|mult|multi3|s3|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi3|s3|Cout~0_combout\ = (\inst|REG_B\(3) & (\inst|alu1|unidad_aritmetica|mult|multi2|s3|Suma~0_combout\ & \inst|reggy_rtl_0|auto_generated|ram_block1a0~portbdataout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(3),
	datac => \inst|alu1|unidad_aritmetica|mult|multi2|s3|Suma~0_combout\,
	datad => \inst|reggy_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi3|s3|Cout~0_combout\);

-- Location: LCCOMB_X14_Y11_N14
\inst|alu1|unidad_aritmetica|divi|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan0~0_combout\ = (!\inst|REG_B\(1) & (!\inst|REG_B\(3) & !\inst|REG_B\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(1),
	datac => \inst|REG_B\(3),
	datad => \inst|REG_B\(2),
	combout => \inst|alu1|unidad_aritmetica|divi|LessThan0~0_combout\);

-- Location: LCCOMB_X16_Y11_N2
\inst|alu1|unidad_aritmetica|divi|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan0~1_combout\ = ((\inst|REG_B\(0) & !\inst|reggy_rtl_0|auto_generated|ram_block1a7\)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|LessThan0~0_combout\,
	datac => \inst|REG_B\(0),
	datad => \inst|reggy_rtl_0|auto_generated|ram_block1a7\,
	combout => \inst|alu1|unidad_aritmetica|divi|LessThan0~1_combout\);

-- Location: LCCOMB_X14_Y9_N12
\inst|alu1|unidad_aritmetica|mult|multi1|s1|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi1|s1|Cout~0_combout\ = (\inst|reggy_rtl_0|auto_generated|ram_block1a0~portbdataout\ & (\inst|REG_B\(0) & (\inst|REG_B\(1) & \inst|reggy_rtl_0|auto_generated|ram_block1a1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	datab => \inst|REG_B\(0),
	datac => \inst|REG_B\(1),
	datad => \inst|reggy_rtl_0|auto_generated|ram_block1a1\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi1|s1|Cout~0_combout\);

-- Location: LCCOMB_X14_Y9_N26
\inst|alu1|unidad_aritmetica|mult|inter[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|inter\(2) = (\inst|reggy_rtl_0|auto_generated|ram_block1a2\ & \inst|REG_B\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|reggy_rtl_0|auto_generated|ram_block1a2\,
	datad => \inst|REG_B\(0),
	combout => \inst|alu1|unidad_aritmetica|mult|inter\(2));

-- Location: LCCOMB_X14_Y9_N2
\inst|alu1|unidad_aritmetica|mult|multi1|s2|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi1|s2|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi1|s1|Cout~0_combout\ & ((\inst|alu1|unidad_aritmetica|mult|inter\(2)) # ((\inst|REG_B\(1) & \inst|reggy_rtl_0|auto_generated|ram_block1a1\)))) # 
-- (!\inst|alu1|unidad_aritmetica|mult|multi1|s1|Cout~0_combout\ & (\inst|REG_B\(1) & (\inst|alu1|unidad_aritmetica|mult|inter\(2) & \inst|reggy_rtl_0|auto_generated|ram_block1a1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|multi1|s1|Cout~0_combout\,
	datab => \inst|REG_B\(1),
	datac => \inst|alu1|unidad_aritmetica|mult|inter\(2),
	datad => \inst|reggy_rtl_0|auto_generated|ram_block1a1\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi1|s2|Cout~0_combout\);

-- Location: LCCOMB_X14_Y9_N20
\inst|alu1|unidad_aritmetica|mult|inter[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|inter\(3) = (\inst|REG_B\(0) & \inst|reggy_rtl_0|auto_generated|ram_block1a3\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|REG_B\(0),
	datad => \inst|reggy_rtl_0|auto_generated|ram_block1a3\,
	combout => \inst|alu1|unidad_aritmetica|mult|inter\(3));

-- Location: LCCOMB_X14_Y9_N16
\inst|alu1|unidad_aritmetica|mult|multi1|s3|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi1|s3|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi1|s2|Cout~0_combout\ & ((\inst|alu1|unidad_aritmetica|mult|inter\(3)) # ((\inst|reggy_rtl_0|auto_generated|ram_block1a2\ & \inst|REG_B\(1))))) # 
-- (!\inst|alu1|unidad_aritmetica|mult|multi1|s2|Cout~0_combout\ & (\inst|reggy_rtl_0|auto_generated|ram_block1a2\ & (\inst|REG_B\(1) & \inst|alu1|unidad_aritmetica|mult|inter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy_rtl_0|auto_generated|ram_block1a2\,
	datab => \inst|alu1|unidad_aritmetica|mult|multi1|s2|Cout~0_combout\,
	datac => \inst|REG_B\(1),
	datad => \inst|alu1|unidad_aritmetica|mult|inter\(3),
	combout => \inst|alu1|unidad_aritmetica|mult|multi1|s3|Cout~0_combout\);

-- Location: LCCOMB_X14_Y9_N14
\inst|alu1|unidad_aritmetica|mult|multi1|s4|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi1|s4|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|mult|inter\(4) & ((\inst|alu1|unidad_aritmetica|mult|multi1|s3|Cout~0_combout\) # ((\inst|reggy_rtl_0|auto_generated|ram_block1a3\ & \inst|REG_B\(1))))) # 
-- (!\inst|alu1|unidad_aritmetica|mult|inter\(4) & (\inst|reggy_rtl_0|auto_generated|ram_block1a3\ & (\inst|REG_B\(1) & \inst|alu1|unidad_aritmetica|mult|multi1|s3|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|inter\(4),
	datab => \inst|reggy_rtl_0|auto_generated|ram_block1a3\,
	datac => \inst|REG_B\(1),
	datad => \inst|alu1|unidad_aritmetica|mult|multi1|s3|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi1|s4|Cout~0_combout\);

-- Location: LCCOMB_X14_Y9_N22
\inst|alu1|unidad_aritmetica|mult|multi1|s5|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi1|s5|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi1|s4|Cout~0_combout\ & (\inst|REG_B\(1) & \inst|reggy_rtl_0|auto_generated|ram_block1a4\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|unidad_aritmetica|mult|multi1|s4|Cout~0_combout\,
	datac => \inst|REG_B\(1),
	datad => \inst|reggy_rtl_0|auto_generated|ram_block1a4\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi1|s5|Cout~0_combout\);

-- Location: LCCOMB_X14_Y9_N10
\inst|alu1|unidad_aritmetica|mult|multi1|s2|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi1|s2|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|mult|multi1|s1|Cout~0_combout\ $ (\inst|alu1|unidad_aritmetica|mult|inter\(2) $ (((\inst|REG_B\(1) & \inst|reggy_rtl_0|auto_generated|ram_block1a1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|multi1|s1|Cout~0_combout\,
	datab => \inst|REG_B\(1),
	datac => \inst|alu1|unidad_aritmetica|mult|inter\(2),
	datad => \inst|reggy_rtl_0|auto_generated|ram_block1a1\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi1|s2|Suma~0_combout\);

-- Location: LCCOMB_X14_Y9_N28
\inst|alu1|unidad_aritmetica|mult|multi2|s2|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi2|s2|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi1|s2|Suma~0_combout\ & (\inst|REG_B\(2) & \inst|reggy_rtl_0|auto_generated|ram_block1a0~portbdataout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|multi1|s2|Suma~0_combout\,
	datac => \inst|REG_B\(2),
	datad => \inst|reggy_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi2|s2|Cout~0_combout\);

-- Location: LCCOMB_X14_Y9_N6
\inst|alu1|unidad_aritmetica|mult|multi2|s3|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi2|s3|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi1|s3|Suma~0_combout\ & ((\inst|alu1|unidad_aritmetica|mult|multi2|s2|Cout~0_combout\) # ((\inst|REG_B\(2) & 
-- \inst|reggy_rtl_0|auto_generated|ram_block1a1\)))) # (!\inst|alu1|unidad_aritmetica|mult|multi1|s3|Suma~0_combout\ & (\inst|REG_B\(2) & (\inst|reggy_rtl_0|auto_generated|ram_block1a1\ & \inst|alu1|unidad_aritmetica|mult|multi2|s2|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(2),
	datab => \inst|reggy_rtl_0|auto_generated|ram_block1a1\,
	datac => \inst|alu1|unidad_aritmetica|mult|multi1|s3|Suma~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|mult|multi2|s2|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi2|s3|Cout~0_combout\);

-- Location: LCCOMB_X14_Y9_N24
\inst|alu1|unidad_aritmetica|mult|multi2|s4|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi2|s4|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi1|s4|Suma~0_combout\ & ((\inst|alu1|unidad_aritmetica|mult|multi2|s3|Cout~0_combout\) # ((\inst|REG_B\(2) & 
-- \inst|reggy_rtl_0|auto_generated|ram_block1a2\)))) # (!\inst|alu1|unidad_aritmetica|mult|multi1|s4|Suma~0_combout\ & (\inst|REG_B\(2) & (\inst|reggy_rtl_0|auto_generated|ram_block1a2\ & \inst|alu1|unidad_aritmetica|mult|multi2|s3|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(2),
	datab => \inst|alu1|unidad_aritmetica|mult|multi1|s4|Suma~0_combout\,
	datac => \inst|reggy_rtl_0|auto_generated|ram_block1a2\,
	datad => \inst|alu1|unidad_aritmetica|mult|multi2|s3|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi2|s4|Cout~0_combout\);

-- Location: LCCOMB_X14_Y9_N0
\inst|alu1|unidad_aritmetica|mult|multi1|s5|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi1|s5|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|mult|multi1|s4|Cout~0_combout\ $ (((\inst|REG_B\(1) & \inst|reggy_rtl_0|auto_generated|ram_block1a4\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|unidad_aritmetica|mult|multi1|s4|Cout~0_combout\,
	datac => \inst|REG_B\(1),
	datad => \inst|reggy_rtl_0|auto_generated|ram_block1a4\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi1|s5|Suma~0_combout\);

-- Location: LCCOMB_X14_Y10_N28
\inst|alu1|unidad_aritmetica|mult|multi2|s5|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi2|s5|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi2|s4|Cout~0_combout\ & ((\inst|alu1|unidad_aritmetica|mult|multi1|s5|Suma~0_combout\) # ((\inst|reggy_rtl_0|auto_generated|ram_block1a3\ & 
-- \inst|REG_B\(2))))) # (!\inst|alu1|unidad_aritmetica|mult|multi2|s4|Cout~0_combout\ & (\inst|reggy_rtl_0|auto_generated|ram_block1a3\ & (\inst|REG_B\(2) & \inst|alu1|unidad_aritmetica|mult|multi1|s5|Suma~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy_rtl_0|auto_generated|ram_block1a3\,
	datab => \inst|REG_B\(2),
	datac => \inst|alu1|unidad_aritmetica|mult|multi2|s4|Cout~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|mult|multi1|s5|Suma~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi2|s5|Cout~0_combout\);

-- Location: LCCOMB_X14_Y10_N10
\inst|alu1|unidad_aritmetica|mult|multi2|s6|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi2|s6|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi1|s5|Cout~0_combout\ & ((\inst|alu1|unidad_aritmetica|mult|multi2|s5|Cout~0_combout\) # ((\inst|REG_B\(2) & 
-- \inst|reggy_rtl_0|auto_generated|ram_block1a4\)))) # (!\inst|alu1|unidad_aritmetica|mult|multi1|s5|Cout~0_combout\ & (\inst|REG_B\(2) & (\inst|reggy_rtl_0|auto_generated|ram_block1a4\ & \inst|alu1|unidad_aritmetica|mult|multi2|s5|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|multi1|s5|Cout~0_combout\,
	datab => \inst|REG_B\(2),
	datac => \inst|reggy_rtl_0|auto_generated|ram_block1a4\,
	datad => \inst|alu1|unidad_aritmetica|mult|multi2|s5|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi2|s6|Cout~0_combout\);

-- Location: LCCOMB_X14_Y10_N18
\inst|alu1|unidad_aritmetica|mult|multi2|s6|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi2|s6|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|mult|multi1|s5|Cout~0_combout\ $ (\inst|alu1|unidad_aritmetica|mult|multi2|s5|Cout~0_combout\ $ (((\inst|REG_B\(2) & 
-- \inst|reggy_rtl_0|auto_generated|ram_block1a4\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|multi1|s5|Cout~0_combout\,
	datab => \inst|REG_B\(2),
	datac => \inst|reggy_rtl_0|auto_generated|ram_block1a4\,
	datad => \inst|alu1|unidad_aritmetica|mult|multi2|s5|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi2|s6|Suma~0_combout\);

-- Location: LCCOMB_X14_Y10_N0
\inst|alu1|unidad_aritmetica|mult|multi2|s5|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi2|s5|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|mult|multi2|s4|Cout~0_combout\ $ (\inst|alu1|unidad_aritmetica|mult|multi1|s5|Suma~0_combout\ $ (((\inst|reggy_rtl_0|auto_generated|ram_block1a3\ & 
-- \inst|REG_B\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy_rtl_0|auto_generated|ram_block1a3\,
	datab => \inst|REG_B\(2),
	datac => \inst|alu1|unidad_aritmetica|mult|multi2|s4|Cout~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|mult|multi1|s5|Suma~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi2|s5|Suma~0_combout\);

-- Location: LCCOMB_X14_Y10_N26
\inst|alu1|unidad_aritmetica|mult|multi3|s5|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi3|s5|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi3|s4|Cout~0_combout\ & ((\inst|alu1|unidad_aritmetica|mult|multi2|s5|Suma~0_combout\) # ((\inst|reggy_rtl_0|auto_generated|ram_block1a2\ & 
-- \inst|REG_B\(3))))) # (!\inst|alu1|unidad_aritmetica|mult|multi3|s4|Cout~0_combout\ & (\inst|reggy_rtl_0|auto_generated|ram_block1a2\ & (\inst|REG_B\(3) & \inst|alu1|unidad_aritmetica|mult|multi2|s5|Suma~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy_rtl_0|auto_generated|ram_block1a2\,
	datab => \inst|REG_B\(3),
	datac => \inst|alu1|unidad_aritmetica|mult|multi3|s4|Cout~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|mult|multi2|s5|Suma~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi3|s5|Cout~0_combout\);

-- Location: LCCOMB_X14_Y10_N24
\inst|alu1|unidad_aritmetica|mult|multi3|s6|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi3|s6|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi2|s6|Suma~0_combout\ & ((\inst|alu1|unidad_aritmetica|mult|multi3|s5|Cout~0_combout\) # ((\inst|reggy_rtl_0|auto_generated|ram_block1a3\ & 
-- \inst|REG_B\(3))))) # (!\inst|alu1|unidad_aritmetica|mult|multi2|s6|Suma~0_combout\ & (\inst|reggy_rtl_0|auto_generated|ram_block1a3\ & (\inst|alu1|unidad_aritmetica|mult|multi3|s5|Cout~0_combout\ & \inst|REG_B\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy_rtl_0|auto_generated|ram_block1a3\,
	datab => \inst|alu1|unidad_aritmetica|mult|multi2|s6|Suma~0_combout\,
	datac => \inst|alu1|unidad_aritmetica|mult|multi3|s5|Cout~0_combout\,
	datad => \inst|REG_B\(3),
	combout => \inst|alu1|unidad_aritmetica|mult|multi3|s6|Cout~0_combout\);

-- Location: LCCOMB_X14_Y10_N8
\inst|alu1|unidad_aritmetica|mult|multi3|s7|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi3|s7|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|mult|multi2|s6|Cout~0_combout\ $ (\inst|alu1|unidad_aritmetica|mult|multi3|s6|Cout~0_combout\ $ (((\inst|REG_B\(3) & 
-- \inst|reggy_rtl_0|auto_generated|ram_block1a4\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|multi2|s6|Cout~0_combout\,
	datab => \inst|REG_B\(3),
	datac => \inst|reggy_rtl_0|auto_generated|ram_block1a4\,
	datad => \inst|alu1|unidad_aritmetica|mult|multi3|s6|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi3|s7|Suma~0_combout\);

-- Location: LCCOMB_X13_Y9_N24
\inst|alu1|unidad_aritmetica|mult|multi3|s4|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi3|s4|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|mult|multi3|s3|Cout~0_combout\ $ (\inst|alu1|unidad_aritmetica|mult|multi2|s4|Suma~0_combout\ $ (((\inst|REG_B\(3) & 
-- \inst|reggy_rtl_0|auto_generated|ram_block1a1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|multi3|s3|Cout~0_combout\,
	datab => \inst|alu1|unidad_aritmetica|mult|multi2|s4|Suma~0_combout\,
	datac => \inst|REG_B\(3),
	datad => \inst|reggy_rtl_0|auto_generated|ram_block1a1\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi3|s4|Suma~0_combout\);

-- Location: LCCOMB_X16_Y9_N10
\inst|alu1|unidad_aritmetica|mult|multi4|s4|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi4|s4|Cout~0_combout\ = (\inst|REG_B\(1) & (\inst|reggy_rtl_0|auto_generated|ram_block1a0~portbdataout\ & \inst|alu1|unidad_aritmetica|mult|multi3|s4|Suma~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|REG_B\(1),
	datac => \inst|reggy_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	datad => \inst|alu1|unidad_aritmetica|mult|multi3|s4|Suma~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi4|s4|Cout~0_combout\);

-- Location: LCCOMB_X14_Y10_N2
\inst|alu1|unidad_aritmetica|mult|multi4|s5|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi4|s5|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi3|s5|Suma~0_combout\ & ((\inst|alu1|unidad_aritmetica|mult|multi4|s4|Cout~0_combout\) # ((\inst|reggy_rtl_0|auto_generated|ram_block1a1\ & 
-- \inst|REG_B\(1))))) # (!\inst|alu1|unidad_aritmetica|mult|multi3|s5|Suma~0_combout\ & (\inst|reggy_rtl_0|auto_generated|ram_block1a1\ & (\inst|REG_B\(1) & \inst|alu1|unidad_aritmetica|mult|multi4|s4|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy_rtl_0|auto_generated|ram_block1a1\,
	datab => \inst|REG_B\(1),
	datac => \inst|alu1|unidad_aritmetica|mult|multi3|s5|Suma~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|mult|multi4|s4|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi4|s5|Cout~0_combout\);

-- Location: LCCOMB_X14_Y10_N20
\inst|alu1|unidad_aritmetica|mult|multi4|s6|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi4|s6|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi3|s6|Suma~0_combout\ & ((\inst|alu1|unidad_aritmetica|mult|multi4|s5|Cout~0_combout\) # ((\inst|reggy_rtl_0|auto_generated|ram_block1a2\ & 
-- \inst|REG_B\(1))))) # (!\inst|alu1|unidad_aritmetica|mult|multi3|s6|Suma~0_combout\ & (\inst|reggy_rtl_0|auto_generated|ram_block1a2\ & (\inst|REG_B\(1) & \inst|alu1|unidad_aritmetica|mult|multi4|s5|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy_rtl_0|auto_generated|ram_block1a2\,
	datab => \inst|REG_B\(1),
	datac => \inst|alu1|unidad_aritmetica|mult|multi3|s6|Suma~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|mult|multi4|s5|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi4|s6|Cout~0_combout\);

-- Location: LCCOMB_X14_Y10_N16
\inst|alu1|unidad_aritmetica|mult|multi4|s7|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi4|s7|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|mult|multi3|s7|Suma~0_combout\ $ (\inst|alu1|unidad_aritmetica|mult|multi4|s6|Cout~0_combout\ $ (((\inst|reggy_rtl_0|auto_generated|ram_block1a3\ & 
-- \inst|REG_B\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy_rtl_0|auto_generated|ram_block1a3\,
	datab => \inst|alu1|unidad_aritmetica|mult|multi3|s7|Suma~0_combout\,
	datac => \inst|REG_B\(1),
	datad => \inst|alu1|unidad_aritmetica|mult|multi4|s6|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi4|s7|Suma~0_combout\);

-- Location: LCCOMB_X16_Y10_N20
\inst|alu1|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux2~0_combout\ = (\inst|alu1|Mux0~0_combout\) # ((\inst|alu1|sel_aux\(0) & (!\inst|alu1|unidad_aritmetica|divi|LessThan0~1_combout\)) # (!\inst|alu1|sel_aux\(0) & ((\inst|alu1|unidad_aritmetica|mult|multi4|s7|Suma~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux0~0_combout\,
	datab => \inst|alu1|unidad_aritmetica|divi|LessThan0~1_combout\,
	datac => \inst|alu1|unidad_aritmetica|mult|multi4|s7|Suma~0_combout\,
	datad => \inst|alu1|sel_aux\(0),
	combout => \inst|alu1|Mux2~0_combout\);

-- Location: FF_X16_Y10_N21
\inst|alu1|R[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|alu1|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|R\(7));

-- Location: LCCOMB_X16_Y10_N6
\inst|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector3~0_combout\ = (\inst|pr_state.state2~q\ & \inst|alu1|R\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pr_state.state2~q\,
	datad => \inst|alu1|R\(7),
	combout => \inst|Selector3~0_combout\);

-- Location: M9K_X15_Y11_N0
\inst|reggy_rtl_0|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "datapath:inst|altsyncram:reggy_rtl_0|altsyncram_kod1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 3,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 36,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 7,
	port_a_logical_ram_depth => 11,
	port_a_logical_ram_width => 10,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 3,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 36,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 7,
	port_b_logical_ram_depth => 11,
	port_b_logical_ram_width => 10,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \inst|reggy~16_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	clk1 => \clk~inputclkctrl_outclk\,
	ena0 => \inst|reggy~16_combout\,
	ena1 => \inst|REG_A[0]~0_combout\,
	portadatain => \inst|reggy_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \inst|reggy_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \inst|reggy_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst|reggy_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X14_Y10_N14
\inst|alu1|unidad_aritmetica|mult|multi3|s6|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi3|s6|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|mult|multi2|s6|Suma~0_combout\ $ (\inst|alu1|unidad_aritmetica|mult|multi3|s5|Cout~0_combout\ $ (((\inst|reggy_rtl_0|auto_generated|ram_block1a3\ & 
-- \inst|REG_B\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy_rtl_0|auto_generated|ram_block1a3\,
	datab => \inst|alu1|unidad_aritmetica|mult|multi2|s6|Suma~0_combout\,
	datac => \inst|alu1|unidad_aritmetica|mult|multi3|s5|Cout~0_combout\,
	datad => \inst|REG_B\(3),
	combout => \inst|alu1|unidad_aritmetica|mult|multi3|s6|Suma~0_combout\);

-- Location: LCCOMB_X14_Y10_N30
\inst|alu1|unidad_aritmetica|mult|multi4|s6|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi4|s6|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|mult|multi3|s6|Suma~0_combout\ $ (\inst|alu1|unidad_aritmetica|mult|multi4|s5|Cout~0_combout\ $ (((\inst|reggy_rtl_0|auto_generated|ram_block1a2\ & 
-- \inst|REG_B\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy_rtl_0|auto_generated|ram_block1a2\,
	datab => \inst|REG_B\(1),
	datac => \inst|alu1|unidad_aritmetica|mult|multi3|s6|Suma~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|mult|multi4|s5|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi4|s6|Suma~0_combout\);

-- Location: LCCOMB_X17_Y10_N12
\inst|alu1|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux3~0_combout\ = (\inst|alu1|Mux0~0_combout\) # ((!\inst|alu1|sel_aux\(0) & (\inst|alu1|sel_aux\(1) & \inst|alu1|unidad_aritmetica|mult|multi4|s6|Suma~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|sel_aux\(0),
	datab => \inst|alu1|sel_aux\(1),
	datac => \inst|alu1|unidad_aritmetica|mult|multi4|s6|Suma~0_combout\,
	datad => \inst|alu1|Mux0~0_combout\,
	combout => \inst|alu1|Mux3~0_combout\);

-- Location: LCCOMB_X16_Y11_N14
\inst|alu1|unidad_aritmetica|divi|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add0~0_combout\ = (\inst|reggy_rtl_0|auto_generated|ram_block1a7\ & ((GND) # (!\inst|REG_B\(0)))) # (!\inst|reggy_rtl_0|auto_generated|ram_block1a7\ & (\inst|REG_B\(0) $ (GND)))
-- \inst|alu1|unidad_aritmetica|divi|Add0~1\ = CARRY((\inst|reggy_rtl_0|auto_generated|ram_block1a7\) # (!\inst|REG_B\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy_rtl_0|auto_generated|ram_block1a7\,
	datab => \inst|REG_B\(0),
	datad => VCC,
	combout => \inst|alu1|unidad_aritmetica|divi|Add0~0_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add0~1\);

-- Location: LCCOMB_X16_Y11_N8
\inst|alu1|unidad_aritmetica|divi|remainderr~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|remainderr~3_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan0~0_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add0~0_combout\ & ((\inst|reggy_rtl_0|auto_generated|ram_block1a7\) # (!\inst|REG_B\(0))))) # 
-- (!\inst|alu1|unidad_aritmetica|divi|LessThan0~0_combout\ & (((\inst|reggy_rtl_0|auto_generated|ram_block1a7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|LessThan0~0_combout\,
	datab => \inst|REG_B\(0),
	datac => \inst|alu1|unidad_aritmetica|divi|Add0~0_combout\,
	datad => \inst|reggy_rtl_0|auto_generated|ram_block1a7\,
	combout => \inst|alu1|unidad_aritmetica|divi|remainderr~3_combout\);

-- Location: LCCOMB_X16_Y11_N16
\inst|alu1|unidad_aritmetica|divi|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add0~2_combout\ = (\inst|REG_B\(1) & ((\inst|alu1|unidad_aritmetica|divi|Add0~1\) # (GND))) # (!\inst|REG_B\(1) & (!\inst|alu1|unidad_aritmetica|divi|Add0~1\))
-- \inst|alu1|unidad_aritmetica|divi|Add0~3\ = CARRY((\inst|REG_B\(1)) # (!\inst|alu1|unidad_aritmetica|divi|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|REG_B\(1),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add0~1\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add0~2_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add0~3\);

-- Location: LCCOMB_X16_Y11_N18
\inst|alu1|unidad_aritmetica|divi|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add0~4_combout\ = (\inst|REG_B\(2) & (!\inst|alu1|unidad_aritmetica|divi|Add0~3\ & VCC)) # (!\inst|REG_B\(2) & (\inst|alu1|unidad_aritmetica|divi|Add0~3\ $ (GND)))
-- \inst|alu1|unidad_aritmetica|divi|Add0~5\ = CARRY((!\inst|REG_B\(2) & !\inst|alu1|unidad_aritmetica|divi|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(2),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add0~3\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add0~4_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add0~5\);

-- Location: LCCOMB_X16_Y11_N20
\inst|alu1|unidad_aritmetica|divi|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add0~6_combout\ = (\inst|REG_B\(3) & ((\inst|alu1|unidad_aritmetica|divi|Add0~5\) # (GND))) # (!\inst|REG_B\(3) & (!\inst|alu1|unidad_aritmetica|divi|Add0~5\))
-- \inst|alu1|unidad_aritmetica|divi|Add0~7\ = CARRY((\inst|REG_B\(3)) # (!\inst|alu1|unidad_aritmetica|divi|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(3),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add0~5\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add0~6_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add0~7\);

-- Location: LCCOMB_X16_Y11_N22
\inst|alu1|unidad_aritmetica|divi|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add0~8_combout\ = (\inst|REG_B\(1) & (!\inst|alu1|unidad_aritmetica|divi|Add0~7\ & VCC)) # (!\inst|REG_B\(1) & (\inst|alu1|unidad_aritmetica|divi|Add0~7\ $ (GND)))
-- \inst|alu1|unidad_aritmetica|divi|Add0~9\ = CARRY((!\inst|REG_B\(1) & !\inst|alu1|unidad_aritmetica|divi|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|REG_B\(1),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add0~7\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add0~8_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add0~9\);

-- Location: LCCOMB_X16_Y11_N24
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

-- Location: LCCOMB_X16_Y11_N26
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

-- Location: LCCOMB_X16_Y11_N0
\inst|alu1|unidad_aritmetica|divi|remainderr~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|remainderr~4_combout\ = (!\inst|alu1|unidad_aritmetica|divi|LessThan0~1_combout\ & ((\inst|alu1|unidad_aritmetica|divi|Add0~8_combout\) # ((\inst|alu1|unidad_aritmetica|divi|Add0~12_combout\) # 
-- (\inst|alu1|unidad_aritmetica|divi|Add0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add0~8_combout\,
	datab => \inst|alu1|unidad_aritmetica|divi|LessThan0~1_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|Add0~12_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|Add0~10_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|remainderr~4_combout\);

-- Location: LCCOMB_X16_Y11_N6
\inst|alu1|unidad_aritmetica|divi|remainderr~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|remainderr~1_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan0~0_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add0~4_combout\ & ((\inst|reggy_rtl_0|auto_generated|ram_block1a7\) # (!\inst|REG_B\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy_rtl_0|auto_generated|ram_block1a7\,
	datab => \inst|alu1|unidad_aritmetica|divi|LessThan0~0_combout\,
	datac => \inst|REG_B\(0),
	datad => \inst|alu1|unidad_aritmetica|divi|Add0~4_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|remainderr~1_combout\);

-- Location: LCCOMB_X14_Y11_N28
\inst|alu1|unidad_aritmetica|divi|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan1~0_combout\ = (\inst|REG_B\(0) & !\inst|reggy_rtl_0|auto_generated|ram_block1a6\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|REG_B\(0),
	datad => \inst|reggy_rtl_0|auto_generated|ram_block1a6\,
	combout => \inst|alu1|unidad_aritmetica|divi|LessThan1~0_combout\);

-- Location: LCCOMB_X16_Y11_N4
\inst|alu1|unidad_aritmetica|divi|remainderr~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|remainderr~0_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan0~0_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add0~2_combout\ & ((\inst|reggy_rtl_0|auto_generated|ram_block1a7\) # (!\inst|REG_B\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy_rtl_0|auto_generated|ram_block1a7\,
	datab => \inst|alu1|unidad_aritmetica|divi|LessThan0~0_combout\,
	datac => \inst|REG_B\(0),
	datad => \inst|alu1|unidad_aritmetica|divi|Add0~2_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|remainderr~0_combout\);

-- Location: LCCOMB_X16_Y11_N12
\inst|alu1|unidad_aritmetica|divi|remainderr~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|remainderr~2_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan0~0_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add0~6_combout\ & ((\inst|reggy_rtl_0|auto_generated|ram_block1a7\) # (!\inst|REG_B\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy_rtl_0|auto_generated|ram_block1a7\,
	datab => \inst|alu1|unidad_aritmetica|divi|LessThan0~0_combout\,
	datac => \inst|REG_B\(0),
	datad => \inst|alu1|unidad_aritmetica|divi|Add0~6_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|remainderr~2_combout\);

-- Location: LCCOMB_X16_Y11_N10
\inst|alu1|unidad_aritmetica|divi|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan1~1_combout\ = (!\inst|alu1|unidad_aritmetica|divi|remainderr~1_combout\ & (\inst|alu1|unidad_aritmetica|divi|LessThan1~0_combout\ & (!\inst|alu1|unidad_aritmetica|divi|remainderr~0_combout\ & 
-- !\inst|alu1|unidad_aritmetica|divi|remainderr~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|remainderr~1_combout\,
	datab => \inst|alu1|unidad_aritmetica|divi|LessThan1~0_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|remainderr~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|remainderr~2_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|LessThan1~1_combout\);

-- Location: LCCOMB_X14_Y11_N30
\inst|alu1|unidad_aritmetica|divi|LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan1~2_combout\ = (!\inst|alu1|unidad_aritmetica|divi|remainderr~4_combout\ & (((!\inst|alu1|unidad_aritmetica|divi|remainderr~3_combout\ & \inst|alu1|unidad_aritmetica|divi|LessThan1~1_combout\)) # 
-- (!\inst|alu1|unidad_aritmetica|divi|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|remainderr~3_combout\,
	datab => \inst|alu1|unidad_aritmetica|divi|LessThan0~0_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|remainderr~4_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan1~1_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|LessThan1~2_combout\);

-- Location: LCCOMB_X17_Y10_N8
\inst|alu1|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux3~1_combout\ = (\inst|alu1|Mux3~0_combout\) # ((\inst|alu1|sel_aux\(0) & ((!\inst|alu1|unidad_aritmetica|divi|LessThan1~2_combout\) # (!\inst|alu1|sel_aux\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux3~0_combout\,
	datab => \inst|alu1|sel_aux\(1),
	datac => \inst|alu1|unidad_aritmetica|divi|LessThan1~2_combout\,
	datad => \inst|alu1|sel_aux\(0),
	combout => \inst|alu1|Mux3~1_combout\);

-- Location: FF_X17_Y10_N9
\inst|alu1|R[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|alu1|Mux3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|R\(6));

-- Location: LCCOMB_X16_Y10_N4
\inst|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector4~0_combout\ = (\inst|pr_state.state2~q\ & \inst|alu1|R\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pr_state.state2~q\,
	datac => \inst|alu1|R\(6),
	combout => \inst|Selector4~0_combout\);

-- Location: LCCOMB_X16_Y9_N8
\inst|alu1|unidad_aritmetica|mult|inter[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|inter\(4) = (\inst|REG_B\(0) & \inst|reggy_rtl_0|auto_generated|ram_block1a4\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(0),
	datad => \inst|reggy_rtl_0|auto_generated|ram_block1a4\,
	combout => \inst|alu1|unidad_aritmetica|mult|inter\(4));

-- Location: LCCOMB_X14_Y9_N18
\inst|alu1|unidad_aritmetica|mult|multi1|s4|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi1|s4|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|mult|inter\(4) $ (\inst|alu1|unidad_aritmetica|mult|multi1|s3|Cout~0_combout\ $ (((\inst|reggy_rtl_0|auto_generated|ram_block1a3\ & \inst|REG_B\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|inter\(4),
	datab => \inst|reggy_rtl_0|auto_generated|ram_block1a3\,
	datac => \inst|REG_B\(1),
	datad => \inst|alu1|unidad_aritmetica|mult|multi1|s3|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi1|s4|Suma~0_combout\);

-- Location: LCCOMB_X14_Y9_N8
\inst|alu1|unidad_aritmetica|mult|multi2|s4|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi2|s4|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|mult|multi1|s4|Suma~0_combout\ $ (\inst|alu1|unidad_aritmetica|mult|multi2|s3|Cout~0_combout\ $ (((\inst|REG_B\(2) & 
-- \inst|reggy_rtl_0|auto_generated|ram_block1a2\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(2),
	datab => \inst|alu1|unidad_aritmetica|mult|multi1|s4|Suma~0_combout\,
	datac => \inst|reggy_rtl_0|auto_generated|ram_block1a2\,
	datad => \inst|alu1|unidad_aritmetica|mult|multi2|s3|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi2|s4|Suma~0_combout\);

-- Location: LCCOMB_X13_Y9_N2
\inst|alu1|unidad_aritmetica|mult|multi3|s4|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi3|s4|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi3|s3|Cout~0_combout\ & ((\inst|alu1|unidad_aritmetica|mult|multi2|s4|Suma~0_combout\) # ((\inst|REG_B\(3) & 
-- \inst|reggy_rtl_0|auto_generated|ram_block1a1\)))) # (!\inst|alu1|unidad_aritmetica|mult|multi3|s3|Cout~0_combout\ & (\inst|alu1|unidad_aritmetica|mult|multi2|s4|Suma~0_combout\ & (\inst|REG_B\(3) & \inst|reggy_rtl_0|auto_generated|ram_block1a1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|multi3|s3|Cout~0_combout\,
	datab => \inst|alu1|unidad_aritmetica|mult|multi2|s4|Suma~0_combout\,
	datac => \inst|REG_B\(3),
	datad => \inst|reggy_rtl_0|auto_generated|ram_block1a1\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi3|s4|Cout~0_combout\);

-- Location: LCCOMB_X14_Y10_N4
\inst|alu1|unidad_aritmetica|mult|multi3|s5|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi3|s5|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|mult|multi3|s4|Cout~0_combout\ $ (\inst|alu1|unidad_aritmetica|mult|multi2|s5|Suma~0_combout\ $ (((\inst|reggy_rtl_0|auto_generated|ram_block1a2\ & 
-- \inst|REG_B\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy_rtl_0|auto_generated|ram_block1a2\,
	datab => \inst|REG_B\(3),
	datac => \inst|alu1|unidad_aritmetica|mult|multi3|s4|Cout~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|mult|multi2|s5|Suma~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi3|s5|Suma~0_combout\);

-- Location: LCCOMB_X16_Y10_N14
\inst|alu1|unidad_aritmetica|mult|multi4|s5|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi4|s5|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|mult|multi3|s5|Suma~0_combout\ $ (\inst|alu1|unidad_aritmetica|mult|multi4|s4|Cout~0_combout\ $ (((\inst|reggy_rtl_0|auto_generated|ram_block1a1\ & 
-- \inst|REG_B\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy_rtl_0|auto_generated|ram_block1a1\,
	datab => \inst|alu1|unidad_aritmetica|mult|multi3|s5|Suma~0_combout\,
	datac => \inst|alu1|unidad_aritmetica|mult|multi4|s4|Cout~0_combout\,
	datad => \inst|REG_B\(1),
	combout => \inst|alu1|unidad_aritmetica|mult|multi4|s5|Suma~0_combout\);

-- Location: LCCOMB_X17_Y10_N28
\inst|alu1|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux4~1_combout\ = (!\inst|alu1|sel_aux\(0) & ((\inst|alu1|Mux4~0_combout\) # ((\inst|alu1|sel_aux\(1) & \inst|alu1|unidad_aritmetica|mult|multi4|s5|Suma~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|sel_aux\(0),
	datab => \inst|alu1|sel_aux\(1),
	datac => \inst|alu1|Mux4~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|mult|multi4|s5|Suma~0_combout\,
	combout => \inst|alu1|Mux4~1_combout\);

-- Location: LCCOMB_X17_Y10_N18
\inst|alu1|Mux4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux4~2_combout\ = (\inst|alu1|Mux4~1_combout\) # ((\inst|alu1|Mux0~0_combout\) # ((!\inst|alu1|unidad_aritmetica|divi|LessThan2~9_combout\ & \inst|alu1|Mux8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|LessThan2~9_combout\,
	datab => \inst|alu1|Mux4~1_combout\,
	datac => \inst|alu1|Mux8~0_combout\,
	datad => \inst|alu1|Mux0~0_combout\,
	combout => \inst|alu1|Mux4~2_combout\);

-- Location: FF_X17_Y10_N19
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

-- Location: LCCOMB_X16_Y10_N26
\inst|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector5~0_combout\ = (\inst|pr_state.state2~q\ & \inst|alu1|R\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pr_state.state2~q\,
	datad => \inst|alu1|R\(5),
	combout => \inst|Selector5~0_combout\);

-- Location: LCCOMB_X17_Y11_N0
\inst|alu1|unidad_aritmetica|divi|LessThan2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan2~0_combout\ = (\inst|REG_B\(0) & (!\inst|reggy_rtl_0|auto_generated|ram_block1a6\ & !\inst|reggy_rtl_0|auto_generated|ram_block1a5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(0),
	datab => \inst|reggy_rtl_0|auto_generated|ram_block1a6\,
	datad => \inst|reggy_rtl_0|auto_generated|ram_block1a5\,
	combout => \inst|alu1|unidad_aritmetica|divi|LessThan2~0_combout\);

-- Location: LCCOMB_X17_Y11_N8
\inst|alu1|unidad_aritmetica|divi|LessThan2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan2~4_combout\ = (\inst|REG_B\(2) & ((\inst|alu1|unidad_aritmetica|divi|LessThan2~0_combout\) # (!\inst|reggy_rtl_0|auto_generated|ram_block1a7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|REG_B\(2),
	datac => \inst|reggy_rtl_0|auto_generated|ram_block1a7\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan2~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|LessThan2~4_combout\);

-- Location: LCCOMB_X16_Y11_N28
\inst|alu1|unidad_aritmetica|divi|LessThan2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan2~2_combout\ = (!\inst|alu1|unidad_aritmetica|divi|Add0~2_combout\ & (!\inst|alu1|unidad_aritmetica|divi|Add0~0_combout\ & !\inst|alu1|unidad_aritmetica|divi|Add0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add0~2_combout\,
	datab => \inst|alu1|unidad_aritmetica|divi|Add0~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|Add0~4_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|LessThan2~2_combout\);

-- Location: LCCOMB_X16_Y11_N30
\inst|alu1|unidad_aritmetica|divi|LessThan2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan2~1_combout\ = (!\inst|alu1|unidad_aritmetica|divi|Add0~12_combout\ & (!\inst|alu1|unidad_aritmetica|divi|Add0~6_combout\ & (!\inst|alu1|unidad_aritmetica|divi|Add0~8_combout\ & 
-- !\inst|alu1|unidad_aritmetica|divi|Add0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add0~12_combout\,
	datab => \inst|alu1|unidad_aritmetica|divi|Add0~6_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|Add0~8_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|Add0~10_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|LessThan2~1_combout\);

-- Location: LCCOMB_X17_Y11_N30
\inst|alu1|unidad_aritmetica|divi|LessThan2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan2~3_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan2~0_combout\ & (((\inst|alu1|unidad_aritmetica|divi|LessThan2~2_combout\ & \inst|alu1|unidad_aritmetica|divi|LessThan2~1_combout\)) # 
-- (!\inst|reggy_rtl_0|auto_generated|ram_block1a7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy_rtl_0|auto_generated|ram_block1a7\,
	datab => \inst|alu1|unidad_aritmetica|divi|LessThan2~0_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|LessThan2~2_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan2~1_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|LessThan2~3_combout\);

-- Location: LCCOMB_X17_Y11_N14
\inst|alu1|unidad_aritmetica|divi|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add1~0_combout\ = (\inst|REG_B\(0) & (\inst|reggy_rtl_0|auto_generated|ram_block1a6\ $ (VCC))) # (!\inst|REG_B\(0) & ((\inst|reggy_rtl_0|auto_generated|ram_block1a6\) # (GND)))
-- \inst|alu1|unidad_aritmetica|divi|Add1~1\ = CARRY((\inst|reggy_rtl_0|auto_generated|ram_block1a6\) # (!\inst|REG_B\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(0),
	datab => \inst|reggy_rtl_0|auto_generated|ram_block1a6\,
	datad => VCC,
	combout => \inst|alu1|unidad_aritmetica|divi|Add1~0_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add1~1\);

-- Location: LCCOMB_X17_Y11_N16
\inst|alu1|unidad_aritmetica|divi|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add1~2_combout\ = (\inst|alu1|unidad_aritmetica|divi|remainderr~3_combout\ & ((\inst|REG_B\(1) & (!\inst|alu1|unidad_aritmetica|divi|Add1~1\)) # (!\inst|REG_B\(1) & (\inst|alu1|unidad_aritmetica|divi|Add1~1\ & VCC)))) # 
-- (!\inst|alu1|unidad_aritmetica|divi|remainderr~3_combout\ & ((\inst|REG_B\(1) & ((\inst|alu1|unidad_aritmetica|divi|Add1~1\) # (GND))) # (!\inst|REG_B\(1) & (!\inst|alu1|unidad_aritmetica|divi|Add1~1\))))
-- \inst|alu1|unidad_aritmetica|divi|Add1~3\ = CARRY((\inst|alu1|unidad_aritmetica|divi|remainderr~3_combout\ & (\inst|REG_B\(1) & !\inst|alu1|unidad_aritmetica|divi|Add1~1\)) # (!\inst|alu1|unidad_aritmetica|divi|remainderr~3_combout\ & ((\inst|REG_B\(1)) # 
-- (!\inst|alu1|unidad_aritmetica|divi|Add1~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|remainderr~3_combout\,
	datab => \inst|REG_B\(1),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add1~1\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add1~2_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add1~3\);

-- Location: LCCOMB_X17_Y11_N18
\inst|alu1|unidad_aritmetica|divi|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add1~4_combout\ = ((\inst|REG_B\(2) $ (\inst|alu1|unidad_aritmetica|divi|remainderr~0_combout\ $ (\inst|alu1|unidad_aritmetica|divi|Add1~3\)))) # (GND)
-- \inst|alu1|unidad_aritmetica|divi|Add1~5\ = CARRY((\inst|REG_B\(2) & (\inst|alu1|unidad_aritmetica|divi|remainderr~0_combout\ & !\inst|alu1|unidad_aritmetica|divi|Add1~3\)) # (!\inst|REG_B\(2) & ((\inst|alu1|unidad_aritmetica|divi|remainderr~0_combout\) # 
-- (!\inst|alu1|unidad_aritmetica|divi|Add1~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(2),
	datab => \inst|alu1|unidad_aritmetica|divi|remainderr~0_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add1~3\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add1~4_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add1~5\);

-- Location: LCCOMB_X17_Y11_N20
\inst|alu1|unidad_aritmetica|divi|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add1~6_combout\ = (\inst|REG_B\(3) & ((\inst|alu1|unidad_aritmetica|divi|remainderr~1_combout\ & (!\inst|alu1|unidad_aritmetica|divi|Add1~5\)) # (!\inst|alu1|unidad_aritmetica|divi|remainderr~1_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add1~5\) # (GND))))) # (!\inst|REG_B\(3) & ((\inst|alu1|unidad_aritmetica|divi|remainderr~1_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add1~5\ & VCC)) # (!\inst|alu1|unidad_aritmetica|divi|remainderr~1_combout\ & 
-- (!\inst|alu1|unidad_aritmetica|divi|Add1~5\))))
-- \inst|alu1|unidad_aritmetica|divi|Add1~7\ = CARRY((\inst|REG_B\(3) & ((!\inst|alu1|unidad_aritmetica|divi|Add1~5\) # (!\inst|alu1|unidad_aritmetica|divi|remainderr~1_combout\))) # (!\inst|REG_B\(3) & 
-- (!\inst|alu1|unidad_aritmetica|divi|remainderr~1_combout\ & !\inst|alu1|unidad_aritmetica|divi|Add1~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(3),
	datab => \inst|alu1|unidad_aritmetica|divi|remainderr~1_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add1~5\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add1~6_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add1~7\);

-- Location: LCCOMB_X17_Y11_N22
\inst|alu1|unidad_aritmetica|divi|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add1~8_combout\ = ((\inst|alu1|unidad_aritmetica|divi|remainderr~2_combout\ $ (\inst|REG_B\(1) $ (\inst|alu1|unidad_aritmetica|divi|Add1~7\)))) # (GND)
-- \inst|alu1|unidad_aritmetica|divi|Add1~9\ = CARRY((\inst|alu1|unidad_aritmetica|divi|remainderr~2_combout\ & ((!\inst|alu1|unidad_aritmetica|divi|Add1~7\) # (!\inst|REG_B\(1)))) # (!\inst|alu1|unidad_aritmetica|divi|remainderr~2_combout\ & 
-- (!\inst|REG_B\(1) & !\inst|alu1|unidad_aritmetica|divi|Add1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|remainderr~2_combout\,
	datab => \inst|REG_B\(1),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add1~7\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add1~8_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add1~9\);

-- Location: LCCOMB_X17_Y11_N24
\inst|alu1|unidad_aritmetica|divi|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add1~10_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan0~1_combout\ & (((!\inst|alu1|unidad_aritmetica|divi|Add1~9\)))) # (!\inst|alu1|unidad_aritmetica|divi|LessThan0~1_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add0~8_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add1~9\ & VCC)) # (!\inst|alu1|unidad_aritmetica|divi|Add0~8_combout\ & (!\inst|alu1|unidad_aritmetica|divi|Add1~9\))))
-- \inst|alu1|unidad_aritmetica|divi|Add1~11\ = CARRY((!\inst|alu1|unidad_aritmetica|divi|Add1~9\ & ((\inst|alu1|unidad_aritmetica|divi|LessThan0~1_combout\) # (!\inst|alu1|unidad_aritmetica|divi|Add0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100001011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|LessThan0~1_combout\,
	datab => \inst|alu1|unidad_aritmetica|divi|Add0~8_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add1~9\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add1~10_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add1~11\);

-- Location: LCCOMB_X17_Y11_N4
\inst|alu1|unidad_aritmetica|divi|LessThan2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan2~6_combout\ = (!\inst|alu1|unidad_aritmetica|divi|Add1~2_combout\ & (!\inst|alu1|unidad_aritmetica|divi|Add1~4_combout\ & (!\inst|alu1|unidad_aritmetica|divi|Add1~6_combout\ & 
-- !\inst|alu1|unidad_aritmetica|divi|Add1~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add1~2_combout\,
	datab => \inst|alu1|unidad_aritmetica|divi|Add1~4_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|Add1~6_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|Add1~10_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|LessThan2~6_combout\);

-- Location: LCCOMB_X17_Y11_N26
\inst|alu1|unidad_aritmetica|divi|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add1~12_combout\ = \inst|alu1|unidad_aritmetica|divi|Add1~11\ $ (((!\inst|alu1|unidad_aritmetica|divi|LessThan0~1_combout\ & \inst|alu1|unidad_aritmetica|divi|Add0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|LessThan0~1_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|Add0~10_combout\,
	cin => \inst|alu1|unidad_aritmetica|divi|Add1~11\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add1~12_combout\);

-- Location: LCCOMB_X17_Y11_N2
\inst|alu1|unidad_aritmetica|divi|LessThan2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan2~5_combout\ = (!\inst|alu1|unidad_aritmetica|divi|Add1~8_combout\ & (!\inst|REG_B\(2) & (!\inst|alu1|unidad_aritmetica|divi|Add1~12_combout\ & \inst|REG_B\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add1~8_combout\,
	datab => \inst|REG_B\(2),
	datac => \inst|alu1|unidad_aritmetica|divi|Add1~12_combout\,
	datad => \inst|REG_B\(0),
	combout => \inst|alu1|unidad_aritmetica|divi|LessThan2~5_combout\);

-- Location: LCCOMB_X17_Y11_N10
\inst|alu1|unidad_aritmetica|divi|LessThan2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan2~7_combout\ = (!\inst|reggy_rtl_0|auto_generated|ram_block1a5\ & (!\inst|alu1|unidad_aritmetica|divi|Add1~0_combout\ & (\inst|alu1|unidad_aritmetica|divi|LessThan2~6_combout\ & 
-- \inst|alu1|unidad_aritmetica|divi|LessThan2~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy_rtl_0|auto_generated|ram_block1a5\,
	datab => \inst|alu1|unidad_aritmetica|divi|Add1~0_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|LessThan2~6_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan2~5_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|LessThan2~7_combout\);

-- Location: LCCOMB_X17_Y11_N12
\inst|alu1|unidad_aritmetica|divi|LessThan2~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan2~9_combout\ = ((\inst|alu1|unidad_aritmetica|divi|LessThan2~4_combout\) # ((\inst|alu1|unidad_aritmetica|divi|LessThan2~3_combout\) # (\inst|alu1|unidad_aritmetica|divi|LessThan2~7_combout\))) # 
-- (!\inst|alu1|unidad_aritmetica|divi|LessThan2~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|LessThan2~8_combout\,
	datab => \inst|alu1|unidad_aritmetica|divi|LessThan2~4_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|LessThan2~3_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan2~7_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|LessThan2~9_combout\);

-- Location: LCCOMB_X14_Y11_N26
\inst|alu1|unidad_aritmetica|divi|remainderr~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|remainderr~6_combout\ = (!\inst|alu1|unidad_aritmetica|divi|LessThan1~2_combout\ & \inst|alu1|unidad_aritmetica|divi|Add1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|alu1|unidad_aritmetica|divi|LessThan1~2_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|Add1~4_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|remainderr~6_combout\);

-- Location: LCCOMB_X14_Y11_N16
\inst|alu1|unidad_aritmetica|divi|remainderr~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|remainderr~7_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan1~2_combout\ & (\inst|alu1|unidad_aritmetica|divi|remainderr~3_combout\)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan1~2_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|remainderr~3_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|LessThan1~2_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|Add1~2_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|remainderr~7_combout\);

-- Location: LCCOMB_X14_Y11_N0
\inst|alu1|unidad_aritmetica|divi|Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add2~0_combout\ = (\inst|REG_B\(0) & (\inst|reggy_rtl_0|auto_generated|ram_block1a5\ $ (VCC))) # (!\inst|REG_B\(0) & ((\inst|reggy_rtl_0|auto_generated|ram_block1a5\) # (GND)))
-- \inst|alu1|unidad_aritmetica|divi|Add2~1\ = CARRY((\inst|reggy_rtl_0|auto_generated|ram_block1a5\) # (!\inst|REG_B\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(0),
	datab => \inst|reggy_rtl_0|auto_generated|ram_block1a5\,
	datad => VCC,
	combout => \inst|alu1|unidad_aritmetica|divi|Add2~0_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add2~1\);

-- Location: LCCOMB_X14_Y11_N2
\inst|alu1|unidad_aritmetica|divi|Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add2~2_combout\ = (\inst|REG_B\(1) & ((\inst|alu1|unidad_aritmetica|divi|remainderr~9_combout\ & (!\inst|alu1|unidad_aritmetica|divi|Add2~1\)) # (!\inst|alu1|unidad_aritmetica|divi|remainderr~9_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add2~1\) # (GND))))) # (!\inst|REG_B\(1) & ((\inst|alu1|unidad_aritmetica|divi|remainderr~9_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add2~1\ & VCC)) # (!\inst|alu1|unidad_aritmetica|divi|remainderr~9_combout\ & 
-- (!\inst|alu1|unidad_aritmetica|divi|Add2~1\))))
-- \inst|alu1|unidad_aritmetica|divi|Add2~3\ = CARRY((\inst|REG_B\(1) & ((!\inst|alu1|unidad_aritmetica|divi|Add2~1\) # (!\inst|alu1|unidad_aritmetica|divi|remainderr~9_combout\))) # (!\inst|REG_B\(1) & 
-- (!\inst|alu1|unidad_aritmetica|divi|remainderr~9_combout\ & !\inst|alu1|unidad_aritmetica|divi|Add2~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(1),
	datab => \inst|alu1|unidad_aritmetica|divi|remainderr~9_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add2~1\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add2~2_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add2~3\);

-- Location: LCCOMB_X14_Y11_N4
\inst|alu1|unidad_aritmetica|divi|Add2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add2~4_combout\ = ((\inst|REG_B\(2) $ (\inst|alu1|unidad_aritmetica|divi|remainderr~7_combout\ $ (\inst|alu1|unidad_aritmetica|divi|Add2~3\)))) # (GND)
-- \inst|alu1|unidad_aritmetica|divi|Add2~5\ = CARRY((\inst|REG_B\(2) & (\inst|alu1|unidad_aritmetica|divi|remainderr~7_combout\ & !\inst|alu1|unidad_aritmetica|divi|Add2~3\)) # (!\inst|REG_B\(2) & ((\inst|alu1|unidad_aritmetica|divi|remainderr~7_combout\) # 
-- (!\inst|alu1|unidad_aritmetica|divi|Add2~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(2),
	datab => \inst|alu1|unidad_aritmetica|divi|remainderr~7_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add2~3\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add2~4_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add2~5\);

-- Location: LCCOMB_X14_Y11_N6
\inst|alu1|unidad_aritmetica|divi|Add2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add2~6_combout\ = (\inst|alu1|unidad_aritmetica|divi|remainderr~6_combout\ & ((\inst|REG_B\(3) & (!\inst|alu1|unidad_aritmetica|divi|Add2~5\)) # (!\inst|REG_B\(3) & (\inst|alu1|unidad_aritmetica|divi|Add2~5\ & VCC)))) # 
-- (!\inst|alu1|unidad_aritmetica|divi|remainderr~6_combout\ & ((\inst|REG_B\(3) & ((\inst|alu1|unidad_aritmetica|divi|Add2~5\) # (GND))) # (!\inst|REG_B\(3) & (!\inst|alu1|unidad_aritmetica|divi|Add2~5\))))
-- \inst|alu1|unidad_aritmetica|divi|Add2~7\ = CARRY((\inst|alu1|unidad_aritmetica|divi|remainderr~6_combout\ & (\inst|REG_B\(3) & !\inst|alu1|unidad_aritmetica|divi|Add2~5\)) # (!\inst|alu1|unidad_aritmetica|divi|remainderr~6_combout\ & ((\inst|REG_B\(3)) # 
-- (!\inst|alu1|unidad_aritmetica|divi|Add2~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|remainderr~6_combout\,
	datab => \inst|REG_B\(3),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add2~5\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add2~6_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add2~7\);

-- Location: LCCOMB_X19_Y11_N22
\inst|alu1|unidad_aritmetica|divi|Add2~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add2~16_combout\ = (!\inst|alu1|unidad_aritmetica|divi|LessThan2~9_combout\ & \inst|alu1|unidad_aritmetica|divi|Add2~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|alu1|unidad_aritmetica|divi|LessThan2~9_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|Add2~6_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add2~16_combout\);

-- Location: LCCOMB_X13_Y11_N24
\inst|alu1|unidad_aritmetica|divi|LessThan3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan3~3_combout\ = (\inst|REG_B\(0) & !\inst|reggy_rtl_0|auto_generated|ram_block1a4\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|REG_B\(0),
	datac => \inst|reggy_rtl_0|auto_generated|ram_block1a4\,
	combout => \inst|alu1|unidad_aritmetica|divi|LessThan3~3_combout\);

-- Location: LCCOMB_X17_Y11_N28
\inst|alu1|unidad_aritmetica|divi|LessThan3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan3~4_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan3~3_combout\ & ((\inst|alu1|unidad_aritmetica|divi|LessThan2~9_combout\ & (!\inst|reggy_rtl_0|auto_generated|ram_block1a5\)) # 
-- (!\inst|alu1|unidad_aritmetica|divi|LessThan2~9_combout\ & ((!\inst|alu1|unidad_aritmetica|divi|Add2~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy_rtl_0|auto_generated|ram_block1a5\,
	datab => \inst|alu1|unidad_aritmetica|divi|Add2~0_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|LessThan3~3_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan2~9_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|LessThan3~4_combout\);

-- Location: LCCOMB_X19_Y11_N10
\inst|alu1|unidad_aritmetica|divi|LessThan3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan3~2_combout\ = (\inst|REG_B\(3)) # ((\inst|alu1|unidad_aritmetica|divi|LessThan2~9_combout\ & (!\inst|alu1|unidad_aritmetica|divi|remainderr~7_combout\)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan2~9_combout\ 
-- & ((!\inst|alu1|unidad_aritmetica|divi|Add2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|remainderr~7_combout\,
	datab => \inst|REG_B\(3),
	datac => \inst|alu1|unidad_aritmetica|divi|LessThan2~9_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|Add2~4_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|LessThan3~2_combout\);

-- Location: LCCOMB_X19_Y11_N4
\inst|alu1|unidad_aritmetica|divi|LessThan3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan3~5_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan3~2_combout\ & ((\inst|alu1|unidad_aritmetica|divi|LessThan3~4_combout\ & ((\inst|REG_B\(2)) # (!\inst|alu1|unidad_aritmetica|divi|Add2~15_combout\))) # 
-- (!\inst|alu1|unidad_aritmetica|divi|LessThan3~4_combout\ & (!\inst|alu1|unidad_aritmetica|divi|Add2~15_combout\ & \inst|REG_B\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|LessThan3~4_combout\,
	datab => \inst|alu1|unidad_aritmetica|divi|Add2~15_combout\,
	datac => \inst|REG_B\(2),
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan3~2_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|LessThan3~5_combout\);

-- Location: LCCOMB_X18_Y11_N0
\inst|alu1|unidad_aritmetica|divi|Add2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add2~14_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan2~9_combout\ & (\inst|alu1|unidad_aritmetica|divi|remainderr~7_combout\)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan2~9_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|LessThan2~9_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|remainderr~7_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|Add2~4_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add2~14_combout\);

-- Location: LCCOMB_X18_Y11_N26
\inst|alu1|unidad_aritmetica|divi|LessThan3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan3~1_combout\ = (\inst|REG_B\(1)) # ((\inst|REG_B\(3) & !\inst|alu1|unidad_aritmetica|divi|Add2~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(1),
	datac => \inst|REG_B\(3),
	datad => \inst|alu1|unidad_aritmetica|divi|Add2~14_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|LessThan3~1_combout\);

-- Location: LCCOMB_X14_Y11_N22
\inst|alu1|unidad_aritmetica|divi|remainderr~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|remainderr~10_combout\ = (!\inst|alu1|unidad_aritmetica|divi|LessThan1~2_combout\ & \inst|alu1|unidad_aritmetica|divi|Add1~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|alu1|unidad_aritmetica|divi|LessThan1~2_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|Add1~8_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|remainderr~10_combout\);

-- Location: LCCOMB_X14_Y11_N20
\inst|alu1|unidad_aritmetica|divi|remainderr~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|remainderr~5_combout\ = (!\inst|alu1|unidad_aritmetica|divi|LessThan1~2_combout\ & \inst|alu1|unidad_aritmetica|divi|Add1~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|alu1|unidad_aritmetica|divi|LessThan1~2_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|Add1~6_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|remainderr~5_combout\);

-- Location: LCCOMB_X14_Y11_N8
\inst|alu1|unidad_aritmetica|divi|Add2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add2~8_combout\ = ((\inst|REG_B\(1) $ (\inst|alu1|unidad_aritmetica|divi|remainderr~5_combout\ $ (\inst|alu1|unidad_aritmetica|divi|Add2~7\)))) # (GND)
-- \inst|alu1|unidad_aritmetica|divi|Add2~9\ = CARRY((\inst|REG_B\(1) & (\inst|alu1|unidad_aritmetica|divi|remainderr~5_combout\ & !\inst|alu1|unidad_aritmetica|divi|Add2~7\)) # (!\inst|REG_B\(1) & ((\inst|alu1|unidad_aritmetica|divi|remainderr~5_combout\) # 
-- (!\inst|alu1|unidad_aritmetica|divi|Add2~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(1),
	datab => \inst|alu1|unidad_aritmetica|divi|remainderr~5_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add2~7\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add2~8_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add2~9\);

-- Location: LCCOMB_X14_Y11_N10
\inst|alu1|unidad_aritmetica|divi|Add2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add2~10_combout\ = (\inst|alu1|unidad_aritmetica|divi|remainderr~10_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add2~9\ & VCC)) # (!\inst|alu1|unidad_aritmetica|divi|remainderr~10_combout\ & 
-- (!\inst|alu1|unidad_aritmetica|divi|Add2~9\))
-- \inst|alu1|unidad_aritmetica|divi|Add2~11\ = CARRY((!\inst|alu1|unidad_aritmetica|divi|remainderr~10_combout\ & !\inst|alu1|unidad_aritmetica|divi|Add2~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|remainderr~10_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add2~9\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add2~10_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add2~11\);

-- Location: LCCOMB_X14_Y11_N12
\inst|alu1|unidad_aritmetica|divi|Add2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add2~12_combout\ = \inst|alu1|unidad_aritmetica|divi|Add2~11\ $ (((!\inst|alu1|unidad_aritmetica|divi|LessThan1~2_combout\ & \inst|alu1|unidad_aritmetica|divi|Add1~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|LessThan1~2_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|Add1~10_combout\,
	cin => \inst|alu1|unidad_aritmetica|divi|Add2~11\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add2~12_combout\);

-- Location: LCCOMB_X19_Y11_N16
\inst|alu1|unidad_aritmetica|divi|LessThan3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan3~0_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan2~9_combout\) # ((!\inst|alu1|unidad_aritmetica|divi|Add2~12_combout\ & (!\inst|alu1|unidad_aritmetica|divi|Add2~8_combout\ & 
-- !\inst|alu1|unidad_aritmetica|divi|Add2~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add2~12_combout\,
	datab => \inst|alu1|unidad_aritmetica|divi|LessThan2~9_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|Add2~8_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|Add2~10_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|LessThan3~0_combout\);

-- Location: LCCOMB_X19_Y11_N24
\inst|alu1|unidad_aritmetica|divi|LessThan3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan3~6_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan3~0_combout\ & ((\inst|alu1|unidad_aritmetica|divi|LessThan3~1_combout\) # ((!\inst|alu1|unidad_aritmetica|divi|Add2~16_combout\ & 
-- \inst|alu1|unidad_aritmetica|divi|LessThan3~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add2~16_combout\,
	datab => \inst|alu1|unidad_aritmetica|divi|LessThan3~5_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|LessThan3~1_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan3~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|LessThan3~6_combout\);

-- Location: LCCOMB_X17_Y10_N14
\inst|alu1|Mux5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux5~3_combout\ = (!\inst|alu1|sel_aux\(1) & (\inst|REG_B\(1) & ((!\inst|REG_B\(3)) # (!\inst|REG_B\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(2),
	datab => \inst|alu1|sel_aux\(1),
	datac => \inst|REG_B\(1),
	datad => \inst|REG_B\(3),
	combout => \inst|alu1|Mux5~3_combout\);

-- Location: LCCOMB_X16_Y9_N16
\inst|alu1|Mux5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux5~2_combout\ = (\inst|alu1|sel_aux\(1) & (\inst|alu1|unidad_aritmetica|mult|multi3|s4|Suma~0_combout\ $ (((\inst|reggy_rtl_0|auto_generated|ram_block1a0~portbdataout\ & \inst|REG_B\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	datab => \inst|REG_B\(1),
	datac => \inst|alu1|sel_aux\(1),
	datad => \inst|alu1|unidad_aritmetica|mult|multi3|s4|Suma~0_combout\,
	combout => \inst|alu1|Mux5~2_combout\);

-- Location: LCCOMB_X17_Y10_N20
\inst|alu1|Mux5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux5~4_combout\ = (\inst|alu1|Mux0~0_combout\) # ((!\inst|alu1|sel_aux\(0) & ((\inst|alu1|Mux5~3_combout\) # (\inst|alu1|Mux5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|sel_aux\(0),
	datab => \inst|alu1|Mux5~3_combout\,
	datac => \inst|alu1|Mux5~2_combout\,
	datad => \inst|alu1|Mux0~0_combout\,
	combout => \inst|alu1|Mux5~4_combout\);

-- Location: LCCOMB_X17_Y10_N24
\inst|alu1|Mux5~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux5~5_combout\ = (\inst|alu1|Mux5~4_combout\) # ((\inst|alu1|sel_aux\(0) & (\inst|alu1|sel_aux\(1) & !\inst|alu1|unidad_aritmetica|divi|LessThan3~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|sel_aux\(0),
	datab => \inst|alu1|sel_aux\(1),
	datac => \inst|alu1|unidad_aritmetica|divi|LessThan3~6_combout\,
	datad => \inst|alu1|Mux5~4_combout\,
	combout => \inst|alu1|Mux5~5_combout\);

-- Location: FF_X17_Y10_N25
\inst|alu1|R[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|alu1|Mux5~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|R\(4));

-- Location: LCCOMB_X16_Y10_N18
\inst|Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector6~0_combout\ = (\inst|pr_state.state2~q\ & ((\inst|alu1|R\(4)))) # (!\inst|pr_state.state2~q\ & (\inst|Mux37~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pr_state.state2~q\,
	datab => \inst|Mux37~0_combout\,
	datad => \inst|alu1|R\(4),
	combout => \inst|Selector6~0_combout\);

-- Location: LCCOMB_X14_Y9_N4
\inst|alu1|unidad_aritmetica|mult|multi1|s3|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi1|s3|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|mult|multi1|s2|Cout~0_combout\ $ (\inst|alu1|unidad_aritmetica|mult|inter\(3) $ (((\inst|reggy_rtl_0|auto_generated|ram_block1a2\ & \inst|REG_B\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy_rtl_0|auto_generated|ram_block1a2\,
	datab => \inst|alu1|unidad_aritmetica|mult|multi1|s2|Cout~0_combout\,
	datac => \inst|REG_B\(1),
	datad => \inst|alu1|unidad_aritmetica|mult|inter\(3),
	combout => \inst|alu1|unidad_aritmetica|mult|multi1|s3|Suma~0_combout\);

-- Location: LCCOMB_X14_Y9_N30
\inst|alu1|unidad_aritmetica|mult|multi2|s3|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi2|s3|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|mult|multi1|s3|Suma~0_combout\ $ (\inst|alu1|unidad_aritmetica|mult|multi2|s2|Cout~0_combout\ $ (((\inst|REG_B\(2) & 
-- \inst|reggy_rtl_0|auto_generated|ram_block1a1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(2),
	datab => \inst|reggy_rtl_0|auto_generated|ram_block1a1\,
	datac => \inst|alu1|unidad_aritmetica|mult|multi1|s3|Suma~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|mult|multi2|s2|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi2|s3|Suma~0_combout\);

-- Location: LCCOMB_X16_Y9_N12
\inst|alu1|Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux6~1_combout\ = (\inst|alu1|sel_aux\(1) & (\inst|alu1|unidad_aritmetica|mult|multi2|s3|Suma~0_combout\ $ (((\inst|reggy_rtl_0|auto_generated|ram_block1a0~portbdataout\ & \inst|REG_B\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	datab => \inst|REG_B\(3),
	datac => \inst|alu1|sel_aux\(1),
	datad => \inst|alu1|unidad_aritmetica|mult|multi2|s3|Suma~0_combout\,
	combout => \inst|alu1|Mux6~1_combout\);

-- Location: LCCOMB_X16_Y9_N2
\inst|alu1|Mux6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux6~2_combout\ = (\inst|alu1|Mux0~0_combout\) # ((!\inst|alu1|sel_aux\(0) & ((\inst|alu1|Mux6~0_combout\) # (\inst|alu1|Mux6~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|sel_aux\(0),
	datab => \inst|alu1|Mux0~0_combout\,
	datac => \inst|alu1|Mux6~0_combout\,
	datad => \inst|alu1|Mux6~1_combout\,
	combout => \inst|alu1|Mux6~2_combout\);

-- Location: LCCOMB_X17_Y11_N6
\inst|alu1|unidad_aritmetica|divi|Add2~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add2~17_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan2~9_combout\ & (\inst|reggy_rtl_0|auto_generated|ram_block1a5\)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan2~9_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy_rtl_0|auto_generated|ram_block1a5\,
	datac => \inst|alu1|unidad_aritmetica|divi|Add2~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan2~9_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add2~17_combout\);

-- Location: LCCOMB_X18_Y11_N4
\inst|alu1|unidad_aritmetica|divi|Add3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add3~2_combout\ = (\inst|REG_B\(0) & (\inst|reggy_rtl_0|auto_generated|ram_block1a4\ $ (VCC))) # (!\inst|REG_B\(0) & ((\inst|reggy_rtl_0|auto_generated|ram_block1a4\) # (GND)))
-- \inst|alu1|unidad_aritmetica|divi|Add3~3\ = CARRY((\inst|reggy_rtl_0|auto_generated|ram_block1a4\) # (!\inst|REG_B\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(0),
	datab => \inst|reggy_rtl_0|auto_generated|ram_block1a4\,
	datad => VCC,
	combout => \inst|alu1|unidad_aritmetica|divi|Add3~2_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add3~3\);

-- Location: LCCOMB_X18_Y11_N6
\inst|alu1|unidad_aritmetica|divi|Add3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add3~4_combout\ = (\inst|REG_B\(1) & ((\inst|alu1|unidad_aritmetica|divi|Add2~17_combout\ & (!\inst|alu1|unidad_aritmetica|divi|Add3~3\)) # (!\inst|alu1|unidad_aritmetica|divi|Add2~17_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add3~3\) # (GND))))) # (!\inst|REG_B\(1) & ((\inst|alu1|unidad_aritmetica|divi|Add2~17_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add3~3\ & VCC)) # (!\inst|alu1|unidad_aritmetica|divi|Add2~17_combout\ & 
-- (!\inst|alu1|unidad_aritmetica|divi|Add3~3\))))
-- \inst|alu1|unidad_aritmetica|divi|Add3~5\ = CARRY((\inst|REG_B\(1) & ((!\inst|alu1|unidad_aritmetica|divi|Add3~3\) # (!\inst|alu1|unidad_aritmetica|divi|Add2~17_combout\))) # (!\inst|REG_B\(1) & (!\inst|alu1|unidad_aritmetica|divi|Add2~17_combout\ & 
-- !\inst|alu1|unidad_aritmetica|divi|Add3~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(1),
	datab => \inst|alu1|unidad_aritmetica|divi|Add2~17_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add3~3\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add3~4_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add3~5\);

-- Location: LCCOMB_X18_Y11_N8
\inst|alu1|unidad_aritmetica|divi|Add3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add3~6_combout\ = ((\inst|alu1|unidad_aritmetica|divi|Add2~15_combout\ $ (\inst|REG_B\(2) $ (\inst|alu1|unidad_aritmetica|divi|Add3~5\)))) # (GND)
-- \inst|alu1|unidad_aritmetica|divi|Add3~7\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add2~15_combout\ & ((!\inst|alu1|unidad_aritmetica|divi|Add3~5\) # (!\inst|REG_B\(2)))) # (!\inst|alu1|unidad_aritmetica|divi|Add2~15_combout\ & (!\inst|REG_B\(2) & 
-- !\inst|alu1|unidad_aritmetica|divi|Add3~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add2~15_combout\,
	datab => \inst|REG_B\(2),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add3~5\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add3~6_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add3~7\);

-- Location: LCCOMB_X18_Y11_N10
\inst|alu1|unidad_aritmetica|divi|Add3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add3~8_combout\ = (\inst|REG_B\(3) & ((\inst|alu1|unidad_aritmetica|divi|Add2~14_combout\ & (!\inst|alu1|unidad_aritmetica|divi|Add3~7\)) # (!\inst|alu1|unidad_aritmetica|divi|Add2~14_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add3~7\) # (GND))))) # (!\inst|REG_B\(3) & ((\inst|alu1|unidad_aritmetica|divi|Add2~14_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add3~7\ & VCC)) # (!\inst|alu1|unidad_aritmetica|divi|Add2~14_combout\ & 
-- (!\inst|alu1|unidad_aritmetica|divi|Add3~7\))))
-- \inst|alu1|unidad_aritmetica|divi|Add3~9\ = CARRY((\inst|REG_B\(3) & ((!\inst|alu1|unidad_aritmetica|divi|Add3~7\) # (!\inst|alu1|unidad_aritmetica|divi|Add2~14_combout\))) # (!\inst|REG_B\(3) & (!\inst|alu1|unidad_aritmetica|divi|Add2~14_combout\ & 
-- !\inst|alu1|unidad_aritmetica|divi|Add3~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(3),
	datab => \inst|alu1|unidad_aritmetica|divi|Add2~14_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add3~7\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add3~8_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add3~9\);

-- Location: LCCOMB_X18_Y11_N12
\inst|alu1|unidad_aritmetica|divi|Add3~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add3~12_combout\ = ((\inst|REG_B\(1) $ (\inst|alu1|unidad_aritmetica|divi|Add2~16_combout\ $ (\inst|alu1|unidad_aritmetica|divi|Add3~9\)))) # (GND)
-- \inst|alu1|unidad_aritmetica|divi|Add3~13\ = CARRY((\inst|REG_B\(1) & (\inst|alu1|unidad_aritmetica|divi|Add2~16_combout\ & !\inst|alu1|unidad_aritmetica|divi|Add3~9\)) # (!\inst|REG_B\(1) & ((\inst|alu1|unidad_aritmetica|divi|Add2~16_combout\) # 
-- (!\inst|alu1|unidad_aritmetica|divi|Add3~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(1),
	datab => \inst|alu1|unidad_aritmetica|divi|Add2~16_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add3~9\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add3~12_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add3~13\);

-- Location: LCCOMB_X18_Y11_N2
\inst|alu1|unidad_aritmetica|divi|Add3~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add3~21_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan3~6_combout\ & (!\inst|alu1|unidad_aritmetica|divi|LessThan2~9_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add2~6_combout\))) # 
-- (!\inst|alu1|unidad_aritmetica|divi|LessThan3~6_combout\ & (((\inst|alu1|unidad_aritmetica|divi|Add3~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|LessThan2~9_combout\,
	datab => \inst|alu1|unidad_aritmetica|divi|LessThan3~6_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|Add2~6_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|Add3~12_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add3~21_combout\);

-- Location: LCCOMB_X18_Y11_N18
\inst|alu1|unidad_aritmetica|divi|Add2~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add2~18_combout\ = (!\inst|alu1|unidad_aritmetica|divi|LessThan2~9_combout\ & \inst|alu1|unidad_aritmetica|divi|Add2~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|LessThan2~9_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|Add2~8_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add2~18_combout\);

-- Location: LCCOMB_X18_Y11_N14
\inst|alu1|unidad_aritmetica|divi|Add3~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add3~14_combout\ = (\inst|alu1|unidad_aritmetica|divi|Add2~18_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add3~13\ & VCC)) # (!\inst|alu1|unidad_aritmetica|divi|Add2~18_combout\ & 
-- (!\inst|alu1|unidad_aritmetica|divi|Add3~13\))
-- \inst|alu1|unidad_aritmetica|divi|Add3~15\ = CARRY((!\inst|alu1|unidad_aritmetica|divi|Add2~18_combout\ & !\inst|alu1|unidad_aritmetica|divi|Add3~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|unidad_aritmetica|divi|Add2~18_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add3~13\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add3~14_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add3~15\);

-- Location: LCCOMB_X18_Y11_N28
\inst|alu1|unidad_aritmetica|divi|Add2~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add2~19_combout\ = (\inst|alu1|unidad_aritmetica|divi|Add2~10_combout\ & !\inst|alu1|unidad_aritmetica|divi|LessThan2~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|alu1|unidad_aritmetica|divi|Add2~10_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan2~9_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add2~19_combout\);

-- Location: LCCOMB_X18_Y11_N16
\inst|alu1|unidad_aritmetica|divi|Add3~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add3~16_combout\ = \inst|alu1|unidad_aritmetica|divi|Add3~15\ $ (\inst|alu1|unidad_aritmetica|divi|Add2~19_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|alu1|unidad_aritmetica|divi|Add2~19_combout\,
	cin => \inst|alu1|unidad_aritmetica|divi|Add3~15\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add3~16_combout\);

-- Location: LCCOMB_X18_Y11_N22
\inst|alu1|unidad_aritmetica|divi|LessThan4~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan4~9_combout\ = (!\inst|alu1|unidad_aritmetica|divi|Add3~21_combout\ & ((\inst|alu1|unidad_aritmetica|divi|LessThan3~6_combout\) # ((!\inst|alu1|unidad_aritmetica|divi|Add3~14_combout\ & 
-- !\inst|alu1|unidad_aritmetica|divi|Add3~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|LessThan3~6_combout\,
	datab => \inst|alu1|unidad_aritmetica|divi|Add3~21_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|Add3~14_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|Add3~16_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|LessThan4~9_combout\);

-- Location: LCCOMB_X19_Y11_N2
\inst|alu1|unidad_aritmetica|divi|Add3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add3~10_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan3~6_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add2~14_combout\)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan3~6_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add3~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add2~14_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|Add3~8_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan3~6_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add3~10_combout\);

-- Location: LCCOMB_X19_Y11_N18
\inst|alu1|unidad_aritmetica|divi|LessThan4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan4~6_combout\ = (\inst|REG_B\(2) & ((\inst|alu1|unidad_aritmetica|divi|LessThan3~6_combout\ & (!\inst|alu1|unidad_aritmetica|divi|Add2~17_combout\)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan3~6_combout\ & 
-- ((!\inst|alu1|unidad_aritmetica|divi|Add3~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add2~17_combout\,
	datab => \inst|REG_B\(2),
	datac => \inst|alu1|unidad_aritmetica|divi|Add3~4_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan3~6_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|LessThan4~6_combout\);

-- Location: LCCOMB_X19_Y10_N0
\inst|alu1|unidad_aritmetica|divi|LessThan4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan4~2_combout\ = (\inst|REG_B\(0) & !\inst|reggy_rtl_0|auto_generated|ram_block1a3\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|REG_B\(0),
	datad => \inst|reggy_rtl_0|auto_generated|ram_block1a3\,
	combout => \inst|alu1|unidad_aritmetica|divi|LessThan4~2_combout\);

-- Location: LCCOMB_X19_Y11_N14
\inst|alu1|unidad_aritmetica|divi|LessThan4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan4~4_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan3~6_combout\ & (\inst|reggy_rtl_0|auto_generated|ram_block1a4\)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan3~6_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy_rtl_0|auto_generated|ram_block1a4\,
	datac => \inst|alu1|unidad_aritmetica|divi|Add3~2_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan3~6_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|LessThan4~4_combout\);

-- Location: LCCOMB_X19_Y11_N0
\inst|alu1|unidad_aritmetica|divi|LessThan4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan4~3_combout\ = \inst|REG_B\(2) $ (((\inst|alu1|unidad_aritmetica|divi|LessThan3~6_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add2~17_combout\)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan3~6_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add3~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add2~17_combout\,
	datab => \inst|REG_B\(2),
	datac => \inst|alu1|unidad_aritmetica|divi|Add3~4_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan3~6_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|LessThan4~3_combout\);

-- Location: LCCOMB_X19_Y11_N8
\inst|alu1|unidad_aritmetica|divi|LessThan4~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan4~5_combout\ = (!\inst|alu1|unidad_aritmetica|divi|LessThan4~3_combout\ & ((\inst|REG_B\(1) & ((\inst|alu1|unidad_aritmetica|divi|LessThan4~2_combout\) # (!\inst|alu1|unidad_aritmetica|divi|LessThan4~4_combout\))) 
-- # (!\inst|REG_B\(1) & (\inst|alu1|unidad_aritmetica|divi|LessThan4~2_combout\ & !\inst|alu1|unidad_aritmetica|divi|LessThan4~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(1),
	datab => \inst|alu1|unidad_aritmetica|divi|LessThan4~2_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|LessThan4~4_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan4~3_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|LessThan4~5_combout\);

-- Location: LCCOMB_X19_Y11_N20
\inst|alu1|unidad_aritmetica|divi|LessThan4~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan4~7_combout\ = (\inst|REG_B\(3) & ((\inst|alu1|unidad_aritmetica|divi|LessThan4~6_combout\) # ((\inst|alu1|unidad_aritmetica|divi|LessThan4~5_combout\) # (!\inst|alu1|unidad_aritmetica|divi|Add3~11_combout\)))) # 
-- (!\inst|REG_B\(3) & (!\inst|alu1|unidad_aritmetica|divi|Add3~11_combout\ & ((\inst|alu1|unidad_aritmetica|divi|LessThan4~6_combout\) # (\inst|alu1|unidad_aritmetica|divi|LessThan4~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(3),
	datab => \inst|alu1|unidad_aritmetica|divi|LessThan4~6_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|LessThan4~5_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|Add3~11_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|LessThan4~7_combout\);

-- Location: LCCOMB_X19_Y11_N30
\inst|alu1|unidad_aritmetica|divi|LessThan4~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan4~8_combout\ = (\inst|REG_B\(1) & ((\inst|alu1|unidad_aritmetica|divi|LessThan4~7_combout\) # (!\inst|alu1|unidad_aritmetica|divi|Add3~10_combout\))) # (!\inst|REG_B\(1) & 
-- (!\inst|alu1|unidad_aritmetica|divi|Add3~10_combout\ & \inst|alu1|unidad_aritmetica|divi|LessThan4~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(1),
	datab => \inst|alu1|unidad_aritmetica|divi|Add3~10_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan4~7_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|LessThan4~8_combout\);

-- Location: LCCOMB_X17_Y10_N2
\inst|alu1|Mux6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux6~3_combout\ = (\inst|alu1|Mux6~2_combout\) # ((\inst|alu1|Mux8~0_combout\ & ((!\inst|alu1|unidad_aritmetica|divi|LessThan4~8_combout\) # (!\inst|alu1|unidad_aritmetica|divi|LessThan4~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux8~0_combout\,
	datab => \inst|alu1|Mux6~2_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|LessThan4~9_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan4~8_combout\,
	combout => \inst|alu1|Mux6~3_combout\);

-- Location: FF_X17_Y10_N3
\inst|alu1|R[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|alu1|Mux6~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|R\(3));

-- Location: LCCOMB_X16_Y10_N30
\inst|Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector7~0_combout\ = (\inst|pr_state.state2~q\ & ((\inst|alu1|R\(3)))) # (!\inst|pr_state.state2~q\ & (\inst|Mux35~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pr_state.state2~q\,
	datab => \inst|Mux35~0_combout\,
	datad => \inst|alu1|R\(3),
	combout => \inst|Selector7~0_combout\);

-- Location: LCCOMB_X14_Y11_N18
\inst|alu1|unidad_aritmetica|divi|remainderr~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|remainderr~8_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan0~0_combout\ & ((\inst|alu1|unidad_aritmetica|divi|remainderr~3_combout\) # (!\inst|alu1|unidad_aritmetica|divi|LessThan1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|unidad_aritmetica|divi|LessThan0~0_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|remainderr~3_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan1~1_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|remainderr~8_combout\);

-- Location: LCCOMB_X14_Y11_N24
\inst|alu1|unidad_aritmetica|divi|remainderr~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|remainderr~9_combout\ = (\inst|alu1|unidad_aritmetica|divi|remainderr~4_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add1~0_combout\)) # (!\inst|alu1|unidad_aritmetica|divi|remainderr~4_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|remainderr~8_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add1~0_combout\)) # (!\inst|alu1|unidad_aritmetica|divi|remainderr~8_combout\ & ((\inst|reggy_rtl_0|auto_generated|ram_block1a6\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add1~0_combout\,
	datab => \inst|reggy_rtl_0|auto_generated|ram_block1a6\,
	datac => \inst|alu1|unidad_aritmetica|divi|remainderr~4_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|remainderr~8_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|remainderr~9_combout\);

-- Location: LCCOMB_X18_Y11_N30
\inst|alu1|unidad_aritmetica|divi|Add2~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add2~15_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan2~9_combout\ & (\inst|alu1|unidad_aritmetica|divi|remainderr~9_combout\)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan2~9_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|unidad_aritmetica|divi|remainderr~9_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|Add2~2_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan2~9_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add2~15_combout\);

-- Location: LCCOMB_X18_Y11_N24
\inst|alu1|unidad_aritmetica|divi|Add3~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add3~11_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan3~6_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add2~15_combout\)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan3~6_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add3~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add2~15_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|Add3~6_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan3~6_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add3~11_combout\);

-- Location: LCCOMB_X19_Y11_N28
\inst|alu1|unidad_aritmetica|divi|Add3~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add3~18_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan3~6_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add2~17_combout\)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan3~6_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add3~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add2~17_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|Add3~4_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan3~6_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add3~18_combout\);

-- Location: LCCOMB_X19_Y11_N6
\inst|alu1|unidad_aritmetica|divi|Add3~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add3~19_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan3~6_combout\ & (\inst|reggy_rtl_0|auto_generated|ram_block1a4\)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan3~6_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy_rtl_0|auto_generated|ram_block1a4\,
	datac => \inst|alu1|unidad_aritmetica|divi|Add3~2_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan3~6_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add3~19_combout\);

-- Location: LCCOMB_X19_Y9_N4
\inst|alu1|unidad_aritmetica|divi|Add4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add4~0_combout\ = (\inst|REG_B\(0) & (\inst|reggy_rtl_0|auto_generated|ram_block1a3\ $ (VCC))) # (!\inst|REG_B\(0) & ((\inst|reggy_rtl_0|auto_generated|ram_block1a3\) # (GND)))
-- \inst|alu1|unidad_aritmetica|divi|Add4~1\ = CARRY((\inst|reggy_rtl_0|auto_generated|ram_block1a3\) # (!\inst|REG_B\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(0),
	datab => \inst|reggy_rtl_0|auto_generated|ram_block1a3\,
	datad => VCC,
	combout => \inst|alu1|unidad_aritmetica|divi|Add4~0_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add4~1\);

-- Location: LCCOMB_X19_Y9_N6
\inst|alu1|unidad_aritmetica|divi|Add4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add4~2_combout\ = (\inst|alu1|unidad_aritmetica|divi|Add3~19_combout\ & ((\inst|REG_B\(1) & (!\inst|alu1|unidad_aritmetica|divi|Add4~1\)) # (!\inst|REG_B\(1) & (\inst|alu1|unidad_aritmetica|divi|Add4~1\ & VCC)))) # 
-- (!\inst|alu1|unidad_aritmetica|divi|Add3~19_combout\ & ((\inst|REG_B\(1) & ((\inst|alu1|unidad_aritmetica|divi|Add4~1\) # (GND))) # (!\inst|REG_B\(1) & (!\inst|alu1|unidad_aritmetica|divi|Add4~1\))))
-- \inst|alu1|unidad_aritmetica|divi|Add4~3\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add3~19_combout\ & (\inst|REG_B\(1) & !\inst|alu1|unidad_aritmetica|divi|Add4~1\)) # (!\inst|alu1|unidad_aritmetica|divi|Add3~19_combout\ & ((\inst|REG_B\(1)) # 
-- (!\inst|alu1|unidad_aritmetica|divi|Add4~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add3~19_combout\,
	datab => \inst|REG_B\(1),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add4~1\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add4~2_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add4~3\);

-- Location: LCCOMB_X19_Y9_N8
\inst|alu1|unidad_aritmetica|divi|Add4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add4~4_combout\ = ((\inst|REG_B\(2) $ (\inst|alu1|unidad_aritmetica|divi|Add3~18_combout\ $ (\inst|alu1|unidad_aritmetica|divi|Add4~3\)))) # (GND)
-- \inst|alu1|unidad_aritmetica|divi|Add4~5\ = CARRY((\inst|REG_B\(2) & (\inst|alu1|unidad_aritmetica|divi|Add3~18_combout\ & !\inst|alu1|unidad_aritmetica|divi|Add4~3\)) # (!\inst|REG_B\(2) & ((\inst|alu1|unidad_aritmetica|divi|Add3~18_combout\) # 
-- (!\inst|alu1|unidad_aritmetica|divi|Add4~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(2),
	datab => \inst|alu1|unidad_aritmetica|divi|Add3~18_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add4~3\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add4~4_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add4~5\);

-- Location: LCCOMB_X19_Y9_N10
\inst|alu1|unidad_aritmetica|divi|Add4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add4~6_combout\ = (\inst|REG_B\(3) & ((\inst|alu1|unidad_aritmetica|divi|Add3~11_combout\ & (!\inst|alu1|unidad_aritmetica|divi|Add4~5\)) # (!\inst|alu1|unidad_aritmetica|divi|Add3~11_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add4~5\) # (GND))))) # (!\inst|REG_B\(3) & ((\inst|alu1|unidad_aritmetica|divi|Add3~11_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add4~5\ & VCC)) # (!\inst|alu1|unidad_aritmetica|divi|Add3~11_combout\ & 
-- (!\inst|alu1|unidad_aritmetica|divi|Add4~5\))))
-- \inst|alu1|unidad_aritmetica|divi|Add4~7\ = CARRY((\inst|REG_B\(3) & ((!\inst|alu1|unidad_aritmetica|divi|Add4~5\) # (!\inst|alu1|unidad_aritmetica|divi|Add3~11_combout\))) # (!\inst|REG_B\(3) & (!\inst|alu1|unidad_aritmetica|divi|Add3~11_combout\ & 
-- !\inst|alu1|unidad_aritmetica|divi|Add4~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(3),
	datab => \inst|alu1|unidad_aritmetica|divi|Add3~11_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add4~5\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add4~6_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add4~7\);

-- Location: LCCOMB_X19_Y9_N20
\inst|alu1|unidad_aritmetica|divi|Add4~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add4~8_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan4~9_combout\ & ((\inst|alu1|unidad_aritmetica|divi|LessThan4~8_combout\ & ((\inst|alu1|unidad_aritmetica|divi|Add3~11_combout\))) # 
-- (!\inst|alu1|unidad_aritmetica|divi|LessThan4~8_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add4~6_combout\)))) # (!\inst|alu1|unidad_aritmetica|divi|LessThan4~9_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add4~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add4~6_combout\,
	datab => \inst|alu1|unidad_aritmetica|divi|Add3~11_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|LessThan4~9_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan4~8_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add4~8_combout\);

-- Location: LCCOMB_X19_Y9_N30
\inst|alu1|unidad_aritmetica|divi|Add4~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add4~16_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan4~9_combout\ & ((\inst|alu1|unidad_aritmetica|divi|LessThan4~8_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add3~18_combout\)) # 
-- (!\inst|alu1|unidad_aritmetica|divi|LessThan4~8_combout\ & ((\inst|alu1|unidad_aritmetica|divi|Add4~4_combout\))))) # (!\inst|alu1|unidad_aritmetica|divi|LessThan4~9_combout\ & (((\inst|alu1|unidad_aritmetica|divi|Add4~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|LessThan4~9_combout\,
	datab => \inst|alu1|unidad_aritmetica|divi|Add3~18_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|Add4~4_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan4~8_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add4~16_combout\);

-- Location: LCCOMB_X19_Y9_N0
\inst|alu1|unidad_aritmetica|divi|Add4~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add4~17_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan4~8_combout\ & ((\inst|alu1|unidad_aritmetica|divi|LessThan4~9_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add3~19_combout\)) # 
-- (!\inst|alu1|unidad_aritmetica|divi|LessThan4~9_combout\ & ((\inst|alu1|unidad_aritmetica|divi|Add4~2_combout\))))) # (!\inst|alu1|unidad_aritmetica|divi|LessThan4~8_combout\ & (((\inst|alu1|unidad_aritmetica|divi|Add4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add3~19_combout\,
	datab => \inst|alu1|unidad_aritmetica|divi|LessThan4~8_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|LessThan4~9_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|Add4~2_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add4~17_combout\);

-- Location: LCCOMB_X19_Y10_N30
\inst|alu1|unidad_aritmetica|divi|Add4~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add4~18_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan4~8_combout\ & ((\inst|alu1|unidad_aritmetica|divi|LessThan4~9_combout\ & ((\inst|reggy_rtl_0|auto_generated|ram_block1a3\))) # 
-- (!\inst|alu1|unidad_aritmetica|divi|LessThan4~9_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add4~0_combout\)))) # (!\inst|alu1|unidad_aritmetica|divi|LessThan4~8_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add4~0_combout\,
	datab => \inst|reggy_rtl_0|auto_generated|ram_block1a3\,
	datac => \inst|alu1|unidad_aritmetica|divi|LessThan4~8_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan4~9_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add4~18_combout\);

-- Location: LCCOMB_X19_Y9_N2
\inst|alu1|unidad_aritmetica|divi|LessThan5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan5~1_combout\ = (\inst|alu1|unidad_aritmetica|divi|Add4~18_combout\ & (\inst|REG_B\(0) & (!\inst|reggy_rtl_0|auto_generated|ram_block1a2\ & \inst|REG_B\(1)))) # (!\inst|alu1|unidad_aritmetica|divi|Add4~18_combout\ 
-- & ((\inst|REG_B\(1)) # ((\inst|REG_B\(0) & !\inst|reggy_rtl_0|auto_generated|ram_block1a2\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(0),
	datab => \inst|reggy_rtl_0|auto_generated|ram_block1a2\,
	datac => \inst|alu1|unidad_aritmetica|divi|Add4~18_combout\,
	datad => \inst|REG_B\(1),
	combout => \inst|alu1|unidad_aritmetica|divi|LessThan5~1_combout\);

-- Location: LCCOMB_X19_Y9_N24
\inst|alu1|unidad_aritmetica|divi|LessThan5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan5~2_combout\ = (\inst|alu1|unidad_aritmetica|divi|Add4~17_combout\ & (\inst|REG_B\(2) & \inst|alu1|unidad_aritmetica|divi|LessThan5~1_combout\)) # (!\inst|alu1|unidad_aritmetica|divi|Add4~17_combout\ & 
-- ((\inst|REG_B\(2)) # (\inst|alu1|unidad_aritmetica|divi|LessThan5~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|unidad_aritmetica|divi|Add4~17_combout\,
	datac => \inst|REG_B\(2),
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan5~1_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|LessThan5~2_combout\);

-- Location: LCCOMB_X19_Y9_N26
\inst|alu1|unidad_aritmetica|divi|LessThan5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan5~3_combout\ = (\inst|REG_B\(3) & ((\inst|alu1|unidad_aritmetica|divi|LessThan5~2_combout\) # (!\inst|alu1|unidad_aritmetica|divi|Add4~16_combout\))) # (!\inst|REG_B\(3) & 
-- (!\inst|alu1|unidad_aritmetica|divi|Add4~16_combout\ & \inst|alu1|unidad_aritmetica|divi|LessThan5~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(3),
	datac => \inst|alu1|unidad_aritmetica|divi|Add4~16_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan5~2_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|LessThan5~3_combout\);

-- Location: LCCOMB_X19_Y11_N26
\inst|alu1|unidad_aritmetica|divi|LessThan4~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan4~10_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan4~9_combout\ & ((\inst|REG_B\(1) & ((\inst|alu1|unidad_aritmetica|divi|LessThan4~7_combout\) # (!\inst|alu1|unidad_aritmetica|divi|Add3~10_combout\))) # 
-- (!\inst|REG_B\(1) & (!\inst|alu1|unidad_aritmetica|divi|Add3~10_combout\ & \inst|alu1|unidad_aritmetica|divi|LessThan4~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(1),
	datab => \inst|alu1|unidad_aritmetica|divi|LessThan4~9_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|Add3~10_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan4~7_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|LessThan4~10_combout\);

-- Location: LCCOMB_X18_Y11_N20
\inst|alu1|unidad_aritmetica|divi|Add3~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add3~20_combout\ = (\inst|alu1|unidad_aritmetica|divi|Add3~14_combout\ & !\inst|alu1|unidad_aritmetica|divi|LessThan3~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|alu1|unidad_aritmetica|divi|Add3~14_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan3~6_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add3~20_combout\);

-- Location: LCCOMB_X19_Y9_N12
\inst|alu1|unidad_aritmetica|divi|Add4~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add4~9_combout\ = ((\inst|alu1|unidad_aritmetica|divi|Add3~10_combout\ $ (\inst|REG_B\(1) $ (\inst|alu1|unidad_aritmetica|divi|Add4~7\)))) # (GND)
-- \inst|alu1|unidad_aritmetica|divi|Add4~10\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add3~10_combout\ & ((!\inst|alu1|unidad_aritmetica|divi|Add4~7\) # (!\inst|REG_B\(1)))) # (!\inst|alu1|unidad_aritmetica|divi|Add3~10_combout\ & (!\inst|REG_B\(1) & 
-- !\inst|alu1|unidad_aritmetica|divi|Add4~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add3~10_combout\,
	datab => \inst|REG_B\(1),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add4~7\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add4~9_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add4~10\);

-- Location: LCCOMB_X19_Y9_N14
\inst|alu1|unidad_aritmetica|divi|Add4~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add4~11_combout\ = (\inst|alu1|unidad_aritmetica|divi|Add3~21_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add4~10\ & VCC)) # (!\inst|alu1|unidad_aritmetica|divi|Add3~21_combout\ & 
-- (!\inst|alu1|unidad_aritmetica|divi|Add4~10\))
-- \inst|alu1|unidad_aritmetica|divi|Add4~12\ = CARRY((!\inst|alu1|unidad_aritmetica|divi|Add3~21_combout\ & !\inst|alu1|unidad_aritmetica|divi|Add4~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add3~21_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add4~10\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add4~11_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add4~12\);

-- Location: LCCOMB_X19_Y9_N16
\inst|alu1|unidad_aritmetica|divi|Add4~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add4~13_combout\ = \inst|alu1|unidad_aritmetica|divi|Add4~12\ $ (\inst|alu1|unidad_aritmetica|divi|Add3~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|alu1|unidad_aritmetica|divi|Add3~20_combout\,
	cin => \inst|alu1|unidad_aritmetica|divi|Add4~12\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add4~13_combout\);

-- Location: LCCOMB_X19_Y11_N12
\inst|alu1|unidad_aritmetica|divi|Add4~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add4~15_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan4~9_combout\ & ((\inst|alu1|unidad_aritmetica|divi|LessThan4~8_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add3~10_combout\)) # 
-- (!\inst|alu1|unidad_aritmetica|divi|LessThan4~8_combout\ & ((\inst|alu1|unidad_aritmetica|divi|Add4~9_combout\))))) # (!\inst|alu1|unidad_aritmetica|divi|LessThan4~9_combout\ & (((\inst|alu1|unidad_aritmetica|divi|Add4~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add3~10_combout\,
	datab => \inst|alu1|unidad_aritmetica|divi|LessThan4~9_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|LessThan4~8_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|Add4~9_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add4~15_combout\);

-- Location: LCCOMB_X19_Y9_N18
\inst|alu1|unidad_aritmetica|divi|LessThan5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan5~0_combout\ = (!\inst|alu1|unidad_aritmetica|divi|Add4~15_combout\ & ((\inst|alu1|unidad_aritmetica|divi|LessThan4~10_combout\) # ((!\inst|alu1|unidad_aritmetica|divi|Add4~13_combout\ & 
-- !\inst|alu1|unidad_aritmetica|divi|Add4~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|LessThan4~10_combout\,
	datab => \inst|alu1|unidad_aritmetica|divi|Add4~13_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|Add4~11_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|Add4~15_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|LessThan5~0_combout\);

-- Location: LCCOMB_X19_Y9_N28
\inst|alu1|unidad_aritmetica|divi|LessThan5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan5~4_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan5~0_combout\ & ((\inst|REG_B\(1) & ((\inst|alu1|unidad_aritmetica|divi|LessThan5~3_combout\) # (!\inst|alu1|unidad_aritmetica|divi|Add4~8_combout\))) # 
-- (!\inst|REG_B\(1) & (!\inst|alu1|unidad_aritmetica|divi|Add4~8_combout\ & \inst|alu1|unidad_aritmetica|divi|LessThan5~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(1),
	datab => \inst|alu1|unidad_aritmetica|divi|Add4~8_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|LessThan5~3_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan5~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|LessThan5~4_combout\);

-- Location: LCCOMB_X17_Y10_N22
\inst|alu1|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux7~0_combout\ = (\inst|alu1|sel_aux\(1) & (\inst|reggy_rtl_0|auto_generated|ram_block1a0~portbdataout\ & ((\inst|REG_B\(2))))) # (!\inst|alu1|sel_aux\(1) & ((\inst|REG_B\(1) $ (\inst|REG_B\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	datab => \inst|alu1|sel_aux\(1),
	datac => \inst|REG_B\(1),
	datad => \inst|REG_B\(2),
	combout => \inst|alu1|Mux7~0_combout\);

-- Location: LCCOMB_X16_Y9_N20
\inst|alu1|Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux7~1_combout\ = (!\inst|alu1|sel_aux\(0) & (\inst|alu1|Mux7~0_combout\ $ (((\inst|alu1|sel_aux\(1) & \inst|alu1|unidad_aritmetica|mult|multi1|s2|Suma~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|sel_aux\(1),
	datab => \inst|alu1|unidad_aritmetica|mult|multi1|s2|Suma~0_combout\,
	datac => \inst|alu1|sel_aux\(0),
	datad => \inst|alu1|Mux7~0_combout\,
	combout => \inst|alu1|Mux7~1_combout\);

-- Location: LCCOMB_X16_Y9_N0
\inst|alu1|Mux7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux7~2_combout\ = (\inst|alu1|Mux0~0_combout\) # ((\inst|alu1|Mux7~1_combout\) # ((\inst|alu1|Mux8~0_combout\ & !\inst|alu1|unidad_aritmetica|divi|LessThan5~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux8~0_combout\,
	datab => \inst|alu1|Mux0~0_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|LessThan5~4_combout\,
	datad => \inst|alu1|Mux7~1_combout\,
	combout => \inst|alu1|Mux7~2_combout\);

-- Location: FF_X16_Y9_N1
\inst|alu1|R[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|alu1|Mux7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|R\(2));

-- Location: LCCOMB_X16_Y10_N10
\inst|Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector8~0_combout\ = (\inst|pr_state.state2~q\ & (\inst|alu1|R\(2))) # (!\inst|pr_state.state2~q\ & ((\inst|Mux36~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pr_state.state2~q\,
	datab => \inst|alu1|R\(2),
	datad => \inst|Mux36~0_combout\,
	combout => \inst|Selector8~0_combout\);

-- Location: LCCOMB_X16_Y10_N24
\inst|alu1|unidad_aritmetica|mult|multi1|s1|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi1|s1|Suma~0_combout\ = (\inst|REG_B\(0) & (\inst|reggy_rtl_0|auto_generated|ram_block1a1\ $ (((\inst|reggy_rtl_0|auto_generated|ram_block1a0~portbdataout\ & \inst|REG_B\(1)))))) # (!\inst|REG_B\(0) & 
-- (\inst|reggy_rtl_0|auto_generated|ram_block1a0~portbdataout\ & ((\inst|REG_B\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(0),
	datab => \inst|reggy_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	datac => \inst|reggy_rtl_0|auto_generated|ram_block1a1\,
	datad => \inst|REG_B\(1),
	combout => \inst|alu1|unidad_aritmetica|mult|multi1|s1|Suma~0_combout\);

-- Location: LCCOMB_X17_Y10_N16
\inst|alu1|Mux8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux8~1_combout\ = (!\inst|alu1|sel_aux\(0) & ((\inst|alu1|sel_aux\(1) & ((\inst|alu1|unidad_aritmetica|mult|multi1|s1|Suma~0_combout\))) # (!\inst|alu1|sel_aux\(1) & (!\inst|REG_B\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|sel_aux\(0),
	datab => \inst|alu1|sel_aux\(1),
	datac => \inst|REG_B\(1),
	datad => \inst|alu1|unidad_aritmetica|mult|multi1|s1|Suma~0_combout\,
	combout => \inst|alu1|Mux8~1_combout\);

-- Location: LCCOMB_X18_Y9_N12
\inst|alu1|unidad_aritmetica|divi|Add5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add5~0_combout\ = (\inst|reggy_rtl_0|auto_generated|ram_block1a2\ & ((GND) # (!\inst|REG_B\(0)))) # (!\inst|reggy_rtl_0|auto_generated|ram_block1a2\ & (\inst|REG_B\(0) $ (GND)))
-- \inst|alu1|unidad_aritmetica|divi|Add5~1\ = CARRY((\inst|reggy_rtl_0|auto_generated|ram_block1a2\) # (!\inst|REG_B\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy_rtl_0|auto_generated|ram_block1a2\,
	datab => \inst|REG_B\(0),
	datad => VCC,
	combout => \inst|alu1|unidad_aritmetica|divi|Add5~0_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add5~1\);

-- Location: LCCOMB_X18_Y9_N14
\inst|alu1|unidad_aritmetica|divi|Add5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add5~2_combout\ = (\inst|REG_B\(1) & ((\inst|alu1|unidad_aritmetica|divi|Add4~18_combout\ & (!\inst|alu1|unidad_aritmetica|divi|Add5~1\)) # (!\inst|alu1|unidad_aritmetica|divi|Add4~18_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add5~1\) # (GND))))) # (!\inst|REG_B\(1) & ((\inst|alu1|unidad_aritmetica|divi|Add4~18_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add5~1\ & VCC)) # (!\inst|alu1|unidad_aritmetica|divi|Add4~18_combout\ & 
-- (!\inst|alu1|unidad_aritmetica|divi|Add5~1\))))
-- \inst|alu1|unidad_aritmetica|divi|Add5~3\ = CARRY((\inst|REG_B\(1) & ((!\inst|alu1|unidad_aritmetica|divi|Add5~1\) # (!\inst|alu1|unidad_aritmetica|divi|Add4~18_combout\))) # (!\inst|REG_B\(1) & (!\inst|alu1|unidad_aritmetica|divi|Add4~18_combout\ & 
-- !\inst|alu1|unidad_aritmetica|divi|Add5~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(1),
	datab => \inst|alu1|unidad_aritmetica|divi|Add4~18_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add5~1\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add5~2_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add5~3\);

-- Location: LCCOMB_X18_Y9_N16
\inst|alu1|unidad_aritmetica|divi|Add5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add5~4_combout\ = ((\inst|REG_B\(2) $ (\inst|alu1|unidad_aritmetica|divi|Add4~17_combout\ $ (\inst|alu1|unidad_aritmetica|divi|Add5~3\)))) # (GND)
-- \inst|alu1|unidad_aritmetica|divi|Add5~5\ = CARRY((\inst|REG_B\(2) & (\inst|alu1|unidad_aritmetica|divi|Add4~17_combout\ & !\inst|alu1|unidad_aritmetica|divi|Add5~3\)) # (!\inst|REG_B\(2) & ((\inst|alu1|unidad_aritmetica|divi|Add4~17_combout\) # 
-- (!\inst|alu1|unidad_aritmetica|divi|Add5~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(2),
	datab => \inst|alu1|unidad_aritmetica|divi|Add4~17_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add5~3\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add5~4_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add5~5\);

-- Location: LCCOMB_X18_Y9_N18
\inst|alu1|unidad_aritmetica|divi|Add5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add5~6_combout\ = (\inst|alu1|unidad_aritmetica|divi|Add4~16_combout\ & ((\inst|REG_B\(3) & (!\inst|alu1|unidad_aritmetica|divi|Add5~5\)) # (!\inst|REG_B\(3) & (\inst|alu1|unidad_aritmetica|divi|Add5~5\ & VCC)))) # 
-- (!\inst|alu1|unidad_aritmetica|divi|Add4~16_combout\ & ((\inst|REG_B\(3) & ((\inst|alu1|unidad_aritmetica|divi|Add5~5\) # (GND))) # (!\inst|REG_B\(3) & (!\inst|alu1|unidad_aritmetica|divi|Add5~5\))))
-- \inst|alu1|unidad_aritmetica|divi|Add5~7\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add4~16_combout\ & (\inst|REG_B\(3) & !\inst|alu1|unidad_aritmetica|divi|Add5~5\)) # (!\inst|alu1|unidad_aritmetica|divi|Add4~16_combout\ & ((\inst|REG_B\(3)) # 
-- (!\inst|alu1|unidad_aritmetica|divi|Add5~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add4~16_combout\,
	datab => \inst|REG_B\(3),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add5~5\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add5~6_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add5~7\);

-- Location: LCCOMB_X18_Y9_N0
\inst|alu1|unidad_aritmetica|divi|Add5~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add5~15_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan5~4_combout\ & ((\inst|alu1|unidad_aritmetica|divi|Add4~16_combout\))) # (!\inst|alu1|unidad_aritmetica|divi|LessThan5~4_combout\ & 
-- (\inst|alu1|unidad_aritmetica|divi|Add5~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|unidad_aritmetica|divi|Add5~6_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|Add4~16_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan5~4_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add5~15_combout\);

-- Location: LCCOMB_X18_Y9_N20
\inst|alu1|unidad_aritmetica|divi|Add5~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add5~8_combout\ = ((\inst|alu1|unidad_aritmetica|divi|Add4~8_combout\ $ (\inst|REG_B\(1) $ (\inst|alu1|unidad_aritmetica|divi|Add5~7\)))) # (GND)
-- \inst|alu1|unidad_aritmetica|divi|Add5~9\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add4~8_combout\ & ((!\inst|alu1|unidad_aritmetica|divi|Add5~7\) # (!\inst|REG_B\(1)))) # (!\inst|alu1|unidad_aritmetica|divi|Add4~8_combout\ & (!\inst|REG_B\(1) & 
-- !\inst|alu1|unidad_aritmetica|divi|Add5~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add4~8_combout\,
	datab => \inst|REG_B\(1),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add5~7\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add5~8_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add5~9\);

-- Location: LCCOMB_X18_Y9_N22
\inst|alu1|unidad_aritmetica|divi|Add5~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add5~10_combout\ = (\inst|alu1|unidad_aritmetica|divi|Add4~15_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add5~9\ & VCC)) # (!\inst|alu1|unidad_aritmetica|divi|Add4~15_combout\ & 
-- (!\inst|alu1|unidad_aritmetica|divi|Add5~9\))
-- \inst|alu1|unidad_aritmetica|divi|Add5~11\ = CARRY((!\inst|alu1|unidad_aritmetica|divi|Add4~15_combout\ & !\inst|alu1|unidad_aritmetica|divi|Add5~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add4~15_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add5~9\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add5~10_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add5~11\);

-- Location: LCCOMB_X18_Y9_N8
\inst|alu1|unidad_aritmetica|divi|Add5~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add5~14_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan5~4_combout\ & ((\inst|alu1|unidad_aritmetica|divi|Add4~8_combout\))) # (!\inst|alu1|unidad_aritmetica|divi|LessThan5~4_combout\ & 
-- (\inst|alu1|unidad_aritmetica|divi|Add5~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|unidad_aritmetica|divi|Add5~8_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|Add4~8_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan5~4_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add5~14_combout\);

-- Location: LCCOMB_X19_Y10_N24
\inst|alu1|unidad_aritmetica|divi|Add4~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add4~19_combout\ = (\inst|alu1|unidad_aritmetica|divi|Add4~11_combout\ & ((!\inst|alu1|unidad_aritmetica|divi|LessThan4~8_combout\) # (!\inst|alu1|unidad_aritmetica|divi|LessThan4~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|unidad_aritmetica|divi|LessThan4~9_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|LessThan4~8_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|Add4~11_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add4~19_combout\);

-- Location: LCCOMB_X18_Y9_N24
\inst|alu1|unidad_aritmetica|divi|Add5~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add5~12_combout\ = \inst|alu1|unidad_aritmetica|divi|Add5~11\ $ (\inst|alu1|unidad_aritmetica|divi|Add4~19_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|alu1|unidad_aritmetica|divi|Add4~19_combout\,
	cin => \inst|alu1|unidad_aritmetica|divi|Add5~11\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add5~12_combout\);

-- Location: LCCOMB_X18_Y9_N30
\inst|alu1|unidad_aritmetica|divi|LessThan7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan7~0_combout\ = (!\inst|alu1|unidad_aritmetica|divi|Add5~14_combout\ & ((\inst|alu1|unidad_aritmetica|divi|LessThan5~4_combout\) # ((!\inst|alu1|unidad_aritmetica|divi|Add5~10_combout\ & 
-- !\inst|alu1|unidad_aritmetica|divi|Add5~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add5~10_combout\,
	datab => \inst|alu1|unidad_aritmetica|divi|LessThan5~4_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|Add5~14_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|Add5~12_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|LessThan7~0_combout\);

-- Location: LCCOMB_X18_Y9_N26
\inst|alu1|unidad_aritmetica|divi|Add5~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add5~16_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan5~4_combout\ & ((\inst|alu1|unidad_aritmetica|divi|Add4~17_combout\))) # (!\inst|alu1|unidad_aritmetica|divi|LessThan5~4_combout\ & 
-- (\inst|alu1|unidad_aritmetica|divi|Add5~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|unidad_aritmetica|divi|Add5~4_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|Add4~17_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan5~4_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add5~16_combout\);

-- Location: LCCOMB_X18_Y9_N4
\inst|alu1|unidad_aritmetica|divi|Add5~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add5~17_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan5~4_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add4~18_combout\)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan5~4_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add5~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|unidad_aritmetica|divi|Add4~18_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|Add5~2_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan5~4_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add5~17_combout\);

-- Location: LCCOMB_X19_Y9_N22
\inst|alu1|unidad_aritmetica|divi|Add5~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add5~18_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan5~4_combout\ & ((\inst|reggy_rtl_0|auto_generated|ram_block1a2\))) # (!\inst|alu1|unidad_aritmetica|divi|LessThan5~4_combout\ & 
-- (\inst|alu1|unidad_aritmetica|divi|Add5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add5~0_combout\,
	datab => \inst|reggy_rtl_0|auto_generated|ram_block1a2\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan5~4_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add5~18_combout\);

-- Location: LCCOMB_X18_Y9_N2
\inst|alu1|unidad_aritmetica|divi|LessThan7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan7~1_combout\ = (\inst|REG_B\(1) & (\inst|alu1|unidad_aritmetica|divi|Add5~18_combout\ & ((\inst|reggy_rtl_0|auto_generated|ram_block1a1\) # (!\inst|REG_B\(0))))) # (!\inst|REG_B\(1) & 
-- (!\inst|reggy_rtl_0|auto_generated|ram_block1a1\ & (\inst|REG_B\(0) & !\inst|alu1|unidad_aritmetica|divi|Add5~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(1),
	datab => \inst|reggy_rtl_0|auto_generated|ram_block1a1\,
	datac => \inst|REG_B\(0),
	datad => \inst|alu1|unidad_aritmetica|divi|Add5~18_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|LessThan7~1_combout\);

-- Location: LCCOMB_X18_Y9_N6
\inst|alu1|unidad_aritmetica|divi|LessThan7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan7~2_combout\ = (\inst|REG_B\(2) & ((\inst|alu1|unidad_aritmetica|divi|Add5~17_combout\ & ((\inst|alu1|unidad_aritmetica|divi|LessThan7~1_combout\))) # (!\inst|alu1|unidad_aritmetica|divi|Add5~17_combout\ & 
-- (!\inst|alu1|unidad_aritmetica|divi|Add5~15_combout\)))) # (!\inst|REG_B\(2) & ((\inst|alu1|unidad_aritmetica|divi|Add5~17_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add5~15_combout\)) # (!\inst|alu1|unidad_aritmetica|divi|Add5~17_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|LessThan7~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(2),
	datab => \inst|alu1|unidad_aritmetica|divi|Add5~15_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|Add5~17_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan7~1_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|LessThan7~2_combout\);

-- Location: LCCOMB_X18_Y9_N28
\inst|alu1|unidad_aritmetica|divi|LessThan7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan7~3_combout\ = (\inst|REG_B\(3) & ((\inst|alu1|unidad_aritmetica|divi|Add5~16_combout\ & ((\inst|alu1|unidad_aritmetica|divi|LessThan7~2_combout\))) # (!\inst|alu1|unidad_aritmetica|divi|Add5~16_combout\ & 
-- (!\inst|REG_B\(1))))) # (!\inst|REG_B\(3) & ((\inst|alu1|unidad_aritmetica|divi|Add5~16_combout\ & (\inst|REG_B\(1))) # (!\inst|alu1|unidad_aritmetica|divi|Add5~16_combout\ & ((\inst|alu1|unidad_aritmetica|divi|LessThan7~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(1),
	datab => \inst|REG_B\(3),
	datac => \inst|alu1|unidad_aritmetica|divi|Add5~16_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan7~2_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|LessThan7~3_combout\);

-- Location: LCCOMB_X18_Y9_N10
\inst|alu1|unidad_aritmetica|divi|LessThan7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan7~4_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan7~0_combout\ & ((\inst|alu1|unidad_aritmetica|divi|LessThan7~3_combout\ & ((!\inst|alu1|unidad_aritmetica|divi|Add5~15_combout\))) # 
-- (!\inst|alu1|unidad_aritmetica|divi|LessThan7~3_combout\ & (\inst|REG_B\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(1),
	datab => \inst|alu1|unidad_aritmetica|divi|Add5~15_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|LessThan7~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan7~3_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|LessThan7~4_combout\);

-- Location: LCCOMB_X16_Y9_N30
\inst|alu1|Mux8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux8~2_combout\ = (\inst|alu1|Mux0~0_combout\) # ((\inst|alu1|Mux8~1_combout\) # ((\inst|alu1|Mux8~0_combout\ & !\inst|alu1|unidad_aritmetica|divi|LessThan7~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux8~0_combout\,
	datab => \inst|alu1|Mux0~0_combout\,
	datac => \inst|alu1|Mux8~1_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan7~4_combout\,
	combout => \inst|alu1|Mux8~2_combout\);

-- Location: FF_X16_Y9_N31
\inst|alu1|R[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|alu1|Mux8~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|R\(1));

-- Location: LCCOMB_X16_Y10_N28
\inst|Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector9~0_combout\ = (\inst|pr_state.state2~q\ & (\inst|alu1|R\(1))) # (!\inst|pr_state.state2~q\ & ((\inst|Mux37~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pr_state.state2~q\,
	datac => \inst|alu1|R\(1),
	datad => \inst|Mux37~0_combout\,
	combout => \inst|Selector9~0_combout\);

-- Location: LCCOMB_X16_Y9_N18
\inst|alu1|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux9~0_combout\ = (\inst|reggy_rtl_0|auto_generated|ram_block1a0~portbdataout\ & (!\inst|alu1|sel_aux\(0) & \inst|REG_B\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	datac => \inst|alu1|sel_aux\(0),
	datad => \inst|REG_B\(0),
	combout => \inst|alu1|Mux9~0_combout\);

-- Location: LCCOMB_X17_Y9_N12
\inst|alu1|unidad_aritmetica|divi|Add6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add6~0_combout\ = (\inst|REG_B\(0) & (\inst|reggy_rtl_0|auto_generated|ram_block1a1\ $ (VCC))) # (!\inst|REG_B\(0) & ((\inst|reggy_rtl_0|auto_generated|ram_block1a1\) # (GND)))
-- \inst|alu1|unidad_aritmetica|divi|Add6~1\ = CARRY((\inst|reggy_rtl_0|auto_generated|ram_block1a1\) # (!\inst|REG_B\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(0),
	datab => \inst|reggy_rtl_0|auto_generated|ram_block1a1\,
	datad => VCC,
	combout => \inst|alu1|unidad_aritmetica|divi|Add6~0_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add6~1\);

-- Location: LCCOMB_X17_Y9_N14
\inst|alu1|unidad_aritmetica|divi|Add6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add6~2_combout\ = (\inst|alu1|unidad_aritmetica|divi|Add5~18_combout\ & ((\inst|REG_B\(1) & (!\inst|alu1|unidad_aritmetica|divi|Add6~1\)) # (!\inst|REG_B\(1) & (\inst|alu1|unidad_aritmetica|divi|Add6~1\ & VCC)))) # 
-- (!\inst|alu1|unidad_aritmetica|divi|Add5~18_combout\ & ((\inst|REG_B\(1) & ((\inst|alu1|unidad_aritmetica|divi|Add6~1\) # (GND))) # (!\inst|REG_B\(1) & (!\inst|alu1|unidad_aritmetica|divi|Add6~1\))))
-- \inst|alu1|unidad_aritmetica|divi|Add6~3\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add5~18_combout\ & (\inst|REG_B\(1) & !\inst|alu1|unidad_aritmetica|divi|Add6~1\)) # (!\inst|alu1|unidad_aritmetica|divi|Add5~18_combout\ & ((\inst|REG_B\(1)) # 
-- (!\inst|alu1|unidad_aritmetica|divi|Add6~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add5~18_combout\,
	datab => \inst|REG_B\(1),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add6~1\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add6~2_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add6~3\);

-- Location: LCCOMB_X17_Y9_N16
\inst|alu1|unidad_aritmetica|divi|Add6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add6~4_combout\ = ((\inst|alu1|unidad_aritmetica|divi|Add5~17_combout\ $ (\inst|REG_B\(2) $ (\inst|alu1|unidad_aritmetica|divi|Add6~3\)))) # (GND)
-- \inst|alu1|unidad_aritmetica|divi|Add6~5\ = CARRY((\inst|alu1|unidad_aritmetica|divi|Add5~17_combout\ & ((!\inst|alu1|unidad_aritmetica|divi|Add6~3\) # (!\inst|REG_B\(2)))) # (!\inst|alu1|unidad_aritmetica|divi|Add5~17_combout\ & (!\inst|REG_B\(2) & 
-- !\inst|alu1|unidad_aritmetica|divi|Add6~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add5~17_combout\,
	datab => \inst|REG_B\(2),
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add6~3\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add6~4_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add6~5\);

-- Location: LCCOMB_X17_Y9_N18
\inst|alu1|unidad_aritmetica|divi|Add6~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add6~6_combout\ = (\inst|REG_B\(3) & ((\inst|alu1|unidad_aritmetica|divi|Add5~16_combout\ & (!\inst|alu1|unidad_aritmetica|divi|Add6~5\)) # (!\inst|alu1|unidad_aritmetica|divi|Add5~16_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add6~5\) # (GND))))) # (!\inst|REG_B\(3) & ((\inst|alu1|unidad_aritmetica|divi|Add5~16_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add6~5\ & VCC)) # (!\inst|alu1|unidad_aritmetica|divi|Add5~16_combout\ & 
-- (!\inst|alu1|unidad_aritmetica|divi|Add6~5\))))
-- \inst|alu1|unidad_aritmetica|divi|Add6~7\ = CARRY((\inst|REG_B\(3) & ((!\inst|alu1|unidad_aritmetica|divi|Add6~5\) # (!\inst|alu1|unidad_aritmetica|divi|Add5~16_combout\))) # (!\inst|REG_B\(3) & (!\inst|alu1|unidad_aritmetica|divi|Add5~16_combout\ & 
-- !\inst|alu1|unidad_aritmetica|divi|Add6~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(3),
	datab => \inst|alu1|unidad_aritmetica|divi|Add5~16_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add6~5\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add6~6_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add6~7\);

-- Location: LCCOMB_X17_Y9_N10
\inst|alu1|unidad_aritmetica|divi|LessThan7~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan7~5_combout\ = \inst|REG_B\(1) $ (((\inst|alu1|unidad_aritmetica|divi|LessThan7~4_combout\ & ((\inst|alu1|unidad_aritmetica|divi|Add5~16_combout\))) # (!\inst|alu1|unidad_aritmetica|divi|LessThan7~4_combout\ & 
-- (\inst|alu1|unidad_aritmetica|divi|Add6~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011010100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(1),
	datab => \inst|alu1|unidad_aritmetica|divi|Add6~6_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|LessThan7~4_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|Add5~16_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|LessThan7~5_combout\);

-- Location: LCCOMB_X17_Y9_N20
\inst|alu1|unidad_aritmetica|divi|Add6~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add6~8_combout\ = ((\inst|REG_B\(1) $ (\inst|alu1|unidad_aritmetica|divi|Add5~15_combout\ $ (\inst|alu1|unidad_aritmetica|divi|Add6~7\)))) # (GND)
-- \inst|alu1|unidad_aritmetica|divi|Add6~9\ = CARRY((\inst|REG_B\(1) & (\inst|alu1|unidad_aritmetica|divi|Add5~15_combout\ & !\inst|alu1|unidad_aritmetica|divi|Add6~7\)) # (!\inst|REG_B\(1) & ((\inst|alu1|unidad_aritmetica|divi|Add5~15_combout\) # 
-- (!\inst|alu1|unidad_aritmetica|divi|Add6~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(1),
	datab => \inst|alu1|unidad_aritmetica|divi|Add5~15_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add6~7\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add6~8_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add6~9\);

-- Location: LCCOMB_X17_Y9_N22
\inst|alu1|unidad_aritmetica|divi|Add6~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add6~10_combout\ = (\inst|alu1|unidad_aritmetica|divi|Add5~14_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add6~9\ & VCC)) # (!\inst|alu1|unidad_aritmetica|divi|Add5~14_combout\ & 
-- (!\inst|alu1|unidad_aritmetica|divi|Add6~9\))
-- \inst|alu1|unidad_aritmetica|divi|Add6~11\ = CARRY((!\inst|alu1|unidad_aritmetica|divi|Add5~14_combout\ & !\inst|alu1|unidad_aritmetica|divi|Add6~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|unidad_aritmetica|divi|Add5~14_combout\,
	datad => VCC,
	cin => \inst|alu1|unidad_aritmetica|divi|Add6~9\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add6~10_combout\,
	cout => \inst|alu1|unidad_aritmetica|divi|Add6~11\);

-- Location: LCCOMB_X16_Y9_N24
\inst|alu1|unidad_aritmetica|divi|Add5~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add5~19_combout\ = (!\inst|alu1|unidad_aritmetica|divi|LessThan5~4_combout\ & \inst|alu1|unidad_aritmetica|divi|Add5~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|alu1|unidad_aritmetica|divi|LessThan5~4_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|Add5~10_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add5~19_combout\);

-- Location: LCCOMB_X17_Y9_N24
\inst|alu1|unidad_aritmetica|divi|Add6~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|Add6~12_combout\ = \inst|alu1|unidad_aritmetica|divi|Add6~11\ $ (\inst|alu1|unidad_aritmetica|divi|Add5~19_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|alu1|unidad_aritmetica|divi|Add5~19_combout\,
	cin => \inst|alu1|unidad_aritmetica|divi|Add6~11\,
	combout => \inst|alu1|unidad_aritmetica|divi|Add6~12_combout\);

-- Location: LCCOMB_X17_Y9_N0
\inst|alu1|Mux9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux9~1_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan7~4_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add5~15_combout\)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan7~4_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add6~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|unidad_aritmetica|divi|Add5~15_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|LessThan7~4_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|Add6~8_combout\,
	combout => \inst|alu1|Mux9~1_combout\);

-- Location: LCCOMB_X17_Y9_N2
\inst|alu1|Mux9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux9~2_combout\ = (\inst|alu1|Mux9~1_combout\) # ((!\inst|alu1|unidad_aritmetica|divi|LessThan7~4_combout\ & ((\inst|alu1|unidad_aritmetica|divi|Add6~10_combout\) # (\inst|alu1|unidad_aritmetica|divi|Add6~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add6~10_combout\,
	datab => \inst|alu1|unidad_aritmetica|divi|Add6~12_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|LessThan7~4_combout\,
	datad => \inst|alu1|Mux9~1_combout\,
	combout => \inst|alu1|Mux9~2_combout\);

-- Location: LCCOMB_X17_Y9_N8
\inst|alu1|unidad_aritmetica|divi|remainderr~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|remainderr~11_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan7~4_combout\ & ((\inst|alu1|unidad_aritmetica|divi|Add5~17_combout\))) # (!\inst|alu1|unidad_aritmetica|divi|LessThan7~4_combout\ & 
-- (\inst|alu1|unidad_aritmetica|divi|Add6~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|unidad_aritmetica|divi|Add6~4_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|LessThan7~4_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|Add5~17_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|remainderr~11_combout\);

-- Location: LCCOMB_X17_Y9_N30
\inst|alu1|Mux9~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux9~3_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan7~4_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add5~16_combout\)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan7~4_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add6~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|alu1|unidad_aritmetica|divi|Add5~16_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|LessThan7~4_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|Add6~6_combout\,
	combout => \inst|alu1|Mux9~3_combout\);

-- Location: LCCOMB_X17_Y9_N26
\inst|alu1|Mux9~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux9~4_combout\ = (\inst|REG_B\(1) & (\inst|alu1|Mux9~3_combout\ & ((\inst|alu1|unidad_aritmetica|divi|remainderr~11_combout\) # (!\inst|REG_B\(3))))) # (!\inst|REG_B\(1) & (((\inst|alu1|unidad_aritmetica|divi|remainderr~11_combout\) # 
-- (\inst|alu1|Mux9~3_combout\)) # (!\inst|REG_B\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(1),
	datab => \inst|REG_B\(3),
	datac => \inst|alu1|unidad_aritmetica|divi|remainderr~11_combout\,
	datad => \inst|alu1|Mux9~3_combout\,
	combout => \inst|alu1|Mux9~4_combout\);

-- Location: LCCOMB_X16_Y9_N6
\inst|alu1|unidad_aritmetica|divi|LessThan7~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan7~6_combout\ = (\inst|REG_B\(2) & ((\inst|alu1|unidad_aritmetica|divi|LessThan7~4_combout\ & (!\inst|alu1|unidad_aritmetica|divi|Add5~18_combout\)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan7~4_combout\ & 
-- ((!\inst|alu1|unidad_aritmetica|divi|Add6~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add5~18_combout\,
	datab => \inst|REG_B\(2),
	datac => \inst|alu1|unidad_aritmetica|divi|Add6~2_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan7~4_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|LessThan7~6_combout\);

-- Location: LCCOMB_X16_Y9_N4
\inst|alu1|unidad_aritmetica|divi|LessThan7~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan7~8_combout\ = (!\inst|reggy_rtl_0|auto_generated|ram_block1a0~portbdataout\ & \inst|REG_B\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|reggy_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	datad => \inst|REG_B\(0),
	combout => \inst|alu1|unidad_aritmetica|divi|LessThan7~8_combout\);

-- Location: LCCOMB_X16_Y9_N22
\inst|alu1|unidad_aritmetica|divi|remainderr~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|remainderr~12_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan7~4_combout\ & (\inst|reggy_rtl_0|auto_generated|ram_block1a1\)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan7~4_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy_rtl_0|auto_generated|ram_block1a1\,
	datac => \inst|alu1|unidad_aritmetica|divi|Add6~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan7~4_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|remainderr~12_combout\);

-- Location: LCCOMB_X16_Y9_N28
\inst|alu1|unidad_aritmetica|divi|LessThan7~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|divi|LessThan7~7_combout\ = \inst|REG_B\(2) $ (((\inst|alu1|unidad_aritmetica|divi|LessThan7~4_combout\ & (\inst|alu1|unidad_aritmetica|divi|Add5~18_combout\)) # (!\inst|alu1|unidad_aritmetica|divi|LessThan7~4_combout\ & 
-- ((\inst|alu1|unidad_aritmetica|divi|Add6~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|Add5~18_combout\,
	datab => \inst|REG_B\(2),
	datac => \inst|alu1|unidad_aritmetica|divi|Add6~2_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan7~4_combout\,
	combout => \inst|alu1|unidad_aritmetica|divi|LessThan7~7_combout\);

-- Location: LCCOMB_X16_Y9_N14
\inst|alu1|Mux9~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux9~5_combout\ = (!\inst|alu1|unidad_aritmetica|divi|LessThan7~7_combout\ & ((\inst|alu1|unidad_aritmetica|divi|LessThan7~8_combout\ & ((\inst|REG_B\(1)) # (!\inst|alu1|unidad_aritmetica|divi|remainderr~12_combout\))) # 
-- (!\inst|alu1|unidad_aritmetica|divi|LessThan7~8_combout\ & (\inst|REG_B\(1) & !\inst|alu1|unidad_aritmetica|divi|remainderr~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|LessThan7~8_combout\,
	datab => \inst|REG_B\(1),
	datac => \inst|alu1|unidad_aritmetica|divi|remainderr~12_combout\,
	datad => \inst|alu1|unidad_aritmetica|divi|LessThan7~7_combout\,
	combout => \inst|alu1|Mux9~5_combout\);

-- Location: LCCOMB_X17_Y9_N28
\inst|alu1|Mux9~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux9~6_combout\ = (\inst|alu1|unidad_aritmetica|divi|LessThan7~6_combout\ & (\inst|REG_B\(3) $ ((!\inst|alu1|unidad_aritmetica|divi|remainderr~11_combout\)))) # (!\inst|alu1|unidad_aritmetica|divi|LessThan7~6_combout\ & 
-- (\inst|alu1|Mux9~5_combout\ & (\inst|REG_B\(3) $ (!\inst|alu1|unidad_aritmetica|divi|remainderr~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG_B\(3),
	datab => \inst|alu1|unidad_aritmetica|divi|remainderr~11_combout\,
	datac => \inst|alu1|unidad_aritmetica|divi|LessThan7~6_combout\,
	datad => \inst|alu1|Mux9~5_combout\,
	combout => \inst|alu1|Mux9~6_combout\);

-- Location: LCCOMB_X17_Y9_N6
\inst|alu1|Mux9~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux9~7_combout\ = (\inst|alu1|Mux9~2_combout\) # ((\inst|alu1|Mux9~4_combout\ & ((\inst|alu1|unidad_aritmetica|divi|LessThan7~5_combout\) # (!\inst|alu1|Mux9~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|divi|LessThan7~5_combout\,
	datab => \inst|alu1|Mux9~2_combout\,
	datac => \inst|alu1|Mux9~4_combout\,
	datad => \inst|alu1|Mux9~6_combout\,
	combout => \inst|alu1|Mux9~7_combout\);

-- Location: LCCOMB_X17_Y9_N4
\inst|alu1|Mux9~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux9~8_combout\ = (\inst|alu1|Mux0~0_combout\) # ((\inst|alu1|Mux9~0_combout\) # ((\inst|alu1|sel_aux\(0) & \inst|alu1|Mux9~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux0~0_combout\,
	datab => \inst|alu1|Mux9~0_combout\,
	datac => \inst|alu1|sel_aux\(0),
	datad => \inst|alu1|Mux9~7_combout\,
	combout => \inst|alu1|Mux9~8_combout\);

-- Location: FF_X17_Y9_N5
\inst|alu1|R[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|alu1|Mux9~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|R\(0));

-- Location: LCCOMB_X16_Y10_N8
\inst|Selector10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector10~0_combout\ = (\inst|pr_state.state2~q\ & ((\inst|alu1|R\(0)))) # (!\inst|pr_state.state2~q\ & (\inst|Mux38~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pr_state.state2~q\,
	datac => \inst|Mux38~0_combout\,
	datad => \inst|alu1|R\(0),
	combout => \inst|Selector10~0_combout\);

-- Location: LCCOMB_X14_Y7_N4
\~GND\ : cycloneive_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: LCCOMB_X14_Y10_N12
\inst|alu1|unidad_aritmetica|mult|multi3|s7|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi3|s7|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi2|s6|Cout~0_combout\ & ((\inst|alu1|unidad_aritmetica|mult|multi3|s6|Cout~0_combout\) # ((\inst|REG_B\(3) & 
-- \inst|reggy_rtl_0|auto_generated|ram_block1a4\)))) # (!\inst|alu1|unidad_aritmetica|mult|multi2|s6|Cout~0_combout\ & (\inst|REG_B\(3) & (\inst|reggy_rtl_0|auto_generated|ram_block1a4\ & \inst|alu1|unidad_aritmetica|mult|multi3|s6|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|multi2|s6|Cout~0_combout\,
	datab => \inst|REG_B\(3),
	datac => \inst|reggy_rtl_0|auto_generated|ram_block1a4\,
	datad => \inst|alu1|unidad_aritmetica|mult|multi3|s6|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi3|s7|Cout~0_combout\);

-- Location: LCCOMB_X14_Y10_N6
\inst|alu1|unidad_aritmetica|mult|multi4|s7|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi4|s7|Cout~0_combout\ = (\inst|alu1|unidad_aritmetica|mult|multi3|s7|Suma~0_combout\ & ((\inst|alu1|unidad_aritmetica|mult|multi4|s6|Cout~0_combout\) # ((\inst|reggy_rtl_0|auto_generated|ram_block1a3\ & 
-- \inst|REG_B\(1))))) # (!\inst|alu1|unidad_aritmetica|mult|multi3|s7|Suma~0_combout\ & (\inst|reggy_rtl_0|auto_generated|ram_block1a3\ & (\inst|REG_B\(1) & \inst|alu1|unidad_aritmetica|mult|multi4|s6|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reggy_rtl_0|auto_generated|ram_block1a3\,
	datab => \inst|REG_B\(1),
	datac => \inst|alu1|unidad_aritmetica|mult|multi3|s7|Suma~0_combout\,
	datad => \inst|alu1|unidad_aritmetica|mult|multi4|s6|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi4|s7|Cout~0_combout\);

-- Location: LCCOMB_X14_Y10_N22
\inst|alu1|unidad_aritmetica|mult|multi4|s8|Suma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|unidad_aritmetica|mult|multi4|s8|Suma~0_combout\ = \inst|alu1|unidad_aritmetica|mult|multi3|s7|Cout~0_combout\ $ (\inst|alu1|unidad_aritmetica|mult|multi4|s7|Cout~0_combout\ $ (((\inst|reggy_rtl_0|auto_generated|ram_block1a4\ & 
-- \inst|REG_B\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|unidad_aritmetica|mult|multi3|s7|Cout~0_combout\,
	datab => \inst|reggy_rtl_0|auto_generated|ram_block1a4\,
	datac => \inst|REG_B\(1),
	datad => \inst|alu1|unidad_aritmetica|mult|multi4|s7|Cout~0_combout\,
	combout => \inst|alu1|unidad_aritmetica|mult|multi4|s8|Suma~0_combout\);

-- Location: LCCOMB_X16_Y7_N6
\inst|alu1|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu1|Mux1~0_combout\ = (\inst|alu1|Mux0~0_combout\) # ((!\inst|alu1|sel_aux\(0) & \inst|alu1|unidad_aritmetica|mult|multi4|s8|Suma~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alu1|Mux0~0_combout\,
	datac => \inst|alu1|sel_aux\(0),
	datad => \inst|alu1|unidad_aritmetica|mult|multi4|s8|Suma~0_combout\,
	combout => \inst|alu1|Mux1~0_combout\);

-- Location: FF_X16_Y7_N7
\inst|alu1|R[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|alu1|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|R\(8));

-- Location: LCCOMB_X16_Y7_N20
\inst|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector2~0_combout\ = (\inst|pr_state.state2~q\ & \inst|alu1|R\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|pr_state.state2~q\,
	datad => \inst|alu1|R\(8),
	combout => \inst|Selector2~0_combout\);

-- Location: FF_X16_Y7_N17
\inst|alu1|R[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|alu1|Mux0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alu1|R\(9));

-- Location: LCCOMB_X16_Y7_N16
\inst|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector1~0_combout\ = (\inst|pr_state.state2~q\ & \inst|alu1|R\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|pr_state.state2~q\,
	datac => \inst|alu1|R\(9),
	combout => \inst|Selector1~0_combout\);

-- Location: M9K_X15_Y7_N0
\inst|reggy_rtl_1|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "datapath:inst|altsyncram:reggy_rtl_1|altsyncram_urg1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 36,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 11,
	port_a_logical_ram_width => 10,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 4,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 36,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 15,
	port_b_logical_ram_depth => 11,
	port_b_logical_ram_width => 10,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \inst|reggy~16_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \inst|reggy_rtl_1|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \inst|reggy_rtl_1|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \inst|reggy_rtl_1|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst|reggy_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

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


