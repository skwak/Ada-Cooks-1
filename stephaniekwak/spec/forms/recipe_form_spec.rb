require "rails_helper"
#doesn't test what I want it to do. do some further research
describe RecipeForm do
  before(:each) do
    @new_recipe = Recipe.new(
                  "title"=>"Hot Dog",
                  "description"=>"boring hot dog",
                  "yield"=>"1 hot dog",
                  "time"=>"32424 seconds",
                  "directions"=>"buy a hot dog at 7-11")
  end

  it "adds a value to a recipe attribute" do
    expect(@new_recipe.title).to eq "Hot Dog"
  end

end
