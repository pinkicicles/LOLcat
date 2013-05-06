class Meal < ActiveRecord::Base
  attr_accessible :chef, :date, :description, :location, :name, :pickup_time
end
