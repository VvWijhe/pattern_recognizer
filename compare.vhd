library ieee;
use ieee.std_logic_1164.all;

entity compare is
	port(	clk					: in std_logic;
			reset					: in std_logic;
			seg1_behaviour 	: in std_logic_vector(6 downto 0);
			seg2_behaviour 	: in std_logic_vector(6 downto 0);
			seg1_subsystems	: in std_logic_vector(6 downto 0);
			seg2_subsystems	: in std_logic_vector(6 downto 0));
end compare;

architecture compare_pattern_recognizers of compare is
begin

	process(clk, reset)
	variable start 	: std_logic := '0';
	begin
	
	if(reset = '0' and start = '0') then
		start := '1';	
	
	elsif (start = '1' and falling_edge(clk)) then
	
		if((seg1_behaviour /= seg1_subsystems) or
			(seg2_behaviour /= seg2_subsystems)) then
			
			assert false report "Segment display don't match" severity error;
			
		end if;
		
	end if;
	end process;
	
end compare_pattern_recognizers;