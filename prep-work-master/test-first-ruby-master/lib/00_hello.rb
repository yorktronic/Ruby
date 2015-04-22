def hello(name = :a)
	if name == :a
		"Hello!"
	else
		"Hello, " + name + "!"
	end
end

def greet(name)
	hello(name)
end