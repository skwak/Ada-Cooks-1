class IngredientsController < ApplicationController

  def index
    @ingredients = Ingredient.all
  end

  def new
    @ingredient = Ingredient.new
  end

  def create
    @ingredient = Ingredient.new(ingredient_params)
    if @ingredient.save
      redirect_to ingredient_path(@ingredient)
    else
      render :new
    end
  end

  def show
    find_ingredient
  end

  def destroy
    if find_ingredient.delete
      redirect_to ingredients_path
    end
  end

  private

  def ingredient_params
    (params.require(:ingredient).permit(:name))
  end

  def find_ingredient
    @ingredient = Ingredient.find(params[:id])
  end
end
