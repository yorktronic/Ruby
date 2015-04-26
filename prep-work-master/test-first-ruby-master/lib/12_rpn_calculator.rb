class RPNCalculator
  
  def initialize()
  		@stack = []
  end

  def push(val)
  		@stack << val
  end

  def plus
  		error
  		@stack.push(@stack.pop + @stack.pop)
  end

  def value
  		return @stack.last
  end

  def minus
  		error
  		second = @stack.pop
  		@stack.push(@stack.pop - second)
  end

  def times
  		error
  		@stack.push(@stack.pop * @stack.pop)
  end

  def divide
  		error
  		second = @stack.pop
  		@stack.push(@stack.pop.to_f / second.to_f)
  end

  def error
  		raise ArgumentError, 'calculator is empty' if @stack.empty?
  end

  def tokens(toke)
  		operators = {"*" => :*, "+" => :+, "-" => :-, "/" => :/}
  		tokenized = []
  		toke.split(" ").each do |o|
  			if operators.has_key?(o)
  				tokenized << operators[o]
  			else
  				tokenized << o.to_i
  			end
  		end
  		tokenized
  end

  def evaluate(x)
  		x = tokens(x)
  		x.each do |o|
  			if o.is_a?(Fixnum) || o.is_a?(Float)
  				push(o)
  			else
  				if o == :+
  					plus
  				elsif o == :-
  					minus
  				elsif o == :*
  					times
  				elsif o == :/
  					divide
  				end
  			end
  		end
  		value
  end

end
