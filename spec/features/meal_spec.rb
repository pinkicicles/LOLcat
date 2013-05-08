
require 'spec_helper'

describe 'Meals' do

	fixtures :users

	before do
		sign_in
	end

	it "Can Create Meals" do
	    visit meals_path
		click_on "Create A New Meal"
		
		fill_in "Name", with: "Cake" 
		fill_in "Date", with: "20/05/23" 
		fill_in "Description", with: "Chocolate"
		fill_in "Location", with: "Penn"
		
		
		click_on "Create New Meal"

		page.has_content? "Meal was successfully created"
	end

end