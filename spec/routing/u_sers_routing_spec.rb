require "rails_helper"

RSpec.describe USersController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/u_sers").to route_to("u_sers#index")
    end

    it "routes to #new" do
      expect(:get => "/u_sers/new").to route_to("u_sers#new")
    end

    it "routes to #show" do
      expect(:get => "/u_sers/1").to route_to("u_sers#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/u_sers/1/edit").to route_to("u_sers#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/u_sers").to route_to("u_sers#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/u_sers/1").to route_to("u_sers#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/u_sers/1").to route_to("u_sers#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/u_sers/1").to route_to("u_sers#destroy", :id => "1")
    end

  end
end
