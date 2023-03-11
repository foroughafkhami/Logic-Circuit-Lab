----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:44:25 12/12/2021 
-- Design Name: 
-- Module Name:    FA5bit - Behavioral 
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

entity FA5bit is
    Port ( A1 : in  STD_LOGIC_VECTOR (4 downto 0);
           B1 : in  STD_LOGIC_VECTOR (4 downto 0);
           S1 : out  STD_LOGIC_VECTOR (4 downto 0);
           Cin1 : in  STD_LOGIC;
           Cout1 : out  STD_LOGIC);
end FA5bit;

architecture Behavioral of FA5bit is

component FA is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           Cin : in  STD_LOGIC;
           S : out  STD_LOGIC;
           Cout : out  STD_LOGIC);
end component;
--------------------------
signal c_0, c_1, c_2,c_3 : std_logic;
-----------------------

begin
--------------------------
FA_inst0: FA 
    Port map
			( S => S1(0),
			  A => A1(0),
           B => B1(0),
           Cin => cin1,
           Cout => c_0);
			  
----------------------------------
FA_inst1: FA 
    Port map
			( A => A1(1),
           B => B1(1),
           Cin => c_0,
           S => S1(1),
           Cout => c_1);
			  
----------------------------------
FA_inst2: FA 
    Port map
			( A => A1(2),
           B => B1(2),
           Cin => c_1,
           S => S1(2),
           Cout => c_2);
			  
----------------------------------
FA_inst3: FA 
    Port map
			( A => A1(3),
           B => B1(3),
           Cin => c_2,
           S => S1(3),
           Cout => c_3);
			  
----------------------------------

FA_inst4: FA 
    Port map
			( A => A1(4),
           B => B1(4),
           Cin => c_3,
           S => S1(4),
           Cout => Cout1);


end Behavioral;

