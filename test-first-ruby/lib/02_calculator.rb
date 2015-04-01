def add(num1, num2)
	num1 + num2
end

def subtract(num1, num2)
	num1 - num2
end

def sum(nums)
	return 0 if nums == []
	nums.reduce(:+)
end

def multiply(nums)
	return 0 if nums == []
	nums.reduce(:*)
end

def power(num, power)
	num**power
end

def factorial(num)
	(1..num).reduce(1,:*) 
end