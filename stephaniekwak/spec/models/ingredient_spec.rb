require 'rails_helper'

describe Ingredient do
  before(:each) do
    @quinoa_salad = Recipe.create!(title: "Quinoa Salad", description: "Healthy quinoa salad for a hippie, fool.", yield: "2 servings", time: "45 minutes", directions: "make some quinoa and add some vegetables")
    @quinoa = Ingredient.create!(name: "quinoa")
    @quinoa_salad.ingredients << @quinoa
    @kale = Ingredient.create!(name: "Kale")
    @quinoa_salad.ingredients << @kale
    @quinoa_black_bean_salad = Recipe.create!(title: "Quinoa & Black Bean Salad", description: "Huh", yield: "2 servings", time: "30 minutes", directions: "make quinoa and add some black beans")
    @quinoa_black_bean_salad.ingredients << @quinoa
  end

  describe "when quinoa is an ingredient in 'quinoa salad' and 'quinoa black bean salad'" do
    expect(@quinoa.recipes).to eq [@quinoa_salad, @quinoa_black_bean_salad]
  end

end
