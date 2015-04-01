class Person
	def initialize(name)
		set_name(name)
	end

	def name
		@first_name + ' ' + @last_name
	end

	private 

	def set_name(name)
		first_name, last_name = name.split(/\s+/)
		set_first_name(first_name)
		set_last_name(last_name)
	end

	def set_first_name(name)
		@first_name = name
	end

	def set_last_name(name)
		@last_name = name
	end
end

#p = Person.new("Fred Bloggs")
#puts p.name

# p.set_last_name("Smith") - this no longer works after setting methods to private
# declaring "public" after private makes the subsequent methods public
# other syntax includes private :this_is_private, :this_is_also_private
# protected makes a method only accessible inside the scope of a class


# ----POLYMORPHISM---- 
class Animal
	attr_accessor :name

	def initialize(name)
		@name = name
	end
end

class Cat < Animal
	def talk
		"Meaow!"
	end
end

class Dog < Animal
	def talk
		"Woof!"
	end
end

animals = [Cat.new("Flossie"), Dog.new("Clive"), Cat.new("Max")]
animals.each do |animal|
	puts animal.talk
end


