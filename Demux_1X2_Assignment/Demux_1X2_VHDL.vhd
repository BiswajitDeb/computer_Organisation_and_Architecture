----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:10:58 01/09/2022 
-- Design Name: 
-- Module Name:    Demux_1X2_VHDL - Behavioral 
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

entity Demux_1X2_VHDL is
    Port ( Z,S : in  STD_LOGIC;
           A,B : out  STD_LOGIC);
end Demux_1X2_VHDL;

architecture Behavioral of Demux_1X2_VHDL is

begin
process (Z,S) is
begin
 if (S ='0') then
 A <= Z;
 B <= '0';
 else
 A <= '0';
 B <= Z;
 end if;
end process;

end Behavioral;

