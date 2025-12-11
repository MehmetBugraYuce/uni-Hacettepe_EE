library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Ripple_Adder_4Bit is
    Port ( A     : in  STD_LOGIC_VECTOR (3 downto 0);
           B     : in  STD_LOGIC_VECTOR (3 downto 0);
           C_in  : in  STD_LOGIC;
           Sum   : out STD_LOGIC_VECTOR (3 downto 0);
           C_out : out STD_LOGIC);
end Ripple_Adder_4Bit;

architecture Structural of Ripple_Adder_4Bit is

    component Full_Adder
        Port ( FA_A    : in  STD_LOGIC;
               FA_B    : in  STD_LOGIC;
               FA_C_IN : in  STD_LOGIC;
               FA_S    : out STD_LOGIC;
               FA_C_OUT: out STD_LOGIC);
    end component;
   
    signal C : STD_LOGIC_VECTOR (2 downto 0); 

begin


    FA_0: Full_Adder
        port map (
            FA_A    => A(0),
            FA_B    => B(0),
            FA_C_IN => C_in,    
            FA_S    => Sum(0),
            FA_C_OUT=> C(0) 
        );

    
    FA_1: Full_Adder
        port map (
            FA_A    => A(1),
            FA_B    => B(1),
            FA_C_IN => C(0),    
            FA_S    => Sum(1),
            FA_C_OUT=> C(1)
        );

   
    FA_2: Full_Adder
        port map (
            FA_A    => A(2),
            FA_B    => B(2),
            FA_C_IN => C(1),    
            FA_S    => Sum(2),
            FA_C_OUT=> C(2)
        );

    
    FA_3: Full_Adder
        port map (
            FA_A    => A(3),
            FA_B    => B(3),
            FA_C_IN => C(2),    
            FA_S    => Sum(3),
            FA_C_OUT=> C_out
        );

end Structural;
