require "rails_helper"

describe Recipe do
  it "should have one or more ingredients" do
    pizza = Recipe.new(title: "Cowabunga Pizza", description: "TMNT pizza", yield: "1 pizza", time: "1.5 hours", directions: "place pizza in oven and cook")
    tomato_sauce = Recipe.ingredient.new(name: "tomato sauce", measurement: "1/2 cup")
    expect(tomato_sauce.name).to eq "tomato sauce"
  end
end
