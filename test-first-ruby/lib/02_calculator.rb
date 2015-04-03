# Performs various calculator functions
#
#

# Adds two numbers
#
def add(num1, num2)
	num1 + num2
end

# Subtracts two numbers
#
def subtract(num1, num2)
	num1 - num2
end

# Sums an array of numbers
#
def sum(nums)
	return 0 if nums == []
	nums.reduce(:+)
end

# Multiplies an array of numbers
#
def multiply(nums)
	return 0 if nums == []
	nums.reduce(:*)
end

# Takes a number to a given power (exponent)
# 
def power(num, power)
	num**power
end

# Calculates the factorial of a number
#
def factorial(num)
	(1..num).reduce(1,:*) 
end