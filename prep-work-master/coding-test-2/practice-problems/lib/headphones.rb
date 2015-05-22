def headphones(head, amp)
	
	# Returns the [headphone, amp] with the highest damping factor
	# Headphone is the numerator, so max
	# Amp is the denominator, so min
	
	
	return [head.max / amp.min]

end