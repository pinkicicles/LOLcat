class Chef < ActiveRecord::Base
  
  has_many :meals

  attr_accessible :email, :name, :recipes

  validates :email, uniqueness: true, presence: true

  validates :name, uniqueness: true, presence: true

  scope :dessert_chefs, where(recipes: "Dessert")

end

