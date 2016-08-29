require 'rails_helper'

RSpec.describe "LengthClasses", type: :request do
  describe "GET /length_classes" do
    it "works! (now write some real specs)" do
      get length_classes_path
      expect(response).to have_http_status(200)
    end
  end
end
