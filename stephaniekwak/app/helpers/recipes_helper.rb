module RecipesHelper

  def find_measurement(ingredient)
    RecipeIngredient.find_by(ingredient: ingredient.id, recipe_id: @recipe.id).measurement
  end

end
