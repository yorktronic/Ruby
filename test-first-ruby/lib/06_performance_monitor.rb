# I think I had to seek help online for this one - at the time I didn't fully understand block.call / yield so I had trouble figuring out some of the tests. I also got stuck at one point because I was doing something stupid like dividing the each run time by the number of runs, rather than dividing the total run time by number of runs in order to get the average.
def measure(i = nil)
	startTime = Time.now
	run = 1
	if i == nil
		yield
	else
		run = 0
		i.times do
			yield
			run += 1
		end
	end
	(Time.now - startTime) / run.to_f
end