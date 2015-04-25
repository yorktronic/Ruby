class Book
  @title = ""
  $dont_cap = File.readlines("lib/dont_cap.txt").join.split(',')
 
  def title=(words)
  		words = words.split(" ")
  		@title = words.map!{|word| 
  			if !$dont_cap.include?(word)
  				word.capitalize
  			else
  				word
  			end}
  		@title[0].capitalize!
  		@title = @title.join(" ")
  end

  def title
  		@title
  end


end
