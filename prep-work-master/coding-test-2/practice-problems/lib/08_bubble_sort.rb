def bubble_sort(arr)
	id = 0
	while id < arr.length - 1
		if arr[id] > arr[id + 1]
			arr[id], arr[id + 1] = arr[id + 1], arr[id]
		end
		id += 1
	end
	return arr if arr == arr.sort
	bubble_sort(arr)
end

