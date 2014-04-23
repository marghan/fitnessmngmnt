require "spec_helper"

describe StrengthsController do
  describe "routing" do

    it "routes to #index" do
      get("/strengths").should route_to("strengths#index")
    end

    it "routes to #new" do
      get("/strengths/new").should route_to("strengths#new")
    end

    it "routes to #show" do
      get("/strengths/1").should route_to("strengths#show", :id => "1")
    end

    it "routes to #edit" do
      get("/strengths/1/edit").should route_to("strengths#edit", :id => "1")
    end

    it "routes to #create" do
      post("/strengths").should route_to("strengths#create")
    end

    it "routes to #update" do
      put("/strengths/1").should route_to("strengths#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/strengths/1").should route_to("strengths#destroy", :id => "1")
    end

  end
end
