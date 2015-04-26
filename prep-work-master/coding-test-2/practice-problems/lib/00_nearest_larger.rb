def nearest_larger(arr, idx)
	dif = 1

	while true
		left = idx - dif
		right = idx + dif

		if (left >= 0 && arr[left] > arr[idx])
			return left
		elsif (right <= arr.length - 1 && arr[right] > arr[idx])
			return right
		elsif (right > arr.length - 1 && left < 0)
			return nil
		end
		dif += 1
	end
end