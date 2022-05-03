library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;
library work;
use work.array_pkg.all;

entity leeDist is 

    port (
            x           : in array_type;
            y           : in array_type
            ans_array   : out unsigned(3 downto 0)
            --ans         : out integer;
         );


end leeDist;


architecture data_flow of leeDist is 

    -- step 1: in our design q = the largest array element plus 1
    -- to get q write a function that selects the largest element in an array
    function q_finder(a : array_type) return integer is 
        variable index : integer := 0;
        unsigned curr_max : unsigned(3 downto 0) := (others => '0');
    
    begin
        for i in a'low' to a'high' loop
            if a(i) > curr_max then
                index := i;
                curr_max := a(i);
            end if;
        end loop
        return a(index) + 1;
    end function;
    
    signal q1 : q_finder(a => x) 
    signal q2 : q_finder(a => y) 
    signal q_finder_out1 : unsigned(3 downto 0);

begin
    -- select q but look at both array to determine the largest
    process begin
        if q1 > q2 then
            q_finder_out <= unsigned(q1);
        else
            q_finder_out <= unsigned(q2);
        end if;
    end process;
    --step 2: subtract index wise: min(|X0 - Y0|, q - |X0 - Y0|)
    process begin
        for i in 0 to 3 loop
            if 
    end process;


end data_flow;
