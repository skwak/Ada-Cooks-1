class RecipesController < ApplicationController

  def index
    @recipes = Recipe.all
  end

  def new

    @ingredients = Ingredient.all
  end

  def create
    @recipe_form = RecipeForm.new(params[:recipe_form])
    if @recipe_form.submit
      redirect_to recipe_path(@recipe_form.recipe)
    end
  end

  def show
    find_recipe
  end

  private

  def find_recipe
    @recipe = Recipe.find(params[:id])
  end
end
