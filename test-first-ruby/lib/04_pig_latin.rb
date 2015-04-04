# This script will take in a string and translate it in to Pig Latin
#
#
def translate(words)
	# Translate each word that's passed in to translate, returning the translated string
	#
	words = words.split(" ")
	piggy_words = []
	words.each do |word|
		piggy_words << translate_word(word)
	end
	piggy_words.join(" ")
end

def translate_word(word)
	
	vowels = ["a", "e", "i", "o", "u"]
	word = word.split("")
	
	# Create blank prefix and suffix arrays to hold the beginning and end of the word after translation
	#
	prefix = []
	suffix = []
	
	# Test to see if the word is capitalized, if it is, store is_cap as true and downcase the word. This won't work for stuff like "eBay" :(
	#
	is_cap = false
	if word.first == word.first.upcase
		is_cap = true
		word.map!{|char| char.downcase}
	end

	# There should be a way I can do this w/ gsub or something else that is cleaner. Maybe come back to this later.
	#
	idx = 0
	while idx < word.length
		if idx != word.length - 1 && word[idx] == "q" && word[idx + 1] == "u"
			prefix << "qu"
			idx += 2
		else
			prefix << word[idx]
			idx += 1
		end
	end
	
	# Do the translation itself and retun the word
	# Test to see if is_cap is true, if it is, then we capitalize the first letter of the word we return. Basically, it keeps stepping through until it hits a vowel, building the suffix by shifting off the prefix as it does this. Then, it builds the word once a vowel is hit.
	#
	piggy = ""
	word.each do |letter|
		if vowels.include?(letter)
			piggy = "#{prefix.join("")}" + "#{suffix.join("")}ay"
			if is_cap
				piggy = piggy.capitalize
			end
			if has_punctuation?(piggy)
				return punctuate(piggy)
			end
			return piggy
		end
		if !vowels.include?(letter)
			suffix << prefix.shift
		end
	end
end

# Retaining punctuation... for anything that occurs at the end of the word this is easy, just remove it and then place it at the end of the word after it's piggied (find it, store it, gsub it, add it). The only trick is testing for quotes and dashes... add this functionality later
#
def punctuate(word)
	ender = ""
	non_digits = ["!", ",", ";", ".", "?"]
	non_digits.each do |c|
		ender = c if word.include?(c)
	end
		word.scan(/[a-zA-z]/).join("").strip + ender
end

# returns true if the word has punctuation
#
def has_punctuation?(word)
	non_digits = ["!", ",", ";", ".", "?"]
	word.split("").each do |c|
		return true if non_digits.include?(c)
	end
	return false
end