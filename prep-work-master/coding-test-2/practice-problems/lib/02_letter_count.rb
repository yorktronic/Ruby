def letter_count(str)
	letters = {}
	str = str.split(' ').join('').split('')
	str.each do |letter|
		if letters.has_key?(letter)
			letters[letter] += 1
		else
			letters[letter] = 1
		end
	end
	letters
end
