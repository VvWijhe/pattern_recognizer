library ieee;
use ieee.std_logic_1164.all;
use work.seven_segment_display.all;

entity disp_driver is
	port(	counter 	: in std_logic_vector( DOWNTO 0);
			seg_disp	: out std_logic_vector(6 DOWNTO 0)	
	);
end disp_driver;