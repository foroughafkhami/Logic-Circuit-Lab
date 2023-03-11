----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:53:45 12/12/2021 
-- Design Name: 
-- Module Name:    sevensegment - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity sevensegment is
    Port ( en1 : out  STD_LOGIC;
           en2 : out  STD_LOGIC;
           in1 : in  STD_LOGIC_VECTOR (4 downto 0);
           in2 : in  STD_LOGIC_VECTOR (4 downto 0);
           clk : in  STD_LOGIC;
           seven : out  STD_LOGIC_VECTOR (6 downto 0));
end sevensegment;

architecture Behavioral of sevensegment is

-------------
component FA5bit is
    Port ( A1 : in  STD_LOGIC_VECTOR (4 downto 0);
           B1 : in  STD_LOGIC_VECTOR (4 downto 0);
           S1 : out  STD_LOGIC_VECTOR (4 downto 0);
           Cin1 : in  STD_LOGIC;
           Cout1 : out  STD_LOGIC);
end component;
---------------------------------
signal counter_clk : integer := 1;
signal binary_s : unsigned(7 downto 0);
signal binary_in:std_logic_vector(5 downto 0);
signal decimal : unsigned(7 downto 0);
signal seven_s  : std_logic_vector(3 downto 0);
-----------------------------------
begin

instFA5:FA5bit 
    port map (A1 =>in1,
					B1 =>in2,
					S1 => binary_in(4 downto 0),
					Cin1 =>'0',
					Cout1 => binary_in(5));

--------------------------
binary_s <= unsigned("00"&binary_in);
----------------------------------

process(clk)
begin

if clk' event and clk = '1' then

-------binary-to-decimal-calculating2digits--------

	if binary_s <= to_unsigned(9,8) then 	 --0 to 9
		decimal <= binary_s;
	elsif binary_s <= to_unsigned(19,8) then --10 to 19
		decimal <= binary_s+to_unsigned(6,8);
	elsif binary_s <= to_unsigned(29,8) then --20 to 29
		decimal <= binary_s+to_unsigned(12,8);
	elsif binary_s <= to_unsigned(39,8) then --30 to 39
		decimal <= binary_s+to_unsigned(18,8);
	elsif binary_s <= to_unsigned(49,8) then --40 to 49
		decimal <= binary_s+to_unsigned(24,8);
	elsif binary_s <= to_unsigned(59,8) then --50 to 59
		decimal <= binary_s+to_unsigned(30,8);
	else                                     --60 to 63
		decimal <= binary_s+to_unsigned(36,8);
	end if;
end if;
end process;

------------on/off2sevensegments---------------

process(clk)
begin

if clk' event and clk = '1' then

	if counter_clk = 10000 then 				---10000000 (T = 10000000*)
		counter_clk <= 1;
	
	elsif counter_clk > 10000/2 then  		---10000000/2+1 => 10000000
		seven_s <= std_logic_vector(decimal(3 downto 0));
		en1 <= '1';
		en2 <= '0'; 
		counter_clk <= counter_clk +1;
	
	else                                        ---1 => 10000000/2
		seven_s <= std_logic_vector(decimal(7 downto 4));
		en1 <= '0';
		en2 <= '1'; 
		counter_clk <=  counter_clk +1;
	
	end if;
end if; 
end process;

---------decoder------------- 

process(clk)
begin

if clk' event and clk = '1' then

		case seven_s is 
		when  "0000" =>
			seven <="1111110";
		when  "0001" =>			
			seven <="1100000";
		when "0010" =>
			seven <="1101101";
		when "0011" =>
			seven <="1111001";
		when "0100" =>
			seven <="0110011";
		when "0101" =>
			seven <="1011011";
	   when "0110"=>
			seven <="1011111";
		when "0111"=>
			seven <="1110000";
		when "1000"=>
			seven <="1111111";
		when "1001"=>
			seven <="1111011";
		when others=>
			seven <="0000000";
	end case;
end if; 
end process;


end Behavioral;

