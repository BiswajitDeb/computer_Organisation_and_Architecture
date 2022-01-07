----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:05:34 01/07/2022 
-- Design Name: 
-- Module Name:    Mux_2X1_VHDL - Behavioral 
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

entity Mux_2X1_VHDL is
    Port ( A,B,S : in  STD_LOGIC;
           F : out  STD_LOGIC);
end Mux_2X1_VHDL;

architecture Behavioral of Mux_2X1_VHDL is

begin

F <= ((not S) and A) or (S and B);

end Behavioral;

