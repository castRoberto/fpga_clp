library IEEE;
use IEEE.std_logic_1164.all;

-- flip-flop D
--
entity ffd is

	port (
		clk_i : in std_logic;
		rst_i : in std_logic;
		ena_i : in std_logic;
		d_i   : in std_logic;
		q_o   : out std_logic
	);
	
end;

architecture ffd_arq of ffd is
	-- Seccion declarativa

begin

	-- Seccion descriptiva

	process(clk_i)

	begin

		if rising_edge (clk_i) then --falling_edge

			if rst_i = '1' then
	
				q_o <= '0';
	
			elsif ena_i = '1' then
	
				q_o <= d_i;
	
			end if;
	
		end if;

	end process;

end;