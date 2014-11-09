class RecipeForm
  include ActiveModel::Model

  attr_accessor :title, :description, :yield, :time, :directions, :measurement, :recipe
  # validates :title, :description, :yield, :time, :directions, :measurement, presence: true

  def initialize(attributes)
    @attributes = attributes
  end

  def submit
    return false unless valid?
    # create an instance of Recipe class
    # create recipe ingredients for each id in the ingredients key
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
