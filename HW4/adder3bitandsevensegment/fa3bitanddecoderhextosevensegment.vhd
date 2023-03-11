----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:42:08 11/28/2021 
-- Design Name: 
-- Module Name:    fa3bitanddecoderhextosevensegment - Behavioral 
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

entity fa3bitanddecoderhextosevensegment is
    Port ( A1 : in  STD_LOGIC_VECTOR (2 downto 0);
           B1 : in  STD_LOGIC_VECTOR (2 downto 0);
           cin : in  STD_LOGIC;
           outdecoder : out  STD_LOGIC_VECTOR (7 downto 0));
end fa3bitanddecoderhextosevensegment;

architecture Behavioral of fa3bitanddecoderhextosevensegment is

component fa is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           Cin : in  STD_LOGIC;
           S : out  STD_LOGIC;
           Cout : out  STD_LOGIC);
end component;

signal S1 :STD_LOGIC_VECTOR (2 downto 0);
signal C:STD_LOGIC_VECTOR (2 downto 0);
signal indecoder:STD_LOGIC_VECTOR (3 downto 0);

begin
---------------------
fa_inst0: fa 
    Port map
			( S => S1(0),
			  A => A1(0),
           B => B1(0),
           Cin => cin,
           Cout => C(0));
---------------------------
fa_inst1: fa 
    Port map
			( A => A1(1),
           B => B1(1),
           Cin => C(0),
           S => S1(1),
           Cout => C(1));
			  
----------------------------------
fa_inst2: fa 
    Port map
			( A => A1(2),
           B => B1(2),
           Cin => C(1),
           S => S1(2),
           Cout => C(2));
			  
----------------------------------
indecoder<=C(2) & S1;

-------------------------------------

outdecoder <=  "00111111"  when  indecoder="0000"  else
					"00000110"  when  indecoder="0001"  else
					"01011011"  when  indecoder="0010"  else
					"01001111"  when  indecoder="0011"  else
					"01100110"  when  indecoder="0100"  else
					"01101101"  when  indecoder="0101"  else
					"01111101"  when  indecoder="0110"  else
					"00000111"  when  indecoder="0111"  else
					"01111111"  when  indecoder="1000"  else
					"01101111"  when  indecoder="1001"  else
					"01110111"  when  indecoder="1010"  else
					"01111100"  when  indecoder="1011"  else
					"00111001"  when  indecoder="1100"  else
					"01011110"  when  indecoder="1101"  else
					"01111001"  when  indecoder="1110"  else
					"01110001"  when  indecoder="1111"  else
					"00000000";

end Behavioral;

