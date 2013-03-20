class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :authenticate_user!

  before_filter do 
  	@dessert_chefs = Chef.dessert_chefs
  end
end
