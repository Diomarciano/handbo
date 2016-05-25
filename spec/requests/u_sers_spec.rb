require 'rails_helper'

RSpec.describe "USers", type: :request do
  describe "GET /u_sers" do
    it "works! (now write some real specs)" do
      get u_sers_path
      expect(response).to have_http_status(200)
    end
  end
end
