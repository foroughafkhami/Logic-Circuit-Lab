----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:03:49 11/19/2021 
-- Design Name: 
-- Module Name:    upcounter - Behavioral 
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

entity upcounter is
    Port ( q : out  STD_LOGIC_VECTOR (3 downto 0);
           clk1 : in  STD_LOGIC;
           reset : in  STD_LOGIC);
end upcounter;

architecture Behavioral of upcounter is

component DFF is
    Port ( D : in  STD_LOGIC;
			  RST : in std_logic;
           Q : out  STD_LOGIC:='0';
           Q_not : out  STD_LOGIC:='1';
           clk : in  STD_LOGIC);
end component;


signal qs: std_logic_vector(3 downto 0);

begin

DFF_inst0:DFF
    Port map
			(Q_not => qs(0),
			D =>qs(0),
			RST => reset,
         Q =>q(0),
         clk =>clk1);
--------------------------
DFF_inst1:DFF
    Port map
			(Q_not => qs(1),
			D =>qs(1),
			RST => reset,
         Q =>q(1),
			clk =>qs(0));
-----------------------
DFF_inst2:DFF
    Port map
			(Q_not => qs(2),
			D =>qs(2),
			RST => reset,
         Q =>q(2),
         clk =>qs(1) );
---------------------
DFF_inst3:DFF
    Port map
			(Q_not => qs(3),
			D => qs(3),
			RST => reset,
         Q => q(3),
         clk => qs(2));
			  
			  

end Behavioral;

