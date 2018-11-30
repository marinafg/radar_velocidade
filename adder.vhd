-- Quartus II VHDL Template
-- Signed Adder

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity signed_adder is

	port 
	(
		a	   : in signed	(7 downto 0);
		b	   : in signed	(7 downto 0);
		result : out signed (7 downto 0)
	);

end entity;

architecture rtl of signed_adder is
begin

	result <= a + b;

end rtl;
