----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:18:35 12/05/2021 
-- Design Name: 
-- Module Name:    clkdivider - Behavioral 
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

entity clkdivider is
    Port ( clk : in  STD_LOGIC;
           mode_in : in  STD_LOGIC_VECTOR (1 downto 0);
           out_put : out  STD_LOGIC);
end clkdivider;

architecture Behavioral of clkdivider is

signal ds15_1,ds15_2,ds19_1,ds19_2,ds21_1,ds21_2,ds23_1,ds23_2:std_logic;
signal counter15_1,counter15_2,counter19_1,counter19_2,counter21_1,counter21_2,counter23_1,counter23_2:integer:=1;
signal d15,d19,d21,d23:std_logic;

begin
-----------------------------------------
process(clk)
begin

if clk' event and clk = '1' then
		if counter15_1=15 then
			ds15_1 <= '1';
			counter15_1 <= 1;
		elsif counter15_1 >= 7 then
		   ds15_1 <= '0';
		   counter15_1<= counter15_1 +1;
		else
		   ds15_1<= '1';
			counter15_1 <= counter15_1 +1;
		end if;
	end if;
end process;
------------------------------
process(clk)
begin

if clk' event and clk = '0' then
		if counter15_2=15 then
			ds15_2 <= '1';
			counter15_2 <= 1;
		elsif counter15_2 >= 7 then
		   ds15_2 <= '0';
		   counter15_2<= counter15_2 +1;
		else
		   ds15_2<= '1';
			counter15_2 <= counter15_2 +1;
		end if;
	end if;
end process;

d15<=ds15_1 or ds15_2;

--------------------------------------
-----------------------------------------
process(clk)
begin

if clk' event and clk = '1' then
		if counter19_1=19 then
			ds19_1 <= '1';
			counter19_1 <= 1;
		elsif counter19_1 >= 9 then
		   ds19_1 <= '0';
		   counter19_1<= counter19_1 +1;
		else
		   ds19_1<= '1';
			counter19_1 <= counter19_1 +1;
		end if;
	end if;
end process;
------------------------------
process(clk)
begin

if clk' event and clk = '0' then
		if counter19_2=19 then
			ds19_2 <= '1';
			counter19_2 <= 1;
		elsif counter19_2 >= 9 then
		   ds19_2 <= '0';
		   counter19_2<= counter19_2 +1;
		else
		   ds19_2<= '1';
			counter19_2 <= counter19_2 +1;
		end if;
	end if;
end process;

d19<=ds19_1 or ds19_2;

-----------------------------------------
process(clk)
begin

if clk' event and clk = '1' then
		if counter21_1=21 then
			ds21_1 <= '1';
			counter21_1 <= 1;
		elsif counter21_1 >= 10 then
		   ds21_1 <= '0';
		   counter21_1<= counter21_1 +1;
		else
		   ds21_1<= '1';
			counter21_1 <= counter21_1 +1;
		end if;
	end if;
end process;
------------------------------
process(clk)
begin

if clk' event and clk = '0' then
		if counter21_2=21 then
			ds21_2 <= '1';
			counter21_2 <= 1;
		elsif counter21_2 >= 10 then
		   ds21_2 <= '0';
		   counter21_2<= counter21_2 +1;
		else
		   ds21_2<= '1';
			counter21_2 <= counter21_2 +1;
		end if;
	end if;
end process;

d21<=ds21_1 or ds21_2;

-----------------------------------------
process(clk)
begin

if clk' event and clk = '1'  then
		if counter23_1=23 then
			ds23_1 <= '1';
			counter23_1 <= 1;
		elsif counter23_1 >= 11 then
		   ds23_1 <= '0';
		   counter23_1<= counter23_1 +1;
		else
		   ds23_1<= '1';
			counter23_1 <= counter23_1 +1;
		end if;
	end if;
end process;
------------------------------
process(clk)
begin

if clk' event and clk = '0' then
		if counter23_2=23 then
			ds23_2 <= '1';
			counter23_2 <= 1;
		elsif counter23_2 >= 11 then
		   ds23_2 <= '0';
		   counter23_2<= counter23_2 +1;
		else
		   ds23_2<= '1';
			counter23_2 <= counter23_2 +1;
		end if;
	end if;
end process;

d23<=ds23_1 or ds23_2;

----------------------
process(clk)
begin
if clk' event and clk = '1' then
		case mode_in is
			when "00" =>
				out_put <= d15;
			when "01" =>
				out_put <= d19;
			when "10" =>
				out_put <= d21;
			when "11" =>
				out_put <= d23;
			when others =>
				out_put <= '0';
		end case;
end if;
end process;

--------------------------
end Behavioral;

