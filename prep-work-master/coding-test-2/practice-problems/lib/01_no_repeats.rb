def no_repeats(year_start, year_end)
	no_repeat_years = []
	(year_start..year_end).each do |year|
		no_repeat_years << year if no_repeat?(year)
	end
	no_repeat_years
end

def no_repeat?(year)
	year = year.to_s.split('')
	if year == year.uniq
		return true
	end
	false
end