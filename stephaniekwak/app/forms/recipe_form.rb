class RecipeForm

  def initialize(attributes)
    @attributes = attributes
  end

  def recipe
    @recipe
  end
  
  def submit
    # create an instance of Recipe class
    # create recipe ingredients for each id in the ingredients key
    @recipe = Recipe.create(
      name: @attributes[:name],
      description: @attributes[:description]
    )

    @attributes[:ingredients].each do |id|
      RecipeIngredient.create(ingredient_id: id, recipe_id: @recipe.id)
    end

  end


end
