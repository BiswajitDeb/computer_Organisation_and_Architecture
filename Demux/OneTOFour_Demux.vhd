----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:34:47 12/13/2021 
-- Design Name: 
-- Module Name:    OneTOFour_Demux - Behavioral 
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

entity OneTOFour_Demux is
    Port ( F : in  STD_LOGIC;
           S0 : in  STD_LOGIC;
           S1 : in  STD_LOGIC;
           A,B,C,D : out  STD_LOGIC);
end OneTOFour_Demux;

architecture Behavioral of OneTOFour_Demux is

begin

process (F,S0,S1) is
begin
 if (S0 ='0' and S1 = '0') then
	A <= F;
	B<= '0';
	C<= '0';
	D<= '0';
 elsif (S0 ='1' and S1 = '0') then
	B <= F;
	A<= '0';
	C<= '0';
	D<= '0';
 elsif (S0 ='0' and S1 = '1') then
	C <= F;
	A<= '0';
	B<= '0';
	D<= '0';
 
 else
	D <= F;
	A<= '0';
	B<= '0';
	C<= '0';
 end if;
 
end process;


end Behavioral;

