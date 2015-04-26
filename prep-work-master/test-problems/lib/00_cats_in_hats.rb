def cats_in_hats()
	cats = {}
	
	(1..100).each do |cat|
		cats[cat] = false
	end

	round = 1

	while round <= 100
		cat = round
		while cat <= 100
			if cats[cat] == true
				cats[cat] = false
			else
				cats[cat] = true
			end
			cat += round
		end
		round += 1
	end

	cats_with_hats = []
	cats.each do |cat, has_hat|
		cats_with_hats << cat if has_hat
	end

	return cats_with_hats
end

p cats_in_hats()