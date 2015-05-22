def stock_market(stock)
	# Input = prices of a stock on day idx
	# Output = buy and sell date eg [1,5] for buy on day 1 and sell on day 5

	# Create an array with the following format sol = [ [[1,5], 10], [[2, 4], 15] ] etc where the pair at the front are the buy and sell dates, and the second value is the net price

	# Pass through the array to find the max price, return the day pair

	money = 0
	buy = 0
	sell = 0

	stock.each_with_index do |val, idx|
		idy = idx + 1
		while idy < stock.count
			if (stock[idy] - stock[idx]) > money
				money = stock[idy] - stock[idx]
				buy = idx
				sell = idy
			end
			idy += 1
		end
	end
	return [buy, sell]
end