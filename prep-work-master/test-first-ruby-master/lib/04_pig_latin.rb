def translate(words)
	translate_word(words)
end

def translate_word(word)
	#Create list of consonants
	#Test if word begins with a vowel, if so add ay to the end
	#Otherwise, move the first character to the end of the word followed by "ay"

	vowels = ["a","e","i","o","u"]
	word = word.split("")
	if vowels.include?(word[0])
		return (word.join("") << "ay")
	else
		cons_sound = []
		until vowels.include?(word[0])
			cons_sound << word.shift
		end
		return (word.join("") << cons_sound.join("") << "ay"
	end
end