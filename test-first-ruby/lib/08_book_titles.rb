class Book
	#Note: This code uses a modified list of stopwords that I found online - there may be cases outside the scope of the RSpec where this code fails.
	$stopwords = File.readlines("./lib/common-english-words.txt").join.split(',')
	
	def title
		@title 
	end

	def title=(title)
		words = title.split(" ")
		#@title = title.capitalize if words.count == 1
		@title = words.map.with_index {|word, idx|
			if !$stopwords.include?(word) || idx == 0
				word.capitalize
			else
				word
			end
		}.join(" ")
	end
end