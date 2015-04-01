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

# I found a list of "stopwords" online and have modified it to work with this method. It's likely there are some words in the file that maybe shouldn't be there. Also, titleize doesn't handle dashes yet.
def titleize(words)
	stopwords = File.readlines("lib/common-english-words.txt").join.split(',')
	titlewords = words.split(" ")
	return titlewords[0].capitalize if titlewords.count == 1
	titlewords.map.with_index{|word, idx| 
		if !stopwords.include?(word) || idx == 0
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