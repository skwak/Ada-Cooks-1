require "rails_helper"

describe Recipe do
  before(:each) do
    @pizza = Recipe.create!(title: "Cowabunga Pizza", description: "TMNT pizza", yield: "1 pizza", time: "1.5 hours", directions: "place pizza in oven and cook")
    @tomato_sauce = Ingredient.create!(name: "tomato sauce", measurement: "1 cup")
    @pizza.ingredients << @tomato_sauce
    @mozzarella = Ingredient.create!(name: "mozzarella", measurement: "1 cup")
    @pizza.ingredients << @mozzarella
  end

  it "should have one or more ingredients" do
    expect(@pizza.ingredients.count).to eq 2
  end

  it "should have ingredients of 'tomato sauce' and 'mozzarella'" do
    expect(@pizza.ingredients).to eq [@tomato_sauce, @mozzarella]
  end

end
