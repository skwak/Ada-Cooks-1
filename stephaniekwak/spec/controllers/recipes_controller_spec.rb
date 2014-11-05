require 'rails_helper'

describe RecipesController do

  it "should get index" do
    get :index
    expect(response).to be_success
  end

end
