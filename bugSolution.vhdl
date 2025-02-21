```vhdl
library ieee;
use ieee.std_logic_1164.all;

entity my_entity is
  port (
    clk : in std_logic;
    data_in : in std_logic_vector(7 downto 0);
    data_out : out std_logic_vector(7 downto 0)
  );
end entity;

architecture pipelined of my_entity is
  signal internal_data_reg1 : std_logic_vector(7 downto 0);
  signal internal_data_reg2 : std_logic_vector(7 downto 0);
begin
  process (clk) begin
    if rising_edge(clk) then
      internal_data_reg1 <= data_in;
      internal_data_reg2 <= internal_data_reg1;
      data_out <= internal_data_reg2;      
    end if;
  end process;
end architecture;
```