def ftoc(degf)
	return 0 if degf == 32
	(degf - 32) * (5 / 9.0)
end

def ctof(degc)
	return 32 if degc == 0
	degc * (9 / 5.0) + 32
end