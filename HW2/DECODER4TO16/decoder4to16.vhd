----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:24:56 11/14/2021 
-- Design Name: 
-- Module Name:    decoder4to16 - Behavioral 
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

entity decoder4to16 is
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           en1 : in  STD_LOGIC;
           B : out  STD_LOGIC_VECTOR (15 downto 0));
end decoder4to16;

architecture Behavioral of decoder4to16 is

signal F : std_logic_vector(3 downto 0);

component decoder2to4 is
    Port ( w : in  STD_LOGIC_VECTOR (1 downto 0);
           en : in  STD_LOGIC;
           y : out  STD_LOGIC_VECTOR (3 downto 0));
end component;

begin
-------------------
inst_0:decoder2to4 
    Port map
			( w =>A(1 downto 0),
           en =>en1,
           y => F);
---------------------
inst_1:decoder2to4 
    Port map
			( w =>A(3 downto 2),
           en =>F(0),
           y => B(3 downto 0));
-----------------------
inst_2:decoder2to4 
    Port map
			( w =>A(3 downto 2),
           en =>F(1),
           y =>B(7 downto 4));
-----------------------			  
inst_3:decoder2to4 
    Port map
			( w =>A(3 downto 2),
           en =>F(2),
           y => B(11 downto 8));
------------------------			  
inst_4:decoder2to4 
    Port map
			( w =>A(3 downto 2),
           en =>F(3),
           y => B(15 downto 12));
---------------------------			  
end Behavioral;

