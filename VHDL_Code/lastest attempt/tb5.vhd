LIBRARY ieee  ; 
LIBRARY std  ; 
USE ieee.NUMERIC_STD.all  ; 
USE ieee.std_logic_1164.all  ; 
USE ieee.std_logic_textio.all  ; 
USE ieee.STD_LOGIC_UNSIGNED.all  ; 
USE ieee.std_logic_unsigned.all  ; 
USE std.TEXTIO.all  ; 
USE std.textio.all  ; 
ENTITY tb5  IS 
END ; 
 
ARCHITECTURE tb5_arch OF tb5 IS
  SIGNAL HSYNC   :  STD_LOGIC  ; 
  SIGNAL CLK   :  STD_LOGIC:= '0' ; 
  SIGNAL RGB   :  std_logic_vector (2 downto 0)  ; 
  SIGNAL VSYNC   :  STD_LOGIC  ; 
  SIGNAL clkRST   :  STD_LOGIC:= '0'  ; 
  SIGNAL DV		:	STD_LOGIC	;
  COMPONENT testing6  
    PORT ( 
      HSYNC  : out STD_LOGIC ; 
      CLK  : in STD_LOGIC ; 
      --RGB  : out std_logic_vector (2 downto 0) ; 
      VSYNC  : out STD_LOGIC ; 
      clkRST  : in STD_LOGIC ;
		DV		: out STD_LOGIC);
  END COMPONENT ; 
 -- Clock period definitions
constant ClockFrequency : integer := 10e6; --10MHz
constant clk_period : time := 1000 ms / ClockFrequency;

BEGIN
  DUT  : testing6  
    PORT MAP ( 
      HSYNC   => HSYNC  ,
      CLK   => CLK  ,
     -- RGB   => RGB  ,
      VSYNC   => VSYNC  ,
      clkRST   => clkRST ,  
		DV 	=> DV ) ; 


-- Clock process definitions
clk_process :process
begin
            CLK <= '0';
            wait for clk_period/2;
            CLK <= '1';
            wait for clk_period/2;
end process;


--clkRST_process :process
--begin
  --          clkRST <= '0';
  --          wait for clk_period;
  --          clkRST <= '1';
  --          wait for clk_period;
--end process;

-- Stimulus process
stim_proc: process
begin         
--clkRST <= '1' after 300ns;       
  -- hold reset state for 100 ns.
            wait for 100ns;        

  wait for clk_period*2;
  -- insert stimulus here 

  wait;
end process;

END;

