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