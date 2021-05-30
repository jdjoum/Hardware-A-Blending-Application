library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Sync_Pulses is
  generic (
    g_TOTAL_COLS  : integer := 20;
    g_TOTAL_ROWS  : integer := 12;
    g_ACTIVE_COLS : integer := 12;
    g_ACTIVE_ROWS : integer := 8 ;
total_pixels  : integer := 8
    );
  port (
    i_Clk       : in  std_logic;
	 i_ClkRST	 : in  std_logic;
pixel_Clk   : buffer std_logic;
    o_HSync     : out std_logic;
    o_VSync     : out std_logic;
dV          : out std_logic;
o_Col_Count : out std_logic_vector(9 downto 0);
    o_Row_Count : out std_logic_vector(9 downto 0)
    );
end entity Sync_Pulses;

architecture RTL of Sync_Pulses is

  constant c_FRONT_PORCH_HORZ : integer := 2;
  constant c_SYNC_PULSE_HORZ  : integer := 2;
  constant c_BACK_PORCH_HORZ  : integer := 4;
  constant c_FRONT_PORCH_VERT : integer := 1;
  constant c_SYNC_PULSE_VERT  : integer := 1;
  constant c_BACK_PORCH_VERT  : integer := 2;


  signal r_Col_Count : integer range 0 to g_TOTAL_COLS-1 := 0;
  signal r_Row_Count : integer range 0 to g_TOTAL_ROWS-1 := 0;
  signal pixel_count : integer range 0 to total_pixels-1 := 0;
 

begin

  count_pixel : process (i_Clk) is
  begin
    if rising_edge(i_Clk) then
  if pixel_count = total_pixels-1 then
    pixel_count <= 0;
else  
       pixel_count <= pixel_count + 1;
end if;  
end if;
end process count_pixel;

pixel_Clk <= '0' when pixel_count < 4 else '1';

  p_Row_Col_Count : process (pixel_Clk) is
  begin
  if(i_ClkRST = '1')then
		r_Col_Count <= 0;
		r_Row_Count <= 0;
    elsif rising_edge(pixel_Clk) then
      if r_Col_Count = g_TOTAL_COLS-1 then
        if r_Row_Count = g_TOTAL_ROWS-1 then
          r_Row_Count <= 0;
        else
          r_Row_Count <= r_Row_Count + 1;
        end if;
        r_Col_Count <= 0;
      else
        r_Col_Count <= r_Col_Count + 1;
      end if;
    end if;
  end process p_Row_Col_Count;

 
 
 
 
  o_HSync <= '1' when (r_Col_Count >= c_SYNC_PULSE_HORZ)  else '0';
  o_VSync <= '1' when (r_Row_Count >= c_SYNC_PULSE_VERT)  else '0';
   


       dV <= '1' when (r_Col_Count <   (g_ACTIVE_COLS + c_BACK_PORCH_HORZ)) and
                    (r_Col_Count >=  (c_FRONT_PORCH_HORZ + c_SYNC_PULSE_HORZ)) and
(r_Row_Count <=  (g_ACTIVE_ROWS + c_FRONT_PORCH_VERT)) and
(r_Row_Count >   c_FRONT_PORCH_VERT) else '0';

 
  o_Col_Count <= std_logic_vector(to_unsigned(r_Col_Count, o_Col_Count'length));
  o_Row_Count <= std_logic_vector(to_unsigned(r_Row_Count, o_Row_Count'length));
 
 
end architecture RTL;