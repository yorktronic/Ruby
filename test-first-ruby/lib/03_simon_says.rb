# Contains various methods for doing things with strings (repeating them, titelizing them, removing first words, etc)
#
#

require '08_book_titles'
# Repeats a word twice
#
def echo(words)
	words
end

# Captializes an entire word
#
def shout(words)
	words.upcase
end

# Repeats a word a specified number of times
#
def repeat(word, times=2)
	((word+" ")*times).rstrip
end

# Returns a specified number of characters of a word, starting from the left
#
def start_of_word(word, idx)
	word[0..idx-1]
end

# Returns the first word from a string
#
def first_word(words)
	words.split(" ")[0]
end

# Uses the Book class created in 08_book_titles.rb, which I kept making tweaks to, instead of reproducing the code here. Hopefully that's okay!
#
def titleize(title)
	book = Book.new
	book.title = title
	return book.title
end

