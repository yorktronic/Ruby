# Contains various methods for doing things with strings (repeating them, titelizing them, removing first words, etc)
#
#

# Repeats a word twice
#
def echo(words)
	words
end

# Captializes an entire word
#
def shout(words)
	words.upcase
end

# Repeats a word a specified number of times
#
def repeat(word, times=2)
	((word+" ")*times).rstrip
end

# Returns a specified number of characters of a word, starting from the left
#
def start_of_word(word, idx)
	word[0..idx-1]
end

# Returns the first word from a string
#
def first_word(words)
	words.split(" ")[0]
end

# Capitalizes the appropriate words in a string, given a list of words that should not be captialized (conjuctions, pronouns, etc.) Also includes functionality so that words with dashes can be appropriately capitalized, and ensured punctuation can be handled
#
def titleize(words)
	stopwords = File.readlines("lib/dont_cap.txt").join.split(',')
	titlewords = words.split(" ")

	titlewords.map.with_index{|word, idx| 
		if !stopwords.include?(word) || idx == 0
			# Handling words with dashes - both the word before and after the dash need to be checked for capitalization 
			#
			if word.include?("-")
				word.split("-").map! {|w| w.capitalize if !stopwords.include?(word) }.join("-")
			else
				word.capitalize
			end
		else
			word
		end
	}.join(" ")
	
end