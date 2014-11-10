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
  def update
    @recipe = Recipe.update(
      title: @attributes[:update][:title],
      description: @attributes[:update][:description],
      yield: @attributes[:update][:yield],
      time: @attributes[:update][:time],
      directions: @attributes[:update][:directions],
    )

    @attributes[:update][:ingredients].each do |id|
      RecipeIngredient.create(ingredient_id: id, recipe_id: @recipe.id, measurement: @attributes[:measurement])
    end

  end



end
