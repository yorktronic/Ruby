# Write a method that takes in a string. Your method should return the
# most common letter in the array, and a count of how many times it
# appears.
#
# Difficulty: medium.
#require 'byebug'
def most_common_letter(string)
	letters = {}
	#byebug
	string.split("").each do |c|
		if letters.has_key?(c)
			letters[c] += 1
		else
			letters[c] = 1
		end
	end
	return [letters.key(letters.values.max), letters.values.max]
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(
  'most_common_letter("abca") == ["a", 2]: ' +
  (most_common_letter('abca') == ['a', 2]).to_s
)
puts(
  'most_common_letter("abbab") == ["b", 3]: ' +
  (most_common_letter('abbab') == ['b', 3]).to_s
)

