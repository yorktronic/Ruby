require 'byebug'
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
	byebug
	vowels = ["a","e","i","o","u"]
	word = word.split("")
	if vowels.include?(word[0])
		return (word.join("") << "ay")
	else
		cons_sound = []
		word.each_with_index do |char,idx|
			if (idx < word.length - 1) && (char == "q") && word[idx + 1] == "u"
				cons_sound << word.shift
				cons_sound << word.shift
			end
			if !vowels.include?(char)
				cons_sound << word.shift
			else
				return (word.join("") << cons_sound.join("") << "ay")
			end
		end
	end
end

p translate_word("banana")