def ordered_vowel_words(str)
	str = str.split(' ')
	ordered_words = []
	str.each do |word|
		ordered_words << word if ordered_vowel_word?(word)
	end
	ordered_words.join(' ')
end

def ordered_vowel_word?(str)
	vowels = ["a","e","i","o","u"]
	str = str.split('')
	word_vowels = []
	str.each do |letter|
		word_vowels << letter if vowels.include?(letter)
	end
	return true if word_vowels == word_vowels.sort
	false
end