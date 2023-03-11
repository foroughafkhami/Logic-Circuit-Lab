--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:19:26 11/14/2021
-- Design Name:   
-- Module Name:   D:/hwtwo/fulladdersubtracter/testfulladdersubtracter.vhd
-- Project Name:  fulladdersubtracter
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: fulladdersubtracter
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
 
ENTITY testfulladdersubtracter IS
END testfulladdersubtracter;
 
ARCHITECTURE behavior OF testfulladdersubtracter IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT fulladdersubtracter
    PORT(
         A1 : IN  std_logic_vector(3 downto 0);
         B1 : IN  std_logic_vector(3 downto 0);
         K : IN  std_logic;
         S1 : OUT  std_logic_vector(3 downto 0);
         Cout1 : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A1 : std_logic_vector(3 downto 0) := (others => '0');
   signal B1 : std_logic_vector(3 downto 0) := (others => '0');
   signal K : std_logic := '0';

 	--Outputs
   signal S1 : std_logic_vector(3 downto 0);
   signal Cout1 : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: fulladdersubtracter PORT MAP (
          A1 => A1,
          B1 => B1,
          K => K,
          S1 => S1,
          Cout1 => Cout1
        );


   -- Stimulus process
   stim_proc: process
   begin		
		A1<="0010";
		B1<="0000";
		K<='0';
      wait for 10 ns;	
		A1<="0010";
		B1<="0000";
		K<='1';
		wait for 10 ns;	
		A1<="0110";
		B1<="1110";
		K<='0';
		wait for 10 ns;	
		A1<="0110";
		B1<="1110";
		K<='1';
		wait for 10 ns;	
		A1<="1110";
		B1<="0011";
		K<='0';
		wait for 10 ns;	
		A1<="1110";
		B1<="0011";
		K<='1';
		wait for 10 ns;	
		A1<="1100";
		B1<="0011";
		K<='0';
		wait for 10 ns;	
		A1<="1100";
		B1<="0011";
		K<='1';
		wait for 10 ns;	
		A1<="1111";
		B1<="1111";
		K<='0';
		wait for 10 ns;	
		A1<="1111";
		B1<="1111";
		K<='1';
      wait;
		
		
   end process;

END;
