library ieee;
use ieee.std_logic_1164.all;

entity list_det is
	port(	clk 	: in std_logic;
			reset : in std_logic;
			data	: in std_logic;
			match	: out std_logic
	);
end list_det;

architecture structure of list_det is
begin
	process(clk, reset)
		type State_type is (S0, S1, S11, S111, S1110, S11100);
		variable State : State_Type;
		
		begin
		
		if(reset='0') then
			State := S0; 
			
			
		elsif rising_edge(clk) then
				case State is
					when S0 =>
						if(data = '1') then
							State := S1;
						else
							State := S0;
						end if;
					
					when S1 =>
						if(data = '1') then
							State := S11;
						else 
							State := S0;
						end if;
			
					when S11 =>
						if(data = '1') then
							State := S111;
						else
							State := S0;
						end if;
						
					when S111 =>
						if(data = '1') then
							State := S111;
						else
							State := S1110;
						end if;
						
					when S1110 =>
						if(data = '1') then
							State := S1;
						else
							State := S11100;
						end if;
						
					when S11100 =>
						if(data = '1') then
							State := S1;
						else
							State := S0;
						end if;
					
					when others =>
						State := S0;
						
				end case; 
				
				
				case State is

						when S11100 =>
								match <= '1';
								
						when others =>
								match <= '0';
					
				end case;

	end if;
	end process;
end structure;