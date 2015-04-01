class Drawing
	def Drawing.give_me_a_circle
		Circle.new
	end

	class Line
	end

	class Circle
		def what_am_i
			"This is a circle"
		end
	end
end

a = Drawing.give_me_a_circle
puts a.what_am_i
# Here, you can specifically call a subclass by using the :: syntax

a = Drawing::Circle.new
puts a.what_am_i
a = Circle.new
puts a.what_am_i

#You can also call constants within subclasses using ::, like so

Pi = 3.141592
class OtherPlanet
	Pi = 4.5
end

puts OtherPlanet::Pi

