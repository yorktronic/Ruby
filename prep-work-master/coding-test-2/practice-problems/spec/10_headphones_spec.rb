require 'headphones'
require 'rspec'

# Write a method or methods that takes in two arrays and a num. Each array contains two-entry arrays that reflect [headphone_input_impedance, headphone_price] and [amp_output_impedance, amp_price]. The num represents the maximum price a particular consumer wishes to spend on his headphone + amp combo. 
# The method should produce the headphone + amp combination that has the best damping factor (input impedance / output impedance) and is at or under the consumers budget

# Headphones:
# 0: Final Audio Pandora Hope VI - 8 ohms, $700
# 1: Sennheiser HD650 - 300 ohms
# 3: Grado RS2 - 32 ohms


describe "#headphones" do
	it "works with a simple case" do
		headphones([ [8,700], [300, 1200] ,[32, 500] ], [ [5,500], [16, 250], [32, 150] ])
	end
end