LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
ENTITY testset IS
  PORT (	clk, reset, data	: out std_logic := '0');
END testset;

ARCHITECTURE set1 OF testset IS
	signal clock : std_logic := '0';
BEGIN
	clock <= not clock after 10 ns;
	clk <= clock;
	
  PROCESS
  BEGIN
    
	 wait for 100 ns;
	 reset <= '1';
	 wait for 100 ns;
	 
	 assert false report "Send the pattern 110 times" severity note;
	 
	 for i in 1 to 110 loop
	 data <= '0';
	 wait for 100 ns;
	 data <= '1';
	 wait for 100 ns;	 
	 end loop;
	 
	 assert false report "Reset the pattern recognizer" severity note;
	 
	 reset <= '0';
	 wait for 100 ns;
	 
	 assert false report "Send the pattern 50 times " severity note;
	 
	 for i in 1 to 50 loop
	 data <= '0';
	 wait for 100 ns;
	 data <= '1';
	 wait for 100 ns;
	 end loop;
	 
	 assert false report "Testset done" severity note;
	 
    WAIT; -- forever
  END PROCESS;
END set1;






