require 'rails_helper'

RSpec.describe "TodoLists", type: :request do

  describe "GET /index" do
    it "returns http success" do
      get "/todo_lists/index"
      expect(response).to have_http_status(:success)
    end
  end

end
