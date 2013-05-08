class Meal < ActiveRecord::Base

  belongs_to :chefs
  	
  attr_accessible :chef, :date, :description, :location, :name, :pickup_time

  validates :date, presence: true

  validates :name, presence: true

  validates :chef, presence: true

end
