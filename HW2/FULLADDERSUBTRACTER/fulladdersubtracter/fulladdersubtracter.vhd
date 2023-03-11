----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:23:47 11/14/2021 
-- Design Name: 
-- Module Name:    fulladdersubtracter - Behavioral 
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

entity fulladdersubtracter is
    Port ( A1 : in  STD_LOGIC_VECTOR (3 downto 0);
           B1 : in  STD_LOGIC_VECTOR (3 downto 0);
           K : in  STD_LOGIC;
           S1 : out  STD_LOGIC_VECTOR (3 downto 0);
           Cout1 : out  STD_LOGIC
			  );
end fulladdersubtracter;

architecture Behavioral of fulladdersubtracter is

signal C_0,C_1,C_2,C_3:std_logic;
signal Bnew: std_logic_vector(3 downto 0);

component fulladder is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           Cin : in  STD_LOGIC;
           S : out  STD_LOGIC;
           Cout : out  STD_LOGIC);
end component;

begin
Bnew(0)<= B1(0)xor K;
Bnew(1)<= B1(1)xor K;
Bnew(2)<= B1(2)xor K;
Bnew(3)<= B1(3)xor K;
--------------------
FA_inst0:fulladder 
    Port map
	        ( A =>A1(0),
           B => Bnew(0),
           Cin => K ,
           S =>S1(0),
           Cout =>C_0);

--------------------
FA_inst1:fulladder 
    Port map
	        ( A => A1(1),
           B => Bnew(1),
           Cin => C_0 ,
           S => S1(1),
           Cout => C_1);

---------------------
FA_inst2:fulladder 
    Port map
	        ( A =>A1(2),
           B => Bnew(2),
           Cin => C_1,
           S =>S1(2),
           Cout =>C_2);

--------------------
FA_inst3:fulladder 
    Port map
	        ( A =>A1(3),
           B => Bnew(3),
           Cin => C_2 ,
           S =>S1(3),
           Cout =>C_3);

---------------------
Cout1 <= C_3 when k='0' else
		not(C_3);


end Behavioral;

