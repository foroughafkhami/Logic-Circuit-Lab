--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:23:43 12/12/2021
-- Design Name:   
-- Module Name:   D:/hwseven/sevensegment/seventestbench.vhd
-- Project Name:  sevensegment
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: sevensegment
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
 
ENTITY seventestbench IS
END seventestbench;
 
ARCHITECTURE behavior OF seventestbench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT sevensegment
    PORT(
         en1 : OUT  std_logic;
         en2 : OUT  std_logic;
         in1 : IN  std_logic_vector(4 downto 0);
         in2 : IN  std_logic_vector(4 downto 0);
         clk : IN  std_logic;
         seven : OUT  std_logic_vector(6 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal in1 : std_logic_vector(4 downto 0) := (others => '0');
   signal in2 : std_logic_vector(4 downto 0) := (others => '0');
   signal clk : std_logic := '0';

 	--Outputs
   signal en1 : std_logic;
   signal en2 : std_logic;
   signal seven : std_logic_vector(6 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: sevensegment PORT MAP (
          en1 => en1,
          en2 => en2,
          in1 => in1,
          in2 => in2,
          clk => clk,
          seven => seven
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
		in1 <= "00001"; --1
		in2 <= "00110"; --6
      wait for clk_period*100000;
		in1 <= "01011"; --11
		in2 <= "00111"; --7
      wait for clk_period*100000;
		in1 <= "10110"; --22
		in2 <= "00110"; --6
      wait for clk_period*100000;
		in1 <= "11111"; --31
		in2 <= "00011"; --3
      wait for clk_period*100000;
		in1 <= "11100"; --28
		in2 <= "01001"; --9
      wait for clk_period*100000;
		in1 <= "11100"; --25
		in2 <= "11010"; --27
      wait for clk_period*100000;

      -- insert stimulus here 

      --wait;
   end process;

END;
