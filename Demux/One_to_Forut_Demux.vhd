----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:29:16 12/13/2021 
-- Design Name: 
-- Module Name:    One_to_Forut_Demux - Behavioral 
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

entity One_to_Forut_Demux is
    Port ( F : in  STD_LOGIC;
           S0 : in  STD_LOGIC;
           S1 : in  STD_LOGIC;
           A,B,C,D : out  STD_LOGIC);
end One_to_Forut_Demux;

architecture Behavioral of One_to_Forut_Demux is

begin

process (F,S0,S1) is
begin
 if (S0 ='0' and S1 = '0') then
 A <= F;
 elsif (S0 ='1' and S1 = '0') then
 B <= F;
 elsif (S0 ='0' and S1 = '1') then
 C <= F;
 else
 D <= F;
 end if;
 
end process;


end Behavioral;

