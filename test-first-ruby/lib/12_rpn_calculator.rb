class RPNCalculator
  
  # All we need to start is an empty array
  def initialize()
  		@stack = []
  end

  def push(num)
  		@stack.push(num)  
  end

  def plus()
  		error?
  		@stack.push(@stack.pop + @stack.pop)
  end

  def value()
  		@stack.last
  end

  def minus()
  		error?
  		second = @stack.pop
  		first = @stack.pop
  		@stack.push(first - second)
  end

  def divide()
  		error?
  		second = @stack.pop
  		first = @stack.pop
  		@stack.push(first.to_f / second.to_f)
  end

  def times()
  		error?
  		@stack.push(@stack.pop * @stack.pop)
  end

  def error?()
  		raise ArgumentError, "calculator is empty" if @stack.empty?
  end

  def tokens(ops)
  		operators = {"+" => :+, "-" => :-, "*" => :*, "/" => :/}
  		ops = ops.split(" ")
  		tokenized = []
  		ops.each do |op|
  			if operators.has_key?(op)
  				tokenized << operators[op]
  			else
  				tokenized << op.to_i
  			end
  		end
  		tokenized
  end

  # Had to use Stack Overflow for help on this :( I knew I had to create a hash linking the symbols :+, :-, etc to method calls, but I was doing it wrong. Essentially, what I was doing wrong was 1) not using Procs when calling the arithmetic methods and then 2) not realizing that when I referenced the Procs in the methods hash, I need to do so using .call, i.e. methods[op].call. After re-reading Blocks and Procs in Learn to Program Chapter 10, this became obvious. It wasn't properly calling the methods (add, subtract, divide, etc otherwise). For some reason, on my computer at least, doign the has_key? test is faster by .003 seconds than checking if op is an integer. The solution on stack overflow checks if op is an integer, which is interestingly less efficient than my solution.
  def evaluate(ops)
  		ops = tokens(ops)
  		methods = {:+ => Proc.new{plus()}, :- => Proc.new{minus()}, :* => Proc.new{times()}, :/ => Proc.new{divide()}}
  		ops.each do |op|
  			if methods.has_key?(op)
  				methods[op].call
  			else
  				push(op)
  			end
  		end
  		value()
  end
end
