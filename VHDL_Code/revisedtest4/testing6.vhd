library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

entity testing6 is
    Port ( CLK : in  STD_LOGIC;
           clkRST : in  STD_LOGIC;
           HSYNC : out  STD_LOGIC;
           VSYNC : out  STD_LOGIC;
      --     RGB : out  STD_LOGIC_VECTOR (2 downto 0);
			  DV : out STD_LOGIC);
end testing6;

architecture Behavioral of testing6 is

	--constant ClockFrequency : integer := 100e6; --100MHz
	--constant ClockPeriod : time := 1000 ms / ClockFrequency;
	signal clk10 : std_logic := '0';
	
	constant HD : integer := 11;  --    Horizontal Display (640)
	constant HFP : integer := 4;         --      Right border (front porch)
	--constant HSP : integer := 4;       --    Sync pulse (Retrace)
	constant HBP : integer := 4;        --      Left boarder (back porch)
	
	constant VD : integer := 7;   --     Vertical Display (480)
	constant VFP : integer := 2;       	 --     Right border (front porch)
	--constant VSP : integer := 2;				 --      Sync pulse (Retrace)
	constant VBP : integer := 2;       --      Left boarder (back porch)
	
	signal hPos : integer := 0;
	signal vPos : integer := 0;
	
	--signal vidOn : std_logic := '0';

begin


clk_div:process(CLK)
begin
	if(CLK'event and CLK = '1')then
		clk10 <= not clk10;
	end if;
end process;

Horizontal_position_counter:process(clk10, clkRST)
begin
	if(clkRST = '1')then
		hpos <= 0;
	elsif(clk10'event and clk10 = '1')then
		if (hPos = (HD + HFP + HBP)) then
			hPos <= 0;
		else
			hPos <= hPos + 1;
		end if;
	end if;
end process;

Vertical_position_counter:process(clk10, clkRST, hPos)
begin
	if(clkRST = '1')then
		vPos <= 0;
	elsif(clk10'event and clk10 = '1')then
		if(hPos = (HD + HFP + HBP))then
			if (vPos = (VD + VFP + VBP)) then
				vPos <= 0;
			else
				vPos <= vPos + 1;
			end if;
		end if;
	end if;
end process;

Horizontal_Synchronisation:process(clk10, clkRST, hPos)
begin
	if(clkRST = '1')then
		HSYNC <= '0';
	elsif(clk10'event and clk10 = '1')then
		if((hPos <= (HD + HFP)) AND (hPos > HFP))then
			HSYNC <= '1';
		else
			HSYNC <= '0';
		end if;
	end if;
end process;

Vertical_Synchronisation:process(clk10, clkRST, vPos)
begin
	if(clkRST = '1')then
		VSYNC <= '0';
	elsif(clk10'event and clk10 = '1')then
		if((vPos <= (VD + VFP)) AND (vPos > VFP))then
			VSYNC <= '1';
		else
			VSYNC <= '0';
		end if;
	end if;
end process;

video_on:process(clk10, clkRST, hPos, vPos)
begin
	if(clkRST = '1')then
		DV <= '0';
	elsif(clk10'event and clk10 = '1')then
		if((hpos <= (HD + HFP) AND (hPos > HFP)) AND ((vPos <= (VD + VFP) AND (vPos > VFP))))then
			DV <= '1';
		else
			DV <= '0';
		end if;
	end if;
end process;


--draw:process(clk10, clkRST, hPos, vPos, vidOn)
--begin
	--if(clkRST = '1')then
		--RGB <= "000";
--	elsif(clk10'event and clk10 = '1')then
	--	if(vidOn = '1')then
	--		if((hPos >= 5 and hPos <= 16) AND (vPos >= 3 and vPos <= 10))then
		--		RGB <= "111";
			--else
	--			RGB <= "000";
		--	end if;
--		else
	--		RGB <= "000";
		--end if;
	--end if;
--end process;


end Behavioral;
