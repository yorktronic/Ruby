class Book
	$dont_cap = File.readlines("lib/dont_cap.txt").join.split(',')
	
	def title
		@title 
	end

	def title=(title)
		words = title.split(" ")
		
		@title = words.map.with_index {|word, idx|
			if !$dont_cap.include?(word) || idx == 0
				#Handling titles with dashes
				if word.include?("-")
					word.split("-").map! {|w| w.capitalize if !$dont_cap.include?(word) }.join("-")
				else
					word.capitalize
				end
			else
				word
			end
		}.join(" ")
	end
end