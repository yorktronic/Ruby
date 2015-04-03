# I think I had to seek help online for this one - for some reason what I learned at the end of Chris Pine's book escaped me and I forgot the syntax for block calls and yield. Like Mr. Pine, sometimes I like to use block.call instead of yield. Stupidly, I was also calculating the average on the fly rather than at the end, which resulted in calculation errors. It's all fixed now!
#
def measure(i = nil, &block)
	startTime = Time.now
	# Set run to 1 for the case where rspec doesn't specify the number of runs to take, so that we aren't dividing by 1 or nil at the end.
	#
	runs = 1
	
	# Call the block if the number of runs isn't specified
	#
	if i == nil
		block.call
		
	# Call the block i times if the number of runs is specified, and keep track of the number of runs to calculate the average at the end
	#
	else
		runs = 0
		i.times do
			block.call
			runs += 1
		end
	end

	# Calculate the average run time and return it
	# 
	(Time.now - startTime) / runs.to_f
end