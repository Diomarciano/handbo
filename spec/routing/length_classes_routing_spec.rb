require "rails_helper"

RSpec.describe LengthClassesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/length_classes").to route_to("length_classes#index")
    end

    it "routes to #new" do
      expect(:get => "/length_classes/new").to route_to("length_classes#new")
    end

    it "routes to #show" do
      expect(:get => "/length_classes/1").to route_to("length_classes#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/length_classes/1/edit").to route_to("length_classes#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/length_classes").to route_to("length_classes#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/length_classes/1").to route_to("length_classes#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/length_classes/1").to route_to("length_classes#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/length_classes/1").to route_to("length_classes#destroy", :id => "1")
    end

  end
end
