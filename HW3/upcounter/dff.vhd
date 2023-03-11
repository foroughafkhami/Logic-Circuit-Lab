----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:43:23 11/09/2020 
-- Design Name: 
-- Module Name:    DFF - Behavioral 
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

entity DFF is
    Port ( D : in  STD_LOGIC;
			  RST : in std_logic;
           Q : out  STD_LOGIC;
           Q_not : out  STD_LOGIC;
           clk : in  STD_LOGIC);
end DFF;

architecture Behavioral of DFF is

begin

process(clk)
begin
	if clk' event and clk = '1' then 
		if RST = '1' then
			Q   <= '0';
			Q_not <= '1';
		else
			Q <= D;
			Q_not <= not D;
		end if;
end if;

end process;


end Behavioral;

