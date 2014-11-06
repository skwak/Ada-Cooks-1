class RecipeForm

  def initialize(attributes)
    @attributes = attributes
  end

  def submit
    # create an instance of Recipe class
    # create recipe ingredients for each id in the ingredients key
    recipe = Recipe.new

    @attributes[:ingredients].each do |id|

    end

  end

end
