--
-- concatNumber()
-- iDkP for GaragePixel 
-- 2025-11-18
--
fn concatNumber

	n -- the input (integer or float)
	p -- precision behind radix
	= -- formatted number as integer if n as integer, else float
(	
	-- Declare
	local f="#." + p as string + "f"
	local x = "."
	local d = 0	
	local z = 0
	local c
	
	-- Quick formattage precision p behind radix	
	n = formattedPrint n format:f
	
	-- Count digits from right to radix	
	c = n.count;for i = c to 1 by -1 do
	(
		d += 1
		if (substring n i 1 == x) do exit
	)
	
	-- Count trailing zeros after decimal (right-to-left until just before '.')	
	c = n.count;for i = c to d by -1 do
	(
		if (substring n i 1 == "0") then
		(
			z += 1
		)else(
			exit
		)
	)
	
	-- Trim trailing zeros (but keep .0 if all decimals were zeros)
	if (z > 0) do
	(
		n = substring n 1 (n.count - z)
		if (substring n n.count 1 == x) do n += "0"
	)	

	n	 
)
