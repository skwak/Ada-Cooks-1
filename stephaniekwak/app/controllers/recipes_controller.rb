class RecipesController < ApplicationController

  def index
    @recipes = Recipe.all
  end

  def new
    @ingredients = Ingredient.all
    @recipe = Recipe.new
    @recipe_form = RecipeForm.new(params[:recipe_form])
  end

  def create
    @recipe_form = RecipeForm.new(params[:recipe_form])
    if @recipe_form.submit
      redirect_to recipe_path(@recipe_form.recipe)
    else
      render :new
    end
  end

  def show
    find_recipe
  end

  def edit
    find_recipe
    @ingredients = Ingredient.all
  end

  def update
    @recipe_form = RecipeForm.new(params[:recipe_form])
    if @recipe_form.submit
      redirect_to recipe_path(@recipe_form.recipe)
    else
      render :edit
    end
  end

  def delete_recipe_ingredient
    @recipe_form = RecipeForm.delete_recipe_ingredient
  end

  def destroy
    find_recipe
    if @recipe.delete
      redirect_to home_path
    end
  end


  private

  def find_recipe
    @recipe = Recipe.find(params[:id])
  end
end
