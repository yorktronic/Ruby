require "rspec"
require "zombie"

describe "Zombie" do
	it "is named Ash" do 
		zombie = Zombie.new
		zombie.name.should == 'Ash'
	end

	it "has no brains" do 
		zombie = Zombie.new
		zombie.brains.should < 1
		zombie.alive.should be_false
		zombie.rotting.should be_true
		zombie.should be_hungry
	end
end
