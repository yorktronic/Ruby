require '10_golden_years'
require 'rspec'

# Write a function, golden_years, that takes in an array that represents the population increase of puppies. [10, -1, 8, -5, 10] would represent an increase of 10 in year 1, a decrease of 1 in year 2, an increase of 8 in year three, and so on. Return a two-entry array that represents the start year and end year of the golden age of puppies, which represents the age when the puppy population increased the most

describe "#golden_age" do
	it "returns the correct answer" do
		golden_age([-1, -1, 3, 4, 5, 6, -8, 6]).should == [2,5]
	end
end