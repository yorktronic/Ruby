def translate(words)
	piggy = ""
	words.split(" ").each do |word|
		piggy << (translate_word(word) << " ")
	end
	piggy.strip
end

def translate_word(word)
	#Create list of consonants
	#Test if word begins with a vowel, if so add ay to the end
	#Otherwise, move the first character to the end of the word followed by "ay"
	#byebug
	vowels = ["a","e","i","o","u"]
	word = word.split("")
	cons_sound = []
	q = false
	
	until vowels.include?(word[0]) do
		if word[0] == "q"
			q = true
		else
			q = false
		end
		cons_sound << word.shift
	end

	(cons_sound << word.shift) if (word[0] == "u" && q == true)
	return word.join("") + cons_sound.join("") + "ay"
end
