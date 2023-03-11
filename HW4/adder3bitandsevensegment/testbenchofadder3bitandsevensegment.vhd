--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:04:18 11/28/2021
-- Design Name:   
-- Module Name:   D:/hw4/adder3bitandsevensegment/testbenchofadder3bitandsevensegment.vhd
-- Project Name:  adder3bitandsevensegment
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: fa3bitanddecoderhextosevensegment
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY testbenchofadder3bitandsevensegment IS
END testbenchofadder3bitandsevensegment;
 
ARCHITECTURE behavior OF testbenchofadder3bitandsevensegment IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT fa3bitanddecoderhextosevensegment
    PORT(
         A1 : IN  std_logic_vector(2 downto 0);
         B1 : IN  std_logic_vector(2 downto 0);
         cin : IN  std_logic;
         outdecoder : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal A1 : std_logic_vector(2 downto 0) := (others => '0');
   signal B1 : std_logic_vector(2 downto 0) := (others => '0');
   signal cin : std_logic := '0';

 	--Outputs
   signal outdecoder : std_logic_vector(7 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: fa3bitanddecoderhextosevensegment PORT MAP (
          A1 => A1,
          B1 => B1,
          cin => cin,
          outdecoder => outdecoder
        );


   stim_proc: process
   begin		

      wait for 100 ns;	




      wait;
   end process;

END;
