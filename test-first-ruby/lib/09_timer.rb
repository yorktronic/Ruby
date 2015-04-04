# It's a Timer! Sort of... it basically just convert an integer of seconds in to the format of HH:MM:SS
#
#
class Timer
	
	def initialize(seconds = 0)
		@seconds = seconds
	end

	def seconds
		@seconds
	end

	def seconds=(seconds)
		@seconds = seconds
	end

	# This method converts the integer to HH:MM:DD. I could simplify this to one line, doing all the calculations on the @time_string line, but this is way more legible
	#
	def time_string
		hours = @seconds / 3600
		minutes = (@seconds / 60) - (hours * 60)
		seconds = @seconds % 60
		@time_string = "#{padded(hours)}:#{padded(minutes)}:#{padded(seconds)}"
	end

	# A helper method that handles the case in which there is less than 10 seconds in a given digit (i.e. 5 hours should be 05 hours)
	#
	def padded(seconds)
		return "0#{seconds.to_s}" if seconds < 10
		seconds.to_s
	end

end