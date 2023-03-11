----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:48:33 12/12/2021 
-- Design Name: 
-- Module Name:    timerswitch - Behavioral 
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
use IEEE.STD_LOGIC_UNsigned.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity timerswitch is
    Port ( a : in  STD_LOGIC_VECTOR (3 downto 0);
           b : in  STD_LOGIC_VECTOR (3 downto 0);
           c : in  STD_LOGIC_VECTOR (3 downto 0);
           d : in  STD_LOGIC_VECTOR (3 downto 0);
           clk : in  STD_LOGIC;
           outmux : out  STD_LOGIC_VECTOR (3 downto 0));
end timerswitch;

architecture Behavioral of timerswitch is
------------------------------
signal tmp: STD_LOGIC_VECTOR(6 downto 0):="0000000";
signal q :  STD_LOGIC_VECTOR (1 downto 0);
--------------------------
begin

process (clk)

begin
	if (clk' event and clk='1') then
		tmp <= tmp + '1';
	end if;
end process;

q <= tmp(6 downto 5);

------------------------------
outmux <= a when (q="00") else
			 b when (q="01") else
			c when (q="10") else
			d ;

end Behavioral;

