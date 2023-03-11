--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   21:41:13 11/14/2021
-- Design Name:   
-- Module Name:   D:/HWTWOTWO/decoder4to16/testbenchdec4to16.vhd
-- Project Name:  decoder4to16
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: decoder4to16
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
 
ENTITY testbenchdec4to16 IS
END testbenchdec4to16;
 
ARCHITECTURE behavior OF testbenchdec4to16 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT decoder4to16
    PORT(
         A : IN  std_logic_vector(3 downto 0);
         en1 : IN  std_logic;
         B : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(3 downto 0) := (others => '0');
   signal en1 : std_logic := '0';

 	--Outputs
   signal B : std_logic_vector(15 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: decoder4to16 PORT MAP (
          A => A,
          en1 => en1,
          B => B
        );

   -- Stimulus process
   stim_proc: process
	begin	
		A  <= "0000";  --0
		  en1 <= '1';
      wait for 10 ns;
        A  <= "0001";  --1
		  en1 <= '1';
      wait for 10 ns;
        A  <= "0010";  --2
      wait for 10 ns;	
        A  <= "0011";  --3
		wait for 10 ns;	
        A  <= "0100";  --4
		wait for 10 ns;	
        A  <= "0101";  --5
		wait for 10 ns;	
        A  <= "0110";  --6
		wait for 10 ns;
        A  <= "0111";  --7
		wait for 10 ns;		
        A  <= "1000";  --8
	   wait for 10 ns;	
        A  <= "1001";  --9
		wait for 10 ns;	
        A  <= "1010";  --10
		wait for 10 ns;	
        A  <= "1011";  --11
		wait for 10 ns;	
        A  <= "1100";  --12
		wait for 10 ns;	
        A  <= "1101";  --13
		wait for 10 ns;	
        A  <= "1110";  --14
		wait for 10 ns;	
        A  <= "1111";  --15
      wait for 10 ns;
			A  <= "0001";  --1
			en1 <= '0';
      wait for 10 ns;	
        A  <= "0010";  --2
      wait for 10 ns;	
        A  <= "0011";  --3
		wait for 10 ns;	
        A  <= "0100";  --4
		wait for 10 ns;	
        A  <= "0101";  --5
		wait for 10 ns;	
        A  <= "0110";  --6
		wait for 10 ns;
        A  <= "0111";  --7
		wait for 10 ns;		
        A  <= "1000";  --8
	   wait for 10 ns;	
        A  <= "1001";  --9
		wait for 10 ns;	
        A  <= "1010";  --10
		wait for 10 ns;	
        A  <= "1011";  --11
		wait for 10 ns;	
        A  <= "1100";  --12
		wait for 10 ns;	
        A  <= "1101";  --13
		wait for 10 ns;	
        A  <= "1110";  --14
		wait for 10 ns;	
        A  <= "1111";  --15
      wait for 10 ns;
      wait;
   end process;

END;
