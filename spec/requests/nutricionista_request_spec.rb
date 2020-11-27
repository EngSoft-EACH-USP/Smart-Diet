require 'rails_helper'

RSpec.describe "Nutricionista", type: :request do

  describe "GET /new" do
    it "returns http success" do
      get "/nutricionista/new"
      expect(response).to have_http_status(:success)
    end
  end

end
