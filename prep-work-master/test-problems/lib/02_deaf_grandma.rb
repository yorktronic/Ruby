def deaf_grandma()
	while true
		if loud_enough?(gets.chomp)
			break
		else
			p "NOT LOUD ENOUGH, SONNY"
		end
	end
	p "LOUD ENOUGH"
end

def loud_enough?(str)
	return true if str == str.upcase
	return false
end


#{}"NO, NOT SINCE #{rand(1900..1950)}"

deaf_grandma()