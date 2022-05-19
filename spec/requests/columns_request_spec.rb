require 'rails_helper'

RSpec.describe "Columns", type: :request do

  describe "GET /index" do
    it "returns http success" do
      get "/columns/index"
      expect(response).to have_http_status(:success)
    end
  end

end
