class RecipeForm

  attr_accessor :title, :recipe

  def initialize(attributes)
    @attributes = attributes
  end

  def submit
    @recipe = Recipe.create(
      title: @attributes[:title],
      description: @attributes[:description],
      yield: @attributes[:yield],
      time: @attributes[:time],
      directions: @attributes[:directions],
    )

    @attributes[:ingredients].each do |ingredient|
      RecipeIngredient.create(
        ingredient_id: ingredient[:ingredient_id],
        recipe_id: @recipe.id,
        measurement: ingredient[:measurement])
    end
  end

#   def update_attributes(recipe)
#     @recipe = Recipe.create(
#     id: recipe.id,
#     title: @attributes[:title],
#     description: @attributes[:description],
#     yield: @attributes[:yield],
#     time: @attributes[:time],
#     directions: @attributes[:directions],
#   )
#
#   @attributes[:ingredients].each do |ingredient|
#     RecipeIngredient.save(
#       ingredient_id: ingredient[:ingredient_id],
#       recipe_id: @recipe.id,
#       measurement: ingredient[:measurement]
#   )
#   end
#
# end



end
