# This class lets you create a Dictionary of words and their definitions
#
#
class Dictionary
  
  # Initialize with the hash of entries, or an empty hash if no entires are provided
  #
  def initialize(entries = {})
  		@entries = entries
  end

  # Returns the entries hash when called
  #
  def entries()
  		@entries
  end

  # Returns all the keys (i.e. words) when called
  #
  def keywords()
  		@entries.keys.sort

  end

  # Adds an entry to the @entries hash. Tests if the value passed in is a string, and if it is, it assuems it's a word without a definition and creates an entry just for the word. If the value passed in is a hash, it creates a full entry
  #
  def add(entry = {})
  		if entry.class == String
  			@entries[entry] = nil
  		else
  			entry.each do |entry, definition|
  				@entries[entry] = definition
  			end	
  		end
  end

  # 

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

  # I'm sure there's a cleaner way to do this, but it works...
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
