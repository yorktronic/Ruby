# ----Namespaces----
# You can use .chr on a number to turn an ASCII value in to a character. I think that 65 to 90 are lowercase characters in the alphabet
# Namespaces provide the ability to specifically reference an element within a class while reducing the probabiltiy of conflicts

module ToolBox
	class Ruler
		attr_accessor :length
	end
end

module Country
	class Ruler
		attr_accessor :name
	end
end

a = ToolBox::Ruler.new
a.length = 50 
b = Country::Ruler.new
b.name = "Ghengis Khan from Mosaku"

# You can use mix-ins here and do something like 
include Country
c = Ruler.new
c.name = "King Henry VIII"
# This will make it so that whenever you call Ruler, Ruby assumes that you mean a Ruler of a country, not a toolbox Ruler. You can call a toolbox ruler directly by using
tooler = ToolBox::Ruler.new
tooler.length = 50

# ---- MIX-INS ----
# Modules are organizational tools rather than classes themselves
module UsefulFeatures
	def class_name
		self.class.to_s
	end
end

class Person
	include UsefulFeatures
end

x = Person.new
# puts x.class_name # => Person

module AnotherModule
	def do_stuff
		puts "This is a test"
	end
end

include AnotherModule
do_stuff

#Somewhat like a class, you can also access functionality within a module directly, like so:
# AnotherModule.do_stuff

# ---- ENUMERABLE ----

class AllVowels
	include Enumerable

	@@vowels = %w{a e i o u}
	def each
		@@vowels.each { |v| yeild v }
	end
end

# You can now use the enumerable methods such as collect, detect, select, sort, max, min

# ---- COMPARABLE ----

class Song
	include Comparable

	attr_accessor :length
	def <=> (other)
		@length <=> other.length
	end

	def initialize (song_name, length)
		@song_name = song_name
		@length = length
	end

	a = Song.new('Rock around the clock', 143)
	b = Song.new('Bohemian Rhapsody', 544)
	c = Song.new('Minute Waltz', 60)

	p a < b
	p b >= c
	p c > a
	p a.between?(c,b)

end