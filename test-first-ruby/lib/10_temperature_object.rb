# I had to consult the internet on this one - for some reason I missed options hashes in the reading and I also had a little trouble with the subclasses (most notably that super is the tool you use to pull in inhereted methods). I totally get it now!
class Temperature
   def initialize(opts = {})
   	@opts = opts
   end

	def in_celsius()
		return @opts[:c] if @opts[:c] != nil
		Temperature.ftoc(@opts[:f])
	end

	def in_fahrenheit()
		return @opts[:f] if @opts[:f] != nil
		Temperature.ctof(@opts[:c])
	end
	
	def self.from_celsius(tempC)
		self.new(:c => tempC)
	end

	def self.from_fahrenheit(tempF)
		self.new(:f => tempF)
	end

	def self.ftoc(tempF)
		return 0 if tempF == 32
		return (tempF - 32) * (5.0 / 9.0)
	end

	def self.ctof(tempC)
		return 32 if tempC == 0
		return tempC * (9.0 / 5.0) + 32
	end 
end

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
