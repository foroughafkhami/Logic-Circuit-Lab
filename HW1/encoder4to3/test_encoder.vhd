--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   22:04:13 10/29/2021
-- Design Name:   
-- Module Name:   D:/hwone/encoder4to3/test_encoder.vhd
-- Project Name:  encoder4to3
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: encoder4to3
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
 
ENTITY test_encoder IS
END test_encoder;
 
ARCHITECTURE behavior OF test_encoder IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT encoder4to3
    PORT(
         I : IN  std_logic_vector(3 downto 0);
         O : OUT  std_logic_vector(2 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal I : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal O : std_logic_vector(2 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: encoder4to3 PORT MAP (
          I => I,
          O => O
        );

   -- Stimulus process
   stim_proc: process
   begin		
		
		I <= "1000";
      wait for 100 ns;	
		I <= "0100";
		wait for 100 ns;
		I <= "0010";
		wait for 100 ns;
		I <= "0011";
		wait for 100 ns;
		I <= "0001";
		wait for 100 ns;
		I <= "0000";
		wait for 100 ns;
      -- insert stimulus here 
      wait;
   end process;

END;
