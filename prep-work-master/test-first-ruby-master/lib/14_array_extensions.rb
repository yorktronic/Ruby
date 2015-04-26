class Array

	def sum
		return 0 if self.empty?
		self.inject{|sum,n| sum + n}
	end

	def square
		return [] if self.empty?
		squares = []
		self.each do |i|
			squares << i**2
		end
		squares
	end

	def square!
		return [] if self.empty?
		self.map! do |i|
			i**2
		end
		self
	end
end