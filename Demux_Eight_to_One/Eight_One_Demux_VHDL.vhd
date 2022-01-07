----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:30:57 12/10/2021 
-- Design Name: 
-- Module Name:    Eight_One_Demux_VHDL - Behavioral 
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

entity Eight_One_Demux_VHDL is
    Port(S0: in STD_LOGIC;
			S1 :in STD_LOGIC;
			S2 :in STD_LOGIC;
			d0 :out STD_LOGIC;
			d1 :out STD_LOGIC;
			d2 :out STD_LOGIC;
			d3 :out STD_LOGIC;
			d4 :out STD_LOGIC;
			d5 :out STD_LOGIC;
			d6 :out STD_LOGIC;
			d7 :out STD_LOGIC;
			O :in STD_LOGIC );

end Eight_One_Demux_VHDL;

architecture Behavioral of Eight_One_Demux_VHDL is

begin

Process(S2 , S1 , S0 , O )
begin
d0 <= (not s2)   and   (not s1)    and   (not s0)    and O;
d1 <= (not s2)   and   (not s1)    and        s0     and O;             
d2 <= (not s2)   and      	 s1     and   (not s0)    and O;
d3 <= (not s2)   and      	 s1     and        s0     and O;
d4 <=      s2    and   (not s1)    and   (not s0)    and O;
d5 <=      s2    and   (not s1)    and        s0     and O;
d6 <=      s2    and      	 s1     and   (not s0)    and O;
d7 <=      s2    and        s1     and        s0     and O;
end Process;

end Behavioral;

