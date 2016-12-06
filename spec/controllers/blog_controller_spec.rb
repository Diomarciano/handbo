require 'rails_helper'

RSpec.describe BlogController, type: :controller do

  describe "GET #artikel3" do
    it "returns http success" do
      get :artikel3
      expect(response).to have_http_status(:success)
    end
  end

end
