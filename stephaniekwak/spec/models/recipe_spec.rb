require "rails_helper"

describe Recipe do
  before(:each) do
    @pizza = Recipe.create!(title: "Cowabunga Pizza", description: "TMNT pizza", yield: "1 pizza", time: "1.5 hours", directions: "place pizza in oven and cook")
    @tomato_sauce = Ingredient.create!(name: "tomato sauce")
    @pizza.ingredients << @tomato_sauce
    @mozzarella = Ingredient.create!(name: "mozzarella")
    @pizza.ingredients << @mozzarella

  end

  it "has a count of 2 when counting the number of ingredients in 'Cowabunga Pizza'" do
    expect(@pizza.ingredients.count).to eq 2
  end

  it "has ingredients of 'tomato sauce' and 'mozzarella' when the recipe is for 'Cowabunga Pizza'" do
    expect(@pizza.ingredients).to eq [@tomato_sauce, @mozzarella]
  end

end
