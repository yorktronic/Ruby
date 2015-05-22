require 'golden_years'
require 'rspec'

describe "#golden age" do
	it "returns the right answer" do 
		golden_age([-1, -1, 3, 4, 5, 6, -8, 6]).should == [2,5]
	end
end