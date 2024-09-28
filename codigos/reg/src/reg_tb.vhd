library IEEE;
use IEEE.std_logic_1164.all;


entity reg_tb is
	
end;

architecture reg_tb_arq of reg_tb is
	-- Seccion declarativa

    component reg is

        port (
            clk_i : in std_logic;
            rst_i : in std_logic;
            ena_i : in std_logic;
            d_i   : in std_logic_vector(3 downto 0);
            q_o   : out std_logic_vector(3 downto 0)
        );
        
    end component;

    signal clk_tb : std_logic := '0';
    signal rst_tb : std_logic := '1';
    signal ena_tb: std_logic := '1';
    signal d_tb : std_logic_vector(3 downto 0) := "0000";
    signal q_tb : std_logic_vector(3 downto 0);

begin

	-- Seccion descriptiva

    clk_tb <= not clk_tb after 10 ns;
    rst_tb <= '0' after 20 ns, '1' after 100 ns;
    ena_tb <= '0' after 105 ns, '1' after 120 ns;
    d_tb   <= "0001" after 60 ns, "0000" after 100 ns;
	
    DUT: entity work.reg (reg_arq)
        port map (
            clk_i => clk_tb,
            rst_i => rst_tb,
            ena_i => ena_tb,
            d_i   => d_tb,
            q_o   => q_tb
        );
	
end;