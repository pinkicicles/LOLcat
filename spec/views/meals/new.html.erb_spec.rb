require 'spec_helper'

describe "meals/new" do
  before(:each) do
    assign(:meal, stub_model(Meal,
      :name => "MyString",
      :chef => "MyString",
      :location => "MyText",
      :description => "MyText"
    ).as_new_record)
  end

  it "renders new meal form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", meals_path, "post" do
      assert_select "input#meal_name[name=?]", "meal[name]"
      assert_select "input#meal_chef[name=?]", "meal[chef]"
      assert_select "textarea#meal_location[name=?]", "meal[location]"
      assert_select "textarea#meal_description[name=?]", "meal[description]"
    end
  end
end
