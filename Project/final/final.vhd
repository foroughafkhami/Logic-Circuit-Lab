----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:36:54 12/30/2021 
-- Design Name: 
-- Module Name:    final - Behavioral 
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

entity final is
    Port ( clk : in  STD_LOGIC;
           up_down : in  STD_LOGIC;
			  en1 : out  STD_LOGIC;
           en2 : out  STD_LOGIC;
			  seven: out  STD_LOGIC_VECTOR (6 downto 0);
			  f_25 : out STD_LOGIC;
			  f_50 : out STD_LOGIC;
			  f_75 : out STD_LOGIC);
end final;

architecture Behavioral of final is

signal clk_5:std_logic;
signal counter5_1,counter5_2:integer :=1;
signal ds5_1,ds5_2:std_logic;
signal counter:unsigned(6 downto 0):="0000000";
signal binary_s: unsigned(7 downto 0);
signal decimal: unsigned(7 downto 0);
signal counter_clk : integer := 1;
signal seven_s: std_logic_vector(3 downto 0);

begin

-----------------------
--------clk-divider-----------
process(clk)
begin

if clk' event and clk = '1' then
	if counter5_1 = 5 then
		ds5_1 <= '1';
		counter5_1 <= 1;
	elsif counter5_1 >= 2 then
		ds5_1 <= '0';
		counter5_1 <= counter5_1 +1;
	else
		ds5_1 <= '1';
		counter5_1 <= counter5_1 +1;
	end if;
	
end if;
end process;
----------------------------
process(clk)
begin

if clk' event and clk = '0' then
	if counter5_2 = 5 then
		ds5_2 <= '1';
		counter5_2 <= 1;
	elsif counter5_2 >= 2 then
		ds5_2 <= '0';
		counter5_2 <= counter5_2 +1;
	else
		ds5_2 <= '1';
		counter5_2 <= counter5_2 +1;
	end if;
	
end if;
end process;

clk_5 <= ds5_1 or ds5_2;
------------------------------------
-------counter---------
process(clk_5,up_down)
begin
if clk_5' event and clk_5='1' then
	if (up_down='0') then
		if counter="1100011" then
			counter<="0000000";
		else
			counter<=counter+1;
		end if;
	else
		if counter="000000" then
			counter<="1100011";
		else
			counter<=counter-1;
		end if;	
	end if;
end if;
end process;
-----------------------------------
----convert to decimal-----------

binary_s <= unsigned("0"&counter);
process(clk_5)
begin

if clk_5' event and clk_5 = '1' then

	if binary_s <= to_unsigned(9,8) then
		decimal <= binary_s;
		
	elsif binary_s <= to_unsigned(19,8) then
		decimal <= binary_s+to_unsigned(6,8);
		
	elsif binary_s <= to_unsigned(29,8) then
		decimal <= binary_s+to_unsigned(12,8);
		
	elsif binary_s <= to_unsigned(39,8) then
		decimal <= binary_s+to_unsigned(18,8);
		
	elsif binary_s <= to_unsigned(49,8) then
		decimal <= binary_s+to_unsigned(24,8);
		
	elsif binary_s <= to_unsigned(59,8) then
		decimal <= binary_s+to_unsigned(30,8);
		
	else
		decimal <= binary_s+to_unsigned(36,8);
		
   end if;
	
end if;
end process;
--------------------------------------
----set 2 MHzfor enables---------
process(clk_5)
begin

if clk_5' event and clk_5 = '1' then

	if counter_clk = 50 then 	
		counter_clk <= 1;
	elsif counter_clk > 50/2 then 
		seven_s <= std_logic_vector(decimal(3 downto 0));
		en1 <= '1';
		en2 <= '0'; 
		counter_clk <=counter_clk +1;
	else                                     
		seven_s <= std_logic_vector(decimal(7 downto 4));
		en1 <= '0';
		en2 <= '1'; 
		counter_clk <=counter_clk +1;
	end if;
	
end if; 
end process;
		
------------------
-------sevensegment-----------

process(clk_5)
begin
if clk_5' event and clk_5 = '1' then

	case seven_s is
	when "0000" => 
		seven <= "1111110";
	when "0001" => 
		seven <= "1100000";
	when "0010" => 
		seven <= "1101101";
	when "0011" => 
		seven <= "1111001";
	when "0100" => 
		seven <= "0110011";
	when "0101" => 
		seven <= "1011011";
	when "0110" => 
		seven <= "1011111";
	when "0111" => 
		seven <= "1110000";
	when "1000" => 
		seven <= "1111111";
	when "1001" => 
		seven <= "1111011";
	when others =>
	   seven <= "0000000";
	end case;

end if; 
end process;	


------------------------------
---------flags---------------

process(clk_5,up_down)
begin
if clk_5' event and clk_5='1' then
	if up_down='0' then                        
		if counter="0011001" then     --25         
			f_25<='1';
		elsif counter="0011010" then   --26        
			f_25<='0';
		elsif counter="0110010" then   --50        
			f_50<='1';
		elsif counter="0110011" then    --51    
			f_50<='0';
		elsif counter="1001011" then    --75   
			f_75<='1';
		elsif counter="1001100" then    --76
			f_75<='0';
		end if;
	else
		if counter="0011001" then     --25         
			f_25<='1';
		elsif counter="0011000" then  --24          
			f_25<='0';
		elsif counter="0110010" then  --50            
			f_50<='1';
		elsif counter="0110001" then  --49          
			f_50<='0';
		elsif counter="1001011" then  --75         
			f_75<='1';
		elsif counter="1001010" then   --74 
			f_75<='0';
		end if;
	end if;

end if;
end process;
-------------------------			

end Behavioral;

