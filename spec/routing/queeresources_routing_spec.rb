require "rails_helper"

RSpec.describe QueeresourcesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/queeresources").to route_to("queeresources#index")
    end


    it "routes to #show" do
      expect(:get => "/queeresources/1").to route_to("queeresources#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/queeresources").to route_to("queeresources#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/queeresources/1").to route_to("queeresources#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/queeresources/1").to route_to("queeresources#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/queeresources/1").to route_to("queeresources#destroy", :id => "1")
    end

  end
end
