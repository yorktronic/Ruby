require 'csv'
require 'sunlight/congress'
require 'erb'

Sunlight::Congress.api_key = "e179a6973728c4dd3fb1204283aaccb5"

# Formats a zipcode to 5 digits (or creates a zipcode of all zeros if no zipcode exists)
#
def clean_zipcode(zipcode)
	zipcode.to_s.rjust(5,'0')[0..4]
end

# Sets all the legislators for a given zipcode
# 
def legislators_by_zipcode(zipcode)
	legislators = Sunlight::Congress::Legislator.by_zipcode(zipcode)
end

# Creates a thank-you letter for each event attendee 
#
def save_thank_you_letters(id,form_letter)
	Dir.mkdir("output") unless Dir.exists? "output"

	filename = "output/thanks_#{id}.html"

	File.open(filename,'w') do |file|
		file.puts form_letter
	end
end

puts "EventManager Initialized!"

# Note: you can avoid potential errors by using the syntax File.exists? for a given file

# Assigns the contents of the CSV file to a variable
#
contents = CSV.open "event_attendees.csv", headers: true, header_converters: :symbol

# Creates an ERB template from the form_letter
#
template_letter = File.read "form_letter.erb"
erb_template = ERB.new template_letter

# Assigning CSV contents to variables
#
contents.each do |row|
	id = row[0]
	name = row[:first_name]
	
	zipcode = clean_zipcode(row[:zipcode])
	
	legislators = legislators_by_zipcode(zipcode)

	form_letter = erb_template.result(binding)

	save_thank_you_letters(id,form_letter)
end
