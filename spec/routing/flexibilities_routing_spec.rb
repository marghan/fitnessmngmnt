require "spec_helper"

describe FlexibilitiesController do
  describe "routing" do

    it "routes to #index" do
      get("/flexibilities").should route_to("flexibilities#index")
    end

    it "routes to #new" do
      get("/flexibilities/new").should route_to("flexibilities#new")
    end

    it "routes to #show" do
      get("/flexibilities/1").should route_to("flexibilities#show", :id => "1")
    end

    it "routes to #edit" do
      get("/flexibilities/1/edit").should route_to("flexibilities#edit", :id => "1")
    end

    it "routes to #create" do
      post("/flexibilities").should route_to("flexibilities#create")
    end

    it "routes to #update" do
      put("/flexibilities/1").should route_to("flexibilities#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/flexibilities/1").should route_to("flexibilities#destroy", :id => "1")
    end

  end
end
