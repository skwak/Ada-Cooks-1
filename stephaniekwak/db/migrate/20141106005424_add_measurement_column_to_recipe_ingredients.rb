class AddMeasurementColumnToRecipeIngredients < ActiveRecord::Migration
  def change
    add_column(:recipe_ingredients, :measurement, :string)
  end
end
