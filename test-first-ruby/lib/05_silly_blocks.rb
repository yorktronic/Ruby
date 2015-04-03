# Methods that do things to blocks that are passed in, like reversing strings, adding numbers, and repeating the block. I used yield here instead of block.call, because why not?
#
#

# Reverses the string within the block that is called
#
def reverser()
	yield.split(" ").map! {|word| word.reverse}.join(" ")
end

def adder(num = 1)
	yield + num
end

def repeater(n = 1)
	n.times {yield}
end