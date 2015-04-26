def stock_calc(stock)
	dif = 0
	buy = 0
	sell = 0
	stock.each_with_index do |val, idx|
		idy = idx + 1
		until idy >= stock.count
			if (stock[idy] - val) > dif
				dif = stock[idy] - val
				buy = idx
				sell = idy
			end
			idy += 1
		end
	end
	return [buy, sell]
end