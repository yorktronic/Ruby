# Write a method that takes a string in and returns true if the letter
# "z" appears within three letters **after** an "a". You may assume
# that the string contains only lowercase letters.
#
# Difficulty: medium.

#require 'byebug'
def nearby_az(string)
	chars = string.split("")
	a_id = []
	z_id = []
	#byebug
	chars.each_with_index do |c, id|
		a_id << id if c == "a"
		z_id << id if c == "z"
	end
	a_id.each do |id|
		if z_id.include?(id + 1) || z_id.include?(id + 2) || z_id.include?(id + 3)
			return true
		end
	end
	false
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts('nearby_az("baz") == true: ' + (nearby_az('baz') == true).to_s)
puts('nearby_az("abz") == true: ' + (nearby_az('abz') == true).to_s)
puts('nearby_az("abcz") == true: ' + (nearby_az('abcz') == true).to_s)
puts('nearby_az("a") == false: ' + (nearby_az('a') == false).to_s)
puts('nearby_az("z") == false: ' + (nearby_az('z') == false).to_s)
puts('nearby_az("za") == false: ' + (nearby_az('za') == false).to_s)

