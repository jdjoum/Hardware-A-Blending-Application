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
-- Generated on "05/27/2021 20:48:38"
                                                            
-- Vhdl Test Bench template for design  :  Sync_Pulses
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                              
USE ieee.std_logic_1164.all;                                

ENTITY Sync_Pulses_vhd_tst IS
END Sync_Pulses_vhd_tst;
ARCHITECTURE Sync_Pulses_arch OF Sync_Pulses_vhd_tst IS
-- constants                                                
-- signals                                                  
SIGNAL dV : STD_LOGIC;
SIGNAL i_Clk : STD_LOGIC:= '0';
SIGNAL o_Col_Count : STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL o_HSync : STD_LOGIC;
SIGNAL o_Row_Count : STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL o_VSync : STD_LOGIC;
SIGNAL pixel_Clk : STD_LOGIC:= '0';
SIGNAL i_ClkRST   :  STD_LOGIC  ; 
COMPONENT Sync_Pulses
PORT (
dV : OUT STD_LOGIC;
i_Clk : IN STD_LOGIC;
o_Col_Count : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
o_HSync : OUT STD_LOGIC;
o_Row_Count : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
o_VSync : OUT STD_LOGIC;
pixel_Clk : BUFFER STD_LOGIC;
i_ClkRST  : in STD_LOGIC ); 
END COMPONENT;
BEGIN
i1 : Sync_Pulses
PORT MAP (
-- list connections between master ports and signals
dV => dV,
i_Clk => i_Clk,
o_Col_Count => o_Col_Count,
o_HSync => o_HSync,
o_Row_Count => o_Row_Count,
o_VSync => o_VSync,
pixel_Clk => pixel_Clk,
i_ClkRST   => i_ClkRST   ) ; 

i_Clk <= not i_Clk after 1.356337ns;

init : PROCESS                                              
-- variable declarations                                    
BEGIN                                                        
        -- code that executes only once                      
WAIT;                                                      
END PROCESS init;    
                                      
state_gen:process
begin
	wait for 5000 ns;
	i_ClkRST<='0';
	wait for 15000 ns;
	i_ClkRST<='1';
end process;    
                                    
END Sync_Pulses_arch;

