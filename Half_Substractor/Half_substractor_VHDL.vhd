----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    01:10:07 12/06/2021 
-- Design Name: 
-- Module Name:    Half_substractor_VHDL - Behavioral 
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

entity Half_substractor_VHDL is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           Difference : out  STD_LOGIC;
           Borrow : out  STD_LOGIC);
end Half_substractor_VHDL;

architecture Behavioral of Half_substractor_VHDL is

begin

Difference <= A XOR B;
Borrow <= (NOT A) AND B;

end Behavioral;

