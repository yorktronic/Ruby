def reverser(&block)
	yield.split(" ").map! {|word| word.reverse}.join(" ")
end

def adder(num = 1, &block)
	yield + num
end

def repeater(n = 1, &block)
	n.times {yield}
end