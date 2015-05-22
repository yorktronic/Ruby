def golden_age(population_changes)
	# The answer is the maximum of the population change from start_year to end_year of all the subarrays
	# Declare the three values you'll need for comparing the subarrays


	start_year = nil
	end_year = nil
	population_change = 0

	# Write a nested loop that sums the population changes of all subarrays of population_changes
	# store the greatest popualation change in each iteration, along with the start year and end year of that change

	population_changes.each_with_index do |pop, idx|
		idy = idx + 1
		change = pop

		if idx == population_changes.length - 1
			break
		end
		
		while true
			if idy > population_changes.length - 1
				break
			end
			
			change += population_changes[idy]
			if change > population_change
				start_year = idx
				end_year = idy
				population_change = change
			end
			idy += 1 
		end  
	end
	return [start_year, end_year]
end