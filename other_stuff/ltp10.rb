# self.each calls the class you're in
# not isEven calls the opposite of isEven
require 'byebug'

def grandfatherClock(&block)
	currentTime = Time.now.hour
	am = true
	timeText = "The time is now "
	currentTime.times do |hour|
		am = false if hour > 11
		time = hour.to_s + "AM" if am
		time = "12AM" if hour == 0
		time = (hour - 12).to_s + "PM" if !am
		time = "12PM" if hour == 12
		p timeText + time
		block.call
	end
end

#grandfatherClock do puts 'DONG!' end

def log(blockDescription, &block)
	p "Beginning " + blockDescription + "..."
	p blockDescription + " finished, returning: " + (block.call).to_s
end

$depth = -3
def betterLogger(blockDescription, &block)
	$depth += 3
	p " "*$depth + "Beginning " + "\'" + blockDescription + "\'" + "..."
	p " "*$depth + "\'" + blockDescription + "\'" + " finished, returning: " + (block.call).to_s
end

betterLogger 'outer block' do 
	betterLogger 'inner block' do 'I do not like cottage cheese' end 
	'I like Ice Cream'	
end 