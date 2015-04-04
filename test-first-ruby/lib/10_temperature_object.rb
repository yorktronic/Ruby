# I had to seek help online for this one - for some reason I missed options hashes in the reading, and I had minor trouble with the subclasses. I re-wrote the solution from memory once I understood the concepts.
#
#
class Temperature
   def initialize(opts = {})
   	@opts = opts
   end
	
	# Displays the temperature in Fahrenheit, either converting from Celsius or just returning the Fahrenheit value that's already in the options hash
	#
	def in_celsius()
		return @opts[:c] if @opts[:c] != nil
		Temperature.ftoc(@opts[:f])
	end

	# Displays the temperature in Fahrenheit, either converting from Celsius or just returning the Fahrenheit value that's already in the options hash
	#
	def in_fahrenheit()
		return @opts[:f] if @opts[:f] != nil
		Temperature.ctof(@opts[:c])
	end
	
	# Creates a new temperature value in Celsius
	#
	def self.from_celsius(tempC)
		self.new(:c => tempC)
	end

	# Creates a new temperature value in Fahrenheit
	#
	def self.from_fahrenheit(tempF)
		self.new(:f => tempF)
	end

	# Class method that converts from Fahrenheit to Celsius, so that you can call Temperature.ftoc directly
	#
	def self.ftoc(tempF)
		return 0 if tempF == 32
		return (tempF - 32) * (5 / 9.0)
	end

	# Class method that converts from Celsius to Fahrenheit, so that you can call Temperature.ctof directly
	#
	def self.ctof(tempC)
		return 32 if tempC == 0
		return tempC * (9 / 5.0) + 32
	end 
end

# Subclass of Temperature, containing all the operations pertaining to a value in Celsius
#
class Celsius < Temperature
	def initialize(tempC)
		@opts = {}
		@opts[:c] = tempC
	end
	def in_fahrenheit()
		super
	end
	def in_celsius()
		super
	end
	def ctof(tempC)
		super
	end
end

# Subclass of Temperature, containing all the operations pertaining to value in Fahrenheit
#
class Fahrenheit < Temperature
	def initialize(tempF)
		@opts = {}
		@opts[:f] = tempF
	end
	def in_celsius()
		super
	end
	def in_fahrenheit()
		super
	end
	def ftoc(tempF)
		super
	end
end
