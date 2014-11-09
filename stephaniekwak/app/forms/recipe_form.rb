class RecipeForm
  include ActiveModel::Model

  attr_accessor :title, :description, :yield, :time, :directions, :measurement, :ingredients, :recipe
  validates :title, :description, :yield, :time, :directions, :measurement, :ingredients, presence: true

  def initialize(attributes)
    @attributes = attributes
  end

  def submit
    return false unless valid?
    # create an instance of Recipe class
    # create recipe ingredients for each id in the ingredients key
    @recipe = Recipe.new(
      title: @attributes[:title],
      description: @attributes[:description],
      yield: @attributes[:yield],
      time: @attributes[:time],
      directions: @attributes[:directions],
    )

    @attributes[:ingredients].each do |id|
      RecipeIngredient.create(ingredient_id: id, recipe_id: @recipe.id, measurement: @attributes[:measurement])
    end

    if valid?
      true
      @recipe.save!
    else
      false
    end
  end

end
