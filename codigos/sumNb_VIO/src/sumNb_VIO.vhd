library IEEE;
use IEEE.std_logic_1164.all;


entity sumNb_VIO is

	port (
		clk_i	: in std_logic
	);
	
end;

architecture sumNb_VIO_arq of sumNb_VIO is
	-- Seccion declarativa

	probe_a: std_logic_vector(3 downto 0);
	probe_b: std_logic_vector(3 downto 0);
	probe_ci: std_logic_vector(0 downto 0);
	probe_s: std_logic_vector(3 downto 0);
	probe_o: std_logic_vector(0 downto 0);

	signal c_aux: std_logic_vector(N downto 0);

begin

	-- Seccion descriptiva

	sumNb_i: entity work.sumNb
		generic map (
			N => 4
		)
		port map (
			a_i => probe_a,
			b_i => probe_b,
			ci_i => probe_ci(0),
			s_o => probe_s,
			co_o => probe_o(0)
		);
	
end;