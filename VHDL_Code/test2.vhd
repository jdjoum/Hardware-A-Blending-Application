-----------------------------------
-- Engineers: Group 1 Engineering Design (Written By: Orlando Salas)
-- Create Date: Apr. 19th 2021
-- Design Name: test2
-- Project Name: Design Project
-- Target Device: 10CL016YF484C8G
-- Tool Versions: 20.1
-- Description: Hardware 'A Blending' Application VHDL code
--
-- Dependencies: None
-- Revision:
-- Revision				0.01 - File Created
-- Additional Comments:
--
-----------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- 

ENTITY test2 IS
  PORT(
	 nRESET: IN STD_LOGIC;
    CLK: IN STD_LOGIC; 
    HSYNC,VSYNC: OUT STD_LOGIC;
    R,G,B : OUT STD_LOGIC_VECTOR(5 downto 0)
  );
END test2;

ARCHITECTURE MAIN of test2 IS

-- Horizontal timing (line)
constant hva : integer := 12; -- Visible area
constant hfp : integer :=  2; -- Front porch
constant hsp : integer :=  4; -- Sync pulse
constant hbp : integer :=  2; -- Back porch

-- Vertical timing (frame)
constant vva : integer := 8; -- Visible area
constant vfp : integer :=  1; -- Front porch
constant vsp : integer :=  2; -- Sync pulse
constant vbp : integer :=  1; -- Back porch


signal HPOS: integer range 0 to 20:=0;
signal VPOS: integer range 0 to 12:=0;

signal	sig_counter_1000		:		STD_LOGIC_VECTOR(9 downto 0):= "0000000000";


BEGIN


process(CLK)
begin
if rising_edge(CLK) then
  
  if HPOS < (hva+hfp+hsp+hbp) then
    HPOS <= HPOS + 1;
  else
    HPOS <= 0;
    if VPOS < (vva+vfp+vsp+vbp) then
      VPOS <= VPOS + 1;
    else
      VPOS <= 0;
    end if;
  end if;
  
  if HPOS > (hva+hfp) and HPOS < (hva+hfp+hsp) then
    HSYNC <= '0';
  else
    HSYNC <= '1';
  end if;
  
  if VPOS > (vva+vfp) and VPOS < (vva+vfp+vsp) then
    VSYNC <= '0';
  else
    VSYNC <= '1';
  end if;
  
  if (HPOS > hva) or (VPOS > vva) then
    R<=(OTHERS=>'0');
    G<=(OTHERS=>'0');
    B<=(OTHERS=>'0');
     
  end if;


end if;
end process;


END MAIN;