def nearest_larger(arr, idx)
	# Start at idx and go left and right determining if there's a value greater than arr[idx]
	# If there is, and there's only one, return that index
	# If there are two, return the left-most one
	#require 'byebug'
	# create a hash with indicies and their values if they are greater than arr[idx]

	diff = 1

	while true
		left = idx - diff
		right = idx + diff

		if left >= 0 && arr[left] > arr[idx]
			return left
		elsif right <= arr.length - 1 && arr[right] > arr[idx]
			return right
		elsif right >= arr.length - 1 && left <= 0
			return nil
		end
		diff += 1
	end
end


#puts nearest_larger([8,2,4,3], 2)