library ieee;
use ieee.std_logic_1164.all;

entity counter is
	port(	clk 	: in std_logic;
			reset : in std_logic;
			match : in std_logic;
			bcd1	: out integer range 0 to 15;
			bcd2	: out integer range 0 to 15	
	);
end counter;

architecture structure of counter is
	begin
		process(clk, reset, match)
			variable counter		: integer range 0 to 100;
			variable temp_bcd1	: integer range 0 to 15;
			variable temp_bcd2	: integer range 0 to 15;
		begin
			
			if(reset='0') then
				counter := 0;
				bcd1 <= 0;
				bcd2 <= 0;
			
			elsif rising_edge(clk) then
			
				if(match = '1') then 
				
					if(counter = 99) then
						temp_bcd1 := 10; 					--sent overflow to segment display
						temp_bcd2 := 10; 					--sent overflow to segment display
					else
					counter := counter + 1;
					temp_bcd1 := (counter mod 10); 	--sent least significant number to segment display
					temp_bcd2 := (counter/10); 		--sent most significant number to segment display
				
					end if;
				
					bcd1 <= temp_bcd1;
					bcd2 <= temp_bcd2;
				
				end if;	
		
			end if;
		
		end process;
	
end structure;