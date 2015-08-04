#require 'byebug'
def golden_age(population_change)

	# Input is the change in population per year of puppies, with the index of the array corresponding to a year
	# Output should be the "age", or range of years in which the puppy population increased the most, represented as a 2-entry array i.e. [1,5]

	# Create an array of subarrays containing all possible subarrays

	subarrays = []

	idx = 0


	while idx < population_change.length - 1
		idy = idx + 1
		while idy < population_change.length - 1
			subarrays << population_change[idx..idy]
			idy += 1
		end
		idx += 1
	end

	# Parse through all the subarrays calculating the sum of the entries in each one individually. The maximum sum is the answer, return that subarray

	max = 0
	start = 0
	finish = 0 
	the_age = []
	subarrays.each do |age|
		age_max = age.inject(:+)
		if age_max > max
			max = age_max
			start = age[0]
			finish = age[age.length - 1]
			the_age = age
		end
	end

	#return [start, finish]
	return the_age
end