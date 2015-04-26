class Dictionary
	def initialize(entries = {})
		@ents = entries
	end

	def entries
		@ents
	end

	def add(ent)
		@ents[ent.keys[0]] = ent[ent.keys[0]] if ent.is_a?(Hash)
		@ents[ent] = nil if ent.is_a?(String)
	end

	def keywords
		@ents.keys.sort
	end

	def include?(word)
		@ents.has_key?(word)
	end

	def find(word)
		results = {}
		@ents.each do |ent, definition|
			if ent.include?(word)
				results[ent] = definition
			end
		end
		return results
	end

	def printable
		result = []
		@ents.each do |ent, definition|
			result << %Q{[#{ent}] "#{definition}"}
		end
		result.sort.join("\n")
	end
end
