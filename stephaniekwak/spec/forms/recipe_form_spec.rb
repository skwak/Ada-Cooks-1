require "rails_helper"

describe RecipeForm do
  before(:each) do
    @attributes = { title: "Hot Dog", description: "crazy bratwurst", yield: "1 hotdog", time: "1 minute", directions: "buy hotdog", ingredients: [11, 22] }
    @recipe_form = RecipeForm.new(attributes)
  end

  
end

# def initialize(attributes)
#   @attributes = attributes
# end
#
# def recipe
#   @recipe
# end
#
# def submit
#   # create an instance of Recipe class
#   # create recipe ingredients for each id in the ingredients key
#   @recipe = Recipe.create(
#     title: @attributes[:title],
#     description: @attributes[:description],
#     yield: @attributes[:yield],
#     time: @attributes[:time],
#     directions: @attributes[:directions],
#   )
#
#   @attributes[:ingredients].each do |id|
#     RecipeIngredient.create(ingredient_id: id, recipe_id: @recipe.id, measurement: measurement)
#   end
# end
