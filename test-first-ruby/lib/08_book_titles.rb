# A book class that lets you set the title of a book, and also titelize the title. Like in 03_simon_says.rb, the class utilizes a text file containing words to not capitalize (conjuctions, etc.) It also handles words with dashes and punctuation. I had to seek help online because I didn't understand how rpsec required a method to be called "title=", this syntax was unfamiliar to me. 
#
#

class Book
	$dont_cap = File.readlines("lib/dont_cap.txt").join.split(',')
	
	# When called, simply returns the book title - this method is only used when rspec needs to test the book title i.e. book.title.should == "To Kill a Mockingbird"
	#
	def title
		@title 
	end

	# Sets the title of the book and properly titelizes it. This is the same code as in simon_says - later on I'll have simon_says require this file and use the method below
	#
	def title=(title)
		words = title.split(" ")
		
		@title = words.map.with_index {|word, idx|
			if cap?(word) || idx == 0
				# If a word isn't in the don't cap list, we capitalize it, but first we need to see if it has a hyphen and test the sub-words in the hypenated word
				#
				if word.include?("-")
					word.split("-").map!.with_index {|w, i| w.capitalize if cap?(word) || i == 0  }.join("-")
				else
					word.capitalize
				end
			else
				word
			end
		}.join(" ")
	end

	# A method that simply tests if a word should be capitalized, to clean up the code above
	#
	def cap?(word)
		return true if !$dont_cap.include?(word)
	end
end