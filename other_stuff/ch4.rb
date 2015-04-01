# Application from Chapter 4 of Peter Cooper's book

# Here's an unessecarily complex way of counting the number of lines in a txt doc
#line_count = 0
#text = ''
#File.open("oliver.txt").each do |line|
#line_count += 1
#text << line
#end

require 'byebug'

lines = File.readlines("oliver.txt")
line_count = lines.size
text = lines.join
total_characters = text.length
chars_no_whitespaces = text.gsub(/\s+/, '').length
words = text.split.length
sentence_count = text.split(/\.|\?|!|;/).length
paragraph_count = text.split(/\n\n/).length
avg_sentence_pp = sentence_count / paragraph_count
avg_words_ps = words / sentence_count

text_body = File.readlines("oliver.txt")
stopwords = File.readlines("common-english-words.txt").join.split(',')

puts "#{line_count} lines"
puts "#{total_characters} characters"
puts "#{chars_no_whitespaces} characters (excluding spaces)"
puts "#{words} words"
puts "#{sentence_count} sentences"
puts "#{paragraph_count} paragraphs"
puts "#{avg_sentence_pp} average sentences per paragraph"
puts "#{avg_words_ps} average words per sentence"

miranda_text = File.readlines("miranda.txt")
catcher_text = File.readlines("catcher.txt")
summarizer_text = %q{Ruby is a great programming language. It is object oriented and has many groovy features. Some people don't like it, but that's not our problem! It's easy to learn. It's great. To learn more about Ruby, visit the official Ruby Web site today.}

#This method will take in a text file and a list of stopwords and return a new string with the stopwords removed
def remove_stopwords(lines, stopwords)
	words = lines.join.split
	keywords = words.select {|word| !stopwords.include?(word)}
	return keywords.join(' ')
end

def how_interesting?(lines, stopwords)
	#byebug
	words = lines.join.split
	keywords = words.select {|word| !stopwords.include?(word)}
	return (keywords.count.to_f / words.length.to_f)
end

def summarizer(lines, stopwords)
	sentences = lines.join.gsub(/\s+/, ' ').strip.split(/\.|\?|!/)
	sentences_sorted = sentences.sort_by{ |sentence| sentence.length}
	one_third = sentences_sorted.length / 3
	ideal_sentences = sentences_sorted.slice(one_third, one_third + 1)
	ideal_sentences = ideal_sentences.select { |sentence| sentence =~/is|are/}
	puts ideal_sentences.join(". ")
end

puts summarizer(miranda_text, stopwords)


