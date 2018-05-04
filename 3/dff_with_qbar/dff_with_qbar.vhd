------------------------------------
entity dff_with_qbar is
port (
	d, clk: in bit;
	q: buffer bit;
	qbar: out bit);
end entity;
------------------------------------
--architecture arch1 of dff_with_qbar is
--begin
--	process (clk)
--	variable temp: bit;
--	begin
--	if clk'event and clk='1' then
--		temp := d;
--		q <= temp;
--		qbar <= not temp;
--	end if;
--	end process;
--end architecture arch1;
------------------------------------
--architecture arch2 of dff_with_qbar is
--begin
--	process (clk)
--	variable temp: bit;
--	begin
--	if clk'event and clk='1' then
--		temp := d;
--		q <= temp;
--		qbar <= not q;
--	end if;
--	end process;
--end architecture arch2;
------------------------------------
architecture arch3 of dff_with_qbar is
begin
	process (clk)
	variable temp: bit;
	begin
	if clk'event and clk='1' then
		temp := d;
		q <= temp;
	end if;
	qbar <= not q;
	end process;
end architecture arch3;
------------------------------------