class Dictionary
  
  def initialize(entries = {})
  		@entries = entries
  end

  def entries()
  		@entries
  end

  def keywords()
  		@entries.keys.sort

  end

  def add(entry = {})
  		if entry.class == String
  			@entries[entry] = nil
  		else
  			entry.each do |entry, definition|
  				@entries[entry] = definition
  			end	
  		end
  end

  def include?(key)
  		return true if @entries.has_key?(key)
  		false
  end

  def find(key)
  		search_results = {}
  		found = false
  		@entries.each do |entry, definition|
  			if entry.include?(key)
  				found = true
  				search_results[entry] = definition if entry.include?(key)
  			end
  		end
  		return search_results if found
  		{}
  end

  #This code is yucky - fix it!
  def printable()
  		output = []
  		output_s = ""
  		@entries.each do |entry, definition|
  			output << "[#{entry}] \"#{definition}\""
  		end
  		output = output.sort
  		output.each do |entry|
  			output_s += (entry + "\n")
  		end
  		output_s.chop
  end
end
