class Friend
	def greeting(name = nil)
		return "Hello!" if name == nil
		return "Hello, #{name}!"
	end
end
