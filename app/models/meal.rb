class Meal < ActiveRecord::Base

  belongs_to :chefs
  	
  attr_accessible :chef, :date, :description, :location, :name, :pickup_time

  validates :date, presence: true

  validates :name, presence: true

  validates :chef, presence: true

  validates :pickup_time, presence: true

  validates :description, presence: true

  validates :location, presence: true

end
