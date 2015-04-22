def echo(word)
	word
end

def shout(word)
	word.upcase
end

def repeat(word, n = 2)
	((word<<" ")*n).strip
end

def start_of_word(word, end_char)
	word.slice(0..end_char-1)
end

def first_word(str)
	str.split(" ").first
end

def titleize(str)
	dont_cap = File.readlines("lib/dont_cap.txt").join.split(',')
	str = str.split(" ")
	str.each_with_index do |word, idx|
		word.capitalize! if (!dont_cap.include?(word) || idx == 0)
	end
	str.join(" ")
end