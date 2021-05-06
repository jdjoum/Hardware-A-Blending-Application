LIBRARY ieee  ; 
LIBRARY std  ; 
USE ieee.NUMERIC_STD.all  ; 
USE ieee.std_logic_1164.all  ; 
USE ieee.std_logic_textio.all  ; 
USE ieee.STD_LOGIC_UNSIGNED.all  ; 
USE ieee.std_logic_unsigned.all  ; 
USE std.textio.all  ; 
ENTITY tb4  IS 
END ; 
 
ARCHITECTURE tb4_arch OF tb4 IS
  SIGNAL HSYNC   :  STD_LOGIC  ; 
  SIGNAL CLK   :  STD_LOGIC  ; 
  SIGNAL RGB   :  std_logic_vector (2 downto 0)  ; 
  SIGNAL VSYNC   :  STD_LOGIC  ; 
  SIGNAL clkRST   :  STD_LOGIC  ; 
  COMPONENT testing6  
    PORT ( 
      HSYNC  : out STD_LOGIC ; 
      CLK  : in STD_LOGIC ; 
      RGB  : out std_logic_vector (2 downto 0) ; 
      VSYNC  : out STD_LOGIC ; 
      clkRST  : in STD_LOGIC ); 
  END COMPONENT ; 
BEGIN
  DUT  : testing6  
    PORT MAP ( 
      HSYNC   => HSYNC  ,
      CLK   => CLK  ,
      RGB   => RGB  ,
      VSYNC   => VSYNC  ,
      clkRST   => clkRST   ) ; 



-- "Clock Pattern" : dutyCycle = 50
-- Start Time = 0 ps, End Time = 1 ns, Period = 100 ps
  Process
	Begin
	 CLK  <= '0'  ;
	wait for 50 ps ;
-- 50 ps, single loop till start period.
	for Z in 1 to 9
	loop
	    CLK  <= '1'  ;
	   wait for 50 ps ;
	    CLK  <= '0'  ;
	   wait for 50 ps ;
-- 950 ps, repeat pattern in loop.
	end  loop;
	 CLK  <= '1'  ;
	wait for 50 ps ;
-- dumped values till 1 ns
	wait;
 End Process;


-- "Constant Pattern"
-- Start Time = 0 ps, End Time = 1 ns, Period = 0 ps
  Process
	Begin
	 clkRST  <= '0'  ;
	wait for 1 ns ;
-- dumped values till 1 ns
	wait;
 End Process;


-- "Constant Pattern"
-- Start Time = 0 ps, End Time = 1 ns, Period = 0 ps
  Process
	Begin
	 if HSYNC  /= ('0'  ) then 
		report " test case failed" severity error; end if;
	wait for 1 ns ;
-- dumped values till 1 ns
	wait;
 End Process;


-- "Constant Pattern"
-- Start Time = 0 ps, End Time = 1 ns, Period = 0 ps
  Process
	Begin
	 if VSYNC  /= ('0'  ) then 
		report " test case failed" severity error; end if;
	wait for 1 ns ;
-- dumped values till 1 ns
	wait;
 End Process;


-- "Constant Pattern"
-- Start Time = 0 ps, End Time = 1 ns, Period = 0 ps
  Process
	Begin
	 if RGB  /= ("000"  ) then 
		report " test case failed" severity error; end if;
	wait for 1 ns ;
-- dumped values till 1 ns
	wait;
 End Process;
END;
