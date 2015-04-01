# ----- CHAPTER 2 & 3 -----
# x <=> y is a comparison that returns 0 if equal, 1 if x is higher, -1 if y is higher
# Constants are defined w/ capital letters. Pi = 3.141592
# x = %q { some text } is the same as x = %q ( some text ). You can use ! also, and some other shit probably
# You can also do x = <<end_my_string blah blah end_my_string
# You may be able to use "string".sum (which returns a numercial value, I'm guessing based on the ASCII values, for some comparisons)
# "string".chop removes the last character in the string
# See page 45 in the book for a description of how to use sub
# scan p 47-48
# "This is a test".scan(/\w/).join(',') => T,h,i,s,i,s,a,t,e,s,t
# p52 inspect, and other shit
# Don't need to do each do, just each is fine
# Collect iterates through an array and changes it on the fly, and is functionally equivalent to map { |e| do_thing }
# You can pass a numerical value in to first or last x = [1, 2, 3] puts x.first(2).join("-")
# Code blocks: you can pass an entire block of code as an element to a function:
# def each_vowel(&code_block)
# 	%w{P}a e i o u}.each { |vowel| code_block.call(vowel)}
# end
# each_vowel { |vowel| puts vowel}
# p66 lambda
# time p68

# ----- CHAPTER 6 -----
# $ defines local variables 