class Timer
	@seconds
	
	def seconds=(sec)
		@seconds = sec
	end

	def seconds(sec = 0)
		@seconds = sec
	end

	def time_string()
		
		hrs = @seconds / 3600
		mins = @seconds / 60
		secs = @seconds % 60

		hrs_s = ""
		mins_s = ""
		secs_s = ""

		if hrs < 10
			hrs_s = "0#{hrs.to_s}"
		else
			hrs_s = hrs.to_s
		end

		if mins > 60
			mins -= 60
		end
		
		if mins < 10
			mins_s = "0#{mins.to_s}"
		else
			mins_s = mins.to_s
		end

		if secs < 10
			secs_s = "0#{secs.to_s}"
		else
			secs_s = secs.to_s
		end

		return (hrs_s + ":" + mins_s + ":" + secs_s)

	end

end