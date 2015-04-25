def reverser (&block)
	yield.split(" ").map! {|word| word.reverse}.join(" ")
end

def adder(add = 1, &block)
	block.call + add
end

def repeater(n = 1, &block)
	n.times {yield}
end