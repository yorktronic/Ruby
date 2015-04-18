# Write a method that takes in an integer `offset` and a string.
# Produce a new string, where each letter is shifted by `offset`. You
# may assume that the string contains only lowercase letters and
# spaces.
#
# When shifting "z" by three letters, wrap around to the front of the
# alphabet to produce the letter "c".
#
# You'll want to use String's `ord` method and Integer's `chr` method.
# `ord` converts a letter to an ASCII number code. `chr` converts an
# ASCII number code to a letter.
#
# You may look at the ASCII printable characters chart:
#
#     http://en.wikipedia.org/wiki/ASCII#ASCII_printable_characters
#
# Notice that the letter 'a' has code 97, 'b' has code 98, etc., up to
# 'z' having code 122.
#
# You may also want to use the `%` modulo operation to handle wrapping
# of "z" to the front of the alphabet.
#
# Difficulty: hard. Because this problem relies on outside
# information, we would not give it to you on the timed challenge. :-)

def caesar_cipher(offset, string)
	# convert in to an array of words
	words = string.split(" ")
	coded_words = []
	words.each do |word|
		chars = word.split('')
		coded_word = ""
		chars.each do |c|
			code = c.ord + offset
			(code += 96 - 122) if code > 122
			coded_word << code
		end
		coded_words << coded_word
	end
	return coded_words.join(" ")

	
	# parse through each letter, converting it
	# make sure to check if the converted character's code is greater than 122 - if it is then add it to 97 to get the wrap around letter


end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(
  'caesar_cipher(3, "abc") == "def": ' +
  (caesar_cipher(3, 'abc') == 'def').to_s + ', got: ' + caesar_cipher(3, 'abc')
)
puts(
  'caesar_cipher(3, "abc xyz") == "def abc": ' +
  (caesar_cipher(3, 'abc xyz') == 'def abc').to_s + ', got: ' + caesar_cipher(3, 'abc xyz')
)
