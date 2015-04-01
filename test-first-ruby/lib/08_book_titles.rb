class Book
	$dont_cap = File.readlines("./lib/dont_cap.txt").join.split(',')
	
	def title
		@title 
	end

	def title=(title)
		words = title.split(" ")
		#@title = title.capitalize if words.count == 1
		@title = words.map.with_index {|word, idx|
			if !$dont_cap.include?(word) || idx == 0
				word.capitalize
			else
				word
			end
		}.join(" ")
	end
end