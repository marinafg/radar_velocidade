library ieee;
use ieee.std_logic_1164.all;

entity vel is
	port
	(
		-- Input ports
		V1, V2	: in  std_logic_vector (15 DOWNTO 0);
		CLK      : in std_logic;
		-- Output ports
		VMENOR	: out std_logic_vector (15 DOWNTO 0);
		VMEDIA	: out std_logic_vector (15 DOWNTO 0);
		VMAIOR	: out std_logic_vector (15 DOWNTO 0)
	);
end vel;

architecture arq of vel is
	
	component adder is
		port 
	(
		a	   : in signed	(7 downto 0);
		b	   : in signed	(7 downto 0);
		result : out signed (7 downto 0)
	);
	end component adder;
	
	component comp is
		port (
			 X,Y: in std_logic_vector(1 downto 0); -- two inputs for comparison
			 X_less_Y: out std_logic; -- '1' if A < B else '0'
			 X_equal_Y: out std_logic;-- '1' if A = B else '0'
			 X_greater_Y: out std_logic-- '1' if A > B else '0'
			 );
	end component comp;
	
	signal VA, VB, MEN, MED, MAI, r1: std_logic_vector (15 DOWNTO 0);
	signal clock: std_logic;

begin
	SOMA: adder port map(VA, VB, r1);
	COMPARACAO: comp port map(VA, VB, MEN, MAI);
	-- Process Statement (optional)
	process (clk, r1)
		begin
			MED <= "0" & r1(7 DOWNTO 1);
	end process;
	
	process (VA, VB)
		
	-- Concurrent Procedure Call (optional)

	-- Concurrent Signal Assignment (optional)

	-- Conditional Signal Assignment (optional)

	-- Selected Signal Assignment (optional)

	-- Component Instantiation Statement (optional)

	-- Generate Statement (optional)

end <arch_name>;
