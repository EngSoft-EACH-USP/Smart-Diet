require 'rails_helper'

RSpec.describe "Dieta", type: :request do

  describe "GET /index" do
    it "returns http success" do
      get "/dieta/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /show" do
    it "returns http success" do
      get "/dieta/show"
      expect(response).to have_http_status(:success)
    end
  end

end
