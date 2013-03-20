require 'spec_helper'

describe Chef do
  it "does not repeat email" do
  	chef = Chef.new
  	chef.email = "sample@gmail.com"
  	chef.save

  	chef = Chef.new
  	chef.email = "sample@gmail.com"
  	chef.should_not be_valid
  	#chef.valid?.should == false

  end

it "does not repeat name" do
  	chef = Chef.new
  	chef.name = "Connie"
  	chef.save

  	chef = Chef.new
  	chef.name = "Connie"
  	chef.should_not be_valid
  	#chef.valid?.should == false

  end

end
