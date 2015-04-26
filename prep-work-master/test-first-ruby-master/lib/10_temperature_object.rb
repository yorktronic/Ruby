class Temperature
	def initialize(temp)
		@temp = temp
	end

	def in_fahrenheit
		return @temp[:f] if @temp.has_key?(:f)
		Temperature.ctof(@temp[:c])
	end

	def in_celsius
		return @temp[:c] if @temp.has_key?(:c)
		Temperature.ftoc(@temp[:f])
	end

	def self.from_celsius(tempC)
		self.new(:c => tempC)
	end

	def self.from_fahrenheit(tempF)
		self.new(:f => tempF)
	end

	def self.ctof(tempC)
		return (tempC * (9/5.to_f) + 32)
	end

	def self.ftoc(tempF)
		return ((tempF - 32) * (5/9.to_f))
	end
end

class Celsius < Temperature
	def initialize(tempC)
		@temp = {}
		@temp[:c] = tempC
	end

	def in_celsius
		super
	end

	def in_fahrenheit
		super
	end
end

class Fahrenheit < Temperature
	def initialize(tempF)
		@temp = {}
		@temp[:f] = tempF
	end

	def in_fahrenheit
		super
	end

	def in_celsius
		super
	end
end