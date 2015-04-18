# Write a method that takes in a string and returns the number of
# letters that appear more than once in the string. You may assume
# the string contains only lowercase letters. Count the number of
# letters that repeat, not the number of times they repeat in the
# string.
#
# Difficulty: hard.
require 'byebug'

def num_repeats(string)
	#byebug
	chars_and_counts = {}
	string = string.split("")
	string.each do |char|
		chars_and_counts[char] += 1 if chars_and_counts.has_key?(char)
		chars_and_counts[char] = 1 if !chars_and_counts.has_key?(char)
	end
	count = 0
	chars_and_counts.each do |char, cnt|
		if cnt > 1
			count += 1
		end
	end
	return count
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.


puts('num_repeats("abdbc") == 1: ' + (num_repeats('abdbc') == 1).to_s + ', got: ' + num_repeats('abdbc').to_s)
# one character is repeated
puts('num_repeats("aaa") == 1: ' + (num_repeats('aaa') == 1).to_s + ', got: ' + num_repeats('aaa').to_s)
puts('num_repeats("abab") == 2: ' + (num_repeats('abab') == 2).to_s + ', got: ' + num_repeats('abab').to_s)
puts('num_repeats("cadac") == 2: ' + (num_repeats('cadac') == 2).to_s + ', got ' + num_repeats('cadac').to_s)
puts('num_repeats("abcde") == 0: ' + (num_repeats('abcde') == 0).to_s + ', got ' + num_repeats('abcde').to_s)