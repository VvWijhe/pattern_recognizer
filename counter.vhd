library ieee;
use ieee.std_logic_1164.all;
use work.seven_segment_display.all;

entity counter is
	port(	clk 	: in std_logic;
			reset : in std_logic;
			match : in std_logic;
			seg1	: out std_logic_vector(3 DOWNTO 0);
			seg2	: out std_logic_vector(3 DOWNTO 0)	
	);
end counter;