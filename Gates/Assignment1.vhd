----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:07:52 11/19/2021 
-- Design Name: 
-- Module Name:    Assignment1 - Behavioral 
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

entity Assignment1 is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           Result_AND : out  STD_LOGIC;
           Result_NOT : out  STD_LOGIC;
           Result_OR : out  STD_LOGIC;
           Result_NAND : out  STD_LOGIC;
           Result_NOR : out  STD_LOGIC;
           Result_XOR : out  STD_LOGIC;
           Result_XNOR : out  STD_LOGIC);
end Assignment1;

architecture Behavioral of Assignment1 is

begin
Result_AND <= 	A AND B;
Result_NOT <= 	NOT B;
Result_OR 	<=	A OR B;
Result_NAND <=	A NAND B;
Result_NOR <=	A NOR B;
Result_XOR <=	A XOR B;
Result_XNOR <=	A XNOR B;

end Behavioral;

