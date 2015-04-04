class RPNCalculator
  
  # The stack is empty initially, so we create an empty array to mimic a stack
  #
  def initialize()
  		@stack = []
  end

  def push(num)
  		@stack << num
  end

  # Removes two values from the end of the stack and adds them. Can also be done with @stack.pop(2), which I discovered when seeking help on evaluate(ops) below
  # 
  def plus()
  		error?
  		@stack << (@stack.pop + @stack.pop)
  end

  # Returns the value of the rpn operation, which would be the last entry in the array
  #
  def value()
  		@stack.last
  end

  # Subtracts the second to last number from the last number in the stack
  #
  def minus()
  		error?
  		second = @stack.pop
  		first = @stack.pop
  		@stack << (first - second)
  end

  # Divides the second to last number by the last number in the stack
  #
  def divide()
  		error?
  		second = @stack.pop
  		first = @stack.pop
  		@stack << (first.to_f / second.to_f)
  end

  # Multiplies the last two values in the stack together
  #
  def times()
  		error?
  		@stack << (@stack.pop * @stack.pop)
  end

  # Rather than having the ArgumentError in every method, I thought it simpler to call it as a method. It rasises an error if the calculator is empty
  #
  def error?()
  		raise ArgumentError, "calculator is empty" if @stack.empty?
  end

  # Converts string values for +, -, *, and / in to symbols and returns an array of numbers and symbols from the passed in string
  #
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

  # Tokenizes the passed in string, and then calls the appropriate methods to RPN evaluate the token
  # 
  # I had to use Stack Overflow for help on this :( I knew I had to create a hash linking the symbols :+, :-, etc to method calls, but I was doing it wrong. Essentially, what I was doing wrong was 1) not using Procs when calling the arithmetic methods and then 2) not realizing that when I referenced the Procs in the methods hash, I need to do so using .call, i.e. methods[op].call. After re-reading Blocks and Procs in Learn to Program Chapter 10, this became obvious - you can't just have a method call without a proc in the methods hash or it will error out. 
  #
  # For some reason, on my computer at least, doign the has_key? test is faster by .003 seconds than checking if op is an integer. The solution on stack overflow checks if op is an integer, which is interestingly less efficient than my solution.
  #
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
