
require 'spec_helper'

describe 'Chefs' do

	fixtures :users

	before do
		sign_in
	end

	it "can include Recipes" do
	    visit chefs_path
		click_link "New Chef"
		fill_in "Name", with: "Connie Wu" 
		fill_in "Email", with: "wuconnie@seas.upenn.edu" 
		select "dessert", from: "Recipes" 
		click_on "Create Chef"

		page.has_content? "Chef was successfully created"
	end

end