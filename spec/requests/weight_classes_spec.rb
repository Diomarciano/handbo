require 'rails_helper'

RSpec.describe "WeightClasses", type: :request do
  describe "GET /weight_classes" do
    it "works! (now write some real specs)" do
      get weight_classes_path
      expect(response).to have_http_status(200)
    end
  end
end
