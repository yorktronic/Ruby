def bubble_sort(arr)
	# Handles an empty array by returning the empty array
	
		if arr == []
			return []
	
	# Handles an array with only one entry by returning that entry

		elsif arr.count == 1
			return arr
		end
	
	# Returns a sorted array if the first two conditions aren't met
	# Parse through the array always moving the larger value down
	# Have a value, sorted, that starts as true and is set to false if a move is made
	# if sorted? is true at the end, return the sorted array

	sorted = false


	while sorted == false
		idx = 0
		sorted = true

		while idx < arr.length - 1 

			if arr[idx] > arr[idx + 1]
				sorted = false
				arr[idx], arr[idx + 1] = arr[idx + 1], arr[idx]
				idx += 1
			else
				idx += 1
			end
		end

	end
	return arr

end