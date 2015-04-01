class XmlDocument

	def initialize
		@xml = ""
		@types = {:name => "name=", :be => "be="}
	end
	
	#def hello(tag = nil)
	#	if tag.is_a?(Hash) && tag.has_key?(:name)
	#		return "<hello name=\'#{tag[:name]}\'/>"
	#	elsif tag.is_a?(String)
	#		return "<hello>#{tag}"
	#	else	
	#		return "<hello/>"
	#	end
	#end

	#def send(tag_name)
	#	"<#{tag_name}/>"
	#end
	#for this problem, I got stuck  on the "renders block with text inside" test - I couldn't figure out how to use the text that is after the do statement...
	def method_missing(name, args = nil, &block)
			if block
				return "<#{name}><#{name}>"
			end
			return "<#{name}/>" if args == nil
			return "<#{name} #{@types[args.keys[0]]}\'#{args[args.keys[0]]}\'/>" if args.is_a?(Hash)
			


	end

end
