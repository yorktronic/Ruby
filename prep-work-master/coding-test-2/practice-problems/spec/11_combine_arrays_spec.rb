require '11_combine_arrays'
require 'rspec'

# You're given two sorted arrays, combine them in to one sorted array without using sort or modifying the arrays

describe "#combine_arrays" do
	it "returns the right answer for arrays of the same length" do
		combine_arrays([1,3,5,7], [2,4,6,8]).should == [1,2,3,4,5,6,7,8]
	end
	it "returns the right answer for arrays of differing lengths" do
		combine_arrays([1,3,5,7,9],[2,4,6,8]).should == [1,2,3,4,5,6,7,8,9]
	end
	it "returns the right answer even if the arrays passed in aren't sorted" do
		combine_arrays([3,1,4,5,6],[2,7]).should == [1,2,3,4,5,6,7]
	end

end