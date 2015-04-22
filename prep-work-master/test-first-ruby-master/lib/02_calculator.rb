def add(x,y)
	x + y
end

def subtract(x,y)
	x - y
end

def sum(nums)
	return 0 if nums == []
	sum = 0
	nums.each do |num|
		sum += num
	end
	sum
end

def multiply(nums)
	ans = 1
	nums.each do |num|
		ans *= num
	end
	ans
end

def power(x,n)
	x**n
end

def factorial(n)
	return 1 if n == 0 || n == 1
	(1..n-1).each do |num|
		n*=num
	end
	n
end