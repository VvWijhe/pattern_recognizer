library ieee;
use ieee.std_logic_1164.all;

entity disp_driver is
	port(	bcd 		: in integer range 0 to 15;
			seg_disp	: out std_logic_vector(6 DOWNTO 0)	
	);
end disp_driver;

architecture structure of disp_driver is
	begin
		process(bcd)
		begin
		
		case bcd is 
			WHEN 0 => seg_disp <= "1000000"; -- 0, 
         WHEN 1 => seg_disp <= "1111001"; -- 1
         WHEN 2 => seg_disp <= "0100100"; -- 2
         WHEN 3 => seg_disp <= "0110000"; -- 3 
         WHEN 4 => seg_disp <= "0011001"; -- 4
         WHEN 5 => seg_disp <= "0010010"; -- 5
         WHEN 6 => seg_disp <= "0000010"; -- 6
         WHEN 7 => seg_disp <= "1111000"; -- 7
         WHEN 8 => seg_disp <= "0000000"; -- 8
         WHEN 9 => seg_disp <= "0010000"; -- 9
         WHEN OTHERS => seg_disp <= "0111111"; --
		END CASE;
		
		end process;
	
end structure;