def echo(words)
	words
end

def shout(words)
	words.upcase
end

def repeat(word, times=2)
	((word+" ")*times).rstrip
end

def start_of_word(word, idx)
	word[0..idx-1]
end

def first_word(words)
	words.split(" ")[0]
end

def titleize(words)
	stopwords = File.readlines("lib/dont_cap.txt").join.split(',')
	titlewords = words.split(" ")

	titlewords.map.with_index{|word, idx| 
		if !stopwords.include?(word) || idx == 0
			#Handling words with dashes
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