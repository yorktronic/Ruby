def word_unscrambler(str, words)
	matches = []
	words.each do |word|
		matches << word if word.split('').sort == str.split('').sort
	end
	matches
end
