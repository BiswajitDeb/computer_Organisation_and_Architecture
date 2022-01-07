----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:10:30 12/05/2021 
-- Design Name: 
-- Module Name:    Full_Substractor_VHDL - Behavioral 
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Full_Substractor_VHDL is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           Cin : in  STD_LOGIC;
           Difference : out  STD_LOGIC;
           Borrow : out  STD_LOGIC);
end Full_Substractor_VHDL;

architecture Behavioral of Full_Substractor_VHDL is

begin

Difference<= A xor B xor Cin; 
   Borrow <= ((B xor Cin) and (not A)) or (B and Cin);

end Behavioral;

