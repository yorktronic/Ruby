# Extends the functionality of the Array class to include sum, square, and square!
# 
class Array
	# Sums the values in an array
	def sum
		return 0 if self == []
		self.reduce(:+)
	end

	# Returns a new array containing all the values of the original array squared
	#
	def square
		self.map {|num| num**2}
	end

	# Squares each element of the original array and returns it
	#
	def square!
		self.map! {|num| num**2}
	end
end