# Write a method that takes in a number and returns a string, placing
# a single dash before and after each odd digit. There is one
# exception: don't start or end the string with a dash.
#
# You may wish to use the `%` modulo operation; you can see if a number
# is even if it has zero remainder when divided by two.
#
# Difficulty: medium.

require 'byebug'
def dasherize_number(num)
	digits = num.to_s.split('')
	#byebug
	digits.each do |digit|
		if (digit.to_i % 2) > 0
			digit.insert(0,"-")
			digit << "-"
		end
	end
	digits = digits.join('')
	digits.gsub!('--','-')
	digits[0] = '' if digits[0] == '-'
	digits[digits.length - 1] = '' if digits[digits.length - 1] == '-'
	return digits
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.


puts(
  'dasherize_number(203) == "20-3": ' +
  (dasherize_number(203) == '20-3').to_s + ', got: ' + dasherize_number(203)
)
puts(
  'dasherize_number(303) == "3-0-3": ' +
  (dasherize_number(303) == '3-0-3').to_s + ', got: ' + dasherize_number(303)
)
puts(
  'dasherize_number(333) == "3-3-3": ' +
  (dasherize_number(333) == '3-3-3').to_s + ', got: ' + dasherize_number(333)
)
puts(
  'dasherize_number(3223) == "3-22-3": ' +
  (dasherize_number(3223) == '3-22-3').to_s + ', got: ' + dasherize_number(3223)
)