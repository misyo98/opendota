require 'rails_helper'

RSpec.describe HeroesController do
  describe "GET #index" do
    before do
      get :index
    end

    it "returns http success" do
      expect(response).to have_http_status(:success)
      expect(response).to have_http_status(200)
    end
  end

  describe "GET #show" do
    before do
      get :show
    end

    it "returns http success" do
      expect(response).to have_http_status(:success)
      expect(response).to have_http_status(200)
    end
  end
end