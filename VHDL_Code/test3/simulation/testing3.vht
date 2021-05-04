-- Copyright (C) 2020  Intel Corporation. All rights reserved.
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

-- ***************************************************************************
-- This file contains a Vhdl test bench template that is freely editable to   
-- suit user's needs .Comments are provided in each section to help the user  
-- fill out necessary details.                                                
-- ***************************************************************************
-- Generated on "05/03/2021 15:19:33"
                                                            
-- Vhdl Test Bench template for design  :  testing3
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY testing3_vhd_tst IS
END testing3_vhd_tst;
ARCHITECTURE testing3_arch OF testing3_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL B : STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL blue_switch : STD_LOGIC;
SIGNAL clk : STD_LOGIC;
SIGNAL G : STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL green_switch : STD_LOGIC;
SIGNAL Hsync : STD_LOGIC;
SIGNAL nblanck : STD_LOGIC;
SIGNAL nsync : STD_LOGIC;
SIGNAL pixel_clk : STD_LOGIC;
SIGNAL R : STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL red_switch : STD_LOGIC;
SIGNAL Vsync : STD_LOGIC;
COMPONENT testing3
	PORT (
	B : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
	blue_switch : IN STD_LOGIC;
	clk : IN STD_LOGIC;
	G : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
	green_switch : IN STD_LOGIC;
	Hsync : BUFFER STD_LOGIC;
	nblanck : OUT STD_LOGIC;
	nsync : OUT STD_LOGIC;
	pixel_clk : BUFFER STD_LOGIC;
	R : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
	red_switch : IN STD_LOGIC;
	Vsync : BUFFER STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : testing3
	PORT MAP (
-- list connections between master ports and signals
	B => B,
	blue_switch => blue_switch,
	clk => clk,
	G => G,
	green_switch => green_switch,
	Hsync => Hsync,
	nblanck => nblanck,
	nsync => nsync,
	pixel_clk => pixel_clk,
	R => R,
	red_switch => red_switch,
	Vsync => Vsync
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
        -- code that executes only once  
			clk <="0000";
			wait for 10ns;
WAIT;                                                       
END PROCESS init;                                           
always : PROCESS                                              
-- optional sensitivity list                                  
-- (        )                                                 
-- variable declarations                                      
BEGIN                                                         
        -- code executes for every event on sensitivity list  
WAIT;                                                        
END PROCESS always;                                          
END testing3_arch;
