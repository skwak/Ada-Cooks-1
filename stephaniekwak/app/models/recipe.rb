class Recipe < ActiveRecord::Base
  has_many :recipe_ingredients
  has_many :ingredients, through: :recipe_ingredients

  # validates :title, :description, :yield, :time, :directions, presence: true

end
