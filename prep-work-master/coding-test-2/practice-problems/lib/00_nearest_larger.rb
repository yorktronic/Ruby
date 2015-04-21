def nearest_larger(arr, idx)
	dif = 1

	while true
		left = idx - dif
		right = idx + dif
		return left if ((left >= 0) && (arr[left] > arr[idx]))
		return right if (right <= arr.length - 1) && ((arr[right] > arr[idx]))
		return nil if (left < 0) && (right > arr.length - 1)
		dif += 1
	end

end
