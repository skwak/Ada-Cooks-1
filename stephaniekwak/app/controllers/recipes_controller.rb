class RecipesController < ActionController::Base
  def index
    @recipes = Recipe.all
  end

  def new
  end
end
