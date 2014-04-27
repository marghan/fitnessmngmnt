require "spec_helper"

describe FitnessMetricsController do
  describe "routing" do

    it "routes to #index" do
      get("/fitness_metrics").should route_to("fitness_metrics#index")
    end

    it "routes to #new" do
      get("/fitness_metrics/new").should route_to("fitness_metrics#new")
    end

    it "routes to #show" do
      get("/fitness_metrics/1").should route_to("fitness_metrics#show", :id => "1")
    end

    it "routes to #edit" do
      get("/fitness_metrics/1/edit").should route_to("fitness_metrics#edit", :id => "1")
    end

    it "routes to #create" do
      post("/fitness_metrics").should route_to("fitness_metrics#create")
    end

    it "routes to #update" do
      put("/fitness_metrics/1").should route_to("fitness_metrics#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/fitness_metrics/1").should route_to("fitness_metrics#destroy", :id => "1")
    end

  end
end
