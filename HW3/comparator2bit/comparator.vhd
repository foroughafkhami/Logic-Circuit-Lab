----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:56:13 11/20/2021 
-- Design Name: 
-- Module Name:    comparator - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity comparator is
    Port ( clk : in  STD_LOGIC;
           A : in  STD_LOGIC_VECTOR (1 downto 0);
           B : in  STD_LOGIC_VECTOR (1 downto 0);
           A_grater_B : out  STD_LOGIC;
           A_equal_B : out  STD_LOGIC;
           A_less_B : out  STD_LOGIC);
end comparator;

architecture Behavioral of comparator is


begin
process(clk)
begin

	if clk' event and clk='1' then
		if A(1)>B(1) then
			A_grater_B<='1';
			A_equal_B<='0';
			A_less_B<='0';
		elsif	A(1)<B(1) then
			A_grater_B<='0';
			A_equal_B<='0';
			A_less_B<='1';
		elsif A(0)>B(0) then
			A_grater_B<='1';
			A_equal_B<='0';
			A_less_B<='0';
		elsif	A(0)<B(0) then
			A_grater_B<='0';
			A_equal_B<='0';
			A_less_B<='1';
		else
			A_grater_B<='0';
			A_equal_B<='1';
			A_less_B<='0';
		end if;
	end if;
end process;

end Behavioral;

