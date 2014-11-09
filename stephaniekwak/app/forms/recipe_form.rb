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

    @attributes[:ingredients].each do |id|
      RecipeIngredient.create(ingredient_id: id, recipe_id: @recipe.id, measurement: @attributes[:measurement])
    end

  end

end
