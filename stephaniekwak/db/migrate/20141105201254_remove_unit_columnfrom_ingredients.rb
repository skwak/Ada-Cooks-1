class RemoveUnitColumnfromIngredients < ActiveRecord::Migration
  def change
    remove_column(:ingredients, :unit, :string)
  end
end
