require "spec_helper"

describe ConfessionsController do
  describe "routing" do

    it "routes to #index" do
      get("/confessions").should route_to("confessions#index")
    end

    it "routes to #new" do
      get("/confessions/new").should route_to("confessions#new")
    end

    it "routes to #show" do
      get("/confessions/1").should route_to("confessions#show", :id => "1")
    end

    it "routes to #edit" do
      get("/confessions/1/edit").should route_to("confessions#edit", :id => "1")
    end

    it "routes to #create" do
      post("/confessions").should route_to("confessions#create")
    end

    it "routes to #update" do
      put("/confessions/1").should route_to("confessions#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/confessions/1").should route_to("confessions#destroy", :id => "1")
    end

  end
end
