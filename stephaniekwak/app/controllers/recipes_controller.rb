class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe_form = RecipeForm.new(params[:recipe_form])
    if @recipe_form.submit
      redirect_to recipe_path(@recipe)
    end
  end
end
