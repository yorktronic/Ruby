require '09_stock_market'
require 'rspec'

# Write a function that takes in an array that represents the price of a stock on different days. The index corresponds to the day and the value corresponds to the price of the stock. Return a two-value array representing the best day to buy and sell the stock to make the most money

describe "#stock_market" do
	it "returns the right answer" do
		stock_market([15, 8, 16, 2, 100, 32, 6, 900, 1]).should == [3, 7]
	end
end