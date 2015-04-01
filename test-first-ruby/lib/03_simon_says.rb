def echo(words)
	words
end

def shout(words)
	words.upcase
end

def repeat(word, times=2)
	repeats = []
	times.times {repeats << word}
	repeats.join(" ")
end

def start_of_word(word, idx)
	word[0..idx-1]
end

def first_word(words)
	words.split(" ")[0]
end

def titleize(words)
	stopwords = File.readlines("common-english-words.txt").join.split(',')
	titlewords = words.split(" ")
	return titlewords[0].capitalize if titlewords.count == 1
	titlewords.map.with_index{|word, idx| 
		if !stopwords.include?(word) || idx == 0
			word.capitalize
		else
			word
		end
	}.join(" ")
end