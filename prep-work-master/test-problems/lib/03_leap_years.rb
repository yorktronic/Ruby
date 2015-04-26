def leap_years(start, ending)
	p "Please enter a start year"
	start = (gets.chomp).to_i
	p "Please enter an ending year"
	ending = (gets.chomp).to_i

	leap_years = []

	(start..ending).each do |year|
		leap_years << year if ( (year % 4 == 0) && ((year % 100 > 0) || (year % 400 == 0)) )
	end

	return leap_years
end

p leap_years()