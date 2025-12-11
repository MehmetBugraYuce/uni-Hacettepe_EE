library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Half_Adder is
    Port ( HA_A : in  STD_LOGIC;
           HA_B : in  STD_LOGIC;
           HA_S : out  STD_LOGIC;
           HA_C : out  STD_LOGIC);
end Half_Adder;
--A half adder takes two inputs, produces 2 outputs
architecture Behavioral of Half_Adder is

begin

    HA_S <= HA_A xor HA_B;
	  HA_C <= HA_A and HA_B;

end Behavioral;

