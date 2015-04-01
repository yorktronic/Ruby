class Timer
	def seconds(seconds = 0)
		@seconds = seconds
	end

	def seconds=(seconds)
		@seconds = seconds
	end

	def time_string
		hours = @seconds / 3600
		minutes = (@seconds / 60) - (hours * 60)
		seconds = @seconds % 60
		@time_string = "#{padded(hours)}:#{padded(minutes)}:#{padded(seconds)}"
	end

	def padded(seconds)
		return "0#{seconds.to_s}" if seconds < 10
		seconds.to_s
	end

end