require 'rails_helper'

describe RecipesController do

  subject { "index" }

  it "should get index" do
    get :index
    expect(response).to be_success
  end

  subject { "new and create" }

  it "should get the new recipe page" do
    get :new
    expect(response).to render_template(:new)
  end


end
