library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Full_Adder is
    Port ( FA_A : in  STD_LOGIC;
           FA_B : in  STD_LOGIC;
           FA_C_IN : in  STD_LOGIC;
           FA_S : out  STD_LOGIC;
           FA_C_OUT : out  STD_LOGIC);
end Full_Adder;

architecture Behavioral of Full_Adder is
component Half_Adder
    Port ( HA_A : in STD_LOGIC;
	         HA_B : in STD_LOGIC;
			     HA_S : out STD_LOGIC;
			     HA_C : out STD_LOGIC);
end component;
signal S1 , C1, C2 : STD_LOGIC;			  

begin

   HA_1: Half_Adder
	 Port map ( FA_A, FA_B, S1, C1);
	 
   HA_2: Half_Adder
	 Port map ( S1, FA_C_IN, FA_S, C2);
	 
   FA_C_OUT <= C1 or C2;

end Behavioral;
