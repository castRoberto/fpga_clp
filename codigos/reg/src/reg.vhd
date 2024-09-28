library IEEE;
use IEEE.std_logic_1164.all;

-- flip-flop D
--
entity reg is

	port (
		clk_i : in std_logic;
		rst_i : in std_logic;
		ena_i : in std_logic;
		d_i   : in std_logic_vector(3 downto 0);
		q_o   : out std_logic_vector(3 downto 0)
	);
	
end;

architecture reg_arq of reg is
	-- Seccion declarativa

begin

	-- Seccion descriptiva

	process(clk_i)

	begin

		if rising_edge (clk_i) then --falling_edge

			if rst_i = '1' then
	
				q_o <= (others => '0'); -- (3 downto 0 => "0000")
	
			elsif ena_i = '1' then
	
				q_o <= d_i;
	
			end if;
	
		end if;

	end process;

end;
