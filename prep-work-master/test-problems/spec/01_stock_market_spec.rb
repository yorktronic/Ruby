require '01_stock_market.rb'
require 'rspec'

# You are given an array of stock prices, with the array indicies corresponding to the day and the value corresponding to the price of the stock. Write a method that returns an array of the buy date and sell date

describe "#stock_market" do 

  stock = [5,3,8,2,1,100,999,42]	
  it "returns the correct answer" do
  		stock_calc(stock).should == [4,6]
  end

end