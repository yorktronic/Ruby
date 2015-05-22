def combine_arrays(arr1, arr2)

	#input = 2 arrays
	#output = 1 sorted array

	# shovel the values of each array in to a new array
	new_arr = []
	
	arr1.each do |n|
		new_arr << n
	end

	arr2.each do |n|
		new_arr << n
	end

	# bubble sort that array

	sorted = false
	until sorted
		
		sorted = true
		idx = 0
		
		while idx < new_arr.length - 1
			if new_arr[idx] > new_arr[idx + 1]
				new_arr[idx], new_arr[idx + 1] = new_arr[idx + 1], new_arr[idx]
				sorted = false
			end
			idx += 1
		end 
	end
	return new_arr
end